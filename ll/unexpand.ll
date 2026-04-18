; ModuleID = 'src/unexpand.bc'
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
@.str.2 = private unnamed_addr constant [66 x i8] c"Convert blanks in each FILE to tabs, writing to standard output.\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"unexpand\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"  -a, --all\0A         convert all blanks, instead of just initial blanks\0A\00", align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"      --first-only\0A         convert only leading sequences of blanks (overrides -a)\0A\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"  -t, --tabs=N\0A         have tabs N characters apart instead of 8 (enables -a)\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c",0123456789at:\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"tab stop value is too large\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.17 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !46
@.str.18 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.40 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.48 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.49 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"first-only\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@unexpand.line_in = internal global [262144 x i8] zeroinitializer, align 1, !dbg !131
@.str.58 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@convert_entire_line = dso_local local_unnamed_addr global i8 0, align 1, !dbg !212
@exit_status = dso_local local_unnamed_addr global i32 0, align 4, !dbg !242
@first_free_tab = internal unnamed_addr global i64 0, align 8, !dbg !291
@tab_list = internal unnamed_addr global i64* null, align 8, !dbg !293
@n_tabs_allocated = internal global i64 0, align 8, !dbg !296
@.str.23 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1
@.str.1.24 = private unnamed_addr constant [41 x i8] c"'+' specifier not at start of number: %s\00", align 1
@.str.2.25 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.3.26 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1
@.str.4.27 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1
@extend_size = internal unnamed_addr global i64 0, align 8, !dbg !298
@increment_size = internal unnamed_addr global i64 0, align 8, !dbg !300
@max_column_width = dso_local local_unnamed_addr global i64 0, align 8, !dbg !289
@tab_size = internal unnamed_addr global i64 0, align 8, !dbg !302
@.str.5.35 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !342
@stdin_argv = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.38, i32 0, i32 0), i8* null], align 8, !dbg !306
@file_list = internal unnamed_addr global i8** null, align 8, !dbg !311
@next_file.prev_file = internal unnamed_addr global i8* null, align 8, !dbg !244
@.str.6.38 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.7.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.8.42 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9.47 = private unnamed_addr constant [71 x i8] c"  -t, --tabs=LIST\0A         use comma separated list of tab positions.\0A\00", align 1
@.str.10.69 = private unnamed_addr constant [305 x i8] c"         The last specified position can be prefixed with '/'\0A         to specify a tab size to use after the last\0A         explicitly specified tab stop.  Also a prefix of '+'\0A         can be used to align remaining tab stops relative to\0A         the last specified tab stop instead of the first column\0A\00", align 1
@.str.12.11 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1
@.str.13.12 = private unnamed_addr constant [47 x i8] c"'+' specifier only allowed with the last value\00", align 1
@.str.14.30 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1
@.str.15.31 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1
@.str.16.32 = private unnamed_addr constant [45 x i8] c"'/' specifier is mutually exclusive with '+'\00", align 1
@oputs_.help_no_sgr.48 = internal unnamed_addr global i32 -1, align 4, !dbg !314
@.str.17.49 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.18.50 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.19.51 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.20.52 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.21.53 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22.58 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.23.54 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.31.55 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.32.56 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.33.57 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.34.59 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.35.60 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.36.61 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.37.62 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.38.63 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.39.64 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.40.65 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.41.66 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.42.67 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.43.68 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i64 0, i64 0), align 8, !dbg !343
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !348
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !353
@.str.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.76 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.77 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.78 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !355
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.79 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !391
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !361
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !387
@.str.1.85 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.87 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.86 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !389
@.str.4.80 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.81 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.82 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !394
@.str.106 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.107 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !400
@.str.110 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.111 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.112 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.113 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.114 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.115 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.116 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.117 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.118 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.119 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.111, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.112, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.113, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.114, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.115, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.116, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.117, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.118, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.119, i32 0, i32 0), i8* null], align 8, !dbg !430
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !442
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !460
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !490
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !497
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !462
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !499
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !448
@.str.10.122 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.120 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.123 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.121 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !467
@.str.130 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.131 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.132 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.133 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.134 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.135 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.136 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.137 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.138 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.139 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.140 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.141 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.142 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.143 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.144 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.145 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.146 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.151 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.152 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.153 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.154 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.155 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.156 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.157 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !505
@exit_failure = dso_local global i32 1, align 4, !dbg !513
@.str.174 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.172 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.173 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.181 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !519
@.str.186 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.187 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !613 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !617, metadata !DIExpression()), !dbg !618
  %3 = icmp eq i32 %0, 0, !dbg !619
  br i1 %3, label %9, label %4, !dbg !621

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !622, !tbaa !624
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #33, !dbg !622
  %7 = load i8*, i8** @program_name, align 8, !dbg !622, !tbaa !624
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #33, !dbg !622
  br label %61, !dbg !622

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #33, !dbg !628
  %11 = load i8*, i8** @program_name, align 8, !dbg !628, !tbaa !624
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #33, !dbg !628
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #33, !dbg !630
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630, !tbaa !624
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !630
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #33, !dbg !631
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !624
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #33, !dbg !631
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #33, !dbg !635
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !635, !tbaa !624
  %21 = tail call i32 @fputs_unlocked(i8* noundef %19, %struct._IO_FILE* noundef %20) #33, !dbg !635
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #33, !dbg !638
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !638
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #33, !dbg !639
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !639
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #33, !dbg !640
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !640
  tail call void @emit_tab_list_info(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #33, !dbg !641
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #33, !dbg !642
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !642
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #33, !dbg !643
  tail call fastcc void @oputs_(i8* noundef %26), !dbg !643
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !644, metadata !DIExpression()) #33, !dbg !663
  %27 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !665
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %27) #33, !dbg !665
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !649, metadata !DIExpression()) #33, !dbg !666
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %27, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #33, !dbg !666
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !658, metadata !DIExpression()) #33, !dbg !663
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !659, metadata !DIExpression()) #33, !dbg !663
  %28 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !667
  call void @llvm.dbg.value(metadata %struct.infomap* %28, metadata !659, metadata !DIExpression()) #33, !dbg !663
  br label %29, !dbg !668

29:                                               ; preds = %34, %9
  %30 = phi i8* [ %37, %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %31 = phi %struct.infomap* [ %35, %34 ], [ %28, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %31, metadata !659, metadata !DIExpression()) #33, !dbg !663
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !669, metadata !DIExpression()) #33, !dbg !676
  call void @llvm.dbg.value(metadata i8* %30, metadata !675, metadata !DIExpression()) #33, !dbg !676
  %32 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %30) #34, !dbg !678
  %33 = icmp eq i32 %32, 0, !dbg !679
  br i1 %33, label %39, label %34, !dbg !668

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %31, i64 1, !dbg !680
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !659, metadata !DIExpression()) #33, !dbg !663
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 0, !dbg !681
  %37 = load i8*, i8** %36, align 8, !dbg !681, !tbaa !682
  %38 = icmp eq i8* %37, null, !dbg !684
  br i1 %38, label %39, label %29, !dbg !685, !llvm.loop !686

39:                                               ; preds = %34, %29
  %40 = phi %struct.infomap* [ %31, %29 ], [ %35, %34 ]
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 0, i32 1, !dbg !688
  %42 = load i8*, i8** %41, align 8, !dbg !688, !tbaa !690
  %43 = icmp eq i8* %42, null, !dbg !691
  %44 = select i1 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %42, !dbg !692
  call void @llvm.dbg.value(metadata i8* %44, metadata !658, metadata !DIExpression()) #33, !dbg !663
  tail call void @emit_bug_reporting_address() #33, !dbg !693
  %45 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #33, !dbg !694
  call void @llvm.dbg.value(metadata i8* %45, metadata !661, metadata !DIExpression()) #33, !dbg !663
  %46 = icmp eq i8* %45, null, !dbg !695
  br i1 %46, label %54, label %47, !dbg !697

47:                                               ; preds = %39
  %48 = tail call i32 @strncmp(i8* noundef nonnull %45, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i64 noundef 3) #34, !dbg !698
  %49 = icmp eq i32 %48, 0, !dbg !698
  br i1 %49, label %54, label %50, !dbg !699

50:                                               ; preds = %47
  %51 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.49, i64 0, i64 0), i32 noundef 5) #33, !dbg !700
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !700, !tbaa !624
  %53 = tail call i32 @fputs_unlocked(i8* noundef %51, %struct._IO_FILE* noundef %52) #33, !dbg !700
  br label %54, !dbg !702

54:                                               ; preds = %39, %47, %50
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !669, metadata !DIExpression()) #33, !dbg !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), metadata !675, metadata !DIExpression()) #33, !dbg !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !662, metadata !DIExpression()) #33, !dbg !663
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i32 noundef 5) #33, !dbg !705
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %55, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #33, !dbg !705
  %57 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.51, i64 0, i64 0), i32 noundef 5) #33, !dbg !706
  %58 = icmp eq i8* %44, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), !dbg !706
  %59 = select i1 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !706
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %57, i8* noundef %44, i8* noundef %59) #33, !dbg !706
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %27) #33, !dbg !707
  br label %61

61:                                               ; preds = %54, %4
  tail call void @exit(i32 noundef %0) #35, !dbg !708
  unreachable, !dbg !708
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !709 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !713 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !48 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !53, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %0, metadata !54, metadata !DIExpression()), !dbg !718
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !719, !tbaa !720
  %3 = icmp eq i32 %2, -1, !dbg !722
  br i1 %3, label %4, label %16, !dbg !723

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #33, !dbg !724
  call void @llvm.dbg.value(metadata i8* %5, metadata !55, metadata !DIExpression()), !dbg !725
  %6 = icmp eq i8* %5, null, !dbg !726
  br i1 %6, label %14, label %7, !dbg !727

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !728, !tbaa !729
  %9 = icmp eq i8 %8, 0, !dbg !728
  br i1 %9, label %14, label %10, !dbg !730

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !669, metadata !DIExpression()) #33, !dbg !731
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), metadata !675, metadata !DIExpression()) #33, !dbg !731
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #34, !dbg !733
  %12 = icmp eq i32 %11, 0, !dbg !734
  %13 = zext i1 %12 to i32, !dbg !730
  br label %14, !dbg !730

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !735, !tbaa !720
  br label %16, !dbg !736

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !737
  %18 = icmp eq i32 %17, 0, !dbg !737
  br i1 %18, label %22, label %19, !dbg !739

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !740, !tbaa !624
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !740
  br label %121, !dbg !742

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !58, metadata !DIExpression()), !dbg !718
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #34, !dbg !743
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !744
  call void @llvm.dbg.value(metadata i8* %24, metadata !59, metadata !DIExpression()), !dbg !718
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #34, !dbg !745
  call void @llvm.dbg.value(metadata i8* %25, metadata !60, metadata !DIExpression()), !dbg !718
  %26 = icmp eq i8* %25, null, !dbg !746
  br i1 %26, label %53, label %27, !dbg !747

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !748
  br i1 %28, label %53, label %29, !dbg !749

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !61, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i64 0, metadata !65, metadata !DIExpression()), !dbg !750
  %30 = icmp ult i8* %24, %25, !dbg !751
  br i1 %30, label %31, label %53, !dbg !752

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #36, !dbg !718
  %33 = load i16*, i16** %32, align 8, !tbaa !624
  br label %34, !dbg !752

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !61, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i64 %36, metadata !65, metadata !DIExpression()), !dbg !750
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !753
  call void @llvm.dbg.value(metadata i8* %37, metadata !61, metadata !DIExpression()), !dbg !750
  %38 = load i8, i8* %35, align 1, !dbg !753, !tbaa !729
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !753
  %41 = load i16, i16* %40, align 2, !dbg !753, !tbaa !754
  %42 = lshr i16 %41, 13, !dbg !756
  %43 = and i16 %42, 1, !dbg !756
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !757
  call void @llvm.dbg.value(metadata i64 %45, metadata !65, metadata !DIExpression()), !dbg !750
  %46 = icmp ult i8* %37, %25, !dbg !751
  %47 = icmp ult i64 %45, 2, !dbg !758
  %48 = select i1 %46, i1 %47, i1 false, !dbg !758
  br i1 %48, label %34, label %49, !dbg !752, !llvm.loop !759

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !760
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !762
  %52 = xor i1 %50, true, !dbg !762
  br label %53, !dbg !762

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !718
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !58, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %54, metadata !60, metadata !DIExpression()), !dbg !718
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #34, !dbg !763
  call void @llvm.dbg.value(metadata i64 %56, metadata !66, metadata !DIExpression()), !dbg !718
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !764
  call void @llvm.dbg.value(metadata i8* %57, metadata !67, metadata !DIExpression()), !dbg !718
  br label %58, !dbg !765

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !718
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !58, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %59, metadata !67, metadata !DIExpression()), !dbg !718
  %61 = load i8, i8* %59, align 1, !dbg !766, !tbaa !729
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !767

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !768
  %64 = load i8, i8* %63, align 1, !dbg !771, !tbaa !729
  %65 = icmp ne i8 %64, 45, !dbg !772
  %66 = select i1 %65, i1 %60, i1 false, !dbg !773
  br label %67, !dbg !773

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !58, metadata !DIExpression()), !dbg !718
  %69 = tail call i16** @__ctype_b_loc() #36, !dbg !774
  %70 = load i16*, i16** %69, align 8, !dbg !774, !tbaa !624
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !774
  %73 = load i16, i16* %72, align 2, !dbg !774, !tbaa !754
  %74 = and i16 %73, 8192, !dbg !774
  %75 = icmp eq i16 %74, 0, !dbg !774
  br i1 %75, label %89, label %76, !dbg !776

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !777
  br i1 %77, label %91, label %78, !dbg !780

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !781
  %80 = load i8, i8* %79, align 1, !dbg !781, !tbaa !729
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !781
  %83 = load i16, i16* %82, align 2, !dbg !781, !tbaa !754
  %84 = and i16 %83, 8192, !dbg !781
  %85 = icmp eq i16 %84, 0, !dbg !781
  br i1 %85, label %86, label %91, !dbg !782

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !783
  br i1 %88, label %89, label %91, !dbg !783

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !785
  call void @llvm.dbg.value(metadata i8* %90, metadata !67, metadata !DIExpression()), !dbg !718
  br label %58, !dbg !765, !llvm.loop !786

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !788
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !788, !tbaa !624
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !788
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !669, metadata !DIExpression()) #33, !dbg !789
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), metadata !675, metadata !DIExpression()) #33, !dbg !789
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !669, metadata !DIExpression()) #33, !dbg !791
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !669, metadata !DIExpression()) #33, !dbg !793
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !669, metadata !DIExpression()) #33, !dbg !795
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !669, metadata !DIExpression()) #33, !dbg !797
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !669, metadata !DIExpression()) #33, !dbg !799
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !669, metadata !DIExpression()) #33, !dbg !801
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !669, metadata !DIExpression()) #33, !dbg !803
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !669, metadata !DIExpression()) #33, !dbg !805
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !669, metadata !DIExpression()) #33, !dbg !807
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), metadata !126, metadata !DIExpression()), !dbg !718
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i64 noundef 6) #34, !dbg !809
  %96 = icmp eq i32 %95, 0, !dbg !809
  br i1 %96, label %100, label %97, !dbg !811

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i64 noundef 9) #34, !dbg !812
  %99 = icmp eq i32 %98, 0, !dbg !812
  br i1 %99, label %100, label %103, !dbg !813

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !814
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #33, !dbg !814
  br label %106, !dbg !816

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !817
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #33, !dbg !817
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !819, !tbaa !624
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !819
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !820, !tbaa !624
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !820
  %111 = ptrtoint i8* %59 to i64, !dbg !821
  %112 = sub i64 %111, %92, !dbg !821
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !821, !tbaa !624
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !821
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !822, !tbaa !624
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !822
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !823, !tbaa !624
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !823
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !824, !tbaa !624
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !824
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !825
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
declare !dbg !826 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !830 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !834 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !840 {
  %3 = alloca %struct.__mbstate_t, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !844, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8** %1, metadata !845, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8 0, metadata !846, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8 0, metadata !849, metadata !DIExpression()), !dbg !850
  %7 = load i8*, i8** %1, align 8, !dbg !851, !tbaa !624
  tail call void @set_program_name(i8* noundef %7) #33, !dbg !852
  %8 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #33, !dbg !853
  %9 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #33, !dbg !854
  %10 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #33, !dbg !855
  %11 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #33, !dbg !856
  br label %12, !dbg !857

12:                                               ; preds = %2, %44
  %13 = phi i1 [ false, %2 ], [ true, %44 ]
  %14 = phi i64 [ undef, %2 ], [ %50, %44 ]
  %15 = phi i1 [ false, %2 ], [ %20, %44 ]
  br label %16, !dbg !857

16:                                               ; preds = %30, %12
  %17 = phi i1 [ %13, %12 ], [ false, %30 ]
  %18 = phi i1 [ %15, %12 ], [ %20, %30 ]
  br label %19, !dbg !857

19:                                               ; preds = %21, %16
  %20 = phi i1 [ %18, %16 ], [ true, %21 ]
  br label %21, !dbg !857

21:                                               ; preds = %27, %19
  call void @llvm.dbg.value(metadata i8 poison, metadata !849, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i64 %14, metadata !847, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8 poison, metadata !846, metadata !DIExpression()), !dbg !850
  %22 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #33, !dbg !858
  call void @llvm.dbg.value(metadata i32 %22, metadata !848, metadata !DIExpression()), !dbg !850
  switch i32 %22, label %36 [
    i32 -1, label %53
    i32 63, label %23
    i32 97, label %24
    i32 116, label %25
    i32 256, label %19
    i32 44, label %28
    i32 -2, label %31
    i32 -3, label %32
  ], !dbg !857, !llvm.loop !859

23:                                               ; preds = %21
  tail call void @usage(i32 noundef 1) #37, !dbg !861
  unreachable, !dbg !861

24:                                               ; preds = %21
  store i8 1, i8* @convert_entire_line, align 1, !dbg !864, !tbaa !865
  br label %27, !dbg !867

25:                                               ; preds = %21
  store i8 1, i8* @convert_entire_line, align 1, !dbg !868, !tbaa !865
  %26 = load i8*, i8** @optarg, align 8, !dbg !869, !tbaa !624
  tail call void @parse_tab_stops(i8* noundef %26) #33, !dbg !870
  br label %27, !dbg !871

27:                                               ; preds = %25, %24
  br label %21, !dbg !850, !llvm.loop !859

28:                                               ; preds = %21
  br i1 %17, label %29, label %30, !dbg !872

29:                                               ; preds = %28
  tail call void @add_tab_stop(i64 noundef %14) #33, !dbg !873
  br label %30, !dbg !873

30:                                               ; preds = %29, %28
  br label %16, !dbg !857, !llvm.loop !859

31:                                               ; preds = %21
  tail call void @usage(i32 noundef 0) #37, !dbg !875
  unreachable, !dbg !875

32:                                               ; preds = %21
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !876, !tbaa !624
  %34 = load i8*, i8** @Version, align 8, !dbg !876, !tbaa !624
  %35 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)) #33, !dbg !876
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* noundef %34, i8* noundef %35, i8* noundef null) #33, !dbg !876
  tail call void @exit(i32 noundef 0) #35, !dbg !876
  unreachable, !dbg !876

36:                                               ; preds = %21
  %37 = select i1 %17, i64 %14, i64 0, !dbg !877
  call void @llvm.dbg.value(metadata i64 %37, metadata !847, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i8 poison, metadata !846, metadata !DIExpression()), !dbg !850
  %38 = icmp slt i64 %37, 0, !dbg !878
  br i1 %38, label %39, label %42, !dbg !878

39:                                               ; preds = %36
  %40 = add i64 %37, -1, !dbg !878
  %41 = icmp ult i64 %40, -922337203685477581, !dbg !878
  br i1 %41, label %51, label %44, !dbg !878

42:                                               ; preds = %36
  %43 = icmp ugt i64 %37, 922337203685477580, !dbg !878
  br i1 %43, label %51, label %44, !dbg !878

44:                                               ; preds = %42, %39
  call void @llvm.dbg.value(metadata i64 %37, metadata !847, metadata !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value)), !dbg !850
  call void @llvm.dbg.value(metadata i64 %37, metadata !847, metadata !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value)), !dbg !850
  %45 = mul nsw i64 %37, 10, !dbg !878
  call void @llvm.dbg.value(metadata i64 %45, metadata !847, metadata !DIExpression()), !dbg !850
  %46 = add nsw i32 %22, -48, !dbg !878
  %47 = sext i32 %46 to i64, !dbg !878
  %48 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %45, i64 %47), !dbg !878
  %49 = extractvalue { i64, i1 } %48, 1, !dbg !878
  %50 = extractvalue { i64, i1 } %48, 0, !dbg !878
  call void @llvm.dbg.value(metadata i64 %50, metadata !847, metadata !DIExpression()), !dbg !850
  br i1 %49, label %51, label %12, !dbg !880, !llvm.loop !859

51:                                               ; preds = %39, %42, %44
  %52 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #33, !dbg !881
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %52) #33, !dbg !881
  unreachable, !dbg !881

53:                                               ; preds = %21
  br i1 %20, label %54, label %55, !dbg !882

54:                                               ; preds = %53
  store i8 0, i8* @convert_entire_line, align 1, !dbg !883, !tbaa !865
  br label %55, !dbg !885

55:                                               ; preds = %54, %53
  br i1 %17, label %56, label %57, !dbg !886

56:                                               ; preds = %55
  tail call void @add_tab_stop(i64 noundef %14) #33, !dbg !887
  br label %57, !dbg !887

57:                                               ; preds = %56, %55
  tail call void @finalize_tab_stops() #33, !dbg !889
  %58 = load i32, i32* @optind, align 4, !dbg !890, !tbaa !720
  %59 = icmp slt i32 %58, %0, !dbg !891
  %60 = sext i32 %58 to i64, !dbg !892
  %61 = getelementptr inbounds i8*, i8** %1, i64 %60, !dbg !892
  %62 = select i1 %59, i8** %61, i8** null, !dbg !892
  tail call void @set_file_list(i8** noundef %62) #33, !dbg !893
  %63 = tail call %struct._IO_FILE* @next_file(%struct._IO_FILE* noundef null) #33, !dbg !894
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !137, metadata !DIExpression()) #33, !dbg !896
  %64 = icmp eq %struct._IO_FILE* %63, null, !dbg !897
  br i1 %64, label %324, label %65, !dbg !899

65:                                               ; preds = %57
  call void @llvm.dbg.value(metadata %struct.mbbuf_t* undef, metadata !900, metadata !DIExpression()) #33, !dbg !909
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @unexpand.line_in, i64 0, i64 0), metadata !906, metadata !DIExpression()) #33, !dbg !909
  call void @llvm.dbg.value(metadata i64 262144, metadata !907, metadata !DIExpression()) #33, !dbg !909
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !908, metadata !DIExpression()) #33, !dbg !909
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @unexpand.line_in, i64 0, i64 0), metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i64 262144, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i64 0, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i64 0, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !896
  %66 = load i64, i64* @max_column_width, align 8, !dbg !911, !tbaa !912
  %67 = shl i64 %66, 4, !dbg !914
  %68 = tail call noalias nonnull i8* @ximalloc(i64 noundef %67) #38, !dbg !915
  call void @llvm.dbg.value(metadata i8* %68, metadata !138, metadata !DIExpression()) #33, !dbg !896
  %69 = bitcast i64* %5 to i8*
  %70 = bitcast %struct.__mbstate_t* %3 to i8*
  %71 = getelementptr inbounds %struct.__mbstate_t, %struct.__mbstate_t* %3, i64 0, i32 0
  %72 = bitcast i32* %4 to i8*
  br label %73, !dbg !916

73:                                               ; preds = %323, %65
  %74 = phi i64 [ 0, %65 ], [ %176, %323 ], !dbg !896
  %75 = phi i64 [ 0, %65 ], [ %175, %323 ], !dbg !896
  %76 = phi %struct._IO_FILE* [ %63, %65 ], [ %91, %323 ], !dbg !917
  %77 = phi %struct._IO_FILE* [ %63, %65 ], [ %177, %323 ], !dbg !896
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @unexpand.line_in, i64 0, i64 0), metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %76, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i64 262144, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i64 %75, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i64 %74, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %77, metadata !137, metadata !DIExpression()) #33, !dbg !896
  call void @llvm.dbg.value(metadata i8 1, metadata !164, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 0, metadata !171, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %69) #33, !dbg !919
  call void @llvm.dbg.value(metadata i64 0, metadata !172, metadata !DIExpression()) #33, !dbg !918
  store i64 0, i64* %5, align 8, !dbg !920, !tbaa !912
  call void @llvm.dbg.value(metadata i8 0, metadata !173, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i8 1, metadata !174, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 0, metadata !175, metadata !DIExpression()) #33, !dbg !918
  br label %78, !dbg !921

78:                                               ; preds = %315, %73
  %79 = phi i64 [ %74, %73 ], [ %176, %315 ], !dbg !896
  %80 = phi i64 [ %75, %73 ], [ %175, %315 ], !dbg !896
  %81 = phi %struct._IO_FILE* [ %76, %73 ], [ %91, %315 ], !dbg !917
  %82 = phi i64 [ 0, %73 ], [ %317, %315 ], !dbg !918
  %83 = phi i1 [ true, %73 ], [ %318, %315 ]
  %84 = phi i1 [ false, %73 ], [ %319, %315 ]
  %85 = phi i64 [ 0, %73 ], [ %320, %315 ], !dbg !918
  %86 = phi i1 [ true, %73 ], [ %321, %315 ]
  %87 = phi %struct._IO_FILE* [ %77, %73 ], [ %177, %315 ], !dbg !896
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @unexpand.line_in, i64 0, i64 0), metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %81, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i64 262144, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i64 %80, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i64 %79, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %87, metadata !137, metadata !DIExpression()) #33, !dbg !896
  call void @llvm.dbg.value(metadata i8 poison, metadata !164, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 %85, metadata !165, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i8 poison, metadata !173, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i8 poison, metadata !174, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 %82, metadata !175, metadata !DIExpression()) #33, !dbg !918
  br label %88, !dbg !922

88:                                               ; preds = %163, %78
  %89 = phi i64 [ %79, %78 ], [ 0, %163 ], !dbg !896
  %90 = phi i64 [ %80, %78 ], [ 0, %163 ], !dbg !896
  %91 = phi %struct._IO_FILE* [ %81, %78 ], [ %167, %163 ], !dbg !896
  %92 = phi %struct._IO_FILE* [ %87, %78 ], [ %167, %163 ], !dbg !896
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @unexpand.line_in, i64 0, i64 0), metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %91, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i64 262144, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i64 %90, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i64 %89, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %92, metadata !137, metadata !DIExpression()) #33, !dbg !896
  call void @llvm.dbg.value(metadata %struct.mbbuf_t* undef, metadata !923, metadata !DIExpression()) #33, !dbg !933
  %93 = sub nsw i64 %89, %90, !dbg !935
  call void @llvm.dbg.value(metadata i64 %93, metadata !928, metadata !DIExpression()) #33, !dbg !933
  %94 = icmp slt i64 %93, 4, !dbg !936
  br i1 %94, label %95, label %116, !dbg !937

95:                                               ; preds = %88
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %91, metadata !938, metadata !DIExpression()) #33, !dbg !944
  %96 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %91, i64 0, i32 0, !dbg !946
  %97 = load i32, i32* %96, align 8, !dbg !946, !tbaa !947
  %98 = and i32 %97, 16, !dbg !949
  %99 = icmp eq i32 %98, 0, !dbg !949
  br i1 %99, label %100, label %111, !dbg !950

100:                                              ; preds = %95
  %101 = icmp sgt i64 %93, 0, !dbg !951
  br i1 %101, label %102, label %105, !dbg !953

102:                                              ; preds = %100
  %103 = getelementptr inbounds [262144 x i8], [262144 x i8]* @unexpand.line_in, i64 0, i64 %90, !dbg !954
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @unexpand.line_in, i64 0, i64 0), metadata !956, metadata !DIExpression()) #33, !dbg !964
  call void @llvm.dbg.value(metadata i8* %103, metadata !962, metadata !DIExpression()) #33, !dbg !964
  call void @llvm.dbg.value(metadata i64 %93, metadata !963, metadata !DIExpression()) #33, !dbg !964
  %104 = call i8* @__memmove_chk(i8* noundef nonnull getelementptr inbounds ([262144 x i8], [262144 x i8]* @unexpand.line_in, i64 0, i64 0), i8* noundef nonnull %103, i64 noundef %93, i64 noundef 262144) #33, !dbg !966
  call void @llvm.dbg.value(metadata i64 %93, metadata !929, metadata !DIExpression()) #33, !dbg !967
  br label %105

105:                                              ; preds = %102, %100
  %106 = phi i64 [ %93, %102 ], [ 0, %100 ], !dbg !968
  call void @llvm.dbg.value(metadata i64 %106, metadata !929, metadata !DIExpression()) #33, !dbg !967
  %107 = getelementptr inbounds [262144 x i8], [262144 x i8]* @unexpand.line_in, i64 0, i64 %106, !dbg !969
  %108 = sub nuw nsw i64 262144, %106, !dbg !969
  %109 = call i64 @fread_unlocked(i8* noundef nonnull %107, i64 noundef 1, i64 noundef %108, %struct._IO_FILE* noundef nonnull %91) #33, !dbg !969
  %110 = add i64 %109, %106, !dbg !970
  call void @llvm.dbg.value(metadata i64 %110, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i64 0, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i64 %110, metadata !928, metadata !DIExpression()) #33, !dbg !933
  br label %111, !dbg !971

111:                                              ; preds = %105, %95
  %112 = phi i64 [ %110, %105 ], [ %89, %95 ], !dbg !896
  %113 = phi i64 [ 0, %105 ], [ %90, %95 ], !dbg !896
  %114 = phi i64 [ %110, %105 ], [ %93, %95 ], !dbg !933
  call void @llvm.dbg.value(metadata i64 %113, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i64 %112, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i64 %114, metadata !928, metadata !DIExpression()) #33, !dbg !933
  %115 = icmp slt i64 %114, 1, !dbg !972
  br i1 %115, label %163, label %116, !dbg !974

116:                                              ; preds = %111, %88
  %117 = phi i64 [ %112, %111 ], [ %89, %88 ], !dbg !896
  %118 = phi i64 [ %113, %111 ], [ %90, %88 ], !dbg !896
  call void @llvm.dbg.value(metadata i64 %118, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i64 %117, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #33, !dbg !896
  %119 = getelementptr inbounds [262144 x i8], [262144 x i8]* @unexpand.line_in, i64 0, i64 %118, !dbg !975
  call void @llvm.dbg.value(metadata i8* %119, metadata !976, metadata !DIExpression()) #33, !dbg !996
  call void @llvm.dbg.value(metadata !DIArgList(i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @unexpand.line_in, i64 0, i64 0), i64 undef), metadata !981, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #33, !dbg !996
  %120 = load i8, i8* %119, align 1, !dbg !998, !tbaa !729
  call void @llvm.dbg.value(metadata i8 %120, metadata !982, metadata !DIExpression()) #33, !dbg !996
  call void @llvm.dbg.value(metadata i8 %120, metadata !999, metadata !DIExpression()) #33, !dbg !1004
  %121 = icmp sgt i8 %120, -1, !dbg !1007
  br i1 %121, label %122, label %125, !dbg !1008

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 1, metadata !1009, metadata !DIExpression()) #33, !dbg !1015
  %123 = zext i8 %120 to i64, !dbg !1017
  call void @llvm.dbg.value(metadata i64 %123, metadata !1014, metadata !DIExpression()) #33, !dbg !1015
  %124 = or i64 %123, 1099511627776, !dbg !1017
  br label %146, !dbg !1018

125:                                              ; preds = %116
  call void @llvm.dbg.value(metadata !DIArgList(i8* getelementptr inbounds ([262144 x i8], [262144 x i8]* @unexpand.line_in, i64 0, i64 0), i64 %117), metadata !981, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #33, !dbg !996
  %126 = getelementptr inbounds [262144 x i8], [262144 x i8]* @unexpand.line_in, i64 0, i64 %117, !dbg !1019
  call void @llvm.dbg.value(metadata i8* %126, metadata !981, metadata !DIExpression()) #33, !dbg !996
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %70) #33, !dbg !1020
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %3, metadata !983, metadata !DIExpression()) #33, !dbg !1021
  store i32 0, i32* %71, align 4, !dbg !1022, !tbaa !1023
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %72) #33, !dbg !1025
  %127 = ptrtoint i8* %126 to i64, !dbg !1026
  %128 = ptrtoint i8* %119 to i64, !dbg !1026
  %129 = sub i64 %127, %128, !dbg !1026
  call void @llvm.dbg.value(metadata i32* %4, metadata !994, metadata !DIExpression(DW_OP_deref)) #33, !dbg !996
  %130 = call i64 @mbrtoc32(i32* noundef nonnull %4, i8* noundef nonnull %119, i64 noundef %129, %struct.__mbstate_t* noundef nonnull %3) #33, !dbg !1027
  call void @llvm.dbg.value(metadata i64 %130, metadata !995, metadata !DIExpression()) #33, !dbg !996
  %131 = icmp slt i64 %130, 0, !dbg !1028
  br i1 %131, label %132, label %136, !dbg !1030, !prof !1031

132:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i8 %120, metadata !1032, metadata !DIExpression()) #33, !dbg !1037
  %133 = zext i8 %120 to i64, !dbg !1039
  %134 = shl nuw nsw i64 %133, 32, !dbg !1039
  %135 = or i64 %134, 1099511627776, !dbg !1039
  br label %144, !dbg !1040

136:                                              ; preds = %125
  %137 = load i32, i32* %4, align 4, !dbg !1041, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %137, metadata !994, metadata !DIExpression()) #33, !dbg !996
  call void @llvm.dbg.value(metadata i32 %137, metadata !1014, metadata !DIExpression()) #33, !dbg !1042
  call void @llvm.dbg.value(metadata i64 %130, metadata !1009, metadata !DIExpression()) #33, !dbg !1042
  %138 = icmp ne i64 %130, 0, !dbg !1044
  call void @llvm.assume(i1 %138) #33, !dbg !1044
  %139 = icmp ult i64 %130, 5, !dbg !1045
  call void @llvm.assume(i1 %139) #33, !dbg !1045
  %140 = icmp ult i32 %137, 1114112, !dbg !1046
  call void @llvm.assume(i1 %140) #33, !dbg !1046
  %141 = shl nuw nsw i64 %130, 40, !dbg !1047
  %142 = zext i32 %137 to i64, !dbg !1047
  %143 = or i64 %141, %142, !dbg !1047
  br label %144, !dbg !1048

144:                                              ; preds = %136, %132
  %145 = phi i64 [ %135, %132 ], [ %143, %136 ], !dbg !996
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %72) #33, !dbg !1049
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %70) #33, !dbg !1049
  br label %146

146:                                              ; preds = %144, %122
  %147 = phi i64 [ %124, %122 ], [ %145, %144 ], !dbg !996
  call void @llvm.dbg.value(metadata i64 %147, metadata !932, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)) #33, !dbg !933
  call void @llvm.dbg.value(metadata i64 %147, metadata !932, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)) #33, !dbg !933
  call void @llvm.dbg.value(metadata i64 %147, metadata !932, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #33, !dbg !933
  call void @llvm.dbg.value(metadata i64 %147, metadata !932, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #33, !dbg !933
  %148 = and i64 %147, 1095216660480, !dbg !1050
  %149 = icmp eq i64 %148, 0, !dbg !1050
  br i1 %149, label %150, label %153, !dbg !1052

150:                                              ; preds = %146
  %151 = lshr i64 %147, 40, !dbg !1053
  call void @llvm.dbg.value(metadata i64 %151, metadata !932, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #33, !dbg !933
  call void @llvm.dbg.value(metadata i64 %147, metadata !932, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)) #33, !dbg !933
  %152 = and i64 %151, 255, !dbg !1054
  call void @llvm.dbg.value(metadata !DIArgList(i64 %118, i64 %152), metadata !139, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !896
  br label %156, !dbg !1055

153:                                              ; preds = %146
  call void @llvm.dbg.value(metadata i64 %118, metadata !139, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !896
  %154 = load i8, i8* %119, align 1, !dbg !1056, !tbaa !729
  %155 = zext i8 %154 to i64, !dbg !1058
  call void @llvm.dbg.value(metadata i8 %154, metadata !932, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)) #33, !dbg !933
  br label %156

156:                                              ; preds = %153, %150
  %157 = phi i64 [ %152, %150 ], [ 1, %153 ]
  %158 = phi i64 [ %147, %150 ], [ %155, %153 ], !dbg !933
  %159 = add nsw i64 %157, %118, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %159, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)) #33, !dbg !896
  call void @llvm.dbg.value(metadata i32 undef, metadata !932, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #33, !dbg !933
  %160 = and i64 %147, -4294967296
  call void @llvm.dbg.value(metadata i64 %117, metadata !139, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #33, !dbg !896
  %161 = trunc i64 %158 to i32, !dbg !1060
  call void @llvm.dbg.value(metadata i32 %161, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 %160, metadata !152, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 %160, metadata !152, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #33, !dbg !918
  call void @llvm.dbg.value(metadata !DIArgList(i64 %160, i64 undef), metadata !152, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #33, !dbg !918
  %162 = icmp eq i32 %161, -1, !dbg !1061
  br i1 %162, label %163, label %169, !dbg !1062

163:                                              ; preds = %156, %111
  %164 = phi i64 [ %160, %156 ], [ 0, %111 ]
  %165 = phi i64 [ %159, %156 ], [ %113, %111 ]
  %166 = phi i64 [ %117, %156 ], [ %112, %111 ]
  %167 = call %struct._IO_FILE* @next_file(%struct._IO_FILE* noundef %92) #33, !dbg !1063
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %167, metadata !137, metadata !DIExpression()) #33, !dbg !896
  %168 = icmp eq %struct._IO_FILE* %167, null, !dbg !1062
  br i1 %168, label %171, label %88, !dbg !922, !llvm.loop !1064

169:                                              ; preds = %156
  %170 = trunc i64 %158 to i32, !dbg !1060
  br label %171, !dbg !1060

171:                                              ; preds = %163, %169
  %172 = phi i1 [ false, %169 ], [ true, %163 ]
  %173 = phi i32 [ %170, %169 ], [ -1, %163 ]
  %174 = phi i64 [ %160, %169 ], [ %164, %163 ]
  %175 = phi i64 [ %159, %169 ], [ %165, %163 ]
  %176 = phi i64 [ %117, %169 ], [ %166, %163 ]
  %177 = phi %struct._IO_FILE* [ %92, %169 ], [ null, %163 ], !dbg !896
  %178 = lshr i64 %174, 40, !dbg !1060
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %177, metadata !137, metadata !DIExpression()) #33, !dbg !896
  br i1 %86, label %179, label %286, !dbg !1066

179:                                              ; preds = %171
  call void @llvm.dbg.value(metadata i32 %161, metadata !1067, metadata !DIExpression()) #33, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %161, metadata !1074, metadata !DIExpression()) #33, !dbg !1082
  %180 = call i32 @iswblank(i32 noundef %173) #33, !dbg !1084
  %181 = icmp ne i32 %180, 0, !dbg !1085
  call void @llvm.dbg.value(metadata i1 %181, metadata !176, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !1086
  br i1 %181, label %182, label %226, !dbg !1087

182:                                              ; preds = %179
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #33, !dbg !1088
  call void @llvm.dbg.value(metadata i64* %5, metadata !172, metadata !DIExpression(DW_OP_deref)) #33, !dbg !918
  call void @llvm.dbg.value(metadata i8* %6, metadata !180, metadata !DIExpression(DW_OP_deref)) #33, !dbg !1089
  %183 = call i64 @get_next_tab_column(i64 noundef %85, i64* noundef nonnull %5, i8* noundef nonnull %6) #33, !dbg !1090
  call void @llvm.dbg.value(metadata i64 %183, metadata !171, metadata !DIExpression()) #33, !dbg !918
  %184 = load i8, i8* %6, align 4, !dbg !1091, !tbaa !865, !range !1093
  call void @llvm.dbg.value(metadata i8 %184, metadata !180, metadata !DIExpression()) #33, !dbg !1089
  %185 = icmp eq i8 %184, 0, !dbg !1091
  call void @llvm.dbg.value(metadata i8 poison, metadata !164, metadata !DIExpression()) #33, !dbg !918
  br i1 %185, label %186, label %222, !dbg !1094

186:                                              ; preds = %182
  %187 = icmp eq i32 %173, 9, !dbg !1095
  br i1 %187, label %188, label %190, !dbg !1099

188:                                              ; preds = %186
  call void @llvm.dbg.value(metadata i64 %183, metadata !165, metadata !DIExpression()) #33, !dbg !918
  %189 = icmp eq i64 %82, 0, !dbg !1100
  br i1 %189, label %219, label %217, !dbg !1103

190:                                              ; preds = %186
  call void @llvm.dbg.value(metadata i32 %161, metadata !1104, metadata !DIExpression()) #33, !dbg !1109
  %191 = call i32 @wcwidth(i32 noundef %173) #33, !dbg !1112
  %192 = sext i32 %191 to i64, !dbg !1113
  %193 = add nsw i64 %85, %192, !dbg !1114
  call void @llvm.dbg.value(metadata i64 %193, metadata !165, metadata !DIExpression()) #33, !dbg !918
  %194 = icmp eq i64 %193, %183
  %195 = select i1 %83, i1 %194, i1 false, !dbg !1115
  br i1 %195, label %196, label %278, !dbg !1115

196:                                              ; preds = %190
  call void @llvm.dbg.value(metadata i8 0, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)) #33, !dbg !918
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1117, !tbaa !624
  call void @llvm.dbg.value(metadata i32 9, metadata !1119, metadata !DIExpression()) #33, !dbg !1125
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %197, metadata !1124, metadata !DIExpression()) #33, !dbg !1125
  %198 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %197, i64 0, i32 5, !dbg !1127
  %199 = load i8*, i8** %198, align 8, !dbg !1127, !tbaa !1128
  %200 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %197, i64 0, i32 6, !dbg !1127
  %201 = load i8*, i8** %200, align 8, !dbg !1127, !tbaa !1129
  %202 = icmp ult i8* %199, %201, !dbg !1127
  br i1 %202, label %203, label %205, !dbg !1127, !prof !1130

203:                                              ; preds = %196
  %204 = getelementptr inbounds i8, i8* %199, i64 1, !dbg !1127
  store i8* %204, i8** %198, align 8, !dbg !1127, !tbaa !1128
  store i8 9, i8* %199, align 1, !dbg !1127, !tbaa !729
  br label %217, !dbg !1131

205:                                              ; preds = %196
  %206 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %197, i32 noundef 9) #33, !dbg !1127
  %207 = icmp slt i32 %206, 0, !dbg !1132
  br i1 %207, label %208, label %217, !dbg !1131

208:                                              ; preds = %205
  %209 = tail call i32* @__errno_location() #36, !dbg !1133
  %210 = load i32, i32* %209, align 4, !dbg !1133, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %210, metadata !1136, metadata !DIExpression()) #33, !dbg !1138
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1139, !tbaa !624
  %212 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %211) #33, !dbg !1139
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1140, !tbaa !624
  %214 = call i32 @fpurge(%struct._IO_FILE* noundef %213) #33, !dbg !1141
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1142, !tbaa !624
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %215) #33, !dbg !1142
  %216 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0), i32 noundef 5) #33, !dbg !1143
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %210, i8* noundef %216) #33, !dbg !1143
  unreachable, !dbg !1143

217:                                              ; preds = %205, %203, %188
  %218 = phi i64 [ %178, %188 ], [ 0, %203 ], [ 0, %205 ]
  store i8 9, i8* %68, align 1, !dbg !1144, !tbaa !729
  br label %219, !dbg !1145

219:                                              ; preds = %217, %188
  %220 = phi i64 [ %178, %188 ], [ %218, %217 ], !dbg !1146
  call void @llvm.dbg.value(metadata i8 undef, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 %183, metadata !165, metadata !DIExpression()) #33, !dbg !918
  %221 = zext i1 %84 to i64, !dbg !1145
  call void @llvm.dbg.value(metadata i64 %221, metadata !175, metadata !DIExpression()) #33, !dbg !918
  br label %222, !dbg !1147

222:                                              ; preds = %219, %182
  %223 = phi i64 [ %82, %182 ], [ %221, %219 ]
  %224 = phi i64 [ %85, %182 ], [ %183, %219 ]
  %225 = phi i64 [ %178, %182 ], [ %220, %219 ]
  call void @llvm.dbg.value(metadata i64 %178, metadata !152, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #33, !dbg !918
  call void @llvm.dbg.value(metadata i8 poison, metadata !173, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i8 poison, metadata !174, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #33, !dbg !1148
  br label %247

226:                                              ; preds = %179
  %227 = icmp eq i32 %173, 8, !dbg !1149
  br i1 %227, label %228, label %236, !dbg !1150

228:                                              ; preds = %226
  %229 = icmp ne i64 %85, 0, !dbg !1151
  %230 = sext i1 %229 to i64
  %231 = add i64 %85, %230, !dbg !1153
  call void @llvm.dbg.value(metadata i64 %231, metadata !165, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 %231, metadata !171, metadata !DIExpression()) #33, !dbg !918
  %232 = load i64, i64* %5, align 8, !dbg !1154, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %232, metadata !172, metadata !DIExpression()) #33, !dbg !918
  %233 = icmp ne i64 %232, 0, !dbg !1155
  %234 = sext i1 %233 to i64
  %235 = add i64 %232, %234, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %235, metadata !172, metadata !DIExpression()) #33, !dbg !918
  store i64 %235, i64* %5, align 8, !dbg !1156, !tbaa !912
  br label %247, !dbg !1157

236:                                              ; preds = %226
  call void @llvm.dbg.value(metadata i32 %161, metadata !1104, metadata !DIExpression()) #33, !dbg !1158
  %237 = call i32 @wcwidth(i32 noundef %173) #33, !dbg !1160
  call void @llvm.dbg.value(metadata i32 %237, metadata !183, metadata !DIExpression()) #33, !dbg !1161
  %238 = icmp slt i32 %237, 0, !dbg !1162
  %239 = select i1 %238, i32 1, i32 %237, !dbg !1162
  %240 = zext i32 %239 to i64, !dbg !1162
  %241 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %85, i64 %240) #33, !dbg !1162
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !1162
  call void @llvm.dbg.value(metadata i64 undef, metadata !165, metadata !DIExpression()) #33, !dbg !918
  br i1 %242, label %243, label %245, !dbg !1164

243:                                              ; preds = %236
  %244 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i64 0, i64 0), i32 noundef 5) #33, !dbg !1165
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %244) #33, !dbg !1165
  unreachable, !dbg !1165

245:                                              ; preds = %236
  %246 = extractvalue { i64, i1 } %241, 0, !dbg !1162
  call void @llvm.dbg.value(metadata i64 %246, metadata !165, metadata !DIExpression()) #33, !dbg !918
  br label %247

247:                                              ; preds = %245, %228, %222
  %248 = phi i32 [ 8, %228 ], [ %173, %245 ], [ %173, %222 ]
  %249 = phi i64 [ %82, %228 ], [ %82, %245 ], [ %223, %222 ], !dbg !918
  %250 = phi i64 [ %231, %228 ], [ %246, %245 ], [ %224, %222 ], !dbg !1166
  %251 = phi i1 [ true, %228 ], [ true, %245 ], [ %185, %222 ]
  %252 = phi i64 [ %178, %228 ], [ %178, %245 ], [ %225, %222 ], !dbg !1060
  call void @llvm.dbg.value(metadata i8 undef, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)) #33, !dbg !918
  call void @llvm.dbg.value(metadata i8 poison, metadata !164, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 %250, metadata !165, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i8 poison, metadata !173, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 %249, metadata !175, metadata !DIExpression()) #33, !dbg !918
  %253 = icmp eq i64 %249, 0, !dbg !1167
  br i1 %253, label %272, label %254, !dbg !1168

254:                                              ; preds = %247
  %255 = icmp slt i64 %249, 2, !dbg !1169
  %256 = xor i1 %84, true, !dbg !1171
  %257 = select i1 %255, i1 true, i1 %256, !dbg !1171
  br i1 %257, label %259, label %258, !dbg !1171

258:                                              ; preds = %254
  store i8 9, i8* %68, align 1, !dbg !1172, !tbaa !729
  br label %259, !dbg !1173

259:                                              ; preds = %254, %258
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1174, !tbaa !624
  %261 = call i64 @fwrite_unlocked(i8* noundef nonnull %68, i64 noundef 1, i64 noundef %249, %struct._IO_FILE* noundef %260) #33, !dbg !1175
  %262 = icmp eq i64 %261, %249, !dbg !1176
  br i1 %262, label %272, label %263, !dbg !1177

263:                                              ; preds = %259
  %264 = tail call i32* @__errno_location() #36, !dbg !1178
  %265 = load i32, i32* %264, align 4, !dbg !1178, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %265, metadata !1136, metadata !DIExpression()) #33, !dbg !1180
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1181, !tbaa !624
  %267 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %266) #33, !dbg !1181
  %268 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1182, !tbaa !624
  %269 = call i32 @fpurge(%struct._IO_FILE* noundef %268) #33, !dbg !1183
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1184, !tbaa !624
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %270) #33, !dbg !1184
  %271 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0), i32 noundef 5) #33, !dbg !1185
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %265, i8* noundef %271) #33, !dbg !1185
  unreachable, !dbg !1185

272:                                              ; preds = %259, %247
  %273 = phi i1 [ %84, %247 ], [ false, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !173, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 0, metadata !175, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i1 %181, metadata !174, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !918
  %274 = load i8, i8* @convert_entire_line, align 1, !dbg !1186, !tbaa !865, !range !1093
  %275 = icmp ne i8 %274, 0, !dbg !1186
  %276 = select i1 %275, i1 true, i1 %181, !dbg !1187
  %277 = and i1 %251, %276, !dbg !1188
  call void @llvm.dbg.value(metadata i64 %178, metadata !152, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #33, !dbg !918
  call void @llvm.dbg.value(metadata i8 poison, metadata !164, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i8 poison, metadata !174, metadata !DIExpression()) #33, !dbg !918
  br label %286

278:                                              ; preds = %190
  %279 = select i1 %194, i1 true, i1 %84, !dbg !1189
  call void @llvm.dbg.value(metadata i8 poison, metadata !173, metadata !DIExpression()) #33, !dbg !918
  %280 = getelementptr inbounds i8, i8* %68, i64 %82, !dbg !1191
  call void @llvm.dbg.value(metadata !DIArgList(i64 %160, i64 0), metadata !1192, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446742974197923840, DW_OP_and, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)) #33, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %178, metadata !1192, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #33, !dbg !1198
  call void @llvm.dbg.value(metadata !DIArgList(i64 %160, i64 0), metadata !1192, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446742974197923840, DW_OP_and, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #33, !dbg !1198
  call void @llvm.dbg.value(metadata %struct.mbbuf_t* undef, metadata !1197, metadata !DIExpression()) #33, !dbg !1198
  %281 = and i64 %178, 255, !dbg !1200
  %282 = icmp sge i64 %175, %281, !dbg !1202
  call void @llvm.assume(i1 %282) #33, !dbg !1203
  %283 = sub nsw i64 %175, %281, !dbg !1204
  %284 = getelementptr inbounds [262144 x i8], [262144 x i8]* @unexpand.line_in, i64 0, i64 %283, !dbg !1205
  call void @llvm.dbg.value(metadata i8* %280, metadata !1206, metadata !DIExpression()) #33, !dbg !1214
  call void @llvm.dbg.value(metadata i8* %284, metadata !1212, metadata !DIExpression()) #33, !dbg !1214
  call void @llvm.dbg.value(metadata i64 %281, metadata !1213, metadata !DIExpression()) #33, !dbg !1214
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %280, i8* noundef nonnull align 1 %284, i64 noundef %281, i1 noundef false) #33, !dbg !1216
  %285 = add nsw i64 %281, %82, !dbg !1217
  call void @llvm.dbg.value(metadata i64 %178, metadata !152, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 %193, metadata !165, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i8 poison, metadata !174, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 %285, metadata !175, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #33, !dbg !1148
  call void @llvm.dbg.value(metadata i8 poison, metadata !164, metadata !DIExpression()) #33, !dbg !918
  br label %315

286:                                              ; preds = %272, %171
  %287 = phi i32 [ %173, %171 ], [ %248, %272 ]
  %288 = phi i64 [ %82, %171 ], [ 0, %272 ], !dbg !918
  %289 = phi i1 [ %83, %171 ], [ %181, %272 ]
  %290 = phi i1 [ %84, %171 ], [ %273, %272 ]
  %291 = phi i64 [ %85, %171 ], [ %250, %272 ], !dbg !918
  %292 = phi i1 [ false, %171 ], [ %277, %272 ]
  %293 = phi i64 [ %178, %171 ], [ %252, %272 ], !dbg !1060
  call void @llvm.dbg.value(metadata i8 undef, metadata !152, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)) #33, !dbg !918
  call void @llvm.dbg.value(metadata i8 poison, metadata !164, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 %291, metadata !165, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i8 poison, metadata !173, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i8 poison, metadata !174, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 %288, metadata !175, metadata !DIExpression()) #33, !dbg !918
  br i1 %172, label %294, label %295, !dbg !1218

294:                                              ; preds = %286
  call void @free(i8* noundef nonnull %68) #33, !dbg !1219
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69) #33, !dbg !1222
  br label %324

295:                                              ; preds = %286
  %296 = and i64 %293, 255, !dbg !1223
  call void @llvm.dbg.value(metadata !DIArgList(i32 0, i64 %296), metadata !1192, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 0, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)) #33, !dbg !1224
  call void @llvm.dbg.value(metadata i64 %296, metadata !1192, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)) #33, !dbg !1224
  call void @llvm.dbg.value(metadata !DIArgList(i32 0, i64 %296), metadata !1192, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 0, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)) #33, !dbg !1224
  call void @llvm.dbg.value(metadata %struct.mbbuf_t* undef, metadata !1197, metadata !DIExpression()) #33, !dbg !1224
  %297 = icmp sge i64 %175, %296, !dbg !1226
  call void @llvm.assume(i1 %297) #33, !dbg !1227
  %298 = sub nsw i64 %175, %296, !dbg !1228
  %299 = getelementptr inbounds [262144 x i8], [262144 x i8]* @unexpand.line_in, i64 0, i64 %298, !dbg !1229
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1223, !tbaa !624
  %301 = call i64 @fwrite_unlocked(i8* noundef nonnull %299, i64 noundef 1, i64 noundef %296, %struct._IO_FILE* noundef %300) #33, !dbg !1223
  %302 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1230, !tbaa !624
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %302, metadata !1232, metadata !DIExpression()) #33, !dbg !1235
  %303 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %302, i64 0, i32 0, !dbg !1237
  %304 = load i32, i32* %303, align 8, !dbg !1237, !tbaa !947
  %305 = and i32 %304, 32, !dbg !1230
  %306 = icmp eq i32 %305, 0, !dbg !1230
  br i1 %306, label %315, label %307, !dbg !1238

307:                                              ; preds = %295
  %308 = tail call i32* @__errno_location() #36, !dbg !1239
  %309 = load i32, i32* %308, align 4, !dbg !1239, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %309, metadata !1136, metadata !DIExpression()) #33, !dbg !1241
  %310 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef nonnull %302) #33, !dbg !1242
  %311 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1243, !tbaa !624
  %312 = call i32 @fpurge(%struct._IO_FILE* noundef %311) #33, !dbg !1244
  %313 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1245, !tbaa !624
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %313) #33, !dbg !1245
  %314 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0), i32 noundef 5) #33, !dbg !1246
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %309, i8* noundef %314) #33, !dbg !1246
  unreachable, !dbg !1246

315:                                              ; preds = %295, %278
  %316 = phi i32 [ %173, %278 ], [ %287, %295 ]
  %317 = phi i64 [ %285, %278 ], [ %288, %295 ], !dbg !1247
  %318 = phi i1 [ true, %278 ], [ %289, %295 ]
  %319 = phi i1 [ %279, %278 ], [ %290, %295 ]
  %320 = phi i64 [ %193, %278 ], [ %291, %295 ], !dbg !1248
  %321 = phi i1 [ true, %278 ], [ %292, %295 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !164, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 %320, metadata !165, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i8 poison, metadata !173, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i8 poison, metadata !174, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i64 %317, metadata !175, metadata !DIExpression()) #33, !dbg !918
  %322 = icmp eq i32 %316, 10, !dbg !1249
  br i1 %322, label %323, label %78, !dbg !1250, !llvm.loop !1251

323:                                              ; preds = %315
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69) #33, !dbg !1222
  br label %73, !llvm.loop !1253

324:                                              ; preds = %57, %294
  call void @cleanup_file_list_stdin() #33, !dbg !1254
  %325 = load i32, i32* @exit_status, align 4, !dbg !1255, !tbaa !720
  ret i32 %325, !dbg !1256
}

; Function Attrs: nounwind
declare !dbg !1257 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1260 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1261 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1264 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare i8* @__memmove_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1270 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nounwind
declare !dbg !1277 i32 @iswblank(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1279 i32 @wcwidth(i32 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

declare !dbg !1284 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1285 void @clearerr_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local void @add_tab_stop(i64 noundef %0) local_unnamed_addr #12 !dbg !1288 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1292, metadata !DIExpression()), !dbg !1295
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1296, !tbaa !912
  %3 = icmp eq i64 %2, 0, !dbg !1296
  br i1 %3, label %9, label %4, !dbg !1296

4:                                                ; preds = %1
  %5 = load i64*, i64** @tab_list, align 8, !dbg !1297, !tbaa !624
  %6 = add nsw i64 %2, -1, !dbg !1298
  %7 = getelementptr inbounds i64, i64* %5, i64 %6, !dbg !1297
  %8 = load i64, i64* %7, align 8, !dbg !1297, !tbaa !912
  br label %9, !dbg !1296

9:                                                ; preds = %1, %4
  %10 = phi i64 [ %8, %4 ], [ 0, %1 ], !dbg !1296
  call void @llvm.dbg.value(metadata i64 %10, metadata !1293, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 undef, metadata !1294, metadata !DIExpression()), !dbg !1295
  %11 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1299, !tbaa !912
  %12 = icmp eq i64 %2, %11, !dbg !1301
  br i1 %12, label %15, label %13, !dbg !1302

13:                                               ; preds = %9
  %14 = load i64*, i64** @tab_list, align 8, !dbg !1303, !tbaa !624
  br label %20, !dbg !1302

15:                                               ; preds = %9
  %16 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1304, !tbaa !624
  %17 = tail call nonnull i8* @xpalloc(i8* noundef %16, i64* noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #33, !dbg !1305
  store i8* %17, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1306, !tbaa !624
  %18 = bitcast i8* %17 to i64*, !dbg !1307
  %19 = load i64, i64* @first_free_tab, align 8, !dbg !1308, !tbaa !912
  br label %20, !dbg !1307

20:                                               ; preds = %13, %15
  %21 = phi i64 [ %2, %13 ], [ %19, %15 ], !dbg !1308
  %22 = phi i64* [ %14, %13 ], [ %18, %15 ], !dbg !1303
  %23 = icmp sgt i64 %10, %0, !dbg !1309
  %24 = sub nsw i64 %0, %10, !dbg !1310
  %25 = select i1 %23, i64 0, i64 %24, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %25, metadata !1294, metadata !DIExpression()), !dbg !1295
  %26 = add nsw i64 %21, 1, !dbg !1308
  store i64 %26, i64* @first_free_tab, align 8, !dbg !1308, !tbaa !912
  %27 = getelementptr inbounds i64, i64* %22, i64 %21, !dbg !1303
  store i64 %0, i64* %27, align 8, !dbg !1311, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %25, metadata !1312, metadata !DIExpression()), !dbg !1315
  %28 = load i64, i64* @max_column_width, align 8, !dbg !1317, !tbaa !912
  %29 = icmp slt i64 %28, %25, !dbg !1319
  br i1 %29, label %30, label %31, !dbg !1320

30:                                               ; preds = %20
  store i64 %25, i64* @max_column_width, align 8, !dbg !1321
  br label %31, !dbg !1324

31:                                               ; preds = %20, %30
  ret void, !dbg !1325
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_tab_stops(i8* noundef nonnull %0) local_unnamed_addr #12 !dbg !1326 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1328, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8 0, metadata !1329, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i64 0, metadata !1330, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8 0, metadata !1331, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8 0, metadata !1332, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8* null, metadata !1333, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8 1, metadata !1334, metadata !DIExpression()), !dbg !1347
  br label %2, !dbg !1348

2:                                                ; preds = %113, %1
  %3 = phi i64 [ 0, %1 ], [ %114, %113 ], !dbg !1349
  %4 = phi i1 [ false, %1 ], [ %115, %113 ]
  %5 = phi i1 [ false, %1 ], [ %116, %113 ]
  %6 = phi i8* [ null, %1 ], [ %117, %113 ], !dbg !1350
  %7 = phi i1 [ true, %1 ], [ %118, %113 ]
  %8 = phi i1 [ false, %1 ], [ %119, %113 ]
  %9 = phi i8* [ %0, %1 ], [ %121, %113 ]
  call void @llvm.dbg.value(metadata i8* %9, metadata !1328, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8 poison, metadata !1329, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8 poison, metadata !1334, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8* %6, metadata !1333, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8 poison, metadata !1332, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8 poison, metadata !1331, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %3, metadata !1330, metadata !DIExpression()), !dbg !1347
  %10 = load i8, i8* %9, align 1, !dbg !1351, !tbaa !729
  switch i8 %10, label %11 [
    i8 0, label %122
    i8 44, label %19
  ], !dbg !1352

11:                                               ; preds = %2
  %12 = tail call i16** @__ctype_b_loc() #36, !dbg !1353
  %13 = load i16*, i16** %12, align 8, !dbg !1353, !tbaa !624
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds i16, i16* %13, i64 %14, !dbg !1353
  %16 = load i16, i16* %15, align 2, !dbg !1353, !tbaa !754
  %17 = and i16 %16, 1, !dbg !1353
  %18 = icmp eq i16 %17, 0, !dbg !1353
  br i1 %18, label %72, label %19, !dbg !1354

19:                                               ; preds = %2, %11
  br i1 %8, label %20, label %113, !dbg !1355

20:                                               ; preds = %19
  br i1 %4, label %21, label %31, !dbg !1357

21:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 %3, metadata !1360, metadata !DIExpression()) #33, !dbg !1366
  call void @llvm.dbg.value(metadata i8 1, metadata !1365, metadata !DIExpression()) #33, !dbg !1366
  %22 = load i64, i64* @extend_size, align 8, !dbg !1371, !tbaa !912
  %23 = icmp eq i64 %22, 0, !dbg !1371
  br i1 %23, label %26, label %24, !dbg !1373

24:                                               ; preds = %21
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12.11, i64 0, i64 0), i32 noundef 5) #33, !dbg !1374
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %25) #33, !dbg !1374
  call void @llvm.dbg.value(metadata i8 0, metadata !1365, metadata !DIExpression()) #33, !dbg !1366
  br label %26, !dbg !1376

26:                                               ; preds = %24, %21
  call void @llvm.dbg.value(metadata i8 poison, metadata !1365, metadata !DIExpression()) #33, !dbg !1366
  store i64 %3, i64* @extend_size, align 8, !dbg !1377, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %3, metadata !1312, metadata !DIExpression()) #33, !dbg !1378
  %27 = load i64, i64* @max_column_width, align 8, !dbg !1380, !tbaa !912
  %28 = icmp slt i64 %27, %3, !dbg !1381
  br i1 %28, label %29, label %30, !dbg !1382

29:                                               ; preds = %26
  store i64 %3, i64* @max_column_width, align 8, !dbg !1383
  br label %30, !dbg !1384

30:                                               ; preds = %26, %29
  br i1 %23, label %113, label %178, !dbg !1385

31:                                               ; preds = %20
  br i1 %5, label %32, label %42, !dbg !1386

32:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1387, metadata !DIExpression()) #33, !dbg !1391
  call void @llvm.dbg.value(metadata i8 1, metadata !1390, metadata !DIExpression()) #33, !dbg !1391
  %33 = load i64, i64* @increment_size, align 8, !dbg !1396, !tbaa !912
  %34 = icmp eq i64 %33, 0, !dbg !1396
  br i1 %34, label %37, label %35, !dbg !1398

35:                                               ; preds = %32
  %36 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.12, i64 0, i64 0), i32 noundef 5) #33, !dbg !1399
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %36) #33, !dbg !1399
  call void @llvm.dbg.value(metadata i8 0, metadata !1390, metadata !DIExpression()) #33, !dbg !1391
  br label %37, !dbg !1401

37:                                               ; preds = %35, %32
  call void @llvm.dbg.value(metadata i8 poison, metadata !1390, metadata !DIExpression()) #33, !dbg !1391
  store i64 %3, i64* @increment_size, align 8, !dbg !1402, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %3, metadata !1312, metadata !DIExpression()) #33, !dbg !1403
  %38 = load i64, i64* @max_column_width, align 8, !dbg !1405, !tbaa !912
  %39 = icmp slt i64 %38, %3, !dbg !1406
  br i1 %39, label %40, label %41, !dbg !1407

40:                                               ; preds = %37
  store i64 %3, i64* @max_column_width, align 8, !dbg !1408
  br label %41, !dbg !1409

41:                                               ; preds = %37, %40
  br i1 %34, label %113, label %178, !dbg !1410

42:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1292, metadata !DIExpression()) #33, !dbg !1411
  %43 = load i64, i64* @first_free_tab, align 8, !dbg !1413, !tbaa !912
  %44 = icmp eq i64 %43, 0, !dbg !1413
  br i1 %44, label %50, label %45, !dbg !1413

45:                                               ; preds = %42
  %46 = load i64*, i64** @tab_list, align 8, !dbg !1414, !tbaa !624
  %47 = add nsw i64 %43, -1, !dbg !1415
  %48 = getelementptr inbounds i64, i64* %46, i64 %47, !dbg !1414
  %49 = load i64, i64* %48, align 8, !dbg !1414, !tbaa !912
  br label %50, !dbg !1413

50:                                               ; preds = %45, %42
  %51 = phi i64 [ %49, %45 ], [ 0, %42 ], !dbg !1413
  call void @llvm.dbg.value(metadata i64 %51, metadata !1293, metadata !DIExpression()) #33, !dbg !1411
  call void @llvm.dbg.value(metadata i64 undef, metadata !1294, metadata !DIExpression()) #33, !dbg !1411
  %52 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1416, !tbaa !912
  %53 = icmp eq i64 %43, %52, !dbg !1417
  br i1 %53, label %56, label %54, !dbg !1418

54:                                               ; preds = %50
  %55 = load i64*, i64** @tab_list, align 8, !dbg !1419, !tbaa !624
  br label %61, !dbg !1418

56:                                               ; preds = %50
  %57 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1420, !tbaa !624
  %58 = tail call nonnull i8* @xpalloc(i8* noundef %57, i64* noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #33, !dbg !1421
  store i8* %58, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1422, !tbaa !624
  %59 = bitcast i8* %58 to i64*, !dbg !1423
  %60 = load i64, i64* @first_free_tab, align 8, !dbg !1424, !tbaa !912
  br label %61, !dbg !1423

61:                                               ; preds = %56, %54
  %62 = phi i64 [ %43, %54 ], [ %60, %56 ], !dbg !1424
  %63 = phi i64* [ %55, %54 ], [ %59, %56 ], !dbg !1419
  %64 = icmp slt i64 %3, %51, !dbg !1425
  %65 = sub nsw i64 %3, %51, !dbg !1426
  %66 = select i1 %64, i64 0, i64 %65, !dbg !1426
  call void @llvm.dbg.value(metadata i64 %66, metadata !1294, metadata !DIExpression()) #33, !dbg !1411
  %67 = add nsw i64 %62, 1, !dbg !1424
  store i64 %67, i64* @first_free_tab, align 8, !dbg !1424, !tbaa !912
  %68 = getelementptr inbounds i64, i64* %63, i64 %62, !dbg !1419
  store i64 %3, i64* %68, align 8, !dbg !1427, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %66, metadata !1312, metadata !DIExpression()) #33, !dbg !1428
  %69 = load i64, i64* @max_column_width, align 8, !dbg !1430, !tbaa !912
  %70 = icmp slt i64 %69, %66, !dbg !1431
  br i1 %70, label %71, label %113, !dbg !1432

71:                                               ; preds = %61
  store i64 %66, i64* @max_column_width, align 8, !dbg !1433
  br label %113, !dbg !1434

72:                                               ; preds = %11
  switch i8 %10, label %81 [
    i8 47, label %73
    i8 43, label %77
  ], !dbg !1435

73:                                               ; preds = %72
  br i1 %8, label %74, label %113, !dbg !1436

74:                                               ; preds = %73
  %75 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0), i32 noundef 5) #33, !dbg !1438
  %76 = tail call i8* @quote(i8* noundef nonnull %9) #33, !dbg !1438
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %75, i8* noundef %76) #33, !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, metadata !1334, metadata !DIExpression()), !dbg !1347
  br label %113, !dbg !1441

77:                                               ; preds = %72
  br i1 %8, label %78, label %113, !dbg !1442

78:                                               ; preds = %77
  %79 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.24, i64 0, i64 0), i32 noundef 5) #33, !dbg !1444
  %80 = tail call i8* @quote(i8* noundef nonnull %9) #33, !dbg !1444
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %79, i8* noundef %80) #33, !dbg !1444
  call void @llvm.dbg.value(metadata i8 0, metadata !1334, metadata !DIExpression()), !dbg !1347
  br label %113, !dbg !1447

81:                                               ; preds = %72
  %82 = zext i8 %10 to i32, !dbg !1448
  call void @llvm.dbg.value(metadata i32 %82, metadata !1449, metadata !DIExpression()), !dbg !1455
  %83 = add nsw i32 %82, -48, !dbg !1457
  %84 = icmp ult i32 %83, 10, !dbg !1457
  br i1 %84, label %85, label %110, !dbg !1458

85:                                               ; preds = %81
  %86 = select i1 %8, i64 %3, i64 0, !dbg !1459
  %87 = select i1 %8, i8* %6, i8* %9, !dbg !1459
  call void @llvm.dbg.value(metadata i8 poison, metadata !1329, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8* %87, metadata !1333, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %86, metadata !1330, metadata !DIExpression()), !dbg !1347
  %88 = icmp slt i64 %86, 0, !dbg !1460
  br i1 %88, label %89, label %92, !dbg !1460

89:                                               ; preds = %85
  %90 = add i64 %86, -1, !dbg !1460
  %91 = icmp ult i64 %90, -922337203685477581, !dbg !1460
  br i1 %91, label %94, label %96, !dbg !1460

92:                                               ; preds = %85
  %93 = icmp ugt i64 %86, 922337203685477580, !dbg !1460
  br i1 %93, label %94, label %96, !dbg !1460

94:                                               ; preds = %89, %92
  %95 = mul i64 %86, 10, !dbg !1460
  call void @llvm.dbg.value(metadata i64 %97, metadata !1330, metadata !DIExpression()), !dbg !1347
  br label %102, !dbg !1460

96:                                               ; preds = %89, %92
  call void @llvm.dbg.value(metadata i64 %86, metadata !1330, metadata !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value)), !dbg !1347
  %97 = mul nsw i64 %86, 10, !dbg !1460
  call void @llvm.dbg.value(metadata i64 %97, metadata !1330, metadata !DIExpression()), !dbg !1347
  %98 = add nsw i64 %14, -48, !dbg !1460
  %99 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %97, i64 %98), !dbg !1460
  %100 = extractvalue { i64, i1 } %99, 1, !dbg !1460
  %101 = extractvalue { i64, i1 } %99, 0, !dbg !1460
  call void @llvm.dbg.value(metadata i64 %101, metadata !1330, metadata !DIExpression()), !dbg !1347
  br i1 %100, label %102, label %113, !dbg !1461

102:                                              ; preds = %94, %96
  %103 = phi i64 [ %101, %96 ], [ %95, %94 ], !dbg !1460
  call void @llvm.dbg.value(metadata i64 %103, metadata !1330, metadata !DIExpression()), !dbg !1347
  %104 = tail call i64 @strspn(i8* noundef %87, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.25, i64 0, i64 0)) #34, !dbg !1462
  call void @llvm.dbg.value(metadata i64 %104, metadata !1335, metadata !DIExpression()), !dbg !1463
  %105 = tail call noalias nonnull i8* @ximemdup0(i8* noundef %87, i64 noundef %104) #33, !dbg !1464
  call void @llvm.dbg.value(metadata i8* %105, metadata !1346, metadata !DIExpression()), !dbg !1463
  %106 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3.26, i64 0, i64 0), i32 noundef 5) #33, !dbg !1465
  %107 = tail call i8* @quote(i8* noundef nonnull %105) #33, !dbg !1465
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %106, i8* noundef %107) #33, !dbg !1465
  tail call void @free(i8* noundef nonnull %105) #33, !dbg !1466
  call void @llvm.dbg.value(metadata i8 0, metadata !1334, metadata !DIExpression()), !dbg !1347
  %108 = getelementptr inbounds i8, i8* %87, i64 -1, !dbg !1467
  %109 = getelementptr inbounds i8, i8* %108, i64 %104, !dbg !1468
  call void @llvm.dbg.value(metadata i8* %109, metadata !1328, metadata !DIExpression()), !dbg !1347
  br label %113, !dbg !1469

110:                                              ; preds = %81
  %111 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4.27, i64 0, i64 0), i32 noundef 5) #33, !dbg !1470
  %112 = tail call i8* @quote(i8* noundef nonnull %9) #33, !dbg !1470
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %111, i8* noundef %112) #33, !dbg !1470
  call void @llvm.dbg.value(metadata i8 0, metadata !1334, metadata !DIExpression()), !dbg !1347
  br label %178, !dbg !1472

113:                                              ; preds = %71, %61, %77, %78, %73, %74, %19, %41, %30, %96, %102
  %114 = phi i64 [ %103, %102 ], [ %101, %96 ], [ %3, %30 ], [ %3, %41 ], [ %3, %19 ], [ %3, %74 ], [ %3, %73 ], [ %3, %78 ], [ %3, %77 ], [ %3, %61 ], [ %3, %71 ], !dbg !1347
  %115 = phi i1 [ %4, %102 ], [ %4, %96 ], [ true, %30 ], [ false, %41 ], [ %4, %19 ], [ true, %74 ], [ true, %73 ], [ false, %78 ], [ false, %77 ], [ false, %61 ], [ false, %71 ]
  %116 = phi i1 [ %5, %102 ], [ %5, %96 ], [ %5, %30 ], [ true, %41 ], [ %5, %19 ], [ false, %74 ], [ false, %73 ], [ true, %78 ], [ true, %77 ], [ false, %61 ], [ false, %71 ]
  %117 = phi i8* [ %87, %102 ], [ %87, %96 ], [ %6, %30 ], [ %6, %41 ], [ %6, %19 ], [ %6, %74 ], [ %6, %73 ], [ %6, %78 ], [ %6, %77 ], [ %6, %61 ], [ %6, %71 ], !dbg !1350
  %118 = phi i1 [ false, %102 ], [ %7, %96 ], [ %7, %30 ], [ %7, %41 ], [ %7, %19 ], [ false, %74 ], [ %7, %73 ], [ false, %78 ], [ %7, %77 ], [ %7, %61 ], [ %7, %71 ]
  %119 = phi i1 [ true, %102 ], [ true, %96 ], [ false, %30 ], [ false, %41 ], [ false, %19 ], [ true, %74 ], [ false, %73 ], [ true, %78 ], [ false, %77 ], [ false, %61 ], [ false, %71 ]
  %120 = phi i8* [ %109, %102 ], [ %9, %96 ], [ %9, %30 ], [ %9, %41 ], [ %9, %19 ], [ %9, %74 ], [ %9, %73 ], [ %9, %78 ], [ %9, %77 ], [ %9, %61 ], [ %9, %71 ]
  call void @llvm.dbg.value(metadata i8* %120, metadata !1328, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8 poison, metadata !1329, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8 poison, metadata !1334, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8* %117, metadata !1333, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8 poison, metadata !1332, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8 poison, metadata !1331, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %114, metadata !1330, metadata !DIExpression()), !dbg !1347
  %121 = getelementptr inbounds i8, i8* %120, i64 1, !dbg !1473
  call void @llvm.dbg.value(metadata i8* %121, metadata !1328, metadata !DIExpression()), !dbg !1347
  br label %2, !dbg !1474, !llvm.loop !1475

122:                                              ; preds = %2
  call void @llvm.dbg.value(metadata i8 poison, metadata !1334, metadata !DIExpression()), !dbg !1347
  %123 = and i1 %7, %8, !dbg !1477
  br i1 %123, label %124, label %177, !dbg !1477

124:                                              ; preds = %122
  br i1 %4, label %125, label %136, !dbg !1479

125:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 %3, metadata !1360, metadata !DIExpression()) #33, !dbg !1481
  call void @llvm.dbg.value(metadata i8 1, metadata !1365, metadata !DIExpression()) #33, !dbg !1481
  %126 = load i64, i64* @extend_size, align 8, !dbg !1484, !tbaa !912
  %127 = icmp eq i64 %126, 0, !dbg !1484
  br i1 %127, label %128, label %131, !dbg !1485

128:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i8 poison, metadata !1365, metadata !DIExpression()) #33, !dbg !1481
  store i64 %3, i64* @extend_size, align 8, !dbg !1486, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %3, metadata !1312, metadata !DIExpression()) #33, !dbg !1487
  %129 = load i64, i64* @max_column_width, align 8, !dbg !1489, !tbaa !912
  %130 = icmp slt i64 %129, %3, !dbg !1490
  br i1 %130, label %179, label %181, !dbg !1491

131:                                              ; preds = %125
  %132 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12.11, i64 0, i64 0), i32 noundef 5) #33, !dbg !1492
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %132) #33, !dbg !1492
  call void @llvm.dbg.value(metadata i8 poison, metadata !1365, metadata !DIExpression()) #33, !dbg !1481
  store i64 %3, i64* @extend_size, align 8, !dbg !1486, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %3, metadata !1312, metadata !DIExpression()) #33, !dbg !1487
  %133 = load i64, i64* @max_column_width, align 8, !dbg !1489, !tbaa !912
  %134 = icmp slt i64 %133, %3, !dbg !1490
  br i1 %134, label %135, label %178, !dbg !1491

135:                                              ; preds = %131
  store i64 %3, i64* @max_column_width, align 8, !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1334, metadata !DIExpression()), !dbg !1347
  br label %178, !dbg !1494

136:                                              ; preds = %124
  br i1 %5, label %137, label %148, !dbg !1495

137:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i64 %3, metadata !1387, metadata !DIExpression()) #33, !dbg !1496
  call void @llvm.dbg.value(metadata i8 1, metadata !1390, metadata !DIExpression()) #33, !dbg !1496
  %138 = load i64, i64* @increment_size, align 8, !dbg !1499, !tbaa !912
  %139 = icmp eq i64 %138, 0, !dbg !1499
  br i1 %139, label %140, label %143, !dbg !1500

140:                                              ; preds = %137
  call void @llvm.dbg.value(metadata i8 poison, metadata !1390, metadata !DIExpression()) #33, !dbg !1496
  store i64 %3, i64* @increment_size, align 8, !dbg !1501, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %3, metadata !1312, metadata !DIExpression()) #33, !dbg !1502
  %141 = load i64, i64* @max_column_width, align 8, !dbg !1504, !tbaa !912
  %142 = icmp slt i64 %141, %3, !dbg !1505
  br i1 %142, label %179, label %181, !dbg !1506

143:                                              ; preds = %137
  %144 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13.12, i64 0, i64 0), i32 noundef 5) #33, !dbg !1507
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %144) #33, !dbg !1507
  call void @llvm.dbg.value(metadata i8 poison, metadata !1390, metadata !DIExpression()) #33, !dbg !1496
  store i64 %3, i64* @increment_size, align 8, !dbg !1501, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %3, metadata !1312, metadata !DIExpression()) #33, !dbg !1502
  %145 = load i64, i64* @max_column_width, align 8, !dbg !1504, !tbaa !912
  %146 = icmp slt i64 %145, %3, !dbg !1505
  br i1 %146, label %147, label %178, !dbg !1506

147:                                              ; preds = %143
  store i64 %3, i64* @max_column_width, align 8, !dbg !1508
  call void @llvm.dbg.value(metadata i8 poison, metadata !1334, metadata !DIExpression()), !dbg !1347
  br label %178, !dbg !1494

148:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i64 %3, metadata !1292, metadata !DIExpression()) #33, !dbg !1509
  %149 = load i64, i64* @first_free_tab, align 8, !dbg !1511, !tbaa !912
  %150 = icmp eq i64 %149, 0, !dbg !1511
  br i1 %150, label %156, label %151, !dbg !1511

151:                                              ; preds = %148
  %152 = load i64*, i64** @tab_list, align 8, !dbg !1512, !tbaa !624
  %153 = add nsw i64 %149, -1, !dbg !1513
  %154 = getelementptr inbounds i64, i64* %152, i64 %153, !dbg !1512
  %155 = load i64, i64* %154, align 8, !dbg !1512, !tbaa !912
  br label %156, !dbg !1511

156:                                              ; preds = %151, %148
  %157 = phi i64 [ %155, %151 ], [ 0, %148 ], !dbg !1511
  call void @llvm.dbg.value(metadata i64 %157, metadata !1293, metadata !DIExpression()) #33, !dbg !1509
  call void @llvm.dbg.value(metadata i64 undef, metadata !1294, metadata !DIExpression()) #33, !dbg !1509
  %158 = load i64, i64* @n_tabs_allocated, align 8, !dbg !1514, !tbaa !912
  %159 = icmp eq i64 %149, %158, !dbg !1515
  br i1 %159, label %162, label %160, !dbg !1516

160:                                              ; preds = %156
  %161 = load i64*, i64** @tab_list, align 8, !dbg !1517, !tbaa !624
  br label %167, !dbg !1516

162:                                              ; preds = %156
  %163 = load i8*, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1518, !tbaa !624
  %164 = tail call nonnull i8* @xpalloc(i8* noundef %163, i64* noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #33, !dbg !1519
  store i8* %164, i8** bitcast (i64** @tab_list to i8**), align 8, !dbg !1520, !tbaa !624
  %165 = bitcast i8* %164 to i64*, !dbg !1521
  %166 = load i64, i64* @first_free_tab, align 8, !dbg !1522, !tbaa !912
  br label %167, !dbg !1521

167:                                              ; preds = %162, %160
  %168 = phi i64 [ %149, %160 ], [ %166, %162 ], !dbg !1522
  %169 = phi i64* [ %161, %160 ], [ %165, %162 ], !dbg !1517
  %170 = icmp slt i64 %3, %157, !dbg !1523
  %171 = sub nsw i64 %3, %157, !dbg !1524
  %172 = select i1 %170, i64 0, i64 %171, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %172, metadata !1294, metadata !DIExpression()) #33, !dbg !1509
  %173 = add nsw i64 %168, 1, !dbg !1522
  store i64 %173, i64* @first_free_tab, align 8, !dbg !1522, !tbaa !912
  %174 = getelementptr inbounds i64, i64* %169, i64 %168, !dbg !1517
  store i64 %3, i64* %174, align 8, !dbg !1525, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %172, metadata !1312, metadata !DIExpression()) #33, !dbg !1526
  %175 = load i64, i64* @max_column_width, align 8, !dbg !1528, !tbaa !912
  %176 = icmp slt i64 %175, %172, !dbg !1529
  br i1 %176, label %179, label %181, !dbg !1530

177:                                              ; preds = %122
  call void @llvm.dbg.value(metadata i8 poison, metadata !1334, metadata !DIExpression()), !dbg !1347
  br i1 %7, label %181, label %178, !dbg !1494

178:                                              ; preds = %30, %41, %143, %131, %147, %135, %110, %177
  tail call void @exit(i32 noundef 1) #35, !dbg !1531
  unreachable, !dbg !1531

179:                                              ; preds = %167, %140, %128
  %180 = phi i64 [ %3, %128 ], [ %3, %140 ], [ %172, %167 ]
  store i64 %180, i64* @max_column_width, align 8, !dbg !1533
  br label %181, !dbg !1534

181:                                              ; preds = %179, %167, %140, %128, %177
  ret void, !dbg !1534
}

; Function Attrs: nounwind uwtable
define dso_local void @finalize_tab_stops() local_unnamed_addr #12 !dbg !1535 {
  %1 = load i64*, i64** @tab_list, align 8, !dbg !1536, !tbaa !624
  %2 = load i64, i64* @first_free_tab, align 8, !dbg !1537, !tbaa !912
  call void @llvm.dbg.value(metadata i64* %1, metadata !1538, metadata !DIExpression()) #33, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %2, metadata !1545, metadata !DIExpression()) #33, !dbg !1549
  call void @llvm.dbg.value(metadata i64 0, metadata !1546, metadata !DIExpression()) #33, !dbg !1549
  call void @llvm.dbg.value(metadata i64 0, metadata !1547, metadata !DIExpression()) #33, !dbg !1551
  %3 = icmp sgt i64 %2, 0, !dbg !1552
  br i1 %3, label %12, label %6, !dbg !1554

4:                                                ; preds = %20
  call void @llvm.dbg.value(metadata i64 %22, metadata !1547, metadata !DIExpression()) #33, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %16, metadata !1546, metadata !DIExpression()) #33, !dbg !1549
  %5 = icmp eq i64 %22, %2, !dbg !1552
  br i1 %5, label %6, label %12, !dbg !1554, !llvm.loop !1555

6:                                                ; preds = %4, %0
  %7 = load i64, i64* @increment_size, align 8, !dbg !1557, !tbaa !912
  %8 = icmp ne i64 %7, 0, !dbg !1557
  %9 = load i64, i64* @extend_size, align 8
  %10 = icmp ne i64 %9, 0
  %11 = select i1 %8, i1 %10, i1 false, !dbg !1559
  br i1 %11, label %25, label %27, !dbg !1559

12:                                               ; preds = %0, %4
  %13 = phi i64 [ %22, %4 ], [ 0, %0 ]
  %14 = phi i64 [ %16, %4 ], [ 0, %0 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !1547, metadata !DIExpression()) #33, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %14, metadata !1546, metadata !DIExpression()) #33, !dbg !1549
  %15 = getelementptr inbounds i64, i64* %1, i64 %13, !dbg !1560
  %16 = load i64, i64* %15, align 8, !dbg !1560, !tbaa !912
  %17 = icmp eq i64 %16, 0, !dbg !1563
  br i1 %17, label %18, label %20, !dbg !1564

18:                                               ; preds = %12
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.30, i64 0, i64 0), i32 noundef 5) #33, !dbg !1565
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %19) #33, !dbg !1565
  unreachable, !dbg !1565

20:                                               ; preds = %12
  %21 = icmp sgt i64 %16, %14, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %16, metadata !1546, metadata !DIExpression()) #33, !dbg !1549
  %22 = add nuw nsw i64 %13, 1, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %22, metadata !1547, metadata !DIExpression()) #33, !dbg !1551
  br i1 %21, label %4, label %23, !dbg !1569

23:                                               ; preds = %20
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15.31, i64 0, i64 0), i32 noundef 5) #33, !dbg !1570
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %24) #33, !dbg !1570
  unreachable, !dbg !1570

25:                                               ; preds = %6
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16.32, i64 0, i64 0), i32 noundef 5) #33, !dbg !1571
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %26) #33, !dbg !1571
  unreachable, !dbg !1571

27:                                               ; preds = %6
  %28 = icmp eq i64 %2, 0, !dbg !1572
  br i1 %28, label %29, label %34, !dbg !1574

29:                                               ; preds = %27
  %30 = icmp eq i64 %9, 0, !dbg !1575
  %31 = icmp eq i64 %7, 0, !dbg !1575
  %32 = select i1 %31, i64 8, i64 %7, !dbg !1575
  %33 = select i1 %30, i64 %32, i64 %9, !dbg !1575
  store i64 %33, i64* @max_column_width, align 8, !dbg !1576, !tbaa !912
  br label %40, !dbg !1577

34:                                               ; preds = %27
  %35 = icmp ne i64 %2, 1, !dbg !1578
  %36 = select i1 %35, i1 true, i1 %10, !dbg !1580
  %37 = select i1 %36, i1 true, i1 %8, !dbg !1580
  br i1 %37, label %40, label %38, !dbg !1580

38:                                               ; preds = %34
  %39 = load i64, i64* %1, align 8, !dbg !1581, !tbaa !912
  br label %40, !dbg !1582

40:                                               ; preds = %34, %38, %29
  %41 = phi i64 [ %39, %38 ], [ %33, %29 ], [ 0, %34 ]
  store i64 %41, i64* @tab_size, align 8, !dbg !1583, !tbaa !912
  ret void, !dbg !1584
}

; Function Attrs: nounwind uwtable
define dso_local i64 @get_next_tab_column(i64 noundef %0, i64* nocapture noundef %1, i8* nocapture noundef nonnull writeonly %2) local_unnamed_addr #12 !dbg !1585 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1590, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i64* %1, metadata !1591, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8* %2, metadata !1592, metadata !DIExpression()), !dbg !1605
  store i8 0, i8* %2, align 1, !dbg !1606, !tbaa !865
  %4 = load i64, i64* @tab_size, align 8, !dbg !1607, !tbaa !912
  %5 = icmp eq i64 %4, 0, !dbg !1607
  br i1 %5, label %6, label %12, !dbg !1608

6:                                                ; preds = %3
  %7 = load i64, i64* @first_free_tab, align 8, !tbaa !912
  %8 = load i64, i64* %1, align 8, !dbg !1609, !tbaa !912
  %9 = icmp slt i64 %8, %7, !dbg !1610
  br i1 %9, label %10, label %23, !dbg !1611

10:                                               ; preds = %6
  %11 = load i64*, i64** @tab_list, align 8, !tbaa !624
  br label %15, !dbg !1611

12:                                               ; preds = %3
  %13 = srem i64 %0, %4, !dbg !1612
  %14 = sub nsw i64 %4, %13, !dbg !1613
  call void @llvm.dbg.value(metadata i64 %14, metadata !1593, metadata !DIExpression()), !dbg !1605
  br label %41, !dbg !1614

15:                                               ; preds = %10, %20
  %16 = phi i64 [ %8, %10 ], [ %21, %20 ]
  %17 = getelementptr inbounds i64, i64* %11, i64 %16, !dbg !1615
  %18 = load i64, i64* %17, align 8, !dbg !1615, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %18, metadata !1594, metadata !DIExpression()), !dbg !1616
  %19 = icmp sgt i64 %18, %0, !dbg !1617
  br i1 %19, label %49, label %20

20:                                               ; preds = %15
  %21 = add i64 %16, 1, !dbg !1619
  store i64 %21, i64* %1, align 8, !dbg !1619, !tbaa !912
  %22 = icmp eq i64 %21, %7, !dbg !1610
  br i1 %22, label %23, label %15, !dbg !1611, !llvm.loop !1620

23:                                               ; preds = %20, %6
  %24 = load i64, i64* @extend_size, align 8, !dbg !1622, !tbaa !912
  %25 = icmp eq i64 %24, 0, !dbg !1622
  br i1 %25, label %29, label %26, !dbg !1623

26:                                               ; preds = %23
  %27 = srem i64 %0, %24, !dbg !1624
  %28 = sub nsw i64 %24, %27, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %28, metadata !1593, metadata !DIExpression()), !dbg !1605
  br label %41, !dbg !1626

29:                                               ; preds = %23
  %30 = load i64, i64* @increment_size, align 8, !dbg !1627, !tbaa !912
  %31 = icmp eq i64 %30, 0, !dbg !1627
  br i1 %31, label %40, label %32, !dbg !1628

32:                                               ; preds = %29
  %33 = load i64*, i64** @tab_list, align 8, !dbg !1629, !tbaa !624
  %34 = add nsw i64 %7, -1, !dbg !1630
  %35 = getelementptr inbounds i64, i64* %33, i64 %34, !dbg !1629
  %36 = load i64, i64* %35, align 8, !dbg !1629, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %36, metadata !1600, metadata !DIExpression()), !dbg !1631
  %37 = sub nsw i64 %0, %36, !dbg !1632
  %38 = srem i64 %37, %30, !dbg !1633
  %39 = sub nsw i64 %30, %38, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %39, metadata !1593, metadata !DIExpression()), !dbg !1605
  br label %41, !dbg !1635

40:                                               ; preds = %29
  store i8 1, i8* %2, align 1, !dbg !1636, !tbaa !865
  call void @llvm.dbg.value(metadata i64 1, metadata !1593, metadata !DIExpression()), !dbg !1605
  br label %41

41:                                               ; preds = %26, %40, %32, %12
  %42 = phi i64 [ %14, %12 ], [ %28, %26 ], [ %39, %32 ], [ 1, %40 ], !dbg !1638
  call void @llvm.dbg.value(metadata i64 %42, metadata !1593, metadata !DIExpression()), !dbg !1605
  %43 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %42), !dbg !1639
  %44 = extractvalue { i64, i1 } %43, 1, !dbg !1639
  call void @llvm.dbg.value(metadata i64 undef, metadata !1604, metadata !DIExpression()), !dbg !1605
  br i1 %44, label %45, label %47, !dbg !1641

45:                                               ; preds = %41
  %46 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.35, i64 0, i64 0), i32 noundef 5) #33, !dbg !1642
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %46) #33, !dbg !1642
  unreachable, !dbg !1642

47:                                               ; preds = %41
  %48 = extractvalue { i64, i1 } %43, 0, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %48, metadata !1604, metadata !DIExpression()), !dbg !1605
  br label %49

49:                                               ; preds = %15, %47
  %50 = phi i64 [ %48, %47 ], [ %18, %15 ], !dbg !1605
  ret i64 %50, !dbg !1643
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_file_list(i8** noundef %0) local_unnamed_addr #15 !dbg !1644 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !1648, metadata !DIExpression()), !dbg !1649
  store i1 false, i1* @have_read_stdin, align 1, !dbg !1650
  %2 = icmp eq i8** %0, null, !dbg !1651
  %3 = select i1 %2, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @stdin_argv, i64 0, i64 0), i8** %0
  store i8** %3, i8*** @file_list, align 8, !dbg !1653, !tbaa !624
  ret void, !dbg !1654
}

; Function Attrs: nounwind uwtable
define dso_local %struct._IO_FILE* @next_file(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !246 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !284, metadata !DIExpression()), !dbg !1655
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1656
  br i1 %2, label %26, label %3, !dbg !1657

3:                                                ; preds = %1
  %4 = tail call i32* @__errno_location() #36, !dbg !1658
  %5 = load i32, i32* %4, align 4, !dbg !1658, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %5, metadata !286, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1660, metadata !DIExpression()), !dbg !1665
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1668
  %7 = load i32, i32* %6, align 8, !dbg !1668, !tbaa !947
  %8 = and i32 %7, 32, !dbg !1669
  %9 = icmp eq i32 %8, 0, !dbg !1669
  %10 = select i1 %9, i32 0, i32 %5, !dbg !1670
  call void @llvm.dbg.value(metadata i32 %10, metadata !286, metadata !DIExpression()), !dbg !1659
  %11 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1671, !tbaa !624
  call void @llvm.dbg.value(metadata i8* %11, metadata !1673, metadata !DIExpression()) #33, !dbg !1677
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.38, i64 0, i64 0), metadata !1676, metadata !DIExpression()) #33, !dbg !1677
  %12 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %11, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.38, i64 0, i64 0)) #34, !dbg !1679
  %13 = icmp eq i32 %12, 0, !dbg !1680
  br i1 %13, label %14, label %15, !dbg !1681

14:                                               ; preds = %3
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1682
  br label %20, !dbg !1682

15:                                               ; preds = %3
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !1683
  %17 = icmp eq i32 %16, 0, !dbg !1685
  br i1 %17, label %20, label %18, !dbg !1686

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4, !dbg !1687, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %19, metadata !286, metadata !DIExpression()), !dbg !1659
  br label %20, !dbg !1688

20:                                               ; preds = %15, %18, %14
  %21 = phi i32 [ %10, %14 ], [ %19, %18 ], [ %10, %15 ], !dbg !1659
  call void @llvm.dbg.value(metadata i32 %21, metadata !286, metadata !DIExpression()), !dbg !1659
  %22 = icmp eq i32 %21, 0, !dbg !1689
  br i1 %22, label %26, label %23, !dbg !1691

23:                                               ; preds = %20
  %24 = load i8*, i8** @next_file.prev_file, align 8, !dbg !1692, !tbaa !624
  %25 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %24) #33, !dbg !1692
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %21, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.41, i64 0, i64 0), i8* noundef %25) #33, !dbg !1692
  store i32 1, i32* @exit_status, align 4, !dbg !1694, !tbaa !720
  br label %26, !dbg !1695

26:                                               ; preds = %20, %23, %1
  %27 = load i8**, i8*** @file_list, align 8, !dbg !1696, !tbaa !624
  %28 = getelementptr inbounds i8*, i8** %27, i64 1, !dbg !1696
  store i8** %28, i8*** @file_list, align 8, !dbg !1696, !tbaa !624
  %29 = load i8*, i8** %27, align 8, !dbg !1697, !tbaa !624
  call void @llvm.dbg.value(metadata i8* %29, metadata !285, metadata !DIExpression()), !dbg !1655
  %30 = icmp eq i8* %29, null, !dbg !1698
  br i1 %30, label %51, label %31, !dbg !1699

31:                                               ; preds = %26, %43
  %32 = phi i8* [ %49, %43 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %32, metadata !1673, metadata !DIExpression()) #33, !dbg !1700
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.38, i64 0, i64 0), metadata !1676, metadata !DIExpression()) #33, !dbg !1700
  %33 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %32, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.38, i64 0, i64 0)) #34, !dbg !1704
  %34 = icmp eq i32 %33, 0, !dbg !1705
  br i1 %34, label %35, label %37, !dbg !1706

35:                                               ; preds = %31
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1707
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1709, !tbaa !624
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %36, metadata !284, metadata !DIExpression()), !dbg !1655
  br label %39, !dbg !1710

37:                                               ; preds = %31
  %38 = tail call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef nonnull %32, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.42, i64 0, i64 0)) #33, !dbg !1711
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %38, metadata !284, metadata !DIExpression()), !dbg !1655
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi %struct._IO_FILE* [ %36, %35 ], [ %38, %37 ], !dbg !1712
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %40, metadata !284, metadata !DIExpression()), !dbg !1655
  %41 = icmp eq %struct._IO_FILE* %40, null, !dbg !1713
  br i1 %41, label %43, label %42, !dbg !1715

42:                                               ; preds = %39
  store i8* %32, i8** @next_file.prev_file, align 8, !dbg !1716, !tbaa !624
  tail call void @fadvise(%struct._IO_FILE* noundef nonnull %40, i32 noundef 2) #33, !dbg !1718
  br label %51, !dbg !1719

43:                                               ; preds = %39
  %44 = tail call i32* @__errno_location() #36, !dbg !1720
  %45 = load i32, i32* %44, align 4, !dbg !1720, !tbaa !720
  %46 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef nonnull %32) #33, !dbg !1720
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %45, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.41, i64 0, i64 0), i8* noundef %46) #33, !dbg !1720
  store i32 1, i32* @exit_status, align 4, !dbg !1721, !tbaa !720
  %47 = load i8**, i8*** @file_list, align 8, !dbg !1696, !tbaa !624
  %48 = getelementptr inbounds i8*, i8** %47, i64 1, !dbg !1696
  store i8** %48, i8*** @file_list, align 8, !dbg !1696, !tbaa !624
  %49 = load i8*, i8** %47, align 8, !dbg !1697, !tbaa !624
  call void @llvm.dbg.value(metadata i8* %49, metadata !285, metadata !DIExpression()), !dbg !1655
  %50 = icmp eq i8* %49, null, !dbg !1698
  br i1 %50, label %51, label %31, !dbg !1699, !llvm.loop !1722

51:                                               ; preds = %43, %26, %42
  %52 = phi %struct._IO_FILE* [ %40, %42 ], [ null, %26 ], [ null, %43 ], !dbg !1655
  ret %struct._IO_FILE* %52, !dbg !1724
}

; Function Attrs: nounwind uwtable
define dso_local void @cleanup_file_list_stdin() local_unnamed_addr #12 !dbg !1725 {
  %1 = load i1, i1* @have_read_stdin, align 1, !dbg !1726
  br i1 %1, label %2, label %9, !dbg !1728

2:                                                ; preds = %0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1729, !tbaa !624
  %4 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %3) #33, !dbg !1730
  %5 = icmp eq i32 %4, 0, !dbg !1731
  br i1 %5, label %9, label %6, !dbg !1732

6:                                                ; preds = %2
  %7 = tail call i32* @__errno_location() #36, !dbg !1733
  %8 = load i32, i32* %7, align 4, !dbg !1733, !tbaa !720
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.38, i64 0, i64 0)) #33, !dbg !1733
  unreachable, !dbg !1733

9:                                                ; preds = %2, %0
  ret void, !dbg !1734
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_tab_list_info(i8* noundef %0) local_unnamed_addr #12 !dbg !1735 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1737, metadata !DIExpression()), !dbg !1738
  %2 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9.47, i64 0, i64 0), i32 noundef 5) #33, !dbg !1739
  call void @llvm.dbg.value(metadata i8* %0, metadata !318, metadata !DIExpression()) #33, !dbg !1740
  call void @llvm.dbg.value(metadata i8* %2, metadata !319, metadata !DIExpression()) #33, !dbg !1740
  %3 = load i32, i32* @oputs_.help_no_sgr.48, align 4, !dbg !1742, !tbaa !720
  %4 = icmp eq i32 %3, -1, !dbg !1743
  br i1 %4, label %5, label %17, !dbg !1744

5:                                                ; preds = %1
  %6 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17.49, i64 0, i64 0)) #33, !dbg !1745
  call void @llvm.dbg.value(metadata i8* %6, metadata !320, metadata !DIExpression()) #33, !dbg !1746
  %7 = icmp eq i8* %6, null, !dbg !1747
  br i1 %7, label %15, label %8, !dbg !1748

8:                                                ; preds = %5
  %9 = load i8, i8* %6, align 1, !dbg !1749, !tbaa !729
  %10 = icmp eq i8 %9, 0, !dbg !1749
  br i1 %10, label %15, label %11, !dbg !1750

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8* %6, metadata !1673, metadata !DIExpression()) #33, !dbg !1751
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18.50, i64 0, i64 0), metadata !1676, metadata !DIExpression()) #33, !dbg !1751
  %12 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18.50, i64 0, i64 0)) #34, !dbg !1753
  %13 = icmp eq i32 %12, 0, !dbg !1754
  %14 = zext i1 %13 to i32, !dbg !1750
  br label %15, !dbg !1750

15:                                               ; preds = %11, %8, %5
  %16 = phi i32 [ 1, %8 ], [ 1, %5 ], [ %14, %11 ]
  store i32 %16, i32* @oputs_.help_no_sgr.48, align 4, !dbg !1755, !tbaa !720
  br label %17, !dbg !1756

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ %3, %1 ], !dbg !1757
  %19 = icmp eq i32 %18, 0, !dbg !1757
  br i1 %19, label %23, label %20, !dbg !1759

20:                                               ; preds = %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1760, !tbaa !624
  %22 = tail call i32 @fputs_unlocked(i8* noundef %2, %struct._IO_FILE* noundef %21) #33, !dbg !1760
  br label %156, !dbg !1762

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 1, metadata !323, metadata !DIExpression()) #33, !dbg !1740
  %24 = tail call i64 @strspn(i8* noundef %2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19.51, i64 0, i64 0)) #34, !dbg !1763
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !1764
  call void @llvm.dbg.value(metadata i8* %25, metadata !324, metadata !DIExpression()) #33, !dbg !1740
  %26 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %2, i32 noundef 45) #34, !dbg !1765
  call void @llvm.dbg.value(metadata i8* %26, metadata !325, metadata !DIExpression()) #33, !dbg !1740
  %27 = icmp eq i8* %26, null, !dbg !1766
  br i1 %27, label %56, label %28, !dbg !1767

28:                                               ; preds = %23
  %29 = icmp eq i8* %26, %25, !dbg !1768
  br i1 %29, label %56, label %30, !dbg !1769

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8* %25, metadata !326, metadata !DIExpression()) #33, !dbg !1770
  call void @llvm.dbg.value(metadata i64 0, metadata !330, metadata !DIExpression()) #33, !dbg !1770
  %31 = icmp ult i8* %25, %26, !dbg !1771
  br i1 %31, label %32, label %52, !dbg !1772

32:                                               ; preds = %30
  %33 = tail call i16** @__ctype_b_loc() #36, !dbg !1740
  %34 = load i16*, i16** %33, align 8, !tbaa !624
  br label %35, !dbg !1772

35:                                               ; preds = %35, %32
  %36 = phi i8* [ %25, %32 ], [ %38, %35 ]
  %37 = phi i64 [ 0, %32 ], [ %46, %35 ]
  call void @llvm.dbg.value(metadata i8* %36, metadata !326, metadata !DIExpression()) #33, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %37, metadata !330, metadata !DIExpression()) #33, !dbg !1770
  %38 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1773
  call void @llvm.dbg.value(metadata i8* %38, metadata !326, metadata !DIExpression()) #33, !dbg !1770
  %39 = load i8, i8* %36, align 1, !dbg !1773, !tbaa !729
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, i16* %34, i64 %40, !dbg !1773
  %42 = load i16, i16* %41, align 2, !dbg !1773, !tbaa !754
  %43 = lshr i16 %42, 13, !dbg !1774
  %44 = and i16 %43, 1, !dbg !1774
  %45 = zext i16 %44 to i64
  %46 = add nuw nsw i64 %37, %45, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %46, metadata !330, metadata !DIExpression()) #33, !dbg !1770
  %47 = icmp ult i8* %38, %26, !dbg !1771
  %48 = icmp ult i64 %46, 2, !dbg !1776
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1776
  br i1 %49, label %35, label %50, !dbg !1772, !llvm.loop !1777

50:                                               ; preds = %35
  %51 = icmp eq i64 %46, 2, !dbg !1778
  br label %52, !dbg !1778

52:                                               ; preds = %50, %30
  %53 = phi i1 [ false, %30 ], [ %51, %50 ]
  %54 = select i1 %53, i8* %25, i8* %26, !dbg !1780
  %55 = xor i1 %53, true, !dbg !1740
  call void @llvm.dbg.value(metadata i8 undef, metadata !323, metadata !DIExpression()) #33, !dbg !1740
  call void @llvm.dbg.value(metadata i8* %54, metadata !325, metadata !DIExpression()) #33, !dbg !1740
  br label %56, !dbg !1781

56:                                               ; preds = %52, %28, %23
  %57 = phi i8* [ %54, %52 ], [ %25, %28 ], [ %25, %23 ], !dbg !1740
  %58 = phi i1 [ %55, %52 ], [ true, %28 ], [ false, %23 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !323, metadata !DIExpression()) #33, !dbg !1740
  call void @llvm.dbg.value(metadata i8* %57, metadata !325, metadata !DIExpression()) #33, !dbg !1740
  %59 = tail call i64 @strcspn(i8* noundef %57, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20.52, i64 0, i64 0)) #34, !dbg !1782
  call void @llvm.dbg.value(metadata i64 %59, metadata !331, metadata !DIExpression()) #33, !dbg !1740
  %60 = getelementptr inbounds i8, i8* %57, i64 %59, !dbg !1783
  call void @llvm.dbg.value(metadata i8* %60, metadata !332, metadata !DIExpression()) #33, !dbg !1740
  br label %61, !dbg !1784

61:                                               ; preds = %92, %56
  %62 = phi i8* [ %60, %56 ], [ %93, %92 ], !dbg !1740
  %63 = phi i1 [ %58, %56 ], [ %71, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !323, metadata !DIExpression()) #33, !dbg !1740
  call void @llvm.dbg.value(metadata i8* %62, metadata !332, metadata !DIExpression()) #33, !dbg !1740
  %64 = load i8, i8* %62, align 1, !dbg !1785, !tbaa !729
  switch i8 %64, label %70 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %65
  ], !dbg !1786

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1787
  %67 = load i8, i8* %66, align 1, !dbg !1790, !tbaa !729
  %68 = icmp ne i8 %67, 45, !dbg !1791
  %69 = select i1 %68, i1 %63, i1 false, !dbg !1792
  br label %70, !dbg !1792

70:                                               ; preds = %65, %61
  %71 = phi i1 [ %63, %61 ], [ %69, %65 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !323, metadata !DIExpression()) #33, !dbg !1740
  %72 = tail call i16** @__ctype_b_loc() #36, !dbg !1793
  %73 = load i16*, i16** %72, align 8, !dbg !1793, !tbaa !624
  %74 = zext i8 %64 to i64
  %75 = getelementptr inbounds i16, i16* %73, i64 %74, !dbg !1793
  %76 = load i16, i16* %75, align 2, !dbg !1793, !tbaa !754
  %77 = and i16 %76, 8192, !dbg !1793
  %78 = icmp eq i16 %77, 0, !dbg !1793
  br i1 %78, label %92, label %79, !dbg !1795

79:                                               ; preds = %70
  %80 = icmp eq i8 %64, 9, !dbg !1796
  br i1 %80, label %94, label %81, !dbg !1799

81:                                               ; preds = %79
  %82 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1800
  %83 = load i8, i8* %82, align 1, !dbg !1800, !tbaa !729
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds i16, i16* %73, i64 %84, !dbg !1800
  %86 = load i16, i16* %85, align 2, !dbg !1800, !tbaa !754
  %87 = and i16 %86, 8192, !dbg !1800
  %88 = icmp eq i16 %87, 0, !dbg !1800
  br i1 %88, label %89, label %94, !dbg !1801

89:                                               ; preds = %81
  %90 = icmp eq i8 %83, 45
  %91 = select i1 %71, i1 true, i1 %90, !dbg !1802
  br i1 %91, label %92, label %94, !dbg !1802

92:                                               ; preds = %89, %70
  %93 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1804
  call void @llvm.dbg.value(metadata i8* %93, metadata !332, metadata !DIExpression()) #33, !dbg !1740
  br label %61, !dbg !1784, !llvm.loop !1805

94:                                               ; preds = %89, %81, %79, %61, %61
  %95 = ptrtoint i8* %25 to i64, !dbg !1807
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1807, !tbaa !624
  %97 = tail call i64 @fwrite_unlocked(i8* noundef %2, i64 noundef 1, i64 noundef %24, %struct._IO_FILE* noundef %96) #33, !dbg !1807
  call void @llvm.dbg.value(metadata i8* %0, metadata !1673, metadata !DIExpression()) #33, !dbg !1808
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.53, i64 0, i64 0), metadata !1676, metadata !DIExpression()) #33, !dbg !1808
  %98 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21.53, i64 0, i64 0)) #34, !dbg !1810
  %99 = icmp eq i32 %98, 0, !dbg !1811
  br i1 %99, label %128, label %100, !dbg !1812

100:                                              ; preds = %94
  call void @llvm.dbg.value(metadata i8* %0, metadata !1673, metadata !DIExpression()) #33, !dbg !1813
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23.54, i64 0, i64 0), metadata !1676, metadata !DIExpression()) #33, !dbg !1813
  %101 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23.54, i64 0, i64 0)) #34, !dbg !1815
  %102 = icmp eq i32 %101, 0, !dbg !1816
  br i1 %102, label %128, label %103, !dbg !1817

103:                                              ; preds = %100
  call void @llvm.dbg.value(metadata i8* %0, metadata !1673, metadata !DIExpression()) #33, !dbg !1818
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), metadata !1676, metadata !DIExpression()) #33, !dbg !1818
  %104 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #34, !dbg !1820
  %105 = icmp eq i32 %104, 0, !dbg !1821
  br i1 %105, label %128, label %106, !dbg !1822

106:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i8* %0, metadata !1673, metadata !DIExpression()) #33, !dbg !1823
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), metadata !1676, metadata !DIExpression()) #33, !dbg !1823
  %107 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)) #34, !dbg !1825
  %108 = icmp eq i32 %107, 0, !dbg !1826
  br i1 %108, label %128, label %109, !dbg !1827

109:                                              ; preds = %106
  call void @llvm.dbg.value(metadata i8* %0, metadata !1673, metadata !DIExpression()) #33, !dbg !1828
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), metadata !1676, metadata !DIExpression()) #33, !dbg !1828
  %110 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0)) #34, !dbg !1830
  %111 = icmp eq i32 %110, 0, !dbg !1831
  br i1 %111, label %128, label %112, !dbg !1832

112:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i8* %0, metadata !1673, metadata !DIExpression()) #33, !dbg !1833
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), metadata !1676, metadata !DIExpression()) #33, !dbg !1833
  %113 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0)) #34, !dbg !1835
  %114 = icmp eq i32 %113, 0, !dbg !1836
  br i1 %114, label %128, label %115, !dbg !1837

115:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i8* %0, metadata !1673, metadata !DIExpression()) #33, !dbg !1838
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), metadata !1676, metadata !DIExpression()) #33, !dbg !1838
  %116 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)) #34, !dbg !1840
  %117 = icmp eq i32 %116, 0, !dbg !1841
  br i1 %117, label %128, label %118, !dbg !1842

118:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i8* %0, metadata !1673, metadata !DIExpression()) #33, !dbg !1843
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31.55, i64 0, i64 0), metadata !1676, metadata !DIExpression()) #33, !dbg !1843
  %119 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31.55, i64 0, i64 0)) #34, !dbg !1845
  %120 = icmp eq i32 %119, 0, !dbg !1846
  br i1 %120, label %128, label %121, !dbg !1847

121:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i8* %0, metadata !1673, metadata !DIExpression()) #33, !dbg !1848
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32.56, i64 0, i64 0), metadata !1676, metadata !DIExpression()) #33, !dbg !1848
  %122 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32.56, i64 0, i64 0)) #34, !dbg !1850
  %123 = icmp eq i32 %122, 0, !dbg !1851
  br i1 %123, label %128, label %124, !dbg !1852

124:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i8* %0, metadata !1673, metadata !DIExpression()) #33, !dbg !1853
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33.57, i64 0, i64 0), metadata !1676, metadata !DIExpression()) #33, !dbg !1853
  %125 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33.57, i64 0, i64 0)) #34, !dbg !1855
  %126 = icmp eq i32 %125, 0, !dbg !1856
  %127 = select i1 %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i8* %0, !dbg !1857
  br label %128, !dbg !1852

128:                                              ; preds = %124, %121, %118, %115, %112, %109, %106, %103, %100, %94
  %129 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22.58, i64 0, i64 0), %94 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), %100 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), %103 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %106 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %109 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %112 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %115 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %118 ], [ %127, %124 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), %121 ], !dbg !1812
  call void @llvm.dbg.value(metadata i8* %129, metadata !337, metadata !DIExpression()) #33, !dbg !1740
  %130 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %57, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34.59, i64 0, i64 0), i64 noundef 6) #34, !dbg !1858
  %131 = icmp eq i32 %130, 0, !dbg !1858
  br i1 %131, label %135, label %132, !dbg !1860

132:                                              ; preds = %128
  %133 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %57, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35.60, i64 0, i64 0), i64 noundef 9) #34, !dbg !1861
  %134 = icmp eq i32 %133, 0, !dbg !1861
  br i1 %134, label %135, label %138, !dbg !1862

135:                                              ; preds = %132, %128
  %136 = trunc i64 %59 to i32, !dbg !1863
  %137 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37.62, i64 0, i64 0), i8* noundef %129, i8* noundef %129, i32 noundef %136, i8* noundef %57) #33, !dbg !1863
  br label %141, !dbg !1865

138:                                              ; preds = %132
  %139 = trunc i64 %59 to i32, !dbg !1866
  %140 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.39.64, i64 0, i64 0), i8* noundef %129, i32 noundef %139, i8* noundef %57) #33, !dbg !1866
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1868, !tbaa !624
  %143 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40.65, i64 0, i64 0), %struct._IO_FILE* noundef %142) #33, !dbg !1868
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1869, !tbaa !624
  %145 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41.66, i64 0, i64 0), %struct._IO_FILE* noundef %144) #33, !dbg !1869
  %146 = ptrtoint i8* %62 to i64, !dbg !1870
  %147 = sub i64 %146, %95, !dbg !1870
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1870, !tbaa !624
  %149 = tail call i64 @fwrite_unlocked(i8* noundef %25, i64 noundef 1, i64 noundef %147, %struct._IO_FILE* noundef %148) #33, !dbg !1870
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1871, !tbaa !624
  %151 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42.67, i64 0, i64 0), %struct._IO_FILE* noundef %150) #33, !dbg !1871
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1872, !tbaa !624
  %153 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43.68, i64 0, i64 0), %struct._IO_FILE* noundef %152) #33, !dbg !1872
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1873, !tbaa !624
  %155 = tail call i32 @fputs_unlocked(i8* noundef nonnull %62, %struct._IO_FILE* noundef %154) #33, !dbg !1873
  br label %156

156:                                              ; preds = %20, %141
  %157 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([305 x i8], [305 x i8]* @.str.10.69, i64 0, i64 0), i32 noundef 5) #33, !dbg !1874
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1874, !tbaa !624
  %159 = tail call i32 @fputs_unlocked(i8* noundef %157, %struct._IO_FILE* noundef %158), !dbg !1874
  ret void, !dbg !1875
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #15 !dbg !1876 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1878, metadata !DIExpression()), !dbg !1879
  store i8* %0, i8** @file_name, align 8, !dbg !1880, !tbaa !624
  ret void, !dbg !1881
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !1882 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1886, metadata !DIExpression()), !dbg !1887
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1888, !tbaa !865
  ret void, !dbg !1889
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1890 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1895, !tbaa !624
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #33, !dbg !1896
  %3 = icmp eq i32 %2, 0, !dbg !1897
  br i1 %3, label %22, label %4, !dbg !1898

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1899, !tbaa !865, !range !1093
  %6 = icmp eq i8 %5, 0, !dbg !1899
  br i1 %6, label %11, label %7, !dbg !1900

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #36, !dbg !1901
  %9 = load i32, i32* %8, align 4, !dbg !1901, !tbaa !720
  %10 = icmp eq i32 %9, 32, !dbg !1902
  br i1 %10, label %22, label %11, !dbg !1903

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.76, i64 0, i64 0), i32 noundef 5) #33, !dbg !1904
  call void @llvm.dbg.value(metadata i8* %12, metadata !1892, metadata !DIExpression()), !dbg !1905
  %13 = load i8*, i8** @file_name, align 8, !dbg !1906, !tbaa !624
  %14 = icmp eq i8* %13, null, !dbg !1906
  %15 = tail call i32* @__errno_location() #36, !dbg !1908
  %16 = load i32, i32* %15, align 4, !dbg !1908, !tbaa !720
  br i1 %14, label %19, label %17, !dbg !1909

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #33, !dbg !1910
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.77, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #33, !dbg !1910
  br label %20, !dbg !1910

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.78, i64 0, i64 0), i8* noundef %12) #33, !dbg !1911
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1912, !tbaa !720
  tail call void @_exit(i32 noundef %21) #35, !dbg !1913
  unreachable, !dbg !1913

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1914, !tbaa !624
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #33, !dbg !1916
  %25 = icmp eq i32 %24, 0, !dbg !1917
  br i1 %25, label %28, label %26, !dbg !1918

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1919, !tbaa !720
  tail call void @_exit(i32 noundef %27) #35, !dbg !1920
  unreachable, !dbg !1920

28:                                               ; preds = %22
  ret void, !dbg !1921
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !1922 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1926, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i32 %1, metadata !1927, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8* %2, metadata !1928, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1929, metadata !DIExpression()), !dbg !1931
  tail call fastcc void @flush_stdout(), !dbg !1932
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1933, !tbaa !624
  %7 = icmp eq void ()* %6, null, !dbg !1933
  br i1 %7, label %9, label %8, !dbg !1935

8:                                                ; preds = %4
  tail call void %6() #33, !dbg !1936
  br label %13, !dbg !1936

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1937, !tbaa !624
  %11 = tail call i8* @getprogname() #34, !dbg !1937
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0), i8* noundef %11) #33, !dbg !1937
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1939
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1939
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1939
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1939, !tbaa.struct !1940
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1939
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1939
  ret void, !dbg !1941
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1942 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1944, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i32 1, metadata !1946, metadata !DIExpression()) #33, !dbg !1951
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #33, !dbg !1954
  %2 = icmp slt i32 %1, 0, !dbg !1955
  br i1 %2, label %6, label %3, !dbg !1956

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1957, !tbaa !624
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #33, !dbg !1957
  br label %6, !dbg !1957

6:                                                ; preds = %3, %0
  ret void, !dbg !1958
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1959 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1961, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 %1, metadata !1962, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %2, metadata !1963, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1964, metadata !DIExpression()), !dbg !1966
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1967, !tbaa !624
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1968
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1969, metadata !DIExpression()) #33, !dbg !2012
  call void @llvm.dbg.value(metadata i8* %2, metadata !2010, metadata !DIExpression()) #33, !dbg !2012
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2014
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !2014, !noalias !2015
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !2014
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #33, !dbg !2014
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !2014, !noalias !2015
  %11 = load i32, i32* @error_message_count, align 4, !dbg !2019, !tbaa !720
  %12 = add i32 %11, 1, !dbg !2019
  store i32 %12, i32* @error_message_count, align 4, !dbg !2019, !tbaa !720
  %13 = icmp eq i32 %1, 0, !dbg !2020
  br i1 %13, label %24, label %14, !dbg !2022

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2023, metadata !DIExpression()) #33, !dbg !2031
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !2033
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !2033
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !2027, metadata !DIExpression()) #33, !dbg !2034
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #33, !dbg !2035
  call void @llvm.dbg.value(metadata i8* %16, metadata !2026, metadata !DIExpression()) #33, !dbg !2031
  %17 = icmp eq i8* %16, null, !dbg !2036
  br i1 %17, label %18, label %20, !dbg !2038

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.81, i64 0, i64 0), i32 noundef 5) #33, !dbg !2039
  call void @llvm.dbg.value(metadata i8* %19, metadata !2026, metadata !DIExpression()) #33, !dbg !2031
  br label %20, !dbg !2040

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !2031
  call void @llvm.dbg.value(metadata i8* %21, metadata !2026, metadata !DIExpression()) #33, !dbg !2031
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2041, !tbaa !624
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.82, i64 0, i64 0), i8* noundef %21) #33, !dbg !2041
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !2042
  br label %24, !dbg !2043

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2044, !tbaa !624
  call void @llvm.dbg.value(metadata i32 10, metadata !2045, metadata !DIExpression()) #33, !dbg !2051
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !2050, metadata !DIExpression()) #33, !dbg !2051
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !2053
  %27 = load i8*, i8** %26, align 8, !dbg !2053, !tbaa !1128
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !2053
  %29 = load i8*, i8** %28, align 8, !dbg !2053, !tbaa !1129
  %30 = icmp ult i8* %27, %29, !dbg !2053
  br i1 %30, label %33, label %31, !dbg !2053, !prof !1130

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #33, !dbg !2053
  br label %35, !dbg !2053

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !2053
  store i8* %34, i8** %26, align 8, !dbg !2053, !tbaa !1128
  store i8 10, i8* %27, align 1, !dbg !2053, !tbaa !729
  br label %35, !dbg !2053

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2054, !tbaa !624
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #33, !dbg !2054
  %38 = icmp eq i32 %0, 0, !dbg !2055
  br i1 %38, label %40, label %39, !dbg !2057

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #35, !dbg !2058
  unreachable, !dbg !2058

40:                                               ; preds = %35
  ret void, !dbg !2059
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2060 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2064 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !2068 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2072, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 %1, metadata !2073, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* %2, metadata !2074, metadata !DIExpression()), !dbg !2076
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !2077
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #33, !dbg !2077
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2075, metadata !DIExpression()), !dbg !2078
  call void @llvm.va_start(i8* nonnull %6), !dbg !2079
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2080
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2080, !tbaa.struct !1940
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #39, !dbg !2080
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2080
  call void @llvm.va_end(i8* nonnull %6), !dbg !2081
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #33, !dbg !2082
  ret void, !dbg !2082
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #18

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !363 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !381, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i32 %1, metadata !382, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8* %2, metadata !383, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i32 %3, metadata !384, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8* %4, metadata !385, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !386, metadata !DIExpression()), !dbg !2084
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !2085, !tbaa !720
  %9 = icmp eq i32 %8, 0, !dbg !2085
  br i1 %9, label %24, label %10, !dbg !2087

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !2088, !tbaa !720
  %12 = icmp eq i32 %11, %3, !dbg !2091
  br i1 %12, label %13, label %23, !dbg !2092

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !2093, !tbaa !624
  %15 = icmp eq i8* %14, %2, !dbg !2094
  br i1 %15, label %39, label %16, !dbg !2095

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !2096
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !2097
  br i1 %19, label %20, label %23, !dbg !2097

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #34, !dbg !2098
  %22 = icmp eq i32 %21, 0, !dbg !2099
  br i1 %22, label %39, label %23, !dbg !2100

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !2101, !tbaa !624
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !2102, !tbaa !720
  br label %24, !dbg !2103

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2104
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !2105, !tbaa !624
  %26 = icmp eq void ()* %25, null, !dbg !2105
  br i1 %26, label %28, label %27, !dbg !2107

27:                                               ; preds = %24
  tail call void %25() #33, !dbg !2108
  br label %32, !dbg !2108

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2109, !tbaa !624
  %30 = tail call i8* @getprogname() #34, !dbg !2109
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.85, i64 0, i64 0), i8* noundef %30) #33, !dbg !2109
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2111, !tbaa !624
  %34 = icmp eq i8* %2, null, !dbg !2111
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.86, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.87, i64 0, i64 0), !dbg !2111
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #33, !dbg !2111
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2112
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #33, !dbg !2112
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2112
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !2112, !tbaa.struct !1940
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !2112
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #33, !dbg !2112
  br label %39, !dbg !2113

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !2113
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !2114 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2118, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i32 %1, metadata !2119, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8* %2, metadata !2120, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i32 %3, metadata !2121, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8* %4, metadata !2122, metadata !DIExpression()), !dbg !2124
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2125
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2125
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !2123, metadata !DIExpression()), !dbg !2126
  call void @llvm.va_start(i8* nonnull %8), !dbg !2127
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2128
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !2128
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !2128, !tbaa.struct !1940
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #39, !dbg !2128
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !2128
  call void @llvm.va_end(i8* nonnull %8), !dbg !2129
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2130
  ret void, !dbg !2130
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !2131 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2137, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i64 %1, metadata !2138, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i64 %2, metadata !2139, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i32 %3, metadata !2140, metadata !DIExpression()), !dbg !2141
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #33, !dbg !2142
  ret void, !dbg !2143
}

; Function Attrs: nounwind
declare !dbg !2144 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !2147 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2185, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i32 %1, metadata !2186, metadata !DIExpression()), !dbg !2187
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2188
  br i1 %3, label %7, label %4, !dbg !2190

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %5, metadata !2137, metadata !DIExpression()) #33, !dbg !2192
  call void @llvm.dbg.value(metadata i64 0, metadata !2138, metadata !DIExpression()) #33, !dbg !2192
  call void @llvm.dbg.value(metadata i64 0, metadata !2139, metadata !DIExpression()) #33, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %1, metadata !2140, metadata !DIExpression()) #33, !dbg !2192
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #33, !dbg !2194
  br label %7, !dbg !2195

7:                                                ; preds = %4, %2
  ret void, !dbg !2196
}

; Function Attrs: nofree nounwind
declare !dbg !2197 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !2200 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2238, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i32 0, metadata !2239, metadata !DIExpression()), !dbg !2242
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !2243
  call void @llvm.dbg.value(metadata i32 %2, metadata !2240, metadata !DIExpression()), !dbg !2242
  %3 = icmp slt i32 %2, 0, !dbg !2244
  br i1 %3, label %4, label %6, !dbg !2246

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2247
  br label %24, !dbg !2248

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !2249
  %8 = icmp eq i32 %7, 0, !dbg !2249
  br i1 %8, label %13, label %9, !dbg !2251

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !2252
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #33, !dbg !2253
  %12 = icmp eq i64 %11, -1, !dbg !2254
  br i1 %12, label %16, label %13, !dbg !2255

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !2256
  %15 = icmp eq i32 %14, 0, !dbg !2256
  br i1 %15, label %16, label %18, !dbg !2257

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !2239, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i32 0, metadata !2241, metadata !DIExpression()), !dbg !2242
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2258
  call void @llvm.dbg.value(metadata i32 %21, metadata !2241, metadata !DIExpression()), !dbg !2242
  br label %24, !dbg !2259

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #36, !dbg !2260
  %20 = load i32, i32* %19, align 4, !dbg !2260, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %20, metadata !2239, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i32 0, metadata !2241, metadata !DIExpression()), !dbg !2242
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2258
  call void @llvm.dbg.value(metadata i32 %21, metadata !2241, metadata !DIExpression()), !dbg !2242
  %22 = icmp eq i32 %20, 0, !dbg !2261
  br i1 %22, label %24, label %23, !dbg !2259

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !2263, !tbaa !720
  call void @llvm.dbg.value(metadata i32 -1, metadata !2241, metadata !DIExpression()), !dbg !2242
  br label %24, !dbg !2265

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2242
  ret i32 %25, !dbg !2266
}

; Function Attrs: nofree nounwind
declare !dbg !2267 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2268 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !2272 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2310, metadata !DIExpression()), !dbg !2311
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !2312
  br i1 %2, label %6, label %3, !dbg !2314

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !2315
  %5 = icmp eq i32 %4, 0, !dbg !2315
  br i1 %5, label %6, label %8, !dbg !2316

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !2317
  br label %17, !dbg !2318

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2319, metadata !DIExpression()) #33, !dbg !2324
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2326
  %10 = load i32, i32* %9, align 8, !dbg !2326, !tbaa !947
  %11 = and i32 %10, 256, !dbg !2328
  %12 = icmp eq i32 %11, 0, !dbg !2328
  br i1 %12, label %15, label %13, !dbg !2329

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #33, !dbg !2330
  br label %15, !dbg !2330

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !2331
  br label %17, !dbg !2332

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !2311
  ret i32 %18, !dbg !2333
}

; Function Attrs: nofree nounwind
declare !dbg !2334 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !2335 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2373, metadata !DIExpression()), !dbg !2374
  tail call void @__fpurge(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !2375
  ret i32 0, !dbg !2376
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !2377 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2415, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i64 %1, metadata !2416, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i32 %2, metadata !2417, metadata !DIExpression()), !dbg !2421
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2422
  %5 = load i8*, i8** %4, align 8, !dbg !2422, !tbaa !2423
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2424
  %7 = load i8*, i8** %6, align 8, !dbg !2424, !tbaa !2425
  %8 = icmp eq i8* %5, %7, !dbg !2426
  br i1 %8, label %9, label %28, !dbg !2427

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2428
  %11 = load i8*, i8** %10, align 8, !dbg !2428, !tbaa !1128
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !2429
  %13 = load i8*, i8** %12, align 8, !dbg !2429, !tbaa !2430
  %14 = icmp eq i8* %11, %13, !dbg !2431
  br i1 %14, label %15, label %28, !dbg !2432

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !2433
  %17 = load i8*, i8** %16, align 8, !dbg !2433, !tbaa !2434
  %18 = icmp eq i8* %17, null, !dbg !2435
  br i1 %18, label %19, label %28, !dbg !2436

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !2437
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #33, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %21, metadata !2418, metadata !DIExpression()), !dbg !2439
  %22 = icmp eq i64 %21, -1, !dbg !2440
  br i1 %22, label %30, label %23, !dbg !2442

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2443
  %25 = load i32, i32* %24, align 8, !dbg !2444, !tbaa !947
  %26 = and i32 %25, -17, !dbg !2444
  store i32 %26, i32* %24, align 8, !dbg !2444, !tbaa !947
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !2445
  store i64 %21, i64* %27, align 8, !dbg !2446, !tbaa !2447
  br label %30, !dbg !2448

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2449
  br label %30, !dbg !2450

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !2421
  ret i32 %31, !dbg !2451
}

; Function Attrs: nofree nounwind
declare !dbg !2452 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #19 !dbg !2455 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !2458, !tbaa !624
  ret i8* %1, !dbg !2459
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #20 !dbg !2460 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2462, metadata !DIExpression()), !dbg !2465
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #34, !dbg !2466
  call void @llvm.dbg.value(metadata i8* %2, metadata !2463, metadata !DIExpression()), !dbg !2465
  %3 = icmp eq i8* %2, null, !dbg !2467
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2467
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !2467
  call void @llvm.dbg.value(metadata i8* %5, metadata !2464, metadata !DIExpression()), !dbg !2465
  %6 = ptrtoint i8* %5 to i64, !dbg !2468
  %7 = ptrtoint i8* %0 to i64, !dbg !2468
  %8 = sub i64 %6, %7, !dbg !2468
  %9 = icmp sgt i64 %8, 6, !dbg !2470
  br i1 %9, label %10, label %19, !dbg !2471

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !2472
  call void @llvm.dbg.value(metadata i8* %11, metadata !2473, metadata !DIExpression()) #33, !dbg !2480
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i64 0, i64 0), metadata !2478, metadata !DIExpression()) #33, !dbg !2480
  call void @llvm.dbg.value(metadata i64 7, metadata !2479, metadata !DIExpression()) #33, !dbg !2480
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i64 0, i64 0), i64 7) #33, !dbg !2482
  %13 = icmp eq i32 %12, 0, !dbg !2483
  br i1 %13, label %14, label %19, !dbg !2484

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !2462, metadata !DIExpression()), !dbg !2465
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.107, i64 0, i64 0), i64 noundef 3) #34, !dbg !2485
  %16 = icmp eq i32 %15, 0, !dbg !2488
  %17 = select i1 %16, i64 3, i64 0, !dbg !2489
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !2489
  br label %19, !dbg !2489

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2465
  call void @llvm.dbg.value(metadata i8* %21, metadata !2464, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8* %20, metadata !2462, metadata !DIExpression()), !dbg !2465
  store i8* %20, i8** @program_name, align 8, !dbg !2490, !tbaa !624
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !2491, !tbaa !624
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !2492, !tbaa !624
  ret void, !dbg !2493
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !402 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !409, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i8* %1, metadata !410, metadata !DIExpression()), !dbg !2494
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #33, !dbg !2495
  call void @llvm.dbg.value(metadata i8* %5, metadata !411, metadata !DIExpression()), !dbg !2494
  %6 = icmp eq i8* %5, %0, !dbg !2496
  br i1 %6, label %7, label %17, !dbg !2498

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !2499
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #33, !dbg !2499
  %10 = bitcast i64* %4 to i8*, !dbg !2500
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #33, !dbg !2500
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !413, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !2502, metadata !DIExpression()) #33, !dbg !2509
  call void @llvm.dbg.value(metadata i8* %10, metadata !2511, metadata !DIExpression()) #33, !dbg !2518
  call void @llvm.dbg.value(metadata i32 0, metadata !2516, metadata !DIExpression()) #33, !dbg !2518
  call void @llvm.dbg.value(metadata i64 8, metadata !2517, metadata !DIExpression()) #33, !dbg !2518
  store i64 0, i64* %4, align 8, !dbg !2520
  call void @llvm.dbg.value(metadata i32* %3, metadata !412, metadata !DIExpression(DW_OP_deref)), !dbg !2494
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #33, !dbg !2521
  %12 = icmp eq i64 %11, 2, !dbg !2523
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !412, metadata !DIExpression()), !dbg !2494
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2524
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !2494
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #33, !dbg !2525
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #33, !dbg !2525
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !2494
  ret i8* %18, !dbg !2525
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !2526 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2531, metadata !DIExpression()), !dbg !2534
  %2 = tail call i32* @__errno_location() #36, !dbg !2535
  %3 = load i32, i32* %2, align 4, !dbg !2535, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %3, metadata !2532, metadata !DIExpression()), !dbg !2534
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2536
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2536
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2536
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #40, !dbg !2537
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2533, metadata !DIExpression()), !dbg !2534
  store i32 %3, i32* %2, align 4, !dbg !2538, !tbaa !720
  ret %struct.quoting_options* %8, !dbg !2539
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #19 !dbg !2540 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2546, metadata !DIExpression()), !dbg !2547
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2548
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2548
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2549
  %5 = load i32, i32* %4, align 8, !dbg !2549, !tbaa !2550
  ret i32 %5, !dbg !2552
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #15 !dbg !2553 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2557, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i32 %1, metadata !2558, metadata !DIExpression()), !dbg !2559
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2560
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2560
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2561
  store i32 %1, i32* %5, align 8, !dbg !2562, !tbaa !2550
  ret void, !dbg !2563
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !2564 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2568, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8 %1, metadata !2569, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 %2, metadata !2570, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8 %1, metadata !2571, metadata !DIExpression()), !dbg !2576
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2577
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2577
  %6 = lshr i8 %1, 5, !dbg !2578
  %7 = zext i8 %6 to i64, !dbg !2578
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2579
  call void @llvm.dbg.value(metadata i32* %8, metadata !2572, metadata !DIExpression()), !dbg !2576
  %9 = and i8 %1, 31, !dbg !2580
  %10 = zext i8 %9 to i32, !dbg !2580
  call void @llvm.dbg.value(metadata i32 %10, metadata !2574, metadata !DIExpression()), !dbg !2576
  %11 = load i32, i32* %8, align 4, !dbg !2581, !tbaa !720
  %12 = lshr i32 %11, %10, !dbg !2582
  %13 = and i32 %12, 1, !dbg !2583
  call void @llvm.dbg.value(metadata i32 %13, metadata !2575, metadata !DIExpression()), !dbg !2576
  %14 = and i32 %2, 1, !dbg !2584
  %15 = xor i32 %13, %14, !dbg !2585
  %16 = shl i32 %15, %10, !dbg !2586
  %17 = xor i32 %16, %11, !dbg !2587
  store i32 %17, i32* %8, align 4, !dbg !2587, !tbaa !720
  ret i32 %13, !dbg !2588
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2589 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2593, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i32 %1, metadata !2594, metadata !DIExpression()), !dbg !2596
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2597
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2599
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2593, metadata !DIExpression()), !dbg !2596
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2600
  %6 = load i32, i32* %5, align 4, !dbg !2600, !tbaa !2601
  call void @llvm.dbg.value(metadata i32 %6, metadata !2595, metadata !DIExpression()), !dbg !2596
  store i32 %1, i32* %5, align 4, !dbg !2602, !tbaa !2601
  ret i32 %6, !dbg !2603
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2604 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2608, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8* %1, metadata !2609, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8* %2, metadata !2610, metadata !DIExpression()), !dbg !2611
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2612
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2614
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2608, metadata !DIExpression()), !dbg !2611
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2615
  store i32 10, i32* %6, align 8, !dbg !2616, !tbaa !2550
  %7 = icmp ne i8* %1, null, !dbg !2617
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2619
  br i1 %9, label %11, label %10, !dbg !2619

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !2620
  unreachable, !dbg !2620

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2621
  store i8* %1, i8** %12, align 8, !dbg !2622, !tbaa !2623
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2624
  store i8* %2, i8** %13, align 8, !dbg !2625, !tbaa !2626
  ret void, !dbg !2627
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2628 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2632, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %1, metadata !2633, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8* %2, metadata !2634, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %3, metadata !2635, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2636, metadata !DIExpression()), !dbg !2640
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2641
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2641
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2637, metadata !DIExpression()), !dbg !2640
  %8 = tail call i32* @__errno_location() #36, !dbg !2642
  %9 = load i32, i32* %8, align 4, !dbg !2642, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %9, metadata !2638, metadata !DIExpression()), !dbg !2640
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2643
  %11 = load i32, i32* %10, align 8, !dbg !2643, !tbaa !2550
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2644
  %13 = load i32, i32* %12, align 4, !dbg !2644, !tbaa !2601
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2645
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2646
  %16 = load i8*, i8** %15, align 8, !dbg !2646, !tbaa !2623
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2647
  %18 = load i8*, i8** %17, align 8, !dbg !2647, !tbaa !2626
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2648
  call void @llvm.dbg.value(metadata i64 %19, metadata !2639, metadata !DIExpression()), !dbg !2640
  store i32 %9, i32* %8, align 4, !dbg !2649, !tbaa !720
  ret i64 %19, !dbg !2650
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2651 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2657, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %1, metadata !2658, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8* %2, metadata !2659, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %3, metadata !2660, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32 %4, metadata !2661, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32 %5, metadata !2662, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32* %6, metadata !2663, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8* %7, metadata !2664, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8* %8, metadata !2665, metadata !DIExpression()), !dbg !2719
  %17 = tail call i64 @__ctype_get_mb_cur_max() #33, !dbg !2720
  %18 = icmp eq i64 %17, 1, !dbg !2721
  call void @llvm.dbg.value(metadata i1 %18, metadata !2666, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2719
  call void @llvm.dbg.value(metadata i64 0, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 0, metadata !2668, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8* null, metadata !2669, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 0, metadata !2670, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 0, metadata !2671, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32 %5, metadata !2672, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2719
  call void @llvm.dbg.value(metadata i8 0, metadata !2673, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 1, metadata !2674, metadata !DIExpression()), !dbg !2719
  %19 = and i32 %5, 2, !dbg !2722
  %20 = icmp ne i32 %19, 0, !dbg !2722
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
  br label %36, !dbg !2722

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2723
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2724
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2725
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2658, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2674, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2673, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2672, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %43, metadata !2670, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8* %42, metadata !2669, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %41, metadata !2668, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 0, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %40, metadata !2660, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8* %39, metadata !2665, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8* %38, metadata !2664, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32 %37, metadata !2661, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.label(metadata !2712), !dbg !2726
  call void @llvm.dbg.value(metadata i8 0, metadata !2675, metadata !DIExpression()), !dbg !2719
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
  ], !dbg !2727

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2672, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32 5, metadata !2661, metadata !DIExpression()), !dbg !2719
  br label %111, !dbg !2728

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2672, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32 5, metadata !2661, metadata !DIExpression()), !dbg !2719
  br i1 %45, label %111, label %51, !dbg !2728

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2729
  br i1 %52, label %111, label %53, !dbg !2733

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2729, !tbaa !729
  br label %111, !dbg !2729

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.120, i64 0, i64 0), metadata !473, metadata !DIExpression()) #33, !dbg !2734
  call void @llvm.dbg.value(metadata i32 %37, metadata !474, metadata !DIExpression()) #33, !dbg !2734
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.120, i64 0, i64 0), i32 noundef 5) #33, !dbg !2738
  call void @llvm.dbg.value(metadata i8* %55, metadata !475, metadata !DIExpression()) #33, !dbg !2734
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.120, i64 0, i64 0), !dbg !2739
  br i1 %56, label %57, label %66, !dbg !2741

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #33, !dbg !2742
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #33, !dbg !2743
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !477, metadata !DIExpression()) #33, !dbg !2744
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2745, metadata !DIExpression()) #33, !dbg !2751
  call void @llvm.dbg.value(metadata i8* %23, metadata !2753, metadata !DIExpression()) #33, !dbg !2758
  call void @llvm.dbg.value(metadata i32 0, metadata !2756, metadata !DIExpression()) #33, !dbg !2758
  call void @llvm.dbg.value(metadata i64 8, metadata !2757, metadata !DIExpression()) #33, !dbg !2758
  store i64 0, i64* %13, align 8, !dbg !2760
  call void @llvm.dbg.value(metadata i32* %12, metadata !476, metadata !DIExpression(DW_OP_deref)) #33, !dbg !2734
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #33, !dbg !2761
  %59 = icmp eq i64 %58, 3, !dbg !2763
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !476, metadata !DIExpression()) #33, !dbg !2734
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2764
  %63 = icmp eq i32 %37, 9, !dbg !2764
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.122, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.123, i64 0, i64 0), !dbg !2764
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2764
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #33, !dbg !2765
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #33, !dbg !2765
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2734
  call void @llvm.dbg.value(metadata i8* %67, metadata !2664, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.123, i64 0, i64 0), metadata !473, metadata !DIExpression()) #33, !dbg !2766
  call void @llvm.dbg.value(metadata i32 %37, metadata !474, metadata !DIExpression()) #33, !dbg !2766
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.123, i64 0, i64 0), i32 noundef 5) #33, !dbg !2768
  call void @llvm.dbg.value(metadata i8* %68, metadata !475, metadata !DIExpression()) #33, !dbg !2766
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.123, i64 0, i64 0), !dbg !2769
  br i1 %69, label %70, label %79, !dbg !2770

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #33, !dbg !2771
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #33, !dbg !2772
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !477, metadata !DIExpression()) #33, !dbg !2773
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2745, metadata !DIExpression()) #33, !dbg !2774
  call void @llvm.dbg.value(metadata i8* %26, metadata !2753, metadata !DIExpression()) #33, !dbg !2776
  call void @llvm.dbg.value(metadata i32 0, metadata !2756, metadata !DIExpression()) #33, !dbg !2776
  call void @llvm.dbg.value(metadata i64 8, metadata !2757, metadata !DIExpression()) #33, !dbg !2776
  store i64 0, i64* %11, align 8, !dbg !2778
  call void @llvm.dbg.value(metadata i32* %10, metadata !476, metadata !DIExpression(DW_OP_deref)) #33, !dbg !2766
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #33, !dbg !2779
  %72 = icmp eq i64 %71, 3, !dbg !2780
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !476, metadata !DIExpression()) #33, !dbg !2766
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2781
  %76 = icmp eq i32 %37, 9, !dbg !2781
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.122, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.123, i64 0, i64 0), !dbg !2781
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2781
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #33, !dbg !2782
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #33, !dbg !2782
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2665, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8* %80, metadata !2664, metadata !DIExpression()), !dbg !2719
  br i1 %45, label %97, label %82, !dbg !2783

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2676, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i64 0, metadata !2667, metadata !DIExpression()), !dbg !2719
  %83 = load i8, i8* %80, align 1, !dbg !2785, !tbaa !729
  %84 = icmp eq i8 %83, 0, !dbg !2787
  br i1 %84, label %97, label %85, !dbg !2787

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2676, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i64 %88, metadata !2667, metadata !DIExpression()), !dbg !2719
  %89 = icmp ult i64 %88, %48, !dbg !2788
  br i1 %89, label %90, label %92, !dbg !2791

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2788
  store i8 %86, i8* %91, align 1, !dbg !2788, !tbaa !729
  br label %92, !dbg !2788

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2791
  call void @llvm.dbg.value(metadata i64 %93, metadata !2667, metadata !DIExpression()), !dbg !2719
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2792
  call void @llvm.dbg.value(metadata i8* %94, metadata !2676, metadata !DIExpression()), !dbg !2784
  %95 = load i8, i8* %94, align 1, !dbg !2785, !tbaa !729
  %96 = icmp eq i8 %95, 0, !dbg !2787
  br i1 %96, label %97, label %85, !dbg !2787, !llvm.loop !2793

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2795
  call void @llvm.dbg.value(metadata i64 %98, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 1, metadata !2671, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8* %81, metadata !2669, metadata !DIExpression()), !dbg !2719
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #34, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %99, metadata !2670, metadata !DIExpression()), !dbg !2719
  br label %111, !dbg !2797

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2671, metadata !DIExpression()), !dbg !2719
  br label %102, !dbg !2798

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2672, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2719
  br i1 %45, label %102, label %105, !dbg !2799

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2672, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32 2, metadata !2661, metadata !DIExpression()), !dbg !2719
  br label %111, !dbg !2800

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2672, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32 2, metadata !2661, metadata !DIExpression()), !dbg !2719
  br i1 %45, label %111, label %105, !dbg !2800

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2801
  br i1 %107, label %111, label %108, !dbg !2805

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2801, !tbaa !729
  br label %111, !dbg !2801

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2672, metadata !DIExpression()), !dbg !2719
  br label %111, !dbg !2806

110:                                              ; preds = %36
  call void @abort() #35, !dbg !2807
  unreachable, !dbg !2807

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2795
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.122, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.122, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.122, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.123, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.123, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.123, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.122, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.123, i64 0, i64 0), %102 ], !dbg !2719
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2719
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2672, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2671, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %117, metadata !2670, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8* %116, metadata !2669, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %115, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8* %114, metadata !2665, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8* %113, metadata !2664, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32 %112, metadata !2661, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 0, metadata !2681, metadata !DIExpression()), !dbg !2808
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
  br label %132, !dbg !2809

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2795
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2723
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2808
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2658, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %139, metadata !2681, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8 poison, metadata !2675, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2674, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2673, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %135, metadata !2668, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %134, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %133, metadata !2660, metadata !DIExpression()), !dbg !2719
  %141 = icmp eq i64 %133, -1, !dbg !2810
  br i1 %141, label %142, label %146, !dbg !2811

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2812
  %144 = load i8, i8* %143, align 1, !dbg !2812, !tbaa !729
  %145 = icmp eq i8 %144, 0, !dbg !2813
  br i1 %145, label %596, label %148, !dbg !2814

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2815
  br i1 %147, label %596, label %148, !dbg !2814

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2683, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 0, metadata !2686, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 0, metadata !2687, metadata !DIExpression()), !dbg !2816
  br i1 %123, label %149, label %163, !dbg !2817

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2819
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2820
  br i1 %151, label %152, label %154, !dbg !2820

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !2821
  call void @llvm.dbg.value(metadata i64 %153, metadata !2660, metadata !DIExpression()), !dbg !2719
  br label %154, !dbg !2822

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2822
  call void @llvm.dbg.value(metadata i64 %155, metadata !2660, metadata !DIExpression()), !dbg !2719
  %156 = icmp ugt i64 %150, %155, !dbg !2823
  br i1 %156, label %163, label %157, !dbg !2824

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2825
  call void @llvm.dbg.value(metadata i8* %158, metadata !2826, metadata !DIExpression()) #33, !dbg !2831
  call void @llvm.dbg.value(metadata i8* %116, metadata !2829, metadata !DIExpression()) #33, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %117, metadata !2830, metadata !DIExpression()) #33, !dbg !2831
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #33, !dbg !2833
  %160 = icmp ne i32 %159, 0, !dbg !2834
  %161 = or i1 %160, %125, !dbg !2835
  %162 = xor i1 %160, true, !dbg !2835
  br i1 %161, label %163, label %647, !dbg !2835

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %164, metadata !2660, metadata !DIExpression()), !dbg !2719
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2836
  %167 = load i8, i8* %166, align 1, !dbg !2836, !tbaa !729
  call void @llvm.dbg.value(metadata i8 %167, metadata !2688, metadata !DIExpression()), !dbg !2816
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
  ], !dbg !2837

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2838

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2839

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2686, metadata !DIExpression()), !dbg !2816
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2843
  br i1 %171, label %188, label %172, !dbg !2843

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2845
  br i1 %173, label %174, label %176, !dbg !2849

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2845
  store i8 39, i8* %175, align 1, !dbg !2845, !tbaa !729
  br label %176, !dbg !2845

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %177, metadata !2667, metadata !DIExpression()), !dbg !2719
  %178 = icmp ult i64 %177, %140, !dbg !2850
  br i1 %178, label %179, label %181, !dbg !2853

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2850
  store i8 36, i8* %180, align 1, !dbg !2850, !tbaa !729
  br label %181, !dbg !2850

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %182, metadata !2667, metadata !DIExpression()), !dbg !2719
  %183 = icmp ult i64 %182, %140, !dbg !2854
  br i1 %183, label %184, label %186, !dbg !2857

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2854
  store i8 39, i8* %185, align 1, !dbg !2854, !tbaa !729
  br label %186, !dbg !2854

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2857
  call void @llvm.dbg.value(metadata i64 %187, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 1, metadata !2675, metadata !DIExpression()), !dbg !2719
  br label %188, !dbg !2858

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2719
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2675, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %189, metadata !2667, metadata !DIExpression()), !dbg !2719
  %191 = icmp ult i64 %189, %140, !dbg !2859
  br i1 %191, label %192, label %194, !dbg !2862

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2859
  store i8 92, i8* %193, align 1, !dbg !2859, !tbaa !729
  br label %194, !dbg !2859

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2862
  call void @llvm.dbg.value(metadata i64 %195, metadata !2667, metadata !DIExpression()), !dbg !2719
  br i1 %120, label %196, label %499, !dbg !2863

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2865
  %198 = icmp ult i64 %197, %164, !dbg !2866
  br i1 %198, label %199, label %456, !dbg !2867

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2868
  %201 = load i8, i8* %200, align 1, !dbg !2868, !tbaa !729
  %202 = add i8 %201, -48, !dbg !2869
  %203 = icmp ult i8 %202, 10, !dbg !2869
  br i1 %203, label %204, label %456, !dbg !2869

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2870
  br i1 %205, label %206, label %208, !dbg !2874

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2870
  store i8 48, i8* %207, align 1, !dbg !2870, !tbaa !729
  br label %208, !dbg !2870

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2874
  call void @llvm.dbg.value(metadata i64 %209, metadata !2667, metadata !DIExpression()), !dbg !2719
  %210 = icmp ult i64 %209, %140, !dbg !2875
  br i1 %210, label %211, label %213, !dbg !2878

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2875
  store i8 48, i8* %212, align 1, !dbg !2875, !tbaa !729
  br label %213, !dbg !2875

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2878
  call void @llvm.dbg.value(metadata i64 %214, metadata !2667, metadata !DIExpression()), !dbg !2719
  br label %456, !dbg !2879

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2880

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2881

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2882

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2884

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2886
  %221 = icmp ult i64 %220, %164, !dbg !2887
  br i1 %221, label %222, label %456, !dbg !2888

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2889
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2890
  %225 = load i8, i8* %224, align 1, !dbg !2890, !tbaa !729
  %226 = icmp eq i8 %225, 63, !dbg !2891
  br i1 %226, label %227, label %456, !dbg !2892

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2893
  %229 = load i8, i8* %228, align 1, !dbg !2893, !tbaa !729
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
  ], !dbg !2894

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2895

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2688, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %220, metadata !2681, metadata !DIExpression()), !dbg !2808
  %232 = icmp ult i64 %134, %140, !dbg !2897
  br i1 %232, label %233, label %235, !dbg !2900

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2897
  store i8 63, i8* %234, align 1, !dbg !2897, !tbaa !729
  br label %235, !dbg !2897

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %236, metadata !2667, metadata !DIExpression()), !dbg !2719
  %237 = icmp ult i64 %236, %140, !dbg !2901
  br i1 %237, label %238, label %240, !dbg !2904

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2901
  store i8 34, i8* %239, align 1, !dbg !2901, !tbaa !729
  br label %240, !dbg !2901

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %241, metadata !2667, metadata !DIExpression()), !dbg !2719
  %242 = icmp ult i64 %241, %140, !dbg !2905
  br i1 %242, label %243, label %245, !dbg !2908

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2905
  store i8 34, i8* %244, align 1, !dbg !2905, !tbaa !729
  br label %245, !dbg !2905

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %246, metadata !2667, metadata !DIExpression()), !dbg !2719
  %247 = icmp ult i64 %246, %140, !dbg !2909
  br i1 %247, label %248, label %250, !dbg !2912

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2909
  store i8 63, i8* %249, align 1, !dbg !2909, !tbaa !729
  br label %250, !dbg !2909

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2912
  call void @llvm.dbg.value(metadata i64 %251, metadata !2667, metadata !DIExpression()), !dbg !2719
  br label %456, !dbg !2913

252:                                              ; preds = %163
  br label %263, !dbg !2914

253:                                              ; preds = %163
  br label %263, !dbg !2915

254:                                              ; preds = %163
  br label %261, !dbg !2916

255:                                              ; preds = %163
  br label %261, !dbg !2917

256:                                              ; preds = %163
  br label %263, !dbg !2918

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2919

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2920

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2923

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2925

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2926
  call void @llvm.dbg.label(metadata !2713), !dbg !2927
  br i1 %128, label %263, label %638, !dbg !2928

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2926
  call void @llvm.dbg.label(metadata !2715), !dbg !2930
  br i1 %118, label %510, label %467, !dbg !2931

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2932

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2933, !tbaa !729
  %268 = icmp eq i8 %267, 0, !dbg !2935
  br i1 %268, label %269, label %456, !dbg !2936

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2937
  br i1 %270, label %271, label %456, !dbg !2939

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2687, metadata !DIExpression()), !dbg !2816
  br label %272, !dbg !2940

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2687, metadata !DIExpression()), !dbg !2816
  br i1 %126, label %274, label %456, !dbg !2941

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2943

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2673, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 1, metadata !2687, metadata !DIExpression()), !dbg !2816
  br i1 %126, label %276, label %456, !dbg !2944

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2945

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2948
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2950
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2950
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %282, metadata !2658, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %281, metadata !2668, metadata !DIExpression()), !dbg !2719
  %283 = icmp ult i64 %134, %282, !dbg !2951
  br i1 %283, label %284, label %286, !dbg !2954

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2951
  store i8 39, i8* %285, align 1, !dbg !2951, !tbaa !729
  br label %286, !dbg !2951

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %287, metadata !2667, metadata !DIExpression()), !dbg !2719
  %288 = icmp ult i64 %287, %282, !dbg !2955
  br i1 %288, label %289, label %291, !dbg !2958

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2955
  store i8 92, i8* %290, align 1, !dbg !2955, !tbaa !729
  br label %291, !dbg !2955

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %292, metadata !2667, metadata !DIExpression()), !dbg !2719
  %293 = icmp ult i64 %292, %282, !dbg !2959
  br i1 %293, label %294, label %296, !dbg !2962

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2959
  store i8 39, i8* %295, align 1, !dbg !2959, !tbaa !729
  br label %296, !dbg !2959

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2962
  call void @llvm.dbg.value(metadata i64 %297, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 0, metadata !2675, metadata !DIExpression()), !dbg !2719
  br label %456, !dbg !2963

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2964

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2689, metadata !DIExpression()), !dbg !2965
  %300 = tail call i16** @__ctype_b_loc() #36, !dbg !2966
  %301 = load i16*, i16** %300, align 8, !dbg !2966, !tbaa !624
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2966
  %304 = load i16, i16* %303, align 2, !dbg !2966, !tbaa !754
  %305 = and i16 %304, 16384, !dbg !2966
  %306 = icmp ne i16 %305, 0, !dbg !2968
  call void @llvm.dbg.value(metadata i8 poison, metadata !2692, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %349, metadata !2689, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %312, metadata !2660, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i1 %350, metadata !2687, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2816
  br label %352, !dbg !2969

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2970
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2693, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2745, metadata !DIExpression()) #33, !dbg !2972
  call void @llvm.dbg.value(metadata i8* %32, metadata !2753, metadata !DIExpression()) #33, !dbg !2974
  call void @llvm.dbg.value(metadata i32 0, metadata !2756, metadata !DIExpression()) #33, !dbg !2974
  call void @llvm.dbg.value(metadata i64 8, metadata !2757, metadata !DIExpression()) #33, !dbg !2974
  store i64 0, i64* %14, align 8, !dbg !2976
  call void @llvm.dbg.value(metadata i64 0, metadata !2689, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 1, metadata !2692, metadata !DIExpression()), !dbg !2965
  %308 = icmp eq i64 %164, -1, !dbg !2977
  br i1 %308, label %309, label %311, !dbg !2979

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !2980
  call void @llvm.dbg.value(metadata i64 %310, metadata !2660, metadata !DIExpression()), !dbg !2719
  br label %311, !dbg !2981

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2816
  call void @llvm.dbg.value(metadata i64 %312, metadata !2660, metadata !DIExpression()), !dbg !2719
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2982
  %313 = sub i64 %312, %139, !dbg !2983
  call void @llvm.dbg.value(metadata i32* %16, metadata !2696, metadata !DIExpression(DW_OP_deref)), !dbg !2984
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #33, !dbg !2985
  call void @llvm.dbg.value(metadata i64 %314, metadata !2700, metadata !DIExpression()), !dbg !2984
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2986

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2689, metadata !DIExpression()), !dbg !2965
  %316 = icmp ugt i64 %312, %139, !dbg !2987
  br i1 %316, label %319, label %317, !dbg !2989

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2692, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 0, metadata !2689, metadata !DIExpression()), !dbg !2965
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2990
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %349, metadata !2689, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %312, metadata !2660, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i1 %350, metadata !2687, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2816
  br label %352, !dbg !2969

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2692, metadata !DIExpression()), !dbg !2965
  br label %346, !dbg !2992

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2689, metadata !DIExpression()), !dbg !2965
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2994
  %323 = load i8, i8* %322, align 1, !dbg !2994, !tbaa !729
  %324 = icmp eq i8 %323, 0, !dbg !2989
  br i1 %324, label %348, label %325, !dbg !2995

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2996
  call void @llvm.dbg.value(metadata i64 %326, metadata !2689, metadata !DIExpression()), !dbg !2965
  %327 = add i64 %326, %139, !dbg !2997
  %328 = icmp eq i64 %326, %313, !dbg !2987
  br i1 %328, label %348, label %319, !dbg !2989, !llvm.loop !2998

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2999
  call void @llvm.dbg.value(metadata i64 1, metadata !2701, metadata !DIExpression()), !dbg !3000
  br i1 %331, label %332, label %340, !dbg !2999

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2701, metadata !DIExpression()), !dbg !3000
  %334 = add i64 %333, %139, !dbg !3001
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !3003
  %336 = load i8, i8* %335, align 1, !dbg !3003, !tbaa !729
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !3004

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %338, metadata !2701, metadata !DIExpression()), !dbg !3000
  %339 = icmp eq i64 %338, %314, !dbg !3006
  br i1 %339, label %340, label %332, !dbg !3007, !llvm.loop !3008

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !3010, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %341, metadata !2696, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i32 %341, metadata !3012, metadata !DIExpression()) #33, !dbg !3015
  %342 = call i32 @iswprint(i32 noundef %341) #33, !dbg !3017
  %343 = icmp ne i32 %342, 0, !dbg !3018
  call void @llvm.dbg.value(metadata i8 poison, metadata !2692, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %314, metadata !2689, metadata !DIExpression()), !dbg !2965
  br label %348, !dbg !3019

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2692, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 0, metadata !2689, metadata !DIExpression()), !dbg !2965
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2990
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2991
  call void @llvm.dbg.label(metadata !2718), !dbg !3020
  %345 = select i1 %118, i32 4, i32 2, !dbg !3021
  br label %643, !dbg !3021

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2692, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 0, metadata !2689, metadata !DIExpression()), !dbg !2965
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2990
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %349, metadata !2689, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %312, metadata !2660, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i1 %350, metadata !2687, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2816
  br label %352, !dbg !2969

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2692, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 0, metadata !2689, metadata !DIExpression()), !dbg !2965
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !2990
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %349, metadata !2689, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %312, metadata !2660, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i1 %350, metadata !2687, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2816
  %351 = icmp ugt i64 %349, 1, !dbg !3023
  br i1 %351, label %357, label %352, !dbg !2969

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !3024
  br i1 %356, label %456, label %357, !dbg !3024

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !3025
  call void @llvm.dbg.value(metadata i64 %361, metadata !2709, metadata !DIExpression()), !dbg !3026
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !3027

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2719
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2808
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !3028
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2816
  call void @llvm.dbg.value(metadata i8 %369, metadata !2688, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 %368, metadata !2686, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %366, metadata !2681, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8 poison, metadata !2675, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %364, metadata !2667, metadata !DIExpression()), !dbg !2719
  br i1 %362, label %414, label %370, !dbg !3029

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !3034

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2686, metadata !DIExpression()), !dbg !2816
  %372 = select i1 %120, i1 true, i1 %365, !dbg !3037
  br i1 %372, label %389, label %373, !dbg !3037

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !3039
  br i1 %374, label %375, label %377, !dbg !3043

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !3039
  store i8 39, i8* %376, align 1, !dbg !3039, !tbaa !729
  br label %377, !dbg !3039

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !3043
  call void @llvm.dbg.value(metadata i64 %378, metadata !2667, metadata !DIExpression()), !dbg !2719
  %379 = icmp ult i64 %378, %140, !dbg !3044
  br i1 %379, label %380, label %382, !dbg !3047

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !3044
  store i8 36, i8* %381, align 1, !dbg !3044, !tbaa !729
  br label %382, !dbg !3044

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %383, metadata !2667, metadata !DIExpression()), !dbg !2719
  %384 = icmp ult i64 %383, %140, !dbg !3048
  br i1 %384, label %385, label %387, !dbg !3051

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !3048
  store i8 39, i8* %386, align 1, !dbg !3048, !tbaa !729
  br label %387, !dbg !3048

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !3051
  call void @llvm.dbg.value(metadata i64 %388, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 1, metadata !2675, metadata !DIExpression()), !dbg !2719
  br label %389, !dbg !3052

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2719
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2675, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %390, metadata !2667, metadata !DIExpression()), !dbg !2719
  %392 = icmp ult i64 %390, %140, !dbg !3053
  br i1 %392, label %393, label %395, !dbg !3056

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !3053
  store i8 92, i8* %394, align 1, !dbg !3053, !tbaa !729
  br label %395, !dbg !3053

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %396, metadata !2667, metadata !DIExpression()), !dbg !2719
  %397 = icmp ult i64 %396, %140, !dbg !3057
  br i1 %397, label %398, label %402, !dbg !3060

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !3057
  %400 = or i8 %399, 48, !dbg !3057
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3057
  store i8 %400, i8* %401, align 1, !dbg !3057, !tbaa !729
  br label %402, !dbg !3057

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !3060
  call void @llvm.dbg.value(metadata i64 %403, metadata !2667, metadata !DIExpression()), !dbg !2719
  %404 = icmp ult i64 %403, %140, !dbg !3061
  br i1 %404, label %405, label %410, !dbg !3064

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !3061
  %407 = and i8 %406, 7, !dbg !3061
  %408 = or i8 %407, 48, !dbg !3061
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !3061
  store i8 %408, i8* %409, align 1, !dbg !3061, !tbaa !729
  br label %410, !dbg !3061

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !3064
  call void @llvm.dbg.value(metadata i64 %411, metadata !2667, metadata !DIExpression()), !dbg !2719
  %412 = and i8 %369, 7, !dbg !3065
  %413 = or i8 %412, 48, !dbg !3066
  call void @llvm.dbg.value(metadata i8 %413, metadata !2688, metadata !DIExpression()), !dbg !2816
  br label %421, !dbg !3067

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !3068

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !3069
  br i1 %416, label %417, label %419, !dbg !3074

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !3069
  store i8 92, i8* %418, align 1, !dbg !3069, !tbaa !729
  br label %419, !dbg !3069

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %420, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 0, metadata !2683, metadata !DIExpression()), !dbg !2816
  br label %421, !dbg !3075

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2719
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2816
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2816
  call void @llvm.dbg.value(metadata i8 %426, metadata !2688, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 %425, metadata !2686, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2675, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %422, metadata !2667, metadata !DIExpression()), !dbg !2719
  %427 = add i64 %366, 1, !dbg !3076
  %428 = icmp ugt i64 %361, %427, !dbg !3078
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !3079

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !3080
  %432 = select i1 %423, i1 %431, i1 false, !dbg !3080
  br i1 %432, label %433, label %444, !dbg !3080

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !3083
  br i1 %434, label %435, label %437, !dbg !3087

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !3083
  store i8 39, i8* %436, align 1, !dbg !3083, !tbaa !729
  br label %437, !dbg !3083

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !3087
  call void @llvm.dbg.value(metadata i64 %438, metadata !2667, metadata !DIExpression()), !dbg !2719
  %439 = icmp ult i64 %438, %140, !dbg !3088
  br i1 %439, label %440, label %442, !dbg !3091

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !3088
  store i8 39, i8* %441, align 1, !dbg !3088, !tbaa !729
  br label %442, !dbg !3088

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !3091
  call void @llvm.dbg.value(metadata i64 %443, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 0, metadata !2675, metadata !DIExpression()), !dbg !2719
  br label %444, !dbg !3092

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !3093
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2675, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %445, metadata !2667, metadata !DIExpression()), !dbg !2719
  %447 = icmp ult i64 %445, %140, !dbg !3094
  br i1 %447, label %448, label %450, !dbg !3097

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !3094
  store i8 %426, i8* %449, align 1, !dbg !3094, !tbaa !729
  br label %450, !dbg !3094

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %451, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %427, metadata !2681, metadata !DIExpression()), !dbg !2808
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !3098
  %453 = load i8, i8* %452, align 1, !dbg !3098, !tbaa !729
  call void @llvm.dbg.value(metadata i8 %453, metadata !2688, metadata !DIExpression()), !dbg !2816
  br label %363, !dbg !3099, !llvm.loop !3100

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2688, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i1 %358, metadata !2687, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2816
  call void @llvm.dbg.value(metadata i8 %425, metadata !2686, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %366, metadata !2681, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8 poison, metadata !2675, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %422, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %360, metadata !2660, metadata !DIExpression()), !dbg !2719
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !3103
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2719
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2723
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2808
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2816
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2658, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 %465, metadata !2688, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2687, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2686, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2683, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %462, metadata !2681, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8 poison, metadata !2675, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2673, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %459, metadata !2668, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %458, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %457, metadata !2660, metadata !DIExpression()), !dbg !2719
  br i1 %121, label %478, label %467, !dbg !3104

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
  br i1 %131, label %479, label %499, !dbg !3106

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !3107

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
  %490 = lshr i8 %481, 5, !dbg !3108
  %491 = zext i8 %490 to i64, !dbg !3108
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3109
  %493 = load i32, i32* %492, align 4, !dbg !3109, !tbaa !720
  %494 = and i8 %481, 31, !dbg !3110
  %495 = zext i8 %494 to i32, !dbg !3110
  %496 = shl nuw i32 1, %495, !dbg !3111
  %497 = and i32 %493, %496, !dbg !3111
  %498 = icmp eq i32 %497, 0, !dbg !3111
  br i1 %498, label %499, label %510, !dbg !3112

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
  br i1 %165, label %510, label %546, !dbg !3113

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !3103
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2719
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2723
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !3114
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2816
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2658, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 %518, metadata !2688, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2687, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %516, metadata !2681, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8 poison, metadata !2675, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2673, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %513, metadata !2668, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %512, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %511, metadata !2660, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.label(metadata !2716), !dbg !3115
  br i1 %119, label %638, label %520, !dbg !3116

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2686, metadata !DIExpression()), !dbg !2816
  %521 = select i1 %120, i1 true, i1 %515, !dbg !3118
  br i1 %521, label %538, label %522, !dbg !3118

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !3120
  br i1 %523, label %524, label %526, !dbg !3124

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3120
  store i8 39, i8* %525, align 1, !dbg !3120, !tbaa !729
  br label %526, !dbg !3120

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !3124
  call void @llvm.dbg.value(metadata i64 %527, metadata !2667, metadata !DIExpression()), !dbg !2719
  %528 = icmp ult i64 %527, %519, !dbg !3125
  br i1 %528, label %529, label %531, !dbg !3128

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3125
  store i8 36, i8* %530, align 1, !dbg !3125, !tbaa !729
  br label %531, !dbg !3125

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %532, metadata !2667, metadata !DIExpression()), !dbg !2719
  %533 = icmp ult i64 %532, %519, !dbg !3129
  br i1 %533, label %534, label %536, !dbg !3132

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !3129
  store i8 39, i8* %535, align 1, !dbg !3129, !tbaa !729
  br label %536, !dbg !3129

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %537, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 1, metadata !2675, metadata !DIExpression()), !dbg !2719
  br label %538, !dbg !3133

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2816
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2675, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %539, metadata !2667, metadata !DIExpression()), !dbg !2719
  %541 = icmp ult i64 %539, %519, !dbg !3134
  br i1 %541, label %542, label %544, !dbg !3137

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !3134
  store i8 92, i8* %543, align 1, !dbg !3134, !tbaa !729
  br label %544, !dbg !3134

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !3137
  call void @llvm.dbg.value(metadata i64 %556, metadata !2658, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 %555, metadata !2688, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2687, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2686, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %552, metadata !2681, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8 poison, metadata !2675, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2673, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %549, metadata !2668, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %548, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %547, metadata !2660, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.label(metadata !2717), !dbg !3138
  br label %570, !dbg !3139

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !3103
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2719
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2723
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !3114
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !3142
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2658, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 %555, metadata !2688, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2687, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 poison, metadata !2686, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %552, metadata !2681, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8 poison, metadata !2675, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2673, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %549, metadata !2668, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %548, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %547, metadata !2660, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.label(metadata !2717), !dbg !3138
  %557 = xor i1 %551, true, !dbg !3139
  %558 = select i1 %557, i1 true, i1 %553, !dbg !3139
  br i1 %558, label %570, label %559, !dbg !3139

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !3143
  br i1 %560, label %561, label %563, !dbg !3147

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !3143
  store i8 39, i8* %562, align 1, !dbg !3143, !tbaa !729
  br label %563, !dbg !3143

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !3147
  call void @llvm.dbg.value(metadata i64 %564, metadata !2667, metadata !DIExpression()), !dbg !2719
  %565 = icmp ult i64 %564, %556, !dbg !3148
  br i1 %565, label %566, label %568, !dbg !3151

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !3148
  store i8 39, i8* %567, align 1, !dbg !3148, !tbaa !729
  br label %568, !dbg !3148

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !3151
  call void @llvm.dbg.value(metadata i64 %569, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 0, metadata !2675, metadata !DIExpression()), !dbg !2719
  br label %570, !dbg !3152

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2816
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2675, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %578, metadata !2667, metadata !DIExpression()), !dbg !2719
  %580 = icmp ult i64 %578, %571, !dbg !3153
  br i1 %580, label %581, label %583, !dbg !3156

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !3153
  store i8 %572, i8* %582, align 1, !dbg !3153, !tbaa !729
  br label %583, !dbg !3153

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !3156
  call void @llvm.dbg.value(metadata i64 %584, metadata !2667, metadata !DIExpression()), !dbg !2719
  %585 = select i1 %573, i1 %137, i1 false, !dbg !3157
  call void @llvm.dbg.value(metadata i8 poison, metadata !2674, metadata !DIExpression()), !dbg !2719
  br label %586, !dbg !3158

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !3103
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2719
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2723
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !3114
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2658, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %593, metadata !2681, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8 poison, metadata !2675, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2674, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2673, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %589, metadata !2668, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %588, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %587, metadata !2660, metadata !DIExpression()), !dbg !2719
  %595 = add i64 %593, 1, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %595, metadata !2681, metadata !DIExpression()), !dbg !2808
  br label %132, !dbg !3160, !llvm.loop !3161

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2658, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2674, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 poison, metadata !2673, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 undef, metadata !2668, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 undef, metadata !2667, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 undef, metadata !2660, metadata !DIExpression()), !dbg !2719
  %597 = icmp eq i64 %134, 0, !dbg !3163
  %598 = and i1 %126, %597, !dbg !3165
  %599 = and i1 %598, %119, !dbg !3165
  br i1 %599, label %638, label %600, !dbg !3165

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !3166
  %602 = or i1 %119, %601, !dbg !3166
  %603 = xor i1 %136, true, !dbg !3166
  %604 = select i1 %602, i1 true, i1 %603, !dbg !3166
  br i1 %604, label %612, label %605, !dbg !3166

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !3168

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !3170
  br label %653, !dbg !3172

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !3173
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !3175
  br i1 %611, label %36, label %612, !dbg !3175

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !3176
  %615 = or i1 %614, %613, !dbg !3178
  br i1 %615, label %631, label %616, !dbg !3178

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2669, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %134, metadata !2667, metadata !DIExpression()), !dbg !2719
  %617 = load i8, i8* %116, align 1, !dbg !3179, !tbaa !729
  %618 = icmp eq i8 %617, 0, !dbg !3182
  br i1 %618, label %631, label %619, !dbg !3182

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2669, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %622, metadata !2667, metadata !DIExpression()), !dbg !2719
  %623 = icmp ult i64 %622, %140, !dbg !3183
  br i1 %623, label %624, label %626, !dbg !3186

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !3183
  store i8 %620, i8* %625, align 1, !dbg !3183, !tbaa !729
  br label %626, !dbg !3183

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !3186
  call void @llvm.dbg.value(metadata i64 %627, metadata !2667, metadata !DIExpression()), !dbg !2719
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !3187
  call void @llvm.dbg.value(metadata i8* %628, metadata !2669, metadata !DIExpression()), !dbg !2719
  %629 = load i8, i8* %628, align 1, !dbg !3179, !tbaa !729
  %630 = icmp eq i8 %629, 0, !dbg !3182
  br i1 %630, label %631, label %619, !dbg !3182, !llvm.loop !3188

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2795
  call void @llvm.dbg.value(metadata i64 %632, metadata !2667, metadata !DIExpression()), !dbg !2719
  %633 = icmp ult i64 %632, %140, !dbg !3190
  br i1 %633, label %634, label %653, !dbg !3192

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !3193
  store i8 0, i8* %635, align 1, !dbg !3194, !tbaa !729
  br label %653, !dbg !3193

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2718), !dbg !3020
  %637 = icmp eq i32 %112, 2, !dbg !3195
  br i1 %637, label %643, label %647, !dbg !3021

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2718), !dbg !3020
  %641 = icmp eq i32 %112, 2, !dbg !3195
  %642 = select i1 %118, i32 4, i32 2, !dbg !3021
  br i1 %641, label %643, label %647, !dbg !3021

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !3021

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2661, metadata !DIExpression()), !dbg !2719
  %651 = and i32 %5, -3, !dbg !3196
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !3197
  br label %653, !dbg !3198

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !3199
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !3200 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !3201 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3205, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i64 %1, metadata !3206, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3207, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i8* %0, metadata !3209, metadata !DIExpression()) #33, !dbg !3222
  call void @llvm.dbg.value(metadata i64 %1, metadata !3214, metadata !DIExpression()) #33, !dbg !3222
  call void @llvm.dbg.value(metadata i64* null, metadata !3215, metadata !DIExpression()) #33, !dbg !3222
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3216, metadata !DIExpression()) #33, !dbg !3222
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3224
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3224
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3217, metadata !DIExpression()) #33, !dbg !3222
  %6 = tail call i32* @__errno_location() #36, !dbg !3225
  %7 = load i32, i32* %6, align 4, !dbg !3225, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %7, metadata !3218, metadata !DIExpression()) #33, !dbg !3222
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3226
  %9 = load i32, i32* %8, align 4, !dbg !3226, !tbaa !2601
  %10 = or i32 %9, 1, !dbg !3227
  call void @llvm.dbg.value(metadata i32 %10, metadata !3219, metadata !DIExpression()) #33, !dbg !3222
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3228
  %12 = load i32, i32* %11, align 8, !dbg !3228, !tbaa !2550
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3229
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3230
  %15 = load i8*, i8** %14, align 8, !dbg !3230, !tbaa !2623
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3231
  %17 = load i8*, i8** %16, align 8, !dbg !3231, !tbaa !2626
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #33, !dbg !3232
  %19 = add i64 %18, 1, !dbg !3233
  call void @llvm.dbg.value(metadata i64 %19, metadata !3220, metadata !DIExpression()) #33, !dbg !3222
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #38, !dbg !3234
  call void @llvm.dbg.value(metadata i8* %20, metadata !3221, metadata !DIExpression()) #33, !dbg !3222
  %21 = load i32, i32* %11, align 8, !dbg !3235, !tbaa !2550
  %22 = load i8*, i8** %14, align 8, !dbg !3236, !tbaa !2623
  %23 = load i8*, i8** %16, align 8, !dbg !3237, !tbaa !2626
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #33, !dbg !3238
  store i32 %7, i32* %6, align 4, !dbg !3239, !tbaa !720
  ret i8* %20, !dbg !3240
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !3210 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3209, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %1, metadata !3214, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64* %2, metadata !3215, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3216, metadata !DIExpression()), !dbg !3241
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3242
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3217, metadata !DIExpression()), !dbg !3241
  %7 = tail call i32* @__errno_location() #36, !dbg !3243
  %8 = load i32, i32* %7, align 4, !dbg !3243, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %8, metadata !3218, metadata !DIExpression()), !dbg !3241
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3244
  %10 = load i32, i32* %9, align 4, !dbg !3244, !tbaa !2601
  %11 = icmp eq i64* %2, null, !dbg !3245
  %12 = zext i1 %11 to i32, !dbg !3245
  %13 = or i32 %10, %12, !dbg !3246
  call void @llvm.dbg.value(metadata i32 %13, metadata !3219, metadata !DIExpression()), !dbg !3241
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3247
  %15 = load i32, i32* %14, align 8, !dbg !3247, !tbaa !2550
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3248
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3249
  %18 = load i8*, i8** %17, align 8, !dbg !3249, !tbaa !2623
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3250
  %20 = load i8*, i8** %19, align 8, !dbg !3250, !tbaa !2626
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !3251
  %22 = add i64 %21, 1, !dbg !3252
  call void @llvm.dbg.value(metadata i64 %22, metadata !3220, metadata !DIExpression()), !dbg !3241
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #38, !dbg !3253
  call void @llvm.dbg.value(metadata i8* %23, metadata !3221, metadata !DIExpression()), !dbg !3241
  %24 = load i32, i32* %14, align 8, !dbg !3254, !tbaa !2550
  %25 = load i8*, i8** %17, align 8, !dbg !3255, !tbaa !2623
  %26 = load i8*, i8** %19, align 8, !dbg !3256, !tbaa !2626
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !3257
  store i32 %8, i32* %7, align 4, !dbg !3258, !tbaa !720
  br i1 %11, label %29, label %28, !dbg !3259

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3260, !tbaa !912
  br label %29, !dbg !3262

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3263
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !3264 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3269, !tbaa !624
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3266, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i32 1, metadata !3267, metadata !DIExpression()), !dbg !3271
  %2 = load i32, i32* @nslots, align 4, !tbaa !720
  call void @llvm.dbg.value(metadata i32 1, metadata !3267, metadata !DIExpression()), !dbg !3271
  %3 = icmp sgt i32 %2, 1, !dbg !3272
  br i1 %3, label %4, label %6, !dbg !3274

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3272
  br label %10, !dbg !3274

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3275
  %8 = load i8*, i8** %7, align 8, !dbg !3275, !tbaa !3277
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3279
  br i1 %9, label %17, label %16, !dbg !3280

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3267, metadata !DIExpression()), !dbg !3271
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !3281
  %13 = load i8*, i8** %12, align 8, !dbg !3281, !tbaa !3277
  tail call void @free(i8* noundef %13) #33, !dbg !3282
  %14 = add nuw nsw i64 %11, 1, !dbg !3283
  call void @llvm.dbg.value(metadata i64 %14, metadata !3267, metadata !DIExpression()), !dbg !3271
  %15 = icmp eq i64 %14, %5, !dbg !3272
  br i1 %15, label %6, label %10, !dbg !3274, !llvm.loop !3284

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #33, !dbg !3286
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3288, !tbaa !3289
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3290, !tbaa !3277
  br label %17, !dbg !3291

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3292
  br i1 %18, label %21, label %19, !dbg !3294

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3295
  tail call void @free(i8* noundef %20) #33, !dbg !3297
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3298, !tbaa !624
  br label %21, !dbg !3299

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3300, !tbaa !720
  ret void, !dbg !3301
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3302 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3304, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i8* %1, metadata !3305, metadata !DIExpression()), !dbg !3306
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3307
  ret i8* %3, !dbg !3308
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !3309 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3313, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8* %1, metadata !3314, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i64 %2, metadata !3315, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3316, metadata !DIExpression()), !dbg !3329
  %6 = tail call i32* @__errno_location() #36, !dbg !3330
  %7 = load i32, i32* %6, align 4, !dbg !3330, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %7, metadata !3317, metadata !DIExpression()), !dbg !3329
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3331, !tbaa !624
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !3318, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3319, metadata !DIExpression()), !dbg !3329
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3332
  br i1 %9, label %10, label %11, !dbg !3332

10:                                               ; preds = %4
  tail call void @abort() #35, !dbg !3334
  unreachable, !dbg !3334

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !3335, !tbaa !720
  %13 = icmp sgt i32 %12, %0, !dbg !3336
  br i1 %13, label %36, label %14, !dbg !3337

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !3338
  call void @llvm.dbg.value(metadata i1 %15, metadata !3320, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3339
  %16 = bitcast i64* %5 to i8*, !dbg !3340
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #33, !dbg !3340
  %17 = sext i32 %12 to i64, !dbg !3341
  call void @llvm.dbg.value(metadata i64 %17, metadata !3323, metadata !DIExpression()), !dbg !3339
  store i64 %17, i64* %5, align 8, !dbg !3342, !tbaa !912
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !3343
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3343
  %20 = add nuw nsw i32 %0, 1, !dbg !3344
  %21 = sub i32 %20, %12, !dbg !3345
  %22 = sext i32 %21 to i64, !dbg !3346
  call void @llvm.dbg.value(metadata i64* %5, metadata !3323, metadata !DIExpression(DW_OP_deref)), !dbg !3339
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #33, !dbg !3347
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3347
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3318, metadata !DIExpression()), !dbg !3329
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3348, !tbaa !624
  br i1 %15, label %25, label %26, !dbg !3349

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3350, !tbaa.struct !3352
  br label %26, !dbg !3353

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !3354, !tbaa !720
  %28 = sext i32 %27 to i64, !dbg !3355
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3355
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3356
  %31 = load i64, i64* %5, align 8, !dbg !3357, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %31, metadata !3323, metadata !DIExpression()), !dbg !3339
  %32 = sub nsw i64 %31, %28, !dbg !3358
  %33 = shl i64 %32, 4, !dbg !3359
  call void @llvm.dbg.value(metadata i8* %30, metadata !2753, metadata !DIExpression()) #33, !dbg !3360
  call void @llvm.dbg.value(metadata i32 0, metadata !2756, metadata !DIExpression()) #33, !dbg !3360
  call void @llvm.dbg.value(metadata i64 %33, metadata !2757, metadata !DIExpression()) #33, !dbg !3360
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #33, !dbg !3362
  %34 = load i64, i64* %5, align 8, !dbg !3363, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %34, metadata !3323, metadata !DIExpression()), !dbg !3339
  %35 = trunc i64 %34 to i32, !dbg !3363
  store i32 %35, i32* @nslots, align 4, !dbg !3364, !tbaa !720
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #33, !dbg !3365
  br label %36, !dbg !3366

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !3329
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !3318, metadata !DIExpression()), !dbg !3329
  %38 = zext i32 %0 to i64, !dbg !3367
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !3368
  %40 = load i64, i64* %39, align 8, !dbg !3368, !tbaa !3289
  call void @llvm.dbg.value(metadata i64 %40, metadata !3324, metadata !DIExpression()), !dbg !3369
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !3370
  %42 = load i8*, i8** %41, align 8, !dbg !3370, !tbaa !3277
  call void @llvm.dbg.value(metadata i8* %42, metadata !3326, metadata !DIExpression()), !dbg !3369
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3371
  %44 = load i32, i32* %43, align 4, !dbg !3371, !tbaa !2601
  %45 = or i32 %44, 1, !dbg !3372
  call void @llvm.dbg.value(metadata i32 %45, metadata !3327, metadata !DIExpression()), !dbg !3369
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3373
  %47 = load i32, i32* %46, align 8, !dbg !3373, !tbaa !2550
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3374
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3375
  %50 = load i8*, i8** %49, align 8, !dbg !3375, !tbaa !2623
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3376
  %52 = load i8*, i8** %51, align 8, !dbg !3376, !tbaa !2626
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !3377
  call void @llvm.dbg.value(metadata i64 %53, metadata !3328, metadata !DIExpression()), !dbg !3369
  %54 = icmp ugt i64 %40, %53, !dbg !3378
  br i1 %54, label %65, label %55, !dbg !3380

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !3381
  call void @llvm.dbg.value(metadata i64 %56, metadata !3324, metadata !DIExpression()), !dbg !3369
  store i64 %56, i64* %39, align 8, !dbg !3383, !tbaa !3289
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3384
  br i1 %57, label %59, label %58, !dbg !3386

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #33, !dbg !3387
  br label %59, !dbg !3387

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #38, !dbg !3388
  call void @llvm.dbg.value(metadata i8* %60, metadata !3326, metadata !DIExpression()), !dbg !3369
  store i8* %60, i8** %41, align 8, !dbg !3389, !tbaa !3277
  %61 = load i32, i32* %46, align 8, !dbg !3390, !tbaa !2550
  %62 = load i8*, i8** %49, align 8, !dbg !3391, !tbaa !2623
  %63 = load i8*, i8** %51, align 8, !dbg !3392, !tbaa !2626
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !3393
  br label %65, !dbg !3394

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !3369
  call void @llvm.dbg.value(metadata i8* %66, metadata !3326, metadata !DIExpression()), !dbg !3369
  store i32 %7, i32* %6, align 4, !dbg !3395, !tbaa !720
  ret i8* %66, !dbg !3396
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3397 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3401, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i8* %1, metadata !3402, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 %2, metadata !3403, metadata !DIExpression()), !dbg !3404
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3405
  ret i8* %4, !dbg !3406
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !3407 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3409, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()) #33, !dbg !3411
  call void @llvm.dbg.value(metadata i8* %0, metadata !3305, metadata !DIExpression()) #33, !dbg !3411
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !3413
  ret i8* %2, !dbg !3414
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3415 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3419, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i64 %1, metadata !3420, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i32 0, metadata !3401, metadata !DIExpression()) #33, !dbg !3422
  call void @llvm.dbg.value(metadata i8* %0, metadata !3402, metadata !DIExpression()) #33, !dbg !3422
  call void @llvm.dbg.value(metadata i64 %1, metadata !3403, metadata !DIExpression()) #33, !dbg !3422
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !3424
  ret i8* %3, !dbg !3425
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3426 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3430, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i32 %1, metadata !3431, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i8* %2, metadata !3432, metadata !DIExpression()), !dbg !3434
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3435
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3435
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3433, metadata !DIExpression()), !dbg !3436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3437), !dbg !3440
  call void @llvm.dbg.value(metadata i32 %1, metadata !3441, metadata !DIExpression()) #33, !dbg !3447
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3446, metadata !DIExpression()) #33, !dbg !3449
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !3449, !alias.scope !3437
  %6 = icmp eq i32 %1, 10, !dbg !3450
  br i1 %6, label %7, label %8, !dbg !3452

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !3453, !noalias !3437
  unreachable, !dbg !3453

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3454
  store i32 %1, i32* %9, align 8, !dbg !3455, !tbaa !2550, !alias.scope !3437
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3456
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3457
  ret i8* %10, !dbg !3458
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3459 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3463, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i32 %1, metadata !3464, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i8* %2, metadata !3465, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i64 %3, metadata !3466, metadata !DIExpression()), !dbg !3468
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3469
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3469
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3467, metadata !DIExpression()), !dbg !3470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3471), !dbg !3474
  call void @llvm.dbg.value(metadata i32 %1, metadata !3441, metadata !DIExpression()) #33, !dbg !3475
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3446, metadata !DIExpression()) #33, !dbg !3477
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #33, !dbg !3477, !alias.scope !3471
  %7 = icmp eq i32 %1, 10, !dbg !3478
  br i1 %7, label %8, label %9, !dbg !3479

8:                                                ; preds = %4
  tail call void @abort() #35, !dbg !3480, !noalias !3471
  unreachable, !dbg !3480

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3481
  store i32 %1, i32* %10, align 8, !dbg !3482, !tbaa !2550, !alias.scope !3471
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !3483
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3484
  ret i8* %11, !dbg !3485
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3486 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3490, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i8* %1, metadata !3491, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 0, metadata !3430, metadata !DIExpression()) #33, !dbg !3493
  call void @llvm.dbg.value(metadata i32 %0, metadata !3431, metadata !DIExpression()) #33, !dbg !3493
  call void @llvm.dbg.value(metadata i8* %1, metadata !3432, metadata !DIExpression()) #33, !dbg !3493
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3495
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3495
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3433, metadata !DIExpression()) #33, !dbg !3496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3497) #33, !dbg !3500
  call void @llvm.dbg.value(metadata i32 %0, metadata !3441, metadata !DIExpression()) #33, !dbg !3501
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3446, metadata !DIExpression()) #33, !dbg !3503
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #33, !dbg !3503, !alias.scope !3497
  %5 = icmp eq i32 %0, 10, !dbg !3504
  br i1 %5, label %6, label %7, !dbg !3505

6:                                                ; preds = %2
  tail call void @abort() #35, !dbg !3506, !noalias !3497
  unreachable, !dbg !3506

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3507
  store i32 %0, i32* %8, align 8, !dbg !3508, !tbaa !2550, !alias.scope !3497
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !3509
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3510
  ret i8* %9, !dbg !3511
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3512 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3516, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i8* %1, metadata !3517, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i64 %2, metadata !3518, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i32 0, metadata !3463, metadata !DIExpression()) #33, !dbg !3520
  call void @llvm.dbg.value(metadata i32 %0, metadata !3464, metadata !DIExpression()) #33, !dbg !3520
  call void @llvm.dbg.value(metadata i8* %1, metadata !3465, metadata !DIExpression()) #33, !dbg !3520
  call void @llvm.dbg.value(metadata i64 %2, metadata !3466, metadata !DIExpression()) #33, !dbg !3520
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3522
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3522
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3467, metadata !DIExpression()) #33, !dbg !3523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3524) #33, !dbg !3527
  call void @llvm.dbg.value(metadata i32 %0, metadata !3441, metadata !DIExpression()) #33, !dbg !3528
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3446, metadata !DIExpression()) #33, !dbg !3530
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !3530, !alias.scope !3524
  %6 = icmp eq i32 %0, 10, !dbg !3531
  br i1 %6, label %7, label %8, !dbg !3532

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !3533, !noalias !3524
  unreachable, !dbg !3533

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3534
  store i32 %0, i32* %9, align 8, !dbg !3535, !tbaa !2550, !alias.scope !3524
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #33, !dbg !3536
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3537
  ret i8* %10, !dbg !3538
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3539 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3543, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i64 %1, metadata !3544, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i8 %2, metadata !3545, metadata !DIExpression()), !dbg !3547
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3548
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3548
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3546, metadata !DIExpression()), !dbg !3549
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3550, !tbaa.struct !3551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2568, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i8 %2, metadata !2569, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32 1, metadata !2570, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i8 %2, metadata !2571, metadata !DIExpression()), !dbg !3552
  %6 = lshr i8 %2, 5, !dbg !3554
  %7 = zext i8 %6 to i64, !dbg !3554
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3555
  call void @llvm.dbg.value(metadata i32* %8, metadata !2572, metadata !DIExpression()), !dbg !3552
  %9 = and i8 %2, 31, !dbg !3556
  %10 = zext i8 %9 to i32, !dbg !3556
  call void @llvm.dbg.value(metadata i32 %10, metadata !2574, metadata !DIExpression()), !dbg !3552
  %11 = load i32, i32* %8, align 4, !dbg !3557, !tbaa !720
  %12 = lshr i32 %11, %10, !dbg !3558
  %13 = and i32 %12, 1, !dbg !3559
  call void @llvm.dbg.value(metadata i32 %13, metadata !2575, metadata !DIExpression()), !dbg !3552
  %14 = xor i32 %13, 1, !dbg !3560
  %15 = shl i32 %14, %10, !dbg !3561
  %16 = xor i32 %15, %11, !dbg !3562
  store i32 %16, i32* %8, align 4, !dbg !3562, !tbaa !720
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3563
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3564
  ret i8* %17, !dbg !3565
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3566 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3570, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i8 %1, metadata !3571, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i8* %0, metadata !3543, metadata !DIExpression()) #33, !dbg !3573
  call void @llvm.dbg.value(metadata i64 -1, metadata !3544, metadata !DIExpression()) #33, !dbg !3573
  call void @llvm.dbg.value(metadata i8 %1, metadata !3545, metadata !DIExpression()) #33, !dbg !3573
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3575
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3575
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3546, metadata !DIExpression()) #33, !dbg !3576
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !3577, !tbaa.struct !3551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2568, metadata !DIExpression()) #33, !dbg !3578
  call void @llvm.dbg.value(metadata i8 %1, metadata !2569, metadata !DIExpression()) #33, !dbg !3578
  call void @llvm.dbg.value(metadata i32 1, metadata !2570, metadata !DIExpression()) #33, !dbg !3578
  call void @llvm.dbg.value(metadata i8 %1, metadata !2571, metadata !DIExpression()) #33, !dbg !3578
  %5 = lshr i8 %1, 5, !dbg !3580
  %6 = zext i8 %5 to i64, !dbg !3580
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3581
  call void @llvm.dbg.value(metadata i32* %7, metadata !2572, metadata !DIExpression()) #33, !dbg !3578
  %8 = and i8 %1, 31, !dbg !3582
  %9 = zext i8 %8 to i32, !dbg !3582
  call void @llvm.dbg.value(metadata i32 %9, metadata !2574, metadata !DIExpression()) #33, !dbg !3578
  %10 = load i32, i32* %7, align 4, !dbg !3583, !tbaa !720
  %11 = lshr i32 %10, %9, !dbg !3584
  %12 = and i32 %11, 1, !dbg !3585
  call void @llvm.dbg.value(metadata i32 %12, metadata !2575, metadata !DIExpression()) #33, !dbg !3578
  %13 = xor i32 %12, 1, !dbg !3586
  %14 = shl i32 %13, %9, !dbg !3587
  %15 = xor i32 %14, %10, !dbg !3588
  store i32 %15, i32* %7, align 4, !dbg !3588, !tbaa !720
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !3589
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3590
  ret i8* %16, !dbg !3591
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3592 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3594, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i8* %0, metadata !3570, metadata !DIExpression()) #33, !dbg !3596
  call void @llvm.dbg.value(metadata i8 58, metadata !3571, metadata !DIExpression()) #33, !dbg !3596
  call void @llvm.dbg.value(metadata i8* %0, metadata !3543, metadata !DIExpression()) #33, !dbg !3598
  call void @llvm.dbg.value(metadata i64 -1, metadata !3544, metadata !DIExpression()) #33, !dbg !3598
  call void @llvm.dbg.value(metadata i8 58, metadata !3545, metadata !DIExpression()) #33, !dbg !3598
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3600
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #33, !dbg !3600
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3546, metadata !DIExpression()) #33, !dbg !3601
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !3602, !tbaa.struct !3551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2568, metadata !DIExpression()) #33, !dbg !3603
  call void @llvm.dbg.value(metadata i8 58, metadata !2569, metadata !DIExpression()) #33, !dbg !3603
  call void @llvm.dbg.value(metadata i32 1, metadata !2570, metadata !DIExpression()) #33, !dbg !3603
  call void @llvm.dbg.value(metadata i8 58, metadata !2571, metadata !DIExpression()) #33, !dbg !3603
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3605
  call void @llvm.dbg.value(metadata i32* %4, metadata !2572, metadata !DIExpression()) #33, !dbg !3603
  call void @llvm.dbg.value(metadata i32 26, metadata !2574, metadata !DIExpression()) #33, !dbg !3603
  %5 = load i32, i32* %4, align 4, !dbg !3606, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %5, metadata !2575, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !3603
  %6 = or i32 %5, 67108864, !dbg !3607
  store i32 %6, i32* %4, align 4, !dbg !3607, !tbaa !720
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #33, !dbg !3608
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #33, !dbg !3609
  ret i8* %7, !dbg !3610
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3611 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3613, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i64 %1, metadata !3614, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i8* %0, metadata !3543, metadata !DIExpression()) #33, !dbg !3616
  call void @llvm.dbg.value(metadata i64 %1, metadata !3544, metadata !DIExpression()) #33, !dbg !3616
  call void @llvm.dbg.value(metadata i8 58, metadata !3545, metadata !DIExpression()) #33, !dbg !3616
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3618
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3618
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3546, metadata !DIExpression()) #33, !dbg !3619
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !3620, !tbaa.struct !3551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2568, metadata !DIExpression()) #33, !dbg !3621
  call void @llvm.dbg.value(metadata i8 58, metadata !2569, metadata !DIExpression()) #33, !dbg !3621
  call void @llvm.dbg.value(metadata i32 1, metadata !2570, metadata !DIExpression()) #33, !dbg !3621
  call void @llvm.dbg.value(metadata i8 58, metadata !2571, metadata !DIExpression()) #33, !dbg !3621
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3623
  call void @llvm.dbg.value(metadata i32* %5, metadata !2572, metadata !DIExpression()) #33, !dbg !3621
  call void @llvm.dbg.value(metadata i32 26, metadata !2574, metadata !DIExpression()) #33, !dbg !3621
  %6 = load i32, i32* %5, align 4, !dbg !3624, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %6, metadata !2575, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !3621
  %7 = or i32 %6, 67108864, !dbg !3625
  store i32 %7, i32* %5, align 4, !dbg !3625, !tbaa !720
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !3626
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !3627
  ret i8* %8, !dbg !3628
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3629 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3631, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i32 %1, metadata !3632, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i8* %2, metadata !3633, metadata !DIExpression()), !dbg !3635
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3636
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3636
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3634, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 %1, metadata !3441, metadata !DIExpression()) #33, !dbg !3638
  call void @llvm.dbg.value(metadata i32 0, metadata !3446, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3638
  %6 = icmp eq i32 %1, 10, !dbg !3640
  br i1 %6, label %7, label %8, !dbg !3641

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !3642, !noalias !3643
  unreachable, !dbg !3642

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3446, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3638
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3646
  store i32 %1, i32* %9, align 8, !dbg !3646, !tbaa.struct !3551
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3646
  %11 = bitcast i32* %10 to i8*, !dbg !3646
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2568, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i8 58, metadata !2569, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i32 1, metadata !2570, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i8 58, metadata !2571, metadata !DIExpression()), !dbg !3647
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3649
  call void @llvm.dbg.value(metadata i32* %12, metadata !2572, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i32 26, metadata !2574, metadata !DIExpression()), !dbg !3647
  %13 = load i32, i32* %12, align 4, !dbg !3650, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %13, metadata !2575, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3647
  %14 = or i32 %13, 67108864, !dbg !3651
  store i32 %14, i32* %12, align 4, !dbg !3651, !tbaa !720
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3652
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3653
  ret i8* %15, !dbg !3654
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3655 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3659, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i8* %1, metadata !3660, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i8* %2, metadata !3661, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i8* %3, metadata !3662, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32 %0, metadata !3664, metadata !DIExpression()) #33, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %1, metadata !3669, metadata !DIExpression()) #33, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %2, metadata !3670, metadata !DIExpression()) #33, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %3, metadata !3671, metadata !DIExpression()) #33, !dbg !3674
  call void @llvm.dbg.value(metadata i64 -1, metadata !3672, metadata !DIExpression()) #33, !dbg !3674
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3676
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3676
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3673, metadata !DIExpression()) #33, !dbg !3677
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !3678, !tbaa.struct !3551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2608, metadata !DIExpression()) #33, !dbg !3679
  call void @llvm.dbg.value(metadata i8* %1, metadata !2609, metadata !DIExpression()) #33, !dbg !3679
  call void @llvm.dbg.value(metadata i8* %2, metadata !2610, metadata !DIExpression()) #33, !dbg !3679
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2608, metadata !DIExpression()) #33, !dbg !3679
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3681
  store i32 10, i32* %7, align 8, !dbg !3682, !tbaa !2550
  %8 = icmp ne i8* %1, null, !dbg !3683
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3684
  br i1 %10, label %12, label %11, !dbg !3684

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !3685
  unreachable, !dbg !3685

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3686
  store i8* %1, i8** %13, align 8, !dbg !3687, !tbaa !2623
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3688
  store i8* %2, i8** %14, align 8, !dbg !3689, !tbaa !2626
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #33, !dbg !3690
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3691
  ret i8* %15, !dbg !3692
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3665 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3664, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i8* %1, metadata !3669, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i8* %2, metadata !3670, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i8* %3, metadata !3671, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i64 %4, metadata !3672, metadata !DIExpression()), !dbg !3693
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3694
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #33, !dbg !3694
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3673, metadata !DIExpression()), !dbg !3695
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3696, !tbaa.struct !3551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2608, metadata !DIExpression()) #33, !dbg !3697
  call void @llvm.dbg.value(metadata i8* %1, metadata !2609, metadata !DIExpression()) #33, !dbg !3697
  call void @llvm.dbg.value(metadata i8* %2, metadata !2610, metadata !DIExpression()) #33, !dbg !3697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2608, metadata !DIExpression()) #33, !dbg !3697
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3699
  store i32 10, i32* %8, align 8, !dbg !3700, !tbaa !2550
  %9 = icmp ne i8* %1, null, !dbg !3701
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3702
  br i1 %11, label %13, label %12, !dbg !3702

12:                                               ; preds = %5
  tail call void @abort() #35, !dbg !3703
  unreachable, !dbg !3703

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3704
  store i8* %1, i8** %14, align 8, !dbg !3705, !tbaa !2623
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3706
  store i8* %2, i8** %15, align 8, !dbg !3707, !tbaa !2626
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3708
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #33, !dbg !3709
  ret i8* %16, !dbg !3710
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3711 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3715, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i8* %1, metadata !3716, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i8* %2, metadata !3717, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i32 0, metadata !3659, metadata !DIExpression()) #33, !dbg !3719
  call void @llvm.dbg.value(metadata i8* %0, metadata !3660, metadata !DIExpression()) #33, !dbg !3719
  call void @llvm.dbg.value(metadata i8* %1, metadata !3661, metadata !DIExpression()) #33, !dbg !3719
  call void @llvm.dbg.value(metadata i8* %2, metadata !3662, metadata !DIExpression()) #33, !dbg !3719
  call void @llvm.dbg.value(metadata i32 0, metadata !3664, metadata !DIExpression()) #33, !dbg !3721
  call void @llvm.dbg.value(metadata i8* %0, metadata !3669, metadata !DIExpression()) #33, !dbg !3721
  call void @llvm.dbg.value(metadata i8* %1, metadata !3670, metadata !DIExpression()) #33, !dbg !3721
  call void @llvm.dbg.value(metadata i8* %2, metadata !3671, metadata !DIExpression()) #33, !dbg !3721
  call void @llvm.dbg.value(metadata i64 -1, metadata !3672, metadata !DIExpression()) #33, !dbg !3721
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3723
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3723
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3673, metadata !DIExpression()) #33, !dbg !3724
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !3725, !tbaa.struct !3551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2608, metadata !DIExpression()) #33, !dbg !3726
  call void @llvm.dbg.value(metadata i8* %0, metadata !2609, metadata !DIExpression()) #33, !dbg !3726
  call void @llvm.dbg.value(metadata i8* %1, metadata !2610, metadata !DIExpression()) #33, !dbg !3726
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2608, metadata !DIExpression()) #33, !dbg !3726
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3728
  store i32 10, i32* %6, align 8, !dbg !3729, !tbaa !2550
  %7 = icmp ne i8* %0, null, !dbg !3730
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3731
  br i1 %9, label %11, label %10, !dbg !3731

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !3732
  unreachable, !dbg !3732

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3733
  store i8* %0, i8** %12, align 8, !dbg !3734, !tbaa !2623
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3735
  store i8* %1, i8** %13, align 8, !dbg !3736, !tbaa !2626
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #33, !dbg !3737
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !3738
  ret i8* %14, !dbg !3739
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3740 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3744, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i8* %1, metadata !3745, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i8* %2, metadata !3746, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i64 %3, metadata !3747, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i32 0, metadata !3664, metadata !DIExpression()) #33, !dbg !3749
  call void @llvm.dbg.value(metadata i8* %0, metadata !3669, metadata !DIExpression()) #33, !dbg !3749
  call void @llvm.dbg.value(metadata i8* %1, metadata !3670, metadata !DIExpression()) #33, !dbg !3749
  call void @llvm.dbg.value(metadata i8* %2, metadata !3671, metadata !DIExpression()) #33, !dbg !3749
  call void @llvm.dbg.value(metadata i64 %3, metadata !3672, metadata !DIExpression()) #33, !dbg !3749
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3751
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3751
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3673, metadata !DIExpression()) #33, !dbg !3752
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !3753, !tbaa.struct !3551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2608, metadata !DIExpression()) #33, !dbg !3754
  call void @llvm.dbg.value(metadata i8* %0, metadata !2609, metadata !DIExpression()) #33, !dbg !3754
  call void @llvm.dbg.value(metadata i8* %1, metadata !2610, metadata !DIExpression()) #33, !dbg !3754
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2608, metadata !DIExpression()) #33, !dbg !3754
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3756
  store i32 10, i32* %7, align 8, !dbg !3757, !tbaa !2550
  %8 = icmp ne i8* %0, null, !dbg !3758
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3759
  br i1 %10, label %12, label %11, !dbg !3759

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !3760
  unreachable, !dbg !3760

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3761
  store i8* %0, i8** %13, align 8, !dbg !3762, !tbaa !2623
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3763
  store i8* %1, i8** %14, align 8, !dbg !3764, !tbaa !2626
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #33, !dbg !3765
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !3766
  ret i8* %15, !dbg !3767
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3768 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3772, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8* %1, metadata !3773, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i64 %2, metadata !3774, metadata !DIExpression()), !dbg !3775
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3776
  ret i8* %4, !dbg !3777
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3778 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3782, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64 %1, metadata !3783, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i32 0, metadata !3772, metadata !DIExpression()) #33, !dbg !3785
  call void @llvm.dbg.value(metadata i8* %0, metadata !3773, metadata !DIExpression()) #33, !dbg !3785
  call void @llvm.dbg.value(metadata i64 %1, metadata !3774, metadata !DIExpression()) #33, !dbg !3785
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !3787
  ret i8* %3, !dbg !3788
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3789 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3793, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i8* %1, metadata !3794, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %0, metadata !3772, metadata !DIExpression()) #33, !dbg !3796
  call void @llvm.dbg.value(metadata i8* %1, metadata !3773, metadata !DIExpression()) #33, !dbg !3796
  call void @llvm.dbg.value(metadata i64 -1, metadata !3774, metadata !DIExpression()) #33, !dbg !3796
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !3798
  ret i8* %3, !dbg !3799
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3800 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3804, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i32 0, metadata !3793, metadata !DIExpression()) #33, !dbg !3806
  call void @llvm.dbg.value(metadata i8* %0, metadata !3794, metadata !DIExpression()) #33, !dbg !3806
  call void @llvm.dbg.value(metadata i32 0, metadata !3772, metadata !DIExpression()) #33, !dbg !3808
  call void @llvm.dbg.value(metadata i8* %0, metadata !3773, metadata !DIExpression()) #33, !dbg !3808
  call void @llvm.dbg.value(metadata i64 -1, metadata !3774, metadata !DIExpression()) #33, !dbg !3808
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !3810
  ret i8* %2, !dbg !3811
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3812 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3851, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i8* %1, metadata !3852, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i8* %2, metadata !3853, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i8* %3, metadata !3854, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i8** %4, metadata !3855, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i64 %5, metadata !3856, metadata !DIExpression()), !dbg !3857
  %7 = icmp eq i8* %1, null, !dbg !3858
  br i1 %7, label %10, label %8, !dbg !3860

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.130, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #33, !dbg !3861
  br label %12, !dbg !3861

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.131, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #33, !dbg !3862
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.133, i64 0, i64 0), i32 noundef 5) #33, !dbg !3863
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #33, !dbg !3863
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.134, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3864
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.135, i64 0, i64 0), i32 noundef 5) #33, !dbg !3865
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.136, i64 0, i64 0)) #33, !dbg !3865
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.134, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3866
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
  ], !dbg !3867

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.137, i64 0, i64 0), i32 noundef 5) #33, !dbg !3868
  %21 = load i8*, i8** %4, align 8, !dbg !3868, !tbaa !624
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #33, !dbg !3868
  br label %147, !dbg !3870

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.138, i64 0, i64 0), i32 noundef 5) #33, !dbg !3871
  %25 = load i8*, i8** %4, align 8, !dbg !3871, !tbaa !624
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3871
  %27 = load i8*, i8** %26, align 8, !dbg !3871, !tbaa !624
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #33, !dbg !3871
  br label %147, !dbg !3872

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.139, i64 0, i64 0), i32 noundef 5) #33, !dbg !3873
  %31 = load i8*, i8** %4, align 8, !dbg !3873, !tbaa !624
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3873
  %33 = load i8*, i8** %32, align 8, !dbg !3873, !tbaa !624
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3873
  %35 = load i8*, i8** %34, align 8, !dbg !3873, !tbaa !624
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #33, !dbg !3873
  br label %147, !dbg !3874

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.140, i64 0, i64 0), i32 noundef 5) #33, !dbg !3875
  %39 = load i8*, i8** %4, align 8, !dbg !3875, !tbaa !624
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3875
  %41 = load i8*, i8** %40, align 8, !dbg !3875, !tbaa !624
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3875
  %43 = load i8*, i8** %42, align 8, !dbg !3875, !tbaa !624
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3875
  %45 = load i8*, i8** %44, align 8, !dbg !3875, !tbaa !624
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #33, !dbg !3875
  br label %147, !dbg !3876

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.141, i64 0, i64 0), i32 noundef 5) #33, !dbg !3877
  %49 = load i8*, i8** %4, align 8, !dbg !3877, !tbaa !624
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3877
  %51 = load i8*, i8** %50, align 8, !dbg !3877, !tbaa !624
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3877
  %53 = load i8*, i8** %52, align 8, !dbg !3877, !tbaa !624
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3877
  %55 = load i8*, i8** %54, align 8, !dbg !3877, !tbaa !624
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3877
  %57 = load i8*, i8** %56, align 8, !dbg !3877, !tbaa !624
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #33, !dbg !3877
  br label %147, !dbg !3878

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.142, i64 0, i64 0), i32 noundef 5) #33, !dbg !3879
  %61 = load i8*, i8** %4, align 8, !dbg !3879, !tbaa !624
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3879
  %63 = load i8*, i8** %62, align 8, !dbg !3879, !tbaa !624
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3879
  %65 = load i8*, i8** %64, align 8, !dbg !3879, !tbaa !624
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3879
  %67 = load i8*, i8** %66, align 8, !dbg !3879, !tbaa !624
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3879
  %69 = load i8*, i8** %68, align 8, !dbg !3879, !tbaa !624
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3879
  %71 = load i8*, i8** %70, align 8, !dbg !3879, !tbaa !624
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #33, !dbg !3879
  br label %147, !dbg !3880

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.143, i64 0, i64 0), i32 noundef 5) #33, !dbg !3881
  %75 = load i8*, i8** %4, align 8, !dbg !3881, !tbaa !624
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3881
  %77 = load i8*, i8** %76, align 8, !dbg !3881, !tbaa !624
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3881
  %79 = load i8*, i8** %78, align 8, !dbg !3881, !tbaa !624
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3881
  %81 = load i8*, i8** %80, align 8, !dbg !3881, !tbaa !624
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3881
  %83 = load i8*, i8** %82, align 8, !dbg !3881, !tbaa !624
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3881
  %85 = load i8*, i8** %84, align 8, !dbg !3881, !tbaa !624
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3881
  %87 = load i8*, i8** %86, align 8, !dbg !3881, !tbaa !624
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #33, !dbg !3881
  br label %147, !dbg !3882

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.144, i64 0, i64 0), i32 noundef 5) #33, !dbg !3883
  %91 = load i8*, i8** %4, align 8, !dbg !3883, !tbaa !624
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3883
  %93 = load i8*, i8** %92, align 8, !dbg !3883, !tbaa !624
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3883
  %95 = load i8*, i8** %94, align 8, !dbg !3883, !tbaa !624
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3883
  %97 = load i8*, i8** %96, align 8, !dbg !3883, !tbaa !624
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3883
  %99 = load i8*, i8** %98, align 8, !dbg !3883, !tbaa !624
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3883
  %101 = load i8*, i8** %100, align 8, !dbg !3883, !tbaa !624
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3883
  %103 = load i8*, i8** %102, align 8, !dbg !3883, !tbaa !624
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3883
  %105 = load i8*, i8** %104, align 8, !dbg !3883, !tbaa !624
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #33, !dbg !3883
  br label %147, !dbg !3884

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.145, i64 0, i64 0), i32 noundef 5) #33, !dbg !3885
  %109 = load i8*, i8** %4, align 8, !dbg !3885, !tbaa !624
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3885
  %111 = load i8*, i8** %110, align 8, !dbg !3885, !tbaa !624
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3885
  %113 = load i8*, i8** %112, align 8, !dbg !3885, !tbaa !624
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3885
  %115 = load i8*, i8** %114, align 8, !dbg !3885, !tbaa !624
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3885
  %117 = load i8*, i8** %116, align 8, !dbg !3885, !tbaa !624
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3885
  %119 = load i8*, i8** %118, align 8, !dbg !3885, !tbaa !624
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3885
  %121 = load i8*, i8** %120, align 8, !dbg !3885, !tbaa !624
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3885
  %123 = load i8*, i8** %122, align 8, !dbg !3885, !tbaa !624
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3885
  %125 = load i8*, i8** %124, align 8, !dbg !3885, !tbaa !624
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #33, !dbg !3885
  br label %147, !dbg !3886

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.146, i64 0, i64 0), i32 noundef 5) #33, !dbg !3887
  %129 = load i8*, i8** %4, align 8, !dbg !3887, !tbaa !624
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3887
  %131 = load i8*, i8** %130, align 8, !dbg !3887, !tbaa !624
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3887
  %133 = load i8*, i8** %132, align 8, !dbg !3887, !tbaa !624
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3887
  %135 = load i8*, i8** %134, align 8, !dbg !3887, !tbaa !624
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3887
  %137 = load i8*, i8** %136, align 8, !dbg !3887, !tbaa !624
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3887
  %139 = load i8*, i8** %138, align 8, !dbg !3887, !tbaa !624
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3887
  %141 = load i8*, i8** %140, align 8, !dbg !3887, !tbaa !624
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3887
  %143 = load i8*, i8** %142, align 8, !dbg !3887, !tbaa !624
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3887
  %145 = load i8*, i8** %144, align 8, !dbg !3887, !tbaa !624
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #33, !dbg !3887
  br label %147, !dbg !3888

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3889
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3890 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3894, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i8* %1, metadata !3895, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i8* %2, metadata !3896, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i8* %3, metadata !3897, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i8** %4, metadata !3898, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i64 0, metadata !3899, metadata !DIExpression()), !dbg !3900
  br label %6, !dbg !3901

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3903
  call void @llvm.dbg.value(metadata i64 %7, metadata !3899, metadata !DIExpression()), !dbg !3900
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3904
  %9 = load i8*, i8** %8, align 8, !dbg !3904, !tbaa !624
  %10 = icmp eq i8* %9, null, !dbg !3906
  %11 = add i64 %7, 1, !dbg !3907
  call void @llvm.dbg.value(metadata i64 %11, metadata !3899, metadata !DIExpression()), !dbg !3900
  br i1 %10, label %12, label %6, !dbg !3906, !llvm.loop !3908

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3910
  ret void, !dbg !3911
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3912 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3927, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i8* %1, metadata !3928, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i8* %2, metadata !3929, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i8* %3, metadata !3930, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3931, metadata !DIExpression()), !dbg !3936
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3937
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #33, !dbg !3937
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3933, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i64 0, metadata !3932, metadata !DIExpression()), !dbg !3935
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3932, metadata !DIExpression()), !dbg !3935
  %11 = load i32, i32* %8, align 8, !dbg !3939
  %12 = icmp sgt i32 %11, -1, !dbg !3939
  br i1 %12, label %20, label %13, !dbg !3939

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3939
  store i32 %14, i32* %8, align 8, !dbg !3939
  %15 = icmp ult i32 %11, -7, !dbg !3939
  br i1 %15, label %16, label %20, !dbg !3939

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3939
  %18 = sext i32 %11 to i64, !dbg !3939
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3939
  br label %24, !dbg !3939

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3939
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3939
  store i8* %23, i8** %10, align 8, !dbg !3939
  br label %24, !dbg !3939

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3939
  %28 = load i8*, i8** %27, align 8, !dbg !3939
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3942
  store i8* %28, i8** %29, align 8, !dbg !3943, !tbaa !624
  %30 = icmp eq i8* %28, null, !dbg !3944
  br i1 %30, label %210, label %31, !dbg !3945

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3932, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 1, metadata !3932, metadata !DIExpression()), !dbg !3935
  %32 = icmp sgt i32 %25, -1, !dbg !3939
  br i1 %32, label %40, label %33, !dbg !3939

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3939
  store i32 %34, i32* %8, align 8, !dbg !3939
  %35 = icmp ult i32 %25, -7, !dbg !3939
  br i1 %35, label %36, label %40, !dbg !3939

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3939
  %38 = sext i32 %25 to i64, !dbg !3939
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3939
  br label %44, !dbg !3939

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3939
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3939
  store i8* %43, i8** %10, align 8, !dbg !3939
  br label %44, !dbg !3939

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3939
  %48 = load i8*, i8** %47, align 8, !dbg !3939
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3942
  store i8* %48, i8** %49, align 8, !dbg !3943, !tbaa !624
  %50 = icmp eq i8* %48, null, !dbg !3944
  br i1 %50, label %210, label %51, !dbg !3945

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3932, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 2, metadata !3932, metadata !DIExpression()), !dbg !3935
  %52 = icmp sgt i32 %45, -1, !dbg !3939
  br i1 %52, label %60, label %53, !dbg !3939

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3939
  store i32 %54, i32* %8, align 8, !dbg !3939
  %55 = icmp ult i32 %45, -7, !dbg !3939
  br i1 %55, label %56, label %60, !dbg !3939

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3939
  %58 = sext i32 %45 to i64, !dbg !3939
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3939
  br label %64, !dbg !3939

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3939
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3939
  store i8* %63, i8** %10, align 8, !dbg !3939
  br label %64, !dbg !3939

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3939
  %68 = load i8*, i8** %67, align 8, !dbg !3939
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3942
  store i8* %68, i8** %69, align 8, !dbg !3943, !tbaa !624
  %70 = icmp eq i8* %68, null, !dbg !3944
  br i1 %70, label %210, label %71, !dbg !3945

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3932, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 3, metadata !3932, metadata !DIExpression()), !dbg !3935
  %72 = icmp sgt i32 %65, -1, !dbg !3939
  br i1 %72, label %80, label %73, !dbg !3939

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3939
  store i32 %74, i32* %8, align 8, !dbg !3939
  %75 = icmp ult i32 %65, -7, !dbg !3939
  br i1 %75, label %76, label %80, !dbg !3939

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3939
  %78 = sext i32 %65 to i64, !dbg !3939
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3939
  br label %84, !dbg !3939

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3939
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3939
  store i8* %83, i8** %10, align 8, !dbg !3939
  br label %84, !dbg !3939

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3939
  %88 = load i8*, i8** %87, align 8, !dbg !3939
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3942
  store i8* %88, i8** %89, align 8, !dbg !3943, !tbaa !624
  %90 = icmp eq i8* %88, null, !dbg !3944
  br i1 %90, label %210, label %91, !dbg !3945

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3932, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 4, metadata !3932, metadata !DIExpression()), !dbg !3935
  %92 = icmp sgt i32 %85, -1, !dbg !3939
  br i1 %92, label %100, label %93, !dbg !3939

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3939
  store i32 %94, i32* %8, align 8, !dbg !3939
  %95 = icmp ult i32 %85, -7, !dbg !3939
  br i1 %95, label %96, label %100, !dbg !3939

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3939
  %98 = sext i32 %85 to i64, !dbg !3939
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3939
  br label %104, !dbg !3939

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3939
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3939
  store i8* %103, i8** %10, align 8, !dbg !3939
  br label %104, !dbg !3939

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3939
  %108 = load i8*, i8** %107, align 8, !dbg !3939
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3942
  store i8* %108, i8** %109, align 8, !dbg !3943, !tbaa !624
  %110 = icmp eq i8* %108, null, !dbg !3944
  br i1 %110, label %210, label %111, !dbg !3945

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3932, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 5, metadata !3932, metadata !DIExpression()), !dbg !3935
  %112 = icmp sgt i32 %105, -1, !dbg !3939
  br i1 %112, label %120, label %113, !dbg !3939

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3939
  store i32 %114, i32* %8, align 8, !dbg !3939
  %115 = icmp ult i32 %105, -7, !dbg !3939
  br i1 %115, label %116, label %120, !dbg !3939

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3939
  %118 = sext i32 %105 to i64, !dbg !3939
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3939
  br label %124, !dbg !3939

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3939
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3939
  store i8* %123, i8** %10, align 8, !dbg !3939
  br label %124, !dbg !3939

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3939
  %128 = load i8*, i8** %127, align 8, !dbg !3939
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3942
  store i8* %128, i8** %129, align 8, !dbg !3943, !tbaa !624
  %130 = icmp eq i8* %128, null, !dbg !3944
  br i1 %130, label %210, label %131, !dbg !3945

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3932, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 6, metadata !3932, metadata !DIExpression()), !dbg !3935
  %132 = icmp sgt i32 %125, -1, !dbg !3939
  br i1 %132, label %140, label %133, !dbg !3939

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3939
  store i32 %134, i32* %8, align 8, !dbg !3939
  %135 = icmp ult i32 %125, -7, !dbg !3939
  br i1 %135, label %136, label %140, !dbg !3939

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3939
  %138 = sext i32 %125 to i64, !dbg !3939
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3939
  br label %144, !dbg !3939

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3939
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3939
  store i8* %143, i8** %10, align 8, !dbg !3939
  br label %144, !dbg !3939

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3939
  %148 = load i8*, i8** %147, align 8, !dbg !3939
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3942
  store i8* %148, i8** %149, align 8, !dbg !3943, !tbaa !624
  %150 = icmp eq i8* %148, null, !dbg !3944
  br i1 %150, label %210, label %151, !dbg !3945

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3932, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 7, metadata !3932, metadata !DIExpression()), !dbg !3935
  %152 = icmp sgt i32 %145, -1, !dbg !3939
  br i1 %152, label %160, label %153, !dbg !3939

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3939
  store i32 %154, i32* %8, align 8, !dbg !3939
  %155 = icmp ult i32 %145, -7, !dbg !3939
  br i1 %155, label %156, label %160, !dbg !3939

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3939
  %158 = sext i32 %145 to i64, !dbg !3939
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3939
  br label %164, !dbg !3939

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3939
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3939
  store i8* %163, i8** %10, align 8, !dbg !3939
  br label %164, !dbg !3939

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3939
  %168 = load i8*, i8** %167, align 8, !dbg !3939
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3942
  store i8* %168, i8** %169, align 8, !dbg !3943, !tbaa !624
  %170 = icmp eq i8* %168, null, !dbg !3944
  br i1 %170, label %210, label %171, !dbg !3945

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3932, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 8, metadata !3932, metadata !DIExpression()), !dbg !3935
  %172 = icmp sgt i32 %165, -1, !dbg !3939
  br i1 %172, label %180, label %173, !dbg !3939

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3939
  store i32 %174, i32* %8, align 8, !dbg !3939
  %175 = icmp ult i32 %165, -7, !dbg !3939
  br i1 %175, label %176, label %180, !dbg !3939

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3939
  %178 = sext i32 %165 to i64, !dbg !3939
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3939
  br label %184, !dbg !3939

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3939
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3939
  store i8* %183, i8** %10, align 8, !dbg !3939
  br label %184, !dbg !3939

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3939
  %188 = load i8*, i8** %187, align 8, !dbg !3939
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3942
  store i8* %188, i8** %189, align 8, !dbg !3943, !tbaa !624
  %190 = icmp eq i8* %188, null, !dbg !3944
  br i1 %190, label %210, label %191, !dbg !3945

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3932, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 9, metadata !3932, metadata !DIExpression()), !dbg !3935
  %192 = icmp sgt i32 %185, -1, !dbg !3939
  br i1 %192, label %200, label %193, !dbg !3939

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3939
  store i32 %194, i32* %8, align 8, !dbg !3939
  %195 = icmp ult i32 %185, -7, !dbg !3939
  br i1 %195, label %196, label %200, !dbg !3939

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3939
  %198 = sext i32 %185 to i64, !dbg !3939
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3939
  br label %203, !dbg !3939

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3939
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3939
  store i8* %202, i8** %10, align 8, !dbg !3939
  br label %203, !dbg !3939

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3939
  %206 = load i8*, i8** %205, align 8, !dbg !3939
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3942
  store i8* %206, i8** %207, align 8, !dbg !3943, !tbaa !624
  %208 = icmp eq i8* %206, null, !dbg !3944
  %209 = select i1 %208, i64 9, i64 10, !dbg !3945
  br label %210, !dbg !3945

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3946
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3947
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #33, !dbg !3948
  ret void, !dbg !3948
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3949 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3953, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i8* %1, metadata !3954, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i8* %2, metadata !3955, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i8* %3, metadata !3956, metadata !DIExpression()), !dbg !3958
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3959
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !3959
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3957, metadata !DIExpression()), !dbg !3960
  call void @llvm.va_start(i8* nonnull %7), !dbg !3961
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3962
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !3962
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3962, !tbaa.struct !1940
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3962
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !3962
  call void @llvm.va_end(i8* nonnull %7), !dbg !3963
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !3964
  ret void, !dbg !3964
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3965 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3966, !tbaa !624
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.134, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3966
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.151, i64 0, i64 0), i32 noundef 5) #33, !dbg !3967
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.152, i64 0, i64 0)) #33, !dbg !3967
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.153, i64 0, i64 0), i32 noundef 5) #33, !dbg !3968
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.154, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.155, i64 0, i64 0)) #33, !dbg !3968
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.132, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.156, i64 0, i64 0), i32 noundef 5) #33, !dbg !3969
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.157, i64 0, i64 0)) #33, !dbg !3969
  ret void, !dbg !3970
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !3971 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3976, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i64 %1, metadata !3977, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i64 %2, metadata !3978, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i8* %0, metadata !3980, metadata !DIExpression()) #33, !dbg !3985
  call void @llvm.dbg.value(metadata i64 %1, metadata !3983, metadata !DIExpression()) #33, !dbg !3985
  call void @llvm.dbg.value(metadata i64 %2, metadata !3984, metadata !DIExpression()) #33, !dbg !3985
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3987
  call void @llvm.dbg.value(metadata i8* %4, metadata !3988, metadata !DIExpression()) #33, !dbg !3993
  %5 = icmp eq i8* %4, null, !dbg !3995
  br i1 %5, label %6, label %7, !dbg !3997

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3998
  unreachable, !dbg !3998

7:                                                ; preds = %3
  ret i8* %4, !dbg !3999
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3981 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3980, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i64 %1, metadata !3983, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i64 %2, metadata !3984, metadata !DIExpression()), !dbg !4000
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !4001
  call void @llvm.dbg.value(metadata i8* %4, metadata !3988, metadata !DIExpression()) #33, !dbg !4002
  %5 = icmp eq i8* %4, null, !dbg !4004
  br i1 %5, label %6, label %7, !dbg !4005

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !4006
  unreachable, !dbg !4006

7:                                                ; preds = %3
  ret i8* %4, !dbg !4007
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !4008 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4012, metadata !DIExpression()), !dbg !4013
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !4014
  call void @llvm.dbg.value(metadata i8* %2, metadata !3988, metadata !DIExpression()) #33, !dbg !4015
  %3 = icmp eq i8* %2, null, !dbg !4017
  br i1 %3, label %4, label %5, !dbg !4018

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !4019
  unreachable, !dbg !4019

5:                                                ; preds = %1
  ret i8* %2, !dbg !4020
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !4021 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4025, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 %0, metadata !4027, metadata !DIExpression()) #33, !dbg !4031
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !4033
  call void @llvm.dbg.value(metadata i8* %2, metadata !3988, metadata !DIExpression()) #33, !dbg !4034
  %3 = icmp eq i8* %2, null, !dbg !4036
  br i1 %3, label %4, label %5, !dbg !4037

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !4038
  unreachable, !dbg !4038

5:                                                ; preds = %1
  ret i8* %2, !dbg !4039
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !4040 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4044, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i64 %0, metadata !4012, metadata !DIExpression()) #33, !dbg !4046
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !4048
  call void @llvm.dbg.value(metadata i8* %2, metadata !3988, metadata !DIExpression()) #33, !dbg !4049
  %3 = icmp eq i8* %2, null, !dbg !4051
  br i1 %3, label %4, label %5, !dbg !4052

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !4053
  unreachable, !dbg !4053

5:                                                ; preds = %1
  ret i8* %2, !dbg !4054
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !4055 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4059, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i64 %1, metadata !4060, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i8* %0, metadata !4062, metadata !DIExpression()) #33, !dbg !4067
  call void @llvm.dbg.value(metadata i64 %1, metadata !4066, metadata !DIExpression()) #33, !dbg !4067
  %3 = icmp eq i64 %1, 0, !dbg !4069
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4069
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !4070
  call void @llvm.dbg.value(metadata i8* %5, metadata !3988, metadata !DIExpression()) #33, !dbg !4071
  %6 = icmp eq i8* %5, null, !dbg !4073
  br i1 %6, label %7, label %8, !dbg !4074

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4075
  unreachable, !dbg !4075

8:                                                ; preds = %2
  ret i8* %5, !dbg !4076
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !4077 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4081, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i64 %1, metadata !4082, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i8* %0, metadata !4084, metadata !DIExpression()) #33, !dbg !4088
  call void @llvm.dbg.value(metadata i64 %1, metadata !4087, metadata !DIExpression()) #33, !dbg !4088
  call void @llvm.dbg.value(metadata i8* %0, metadata !4062, metadata !DIExpression()) #33, !dbg !4090
  call void @llvm.dbg.value(metadata i64 %1, metadata !4066, metadata !DIExpression()) #33, !dbg !4090
  %3 = icmp eq i64 %1, 0, !dbg !4092
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4092
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !4093
  call void @llvm.dbg.value(metadata i8* %5, metadata !3988, metadata !DIExpression()) #33, !dbg !4094
  %6 = icmp eq i8* %5, null, !dbg !4096
  br i1 %6, label %7, label %8, !dbg !4097

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4098
  unreachable, !dbg !4098

8:                                                ; preds = %2
  ret i8* %5, !dbg !4099
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !4100 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4104, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i64 %1, metadata !4105, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i64 %2, metadata !4106, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i8* %0, metadata !4108, metadata !DIExpression()) #33, !dbg !4113
  call void @llvm.dbg.value(metadata i64 %1, metadata !4111, metadata !DIExpression()) #33, !dbg !4113
  call void @llvm.dbg.value(metadata i64 %2, metadata !4112, metadata !DIExpression()) #33, !dbg !4113
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !4115
  call void @llvm.dbg.value(metadata i8* %4, metadata !3988, metadata !DIExpression()) #33, !dbg !4116
  %5 = icmp eq i8* %4, null, !dbg !4118
  br i1 %5, label %6, label %7, !dbg !4119

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !4120
  unreachable, !dbg !4120

7:                                                ; preds = %3
  ret i8* %4, !dbg !4121
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4122 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4126, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 %1, metadata !4127, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i8* null, metadata !3980, metadata !DIExpression()) #33, !dbg !4129
  call void @llvm.dbg.value(metadata i64 %0, metadata !3983, metadata !DIExpression()) #33, !dbg !4129
  call void @llvm.dbg.value(metadata i64 %1, metadata !3984, metadata !DIExpression()) #33, !dbg !4129
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !4131
  call void @llvm.dbg.value(metadata i8* %3, metadata !3988, metadata !DIExpression()) #33, !dbg !4132
  %4 = icmp eq i8* %3, null, !dbg !4134
  br i1 %4, label %5, label %6, !dbg !4135

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4136
  unreachable, !dbg !4136

6:                                                ; preds = %2
  ret i8* %3, !dbg !4137
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4138 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4142, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i64 %1, metadata !4143, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i8* null, metadata !4104, metadata !DIExpression()) #33, !dbg !4145
  call void @llvm.dbg.value(metadata i64 %0, metadata !4105, metadata !DIExpression()) #33, !dbg !4145
  call void @llvm.dbg.value(metadata i64 %1, metadata !4106, metadata !DIExpression()) #33, !dbg !4145
  call void @llvm.dbg.value(metadata i8* null, metadata !4108, metadata !DIExpression()) #33, !dbg !4147
  call void @llvm.dbg.value(metadata i64 %0, metadata !4111, metadata !DIExpression()) #33, !dbg !4147
  call void @llvm.dbg.value(metadata i64 %1, metadata !4112, metadata !DIExpression()) #33, !dbg !4147
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !4149
  call void @llvm.dbg.value(metadata i8* %3, metadata !3988, metadata !DIExpression()) #33, !dbg !4150
  %4 = icmp eq i8* %3, null, !dbg !4152
  br i1 %4, label %5, label %6, !dbg !4153

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4154
  unreachable, !dbg !4154

6:                                                ; preds = %2
  ret i8* %3, !dbg !4155
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !4156 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4160, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i64* %1, metadata !4161, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i8* %0, metadata !564, metadata !DIExpression()) #33, !dbg !4163
  call void @llvm.dbg.value(metadata i64* %1, metadata !565, metadata !DIExpression()) #33, !dbg !4163
  call void @llvm.dbg.value(metadata i64 1, metadata !566, metadata !DIExpression()) #33, !dbg !4163
  %3 = load i64, i64* %1, align 8, !dbg !4165, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %3, metadata !567, metadata !DIExpression()) #33, !dbg !4163
  %4 = icmp eq i8* %0, null, !dbg !4166
  br i1 %4, label %5, label %8, !dbg !4168

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4169
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4172
  br label %15, !dbg !4172

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4173
  %10 = add nuw i64 %9, 1, !dbg !4173
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #33, !dbg !4173
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4173
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4173
  call void @llvm.dbg.value(metadata i64 %13, metadata !567, metadata !DIExpression()) #33, !dbg !4163
  br i1 %12, label %14, label %15, !dbg !4176

14:                                               ; preds = %8
  tail call void @xalloc_die() #35, !dbg !4177
  unreachable, !dbg !4177

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4163
  call void @llvm.dbg.value(metadata i64 %16, metadata !567, metadata !DIExpression()) #33, !dbg !4163
  call void @llvm.dbg.value(metadata i8* %0, metadata !3980, metadata !DIExpression()) #33, !dbg !4178
  call void @llvm.dbg.value(metadata i64 %16, metadata !3983, metadata !DIExpression()) #33, !dbg !4178
  call void @llvm.dbg.value(metadata i64 1, metadata !3984, metadata !DIExpression()) #33, !dbg !4178
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #33, !dbg !4180
  call void @llvm.dbg.value(metadata i8* %17, metadata !3988, metadata !DIExpression()) #33, !dbg !4181
  %18 = icmp eq i8* %17, null, !dbg !4183
  br i1 %18, label %19, label %20, !dbg !4184

19:                                               ; preds = %15
  tail call void @xalloc_die() #35, !dbg !4185
  unreachable, !dbg !4185

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !564, metadata !DIExpression()) #33, !dbg !4163
  store i64 %16, i64* %1, align 8, !dbg !4186, !tbaa !912
  ret i8* %17, !dbg !4187
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !559 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !564, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata i64* %1, metadata !565, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata i64 %2, metadata !566, metadata !DIExpression()), !dbg !4188
  %4 = load i64, i64* %1, align 8, !dbg !4189, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %4, metadata !567, metadata !DIExpression()), !dbg !4188
  %5 = icmp eq i8* %0, null, !dbg !4190
  br i1 %5, label %6, label %13, !dbg !4191

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4192
  br i1 %7, label %8, label %20, !dbg !4193

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4194
  call void @llvm.dbg.value(metadata i64 %9, metadata !567, metadata !DIExpression()), !dbg !4188
  %10 = icmp ugt i64 %2, 128, !dbg !4196
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4197
  call void @llvm.dbg.value(metadata i64 %12, metadata !567, metadata !DIExpression()), !dbg !4188
  br label %20, !dbg !4198

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4199
  %15 = add nuw i64 %14, 1, !dbg !4199
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4199
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4199
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4199
  call void @llvm.dbg.value(metadata i64 %18, metadata !567, metadata !DIExpression()), !dbg !4188
  br i1 %17, label %19, label %20, !dbg !4200

19:                                               ; preds = %13
  tail call void @xalloc_die() #35, !dbg !4201
  unreachable, !dbg !4201

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4188
  call void @llvm.dbg.value(metadata i64 %21, metadata !567, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata i8* %0, metadata !3980, metadata !DIExpression()) #33, !dbg !4202
  call void @llvm.dbg.value(metadata i64 %21, metadata !3983, metadata !DIExpression()) #33, !dbg !4202
  call void @llvm.dbg.value(metadata i64 %2, metadata !3984, metadata !DIExpression()) #33, !dbg !4202
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #33, !dbg !4204
  call void @llvm.dbg.value(metadata i8* %22, metadata !3988, metadata !DIExpression()) #33, !dbg !4205
  %23 = icmp eq i8* %22, null, !dbg !4207
  br i1 %23, label %24, label %25, !dbg !4208

24:                                               ; preds = %20
  tail call void @xalloc_die() #35, !dbg !4209
  unreachable, !dbg !4209

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !564, metadata !DIExpression()), !dbg !4188
  store i64 %21, i64* %1, align 8, !dbg !4210, !tbaa !912
  ret i8* %22, !dbg !4211
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !571 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !576, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64* %1, metadata !577, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %2, metadata !578, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %3, metadata !579, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %4, metadata !580, metadata !DIExpression()), !dbg !4212
  %6 = load i64, i64* %1, align 8, !dbg !4213, !tbaa !912
  call void @llvm.dbg.value(metadata i64 %6, metadata !581, metadata !DIExpression()), !dbg !4212
  %7 = ashr i64 %6, 1, !dbg !4214
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4214
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4214
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4214
  call void @llvm.dbg.value(metadata i64 %10, metadata !582, metadata !DIExpression()), !dbg !4212
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4216
  call void @llvm.dbg.value(metadata i64 %11, metadata !582, metadata !DIExpression()), !dbg !4212
  %12 = icmp sgt i64 %3, -1, !dbg !4217
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4219
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4219
  call void @llvm.dbg.value(metadata i64 %15, metadata !582, metadata !DIExpression()), !dbg !4212
  %16 = icmp slt i64 %4, 0, !dbg !4220
  br i1 %16, label %17, label %30, !dbg !4220

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4220
  br i1 %18, label %19, label %24, !dbg !4220

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4220
  %21 = udiv i64 9223372036854775807, %20, !dbg !4220
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4220
  br i1 %23, label %46, label %43, !dbg !4220

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4220
  br i1 %25, label %43, label %26, !dbg !4220

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4220
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4220
  %29 = icmp ult i64 %28, %15, !dbg !4220
  br i1 %29, label %46, label %43, !dbg !4220

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4220
  br i1 %31, label %43, label %32, !dbg !4220

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4220
  br i1 %33, label %34, label %40, !dbg !4220

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4220
  br i1 %35, label %43, label %36, !dbg !4220

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4220
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4220
  %39 = icmp ult i64 %38, %4, !dbg !4220
  br i1 %39, label %46, label %43, !dbg !4220

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !4220
  %42 = icmp ult i64 %41, %15, !dbg !4220
  br i1 %42, label %46, label %43, !dbg !4220

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !583, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4212
  %44 = mul i64 %15, %4, !dbg !4220
  call void @llvm.dbg.value(metadata i64 %44, metadata !583, metadata !DIExpression()), !dbg !4212
  %45 = icmp slt i64 %44, 128, !dbg !4220
  br i1 %45, label %46, label %52, !dbg !4220

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !584, metadata !DIExpression()), !dbg !4212
  %48 = sdiv i64 %47, %4, !dbg !4221
  call void @llvm.dbg.value(metadata i64 %48, metadata !582, metadata !DIExpression()), !dbg !4212
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4224
  call void @llvm.dbg.value(metadata i64 %51, metadata !583, metadata !DIExpression()), !dbg !4212
  br label %52, !dbg !4225

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4212
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4212
  call void @llvm.dbg.value(metadata i64 %54, metadata !583, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %53, metadata !582, metadata !DIExpression()), !dbg !4212
  %55 = icmp eq i8* %0, null, !dbg !4226
  br i1 %55, label %56, label %57, !dbg !4228

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !4229, !tbaa !912
  br label %57, !dbg !4230

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4231
  %59 = icmp slt i64 %58, %2, !dbg !4233
  br i1 %59, label %60, label %97, !dbg !4234

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4235
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4235
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4235
  call void @llvm.dbg.value(metadata i64 %63, metadata !582, metadata !DIExpression()), !dbg !4212
  br i1 %62, label %96, label %64, !dbg !4236

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !4237
  br i1 %66, label %96, label %67, !dbg !4237

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !4238

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4238
  br i1 %69, label %70, label %75, !dbg !4238

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4238
  %72 = udiv i64 9223372036854775807, %71, !dbg !4238
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4238
  br i1 %74, label %96, label %94, !dbg !4238

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4238
  br i1 %76, label %94, label %77, !dbg !4238

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4238
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4238
  %80 = icmp ult i64 %79, %63, !dbg !4238
  br i1 %80, label %96, label %94, !dbg !4238

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4238
  br i1 %82, label %94, label %83, !dbg !4238

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4238
  br i1 %84, label %85, label %91, !dbg !4238

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4238
  br i1 %86, label %94, label %87, !dbg !4238

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4238
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4238
  %90 = icmp ult i64 %89, %4, !dbg !4238
  br i1 %90, label %96, label %94, !dbg !4238

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !4238
  %93 = icmp ult i64 %92, %63, !dbg !4238
  br i1 %93, label %96, label %94, !dbg !4238

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !583, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4212
  %95 = mul i64 %63, %4, !dbg !4238
  call void @llvm.dbg.value(metadata i64 %95, metadata !583, metadata !DIExpression()), !dbg !4212
  br label %97, !dbg !4239

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #35, !dbg !4240
  unreachable, !dbg !4240

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4212
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4212
  call void @llvm.dbg.value(metadata i64 %99, metadata !583, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i64 %98, metadata !582, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i8* %0, metadata !4059, metadata !DIExpression()) #33, !dbg !4241
  call void @llvm.dbg.value(metadata i64 %99, metadata !4060, metadata !DIExpression()) #33, !dbg !4241
  call void @llvm.dbg.value(metadata i8* %0, metadata !4062, metadata !DIExpression()) #33, !dbg !4243
  call void @llvm.dbg.value(metadata i64 %99, metadata !4066, metadata !DIExpression()) #33, !dbg !4243
  %100 = icmp eq i64 %99, 0, !dbg !4245
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4245
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #33, !dbg !4246
  call void @llvm.dbg.value(metadata i8* %102, metadata !3988, metadata !DIExpression()) #33, !dbg !4247
  %103 = icmp eq i8* %102, null, !dbg !4249
  br i1 %103, label %104, label %105, !dbg !4250

104:                                              ; preds = %97
  tail call void @xalloc_die() #35, !dbg !4251
  unreachable, !dbg !4251

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !576, metadata !DIExpression()), !dbg !4212
  store i64 %98, i64* %1, align 8, !dbg !4252, !tbaa !912
  ret i8* %102, !dbg !4253
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !4254 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4256, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i64 %0, metadata !4258, metadata !DIExpression()) #33, !dbg !4262
  call void @llvm.dbg.value(metadata i64 1, metadata !4261, metadata !DIExpression()) #33, !dbg !4262
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !4264
  call void @llvm.dbg.value(metadata i8* %2, metadata !3988, metadata !DIExpression()) #33, !dbg !4265
  %3 = icmp eq i8* %2, null, !dbg !4267
  br i1 %3, label %4, label %5, !dbg !4268

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !4269
  unreachable, !dbg !4269

5:                                                ; preds = %1
  ret i8* %2, !dbg !4270
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4259 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4258, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i64 %1, metadata !4261, metadata !DIExpression()), !dbg !4271
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !4272
  call void @llvm.dbg.value(metadata i8* %3, metadata !3988, metadata !DIExpression()) #33, !dbg !4273
  %4 = icmp eq i8* %3, null, !dbg !4275
  br i1 %4, label %5, label %6, !dbg !4276

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4277
  unreachable, !dbg !4277

6:                                                ; preds = %2
  ret i8* %3, !dbg !4278
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !4279 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4281, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i64 %0, metadata !4283, metadata !DIExpression()) #33, !dbg !4287
  call void @llvm.dbg.value(metadata i64 1, metadata !4286, metadata !DIExpression()) #33, !dbg !4287
  call void @llvm.dbg.value(metadata i64 %0, metadata !4289, metadata !DIExpression()) #33, !dbg !4293
  call void @llvm.dbg.value(metadata i64 1, metadata !4292, metadata !DIExpression()) #33, !dbg !4293
  call void @llvm.dbg.value(metadata i64 %0, metadata !4289, metadata !DIExpression()) #33, !dbg !4293
  call void @llvm.dbg.value(metadata i64 1, metadata !4292, metadata !DIExpression()) #33, !dbg !4293
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !4295
  call void @llvm.dbg.value(metadata i8* %2, metadata !3988, metadata !DIExpression()) #33, !dbg !4296
  %3 = icmp eq i8* %2, null, !dbg !4298
  br i1 %3, label %4, label %5, !dbg !4299

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !4300
  unreachable, !dbg !4300

5:                                                ; preds = %1
  ret i8* %2, !dbg !4301
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !4284 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4283, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i64 %1, metadata !4286, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i64 %0, metadata !4289, metadata !DIExpression()) #33, !dbg !4303
  call void @llvm.dbg.value(metadata i64 %1, metadata !4292, metadata !DIExpression()) #33, !dbg !4303
  call void @llvm.dbg.value(metadata i64 %0, metadata !4289, metadata !DIExpression()) #33, !dbg !4303
  call void @llvm.dbg.value(metadata i64 %1, metadata !4292, metadata !DIExpression()) #33, !dbg !4303
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !4305
  call void @llvm.dbg.value(metadata i8* %3, metadata !3988, metadata !DIExpression()) #33, !dbg !4306
  %4 = icmp eq i8* %3, null, !dbg !4308
  br i1 %4, label %5, label %6, !dbg !4309

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4310
  unreachable, !dbg !4310

6:                                                ; preds = %2
  ret i8* %3, !dbg !4311
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !4312 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4316, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata i64 %1, metadata !4317, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata i64 %1, metadata !4012, metadata !DIExpression()) #33, !dbg !4319
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !4321
  call void @llvm.dbg.value(metadata i8* %3, metadata !3988, metadata !DIExpression()) #33, !dbg !4322
  %4 = icmp eq i8* %3, null, !dbg !4324
  br i1 %4, label %5, label %6, !dbg !4325

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4326
  unreachable, !dbg !4326

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4327, metadata !DIExpression()) #33, !dbg !4332
  call void @llvm.dbg.value(metadata i8* %0, metadata !4330, metadata !DIExpression()) #33, !dbg !4332
  call void @llvm.dbg.value(metadata i64 %1, metadata !4331, metadata !DIExpression()) #33, !dbg !4332
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !4334
  ret i8* %3, !dbg !4335
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !4336 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4340, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i64 %1, metadata !4341, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i64 %1, metadata !4025, metadata !DIExpression()) #33, !dbg !4343
  call void @llvm.dbg.value(metadata i64 %1, metadata !4027, metadata !DIExpression()) #33, !dbg !4345
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !4347
  call void @llvm.dbg.value(metadata i8* %3, metadata !3988, metadata !DIExpression()) #33, !dbg !4348
  %4 = icmp eq i8* %3, null, !dbg !4350
  br i1 %4, label %5, label %6, !dbg !4351

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4352
  unreachable, !dbg !4352

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4327, metadata !DIExpression()) #33, !dbg !4353
  call void @llvm.dbg.value(metadata i8* %0, metadata !4330, metadata !DIExpression()) #33, !dbg !4353
  call void @llvm.dbg.value(metadata i64 %1, metadata !4331, metadata !DIExpression()) #33, !dbg !4353
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !4355
  ret i8* %3, !dbg !4356
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4357 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4361, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i64 %1, metadata !4362, metadata !DIExpression()), !dbg !4364
  %3 = add nsw i64 %1, 1, !dbg !4365
  call void @llvm.dbg.value(metadata i64 %3, metadata !4025, metadata !DIExpression()) #33, !dbg !4366
  call void @llvm.dbg.value(metadata i64 %3, metadata !4027, metadata !DIExpression()) #33, !dbg !4368
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !4370
  call void @llvm.dbg.value(metadata i8* %4, metadata !3988, metadata !DIExpression()) #33, !dbg !4371
  %5 = icmp eq i8* %4, null, !dbg !4373
  br i1 %5, label %6, label %7, !dbg !4374

6:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !4375
  unreachable, !dbg !4375

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4363, metadata !DIExpression()), !dbg !4364
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4376
  store i8 0, i8* %8, align 1, !dbg !4377, !tbaa !729
  call void @llvm.dbg.value(metadata i8* %4, metadata !4327, metadata !DIExpression()) #33, !dbg !4378
  call void @llvm.dbg.value(metadata i8* %0, metadata !4330, metadata !DIExpression()) #33, !dbg !4378
  call void @llvm.dbg.value(metadata i64 %1, metadata !4331, metadata !DIExpression()) #33, !dbg !4378
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !4380
  ret i8* %4, !dbg !4381
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4382 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4384, metadata !DIExpression()), !dbg !4385
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #34, !dbg !4386
  %3 = add i64 %2, 1, !dbg !4387
  call void @llvm.dbg.value(metadata i8* %0, metadata !4316, metadata !DIExpression()) #33, !dbg !4388
  call void @llvm.dbg.value(metadata i64 %3, metadata !4317, metadata !DIExpression()) #33, !dbg !4388
  call void @llvm.dbg.value(metadata i64 %3, metadata !4012, metadata !DIExpression()) #33, !dbg !4390
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !4392
  call void @llvm.dbg.value(metadata i8* %4, metadata !3988, metadata !DIExpression()) #33, !dbg !4393
  %5 = icmp eq i8* %4, null, !dbg !4395
  br i1 %5, label %6, label %7, !dbg !4396

6:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !4397
  unreachable, !dbg !4397

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4327, metadata !DIExpression()) #33, !dbg !4398
  call void @llvm.dbg.value(metadata i8* %0, metadata !4330, metadata !DIExpression()) #33, !dbg !4398
  call void @llvm.dbg.value(metadata i64 %3, metadata !4331, metadata !DIExpression()) #33, !dbg !4398
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #33, !dbg !4400
  ret i8* %4, !dbg !4401
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4402 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4407, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %1, metadata !4404, metadata !DIExpression()), !dbg !4408
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.172, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.173, i64 0, i64 0), i32 noundef 5) #33, !dbg !4407
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.174, i64 0, i64 0), i8* noundef %2) #33, !dbg !4407
  %3 = icmp eq i32 %1, 0, !dbg !4407
  tail call void @llvm.assume(i1 %3), !dbg !4407
  tail call void @abort() #35, !dbg !4409
  unreachable, !dbg !4409
}

; Function Attrs: nounwind uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* nocapture noundef nonnull readonly %0, i8* nocapture noundef nonnull readonly %1) local_unnamed_addr #12 !dbg !4410 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !4448, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i8* %1, metadata !4449, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i32 0, metadata !4450, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i32 0, metadata !4451, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i8 0, metadata !4452, metadata !DIExpression()), !dbg !4472
  %4 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 0, !dbg !4473
  call void @llvm.lifetime.start.p0i8(i64 81, i8* nonnull %4) #33, !dbg !4473
  call void @llvm.dbg.declare(metadata [81 x i8]* %3, metadata !4453, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i8* %1, metadata !4457, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata i8* %4, metadata !4459, metadata !DIExpression()), !dbg !4475
  %5 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 80
  br label %6, !dbg !4476

6:                                                ; preds = %47, %2
  %7 = phi i1 [ false, %2 ], [ %48, %47 ]
  %8 = phi i8* [ %1, %2 ], [ %52, %47 ], !dbg !4475
  %9 = phi i8* [ %4, %2 ], [ %49, %47 ], !dbg !4477
  %10 = phi i32 [ 0, %2 ], [ %50, %47 ], !dbg !4472
  %11 = phi i32 [ 0, %2 ], [ %51, %47 ], !dbg !4478
  call void @llvm.dbg.value(metadata i32 %11, metadata !4450, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i32 %10, metadata !4451, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i8* %9, metadata !4459, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata i8* %8, metadata !4457, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata i8 poison, metadata !4452, metadata !DIExpression()), !dbg !4472
  %12 = load i8, i8* %8, align 1, !dbg !4479, !tbaa !729
  switch i8 %12, label %39 [
    i8 0, label %53
    i8 114, label %13
    i8 119, label %17
    i8 97, label %22
    i8 98, label %27
    i8 43, label %31
    i8 120, label %35
    i8 101, label %37
  ], !dbg !4480

13:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !4450, metadata !DIExpression()), !dbg !4472
  %14 = icmp ult i8* %9, %5, !dbg !4481
  br i1 %14, label %15, label %47, !dbg !4484

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4485
  call void @llvm.dbg.value(metadata i8* %16, metadata !4459, metadata !DIExpression()), !dbg !4475
  store i8 114, i8* %9, align 1, !dbg !4486, !tbaa !729
  br label %47, !dbg !4487

17:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4450, metadata !DIExpression()), !dbg !4472
  %18 = or i32 %10, 576, !dbg !4488
  call void @llvm.dbg.value(metadata i32 %18, metadata !4451, metadata !DIExpression()), !dbg !4472
  %19 = icmp ult i8* %9, %5, !dbg !4489
  br i1 %19, label %20, label %47, !dbg !4491

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4492
  call void @llvm.dbg.value(metadata i8* %21, metadata !4459, metadata !DIExpression()), !dbg !4475
  store i8 119, i8* %9, align 1, !dbg !4493, !tbaa !729
  br label %47, !dbg !4494

22:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4450, metadata !DIExpression()), !dbg !4472
  %23 = or i32 %10, 1088, !dbg !4495
  call void @llvm.dbg.value(metadata i32 %23, metadata !4451, metadata !DIExpression()), !dbg !4472
  %24 = icmp ult i8* %9, %5, !dbg !4496
  br i1 %24, label %25, label %47, !dbg !4498

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4499
  call void @llvm.dbg.value(metadata i8* %26, metadata !4459, metadata !DIExpression()), !dbg !4475
  store i8 97, i8* %9, align 1, !dbg !4500, !tbaa !729
  br label %47, !dbg !4501

27:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 %10, metadata !4451, metadata !DIExpression()), !dbg !4472
  %28 = icmp ult i8* %9, %5, !dbg !4502
  br i1 %28, label %29, label %47, !dbg !4504

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4505
  call void @llvm.dbg.value(metadata i8* %30, metadata !4459, metadata !DIExpression()), !dbg !4475
  store i8 98, i8* %9, align 1, !dbg !4506, !tbaa !729
  br label %47, !dbg !4507

31:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 2, metadata !4450, metadata !DIExpression()), !dbg !4472
  %32 = icmp ult i8* %9, %5, !dbg !4508
  br i1 %32, label %33, label %47, !dbg !4510

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4511
  call void @llvm.dbg.value(metadata i8* %34, metadata !4459, metadata !DIExpression()), !dbg !4475
  store i8 43, i8* %9, align 1, !dbg !4512, !tbaa !729
  br label %47, !dbg !4513

35:                                               ; preds = %6
  %36 = or i32 %10, 128, !dbg !4514
  call void @llvm.dbg.value(metadata i32 %36, metadata !4451, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i8 1, metadata !4452, metadata !DIExpression()), !dbg !4472
  br label %47, !dbg !4515

37:                                               ; preds = %6
  %38 = or i32 %10, 524288, !dbg !4516
  call void @llvm.dbg.value(metadata i32 %38, metadata !4451, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i8 1, metadata !4452, metadata !DIExpression()), !dbg !4472
  br label %47, !dbg !4517

39:                                               ; preds = %6
  %40 = call i64 @strlen(i8* noundef nonnull %8) #34, !dbg !4518
  call void @llvm.dbg.value(metadata i64 %40, metadata !4460, metadata !DIExpression()), !dbg !4519
  %41 = ptrtoint i8* %5 to i64, !dbg !4520
  %42 = ptrtoint i8* %9 to i64, !dbg !4520
  %43 = sub i64 %41, %42, !dbg !4520
  %44 = icmp ugt i64 %40, %43, !dbg !4522
  %45 = select i1 %44, i64 %43, i64 %40, !dbg !4523
  call void @llvm.dbg.value(metadata i64 %45, metadata !4460, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata i8* %9, metadata !4524, metadata !DIExpression()) #33, !dbg !4529
  call void @llvm.dbg.value(metadata i8* %8, metadata !4527, metadata !DIExpression()) #33, !dbg !4529
  call void @llvm.dbg.value(metadata i64 %45, metadata !4528, metadata !DIExpression()) #33, !dbg !4529
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %9, i8* noundef nonnull align 1 %8, i64 noundef %45, i1 noundef false) #33, !dbg !4531
  %46 = getelementptr inbounds i8, i8* %9, i64 %45, !dbg !4532
  call void @llvm.dbg.value(metadata i8* %46, metadata !4459, metadata !DIExpression()), !dbg !4475
  br label %53, !dbg !4533

47:                                               ; preds = %31, %33, %27, %29, %22, %25, %17, %20, %13, %15, %37, %35
  %48 = phi i1 [ true, %37 ], [ true, %35 ], [ %7, %33 ], [ %7, %31 ], [ %7, %29 ], [ %7, %27 ], [ %7, %25 ], [ %7, %22 ], [ %7, %20 ], [ %7, %17 ], [ %7, %15 ], [ %7, %13 ]
  %49 = phi i8* [ %9, %37 ], [ %9, %35 ], [ %34, %33 ], [ %9, %31 ], [ %30, %29 ], [ %9, %27 ], [ %26, %25 ], [ %9, %22 ], [ %21, %20 ], [ %9, %17 ], [ %16, %15 ], [ %9, %13 ], !dbg !4475
  %50 = phi i32 [ %38, %37 ], [ %36, %35 ], [ %10, %33 ], [ %10, %31 ], [ %10, %29 ], [ %10, %27 ], [ %23, %25 ], [ %23, %22 ], [ %18, %20 ], [ %18, %17 ], [ %10, %15 ], [ %10, %13 ], !dbg !4472
  %51 = phi i32 [ %11, %37 ], [ %11, %35 ], [ 2, %33 ], [ 2, %31 ], [ %11, %29 ], [ %11, %27 ], [ 1, %25 ], [ 1, %22 ], [ 1, %20 ], [ 1, %17 ], [ 0, %15 ], [ 0, %13 ], !dbg !4472
  call void @llvm.dbg.value(metadata i32 %51, metadata !4450, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i32 %50, metadata !4451, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i8* %49, metadata !4459, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata i8 poison, metadata !4452, metadata !DIExpression()), !dbg !4472
  %52 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4534
  call void @llvm.dbg.value(metadata i8* %52, metadata !4457, metadata !DIExpression()), !dbg !4475
  br label %6, !dbg !4535, !llvm.loop !4536

53:                                               ; preds = %6, %39
  %54 = phi i8* [ %46, %39 ], [ %9, %6 ], !dbg !4475
  call void @llvm.dbg.value(metadata i8* %54, metadata !4459, metadata !DIExpression()), !dbg !4475
  store i8 0, i8* %54, align 1, !dbg !4538, !tbaa !729
  br i1 %7, label %55, label %66, !dbg !4539

55:                                               ; preds = %53
  %56 = or i32 %11, %10, !dbg !4540
  %57 = call i32 (i8*, i32, ...) @open(i8* noundef nonnull %0, i32 noundef %56, i32 noundef 438) #33, !dbg !4541
  call void @llvm.dbg.value(metadata i32 %57, metadata !4465, metadata !DIExpression()), !dbg !4542
  %58 = icmp slt i32 %57, 0, !dbg !4543
  br i1 %58, label %68, label %59, !dbg !4545

59:                                               ; preds = %55
  %60 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %57, i8* noundef nonnull %4) #33, !dbg !4546
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %60, metadata !4468, metadata !DIExpression()), !dbg !4542
  %61 = icmp eq %struct._IO_FILE* %60, null, !dbg !4547
  br i1 %61, label %62, label %68, !dbg !4548

62:                                               ; preds = %59
  %63 = tail call i32* @__errno_location() #36, !dbg !4549
  %64 = load i32, i32* %63, align 4, !dbg !4549, !tbaa !720
  call void @llvm.dbg.value(metadata i32 %64, metadata !4469, metadata !DIExpression()), !dbg !4550
  %65 = call i32 @close(i32 noundef %57) #33, !dbg !4551
  store i32 %64, i32* %63, align 4, !dbg !4552, !tbaa !720
  br label %68, !dbg !4553

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %0, metadata !4554, metadata !DIExpression()) #33, !dbg !4558
  call void @llvm.dbg.value(metadata i8* %1, metadata !4557, metadata !DIExpression()) #33, !dbg !4558
  %67 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #33, !dbg !4560
  br label %68, !dbg !4561

68:                                               ; preds = %55, %62, %59, %66
  %69 = phi %struct._IO_FILE* [ %67, %66 ], [ null, %55 ], [ null, %62 ], [ %60, %59 ], !dbg !4472
  call void @llvm.lifetime.end.p0i8(i64 81, i8* nonnull %4) #33, !dbg !4562
  ret %struct._IO_FILE* %69, !dbg !4562
}

; Function Attrs: nofree
declare !dbg !4563 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #30

; Function Attrs: nofree nounwind
declare !dbg !4566 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4569 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4570 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4608, metadata !DIExpression()), !dbg !4613
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #33, !dbg !4614
  call void @llvm.dbg.value(metadata i1 undef, metadata !4609, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4613
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4615, metadata !DIExpression()), !dbg !4618
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4620
  %4 = load i32, i32* %3, align 8, !dbg !4620, !tbaa !947
  %5 = and i32 %4, 32, !dbg !4621
  %6 = icmp eq i32 %5, 0, !dbg !4621
  call void @llvm.dbg.value(metadata i1 %6, metadata !4611, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4613
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #33, !dbg !4622
  %8 = icmp eq i32 %7, 0, !dbg !4623
  call void @llvm.dbg.value(metadata i1 %8, metadata !4612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4613
  br i1 %6, label %9, label %19, !dbg !4624

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4626
  call void @llvm.dbg.value(metadata i1 %10, metadata !4609, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4613
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4627
  %12 = xor i1 %8, true, !dbg !4627
  %13 = sext i1 %12 to i32, !dbg !4627
  br i1 %11, label %22, label %14, !dbg !4627

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #36, !dbg !4628
  %16 = load i32, i32* %15, align 4, !dbg !4628, !tbaa !720
  %17 = icmp ne i32 %16, 9, !dbg !4629
  %18 = sext i1 %17 to i32, !dbg !4630
  br label %22, !dbg !4630

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4631

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #36, !dbg !4633
  store i32 0, i32* %21, align 4, !dbg !4635, !tbaa !720
  br label %22, !dbg !4633

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4613
  ret i32 %23, !dbg !4636
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4637 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4642, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i8* %1, metadata !4643, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i64 %2, metadata !4644, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4645, metadata !DIExpression()), !dbg !4647
  %5 = icmp eq i8* %1, null, !dbg !4648
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4650
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.181, i64 0, i64 0), i8* %1, !dbg !4650
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4650
  call void @llvm.dbg.value(metadata i64 %8, metadata !4644, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i8* %7, metadata !4643, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i32* %6, metadata !4642, metadata !DIExpression()), !dbg !4647
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4651
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4653
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4645, metadata !DIExpression()), !dbg !4647
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #33, !dbg !4654
  call void @llvm.dbg.value(metadata i64 %11, metadata !4646, metadata !DIExpression()), !dbg !4647
  %12 = icmp ult i64 %11, -3, !dbg !4655
  br i1 %12, label %13, label %18, !dbg !4657

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #34, !dbg !4658
  %15 = icmp eq i32 %14, 0, !dbg !4658
  br i1 %15, label %16, label %30, !dbg !4659

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4660, metadata !DIExpression()) #33, !dbg !4665
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4667, metadata !DIExpression()) #33, !dbg !4672
  call void @llvm.dbg.value(metadata i32 0, metadata !4670, metadata !DIExpression()) #33, !dbg !4672
  call void @llvm.dbg.value(metadata i64 8, metadata !4671, metadata !DIExpression()) #33, !dbg !4672
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4674
  store i64 0, i64* %17, align 1, !dbg !4674
  br label %30, !dbg !4675

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4676
  br i1 %19, label %20, label %21, !dbg !4678

20:                                               ; preds = %18
  tail call void @abort() #35, !dbg !4679
  unreachable, !dbg !4679

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4680

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #33, !dbg !4682
  br i1 %24, label %30, label %25, !dbg !4683

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4684
  br i1 %26, label %30, label %27, !dbg !4687

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4688, !tbaa !729
  %29 = zext i8 %28 to i32, !dbg !4689
  store i32 %29, i32* %6, align 4, !dbg !4690, !tbaa !720
  br label %30, !dbg !4691

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4647
  ret i64 %31, !dbg !4692
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4693 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #31

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4698 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4700, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.value(metadata i64 %1, metadata !4701, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.value(metadata i64 %2, metadata !4702, metadata !DIExpression()), !dbg !4704
  %4 = icmp eq i64 %2, 0, !dbg !4705
  br i1 %4, label %8, label %5, !dbg !4705

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4705
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4705
  br i1 %7, label %13, label %8, !dbg !4705

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4703, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4704
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4703, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4704
  %9 = mul i64 %2, %1, !dbg !4705
  call void @llvm.dbg.value(metadata i64 %9, metadata !4703, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.value(metadata i8* %0, metadata !4707, metadata !DIExpression()) #33, !dbg !4711
  call void @llvm.dbg.value(metadata i64 %9, metadata !4710, metadata !DIExpression()) #33, !dbg !4711
  %10 = icmp eq i64 %9, 0, !dbg !4713
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4713
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #33, !dbg !4714
  br label %15, !dbg !4715

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4703, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4704
  %14 = tail call i32* @__errno_location() #36, !dbg !4716
  store i32 12, i32* %14, align 4, !dbg !4718, !tbaa !720
  br label %15, !dbg !4719

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4704
  ret i8* %16, !dbg !4720
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4721 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4723, metadata !DIExpression()), !dbg !4728
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4729
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #33, !dbg !4729
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4724, metadata !DIExpression()), !dbg !4730
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #33, !dbg !4731
  %5 = icmp eq i32 %4, 0, !dbg !4731
  br i1 %5, label %6, label %13, !dbg !4733

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4734, metadata !DIExpression()) #33, !dbg !4738
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), metadata !4737, metadata !DIExpression()) #33, !dbg !4738
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.186, i64 0, i64 0), i64 2), !dbg !4741
  %8 = icmp eq i32 %7, 0, !dbg !4742
  br i1 %8, label %12, label %9, !dbg !4743

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4734, metadata !DIExpression()) #33, !dbg !4744
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.187, i64 0, i64 0), metadata !4737, metadata !DIExpression()) #33, !dbg !4744
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.187, i64 0, i64 0), i64 6), !dbg !4746
  %11 = icmp eq i32 %10, 0, !dbg !4747
  br i1 %11, label %12, label %13, !dbg !4748

12:                                               ; preds = %9, %6
  br label %13, !dbg !4749

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4728
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #33, !dbg !4750
  ret i1 %14, !dbg !4750
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4751 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4755, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.value(metadata i8* %1, metadata !4756, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.value(metadata i64 %2, metadata !4757, metadata !DIExpression()), !dbg !4758
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #33, !dbg !4759
  ret i32 %4, !dbg !4760
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4761 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4765, metadata !DIExpression()), !dbg !4766
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #33, !dbg !4767
  ret i8* %2, !dbg !4768
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4769 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4771, metadata !DIExpression()), !dbg !4773
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !4774
  call void @llvm.dbg.value(metadata i8* %2, metadata !4772, metadata !DIExpression()), !dbg !4773
  ret i8* %2, !dbg !4775
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4776 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4778, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i8* %1, metadata !4779, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i64 %2, metadata !4780, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i32 %0, metadata !4771, metadata !DIExpression()) #33, !dbg !4786
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !4788
  call void @llvm.dbg.value(metadata i8* %4, metadata !4772, metadata !DIExpression()) #33, !dbg !4786
  call void @llvm.dbg.value(metadata i8* %4, metadata !4781, metadata !DIExpression()), !dbg !4785
  %5 = icmp eq i8* %4, null, !dbg !4789
  br i1 %5, label %6, label %9, !dbg !4790

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4791
  br i1 %7, label %19, label %8, !dbg !4794

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4795, !tbaa !729
  br label %19, !dbg !4796

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #34, !dbg !4797
  call void @llvm.dbg.value(metadata i64 %10, metadata !4782, metadata !DIExpression()), !dbg !4798
  %11 = icmp ult i64 %10, %2, !dbg !4799
  br i1 %11, label %12, label %14, !dbg !4801

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4802
  call void @llvm.dbg.value(metadata i8* %1, metadata !4804, metadata !DIExpression()) #33, !dbg !4809
  call void @llvm.dbg.value(metadata i8* %4, metadata !4807, metadata !DIExpression()) #33, !dbg !4809
  call void @llvm.dbg.value(metadata i64 %13, metadata !4808, metadata !DIExpression()) #33, !dbg !4809
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #33, !dbg !4811
  br label %19, !dbg !4812

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4813
  br i1 %15, label %19, label %16, !dbg !4816

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4817
  call void @llvm.dbg.value(metadata i8* %1, metadata !4804, metadata !DIExpression()) #33, !dbg !4819
  call void @llvm.dbg.value(metadata i8* %4, metadata !4807, metadata !DIExpression()) #33, !dbg !4819
  call void @llvm.dbg.value(metadata i64 %17, metadata !4808, metadata !DIExpression()) #33, !dbg !4819
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #33, !dbg !4821
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4822
  store i8 0, i8* %18, align 1, !dbg !4823, !tbaa !729
  br label %19, !dbg !4824

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4825
  ret i32 %20, !dbg !4826
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
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { cold }
attributes #40 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!2, !214, !345, !350, !357, !515, !535, !538, !540, !543, !545, !547, !396, !406, !432, !549, !507, !555, !586, !588, !590, !521, !592, !595, !597, !599}
!llvm.ident = !{!601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601, !601}
!llvm.module.flags = !{!602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 62, type: !200, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !31, globals: !45, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/unexpand.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2f40f86ff2e1751a61c8225ac9d0fd19")
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
!31 = !{!32, !34, !35, !36, !37, !38, !39, !40, !42, !44}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!36 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 46, baseType: !37)
!41 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !{!46, !0, !131}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !48, file: !49, line: 575, type: !38, isLocal: true, isDefinition: true)
!48 = distinct !DISubprogram(name: "oputs_", scope: !49, file: !49, line: 573, type: !50, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !52)
!49 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!50 = !DISubroutineType(types: !51)
!51 = !{null, !42, !42}
!52 = !{!53, !54, !55, !58, !59, !60, !61, !65, !66, !67, !68, !70, !125, !126, !127, !129, !130}
!53 = !DILocalVariable(name: "program", arg: 1, scope: !48, file: !49, line: 573, type: !42)
!54 = !DILocalVariable(name: "option", arg: 2, scope: !48, file: !49, line: 573, type: !42)
!55 = !DILocalVariable(name: "term", scope: !56, file: !49, line: 585, type: !42)
!56 = distinct !DILexicalBlock(scope: !57, file: !49, line: 582, column: 5)
!57 = distinct !DILexicalBlock(scope: !48, file: !49, line: 581, column: 7)
!58 = !DILocalVariable(name: "double_space", scope: !48, file: !49, line: 594, type: !35)
!59 = !DILocalVariable(name: "first_word", scope: !48, file: !49, line: 595, type: !42)
!60 = !DILocalVariable(name: "option_text", scope: !48, file: !49, line: 596, type: !42)
!61 = !DILocalVariable(name: "s", scope: !62, file: !49, line: 608, type: !42)
!62 = distinct !DILexicalBlock(scope: !63, file: !49, line: 605, column: 5)
!63 = distinct !DILexicalBlock(scope: !64, file: !49, line: 604, column: 12)
!64 = distinct !DILexicalBlock(scope: !48, file: !49, line: 597, column: 7)
!65 = !DILocalVariable(name: "spaces", scope: !62, file: !49, line: 609, type: !40)
!66 = !DILocalVariable(name: "anchor_len", scope: !48, file: !49, line: 620, type: !40)
!67 = !DILocalVariable(name: "desc_text", scope: !48, file: !49, line: 625, type: !42)
!68 = !DILocalVariable(name: "__ptr", scope: !69, file: !49, line: 644, type: !42)
!69 = distinct !DILexicalBlock(scope: !48, file: !49, line: 644, column: 3)
!70 = !DILocalVariable(name: "__stream", scope: !69, file: !49, line: 644, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !74)
!73 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !76)
!75 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !92, !94, !95, !96, !99, !100, !102, !106, !109, !111, !114, !117, !118, !119, !120, !121}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !74, file: !75, line: 51, baseType: !38, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !74, file: !75, line: 54, baseType: !32, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !74, file: !75, line: 55, baseType: !32, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !74, file: !75, line: 56, baseType: !32, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !74, file: !75, line: 57, baseType: !32, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !74, file: !75, line: 58, baseType: !32, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !74, file: !75, line: 59, baseType: !32, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !74, file: !75, line: 60, baseType: !32, size: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !74, file: !75, line: 61, baseType: !32, size: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !74, file: !75, line: 64, baseType: !32, size: 64, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !74, file: !75, line: 65, baseType: !32, size: 64, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !74, file: !75, line: 66, baseType: !32, size: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !74, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !75, line: 36, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !74, file: !75, line: 70, baseType: !93, size: 64, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !74, file: !75, line: 72, baseType: !38, size: 32, offset: 896)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !74, file: !75, line: 73, baseType: !38, size: 32, offset: 928)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !74, file: !75, line: 74, baseType: !97, size: 64, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !98, line: 152, baseType: !36)
!98 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !74, file: !75, line: 77, baseType: !39, size: 16, offset: 1024)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !74, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!101 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !74, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 1)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !74, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !75, line: 43, baseType: null)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !74, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !98, line: 153, baseType: !36)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !74, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !75, line: 37, flags: DIFlagFwdDecl)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !74, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !75, line: 38, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !74, file: !75, line: 93, baseType: !93, size: 64, offset: 1344)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !74, file: !75, line: 94, baseType: !34, size: 64, offset: 1408)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !74, file: !75, line: 95, baseType: !40, size: 64, offset: 1472)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !74, file: !75, line: 96, baseType: !38, size: 32, offset: 1536)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !74, file: !75, line: 98, baseType: !122, size: 160, offset: 1568)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 160, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 20)
!125 = !DILocalVariable(name: "__cnt", scope: !69, file: !49, line: 644, type: !40)
!126 = !DILocalVariable(name: "url_program", scope: !48, file: !49, line: 648, type: !42)
!127 = !DILocalVariable(name: "__ptr", scope: !128, file: !49, line: 686, type: !42)
!128 = distinct !DILexicalBlock(scope: !48, file: !49, line: 686, column: 3)
!129 = !DILocalVariable(name: "__stream", scope: !128, file: !49, line: 686, type: !71)
!130 = !DILocalVariable(name: "__cnt", scope: !128, file: !49, line: 686, type: !40)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "line_in", scope: !133, file: !3, line: 127, type: !197, isLocal: true, isDefinition: true)
!133 = distinct !DISubprogram(name: "unexpand", scope: !3, file: !3, line: 114, type: !134, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !136)
!134 = !DISubroutineType(types: !135)
!135 = !{null}
!136 = !{!137, !138, !139, !152, !164, !165, !171, !172, !173, !174, !175, !176, !180, !183, !186, !191, !192, !193, !195, !196}
!137 = !DILocalVariable(name: "fp", scope: !133, file: !3, line: 117, type: !71)
!138 = !DILocalVariable(name: "pending_blank", scope: !133, file: !3, line: 122, type: !32)
!139 = !DILocalVariable(name: "mbbuf", scope: !133, file: !3, line: 128, type: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !141, line: 50, baseType: !142)
!141 = !DIFile(filename: "./lib/mbbuf.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0ec2f2727b8356ce94eb797f3e7bb5fd")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 43, size: 320, elements: !143)
!143 = !{!144, !145, !146, !150, !151}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !142, file: !141, line: 45, baseType: !32, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !142, file: !141, line: 46, baseType: !71, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !142, file: !141, line: 47, baseType: !147, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !148, line: 130, baseType: !149)
!148 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !41, line: 35, baseType: !36)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !142, file: !141, line: 48, baseType: !147, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !142, file: !141, line: 49, baseType: !147, size: 64, offset: 256)
!152 = !DILocalVariable(name: "g", scope: !153, file: !3, line: 139, type: !154)
!153 = distinct !DILexicalBlock(scope: !133, file: !3, line: 137, column: 5)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !22, line: 143, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 138, size: 64, elements: !156)
!156 = !{!157, !162, !163}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !155, file: !22, line: 140, baseType: !158, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !159, line: 37, baseType: !160)
!159 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !98, line: 57, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !98, line: 42, baseType: !7)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !155, file: !22, line: 141, baseType: !44, size: 8, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !155, file: !22, line: 142, baseType: !44, size: 8, offset: 40)
!164 = !DILocalVariable(name: "convert", scope: !153, file: !3, line: 142, type: !35)
!165 = !DILocalVariable(name: "column", scope: !153, file: !3, line: 149, type: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "colno", file: !167, line: 20, baseType: !168)
!167 = !DIFile(filename: "src/expand-common.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a812a23c6054c0178c7555c3090cc098")
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !169, line: 101, baseType: !170)
!169 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !98, line: 72, baseType: !36)
!171 = !DILocalVariable(name: "next_tab_column", scope: !153, file: !3, line: 152, type: !166)
!172 = !DILocalVariable(name: "tab_index", scope: !153, file: !3, line: 155, type: !147)
!173 = !DILocalVariable(name: "one_blank_before_tab_stop", scope: !153, file: !3, line: 158, type: !35)
!174 = !DILocalVariable(name: "prev_blank", scope: !153, file: !3, line: 163, type: !35)
!175 = !DILocalVariable(name: "pending", scope: !153, file: !3, line: 166, type: !147)
!176 = !DILocalVariable(name: "blank", scope: !177, file: !3, line: 179, type: !35)
!177 = distinct !DILexicalBlock(scope: !178, file: !3, line: 178, column: 13)
!178 = distinct !DILexicalBlock(scope: !179, file: !3, line: 177, column: 15)
!179 = distinct !DILexicalBlock(scope: !153, file: !3, line: 172, column: 9)
!180 = !DILocalVariable(name: "last_tab", scope: !181, file: !3, line: 183, type: !35)
!181 = distinct !DILexicalBlock(scope: !182, file: !3, line: 182, column: 17)
!182 = distinct !DILexicalBlock(scope: !177, file: !3, line: 181, column: 19)
!183 = !DILocalVariable(name: "width", scope: !184, file: !3, line: 239, type: !38)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 238, column: 17)
!185 = distinct !DILexicalBlock(scope: !182, file: !3, line: 229, column: 24)
!186 = !DILocalVariable(name: "__ptr", scope: !187, file: !3, line: 248, type: !42)
!187 = distinct !DILexicalBlock(scope: !188, file: !3, line: 248, column: 23)
!188 = distinct !DILexicalBlock(scope: !189, file: !3, line: 248, column: 23)
!189 = distinct !DILexicalBlock(scope: !190, file: !3, line: 245, column: 17)
!190 = distinct !DILexicalBlock(scope: !177, file: !3, line: 244, column: 19)
!191 = !DILocalVariable(name: "__stream", scope: !187, file: !3, line: 248, type: !71)
!192 = !DILocalVariable(name: "__cnt", scope: !187, file: !3, line: 248, type: !40)
!193 = !DILocalVariable(name: "__ptr", scope: !194, file: !3, line: 264, type: !42)
!194 = distinct !DILexicalBlock(scope: !179, file: !3, line: 264, column: 11)
!195 = !DILocalVariable(name: "__stream", scope: !194, file: !3, line: 264, type: !71)
!196 = !DILocalVariable(name: "__cnt", scope: !194, file: !3, line: 264, type: !40)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2097152, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 262144)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 1536, elements: !210)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !203, line: 50, size: 256, elements: !204)
!203 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!204 = !{!205, !206, !207, !209}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !202, file: !203, line: 52, baseType: !42, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !202, file: !203, line: 55, baseType: !38, size: 32, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !202, file: !203, line: 56, baseType: !208, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !202, file: !203, line: 57, baseType: !38, size: 32, offset: 192)
!210 = !{!211}
!211 = !DISubrange(count: 6)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !214, file: !215, line: 30, type: !35, isLocal: false, isDefinition: true)
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !216, retainedTypes: !240, globals: !241, splitDebugInlining: false, nameTableKind: None)
!215 = !DIFile(filename: "src/expand-common.c", directory: "/src", checksumkind: CSK_MD5, checksum: "942c25878b2cf9f4cd3ad8d127f8f292")
!216 = !{!5, !217, !231}
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !218, line: 42, baseType: !7, size: 32, elements: !219)
!218 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!220 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!221 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!222 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!223 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!224 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!225 = !DIEnumerator(name: "c_quoting_style", value: 5)
!226 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!227 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!228 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!229 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!230 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !232, line: 44, baseType: !7, size: 32, elements: !233)
!232 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!233 = !{!234, !235, !236, !237, !238, !239}
!234 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!235 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!236 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!237 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!238 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!239 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!240 = !{!38, !39, !35, !36, !37, !34, !40, !42, !44}
!241 = !{!212, !242, !244, !289, !291, !293, !296, !298, !300, !302, !304, !306, !311, !314}
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "exit_status", scope: !214, file: !215, line: 69, type: !38, isLocal: false, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "prev_file", scope: !246, file: !215, line: 351, type: !32, isLocal: true, isDefinition: true)
!246 = distinct !DISubprogram(name: "next_file", scope: !215, file: !215, line: 349, type: !247, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !283)
!247 = !DISubroutineType(types: !248)
!248 = !{!249, !249}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !251, file: !75, line: 51, baseType: !38, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !251, file: !75, line: 54, baseType: !32, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !251, file: !75, line: 55, baseType: !32, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !251, file: !75, line: 56, baseType: !32, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !251, file: !75, line: 57, baseType: !32, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !251, file: !75, line: 58, baseType: !32, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !251, file: !75, line: 59, baseType: !32, size: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !251, file: !75, line: 60, baseType: !32, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !251, file: !75, line: 61, baseType: !32, size: 64, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !251, file: !75, line: 64, baseType: !32, size: 64, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !251, file: !75, line: 65, baseType: !32, size: 64, offset: 640)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !251, file: !75, line: 66, baseType: !32, size: 64, offset: 704)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !251, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !251, file: !75, line: 70, baseType: !267, size: 64, offset: 832)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !251, file: !75, line: 72, baseType: !38, size: 32, offset: 896)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !251, file: !75, line: 73, baseType: !38, size: 32, offset: 928)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !251, file: !75, line: 74, baseType: !97, size: 64, offset: 960)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !251, file: !75, line: 77, baseType: !39, size: 16, offset: 1024)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !251, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !251, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !251, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !251, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !251, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !251, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !251, file: !75, line: 93, baseType: !267, size: 64, offset: 1344)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !251, file: !75, line: 94, baseType: !34, size: 64, offset: 1408)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !251, file: !75, line: 95, baseType: !40, size: 64, offset: 1472)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !251, file: !75, line: 96, baseType: !38, size: 32, offset: 1536)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !251, file: !75, line: 98, baseType: !122, size: 160, offset: 1568)
!283 = !{!284, !285, !286}
!284 = !DILocalVariable(name: "fp", arg: 1, scope: !246, file: !215, line: 349, type: !249)
!285 = !DILocalVariable(name: "file", scope: !246, file: !215, line: 352, type: !32)
!286 = !DILocalVariable(name: "err", scope: !287, file: !215, line: 356, type: !38)
!287 = distinct !DILexicalBlock(scope: !288, file: !215, line: 355, column: 5)
!288 = distinct !DILexicalBlock(scope: !246, file: !215, line: 354, column: 7)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "max_column_width", scope: !214, file: !215, line: 42, type: !147, isLocal: false, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !214, file: !215, line: 54, type: !147, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "tab_list", scope: !214, file: !215, line: 47, type: !295, isLocal: true, isDefinition: true)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !214, file: !215, line: 50, type: !147, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "extend_size", scope: !214, file: !215, line: 36, type: !166, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(name: "increment_size", scope: !214, file: !215, line: 39, type: !166, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "tab_size", scope: !214, file: !215, line: 33, type: !166, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !214, file: !215, line: 66, type: !35, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !214, file: !215, line: 60, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 128, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 2)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "file_list", scope: !214, file: !215, line: 57, type: !313, isLocal: true, isDefinition: true)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !316, file: !49, line: 575, type: !38, isLocal: true, isDefinition: true)
!316 = distinct !DISubprogram(name: "oputs_", scope: !49, file: !49, line: 573, type: !50, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !317)
!317 = !{!318, !319, !320, !323, !324, !325, !326, !330, !331, !332, !333, !335, !336, !337, !338, !340, !341}
!318 = !DILocalVariable(name: "program", arg: 1, scope: !316, file: !49, line: 573, type: !42)
!319 = !DILocalVariable(name: "option", arg: 2, scope: !316, file: !49, line: 573, type: !42)
!320 = !DILocalVariable(name: "term", scope: !321, file: !49, line: 585, type: !42)
!321 = distinct !DILexicalBlock(scope: !322, file: !49, line: 582, column: 5)
!322 = distinct !DILexicalBlock(scope: !316, file: !49, line: 581, column: 7)
!323 = !DILocalVariable(name: "double_space", scope: !316, file: !49, line: 594, type: !35)
!324 = !DILocalVariable(name: "first_word", scope: !316, file: !49, line: 595, type: !42)
!325 = !DILocalVariable(name: "option_text", scope: !316, file: !49, line: 596, type: !42)
!326 = !DILocalVariable(name: "s", scope: !327, file: !49, line: 608, type: !42)
!327 = distinct !DILexicalBlock(scope: !328, file: !49, line: 605, column: 5)
!328 = distinct !DILexicalBlock(scope: !329, file: !49, line: 604, column: 12)
!329 = distinct !DILexicalBlock(scope: !316, file: !49, line: 597, column: 7)
!330 = !DILocalVariable(name: "spaces", scope: !327, file: !49, line: 609, type: !40)
!331 = !DILocalVariable(name: "anchor_len", scope: !316, file: !49, line: 620, type: !40)
!332 = !DILocalVariable(name: "desc_text", scope: !316, file: !49, line: 625, type: !42)
!333 = !DILocalVariable(name: "__ptr", scope: !334, file: !49, line: 644, type: !42)
!334 = distinct !DILexicalBlock(scope: !316, file: !49, line: 644, column: 3)
!335 = !DILocalVariable(name: "__stream", scope: !334, file: !49, line: 644, type: !249)
!336 = !DILocalVariable(name: "__cnt", scope: !334, file: !49, line: 644, type: !40)
!337 = !DILocalVariable(name: "url_program", scope: !316, file: !49, line: 648, type: !42)
!338 = !DILocalVariable(name: "__ptr", scope: !339, file: !49, line: 686, type: !42)
!339 = distinct !DILexicalBlock(scope: !316, file: !49, line: 686, column: 3)
!340 = !DILocalVariable(name: "__stream", scope: !339, file: !49, line: 686, type: !249)
!341 = !DILocalVariable(name: "__cnt", scope: !339, file: !49, line: 686, type: !40)
!342 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "Version", scope: !345, file: !346, line: 3, type: !42, isLocal: false, isDefinition: true)
!345 = distinct !DICompileUnit(language: DW_LANG_C99, file: !346, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !347, splitDebugInlining: false, nameTableKind: None)
!346 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!347 = !{!343}
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "file_name", scope: !350, file: !351, line: 45, type: !42, isLocal: true, isDefinition: true)
!350 = distinct !DICompileUnit(language: DW_LANG_C99, file: !351, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !352, splitDebugInlining: false, nameTableKind: None)
!351 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!352 = !{!348, !353}
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !350, file: !351, line: 55, type: !35, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !357, file: !358, line: 66, type: !393, isLocal: false, isDefinition: true)
!357 = distinct !DICompileUnit(language: DW_LANG_C99, file: !358, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !359, globals: !360, splitDebugInlining: false, nameTableKind: None)
!358 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!359 = !{!34, !44}
!360 = !{!361, !387, !355, !389, !391}
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "old_file_name", scope: !363, file: !358, line: 304, type: !42, isLocal: true, isDefinition: true)
!363 = distinct !DISubprogram(name: "verror_at_line", scope: !358, file: !358, line: 298, type: !364, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !380)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !38, !38, !42, !7, !42, !366}
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !367, line: 52, baseType: !368)
!367 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !369, line: 32, baseType: !370)
!369 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !371, baseType: !372)
!371 = !DIFile(filename: "lib/error.c", directory: "/src")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !373, size: 256, elements: !374)
!373 = !DINamespace(name: "std", scope: null)
!374 = !{!375, !376, !377, !378, !379}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !372, file: !371, baseType: !34, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !372, file: !371, baseType: !34, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !372, file: !371, baseType: !34, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !372, file: !371, baseType: !38, size: 32, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !372, file: !371, baseType: !38, size: 32, offset: 224)
!380 = !{!381, !382, !383, !384, !385, !386}
!381 = !DILocalVariable(name: "status", arg: 1, scope: !363, file: !358, line: 298, type: !38)
!382 = !DILocalVariable(name: "errnum", arg: 2, scope: !363, file: !358, line: 298, type: !38)
!383 = !DILocalVariable(name: "file_name", arg: 3, scope: !363, file: !358, line: 298, type: !42)
!384 = !DILocalVariable(name: "line_number", arg: 4, scope: !363, file: !358, line: 298, type: !7)
!385 = !DILocalVariable(name: "message", arg: 5, scope: !363, file: !358, line: 298, type: !42)
!386 = !DILocalVariable(name: "args", arg: 6, scope: !363, file: !358, line: 298, type: !366)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "old_line_number", scope: !363, file: !358, line: 305, type: !7, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "error_message_count", scope: !357, file: !358, line: 69, type: !7, isLocal: false, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !357, file: !358, line: 295, type: !38, isLocal: false, isDefinition: true)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "program_name", scope: !396, file: !397, line: 31, type: !42, isLocal: false, isDefinition: true)
!396 = distinct !DICompileUnit(language: DW_LANG_C99, file: !397, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !398, globals: !399, splitDebugInlining: false, nameTableKind: None)
!397 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!398 = !{!32}
!399 = !{!394}
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "utf07FF", scope: !402, file: !403, line: 46, type: !429, isLocal: true, isDefinition: true)
!402 = distinct !DISubprogram(name: "proper_name_lite", scope: !403, file: !403, line: 38, type: !404, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !408)
!403 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!404 = !DISubroutineType(types: !405)
!405 = !{!42, !42, !42}
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !403, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !407, splitDebugInlining: false, nameTableKind: None)
!407 = !{!400}
!408 = !{!409, !410, !411, !412, !413}
!409 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !402, file: !403, line: 38, type: !42)
!410 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !402, file: !403, line: 38, type: !42)
!411 = !DILocalVariable(name: "translation", scope: !402, file: !403, line: 40, type: !42)
!412 = !DILocalVariable(name: "w", scope: !402, file: !403, line: 47, type: !158)
!413 = !DILocalVariable(name: "mbs", scope: !402, file: !403, line: 48, type: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !415, line: 6, baseType: !416)
!415 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !417, line: 21, baseType: !418)
!417 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !417, line: 13, size: 64, elements: !419)
!419 = !{!420, !421}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !418, file: !417, line: 15, baseType: !38, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !418, file: !417, line: 20, baseType: !422, size: 32, offset: 32)
!422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !417, line: 16, size: 32, elements: !423)
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !422, file: !417, line: 18, baseType: !7, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !422, file: !417, line: 19, baseType: !426, size: 32)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 4)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 16, elements: !309)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !432, file: !433, line: 76, type: !501, isLocal: false, isDefinition: true)
!432 = distinct !DICompileUnit(language: DW_LANG_C99, file: !433, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !434, retainedTypes: !440, globals: !441, splitDebugInlining: false, nameTableKind: None)
!433 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!434 = !{!217, !435, !5}
!435 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !218, line: 254, baseType: !7, size: 32, elements: !436)
!436 = !{!437, !438, !439}
!437 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!438 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!439 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!440 = !{!38, !39, !40}
!441 = !{!430, !442, !448, !460, !462, !467, !490, !497, !499}
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !432, file: !433, line: 92, type: !444, isLocal: false, isDefinition: true)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 320, elements: !446)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!446 = !{!447}
!447 = !DISubrange(count: 10)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !432, file: !433, line: 1040, type: !450, isLocal: false, isDefinition: true)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !433, line: 56, size: 448, elements: !451)
!451 = !{!452, !453, !454, !458, !459}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !450, file: !433, line: 59, baseType: !217, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !450, file: !433, line: 62, baseType: !38, size: 32, offset: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !450, file: !433, line: 66, baseType: !455, size: 256, offset: 64)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 8)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !450, file: !433, line: 69, baseType: !42, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !450, file: !433, line: 72, baseType: !42, size: 64, offset: 384)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !432, file: !433, line: 107, type: !450, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "slot0", scope: !432, file: !433, line: 831, type: !464, isLocal: true, isDefinition: true)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2048, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 256)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(name: "quote", scope: !469, file: !433, line: 228, type: !488, isLocal: true, isDefinition: true)
!469 = distinct !DISubprogram(name: "gettext_quote", scope: !433, file: !433, line: 197, type: !470, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!42, !42, !217}
!472 = !{!473, !474, !475, !476, !477}
!473 = !DILocalVariable(name: "msgid", arg: 1, scope: !469, file: !433, line: 197, type: !42)
!474 = !DILocalVariable(name: "s", arg: 2, scope: !469, file: !433, line: 197, type: !217)
!475 = !DILocalVariable(name: "translation", scope: !469, file: !433, line: 199, type: !42)
!476 = !DILocalVariable(name: "w", scope: !469, file: !433, line: 229, type: !158)
!477 = !DILocalVariable(name: "mbs", scope: !469, file: !433, line: 230, type: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !415, line: 6, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !417, line: 21, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !417, line: 13, size: 64, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !480, file: !417, line: 15, baseType: !38, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !480, file: !417, line: 20, baseType: !484, size: 32, offset: 32)
!484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !480, file: !417, line: 16, size: 32, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !484, file: !417, line: 18, baseType: !7, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !484, file: !417, line: 19, baseType: !426, size: 32)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !489)
!489 = !{!310, !428}
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(name: "slotvec", scope: !432, file: !433, line: 834, type: !492, isLocal: true, isDefinition: true)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !433, line: 823, size: 128, elements: !494)
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !493, file: !433, line: 825, baseType: !40, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !493, file: !433, line: 826, baseType: !32, size: 64, offset: 64)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(name: "nslots", scope: !432, file: !433, line: 832, type: !38, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(name: "slotvec0", scope: !432, file: !433, line: 833, type: !493, isLocal: true, isDefinition: true)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 704, elements: !503)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!503 = !{!504}
!504 = !DISubrange(count: 11)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !507, file: !508, line: 26, type: !510, isLocal: false, isDefinition: true)
!507 = distinct !DICompileUnit(language: DW_LANG_C99, file: !508, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !509, splitDebugInlining: false, nameTableKind: None)
!508 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!509 = !{!505}
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 376, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 47)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "exit_failure", scope: !515, file: !516, line: 24, type: !518, isLocal: false, isDefinition: true)
!515 = distinct !DICompileUnit(language: DW_LANG_C99, file: !516, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !517, splitDebugInlining: false, nameTableKind: None)
!516 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!517 = !{!513}
!518 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(name: "internal_state", scope: !521, file: !522, line: 97, type: !525, isLocal: true, isDefinition: true)
!521 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !523, globals: !524, splitDebugInlining: false, nameTableKind: None)
!522 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!523 = !{!34, !40, !44}
!524 = !{!519}
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !415, line: 6, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !417, line: 21, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !417, line: 13, size: 64, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !527, file: !417, line: 15, baseType: !38, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !527, file: !417, line: 20, baseType: !531, size: 32, offset: 32)
!531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !527, file: !417, line: 16, size: 32, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !531, file: !417, line: 18, baseType: !7, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !531, file: !417, line: 19, baseType: !426, size: 32)
!535 = distinct !DICompileUnit(language: DW_LANG_C99, file: !536, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !537, splitDebugInlining: false, nameTableKind: None)
!536 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!537 = !{!231}
!538 = distinct !DICompileUnit(language: DW_LANG_C99, file: !539, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!539 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!540 = distinct !DICompileUnit(language: DW_LANG_C99, file: !541, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !542, splitDebugInlining: false, nameTableKind: None)
!541 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!542 = !{!34}
!543 = distinct !DICompileUnit(language: DW_LANG_C99, file: !544, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!544 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!545 = distinct !DICompileUnit(language: DW_LANG_C99, file: !546, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !542, splitDebugInlining: false, nameTableKind: None)
!546 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!547 = distinct !DICompileUnit(language: DW_LANG_C99, file: !548, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!548 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!549 = distinct !DICompileUnit(language: DW_LANG_C99, file: !550, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !551, retainedTypes: !542, splitDebugInlining: false, nameTableKind: None)
!550 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!551 = !{!552}
!552 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !550, line: 40, baseType: !7, size: 32, elements: !553)
!553 = !{!554}
!554 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !557, retainedTypes: !585, splitDebugInlining: false, nameTableKind: None)
!556 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!557 = !{!558, !570}
!558 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !559, file: !556, line: 188, baseType: !7, size: 32, elements: !568)
!559 = distinct !DISubprogram(name: "x2nrealloc", scope: !556, file: !556, line: 176, type: !560, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !563)
!560 = !DISubroutineType(types: !561)
!561 = !{!34, !34, !562, !40}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!563 = !{!564, !565, !566, !567}
!564 = !DILocalVariable(name: "p", arg: 1, scope: !559, file: !556, line: 176, type: !34)
!565 = !DILocalVariable(name: "pn", arg: 2, scope: !559, file: !556, line: 176, type: !562)
!566 = !DILocalVariable(name: "s", arg: 3, scope: !559, file: !556, line: 176, type: !40)
!567 = !DILocalVariable(name: "n", scope: !559, file: !556, line: 178, type: !40)
!568 = !{!569}
!569 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!570 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !571, file: !556, line: 228, baseType: !7, size: 32, elements: !568)
!571 = distinct !DISubprogram(name: "xpalloc", scope: !556, file: !556, line: 223, type: !572, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !575)
!572 = !DISubroutineType(types: !573)
!573 = !{!34, !34, !574, !147, !149, !147}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584}
!576 = !DILocalVariable(name: "pa", arg: 1, scope: !571, file: !556, line: 223, type: !34)
!577 = !DILocalVariable(name: "pn", arg: 2, scope: !571, file: !556, line: 223, type: !574)
!578 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !571, file: !556, line: 223, type: !147)
!579 = !DILocalVariable(name: "n_max", arg: 4, scope: !571, file: !556, line: 223, type: !149)
!580 = !DILocalVariable(name: "s", arg: 5, scope: !571, file: !556, line: 223, type: !147)
!581 = !DILocalVariable(name: "n0", scope: !571, file: !556, line: 230, type: !147)
!582 = !DILocalVariable(name: "n", scope: !571, file: !556, line: 237, type: !147)
!583 = !DILocalVariable(name: "nbytes", scope: !571, file: !556, line: 248, type: !147)
!584 = !DILocalVariable(name: "adjusted_nbytes", scope: !571, file: !556, line: 252, type: !147)
!585 = !{!32, !34, !35, !36, !37}
!586 = distinct !DICompileUnit(language: DW_LANG_C99, file: !587, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!587 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !542, splitDebugInlining: false, nameTableKind: None)
!589 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!590 = distinct !DICompileUnit(language: DW_LANG_C99, file: !591, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!591 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !594, splitDebugInlining: false, nameTableKind: None)
!593 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!594 = !{!35, !37, !34}
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!596 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!598 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!599 = distinct !DICompileUnit(language: DW_LANG_C99, file: !600, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !542, splitDebugInlining: false, nameTableKind: None)
!600 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!601 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!602 = !{i32 7, !"Dwarf Version", i32 5}
!603 = !{i32 2, !"Debug Info Version", i32 3}
!604 = !{i32 1, !"wchar_size", i32 4}
!605 = !{i32 1, !"branch-target-enforcement", i32 0}
!606 = !{i32 1, !"sign-return-address", i32 0}
!607 = !{i32 1, !"sign-return-address-all", i32 0}
!608 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!609 = !{i32 7, !"PIC Level", i32 2}
!610 = !{i32 7, !"PIE Level", i32 2}
!611 = !{i32 7, !"uwtable", i32 1}
!612 = !{i32 7, !"frame-pointer", i32 1}
!613 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 73, type: !614, scopeLine: 74, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !616)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !38}
!616 = !{!617}
!617 = !DILocalVariable(name: "status", arg: 1, scope: !613, file: !3, line: 73, type: !38)
!618 = !DILocation(line: 0, scope: !613)
!619 = !DILocation(line: 75, column: 14, scope: !620)
!620 = distinct !DILexicalBlock(scope: !613, file: !3, line: 75, column: 7)
!621 = !DILocation(line: 75, column: 7, scope: !613)
!622 = !DILocation(line: 76, column: 5, scope: !623)
!623 = distinct !DILexicalBlock(scope: !620, file: !3, line: 76, column: 5)
!624 = !{!625, !625, i64 0}
!625 = !{!"any pointer", !626, i64 0}
!626 = !{!"omnipotent char", !627, i64 0}
!627 = !{!"Simple C/C++ TBAA"}
!628 = !DILocation(line: 79, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !620, file: !3, line: 78, column: 5)
!630 = !DILocation(line: 83, column: 7, scope: !629)
!631 = !DILocation(line: 729, column: 3, scope: !632, inlinedAt: !634)
!632 = distinct !DISubprogram(name: "emit_stdin_note", scope: !49, file: !49, line: 727, type: !134, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !633)
!633 = !{}
!634 = distinct !DILocation(line: 87, column: 7, scope: !629)
!635 = !DILocation(line: 736, column: 3, scope: !636, inlinedAt: !637)
!636 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !49, file: !49, line: 734, type: !134, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !633)
!637 = distinct !DILocation(line: 88, column: 7, scope: !629)
!638 = !DILocation(line: 90, column: 7, scope: !629)
!639 = !DILocation(line: 94, column: 7, scope: !629)
!640 = !DILocation(line: 98, column: 7, scope: !629)
!641 = !DILocation(line: 102, column: 7, scope: !629)
!642 = !DILocation(line: 103, column: 7, scope: !629)
!643 = !DILocation(line: 104, column: 7, scope: !629)
!644 = !DILocalVariable(name: "program", arg: 1, scope: !645, file: !49, line: 836, type: !42)
!645 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !49, file: !49, line: 836, type: !646, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !648)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !42}
!648 = !{!644, !649, !658, !659, !661, !662}
!649 = !DILocalVariable(name: "infomap", scope: !645, file: !49, line: 838, type: !650)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 896, elements: !656)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !645, file: !49, line: 838, size: 128, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !652, file: !49, line: 838, baseType: !42, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !49, line: 838, baseType: !42, size: 64, offset: 64)
!656 = !{!657}
!657 = !DISubrange(count: 7)
!658 = !DILocalVariable(name: "node", scope: !645, file: !49, line: 848, type: !42)
!659 = !DILocalVariable(name: "map_prog", scope: !645, file: !49, line: 849, type: !660)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!661 = !DILocalVariable(name: "lc_messages", scope: !645, file: !49, line: 861, type: !42)
!662 = !DILocalVariable(name: "url_program", scope: !645, file: !49, line: 874, type: !42)
!663 = !DILocation(line: 0, scope: !645, inlinedAt: !664)
!664 = distinct !DILocation(line: 105, column: 7, scope: !629)
!665 = !DILocation(line: 838, column: 3, scope: !645, inlinedAt: !664)
!666 = !DILocation(line: 838, column: 67, scope: !645, inlinedAt: !664)
!667 = !DILocation(line: 849, column: 36, scope: !645, inlinedAt: !664)
!668 = !DILocation(line: 851, column: 3, scope: !645, inlinedAt: !664)
!669 = !DILocalVariable(name: "__s1", arg: 1, scope: !670, file: !671, line: 1359, type: !42)
!670 = distinct !DISubprogram(name: "streq", scope: !671, file: !671, line: 1359, type: !672, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !674)
!671 = !DIFile(filename: "./lib/string.h", directory: "/src")
!672 = !DISubroutineType(types: !673)
!673 = !{!35, !42, !42}
!674 = !{!669, !675}
!675 = !DILocalVariable(name: "__s2", arg: 2, scope: !670, file: !671, line: 1359, type: !42)
!676 = !DILocation(line: 0, scope: !670, inlinedAt: !677)
!677 = distinct !DILocation(line: 851, column: 33, scope: !645, inlinedAt: !664)
!678 = !DILocation(line: 1361, column: 11, scope: !670, inlinedAt: !677)
!679 = !DILocation(line: 1361, column: 10, scope: !670, inlinedAt: !677)
!680 = !DILocation(line: 852, column: 13, scope: !645, inlinedAt: !664)
!681 = !DILocation(line: 851, column: 20, scope: !645, inlinedAt: !664)
!682 = !{!683, !625, i64 0}
!683 = !{!"infomap", !625, i64 0, !625, i64 8}
!684 = !DILocation(line: 851, column: 10, scope: !645, inlinedAt: !664)
!685 = !DILocation(line: 851, column: 28, scope: !645, inlinedAt: !664)
!686 = distinct !{!686, !668, !680, !687}
!687 = !{!"llvm.loop.mustprogress"}
!688 = !DILocation(line: 854, column: 17, scope: !689, inlinedAt: !664)
!689 = distinct !DILexicalBlock(scope: !645, file: !49, line: 854, column: 7)
!690 = !{!683, !625, i64 8}
!691 = !DILocation(line: 854, column: 7, scope: !689, inlinedAt: !664)
!692 = !DILocation(line: 854, column: 7, scope: !645, inlinedAt: !664)
!693 = !DILocation(line: 857, column: 3, scope: !645, inlinedAt: !664)
!694 = !DILocation(line: 861, column: 29, scope: !645, inlinedAt: !664)
!695 = !DILocation(line: 862, column: 7, scope: !696, inlinedAt: !664)
!696 = distinct !DILexicalBlock(scope: !645, file: !49, line: 862, column: 7)
!697 = !DILocation(line: 862, column: 19, scope: !696, inlinedAt: !664)
!698 = !DILocation(line: 862, column: 22, scope: !696, inlinedAt: !664)
!699 = !DILocation(line: 862, column: 7, scope: !645, inlinedAt: !664)
!700 = !DILocation(line: 868, column: 7, scope: !701, inlinedAt: !664)
!701 = distinct !DILexicalBlock(scope: !696, file: !49, line: 863, column: 5)
!702 = !DILocation(line: 870, column: 5, scope: !701, inlinedAt: !664)
!703 = !DILocation(line: 0, scope: !670, inlinedAt: !704)
!704 = distinct !DILocation(line: 874, column: 29, scope: !645, inlinedAt: !664)
!705 = !DILocation(line: 875, column: 3, scope: !645, inlinedAt: !664)
!706 = !DILocation(line: 877, column: 3, scope: !645, inlinedAt: !664)
!707 = !DILocation(line: 879, column: 1, scope: !645, inlinedAt: !664)
!708 = !DILocation(line: 107, column: 3, scope: !613)
!709 = !DISubprogram(name: "dcgettext", scope: !710, file: !710, line: 51, type: !711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!710 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!711 = !DISubroutineType(types: !712)
!712 = !{!32, !42, !42, !38}
!713 = !DISubprogram(name: "fputs_unlocked", scope: !367, file: !367, line: 691, type: !714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!714 = !DISubroutineType(types: !715)
!715 = !{!38, !716, !717}
!716 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!717 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !71)
!718 = !DILocation(line: 0, scope: !48)
!719 = !DILocation(line: 581, column: 7, scope: !57)
!720 = !{!721, !721, i64 0}
!721 = !{!"int", !626, i64 0}
!722 = !DILocation(line: 581, column: 19, scope: !57)
!723 = !DILocation(line: 581, column: 7, scope: !48)
!724 = !DILocation(line: 585, column: 26, scope: !56)
!725 = !DILocation(line: 0, scope: !56)
!726 = !DILocation(line: 586, column: 23, scope: !56)
!727 = !DILocation(line: 586, column: 28, scope: !56)
!728 = !DILocation(line: 586, column: 32, scope: !56)
!729 = !{!626, !626, i64 0}
!730 = !DILocation(line: 586, column: 38, scope: !56)
!731 = !DILocation(line: 0, scope: !670, inlinedAt: !732)
!732 = distinct !DILocation(line: 586, column: 41, scope: !56)
!733 = !DILocation(line: 1361, column: 11, scope: !670, inlinedAt: !732)
!734 = !DILocation(line: 1361, column: 10, scope: !670, inlinedAt: !732)
!735 = !DILocation(line: 586, column: 19, scope: !56)
!736 = !DILocation(line: 587, column: 5, scope: !56)
!737 = !DILocation(line: 588, column: 7, scope: !738)
!738 = distinct !DILexicalBlock(scope: !48, file: !49, line: 588, column: 7)
!739 = !DILocation(line: 588, column: 7, scope: !48)
!740 = !DILocation(line: 590, column: 7, scope: !741)
!741 = distinct !DILexicalBlock(scope: !738, file: !49, line: 589, column: 5)
!742 = !DILocation(line: 591, column: 7, scope: !741)
!743 = !DILocation(line: 595, column: 37, scope: !48)
!744 = !DILocation(line: 595, column: 35, scope: !48)
!745 = !DILocation(line: 596, column: 29, scope: !48)
!746 = !DILocation(line: 597, column: 8, scope: !64)
!747 = !DILocation(line: 597, column: 7, scope: !48)
!748 = !DILocation(line: 604, column: 24, scope: !63)
!749 = !DILocation(line: 604, column: 12, scope: !64)
!750 = !DILocation(line: 0, scope: !62)
!751 = !DILocation(line: 610, column: 16, scope: !62)
!752 = !DILocation(line: 610, column: 7, scope: !62)
!753 = !DILocation(line: 611, column: 21, scope: !62)
!754 = !{!755, !755, i64 0}
!755 = !{!"short", !626, i64 0}
!756 = !DILocation(line: 611, column: 19, scope: !62)
!757 = !DILocation(line: 611, column: 16, scope: !62)
!758 = !DILocation(line: 610, column: 30, scope: !62)
!759 = distinct !{!759, !752, !753, !687}
!760 = !DILocation(line: 612, column: 18, scope: !761)
!761 = distinct !DILexicalBlock(scope: !62, file: !49, line: 612, column: 11)
!762 = !DILocation(line: 612, column: 11, scope: !62)
!763 = !DILocation(line: 620, column: 23, scope: !48)
!764 = !DILocation(line: 625, column: 39, scope: !48)
!765 = !DILocation(line: 626, column: 3, scope: !48)
!766 = !DILocation(line: 626, column: 10, scope: !48)
!767 = !DILocation(line: 626, column: 21, scope: !48)
!768 = !DILocation(line: 628, column: 44, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !49, line: 628, column: 11)
!770 = distinct !DILexicalBlock(scope: !48, file: !49, line: 627, column: 5)
!771 = !DILocation(line: 628, column: 32, scope: !769)
!772 = !DILocation(line: 628, column: 49, scope: !769)
!773 = !DILocation(line: 628, column: 11, scope: !770)
!774 = !DILocation(line: 630, column: 11, scope: !775)
!775 = distinct !DILexicalBlock(scope: !770, file: !49, line: 630, column: 11)
!776 = !DILocation(line: 630, column: 11, scope: !770)
!777 = !DILocation(line: 632, column: 26, scope: !778)
!778 = distinct !DILexicalBlock(scope: !779, file: !49, line: 632, column: 15)
!779 = distinct !DILexicalBlock(scope: !775, file: !49, line: 631, column: 9)
!780 = !DILocation(line: 632, column: 34, scope: !778)
!781 = !DILocation(line: 632, column: 37, scope: !778)
!782 = !DILocation(line: 632, column: 15, scope: !779)
!783 = !DILocation(line: 636, column: 29, scope: !784)
!784 = distinct !DILexicalBlock(scope: !779, file: !49, line: 636, column: 15)
!785 = !DILocation(line: 640, column: 16, scope: !770)
!786 = distinct !{!786, !765, !787, !687}
!787 = !DILocation(line: 641, column: 5, scope: !48)
!788 = !DILocation(line: 644, column: 3, scope: !48)
!789 = !DILocation(line: 0, scope: !670, inlinedAt: !790)
!790 = distinct !DILocation(line: 648, column: 31, scope: !48)
!791 = !DILocation(line: 0, scope: !670, inlinedAt: !792)
!792 = distinct !DILocation(line: 649, column: 31, scope: !48)
!793 = !DILocation(line: 0, scope: !670, inlinedAt: !794)
!794 = distinct !DILocation(line: 650, column: 31, scope: !48)
!795 = !DILocation(line: 0, scope: !670, inlinedAt: !796)
!796 = distinct !DILocation(line: 651, column: 31, scope: !48)
!797 = !DILocation(line: 0, scope: !670, inlinedAt: !798)
!798 = distinct !DILocation(line: 652, column: 31, scope: !48)
!799 = !DILocation(line: 0, scope: !670, inlinedAt: !800)
!800 = distinct !DILocation(line: 653, column: 31, scope: !48)
!801 = !DILocation(line: 0, scope: !670, inlinedAt: !802)
!802 = distinct !DILocation(line: 654, column: 31, scope: !48)
!803 = !DILocation(line: 0, scope: !670, inlinedAt: !804)
!804 = distinct !DILocation(line: 655, column: 31, scope: !48)
!805 = !DILocation(line: 0, scope: !670, inlinedAt: !806)
!806 = distinct !DILocation(line: 656, column: 31, scope: !48)
!807 = !DILocation(line: 0, scope: !670, inlinedAt: !808)
!808 = distinct !DILocation(line: 657, column: 31, scope: !48)
!809 = !DILocation(line: 663, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !48, file: !49, line: 663, column: 7)
!811 = !DILocation(line: 664, column: 7, scope: !810)
!812 = !DILocation(line: 664, column: 10, scope: !810)
!813 = !DILocation(line: 663, column: 7, scope: !48)
!814 = !DILocation(line: 669, column: 7, scope: !815)
!815 = distinct !DILexicalBlock(scope: !810, file: !49, line: 665, column: 5)
!816 = !DILocation(line: 671, column: 5, scope: !815)
!817 = !DILocation(line: 676, column: 7, scope: !818)
!818 = distinct !DILexicalBlock(scope: !810, file: !49, line: 673, column: 5)
!819 = !DILocation(line: 679, column: 3, scope: !48)
!820 = !DILocation(line: 683, column: 3, scope: !48)
!821 = !DILocation(line: 686, column: 3, scope: !48)
!822 = !DILocation(line: 688, column: 3, scope: !48)
!823 = !DILocation(line: 691, column: 3, scope: !48)
!824 = !DILocation(line: 695, column: 3, scope: !48)
!825 = !DILocation(line: 696, column: 1, scope: !48)
!826 = !DISubprogram(name: "setlocale", scope: !827, file: !827, line: 122, type: !828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!827 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!828 = !DISubroutineType(types: !829)
!829 = !{!32, !38, !42}
!830 = !DISubprogram(name: "getenv", scope: !831, file: !831, line: 641, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!831 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!832 = !DISubroutineType(types: !833)
!833 = !{!32, !42}
!834 = !DISubprogram(name: "fwrite_unlocked", scope: !367, file: !367, line: 704, type: !835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!835 = !DISubroutineType(types: !836)
!836 = !{!40, !837, !40, !40, !717}
!837 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!840 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 273, type: !841, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{!38, !38, !313}
!843 = !{!844, !845, !846, !847, !848, !849}
!844 = !DILocalVariable(name: "argc", arg: 1, scope: !840, file: !3, line: 273, type: !38)
!845 = !DILocalVariable(name: "argv", arg: 2, scope: !840, file: !3, line: 273, type: !313)
!846 = !DILocalVariable(name: "have_tabval", scope: !840, file: !3, line: 275, type: !35)
!847 = !DILocalVariable(name: "tabval", scope: !840, file: !3, line: 276, type: !166)
!848 = !DILocalVariable(name: "c", scope: !840, file: !3, line: 277, type: !38)
!849 = !DILocalVariable(name: "convert_first_only", scope: !840, file: !3, line: 281, type: !35)
!850 = !DILocation(line: 0, scope: !840)
!851 = !DILocation(line: 284, column: 21, scope: !840)
!852 = !DILocation(line: 284, column: 3, scope: !840)
!853 = !DILocation(line: 285, column: 3, scope: !840)
!854 = !DILocation(line: 286, column: 3, scope: !840)
!855 = !DILocation(line: 287, column: 3, scope: !840)
!856 = !DILocation(line: 289, column: 3, scope: !840)
!857 = !DILocation(line: 291, column: 3, scope: !840)
!858 = !DILocation(line: 291, column: 15, scope: !840)
!859 = distinct !{!859, !857, !860, !687}
!860 = !DILocation(line: 325, column: 5, scope: !840)
!861 = !DILocation(line: 297, column: 11, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 295, column: 9)
!863 = distinct !DILexicalBlock(scope: !840, file: !3, line: 293, column: 5)
!864 = !DILocation(line: 299, column: 31, scope: !862)
!865 = !{!866, !866, i64 0}
!866 = !{!"_Bool", !626, i64 0}
!867 = !DILocation(line: 300, column: 11, scope: !862)
!868 = !DILocation(line: 302, column: 31, scope: !862)
!869 = !DILocation(line: 303, column: 28, scope: !862)
!870 = !DILocation(line: 303, column: 11, scope: !862)
!871 = !DILocation(line: 304, column: 11, scope: !862)
!872 = !DILocation(line: 309, column: 15, scope: !862)
!873 = !DILocation(line: 310, column: 13, scope: !874)
!874 = distinct !DILexicalBlock(scope: !862, file: !3, line: 309, column: 15)
!875 = !DILocation(line: 313, column: 9, scope: !862)
!876 = !DILocation(line: 314, column: 9, scope: !862)
!877 = !DILocation(line: 316, column: 15, scope: !862)
!878 = !DILocation(line: 321, column: 16, scope: !879)
!879 = distinct !DILexicalBlock(scope: !862, file: !3, line: 321, column: 15)
!880 = !DILocation(line: 321, column: 15, scope: !862)
!881 = !DILocation(line: 322, column: 13, scope: !879)
!882 = !DILocation(line: 327, column: 7, scope: !840)
!883 = !DILocation(line: 328, column: 25, scope: !884)
!884 = distinct !DILexicalBlock(scope: !840, file: !3, line: 327, column: 7)
!885 = !DILocation(line: 328, column: 5, scope: !884)
!886 = !DILocation(line: 330, column: 7, scope: !840)
!887 = !DILocation(line: 331, column: 5, scope: !888)
!888 = distinct !DILexicalBlock(scope: !840, file: !3, line: 330, column: 7)
!889 = !DILocation(line: 333, column: 3, scope: !840)
!890 = !DILocation(line: 335, column: 19, scope: !840)
!891 = !DILocation(line: 335, column: 26, scope: !840)
!892 = !DILocation(line: 335, column: 18, scope: !840)
!893 = !DILocation(line: 335, column: 3, scope: !840)
!894 = !DILocation(line: 117, column: 14, scope: !133, inlinedAt: !895)
!895 = distinct !DILocation(line: 337, column: 3, scope: !840)
!896 = !DILocation(line: 0, scope: !133, inlinedAt: !895)
!897 = !DILocation(line: 124, column: 8, scope: !898, inlinedAt: !895)
!898 = distinct !DILexicalBlock(scope: !133, file: !3, line: 124, column: 7)
!899 = !DILocation(line: 124, column: 7, scope: !133, inlinedAt: !895)
!900 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !901, file: !141, line: 56, type: !904)
!901 = distinct !DISubprogram(name: "mbbuf_init", scope: !141, file: !141, line: 56, type: !902, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !904, !32, !147, !71}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!905 = !{!900, !906, !907, !908}
!906 = !DILocalVariable(name: "buffer", arg: 2, scope: !901, file: !141, line: 56, type: !32)
!907 = !DILocalVariable(name: "size", arg: 3, scope: !901, file: !141, line: 56, type: !147)
!908 = !DILocalVariable(name: "fp", arg: 4, scope: !901, file: !141, line: 56, type: !71)
!909 = !DILocation(line: 0, scope: !901, inlinedAt: !910)
!910 = distinct !DILocation(line: 129, column: 3, scope: !133, inlinedAt: !895)
!911 = !DILocation(line: 134, column: 29, scope: !133, inlinedAt: !895)
!912 = !{!913, !913, i64 0}
!913 = !{!"long", !626, i64 0}
!914 = !DILocation(line: 134, column: 62, scope: !133, inlinedAt: !895)
!915 = !DILocation(line: 134, column: 19, scope: !133, inlinedAt: !895)
!916 = !DILocation(line: 136, column: 3, scope: !133, inlinedAt: !895)
!917 = !DILocation(line: 61, column: 13, scope: !901, inlinedAt: !910)
!918 = !DILocation(line: 0, scope: !153, inlinedAt: !895)
!919 = !DILocation(line: 155, column: 7, scope: !153, inlinedAt: !895)
!920 = !DILocation(line: 155, column: 13, scope: !153, inlinedAt: !895)
!921 = !DILocation(line: 171, column: 7, scope: !153, inlinedAt: !895)
!922 = !DILocation(line: 173, column: 11, scope: !179, inlinedAt: !895)
!923 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !924, file: !141, line: 71, type: !904)
!924 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !141, file: !141, line: 71, type: !925, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !927)
!925 = !DISubroutineType(types: !926)
!926 = !{!154, !904}
!927 = !{!923, !928, !929, !932}
!928 = !DILocalVariable(name: "available", scope: !924, file: !141, line: 73, type: !147)
!929 = !DILocalVariable(name: "start", scope: !930, file: !141, line: 77, type: !147)
!930 = distinct !DILexicalBlock(scope: !931, file: !141, line: 76, column: 5)
!931 = distinct !DILexicalBlock(scope: !924, file: !141, line: 75, column: 7)
!932 = !DILocalVariable(name: "g", scope: !924, file: !141, line: 92, type: !154)
!933 = !DILocation(line: 0, scope: !924, inlinedAt: !934)
!934 = distinct !DILocation(line: 173, column: 23, scope: !179, inlinedAt: !895)
!935 = !DILocation(line: 73, column: 35, scope: !924, inlinedAt: !934)
!936 = !DILocation(line: 75, column: 17, scope: !931, inlinedAt: !934)
!937 = !DILocation(line: 75, column: 32, scope: !931, inlinedAt: !934)
!938 = !DILocalVariable(name: "__stream", arg: 1, scope: !939, file: !940, line: 128, type: !71)
!939 = distinct !DISubprogram(name: "feof_unlocked", scope: !940, file: !940, line: 128, type: !941, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !943)
!940 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!941 = !DISubroutineType(types: !942)
!942 = !{!38, !71}
!943 = !{!938}
!944 = !DILocation(line: 0, scope: !939, inlinedAt: !945)
!945 = distinct !DILocation(line: 75, column: 37, scope: !931, inlinedAt: !934)
!946 = !DILocation(line: 130, column: 10, scope: !939, inlinedAt: !945)
!947 = !{!948, !721, i64 0}
!948 = !{!"_IO_FILE", !721, i64 0, !625, i64 8, !625, i64 16, !625, i64 24, !625, i64 32, !625, i64 40, !625, i64 48, !625, i64 56, !625, i64 64, !625, i64 72, !625, i64 80, !625, i64 88, !625, i64 96, !625, i64 104, !721, i64 112, !721, i64 116, !913, i64 120, !755, i64 128, !626, i64 130, !626, i64 131, !625, i64 136, !913, i64 144, !625, i64 152, !625, i64 160, !625, i64 168, !625, i64 176, !913, i64 184, !721, i64 192, !626, i64 196}
!949 = !DILocation(line: 75, column: 37, scope: !931, inlinedAt: !934)
!950 = !DILocation(line: 75, column: 7, scope: !924, inlinedAt: !934)
!951 = !DILocation(line: 78, column: 15, scope: !952, inlinedAt: !934)
!952 = distinct !DILexicalBlock(scope: !930, file: !141, line: 78, column: 11)
!953 = !DILocation(line: 78, column: 11, scope: !930, inlinedAt: !934)
!954 = !DILocation(line: 82, column: 49, scope: !955, inlinedAt: !934)
!955 = distinct !DILexicalBlock(scope: !952, file: !141, line: 81, column: 9)
!956 = !DILocalVariable(name: "__dest", arg: 1, scope: !957, file: !958, line: 34, type: !34)
!957 = distinct !DISubprogram(name: "memmove", scope: !958, file: !958, line: 34, type: !959, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !961)
!958 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!959 = !DISubroutineType(types: !960)
!960 = !{!34, !34, !838, !40}
!961 = !{!956, !962, !963}
!962 = !DILocalVariable(name: "__src", arg: 2, scope: !957, file: !958, line: 34, type: !838)
!963 = !DILocalVariable(name: "__len", arg: 3, scope: !957, file: !958, line: 34, type: !40)
!964 = !DILocation(line: 0, scope: !957, inlinedAt: !965)
!965 = distinct !DILocation(line: 82, column: 11, scope: !955, inlinedAt: !934)
!966 = !DILocation(line: 36, column: 10, scope: !957, inlinedAt: !965)
!967 = !DILocation(line: 0, scope: !930, inlinedAt: !934)
!968 = !DILocation(line: 0, scope: !952, inlinedAt: !934)
!969 = !DILocation(line: 85, column: 23, scope: !930, inlinedAt: !934)
!970 = !DILocation(line: 86, column: 41, scope: !930, inlinedAt: !934)
!971 = !DILocation(line: 89, column: 5, scope: !930, inlinedAt: !934)
!972 = !DILocation(line: 90, column: 17, scope: !973, inlinedAt: !934)
!973 = distinct !DILexicalBlock(scope: !924, file: !141, line: 90, column: 7)
!974 = !DILocation(line: 90, column: 7, scope: !924, inlinedAt: !934)
!975 = !DILocation(line: 92, column: 39, scope: !924, inlinedAt: !934)
!976 = !DILocalVariable(name: "p", arg: 1, scope: !977, file: !22, line: 230, type: !42)
!977 = distinct !DISubprogram(name: "mcel_scan", scope: !22, file: !22, line: 230, type: !978, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !980)
!978 = !DISubroutineType(types: !979)
!979 = !{!154, !42, !42}
!980 = !{!976, !981, !982, !983, !994, !995}
!981 = !DILocalVariable(name: "lim", arg: 2, scope: !977, file: !22, line: 230, type: !42)
!982 = !DILocalVariable(name: "c", scope: !977, file: !22, line: 235, type: !33)
!983 = !DILocalVariable(name: "mbs", scope: !977, file: !22, line: 244, type: !984)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !415, line: 6, baseType: !985)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !417, line: 21, baseType: !986)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !417, line: 13, size: 64, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !986, file: !417, line: 15, baseType: !38, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !986, file: !417, line: 20, baseType: !990, size: 32, offset: 32)
!990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !986, file: !417, line: 16, size: 32, elements: !991)
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !990, file: !417, line: 18, baseType: !7, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !990, file: !417, line: 19, baseType: !426, size: 32)
!994 = !DILocalVariable(name: "ch", scope: !977, file: !22, line: 267, type: !158)
!995 = !DILocalVariable(name: "len", scope: !977, file: !22, line: 268, type: !40)
!996 = !DILocation(line: 0, scope: !977, inlinedAt: !997)
!997 = distinct !DILocation(line: 92, column: 14, scope: !924, inlinedAt: !934)
!998 = !DILocation(line: 235, column: 12, scope: !977, inlinedAt: !997)
!999 = !DILocalVariable(name: "c", arg: 1, scope: !1000, file: !22, line: 215, type: !33)
!1000 = distinct !DISubprogram(name: "mcel_isbasic", scope: !22, file: !22, line: 215, type: !1001, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1003)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!35, !33}
!1003 = !{!999}
!1004 = !DILocation(line: 0, scope: !1000, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 236, column: 7, scope: !1006, inlinedAt: !997)
!1006 = distinct !DILexicalBlock(scope: !977, file: !22, line: 236, column: 7)
!1007 = !DILocation(line: 217, column: 10, scope: !1000, inlinedAt: !1005)
!1008 = !DILocation(line: 236, column: 7, scope: !977, inlinedAt: !997)
!1009 = !DILocalVariable(name: "len", arg: 2, scope: !1010, file: !22, line: 167, type: !40)
!1010 = distinct !DISubprogram(name: "mcel_ch", scope: !22, file: !22, line: 167, type: !1011, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1013)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!154, !158, !40}
!1013 = !{!1014, !1009}
!1014 = !DILocalVariable(name: "ch", arg: 1, scope: !1010, file: !22, line: 167, type: !158)
!1015 = !DILocation(line: 0, scope: !1010, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 237, column: 12, scope: !1006, inlinedAt: !997)
!1017 = !DILocation(line: 172, column: 3, scope: !1010, inlinedAt: !1016)
!1018 = !DILocation(line: 237, column: 5, scope: !1006, inlinedAt: !997)
!1019 = !DILocation(line: 93, column: 39, scope: !924, inlinedAt: !934)
!1020 = !DILocation(line: 244, column: 3, scope: !977, inlinedAt: !997)
!1021 = !DILocation(line: 244, column: 13, scope: !977, inlinedAt: !997)
!1022 = !DILocation(line: 244, column: 30, scope: !977, inlinedAt: !997)
!1023 = !{!1024, !721, i64 0}
!1024 = !{!"", !721, i64 0, !626, i64 4}
!1025 = !DILocation(line: 267, column: 3, scope: !977, inlinedAt: !997)
!1026 = !DILocation(line: 268, column: 38, scope: !977, inlinedAt: !997)
!1027 = !DILocation(line: 268, column: 16, scope: !977, inlinedAt: !997)
!1028 = !DILocation(line: 274, column: 7, scope: !1029, inlinedAt: !997)
!1029 = distinct !DILexicalBlock(scope: !977, file: !22, line: 274, column: 7)
!1030 = !DILocation(line: 274, column: 7, scope: !977, inlinedAt: !997)
!1031 = !{!"branch_weights", i32 1, i32 2000}
!1032 = !DILocalVariable(name: "err", arg: 1, scope: !1033, file: !22, line: 175, type: !44)
!1033 = distinct !DISubprogram(name: "mcel_err", scope: !22, file: !22, line: 175, type: !1034, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1036)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!154, !44}
!1036 = !{!1032}
!1037 = !DILocation(line: 0, scope: !1033, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 275, column: 12, scope: !1029, inlinedAt: !997)
!1039 = !DILocation(line: 178, column: 3, scope: !1033, inlinedAt: !1038)
!1040 = !DILocation(line: 275, column: 5, scope: !1029, inlinedAt: !997)
!1041 = !DILocation(line: 279, column: 19, scope: !977, inlinedAt: !997)
!1042 = !DILocation(line: 0, scope: !1010, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 279, column: 10, scope: !977, inlinedAt: !997)
!1044 = !DILocation(line: 169, column: 3, scope: !1010, inlinedAt: !1043)
!1045 = !DILocation(line: 170, column: 3, scope: !1010, inlinedAt: !1043)
!1046 = !DILocation(line: 171, column: 3, scope: !1010, inlinedAt: !1043)
!1047 = !DILocation(line: 172, column: 3, scope: !1010, inlinedAt: !1043)
!1048 = !DILocation(line: 279, column: 3, scope: !977, inlinedAt: !997)
!1049 = !DILocation(line: 280, column: 1, scope: !977, inlinedAt: !997)
!1050 = !DILocation(line: 94, column: 9, scope: !1051, inlinedAt: !934)
!1051 = distinct !DILexicalBlock(scope: !924, file: !141, line: 94, column: 7)
!1052 = !DILocation(line: 94, column: 7, scope: !924, inlinedAt: !934)
!1053 = !DILocation(line: 92, column: 14, scope: !924, inlinedAt: !934)
!1054 = !DILocation(line: 95, column: 22, scope: !1051, inlinedAt: !934)
!1055 = !DILocation(line: 95, column: 5, scope: !1051, inlinedAt: !934)
!1056 = !DILocation(line: 99, column: 30, scope: !1057, inlinedAt: !934)
!1057 = distinct !DILexicalBlock(scope: !1051, file: !141, line: 97, column: 5)
!1058 = !DILocation(line: 99, column: 14, scope: !1057, inlinedAt: !934)
!1059 = !DILocation(line: 0, scope: !1051, inlinedAt: !934)
!1060 = !DILocation(line: 173, column: 23, scope: !179, inlinedAt: !895)
!1061 = !DILocation(line: 173, column: 51, scope: !179, inlinedAt: !895)
!1062 = !DILocation(line: 174, column: 18, scope: !179, inlinedAt: !895)
!1063 = !DILocation(line: 174, column: 27, scope: !179, inlinedAt: !895)
!1064 = distinct !{!1064, !922, !1065, !687}
!1065 = !DILocation(line: 175, column: 60, scope: !179, inlinedAt: !895)
!1066 = !DILocation(line: 177, column: 15, scope: !179, inlinedAt: !895)
!1067 = !DILocalVariable(name: "wc", arg: 1, scope: !1068, file: !49, line: 178, type: !158)
!1068 = distinct !DISubprogram(name: "c32issep", scope: !49, file: !49, line: 178, type: !1069, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1071)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!35, !158}
!1071 = !{!1067}
!1072 = !DILocation(line: 0, scope: !1068, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 179, column: 28, scope: !177, inlinedAt: !895)
!1074 = !DILocalVariable(name: "wc", arg: 1, scope: !1075, file: !1076, line: 770, type: !1079)
!1075 = distinct !DISubprogram(name: "c32isblank", scope: !1076, file: !1076, line: 770, type: !1077, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1081)
!1076 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!38, !1079}
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1080, line: 20, baseType: !7)
!1080 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1081 = !{!1074}
!1082 = !DILocation(line: 0, scope: !1075, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 181, column: 13, scope: !1068, inlinedAt: !1073)
!1084 = !DILocation(line: 776, column: 10, scope: !1075, inlinedAt: !1083)
!1085 = !DILocation(line: 181, column: 11, scope: !1068, inlinedAt: !1073)
!1086 = !DILocation(line: 0, scope: !177, inlinedAt: !895)
!1087 = !DILocation(line: 181, column: 19, scope: !177, inlinedAt: !895)
!1088 = !DILocation(line: 183, column: 19, scope: !181, inlinedAt: !895)
!1089 = !DILocation(line: 0, scope: !181, inlinedAt: !895)
!1090 = !DILocation(line: 185, column: 37, scope: !181, inlinedAt: !895)
!1091 = !DILocation(line: 188, column: 23, scope: !1092, inlinedAt: !895)
!1092 = distinct !DILexicalBlock(scope: !181, file: !3, line: 188, column: 23)
!1093 = !{i8 0, i8 2}
!1094 = !DILocation(line: 191, column: 23, scope: !181, inlinedAt: !895)
!1095 = !DILocation(line: 193, column: 32, scope: !1096, inlinedAt: !895)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 193, column: 27)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 192, column: 21)
!1098 = distinct !DILexicalBlock(scope: !181, file: !3, line: 191, column: 23)
!1099 = !DILocation(line: 193, column: 27, scope: !1097, inlinedAt: !895)
!1100 = !DILocation(line: 197, column: 31, scope: !1101, inlinedAt: !895)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 197, column: 31)
!1102 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 194, column: 25)
!1103 = !DILocation(line: 197, column: 31, scope: !1102, inlinedAt: !895)
!1104 = !DILocalVariable(name: "wc", arg: 1, scope: !1105, file: !1076, line: 1004, type: !158)
!1105 = distinct !DISubprogram(name: "c32width", scope: !1076, file: !1076, line: 1004, type: !1106, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1108)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!38, !158}
!1108 = !{!1104}
!1109 = !DILocation(line: 0, scope: !1105, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 202, column: 37, scope: !1111, inlinedAt: !895)
!1111 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 201, column: 25)
!1112 = !DILocation(line: 1010, column: 10, scope: !1105, inlinedAt: !1110)
!1113 = !DILocation(line: 202, column: 37, scope: !1111, inlinedAt: !895)
!1114 = !DILocation(line: 202, column: 34, scope: !1111, inlinedAt: !895)
!1115 = !DILocation(line: 204, column: 45, scope: !1116, inlinedAt: !895)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 204, column: 31)
!1117 = !DILocation(line: 219, column: 31, scope: !1118, inlinedAt: !895)
!1118 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 219, column: 31)
!1119 = !DILocalVariable(name: "__c", arg: 1, scope: !1120, file: !940, line: 101, type: !38)
!1120 = distinct !DISubprogram(name: "putc_unlocked", scope: !940, file: !940, line: 101, type: !1121, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1123)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!38, !38, !71}
!1123 = !{!1119, !1124}
!1124 = !DILocalVariable(name: "__stream", arg: 2, scope: !1120, file: !940, line: 101, type: !71)
!1125 = !DILocation(line: 0, scope: !1120, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 219, column: 31, scope: !1118, inlinedAt: !895)
!1127 = !DILocation(line: 103, column: 10, scope: !1120, inlinedAt: !1126)
!1128 = !{!948, !625, i64 40}
!1129 = !{!948, !625, i64 48}
!1130 = !{!"branch_weights", i32 2000, i32 1}
!1131 = !DILocation(line: 219, column: 31, scope: !1111, inlinedAt: !895)
!1132 = !DILocation(line: 219, column: 51, scope: !1118, inlinedAt: !895)
!1133 = !DILocation(line: 948, column: 21, scope: !1134, inlinedAt: !1137)
!1134 = distinct !DISubprogram(name: "write_error", scope: !49, file: !49, line: 946, type: !134, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1135)
!1135 = !{!1136}
!1136 = !DILocalVariable(name: "saved_errno", scope: !1134, file: !49, line: 948, type: !38)
!1137 = distinct !DILocation(line: 220, column: 29, scope: !1118, inlinedAt: !895)
!1138 = !DILocation(line: 0, scope: !1134, inlinedAt: !1137)
!1139 = !DILocation(line: 949, column: 3, scope: !1134, inlinedAt: !1137)
!1140 = !DILocation(line: 950, column: 11, scope: !1134, inlinedAt: !1137)
!1141 = !DILocation(line: 950, column: 3, scope: !1134, inlinedAt: !1137)
!1142 = !DILocation(line: 951, column: 3, scope: !1134, inlinedAt: !1137)
!1143 = !DILocation(line: 952, column: 3, scope: !1134, inlinedAt: !1137)
!1144 = !DILocation(line: 0, scope: !1096, inlinedAt: !895)
!1145 = !DILocation(line: 226, column: 33, scope: !1097, inlinedAt: !895)
!1146 = !DILocation(line: 0, scope: !179, inlinedAt: !895)
!1147 = !DILocation(line: 227, column: 21, scope: !1097, inlinedAt: !895)
!1148 = !DILocation(line: 228, column: 17, scope: !182, inlinedAt: !895)
!1149 = !DILocation(line: 229, column: 29, scope: !185, inlinedAt: !895)
!1150 = !DILocation(line: 229, column: 24, scope: !182, inlinedAt: !895)
!1151 = !DILocation(line: 233, column: 30, scope: !1152, inlinedAt: !895)
!1152 = distinct !DILexicalBlock(scope: !185, file: !3, line: 230, column: 17)
!1153 = !DILocation(line: 233, column: 26, scope: !1152, inlinedAt: !895)
!1154 = !DILocation(line: 235, column: 34, scope: !1152, inlinedAt: !895)
!1155 = !DILocation(line: 235, column: 33, scope: !1152, inlinedAt: !895)
!1156 = !DILocation(line: 235, column: 29, scope: !1152, inlinedAt: !895)
!1157 = !DILocation(line: 236, column: 17, scope: !1152, inlinedAt: !895)
!1158 = !DILocation(line: 0, scope: !1105, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 239, column: 31, scope: !184, inlinedAt: !895)
!1160 = !DILocation(line: 1010, column: 10, scope: !1105, inlinedAt: !1159)
!1161 = !DILocation(line: 0, scope: !184, inlinedAt: !895)
!1162 = !DILocation(line: 240, column: 23, scope: !1163, inlinedAt: !895)
!1163 = distinct !DILexicalBlock(scope: !184, file: !3, line: 240, column: 23)
!1164 = !DILocation(line: 240, column: 23, scope: !184, inlinedAt: !895)
!1165 = !DILocation(line: 241, column: 21, scope: !1163, inlinedAt: !895)
!1166 = !DILocation(line: 0, scope: !182, inlinedAt: !895)
!1167 = !DILocation(line: 244, column: 19, scope: !190, inlinedAt: !895)
!1168 = !DILocation(line: 244, column: 19, scope: !177, inlinedAt: !895)
!1169 = !DILocation(line: 246, column: 31, scope: !1170, inlinedAt: !895)
!1170 = distinct !DILexicalBlock(scope: !189, file: !3, line: 246, column: 23)
!1171 = !DILocation(line: 246, column: 35, scope: !1170, inlinedAt: !895)
!1172 = !DILocation(line: 247, column: 38, scope: !1170, inlinedAt: !895)
!1173 = !DILocation(line: 247, column: 21, scope: !1170, inlinedAt: !895)
!1174 = !DILocation(line: 0, scope: !188, inlinedAt: !895)
!1175 = !DILocation(line: 248, column: 23, scope: !188, inlinedAt: !895)
!1176 = !DILocation(line: 248, column: 66, scope: !188, inlinedAt: !895)
!1177 = !DILocation(line: 248, column: 23, scope: !189, inlinedAt: !895)
!1178 = !DILocation(line: 948, column: 21, scope: !1134, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 249, column: 21, scope: !188, inlinedAt: !895)
!1180 = !DILocation(line: 0, scope: !1134, inlinedAt: !1179)
!1181 = !DILocation(line: 949, column: 3, scope: !1134, inlinedAt: !1179)
!1182 = !DILocation(line: 950, column: 11, scope: !1134, inlinedAt: !1179)
!1183 = !DILocation(line: 950, column: 3, scope: !1134, inlinedAt: !1179)
!1184 = !DILocation(line: 951, column: 3, scope: !1134, inlinedAt: !1179)
!1185 = !DILocation(line: 952, column: 3, scope: !1134, inlinedAt: !1179)
!1186 = !DILocation(line: 255, column: 26, scope: !177, inlinedAt: !895)
!1187 = !DILocation(line: 255, column: 46, scope: !177, inlinedAt: !895)
!1188 = !DILocation(line: 255, column: 23, scope: !177, inlinedAt: !895)
!1189 = !DILocation(line: 208, column: 35, scope: !1190, inlinedAt: !895)
!1190 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 205, column: 29)
!1191 = !DILocation(line: 210, column: 53, scope: !1190, inlinedAt: !895)
!1192 = !DILocalVariable(name: "g", arg: 2, scope: !1193, file: !141, line: 107, type: !154)
!1193 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !141, file: !141, line: 107, type: !1194, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!32, !904, !154}
!1196 = !{!1197, !1192}
!1197 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1193, file: !141, line: 107, type: !904)
!1198 = !DILocation(line: 0, scope: !1193, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 211, column: 39, scope: !1190, inlinedAt: !895)
!1200 = !DILocation(line: 109, column: 23, scope: !1201, inlinedAt: !1199)
!1201 = distinct !DILexicalBlock(scope: !1193, file: !141, line: 109, column: 7)
!1202 = !DILocation(line: 109, column: 21, scope: !1201, inlinedAt: !1199)
!1203 = !DILocation(line: 109, column: 7, scope: !1193, inlinedAt: !1199)
!1204 = !DILocation(line: 111, column: 41, scope: !1193, inlinedAt: !1199)
!1205 = !DILocation(line: 111, column: 24, scope: !1193, inlinedAt: !1199)
!1206 = !DILocalVariable(name: "__dest", arg: 1, scope: !1207, file: !958, line: 26, type: !1210)
!1207 = distinct !DISubprogram(name: "memcpy", scope: !958, file: !958, line: 26, type: !1208, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1211)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!34, !1210, !837, !40}
!1210 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!1211 = !{!1206, !1212, !1213}
!1212 = !DILocalVariable(name: "__src", arg: 2, scope: !1207, file: !958, line: 26, type: !837)
!1213 = !DILocalVariable(name: "__len", arg: 3, scope: !1207, file: !958, line: 26, type: !40)
!1214 = !DILocation(line: 0, scope: !1207, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 210, column: 31, scope: !1190, inlinedAt: !895)
!1216 = !DILocation(line: 29, column: 10, scope: !1207, inlinedAt: !1215)
!1217 = !DILocation(line: 212, column: 39, scope: !1190, inlinedAt: !895)
!1218 = !DILocation(line: 258, column: 15, scope: !179, inlinedAt: !895)
!1219 = !DILocation(line: 260, column: 15, scope: !1220, inlinedAt: !895)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 259, column: 13)
!1221 = distinct !DILexicalBlock(scope: !179, file: !3, line: 258, column: 15)
!1222 = !DILocation(line: 269, column: 5, scope: !133, inlinedAt: !895)
!1223 = !DILocation(line: 264, column: 11, scope: !179, inlinedAt: !895)
!1224 = !DILocation(line: 0, scope: !1193, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 264, column: 11, scope: !179, inlinedAt: !895)
!1226 = !DILocation(line: 109, column: 21, scope: !1201, inlinedAt: !1225)
!1227 = !DILocation(line: 109, column: 7, scope: !1193, inlinedAt: !1225)
!1228 = !DILocation(line: 111, column: 41, scope: !1193, inlinedAt: !1225)
!1229 = !DILocation(line: 111, column: 24, scope: !1193, inlinedAt: !1225)
!1230 = !DILocation(line: 265, column: 15, scope: !1231, inlinedAt: !895)
!1231 = distinct !DILexicalBlock(scope: !179, file: !3, line: 265, column: 15)
!1232 = !DILocalVariable(name: "__stream", arg: 1, scope: !1233, file: !940, line: 135, type: !71)
!1233 = distinct !DISubprogram(name: "ferror_unlocked", scope: !940, file: !940, line: 135, type: !941, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1234)
!1234 = !{!1232}
!1235 = !DILocation(line: 0, scope: !1233, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 265, column: 15, scope: !1231, inlinedAt: !895)
!1237 = !DILocation(line: 137, column: 10, scope: !1233, inlinedAt: !1236)
!1238 = !DILocation(line: 265, column: 15, scope: !179, inlinedAt: !895)
!1239 = !DILocation(line: 948, column: 21, scope: !1134, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 266, column: 13, scope: !1231, inlinedAt: !895)
!1241 = !DILocation(line: 0, scope: !1134, inlinedAt: !1240)
!1242 = !DILocation(line: 949, column: 3, scope: !1134, inlinedAt: !1240)
!1243 = !DILocation(line: 950, column: 11, scope: !1134, inlinedAt: !1240)
!1244 = !DILocation(line: 950, column: 3, scope: !1134, inlinedAt: !1240)
!1245 = !DILocation(line: 951, column: 3, scope: !1134, inlinedAt: !1240)
!1246 = !DILocation(line: 952, column: 3, scope: !1134, inlinedAt: !1240)
!1247 = !DILocation(line: 250, column: 27, scope: !189, inlinedAt: !895)
!1248 = !DILocation(line: 195, column: 34, scope: !1102, inlinedAt: !895)
!1249 = !DILocation(line: 268, column: 19, scope: !153, inlinedAt: !895)
!1250 = !DILocation(line: 267, column: 9, scope: !179, inlinedAt: !895)
!1251 = distinct !{!1251, !921, !1252, !687}
!1252 = !DILocation(line: 268, column: 26, scope: !153, inlinedAt: !895)
!1253 = distinct !{!1253, !916, !1222}
!1254 = !DILocation(line: 339, column: 3, scope: !840)
!1255 = !DILocation(line: 341, column: 10, scope: !840)
!1256 = !DILocation(line: 342, column: 1, scope: !840)
!1257 = !DISubprogram(name: "bindtextdomain", scope: !710, file: !710, line: 86, type: !1258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!32, !42, !42}
!1260 = !DISubprogram(name: "textdomain", scope: !710, file: !710, line: 82, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!1261 = !DISubprogram(name: "atexit", scope: !831, file: !831, line: 602, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!38, !393}
!1264 = !DISubprogram(name: "getopt_long", scope: !203, file: !203, line: 66, type: !1265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!38, !38, !1267, !42, !1269, !208}
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!1270 = !DISubprogram(name: "mbrtoc32", scope: !159, file: !159, line: 57, type: !1271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!40, !1273, !716, !40, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1274)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1276)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!1277 = !DISubprogram(name: "iswblank", scope: !1278, file: !1278, line: 146, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!1278 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1279 = !DISubprogram(name: "wcwidth", scope: !1280, file: !1280, line: 368, type: !1281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!1280 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!38, !1283}
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !41, line: 74, baseType: !7)
!1284 = !DISubprogram(name: "fflush_unlocked", scope: !367, file: !367, line: 239, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!1285 = !DISubprogram(name: "clearerr_unlocked", scope: !367, file: !367, line: 794, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !71}
!1288 = distinct !DISubprogram(name: "add_tab_stop", scope: !215, file: !215, line: 84, type: !1289, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1291)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !166}
!1291 = !{!1292, !1293, !1294}
!1292 = !DILocalVariable(name: "tabval", arg: 1, scope: !1288, file: !215, line: 84, type: !166)
!1293 = !DILocalVariable(name: "prev_column", scope: !1288, file: !215, line: 86, type: !166)
!1294 = !DILocalVariable(name: "column_width", scope: !1288, file: !215, line: 87, type: !166)
!1295 = !DILocation(line: 0, scope: !1288)
!1296 = !DILocation(line: 86, column: 23, scope: !1288)
!1297 = !DILocation(line: 86, column: 40, scope: !1288)
!1298 = !DILocation(line: 86, column: 64, scope: !1288)
!1299 = !DILocation(line: 89, column: 25, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1288, file: !215, line: 89, column: 7)
!1301 = !DILocation(line: 89, column: 22, scope: !1300)
!1302 = !DILocation(line: 89, column: 7, scope: !1288)
!1303 = !DILocation(line: 91, column: 3, scope: !1288)
!1304 = !DILocation(line: 90, column: 25, scope: !1300)
!1305 = !DILocation(line: 90, column: 16, scope: !1300)
!1306 = !DILocation(line: 90, column: 14, scope: !1300)
!1307 = !DILocation(line: 90, column: 5, scope: !1300)
!1308 = !DILocation(line: 91, column: 26, scope: !1288)
!1309 = !DILocation(line: 87, column: 36, scope: !1288)
!1310 = !DILocation(line: 87, column: 24, scope: !1288)
!1311 = !DILocation(line: 91, column: 30, scope: !1288)
!1312 = !DILocalVariable(name: "width", arg: 1, scope: !1313, file: !215, line: 73, type: !166)
!1313 = distinct !DISubprogram(name: "set_max_column_width", scope: !215, file: !215, line: 73, type: !1289, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1314)
!1314 = !{!1312}
!1315 = !DILocation(line: 0, scope: !1313, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 93, column: 3, scope: !1288)
!1317 = !DILocation(line: 75, column: 7, scope: !1318, inlinedAt: !1316)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !215, line: 75, column: 7)
!1319 = !DILocation(line: 75, column: 24, scope: !1318, inlinedAt: !1316)
!1320 = !DILocation(line: 75, column: 7, scope: !1313, inlinedAt: !1316)
!1321 = !DILocation(line: 77, column: 11, scope: !1322, inlinedAt: !1316)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !215, line: 77, column: 11)
!1323 = distinct !DILexicalBlock(scope: !1318, file: !215, line: 76, column: 5)
!1324 = !DILocation(line: 77, column: 11, scope: !1323, inlinedAt: !1316)
!1325 = !DILocation(line: 94, column: 1, scope: !1288)
!1326 = distinct !DISubprogram(name: "parse_tab_stops", scope: !215, file: !215, line: 137, type: !646, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1327)
!1327 = !{!1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1346}
!1328 = !DILocalVariable(name: "stops", arg: 1, scope: !1326, file: !215, line: 137, type: !42)
!1329 = !DILocalVariable(name: "have_tabval", scope: !1326, file: !215, line: 139, type: !35)
!1330 = !DILocalVariable(name: "tabval", scope: !1326, file: !215, line: 140, type: !166)
!1331 = !DILocalVariable(name: "extend_tabval", scope: !1326, file: !215, line: 141, type: !35)
!1332 = !DILocalVariable(name: "increment_tabval", scope: !1326, file: !215, line: 142, type: !35)
!1333 = !DILocalVariable(name: "num_start", scope: !1326, file: !215, line: 143, type: !42)
!1334 = !DILocalVariable(name: "ok", scope: !1326, file: !215, line: 144, type: !35)
!1335 = !DILocalVariable(name: "len", scope: !1336, file: !215, line: 207, type: !147)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !215, line: 206, column: 13)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !215, line: 205, column: 15)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !215, line: 196, column: 9)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !215, line: 195, column: 16)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !215, line: 184, column: 16)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !215, line: 173, column: 16)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !215, line: 148, column: 11)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !215, line: 147, column: 5)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !215, line: 146, column: 3)
!1345 = distinct !DILexicalBlock(scope: !1326, file: !215, line: 146, column: 3)
!1346 = !DILocalVariable(name: "bad_num", scope: !1336, file: !215, line: 208, type: !32)
!1347 = !DILocation(line: 0, scope: !1326)
!1348 = !DILocation(line: 146, column: 3, scope: !1326)
!1349 = !DILocation(line: 140, column: 9, scope: !1326)
!1350 = !DILocation(line: 143, column: 15, scope: !1326)
!1351 = !DILocation(line: 146, column: 10, scope: !1344)
!1352 = !DILocation(line: 146, column: 3, scope: !1345)
!1353 = !DILocation(line: 148, column: 28, scope: !1342)
!1354 = !DILocation(line: 148, column: 11, scope: !1343)
!1355 = !DILocation(line: 150, column: 15, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1342, file: !215, line: 149, column: 9)
!1357 = !DILocation(line: 152, column: 19, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !215, line: 151, column: 13)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !215, line: 150, column: 15)
!1360 = !DILocalVariable(name: "tabval", arg: 1, scope: !1361, file: !215, line: 97, type: !166)
!1361 = distinct !DISubprogram(name: "set_extend_size", scope: !215, file: !215, line: 97, type: !1362, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1364)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!35, !166}
!1364 = !{!1360, !1365}
!1365 = !DILocalVariable(name: "ok", scope: !1361, file: !215, line: 99, type: !35)
!1366 = !DILocation(line: 0, scope: !1361, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 154, column: 25, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !215, line: 154, column: 23)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !215, line: 153, column: 17)
!1370 = distinct !DILexicalBlock(scope: !1358, file: !215, line: 152, column: 19)
!1371 = !DILocation(line: 101, column: 7, scope: !1372, inlinedAt: !1367)
!1372 = distinct !DILexicalBlock(scope: !1361, file: !215, line: 101, column: 7)
!1373 = !DILocation(line: 101, column: 7, scope: !1361, inlinedAt: !1367)
!1374 = !DILocation(line: 103, column: 7, scope: !1375, inlinedAt: !1367)
!1375 = distinct !DILexicalBlock(scope: !1372, file: !215, line: 102, column: 5)
!1376 = !DILocation(line: 107, column: 5, scope: !1375, inlinedAt: !1367)
!1377 = !DILocation(line: 108, column: 15, scope: !1361, inlinedAt: !1367)
!1378 = !DILocation(line: 0, scope: !1313, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 110, column: 3, scope: !1361, inlinedAt: !1367)
!1380 = !DILocation(line: 75, column: 7, scope: !1318, inlinedAt: !1379)
!1381 = !DILocation(line: 75, column: 24, scope: !1318, inlinedAt: !1379)
!1382 = !DILocation(line: 75, column: 7, scope: !1313, inlinedAt: !1379)
!1383 = !DILocation(line: 77, column: 11, scope: !1322, inlinedAt: !1379)
!1384 = !DILocation(line: 77, column: 11, scope: !1323, inlinedAt: !1379)
!1385 = !DILocation(line: 154, column: 23, scope: !1369)
!1386 = !DILocation(line: 160, column: 24, scope: !1370)
!1387 = !DILocalVariable(name: "tabval", arg: 1, scope: !1388, file: !215, line: 116, type: !166)
!1388 = distinct !DISubprogram(name: "set_increment_size", scope: !215, file: !215, line: 116, type: !1362, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1389)
!1389 = !{!1387, !1390}
!1390 = !DILocalVariable(name: "ok", scope: !1388, file: !215, line: 118, type: !35)
!1391 = !DILocation(line: 0, scope: !1388, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 162, column: 25, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !215, line: 162, column: 23)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !215, line: 161, column: 17)
!1395 = distinct !DILexicalBlock(scope: !1370, file: !215, line: 160, column: 24)
!1396 = !DILocation(line: 120, column: 7, scope: !1397, inlinedAt: !1392)
!1397 = distinct !DILexicalBlock(scope: !1388, file: !215, line: 120, column: 7)
!1398 = !DILocation(line: 120, column: 7, scope: !1388, inlinedAt: !1392)
!1399 = !DILocation(line: 122, column: 7, scope: !1400, inlinedAt: !1392)
!1400 = distinct !DILexicalBlock(scope: !1397, file: !215, line: 121, column: 5)
!1401 = !DILocation(line: 126, column: 5, scope: !1400, inlinedAt: !1392)
!1402 = !DILocation(line: 127, column: 18, scope: !1388, inlinedAt: !1392)
!1403 = !DILocation(line: 0, scope: !1313, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 129, column: 3, scope: !1388, inlinedAt: !1392)
!1405 = !DILocation(line: 75, column: 7, scope: !1318, inlinedAt: !1404)
!1406 = !DILocation(line: 75, column: 24, scope: !1318, inlinedAt: !1404)
!1407 = !DILocation(line: 75, column: 7, scope: !1313, inlinedAt: !1404)
!1408 = !DILocation(line: 77, column: 11, scope: !1322, inlinedAt: !1404)
!1409 = !DILocation(line: 77, column: 11, scope: !1323, inlinedAt: !1404)
!1410 = !DILocation(line: 162, column: 23, scope: !1394)
!1411 = !DILocation(line: 0, scope: !1288, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 169, column: 17, scope: !1395)
!1413 = !DILocation(line: 86, column: 23, scope: !1288, inlinedAt: !1412)
!1414 = !DILocation(line: 86, column: 40, scope: !1288, inlinedAt: !1412)
!1415 = !DILocation(line: 86, column: 64, scope: !1288, inlinedAt: !1412)
!1416 = !DILocation(line: 89, column: 25, scope: !1300, inlinedAt: !1412)
!1417 = !DILocation(line: 89, column: 22, scope: !1300, inlinedAt: !1412)
!1418 = !DILocation(line: 89, column: 7, scope: !1288, inlinedAt: !1412)
!1419 = !DILocation(line: 91, column: 3, scope: !1288, inlinedAt: !1412)
!1420 = !DILocation(line: 90, column: 25, scope: !1300, inlinedAt: !1412)
!1421 = !DILocation(line: 90, column: 16, scope: !1300, inlinedAt: !1412)
!1422 = !DILocation(line: 90, column: 14, scope: !1300, inlinedAt: !1412)
!1423 = !DILocation(line: 90, column: 5, scope: !1300, inlinedAt: !1412)
!1424 = !DILocation(line: 91, column: 26, scope: !1288, inlinedAt: !1412)
!1425 = !DILocation(line: 87, column: 36, scope: !1288, inlinedAt: !1412)
!1426 = !DILocation(line: 87, column: 24, scope: !1288, inlinedAt: !1412)
!1427 = !DILocation(line: 91, column: 30, scope: !1288, inlinedAt: !1412)
!1428 = !DILocation(line: 0, scope: !1313, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 93, column: 3, scope: !1288, inlinedAt: !1412)
!1430 = !DILocation(line: 75, column: 7, scope: !1318, inlinedAt: !1429)
!1431 = !DILocation(line: 75, column: 24, scope: !1318, inlinedAt: !1429)
!1432 = !DILocation(line: 75, column: 7, scope: !1313, inlinedAt: !1429)
!1433 = !DILocation(line: 77, column: 11, scope: !1322, inlinedAt: !1429)
!1434 = !DILocation(line: 77, column: 11, scope: !1323, inlinedAt: !1429)
!1435 = !DILocation(line: 173, column: 16, scope: !1342)
!1436 = !DILocation(line: 175, column: 15, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1341, file: !215, line: 174, column: 9)
!1438 = !DILocation(line: 177, column: 15, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !215, line: 176, column: 13)
!1440 = distinct !DILexicalBlock(scope: !1437, file: !215, line: 175, column: 15)
!1441 = !DILocation(line: 180, column: 13, scope: !1439)
!1442 = !DILocation(line: 186, column: 15, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1340, file: !215, line: 185, column: 9)
!1444 = !DILocation(line: 188, column: 15, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !215, line: 187, column: 13)
!1446 = distinct !DILexicalBlock(scope: !1443, file: !215, line: 186, column: 15)
!1447 = !DILocation(line: 191, column: 13, scope: !1445)
!1448 = !DILocation(line: 173, column: 16, scope: !1341)
!1449 = !DILocalVariable(name: "c", arg: 1, scope: !1450, file: !1451, line: 233, type: !38)
!1450 = distinct !DISubprogram(name: "c_isdigit", scope: !1451, file: !1451, line: 233, type: !1452, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1454)
!1451 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!35, !38}
!1454 = !{!1449}
!1455 = !DILocation(line: 0, scope: !1450, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 195, column: 16, scope: !1339)
!1457 = !DILocation(line: 235, column: 3, scope: !1450, inlinedAt: !1456)
!1458 = !DILocation(line: 195, column: 16, scope: !1340)
!1459 = !DILocation(line: 197, column: 15, scope: !1338)
!1460 = !DILocation(line: 205, column: 16, scope: !1337)
!1461 = !DILocation(line: 205, column: 15, scope: !1338)
!1462 = !DILocation(line: 207, column: 27, scope: !1336)
!1463 = !DILocation(line: 0, scope: !1336)
!1464 = !DILocation(line: 208, column: 31, scope: !1336)
!1465 = !DILocation(line: 209, column: 15, scope: !1336)
!1466 = !DILocation(line: 210, column: 15, scope: !1336)
!1467 = !DILocation(line: 212, column: 33, scope: !1336)
!1468 = !DILocation(line: 212, column: 39, scope: !1336)
!1469 = !DILocation(line: 213, column: 13, scope: !1336)
!1470 = !DILocation(line: 217, column: 11, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1339, file: !215, line: 216, column: 9)
!1472 = !DILocation(line: 220, column: 11, scope: !1471)
!1473 = !DILocation(line: 146, column: 23, scope: !1344)
!1474 = !DILocation(line: 146, column: 3, scope: !1344)
!1475 = distinct !{!1475, !1352, !1476, !687}
!1476 = !DILocation(line: 222, column: 5, scope: !1345)
!1477 = !DILocation(line: 224, column: 10, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1326, file: !215, line: 224, column: 7)
!1479 = !DILocation(line: 226, column: 11, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1478, file: !215, line: 225, column: 5)
!1481 = !DILocation(line: 0, scope: !1361, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 227, column: 15, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1480, file: !215, line: 226, column: 11)
!1484 = !DILocation(line: 101, column: 7, scope: !1372, inlinedAt: !1482)
!1485 = !DILocation(line: 101, column: 7, scope: !1361, inlinedAt: !1482)
!1486 = !DILocation(line: 108, column: 15, scope: !1361, inlinedAt: !1482)
!1487 = !DILocation(line: 0, scope: !1313, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 110, column: 3, scope: !1361, inlinedAt: !1482)
!1489 = !DILocation(line: 75, column: 7, scope: !1318, inlinedAt: !1488)
!1490 = !DILocation(line: 75, column: 24, scope: !1318, inlinedAt: !1488)
!1491 = !DILocation(line: 75, column: 7, scope: !1313, inlinedAt: !1488)
!1492 = !DILocation(line: 103, column: 7, scope: !1375, inlinedAt: !1482)
!1493 = !DILocation(line: 77, column: 11, scope: !1322, inlinedAt: !1488)
!1494 = !DILocation(line: 234, column: 7, scope: !1326)
!1495 = !DILocation(line: 228, column: 16, scope: !1483)
!1496 = !DILocation(line: 0, scope: !1388, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 229, column: 15, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1483, file: !215, line: 228, column: 16)
!1499 = !DILocation(line: 120, column: 7, scope: !1397, inlinedAt: !1497)
!1500 = !DILocation(line: 120, column: 7, scope: !1388, inlinedAt: !1497)
!1501 = !DILocation(line: 127, column: 18, scope: !1388, inlinedAt: !1497)
!1502 = !DILocation(line: 0, scope: !1313, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 129, column: 3, scope: !1388, inlinedAt: !1497)
!1504 = !DILocation(line: 75, column: 7, scope: !1318, inlinedAt: !1503)
!1505 = !DILocation(line: 75, column: 24, scope: !1318, inlinedAt: !1503)
!1506 = !DILocation(line: 75, column: 7, scope: !1313, inlinedAt: !1503)
!1507 = !DILocation(line: 122, column: 7, scope: !1400, inlinedAt: !1497)
!1508 = !DILocation(line: 77, column: 11, scope: !1322, inlinedAt: !1503)
!1509 = !DILocation(line: 0, scope: !1288, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 231, column: 9, scope: !1498)
!1511 = !DILocation(line: 86, column: 23, scope: !1288, inlinedAt: !1510)
!1512 = !DILocation(line: 86, column: 40, scope: !1288, inlinedAt: !1510)
!1513 = !DILocation(line: 86, column: 64, scope: !1288, inlinedAt: !1510)
!1514 = !DILocation(line: 89, column: 25, scope: !1300, inlinedAt: !1510)
!1515 = !DILocation(line: 89, column: 22, scope: !1300, inlinedAt: !1510)
!1516 = !DILocation(line: 89, column: 7, scope: !1288, inlinedAt: !1510)
!1517 = !DILocation(line: 91, column: 3, scope: !1288, inlinedAt: !1510)
!1518 = !DILocation(line: 90, column: 25, scope: !1300, inlinedAt: !1510)
!1519 = !DILocation(line: 90, column: 16, scope: !1300, inlinedAt: !1510)
!1520 = !DILocation(line: 90, column: 14, scope: !1300, inlinedAt: !1510)
!1521 = !DILocation(line: 90, column: 5, scope: !1300, inlinedAt: !1510)
!1522 = !DILocation(line: 91, column: 26, scope: !1288, inlinedAt: !1510)
!1523 = !DILocation(line: 87, column: 36, scope: !1288, inlinedAt: !1510)
!1524 = !DILocation(line: 87, column: 24, scope: !1288, inlinedAt: !1510)
!1525 = !DILocation(line: 91, column: 30, scope: !1288, inlinedAt: !1510)
!1526 = !DILocation(line: 0, scope: !1313, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 93, column: 3, scope: !1288, inlinedAt: !1510)
!1528 = !DILocation(line: 75, column: 7, scope: !1318, inlinedAt: !1527)
!1529 = !DILocation(line: 75, column: 24, scope: !1318, inlinedAt: !1527)
!1530 = !DILocation(line: 75, column: 7, scope: !1313, inlinedAt: !1527)
!1531 = !DILocation(line: 235, column: 5, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1326, file: !215, line: 234, column: 7)
!1533 = !DILocation(line: 0, scope: !1483)
!1534 = !DILocation(line: 236, column: 1, scope: !1326)
!1535 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !215, file: !215, line: 268, type: !134, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !633)
!1536 = !DILocation(line: 270, column: 23, scope: !1535)
!1537 = !DILocation(line: 270, column: 33, scope: !1535)
!1538 = !DILocalVariable(name: "tabs", arg: 1, scope: !1539, file: !215, line: 242, type: !1542)
!1539 = distinct !DISubprogram(name: "validate_tab_stops", scope: !215, file: !215, line: 242, type: !1540, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1544)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{null, !1542, !147}
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!1544 = !{!1538, !1545, !1546, !1547}
!1545 = !DILocalVariable(name: "entries", arg: 2, scope: !1539, file: !215, line: 242, type: !147)
!1546 = !DILocalVariable(name: "prev_tab", scope: !1539, file: !215, line: 244, type: !166)
!1547 = !DILocalVariable(name: "i", scope: !1548, file: !215, line: 246, type: !147)
!1548 = distinct !DILexicalBlock(scope: !1539, file: !215, line: 246, column: 3)
!1549 = !DILocation(line: 0, scope: !1539, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 270, column: 3, scope: !1535)
!1551 = !DILocation(line: 0, scope: !1548, inlinedAt: !1550)
!1552 = !DILocation(line: 246, column: 23, scope: !1553, inlinedAt: !1550)
!1553 = distinct !DILexicalBlock(scope: !1548, file: !215, line: 246, column: 3)
!1554 = !DILocation(line: 246, column: 3, scope: !1548, inlinedAt: !1550)
!1555 = distinct !{!1555, !1554, !1556, !687}
!1556 = !DILocation(line: 253, column: 5, scope: !1548, inlinedAt: !1550)
!1557 = !DILocation(line: 255, column: 7, scope: !1558, inlinedAt: !1550)
!1558 = distinct !DILexicalBlock(scope: !1539, file: !215, line: 255, column: 7)
!1559 = !DILocation(line: 255, column: 22, scope: !1558, inlinedAt: !1550)
!1560 = !DILocation(line: 248, column: 11, scope: !1561, inlinedAt: !1550)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !215, line: 248, column: 11)
!1562 = distinct !DILexicalBlock(scope: !1553, file: !215, line: 247, column: 5)
!1563 = !DILocation(line: 248, column: 19, scope: !1561, inlinedAt: !1550)
!1564 = !DILocation(line: 248, column: 11, scope: !1562, inlinedAt: !1550)
!1565 = !DILocation(line: 249, column: 9, scope: !1561, inlinedAt: !1550)
!1566 = !DILocation(line: 250, column: 19, scope: !1567, inlinedAt: !1550)
!1567 = distinct !DILexicalBlock(scope: !1562, file: !215, line: 250, column: 11)
!1568 = !DILocation(line: 246, column: 35, scope: !1553, inlinedAt: !1550)
!1569 = !DILocation(line: 250, column: 11, scope: !1562, inlinedAt: !1550)
!1570 = !DILocation(line: 251, column: 9, scope: !1567, inlinedAt: !1550)
!1571 = !DILocation(line: 256, column: 5, scope: !1558, inlinedAt: !1550)
!1572 = !DILocation(line: 272, column: 22, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1535, file: !215, line: 272, column: 7)
!1574 = !DILocation(line: 272, column: 7, scope: !1535)
!1575 = !DILocation(line: 273, column: 35, scope: !1573)
!1576 = !DILocation(line: 273, column: 33, scope: !1573)
!1577 = !DILocation(line: 273, column: 5, scope: !1573)
!1578 = !DILocation(line: 276, column: 27, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1573, file: !215, line: 276, column: 12)
!1580 = !DILocation(line: 276, column: 32, scope: !1579)
!1581 = !DILocation(line: 277, column: 16, scope: !1579)
!1582 = !DILocation(line: 277, column: 5, scope: !1579)
!1583 = !DILocation(line: 0, scope: !1573)
!1584 = !DILocation(line: 280, column: 1, scope: !1535)
!1585 = distinct !DISubprogram(name: "get_next_tab_column", scope: !215, file: !215, line: 288, type: !1586, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1589)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!166, !166, !574, !1588}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1600, !1604}
!1590 = !DILocalVariable(name: "column", arg: 1, scope: !1585, file: !215, line: 288, type: !166)
!1591 = !DILocalVariable(name: "tab_index", arg: 2, scope: !1585, file: !215, line: 288, type: !574)
!1592 = !DILocalVariable(name: "last_tab", arg: 3, scope: !1585, file: !215, line: 288, type: !1588)
!1593 = !DILocalVariable(name: "tab_distance", scope: !1585, file: !215, line: 291, type: !166)
!1594 = !DILocalVariable(name: "tab", scope: !1595, file: !215, line: 302, type: !166)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !215, line: 301, column: 9)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !215, line: 300, column: 7)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !215, line: 300, column: 7)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !215, line: 297, column: 5)
!1599 = distinct !DILexicalBlock(scope: !1585, file: !215, line: 294, column: 7)
!1600 = !DILocalVariable(name: "end_tab", scope: !1601, file: !215, line: 314, type: !166)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !215, line: 311, column: 9)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !215, line: 310, column: 16)
!1603 = distinct !DILexicalBlock(scope: !1598, file: !215, line: 308, column: 11)
!1604 = !DILocalVariable(name: "tab_stop", scope: !1585, file: !215, line: 324, type: !166)
!1605 = !DILocation(line: 0, scope: !1585)
!1606 = !DILocation(line: 290, column: 13, scope: !1585)
!1607 = !DILocation(line: 294, column: 7, scope: !1599)
!1608 = !DILocation(line: 294, column: 7, scope: !1585)
!1609 = !DILocation(line: 300, column: 15, scope: !1596)
!1610 = !DILocation(line: 300, column: 26, scope: !1596)
!1611 = !DILocation(line: 300, column: 7, scope: !1597)
!1612 = !DILocation(line: 295, column: 38, scope: !1599)
!1613 = !DILocation(line: 295, column: 29, scope: !1599)
!1614 = !DILocation(line: 295, column: 5, scope: !1599)
!1615 = !DILocation(line: 302, column: 23, scope: !1595)
!1616 = !DILocation(line: 0, scope: !1595)
!1617 = !DILocation(line: 303, column: 22, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1595, file: !215, line: 303, column: 15)
!1619 = !DILocation(line: 300, column: 57, scope: !1596)
!1620 = distinct !{!1620, !1611, !1621, !687}
!1621 = !DILocation(line: 305, column: 9, scope: !1597)
!1622 = !DILocation(line: 308, column: 11, scope: !1603)
!1623 = !DILocation(line: 308, column: 11, scope: !1598)
!1624 = !DILocation(line: 309, column: 45, scope: !1603)
!1625 = !DILocation(line: 309, column: 36, scope: !1603)
!1626 = !DILocation(line: 309, column: 9, scope: !1603)
!1627 = !DILocation(line: 310, column: 16, scope: !1602)
!1628 = !DILocation(line: 310, column: 16, scope: !1603)
!1629 = !DILocation(line: 314, column: 27, scope: !1601)
!1630 = !DILocation(line: 314, column: 51, scope: !1601)
!1631 = !DILocation(line: 0, scope: !1601)
!1632 = !DILocation(line: 315, column: 52, scope: !1601)
!1633 = !DILocation(line: 315, column: 63, scope: !1601)
!1634 = !DILocation(line: 315, column: 41, scope: !1601)
!1635 = !DILocation(line: 316, column: 9, scope: !1601)
!1636 = !DILocation(line: 319, column: 21, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1602, file: !215, line: 318, column: 9)
!1638 = !DILocation(line: 0, scope: !1599)
!1639 = !DILocation(line: 325, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1585, file: !215, line: 325, column: 7)
!1641 = !DILocation(line: 325, column: 7, scope: !1585)
!1642 = !DILocation(line: 326, column: 5, scope: !1640)
!1643 = !DILocation(line: 328, column: 1, scope: !1585)
!1644 = distinct !DISubprogram(name: "set_file_list", scope: !215, file: !215, line: 333, type: !1645, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1647)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{null, !313}
!1647 = !{!1648}
!1648 = !DILocalVariable(name: "list", arg: 1, scope: !1644, file: !215, line: 333, type: !313)
!1649 = !DILocation(line: 0, scope: !1644)
!1650 = !DILocation(line: 335, column: 19, scope: !1644)
!1651 = !DILocation(line: 337, column: 8, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1644, file: !215, line: 337, column: 7)
!1653 = !DILocation(line: 0, scope: !1652)
!1654 = !DILocation(line: 341, column: 1, scope: !1644)
!1655 = !DILocation(line: 0, scope: !246)
!1656 = !DILocation(line: 354, column: 7, scope: !288)
!1657 = !DILocation(line: 354, column: 7, scope: !246)
!1658 = !DILocation(line: 356, column: 17, scope: !287)
!1659 = !DILocation(line: 0, scope: !287)
!1660 = !DILocalVariable(name: "__stream", arg: 1, scope: !1661, file: !940, line: 135, type: !249)
!1661 = distinct !DISubprogram(name: "ferror_unlocked", scope: !940, file: !940, line: 135, type: !1662, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1664)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!38, !249}
!1664 = !{!1660}
!1665 = !DILocation(line: 0, scope: !1661, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 357, column: 12, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !287, file: !215, line: 357, column: 11)
!1668 = !DILocation(line: 137, column: 10, scope: !1661, inlinedAt: !1666)
!1669 = !DILocation(line: 357, column: 12, scope: !1667)
!1670 = !DILocation(line: 357, column: 11, scope: !287)
!1671 = !DILocation(line: 359, column: 18, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !287, file: !215, line: 359, column: 11)
!1673 = !DILocalVariable(name: "__s1", arg: 1, scope: !1674, file: !671, line: 1359, type: !42)
!1674 = distinct !DISubprogram(name: "streq", scope: !671, file: !671, line: 1359, type: !672, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1675)
!1675 = !{!1673, !1676}
!1676 = !DILocalVariable(name: "__s2", arg: 2, scope: !1674, file: !671, line: 1359, type: !42)
!1677 = !DILocation(line: 0, scope: !1674, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 359, column: 11, scope: !1672)
!1679 = !DILocation(line: 1361, column: 11, scope: !1674, inlinedAt: !1678)
!1680 = !DILocation(line: 1361, column: 10, scope: !1674, inlinedAt: !1678)
!1681 = !DILocation(line: 359, column: 11, scope: !287)
!1682 = !DILocation(line: 360, column: 9, scope: !1672)
!1683 = !DILocation(line: 361, column: 16, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1672, file: !215, line: 361, column: 16)
!1685 = !DILocation(line: 361, column: 28, scope: !1684)
!1686 = !DILocation(line: 361, column: 16, scope: !1672)
!1687 = !DILocation(line: 362, column: 15, scope: !1684)
!1688 = !DILocation(line: 362, column: 9, scope: !1684)
!1689 = !DILocation(line: 363, column: 11, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !287, file: !215, line: 363, column: 11)
!1691 = !DILocation(line: 363, column: 11, scope: !287)
!1692 = !DILocation(line: 365, column: 11, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1690, file: !215, line: 364, column: 9)
!1694 = !DILocation(line: 366, column: 23, scope: !1693)
!1695 = !DILocation(line: 367, column: 9, scope: !1693)
!1696 = !DILocation(line: 370, column: 28, scope: !246)
!1697 = !DILocation(line: 370, column: 18, scope: !246)
!1698 = !DILocation(line: 370, column: 32, scope: !246)
!1699 = !DILocation(line: 370, column: 3, scope: !246)
!1700 = !DILocation(line: 0, scope: !1674, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 372, column: 11, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !215, line: 372, column: 11)
!1703 = distinct !DILexicalBlock(scope: !246, file: !215, line: 371, column: 5)
!1704 = !DILocation(line: 1361, column: 11, scope: !1674, inlinedAt: !1701)
!1705 = !DILocation(line: 1361, column: 10, scope: !1674, inlinedAt: !1701)
!1706 = !DILocation(line: 372, column: 11, scope: !1703)
!1707 = !DILocation(line: 374, column: 27, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1702, file: !215, line: 373, column: 9)
!1709 = !DILocation(line: 375, column: 16, scope: !1708)
!1710 = !DILocation(line: 376, column: 9, scope: !1708)
!1711 = !DILocation(line: 378, column: 14, scope: !1702)
!1712 = !DILocation(line: 0, scope: !1702)
!1713 = !DILocation(line: 379, column: 11, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1703, file: !215, line: 379, column: 11)
!1715 = !DILocation(line: 379, column: 11, scope: !1703)
!1716 = !DILocation(line: 381, column: 21, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1714, file: !215, line: 380, column: 9)
!1718 = !DILocation(line: 382, column: 11, scope: !1717)
!1719 = !DILocation(line: 383, column: 11, scope: !1717)
!1720 = !DILocation(line: 385, column: 7, scope: !1703)
!1721 = !DILocation(line: 386, column: 19, scope: !1703)
!1722 = distinct !{!1722, !1699, !1723, !687}
!1723 = !DILocation(line: 387, column: 5, scope: !246)
!1724 = !DILocation(line: 389, column: 1, scope: !246)
!1725 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !215, file: !215, line: 393, type: !134, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !633)
!1726 = !DILocation(line: 395, column: 9, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1725, file: !215, line: 395, column: 9)
!1728 = !DILocation(line: 395, column: 25, scope: !1727)
!1729 = !DILocation(line: 395, column: 36, scope: !1727)
!1730 = !DILocation(line: 395, column: 28, scope: !1727)
!1731 = !DILocation(line: 395, column: 43, scope: !1727)
!1732 = !DILocation(line: 395, column: 9, scope: !1725)
!1733 = !DILocation(line: 396, column: 7, scope: !1727)
!1734 = !DILocation(line: 397, column: 1, scope: !1725)
!1735 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !215, file: !215, line: 402, type: !646, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !1736)
!1736 = !{!1737}
!1737 = !DILocalVariable(name: "program", arg: 1, scope: !1735, file: !215, line: 402, type: !42)
!1738 = !DILocation(line: 0, scope: !1735)
!1739 = !DILocation(line: 405, column: 20, scope: !1735)
!1740 = !DILocation(line: 0, scope: !316, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 405, column: 3, scope: !1735)
!1742 = !DILocation(line: 581, column: 7, scope: !322, inlinedAt: !1741)
!1743 = !DILocation(line: 581, column: 19, scope: !322, inlinedAt: !1741)
!1744 = !DILocation(line: 581, column: 7, scope: !316, inlinedAt: !1741)
!1745 = !DILocation(line: 585, column: 26, scope: !321, inlinedAt: !1741)
!1746 = !DILocation(line: 0, scope: !321, inlinedAt: !1741)
!1747 = !DILocation(line: 586, column: 23, scope: !321, inlinedAt: !1741)
!1748 = !DILocation(line: 586, column: 28, scope: !321, inlinedAt: !1741)
!1749 = !DILocation(line: 586, column: 32, scope: !321, inlinedAt: !1741)
!1750 = !DILocation(line: 586, column: 38, scope: !321, inlinedAt: !1741)
!1751 = !DILocation(line: 0, scope: !1674, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 586, column: 41, scope: !321, inlinedAt: !1741)
!1753 = !DILocation(line: 1361, column: 11, scope: !1674, inlinedAt: !1752)
!1754 = !DILocation(line: 1361, column: 10, scope: !1674, inlinedAt: !1752)
!1755 = !DILocation(line: 586, column: 19, scope: !321, inlinedAt: !1741)
!1756 = !DILocation(line: 587, column: 5, scope: !321, inlinedAt: !1741)
!1757 = !DILocation(line: 588, column: 7, scope: !1758, inlinedAt: !1741)
!1758 = distinct !DILexicalBlock(scope: !316, file: !49, line: 588, column: 7)
!1759 = !DILocation(line: 588, column: 7, scope: !316, inlinedAt: !1741)
!1760 = !DILocation(line: 590, column: 7, scope: !1761, inlinedAt: !1741)
!1761 = distinct !DILexicalBlock(scope: !1758, file: !49, line: 589, column: 5)
!1762 = !DILocation(line: 591, column: 7, scope: !1761, inlinedAt: !1741)
!1763 = !DILocation(line: 595, column: 37, scope: !316, inlinedAt: !1741)
!1764 = !DILocation(line: 595, column: 35, scope: !316, inlinedAt: !1741)
!1765 = !DILocation(line: 596, column: 29, scope: !316, inlinedAt: !1741)
!1766 = !DILocation(line: 597, column: 8, scope: !329, inlinedAt: !1741)
!1767 = !DILocation(line: 597, column: 7, scope: !316, inlinedAt: !1741)
!1768 = !DILocation(line: 604, column: 24, scope: !328, inlinedAt: !1741)
!1769 = !DILocation(line: 604, column: 12, scope: !329, inlinedAt: !1741)
!1770 = !DILocation(line: 0, scope: !327, inlinedAt: !1741)
!1771 = !DILocation(line: 610, column: 16, scope: !327, inlinedAt: !1741)
!1772 = !DILocation(line: 610, column: 7, scope: !327, inlinedAt: !1741)
!1773 = !DILocation(line: 611, column: 21, scope: !327, inlinedAt: !1741)
!1774 = !DILocation(line: 611, column: 19, scope: !327, inlinedAt: !1741)
!1775 = !DILocation(line: 611, column: 16, scope: !327, inlinedAt: !1741)
!1776 = !DILocation(line: 610, column: 30, scope: !327, inlinedAt: !1741)
!1777 = distinct !{!1777, !1772, !1773, !687}
!1778 = !DILocation(line: 612, column: 18, scope: !1779, inlinedAt: !1741)
!1779 = distinct !DILexicalBlock(scope: !327, file: !49, line: 612, column: 11)
!1780 = !DILocation(line: 612, column: 11, scope: !327, inlinedAt: !1741)
!1781 = !DILocation(line: 618, column: 5, scope: !327, inlinedAt: !1741)
!1782 = !DILocation(line: 620, column: 23, scope: !316, inlinedAt: !1741)
!1783 = !DILocation(line: 625, column: 39, scope: !316, inlinedAt: !1741)
!1784 = !DILocation(line: 626, column: 3, scope: !316, inlinedAt: !1741)
!1785 = !DILocation(line: 626, column: 10, scope: !316, inlinedAt: !1741)
!1786 = !DILocation(line: 626, column: 21, scope: !316, inlinedAt: !1741)
!1787 = !DILocation(line: 628, column: 44, scope: !1788, inlinedAt: !1741)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !49, line: 628, column: 11)
!1789 = distinct !DILexicalBlock(scope: !316, file: !49, line: 627, column: 5)
!1790 = !DILocation(line: 628, column: 32, scope: !1788, inlinedAt: !1741)
!1791 = !DILocation(line: 628, column: 49, scope: !1788, inlinedAt: !1741)
!1792 = !DILocation(line: 628, column: 11, scope: !1789, inlinedAt: !1741)
!1793 = !DILocation(line: 630, column: 11, scope: !1794, inlinedAt: !1741)
!1794 = distinct !DILexicalBlock(scope: !1789, file: !49, line: 630, column: 11)
!1795 = !DILocation(line: 630, column: 11, scope: !1789, inlinedAt: !1741)
!1796 = !DILocation(line: 632, column: 26, scope: !1797, inlinedAt: !1741)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !49, line: 632, column: 15)
!1798 = distinct !DILexicalBlock(scope: !1794, file: !49, line: 631, column: 9)
!1799 = !DILocation(line: 632, column: 34, scope: !1797, inlinedAt: !1741)
!1800 = !DILocation(line: 632, column: 37, scope: !1797, inlinedAt: !1741)
!1801 = !DILocation(line: 632, column: 15, scope: !1798, inlinedAt: !1741)
!1802 = !DILocation(line: 636, column: 29, scope: !1803, inlinedAt: !1741)
!1803 = distinct !DILexicalBlock(scope: !1798, file: !49, line: 636, column: 15)
!1804 = !DILocation(line: 640, column: 16, scope: !1789, inlinedAt: !1741)
!1805 = distinct !{!1805, !1784, !1806, !687}
!1806 = !DILocation(line: 641, column: 5, scope: !316, inlinedAt: !1741)
!1807 = !DILocation(line: 644, column: 3, scope: !316, inlinedAt: !1741)
!1808 = !DILocation(line: 0, scope: !1674, inlinedAt: !1809)
!1809 = distinct !DILocation(line: 648, column: 31, scope: !316, inlinedAt: !1741)
!1810 = !DILocation(line: 1361, column: 11, scope: !1674, inlinedAt: !1809)
!1811 = !DILocation(line: 1361, column: 10, scope: !1674, inlinedAt: !1809)
!1812 = !DILocation(line: 648, column: 31, scope: !316, inlinedAt: !1741)
!1813 = !DILocation(line: 0, scope: !1674, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 649, column: 31, scope: !316, inlinedAt: !1741)
!1815 = !DILocation(line: 1361, column: 11, scope: !1674, inlinedAt: !1814)
!1816 = !DILocation(line: 1361, column: 10, scope: !1674, inlinedAt: !1814)
!1817 = !DILocation(line: 649, column: 31, scope: !316, inlinedAt: !1741)
!1818 = !DILocation(line: 0, scope: !1674, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 650, column: 31, scope: !316, inlinedAt: !1741)
!1820 = !DILocation(line: 1361, column: 11, scope: !1674, inlinedAt: !1819)
!1821 = !DILocation(line: 1361, column: 10, scope: !1674, inlinedAt: !1819)
!1822 = !DILocation(line: 650, column: 31, scope: !316, inlinedAt: !1741)
!1823 = !DILocation(line: 0, scope: !1674, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 651, column: 31, scope: !316, inlinedAt: !1741)
!1825 = !DILocation(line: 1361, column: 11, scope: !1674, inlinedAt: !1824)
!1826 = !DILocation(line: 1361, column: 10, scope: !1674, inlinedAt: !1824)
!1827 = !DILocation(line: 651, column: 31, scope: !316, inlinedAt: !1741)
!1828 = !DILocation(line: 0, scope: !1674, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 652, column: 31, scope: !316, inlinedAt: !1741)
!1830 = !DILocation(line: 1361, column: 11, scope: !1674, inlinedAt: !1829)
!1831 = !DILocation(line: 1361, column: 10, scope: !1674, inlinedAt: !1829)
!1832 = !DILocation(line: 652, column: 31, scope: !316, inlinedAt: !1741)
!1833 = !DILocation(line: 0, scope: !1674, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 653, column: 31, scope: !316, inlinedAt: !1741)
!1835 = !DILocation(line: 1361, column: 11, scope: !1674, inlinedAt: !1834)
!1836 = !DILocation(line: 1361, column: 10, scope: !1674, inlinedAt: !1834)
!1837 = !DILocation(line: 653, column: 31, scope: !316, inlinedAt: !1741)
!1838 = !DILocation(line: 0, scope: !1674, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 654, column: 31, scope: !316, inlinedAt: !1741)
!1840 = !DILocation(line: 1361, column: 11, scope: !1674, inlinedAt: !1839)
!1841 = !DILocation(line: 1361, column: 10, scope: !1674, inlinedAt: !1839)
!1842 = !DILocation(line: 654, column: 31, scope: !316, inlinedAt: !1741)
!1843 = !DILocation(line: 0, scope: !1674, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 655, column: 31, scope: !316, inlinedAt: !1741)
!1845 = !DILocation(line: 1361, column: 11, scope: !1674, inlinedAt: !1844)
!1846 = !DILocation(line: 1361, column: 10, scope: !1674, inlinedAt: !1844)
!1847 = !DILocation(line: 655, column: 31, scope: !316, inlinedAt: !1741)
!1848 = !DILocation(line: 0, scope: !1674, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 656, column: 31, scope: !316, inlinedAt: !1741)
!1850 = !DILocation(line: 1361, column: 11, scope: !1674, inlinedAt: !1849)
!1851 = !DILocation(line: 1361, column: 10, scope: !1674, inlinedAt: !1849)
!1852 = !DILocation(line: 656, column: 31, scope: !316, inlinedAt: !1741)
!1853 = !DILocation(line: 0, scope: !1674, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 657, column: 31, scope: !316, inlinedAt: !1741)
!1855 = !DILocation(line: 1361, column: 11, scope: !1674, inlinedAt: !1854)
!1856 = !DILocation(line: 1361, column: 10, scope: !1674, inlinedAt: !1854)
!1857 = !DILocation(line: 657, column: 31, scope: !316, inlinedAt: !1741)
!1858 = !DILocation(line: 663, column: 7, scope: !1859, inlinedAt: !1741)
!1859 = distinct !DILexicalBlock(scope: !316, file: !49, line: 663, column: 7)
!1860 = !DILocation(line: 664, column: 7, scope: !1859, inlinedAt: !1741)
!1861 = !DILocation(line: 664, column: 10, scope: !1859, inlinedAt: !1741)
!1862 = !DILocation(line: 663, column: 7, scope: !316, inlinedAt: !1741)
!1863 = !DILocation(line: 669, column: 7, scope: !1864, inlinedAt: !1741)
!1864 = distinct !DILexicalBlock(scope: !1859, file: !49, line: 665, column: 5)
!1865 = !DILocation(line: 671, column: 5, scope: !1864, inlinedAt: !1741)
!1866 = !DILocation(line: 676, column: 7, scope: !1867, inlinedAt: !1741)
!1867 = distinct !DILexicalBlock(scope: !1859, file: !49, line: 673, column: 5)
!1868 = !DILocation(line: 679, column: 3, scope: !316, inlinedAt: !1741)
!1869 = !DILocation(line: 683, column: 3, scope: !316, inlinedAt: !1741)
!1870 = !DILocation(line: 686, column: 3, scope: !316, inlinedAt: !1741)
!1871 = !DILocation(line: 688, column: 3, scope: !316, inlinedAt: !1741)
!1872 = !DILocation(line: 691, column: 3, scope: !316, inlinedAt: !1741)
!1873 = !DILocation(line: 695, column: 3, scope: !316, inlinedAt: !1741)
!1874 = !DILocation(line: 409, column: 3, scope: !1735)
!1875 = !DILocation(line: 416, column: 1, scope: !1735)
!1876 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !351, file: !351, line: 50, type: !646, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !1877)
!1877 = !{!1878}
!1878 = !DILocalVariable(name: "file", arg: 1, scope: !1876, file: !351, line: 50, type: !42)
!1879 = !DILocation(line: 0, scope: !1876)
!1880 = !DILocation(line: 52, column: 13, scope: !1876)
!1881 = !DILocation(line: 53, column: 1, scope: !1876)
!1882 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !351, file: !351, line: 87, type: !1883, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !1885)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null, !35}
!1885 = !{!1886}
!1886 = !DILocalVariable(name: "ignore", arg: 1, scope: !1882, file: !351, line: 87, type: !35)
!1887 = !DILocation(line: 0, scope: !1882)
!1888 = !DILocation(line: 89, column: 16, scope: !1882)
!1889 = !DILocation(line: 90, column: 1, scope: !1882)
!1890 = distinct !DISubprogram(name: "close_stdout", scope: !351, file: !351, line: 116, type: !134, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !1891)
!1891 = !{!1892}
!1892 = !DILocalVariable(name: "write_error", scope: !1893, file: !351, line: 121, type: !42)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !351, line: 120, column: 5)
!1894 = distinct !DILexicalBlock(scope: !1890, file: !351, line: 118, column: 7)
!1895 = !DILocation(line: 118, column: 21, scope: !1894)
!1896 = !DILocation(line: 118, column: 7, scope: !1894)
!1897 = !DILocation(line: 118, column: 29, scope: !1894)
!1898 = !DILocation(line: 119, column: 7, scope: !1894)
!1899 = !DILocation(line: 119, column: 12, scope: !1894)
!1900 = !DILocation(line: 119, column: 25, scope: !1894)
!1901 = !DILocation(line: 119, column: 28, scope: !1894)
!1902 = !DILocation(line: 119, column: 34, scope: !1894)
!1903 = !DILocation(line: 118, column: 7, scope: !1890)
!1904 = !DILocation(line: 121, column: 33, scope: !1893)
!1905 = !DILocation(line: 0, scope: !1893)
!1906 = !DILocation(line: 122, column: 11, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1893, file: !351, line: 122, column: 11)
!1908 = !DILocation(line: 0, scope: !1907)
!1909 = !DILocation(line: 122, column: 11, scope: !1893)
!1910 = !DILocation(line: 123, column: 9, scope: !1907)
!1911 = !DILocation(line: 126, column: 9, scope: !1907)
!1912 = !DILocation(line: 128, column: 14, scope: !1893)
!1913 = !DILocation(line: 128, column: 7, scope: !1893)
!1914 = !DILocation(line: 133, column: 42, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1890, file: !351, line: 133, column: 7)
!1916 = !DILocation(line: 133, column: 28, scope: !1915)
!1917 = !DILocation(line: 133, column: 50, scope: !1915)
!1918 = !DILocation(line: 133, column: 7, scope: !1890)
!1919 = !DILocation(line: 134, column: 12, scope: !1915)
!1920 = !DILocation(line: 134, column: 5, scope: !1915)
!1921 = !DILocation(line: 135, column: 1, scope: !1890)
!1922 = distinct !DISubprogram(name: "verror", scope: !358, file: !358, line: 251, type: !1923, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !1925)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null, !38, !38, !42, !366}
!1925 = !{!1926, !1927, !1928, !1929}
!1926 = !DILocalVariable(name: "status", arg: 1, scope: !1922, file: !358, line: 251, type: !38)
!1927 = !DILocalVariable(name: "errnum", arg: 2, scope: !1922, file: !358, line: 251, type: !38)
!1928 = !DILocalVariable(name: "message", arg: 3, scope: !1922, file: !358, line: 251, type: !42)
!1929 = !DILocalVariable(name: "args", arg: 4, scope: !1922, file: !358, line: 251, type: !366)
!1930 = !DILocation(line: 0, scope: !1922)
!1931 = !DILocation(line: 251, column: 1, scope: !1922)
!1932 = !DILocation(line: 261, column: 3, scope: !1922)
!1933 = !DILocation(line: 265, column: 7, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1922, file: !358, line: 265, column: 7)
!1935 = !DILocation(line: 265, column: 7, scope: !1922)
!1936 = !DILocation(line: 266, column: 5, scope: !1934)
!1937 = !DILocation(line: 272, column: 7, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !358, line: 268, column: 5)
!1939 = !DILocation(line: 276, column: 3, scope: !1922)
!1940 = !{i64 0, i64 8, !624, i64 8, i64 8, !624, i64 16, i64 8, !624, i64 24, i64 4, !720, i64 28, i64 4, !720}
!1941 = !DILocation(line: 282, column: 1, scope: !1922)
!1942 = distinct !DISubprogram(name: "flush_stdout", scope: !358, file: !358, line: 163, type: !134, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !1943)
!1943 = !{!1944}
!1944 = !DILocalVariable(name: "stdout_fd", scope: !1942, file: !358, line: 166, type: !38)
!1945 = !DILocation(line: 0, scope: !1942)
!1946 = !DILocalVariable(name: "fd", arg: 1, scope: !1947, file: !358, line: 145, type: !38)
!1947 = distinct !DISubprogram(name: "is_open", scope: !358, file: !358, line: 145, type: !1948, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !1950)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!38, !38}
!1950 = !{!1946}
!1951 = !DILocation(line: 0, scope: !1947, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 182, column: 25, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1942, file: !358, line: 182, column: 7)
!1954 = !DILocation(line: 157, column: 15, scope: !1947, inlinedAt: !1952)
!1955 = !DILocation(line: 182, column: 25, scope: !1953)
!1956 = !DILocation(line: 182, column: 7, scope: !1942)
!1957 = !DILocation(line: 184, column: 5, scope: !1953)
!1958 = !DILocation(line: 185, column: 1, scope: !1942)
!1959 = distinct !DISubprogram(name: "error_tail", scope: !358, file: !358, line: 219, type: !1923, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !1960)
!1960 = !{!1961, !1962, !1963, !1964}
!1961 = !DILocalVariable(name: "status", arg: 1, scope: !1959, file: !358, line: 219, type: !38)
!1962 = !DILocalVariable(name: "errnum", arg: 2, scope: !1959, file: !358, line: 219, type: !38)
!1963 = !DILocalVariable(name: "message", arg: 3, scope: !1959, file: !358, line: 219, type: !42)
!1964 = !DILocalVariable(name: "args", arg: 4, scope: !1959, file: !358, line: 219, type: !366)
!1965 = !DILocation(line: 0, scope: !1959)
!1966 = !DILocation(line: 219, column: 1, scope: !1959)
!1967 = !DILocation(line: 229, column: 13, scope: !1959)
!1968 = !DILocation(line: 229, column: 3, scope: !1959)
!1969 = !DILocalVariable(name: "__stream", arg: 1, scope: !1970, file: !1971, line: 132, type: !1974)
!1970 = distinct !DISubprogram(name: "vfprintf", scope: !1971, file: !1971, line: 132, type: !1972, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2009)
!1971 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!38, !1974, !716, !368}
!1974 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1975)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !1977)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !1978)
!1978 = !{!1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1977, file: !75, line: 51, baseType: !38, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1977, file: !75, line: 54, baseType: !32, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1977, file: !75, line: 55, baseType: !32, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1977, file: !75, line: 56, baseType: !32, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1977, file: !75, line: 57, baseType: !32, size: 64, offset: 256)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1977, file: !75, line: 58, baseType: !32, size: 64, offset: 320)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1977, file: !75, line: 59, baseType: !32, size: 64, offset: 384)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1977, file: !75, line: 60, baseType: !32, size: 64, offset: 448)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1977, file: !75, line: 61, baseType: !32, size: 64, offset: 512)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1977, file: !75, line: 64, baseType: !32, size: 64, offset: 576)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1977, file: !75, line: 65, baseType: !32, size: 64, offset: 640)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1977, file: !75, line: 66, baseType: !32, size: 64, offset: 704)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1977, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1977, file: !75, line: 70, baseType: !1993, size: 64, offset: 832)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1977, file: !75, line: 72, baseType: !38, size: 32, offset: 896)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1977, file: !75, line: 73, baseType: !38, size: 32, offset: 928)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1977, file: !75, line: 74, baseType: !97, size: 64, offset: 960)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1977, file: !75, line: 77, baseType: !39, size: 16, offset: 1024)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1977, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1977, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1977, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1977, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1977, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1977, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1977, file: !75, line: 93, baseType: !1993, size: 64, offset: 1344)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1977, file: !75, line: 94, baseType: !34, size: 64, offset: 1408)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1977, file: !75, line: 95, baseType: !40, size: 64, offset: 1472)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1977, file: !75, line: 96, baseType: !38, size: 32, offset: 1536)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1977, file: !75, line: 98, baseType: !122, size: 160, offset: 1568)
!2009 = !{!1969, !2010, !2011}
!2010 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1970, file: !1971, line: 133, type: !716)
!2011 = !DILocalVariable(name: "__ap", arg: 3, scope: !1970, file: !1971, line: 133, type: !368)
!2012 = !DILocation(line: 0, scope: !1970, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 229, column: 3, scope: !1959)
!2014 = !DILocation(line: 135, column: 10, scope: !1970, inlinedAt: !2013)
!2015 = !{!2016, !2018}
!2016 = distinct !{!2016, !2017, !"vfprintf.inline: argument 0"}
!2017 = distinct !{!2017, !"vfprintf.inline"}
!2018 = distinct !{!2018, !2017, !"vfprintf.inline: argument 1"}
!2019 = !DILocation(line: 232, column: 3, scope: !1959)
!2020 = !DILocation(line: 233, column: 7, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1959, file: !358, line: 233, column: 7)
!2022 = !DILocation(line: 233, column: 7, scope: !1959)
!2023 = !DILocalVariable(name: "errnum", arg: 1, scope: !2024, file: !358, line: 188, type: !38)
!2024 = distinct !DISubprogram(name: "print_errno_message", scope: !358, file: !358, line: 188, type: !614, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2025)
!2025 = !{!2023, !2026, !2027}
!2026 = !DILocalVariable(name: "s", scope: !2024, file: !358, line: 190, type: !42)
!2027 = !DILocalVariable(name: "errbuf", scope: !2024, file: !358, line: 193, type: !2028)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8192, elements: !2029)
!2029 = !{!2030}
!2030 = !DISubrange(count: 1024)
!2031 = !DILocation(line: 0, scope: !2024, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 234, column: 5, scope: !2021)
!2033 = !DILocation(line: 193, column: 3, scope: !2024, inlinedAt: !2032)
!2034 = !DILocation(line: 193, column: 8, scope: !2024, inlinedAt: !2032)
!2035 = !DILocation(line: 195, column: 7, scope: !2024, inlinedAt: !2032)
!2036 = !DILocation(line: 207, column: 9, scope: !2037, inlinedAt: !2032)
!2037 = distinct !DILexicalBlock(scope: !2024, file: !358, line: 207, column: 7)
!2038 = !DILocation(line: 207, column: 7, scope: !2024, inlinedAt: !2032)
!2039 = !DILocation(line: 208, column: 9, scope: !2037, inlinedAt: !2032)
!2040 = !DILocation(line: 208, column: 5, scope: !2037, inlinedAt: !2032)
!2041 = !DILocation(line: 214, column: 3, scope: !2024, inlinedAt: !2032)
!2042 = !DILocation(line: 216, column: 1, scope: !2024, inlinedAt: !2032)
!2043 = !DILocation(line: 234, column: 5, scope: !2021)
!2044 = !DILocation(line: 238, column: 3, scope: !1959)
!2045 = !DILocalVariable(name: "__c", arg: 1, scope: !2046, file: !940, line: 101, type: !38)
!2046 = distinct !DISubprogram(name: "putc_unlocked", scope: !940, file: !940, line: 101, type: !2047, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2049)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!38, !38, !1975}
!2049 = !{!2045, !2050}
!2050 = !DILocalVariable(name: "__stream", arg: 2, scope: !2046, file: !940, line: 101, type: !1975)
!2051 = !DILocation(line: 0, scope: !2046, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 238, column: 3, scope: !1959)
!2053 = !DILocation(line: 103, column: 10, scope: !2046, inlinedAt: !2052)
!2054 = !DILocation(line: 240, column: 3, scope: !1959)
!2055 = !DILocation(line: 241, column: 7, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1959, file: !358, line: 241, column: 7)
!2057 = !DILocation(line: 241, column: 7, scope: !1959)
!2058 = !DILocation(line: 242, column: 5, scope: !2056)
!2059 = !DILocation(line: 243, column: 1, scope: !1959)
!2060 = !DISubprogram(name: "strerror_r", scope: !2061, file: !2061, line: 444, type: !2062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!2061 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!32, !38, !32, !40}
!2064 = !DISubprogram(name: "fcntl", scope: !2065, file: !2065, line: 149, type: !2066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!2065 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!38, !38, !38, null}
!2068 = distinct !DISubprogram(name: "error", scope: !358, file: !358, line: 285, type: !2069, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2071)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{null, !38, !38, !42, null}
!2071 = !{!2072, !2073, !2074, !2075}
!2072 = !DILocalVariable(name: "status", arg: 1, scope: !2068, file: !358, line: 285, type: !38)
!2073 = !DILocalVariable(name: "errnum", arg: 2, scope: !2068, file: !358, line: 285, type: !38)
!2074 = !DILocalVariable(name: "message", arg: 3, scope: !2068, file: !358, line: 285, type: !42)
!2075 = !DILocalVariable(name: "ap", scope: !2068, file: !358, line: 287, type: !366)
!2076 = !DILocation(line: 0, scope: !2068)
!2077 = !DILocation(line: 287, column: 3, scope: !2068)
!2078 = !DILocation(line: 287, column: 11, scope: !2068)
!2079 = !DILocation(line: 288, column: 3, scope: !2068)
!2080 = !DILocation(line: 289, column: 3, scope: !2068)
!2081 = !DILocation(line: 290, column: 3, scope: !2068)
!2082 = !DILocation(line: 291, column: 1, scope: !2068)
!2083 = !DILocation(line: 0, scope: !363)
!2084 = !DILocation(line: 298, column: 1, scope: !363)
!2085 = !DILocation(line: 302, column: 7, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !363, file: !358, line: 302, column: 7)
!2087 = !DILocation(line: 302, column: 7, scope: !363)
!2088 = !DILocation(line: 307, column: 11, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !358, line: 307, column: 11)
!2090 = distinct !DILexicalBlock(scope: !2086, file: !358, line: 303, column: 5)
!2091 = !DILocation(line: 307, column: 27, scope: !2089)
!2092 = !DILocation(line: 308, column: 11, scope: !2089)
!2093 = !DILocation(line: 308, column: 28, scope: !2089)
!2094 = !DILocation(line: 308, column: 25, scope: !2089)
!2095 = !DILocation(line: 309, column: 15, scope: !2089)
!2096 = !DILocation(line: 309, column: 33, scope: !2089)
!2097 = !DILocation(line: 310, column: 19, scope: !2089)
!2098 = !DILocation(line: 311, column: 22, scope: !2089)
!2099 = !DILocation(line: 311, column: 56, scope: !2089)
!2100 = !DILocation(line: 307, column: 11, scope: !2090)
!2101 = !DILocation(line: 316, column: 21, scope: !2090)
!2102 = !DILocation(line: 317, column: 23, scope: !2090)
!2103 = !DILocation(line: 318, column: 5, scope: !2090)
!2104 = !DILocation(line: 327, column: 3, scope: !363)
!2105 = !DILocation(line: 331, column: 7, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !363, file: !358, line: 331, column: 7)
!2107 = !DILocation(line: 331, column: 7, scope: !363)
!2108 = !DILocation(line: 332, column: 5, scope: !2106)
!2109 = !DILocation(line: 338, column: 7, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2106, file: !358, line: 334, column: 5)
!2111 = !DILocation(line: 346, column: 3, scope: !363)
!2112 = !DILocation(line: 350, column: 3, scope: !363)
!2113 = !DILocation(line: 356, column: 1, scope: !363)
!2114 = distinct !DISubprogram(name: "error_at_line", scope: !358, file: !358, line: 359, type: !2115, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !2117)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{null, !38, !38, !42, !7, !42, null}
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123}
!2118 = !DILocalVariable(name: "status", arg: 1, scope: !2114, file: !358, line: 359, type: !38)
!2119 = !DILocalVariable(name: "errnum", arg: 2, scope: !2114, file: !358, line: 359, type: !38)
!2120 = !DILocalVariable(name: "file_name", arg: 3, scope: !2114, file: !358, line: 359, type: !42)
!2121 = !DILocalVariable(name: "line_number", arg: 4, scope: !2114, file: !358, line: 360, type: !7)
!2122 = !DILocalVariable(name: "message", arg: 5, scope: !2114, file: !358, line: 360, type: !42)
!2123 = !DILocalVariable(name: "ap", scope: !2114, file: !358, line: 362, type: !366)
!2124 = !DILocation(line: 0, scope: !2114)
!2125 = !DILocation(line: 362, column: 3, scope: !2114)
!2126 = !DILocation(line: 362, column: 11, scope: !2114)
!2127 = !DILocation(line: 363, column: 3, scope: !2114)
!2128 = !DILocation(line: 364, column: 3, scope: !2114)
!2129 = !DILocation(line: 366, column: 3, scope: !2114)
!2130 = !DILocation(line: 367, column: 1, scope: !2114)
!2131 = distinct !DISubprogram(name: "fdadvise", scope: !536, file: !536, line: 25, type: !2132, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2136)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !38, !2134, !2134, !2135}
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !367, line: 63, baseType: !97)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !232, line: 51, baseType: !231)
!2136 = !{!2137, !2138, !2139, !2140}
!2137 = !DILocalVariable(name: "fd", arg: 1, scope: !2131, file: !536, line: 25, type: !38)
!2138 = !DILocalVariable(name: "offset", arg: 2, scope: !2131, file: !536, line: 25, type: !2134)
!2139 = !DILocalVariable(name: "len", arg: 3, scope: !2131, file: !536, line: 25, type: !2134)
!2140 = !DILocalVariable(name: "advice", arg: 4, scope: !2131, file: !536, line: 25, type: !2135)
!2141 = !DILocation(line: 0, scope: !2131)
!2142 = !DILocation(line: 28, column: 3, scope: !2131)
!2143 = !DILocation(line: 30, column: 1, scope: !2131)
!2144 = !DISubprogram(name: "posix_fadvise", scope: !2065, file: !2065, line: 273, type: !2145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!38, !38, !2134, !2134, !38}
!2147 = distinct !DISubprogram(name: "fadvise", scope: !536, file: !536, line: 33, type: !2148, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2184)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{null, !2150, !2135}
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !2152)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !2153)
!2153 = !{!2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2152, file: !75, line: 51, baseType: !38, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2152, file: !75, line: 54, baseType: !32, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2152, file: !75, line: 55, baseType: !32, size: 64, offset: 128)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2152, file: !75, line: 56, baseType: !32, size: 64, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2152, file: !75, line: 57, baseType: !32, size: 64, offset: 256)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2152, file: !75, line: 58, baseType: !32, size: 64, offset: 320)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2152, file: !75, line: 59, baseType: !32, size: 64, offset: 384)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2152, file: !75, line: 60, baseType: !32, size: 64, offset: 448)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2152, file: !75, line: 61, baseType: !32, size: 64, offset: 512)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2152, file: !75, line: 64, baseType: !32, size: 64, offset: 576)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2152, file: !75, line: 65, baseType: !32, size: 64, offset: 640)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2152, file: !75, line: 66, baseType: !32, size: 64, offset: 704)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2152, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2152, file: !75, line: 70, baseType: !2168, size: 64, offset: 832)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2152, file: !75, line: 72, baseType: !38, size: 32, offset: 896)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2152, file: !75, line: 73, baseType: !38, size: 32, offset: 928)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2152, file: !75, line: 74, baseType: !97, size: 64, offset: 960)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2152, file: !75, line: 77, baseType: !39, size: 16, offset: 1024)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2152, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2152, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2152, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2152, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2152, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2152, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2152, file: !75, line: 93, baseType: !2168, size: 64, offset: 1344)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2152, file: !75, line: 94, baseType: !34, size: 64, offset: 1408)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2152, file: !75, line: 95, baseType: !40, size: 64, offset: 1472)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2152, file: !75, line: 96, baseType: !38, size: 32, offset: 1536)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2152, file: !75, line: 98, baseType: !122, size: 160, offset: 1568)
!2184 = !{!2185, !2186}
!2185 = !DILocalVariable(name: "fp", arg: 1, scope: !2147, file: !536, line: 33, type: !2150)
!2186 = !DILocalVariable(name: "advice", arg: 2, scope: !2147, file: !536, line: 33, type: !2135)
!2187 = !DILocation(line: 0, scope: !2147)
!2188 = !DILocation(line: 35, column: 7, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2147, file: !536, line: 35, column: 7)
!2190 = !DILocation(line: 35, column: 7, scope: !2147)
!2191 = !DILocation(line: 36, column: 15, scope: !2189)
!2192 = !DILocation(line: 0, scope: !2131, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 36, column: 5, scope: !2189)
!2194 = !DILocation(line: 28, column: 3, scope: !2131, inlinedAt: !2193)
!2195 = !DILocation(line: 36, column: 5, scope: !2189)
!2196 = !DILocation(line: 37, column: 1, scope: !2147)
!2197 = !DISubprogram(name: "fileno", scope: !367, file: !367, line: 809, type: !2198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!38, !2150}
!2200 = distinct !DISubprogram(name: "rpl_fclose", scope: !539, file: !539, line: 58, type: !2201, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !538, retainedNodes: !2237)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!38, !2203}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !2205)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !2206)
!2206 = !{!2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2205, file: !75, line: 51, baseType: !38, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2205, file: !75, line: 54, baseType: !32, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2205, file: !75, line: 55, baseType: !32, size: 64, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2205, file: !75, line: 56, baseType: !32, size: 64, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2205, file: !75, line: 57, baseType: !32, size: 64, offset: 256)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2205, file: !75, line: 58, baseType: !32, size: 64, offset: 320)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2205, file: !75, line: 59, baseType: !32, size: 64, offset: 384)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2205, file: !75, line: 60, baseType: !32, size: 64, offset: 448)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2205, file: !75, line: 61, baseType: !32, size: 64, offset: 512)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2205, file: !75, line: 64, baseType: !32, size: 64, offset: 576)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2205, file: !75, line: 65, baseType: !32, size: 64, offset: 640)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2205, file: !75, line: 66, baseType: !32, size: 64, offset: 704)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2205, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2205, file: !75, line: 70, baseType: !2221, size: 64, offset: 832)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2205, file: !75, line: 72, baseType: !38, size: 32, offset: 896)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2205, file: !75, line: 73, baseType: !38, size: 32, offset: 928)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2205, file: !75, line: 74, baseType: !97, size: 64, offset: 960)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2205, file: !75, line: 77, baseType: !39, size: 16, offset: 1024)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2205, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2205, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2205, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2205, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2205, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2205, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2205, file: !75, line: 93, baseType: !2221, size: 64, offset: 1344)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2205, file: !75, line: 94, baseType: !34, size: 64, offset: 1408)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2205, file: !75, line: 95, baseType: !40, size: 64, offset: 1472)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2205, file: !75, line: 96, baseType: !38, size: 32, offset: 1536)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2205, file: !75, line: 98, baseType: !122, size: 160, offset: 1568)
!2237 = !{!2238, !2239, !2240, !2241}
!2238 = !DILocalVariable(name: "fp", arg: 1, scope: !2200, file: !539, line: 58, type: !2203)
!2239 = !DILocalVariable(name: "saved_errno", scope: !2200, file: !539, line: 60, type: !38)
!2240 = !DILocalVariable(name: "fd", scope: !2200, file: !539, line: 63, type: !38)
!2241 = !DILocalVariable(name: "result", scope: !2200, file: !539, line: 74, type: !38)
!2242 = !DILocation(line: 0, scope: !2200)
!2243 = !DILocation(line: 63, column: 12, scope: !2200)
!2244 = !DILocation(line: 64, column: 10, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2200, file: !539, line: 64, column: 7)
!2246 = !DILocation(line: 64, column: 7, scope: !2200)
!2247 = !DILocation(line: 65, column: 12, scope: !2245)
!2248 = !DILocation(line: 65, column: 5, scope: !2245)
!2249 = !DILocation(line: 70, column: 9, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2200, file: !539, line: 70, column: 7)
!2251 = !DILocation(line: 70, column: 23, scope: !2250)
!2252 = !DILocation(line: 70, column: 33, scope: !2250)
!2253 = !DILocation(line: 70, column: 26, scope: !2250)
!2254 = !DILocation(line: 70, column: 59, scope: !2250)
!2255 = !DILocation(line: 71, column: 7, scope: !2250)
!2256 = !DILocation(line: 71, column: 10, scope: !2250)
!2257 = !DILocation(line: 70, column: 7, scope: !2200)
!2258 = !DILocation(line: 100, column: 12, scope: !2200)
!2259 = !DILocation(line: 105, column: 7, scope: !2200)
!2260 = !DILocation(line: 72, column: 19, scope: !2250)
!2261 = !DILocation(line: 105, column: 19, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2200, file: !539, line: 105, column: 7)
!2263 = !DILocation(line: 107, column: 13, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2262, file: !539, line: 106, column: 5)
!2265 = !DILocation(line: 109, column: 5, scope: !2264)
!2266 = !DILocation(line: 112, column: 1, scope: !2200)
!2267 = !DISubprogram(name: "fclose", scope: !367, file: !367, line: 178, type: !2201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!2268 = !DISubprogram(name: "lseek", scope: !2269, file: !2269, line: 339, type: !2270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!2269 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!97, !38, !97, !38}
!2272 = distinct !DISubprogram(name: "rpl_fflush", scope: !541, file: !541, line: 130, type: !2273, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2309)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!38, !2275}
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !2277)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !2278)
!2278 = !{!2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2277, file: !75, line: 51, baseType: !38, size: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2277, file: !75, line: 54, baseType: !32, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2277, file: !75, line: 55, baseType: !32, size: 64, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2277, file: !75, line: 56, baseType: !32, size: 64, offset: 192)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2277, file: !75, line: 57, baseType: !32, size: 64, offset: 256)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2277, file: !75, line: 58, baseType: !32, size: 64, offset: 320)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2277, file: !75, line: 59, baseType: !32, size: 64, offset: 384)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2277, file: !75, line: 60, baseType: !32, size: 64, offset: 448)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2277, file: !75, line: 61, baseType: !32, size: 64, offset: 512)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2277, file: !75, line: 64, baseType: !32, size: 64, offset: 576)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2277, file: !75, line: 65, baseType: !32, size: 64, offset: 640)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2277, file: !75, line: 66, baseType: !32, size: 64, offset: 704)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2277, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2277, file: !75, line: 70, baseType: !2293, size: 64, offset: 832)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2277, file: !75, line: 72, baseType: !38, size: 32, offset: 896)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2277, file: !75, line: 73, baseType: !38, size: 32, offset: 928)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2277, file: !75, line: 74, baseType: !97, size: 64, offset: 960)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2277, file: !75, line: 77, baseType: !39, size: 16, offset: 1024)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2277, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2277, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2277, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2277, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2277, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2277, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2277, file: !75, line: 93, baseType: !2293, size: 64, offset: 1344)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2277, file: !75, line: 94, baseType: !34, size: 64, offset: 1408)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2277, file: !75, line: 95, baseType: !40, size: 64, offset: 1472)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2277, file: !75, line: 96, baseType: !38, size: 32, offset: 1536)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2277, file: !75, line: 98, baseType: !122, size: 160, offset: 1568)
!2309 = !{!2310}
!2310 = !DILocalVariable(name: "stream", arg: 1, scope: !2272, file: !541, line: 130, type: !2275)
!2311 = !DILocation(line: 0, scope: !2272)
!2312 = !DILocation(line: 151, column: 14, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2272, file: !541, line: 151, column: 7)
!2314 = !DILocation(line: 151, column: 22, scope: !2313)
!2315 = !DILocation(line: 151, column: 27, scope: !2313)
!2316 = !DILocation(line: 151, column: 7, scope: !2272)
!2317 = !DILocation(line: 152, column: 12, scope: !2313)
!2318 = !DILocation(line: 152, column: 5, scope: !2313)
!2319 = !DILocalVariable(name: "fp", arg: 1, scope: !2320, file: !541, line: 42, type: !2275)
!2320 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !541, file: !541, line: 42, type: !2321, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !2275}
!2323 = !{!2319}
!2324 = !DILocation(line: 0, scope: !2320, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 157, column: 3, scope: !2272)
!2326 = !DILocation(line: 44, column: 12, scope: !2327, inlinedAt: !2325)
!2327 = distinct !DILexicalBlock(scope: !2320, file: !541, line: 44, column: 7)
!2328 = !DILocation(line: 44, column: 19, scope: !2327, inlinedAt: !2325)
!2329 = !DILocation(line: 44, column: 7, scope: !2320, inlinedAt: !2325)
!2330 = !DILocation(line: 46, column: 5, scope: !2327, inlinedAt: !2325)
!2331 = !DILocation(line: 159, column: 10, scope: !2272)
!2332 = !DILocation(line: 159, column: 3, scope: !2272)
!2333 = !DILocation(line: 236, column: 1, scope: !2272)
!2334 = !DISubprogram(name: "fflush", scope: !367, file: !367, line: 230, type: !2273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!2335 = distinct !DISubprogram(name: "fpurge", scope: !544, file: !544, line: 32, type: !2336, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !543, retainedNodes: !2372)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!38, !2338}
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !2340)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !2341)
!2341 = !{!2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2340, file: !75, line: 51, baseType: !38, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2340, file: !75, line: 54, baseType: !32, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2340, file: !75, line: 55, baseType: !32, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2340, file: !75, line: 56, baseType: !32, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2340, file: !75, line: 57, baseType: !32, size: 64, offset: 256)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2340, file: !75, line: 58, baseType: !32, size: 64, offset: 320)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2340, file: !75, line: 59, baseType: !32, size: 64, offset: 384)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2340, file: !75, line: 60, baseType: !32, size: 64, offset: 448)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2340, file: !75, line: 61, baseType: !32, size: 64, offset: 512)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2340, file: !75, line: 64, baseType: !32, size: 64, offset: 576)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2340, file: !75, line: 65, baseType: !32, size: 64, offset: 640)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2340, file: !75, line: 66, baseType: !32, size: 64, offset: 704)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2340, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2340, file: !75, line: 70, baseType: !2356, size: 64, offset: 832)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2340, file: !75, line: 72, baseType: !38, size: 32, offset: 896)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2340, file: !75, line: 73, baseType: !38, size: 32, offset: 928)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2340, file: !75, line: 74, baseType: !97, size: 64, offset: 960)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2340, file: !75, line: 77, baseType: !39, size: 16, offset: 1024)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2340, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2340, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2340, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2340, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2340, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2340, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2340, file: !75, line: 93, baseType: !2356, size: 64, offset: 1344)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2340, file: !75, line: 94, baseType: !34, size: 64, offset: 1408)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2340, file: !75, line: 95, baseType: !40, size: 64, offset: 1472)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2340, file: !75, line: 96, baseType: !38, size: 32, offset: 1536)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2340, file: !75, line: 98, baseType: !122, size: 160, offset: 1568)
!2372 = !{!2373}
!2373 = !DILocalVariable(name: "fp", arg: 1, scope: !2335, file: !544, line: 32, type: !2338)
!2374 = !DILocation(line: 0, scope: !2335)
!2375 = !DILocation(line: 36, column: 3, scope: !2335)
!2376 = !DILocation(line: 38, column: 3, scope: !2335)
!2377 = distinct !DISubprogram(name: "rpl_fseeko", scope: !546, file: !546, line: 28, type: !2378, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !545, retainedNodes: !2414)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!38, !2380, !2134, !38}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !2382)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !2383)
!2383 = !{!2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2382, file: !75, line: 51, baseType: !38, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2382, file: !75, line: 54, baseType: !32, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2382, file: !75, line: 55, baseType: !32, size: 64, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2382, file: !75, line: 56, baseType: !32, size: 64, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2382, file: !75, line: 57, baseType: !32, size: 64, offset: 256)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2382, file: !75, line: 58, baseType: !32, size: 64, offset: 320)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2382, file: !75, line: 59, baseType: !32, size: 64, offset: 384)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2382, file: !75, line: 60, baseType: !32, size: 64, offset: 448)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2382, file: !75, line: 61, baseType: !32, size: 64, offset: 512)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2382, file: !75, line: 64, baseType: !32, size: 64, offset: 576)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2382, file: !75, line: 65, baseType: !32, size: 64, offset: 640)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2382, file: !75, line: 66, baseType: !32, size: 64, offset: 704)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2382, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2382, file: !75, line: 70, baseType: !2398, size: 64, offset: 832)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2382, file: !75, line: 72, baseType: !38, size: 32, offset: 896)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2382, file: !75, line: 73, baseType: !38, size: 32, offset: 928)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2382, file: !75, line: 74, baseType: !97, size: 64, offset: 960)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2382, file: !75, line: 77, baseType: !39, size: 16, offset: 1024)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2382, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2382, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2382, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2382, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2382, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2382, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2382, file: !75, line: 93, baseType: !2398, size: 64, offset: 1344)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2382, file: !75, line: 94, baseType: !34, size: 64, offset: 1408)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2382, file: !75, line: 95, baseType: !40, size: 64, offset: 1472)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2382, file: !75, line: 96, baseType: !38, size: 32, offset: 1536)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2382, file: !75, line: 98, baseType: !122, size: 160, offset: 1568)
!2414 = !{!2415, !2416, !2417, !2418}
!2415 = !DILocalVariable(name: "fp", arg: 1, scope: !2377, file: !546, line: 28, type: !2380)
!2416 = !DILocalVariable(name: "offset", arg: 2, scope: !2377, file: !546, line: 28, type: !2134)
!2417 = !DILocalVariable(name: "whence", arg: 3, scope: !2377, file: !546, line: 28, type: !38)
!2418 = !DILocalVariable(name: "pos", scope: !2419, file: !546, line: 123, type: !2134)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !546, line: 119, column: 5)
!2420 = distinct !DILexicalBlock(scope: !2377, file: !546, line: 55, column: 7)
!2421 = !DILocation(line: 0, scope: !2377)
!2422 = !DILocation(line: 55, column: 12, scope: !2420)
!2423 = !{!948, !625, i64 16}
!2424 = !DILocation(line: 55, column: 33, scope: !2420)
!2425 = !{!948, !625, i64 8}
!2426 = !DILocation(line: 55, column: 25, scope: !2420)
!2427 = !DILocation(line: 56, column: 7, scope: !2420)
!2428 = !DILocation(line: 56, column: 15, scope: !2420)
!2429 = !DILocation(line: 56, column: 37, scope: !2420)
!2430 = !{!948, !625, i64 32}
!2431 = !DILocation(line: 56, column: 29, scope: !2420)
!2432 = !DILocation(line: 57, column: 7, scope: !2420)
!2433 = !DILocation(line: 57, column: 15, scope: !2420)
!2434 = !{!948, !625, i64 72}
!2435 = !DILocation(line: 57, column: 29, scope: !2420)
!2436 = !DILocation(line: 55, column: 7, scope: !2377)
!2437 = !DILocation(line: 123, column: 26, scope: !2419)
!2438 = !DILocation(line: 123, column: 19, scope: !2419)
!2439 = !DILocation(line: 0, scope: !2419)
!2440 = !DILocation(line: 124, column: 15, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2419, file: !546, line: 124, column: 11)
!2442 = !DILocation(line: 124, column: 11, scope: !2419)
!2443 = !DILocation(line: 135, column: 12, scope: !2419)
!2444 = !DILocation(line: 135, column: 19, scope: !2419)
!2445 = !DILocation(line: 136, column: 12, scope: !2419)
!2446 = !DILocation(line: 136, column: 20, scope: !2419)
!2447 = !{!948, !913, i64 144}
!2448 = !DILocation(line: 167, column: 7, scope: !2419)
!2449 = !DILocation(line: 169, column: 10, scope: !2377)
!2450 = !DILocation(line: 169, column: 3, scope: !2377)
!2451 = !DILocation(line: 170, column: 1, scope: !2377)
!2452 = !DISubprogram(name: "fseeko", scope: !367, file: !367, line: 736, type: !2453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!38, !2380, !97, !38}
!2455 = distinct !DISubprogram(name: "getprogname", scope: !548, file: !548, line: 54, type: !2456, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !547, retainedNodes: !633)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!42}
!2458 = !DILocation(line: 58, column: 10, scope: !2455)
!2459 = !DILocation(line: 58, column: 3, scope: !2455)
!2460 = distinct !DISubprogram(name: "set_program_name", scope: !397, file: !397, line: 37, type: !646, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !2461)
!2461 = !{!2462, !2463, !2464}
!2462 = !DILocalVariable(name: "argv0", arg: 1, scope: !2460, file: !397, line: 37, type: !42)
!2463 = !DILocalVariable(name: "slash", scope: !2460, file: !397, line: 44, type: !42)
!2464 = !DILocalVariable(name: "base", scope: !2460, file: !397, line: 45, type: !42)
!2465 = !DILocation(line: 0, scope: !2460)
!2466 = !DILocation(line: 44, column: 23, scope: !2460)
!2467 = !DILocation(line: 45, column: 22, scope: !2460)
!2468 = !DILocation(line: 46, column: 17, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2460, file: !397, line: 46, column: 7)
!2470 = !DILocation(line: 46, column: 9, scope: !2469)
!2471 = !DILocation(line: 46, column: 25, scope: !2469)
!2472 = !DILocation(line: 46, column: 40, scope: !2469)
!2473 = !DILocalVariable(name: "__s1", arg: 1, scope: !2474, file: !671, line: 974, type: !838)
!2474 = distinct !DISubprogram(name: "memeq", scope: !671, file: !671, line: 974, type: !2475, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !2477)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!35, !838, !838, !40}
!2477 = !{!2473, !2478, !2479}
!2478 = !DILocalVariable(name: "__s2", arg: 2, scope: !2474, file: !671, line: 974, type: !838)
!2479 = !DILocalVariable(name: "__n", arg: 3, scope: !2474, file: !671, line: 974, type: !40)
!2480 = !DILocation(line: 0, scope: !2474, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 46, column: 28, scope: !2469)
!2482 = !DILocation(line: 976, column: 11, scope: !2474, inlinedAt: !2481)
!2483 = !DILocation(line: 976, column: 10, scope: !2474, inlinedAt: !2481)
!2484 = !DILocation(line: 46, column: 7, scope: !2460)
!2485 = !DILocation(line: 49, column: 11, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !397, line: 49, column: 11)
!2487 = distinct !DILexicalBlock(scope: !2469, file: !397, line: 47, column: 5)
!2488 = !DILocation(line: 49, column: 36, scope: !2486)
!2489 = !DILocation(line: 49, column: 11, scope: !2487)
!2490 = !DILocation(line: 65, column: 16, scope: !2460)
!2491 = !DILocation(line: 71, column: 27, scope: !2460)
!2492 = !DILocation(line: 74, column: 33, scope: !2460)
!2493 = !DILocation(line: 76, column: 1, scope: !2460)
!2494 = !DILocation(line: 0, scope: !402)
!2495 = !DILocation(line: 40, column: 29, scope: !402)
!2496 = !DILocation(line: 41, column: 19, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !402, file: !403, line: 41, column: 7)
!2498 = !DILocation(line: 41, column: 7, scope: !402)
!2499 = !DILocation(line: 47, column: 3, scope: !402)
!2500 = !DILocation(line: 48, column: 3, scope: !402)
!2501 = !DILocation(line: 48, column: 13, scope: !402)
!2502 = !DILocalVariable(name: "ps", arg: 1, scope: !2503, file: !2504, line: 1135, type: !2507)
!2503 = distinct !DISubprogram(name: "mbszero", scope: !2504, file: !2504, line: 1135, type: !2505, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !2508)
!2504 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2505 = !DISubroutineType(types: !2506)
!2506 = !{null, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!2508 = !{!2502}
!2509 = !DILocation(line: 0, scope: !2503, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 48, column: 18, scope: !402)
!2511 = !DILocalVariable(name: "__dest", arg: 1, scope: !2512, file: !958, line: 57, type: !34)
!2512 = distinct !DISubprogram(name: "memset", scope: !958, file: !958, line: 57, type: !2513, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!34, !34, !38, !40}
!2515 = !{!2511, !2516, !2517}
!2516 = !DILocalVariable(name: "__ch", arg: 2, scope: !2512, file: !958, line: 57, type: !38)
!2517 = !DILocalVariable(name: "__len", arg: 3, scope: !2512, file: !958, line: 57, type: !40)
!2518 = !DILocation(line: 0, scope: !2512, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 1137, column: 3, scope: !2503, inlinedAt: !2510)
!2520 = !DILocation(line: 59, column: 10, scope: !2512, inlinedAt: !2519)
!2521 = !DILocation(line: 49, column: 7, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !402, file: !403, line: 49, column: 7)
!2523 = !DILocation(line: 49, column: 39, scope: !2522)
!2524 = !DILocation(line: 49, column: 44, scope: !2522)
!2525 = !DILocation(line: 54, column: 1, scope: !402)
!2526 = distinct !DISubprogram(name: "clone_quoting_options", scope: !433, file: !433, line: 113, type: !2527, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2530)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!2529, !2529}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!2530 = !{!2531, !2532, !2533}
!2531 = !DILocalVariable(name: "o", arg: 1, scope: !2526, file: !433, line: 113, type: !2529)
!2532 = !DILocalVariable(name: "saved_errno", scope: !2526, file: !433, line: 115, type: !38)
!2533 = !DILocalVariable(name: "p", scope: !2526, file: !433, line: 116, type: !2529)
!2534 = !DILocation(line: 0, scope: !2526)
!2535 = !DILocation(line: 115, column: 21, scope: !2526)
!2536 = !DILocation(line: 116, column: 40, scope: !2526)
!2537 = !DILocation(line: 116, column: 31, scope: !2526)
!2538 = !DILocation(line: 118, column: 9, scope: !2526)
!2539 = !DILocation(line: 119, column: 3, scope: !2526)
!2540 = distinct !DISubprogram(name: "get_quoting_style", scope: !433, file: !433, line: 124, type: !2541, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2545)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!217, !2543}
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!2545 = !{!2546}
!2546 = !DILocalVariable(name: "o", arg: 1, scope: !2540, file: !433, line: 124, type: !2543)
!2547 = !DILocation(line: 0, scope: !2540)
!2548 = !DILocation(line: 126, column: 11, scope: !2540)
!2549 = !DILocation(line: 126, column: 46, scope: !2540)
!2550 = !{!2551, !626, i64 0}
!2551 = !{!"quoting_options", !626, i64 0, !721, i64 4, !626, i64 8, !625, i64 40, !625, i64 48}
!2552 = !DILocation(line: 126, column: 3, scope: !2540)
!2553 = distinct !DISubprogram(name: "set_quoting_style", scope: !433, file: !433, line: 132, type: !2554, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2556)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{null, !2529, !217}
!2556 = !{!2557, !2558}
!2557 = !DILocalVariable(name: "o", arg: 1, scope: !2553, file: !433, line: 132, type: !2529)
!2558 = !DILocalVariable(name: "s", arg: 2, scope: !2553, file: !433, line: 132, type: !217)
!2559 = !DILocation(line: 0, scope: !2553)
!2560 = !DILocation(line: 134, column: 4, scope: !2553)
!2561 = !DILocation(line: 134, column: 39, scope: !2553)
!2562 = !DILocation(line: 134, column: 45, scope: !2553)
!2563 = !DILocation(line: 135, column: 1, scope: !2553)
!2564 = distinct !DISubprogram(name: "set_char_quoting", scope: !433, file: !433, line: 143, type: !2565, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2567)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!38, !2529, !33, !38}
!2567 = !{!2568, !2569, !2570, !2571, !2572, !2574, !2575}
!2568 = !DILocalVariable(name: "o", arg: 1, scope: !2564, file: !433, line: 143, type: !2529)
!2569 = !DILocalVariable(name: "c", arg: 2, scope: !2564, file: !433, line: 143, type: !33)
!2570 = !DILocalVariable(name: "i", arg: 3, scope: !2564, file: !433, line: 143, type: !38)
!2571 = !DILocalVariable(name: "uc", scope: !2564, file: !433, line: 145, type: !44)
!2572 = !DILocalVariable(name: "p", scope: !2564, file: !433, line: 146, type: !2573)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2574 = !DILocalVariable(name: "shift", scope: !2564, file: !433, line: 148, type: !38)
!2575 = !DILocalVariable(name: "r", scope: !2564, file: !433, line: 149, type: !7)
!2576 = !DILocation(line: 0, scope: !2564)
!2577 = !DILocation(line: 147, column: 6, scope: !2564)
!2578 = !DILocation(line: 147, column: 62, scope: !2564)
!2579 = !DILocation(line: 147, column: 57, scope: !2564)
!2580 = !DILocation(line: 148, column: 15, scope: !2564)
!2581 = !DILocation(line: 149, column: 21, scope: !2564)
!2582 = !DILocation(line: 149, column: 24, scope: !2564)
!2583 = !DILocation(line: 149, column: 34, scope: !2564)
!2584 = !DILocation(line: 150, column: 13, scope: !2564)
!2585 = !DILocation(line: 150, column: 19, scope: !2564)
!2586 = !DILocation(line: 150, column: 24, scope: !2564)
!2587 = !DILocation(line: 150, column: 6, scope: !2564)
!2588 = !DILocation(line: 151, column: 3, scope: !2564)
!2589 = distinct !DISubprogram(name: "set_quoting_flags", scope: !433, file: !433, line: 159, type: !2590, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!38, !2529, !38}
!2592 = !{!2593, !2594, !2595}
!2593 = !DILocalVariable(name: "o", arg: 1, scope: !2589, file: !433, line: 159, type: !2529)
!2594 = !DILocalVariable(name: "i", arg: 2, scope: !2589, file: !433, line: 159, type: !38)
!2595 = !DILocalVariable(name: "r", scope: !2589, file: !433, line: 163, type: !38)
!2596 = !DILocation(line: 0, scope: !2589)
!2597 = !DILocation(line: 161, column: 8, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2589, file: !433, line: 161, column: 7)
!2599 = !DILocation(line: 161, column: 7, scope: !2589)
!2600 = !DILocation(line: 163, column: 14, scope: !2589)
!2601 = !{!2551, !721, i64 4}
!2602 = !DILocation(line: 164, column: 12, scope: !2589)
!2603 = !DILocation(line: 165, column: 3, scope: !2589)
!2604 = distinct !DISubprogram(name: "set_custom_quoting", scope: !433, file: !433, line: 169, type: !2605, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{null, !2529, !42, !42}
!2607 = !{!2608, !2609, !2610}
!2608 = !DILocalVariable(name: "o", arg: 1, scope: !2604, file: !433, line: 169, type: !2529)
!2609 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2604, file: !433, line: 170, type: !42)
!2610 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2604, file: !433, line: 170, type: !42)
!2611 = !DILocation(line: 0, scope: !2604)
!2612 = !DILocation(line: 172, column: 8, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2604, file: !433, line: 172, column: 7)
!2614 = !DILocation(line: 172, column: 7, scope: !2604)
!2615 = !DILocation(line: 174, column: 6, scope: !2604)
!2616 = !DILocation(line: 174, column: 12, scope: !2604)
!2617 = !DILocation(line: 175, column: 8, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2604, file: !433, line: 175, column: 7)
!2619 = !DILocation(line: 175, column: 19, scope: !2618)
!2620 = !DILocation(line: 176, column: 5, scope: !2618)
!2621 = !DILocation(line: 177, column: 6, scope: !2604)
!2622 = !DILocation(line: 177, column: 17, scope: !2604)
!2623 = !{!2551, !625, i64 40}
!2624 = !DILocation(line: 178, column: 6, scope: !2604)
!2625 = !DILocation(line: 178, column: 18, scope: !2604)
!2626 = !{!2551, !625, i64 48}
!2627 = !DILocation(line: 179, column: 1, scope: !2604)
!2628 = distinct !DISubprogram(name: "quotearg_buffer", scope: !433, file: !433, line: 774, type: !2629, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2631)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!40, !32, !40, !42, !40, !2543}
!2631 = !{!2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639}
!2632 = !DILocalVariable(name: "buffer", arg: 1, scope: !2628, file: !433, line: 774, type: !32)
!2633 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2628, file: !433, line: 774, type: !40)
!2634 = !DILocalVariable(name: "arg", arg: 3, scope: !2628, file: !433, line: 775, type: !42)
!2635 = !DILocalVariable(name: "argsize", arg: 4, scope: !2628, file: !433, line: 775, type: !40)
!2636 = !DILocalVariable(name: "o", arg: 5, scope: !2628, file: !433, line: 776, type: !2543)
!2637 = !DILocalVariable(name: "p", scope: !2628, file: !433, line: 778, type: !2543)
!2638 = !DILocalVariable(name: "saved_errno", scope: !2628, file: !433, line: 779, type: !38)
!2639 = !DILocalVariable(name: "r", scope: !2628, file: !433, line: 780, type: !40)
!2640 = !DILocation(line: 0, scope: !2628)
!2641 = !DILocation(line: 778, column: 37, scope: !2628)
!2642 = !DILocation(line: 779, column: 21, scope: !2628)
!2643 = !DILocation(line: 781, column: 43, scope: !2628)
!2644 = !DILocation(line: 781, column: 53, scope: !2628)
!2645 = !DILocation(line: 781, column: 60, scope: !2628)
!2646 = !DILocation(line: 782, column: 43, scope: !2628)
!2647 = !DILocation(line: 782, column: 58, scope: !2628)
!2648 = !DILocation(line: 780, column: 14, scope: !2628)
!2649 = !DILocation(line: 783, column: 9, scope: !2628)
!2650 = !DILocation(line: 784, column: 3, scope: !2628)
!2651 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !433, file: !433, line: 251, type: !2652, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2656)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!40, !32, !40, !42, !40, !217, !38, !2654, !42, !42}
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2656 = !{!2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2681, !2683, !2686, !2687, !2688, !2689, !2692, !2693, !2696, !2700, !2701, !2709, !2712, !2713, !2715, !2716, !2717, !2718}
!2657 = !DILocalVariable(name: "buffer", arg: 1, scope: !2651, file: !433, line: 251, type: !32)
!2658 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2651, file: !433, line: 251, type: !40)
!2659 = !DILocalVariable(name: "arg", arg: 3, scope: !2651, file: !433, line: 252, type: !42)
!2660 = !DILocalVariable(name: "argsize", arg: 4, scope: !2651, file: !433, line: 252, type: !40)
!2661 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2651, file: !433, line: 253, type: !217)
!2662 = !DILocalVariable(name: "flags", arg: 6, scope: !2651, file: !433, line: 253, type: !38)
!2663 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2651, file: !433, line: 254, type: !2654)
!2664 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2651, file: !433, line: 255, type: !42)
!2665 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2651, file: !433, line: 256, type: !42)
!2666 = !DILocalVariable(name: "unibyte_locale", scope: !2651, file: !433, line: 258, type: !35)
!2667 = !DILocalVariable(name: "len", scope: !2651, file: !433, line: 260, type: !40)
!2668 = !DILocalVariable(name: "orig_buffersize", scope: !2651, file: !433, line: 261, type: !40)
!2669 = !DILocalVariable(name: "quote_string", scope: !2651, file: !433, line: 262, type: !42)
!2670 = !DILocalVariable(name: "quote_string_len", scope: !2651, file: !433, line: 263, type: !40)
!2671 = !DILocalVariable(name: "backslash_escapes", scope: !2651, file: !433, line: 264, type: !35)
!2672 = !DILocalVariable(name: "elide_outer_quotes", scope: !2651, file: !433, line: 265, type: !35)
!2673 = !DILocalVariable(name: "encountered_single_quote", scope: !2651, file: !433, line: 266, type: !35)
!2674 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2651, file: !433, line: 267, type: !35)
!2675 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2651, file: !433, line: 309, type: !35)
!2676 = !DILocalVariable(name: "lq", scope: !2677, file: !433, line: 361, type: !42)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !433, line: 361, column: 11)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !433, line: 360, column: 13)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !433, line: 333, column: 7)
!2680 = distinct !DILexicalBlock(scope: !2651, file: !433, line: 312, column: 5)
!2681 = !DILocalVariable(name: "i", scope: !2682, file: !433, line: 395, type: !40)
!2682 = distinct !DILexicalBlock(scope: !2651, file: !433, line: 395, column: 3)
!2683 = !DILocalVariable(name: "is_right_quote", scope: !2684, file: !433, line: 397, type: !35)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !433, line: 396, column: 5)
!2685 = distinct !DILexicalBlock(scope: !2682, file: !433, line: 395, column: 3)
!2686 = !DILocalVariable(name: "escaping", scope: !2684, file: !433, line: 398, type: !35)
!2687 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2684, file: !433, line: 399, type: !35)
!2688 = !DILocalVariable(name: "c", scope: !2684, file: !433, line: 417, type: !44)
!2689 = !DILocalVariable(name: "m", scope: !2690, file: !433, line: 598, type: !40)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !433, line: 596, column: 11)
!2691 = distinct !DILexicalBlock(scope: !2684, file: !433, line: 419, column: 9)
!2692 = !DILocalVariable(name: "printable", scope: !2690, file: !433, line: 600, type: !35)
!2693 = !DILocalVariable(name: "mbs", scope: !2694, file: !433, line: 609, type: !478)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !433, line: 608, column: 15)
!2695 = distinct !DILexicalBlock(scope: !2690, file: !433, line: 602, column: 17)
!2696 = !DILocalVariable(name: "w", scope: !2697, file: !433, line: 618, type: !158)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !433, line: 617, column: 19)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !433, line: 616, column: 17)
!2699 = distinct !DILexicalBlock(scope: !2694, file: !433, line: 616, column: 17)
!2700 = !DILocalVariable(name: "bytes", scope: !2697, file: !433, line: 619, type: !40)
!2701 = !DILocalVariable(name: "j", scope: !2702, file: !433, line: 648, type: !40)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !433, line: 648, column: 29)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !433, line: 647, column: 27)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !433, line: 645, column: 29)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !433, line: 636, column: 23)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !433, line: 628, column: 30)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !433, line: 623, column: 30)
!2708 = distinct !DILexicalBlock(scope: !2697, file: !433, line: 621, column: 25)
!2709 = !DILocalVariable(name: "ilim", scope: !2710, file: !433, line: 674, type: !40)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !433, line: 671, column: 15)
!2711 = distinct !DILexicalBlock(scope: !2690, file: !433, line: 670, column: 17)
!2712 = !DILabel(scope: !2651, name: "process_input", file: !433, line: 308)
!2713 = !DILabel(scope: !2714, name: "c_and_shell_escape", file: !433, line: 502)
!2714 = distinct !DILexicalBlock(scope: !2691, file: !433, line: 478, column: 9)
!2715 = !DILabel(scope: !2714, name: "c_escape", file: !433, line: 507)
!2716 = !DILabel(scope: !2684, name: "store_escape", file: !433, line: 709)
!2717 = !DILabel(scope: !2684, name: "store_c", file: !433, line: 712)
!2718 = !DILabel(scope: !2651, name: "force_outer_quoting_style", file: !433, line: 753)
!2719 = !DILocation(line: 0, scope: !2651)
!2720 = !DILocation(line: 258, column: 25, scope: !2651)
!2721 = !DILocation(line: 258, column: 36, scope: !2651)
!2722 = !DILocation(line: 267, column: 3, scope: !2651)
!2723 = !DILocation(line: 261, column: 10, scope: !2651)
!2724 = !DILocation(line: 262, column: 15, scope: !2651)
!2725 = !DILocation(line: 263, column: 10, scope: !2651)
!2726 = !DILocation(line: 308, column: 2, scope: !2651)
!2727 = !DILocation(line: 311, column: 3, scope: !2651)
!2728 = !DILocation(line: 318, column: 11, scope: !2680)
!2729 = !DILocation(line: 319, column: 9, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !433, line: 319, column: 9)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !433, line: 319, column: 9)
!2732 = distinct !DILexicalBlock(scope: !2680, file: !433, line: 318, column: 11)
!2733 = !DILocation(line: 319, column: 9, scope: !2731)
!2734 = !DILocation(line: 0, scope: !469, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 357, column: 26, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !433, line: 335, column: 11)
!2737 = distinct !DILexicalBlock(scope: !2679, file: !433, line: 334, column: 13)
!2738 = !DILocation(line: 199, column: 29, scope: !469, inlinedAt: !2735)
!2739 = !DILocation(line: 201, column: 19, scope: !2740, inlinedAt: !2735)
!2740 = distinct !DILexicalBlock(scope: !469, file: !433, line: 201, column: 7)
!2741 = !DILocation(line: 201, column: 7, scope: !469, inlinedAt: !2735)
!2742 = !DILocation(line: 229, column: 3, scope: !469, inlinedAt: !2735)
!2743 = !DILocation(line: 230, column: 3, scope: !469, inlinedAt: !2735)
!2744 = !DILocation(line: 230, column: 13, scope: !469, inlinedAt: !2735)
!2745 = !DILocalVariable(name: "ps", arg: 1, scope: !2746, file: !2504, line: 1135, type: !2749)
!2746 = distinct !DISubprogram(name: "mbszero", scope: !2504, file: !2504, line: 1135, type: !2747, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2750)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{null, !2749}
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!2750 = !{!2745}
!2751 = !DILocation(line: 0, scope: !2746, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 230, column: 18, scope: !469, inlinedAt: !2735)
!2753 = !DILocalVariable(name: "__dest", arg: 1, scope: !2754, file: !958, line: 57, type: !34)
!2754 = distinct !DISubprogram(name: "memset", scope: !958, file: !958, line: 57, type: !2513, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2755)
!2755 = !{!2753, !2756, !2757}
!2756 = !DILocalVariable(name: "__ch", arg: 2, scope: !2754, file: !958, line: 57, type: !38)
!2757 = !DILocalVariable(name: "__len", arg: 3, scope: !2754, file: !958, line: 57, type: !40)
!2758 = !DILocation(line: 0, scope: !2754, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 1137, column: 3, scope: !2746, inlinedAt: !2752)
!2760 = !DILocation(line: 59, column: 10, scope: !2754, inlinedAt: !2759)
!2761 = !DILocation(line: 231, column: 7, scope: !2762, inlinedAt: !2735)
!2762 = distinct !DILexicalBlock(scope: !469, file: !433, line: 231, column: 7)
!2763 = !DILocation(line: 231, column: 40, scope: !2762, inlinedAt: !2735)
!2764 = !DILocation(line: 231, column: 45, scope: !2762, inlinedAt: !2735)
!2765 = !DILocation(line: 235, column: 1, scope: !469, inlinedAt: !2735)
!2766 = !DILocation(line: 0, scope: !469, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 358, column: 27, scope: !2736)
!2768 = !DILocation(line: 199, column: 29, scope: !469, inlinedAt: !2767)
!2769 = !DILocation(line: 201, column: 19, scope: !2740, inlinedAt: !2767)
!2770 = !DILocation(line: 201, column: 7, scope: !469, inlinedAt: !2767)
!2771 = !DILocation(line: 229, column: 3, scope: !469, inlinedAt: !2767)
!2772 = !DILocation(line: 230, column: 3, scope: !469, inlinedAt: !2767)
!2773 = !DILocation(line: 230, column: 13, scope: !469, inlinedAt: !2767)
!2774 = !DILocation(line: 0, scope: !2746, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 230, column: 18, scope: !469, inlinedAt: !2767)
!2776 = !DILocation(line: 0, scope: !2754, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 1137, column: 3, scope: !2746, inlinedAt: !2775)
!2778 = !DILocation(line: 59, column: 10, scope: !2754, inlinedAt: !2777)
!2779 = !DILocation(line: 231, column: 7, scope: !2762, inlinedAt: !2767)
!2780 = !DILocation(line: 231, column: 40, scope: !2762, inlinedAt: !2767)
!2781 = !DILocation(line: 231, column: 45, scope: !2762, inlinedAt: !2767)
!2782 = !DILocation(line: 235, column: 1, scope: !469, inlinedAt: !2767)
!2783 = !DILocation(line: 360, column: 13, scope: !2679)
!2784 = !DILocation(line: 0, scope: !2677)
!2785 = !DILocation(line: 361, column: 45, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2677, file: !433, line: 361, column: 11)
!2787 = !DILocation(line: 361, column: 11, scope: !2677)
!2788 = !DILocation(line: 362, column: 13, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !433, line: 362, column: 13)
!2790 = distinct !DILexicalBlock(scope: !2786, file: !433, line: 362, column: 13)
!2791 = !DILocation(line: 362, column: 13, scope: !2790)
!2792 = !DILocation(line: 361, column: 52, scope: !2786)
!2793 = distinct !{!2793, !2787, !2794, !687}
!2794 = !DILocation(line: 362, column: 13, scope: !2677)
!2795 = !DILocation(line: 260, column: 10, scope: !2651)
!2796 = !DILocation(line: 365, column: 28, scope: !2679)
!2797 = !DILocation(line: 367, column: 7, scope: !2680)
!2798 = !DILocation(line: 370, column: 7, scope: !2680)
!2799 = !DILocation(line: 376, column: 11, scope: !2680)
!2800 = !DILocation(line: 381, column: 11, scope: !2680)
!2801 = !DILocation(line: 382, column: 9, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !433, line: 382, column: 9)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !433, line: 382, column: 9)
!2804 = distinct !DILexicalBlock(scope: !2680, file: !433, line: 381, column: 11)
!2805 = !DILocation(line: 382, column: 9, scope: !2803)
!2806 = !DILocation(line: 389, column: 7, scope: !2680)
!2807 = !DILocation(line: 392, column: 7, scope: !2680)
!2808 = !DILocation(line: 0, scope: !2682)
!2809 = !DILocation(line: 395, column: 8, scope: !2682)
!2810 = !DILocation(line: 395, column: 34, scope: !2685)
!2811 = !DILocation(line: 395, column: 26, scope: !2685)
!2812 = !DILocation(line: 395, column: 48, scope: !2685)
!2813 = !DILocation(line: 395, column: 55, scope: !2685)
!2814 = !DILocation(line: 395, column: 3, scope: !2682)
!2815 = !DILocation(line: 395, column: 67, scope: !2685)
!2816 = !DILocation(line: 0, scope: !2684)
!2817 = !DILocation(line: 402, column: 11, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2684, file: !433, line: 401, column: 11)
!2819 = !DILocation(line: 404, column: 17, scope: !2818)
!2820 = !DILocation(line: 405, column: 39, scope: !2818)
!2821 = !DILocation(line: 409, column: 32, scope: !2818)
!2822 = !DILocation(line: 405, column: 19, scope: !2818)
!2823 = !DILocation(line: 405, column: 15, scope: !2818)
!2824 = !DILocation(line: 410, column: 11, scope: !2818)
!2825 = !DILocation(line: 410, column: 25, scope: !2818)
!2826 = !DILocalVariable(name: "__s1", arg: 1, scope: !2827, file: !671, line: 974, type: !838)
!2827 = distinct !DISubprogram(name: "memeq", scope: !671, file: !671, line: 974, type: !2475, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2828)
!2828 = !{!2826, !2829, !2830}
!2829 = !DILocalVariable(name: "__s2", arg: 2, scope: !2827, file: !671, line: 974, type: !838)
!2830 = !DILocalVariable(name: "__n", arg: 3, scope: !2827, file: !671, line: 974, type: !40)
!2831 = !DILocation(line: 0, scope: !2827, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 410, column: 14, scope: !2818)
!2833 = !DILocation(line: 976, column: 11, scope: !2827, inlinedAt: !2832)
!2834 = !DILocation(line: 976, column: 10, scope: !2827, inlinedAt: !2832)
!2835 = !DILocation(line: 401, column: 11, scope: !2684)
!2836 = !DILocation(line: 417, column: 25, scope: !2684)
!2837 = !DILocation(line: 418, column: 7, scope: !2684)
!2838 = !DILocation(line: 421, column: 15, scope: !2691)
!2839 = !DILocation(line: 423, column: 15, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !433, line: 423, column: 15)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !433, line: 422, column: 13)
!2842 = distinct !DILexicalBlock(scope: !2691, file: !433, line: 421, column: 15)
!2843 = !DILocation(line: 423, column: 15, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2840, file: !433, line: 423, column: 15)
!2845 = !DILocation(line: 423, column: 15, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !433, line: 423, column: 15)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !433, line: 423, column: 15)
!2848 = distinct !DILexicalBlock(scope: !2844, file: !433, line: 423, column: 15)
!2849 = !DILocation(line: 423, column: 15, scope: !2847)
!2850 = !DILocation(line: 423, column: 15, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !433, line: 423, column: 15)
!2852 = distinct !DILexicalBlock(scope: !2848, file: !433, line: 423, column: 15)
!2853 = !DILocation(line: 423, column: 15, scope: !2852)
!2854 = !DILocation(line: 423, column: 15, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !433, line: 423, column: 15)
!2856 = distinct !DILexicalBlock(scope: !2848, file: !433, line: 423, column: 15)
!2857 = !DILocation(line: 423, column: 15, scope: !2856)
!2858 = !DILocation(line: 423, column: 15, scope: !2848)
!2859 = !DILocation(line: 423, column: 15, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !433, line: 423, column: 15)
!2861 = distinct !DILexicalBlock(scope: !2840, file: !433, line: 423, column: 15)
!2862 = !DILocation(line: 423, column: 15, scope: !2861)
!2863 = !DILocation(line: 431, column: 19, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2841, file: !433, line: 430, column: 19)
!2865 = !DILocation(line: 431, column: 24, scope: !2864)
!2866 = !DILocation(line: 431, column: 28, scope: !2864)
!2867 = !DILocation(line: 431, column: 38, scope: !2864)
!2868 = !DILocation(line: 431, column: 48, scope: !2864)
!2869 = !DILocation(line: 431, column: 59, scope: !2864)
!2870 = !DILocation(line: 433, column: 19, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !433, line: 433, column: 19)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !433, line: 433, column: 19)
!2873 = distinct !DILexicalBlock(scope: !2864, file: !433, line: 432, column: 17)
!2874 = !DILocation(line: 433, column: 19, scope: !2872)
!2875 = !DILocation(line: 434, column: 19, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !433, line: 434, column: 19)
!2877 = distinct !DILexicalBlock(scope: !2873, file: !433, line: 434, column: 19)
!2878 = !DILocation(line: 434, column: 19, scope: !2877)
!2879 = !DILocation(line: 435, column: 17, scope: !2873)
!2880 = !DILocation(line: 442, column: 20, scope: !2842)
!2881 = !DILocation(line: 447, column: 11, scope: !2691)
!2882 = !DILocation(line: 450, column: 19, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2691, file: !433, line: 448, column: 13)
!2884 = !DILocation(line: 456, column: 19, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2883, file: !433, line: 455, column: 19)
!2886 = !DILocation(line: 456, column: 24, scope: !2885)
!2887 = !DILocation(line: 456, column: 28, scope: !2885)
!2888 = !DILocation(line: 456, column: 38, scope: !2885)
!2889 = !DILocation(line: 456, column: 47, scope: !2885)
!2890 = !DILocation(line: 456, column: 41, scope: !2885)
!2891 = !DILocation(line: 456, column: 52, scope: !2885)
!2892 = !DILocation(line: 455, column: 19, scope: !2883)
!2893 = !DILocation(line: 457, column: 25, scope: !2885)
!2894 = !DILocation(line: 457, column: 17, scope: !2885)
!2895 = !DILocation(line: 464, column: 25, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2885, file: !433, line: 458, column: 19)
!2897 = !DILocation(line: 468, column: 21, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !433, line: 468, column: 21)
!2899 = distinct !DILexicalBlock(scope: !2896, file: !433, line: 468, column: 21)
!2900 = !DILocation(line: 468, column: 21, scope: !2899)
!2901 = !DILocation(line: 469, column: 21, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !433, line: 469, column: 21)
!2903 = distinct !DILexicalBlock(scope: !2896, file: !433, line: 469, column: 21)
!2904 = !DILocation(line: 469, column: 21, scope: !2903)
!2905 = !DILocation(line: 470, column: 21, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !433, line: 470, column: 21)
!2907 = distinct !DILexicalBlock(scope: !2896, file: !433, line: 470, column: 21)
!2908 = !DILocation(line: 470, column: 21, scope: !2907)
!2909 = !DILocation(line: 471, column: 21, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !433, line: 471, column: 21)
!2911 = distinct !DILexicalBlock(scope: !2896, file: !433, line: 471, column: 21)
!2912 = !DILocation(line: 471, column: 21, scope: !2911)
!2913 = !DILocation(line: 472, column: 21, scope: !2896)
!2914 = !DILocation(line: 482, column: 33, scope: !2714)
!2915 = !DILocation(line: 483, column: 33, scope: !2714)
!2916 = !DILocation(line: 485, column: 33, scope: !2714)
!2917 = !DILocation(line: 486, column: 33, scope: !2714)
!2918 = !DILocation(line: 487, column: 33, scope: !2714)
!2919 = !DILocation(line: 490, column: 17, scope: !2714)
!2920 = !DILocation(line: 492, column: 21, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !433, line: 491, column: 15)
!2922 = distinct !DILexicalBlock(scope: !2714, file: !433, line: 490, column: 17)
!2923 = !DILocation(line: 499, column: 35, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2714, file: !433, line: 499, column: 17)
!2925 = !DILocation(line: 499, column: 57, scope: !2924)
!2926 = !DILocation(line: 0, scope: !2714)
!2927 = !DILocation(line: 502, column: 11, scope: !2714)
!2928 = !DILocation(line: 504, column: 17, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2714, file: !433, line: 503, column: 17)
!2930 = !DILocation(line: 507, column: 11, scope: !2714)
!2931 = !DILocation(line: 508, column: 17, scope: !2714)
!2932 = !DILocation(line: 517, column: 15, scope: !2691)
!2933 = !DILocation(line: 517, column: 40, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2691, file: !433, line: 517, column: 15)
!2935 = !DILocation(line: 517, column: 47, scope: !2934)
!2936 = !DILocation(line: 517, column: 18, scope: !2934)
!2937 = !DILocation(line: 521, column: 17, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2691, file: !433, line: 521, column: 15)
!2939 = !DILocation(line: 521, column: 15, scope: !2691)
!2940 = !DILocation(line: 525, column: 11, scope: !2691)
!2941 = !DILocation(line: 537, column: 15, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2691, file: !433, line: 536, column: 15)
!2943 = !DILocation(line: 536, column: 15, scope: !2691)
!2944 = !DILocation(line: 544, column: 15, scope: !2691)
!2945 = !DILocation(line: 546, column: 19, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !433, line: 545, column: 13)
!2947 = distinct !DILexicalBlock(scope: !2691, file: !433, line: 544, column: 15)
!2948 = !DILocation(line: 549, column: 19, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2946, file: !433, line: 549, column: 19)
!2950 = !DILocation(line: 549, column: 30, scope: !2949)
!2951 = !DILocation(line: 558, column: 15, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !433, line: 558, column: 15)
!2953 = distinct !DILexicalBlock(scope: !2946, file: !433, line: 558, column: 15)
!2954 = !DILocation(line: 558, column: 15, scope: !2953)
!2955 = !DILocation(line: 559, column: 15, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !433, line: 559, column: 15)
!2957 = distinct !DILexicalBlock(scope: !2946, file: !433, line: 559, column: 15)
!2958 = !DILocation(line: 559, column: 15, scope: !2957)
!2959 = !DILocation(line: 560, column: 15, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !433, line: 560, column: 15)
!2961 = distinct !DILexicalBlock(scope: !2946, file: !433, line: 560, column: 15)
!2962 = !DILocation(line: 560, column: 15, scope: !2961)
!2963 = !DILocation(line: 562, column: 13, scope: !2946)
!2964 = !DILocation(line: 602, column: 17, scope: !2690)
!2965 = !DILocation(line: 0, scope: !2690)
!2966 = !DILocation(line: 605, column: 29, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2695, file: !433, line: 603, column: 15)
!2968 = !DILocation(line: 605, column: 41, scope: !2967)
!2969 = !DILocation(line: 670, column: 23, scope: !2711)
!2970 = !DILocation(line: 609, column: 17, scope: !2694)
!2971 = !DILocation(line: 609, column: 27, scope: !2694)
!2972 = !DILocation(line: 0, scope: !2746, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 609, column: 32, scope: !2694)
!2974 = !DILocation(line: 0, scope: !2754, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 1137, column: 3, scope: !2746, inlinedAt: !2973)
!2976 = !DILocation(line: 59, column: 10, scope: !2754, inlinedAt: !2975)
!2977 = !DILocation(line: 613, column: 29, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2694, file: !433, line: 613, column: 21)
!2979 = !DILocation(line: 613, column: 21, scope: !2694)
!2980 = !DILocation(line: 614, column: 29, scope: !2978)
!2981 = !DILocation(line: 614, column: 19, scope: !2978)
!2982 = !DILocation(line: 618, column: 21, scope: !2697)
!2983 = !DILocation(line: 620, column: 54, scope: !2697)
!2984 = !DILocation(line: 0, scope: !2697)
!2985 = !DILocation(line: 619, column: 36, scope: !2697)
!2986 = !DILocation(line: 621, column: 25, scope: !2697)
!2987 = !DILocation(line: 631, column: 38, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2706, file: !433, line: 629, column: 23)
!2989 = !DILocation(line: 631, column: 48, scope: !2988)
!2990 = !DILocation(line: 665, column: 19, scope: !2698)
!2991 = !DILocation(line: 666, column: 15, scope: !2695)
!2992 = !DILocation(line: 626, column: 25, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2707, file: !433, line: 624, column: 23)
!2994 = !DILocation(line: 631, column: 51, scope: !2988)
!2995 = !DILocation(line: 631, column: 25, scope: !2988)
!2996 = !DILocation(line: 632, column: 28, scope: !2988)
!2997 = !DILocation(line: 631, column: 34, scope: !2988)
!2998 = distinct !{!2998, !2995, !2996, !687}
!2999 = !DILocation(line: 646, column: 29, scope: !2704)
!3000 = !DILocation(line: 0, scope: !2702)
!3001 = !DILocation(line: 649, column: 49, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2702, file: !433, line: 648, column: 29)
!3003 = !DILocation(line: 649, column: 39, scope: !3002)
!3004 = !DILocation(line: 649, column: 31, scope: !3002)
!3005 = !DILocation(line: 648, column: 60, scope: !3002)
!3006 = !DILocation(line: 648, column: 50, scope: !3002)
!3007 = !DILocation(line: 648, column: 29, scope: !2702)
!3008 = distinct !{!3008, !3007, !3009, !687}
!3009 = !DILocation(line: 654, column: 33, scope: !2702)
!3010 = !DILocation(line: 657, column: 43, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2705, file: !433, line: 657, column: 29)
!3012 = !DILocalVariable(name: "wc", arg: 1, scope: !3013, file: !1076, line: 865, type: !1079)
!3013 = distinct !DISubprogram(name: "c32isprint", scope: !1076, file: !1076, line: 865, type: !1077, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3014)
!3014 = !{!3012}
!3015 = !DILocation(line: 0, scope: !3013, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 657, column: 31, scope: !3011)
!3017 = !DILocation(line: 871, column: 10, scope: !3013, inlinedAt: !3016)
!3018 = !DILocation(line: 657, column: 31, scope: !3011)
!3019 = !DILocation(line: 664, column: 23, scope: !2697)
!3020 = !DILocation(line: 753, column: 2, scope: !2651)
!3021 = !DILocation(line: 756, column: 51, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2651, file: !433, line: 756, column: 7)
!3023 = !DILocation(line: 670, column: 19, scope: !2711)
!3024 = !DILocation(line: 670, column: 45, scope: !2711)
!3025 = !DILocation(line: 674, column: 33, scope: !2710)
!3026 = !DILocation(line: 0, scope: !2710)
!3027 = !DILocation(line: 676, column: 17, scope: !2710)
!3028 = !DILocation(line: 398, column: 12, scope: !2684)
!3029 = !DILocation(line: 678, column: 43, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !433, line: 678, column: 25)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !433, line: 677, column: 19)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !433, line: 676, column: 17)
!3033 = distinct !DILexicalBlock(scope: !2710, file: !433, line: 676, column: 17)
!3034 = !DILocation(line: 680, column: 25, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !433, line: 680, column: 25)
!3036 = distinct !DILexicalBlock(scope: !3030, file: !433, line: 679, column: 23)
!3037 = !DILocation(line: 680, column: 25, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3035, file: !433, line: 680, column: 25)
!3039 = !DILocation(line: 680, column: 25, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !433, line: 680, column: 25)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !433, line: 680, column: 25)
!3042 = distinct !DILexicalBlock(scope: !3038, file: !433, line: 680, column: 25)
!3043 = !DILocation(line: 680, column: 25, scope: !3041)
!3044 = !DILocation(line: 680, column: 25, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !433, line: 680, column: 25)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !433, line: 680, column: 25)
!3047 = !DILocation(line: 680, column: 25, scope: !3046)
!3048 = !DILocation(line: 680, column: 25, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !433, line: 680, column: 25)
!3050 = distinct !DILexicalBlock(scope: !3042, file: !433, line: 680, column: 25)
!3051 = !DILocation(line: 680, column: 25, scope: !3050)
!3052 = !DILocation(line: 680, column: 25, scope: !3042)
!3053 = !DILocation(line: 680, column: 25, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !433, line: 680, column: 25)
!3055 = distinct !DILexicalBlock(scope: !3035, file: !433, line: 680, column: 25)
!3056 = !DILocation(line: 680, column: 25, scope: !3055)
!3057 = !DILocation(line: 681, column: 25, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !433, line: 681, column: 25)
!3059 = distinct !DILexicalBlock(scope: !3036, file: !433, line: 681, column: 25)
!3060 = !DILocation(line: 681, column: 25, scope: !3059)
!3061 = !DILocation(line: 682, column: 25, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !433, line: 682, column: 25)
!3063 = distinct !DILexicalBlock(scope: !3036, file: !433, line: 682, column: 25)
!3064 = !DILocation(line: 682, column: 25, scope: !3063)
!3065 = !DILocation(line: 683, column: 38, scope: !3036)
!3066 = !DILocation(line: 683, column: 33, scope: !3036)
!3067 = !DILocation(line: 684, column: 23, scope: !3036)
!3068 = !DILocation(line: 685, column: 30, scope: !3030)
!3069 = !DILocation(line: 687, column: 25, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !433, line: 687, column: 25)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !433, line: 687, column: 25)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !433, line: 686, column: 23)
!3073 = distinct !DILexicalBlock(scope: !3030, file: !433, line: 685, column: 30)
!3074 = !DILocation(line: 687, column: 25, scope: !3071)
!3075 = !DILocation(line: 689, column: 23, scope: !3072)
!3076 = !DILocation(line: 690, column: 35, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3031, file: !433, line: 690, column: 25)
!3078 = !DILocation(line: 690, column: 30, scope: !3077)
!3079 = !DILocation(line: 690, column: 25, scope: !3031)
!3080 = !DILocation(line: 692, column: 21, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !433, line: 692, column: 21)
!3082 = distinct !DILexicalBlock(scope: !3031, file: !433, line: 692, column: 21)
!3083 = !DILocation(line: 692, column: 21, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !433, line: 692, column: 21)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !433, line: 692, column: 21)
!3086 = distinct !DILexicalBlock(scope: !3081, file: !433, line: 692, column: 21)
!3087 = !DILocation(line: 692, column: 21, scope: !3085)
!3088 = !DILocation(line: 692, column: 21, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !433, line: 692, column: 21)
!3090 = distinct !DILexicalBlock(scope: !3086, file: !433, line: 692, column: 21)
!3091 = !DILocation(line: 692, column: 21, scope: !3090)
!3092 = !DILocation(line: 692, column: 21, scope: !3086)
!3093 = !DILocation(line: 0, scope: !3031)
!3094 = !DILocation(line: 693, column: 21, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !433, line: 693, column: 21)
!3096 = distinct !DILexicalBlock(scope: !3031, file: !433, line: 693, column: 21)
!3097 = !DILocation(line: 693, column: 21, scope: !3096)
!3098 = !DILocation(line: 694, column: 25, scope: !3031)
!3099 = !DILocation(line: 676, column: 17, scope: !3032)
!3100 = distinct !{!3100, !3101, !3102}
!3101 = !DILocation(line: 676, column: 17, scope: !3033)
!3102 = !DILocation(line: 695, column: 19, scope: !3033)
!3103 = !DILocation(line: 409, column: 30, scope: !2818)
!3104 = !DILocation(line: 702, column: 34, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !2684, file: !433, line: 702, column: 11)
!3106 = !DILocation(line: 704, column: 14, scope: !3105)
!3107 = !DILocation(line: 705, column: 14, scope: !3105)
!3108 = !DILocation(line: 705, column: 35, scope: !3105)
!3109 = !DILocation(line: 705, column: 17, scope: !3105)
!3110 = !DILocation(line: 705, column: 47, scope: !3105)
!3111 = !DILocation(line: 705, column: 65, scope: !3105)
!3112 = !DILocation(line: 706, column: 11, scope: !3105)
!3113 = !DILocation(line: 702, column: 11, scope: !2684)
!3114 = !DILocation(line: 395, column: 15, scope: !2682)
!3115 = !DILocation(line: 709, column: 5, scope: !2684)
!3116 = !DILocation(line: 710, column: 7, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !2684, file: !433, line: 710, column: 7)
!3118 = !DILocation(line: 710, column: 7, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3117, file: !433, line: 710, column: 7)
!3120 = !DILocation(line: 710, column: 7, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !433, line: 710, column: 7)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !433, line: 710, column: 7)
!3123 = distinct !DILexicalBlock(scope: !3119, file: !433, line: 710, column: 7)
!3124 = !DILocation(line: 710, column: 7, scope: !3122)
!3125 = !DILocation(line: 710, column: 7, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !433, line: 710, column: 7)
!3127 = distinct !DILexicalBlock(scope: !3123, file: !433, line: 710, column: 7)
!3128 = !DILocation(line: 710, column: 7, scope: !3127)
!3129 = !DILocation(line: 710, column: 7, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !433, line: 710, column: 7)
!3131 = distinct !DILexicalBlock(scope: !3123, file: !433, line: 710, column: 7)
!3132 = !DILocation(line: 710, column: 7, scope: !3131)
!3133 = !DILocation(line: 710, column: 7, scope: !3123)
!3134 = !DILocation(line: 710, column: 7, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !433, line: 710, column: 7)
!3136 = distinct !DILexicalBlock(scope: !3117, file: !433, line: 710, column: 7)
!3137 = !DILocation(line: 710, column: 7, scope: !3136)
!3138 = !DILocation(line: 712, column: 5, scope: !2684)
!3139 = !DILocation(line: 713, column: 7, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !433, line: 713, column: 7)
!3141 = distinct !DILexicalBlock(scope: !2684, file: !433, line: 713, column: 7)
!3142 = !DILocation(line: 417, column: 21, scope: !2684)
!3143 = !DILocation(line: 713, column: 7, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !433, line: 713, column: 7)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !433, line: 713, column: 7)
!3146 = distinct !DILexicalBlock(scope: !3140, file: !433, line: 713, column: 7)
!3147 = !DILocation(line: 713, column: 7, scope: !3145)
!3148 = !DILocation(line: 713, column: 7, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !433, line: 713, column: 7)
!3150 = distinct !DILexicalBlock(scope: !3146, file: !433, line: 713, column: 7)
!3151 = !DILocation(line: 713, column: 7, scope: !3150)
!3152 = !DILocation(line: 713, column: 7, scope: !3146)
!3153 = !DILocation(line: 714, column: 7, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !433, line: 714, column: 7)
!3155 = distinct !DILexicalBlock(scope: !2684, file: !433, line: 714, column: 7)
!3156 = !DILocation(line: 714, column: 7, scope: !3155)
!3157 = !DILocation(line: 716, column: 11, scope: !2684)
!3158 = !DILocation(line: 718, column: 5, scope: !2685)
!3159 = !DILocation(line: 395, column: 82, scope: !2685)
!3160 = !DILocation(line: 395, column: 3, scope: !2685)
!3161 = distinct !{!3161, !2814, !3162, !687}
!3162 = !DILocation(line: 718, column: 5, scope: !2682)
!3163 = !DILocation(line: 720, column: 11, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !2651, file: !433, line: 720, column: 7)
!3165 = !DILocation(line: 720, column: 16, scope: !3164)
!3166 = !DILocation(line: 728, column: 51, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !2651, file: !433, line: 728, column: 7)
!3168 = !DILocation(line: 731, column: 11, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3167, file: !433, line: 730, column: 5)
!3170 = !DILocation(line: 732, column: 16, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3169, file: !433, line: 731, column: 11)
!3172 = !DILocation(line: 732, column: 9, scope: !3171)
!3173 = !DILocation(line: 736, column: 18, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3171, file: !433, line: 736, column: 16)
!3175 = !DILocation(line: 736, column: 29, scope: !3174)
!3176 = !DILocation(line: 745, column: 7, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !2651, file: !433, line: 745, column: 7)
!3178 = !DILocation(line: 745, column: 20, scope: !3177)
!3179 = !DILocation(line: 746, column: 12, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !433, line: 746, column: 5)
!3181 = distinct !DILexicalBlock(scope: !3177, file: !433, line: 746, column: 5)
!3182 = !DILocation(line: 746, column: 5, scope: !3181)
!3183 = !DILocation(line: 747, column: 7, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !433, line: 747, column: 7)
!3185 = distinct !DILexicalBlock(scope: !3180, file: !433, line: 747, column: 7)
!3186 = !DILocation(line: 747, column: 7, scope: !3185)
!3187 = !DILocation(line: 746, column: 39, scope: !3180)
!3188 = distinct !{!3188, !3182, !3189, !687}
!3189 = !DILocation(line: 747, column: 7, scope: !3181)
!3190 = !DILocation(line: 749, column: 11, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !2651, file: !433, line: 749, column: 7)
!3192 = !DILocation(line: 749, column: 7, scope: !2651)
!3193 = !DILocation(line: 750, column: 5, scope: !3191)
!3194 = !DILocation(line: 750, column: 17, scope: !3191)
!3195 = !DILocation(line: 756, column: 21, scope: !3022)
!3196 = !DILocation(line: 760, column: 42, scope: !2651)
!3197 = !DILocation(line: 758, column: 10, scope: !2651)
!3198 = !DILocation(line: 758, column: 3, scope: !2651)
!3199 = !DILocation(line: 762, column: 1, scope: !2651)
!3200 = !DISubprogram(name: "iswprint", scope: !1278, file: !1278, line: 120, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!3201 = distinct !DISubprogram(name: "quotearg_alloc", scope: !433, file: !433, line: 788, type: !3202, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3204)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!32, !42, !40, !2543}
!3204 = !{!3205, !3206, !3207}
!3205 = !DILocalVariable(name: "arg", arg: 1, scope: !3201, file: !433, line: 788, type: !42)
!3206 = !DILocalVariable(name: "argsize", arg: 2, scope: !3201, file: !433, line: 788, type: !40)
!3207 = !DILocalVariable(name: "o", arg: 3, scope: !3201, file: !433, line: 789, type: !2543)
!3208 = !DILocation(line: 0, scope: !3201)
!3209 = !DILocalVariable(name: "arg", arg: 1, scope: !3210, file: !433, line: 801, type: !42)
!3210 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !433, file: !433, line: 801, type: !3211, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3213)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!32, !42, !40, !562, !2543}
!3213 = !{!3209, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221}
!3214 = !DILocalVariable(name: "argsize", arg: 2, scope: !3210, file: !433, line: 801, type: !40)
!3215 = !DILocalVariable(name: "size", arg: 3, scope: !3210, file: !433, line: 801, type: !562)
!3216 = !DILocalVariable(name: "o", arg: 4, scope: !3210, file: !433, line: 802, type: !2543)
!3217 = !DILocalVariable(name: "p", scope: !3210, file: !433, line: 804, type: !2543)
!3218 = !DILocalVariable(name: "saved_errno", scope: !3210, file: !433, line: 805, type: !38)
!3219 = !DILocalVariable(name: "flags", scope: !3210, file: !433, line: 807, type: !38)
!3220 = !DILocalVariable(name: "bufsize", scope: !3210, file: !433, line: 808, type: !40)
!3221 = !DILocalVariable(name: "buf", scope: !3210, file: !433, line: 812, type: !32)
!3222 = !DILocation(line: 0, scope: !3210, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 791, column: 10, scope: !3201)
!3224 = !DILocation(line: 804, column: 37, scope: !3210, inlinedAt: !3223)
!3225 = !DILocation(line: 805, column: 21, scope: !3210, inlinedAt: !3223)
!3226 = !DILocation(line: 807, column: 18, scope: !3210, inlinedAt: !3223)
!3227 = !DILocation(line: 807, column: 24, scope: !3210, inlinedAt: !3223)
!3228 = !DILocation(line: 808, column: 72, scope: !3210, inlinedAt: !3223)
!3229 = !DILocation(line: 809, column: 53, scope: !3210, inlinedAt: !3223)
!3230 = !DILocation(line: 810, column: 49, scope: !3210, inlinedAt: !3223)
!3231 = !DILocation(line: 811, column: 49, scope: !3210, inlinedAt: !3223)
!3232 = !DILocation(line: 808, column: 20, scope: !3210, inlinedAt: !3223)
!3233 = !DILocation(line: 811, column: 62, scope: !3210, inlinedAt: !3223)
!3234 = !DILocation(line: 812, column: 15, scope: !3210, inlinedAt: !3223)
!3235 = !DILocation(line: 813, column: 60, scope: !3210, inlinedAt: !3223)
!3236 = !DILocation(line: 815, column: 32, scope: !3210, inlinedAt: !3223)
!3237 = !DILocation(line: 815, column: 47, scope: !3210, inlinedAt: !3223)
!3238 = !DILocation(line: 813, column: 3, scope: !3210, inlinedAt: !3223)
!3239 = !DILocation(line: 816, column: 9, scope: !3210, inlinedAt: !3223)
!3240 = !DILocation(line: 791, column: 3, scope: !3201)
!3241 = !DILocation(line: 0, scope: !3210)
!3242 = !DILocation(line: 804, column: 37, scope: !3210)
!3243 = !DILocation(line: 805, column: 21, scope: !3210)
!3244 = !DILocation(line: 807, column: 18, scope: !3210)
!3245 = !DILocation(line: 807, column: 27, scope: !3210)
!3246 = !DILocation(line: 807, column: 24, scope: !3210)
!3247 = !DILocation(line: 808, column: 72, scope: !3210)
!3248 = !DILocation(line: 809, column: 53, scope: !3210)
!3249 = !DILocation(line: 810, column: 49, scope: !3210)
!3250 = !DILocation(line: 811, column: 49, scope: !3210)
!3251 = !DILocation(line: 808, column: 20, scope: !3210)
!3252 = !DILocation(line: 811, column: 62, scope: !3210)
!3253 = !DILocation(line: 812, column: 15, scope: !3210)
!3254 = !DILocation(line: 813, column: 60, scope: !3210)
!3255 = !DILocation(line: 815, column: 32, scope: !3210)
!3256 = !DILocation(line: 815, column: 47, scope: !3210)
!3257 = !DILocation(line: 813, column: 3, scope: !3210)
!3258 = !DILocation(line: 816, column: 9, scope: !3210)
!3259 = !DILocation(line: 817, column: 7, scope: !3210)
!3260 = !DILocation(line: 818, column: 11, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3210, file: !433, line: 817, column: 7)
!3262 = !DILocation(line: 818, column: 5, scope: !3261)
!3263 = !DILocation(line: 819, column: 3, scope: !3210)
!3264 = distinct !DISubprogram(name: "quotearg_free", scope: !433, file: !433, line: 837, type: !134, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3265)
!3265 = !{!3266, !3267}
!3266 = !DILocalVariable(name: "sv", scope: !3264, file: !433, line: 839, type: !492)
!3267 = !DILocalVariable(name: "i", scope: !3268, file: !433, line: 840, type: !38)
!3268 = distinct !DILexicalBlock(scope: !3264, file: !433, line: 840, column: 3)
!3269 = !DILocation(line: 839, column: 24, scope: !3264)
!3270 = !DILocation(line: 0, scope: !3264)
!3271 = !DILocation(line: 0, scope: !3268)
!3272 = !DILocation(line: 840, column: 21, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3268, file: !433, line: 840, column: 3)
!3274 = !DILocation(line: 840, column: 3, scope: !3268)
!3275 = !DILocation(line: 842, column: 13, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3264, file: !433, line: 842, column: 7)
!3277 = !{!3278, !625, i64 8}
!3278 = !{!"slotvec", !913, i64 0, !625, i64 8}
!3279 = !DILocation(line: 842, column: 17, scope: !3276)
!3280 = !DILocation(line: 842, column: 7, scope: !3264)
!3281 = !DILocation(line: 841, column: 17, scope: !3273)
!3282 = !DILocation(line: 841, column: 5, scope: !3273)
!3283 = !DILocation(line: 840, column: 32, scope: !3273)
!3284 = distinct !{!3284, !3274, !3285, !687}
!3285 = !DILocation(line: 841, column: 20, scope: !3268)
!3286 = !DILocation(line: 844, column: 7, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3276, file: !433, line: 843, column: 5)
!3288 = !DILocation(line: 845, column: 21, scope: !3287)
!3289 = !{!3278, !913, i64 0}
!3290 = !DILocation(line: 846, column: 20, scope: !3287)
!3291 = !DILocation(line: 847, column: 5, scope: !3287)
!3292 = !DILocation(line: 848, column: 10, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3264, file: !433, line: 848, column: 7)
!3294 = !DILocation(line: 848, column: 7, scope: !3264)
!3295 = !DILocation(line: 850, column: 13, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3293, file: !433, line: 849, column: 5)
!3297 = !DILocation(line: 850, column: 7, scope: !3296)
!3298 = !DILocation(line: 851, column: 15, scope: !3296)
!3299 = !DILocation(line: 852, column: 5, scope: !3296)
!3300 = !DILocation(line: 853, column: 10, scope: !3264)
!3301 = !DILocation(line: 854, column: 1, scope: !3264)
!3302 = distinct !DISubprogram(name: "quotearg_n", scope: !433, file: !433, line: 919, type: !828, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3303)
!3303 = !{!3304, !3305}
!3304 = !DILocalVariable(name: "n", arg: 1, scope: !3302, file: !433, line: 919, type: !38)
!3305 = !DILocalVariable(name: "arg", arg: 2, scope: !3302, file: !433, line: 919, type: !42)
!3306 = !DILocation(line: 0, scope: !3302)
!3307 = !DILocation(line: 921, column: 10, scope: !3302)
!3308 = !DILocation(line: 921, column: 3, scope: !3302)
!3309 = distinct !DISubprogram(name: "quotearg_n_options", scope: !433, file: !433, line: 866, type: !3310, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3312)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!32, !38, !42, !40, !2543}
!3312 = !{!3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3323, !3324, !3326, !3327, !3328}
!3313 = !DILocalVariable(name: "n", arg: 1, scope: !3309, file: !433, line: 866, type: !38)
!3314 = !DILocalVariable(name: "arg", arg: 2, scope: !3309, file: !433, line: 866, type: !42)
!3315 = !DILocalVariable(name: "argsize", arg: 3, scope: !3309, file: !433, line: 866, type: !40)
!3316 = !DILocalVariable(name: "options", arg: 4, scope: !3309, file: !433, line: 867, type: !2543)
!3317 = !DILocalVariable(name: "saved_errno", scope: !3309, file: !433, line: 869, type: !38)
!3318 = !DILocalVariable(name: "sv", scope: !3309, file: !433, line: 871, type: !492)
!3319 = !DILocalVariable(name: "nslots_max", scope: !3309, file: !433, line: 873, type: !38)
!3320 = !DILocalVariable(name: "preallocated", scope: !3321, file: !433, line: 879, type: !35)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !433, line: 878, column: 5)
!3322 = distinct !DILexicalBlock(scope: !3309, file: !433, line: 877, column: 7)
!3323 = !DILocalVariable(name: "new_nslots", scope: !3321, file: !433, line: 880, type: !147)
!3324 = !DILocalVariable(name: "size", scope: !3325, file: !433, line: 891, type: !40)
!3325 = distinct !DILexicalBlock(scope: !3309, file: !433, line: 890, column: 3)
!3326 = !DILocalVariable(name: "val", scope: !3325, file: !433, line: 892, type: !32)
!3327 = !DILocalVariable(name: "flags", scope: !3325, file: !433, line: 894, type: !38)
!3328 = !DILocalVariable(name: "qsize", scope: !3325, file: !433, line: 895, type: !40)
!3329 = !DILocation(line: 0, scope: !3309)
!3330 = !DILocation(line: 869, column: 21, scope: !3309)
!3331 = !DILocation(line: 871, column: 24, scope: !3309)
!3332 = !DILocation(line: 874, column: 17, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3309, file: !433, line: 874, column: 7)
!3334 = !DILocation(line: 875, column: 5, scope: !3333)
!3335 = !DILocation(line: 877, column: 7, scope: !3322)
!3336 = !DILocation(line: 877, column: 14, scope: !3322)
!3337 = !DILocation(line: 877, column: 7, scope: !3309)
!3338 = !DILocation(line: 879, column: 31, scope: !3321)
!3339 = !DILocation(line: 0, scope: !3321)
!3340 = !DILocation(line: 880, column: 7, scope: !3321)
!3341 = !DILocation(line: 880, column: 26, scope: !3321)
!3342 = !DILocation(line: 880, column: 13, scope: !3321)
!3343 = !DILocation(line: 882, column: 31, scope: !3321)
!3344 = !DILocation(line: 883, column: 33, scope: !3321)
!3345 = !DILocation(line: 883, column: 42, scope: !3321)
!3346 = !DILocation(line: 883, column: 31, scope: !3321)
!3347 = !DILocation(line: 882, column: 22, scope: !3321)
!3348 = !DILocation(line: 882, column: 15, scope: !3321)
!3349 = !DILocation(line: 884, column: 11, scope: !3321)
!3350 = !DILocation(line: 885, column: 15, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3321, file: !433, line: 884, column: 11)
!3352 = !{i64 0, i64 8, !912, i64 8, i64 8, !624}
!3353 = !DILocation(line: 885, column: 9, scope: !3351)
!3354 = !DILocation(line: 886, column: 20, scope: !3321)
!3355 = !DILocation(line: 886, column: 18, scope: !3321)
!3356 = !DILocation(line: 886, column: 15, scope: !3321)
!3357 = !DILocation(line: 886, column: 32, scope: !3321)
!3358 = !DILocation(line: 886, column: 43, scope: !3321)
!3359 = !DILocation(line: 886, column: 53, scope: !3321)
!3360 = !DILocation(line: 0, scope: !2754, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 886, column: 7, scope: !3321)
!3362 = !DILocation(line: 59, column: 10, scope: !2754, inlinedAt: !3361)
!3363 = !DILocation(line: 887, column: 16, scope: !3321)
!3364 = !DILocation(line: 887, column: 14, scope: !3321)
!3365 = !DILocation(line: 888, column: 5, scope: !3322)
!3366 = !DILocation(line: 888, column: 5, scope: !3321)
!3367 = !DILocation(line: 891, column: 19, scope: !3325)
!3368 = !DILocation(line: 891, column: 25, scope: !3325)
!3369 = !DILocation(line: 0, scope: !3325)
!3370 = !DILocation(line: 892, column: 23, scope: !3325)
!3371 = !DILocation(line: 894, column: 26, scope: !3325)
!3372 = !DILocation(line: 894, column: 32, scope: !3325)
!3373 = !DILocation(line: 896, column: 55, scope: !3325)
!3374 = !DILocation(line: 897, column: 46, scope: !3325)
!3375 = !DILocation(line: 898, column: 55, scope: !3325)
!3376 = !DILocation(line: 899, column: 55, scope: !3325)
!3377 = !DILocation(line: 895, column: 20, scope: !3325)
!3378 = !DILocation(line: 901, column: 14, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3325, file: !433, line: 901, column: 9)
!3380 = !DILocation(line: 901, column: 9, scope: !3325)
!3381 = !DILocation(line: 903, column: 35, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3379, file: !433, line: 902, column: 7)
!3383 = !DILocation(line: 903, column: 20, scope: !3382)
!3384 = !DILocation(line: 904, column: 17, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3382, file: !433, line: 904, column: 13)
!3386 = !DILocation(line: 904, column: 13, scope: !3382)
!3387 = !DILocation(line: 905, column: 11, scope: !3385)
!3388 = !DILocation(line: 906, column: 27, scope: !3382)
!3389 = !DILocation(line: 906, column: 19, scope: !3382)
!3390 = !DILocation(line: 907, column: 69, scope: !3382)
!3391 = !DILocation(line: 909, column: 44, scope: !3382)
!3392 = !DILocation(line: 910, column: 44, scope: !3382)
!3393 = !DILocation(line: 907, column: 9, scope: !3382)
!3394 = !DILocation(line: 911, column: 7, scope: !3382)
!3395 = !DILocation(line: 913, column: 11, scope: !3325)
!3396 = !DILocation(line: 914, column: 5, scope: !3325)
!3397 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !433, file: !433, line: 925, type: !3398, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!32, !38, !42, !40}
!3400 = !{!3401, !3402, !3403}
!3401 = !DILocalVariable(name: "n", arg: 1, scope: !3397, file: !433, line: 925, type: !38)
!3402 = !DILocalVariable(name: "arg", arg: 2, scope: !3397, file: !433, line: 925, type: !42)
!3403 = !DILocalVariable(name: "argsize", arg: 3, scope: !3397, file: !433, line: 925, type: !40)
!3404 = !DILocation(line: 0, scope: !3397)
!3405 = !DILocation(line: 927, column: 10, scope: !3397)
!3406 = !DILocation(line: 927, column: 3, scope: !3397)
!3407 = distinct !DISubprogram(name: "quotearg", scope: !433, file: !433, line: 931, type: !832, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3408)
!3408 = !{!3409}
!3409 = !DILocalVariable(name: "arg", arg: 1, scope: !3407, file: !433, line: 931, type: !42)
!3410 = !DILocation(line: 0, scope: !3407)
!3411 = !DILocation(line: 0, scope: !3302, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 933, column: 10, scope: !3407)
!3413 = !DILocation(line: 921, column: 10, scope: !3302, inlinedAt: !3412)
!3414 = !DILocation(line: 933, column: 3, scope: !3407)
!3415 = distinct !DISubprogram(name: "quotearg_mem", scope: !433, file: !433, line: 937, type: !3416, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!32, !42, !40}
!3418 = !{!3419, !3420}
!3419 = !DILocalVariable(name: "arg", arg: 1, scope: !3415, file: !433, line: 937, type: !42)
!3420 = !DILocalVariable(name: "argsize", arg: 2, scope: !3415, file: !433, line: 937, type: !40)
!3421 = !DILocation(line: 0, scope: !3415)
!3422 = !DILocation(line: 0, scope: !3397, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 939, column: 10, scope: !3415)
!3424 = !DILocation(line: 927, column: 10, scope: !3397, inlinedAt: !3423)
!3425 = !DILocation(line: 939, column: 3, scope: !3415)
!3426 = distinct !DISubprogram(name: "quotearg_n_style", scope: !433, file: !433, line: 943, type: !3427, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!32, !38, !217, !42}
!3429 = !{!3430, !3431, !3432, !3433}
!3430 = !DILocalVariable(name: "n", arg: 1, scope: !3426, file: !433, line: 943, type: !38)
!3431 = !DILocalVariable(name: "s", arg: 2, scope: !3426, file: !433, line: 943, type: !217)
!3432 = !DILocalVariable(name: "arg", arg: 3, scope: !3426, file: !433, line: 943, type: !42)
!3433 = !DILocalVariable(name: "o", scope: !3426, file: !433, line: 945, type: !2544)
!3434 = !DILocation(line: 0, scope: !3426)
!3435 = !DILocation(line: 945, column: 3, scope: !3426)
!3436 = !DILocation(line: 945, column: 32, scope: !3426)
!3437 = !{!3438}
!3438 = distinct !{!3438, !3439, !"quoting_options_from_style: argument 0"}
!3439 = distinct !{!3439, !"quoting_options_from_style"}
!3440 = !DILocation(line: 945, column: 36, scope: !3426)
!3441 = !DILocalVariable(name: "style", arg: 1, scope: !3442, file: !433, line: 183, type: !217)
!3442 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !433, file: !433, line: 183, type: !3443, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3445)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!450, !217}
!3445 = !{!3441, !3446}
!3446 = !DILocalVariable(name: "o", scope: !3442, file: !433, line: 185, type: !450)
!3447 = !DILocation(line: 0, scope: !3442, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 945, column: 36, scope: !3426)
!3449 = !DILocation(line: 185, column: 26, scope: !3442, inlinedAt: !3448)
!3450 = !DILocation(line: 186, column: 13, scope: !3451, inlinedAt: !3448)
!3451 = distinct !DILexicalBlock(scope: !3442, file: !433, line: 186, column: 7)
!3452 = !DILocation(line: 186, column: 7, scope: !3442, inlinedAt: !3448)
!3453 = !DILocation(line: 187, column: 5, scope: !3451, inlinedAt: !3448)
!3454 = !DILocation(line: 188, column: 5, scope: !3442, inlinedAt: !3448)
!3455 = !DILocation(line: 188, column: 11, scope: !3442, inlinedAt: !3448)
!3456 = !DILocation(line: 946, column: 10, scope: !3426)
!3457 = !DILocation(line: 947, column: 1, scope: !3426)
!3458 = !DILocation(line: 946, column: 3, scope: !3426)
!3459 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !433, file: !433, line: 950, type: !3460, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3462)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!32, !38, !217, !42, !40}
!3462 = !{!3463, !3464, !3465, !3466, !3467}
!3463 = !DILocalVariable(name: "n", arg: 1, scope: !3459, file: !433, line: 950, type: !38)
!3464 = !DILocalVariable(name: "s", arg: 2, scope: !3459, file: !433, line: 950, type: !217)
!3465 = !DILocalVariable(name: "arg", arg: 3, scope: !3459, file: !433, line: 951, type: !42)
!3466 = !DILocalVariable(name: "argsize", arg: 4, scope: !3459, file: !433, line: 951, type: !40)
!3467 = !DILocalVariable(name: "o", scope: !3459, file: !433, line: 953, type: !2544)
!3468 = !DILocation(line: 0, scope: !3459)
!3469 = !DILocation(line: 953, column: 3, scope: !3459)
!3470 = !DILocation(line: 953, column: 32, scope: !3459)
!3471 = !{!3472}
!3472 = distinct !{!3472, !3473, !"quoting_options_from_style: argument 0"}
!3473 = distinct !{!3473, !"quoting_options_from_style"}
!3474 = !DILocation(line: 953, column: 36, scope: !3459)
!3475 = !DILocation(line: 0, scope: !3442, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 953, column: 36, scope: !3459)
!3477 = !DILocation(line: 185, column: 26, scope: !3442, inlinedAt: !3476)
!3478 = !DILocation(line: 186, column: 13, scope: !3451, inlinedAt: !3476)
!3479 = !DILocation(line: 186, column: 7, scope: !3442, inlinedAt: !3476)
!3480 = !DILocation(line: 187, column: 5, scope: !3451, inlinedAt: !3476)
!3481 = !DILocation(line: 188, column: 5, scope: !3442, inlinedAt: !3476)
!3482 = !DILocation(line: 188, column: 11, scope: !3442, inlinedAt: !3476)
!3483 = !DILocation(line: 954, column: 10, scope: !3459)
!3484 = !DILocation(line: 955, column: 1, scope: !3459)
!3485 = !DILocation(line: 954, column: 3, scope: !3459)
!3486 = distinct !DISubprogram(name: "quotearg_style", scope: !433, file: !433, line: 958, type: !3487, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!32, !217, !42}
!3489 = !{!3490, !3491}
!3490 = !DILocalVariable(name: "s", arg: 1, scope: !3486, file: !433, line: 958, type: !217)
!3491 = !DILocalVariable(name: "arg", arg: 2, scope: !3486, file: !433, line: 958, type: !42)
!3492 = !DILocation(line: 0, scope: !3486)
!3493 = !DILocation(line: 0, scope: !3426, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 960, column: 10, scope: !3486)
!3495 = !DILocation(line: 945, column: 3, scope: !3426, inlinedAt: !3494)
!3496 = !DILocation(line: 945, column: 32, scope: !3426, inlinedAt: !3494)
!3497 = !{!3498}
!3498 = distinct !{!3498, !3499, !"quoting_options_from_style: argument 0"}
!3499 = distinct !{!3499, !"quoting_options_from_style"}
!3500 = !DILocation(line: 945, column: 36, scope: !3426, inlinedAt: !3494)
!3501 = !DILocation(line: 0, scope: !3442, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 945, column: 36, scope: !3426, inlinedAt: !3494)
!3503 = !DILocation(line: 185, column: 26, scope: !3442, inlinedAt: !3502)
!3504 = !DILocation(line: 186, column: 13, scope: !3451, inlinedAt: !3502)
!3505 = !DILocation(line: 186, column: 7, scope: !3442, inlinedAt: !3502)
!3506 = !DILocation(line: 187, column: 5, scope: !3451, inlinedAt: !3502)
!3507 = !DILocation(line: 188, column: 5, scope: !3442, inlinedAt: !3502)
!3508 = !DILocation(line: 188, column: 11, scope: !3442, inlinedAt: !3502)
!3509 = !DILocation(line: 946, column: 10, scope: !3426, inlinedAt: !3494)
!3510 = !DILocation(line: 947, column: 1, scope: !3426, inlinedAt: !3494)
!3511 = !DILocation(line: 960, column: 3, scope: !3486)
!3512 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !433, file: !433, line: 964, type: !3513, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3515)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!32, !217, !42, !40}
!3515 = !{!3516, !3517, !3518}
!3516 = !DILocalVariable(name: "s", arg: 1, scope: !3512, file: !433, line: 964, type: !217)
!3517 = !DILocalVariable(name: "arg", arg: 2, scope: !3512, file: !433, line: 964, type: !42)
!3518 = !DILocalVariable(name: "argsize", arg: 3, scope: !3512, file: !433, line: 964, type: !40)
!3519 = !DILocation(line: 0, scope: !3512)
!3520 = !DILocation(line: 0, scope: !3459, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 966, column: 10, scope: !3512)
!3522 = !DILocation(line: 953, column: 3, scope: !3459, inlinedAt: !3521)
!3523 = !DILocation(line: 953, column: 32, scope: !3459, inlinedAt: !3521)
!3524 = !{!3525}
!3525 = distinct !{!3525, !3526, !"quoting_options_from_style: argument 0"}
!3526 = distinct !{!3526, !"quoting_options_from_style"}
!3527 = !DILocation(line: 953, column: 36, scope: !3459, inlinedAt: !3521)
!3528 = !DILocation(line: 0, scope: !3442, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 953, column: 36, scope: !3459, inlinedAt: !3521)
!3530 = !DILocation(line: 185, column: 26, scope: !3442, inlinedAt: !3529)
!3531 = !DILocation(line: 186, column: 13, scope: !3451, inlinedAt: !3529)
!3532 = !DILocation(line: 186, column: 7, scope: !3442, inlinedAt: !3529)
!3533 = !DILocation(line: 187, column: 5, scope: !3451, inlinedAt: !3529)
!3534 = !DILocation(line: 188, column: 5, scope: !3442, inlinedAt: !3529)
!3535 = !DILocation(line: 188, column: 11, scope: !3442, inlinedAt: !3529)
!3536 = !DILocation(line: 954, column: 10, scope: !3459, inlinedAt: !3521)
!3537 = !DILocation(line: 955, column: 1, scope: !3459, inlinedAt: !3521)
!3538 = !DILocation(line: 966, column: 3, scope: !3512)
!3539 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !433, file: !433, line: 970, type: !3540, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3542)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!32, !42, !40, !33}
!3542 = !{!3543, !3544, !3545, !3546}
!3543 = !DILocalVariable(name: "arg", arg: 1, scope: !3539, file: !433, line: 970, type: !42)
!3544 = !DILocalVariable(name: "argsize", arg: 2, scope: !3539, file: !433, line: 970, type: !40)
!3545 = !DILocalVariable(name: "ch", arg: 3, scope: !3539, file: !433, line: 970, type: !33)
!3546 = !DILocalVariable(name: "options", scope: !3539, file: !433, line: 972, type: !450)
!3547 = !DILocation(line: 0, scope: !3539)
!3548 = !DILocation(line: 972, column: 3, scope: !3539)
!3549 = !DILocation(line: 972, column: 26, scope: !3539)
!3550 = !DILocation(line: 973, column: 13, scope: !3539)
!3551 = !{i64 0, i64 4, !729, i64 4, i64 4, !720, i64 8, i64 32, !729, i64 40, i64 8, !624, i64 48, i64 8, !624}
!3552 = !DILocation(line: 0, scope: !2564, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 974, column: 3, scope: !3539)
!3554 = !DILocation(line: 147, column: 62, scope: !2564, inlinedAt: !3553)
!3555 = !DILocation(line: 147, column: 57, scope: !2564, inlinedAt: !3553)
!3556 = !DILocation(line: 148, column: 15, scope: !2564, inlinedAt: !3553)
!3557 = !DILocation(line: 149, column: 21, scope: !2564, inlinedAt: !3553)
!3558 = !DILocation(line: 149, column: 24, scope: !2564, inlinedAt: !3553)
!3559 = !DILocation(line: 149, column: 34, scope: !2564, inlinedAt: !3553)
!3560 = !DILocation(line: 150, column: 19, scope: !2564, inlinedAt: !3553)
!3561 = !DILocation(line: 150, column: 24, scope: !2564, inlinedAt: !3553)
!3562 = !DILocation(line: 150, column: 6, scope: !2564, inlinedAt: !3553)
!3563 = !DILocation(line: 975, column: 10, scope: !3539)
!3564 = !DILocation(line: 976, column: 1, scope: !3539)
!3565 = !DILocation(line: 975, column: 3, scope: !3539)
!3566 = distinct !DISubprogram(name: "quotearg_char", scope: !433, file: !433, line: 979, type: !3567, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3569)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!32, !42, !33}
!3569 = !{!3570, !3571}
!3570 = !DILocalVariable(name: "arg", arg: 1, scope: !3566, file: !433, line: 979, type: !42)
!3571 = !DILocalVariable(name: "ch", arg: 2, scope: !3566, file: !433, line: 979, type: !33)
!3572 = !DILocation(line: 0, scope: !3566)
!3573 = !DILocation(line: 0, scope: !3539, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 981, column: 10, scope: !3566)
!3575 = !DILocation(line: 972, column: 3, scope: !3539, inlinedAt: !3574)
!3576 = !DILocation(line: 972, column: 26, scope: !3539, inlinedAt: !3574)
!3577 = !DILocation(line: 973, column: 13, scope: !3539, inlinedAt: !3574)
!3578 = !DILocation(line: 0, scope: !2564, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 974, column: 3, scope: !3539, inlinedAt: !3574)
!3580 = !DILocation(line: 147, column: 62, scope: !2564, inlinedAt: !3579)
!3581 = !DILocation(line: 147, column: 57, scope: !2564, inlinedAt: !3579)
!3582 = !DILocation(line: 148, column: 15, scope: !2564, inlinedAt: !3579)
!3583 = !DILocation(line: 149, column: 21, scope: !2564, inlinedAt: !3579)
!3584 = !DILocation(line: 149, column: 24, scope: !2564, inlinedAt: !3579)
!3585 = !DILocation(line: 149, column: 34, scope: !2564, inlinedAt: !3579)
!3586 = !DILocation(line: 150, column: 19, scope: !2564, inlinedAt: !3579)
!3587 = !DILocation(line: 150, column: 24, scope: !2564, inlinedAt: !3579)
!3588 = !DILocation(line: 150, column: 6, scope: !2564, inlinedAt: !3579)
!3589 = !DILocation(line: 975, column: 10, scope: !3539, inlinedAt: !3574)
!3590 = !DILocation(line: 976, column: 1, scope: !3539, inlinedAt: !3574)
!3591 = !DILocation(line: 981, column: 3, scope: !3566)
!3592 = distinct !DISubprogram(name: "quotearg_colon", scope: !433, file: !433, line: 985, type: !832, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3593)
!3593 = !{!3594}
!3594 = !DILocalVariable(name: "arg", arg: 1, scope: !3592, file: !433, line: 985, type: !42)
!3595 = !DILocation(line: 0, scope: !3592)
!3596 = !DILocation(line: 0, scope: !3566, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 987, column: 10, scope: !3592)
!3598 = !DILocation(line: 0, scope: !3539, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 981, column: 10, scope: !3566, inlinedAt: !3597)
!3600 = !DILocation(line: 972, column: 3, scope: !3539, inlinedAt: !3599)
!3601 = !DILocation(line: 972, column: 26, scope: !3539, inlinedAt: !3599)
!3602 = !DILocation(line: 973, column: 13, scope: !3539, inlinedAt: !3599)
!3603 = !DILocation(line: 0, scope: !2564, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 974, column: 3, scope: !3539, inlinedAt: !3599)
!3605 = !DILocation(line: 147, column: 57, scope: !2564, inlinedAt: !3604)
!3606 = !DILocation(line: 149, column: 21, scope: !2564, inlinedAt: !3604)
!3607 = !DILocation(line: 150, column: 6, scope: !2564, inlinedAt: !3604)
!3608 = !DILocation(line: 975, column: 10, scope: !3539, inlinedAt: !3599)
!3609 = !DILocation(line: 976, column: 1, scope: !3539, inlinedAt: !3599)
!3610 = !DILocation(line: 987, column: 3, scope: !3592)
!3611 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !433, file: !433, line: 991, type: !3416, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3612)
!3612 = !{!3613, !3614}
!3613 = !DILocalVariable(name: "arg", arg: 1, scope: !3611, file: !433, line: 991, type: !42)
!3614 = !DILocalVariable(name: "argsize", arg: 2, scope: !3611, file: !433, line: 991, type: !40)
!3615 = !DILocation(line: 0, scope: !3611)
!3616 = !DILocation(line: 0, scope: !3539, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 993, column: 10, scope: !3611)
!3618 = !DILocation(line: 972, column: 3, scope: !3539, inlinedAt: !3617)
!3619 = !DILocation(line: 972, column: 26, scope: !3539, inlinedAt: !3617)
!3620 = !DILocation(line: 973, column: 13, scope: !3539, inlinedAt: !3617)
!3621 = !DILocation(line: 0, scope: !2564, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 974, column: 3, scope: !3539, inlinedAt: !3617)
!3623 = !DILocation(line: 147, column: 57, scope: !2564, inlinedAt: !3622)
!3624 = !DILocation(line: 149, column: 21, scope: !2564, inlinedAt: !3622)
!3625 = !DILocation(line: 150, column: 6, scope: !2564, inlinedAt: !3622)
!3626 = !DILocation(line: 975, column: 10, scope: !3539, inlinedAt: !3617)
!3627 = !DILocation(line: 976, column: 1, scope: !3539, inlinedAt: !3617)
!3628 = !DILocation(line: 993, column: 3, scope: !3611)
!3629 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !433, file: !433, line: 997, type: !3427, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3630)
!3630 = !{!3631, !3632, !3633, !3634}
!3631 = !DILocalVariable(name: "n", arg: 1, scope: !3629, file: !433, line: 997, type: !38)
!3632 = !DILocalVariable(name: "s", arg: 2, scope: !3629, file: !433, line: 997, type: !217)
!3633 = !DILocalVariable(name: "arg", arg: 3, scope: !3629, file: !433, line: 997, type: !42)
!3634 = !DILocalVariable(name: "options", scope: !3629, file: !433, line: 999, type: !450)
!3635 = !DILocation(line: 0, scope: !3629)
!3636 = !DILocation(line: 999, column: 3, scope: !3629)
!3637 = !DILocation(line: 999, column: 26, scope: !3629)
!3638 = !DILocation(line: 0, scope: !3442, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 1000, column: 13, scope: !3629)
!3640 = !DILocation(line: 186, column: 13, scope: !3451, inlinedAt: !3639)
!3641 = !DILocation(line: 186, column: 7, scope: !3442, inlinedAt: !3639)
!3642 = !DILocation(line: 187, column: 5, scope: !3451, inlinedAt: !3639)
!3643 = !{!3644}
!3644 = distinct !{!3644, !3645, !"quoting_options_from_style: argument 0"}
!3645 = distinct !{!3645, !"quoting_options_from_style"}
!3646 = !DILocation(line: 1000, column: 13, scope: !3629)
!3647 = !DILocation(line: 0, scope: !2564, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 1001, column: 3, scope: !3629)
!3649 = !DILocation(line: 147, column: 57, scope: !2564, inlinedAt: !3648)
!3650 = !DILocation(line: 149, column: 21, scope: !2564, inlinedAt: !3648)
!3651 = !DILocation(line: 150, column: 6, scope: !2564, inlinedAt: !3648)
!3652 = !DILocation(line: 1002, column: 10, scope: !3629)
!3653 = !DILocation(line: 1003, column: 1, scope: !3629)
!3654 = !DILocation(line: 1002, column: 3, scope: !3629)
!3655 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !433, file: !433, line: 1006, type: !3656, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3658)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!32, !38, !42, !42, !42}
!3658 = !{!3659, !3660, !3661, !3662}
!3659 = !DILocalVariable(name: "n", arg: 1, scope: !3655, file: !433, line: 1006, type: !38)
!3660 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3655, file: !433, line: 1006, type: !42)
!3661 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3655, file: !433, line: 1007, type: !42)
!3662 = !DILocalVariable(name: "arg", arg: 4, scope: !3655, file: !433, line: 1007, type: !42)
!3663 = !DILocation(line: 0, scope: !3655)
!3664 = !DILocalVariable(name: "n", arg: 1, scope: !3665, file: !433, line: 1014, type: !38)
!3665 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !433, file: !433, line: 1014, type: !3666, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3668)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!32, !38, !42, !42, !42, !40}
!3668 = !{!3664, !3669, !3670, !3671, !3672, !3673}
!3669 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3665, file: !433, line: 1014, type: !42)
!3670 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3665, file: !433, line: 1015, type: !42)
!3671 = !DILocalVariable(name: "arg", arg: 4, scope: !3665, file: !433, line: 1016, type: !42)
!3672 = !DILocalVariable(name: "argsize", arg: 5, scope: !3665, file: !433, line: 1016, type: !40)
!3673 = !DILocalVariable(name: "o", scope: !3665, file: !433, line: 1018, type: !450)
!3674 = !DILocation(line: 0, scope: !3665, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 1009, column: 10, scope: !3655)
!3676 = !DILocation(line: 1018, column: 3, scope: !3665, inlinedAt: !3675)
!3677 = !DILocation(line: 1018, column: 26, scope: !3665, inlinedAt: !3675)
!3678 = !DILocation(line: 1018, column: 30, scope: !3665, inlinedAt: !3675)
!3679 = !DILocation(line: 0, scope: !2604, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 1019, column: 3, scope: !3665, inlinedAt: !3675)
!3681 = !DILocation(line: 174, column: 6, scope: !2604, inlinedAt: !3680)
!3682 = !DILocation(line: 174, column: 12, scope: !2604, inlinedAt: !3680)
!3683 = !DILocation(line: 175, column: 8, scope: !2618, inlinedAt: !3680)
!3684 = !DILocation(line: 175, column: 19, scope: !2618, inlinedAt: !3680)
!3685 = !DILocation(line: 176, column: 5, scope: !2618, inlinedAt: !3680)
!3686 = !DILocation(line: 177, column: 6, scope: !2604, inlinedAt: !3680)
!3687 = !DILocation(line: 177, column: 17, scope: !2604, inlinedAt: !3680)
!3688 = !DILocation(line: 178, column: 6, scope: !2604, inlinedAt: !3680)
!3689 = !DILocation(line: 178, column: 18, scope: !2604, inlinedAt: !3680)
!3690 = !DILocation(line: 1020, column: 10, scope: !3665, inlinedAt: !3675)
!3691 = !DILocation(line: 1021, column: 1, scope: !3665, inlinedAt: !3675)
!3692 = !DILocation(line: 1009, column: 3, scope: !3655)
!3693 = !DILocation(line: 0, scope: !3665)
!3694 = !DILocation(line: 1018, column: 3, scope: !3665)
!3695 = !DILocation(line: 1018, column: 26, scope: !3665)
!3696 = !DILocation(line: 1018, column: 30, scope: !3665)
!3697 = !DILocation(line: 0, scope: !2604, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 1019, column: 3, scope: !3665)
!3699 = !DILocation(line: 174, column: 6, scope: !2604, inlinedAt: !3698)
!3700 = !DILocation(line: 174, column: 12, scope: !2604, inlinedAt: !3698)
!3701 = !DILocation(line: 175, column: 8, scope: !2618, inlinedAt: !3698)
!3702 = !DILocation(line: 175, column: 19, scope: !2618, inlinedAt: !3698)
!3703 = !DILocation(line: 176, column: 5, scope: !2618, inlinedAt: !3698)
!3704 = !DILocation(line: 177, column: 6, scope: !2604, inlinedAt: !3698)
!3705 = !DILocation(line: 177, column: 17, scope: !2604, inlinedAt: !3698)
!3706 = !DILocation(line: 178, column: 6, scope: !2604, inlinedAt: !3698)
!3707 = !DILocation(line: 178, column: 18, scope: !2604, inlinedAt: !3698)
!3708 = !DILocation(line: 1020, column: 10, scope: !3665)
!3709 = !DILocation(line: 1021, column: 1, scope: !3665)
!3710 = !DILocation(line: 1020, column: 3, scope: !3665)
!3711 = distinct !DISubprogram(name: "quotearg_custom", scope: !433, file: !433, line: 1024, type: !3712, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!32, !42, !42, !42}
!3714 = !{!3715, !3716, !3717}
!3715 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3711, file: !433, line: 1024, type: !42)
!3716 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3711, file: !433, line: 1024, type: !42)
!3717 = !DILocalVariable(name: "arg", arg: 3, scope: !3711, file: !433, line: 1025, type: !42)
!3718 = !DILocation(line: 0, scope: !3711)
!3719 = !DILocation(line: 0, scope: !3655, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 1027, column: 10, scope: !3711)
!3721 = !DILocation(line: 0, scope: !3665, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 1009, column: 10, scope: !3655, inlinedAt: !3720)
!3723 = !DILocation(line: 1018, column: 3, scope: !3665, inlinedAt: !3722)
!3724 = !DILocation(line: 1018, column: 26, scope: !3665, inlinedAt: !3722)
!3725 = !DILocation(line: 1018, column: 30, scope: !3665, inlinedAt: !3722)
!3726 = !DILocation(line: 0, scope: !2604, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 1019, column: 3, scope: !3665, inlinedAt: !3722)
!3728 = !DILocation(line: 174, column: 6, scope: !2604, inlinedAt: !3727)
!3729 = !DILocation(line: 174, column: 12, scope: !2604, inlinedAt: !3727)
!3730 = !DILocation(line: 175, column: 8, scope: !2618, inlinedAt: !3727)
!3731 = !DILocation(line: 175, column: 19, scope: !2618, inlinedAt: !3727)
!3732 = !DILocation(line: 176, column: 5, scope: !2618, inlinedAt: !3727)
!3733 = !DILocation(line: 177, column: 6, scope: !2604, inlinedAt: !3727)
!3734 = !DILocation(line: 177, column: 17, scope: !2604, inlinedAt: !3727)
!3735 = !DILocation(line: 178, column: 6, scope: !2604, inlinedAt: !3727)
!3736 = !DILocation(line: 178, column: 18, scope: !2604, inlinedAt: !3727)
!3737 = !DILocation(line: 1020, column: 10, scope: !3665, inlinedAt: !3722)
!3738 = !DILocation(line: 1021, column: 1, scope: !3665, inlinedAt: !3722)
!3739 = !DILocation(line: 1027, column: 3, scope: !3711)
!3740 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !433, file: !433, line: 1031, type: !3741, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!32, !42, !42, !42, !40}
!3743 = !{!3744, !3745, !3746, !3747}
!3744 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3740, file: !433, line: 1031, type: !42)
!3745 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3740, file: !433, line: 1031, type: !42)
!3746 = !DILocalVariable(name: "arg", arg: 3, scope: !3740, file: !433, line: 1032, type: !42)
!3747 = !DILocalVariable(name: "argsize", arg: 4, scope: !3740, file: !433, line: 1032, type: !40)
!3748 = !DILocation(line: 0, scope: !3740)
!3749 = !DILocation(line: 0, scope: !3665, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 1034, column: 10, scope: !3740)
!3751 = !DILocation(line: 1018, column: 3, scope: !3665, inlinedAt: !3750)
!3752 = !DILocation(line: 1018, column: 26, scope: !3665, inlinedAt: !3750)
!3753 = !DILocation(line: 1018, column: 30, scope: !3665, inlinedAt: !3750)
!3754 = !DILocation(line: 0, scope: !2604, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 1019, column: 3, scope: !3665, inlinedAt: !3750)
!3756 = !DILocation(line: 174, column: 6, scope: !2604, inlinedAt: !3755)
!3757 = !DILocation(line: 174, column: 12, scope: !2604, inlinedAt: !3755)
!3758 = !DILocation(line: 175, column: 8, scope: !2618, inlinedAt: !3755)
!3759 = !DILocation(line: 175, column: 19, scope: !2618, inlinedAt: !3755)
!3760 = !DILocation(line: 176, column: 5, scope: !2618, inlinedAt: !3755)
!3761 = !DILocation(line: 177, column: 6, scope: !2604, inlinedAt: !3755)
!3762 = !DILocation(line: 177, column: 17, scope: !2604, inlinedAt: !3755)
!3763 = !DILocation(line: 178, column: 6, scope: !2604, inlinedAt: !3755)
!3764 = !DILocation(line: 178, column: 18, scope: !2604, inlinedAt: !3755)
!3765 = !DILocation(line: 1020, column: 10, scope: !3665, inlinedAt: !3750)
!3766 = !DILocation(line: 1021, column: 1, scope: !3665, inlinedAt: !3750)
!3767 = !DILocation(line: 1034, column: 3, scope: !3740)
!3768 = distinct !DISubprogram(name: "quote_n_mem", scope: !433, file: !433, line: 1049, type: !3769, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!42, !38, !42, !40}
!3771 = !{!3772, !3773, !3774}
!3772 = !DILocalVariable(name: "n", arg: 1, scope: !3768, file: !433, line: 1049, type: !38)
!3773 = !DILocalVariable(name: "arg", arg: 2, scope: !3768, file: !433, line: 1049, type: !42)
!3774 = !DILocalVariable(name: "argsize", arg: 3, scope: !3768, file: !433, line: 1049, type: !40)
!3775 = !DILocation(line: 0, scope: !3768)
!3776 = !DILocation(line: 1051, column: 10, scope: !3768)
!3777 = !DILocation(line: 1051, column: 3, scope: !3768)
!3778 = distinct !DISubprogram(name: "quote_mem", scope: !433, file: !433, line: 1055, type: !3779, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3781)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!42, !42, !40}
!3781 = !{!3782, !3783}
!3782 = !DILocalVariable(name: "arg", arg: 1, scope: !3778, file: !433, line: 1055, type: !42)
!3783 = !DILocalVariable(name: "argsize", arg: 2, scope: !3778, file: !433, line: 1055, type: !40)
!3784 = !DILocation(line: 0, scope: !3778)
!3785 = !DILocation(line: 0, scope: !3768, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 1057, column: 10, scope: !3778)
!3787 = !DILocation(line: 1051, column: 10, scope: !3768, inlinedAt: !3786)
!3788 = !DILocation(line: 1057, column: 3, scope: !3778)
!3789 = distinct !DISubprogram(name: "quote_n", scope: !433, file: !433, line: 1061, type: !3790, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3792)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!42, !38, !42}
!3792 = !{!3793, !3794}
!3793 = !DILocalVariable(name: "n", arg: 1, scope: !3789, file: !433, line: 1061, type: !38)
!3794 = !DILocalVariable(name: "arg", arg: 2, scope: !3789, file: !433, line: 1061, type: !42)
!3795 = !DILocation(line: 0, scope: !3789)
!3796 = !DILocation(line: 0, scope: !3768, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 1063, column: 10, scope: !3789)
!3798 = !DILocation(line: 1051, column: 10, scope: !3768, inlinedAt: !3797)
!3799 = !DILocation(line: 1063, column: 3, scope: !3789)
!3800 = distinct !DISubprogram(name: "quote", scope: !433, file: !433, line: 1067, type: !3801, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !3803)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!42, !42}
!3803 = !{!3804}
!3804 = !DILocalVariable(name: "arg", arg: 1, scope: !3800, file: !433, line: 1067, type: !42)
!3805 = !DILocation(line: 0, scope: !3800)
!3806 = !DILocation(line: 0, scope: !3789, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 1069, column: 10, scope: !3800)
!3808 = !DILocation(line: 0, scope: !3768, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 1063, column: 10, scope: !3789, inlinedAt: !3807)
!3810 = !DILocation(line: 1051, column: 10, scope: !3768, inlinedAt: !3809)
!3811 = !DILocation(line: 1069, column: 3, scope: !3800)
!3812 = distinct !DISubprogram(name: "version_etc_arn", scope: !550, file: !550, line: 61, type: !3813, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3850)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{null, !3815, !42, !42, !42, !3849, !40}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !3817)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !3818)
!3818 = !{!3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3817, file: !75, line: 51, baseType: !38, size: 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3817, file: !75, line: 54, baseType: !32, size: 64, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3817, file: !75, line: 55, baseType: !32, size: 64, offset: 128)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3817, file: !75, line: 56, baseType: !32, size: 64, offset: 192)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3817, file: !75, line: 57, baseType: !32, size: 64, offset: 256)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3817, file: !75, line: 58, baseType: !32, size: 64, offset: 320)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3817, file: !75, line: 59, baseType: !32, size: 64, offset: 384)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3817, file: !75, line: 60, baseType: !32, size: 64, offset: 448)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3817, file: !75, line: 61, baseType: !32, size: 64, offset: 512)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3817, file: !75, line: 64, baseType: !32, size: 64, offset: 576)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3817, file: !75, line: 65, baseType: !32, size: 64, offset: 640)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3817, file: !75, line: 66, baseType: !32, size: 64, offset: 704)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3817, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3817, file: !75, line: 70, baseType: !3833, size: 64, offset: 832)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3817, file: !75, line: 72, baseType: !38, size: 32, offset: 896)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3817, file: !75, line: 73, baseType: !38, size: 32, offset: 928)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3817, file: !75, line: 74, baseType: !97, size: 64, offset: 960)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3817, file: !75, line: 77, baseType: !39, size: 16, offset: 1024)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3817, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3817, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3817, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3817, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3817, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3817, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3817, file: !75, line: 93, baseType: !3833, size: 64, offset: 1344)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3817, file: !75, line: 94, baseType: !34, size: 64, offset: 1408)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3817, file: !75, line: 95, baseType: !40, size: 64, offset: 1472)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3817, file: !75, line: 96, baseType: !38, size: 32, offset: 1536)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3817, file: !75, line: 98, baseType: !122, size: 160, offset: 1568)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!3850 = !{!3851, !3852, !3853, !3854, !3855, !3856}
!3851 = !DILocalVariable(name: "stream", arg: 1, scope: !3812, file: !550, line: 61, type: !3815)
!3852 = !DILocalVariable(name: "command_name", arg: 2, scope: !3812, file: !550, line: 62, type: !42)
!3853 = !DILocalVariable(name: "package", arg: 3, scope: !3812, file: !550, line: 62, type: !42)
!3854 = !DILocalVariable(name: "version", arg: 4, scope: !3812, file: !550, line: 63, type: !42)
!3855 = !DILocalVariable(name: "authors", arg: 5, scope: !3812, file: !550, line: 64, type: !3849)
!3856 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3812, file: !550, line: 64, type: !40)
!3857 = !DILocation(line: 0, scope: !3812)
!3858 = !DILocation(line: 66, column: 7, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3812, file: !550, line: 66, column: 7)
!3860 = !DILocation(line: 66, column: 7, scope: !3812)
!3861 = !DILocation(line: 67, column: 5, scope: !3859)
!3862 = !DILocation(line: 69, column: 5, scope: !3859)
!3863 = !DILocation(line: 83, column: 3, scope: !3812)
!3864 = !DILocation(line: 85, column: 3, scope: !3812)
!3865 = !DILocation(line: 88, column: 3, scope: !3812)
!3866 = !DILocation(line: 95, column: 3, scope: !3812)
!3867 = !DILocation(line: 97, column: 3, scope: !3812)
!3868 = !DILocation(line: 105, column: 7, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3812, file: !550, line: 98, column: 5)
!3870 = !DILocation(line: 106, column: 7, scope: !3869)
!3871 = !DILocation(line: 109, column: 7, scope: !3869)
!3872 = !DILocation(line: 110, column: 7, scope: !3869)
!3873 = !DILocation(line: 113, column: 7, scope: !3869)
!3874 = !DILocation(line: 115, column: 7, scope: !3869)
!3875 = !DILocation(line: 120, column: 7, scope: !3869)
!3876 = !DILocation(line: 122, column: 7, scope: !3869)
!3877 = !DILocation(line: 127, column: 7, scope: !3869)
!3878 = !DILocation(line: 129, column: 7, scope: !3869)
!3879 = !DILocation(line: 134, column: 7, scope: !3869)
!3880 = !DILocation(line: 137, column: 7, scope: !3869)
!3881 = !DILocation(line: 142, column: 7, scope: !3869)
!3882 = !DILocation(line: 145, column: 7, scope: !3869)
!3883 = !DILocation(line: 150, column: 7, scope: !3869)
!3884 = !DILocation(line: 154, column: 7, scope: !3869)
!3885 = !DILocation(line: 159, column: 7, scope: !3869)
!3886 = !DILocation(line: 163, column: 7, scope: !3869)
!3887 = !DILocation(line: 170, column: 7, scope: !3869)
!3888 = !DILocation(line: 174, column: 7, scope: !3869)
!3889 = !DILocation(line: 176, column: 1, scope: !3812)
!3890 = distinct !DISubprogram(name: "version_etc_ar", scope: !550, file: !550, line: 183, type: !3891, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3893)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{null, !3815, !42, !42, !42, !3849}
!3893 = !{!3894, !3895, !3896, !3897, !3898, !3899}
!3894 = !DILocalVariable(name: "stream", arg: 1, scope: !3890, file: !550, line: 183, type: !3815)
!3895 = !DILocalVariable(name: "command_name", arg: 2, scope: !3890, file: !550, line: 184, type: !42)
!3896 = !DILocalVariable(name: "package", arg: 3, scope: !3890, file: !550, line: 184, type: !42)
!3897 = !DILocalVariable(name: "version", arg: 4, scope: !3890, file: !550, line: 185, type: !42)
!3898 = !DILocalVariable(name: "authors", arg: 5, scope: !3890, file: !550, line: 185, type: !3849)
!3899 = !DILocalVariable(name: "n_authors", scope: !3890, file: !550, line: 187, type: !40)
!3900 = !DILocation(line: 0, scope: !3890)
!3901 = !DILocation(line: 189, column: 8, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3890, file: !550, line: 189, column: 3)
!3903 = !DILocation(line: 0, scope: !3902)
!3904 = !DILocation(line: 189, column: 23, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3902, file: !550, line: 189, column: 3)
!3906 = !DILocation(line: 189, column: 3, scope: !3902)
!3907 = !DILocation(line: 189, column: 52, scope: !3905)
!3908 = distinct !{!3908, !3906, !3909, !687}
!3909 = !DILocation(line: 190, column: 5, scope: !3902)
!3910 = !DILocation(line: 191, column: 3, scope: !3890)
!3911 = !DILocation(line: 192, column: 1, scope: !3890)
!3912 = distinct !DISubprogram(name: "version_etc_va", scope: !550, file: !550, line: 199, type: !3913, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3926)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{null, !3815, !42, !42, !42, !3915}
!3915 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !367, line: 52, baseType: !3916)
!3916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !369, line: 32, baseType: !3917)
!3917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3918, baseType: !3919)
!3918 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !373, size: 256, elements: !3920)
!3920 = !{!3921, !3922, !3923, !3924, !3925}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3919, file: !3918, line: 192, baseType: !34, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3919, file: !3918, line: 192, baseType: !34, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3919, file: !3918, line: 192, baseType: !34, size: 64, offset: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3919, file: !3918, line: 192, baseType: !38, size: 32, offset: 192)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3919, file: !3918, line: 192, baseType: !38, size: 32, offset: 224)
!3926 = !{!3927, !3928, !3929, !3930, !3931, !3932, !3933}
!3927 = !DILocalVariable(name: "stream", arg: 1, scope: !3912, file: !550, line: 199, type: !3815)
!3928 = !DILocalVariable(name: "command_name", arg: 2, scope: !3912, file: !550, line: 200, type: !42)
!3929 = !DILocalVariable(name: "package", arg: 3, scope: !3912, file: !550, line: 200, type: !42)
!3930 = !DILocalVariable(name: "version", arg: 4, scope: !3912, file: !550, line: 201, type: !42)
!3931 = !DILocalVariable(name: "authors", arg: 5, scope: !3912, file: !550, line: 201, type: !3915)
!3932 = !DILocalVariable(name: "n_authors", scope: !3912, file: !550, line: 203, type: !40)
!3933 = !DILocalVariable(name: "authtab", scope: !3912, file: !550, line: 204, type: !3934)
!3934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 640, elements: !446)
!3935 = !DILocation(line: 0, scope: !3912)
!3936 = !DILocation(line: 201, column: 46, scope: !3912)
!3937 = !DILocation(line: 204, column: 3, scope: !3912)
!3938 = !DILocation(line: 204, column: 15, scope: !3912)
!3939 = !DILocation(line: 208, column: 35, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3941, file: !550, line: 206, column: 3)
!3941 = distinct !DILexicalBlock(scope: !3912, file: !550, line: 206, column: 3)
!3942 = !DILocation(line: 208, column: 14, scope: !3940)
!3943 = !DILocation(line: 208, column: 33, scope: !3940)
!3944 = !DILocation(line: 208, column: 67, scope: !3940)
!3945 = !DILocation(line: 206, column: 3, scope: !3941)
!3946 = !DILocation(line: 0, scope: !3941)
!3947 = !DILocation(line: 211, column: 3, scope: !3912)
!3948 = !DILocation(line: 213, column: 1, scope: !3912)
!3949 = distinct !DISubprogram(name: "version_etc", scope: !550, file: !550, line: 230, type: !3950, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3952)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{null, !3815, !42, !42, !42, null}
!3952 = !{!3953, !3954, !3955, !3956, !3957}
!3953 = !DILocalVariable(name: "stream", arg: 1, scope: !3949, file: !550, line: 230, type: !3815)
!3954 = !DILocalVariable(name: "command_name", arg: 2, scope: !3949, file: !550, line: 231, type: !42)
!3955 = !DILocalVariable(name: "package", arg: 3, scope: !3949, file: !550, line: 231, type: !42)
!3956 = !DILocalVariable(name: "version", arg: 4, scope: !3949, file: !550, line: 232, type: !42)
!3957 = !DILocalVariable(name: "authors", scope: !3949, file: !550, line: 234, type: !3915)
!3958 = !DILocation(line: 0, scope: !3949)
!3959 = !DILocation(line: 234, column: 3, scope: !3949)
!3960 = !DILocation(line: 234, column: 11, scope: !3949)
!3961 = !DILocation(line: 235, column: 3, scope: !3949)
!3962 = !DILocation(line: 236, column: 3, scope: !3949)
!3963 = !DILocation(line: 237, column: 3, scope: !3949)
!3964 = !DILocation(line: 238, column: 1, scope: !3949)
!3965 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !550, file: !550, line: 241, type: !134, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !633)
!3966 = !DILocation(line: 243, column: 3, scope: !3965)
!3967 = !DILocation(line: 248, column: 3, scope: !3965)
!3968 = !DILocation(line: 254, column: 3, scope: !3965)
!3969 = !DILocation(line: 259, column: 3, scope: !3965)
!3970 = !DILocation(line: 261, column: 1, scope: !3965)
!3971 = distinct !DISubprogram(name: "xnrealloc", scope: !3972, file: !3972, line: 147, type: !3973, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3975)
!3972 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!34, !34, !40, !40}
!3975 = !{!3976, !3977, !3978}
!3976 = !DILocalVariable(name: "p", arg: 1, scope: !3971, file: !3972, line: 147, type: !34)
!3977 = !DILocalVariable(name: "n", arg: 2, scope: !3971, file: !3972, line: 147, type: !40)
!3978 = !DILocalVariable(name: "s", arg: 3, scope: !3971, file: !3972, line: 147, type: !40)
!3979 = !DILocation(line: 0, scope: !3971)
!3980 = !DILocalVariable(name: "p", arg: 1, scope: !3981, file: !556, line: 83, type: !34)
!3981 = distinct !DISubprogram(name: "xreallocarray", scope: !556, file: !556, line: 83, type: !3973, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3982)
!3982 = !{!3980, !3983, !3984}
!3983 = !DILocalVariable(name: "n", arg: 2, scope: !3981, file: !556, line: 83, type: !40)
!3984 = !DILocalVariable(name: "s", arg: 3, scope: !3981, file: !556, line: 83, type: !40)
!3985 = !DILocation(line: 0, scope: !3981, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 149, column: 10, scope: !3971)
!3987 = !DILocation(line: 85, column: 25, scope: !3981, inlinedAt: !3986)
!3988 = !DILocalVariable(name: "p", arg: 1, scope: !3989, file: !556, line: 37, type: !34)
!3989 = distinct !DISubprogram(name: "check_nonnull", scope: !556, file: !556, line: 37, type: !3990, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3992)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!34, !34}
!3992 = !{!3988}
!3993 = !DILocation(line: 0, scope: !3989, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 85, column: 10, scope: !3981, inlinedAt: !3986)
!3995 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !3994)
!3996 = distinct !DILexicalBlock(scope: !3989, file: !556, line: 39, column: 7)
!3997 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !3994)
!3998 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !3994)
!3999 = !DILocation(line: 149, column: 3, scope: !3971)
!4000 = !DILocation(line: 0, scope: !3981)
!4001 = !DILocation(line: 85, column: 25, scope: !3981)
!4002 = !DILocation(line: 0, scope: !3989, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 85, column: 10, scope: !3981)
!4004 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4003)
!4005 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4003)
!4006 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4003)
!4007 = !DILocation(line: 85, column: 3, scope: !3981)
!4008 = distinct !DISubprogram(name: "xmalloc", scope: !556, file: !556, line: 47, type: !4009, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4011)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!34, !40}
!4011 = !{!4012}
!4012 = !DILocalVariable(name: "s", arg: 1, scope: !4008, file: !556, line: 47, type: !40)
!4013 = !DILocation(line: 0, scope: !4008)
!4014 = !DILocation(line: 49, column: 25, scope: !4008)
!4015 = !DILocation(line: 0, scope: !3989, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 49, column: 10, scope: !4008)
!4017 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4016)
!4018 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4016)
!4019 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4016)
!4020 = !DILocation(line: 49, column: 3, scope: !4008)
!4021 = distinct !DISubprogram(name: "ximalloc", scope: !556, file: !556, line: 53, type: !4022, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4024)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!34, !147}
!4024 = !{!4025}
!4025 = !DILocalVariable(name: "s", arg: 1, scope: !4021, file: !556, line: 53, type: !147)
!4026 = !DILocation(line: 0, scope: !4021)
!4027 = !DILocalVariable(name: "s", arg: 1, scope: !4028, file: !4029, line: 55, type: !147)
!4028 = distinct !DISubprogram(name: "imalloc", scope: !4029, file: !4029, line: 55, type: !4022, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4030)
!4029 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4030 = !{!4027}
!4031 = !DILocation(line: 0, scope: !4028, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 55, column: 25, scope: !4021)
!4033 = !DILocation(line: 57, column: 26, scope: !4028, inlinedAt: !4032)
!4034 = !DILocation(line: 0, scope: !3989, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 55, column: 10, scope: !4021)
!4036 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4035)
!4037 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4035)
!4038 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4035)
!4039 = !DILocation(line: 55, column: 3, scope: !4021)
!4040 = distinct !DISubprogram(name: "xcharalloc", scope: !556, file: !556, line: 59, type: !4041, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4043)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!32, !40}
!4043 = !{!4044}
!4044 = !DILocalVariable(name: "n", arg: 1, scope: !4040, file: !556, line: 59, type: !40)
!4045 = !DILocation(line: 0, scope: !4040)
!4046 = !DILocation(line: 0, scope: !4008, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 61, column: 10, scope: !4040)
!4048 = !DILocation(line: 49, column: 25, scope: !4008, inlinedAt: !4047)
!4049 = !DILocation(line: 0, scope: !3989, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 49, column: 10, scope: !4008, inlinedAt: !4047)
!4051 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4050)
!4052 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4050)
!4053 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4050)
!4054 = !DILocation(line: 61, column: 3, scope: !4040)
!4055 = distinct !DISubprogram(name: "xrealloc", scope: !556, file: !556, line: 68, type: !4056, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4058)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!34, !34, !40}
!4058 = !{!4059, !4060}
!4059 = !DILocalVariable(name: "p", arg: 1, scope: !4055, file: !556, line: 68, type: !34)
!4060 = !DILocalVariable(name: "s", arg: 2, scope: !4055, file: !556, line: 68, type: !40)
!4061 = !DILocation(line: 0, scope: !4055)
!4062 = !DILocalVariable(name: "ptr", arg: 1, scope: !4063, file: !4064, line: 2057, type: !34)
!4063 = distinct !DISubprogram(name: "rpl_realloc", scope: !4064, file: !4064, line: 2057, type: !4056, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4065)
!4064 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4065 = !{!4062, !4066}
!4066 = !DILocalVariable(name: "size", arg: 2, scope: !4063, file: !4064, line: 2057, type: !40)
!4067 = !DILocation(line: 0, scope: !4063, inlinedAt: !4068)
!4068 = distinct !DILocation(line: 70, column: 25, scope: !4055)
!4069 = !DILocation(line: 2059, column: 24, scope: !4063, inlinedAt: !4068)
!4070 = !DILocation(line: 2059, column: 10, scope: !4063, inlinedAt: !4068)
!4071 = !DILocation(line: 0, scope: !3989, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 70, column: 10, scope: !4055)
!4073 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4072)
!4074 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4072)
!4075 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4072)
!4076 = !DILocation(line: 70, column: 3, scope: !4055)
!4077 = distinct !DISubprogram(name: "xirealloc", scope: !556, file: !556, line: 74, type: !4078, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4080)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!34, !34, !147}
!4080 = !{!4081, !4082}
!4081 = !DILocalVariable(name: "p", arg: 1, scope: !4077, file: !556, line: 74, type: !34)
!4082 = !DILocalVariable(name: "s", arg: 2, scope: !4077, file: !556, line: 74, type: !147)
!4083 = !DILocation(line: 0, scope: !4077)
!4084 = !DILocalVariable(name: "p", arg: 1, scope: !4085, file: !4029, line: 66, type: !34)
!4085 = distinct !DISubprogram(name: "irealloc", scope: !4029, file: !4029, line: 66, type: !4078, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4086)
!4086 = !{!4084, !4087}
!4087 = !DILocalVariable(name: "s", arg: 2, scope: !4085, file: !4029, line: 66, type: !147)
!4088 = !DILocation(line: 0, scope: !4085, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 76, column: 25, scope: !4077)
!4090 = !DILocation(line: 0, scope: !4063, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 68, column: 26, scope: !4085, inlinedAt: !4089)
!4092 = !DILocation(line: 2059, column: 24, scope: !4063, inlinedAt: !4091)
!4093 = !DILocation(line: 2059, column: 10, scope: !4063, inlinedAt: !4091)
!4094 = !DILocation(line: 0, scope: !3989, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 76, column: 10, scope: !4077)
!4096 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4095)
!4097 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4095)
!4098 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4095)
!4099 = !DILocation(line: 76, column: 3, scope: !4077)
!4100 = distinct !DISubprogram(name: "xireallocarray", scope: !556, file: !556, line: 89, type: !4101, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4103)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!34, !34, !147, !147}
!4103 = !{!4104, !4105, !4106}
!4104 = !DILocalVariable(name: "p", arg: 1, scope: !4100, file: !556, line: 89, type: !34)
!4105 = !DILocalVariable(name: "n", arg: 2, scope: !4100, file: !556, line: 89, type: !147)
!4106 = !DILocalVariable(name: "s", arg: 3, scope: !4100, file: !556, line: 89, type: !147)
!4107 = !DILocation(line: 0, scope: !4100)
!4108 = !DILocalVariable(name: "p", arg: 1, scope: !4109, file: !4029, line: 98, type: !34)
!4109 = distinct !DISubprogram(name: "ireallocarray", scope: !4029, file: !4029, line: 98, type: !4101, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4110)
!4110 = !{!4108, !4111, !4112}
!4111 = !DILocalVariable(name: "n", arg: 2, scope: !4109, file: !4029, line: 98, type: !147)
!4112 = !DILocalVariable(name: "s", arg: 3, scope: !4109, file: !4029, line: 98, type: !147)
!4113 = !DILocation(line: 0, scope: !4109, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 91, column: 25, scope: !4100)
!4115 = !DILocation(line: 101, column: 13, scope: !4109, inlinedAt: !4114)
!4116 = !DILocation(line: 0, scope: !3989, inlinedAt: !4117)
!4117 = distinct !DILocation(line: 91, column: 10, scope: !4100)
!4118 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4117)
!4119 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4117)
!4120 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4117)
!4121 = !DILocation(line: 91, column: 3, scope: !4100)
!4122 = distinct !DISubprogram(name: "xnmalloc", scope: !556, file: !556, line: 98, type: !4123, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4125)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!34, !40, !40}
!4125 = !{!4126, !4127}
!4126 = !DILocalVariable(name: "n", arg: 1, scope: !4122, file: !556, line: 98, type: !40)
!4127 = !DILocalVariable(name: "s", arg: 2, scope: !4122, file: !556, line: 98, type: !40)
!4128 = !DILocation(line: 0, scope: !4122)
!4129 = !DILocation(line: 0, scope: !3981, inlinedAt: !4130)
!4130 = distinct !DILocation(line: 100, column: 10, scope: !4122)
!4131 = !DILocation(line: 85, column: 25, scope: !3981, inlinedAt: !4130)
!4132 = !DILocation(line: 0, scope: !3989, inlinedAt: !4133)
!4133 = distinct !DILocation(line: 85, column: 10, scope: !3981, inlinedAt: !4130)
!4134 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4133)
!4135 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4133)
!4136 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4133)
!4137 = !DILocation(line: 100, column: 3, scope: !4122)
!4138 = distinct !DISubprogram(name: "xinmalloc", scope: !556, file: !556, line: 104, type: !4139, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4141)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!34, !147, !147}
!4141 = !{!4142, !4143}
!4142 = !DILocalVariable(name: "n", arg: 1, scope: !4138, file: !556, line: 104, type: !147)
!4143 = !DILocalVariable(name: "s", arg: 2, scope: !4138, file: !556, line: 104, type: !147)
!4144 = !DILocation(line: 0, scope: !4138)
!4145 = !DILocation(line: 0, scope: !4100, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 106, column: 10, scope: !4138)
!4147 = !DILocation(line: 0, scope: !4109, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 91, column: 25, scope: !4100, inlinedAt: !4146)
!4149 = !DILocation(line: 101, column: 13, scope: !4109, inlinedAt: !4148)
!4150 = !DILocation(line: 0, scope: !3989, inlinedAt: !4151)
!4151 = distinct !DILocation(line: 91, column: 10, scope: !4100, inlinedAt: !4146)
!4152 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4151)
!4153 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4151)
!4154 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4151)
!4155 = !DILocation(line: 106, column: 3, scope: !4138)
!4156 = distinct !DISubprogram(name: "x2realloc", scope: !556, file: !556, line: 116, type: !4157, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4159)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!34, !34, !562}
!4159 = !{!4160, !4161}
!4160 = !DILocalVariable(name: "p", arg: 1, scope: !4156, file: !556, line: 116, type: !34)
!4161 = !DILocalVariable(name: "ps", arg: 2, scope: !4156, file: !556, line: 116, type: !562)
!4162 = !DILocation(line: 0, scope: !4156)
!4163 = !DILocation(line: 0, scope: !559, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 118, column: 10, scope: !4156)
!4165 = !DILocation(line: 178, column: 14, scope: !559, inlinedAt: !4164)
!4166 = !DILocation(line: 180, column: 9, scope: !4167, inlinedAt: !4164)
!4167 = distinct !DILexicalBlock(scope: !559, file: !556, line: 180, column: 7)
!4168 = !DILocation(line: 180, column: 7, scope: !559, inlinedAt: !4164)
!4169 = !DILocation(line: 182, column: 13, scope: !4170, inlinedAt: !4164)
!4170 = distinct !DILexicalBlock(scope: !4171, file: !556, line: 182, column: 11)
!4171 = distinct !DILexicalBlock(scope: !4167, file: !556, line: 181, column: 5)
!4172 = !DILocation(line: 182, column: 11, scope: !4171, inlinedAt: !4164)
!4173 = !DILocation(line: 197, column: 11, scope: !4174, inlinedAt: !4164)
!4174 = distinct !DILexicalBlock(scope: !4175, file: !556, line: 197, column: 11)
!4175 = distinct !DILexicalBlock(scope: !4167, file: !556, line: 195, column: 5)
!4176 = !DILocation(line: 197, column: 11, scope: !4175, inlinedAt: !4164)
!4177 = !DILocation(line: 198, column: 9, scope: !4174, inlinedAt: !4164)
!4178 = !DILocation(line: 0, scope: !3981, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 201, column: 7, scope: !559, inlinedAt: !4164)
!4180 = !DILocation(line: 85, column: 25, scope: !3981, inlinedAt: !4179)
!4181 = !DILocation(line: 0, scope: !3989, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 85, column: 10, scope: !3981, inlinedAt: !4179)
!4183 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4182)
!4184 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4182)
!4185 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4182)
!4186 = !DILocation(line: 202, column: 7, scope: !559, inlinedAt: !4164)
!4187 = !DILocation(line: 118, column: 3, scope: !4156)
!4188 = !DILocation(line: 0, scope: !559)
!4189 = !DILocation(line: 178, column: 14, scope: !559)
!4190 = !DILocation(line: 180, column: 9, scope: !4167)
!4191 = !DILocation(line: 180, column: 7, scope: !559)
!4192 = !DILocation(line: 182, column: 13, scope: !4170)
!4193 = !DILocation(line: 182, column: 11, scope: !4171)
!4194 = !DILocation(line: 190, column: 30, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4170, file: !556, line: 183, column: 9)
!4196 = !DILocation(line: 191, column: 16, scope: !4195)
!4197 = !DILocation(line: 191, column: 13, scope: !4195)
!4198 = !DILocation(line: 192, column: 9, scope: !4195)
!4199 = !DILocation(line: 197, column: 11, scope: !4174)
!4200 = !DILocation(line: 197, column: 11, scope: !4175)
!4201 = !DILocation(line: 198, column: 9, scope: !4174)
!4202 = !DILocation(line: 0, scope: !3981, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 201, column: 7, scope: !559)
!4204 = !DILocation(line: 85, column: 25, scope: !3981, inlinedAt: !4203)
!4205 = !DILocation(line: 0, scope: !3989, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 85, column: 10, scope: !3981, inlinedAt: !4203)
!4207 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4206)
!4208 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4206)
!4209 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4206)
!4210 = !DILocation(line: 202, column: 7, scope: !559)
!4211 = !DILocation(line: 203, column: 3, scope: !559)
!4212 = !DILocation(line: 0, scope: !571)
!4213 = !DILocation(line: 230, column: 14, scope: !571)
!4214 = !DILocation(line: 238, column: 7, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !571, file: !556, line: 238, column: 7)
!4216 = !DILocation(line: 238, column: 7, scope: !571)
!4217 = !DILocation(line: 240, column: 9, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !571, file: !556, line: 240, column: 7)
!4219 = !DILocation(line: 240, column: 18, scope: !4218)
!4220 = !DILocation(line: 253, column: 8, scope: !571)
!4221 = !DILocation(line: 258, column: 27, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !556, line: 257, column: 5)
!4223 = distinct !DILexicalBlock(scope: !571, file: !556, line: 256, column: 7)
!4224 = !DILocation(line: 259, column: 32, scope: !4222)
!4225 = !DILocation(line: 260, column: 5, scope: !4222)
!4226 = !DILocation(line: 262, column: 9, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !571, file: !556, line: 262, column: 7)
!4228 = !DILocation(line: 262, column: 7, scope: !571)
!4229 = !DILocation(line: 263, column: 9, scope: !4227)
!4230 = !DILocation(line: 263, column: 5, scope: !4227)
!4231 = !DILocation(line: 264, column: 9, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !571, file: !556, line: 264, column: 7)
!4233 = !DILocation(line: 264, column: 14, scope: !4232)
!4234 = !DILocation(line: 265, column: 7, scope: !4232)
!4235 = !DILocation(line: 265, column: 11, scope: !4232)
!4236 = !DILocation(line: 266, column: 11, scope: !4232)
!4237 = !DILocation(line: 266, column: 26, scope: !4232)
!4238 = !DILocation(line: 267, column: 14, scope: !4232)
!4239 = !DILocation(line: 264, column: 7, scope: !571)
!4240 = !DILocation(line: 268, column: 5, scope: !4232)
!4241 = !DILocation(line: 0, scope: !4055, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 269, column: 8, scope: !571)
!4243 = !DILocation(line: 0, scope: !4063, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 70, column: 25, scope: !4055, inlinedAt: !4242)
!4245 = !DILocation(line: 2059, column: 24, scope: !4063, inlinedAt: !4244)
!4246 = !DILocation(line: 2059, column: 10, scope: !4063, inlinedAt: !4244)
!4247 = !DILocation(line: 0, scope: !3989, inlinedAt: !4248)
!4248 = distinct !DILocation(line: 70, column: 10, scope: !4055, inlinedAt: !4242)
!4249 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4248)
!4250 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4248)
!4251 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4248)
!4252 = !DILocation(line: 270, column: 7, scope: !571)
!4253 = !DILocation(line: 271, column: 3, scope: !571)
!4254 = distinct !DISubprogram(name: "xzalloc", scope: !556, file: !556, line: 279, type: !4009, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4255)
!4255 = !{!4256}
!4256 = !DILocalVariable(name: "s", arg: 1, scope: !4254, file: !556, line: 279, type: !40)
!4257 = !DILocation(line: 0, scope: !4254)
!4258 = !DILocalVariable(name: "n", arg: 1, scope: !4259, file: !556, line: 294, type: !40)
!4259 = distinct !DISubprogram(name: "xcalloc", scope: !556, file: !556, line: 294, type: !4123, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4260)
!4260 = !{!4258, !4261}
!4261 = !DILocalVariable(name: "s", arg: 2, scope: !4259, file: !556, line: 294, type: !40)
!4262 = !DILocation(line: 0, scope: !4259, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 281, column: 10, scope: !4254)
!4264 = !DILocation(line: 296, column: 25, scope: !4259, inlinedAt: !4263)
!4265 = !DILocation(line: 0, scope: !3989, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 296, column: 10, scope: !4259, inlinedAt: !4263)
!4267 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4266)
!4268 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4266)
!4269 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4266)
!4270 = !DILocation(line: 281, column: 3, scope: !4254)
!4271 = !DILocation(line: 0, scope: !4259)
!4272 = !DILocation(line: 296, column: 25, scope: !4259)
!4273 = !DILocation(line: 0, scope: !3989, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 296, column: 10, scope: !4259)
!4275 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4274)
!4276 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4274)
!4277 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4274)
!4278 = !DILocation(line: 296, column: 3, scope: !4259)
!4279 = distinct !DISubprogram(name: "xizalloc", scope: !556, file: !556, line: 285, type: !4022, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4280)
!4280 = !{!4281}
!4281 = !DILocalVariable(name: "s", arg: 1, scope: !4279, file: !556, line: 285, type: !147)
!4282 = !DILocation(line: 0, scope: !4279)
!4283 = !DILocalVariable(name: "n", arg: 1, scope: !4284, file: !556, line: 300, type: !147)
!4284 = distinct !DISubprogram(name: "xicalloc", scope: !556, file: !556, line: 300, type: !4139, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4285)
!4285 = !{!4283, !4286}
!4286 = !DILocalVariable(name: "s", arg: 2, scope: !4284, file: !556, line: 300, type: !147)
!4287 = !DILocation(line: 0, scope: !4284, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 287, column: 10, scope: !4279)
!4289 = !DILocalVariable(name: "n", arg: 1, scope: !4290, file: !4029, line: 77, type: !147)
!4290 = distinct !DISubprogram(name: "icalloc", scope: !4029, file: !4029, line: 77, type: !4139, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4291)
!4291 = !{!4289, !4292}
!4292 = !DILocalVariable(name: "s", arg: 2, scope: !4290, file: !4029, line: 77, type: !147)
!4293 = !DILocation(line: 0, scope: !4290, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 302, column: 25, scope: !4284, inlinedAt: !4288)
!4295 = !DILocation(line: 91, column: 10, scope: !4290, inlinedAt: !4294)
!4296 = !DILocation(line: 0, scope: !3989, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 302, column: 10, scope: !4284, inlinedAt: !4288)
!4298 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4297)
!4299 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4297)
!4300 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4297)
!4301 = !DILocation(line: 287, column: 3, scope: !4279)
!4302 = !DILocation(line: 0, scope: !4284)
!4303 = !DILocation(line: 0, scope: !4290, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 302, column: 25, scope: !4284)
!4305 = !DILocation(line: 91, column: 10, scope: !4290, inlinedAt: !4304)
!4306 = !DILocation(line: 0, scope: !3989, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 302, column: 10, scope: !4284)
!4308 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4307)
!4309 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4307)
!4310 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4307)
!4311 = !DILocation(line: 302, column: 3, scope: !4284)
!4312 = distinct !DISubprogram(name: "xmemdup", scope: !556, file: !556, line: 310, type: !4313, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4315)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!34, !838, !40}
!4315 = !{!4316, !4317}
!4316 = !DILocalVariable(name: "p", arg: 1, scope: !4312, file: !556, line: 310, type: !838)
!4317 = !DILocalVariable(name: "s", arg: 2, scope: !4312, file: !556, line: 310, type: !40)
!4318 = !DILocation(line: 0, scope: !4312)
!4319 = !DILocation(line: 0, scope: !4008, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 312, column: 18, scope: !4312)
!4321 = !DILocation(line: 49, column: 25, scope: !4008, inlinedAt: !4320)
!4322 = !DILocation(line: 0, scope: !3989, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 49, column: 10, scope: !4008, inlinedAt: !4320)
!4324 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4323)
!4325 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4323)
!4326 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4323)
!4327 = !DILocalVariable(name: "__dest", arg: 1, scope: !4328, file: !958, line: 26, type: !1210)
!4328 = distinct !DISubprogram(name: "memcpy", scope: !958, file: !958, line: 26, type: !1208, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4329)
!4329 = !{!4327, !4330, !4331}
!4330 = !DILocalVariable(name: "__src", arg: 2, scope: !4328, file: !958, line: 26, type: !837)
!4331 = !DILocalVariable(name: "__len", arg: 3, scope: !4328, file: !958, line: 26, type: !40)
!4332 = !DILocation(line: 0, scope: !4328, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 312, column: 10, scope: !4312)
!4334 = !DILocation(line: 29, column: 10, scope: !4328, inlinedAt: !4333)
!4335 = !DILocation(line: 312, column: 3, scope: !4312)
!4336 = distinct !DISubprogram(name: "ximemdup", scope: !556, file: !556, line: 316, type: !4337, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4339)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!34, !838, !147}
!4339 = !{!4340, !4341}
!4340 = !DILocalVariable(name: "p", arg: 1, scope: !4336, file: !556, line: 316, type: !838)
!4341 = !DILocalVariable(name: "s", arg: 2, scope: !4336, file: !556, line: 316, type: !147)
!4342 = !DILocation(line: 0, scope: !4336)
!4343 = !DILocation(line: 0, scope: !4021, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 318, column: 18, scope: !4336)
!4345 = !DILocation(line: 0, scope: !4028, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 55, column: 25, scope: !4021, inlinedAt: !4344)
!4347 = !DILocation(line: 57, column: 26, scope: !4028, inlinedAt: !4346)
!4348 = !DILocation(line: 0, scope: !3989, inlinedAt: !4349)
!4349 = distinct !DILocation(line: 55, column: 10, scope: !4021, inlinedAt: !4344)
!4350 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4349)
!4351 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4349)
!4352 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4349)
!4353 = !DILocation(line: 0, scope: !4328, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 318, column: 10, scope: !4336)
!4355 = !DILocation(line: 29, column: 10, scope: !4328, inlinedAt: !4354)
!4356 = !DILocation(line: 318, column: 3, scope: !4336)
!4357 = distinct !DISubprogram(name: "ximemdup0", scope: !556, file: !556, line: 325, type: !4358, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4360)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!32, !838, !147}
!4360 = !{!4361, !4362, !4363}
!4361 = !DILocalVariable(name: "p", arg: 1, scope: !4357, file: !556, line: 325, type: !838)
!4362 = !DILocalVariable(name: "s", arg: 2, scope: !4357, file: !556, line: 325, type: !147)
!4363 = !DILocalVariable(name: "result", scope: !4357, file: !556, line: 327, type: !32)
!4364 = !DILocation(line: 0, scope: !4357)
!4365 = !DILocation(line: 327, column: 30, scope: !4357)
!4366 = !DILocation(line: 0, scope: !4021, inlinedAt: !4367)
!4367 = distinct !DILocation(line: 327, column: 18, scope: !4357)
!4368 = !DILocation(line: 0, scope: !4028, inlinedAt: !4369)
!4369 = distinct !DILocation(line: 55, column: 25, scope: !4021, inlinedAt: !4367)
!4370 = !DILocation(line: 57, column: 26, scope: !4028, inlinedAt: !4369)
!4371 = !DILocation(line: 0, scope: !3989, inlinedAt: !4372)
!4372 = distinct !DILocation(line: 55, column: 10, scope: !4021, inlinedAt: !4367)
!4373 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4372)
!4374 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4372)
!4375 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4372)
!4376 = !DILocation(line: 328, column: 3, scope: !4357)
!4377 = !DILocation(line: 328, column: 13, scope: !4357)
!4378 = !DILocation(line: 0, scope: !4328, inlinedAt: !4379)
!4379 = distinct !DILocation(line: 329, column: 10, scope: !4357)
!4380 = !DILocation(line: 29, column: 10, scope: !4328, inlinedAt: !4379)
!4381 = !DILocation(line: 329, column: 3, scope: !4357)
!4382 = distinct !DISubprogram(name: "xstrdup", scope: !556, file: !556, line: 335, type: !832, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !4383)
!4383 = !{!4384}
!4384 = !DILocalVariable(name: "string", arg: 1, scope: !4382, file: !556, line: 335, type: !42)
!4385 = !DILocation(line: 0, scope: !4382)
!4386 = !DILocation(line: 337, column: 27, scope: !4382)
!4387 = !DILocation(line: 337, column: 43, scope: !4382)
!4388 = !DILocation(line: 0, scope: !4312, inlinedAt: !4389)
!4389 = distinct !DILocation(line: 337, column: 10, scope: !4382)
!4390 = !DILocation(line: 0, scope: !4008, inlinedAt: !4391)
!4391 = distinct !DILocation(line: 312, column: 18, scope: !4312, inlinedAt: !4389)
!4392 = !DILocation(line: 49, column: 25, scope: !4008, inlinedAt: !4391)
!4393 = !DILocation(line: 0, scope: !3989, inlinedAt: !4394)
!4394 = distinct !DILocation(line: 49, column: 10, scope: !4008, inlinedAt: !4391)
!4395 = !DILocation(line: 39, column: 8, scope: !3996, inlinedAt: !4394)
!4396 = !DILocation(line: 39, column: 7, scope: !3989, inlinedAt: !4394)
!4397 = !DILocation(line: 40, column: 5, scope: !3996, inlinedAt: !4394)
!4398 = !DILocation(line: 0, scope: !4328, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 312, column: 10, scope: !4312, inlinedAt: !4389)
!4400 = !DILocation(line: 29, column: 10, scope: !4328, inlinedAt: !4399)
!4401 = !DILocation(line: 337, column: 3, scope: !4382)
!4402 = distinct !DISubprogram(name: "xalloc_die", scope: !587, file: !587, line: 32, type: !134, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !4403)
!4403 = !{!4404}
!4404 = !DILocalVariable(name: "__errstatus", scope: !4405, file: !587, line: 34, type: !4406)
!4405 = distinct !DILexicalBlock(scope: !4402, file: !587, line: 34, column: 3)
!4406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!4407 = !DILocation(line: 34, column: 3, scope: !4405)
!4408 = !DILocation(line: 0, scope: !4405)
!4409 = !DILocation(line: 40, column: 3, scope: !4402)
!4410 = distinct !DISubprogram(name: "rpl_fopen", scope: !589, file: !589, line: 46, type: !4411, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !4447)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!4413, !42, !42}
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !4415)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !4416)
!4416 = !{!4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4415, file: !75, line: 51, baseType: !38, size: 32)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4415, file: !75, line: 54, baseType: !32, size: 64, offset: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4415, file: !75, line: 55, baseType: !32, size: 64, offset: 128)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4415, file: !75, line: 56, baseType: !32, size: 64, offset: 192)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4415, file: !75, line: 57, baseType: !32, size: 64, offset: 256)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4415, file: !75, line: 58, baseType: !32, size: 64, offset: 320)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4415, file: !75, line: 59, baseType: !32, size: 64, offset: 384)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4415, file: !75, line: 60, baseType: !32, size: 64, offset: 448)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4415, file: !75, line: 61, baseType: !32, size: 64, offset: 512)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4415, file: !75, line: 64, baseType: !32, size: 64, offset: 576)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4415, file: !75, line: 65, baseType: !32, size: 64, offset: 640)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4415, file: !75, line: 66, baseType: !32, size: 64, offset: 704)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4415, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4415, file: !75, line: 70, baseType: !4431, size: 64, offset: 832)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4415, file: !75, line: 72, baseType: !38, size: 32, offset: 896)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4415, file: !75, line: 73, baseType: !38, size: 32, offset: 928)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4415, file: !75, line: 74, baseType: !97, size: 64, offset: 960)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4415, file: !75, line: 77, baseType: !39, size: 16, offset: 1024)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4415, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4415, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4415, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4415, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4415, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4415, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4415, file: !75, line: 93, baseType: !4431, size: 64, offset: 1344)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4415, file: !75, line: 94, baseType: !34, size: 64, offset: 1408)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4415, file: !75, line: 95, baseType: !40, size: 64, offset: 1472)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4415, file: !75, line: 96, baseType: !38, size: 32, offset: 1536)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4415, file: !75, line: 98, baseType: !122, size: 160, offset: 1568)
!4447 = !{!4448, !4449, !4450, !4451, !4452, !4453, !4457, !4459, !4460, !4465, !4468, !4469}
!4448 = !DILocalVariable(name: "filename", arg: 1, scope: !4410, file: !589, line: 46, type: !42)
!4449 = !DILocalVariable(name: "mode", arg: 2, scope: !4410, file: !589, line: 46, type: !42)
!4450 = !DILocalVariable(name: "open_direction", scope: !4410, file: !589, line: 54, type: !38)
!4451 = !DILocalVariable(name: "open_flags", scope: !4410, file: !589, line: 55, type: !38)
!4452 = !DILocalVariable(name: "open_flags_gnu", scope: !4410, file: !589, line: 57, type: !35)
!4453 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4410, file: !589, line: 59, type: !4454)
!4454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 648, elements: !4455)
!4455 = !{!4456}
!4456 = !DISubrange(count: 81)
!4457 = !DILocalVariable(name: "p", scope: !4458, file: !589, line: 62, type: !42)
!4458 = distinct !DILexicalBlock(scope: !4410, file: !589, line: 61, column: 3)
!4459 = !DILocalVariable(name: "q", scope: !4458, file: !589, line: 64, type: !32)
!4460 = !DILocalVariable(name: "len", scope: !4461, file: !589, line: 128, type: !40)
!4461 = distinct !DILexicalBlock(scope: !4462, file: !589, line: 127, column: 9)
!4462 = distinct !DILexicalBlock(scope: !4463, file: !589, line: 68, column: 7)
!4463 = distinct !DILexicalBlock(scope: !4464, file: !589, line: 67, column: 5)
!4464 = distinct !DILexicalBlock(scope: !4458, file: !589, line: 67, column: 5)
!4465 = !DILocalVariable(name: "fd", scope: !4466, file: !589, line: 199, type: !38)
!4466 = distinct !DILexicalBlock(scope: !4467, file: !589, line: 198, column: 5)
!4467 = distinct !DILexicalBlock(scope: !4410, file: !589, line: 197, column: 7)
!4468 = !DILocalVariable(name: "fp", scope: !4466, file: !589, line: 204, type: !4413)
!4469 = !DILocalVariable(name: "saved_errno", scope: !4470, file: !589, line: 207, type: !38)
!4470 = distinct !DILexicalBlock(scope: !4471, file: !589, line: 206, column: 9)
!4471 = distinct !DILexicalBlock(scope: !4466, file: !589, line: 205, column: 11)
!4472 = !DILocation(line: 0, scope: !4410)
!4473 = !DILocation(line: 59, column: 3, scope: !4410)
!4474 = !DILocation(line: 59, column: 8, scope: !4410)
!4475 = !DILocation(line: 0, scope: !4458)
!4476 = !DILocation(line: 67, column: 5, scope: !4458)
!4477 = !DILocation(line: 64, column: 11, scope: !4458)
!4478 = !DILocation(line: 54, column: 7, scope: !4410)
!4479 = !DILocation(line: 67, column: 12, scope: !4463)
!4480 = !DILocation(line: 67, column: 5, scope: !4464)
!4481 = !DILocation(line: 74, column: 19, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4483, file: !589, line: 74, column: 17)
!4483 = distinct !DILexicalBlock(scope: !4462, file: !589, line: 70, column: 11)
!4484 = !DILocation(line: 74, column: 17, scope: !4483)
!4485 = !DILocation(line: 75, column: 17, scope: !4482)
!4486 = !DILocation(line: 75, column: 20, scope: !4482)
!4487 = !DILocation(line: 75, column: 15, scope: !4482)
!4488 = !DILocation(line: 80, column: 24, scope: !4483)
!4489 = !DILocation(line: 82, column: 19, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4483, file: !589, line: 82, column: 17)
!4491 = !DILocation(line: 82, column: 17, scope: !4483)
!4492 = !DILocation(line: 83, column: 17, scope: !4490)
!4493 = !DILocation(line: 83, column: 20, scope: !4490)
!4494 = !DILocation(line: 83, column: 15, scope: !4490)
!4495 = !DILocation(line: 88, column: 24, scope: !4483)
!4496 = !DILocation(line: 90, column: 19, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4483, file: !589, line: 90, column: 17)
!4498 = !DILocation(line: 90, column: 17, scope: !4483)
!4499 = !DILocation(line: 91, column: 17, scope: !4497)
!4500 = !DILocation(line: 91, column: 20, scope: !4497)
!4501 = !DILocation(line: 91, column: 15, scope: !4497)
!4502 = !DILocation(line: 100, column: 19, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4483, file: !589, line: 100, column: 17)
!4504 = !DILocation(line: 100, column: 17, scope: !4483)
!4505 = !DILocation(line: 101, column: 17, scope: !4503)
!4506 = !DILocation(line: 101, column: 20, scope: !4503)
!4507 = !DILocation(line: 101, column: 15, scope: !4503)
!4508 = !DILocation(line: 107, column: 19, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4483, file: !589, line: 107, column: 17)
!4510 = !DILocation(line: 107, column: 17, scope: !4483)
!4511 = !DILocation(line: 108, column: 17, scope: !4509)
!4512 = !DILocation(line: 108, column: 20, scope: !4509)
!4513 = !DILocation(line: 108, column: 15, scope: !4509)
!4514 = !DILocation(line: 113, column: 24, scope: !4483)
!4515 = !DILocation(line: 115, column: 13, scope: !4483)
!4516 = !DILocation(line: 117, column: 24, scope: !4483)
!4517 = !DILocation(line: 119, column: 13, scope: !4483)
!4518 = !DILocation(line: 128, column: 24, scope: !4461)
!4519 = !DILocation(line: 0, scope: !4461)
!4520 = !DILocation(line: 129, column: 48, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4461, file: !589, line: 129, column: 15)
!4522 = !DILocation(line: 129, column: 19, scope: !4521)
!4523 = !DILocation(line: 129, column: 15, scope: !4461)
!4524 = !DILocalVariable(name: "__dest", arg: 1, scope: !4525, file: !958, line: 26, type: !1210)
!4525 = distinct !DISubprogram(name: "memcpy", scope: !958, file: !958, line: 26, type: !1208, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !4526)
!4526 = !{!4524, !4527, !4528}
!4527 = !DILocalVariable(name: "__src", arg: 2, scope: !4525, file: !958, line: 26, type: !837)
!4528 = !DILocalVariable(name: "__len", arg: 3, scope: !4525, file: !958, line: 26, type: !40)
!4529 = !DILocation(line: 0, scope: !4525, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 131, column: 11, scope: !4461)
!4531 = !DILocation(line: 29, column: 10, scope: !4525, inlinedAt: !4530)
!4532 = !DILocation(line: 132, column: 13, scope: !4461)
!4533 = !DILocation(line: 135, column: 9, scope: !4462)
!4534 = !DILocation(line: 67, column: 25, scope: !4463)
!4535 = !DILocation(line: 67, column: 5, scope: !4463)
!4536 = distinct !{!4536, !4480, !4537, !687}
!4537 = !DILocation(line: 136, column: 7, scope: !4464)
!4538 = !DILocation(line: 138, column: 8, scope: !4458)
!4539 = !DILocation(line: 197, column: 7, scope: !4410)
!4540 = !DILocation(line: 199, column: 47, scope: !4466)
!4541 = !DILocation(line: 199, column: 16, scope: !4466)
!4542 = !DILocation(line: 0, scope: !4466)
!4543 = !DILocation(line: 201, column: 14, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4466, file: !589, line: 201, column: 11)
!4545 = !DILocation(line: 201, column: 11, scope: !4466)
!4546 = !DILocation(line: 204, column: 18, scope: !4466)
!4547 = !DILocation(line: 205, column: 14, scope: !4471)
!4548 = !DILocation(line: 205, column: 11, scope: !4466)
!4549 = !DILocation(line: 207, column: 29, scope: !4470)
!4550 = !DILocation(line: 0, scope: !4470)
!4551 = !DILocation(line: 208, column: 11, scope: !4470)
!4552 = !DILocation(line: 209, column: 17, scope: !4470)
!4553 = !DILocation(line: 210, column: 9, scope: !4470)
!4554 = !DILocalVariable(name: "filename", arg: 1, scope: !4555, file: !589, line: 30, type: !42)
!4555 = distinct !DISubprogram(name: "orig_fopen", scope: !589, file: !589, line: 30, type: !4411, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !588, retainedNodes: !4556)
!4556 = !{!4554, !4557}
!4557 = !DILocalVariable(name: "mode", arg: 2, scope: !4555, file: !589, line: 30, type: !42)
!4558 = !DILocation(line: 0, scope: !4555, inlinedAt: !4559)
!4559 = distinct !DILocation(line: 219, column: 10, scope: !4410)
!4560 = !DILocation(line: 32, column: 10, scope: !4555, inlinedAt: !4559)
!4561 = !DILocation(line: 219, column: 3, scope: !4410)
!4562 = !DILocation(line: 220, column: 1, scope: !4410)
!4563 = !DISubprogram(name: "open", scope: !2065, file: !2065, line: 181, type: !4564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!38, !42, !38, null}
!4566 = !DISubprogram(name: "fdopen", scope: !367, file: !367, line: 293, type: !4567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!4413, !38, !42}
!4569 = !DISubprogram(name: "close", scope: !2269, file: !2269, line: 358, type: !1948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!4570 = distinct !DISubprogram(name: "close_stream", scope: !591, file: !591, line: 55, type: !4571, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !4607)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!38, !4573}
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 7, baseType: !4575)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !4576)
!4576 = !{!4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4575, file: !75, line: 51, baseType: !38, size: 32)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4575, file: !75, line: 54, baseType: !32, size: 64, offset: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4575, file: !75, line: 55, baseType: !32, size: 64, offset: 128)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4575, file: !75, line: 56, baseType: !32, size: 64, offset: 192)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4575, file: !75, line: 57, baseType: !32, size: 64, offset: 256)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4575, file: !75, line: 58, baseType: !32, size: 64, offset: 320)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4575, file: !75, line: 59, baseType: !32, size: 64, offset: 384)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4575, file: !75, line: 60, baseType: !32, size: 64, offset: 448)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4575, file: !75, line: 61, baseType: !32, size: 64, offset: 512)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4575, file: !75, line: 64, baseType: !32, size: 64, offset: 576)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4575, file: !75, line: 65, baseType: !32, size: 64, offset: 640)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4575, file: !75, line: 66, baseType: !32, size: 64, offset: 704)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4575, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4575, file: !75, line: 70, baseType: !4591, size: 64, offset: 832)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4575, file: !75, line: 72, baseType: !38, size: 32, offset: 896)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4575, file: !75, line: 73, baseType: !38, size: 32, offset: 928)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4575, file: !75, line: 74, baseType: !97, size: 64, offset: 960)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4575, file: !75, line: 77, baseType: !39, size: 16, offset: 1024)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4575, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4575, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4575, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4575, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4575, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4575, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4575, file: !75, line: 93, baseType: !4591, size: 64, offset: 1344)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4575, file: !75, line: 94, baseType: !34, size: 64, offset: 1408)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4575, file: !75, line: 95, baseType: !40, size: 64, offset: 1472)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4575, file: !75, line: 96, baseType: !38, size: 32, offset: 1536)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4575, file: !75, line: 98, baseType: !122, size: 160, offset: 1568)
!4607 = !{!4608, !4609, !4611, !4612}
!4608 = !DILocalVariable(name: "stream", arg: 1, scope: !4570, file: !591, line: 55, type: !4573)
!4609 = !DILocalVariable(name: "some_pending", scope: !4570, file: !591, line: 57, type: !4610)
!4610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!4611 = !DILocalVariable(name: "prev_fail", scope: !4570, file: !591, line: 58, type: !4610)
!4612 = !DILocalVariable(name: "fclose_fail", scope: !4570, file: !591, line: 59, type: !4610)
!4613 = !DILocation(line: 0, scope: !4570)
!4614 = !DILocation(line: 57, column: 30, scope: !4570)
!4615 = !DILocalVariable(name: "__stream", arg: 1, scope: !4616, file: !940, line: 135, type: !4573)
!4616 = distinct !DISubprogram(name: "ferror_unlocked", scope: !940, file: !940, line: 135, type: !4571, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !590, retainedNodes: !4617)
!4617 = !{!4615}
!4618 = !DILocation(line: 0, scope: !4616, inlinedAt: !4619)
!4619 = distinct !DILocation(line: 58, column: 27, scope: !4570)
!4620 = !DILocation(line: 137, column: 10, scope: !4616, inlinedAt: !4619)
!4621 = !DILocation(line: 58, column: 43, scope: !4570)
!4622 = !DILocation(line: 59, column: 29, scope: !4570)
!4623 = !DILocation(line: 59, column: 45, scope: !4570)
!4624 = !DILocation(line: 69, column: 17, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4570, file: !591, line: 69, column: 7)
!4626 = !DILocation(line: 57, column: 50, scope: !4570)
!4627 = !DILocation(line: 69, column: 33, scope: !4625)
!4628 = !DILocation(line: 69, column: 53, scope: !4625)
!4629 = !DILocation(line: 69, column: 59, scope: !4625)
!4630 = !DILocation(line: 69, column: 7, scope: !4570)
!4631 = !DILocation(line: 71, column: 11, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4625, file: !591, line: 70, column: 5)
!4633 = !DILocation(line: 72, column: 9, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4632, file: !591, line: 71, column: 11)
!4635 = !DILocation(line: 72, column: 15, scope: !4634)
!4636 = !DILocation(line: 77, column: 1, scope: !4570)
!4637 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !522, file: !522, line: 100, type: !4638, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !4641)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!40, !1274, !42, !40, !4640}
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!4641 = !{!4642, !4643, !4644, !4645, !4646}
!4642 = !DILocalVariable(name: "pwc", arg: 1, scope: !4637, file: !522, line: 100, type: !1274)
!4643 = !DILocalVariable(name: "s", arg: 2, scope: !4637, file: !522, line: 100, type: !42)
!4644 = !DILocalVariable(name: "n", arg: 3, scope: !4637, file: !522, line: 100, type: !40)
!4645 = !DILocalVariable(name: "ps", arg: 4, scope: !4637, file: !522, line: 100, type: !4640)
!4646 = !DILocalVariable(name: "ret", scope: !4637, file: !522, line: 130, type: !40)
!4647 = !DILocation(line: 0, scope: !4637)
!4648 = !DILocation(line: 105, column: 9, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4637, file: !522, line: 105, column: 7)
!4650 = !DILocation(line: 105, column: 7, scope: !4637)
!4651 = !DILocation(line: 117, column: 10, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4637, file: !522, line: 117, column: 7)
!4653 = !DILocation(line: 117, column: 7, scope: !4637)
!4654 = !DILocation(line: 130, column: 16, scope: !4637)
!4655 = !DILocation(line: 135, column: 11, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4637, file: !522, line: 135, column: 7)
!4657 = !DILocation(line: 135, column: 25, scope: !4656)
!4658 = !DILocation(line: 135, column: 30, scope: !4656)
!4659 = !DILocation(line: 135, column: 7, scope: !4637)
!4660 = !DILocalVariable(name: "ps", arg: 1, scope: !4661, file: !2504, line: 1135, type: !4640)
!4661 = distinct !DISubprogram(name: "mbszero", scope: !2504, file: !2504, line: 1135, type: !4662, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !4664)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{null, !4640}
!4664 = !{!4660}
!4665 = !DILocation(line: 0, scope: !4661, inlinedAt: !4666)
!4666 = distinct !DILocation(line: 137, column: 5, scope: !4656)
!4667 = !DILocalVariable(name: "__dest", arg: 1, scope: !4668, file: !958, line: 57, type: !34)
!4668 = distinct !DISubprogram(name: "memset", scope: !958, file: !958, line: 57, type: !2513, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !4669)
!4669 = !{!4667, !4670, !4671}
!4670 = !DILocalVariable(name: "__ch", arg: 2, scope: !4668, file: !958, line: 57, type: !38)
!4671 = !DILocalVariable(name: "__len", arg: 3, scope: !4668, file: !958, line: 57, type: !40)
!4672 = !DILocation(line: 0, scope: !4668, inlinedAt: !4673)
!4673 = distinct !DILocation(line: 1137, column: 3, scope: !4661, inlinedAt: !4666)
!4674 = !DILocation(line: 59, column: 10, scope: !4668, inlinedAt: !4673)
!4675 = !DILocation(line: 137, column: 5, scope: !4656)
!4676 = !DILocation(line: 138, column: 11, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4637, file: !522, line: 138, column: 7)
!4678 = !DILocation(line: 138, column: 7, scope: !4637)
!4679 = !DILocation(line: 139, column: 5, scope: !4677)
!4680 = !DILocation(line: 143, column: 26, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4637, file: !522, line: 143, column: 7)
!4682 = !DILocation(line: 143, column: 41, scope: !4681)
!4683 = !DILocation(line: 143, column: 7, scope: !4637)
!4684 = !DILocation(line: 145, column: 15, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4686, file: !522, line: 145, column: 11)
!4686 = distinct !DILexicalBlock(scope: !4681, file: !522, line: 144, column: 5)
!4687 = !DILocation(line: 145, column: 11, scope: !4686)
!4688 = !DILocation(line: 146, column: 32, scope: !4685)
!4689 = !DILocation(line: 146, column: 16, scope: !4685)
!4690 = !DILocation(line: 146, column: 14, scope: !4685)
!4691 = !DILocation(line: 146, column: 9, scope: !4685)
!4692 = !DILocation(line: 286, column: 1, scope: !4637)
!4693 = !DISubprogram(name: "mbsinit", scope: !1280, file: !1280, line: 293, type: !4694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !633)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!38, !4696}
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!4698 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !593, file: !593, line: 27, type: !3973, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !4699)
!4699 = !{!4700, !4701, !4702, !4703}
!4700 = !DILocalVariable(name: "ptr", arg: 1, scope: !4698, file: !593, line: 27, type: !34)
!4701 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4698, file: !593, line: 27, type: !40)
!4702 = !DILocalVariable(name: "size", arg: 3, scope: !4698, file: !593, line: 27, type: !40)
!4703 = !DILocalVariable(name: "nbytes", scope: !4698, file: !593, line: 29, type: !40)
!4704 = !DILocation(line: 0, scope: !4698)
!4705 = !DILocation(line: 30, column: 7, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4698, file: !593, line: 30, column: 7)
!4707 = !DILocalVariable(name: "ptr", arg: 1, scope: !4708, file: !4064, line: 2057, type: !34)
!4708 = distinct !DISubprogram(name: "rpl_realloc", scope: !4064, file: !4064, line: 2057, type: !4056, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !4709)
!4709 = !{!4707, !4710}
!4710 = !DILocalVariable(name: "size", arg: 2, scope: !4708, file: !4064, line: 2057, type: !40)
!4711 = !DILocation(line: 0, scope: !4708, inlinedAt: !4712)
!4712 = distinct !DILocation(line: 37, column: 10, scope: !4698)
!4713 = !DILocation(line: 2059, column: 24, scope: !4708, inlinedAt: !4712)
!4714 = !DILocation(line: 2059, column: 10, scope: !4708, inlinedAt: !4712)
!4715 = !DILocation(line: 37, column: 3, scope: !4698)
!4716 = !DILocation(line: 32, column: 7, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4706, file: !593, line: 31, column: 5)
!4718 = !DILocation(line: 32, column: 13, scope: !4717)
!4719 = !DILocation(line: 33, column: 7, scope: !4717)
!4720 = !DILocation(line: 38, column: 1, scope: !4698)
!4721 = distinct !DISubprogram(name: "hard_locale", scope: !596, file: !596, line: 28, type: !1452, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !595, retainedNodes: !4722)
!4722 = !{!4723, !4724}
!4723 = !DILocalVariable(name: "category", arg: 1, scope: !4721, file: !596, line: 28, type: !38)
!4724 = !DILocalVariable(name: "locale", scope: !4721, file: !596, line: 30, type: !4725)
!4725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2056, elements: !4726)
!4726 = !{!4727}
!4727 = !DISubrange(count: 257)
!4728 = !DILocation(line: 0, scope: !4721)
!4729 = !DILocation(line: 30, column: 3, scope: !4721)
!4730 = !DILocation(line: 30, column: 8, scope: !4721)
!4731 = !DILocation(line: 32, column: 7, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4721, file: !596, line: 32, column: 7)
!4733 = !DILocation(line: 32, column: 7, scope: !4721)
!4734 = !DILocalVariable(name: "__s1", arg: 1, scope: !4735, file: !671, line: 1359, type: !42)
!4735 = distinct !DISubprogram(name: "streq", scope: !671, file: !671, line: 1359, type: !672, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !595, retainedNodes: !4736)
!4736 = !{!4734, !4737}
!4737 = !DILocalVariable(name: "__s2", arg: 2, scope: !4735, file: !671, line: 1359, type: !42)
!4738 = !DILocation(line: 0, scope: !4735, inlinedAt: !4739)
!4739 = distinct !DILocation(line: 35, column: 9, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4721, file: !596, line: 35, column: 7)
!4741 = !DILocation(line: 1361, column: 11, scope: !4735, inlinedAt: !4739)
!4742 = !DILocation(line: 1361, column: 10, scope: !4735, inlinedAt: !4739)
!4743 = !DILocation(line: 35, column: 29, scope: !4740)
!4744 = !DILocation(line: 0, scope: !4735, inlinedAt: !4745)
!4745 = distinct !DILocation(line: 35, column: 32, scope: !4740)
!4746 = !DILocation(line: 1361, column: 11, scope: !4735, inlinedAt: !4745)
!4747 = !DILocation(line: 1361, column: 10, scope: !4735, inlinedAt: !4745)
!4748 = !DILocation(line: 35, column: 7, scope: !4721)
!4749 = !DILocation(line: 46, column: 3, scope: !4721)
!4750 = !DILocation(line: 47, column: 1, scope: !4721)
!4751 = distinct !DISubprogram(name: "setlocale_null_r", scope: !598, file: !598, line: 154, type: !4752, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !4754)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!38, !38, !32, !40}
!4754 = !{!4755, !4756, !4757}
!4755 = !DILocalVariable(name: "category", arg: 1, scope: !4751, file: !598, line: 154, type: !38)
!4756 = !DILocalVariable(name: "buf", arg: 2, scope: !4751, file: !598, line: 154, type: !32)
!4757 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4751, file: !598, line: 154, type: !40)
!4758 = !DILocation(line: 0, scope: !4751)
!4759 = !DILocation(line: 159, column: 10, scope: !4751)
!4760 = !DILocation(line: 159, column: 3, scope: !4751)
!4761 = distinct !DISubprogram(name: "setlocale_null", scope: !598, file: !598, line: 186, type: !4762, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !4764)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!42, !38}
!4764 = !{!4765}
!4765 = !DILocalVariable(name: "category", arg: 1, scope: !4761, file: !598, line: 186, type: !38)
!4766 = !DILocation(line: 0, scope: !4761)
!4767 = !DILocation(line: 189, column: 10, scope: !4761)
!4768 = !DILocation(line: 189, column: 3, scope: !4761)
!4769 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !600, file: !600, line: 35, type: !4762, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !599, retainedNodes: !4770)
!4770 = !{!4771, !4772}
!4771 = !DILocalVariable(name: "category", arg: 1, scope: !4769, file: !600, line: 35, type: !38)
!4772 = !DILocalVariable(name: "result", scope: !4769, file: !600, line: 37, type: !42)
!4773 = !DILocation(line: 0, scope: !4769)
!4774 = !DILocation(line: 37, column: 24, scope: !4769)
!4775 = !DILocation(line: 62, column: 3, scope: !4769)
!4776 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !600, file: !600, line: 66, type: !4752, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !599, retainedNodes: !4777)
!4777 = !{!4778, !4779, !4780, !4781, !4782}
!4778 = !DILocalVariable(name: "category", arg: 1, scope: !4776, file: !600, line: 66, type: !38)
!4779 = !DILocalVariable(name: "buf", arg: 2, scope: !4776, file: !600, line: 66, type: !32)
!4780 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4776, file: !600, line: 66, type: !40)
!4781 = !DILocalVariable(name: "result", scope: !4776, file: !600, line: 111, type: !42)
!4782 = !DILocalVariable(name: "length", scope: !4783, file: !600, line: 125, type: !40)
!4783 = distinct !DILexicalBlock(scope: !4784, file: !600, line: 124, column: 5)
!4784 = distinct !DILexicalBlock(scope: !4776, file: !600, line: 113, column: 7)
!4785 = !DILocation(line: 0, scope: !4776)
!4786 = !DILocation(line: 0, scope: !4769, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 111, column: 24, scope: !4776)
!4788 = !DILocation(line: 37, column: 24, scope: !4769, inlinedAt: !4787)
!4789 = !DILocation(line: 113, column: 14, scope: !4784)
!4790 = !DILocation(line: 113, column: 7, scope: !4776)
!4791 = !DILocation(line: 116, column: 19, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4793, file: !600, line: 116, column: 11)
!4793 = distinct !DILexicalBlock(scope: !4784, file: !600, line: 114, column: 5)
!4794 = !DILocation(line: 116, column: 11, scope: !4793)
!4795 = !DILocation(line: 120, column: 16, scope: !4792)
!4796 = !DILocation(line: 120, column: 9, scope: !4792)
!4797 = !DILocation(line: 125, column: 23, scope: !4783)
!4798 = !DILocation(line: 0, scope: !4783)
!4799 = !DILocation(line: 126, column: 18, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4783, file: !600, line: 126, column: 11)
!4801 = !DILocation(line: 126, column: 11, scope: !4783)
!4802 = !DILocation(line: 128, column: 39, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4800, file: !600, line: 127, column: 9)
!4804 = !DILocalVariable(name: "__dest", arg: 1, scope: !4805, file: !958, line: 26, type: !1210)
!4805 = distinct !DISubprogram(name: "memcpy", scope: !958, file: !958, line: 26, type: !1208, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !599, retainedNodes: !4806)
!4806 = !{!4804, !4807, !4808}
!4807 = !DILocalVariable(name: "__src", arg: 2, scope: !4805, file: !958, line: 26, type: !837)
!4808 = !DILocalVariable(name: "__len", arg: 3, scope: !4805, file: !958, line: 26, type: !40)
!4809 = !DILocation(line: 0, scope: !4805, inlinedAt: !4810)
!4810 = distinct !DILocation(line: 128, column: 11, scope: !4803)
!4811 = !DILocation(line: 29, column: 10, scope: !4805, inlinedAt: !4810)
!4812 = !DILocation(line: 129, column: 11, scope: !4803)
!4813 = !DILocation(line: 133, column: 23, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4815, file: !600, line: 133, column: 15)
!4815 = distinct !DILexicalBlock(scope: !4800, file: !600, line: 132, column: 9)
!4816 = !DILocation(line: 133, column: 15, scope: !4815)
!4817 = !DILocation(line: 138, column: 44, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4814, file: !600, line: 134, column: 13)
!4819 = !DILocation(line: 0, scope: !4805, inlinedAt: !4820)
!4820 = distinct !DILocation(line: 138, column: 15, scope: !4818)
!4821 = !DILocation(line: 29, column: 10, scope: !4805, inlinedAt: !4820)
!4822 = !DILocation(line: 139, column: 15, scope: !4818)
!4823 = !DILocation(line: 139, column: 32, scope: !4818)
!4824 = !DILocation(line: 140, column: 13, scope: !4818)
!4825 = !DILocation(line: 0, scope: !4784)
!4826 = !DILocation(line: 145, column: 1, scope: !4776)
