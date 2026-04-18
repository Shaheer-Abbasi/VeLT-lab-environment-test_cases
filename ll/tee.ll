; ModuleID = 'src/tee.bc'
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
%struct.pollfd = type { i32, i16, i16 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Copy standard input to each FILE, and also to standard output.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tee\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"  -a, --append\0A         append to the given FILEs, do not overwrite\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"  -i, --ignore-interrupts\0A         ignore interrupt signals\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"  -p\0A         operate in a more appropriate MODE with pipes\0A\00", align 1
@.str.7 = private unnamed_addr constant [83 x i8] c"      --output-error[=MODE]\0A         set behavior on write error.  See MODE below\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [586 x i8] c"\0AMODE determines behavior with write errors on the outputs:\0A  warn           diagnose errors writing to any output\0A  warn-nopipe    diagnose errors writing to any output not a pipe\0A  exit           exit on error writing to any output\0A  exit-nopipe    exit on error writing to any output not a pipe\0AThe default MODE for the -p option is 'warn-nopipe'.\0AWith \22nopipe\22 MODEs, exit immediately if all outputs become broken pipes.\0AThe default operation when --output-error is not specified, is to\0Aexit immediately on error writing to a pipe, and diagnose errors\0Awriting to non pipe outputs.\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"aip\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i32 2, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@append = internal unnamed_addr global i1 false, align 1, !dbg !188
@ignore_interrupts = internal unnamed_addr global i1 false, align 1, !dbg !189
@optarg = external local_unnamed_addr global i8*, align 8
@output_error_types = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 4, !dbg !164
@.str.15 = private unnamed_addr constant [15 x i8] c"--output-error\00", align 1
@output_error_args = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i8* null], align 8, !dbg !170
@output_error = internal unnamed_addr global i32 0, align 4, !dbg !76
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Mike Parker\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !78
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
@.str.57 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"ignore-interrupts\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"output-error\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"warn-nopipe\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"exit-nopipe\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.66 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"iopoll error\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"fdin != -1 || fdout != -1\00", align 1
@.str.1.28 = private unnamed_addr constant [13 x i8] c"src/iopoll.c\00", align 1
@__PRETTY_FUNCTION__.iopoll_internal = private unnamed_addr constant [44 x i8] c"int iopoll_internal(int, int, _Bool, _Bool)\00", align 1
@.str.2.29 = private unnamed_addr constant [8 x i8] c"0 < ret\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), align 8, !dbg !190
@argmatch_die = dso_local local_unnamed_addr global void ()* @__argmatch_die, align 8, !dbg !195
@.str.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.72 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.2.73 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.3.75 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.4.76 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.5.77 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !207
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !212
@.str.82 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.83 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.84 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.85 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !214
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.86 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !250
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !220
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !246
@.str.1.92 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.94 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.93 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !248
@.str.4.87 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.88 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.89 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !252
@.str.109 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.110 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !258
@.str.113 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.114 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.115 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.116 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.117 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.118 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.119 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.120 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.121 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.122 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.114, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.115, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.116, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.117, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.118, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.119, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.120, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.121, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.122, i32 0, i32 0), i8* null], align 8, !dbg !292
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !304
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !322
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !352
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !359
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !324
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !361
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !310
@.str.10.125 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.123 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.126 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.124 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !329
@.str.139 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.140 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.141 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.142 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.143 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.144 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.145 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.146 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.147 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.148 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.149 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.150 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.151 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.152 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.153 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.154 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.155 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.160 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.161 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.162 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.163 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.164 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.165 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.166 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !366
@exit_failure = dso_local global i32 1, align 4, !dbg !374
@.str.181 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.179 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.180 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.192 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !380
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !396
@.str.201 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.202 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !501 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !503, metadata !DIExpression()), !dbg !504
  %3 = icmp eq i32 %0, 0, !dbg !505
  br i1 %3, label %9, label %4, !dbg !507

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !508, !tbaa !510
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #35, !dbg !508
  %7 = load i8*, i8** @program_name, align 8, !dbg !508, !tbaa !510
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #35, !dbg !508
  br label %59, !dbg !508

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #35, !dbg !514
  %11 = load i8*, i8** @program_name, align 8, !dbg !514, !tbaa !510
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #35, !dbg !514
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #35, !dbg !516
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !516, !tbaa !510
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !516
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #35, !dbg !517
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !517
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #35, !dbg !518
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !518
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #35, !dbg !519
  tail call fastcc void @oputs_(i8* noundef %18), !dbg !519
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #35, !dbg !520
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !520
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !521
  tail call fastcc void @oputs_(i8* noundef %20), !dbg !521
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #35, !dbg !522
  tail call fastcc void @oputs_(i8* noundef %21), !dbg !522
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([586 x i8], [586 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #35, !dbg !523
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !523, !tbaa !510
  %24 = tail call i32 @fputs_unlocked(i8* noundef %22, %struct._IO_FILE* noundef %23), !dbg !523
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !524, metadata !DIExpression()) #35, !dbg !543
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !545
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #35, !dbg !545
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !529, metadata !DIExpression()) #35, !dbg !546
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %25, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #35, !dbg !546
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !538, metadata !DIExpression()) #35, !dbg !543
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !539, metadata !DIExpression()) #35, !dbg !543
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !547
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !539, metadata !DIExpression()) #35, !dbg !543
  br label %27, !dbg !548

27:                                               ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !539, metadata !DIExpression()) #35, !dbg !543
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !556
  call void @llvm.dbg.value(metadata i8* %28, metadata !555, metadata !DIExpression()) #35, !dbg !556
  %30 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %28) #36, !dbg !558
  %31 = icmp eq i32 %30, 0, !dbg !559
  br i1 %31, label %37, label %32, !dbg !548

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !560
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !539, metadata !DIExpression()) #35, !dbg !543
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !561
  %35 = load i8*, i8** %34, align 8, !dbg !561, !tbaa !562
  %36 = icmp eq i8* %35, null, !dbg !564
  br i1 %36, label %37, label %27, !dbg !565, !llvm.loop !566

37:                                               ; preds = %32, %27
  %38 = phi %struct.infomap* [ %29, %27 ], [ %33, %32 ]
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !568
  %40 = load i8*, i8** %39, align 8, !dbg !568, !tbaa !570
  %41 = icmp eq i8* %40, null, !dbg !571
  %42 = select i1 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %40, !dbg !572
  call void @llvm.dbg.value(metadata i8* %42, metadata !538, metadata !DIExpression()) #35, !dbg !543
  tail call void @emit_bug_reporting_address() #35, !dbg !573
  %43 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #35, !dbg !574
  call void @llvm.dbg.value(metadata i8* %43, metadata !541, metadata !DIExpression()) #35, !dbg !543
  %44 = icmp eq i8* %43, null, !dbg !575
  br i1 %44, label %52, label %45, !dbg !577

45:                                               ; preds = %37
  %46 = tail call i32 @strncmp(i8* noundef nonnull %43, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i64 noundef 3) #36, !dbg !578
  %47 = icmp eq i32 %46, 0, !dbg !578
  br i1 %47, label %52, label %48, !dbg !579

48:                                               ; preds = %45
  %49 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.53, i64 0, i64 0), i32 noundef 5) #35, !dbg !580
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !580, !tbaa !510
  %51 = tail call i32 @fputs_unlocked(i8* noundef %49, %struct._IO_FILE* noundef %50) #35, !dbg !580
  br label %52, !dbg !582

52:                                               ; preds = %37, %45, %48
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !583
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), metadata !555, metadata !DIExpression()) #35, !dbg !583
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !542, metadata !DIExpression()) #35, !dbg !543
  %53 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0), i32 noundef 5) #35, !dbg !585
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %53, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #35, !dbg !585
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.55, i64 0, i64 0), i32 noundef 5) #35, !dbg !586
  %56 = icmp eq i8* %42, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), !dbg !586
  %57 = select i1 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !586
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %55, i8* noundef %42, i8* noundef %57) #35, !dbg !586
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #35, !dbg !587
  br label %59

59:                                               ; preds = %52, %4
  tail call void @exit(i32 noundef %0) #37, !dbg !588
  unreachable, !dbg !588
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !589 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !594 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !80 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !85, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i8* %0, metadata !86, metadata !DIExpression()), !dbg !599
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !600, !tbaa !601
  %3 = icmp eq i32 %2, -1, !dbg !603
  br i1 %3, label %4, label %16, !dbg !604

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #35, !dbg !605
  call void @llvm.dbg.value(metadata i8* %5, metadata !87, metadata !DIExpression()), !dbg !606
  %6 = icmp eq i8* %5, null, !dbg !607
  br i1 %6, label %14, label %7, !dbg !608

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !609, !tbaa !610
  %9 = icmp eq i8 %8, 0, !dbg !609
  br i1 %9, label %14, label %10, !dbg !611

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !549, metadata !DIExpression()) #35, !dbg !612
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), metadata !555, metadata !DIExpression()) #35, !dbg !612
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)) #36, !dbg !614
  %12 = icmp eq i32 %11, 0, !dbg !615
  %13 = zext i1 %12 to i32, !dbg !611
  br label %14, !dbg !611

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !616, !tbaa !601
  br label %16, !dbg !617

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !618
  %18 = icmp eq i32 %17, 0, !dbg !618
  br i1 %18, label %22, label %19, !dbg !620

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !621, !tbaa !510
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !621
  br label %121, !dbg !623

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !90, metadata !DIExpression()), !dbg !599
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0)) #36, !dbg !624
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !625
  call void @llvm.dbg.value(metadata i8* %24, metadata !91, metadata !DIExpression()), !dbg !599
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #36, !dbg !626
  call void @llvm.dbg.value(metadata i8* %25, metadata !92, metadata !DIExpression()), !dbg !599
  %26 = icmp eq i8* %25, null, !dbg !627
  br i1 %26, label %53, label %27, !dbg !628

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !629
  br i1 %28, label %53, label %29, !dbg !630

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !93, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i64 0, metadata !97, metadata !DIExpression()), !dbg !631
  %30 = icmp ult i8* %24, %25, !dbg !632
  br i1 %30, label %31, label %53, !dbg !633

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #38, !dbg !599
  %33 = load i16*, i16** %32, align 8, !tbaa !510
  br label %34, !dbg !633

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !93, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i64 %36, metadata !97, metadata !DIExpression()), !dbg !631
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !634
  call void @llvm.dbg.value(metadata i8* %37, metadata !93, metadata !DIExpression()), !dbg !631
  %38 = load i8, i8* %35, align 1, !dbg !634, !tbaa !610
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !634
  %41 = load i16, i16* %40, align 2, !dbg !634, !tbaa !635
  %42 = lshr i16 %41, 13, !dbg !637
  %43 = and i16 %42, 1, !dbg !637
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !638
  call void @llvm.dbg.value(metadata i64 %45, metadata !97, metadata !DIExpression()), !dbg !631
  %46 = icmp ult i8* %37, %25, !dbg !632
  %47 = icmp ult i64 %45, 2, !dbg !639
  %48 = select i1 %46, i1 %47, i1 false, !dbg !639
  br i1 %48, label %34, label %49, !dbg !633, !llvm.loop !640

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !641
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !643
  %52 = xor i1 %50, true, !dbg !643
  br label %53, !dbg !643

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !599
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !90, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i8* %54, metadata !92, metadata !DIExpression()), !dbg !599
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)) #36, !dbg !644
  call void @llvm.dbg.value(metadata i64 %56, metadata !98, metadata !DIExpression()), !dbg !599
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !645
  call void @llvm.dbg.value(metadata i8* %57, metadata !99, metadata !DIExpression()), !dbg !599
  br label %58, !dbg !646

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !599
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !90, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i8* %59, metadata !99, metadata !DIExpression()), !dbg !599
  %61 = load i8, i8* %59, align 1, !dbg !647, !tbaa !610
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !648

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !649
  %64 = load i8, i8* %63, align 1, !dbg !652, !tbaa !610
  %65 = icmp ne i8 %64, 45, !dbg !653
  %66 = select i1 %65, i1 %60, i1 false, !dbg !654
  br label %67, !dbg !654

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !90, metadata !DIExpression()), !dbg !599
  %69 = tail call i16** @__ctype_b_loc() #38, !dbg !655
  %70 = load i16*, i16** %69, align 8, !dbg !655, !tbaa !510
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !655
  %73 = load i16, i16* %72, align 2, !dbg !655, !tbaa !635
  %74 = and i16 %73, 8192, !dbg !655
  %75 = icmp eq i16 %74, 0, !dbg !655
  br i1 %75, label %89, label %76, !dbg !657

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !658
  br i1 %77, label %91, label %78, !dbg !661

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !662
  %80 = load i8, i8* %79, align 1, !dbg !662, !tbaa !610
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !662
  %83 = load i16, i16* %82, align 2, !dbg !662, !tbaa !635
  %84 = and i16 %83, 8192, !dbg !662
  %85 = icmp eq i16 %84, 0, !dbg !662
  br i1 %85, label %86, label %91, !dbg !663

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !664
  br i1 %88, label %89, label %91, !dbg !664

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !666
  call void @llvm.dbg.value(metadata i8* %90, metadata !99, metadata !DIExpression()), !dbg !599
  br label %58, !dbg !646, !llvm.loop !667

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !669
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !510
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !669
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !670
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), metadata !555, metadata !DIExpression()) #35, !dbg !670
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !672
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !674
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !676
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !678
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !680
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !682
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !684
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !686
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !549, metadata !DIExpression()) #35, !dbg !688
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !159, metadata !DIExpression()), !dbg !599
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i64 noundef 6) #36, !dbg !690
  %96 = icmp eq i32 %95, 0, !dbg !690
  br i1 %96, label %100, label %97, !dbg !692

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i64 noundef 9) #36, !dbg !693
  %99 = icmp eq i32 %98, 0, !dbg !693
  br i1 %99, label %100, label %103, !dbg !694

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !695
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #35, !dbg !695
  br label %106, !dbg !697

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !698
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #35, !dbg !698
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !700, !tbaa !510
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !700
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !701, !tbaa !510
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !701
  %111 = ptrtoint i8* %59 to i64, !dbg !702
  %112 = sub i64 %111, %92, !dbg !702
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !702, !tbaa !510
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !702
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !703, !tbaa !510
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !703
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !704, !tbaa !510
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !704
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !705, !tbaa !510
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !705
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !706
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
declare !dbg !707 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !711 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !715 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !719 {
  %3 = alloca [8192 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !724, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i8** %1, metadata !725, metadata !DIExpression()), !dbg !729
  %4 = load i8*, i8** %1, align 8, !dbg !730, !tbaa !510
  tail call void @set_program_name(i8* noundef %4) #35, !dbg !731
  %5 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #35, !dbg !732
  %6 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #35, !dbg !733
  %7 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #35, !dbg !734
  %8 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #35, !dbg !735
  br label %9, !dbg !736

9:                                                ; preds = %21, %2
  %10 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #35, !dbg !737
  call void @llvm.dbg.value(metadata i32 %10, metadata !726, metadata !DIExpression()), !dbg !729
  switch i32 %10, label %30 [
    i32 -1, label %31
    i32 97, label %11
    i32 105, label %12
    i32 112, label %13
    i32 -2, label %23
    i32 -3, label %24
  ], !dbg !736

11:                                               ; preds = %9
  store i1 true, i1* @append, align 1, !dbg !738
  br label %21, !dbg !741

12:                                               ; preds = %9
  store i1 true, i1* @ignore_interrupts, align 1, !dbg !742
  br label %21, !dbg !743

13:                                               ; preds = %9
  %14 = load i8*, i8** @optarg, align 8, !dbg !744, !tbaa !510
  %15 = icmp eq i8* %14, null, !dbg !744
  br i1 %15, label %22, label %16, !dbg !746

16:                                               ; preds = %13
  %17 = load void ()*, void ()** @argmatch_die, align 8, !dbg !747, !tbaa !510
  %18 = tail call i64 @__xargmatch_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* noundef nonnull %14, i8** noundef getelementptr inbounds ([5 x i8*], [5 x i8*]* @output_error_args, i64 0, i64 0), i8* noundef bitcast ([4 x i32]* @output_error_types to i8*), i64 noundef 4, void ()* noundef %17, i1 noundef true) #35, !dbg !747
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* @output_error_types, i64 0, i64 %18, !dbg !747
  %20 = load i32, i32* %19, align 4, !dbg !747, !tbaa !610
  store i32 %20, i32* @output_error, align 4, !dbg !748, !tbaa !610
  br label %21, !dbg !749

21:                                               ; preds = %16, %22, %12, %11
  br label %9, !dbg !737, !llvm.loop !750

22:                                               ; preds = %13
  store i32 2, i32* @output_error, align 4, !dbg !752, !tbaa !610
  br label %21

23:                                               ; preds = %9
  tail call void @usage(i32 noundef 0) #39, !dbg !753
  unreachable, !dbg !753

24:                                               ; preds = %9
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !754, !tbaa !510
  %26 = load i8*, i8** @Version, align 8, !dbg !754, !tbaa !510
  %27 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0)) #35, !dbg !754
  %28 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0)) #35, !dbg !754
  %29 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0)) #35, !dbg !754
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* noundef %26, i8* noundef %27, i8* noundef %28, i8* noundef %29, i8* noundef null) #35, !dbg !754
  tail call void @exit(i32 noundef 0) #37, !dbg !754
  unreachable, !dbg !754

30:                                               ; preds = %9
  tail call void @usage(i32 noundef 1) #39, !dbg !755
  unreachable, !dbg !755

31:                                               ; preds = %9
  %32 = load i1, i1* @ignore_interrupts, align 1, !dbg !756
  br i1 %32, label %33, label %35, !dbg !758

33:                                               ; preds = %31
  %34 = tail call void (i32)* @signal(i32 noundef 2, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #35, !dbg !759
  br label %35, !dbg !759

35:                                               ; preds = %33, %31
  %36 = load i32, i32* @output_error, align 4, !dbg !760, !tbaa !610
  %37 = icmp eq i32 %36, 0, !dbg !762
  br i1 %37, label %43, label %38, !dbg !763

38:                                               ; preds = %35
  %39 = tail call void (i32)* @signal(i32 noundef 13, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #35, !dbg !764
  %40 = load i32, i32* @output_error, align 4, !dbg !765, !tbaa !610
  switch i32 %40, label %43 [
    i32 4, label %41
    i32 2, label %41
  ], !dbg !766

41:                                               ; preds = %38, %38
  %42 = tail call i1 @iopoll_input_ok(i32 noundef 0) #35, !dbg !767
  br label %43

43:                                               ; preds = %35, %38, %41
  %44 = phi i1 [ %42, %41 ], [ false, %38 ], [ false, %35 ], !dbg !729
  call void @llvm.dbg.value(metadata i1 %44, metadata !727, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !729
  %45 = load i32, i32* @optind, align 4, !dbg !768, !tbaa !601
  %46 = sub nsw i32 %0, %45, !dbg !769
  %47 = sext i32 %45 to i64, !dbg !770
  %48 = getelementptr inbounds i8*, i8** %1, i64 %47, !dbg !770
  call void @llvm.dbg.value(metadata i32 %46, metadata !771, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8** %48, metadata !776, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i1 %44, metadata !777, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !810
  call void @llvm.dbg.value(metadata i64 0, metadata !778, metadata !DIExpression()) #35, !dbg !810
  %49 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0, !dbg !812
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %49) #35, !dbg !812
  call void @llvm.dbg.declare(metadata [8192 x i8]* %3, metadata !782, metadata !DIExpression()) #35, !dbg !813
  call void @llvm.dbg.value(metadata i64 0, metadata !786, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 0, metadata !790, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8 1, metadata !791, metadata !DIExpression()) #35, !dbg !810
  %50 = load i1, i1* @append, align 1, !dbg !814
  %51 = select i1 %50, i32 1089, i32 577, !dbg !815
  call void @llvm.dbg.value(metadata i32 %51, metadata !792, metadata !DIExpression()) #35, !dbg !810
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !816, !tbaa !510
  tail call void @fadvise(%struct._IO_FILE* noundef %52, i32 noundef 2) #35, !dbg !817
  %53 = add i32 %46, 1, !dbg !818
  %54 = sext i32 %53 to i64, !dbg !819
  %55 = tail call noalias nonnull i8* @xnmalloc(i64 noundef %54, i64 noundef 4) #40, !dbg !820
  %56 = bitcast i8* %55 to i32*, !dbg !820
  call void @llvm.dbg.value(metadata i32* %56, metadata !779, metadata !DIExpression()) #35, !dbg !810
  br i1 %44, label %58, label %57, !dbg !821

57:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i8* undef, metadata !780, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8** %48, metadata !776, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !810
  store i32 1, i32* %56, align 4, !dbg !822, !tbaa !601
  br label %62

58:                                               ; preds = %43
  %59 = tail call noalias nonnull i8* @xnmalloc(i64 noundef %54, i64 noundef 1) #40, !dbg !823
  call void @llvm.dbg.value(metadata i8* undef, metadata !780, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8** %48, metadata !776, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !810
  store i32 1, i32* %56, align 4, !dbg !822, !tbaa !601
  %60 = tail call i1 @iopoll_output_ok(i32 noundef 1) #35, !dbg !825
  %61 = zext i1 %60 to i8, !dbg !827
  store i8 %61, i8* %59, align 1, !dbg !827, !tbaa !828
  br label %62, !dbg !830

62:                                               ; preds = %58, %57
  %63 = phi i8* [ %59, %58 ], [ undef, %57 ]
  %64 = getelementptr inbounds i8*, i8** %48, i64 -1, !dbg !831
  %65 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0), i32 noundef 5) #35, !dbg !832
  store i8* %65, i8** %64, align 8, !dbg !833, !tbaa !510
  call void @llvm.dbg.value(metadata i64 1, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 1, metadata !793, metadata !DIExpression()) #35, !dbg !834
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  %66 = icmp slt i32 %46, 1, !dbg !835
  %67 = zext i32 %53 to i64
  br i1 %66, label %70, label %74, !dbg !836

68:                                               ; preds = %103
  call void @llvm.dbg.value(metadata i64 %105, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 0, metadata !790, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i64 0, metadata !786, metadata !DIExpression()) #35, !dbg !810
  %69 = icmp eq i64 %105, 0, !dbg !837
  br i1 %69, label %233, label %70, !dbg !837

70:                                               ; preds = %62, %68
  %71 = phi i64 [ %105, %68 ], [ 1, %62 ]
  %72 = phi i1 [ %104, %68 ], [ true, %62 ]
  %73 = icmp slt i32 %46, 0
  br label %108, !dbg !837

74:                                               ; preds = %62, %103
  %75 = phi i64 [ %106, %103 ], [ 1, %62 ]
  %76 = phi i64 [ %105, %103 ], [ 1, %62 ]
  %77 = phi i1 [ %104, %103 ], [ true, %62 ]
  call void @llvm.dbg.value(metadata i64 %76, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i64 %75, metadata !793, metadata !DIExpression()) #35, !dbg !834
  %78 = getelementptr inbounds i8*, i8** %64, i64 %75, !dbg !838
  %79 = load i8*, i8** %78, align 8, !dbg !838, !tbaa !510
  %80 = tail call i32 (i8*, i32, ...) @open_safer(i8* noundef %79, i32 noundef %51, i32 noundef 438) #35, !dbg !839
  %81 = getelementptr inbounds i32, i32* %56, i64 %75, !dbg !840
  store i32 %80, i32* %81, align 4, !dbg !841, !tbaa !601
  %82 = icmp slt i32 %80, 0, !dbg !842
  br i1 %82, label %83, label %96, !dbg !843

83:                                               ; preds = %74
  br i1 %44, label %84, label %86, !dbg !844

84:                                               ; preds = %83
  %85 = getelementptr inbounds i8, i8* %63, i64 %75, !dbg !845
  store i8 0, i8* %85, align 1, !dbg !847, !tbaa !828
  br label %86, !dbg !845

86:                                               ; preds = %84, %83
  %87 = load i32, i32* @output_error, align 4, !dbg !848, !tbaa !610
  %88 = add i32 %87, -3, !dbg !848
  %89 = icmp ult i32 %88, 2, !dbg !848
  %90 = zext i1 %89 to i32, !dbg !848
  %91 = tail call i32* @__errno_location() #38, !dbg !849
  %92 = load i32, i32* %91, align 4, !dbg !849, !tbaa !601
  %93 = load i8*, i8** %78, align 8, !dbg !849, !tbaa !510
  %94 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %93) #35, !dbg !849
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %90, i32 noundef %92, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* noundef %94) #35, !dbg !849
  call void @llvm.dbg.value(metadata i32 %90, metadata !795, metadata !DIExpression()) #35, !dbg !850
  %95 = xor i1 %89, true, !dbg !851
  tail call void @llvm.assume(i1 %95) #35, !dbg !851
  br label %103, !dbg !848

96:                                               ; preds = %74
  br i1 %44, label %97, label %101, !dbg !852

97:                                               ; preds = %96
  %98 = tail call i1 @iopoll_output_ok(i32 noundef %80) #35, !dbg !854
  %99 = getelementptr inbounds i8, i8* %63, i64 %75, !dbg !856
  %100 = zext i1 %98 to i8, !dbg !857
  store i8 %100, i8* %99, align 1, !dbg !857, !tbaa !828
  br label %101, !dbg !856

101:                                              ; preds = %97, %96
  %102 = add i64 %76, 1, !dbg !858
  call void @llvm.dbg.value(metadata i64 %102, metadata !778, metadata !DIExpression()) #35, !dbg !810
  br label %103

103:                                              ; preds = %101, %86
  %104 = phi i1 [ %77, %101 ], [ false, %86 ]
  %105 = phi i64 [ %102, %101 ], [ %76, %86 ], !dbg !810
  call void @llvm.dbg.value(metadata i64 %105, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  %106 = add nuw nsw i64 %75, 1, !dbg !859
  call void @llvm.dbg.value(metadata i64 %106, metadata !793, metadata !DIExpression()) #35, !dbg !834
  %107 = icmp eq i64 %106, %67, !dbg !835
  br i1 %107, label %68, label %74, !dbg !836, !llvm.loop !860

108:                                              ; preds = %162, %70
  %109 = phi i64 [ %71, %70 ], [ %166, %162 ]
  %110 = phi i1 [ %72, %70 ], [ %165, %162 ]
  %111 = phi i32 [ 0, %70 ], [ %164, %162 ]
  %112 = phi i64 [ 0, %70 ], [ %163, %162 ]
  call void @llvm.dbg.value(metadata i64 %109, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 %111, metadata !790, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i64 %112, metadata !786, metadata !DIExpression()) #35, !dbg !810
  br i1 %44, label %113, label %154, !dbg !862

113:                                              ; preds = %108
  %114 = sext i32 %111 to i64, !dbg !863
  %115 = getelementptr inbounds i8, i8* %63, i64 %114, !dbg !863
  %116 = load i8, i8* %115, align 1, !dbg !863, !tbaa !828, !range !864
  %117 = icmp eq i8 %116, 0, !dbg !863
  br i1 %117, label %154, label %118, !dbg !865

118:                                              ; preds = %113
  %119 = getelementptr inbounds i32, i32* %56, i64 %114, !dbg !866
  %120 = load i32, i32* %119, align 4, !dbg !866, !tbaa !601
  %121 = call i32 @iopoll(i32 noundef 0, i32 noundef %120, i1 noundef true) #35, !dbg !867
  call void @llvm.dbg.value(metadata i32 %121, metadata !802, metadata !DIExpression()) #35, !dbg !868
  switch i32 %121, label %154 [
    i32 -2, label %122
    i32 -3, label %150
  ], !dbg !869

122:                                              ; preds = %118
  %123 = tail call i32* @__errno_location() #38, !dbg !870
  store i32 32, i32* %123, align 4, !dbg !873, !tbaa !601
  call void @llvm.dbg.value(metadata i32* %56, metadata !874, metadata !DIExpression()) #35, !dbg !887
  call void @llvm.dbg.value(metadata i8** %48, metadata !879, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !887
  call void @llvm.dbg.value(metadata i32 %111, metadata !880, metadata !DIExpression()) #35, !dbg !887
  call void @llvm.dbg.value(metadata i32 32, metadata !881, metadata !DIExpression()) #35, !dbg !887
  %124 = load i32, i32* @output_error, align 4
  call void @llvm.dbg.value(metadata i1 undef, metadata !882, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !887
  switch i32 %124, label %133 [
    i32 3, label %125
    i32 1, label %125
  ], !dbg !890

125:                                              ; preds = %122, %122
  %126 = add nsw i32 %124, -3, !dbg !891
  %127 = icmp ult i32 %126, 2, !dbg !891
  %128 = zext i1 %127 to i32, !dbg !891
  %129 = getelementptr inbounds i8*, i8** %64, i64 %114, !dbg !892
  %130 = load i8*, i8** %129, align 8, !dbg !892, !tbaa !510
  %131 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %130) #35, !dbg !892
  call void (i32, i32, i8*, ...) @error(i32 noundef %128, i32 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* noundef %131) #35, !dbg !892
  call void @llvm.dbg.value(metadata i32 %128, metadata !883, metadata !DIExpression()) #35, !dbg !893
  %132 = xor i1 %127, true, !dbg !894
  call void @llvm.assume(i1 %132) #35, !dbg !892
  br label %133, !dbg !895

133:                                              ; preds = %125, %122
  %134 = and i32 %124, -3, !dbg !895
  %135 = icmp ne i32 %134, 1, !dbg !895
  call void @llvm.dbg.value(metadata i1 %135, metadata !882, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !887
  store i32 -1, i32* %119, align 4, !dbg !896, !tbaa !601
  %136 = select i1 %135, i1 %110, i1 false, !dbg !897
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  %137 = add i64 %109, -1, !dbg !898
  call void @llvm.dbg.value(metadata i64 %137, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32* %56, metadata !899, metadata !DIExpression()) #35, !dbg !906
  call void @llvm.dbg.value(metadata i32 %46, metadata !904, metadata !DIExpression()) #35, !dbg !906
  call void @llvm.dbg.value(metadata i32 %111, metadata !905, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #35, !dbg !906
  %138 = call i32 @llvm.smax.i32(i32 %111, i32 %46) #35, !dbg !908
  %139 = sext i32 %138 to i64, !dbg !910
  br label %140, !dbg !908

140:                                              ; preds = %144, %133
  %141 = phi i64 [ %142, %144 ], [ %114, %133 ]
  %142 = add nsw i64 %141, 1, !dbg !912
  call void @llvm.dbg.value(metadata i64 %142, metadata !905, metadata !DIExpression()) #35, !dbg !906
  %143 = icmp eq i64 %141, %139, !dbg !910
  br i1 %143, label %162, label %144, !dbg !913, !llvm.loop !914

144:                                              ; preds = %140
  %145 = getelementptr inbounds i32, i32* %56, i64 %142, !dbg !916
  %146 = load i32, i32* %145, align 4, !dbg !916, !tbaa !601
  %147 = icmp sgt i32 %146, -1, !dbg !918
  br i1 %147, label %148, label %140, !dbg !919, !llvm.loop !920

148:                                              ; preds = %144
  %149 = trunc i64 %142 to i32, !dbg !919
  br label %162, !dbg !922, !llvm.loop !923

150:                                              ; preds = %118
  %151 = tail call i32* @__errno_location() #38, !dbg !924
  %152 = load i32, i32* %151, align 4, !dbg !924, !tbaa !601
  %153 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i64 0, i64 0), i32 noundef 5) #35, !dbg !924
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %152, i8* noundef %153) #35, !dbg !924
  call void @llvm.dbg.value(metadata i8 0, metadata !791, metadata !DIExpression()) #35, !dbg !810
  br label %154, !dbg !927

154:                                              ; preds = %150, %118, %113, %108
  %155 = phi i1 [ %110, %113 ], [ %110, %108 ], [ %110, %118 ], [ false, %150 ]
  call void @llvm.dbg.value(metadata i64 %109, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 %111, metadata !790, metadata !DIExpression()) #35, !dbg !810
  %156 = call i64 @read(i32 noundef 0, i8* noundef nonnull %49, i64 noundef 8192) #35, !dbg !928
  call void @llvm.dbg.value(metadata i64 %156, metadata !786, metadata !DIExpression()) #35, !dbg !810
  %157 = icmp slt i64 %156, 0, !dbg !929
  br i1 %157, label %158, label %168, !dbg !931

158:                                              ; preds = %154
  %159 = tail call i32* @__errno_location() #38, !dbg !932
  %160 = load i32, i32* %159, align 4, !dbg !932, !tbaa !601
  %161 = icmp eq i32 %160, 4, !dbg !933
  br i1 %161, label %162, label %225, !dbg !934

162:                                              ; preds = %140, %219, %170, %158, %148
  %163 = phi i64 [ %156, %158 ], [ %156, %170 ], [ %112, %148 ], [ %156, %219 ], [ %112, %140 ]
  %164 = phi i32 [ %111, %158 ], [ %111, %170 ], [ %149, %148 ], [ %220, %219 ], [ -1, %140 ]
  %165 = phi i1 [ %155, %158 ], [ %155, %170 ], [ %136, %148 ], [ %221, %219 ], [ %136, %140 ]
  %166 = phi i64 [ %109, %158 ], [ %109, %170 ], [ %137, %148 ], [ %222, %219 ], [ %137, %140 ]
  call void @llvm.dbg.value(metadata i64 %166, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 %164, metadata !790, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i64 %163, metadata !786, metadata !DIExpression()) #35, !dbg !810
  %167 = icmp eq i64 %166, 0, !dbg !837
  br i1 %167, label %225, label %108, !dbg !837, !llvm.loop !935

168:                                              ; preds = %154
  %169 = icmp eq i64 %156, 0, !dbg !936
  br i1 %169, label %233, label %170, !dbg !938

170:                                              ; preds = %168
  call void @llvm.dbg.value(metadata i32 0, metadata !806, metadata !DIExpression()) #35, !dbg !939
  call void @llvm.dbg.value(metadata i64 %109, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 %111, metadata !790, metadata !DIExpression()) #35, !dbg !810
  br i1 %73, label %162, label %171, !dbg !940, !llvm.loop !941

171:                                              ; preds = %170, %219
  %172 = phi i64 [ %223, %219 ], [ 0, %170 ]
  %173 = phi i64 [ %222, %219 ], [ %109, %170 ]
  %174 = phi i1 [ %221, %219 ], [ %155, %170 ]
  %175 = phi i32 [ %220, %219 ], [ %111, %170 ]
  call void @llvm.dbg.value(metadata i64 %172, metadata !806, metadata !DIExpression()) #35, !dbg !939
  call void @llvm.dbg.value(metadata i64 %173, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 %175, metadata !790, metadata !DIExpression()) #35, !dbg !810
  %176 = getelementptr inbounds i32, i32* %56, i64 %172, !dbg !942
  %177 = load i32, i32* %176, align 4, !dbg !942, !tbaa !601
  %178 = icmp sgt i32 %177, -1, !dbg !945
  br i1 %178, label %179, label %219, !dbg !946

179:                                              ; preds = %171
  %180 = call i1 @write_wait(i32 noundef %177, i8* noundef nonnull %49, i64 noundef %156) #35, !dbg !947
  br i1 %180, label %219, label %181, !dbg !948

181:                                              ; preds = %179
  call void @llvm.dbg.value(metadata i32* %56, metadata !874, metadata !DIExpression()) #35, !dbg !949
  call void @llvm.dbg.value(metadata i8** %48, metadata !879, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)) #35, !dbg !949
  call void @llvm.dbg.value(metadata i64 %172, metadata !880, metadata !DIExpression()) #35, !dbg !949
  %182 = tail call i32* @__errno_location() #38, !dbg !953
  %183 = load i32, i32* %182, align 4, !dbg !953, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %183, metadata !881, metadata !DIExpression()) #35, !dbg !949
  %184 = freeze i32 %183
  %185 = icmp eq i32 %184, 32, !dbg !954
  %186 = load i32, i32* @output_error, align 4
  call void @llvm.dbg.value(metadata i1 undef, metadata !882, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !949
  br i1 %185, label %187, label %188, !dbg !955

187:                                              ; preds = %181
  switch i32 %186, label %196 [
    i32 3, label %188
    i32 1, label %188
  ], !dbg !955

188:                                              ; preds = %187, %187, %181
  %189 = add i32 %186, -3, !dbg !956
  %190 = icmp ult i32 %189, 2, !dbg !956
  %191 = zext i1 %190 to i32, !dbg !956
  %192 = getelementptr inbounds i8*, i8** %64, i64 %172, !dbg !957
  %193 = load i8*, i8** %192, align 8, !dbg !957, !tbaa !510
  %194 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %193) #35, !dbg !957
  call void (i32, i32, i8*, ...) @error(i32 noundef %191, i32 noundef %184, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* noundef %194) #35, !dbg !957
  call void @llvm.dbg.value(metadata i32 %191, metadata !883, metadata !DIExpression()) #35, !dbg !958
  %195 = xor i1 %190, true, !dbg !959
  call void @llvm.assume(i1 %195) #35, !dbg !957
  br label %196

196:                                              ; preds = %188, %187
  %197 = icmp ne i32 %186, 3
  %198 = select i1 %185, i1 %197, i1 false, !dbg !960
  %199 = icmp ne i32 %186, 1
  %200 = select i1 %198, i1 %199, i1 false, !dbg !960
  call void @llvm.dbg.value(metadata i1 %200, metadata !882, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !949
  store i32 -1, i32* %176, align 4, !dbg !961, !tbaa !601
  %201 = select i1 %200, i1 %174, i1 false, !dbg !962
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  %202 = add i64 %173, -1, !dbg !963
  call void @llvm.dbg.value(metadata i64 %202, metadata !778, metadata !DIExpression()) #35, !dbg !810
  %203 = zext i32 %175 to i64, !dbg !964
  %204 = icmp eq i64 %172, %203, !dbg !964
  br i1 %204, label %205, label %219, !dbg !966

205:                                              ; preds = %196
  call void @llvm.dbg.value(metadata i32* %56, metadata !899, metadata !DIExpression()) #35, !dbg !967
  call void @llvm.dbg.value(metadata i32 %46, metadata !904, metadata !DIExpression()) #35, !dbg !967
  call void @llvm.dbg.value(metadata i32 %175, metadata !905, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #35, !dbg !967
  %206 = sext i32 %175 to i64, !dbg !969
  %207 = call i32 @llvm.smax.i32(i32 %175, i32 %46) #35, !dbg !969
  %208 = sext i32 %207 to i64, !dbg !970
  br label %209, !dbg !969

209:                                              ; preds = %213, %205
  %210 = phi i64 [ %211, %213 ], [ %206, %205 ]
  %211 = add nsw i64 %210, 1, !dbg !971
  call void @llvm.dbg.value(metadata i64 %211, metadata !905, metadata !DIExpression()) #35, !dbg !967
  %212 = icmp eq i64 %210, %208, !dbg !970
  br i1 %212, label %219, label %213, !dbg !972

213:                                              ; preds = %209
  %214 = getelementptr inbounds i32, i32* %56, i64 %211, !dbg !973
  %215 = load i32, i32* %214, align 4, !dbg !973, !tbaa !601
  %216 = icmp sgt i32 %215, -1, !dbg !974
  br i1 %216, label %217, label %209, !dbg !975, !llvm.loop !976

217:                                              ; preds = %213
  %218 = trunc i64 %211 to i32, !dbg !975
  br label %219, !dbg !978

219:                                              ; preds = %209, %217, %196, %179, %171
  %220 = phi i32 [ %175, %179 ], [ %175, %196 ], [ %175, %171 ], [ %218, %217 ], [ -1, %209 ], !dbg !979
  %221 = phi i1 [ %174, %179 ], [ %201, %196 ], [ %174, %171 ], [ %201, %217 ], [ %201, %209 ]
  %222 = phi i64 [ %173, %179 ], [ %202, %196 ], [ %173, %171 ], [ %202, %217 ], [ %202, %209 ], !dbg !979
  call void @llvm.dbg.value(metadata i64 %222, metadata !778, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 %220, metadata !790, metadata !DIExpression()) #35, !dbg !810
  %223 = add nuw nsw i64 %172, 1, !dbg !980
  call void @llvm.dbg.value(metadata i64 %223, metadata !806, metadata !DIExpression()) #35, !dbg !939
  %224 = icmp eq i64 %223, %67, !dbg !981
  br i1 %224, label %162, label %171, !dbg !940, !llvm.loop !982

225:                                              ; preds = %162, %158
  %226 = phi i64 [ %163, %162 ], [ %156, %158 ], !dbg !810
  %227 = phi i1 [ %165, %162 ], [ %155, %158 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i64 %226, metadata !786, metadata !DIExpression()) #35, !dbg !810
  %228 = icmp eq i64 %226, -1, !dbg !984
  br i1 %228, label %229, label %233, !dbg !986

229:                                              ; preds = %225
  %230 = tail call i32* @__errno_location() #38, !dbg !987
  %231 = load i32, i32* %230, align 4, !dbg !987, !tbaa !601
  %232 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i32 noundef 5) #35, !dbg !987
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %231, i8* noundef %232) #35, !dbg !987
  call void @llvm.dbg.value(metadata i8 0, metadata !791, metadata !DIExpression()) #35, !dbg !810
  br label %233, !dbg !989

233:                                              ; preds = %168, %229, %225, %68
  %234 = phi i1 [ false, %229 ], [ %227, %225 ], [ %104, %68 ], [ %155, %168 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  call void @llvm.dbg.value(metadata i32 1, metadata !808, metadata !DIExpression()) #35, !dbg !990
  br i1 %66, label %237, label %235, !dbg !991

235:                                              ; preds = %233
  %236 = zext i32 %53 to i64, !dbg !992
  br label %239, !dbg !991

237:                                              ; preds = %253, %233
  %238 = phi i1 [ %234, %233 ], [ %254, %253 ]
  call void @free(i8* noundef nonnull %55) #35, !dbg !994
  br i1 %44, label %257, label %258, !dbg !995

239:                                              ; preds = %253, %235
  %240 = phi i64 [ 1, %235 ], [ %255, %253 ]
  %241 = phi i1 [ %234, %235 ], [ %254, %253 ]
  call void @llvm.dbg.value(metadata i64 %240, metadata !808, metadata !DIExpression()) #35, !dbg !990
  %242 = getelementptr inbounds i32, i32* %56, i64 %240, !dbg !996
  %243 = load i32, i32* %242, align 4, !dbg !996, !tbaa !601
  %244 = icmp sgt i32 %243, -1, !dbg !998
  br i1 %244, label %245, label %253, !dbg !999

245:                                              ; preds = %239
  %246 = call i1 @close_wait(i32 noundef %243) #35, !dbg !1000
  br i1 %246, label %253, label %247, !dbg !1001

247:                                              ; preds = %245
  %248 = tail call i32* @__errno_location() #38, !dbg !1002
  %249 = load i32, i32* %248, align 4, !dbg !1002, !tbaa !601
  %250 = getelementptr inbounds i8*, i8** %64, i64 %240, !dbg !1002
  %251 = load i8*, i8** %250, align 8, !dbg !1002, !tbaa !510
  %252 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %251) #35, !dbg !1002
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %249, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* noundef %252) #35, !dbg !1002
  call void @llvm.dbg.value(metadata i8 0, metadata !791, metadata !DIExpression()) #35, !dbg !810
  br label %253, !dbg !1004

253:                                              ; preds = %247, %245, %239
  %254 = phi i1 [ %241, %245 ], [ false, %247 ], [ %241, %239 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !791, metadata !DIExpression()) #35, !dbg !810
  %255 = add nuw nsw i64 %240, 1, !dbg !1005
  call void @llvm.dbg.value(metadata i64 %255, metadata !808, metadata !DIExpression()) #35, !dbg !990
  %256 = icmp eq i64 %255, %236, !dbg !992
  br i1 %256, label %237, label %239, !dbg !991, !llvm.loop !1006

257:                                              ; preds = %237
  call void @free(i8* noundef %63) #35, !dbg !1008
  br label %258, !dbg !1008

258:                                              ; preds = %237, %257
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %49) #35, !dbg !1010
  call void @llvm.dbg.value(metadata i1 %238, metadata !728, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !729
  %259 = call i32 @close(i32 noundef 0) #35, !dbg !1011
  %260 = icmp eq i32 %259, 0, !dbg !1013
  br i1 %260, label %265, label %261, !dbg !1014

261:                                              ; preds = %258
  %262 = tail call i32* @__errno_location() #38, !dbg !1015
  %263 = load i32, i32* %262, align 4, !dbg !1015, !tbaa !601
  %264 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 noundef 5) #35, !dbg !1015
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %263, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* noundef %264) #35, !dbg !1015
  unreachable, !dbg !1015

265:                                              ; preds = %258
  %266 = xor i1 %238, true, !dbg !1016
  %267 = zext i1 %266 to i32, !dbg !1016
  ret i32 %267, !dbg !1017
}

; Function Attrs: nounwind
declare !dbg !1018 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1021 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1022 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1025 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1031 void (i32)* @signal(i32 noundef, void (i32)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #15

declare !dbg !1034 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @iopoll(i32 noundef %0, i32 noundef %1, i1 noundef %2) local_unnamed_addr #12 !dbg !1038 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1042, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i32 %1, metadata !1043, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i1 %2, metadata !1044, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1045
  %4 = tail call fastcc i32 @iopoll_internal(i32 noundef %0, i32 noundef %1, i1 noundef %2, i1 noundef true), !dbg !1046
  ret i32 %4, !dbg !1047
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @iopoll_internal(i32 noundef %0, i32 noundef %1, i1 noundef %2, i1 noundef %3) unnamed_addr #12 !dbg !1048 {
  %5 = alloca [2 x %struct.pollfd], align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1052, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i32 %1, metadata !1053, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i1 %2, metadata !1054, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1067
  call void @llvm.dbg.value(metadata i1 %3, metadata !1055, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1067
  %6 = and i32 %1, %0, !dbg !1068
  %7 = icmp eq i32 %6, -1, !dbg !1068
  br i1 %7, label %8, label %9, !dbg !1068

8:                                                ; preds = %4
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.28, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.iopoll_internal, i64 0, i64 0)) #37, !dbg !1068
  unreachable, !dbg !1068

9:                                                ; preds = %4
  %10 = bitcast [2 x %struct.pollfd]* %5 to i8*, !dbg !1071
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #35, !dbg !1071
  call void @llvm.dbg.declare(metadata [2 x %struct.pollfd]* %5, metadata !1056, metadata !DIExpression()), !dbg !1072
  %11 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %5, i64 0, i64 0, !dbg !1073
  %12 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %5, i64 0, i64 0, i32 0, !dbg !1074
  store i32 %0, i32* %12, align 4, !dbg !1074, !tbaa !1075
  %13 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %5, i64 0, i64 0, i32 1, !dbg !1074
  store i16 129, i16* %13, align 4, !dbg !1074, !tbaa !1077
  %14 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %5, i64 0, i64 0, i32 2, !dbg !1074
  store i16 0, i16* %14, align 2, !dbg !1074, !tbaa !1078
  %15 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %5, i64 0, i64 1, i32 0, !dbg !1079
  store i32 %1, i32* %15, align 4, !dbg !1079, !tbaa !1075
  %16 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %5, i64 0, i64 1, i32 1, !dbg !1079
  store i16 128, i16* %16, align 4, !dbg !1079, !tbaa !1077
  %17 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %5, i64 0, i64 1, i32 2, !dbg !1079
  store i16 0, i16* %17, align 2, !dbg !1079, !tbaa !1078
  call void @llvm.dbg.value(metadata i32 56, metadata !1065, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i32 0, metadata !1066, metadata !DIExpression()), !dbg !1067
  br i1 %3, label %19, label %18, !dbg !1080

18:                                               ; preds = %9
  store i16 4, i16* %16, align 4, !dbg !1081, !tbaa !1077
  store i16 4, i16* %13, align 4, !dbg !1084, !tbaa !1077
  call void @llvm.dbg.value(metadata i32 4, metadata !1065, metadata !DIExpression()), !dbg !1067
  br label %19, !dbg !1085

19:                                               ; preds = %18, %9
  %20 = phi i32 [ 56, %9 ], [ 4, %18 ], !dbg !1067
  call void @llvm.dbg.value(metadata i32 %20, metadata !1065, metadata !DIExpression()), !dbg !1067
  %21 = sext i1 %2 to i32
  br label %22, !dbg !1086

22:                                               ; preds = %32, %19
  %23 = phi i32 [ 0, %19 ], [ %30, %32 ], !dbg !1067
  call void @llvm.dbg.value(metadata i32 %23, metadata !1066, metadata !DIExpression()), !dbg !1067
  %24 = icmp sgt i32 %23, -1, !dbg !1087
  br i1 %24, label %29, label %25, !dbg !1088

25:                                               ; preds = %22
  %26 = tail call i32* @__errno_location() #38, !dbg !1089
  %27 = load i32, i32* %26, align 4, !dbg !1089, !tbaa !601
  %28 = icmp eq i32 %27, 4, !dbg !1090
  br i1 %28, label %29, label %49, !dbg !1086

29:                                               ; preds = %22, %25
  %30 = call i32 @poll(%struct.pollfd* noundef nonnull %11, i64 noundef 2, i32 noundef %21) #35, !dbg !1091
  call void @llvm.dbg.value(metadata i32 %30, metadata !1066, metadata !DIExpression()), !dbg !1067
  %31 = icmp slt i32 %30, 0, !dbg !1093
  br i1 %31, label %32, label %33, !dbg !1095

32:                                               ; preds = %29, %42
  br label %22, !dbg !1067, !llvm.loop !1096

33:                                               ; preds = %29
  %34 = icmp ne i32 %30, 0, !dbg !1098
  %35 = or i1 %34, %2, !dbg !1100
  br i1 %35, label %36, label %49, !dbg !1100

36:                                               ; preds = %33
  %37 = icmp eq i32 %30, 0, !dbg !1101
  br i1 %37, label %38, label %39, !dbg !1104

38:                                               ; preds = %36
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.28, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.iopoll_internal, i64 0, i64 0)) #37, !dbg !1101
  unreachable, !dbg !1101

39:                                               ; preds = %36
  %40 = load i16, i16* %14, align 2, !dbg !1105, !tbaa !1078
  %41 = icmp eq i16 %40, 0, !dbg !1107
  br i1 %41, label %42, label %49, !dbg !1108

42:                                               ; preds = %39
  %43 = load i16, i16* %17, align 2, !dbg !1109, !tbaa !1078
  %44 = zext i16 %43 to i32, !dbg !1111
  %45 = and i32 %20, %44, !dbg !1112
  %46 = icmp eq i32 %45, 0, !dbg !1112
  br i1 %46, label %32, label %47, !dbg !1113

47:                                               ; preds = %42
  %48 = select i1 %3, i32 -2, i32 0, !dbg !1114
  br label %49, !dbg !1115

49:                                               ; preds = %25, %39, %33, %47
  %50 = phi i32 [ %48, %47 ], [ -3, %25 ], [ 0, %39 ], [ 0, %33 ], !dbg !1067
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #35, !dbg !1116
  ret i32 %50, !dbg !1116
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #9

declare i32 @poll(%struct.pollfd* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local i1 @iopoll_input_ok(i32 noundef %0) local_unnamed_addr #16 !dbg !1117 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1121, metadata !DIExpression()), !dbg !1159
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1160
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #35, !dbg !1160
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !1122, metadata !DIExpression()), !dbg !1161
  %4 = call i32 @fstat(i32 noundef %0, %struct.stat* noundef nonnull %2) #35, !dbg !1162
  %5 = icmp eq i32 %4, 0, !dbg !1163
  br i1 %5, label %6, label %13, !dbg !1164

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1165
  %8 = load i32, i32* %7, align 8, !dbg !1165, !tbaa !1166
  %9 = and i32 %8, 61440, !dbg !1165
  %10 = icmp ne i32 %9, 32768, !dbg !1165
  %11 = icmp ne i32 %9, 24576, !dbg !1170
  %12 = and i1 %10, %11, !dbg !1170
  br label %13

13:                                               ; preds = %6, %1
  %14 = phi i1 [ true, %1 ], [ %12, %6 ]
  call void @llvm.dbg.value(metadata i1 undef, metadata !1158, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1159
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #35, !dbg !1171
  ret i1 %14, !dbg !1172
}

; Function Attrs: nofree nounwind
declare !dbg !1173 noundef i32 @fstat(i32 noundef, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i1 @iopoll_output_ok(i32 noundef %0) local_unnamed_addr #12 !dbg !1178 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1180, metadata !DIExpression()), !dbg !1181
  %2 = tail call i32 @isapipe(i32 noundef %0) #35, !dbg !1182
  %3 = icmp sgt i32 %2, 0, !dbg !1183
  ret i1 %3, !dbg !1184
}

; Function Attrs: nounwind uwtable
define dso_local i1 @close_wait(i32 noundef %0) local_unnamed_addr #12 !dbg !1185 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1187, metadata !DIExpression()), !dbg !1188
  %2 = tail call i32* @__errno_location() #38, !dbg !1188
  br label %3, !dbg !1189

3:                                                ; preds = %6, %1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1190, metadata !DIExpression()) #35, !dbg !1193
  %4 = load i32, i32* %2, align 4, !dbg !1195, !tbaa !601
  %5 = icmp eq i32 %4, 11, !dbg !1195
  br i1 %5, label %6, label %10, !dbg !1195

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @iopoll_internal(i32 noundef -1, i32 noundef %0, i1 noundef true, i1 noundef false) #35, !dbg !1197
  %8 = icmp eq i32 %7, 0, !dbg !1199
  br i1 %8, label %3, label %9, !dbg !1200, !llvm.loop !1201

9:                                                ; preds = %6
  store i32 11, i32* %2, align 4, !dbg !1203, !tbaa !601
  br label %10, !dbg !1205

10:                                               ; preds = %3, %9
  %11 = tail call i32 @close(i32 noundef %0) #35, !dbg !1206
  %12 = icmp eq i32 %11, 0, !dbg !1207
  ret i1 %12, !dbg !1208
}

; Function Attrs: nounwind uwtable
define dso_local i1 @write_wait(i32 noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #12 !dbg !1209 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1213, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %1, metadata !1214, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i64 %2, metadata !1215, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %1, metadata !1216, metadata !DIExpression()), !dbg !1221
  %4 = tail call i64 @write(i32 noundef %0, i8* noundef %1, i64 noundef %2) #35, !dbg !1222
  call void @llvm.dbg.value(metadata i64 %4, metadata !1219, metadata !DIExpression()), !dbg !1223
  %5 = icmp sgt i64 %4, 0, !dbg !1224
  %6 = select i1 %5, i64 %4, i64 0, !dbg !1224
  call void @llvm.dbg.value(metadata i64 %6, metadata !1219, metadata !DIExpression()), !dbg !1223
  %7 = sub i64 %2, %6, !dbg !1225
  call void @llvm.dbg.value(metadata i64 %7, metadata !1215, metadata !DIExpression()), !dbg !1221
  %8 = icmp eq i64 %7, 0, !dbg !1226
  br i1 %8, label %28, label %9, !dbg !1228

9:                                                ; preds = %3
  %10 = tail call i32* @__errno_location() #38, !dbg !1221
  br label %11, !dbg !1228

11:                                               ; preds = %9, %21
  %12 = phi i64 [ %7, %9 ], [ %26, %21 ]
  %13 = phi i64 [ %6, %9 ], [ %25, %21 ]
  %14 = phi i8* [ %1, %9 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata i8* %14, metadata !1216, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 %0, metadata !1190, metadata !DIExpression()) #35, !dbg !1229
  %15 = load i32, i32* %10, align 4, !dbg !1232, !tbaa !601
  %16 = icmp eq i32 %15, 11, !dbg !1232
  br i1 %16, label %17, label %28, !dbg !1232

17:                                               ; preds = %11
  %18 = tail call fastcc i32 @iopoll_internal(i32 noundef -1, i32 noundef %0, i1 noundef true, i1 noundef false) #35, !dbg !1233
  %19 = icmp eq i32 %18, 0, !dbg !1234
  br i1 %19, label %21, label %20, !dbg !1235

20:                                               ; preds = %17
  store i32 11, i32* %10, align 4, !dbg !1236, !tbaa !601
  br label %28, !dbg !1237

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, i8* %14, i64 %13, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %22, metadata !1216, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i64 %12, metadata !1215, metadata !DIExpression()), !dbg !1221
  %23 = tail call i64 @write(i32 noundef %0, i8* noundef %22, i64 noundef %12) #35, !dbg !1222
  call void @llvm.dbg.value(metadata i64 %23, metadata !1219, metadata !DIExpression()), !dbg !1223
  %24 = icmp sgt i64 %23, 0, !dbg !1224
  %25 = select i1 %24, i64 %23, i64 0, !dbg !1224
  call void @llvm.dbg.value(metadata i64 %25, metadata !1219, metadata !DIExpression()), !dbg !1223
  %26 = sub i64 %12, %25, !dbg !1225
  call void @llvm.dbg.value(metadata i64 %26, metadata !1215, metadata !DIExpression()), !dbg !1221
  %27 = icmp eq i64 %26, 0, !dbg !1226
  br i1 %27, label %28, label %11, !dbg !1228, !llvm.loop !1239

28:                                               ; preds = %21, %11, %3, %20
  %29 = phi i1 [ false, %20 ], [ true, %3 ], [ %16, %11 ], [ %16, %21 ]
  call void @llvm.dbg.value(metadata i8* %22, metadata !1216, metadata !DIExpression()), !dbg !1221
  ret i1 %29, !dbg !1242
}

; Function Attrs: nofree
declare !dbg !1243 noundef i64 @write(i32 noundef, i8* nocapture noundef readonly, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal void @__argmatch_die() #12 !dbg !1246 {
  tail call void @usage(i32 noundef 1) #35, !dbg !1247
  ret void, !dbg !1248
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @argmatch(i8* nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i8* noundef readonly %2, i64 noundef %3) local_unnamed_addr #17 !dbg !1249 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1254, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i8** %1, metadata !1255, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i8* %2, metadata !1256, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i64 %3, metadata !1257, metadata !DIExpression()), !dbg !1263
  %5 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %5, metadata !1258, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i64 -1, metadata !1259, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i8 0, metadata !1260, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i64 0, metadata !1261, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1263
  %6 = load i8*, i8** %1, align 8, !dbg !1266, !tbaa !510
  %7 = icmp eq i8* %6, null, !dbg !1268
  br i1 %7, label %40, label %8, !dbg !1268

8:                                                ; preds = %4
  %9 = icmp eq i8* %2, null
  br label %10, !dbg !1268

10:                                               ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i64 [ 0, %8 ], [ %34, %31 ]
  %13 = phi i1 [ false, %8 ], [ %33, %31 ]
  %14 = phi i64 [ -1, %8 ], [ %32, %31 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !1261, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i64 %14, metadata !1259, metadata !DIExpression()), !dbg !1263
  %15 = tail call i32 @strncmp(i8* noundef nonnull %11, i8* noundef %0, i64 noundef %5) #36, !dbg !1269
  %16 = icmp eq i32 %15, 0, !dbg !1269
  br i1 %16, label %17, label %31, !dbg !1272

17:                                               ; preds = %10
  %18 = tail call i64 @strlen(i8* noundef nonnull %11) #36, !dbg !1273
  %19 = icmp eq i64 %18, %5, !dbg !1276
  br i1 %19, label %40, label %20, !dbg !1277

20:                                               ; preds = %17
  %21 = icmp eq i64 %14, -1, !dbg !1278
  br i1 %21, label %31, label %22, !dbg !1280

22:                                               ; preds = %20
  br i1 %9, label %30, label %23, !dbg !1281

23:                                               ; preds = %22
  %24 = mul i64 %14, %3, !dbg !1284
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !1285
  %26 = mul i64 %12, %3, !dbg !1286
  %27 = getelementptr inbounds i8, i8* %2, i64 %26, !dbg !1287
  call void @llvm.dbg.value(metadata i8* %25, metadata !1288, metadata !DIExpression()) #35, !dbg !1295
  call void @llvm.dbg.value(metadata i8* %27, metadata !1293, metadata !DIExpression()) #35, !dbg !1295
  call void @llvm.dbg.value(metadata i64 %3, metadata !1294, metadata !DIExpression()) #35, !dbg !1295
  %28 = tail call i32 @bcmp(i8* nonnull %25, i8* nonnull %27, i64 %3) #35, !dbg !1297
  %29 = icmp eq i32 %28, 0, !dbg !1298
  br i1 %29, label %31, label %30, !dbg !1299

30:                                               ; preds = %23, %22
  call void @llvm.dbg.value(metadata i8 1, metadata !1260, metadata !DIExpression()), !dbg !1263
  br label %31, !dbg !1300

31:                                               ; preds = %20, %10, %30, %23
  %32 = phi i64 [ %14, %10 ], [ %14, %30 ], [ %14, %23 ], [ %12, %20 ], !dbg !1263
  %33 = phi i1 [ %13, %10 ], [ true, %30 ], [ %13, %23 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i64 %32, metadata !1259, metadata !DIExpression()), !dbg !1263
  %34 = add i64 %12, 1, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %34, metadata !1261, metadata !DIExpression()), !dbg !1265
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !1266
  %36 = load i8*, i8** %35, align 8, !dbg !1266, !tbaa !510
  %37 = icmp eq i8* %36, null, !dbg !1268
  br i1 %37, label %38, label %10, !dbg !1268, !llvm.loop !1303

38:                                               ; preds = %31
  %39 = select i1 %33, i64 -2, i64 %32, !dbg !1305
  br label %40, !dbg !1305

40:                                               ; preds = %17, %38, %4
  %41 = phi i64 [ -1, %4 ], [ %39, %38 ], [ %12, %17 ], !dbg !1263
  ret i64 %41, !dbg !1307
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @argmatch_exact(i8* nocapture noundef readonly %0, i8** nocapture noundef readonly %1) local_unnamed_addr #17 !dbg !1308 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1312, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i8** %1, metadata !1313, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 0, metadata !1314, metadata !DIExpression()), !dbg !1317
  %3 = load i8*, i8** %1, align 8, !dbg !1318, !tbaa !510
  %4 = icmp eq i8* %3, null, !dbg !1320
  br i1 %4, label %15, label %5, !dbg !1320

5:                                                ; preds = %2, %10
  %6 = phi i8* [ %13, %10 ], [ %3, %2 ]
  %7 = phi i64 [ %11, %10 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1314, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8* %6, metadata !1321, metadata !DIExpression()) #35, !dbg !1325
  call void @llvm.dbg.value(metadata i8* %0, metadata !1324, metadata !DIExpression()) #35, !dbg !1325
  %8 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !1329
  %9 = icmp eq i32 %8, 0, !dbg !1330
  br i1 %9, label %15, label %10, !dbg !1331

10:                                               ; preds = %5
  %11 = add i64 %7, 1, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %11, metadata !1314, metadata !DIExpression()), !dbg !1317
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !1318
  %13 = load i8*, i8** %12, align 8, !dbg !1318, !tbaa !510
  %14 = icmp eq i8* %13, null, !dbg !1320
  br i1 %14, label %15, label %5, !dbg !1320, !llvm.loop !1333

15:                                               ; preds = %10, %5, %2
  %16 = phi i64 [ -1, %2 ], [ %7, %5 ], [ -1, %10 ]
  ret i64 %16, !dbg !1335
}

; Function Attrs: nounwind uwtable
define dso_local void @argmatch_invalid(i8* noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !1336 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1340, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata i8* %1, metadata !1341, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata i64 %2, metadata !1342, metadata !DIExpression()), !dbg !1344
  %4 = icmp eq i64 %2, -1, !dbg !1345
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.72, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.73, i64 0, i64 0), !dbg !1346
  %6 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i8* noundef %5, i32 noundef 5) #35, !dbg !1344
  call void @llvm.dbg.value(metadata i8* %6, metadata !1343, metadata !DIExpression()), !dbg !1344
  %7 = tail call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 8, i8* noundef %1) #35, !dbg !1347
  %8 = tail call i8* @quote_n(i32 noundef 1, i8* noundef %0) #35, !dbg !1347
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %6, i8* noundef %7, i8* noundef %8) #35, !dbg !1347
  ret void, !dbg !1348
}

; Function Attrs: nounwind uwtable
define dso_local void @argmatch_valid(i8** nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #12 !dbg !1349 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !1353, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i8* %1, metadata !1354, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %2, metadata !1355, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i8* null, metadata !1356, metadata !DIExpression()), !dbg !1359
  %4 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3.75, i64 0, i64 0), i32 noundef 5) #35, !dbg !1360
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1360, !tbaa !510
  %6 = tail call i32 @fputs_unlocked(i8* noundef %4, %struct._IO_FILE* noundef %5), !dbg !1360
  call void @llvm.dbg.value(metadata i64 0, metadata !1357, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8* null, metadata !1356, metadata !DIExpression()), !dbg !1359
  %7 = load i8*, i8** %0, align 8, !dbg !1362, !tbaa !510
  %8 = icmp eq i8* %7, null, !dbg !1364
  br i1 %8, label %9, label %21, !dbg !1364

9:                                                ; preds = %41, %3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1365, !tbaa !510
  call void @llvm.dbg.value(metadata i32 10, metadata !1366, metadata !DIExpression()) #35, !dbg !1407
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !1406, metadata !DIExpression()) #35, !dbg !1407
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 5, !dbg !1409
  %12 = load i8*, i8** %11, align 8, !dbg !1409, !tbaa !1410
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 6, !dbg !1409
  %14 = load i8*, i8** %13, align 8, !dbg !1409, !tbaa !1412
  %15 = icmp ult i8* %12, %14, !dbg !1409
  br i1 %15, label %18, label %16, !dbg !1409, !prof !1413

16:                                               ; preds = %9
  %17 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %10, i32 noundef 10) #35, !dbg !1409
  br label %20, !dbg !1409

18:                                               ; preds = %9
  %19 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1409
  store i8* %19, i8** %11, align 8, !dbg !1409, !tbaa !1410
  store i8 10, i8* %12, align 1, !dbg !1409, !tbaa !610
  br label %20, !dbg !1409

20:                                               ; preds = %16, %18
  ret void, !dbg !1414

21:                                               ; preds = %3, %41
  %22 = phi i8* [ %45, %41 ], [ %7, %3 ]
  %23 = phi i64 [ %43, %41 ], [ 0, %3 ]
  %24 = phi i8* [ %42, %41 ], [ null, %3 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !1357, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8* %24, metadata !1356, metadata !DIExpression()), !dbg !1359
  %25 = icmp eq i64 %23, 0, !dbg !1415
  br i1 %25, label %31, label %26, !dbg !1417

26:                                               ; preds = %21
  %27 = mul i64 %23, %2, !dbg !1418
  %28 = getelementptr inbounds i8, i8* %1, i64 %27, !dbg !1419
  call void @llvm.dbg.value(metadata i8* %24, metadata !1288, metadata !DIExpression()) #35, !dbg !1420
  call void @llvm.dbg.value(metadata i8* %28, metadata !1293, metadata !DIExpression()) #35, !dbg !1420
  call void @llvm.dbg.value(metadata i64 %2, metadata !1294, metadata !DIExpression()) #35, !dbg !1420
  %29 = tail call i32 @bcmp(i8* %24, i8* %28, i64 %2) #35, !dbg !1422
  %30 = icmp eq i32 %29, 0, !dbg !1423
  br i1 %30, label %37, label %31, !dbg !1424

31:                                               ; preds = %21, %26
  %32 = phi i64 [ %27, %26 ], [ 0, %21 ], !dbg !1425
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1427, !tbaa !510
  %34 = tail call i8* @quote(i8* noundef nonnull %22) #35, !dbg !1427
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4.76, i64 0, i64 0), i8* noundef %34) #35, !dbg !1427
  %36 = getelementptr inbounds i8, i8* %1, i64 %32, !dbg !1428
  call void @llvm.dbg.value(metadata i8* %36, metadata !1356, metadata !DIExpression()), !dbg !1359
  br label %41, !dbg !1429

37:                                               ; preds = %26
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1430, !tbaa !510
  %39 = tail call i8* @quote(i8* noundef nonnull %22) #35, !dbg !1430
  %40 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %38, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.77, i64 0, i64 0), i8* noundef %39) #35, !dbg !1430
  br label %41

41:                                               ; preds = %31, %37
  %42 = phi i8* [ %36, %31 ], [ %24, %37 ], !dbg !1359
  call void @llvm.dbg.value(metadata i8* %42, metadata !1356, metadata !DIExpression()), !dbg !1359
  %43 = add i64 %23, 1, !dbg !1432
  call void @llvm.dbg.value(metadata i64 %43, metadata !1357, metadata !DIExpression()), !dbg !1361
  %44 = getelementptr inbounds i8*, i8** %0, i64 %43, !dbg !1362
  %45 = load i8*, i8** %44, align 8, !dbg !1362, !tbaa !510
  %46 = icmp eq i8* %45, null, !dbg !1364
  br i1 %46, label %9, label %21, !dbg !1364, !llvm.loop !1433
}

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @__xargmatch_internal(i8* noundef %0, i8* noundef %1, i8** nocapture noundef readonly %2, i8* noundef readonly %3, i64 noundef %4, void ()* nocapture noundef readonly %5, i1 noundef %6) local_unnamed_addr #12 !dbg !1435 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1439, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8* %1, metadata !1440, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8** %2, metadata !1441, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8* %3, metadata !1442, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %4, metadata !1443, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata void ()* %5, metadata !1444, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i1 %6, metadata !1445, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1447
  br i1 %6, label %8, label %50, !dbg !1448

8:                                                ; preds = %7
  call void @llvm.dbg.value(metadata i8* %1, metadata !1254, metadata !DIExpression()) #35, !dbg !1449
  call void @llvm.dbg.value(metadata i8** %2, metadata !1255, metadata !DIExpression()) #35, !dbg !1449
  call void @llvm.dbg.value(metadata i8* %3, metadata !1256, metadata !DIExpression()) #35, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %4, metadata !1257, metadata !DIExpression()) #35, !dbg !1449
  %9 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #36, !dbg !1452
  call void @llvm.dbg.value(metadata i64 %9, metadata !1258, metadata !DIExpression()) #35, !dbg !1449
  call void @llvm.dbg.value(metadata i64 -1, metadata !1259, metadata !DIExpression()) #35, !dbg !1449
  call void @llvm.dbg.value(metadata i8 0, metadata !1260, metadata !DIExpression()) #35, !dbg !1449
  call void @llvm.dbg.value(metadata i64 0, metadata !1261, metadata !DIExpression()) #35, !dbg !1453
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()) #35, !dbg !1449
  %10 = load i8*, i8** %2, align 8, !dbg !1454, !tbaa !510
  %11 = icmp eq i8* %10, null, !dbg !1455
  br i1 %11, label %68, label %12, !dbg !1455

12:                                               ; preds = %8
  %13 = icmp eq i8* %3, null
  br label %14, !dbg !1455

14:                                               ; preds = %44, %12
  %15 = phi i8* [ %47, %44 ], [ %10, %12 ]
  %16 = phi i64 [ %45, %44 ], [ 0, %12 ]
  %17 = phi i1 [ true, %44 ], [ false, %12 ]
  %18 = phi i64 [ %22, %44 ], [ -1, %12 ]
  br label %19, !dbg !1455

19:                                               ; preds = %14, %38
  %20 = phi i8* [ %42, %38 ], [ %15, %14 ]
  %21 = phi i64 [ %40, %38 ], [ %16, %14 ]
  %22 = phi i64 [ %39, %38 ], [ %18, %14 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !1261, metadata !DIExpression()) #35, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %22, metadata !1259, metadata !DIExpression()) #35, !dbg !1449
  %23 = tail call i32 @strncmp(i8* noundef nonnull %20, i8* noundef %1, i64 noundef %9) #36, !dbg !1456
  %24 = icmp eq i32 %23, 0, !dbg !1456
  br i1 %24, label %25, label %38, !dbg !1457

25:                                               ; preds = %19
  %26 = tail call i64 @strlen(i8* noundef nonnull %20) #36, !dbg !1458
  %27 = icmp eq i64 %26, %9, !dbg !1459
  br i1 %27, label %63, label %28, !dbg !1460

28:                                               ; preds = %25
  %29 = icmp eq i64 %22, -1, !dbg !1461
  br i1 %29, label %38, label %30, !dbg !1462

30:                                               ; preds = %28
  br i1 %13, label %44, label %31, !dbg !1463

31:                                               ; preds = %30
  %32 = mul i64 %22, %4, !dbg !1464
  %33 = getelementptr inbounds i8, i8* %3, i64 %32, !dbg !1465
  %34 = mul i64 %21, %4, !dbg !1466
  %35 = getelementptr inbounds i8, i8* %3, i64 %34, !dbg !1467
  call void @llvm.dbg.value(metadata i8* %33, metadata !1288, metadata !DIExpression()) #35, !dbg !1468
  call void @llvm.dbg.value(metadata i8* %35, metadata !1293, metadata !DIExpression()) #35, !dbg !1468
  call void @llvm.dbg.value(metadata i64 %4, metadata !1294, metadata !DIExpression()) #35, !dbg !1468
  %36 = tail call i32 @bcmp(i8* nonnull %33, i8* nonnull %35, i64 %4) #35, !dbg !1470
  %37 = icmp eq i32 %36, 0, !dbg !1471
  br i1 %37, label %38, label %44, !dbg !1472

38:                                               ; preds = %31, %28, %19
  %39 = phi i64 [ %22, %19 ], [ %22, %31 ], [ %21, %28 ], !dbg !1449
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()) #35, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %39, metadata !1259, metadata !DIExpression()) #35, !dbg !1449
  %40 = add i64 %21, 1, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %40, metadata !1261, metadata !DIExpression()) #35, !dbg !1453
  %41 = getelementptr inbounds i8*, i8** %2, i64 %40, !dbg !1454
  %42 = load i8*, i8** %41, align 8, !dbg !1454, !tbaa !510
  %43 = icmp eq i8* %42, null, !dbg !1455
  br i1 %43, label %49, label %19, !dbg !1455, !llvm.loop !1474

44:                                               ; preds = %30, %31
  call void @llvm.dbg.value(metadata i8 poison, metadata !1260, metadata !DIExpression()) #35, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %39, metadata !1259, metadata !DIExpression()) #35, !dbg !1449
  %45 = add i64 %21, 1, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %40, metadata !1261, metadata !DIExpression()) #35, !dbg !1453
  %46 = getelementptr inbounds i8*, i8** %2, i64 %45, !dbg !1454
  %47 = load i8*, i8** %46, align 8, !dbg !1454, !tbaa !510
  %48 = icmp eq i8* %47, null, !dbg !1455
  br i1 %48, label %69, label %14, !dbg !1455, !llvm.loop !1474

49:                                               ; preds = %38
  br i1 %17, label %69, label %63, !dbg !1476

50:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %1, metadata !1312, metadata !DIExpression()) #35, !dbg !1477
  call void @llvm.dbg.value(metadata i8** %2, metadata !1313, metadata !DIExpression()) #35, !dbg !1477
  call void @llvm.dbg.value(metadata i64 0, metadata !1314, metadata !DIExpression()) #35, !dbg !1479
  %51 = load i8*, i8** %2, align 8, !dbg !1480, !tbaa !510
  %52 = icmp eq i8* %51, null, !dbg !1481
  br i1 %52, label %68, label %53, !dbg !1481

53:                                               ; preds = %50, %58
  %54 = phi i8* [ %61, %58 ], [ %51, %50 ]
  %55 = phi i64 [ %59, %58 ], [ 0, %50 ]
  call void @llvm.dbg.value(metadata i64 %55, metadata !1314, metadata !DIExpression()) #35, !dbg !1479
  call void @llvm.dbg.value(metadata i8* %54, metadata !1321, metadata !DIExpression()) #35, !dbg !1482
  call void @llvm.dbg.value(metadata i8* %1, metadata !1324, metadata !DIExpression()) #35, !dbg !1482
  %56 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(1) %1) #36, !dbg !1484
  %57 = icmp eq i32 %56, 0, !dbg !1485
  br i1 %57, label %63, label %58, !dbg !1486

58:                                               ; preds = %53
  %59 = add i64 %55, 1, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %59, metadata !1314, metadata !DIExpression()) #35, !dbg !1479
  %60 = getelementptr inbounds i8*, i8** %2, i64 %59, !dbg !1480
  %61 = load i8*, i8** %60, align 8, !dbg !1480, !tbaa !510
  %62 = icmp eq i8* %61, null, !dbg !1481
  br i1 %62, label %68, label %53, !dbg !1481, !llvm.loop !1488

63:                                               ; preds = %53, %25, %49
  %64 = phi i64 [ %39, %49 ], [ %21, %25 ], [ %55, %53 ], !dbg !1490
  call void @llvm.dbg.value(metadata i64 %64, metadata !1446, metadata !DIExpression()), !dbg !1447
  %65 = icmp sgt i64 %64, -1, !dbg !1491
  br i1 %65, label %74, label %66, !dbg !1493

66:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i8* %0, metadata !1340, metadata !DIExpression()) #35, !dbg !1494
  call void @llvm.dbg.value(metadata i8* %1, metadata !1341, metadata !DIExpression()) #35, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %64, metadata !1342, metadata !DIExpression()) #35, !dbg !1494
  %67 = icmp eq i64 %64, -1, !dbg !1496
  br i1 %67, label %68, label %69, !dbg !1497

68:                                               ; preds = %58, %8, %50, %66
  br label %69, !dbg !1497

69:                                               ; preds = %44, %49, %66, %68
  %70 = phi i8* [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.72, i64 0, i64 0), %68 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.73, i64 0, i64 0), %66 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.73, i64 0, i64 0), %49 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.73, i64 0, i64 0), %44 ]
  %71 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i8* noundef nonnull %70, i32 noundef 5) #35, !dbg !1494
  call void @llvm.dbg.value(metadata i8* %71, metadata !1343, metadata !DIExpression()) #35, !dbg !1494
  %72 = tail call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 8, i8* noundef %1) #35, !dbg !1498
  %73 = tail call i8* @quote_n(i32 noundef 1, i8* noundef %0) #35, !dbg !1498
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %71, i8* noundef %72, i8* noundef %73) #35, !dbg !1498
  tail call void @argmatch_valid(i8** noundef %2, i8* noundef %3, i64 noundef %4), !dbg !1499
  tail call void %5() #35, !dbg !1500
  br label %74, !dbg !1501

74:                                               ; preds = %63, %69
  %75 = phi i64 [ -1, %69 ], [ %64, %63 ], !dbg !1447
  ret i64 %75, !dbg !1502
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i8* @argmatch_to_argument(i8* nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i8* nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #17 !dbg !1503 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1507, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8** %1, metadata !1508, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8* %2, metadata !1509, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i64 %3, metadata !1510, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i64 0, metadata !1511, metadata !DIExpression()), !dbg !1514
  %5 = load i8*, i8** %1, align 8, !dbg !1515, !tbaa !510
  %6 = icmp eq i8* %5, null, !dbg !1517
  br i1 %6, label %21, label %7, !dbg !1517

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i64 0, metadata !1511, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i8* %0, metadata !1288, metadata !DIExpression()) #35, !dbg !1518
  call void @llvm.dbg.value(metadata i8* %2, metadata !1293, metadata !DIExpression()) #35, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %3, metadata !1294, metadata !DIExpression()) #35, !dbg !1518
  %8 = tail call i32 @bcmp(i8* %0, i8* %2, i64 %3) #35, !dbg !1521
  %9 = icmp eq i32 %8, 0, !dbg !1522
  call void @llvm.dbg.value(metadata i64 1, metadata !1511, metadata !DIExpression()), !dbg !1514
  br i1 %9, label %21, label %10, !dbg !1523

10:                                               ; preds = %7, %15
  %11 = phi i64 [ %20, %15 ], [ 1, %7 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1511, metadata !DIExpression()), !dbg !1514
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !1515
  %13 = load i8*, i8** %12, align 8, !dbg !1515, !tbaa !510
  %14 = icmp eq i8* %13, null, !dbg !1517
  br i1 %14, label %21, label %15, !dbg !1517, !llvm.loop !1524

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %11, metadata !1511, metadata !DIExpression()), !dbg !1514
  %16 = mul i64 %11, %3, !dbg !1526
  %17 = getelementptr inbounds i8, i8* %2, i64 %16, !dbg !1527
  call void @llvm.dbg.value(metadata i8* %0, metadata !1288, metadata !DIExpression()) #35, !dbg !1518
  call void @llvm.dbg.value(metadata i8* %17, metadata !1293, metadata !DIExpression()) #35, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %3, metadata !1294, metadata !DIExpression()) #35, !dbg !1518
  %18 = tail call i32 @bcmp(i8* %0, i8* %17, i64 %3) #35, !dbg !1521
  %19 = icmp eq i32 %18, 0, !dbg !1522
  %20 = add i64 %11, 1, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %20, metadata !1511, metadata !DIExpression()), !dbg !1514
  br i1 %19, label %21, label %10, !dbg !1523, !llvm.loop !1524

21:                                               ; preds = %15, %10, %7, %4
  %22 = phi i8* [ null, %4 ], [ %5, %7 ], [ null, %10 ], [ %13, %15 ], !dbg !1515
  ret i8* %22, !dbg !1529
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #19 !dbg !1530 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1532, metadata !DIExpression()), !dbg !1533
  store i8* %0, i8** @file_name, align 8, !dbg !1534, !tbaa !510
  ret void, !dbg !1535
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #19 !dbg !1536 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1540, metadata !DIExpression()), !dbg !1541
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1542, !tbaa !828
  ret void, !dbg !1543
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1544 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1549, !tbaa !510
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #35, !dbg !1550
  %3 = icmp eq i32 %2, 0, !dbg !1551
  br i1 %3, label %22, label %4, !dbg !1552

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1553, !tbaa !828, !range !864
  %6 = icmp eq i8 %5, 0, !dbg !1553
  br i1 %6, label %11, label %7, !dbg !1554

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #38, !dbg !1555
  %9 = load i32, i32* %8, align 4, !dbg !1555, !tbaa !601
  %10 = icmp eq i32 %9, 32, !dbg !1556
  br i1 %10, label %22, label %11, !dbg !1557

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.83, i64 0, i64 0), i32 noundef 5) #35, !dbg !1558
  call void @llvm.dbg.value(metadata i8* %12, metadata !1546, metadata !DIExpression()), !dbg !1559
  %13 = load i8*, i8** @file_name, align 8, !dbg !1560, !tbaa !510
  %14 = icmp eq i8* %13, null, !dbg !1560
  %15 = tail call i32* @__errno_location() #38, !dbg !1562
  %16 = load i32, i32* %15, align 4, !dbg !1562, !tbaa !601
  br i1 %14, label %19, label %17, !dbg !1563

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #35, !dbg !1564
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #35, !dbg !1564
  br label %20, !dbg !1564

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.85, i64 0, i64 0), i8* noundef %12) #35, !dbg !1565
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1566, !tbaa !601
  tail call void @_exit(i32 noundef %21) #37, !dbg !1567
  unreachable, !dbg !1567

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1568, !tbaa !510
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #35, !dbg !1570
  %25 = icmp eq i32 %24, 0, !dbg !1571
  br i1 %25, label %28, label %26, !dbg !1572

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1573, !tbaa !601
  tail call void @_exit(i32 noundef %27) #37, !dbg !1574
  unreachable, !dbg !1574

28:                                               ; preds = %22
  ret void, !dbg !1575
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #20

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #21 !dbg !1576 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1580, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i32 %1, metadata !1581, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i8* %2, metadata !1582, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1583, metadata !DIExpression()), !dbg !1585
  tail call fastcc void @flush_stdout(), !dbg !1586
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1587, !tbaa !510
  %7 = icmp eq void ()* %6, null, !dbg !1587
  br i1 %7, label %9, label %8, !dbg !1589

8:                                                ; preds = %4
  tail call void %6() #35, !dbg !1590
  br label %13, !dbg !1590

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1591, !tbaa !510
  %11 = tail call i8* @getprogname() #36, !dbg !1591
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* noundef %11) #35, !dbg !1591
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1593
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1593
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1593
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1593, !tbaa.struct !1594
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1593
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1593
  ret void, !dbg !1595
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1596 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1598, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i32 1, metadata !1600, metadata !DIExpression()) #35, !dbg !1603
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #35, !dbg !1606
  %2 = icmp slt i32 %1, 0, !dbg !1607
  br i1 %2, label %6, label %3, !dbg !1608

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1609, !tbaa !510
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #35, !dbg !1609
  br label %6, !dbg !1609

6:                                                ; preds = %3, %0
  ret void, !dbg !1610
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1611 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1613, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i32 %1, metadata !1614, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i8* %2, metadata !1615, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1616, metadata !DIExpression()), !dbg !1618
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1619, !tbaa !510
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1620
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1621, metadata !DIExpression()) #35, !dbg !1664
  call void @llvm.dbg.value(metadata i8* %2, metadata !1662, metadata !DIExpression()) #35, !dbg !1664
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1666
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1666, !noalias !1667
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1666
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #35, !dbg !1666
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1666, !noalias !1667
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1671, !tbaa !601
  %12 = add i32 %11, 1, !dbg !1671
  store i32 %12, i32* @error_message_count, align 4, !dbg !1671, !tbaa !601
  %13 = icmp eq i32 %1, 0, !dbg !1672
  br i1 %13, label %24, label %14, !dbg !1674

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1675, metadata !DIExpression()) #35, !dbg !1683
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1685
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1685
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1679, metadata !DIExpression()) #35, !dbg !1686
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #35, !dbg !1687
  call void @llvm.dbg.value(metadata i8* %16, metadata !1678, metadata !DIExpression()) #35, !dbg !1683
  %17 = icmp eq i8* %16, null, !dbg !1688
  br i1 %17, label %18, label %20, !dbg !1690

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.88, i64 0, i64 0), i32 noundef 5) #35, !dbg !1691
  call void @llvm.dbg.value(metadata i8* %19, metadata !1678, metadata !DIExpression()) #35, !dbg !1683
  br label %20, !dbg !1692

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1683
  call void @llvm.dbg.value(metadata i8* %21, metadata !1678, metadata !DIExpression()) #35, !dbg !1683
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1693, !tbaa !510
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.89, i64 0, i64 0), i8* noundef %21) #35, !dbg !1693
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1694
  br label %24, !dbg !1695

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1696, !tbaa !510
  call void @llvm.dbg.value(metadata i32 10, metadata !1697, metadata !DIExpression()) #35, !dbg !1703
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1702, metadata !DIExpression()) #35, !dbg !1703
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1705
  %27 = load i8*, i8** %26, align 8, !dbg !1705, !tbaa !1410
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1705
  %29 = load i8*, i8** %28, align 8, !dbg !1705, !tbaa !1412
  %30 = icmp ult i8* %27, %29, !dbg !1705
  br i1 %30, label %33, label %31, !dbg !1705, !prof !1413

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #35, !dbg !1705
  br label %35, !dbg !1705

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1705
  store i8* %34, i8** %26, align 8, !dbg !1705, !tbaa !1410
  store i8 10, i8* %27, align 1, !dbg !1705, !tbaa !610
  br label %35, !dbg !1705

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1706, !tbaa !510
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #35, !dbg !1706
  %38 = icmp eq i32 %0, 0, !dbg !1707
  br i1 %38, label %40, label %39, !dbg !1709

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #37, !dbg !1710
  unreachable, !dbg !1710

40:                                               ; preds = %35
  ret void, !dbg !1711
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1712 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1716 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1719 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1723 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1727, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i32 %1, metadata !1728, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8* %2, metadata !1729, metadata !DIExpression()), !dbg !1731
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1732
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1732
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1730, metadata !DIExpression()), !dbg !1733
  call void @llvm.va_start(i8* nonnull %6), !dbg !1734
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1735
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1735
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1735, !tbaa.struct !1594
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #41, !dbg !1735
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1735
  call void @llvm.va_end(i8* nonnull %6), !dbg !1736
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1737
  ret void, !dbg !1737
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #22

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #22

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #21 !dbg !222 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !240, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i32 %1, metadata !241, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8* %2, metadata !242, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i32 %3, metadata !243, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8* %4, metadata !244, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !245, metadata !DIExpression()), !dbg !1739
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1740, !tbaa !601
  %9 = icmp eq i32 %8, 0, !dbg !1740
  br i1 %9, label %24, label %10, !dbg !1742

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1743, !tbaa !601
  %12 = icmp eq i32 %11, %3, !dbg !1746
  br i1 %12, label %13, label %23, !dbg !1747

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1748, !tbaa !510
  %15 = icmp eq i8* %14, %2, !dbg !1749
  br i1 %15, label %39, label %16, !dbg !1750

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1751
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1752
  br i1 %19, label %20, label %23, !dbg !1752

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #36, !dbg !1753
  %22 = icmp eq i32 %21, 0, !dbg !1754
  br i1 %22, label %39, label %23, !dbg !1755

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1756, !tbaa !510
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1757, !tbaa !601
  br label %24, !dbg !1758

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1759
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1760, !tbaa !510
  %26 = icmp eq void ()* %25, null, !dbg !1760
  br i1 %26, label %28, label %27, !dbg !1762

27:                                               ; preds = %24
  tail call void %25() #35, !dbg !1763
  br label %32, !dbg !1763

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1764, !tbaa !510
  %30 = tail call i8* @getprogname() #36, !dbg !1764
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.92, i64 0, i64 0), i8* noundef %30) #35, !dbg !1764
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1766, !tbaa !510
  %34 = icmp eq i8* %2, null, !dbg !1766
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.94, i64 0, i64 0), !dbg !1766
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #35, !dbg !1766
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1767
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1767
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1767
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1767, !tbaa.struct !1594
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1767
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1767
  br label %39, !dbg !1768

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1768
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1769 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1773, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %1, metadata !1774, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8* %2, metadata !1775, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %3, metadata !1776, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8* %4, metadata !1777, metadata !DIExpression()), !dbg !1779
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1780
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1780
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1778, metadata !DIExpression()), !dbg !1781
  call void @llvm.va_start(i8* nonnull %8), !dbg !1782
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1783
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1783
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1783, !tbaa.struct !1594
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #41, !dbg !1783
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1783
  call void @llvm.va_end(i8* nonnull %8), !dbg !1784
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1785
  ret void, !dbg !1785
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !1786 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1792, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %1, metadata !1793, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %2, metadata !1794, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i32 %3, metadata !1795, metadata !DIExpression()), !dbg !1796
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #35, !dbg !1797
  ret void, !dbg !1798
}

; Function Attrs: nounwind
declare !dbg !1799 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !1802 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1840, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32 %1, metadata !1841, metadata !DIExpression()), !dbg !1842
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1843
  br i1 %3, label %7, label %4, !dbg !1845

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !1846
  call void @llvm.dbg.value(metadata i32 %5, metadata !1792, metadata !DIExpression()) #35, !dbg !1847
  call void @llvm.dbg.value(metadata i64 0, metadata !1793, metadata !DIExpression()) #35, !dbg !1847
  call void @llvm.dbg.value(metadata i64 0, metadata !1794, metadata !DIExpression()) #35, !dbg !1847
  call void @llvm.dbg.value(metadata i32 %1, metadata !1795, metadata !DIExpression()) #35, !dbg !1847
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #35, !dbg !1849
  br label %7, !dbg !1850

7:                                                ; preds = %4, %2
  ret void, !dbg !1851
}

; Function Attrs: nofree nounwind
declare !dbg !1852 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @open_safer(i8* nocapture noundef readonly %0, i32 noundef %1, ...) local_unnamed_addr #12 !dbg !1855 {
  %3 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1859, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i32 %1, metadata !1860, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i32 0, metadata !1861, metadata !DIExpression()), !dbg !1876
  %4 = and i32 %1, 64, !dbg !1877
  %5 = icmp eq i32 %4, 0, !dbg !1877
  br i1 %5, label %27, label %6, !dbg !1878

6:                                                ; preds = %2
  %7 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1879
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1879
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1863, metadata !DIExpression()), !dbg !1880
  call void @llvm.va_start(i8* nonnull %7), !dbg !1881
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1882
  %9 = load i32, i32* %8, align 8, !dbg !1882
  %10 = icmp sgt i32 %9, -1, !dbg !1882
  br i1 %10, label %19, label %11, !dbg !1882

11:                                               ; preds = %6
  %12 = add nsw i32 %9, 8, !dbg !1882
  store i32 %12, i32* %8, align 8, !dbg !1882
  %13 = icmp ult i32 %9, -7, !dbg !1882
  br i1 %13, label %14, label %19, !dbg !1882

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1882
  %16 = load i8*, i8** %15, align 8, !dbg !1882
  %17 = sext i32 %9 to i64, !dbg !1882
  %18 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !1882
  br label %23, !dbg !1882

19:                                               ; preds = %11, %6
  %20 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1882
  %21 = load i8*, i8** %20, align 8, !dbg !1882
  %22 = getelementptr inbounds i8, i8* %21, i64 8, !dbg !1882
  store i8* %22, i8** %20, align 8, !dbg !1882
  br label %23, !dbg !1882

23:                                               ; preds = %19, %14
  %24 = phi i8* [ %18, %14 ], [ %21, %19 ]
  %25 = bitcast i8* %24 to i32*, !dbg !1882
  %26 = load i32, i32* %25, align 8, !dbg !1882
  call void @llvm.dbg.value(metadata i32 %26, metadata !1861, metadata !DIExpression()), !dbg !1876
  call void @llvm.va_end(i8* nonnull %7), !dbg !1883
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1884
  br label %27, !dbg !1885

27:                                               ; preds = %23, %2
  %28 = phi i32 [ %26, %23 ], [ 0, %2 ], !dbg !1876
  call void @llvm.dbg.value(metadata i32 %28, metadata !1861, metadata !DIExpression()), !dbg !1876
  %29 = call i32 (i8*, i32, ...) @open(i8* noundef %0, i32 noundef %1, i32 noundef %28) #35, !dbg !1886
  %30 = call i32 @fd_safer(i32 noundef %29) #35, !dbg !1887
  ret i32 %30, !dbg !1888
}

; Function Attrs: nofree
declare !dbg !1889 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #23 !dbg !1890 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1893, !tbaa !510
  ret i8* %1, !dbg !1894
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @isapipe(i32 noundef %0) local_unnamed_addr #16 !dbg !1895 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1897, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i32 1, metadata !1898, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i8 1, metadata !1900, metadata !DIExpression()), !dbg !1925
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1926
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #35, !dbg !1926
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !1901, metadata !DIExpression()), !dbg !1927
  %4 = call i32 @fstat(i32 noundef %0, %struct.stat* noundef nonnull %2) #35, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %4, metadata !1924, metadata !DIExpression()), !dbg !1925
  %5 = icmp eq i32 %4, 0, !dbg !1929
  br i1 %5, label %6, label %16, !dbg !1931

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1932
  %8 = load i32, i32* %7, align 4, !dbg !1932, !tbaa !1933
  %9 = icmp ult i32 %8, 2, !dbg !1934
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1935
  %11 = load i32, i32* %10, align 8, !dbg !1935
  %12 = and i32 %11, 61440, !dbg !1935
  %13 = icmp eq i32 %12, 4096, !dbg !1935
  %14 = select i1 %9, i1 %13, i1 false, !dbg !1935
  %15 = zext i1 %14 to i32, !dbg !1935
  br label %16, !dbg !1936

16:                                               ; preds = %1, %6
  %17 = phi i32 [ %15, %6 ], [ %4, %1 ], !dbg !1925
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #35, !dbg !1937
  ret i32 %17, !dbg !1937
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #24 !dbg !1938 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1940, metadata !DIExpression()), !dbg !1943
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #36, !dbg !1944
  call void @llvm.dbg.value(metadata i8* %2, metadata !1941, metadata !DIExpression()), !dbg !1943
  %3 = icmp eq i8* %2, null, !dbg !1945
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1945
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1945
  call void @llvm.dbg.value(metadata i8* %5, metadata !1942, metadata !DIExpression()), !dbg !1943
  %6 = ptrtoint i8* %5 to i64, !dbg !1946
  %7 = ptrtoint i8* %0 to i64, !dbg !1946
  %8 = sub i64 %6, %7, !dbg !1946
  %9 = icmp sgt i64 %8, 6, !dbg !1948
  br i1 %9, label %10, label %19, !dbg !1949

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1950
  call void @llvm.dbg.value(metadata i8* %11, metadata !1951, metadata !DIExpression()) #35, !dbg !1956
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i64 0, i64 0), metadata !1954, metadata !DIExpression()) #35, !dbg !1956
  call void @llvm.dbg.value(metadata i64 7, metadata !1955, metadata !DIExpression()) #35, !dbg !1956
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i64 0, i64 0), i64 7) #35, !dbg !1958
  %13 = icmp eq i32 %12, 0, !dbg !1959
  br i1 %13, label %14, label %19, !dbg !1960

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1940, metadata !DIExpression()), !dbg !1943
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.110, i64 0, i64 0), i64 noundef 3) #36, !dbg !1961
  %16 = icmp eq i32 %15, 0, !dbg !1964
  %17 = select i1 %16, i64 3, i64 0, !dbg !1965
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1965
  br label %19, !dbg !1965

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1943
  call void @llvm.dbg.value(metadata i8* %21, metadata !1942, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i8* %20, metadata !1940, metadata !DIExpression()), !dbg !1943
  store i8* %20, i8** @program_name, align 8, !dbg !1966, !tbaa !510
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1967, !tbaa !510
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1968, !tbaa !510
  ret void, !dbg !1969
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !260 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !267, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8* %1, metadata !268, metadata !DIExpression()), !dbg !1970
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #35, !dbg !1971
  call void @llvm.dbg.value(metadata i8* %5, metadata !269, metadata !DIExpression()), !dbg !1970
  %6 = icmp eq i8* %5, %0, !dbg !1972
  br i1 %6, label %7, label %17, !dbg !1974

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1975
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #35, !dbg !1975
  %10 = bitcast i64* %4 to i8*, !dbg !1976
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1976
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !275, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1978, metadata !DIExpression()) #35, !dbg !1985
  call void @llvm.dbg.value(metadata i8* %10, metadata !1987, metadata !DIExpression()) #35, !dbg !1995
  call void @llvm.dbg.value(metadata i32 0, metadata !1993, metadata !DIExpression()) #35, !dbg !1995
  call void @llvm.dbg.value(metadata i64 8, metadata !1994, metadata !DIExpression()) #35, !dbg !1995
  store i64 0, i64* %4, align 8, !dbg !1997
  call void @llvm.dbg.value(metadata i32* %3, metadata !270, metadata !DIExpression(DW_OP_deref)), !dbg !1970
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #35, !dbg !1998
  %12 = icmp eq i64 %11, 2, !dbg !2000
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !270, metadata !DIExpression()), !dbg !1970
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2001
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1970
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35, !dbg !2002
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #35, !dbg !2002
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1970
  ret i8* %18, !dbg !2002
}

; Function Attrs: nounwind
declare !dbg !2003 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !2009 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2014, metadata !DIExpression()), !dbg !2017
  %2 = tail call i32* @__errno_location() #38, !dbg !2018
  %3 = load i32, i32* %2, align 4, !dbg !2018, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %3, metadata !2015, metadata !DIExpression()), !dbg !2017
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2019
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2019
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2019
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #42, !dbg !2020
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2020
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2016, metadata !DIExpression()), !dbg !2017
  store i32 %3, i32* %2, align 4, !dbg !2021, !tbaa !601
  ret %struct.quoting_options* %8, !dbg !2022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #23 !dbg !2023 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2029, metadata !DIExpression()), !dbg !2030
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2031
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2031
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2032
  %5 = load i32, i32* %4, align 8, !dbg !2032, !tbaa !2033
  ret i32 %5, !dbg !2035
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #19 !dbg !2036 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2040, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i32 %1, metadata !2041, metadata !DIExpression()), !dbg !2042
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2043
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2043
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2044
  store i32 %1, i32* %5, align 8, !dbg !2045, !tbaa !2033
  ret void, !dbg !2046
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #25 !dbg !2047 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2051, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i8 %1, metadata !2052, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i32 %2, metadata !2053, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i8 %1, metadata !2054, metadata !DIExpression()), !dbg !2059
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2060
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2060
  %6 = lshr i8 %1, 5, !dbg !2061
  %7 = zext i8 %6 to i64, !dbg !2061
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2062
  call void @llvm.dbg.value(metadata i32* %8, metadata !2055, metadata !DIExpression()), !dbg !2059
  %9 = and i8 %1, 31, !dbg !2063
  %10 = zext i8 %9 to i32, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %10, metadata !2057, metadata !DIExpression()), !dbg !2059
  %11 = load i32, i32* %8, align 4, !dbg !2064, !tbaa !601
  %12 = lshr i32 %11, %10, !dbg !2065
  %13 = and i32 %12, 1, !dbg !2066
  call void @llvm.dbg.value(metadata i32 %13, metadata !2058, metadata !DIExpression()), !dbg !2059
  %14 = and i32 %2, 1, !dbg !2067
  %15 = xor i32 %13, %14, !dbg !2068
  %16 = shl i32 %15, %10, !dbg !2069
  %17 = xor i32 %16, %11, !dbg !2070
  store i32 %17, i32* %8, align 4, !dbg !2070, !tbaa !601
  ret i32 %13, !dbg !2071
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2072 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2076, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32 %1, metadata !2077, metadata !DIExpression()), !dbg !2079
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2080
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2082
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2076, metadata !DIExpression()), !dbg !2079
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2083
  %6 = load i32, i32* %5, align 4, !dbg !2083, !tbaa !2084
  call void @llvm.dbg.value(metadata i32 %6, metadata !2078, metadata !DIExpression()), !dbg !2079
  store i32 %1, i32* %5, align 4, !dbg !2085, !tbaa !2084
  ret i32 %6, !dbg !2086
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2087 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2091, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8* %1, metadata !2092, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8* %2, metadata !2093, metadata !DIExpression()), !dbg !2094
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2095
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2097
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2091, metadata !DIExpression()), !dbg !2094
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2098
  store i32 10, i32* %6, align 8, !dbg !2099, !tbaa !2033
  %7 = icmp ne i8* %1, null, !dbg !2100
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2102
  br i1 %9, label %11, label %10, !dbg !2102

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !2103
  unreachable, !dbg !2103

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2104
  store i8* %1, i8** %12, align 8, !dbg !2105, !tbaa !2106
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2107
  store i8* %2, i8** %13, align 8, !dbg !2108, !tbaa !2109
  ret void, !dbg !2110
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2111 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2115, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %1, metadata !2116, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* %2, metadata !2117, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %3, metadata !2118, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2119, metadata !DIExpression()), !dbg !2123
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2124
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2124
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2120, metadata !DIExpression()), !dbg !2123
  %8 = tail call i32* @__errno_location() #38, !dbg !2125
  %9 = load i32, i32* %8, align 4, !dbg !2125, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %9, metadata !2121, metadata !DIExpression()), !dbg !2123
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2126
  %11 = load i32, i32* %10, align 8, !dbg !2126, !tbaa !2033
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2127
  %13 = load i32, i32* %12, align 4, !dbg !2127, !tbaa !2084
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2128
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2129
  %16 = load i8*, i8** %15, align 8, !dbg !2129, !tbaa !2106
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2130
  %18 = load i8*, i8** %17, align 8, !dbg !2130, !tbaa !2109
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2131
  call void @llvm.dbg.value(metadata i64 %19, metadata !2122, metadata !DIExpression()), !dbg !2123
  store i32 %9, i32* %8, align 4, !dbg !2132, !tbaa !601
  ret i64 %19, !dbg !2133
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2134 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2140, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %1, metadata !2141, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* %2, metadata !2142, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %3, metadata !2143, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 %4, metadata !2144, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 %5, metadata !2145, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32* %6, metadata !2146, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* %7, metadata !2147, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* %8, metadata !2148, metadata !DIExpression()), !dbg !2202
  %17 = tail call i64 @__ctype_get_mb_cur_max() #35, !dbg !2203
  %18 = icmp eq i64 %17, 1, !dbg !2204
  call void @llvm.dbg.value(metadata i1 %18, metadata !2149, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2202
  call void @llvm.dbg.value(metadata i64 0, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 0, metadata !2151, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* null, metadata !2152, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 0, metadata !2153, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 0, metadata !2154, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 %5, metadata !2155, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2202
  call void @llvm.dbg.value(metadata i8 0, metadata !2156, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 1, metadata !2157, metadata !DIExpression()), !dbg !2202
  %19 = and i32 %5, 2, !dbg !2205
  %20 = icmp ne i32 %19, 0, !dbg !2205
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
  br label %36, !dbg !2205

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2206
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2207
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2208
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2141, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2157, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2156, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2155, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2154, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %43, metadata !2153, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* %42, metadata !2152, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %41, metadata !2151, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 0, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %40, metadata !2143, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* %39, metadata !2148, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* %38, metadata !2147, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 %37, metadata !2144, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.label(metadata !2195), !dbg !2209
  call void @llvm.dbg.value(metadata i8 0, metadata !2158, metadata !DIExpression()), !dbg !2202
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
  ], !dbg !2210

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2155, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 5, metadata !2144, metadata !DIExpression()), !dbg !2202
  br label %111, !dbg !2211

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2155, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 5, metadata !2144, metadata !DIExpression()), !dbg !2202
  br i1 %45, label %111, label %51, !dbg !2211

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2212
  br i1 %52, label %111, label %53, !dbg !2216

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2212, !tbaa !610
  br label %111, !dbg !2212

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.123, i64 0, i64 0), metadata !335, metadata !DIExpression()) #35, !dbg !2217
  call void @llvm.dbg.value(metadata i32 %37, metadata !336, metadata !DIExpression()) #35, !dbg !2217
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.123, i64 0, i64 0), i32 noundef 5) #35, !dbg !2221
  call void @llvm.dbg.value(metadata i8* %55, metadata !337, metadata !DIExpression()) #35, !dbg !2217
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.123, i64 0, i64 0), !dbg !2222
  br i1 %56, label %57, label %66, !dbg !2224

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2225
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2226
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !339, metadata !DIExpression()) #35, !dbg !2227
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2228, metadata !DIExpression()) #35, !dbg !2234
  call void @llvm.dbg.value(metadata i8* %23, metadata !2236, metadata !DIExpression()) #35, !dbg !2241
  call void @llvm.dbg.value(metadata i32 0, metadata !2239, metadata !DIExpression()) #35, !dbg !2241
  call void @llvm.dbg.value(metadata i64 8, metadata !2240, metadata !DIExpression()) #35, !dbg !2241
  store i64 0, i64* %13, align 8, !dbg !2243
  call void @llvm.dbg.value(metadata i32* %12, metadata !338, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2217
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #35, !dbg !2244
  %59 = icmp eq i64 %58, 3, !dbg !2246
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !338, metadata !DIExpression()) #35, !dbg !2217
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2247
  %63 = icmp eq i32 %37, 9, !dbg !2247
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), !dbg !2247
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2247
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2248
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2248
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2217
  call void @llvm.dbg.value(metadata i8* %67, metadata !2147, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), metadata !335, metadata !DIExpression()) #35, !dbg !2249
  call void @llvm.dbg.value(metadata i32 %37, metadata !336, metadata !DIExpression()) #35, !dbg !2249
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), i32 noundef 5) #35, !dbg !2251
  call void @llvm.dbg.value(metadata i8* %68, metadata !337, metadata !DIExpression()) #35, !dbg !2249
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), !dbg !2252
  br i1 %69, label %70, label %79, !dbg !2253

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2254
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2255
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !339, metadata !DIExpression()) #35, !dbg !2256
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2228, metadata !DIExpression()) #35, !dbg !2257
  call void @llvm.dbg.value(metadata i8* %26, metadata !2236, metadata !DIExpression()) #35, !dbg !2259
  call void @llvm.dbg.value(metadata i32 0, metadata !2239, metadata !DIExpression()) #35, !dbg !2259
  call void @llvm.dbg.value(metadata i64 8, metadata !2240, metadata !DIExpression()) #35, !dbg !2259
  store i64 0, i64* %11, align 8, !dbg !2261
  call void @llvm.dbg.value(metadata i32* %10, metadata !338, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2249
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #35, !dbg !2262
  %72 = icmp eq i64 %71, 3, !dbg !2263
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !338, metadata !DIExpression()) #35, !dbg !2249
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2264
  %76 = icmp eq i32 %37, 9, !dbg !2264
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), !dbg !2264
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2264
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2265
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2265
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2148, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* %80, metadata !2147, metadata !DIExpression()), !dbg !2202
  br i1 %45, label %97, label %82, !dbg !2266

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2159, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 0, metadata !2150, metadata !DIExpression()), !dbg !2202
  %83 = load i8, i8* %80, align 1, !dbg !2268, !tbaa !610
  %84 = icmp eq i8 %83, 0, !dbg !2270
  br i1 %84, label %97, label %85, !dbg !2270

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2159, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %88, metadata !2150, metadata !DIExpression()), !dbg !2202
  %89 = icmp ult i64 %88, %48, !dbg !2271
  br i1 %89, label %90, label %92, !dbg !2274

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2271
  store i8 %86, i8* %91, align 1, !dbg !2271, !tbaa !610
  br label %92, !dbg !2271

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %93, metadata !2150, metadata !DIExpression()), !dbg !2202
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2275
  call void @llvm.dbg.value(metadata i8* %94, metadata !2159, metadata !DIExpression()), !dbg !2267
  %95 = load i8, i8* %94, align 1, !dbg !2268, !tbaa !610
  %96 = icmp eq i8 %95, 0, !dbg !2270
  br i1 %96, label %97, label %85, !dbg !2270, !llvm.loop !2276

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2278
  call void @llvm.dbg.value(metadata i64 %98, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 1, metadata !2154, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* %81, metadata !2152, metadata !DIExpression()), !dbg !2202
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #36, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %99, metadata !2153, metadata !DIExpression()), !dbg !2202
  br label %111, !dbg !2280

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2154, metadata !DIExpression()), !dbg !2202
  br label %102, !dbg !2281

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2155, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2154, metadata !DIExpression()), !dbg !2202
  br i1 %45, label %102, label %105, !dbg !2282

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2155, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2154, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 2, metadata !2144, metadata !DIExpression()), !dbg !2202
  br label %111, !dbg !2283

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2155, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2154, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 2, metadata !2144, metadata !DIExpression()), !dbg !2202
  br i1 %45, label %111, label %105, !dbg !2283

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2284
  br i1 %107, label %111, label %108, !dbg !2288

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2284, !tbaa !610
  br label %111, !dbg !2284

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2155, metadata !DIExpression()), !dbg !2202
  br label %111, !dbg !2289

110:                                              ; preds = %36
  call void @abort() #37, !dbg !2290
  unreachable, !dbg !2290

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2278
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.125, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.126, i64 0, i64 0), %102 ], !dbg !2202
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2202
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2155, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2154, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %117, metadata !2153, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* %116, metadata !2152, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %115, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* %114, metadata !2148, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* %113, metadata !2147, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 %112, metadata !2144, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 0, metadata !2164, metadata !DIExpression()), !dbg !2291
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
  br label %132, !dbg !2292

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2278
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2206
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2291
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2141, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %139, metadata !2164, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 poison, metadata !2158, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2157, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2156, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %135, metadata !2151, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %134, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %133, metadata !2143, metadata !DIExpression()), !dbg !2202
  %141 = icmp eq i64 %133, -1, !dbg !2293
  br i1 %141, label %142, label %146, !dbg !2294

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2295
  %144 = load i8, i8* %143, align 1, !dbg !2295, !tbaa !610
  %145 = icmp eq i8 %144, 0, !dbg !2296
  br i1 %145, label %596, label %148, !dbg !2297

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2298
  br i1 %147, label %596, label %148, !dbg !2297

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2166, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 0, metadata !2169, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 0, metadata !2170, metadata !DIExpression()), !dbg !2299
  br i1 %123, label %149, label %163, !dbg !2300

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2302
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2303
  br i1 %151, label %152, label %154, !dbg !2303

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %153, metadata !2143, metadata !DIExpression()), !dbg !2202
  br label %154, !dbg !2305

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2305
  call void @llvm.dbg.value(metadata i64 %155, metadata !2143, metadata !DIExpression()), !dbg !2202
  %156 = icmp ugt i64 %150, %155, !dbg !2306
  br i1 %156, label %163, label %157, !dbg !2307

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2308
  call void @llvm.dbg.value(metadata i8* %158, metadata !2309, metadata !DIExpression()) #35, !dbg !2314
  call void @llvm.dbg.value(metadata i8* %116, metadata !2312, metadata !DIExpression()) #35, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %117, metadata !2313, metadata !DIExpression()) #35, !dbg !2314
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #35, !dbg !2316
  %160 = icmp ne i32 %159, 0, !dbg !2317
  %161 = or i1 %160, %125, !dbg !2318
  %162 = xor i1 %160, true, !dbg !2318
  br i1 %161, label %163, label %647, !dbg !2318

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2166, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %164, metadata !2143, metadata !DIExpression()), !dbg !2202
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2319
  %167 = load i8, i8* %166, align 1, !dbg !2319, !tbaa !610
  call void @llvm.dbg.value(metadata i8 %167, metadata !2171, metadata !DIExpression()), !dbg !2299
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
  ], !dbg !2320

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2321

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2322

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2169, metadata !DIExpression()), !dbg !2299
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2326
  br i1 %171, label %188, label %172, !dbg !2326

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2328
  br i1 %173, label %174, label %176, !dbg !2332

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2328
  store i8 39, i8* %175, align 1, !dbg !2328, !tbaa !610
  br label %176, !dbg !2328

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %177, metadata !2150, metadata !DIExpression()), !dbg !2202
  %178 = icmp ult i64 %177, %140, !dbg !2333
  br i1 %178, label %179, label %181, !dbg !2336

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2333
  store i8 36, i8* %180, align 1, !dbg !2333, !tbaa !610
  br label %181, !dbg !2333

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %182, metadata !2150, metadata !DIExpression()), !dbg !2202
  %183 = icmp ult i64 %182, %140, !dbg !2337
  br i1 %183, label %184, label %186, !dbg !2340

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2337
  store i8 39, i8* %185, align 1, !dbg !2337, !tbaa !610
  br label %186, !dbg !2337

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2340
  call void @llvm.dbg.value(metadata i64 %187, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 1, metadata !2158, metadata !DIExpression()), !dbg !2202
  br label %188, !dbg !2341

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2202
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2158, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %189, metadata !2150, metadata !DIExpression()), !dbg !2202
  %191 = icmp ult i64 %189, %140, !dbg !2342
  br i1 %191, label %192, label %194, !dbg !2345

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2342
  store i8 92, i8* %193, align 1, !dbg !2342, !tbaa !610
  br label %194, !dbg !2342

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %195, metadata !2150, metadata !DIExpression()), !dbg !2202
  br i1 %120, label %196, label %499, !dbg !2346

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2348
  %198 = icmp ult i64 %197, %164, !dbg !2349
  br i1 %198, label %199, label %456, !dbg !2350

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2351
  %201 = load i8, i8* %200, align 1, !dbg !2351, !tbaa !610
  %202 = add i8 %201, -48, !dbg !2352
  %203 = icmp ult i8 %202, 10, !dbg !2352
  br i1 %203, label %204, label %456, !dbg !2352

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2353
  br i1 %205, label %206, label %208, !dbg !2357

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2353
  store i8 48, i8* %207, align 1, !dbg !2353, !tbaa !610
  br label %208, !dbg !2353

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %209, metadata !2150, metadata !DIExpression()), !dbg !2202
  %210 = icmp ult i64 %209, %140, !dbg !2358
  br i1 %210, label %211, label %213, !dbg !2361

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2358
  store i8 48, i8* %212, align 1, !dbg !2358, !tbaa !610
  br label %213, !dbg !2358

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %214, metadata !2150, metadata !DIExpression()), !dbg !2202
  br label %456, !dbg !2362

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2363

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2364

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2365

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2367

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2369
  %221 = icmp ult i64 %220, %164, !dbg !2370
  br i1 %221, label %222, label %456, !dbg !2371

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2372
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2373
  %225 = load i8, i8* %224, align 1, !dbg !2373, !tbaa !610
  %226 = icmp eq i8 %225, 63, !dbg !2374
  br i1 %226, label %227, label %456, !dbg !2375

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2376
  %229 = load i8, i8* %228, align 1, !dbg !2376, !tbaa !610
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
  ], !dbg !2377

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2378

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2171, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %220, metadata !2164, metadata !DIExpression()), !dbg !2291
  %232 = icmp ult i64 %134, %140, !dbg !2380
  br i1 %232, label %233, label %235, !dbg !2383

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2380
  store i8 63, i8* %234, align 1, !dbg !2380, !tbaa !610
  br label %235, !dbg !2380

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2383
  call void @llvm.dbg.value(metadata i64 %236, metadata !2150, metadata !DIExpression()), !dbg !2202
  %237 = icmp ult i64 %236, %140, !dbg !2384
  br i1 %237, label %238, label %240, !dbg !2387

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2384
  store i8 34, i8* %239, align 1, !dbg !2384, !tbaa !610
  br label %240, !dbg !2384

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %241, metadata !2150, metadata !DIExpression()), !dbg !2202
  %242 = icmp ult i64 %241, %140, !dbg !2388
  br i1 %242, label %243, label %245, !dbg !2391

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2388
  store i8 34, i8* %244, align 1, !dbg !2388, !tbaa !610
  br label %245, !dbg !2388

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2391
  call void @llvm.dbg.value(metadata i64 %246, metadata !2150, metadata !DIExpression()), !dbg !2202
  %247 = icmp ult i64 %246, %140, !dbg !2392
  br i1 %247, label %248, label %250, !dbg !2395

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2392
  store i8 63, i8* %249, align 1, !dbg !2392, !tbaa !610
  br label %250, !dbg !2392

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %251, metadata !2150, metadata !DIExpression()), !dbg !2202
  br label %456, !dbg !2396

252:                                              ; preds = %163
  br label %263, !dbg !2397

253:                                              ; preds = %163
  br label %263, !dbg !2398

254:                                              ; preds = %163
  br label %261, !dbg !2399

255:                                              ; preds = %163
  br label %261, !dbg !2400

256:                                              ; preds = %163
  br label %263, !dbg !2401

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2402

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2403

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2406

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2408

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2409
  call void @llvm.dbg.label(metadata !2196), !dbg !2410
  br i1 %128, label %263, label %638, !dbg !2411

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2409
  call void @llvm.dbg.label(metadata !2198), !dbg !2413
  br i1 %118, label %510, label %467, !dbg !2414

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2415

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2416, !tbaa !610
  %268 = icmp eq i8 %267, 0, !dbg !2418
  br i1 %268, label %269, label %456, !dbg !2419

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2420
  br i1 %270, label %271, label %456, !dbg !2422

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2170, metadata !DIExpression()), !dbg !2299
  br label %272, !dbg !2423

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2170, metadata !DIExpression()), !dbg !2299
  br i1 %126, label %274, label %456, !dbg !2424

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2426

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2156, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 1, metadata !2170, metadata !DIExpression()), !dbg !2299
  br i1 %126, label %276, label %456, !dbg !2427

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2428

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2431
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2433
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2433
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2433
  call void @llvm.dbg.value(metadata i64 %282, metadata !2141, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %281, metadata !2151, metadata !DIExpression()), !dbg !2202
  %283 = icmp ult i64 %134, %282, !dbg !2434
  br i1 %283, label %284, label %286, !dbg !2437

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2434
  store i8 39, i8* %285, align 1, !dbg !2434, !tbaa !610
  br label %286, !dbg !2434

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2437
  call void @llvm.dbg.value(metadata i64 %287, metadata !2150, metadata !DIExpression()), !dbg !2202
  %288 = icmp ult i64 %287, %282, !dbg !2438
  br i1 %288, label %289, label %291, !dbg !2441

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2438
  store i8 92, i8* %290, align 1, !dbg !2438, !tbaa !610
  br label %291, !dbg !2438

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2441
  call void @llvm.dbg.value(metadata i64 %292, metadata !2150, metadata !DIExpression()), !dbg !2202
  %293 = icmp ult i64 %292, %282, !dbg !2442
  br i1 %293, label %294, label %296, !dbg !2445

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2442
  store i8 39, i8* %295, align 1, !dbg !2442, !tbaa !610
  br label %296, !dbg !2442

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2445
  call void @llvm.dbg.value(metadata i64 %297, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 0, metadata !2158, metadata !DIExpression()), !dbg !2202
  br label %456, !dbg !2446

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2447

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2172, metadata !DIExpression()), !dbg !2448
  %300 = tail call i16** @__ctype_b_loc() #38, !dbg !2449
  %301 = load i16*, i16** %300, align 8, !dbg !2449, !tbaa !510
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2449
  %304 = load i16, i16* %303, align 2, !dbg !2449, !tbaa !635
  %305 = and i16 %304, 16384, !dbg !2449
  %306 = icmp ne i16 %305, 0, !dbg !2451
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %349, metadata !2172, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %312, metadata !2143, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i1 %350, metadata !2170, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2299
  br label %352, !dbg !2452

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2453
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2176, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2228, metadata !DIExpression()) #35, !dbg !2455
  call void @llvm.dbg.value(metadata i8* %32, metadata !2236, metadata !DIExpression()) #35, !dbg !2457
  call void @llvm.dbg.value(metadata i32 0, metadata !2239, metadata !DIExpression()) #35, !dbg !2457
  call void @llvm.dbg.value(metadata i64 8, metadata !2240, metadata !DIExpression()) #35, !dbg !2457
  store i64 0, i64* %14, align 8, !dbg !2459
  call void @llvm.dbg.value(metadata i64 0, metadata !2172, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 1, metadata !2175, metadata !DIExpression()), !dbg !2448
  %308 = icmp eq i64 %164, -1, !dbg !2460
  br i1 %308, label %309, label %311, !dbg !2462

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2463
  call void @llvm.dbg.value(metadata i64 %310, metadata !2143, metadata !DIExpression()), !dbg !2202
  br label %311, !dbg !2464

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2299
  call void @llvm.dbg.value(metadata i64 %312, metadata !2143, metadata !DIExpression()), !dbg !2202
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2465
  %313 = sub i64 %312, %139, !dbg !2466
  call void @llvm.dbg.value(metadata i32* %16, metadata !2179, metadata !DIExpression(DW_OP_deref)), !dbg !2467
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #35, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %314, metadata !2183, metadata !DIExpression()), !dbg !2467
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2469

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2172, metadata !DIExpression()), !dbg !2448
  %316 = icmp ugt i64 %312, %139, !dbg !2470
  br i1 %316, label %319, label %317, !dbg !2472

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 0, metadata !2172, metadata !DIExpression()), !dbg !2448
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2473
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %349, metadata !2172, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %312, metadata !2143, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i1 %350, metadata !2170, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2299
  br label %352, !dbg !2452

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2175, metadata !DIExpression()), !dbg !2448
  br label %346, !dbg !2475

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2172, metadata !DIExpression()), !dbg !2448
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2477
  %323 = load i8, i8* %322, align 1, !dbg !2477, !tbaa !610
  %324 = icmp eq i8 %323, 0, !dbg !2472
  br i1 %324, label %348, label %325, !dbg !2478

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2479
  call void @llvm.dbg.value(metadata i64 %326, metadata !2172, metadata !DIExpression()), !dbg !2448
  %327 = add i64 %326, %139, !dbg !2480
  %328 = icmp eq i64 %326, %313, !dbg !2470
  br i1 %328, label %348, label %319, !dbg !2472, !llvm.loop !2481

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2482
  call void @llvm.dbg.value(metadata i64 1, metadata !2184, metadata !DIExpression()), !dbg !2483
  br i1 %331, label %332, label %340, !dbg !2482

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2184, metadata !DIExpression()), !dbg !2483
  %334 = add i64 %333, %139, !dbg !2484
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2486
  %336 = load i8, i8* %335, align 1, !dbg !2486, !tbaa !610
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2487

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2488
  call void @llvm.dbg.value(metadata i64 %338, metadata !2184, metadata !DIExpression()), !dbg !2483
  %339 = icmp eq i64 %338, %314, !dbg !2489
  br i1 %339, label %340, label %332, !dbg !2490, !llvm.loop !2491

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2493, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %341, metadata !2179, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 %341, metadata !2495, metadata !DIExpression()) #35, !dbg !2503
  %342 = call i32 @iswprint(i32 noundef %341) #35, !dbg !2505
  %343 = icmp ne i32 %342, 0, !dbg !2506
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %314, metadata !2172, metadata !DIExpression()), !dbg !2448
  br label %348, !dbg !2507

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 0, metadata !2172, metadata !DIExpression()), !dbg !2448
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2473
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2474
  call void @llvm.dbg.label(metadata !2201), !dbg !2508
  %345 = select i1 %118, i32 4, i32 2, !dbg !2509
  br label %643, !dbg !2509

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 0, metadata !2172, metadata !DIExpression()), !dbg !2448
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2473
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %349, metadata !2172, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %312, metadata !2143, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i1 %350, metadata !2170, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2299
  br label %352, !dbg !2452

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 0, metadata !2172, metadata !DIExpression()), !dbg !2448
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2473
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %349, metadata !2172, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %312, metadata !2143, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i1 %350, metadata !2170, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2299
  %351 = icmp ugt i64 %349, 1, !dbg !2511
  br i1 %351, label %357, label %352, !dbg !2452

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2512
  br i1 %356, label %456, label %357, !dbg !2512

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2513
  call void @llvm.dbg.value(metadata i64 %361, metadata !2192, metadata !DIExpression()), !dbg !2514
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2515

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2202
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2291
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2516
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2299
  call void @llvm.dbg.value(metadata i8 %369, metadata !2171, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 %368, metadata !2169, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 poison, metadata !2166, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %366, metadata !2164, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 poison, metadata !2158, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %364, metadata !2150, metadata !DIExpression()), !dbg !2202
  br i1 %362, label %414, label %370, !dbg !2517

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2522

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2169, metadata !DIExpression()), !dbg !2299
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2525
  br i1 %372, label %389, label %373, !dbg !2525

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2527
  br i1 %374, label %375, label %377, !dbg !2531

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2527
  store i8 39, i8* %376, align 1, !dbg !2527, !tbaa !610
  br label %377, !dbg !2527

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %378, metadata !2150, metadata !DIExpression()), !dbg !2202
  %379 = icmp ult i64 %378, %140, !dbg !2532
  br i1 %379, label %380, label %382, !dbg !2535

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2532
  store i8 36, i8* %381, align 1, !dbg !2532, !tbaa !610
  br label %382, !dbg !2532

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2535
  call void @llvm.dbg.value(metadata i64 %383, metadata !2150, metadata !DIExpression()), !dbg !2202
  %384 = icmp ult i64 %383, %140, !dbg !2536
  br i1 %384, label %385, label %387, !dbg !2539

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2536
  store i8 39, i8* %386, align 1, !dbg !2536, !tbaa !610
  br label %387, !dbg !2536

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2539
  call void @llvm.dbg.value(metadata i64 %388, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 1, metadata !2158, metadata !DIExpression()), !dbg !2202
  br label %389, !dbg !2540

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2202
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2158, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %390, metadata !2150, metadata !DIExpression()), !dbg !2202
  %392 = icmp ult i64 %390, %140, !dbg !2541
  br i1 %392, label %393, label %395, !dbg !2544

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2541
  store i8 92, i8* %394, align 1, !dbg !2541, !tbaa !610
  br label %395, !dbg !2541

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %396, metadata !2150, metadata !DIExpression()), !dbg !2202
  %397 = icmp ult i64 %396, %140, !dbg !2545
  br i1 %397, label %398, label %402, !dbg !2548

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2545
  %400 = or i8 %399, 48, !dbg !2545
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2545
  store i8 %400, i8* %401, align 1, !dbg !2545, !tbaa !610
  br label %402, !dbg !2545

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %403, metadata !2150, metadata !DIExpression()), !dbg !2202
  %404 = icmp ult i64 %403, %140, !dbg !2549
  br i1 %404, label %405, label %410, !dbg !2552

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2549
  %407 = and i8 %406, 7, !dbg !2549
  %408 = or i8 %407, 48, !dbg !2549
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2549
  store i8 %408, i8* %409, align 1, !dbg !2549, !tbaa !610
  br label %410, !dbg !2549

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %411, metadata !2150, metadata !DIExpression()), !dbg !2202
  %412 = and i8 %369, 7, !dbg !2553
  %413 = or i8 %412, 48, !dbg !2554
  call void @llvm.dbg.value(metadata i8 %413, metadata !2171, metadata !DIExpression()), !dbg !2299
  br label %421, !dbg !2555

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2556

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2557
  br i1 %416, label %417, label %419, !dbg !2562

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2557
  store i8 92, i8* %418, align 1, !dbg !2557, !tbaa !610
  br label %419, !dbg !2557

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2562
  call void @llvm.dbg.value(metadata i64 %420, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 0, metadata !2166, metadata !DIExpression()), !dbg !2299
  br label %421, !dbg !2563

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2202
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2299
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2299
  call void @llvm.dbg.value(metadata i8 %426, metadata !2171, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 %425, metadata !2169, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 poison, metadata !2166, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 poison, metadata !2158, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %422, metadata !2150, metadata !DIExpression()), !dbg !2202
  %427 = add i64 %366, 1, !dbg !2564
  %428 = icmp ugt i64 %361, %427, !dbg !2566
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2567

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2568
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2568
  br i1 %432, label %433, label %444, !dbg !2568

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2571
  br i1 %434, label %435, label %437, !dbg !2575

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2571
  store i8 39, i8* %436, align 1, !dbg !2571, !tbaa !610
  br label %437, !dbg !2571

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %438, metadata !2150, metadata !DIExpression()), !dbg !2202
  %439 = icmp ult i64 %438, %140, !dbg !2576
  br i1 %439, label %440, label %442, !dbg !2579

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2576
  store i8 39, i8* %441, align 1, !dbg !2576, !tbaa !610
  br label %442, !dbg !2576

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2579
  call void @llvm.dbg.value(metadata i64 %443, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 0, metadata !2158, metadata !DIExpression()), !dbg !2202
  br label %444, !dbg !2580

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2581
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2158, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %445, metadata !2150, metadata !DIExpression()), !dbg !2202
  %447 = icmp ult i64 %445, %140, !dbg !2582
  br i1 %447, label %448, label %450, !dbg !2585

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2582
  store i8 %426, i8* %449, align 1, !dbg !2582, !tbaa !610
  br label %450, !dbg !2582

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %451, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %427, metadata !2164, metadata !DIExpression()), !dbg !2291
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2586
  %453 = load i8, i8* %452, align 1, !dbg !2586, !tbaa !610
  call void @llvm.dbg.value(metadata i8 %453, metadata !2171, metadata !DIExpression()), !dbg !2299
  br label %363, !dbg !2587, !llvm.loop !2588

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2171, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i1 %358, metadata !2170, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2299
  call void @llvm.dbg.value(metadata i8 %425, metadata !2169, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 poison, metadata !2166, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %366, metadata !2164, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 poison, metadata !2158, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %422, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %360, metadata !2143, metadata !DIExpression()), !dbg !2202
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2591
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2202
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2206
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2291
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2299
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2141, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 %465, metadata !2171, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 poison, metadata !2170, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 poison, metadata !2169, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 poison, metadata !2166, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %462, metadata !2164, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 poison, metadata !2158, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2156, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %459, metadata !2151, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %458, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %457, metadata !2143, metadata !DIExpression()), !dbg !2202
  br i1 %121, label %478, label %467, !dbg !2592

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
  br i1 %131, label %479, label %499, !dbg !2594

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2595

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
  %490 = lshr i8 %481, 5, !dbg !2596
  %491 = zext i8 %490 to i64, !dbg !2596
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2597
  %493 = load i32, i32* %492, align 4, !dbg !2597, !tbaa !601
  %494 = and i8 %481, 31, !dbg !2598
  %495 = zext i8 %494 to i32, !dbg !2598
  %496 = shl nuw i32 1, %495, !dbg !2599
  %497 = and i32 %493, %496, !dbg !2599
  %498 = icmp eq i32 %497, 0, !dbg !2599
  br i1 %498, label %499, label %510, !dbg !2600

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
  br i1 %165, label %510, label %546, !dbg !2601

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2591
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2202
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2206
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2602
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2299
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2141, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 %518, metadata !2171, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 poison, metadata !2170, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %516, metadata !2164, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 poison, metadata !2158, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2156, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %513, metadata !2151, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %512, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %511, metadata !2143, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.label(metadata !2199), !dbg !2603
  br i1 %119, label %638, label %520, !dbg !2604

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2169, metadata !DIExpression()), !dbg !2299
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2606
  br i1 %521, label %538, label %522, !dbg !2606

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2608
  br i1 %523, label %524, label %526, !dbg !2612

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2608
  store i8 39, i8* %525, align 1, !dbg !2608, !tbaa !610
  br label %526, !dbg !2608

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2612
  call void @llvm.dbg.value(metadata i64 %527, metadata !2150, metadata !DIExpression()), !dbg !2202
  %528 = icmp ult i64 %527, %519, !dbg !2613
  br i1 %528, label %529, label %531, !dbg !2616

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2613
  store i8 36, i8* %530, align 1, !dbg !2613, !tbaa !610
  br label %531, !dbg !2613

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2616
  call void @llvm.dbg.value(metadata i64 %532, metadata !2150, metadata !DIExpression()), !dbg !2202
  %533 = icmp ult i64 %532, %519, !dbg !2617
  br i1 %533, label %534, label %536, !dbg !2620

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2617
  store i8 39, i8* %535, align 1, !dbg !2617, !tbaa !610
  br label %536, !dbg !2617

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2620
  call void @llvm.dbg.value(metadata i64 %537, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 1, metadata !2158, metadata !DIExpression()), !dbg !2202
  br label %538, !dbg !2621

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2299
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2158, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %539, metadata !2150, metadata !DIExpression()), !dbg !2202
  %541 = icmp ult i64 %539, %519, !dbg !2622
  br i1 %541, label %542, label %544, !dbg !2625

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2622
  store i8 92, i8* %543, align 1, !dbg !2622, !tbaa !610
  br label %544, !dbg !2622

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2625
  call void @llvm.dbg.value(metadata i64 %556, metadata !2141, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 %555, metadata !2171, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 poison, metadata !2170, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 poison, metadata !2169, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %552, metadata !2164, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 poison, metadata !2158, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2156, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %549, metadata !2151, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %548, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %547, metadata !2143, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.label(metadata !2200), !dbg !2626
  br label %570, !dbg !2627

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2591
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2202
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2206
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2602
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2630
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2141, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 %555, metadata !2171, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 poison, metadata !2170, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8 poison, metadata !2169, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %552, metadata !2164, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 poison, metadata !2158, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2156, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %549, metadata !2151, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %548, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %547, metadata !2143, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.label(metadata !2200), !dbg !2626
  %557 = xor i1 %551, true, !dbg !2627
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2627
  br i1 %558, label %570, label %559, !dbg !2627

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2631
  br i1 %560, label %561, label %563, !dbg !2635

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2631
  store i8 39, i8* %562, align 1, !dbg !2631, !tbaa !610
  br label %563, !dbg !2631

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2635
  call void @llvm.dbg.value(metadata i64 %564, metadata !2150, metadata !DIExpression()), !dbg !2202
  %565 = icmp ult i64 %564, %556, !dbg !2636
  br i1 %565, label %566, label %568, !dbg !2639

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2636
  store i8 39, i8* %567, align 1, !dbg !2636, !tbaa !610
  br label %568, !dbg !2636

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2639
  call void @llvm.dbg.value(metadata i64 %569, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 0, metadata !2158, metadata !DIExpression()), !dbg !2202
  br label %570, !dbg !2640

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2299
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2158, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %578, metadata !2150, metadata !DIExpression()), !dbg !2202
  %580 = icmp ult i64 %578, %571, !dbg !2641
  br i1 %580, label %581, label %583, !dbg !2644

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2641
  store i8 %572, i8* %582, align 1, !dbg !2641, !tbaa !610
  br label %583, !dbg !2641

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2644
  call void @llvm.dbg.value(metadata i64 %584, metadata !2150, metadata !DIExpression()), !dbg !2202
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2645
  call void @llvm.dbg.value(metadata i8 poison, metadata !2157, metadata !DIExpression()), !dbg !2202
  br label %586, !dbg !2646

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2591
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2202
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2206
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2602
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2141, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %593, metadata !2164, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 poison, metadata !2158, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2157, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2156, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %589, metadata !2151, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %588, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %587, metadata !2143, metadata !DIExpression()), !dbg !2202
  %595 = add i64 %593, 1, !dbg !2647
  call void @llvm.dbg.value(metadata i64 %595, metadata !2164, metadata !DIExpression()), !dbg !2291
  br label %132, !dbg !2648, !llvm.loop !2649

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2141, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2157, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 poison, metadata !2156, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 undef, metadata !2151, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 undef, metadata !2150, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 undef, metadata !2143, metadata !DIExpression()), !dbg !2202
  %597 = icmp eq i64 %134, 0, !dbg !2651
  %598 = and i1 %126, %597, !dbg !2653
  %599 = and i1 %598, %119, !dbg !2653
  br i1 %599, label %638, label %600, !dbg !2653

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2654
  %602 = or i1 %119, %601, !dbg !2654
  %603 = xor i1 %136, true, !dbg !2654
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2654
  br i1 %604, label %612, label %605, !dbg !2654

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2656

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2658
  br label %653, !dbg !2660

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2661
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2663
  br i1 %611, label %36, label %612, !dbg !2663

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2664
  %615 = or i1 %614, %613, !dbg !2666
  br i1 %615, label %631, label %616, !dbg !2666

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2152, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %134, metadata !2150, metadata !DIExpression()), !dbg !2202
  %617 = load i8, i8* %116, align 1, !dbg !2667, !tbaa !610
  %618 = icmp eq i8 %617, 0, !dbg !2670
  br i1 %618, label %631, label %619, !dbg !2670

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2152, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %622, metadata !2150, metadata !DIExpression()), !dbg !2202
  %623 = icmp ult i64 %622, %140, !dbg !2671
  br i1 %623, label %624, label %626, !dbg !2674

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2671
  store i8 %620, i8* %625, align 1, !dbg !2671, !tbaa !610
  br label %626, !dbg !2671

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2674
  call void @llvm.dbg.value(metadata i64 %627, metadata !2150, metadata !DIExpression()), !dbg !2202
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2675
  call void @llvm.dbg.value(metadata i8* %628, metadata !2152, metadata !DIExpression()), !dbg !2202
  %629 = load i8, i8* %628, align 1, !dbg !2667, !tbaa !610
  %630 = icmp eq i8 %629, 0, !dbg !2670
  br i1 %630, label %631, label %619, !dbg !2670, !llvm.loop !2676

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2278
  call void @llvm.dbg.value(metadata i64 %632, metadata !2150, metadata !DIExpression()), !dbg !2202
  %633 = icmp ult i64 %632, %140, !dbg !2678
  br i1 %633, label %634, label %653, !dbg !2680

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2681
  store i8 0, i8* %635, align 1, !dbg !2682, !tbaa !610
  br label %653, !dbg !2681

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2201), !dbg !2508
  %637 = icmp eq i32 %112, 2, !dbg !2683
  br i1 %637, label %643, label %647, !dbg !2509

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2201), !dbg !2508
  %641 = icmp eq i32 %112, 2, !dbg !2683
  %642 = select i1 %118, i32 4, i32 2, !dbg !2509
  br i1 %641, label %643, label %647, !dbg !2509

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2509

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2144, metadata !DIExpression()), !dbg !2202
  %651 = and i32 %5, -3, !dbg !2684
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2685
  br label %653, !dbg !2686

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2687
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2688 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2690 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2694, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %1, metadata !2695, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2696, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* %0, metadata !2698, metadata !DIExpression()) #35, !dbg !2711
  call void @llvm.dbg.value(metadata i64 %1, metadata !2703, metadata !DIExpression()) #35, !dbg !2711
  call void @llvm.dbg.value(metadata i64* null, metadata !2704, metadata !DIExpression()) #35, !dbg !2711
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2705, metadata !DIExpression()) #35, !dbg !2711
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2713
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2713
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2706, metadata !DIExpression()) #35, !dbg !2711
  %6 = tail call i32* @__errno_location() #38, !dbg !2714
  %7 = load i32, i32* %6, align 4, !dbg !2714, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %7, metadata !2707, metadata !DIExpression()) #35, !dbg !2711
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2715
  %9 = load i32, i32* %8, align 4, !dbg !2715, !tbaa !2084
  %10 = or i32 %9, 1, !dbg !2716
  call void @llvm.dbg.value(metadata i32 %10, metadata !2708, metadata !DIExpression()) #35, !dbg !2711
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2717
  %12 = load i32, i32* %11, align 8, !dbg !2717, !tbaa !2033
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2718
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2719
  %15 = load i8*, i8** %14, align 8, !dbg !2719, !tbaa !2106
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2720
  %17 = load i8*, i8** %16, align 8, !dbg !2720, !tbaa !2109
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #35, !dbg !2721
  %19 = add i64 %18, 1, !dbg !2722
  call void @llvm.dbg.value(metadata i64 %19, metadata !2709, metadata !DIExpression()) #35, !dbg !2711
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #43, !dbg !2723
  call void @llvm.dbg.value(metadata i8* %20, metadata !2710, metadata !DIExpression()) #35, !dbg !2711
  %21 = load i32, i32* %11, align 8, !dbg !2724, !tbaa !2033
  %22 = load i8*, i8** %14, align 8, !dbg !2725, !tbaa !2106
  %23 = load i8*, i8** %16, align 8, !dbg !2726, !tbaa !2109
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #35, !dbg !2727
  store i32 %7, i32* %6, align 4, !dbg !2728, !tbaa !601
  ret i8* %20, !dbg !2729
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2699 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2698, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i64 %1, metadata !2703, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i64* %2, metadata !2704, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2705, metadata !DIExpression()), !dbg !2730
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2731
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2731
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2706, metadata !DIExpression()), !dbg !2730
  %7 = tail call i32* @__errno_location() #38, !dbg !2732
  %8 = load i32, i32* %7, align 4, !dbg !2732, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %8, metadata !2707, metadata !DIExpression()), !dbg !2730
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2733
  %10 = load i32, i32* %9, align 4, !dbg !2733, !tbaa !2084
  %11 = icmp eq i64* %2, null, !dbg !2734
  %12 = zext i1 %11 to i32, !dbg !2734
  %13 = or i32 %10, %12, !dbg !2735
  call void @llvm.dbg.value(metadata i32 %13, metadata !2708, metadata !DIExpression()), !dbg !2730
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2736
  %15 = load i32, i32* %14, align 8, !dbg !2736, !tbaa !2033
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2737
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2738
  %18 = load i8*, i8** %17, align 8, !dbg !2738, !tbaa !2106
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2739
  %20 = load i8*, i8** %19, align 8, !dbg !2739, !tbaa !2109
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2740
  %22 = add i64 %21, 1, !dbg !2741
  call void @llvm.dbg.value(metadata i64 %22, metadata !2709, metadata !DIExpression()), !dbg !2730
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #43, !dbg !2742
  call void @llvm.dbg.value(metadata i8* %23, metadata !2710, metadata !DIExpression()), !dbg !2730
  %24 = load i32, i32* %14, align 8, !dbg !2743, !tbaa !2033
  %25 = load i8*, i8** %17, align 8, !dbg !2744, !tbaa !2106
  %26 = load i8*, i8** %19, align 8, !dbg !2745, !tbaa !2109
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2746
  store i32 %8, i32* %7, align 4, !dbg !2747, !tbaa !601
  br i1 %11, label %29, label %28, !dbg !2748

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2749, !tbaa !2751
  br label %29, !dbg !2752

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2753
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2754 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2759, !tbaa !510
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2756, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 1, metadata !2757, metadata !DIExpression()), !dbg !2761
  %2 = load i32, i32* @nslots, align 4, !tbaa !601
  call void @llvm.dbg.value(metadata i32 1, metadata !2757, metadata !DIExpression()), !dbg !2761
  %3 = icmp sgt i32 %2, 1, !dbg !2762
  br i1 %3, label %4, label %6, !dbg !2764

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2762
  br label %10, !dbg !2764

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2765
  %8 = load i8*, i8** %7, align 8, !dbg !2765, !tbaa !2767
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2769
  br i1 %9, label %17, label %16, !dbg !2770

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2757, metadata !DIExpression()), !dbg !2761
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2771
  %13 = load i8*, i8** %12, align 8, !dbg !2771, !tbaa !2767
  tail call void @free(i8* noundef %13) #35, !dbg !2772
  %14 = add nuw nsw i64 %11, 1, !dbg !2773
  call void @llvm.dbg.value(metadata i64 %14, metadata !2757, metadata !DIExpression()), !dbg !2761
  %15 = icmp eq i64 %14, %5, !dbg !2762
  br i1 %15, label %6, label %10, !dbg !2764, !llvm.loop !2774

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #35, !dbg !2776
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2778, !tbaa !2779
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2780, !tbaa !2767
  br label %17, !dbg !2781

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2782
  br i1 %18, label %21, label %19, !dbg !2784

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2785
  tail call void @free(i8* noundef %20) #35, !dbg !2787
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2788, !tbaa !510
  br label %21, !dbg !2789

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2790, !tbaa !601
  ret void, !dbg !2791
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2792 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2794, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i8* %1, metadata !2795, metadata !DIExpression()), !dbg !2796
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2797
  ret i8* %3, !dbg !2798
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2799 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2803, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8* %1, metadata !2804, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i64 %2, metadata !2805, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2806, metadata !DIExpression()), !dbg !2819
  %6 = tail call i32* @__errno_location() #38, !dbg !2820
  %7 = load i32, i32* %6, align 4, !dbg !2820, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %7, metadata !2807, metadata !DIExpression()), !dbg !2819
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2821, !tbaa !510
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2808, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2809, metadata !DIExpression()), !dbg !2819
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2822
  br i1 %9, label %10, label %11, !dbg !2822

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2824
  unreachable, !dbg !2824

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2825, !tbaa !601
  %13 = icmp sgt i32 %12, %0, !dbg !2826
  br i1 %13, label %36, label %14, !dbg !2827

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2828
  call void @llvm.dbg.value(metadata i1 %15, metadata !2810, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2829
  %16 = bitcast i64* %5 to i8*, !dbg !2830
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2830
  %17 = sext i32 %12 to i64, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %17, metadata !2813, metadata !DIExpression()), !dbg !2829
  store i64 %17, i64* %5, align 8, !dbg !2832, !tbaa !2751
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2833
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2833
  %20 = add nuw nsw i32 %0, 1, !dbg !2834
  %21 = sub i32 %20, %12, !dbg !2835
  %22 = sext i32 %21 to i64, !dbg !2836
  call void @llvm.dbg.value(metadata i64* %5, metadata !2813, metadata !DIExpression(DW_OP_deref)), !dbg !2829
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !2837
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2837
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2808, metadata !DIExpression()), !dbg !2819
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2838, !tbaa !510
  br i1 %15, label %25, label %26, !dbg !2839

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2840, !tbaa.struct !2842
  br label %26, !dbg !2843

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2844, !tbaa !601
  %28 = sext i32 %27 to i64, !dbg !2845
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2845
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2846
  %31 = load i64, i64* %5, align 8, !dbg !2847, !tbaa !2751
  call void @llvm.dbg.value(metadata i64 %31, metadata !2813, metadata !DIExpression()), !dbg !2829
  %32 = sub nsw i64 %31, %28, !dbg !2848
  %33 = shl i64 %32, 4, !dbg !2849
  call void @llvm.dbg.value(metadata i8* %30, metadata !2236, metadata !DIExpression()) #35, !dbg !2850
  call void @llvm.dbg.value(metadata i32 0, metadata !2239, metadata !DIExpression()) #35, !dbg !2850
  call void @llvm.dbg.value(metadata i64 %33, metadata !2240, metadata !DIExpression()) #35, !dbg !2850
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #35, !dbg !2852
  %34 = load i64, i64* %5, align 8, !dbg !2853, !tbaa !2751
  call void @llvm.dbg.value(metadata i64 %34, metadata !2813, metadata !DIExpression()), !dbg !2829
  %35 = trunc i64 %34 to i32, !dbg !2853
  store i32 %35, i32* @nslots, align 4, !dbg !2854, !tbaa !601
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2855
  br label %36, !dbg !2856

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2819
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2808, metadata !DIExpression()), !dbg !2819
  %38 = zext i32 %0 to i64, !dbg !2857
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2858
  %40 = load i64, i64* %39, align 8, !dbg !2858, !tbaa !2779
  call void @llvm.dbg.value(metadata i64 %40, metadata !2814, metadata !DIExpression()), !dbg !2859
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2860
  %42 = load i8*, i8** %41, align 8, !dbg !2860, !tbaa !2767
  call void @llvm.dbg.value(metadata i8* %42, metadata !2816, metadata !DIExpression()), !dbg !2859
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2861
  %44 = load i32, i32* %43, align 4, !dbg !2861, !tbaa !2084
  %45 = or i32 %44, 1, !dbg !2862
  call void @llvm.dbg.value(metadata i32 %45, metadata !2817, metadata !DIExpression()), !dbg !2859
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2863
  %47 = load i32, i32* %46, align 8, !dbg !2863, !tbaa !2033
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2864
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2865
  %50 = load i8*, i8** %49, align 8, !dbg !2865, !tbaa !2106
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2866
  %52 = load i8*, i8** %51, align 8, !dbg !2866, !tbaa !2109
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2867
  call void @llvm.dbg.value(metadata i64 %53, metadata !2818, metadata !DIExpression()), !dbg !2859
  %54 = icmp ugt i64 %40, %53, !dbg !2868
  br i1 %54, label %65, label %55, !dbg !2870

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2871
  call void @llvm.dbg.value(metadata i64 %56, metadata !2814, metadata !DIExpression()), !dbg !2859
  store i64 %56, i64* %39, align 8, !dbg !2873, !tbaa !2779
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2874
  br i1 %57, label %59, label %58, !dbg !2876

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #35, !dbg !2877
  br label %59, !dbg !2877

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #43, !dbg !2878
  call void @llvm.dbg.value(metadata i8* %60, metadata !2816, metadata !DIExpression()), !dbg !2859
  store i8* %60, i8** %41, align 8, !dbg !2879, !tbaa !2767
  %61 = load i32, i32* %46, align 8, !dbg !2880, !tbaa !2033
  %62 = load i8*, i8** %49, align 8, !dbg !2881, !tbaa !2106
  %63 = load i8*, i8** %51, align 8, !dbg !2882, !tbaa !2109
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2883
  br label %65, !dbg !2884

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2859
  call void @llvm.dbg.value(metadata i8* %66, metadata !2816, metadata !DIExpression()), !dbg !2859
  store i32 %7, i32* %6, align 4, !dbg !2885, !tbaa !601
  ret i8* %66, !dbg !2886
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2887 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2891, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8* %1, metadata !2892, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 %2, metadata !2893, metadata !DIExpression()), !dbg !2894
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2895
  ret i8* %4, !dbg !2896
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2897 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2899, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i32 0, metadata !2794, metadata !DIExpression()) #35, !dbg !2901
  call void @llvm.dbg.value(metadata i8* %0, metadata !2795, metadata !DIExpression()) #35, !dbg !2901
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2903
  ret i8* %2, !dbg !2904
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2905 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2909, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i64 %1, metadata !2910, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i32 0, metadata !2891, metadata !DIExpression()) #35, !dbg !2912
  call void @llvm.dbg.value(metadata i8* %0, metadata !2892, metadata !DIExpression()) #35, !dbg !2912
  call void @llvm.dbg.value(metadata i64 %1, metadata !2893, metadata !DIExpression()) #35, !dbg !2912
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2914
  ret i8* %3, !dbg !2915
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2916 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2920, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i32 %1, metadata !2921, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i8* %2, metadata !2922, metadata !DIExpression()), !dbg !2924
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2925
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2925
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2923, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2927), !dbg !2930
  call void @llvm.dbg.value(metadata i32 %1, metadata !2931, metadata !DIExpression()) #35, !dbg !2937
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2936, metadata !DIExpression()) #35, !dbg !2939
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !2939, !alias.scope !2927
  %6 = icmp eq i32 %1, 10, !dbg !2940
  br i1 %6, label %7, label %8, !dbg !2942

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2943, !noalias !2927
  unreachable, !dbg !2943

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2944
  store i32 %1, i32* %9, align 8, !dbg !2945, !tbaa !2033, !alias.scope !2927
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2946
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2947
  ret i8* %10, !dbg !2948
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2949 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2953, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i32 %1, metadata !2954, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8* %2, metadata !2955, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %3, metadata !2956, metadata !DIExpression()), !dbg !2958
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2959
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2959
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2957, metadata !DIExpression()), !dbg !2960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2961), !dbg !2964
  call void @llvm.dbg.value(metadata i32 %1, metadata !2931, metadata !DIExpression()) #35, !dbg !2965
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2936, metadata !DIExpression()) #35, !dbg !2967
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #35, !dbg !2967, !alias.scope !2961
  %7 = icmp eq i32 %1, 10, !dbg !2968
  br i1 %7, label %8, label %9, !dbg !2969

8:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2970, !noalias !2961
  unreachable, !dbg !2970

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2971
  store i32 %1, i32* %10, align 8, !dbg !2972, !tbaa !2033, !alias.scope !2961
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2973
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2974
  ret i8* %11, !dbg !2975
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2976 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2980, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8* %1, metadata !2981, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i32 0, metadata !2920, metadata !DIExpression()) #35, !dbg !2983
  call void @llvm.dbg.value(metadata i32 %0, metadata !2921, metadata !DIExpression()) #35, !dbg !2983
  call void @llvm.dbg.value(metadata i8* %1, metadata !2922, metadata !DIExpression()) #35, !dbg !2983
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2985
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2985
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2923, metadata !DIExpression()) #35, !dbg !2986
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2987) #35, !dbg !2990
  call void @llvm.dbg.value(metadata i32 %0, metadata !2931, metadata !DIExpression()) #35, !dbg !2991
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2936, metadata !DIExpression()) #35, !dbg !2993
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #35, !dbg !2993, !alias.scope !2987
  %5 = icmp eq i32 %0, 10, !dbg !2994
  br i1 %5, label %6, label %7, !dbg !2995

6:                                                ; preds = %2
  tail call void @abort() #37, !dbg !2996, !noalias !2987
  unreachable, !dbg !2996

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2997
  store i32 %0, i32* %8, align 8, !dbg !2998, !tbaa !2033, !alias.scope !2987
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !2999
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3000
  ret i8* %9, !dbg !3001
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3002 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3006, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8* %1, metadata !3007, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i64 %2, metadata !3008, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i32 0, metadata !2953, metadata !DIExpression()) #35, !dbg !3010
  call void @llvm.dbg.value(metadata i32 %0, metadata !2954, metadata !DIExpression()) #35, !dbg !3010
  call void @llvm.dbg.value(metadata i8* %1, metadata !2955, metadata !DIExpression()) #35, !dbg !3010
  call void @llvm.dbg.value(metadata i64 %2, metadata !2956, metadata !DIExpression()) #35, !dbg !3010
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3012
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3012
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2957, metadata !DIExpression()) #35, !dbg !3013
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3014) #35, !dbg !3017
  call void @llvm.dbg.value(metadata i32 %0, metadata !2931, metadata !DIExpression()) #35, !dbg !3018
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2936, metadata !DIExpression()) #35, !dbg !3020
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !3020, !alias.scope !3014
  %6 = icmp eq i32 %0, 10, !dbg !3021
  br i1 %6, label %7, label %8, !dbg !3022

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3023, !noalias !3014
  unreachable, !dbg !3023

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3024
  store i32 %0, i32* %9, align 8, !dbg !3025, !tbaa !2033, !alias.scope !3014
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3026
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3027
  ret i8* %10, !dbg !3028
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3029 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3033, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i64 %1, metadata !3034, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i8 %2, metadata !3035, metadata !DIExpression()), !dbg !3037
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3038
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3038
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3036, metadata !DIExpression()), !dbg !3039
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3040, !tbaa.struct !3041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2051, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 %2, metadata !2052, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 1, metadata !2053, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8 %2, metadata !2054, metadata !DIExpression()), !dbg !3042
  %6 = lshr i8 %2, 5, !dbg !3044
  %7 = zext i8 %6 to i64, !dbg !3044
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3045
  call void @llvm.dbg.value(metadata i32* %8, metadata !2055, metadata !DIExpression()), !dbg !3042
  %9 = and i8 %2, 31, !dbg !3046
  %10 = zext i8 %9 to i32, !dbg !3046
  call void @llvm.dbg.value(metadata i32 %10, metadata !2057, metadata !DIExpression()), !dbg !3042
  %11 = load i32, i32* %8, align 4, !dbg !3047, !tbaa !601
  %12 = lshr i32 %11, %10, !dbg !3048
  %13 = and i32 %12, 1, !dbg !3049
  call void @llvm.dbg.value(metadata i32 %13, metadata !2058, metadata !DIExpression()), !dbg !3042
  %14 = xor i32 %13, 1, !dbg !3050
  %15 = shl i32 %14, %10, !dbg !3051
  %16 = xor i32 %15, %11, !dbg !3052
  store i32 %16, i32* %8, align 4, !dbg !3052, !tbaa !601
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3053
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3054
  ret i8* %17, !dbg !3055
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3056 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3060, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i8 %1, metadata !3061, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i8* %0, metadata !3033, metadata !DIExpression()) #35, !dbg !3063
  call void @llvm.dbg.value(metadata i64 -1, metadata !3034, metadata !DIExpression()) #35, !dbg !3063
  call void @llvm.dbg.value(metadata i8 %1, metadata !3035, metadata !DIExpression()) #35, !dbg !3063
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3065
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3065
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3036, metadata !DIExpression()) #35, !dbg !3066
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3067, !tbaa.struct !3041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2051, metadata !DIExpression()) #35, !dbg !3068
  call void @llvm.dbg.value(metadata i8 %1, metadata !2052, metadata !DIExpression()) #35, !dbg !3068
  call void @llvm.dbg.value(metadata i32 1, metadata !2053, metadata !DIExpression()) #35, !dbg !3068
  call void @llvm.dbg.value(metadata i8 %1, metadata !2054, metadata !DIExpression()) #35, !dbg !3068
  %5 = lshr i8 %1, 5, !dbg !3070
  %6 = zext i8 %5 to i64, !dbg !3070
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3071
  call void @llvm.dbg.value(metadata i32* %7, metadata !2055, metadata !DIExpression()) #35, !dbg !3068
  %8 = and i8 %1, 31, !dbg !3072
  %9 = zext i8 %8 to i32, !dbg !3072
  call void @llvm.dbg.value(metadata i32 %9, metadata !2057, metadata !DIExpression()) #35, !dbg !3068
  %10 = load i32, i32* %7, align 4, !dbg !3073, !tbaa !601
  %11 = lshr i32 %10, %9, !dbg !3074
  %12 = and i32 %11, 1, !dbg !3075
  call void @llvm.dbg.value(metadata i32 %12, metadata !2058, metadata !DIExpression()) #35, !dbg !3068
  %13 = xor i32 %12, 1, !dbg !3076
  %14 = shl i32 %13, %9, !dbg !3077
  %15 = xor i32 %14, %10, !dbg !3078
  store i32 %15, i32* %7, align 4, !dbg !3078, !tbaa !601
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3079
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3080
  ret i8* %16, !dbg !3081
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3082 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3084, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i8* %0, metadata !3060, metadata !DIExpression()) #35, !dbg !3086
  call void @llvm.dbg.value(metadata i8 58, metadata !3061, metadata !DIExpression()) #35, !dbg !3086
  call void @llvm.dbg.value(metadata i8* %0, metadata !3033, metadata !DIExpression()) #35, !dbg !3088
  call void @llvm.dbg.value(metadata i64 -1, metadata !3034, metadata !DIExpression()) #35, !dbg !3088
  call void @llvm.dbg.value(metadata i8 58, metadata !3035, metadata !DIExpression()) #35, !dbg !3088
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3090
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3090
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3036, metadata !DIExpression()) #35, !dbg !3091
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3092, !tbaa.struct !3041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2051, metadata !DIExpression()) #35, !dbg !3093
  call void @llvm.dbg.value(metadata i8 58, metadata !2052, metadata !DIExpression()) #35, !dbg !3093
  call void @llvm.dbg.value(metadata i32 1, metadata !2053, metadata !DIExpression()) #35, !dbg !3093
  call void @llvm.dbg.value(metadata i8 58, metadata !2054, metadata !DIExpression()) #35, !dbg !3093
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3095
  call void @llvm.dbg.value(metadata i32* %4, metadata !2055, metadata !DIExpression()) #35, !dbg !3093
  call void @llvm.dbg.value(metadata i32 26, metadata !2057, metadata !DIExpression()) #35, !dbg !3093
  %5 = load i32, i32* %4, align 4, !dbg !3096, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %5, metadata !2058, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3093
  %6 = or i32 %5, 67108864, !dbg !3097
  store i32 %6, i32* %4, align 4, !dbg !3097, !tbaa !601
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #35, !dbg !3098
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3099
  ret i8* %7, !dbg !3100
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3101 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3103, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 %1, metadata !3104, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i8* %0, metadata !3033, metadata !DIExpression()) #35, !dbg !3106
  call void @llvm.dbg.value(metadata i64 %1, metadata !3034, metadata !DIExpression()) #35, !dbg !3106
  call void @llvm.dbg.value(metadata i8 58, metadata !3035, metadata !DIExpression()) #35, !dbg !3106
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3108
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3108
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3036, metadata !DIExpression()) #35, !dbg !3109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3110, !tbaa.struct !3041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2051, metadata !DIExpression()) #35, !dbg !3111
  call void @llvm.dbg.value(metadata i8 58, metadata !2052, metadata !DIExpression()) #35, !dbg !3111
  call void @llvm.dbg.value(metadata i32 1, metadata !2053, metadata !DIExpression()) #35, !dbg !3111
  call void @llvm.dbg.value(metadata i8 58, metadata !2054, metadata !DIExpression()) #35, !dbg !3111
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3113
  call void @llvm.dbg.value(metadata i32* %5, metadata !2055, metadata !DIExpression()) #35, !dbg !3111
  call void @llvm.dbg.value(metadata i32 26, metadata !2057, metadata !DIExpression()) #35, !dbg !3111
  %6 = load i32, i32* %5, align 4, !dbg !3114, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %6, metadata !2058, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3111
  %7 = or i32 %6, 67108864, !dbg !3115
  store i32 %7, i32* %5, align 4, !dbg !3115, !tbaa !601
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3116
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3117
  ret i8* %8, !dbg !3118
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3119 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3121, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i32 %1, metadata !3122, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i8* %2, metadata !3123, metadata !DIExpression()), !dbg !3125
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3126
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3126
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3124, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i32 %1, metadata !2931, metadata !DIExpression()) #35, !dbg !3128
  call void @llvm.dbg.value(metadata i32 0, metadata !2936, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3128
  %6 = icmp eq i32 %1, 10, !dbg !3130
  br i1 %6, label %7, label %8, !dbg !3131

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3132, !noalias !3133
  unreachable, !dbg !3132

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2936, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3128
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3136
  store i32 %1, i32* %9, align 8, !dbg !3136, !tbaa.struct !3041
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3136
  %11 = bitcast i32* %10 to i8*, !dbg !3136
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3136
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2051, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i8 58, metadata !2052, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i32 1, metadata !2053, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i8 58, metadata !2054, metadata !DIExpression()), !dbg !3137
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3139
  call void @llvm.dbg.value(metadata i32* %12, metadata !2055, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i32 26, metadata !2057, metadata !DIExpression()), !dbg !3137
  %13 = load i32, i32* %12, align 4, !dbg !3140, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %13, metadata !2058, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3137
  %14 = or i32 %13, 67108864, !dbg !3141
  store i32 %14, i32* %12, align 4, !dbg !3141, !tbaa !601
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3142
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3143
  ret i8* %15, !dbg !3144
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3145 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3149, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8* %1, metadata !3150, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8* %2, metadata !3151, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8* %3, metadata !3152, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32 %0, metadata !3154, metadata !DIExpression()) #35, !dbg !3164
  call void @llvm.dbg.value(metadata i8* %1, metadata !3159, metadata !DIExpression()) #35, !dbg !3164
  call void @llvm.dbg.value(metadata i8* %2, metadata !3160, metadata !DIExpression()) #35, !dbg !3164
  call void @llvm.dbg.value(metadata i8* %3, metadata !3161, metadata !DIExpression()) #35, !dbg !3164
  call void @llvm.dbg.value(metadata i64 -1, metadata !3162, metadata !DIExpression()) #35, !dbg !3164
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3166
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3166
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3163, metadata !DIExpression()) #35, !dbg !3167
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3168, !tbaa.struct !3041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2091, metadata !DIExpression()) #35, !dbg !3169
  call void @llvm.dbg.value(metadata i8* %1, metadata !2092, metadata !DIExpression()) #35, !dbg !3169
  call void @llvm.dbg.value(metadata i8* %2, metadata !2093, metadata !DIExpression()) #35, !dbg !3169
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2091, metadata !DIExpression()) #35, !dbg !3169
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3171
  store i32 10, i32* %7, align 8, !dbg !3172, !tbaa !2033
  %8 = icmp ne i8* %1, null, !dbg !3173
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3174
  br i1 %10, label %12, label %11, !dbg !3174

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3175
  unreachable, !dbg !3175

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3176
  store i8* %1, i8** %13, align 8, !dbg !3177, !tbaa !2106
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3178
  store i8* %2, i8** %14, align 8, !dbg !3179, !tbaa !2109
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3180
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3181
  ret i8* %15, !dbg !3182
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3155 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3154, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8* %1, metadata !3159, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8* %2, metadata !3160, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8* %3, metadata !3161, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i64 %4, metadata !3162, metadata !DIExpression()), !dbg !3183
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3184
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3184
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3163, metadata !DIExpression()), !dbg !3185
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3186, !tbaa.struct !3041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2091, metadata !DIExpression()) #35, !dbg !3187
  call void @llvm.dbg.value(metadata i8* %1, metadata !2092, metadata !DIExpression()) #35, !dbg !3187
  call void @llvm.dbg.value(metadata i8* %2, metadata !2093, metadata !DIExpression()) #35, !dbg !3187
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2091, metadata !DIExpression()) #35, !dbg !3187
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3189
  store i32 10, i32* %8, align 8, !dbg !3190, !tbaa !2033
  %9 = icmp ne i8* %1, null, !dbg !3191
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3192
  br i1 %11, label %13, label %12, !dbg !3192

12:                                               ; preds = %5
  tail call void @abort() #37, !dbg !3193
  unreachable, !dbg !3193

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3194
  store i8* %1, i8** %14, align 8, !dbg !3195, !tbaa !2106
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3196
  store i8* %2, i8** %15, align 8, !dbg !3197, !tbaa !2109
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3198
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3199
  ret i8* %16, !dbg !3200
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3201 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3205, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i8* %1, metadata !3206, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i8* %2, metadata !3207, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 0, metadata !3149, metadata !DIExpression()) #35, !dbg !3209
  call void @llvm.dbg.value(metadata i8* %0, metadata !3150, metadata !DIExpression()) #35, !dbg !3209
  call void @llvm.dbg.value(metadata i8* %1, metadata !3151, metadata !DIExpression()) #35, !dbg !3209
  call void @llvm.dbg.value(metadata i8* %2, metadata !3152, metadata !DIExpression()) #35, !dbg !3209
  call void @llvm.dbg.value(metadata i32 0, metadata !3154, metadata !DIExpression()) #35, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %0, metadata !3159, metadata !DIExpression()) #35, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %1, metadata !3160, metadata !DIExpression()) #35, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %2, metadata !3161, metadata !DIExpression()) #35, !dbg !3211
  call void @llvm.dbg.value(metadata i64 -1, metadata !3162, metadata !DIExpression()) #35, !dbg !3211
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3213
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3213
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3163, metadata !DIExpression()) #35, !dbg !3214
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3215, !tbaa.struct !3041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2091, metadata !DIExpression()) #35, !dbg !3216
  call void @llvm.dbg.value(metadata i8* %0, metadata !2092, metadata !DIExpression()) #35, !dbg !3216
  call void @llvm.dbg.value(metadata i8* %1, metadata !2093, metadata !DIExpression()) #35, !dbg !3216
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2091, metadata !DIExpression()) #35, !dbg !3216
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3218
  store i32 10, i32* %6, align 8, !dbg !3219, !tbaa !2033
  %7 = icmp ne i8* %0, null, !dbg !3220
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3221
  br i1 %9, label %11, label %10, !dbg !3221

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !3222
  unreachable, !dbg !3222

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3223
  store i8* %0, i8** %12, align 8, !dbg !3224, !tbaa !2106
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3225
  store i8* %1, i8** %13, align 8, !dbg !3226, !tbaa !2109
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3227
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3228
  ret i8* %14, !dbg !3229
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3230 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3234, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8* %1, metadata !3235, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8* %2, metadata !3236, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %3, metadata !3237, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i32 0, metadata !3154, metadata !DIExpression()) #35, !dbg !3239
  call void @llvm.dbg.value(metadata i8* %0, metadata !3159, metadata !DIExpression()) #35, !dbg !3239
  call void @llvm.dbg.value(metadata i8* %1, metadata !3160, metadata !DIExpression()) #35, !dbg !3239
  call void @llvm.dbg.value(metadata i8* %2, metadata !3161, metadata !DIExpression()) #35, !dbg !3239
  call void @llvm.dbg.value(metadata i64 %3, metadata !3162, metadata !DIExpression()) #35, !dbg !3239
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3241
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3241
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3163, metadata !DIExpression()) #35, !dbg !3242
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3243, !tbaa.struct !3041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2091, metadata !DIExpression()) #35, !dbg !3244
  call void @llvm.dbg.value(metadata i8* %0, metadata !2092, metadata !DIExpression()) #35, !dbg !3244
  call void @llvm.dbg.value(metadata i8* %1, metadata !2093, metadata !DIExpression()) #35, !dbg !3244
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2091, metadata !DIExpression()) #35, !dbg !3244
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3246
  store i32 10, i32* %7, align 8, !dbg !3247, !tbaa !2033
  %8 = icmp ne i8* %0, null, !dbg !3248
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3249
  br i1 %10, label %12, label %11, !dbg !3249

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3250
  unreachable, !dbg !3250

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3251
  store i8* %0, i8** %13, align 8, !dbg !3252, !tbaa !2106
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3253
  store i8* %1, i8** %14, align 8, !dbg !3254, !tbaa !2109
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3255
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3256
  ret i8* %15, !dbg !3257
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3258 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3262, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i8* %1, metadata !3263, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %2, metadata !3264, metadata !DIExpression()), !dbg !3265
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3266
  ret i8* %4, !dbg !3267
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3268 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3272, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 %1, metadata !3273, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i32 0, metadata !3262, metadata !DIExpression()) #35, !dbg !3275
  call void @llvm.dbg.value(metadata i8* %0, metadata !3263, metadata !DIExpression()) #35, !dbg !3275
  call void @llvm.dbg.value(metadata i64 %1, metadata !3264, metadata !DIExpression()) #35, !dbg !3275
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3277
  ret i8* %3, !dbg !3278
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3279 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3283, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i8* %1, metadata !3284, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i32 %0, metadata !3262, metadata !DIExpression()) #35, !dbg !3286
  call void @llvm.dbg.value(metadata i8* %1, metadata !3263, metadata !DIExpression()) #35, !dbg !3286
  call void @llvm.dbg.value(metadata i64 -1, metadata !3264, metadata !DIExpression()) #35, !dbg !3286
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3288
  ret i8* %3, !dbg !3289
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3290 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3294, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i32 0, metadata !3283, metadata !DIExpression()) #35, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %0, metadata !3284, metadata !DIExpression()) #35, !dbg !3296
  call void @llvm.dbg.value(metadata i32 0, metadata !3262, metadata !DIExpression()) #35, !dbg !3298
  call void @llvm.dbg.value(metadata i8* %0, metadata !3263, metadata !DIExpression()) #35, !dbg !3298
  call void @llvm.dbg.value(metadata i64 -1, metadata !3264, metadata !DIExpression()) #35, !dbg !3298
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3300
  ret i8* %2, !dbg !3301
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #12 !dbg !3302 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3304, metadata !DIExpression()), !dbg !3309
  %2 = icmp ult i32 %0, 3, !dbg !3310
  br i1 %2, label %3, label %8, !dbg !3310

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #35, !dbg !3311
  call void @llvm.dbg.value(metadata i32 %4, metadata !3305, metadata !DIExpression()), !dbg !3312
  %5 = tail call i32* @__errno_location() #38, !dbg !3313
  %6 = load i32, i32* %5, align 4, !dbg !3313, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %6, metadata !3308, metadata !DIExpression()), !dbg !3312
  %7 = tail call i32 @close(i32 noundef %0) #35, !dbg !3314
  store i32 %6, i32* %5, align 4, !dbg !3315, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %4, metadata !3304, metadata !DIExpression()), !dbg !3309
  br label %8, !dbg !3316

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3304, metadata !DIExpression()), !dbg !3309
  ret i32 %9, !dbg !3317
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3318 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3356, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i8* %1, metadata !3357, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i8* %2, metadata !3358, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i8* %3, metadata !3359, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i8** %4, metadata !3360, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 %5, metadata !3361, metadata !DIExpression()), !dbg !3362
  %7 = icmp eq i8* %1, null, !dbg !3363
  br i1 %7, label %10, label %8, !dbg !3365

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.139, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #35, !dbg !3366
  br label %12, !dbg !3366

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.140, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #35, !dbg !3367
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.142, i64 0, i64 0), i32 noundef 5) #35, !dbg !3368
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #35, !dbg !3368
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.143, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3369
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.144, i64 0, i64 0), i32 noundef 5) #35, !dbg !3370
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.145, i64 0, i64 0)) #35, !dbg !3370
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.143, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3371
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
  ], !dbg !3372

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.146, i64 0, i64 0), i32 noundef 5) #35, !dbg !3373
  %21 = load i8*, i8** %4, align 8, !dbg !3373, !tbaa !510
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #35, !dbg !3373
  br label %147, !dbg !3375

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.147, i64 0, i64 0), i32 noundef 5) #35, !dbg !3376
  %25 = load i8*, i8** %4, align 8, !dbg !3376, !tbaa !510
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3376
  %27 = load i8*, i8** %26, align 8, !dbg !3376, !tbaa !510
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #35, !dbg !3376
  br label %147, !dbg !3377

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.148, i64 0, i64 0), i32 noundef 5) #35, !dbg !3378
  %31 = load i8*, i8** %4, align 8, !dbg !3378, !tbaa !510
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3378
  %33 = load i8*, i8** %32, align 8, !dbg !3378, !tbaa !510
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3378
  %35 = load i8*, i8** %34, align 8, !dbg !3378, !tbaa !510
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #35, !dbg !3378
  br label %147, !dbg !3379

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.149, i64 0, i64 0), i32 noundef 5) #35, !dbg !3380
  %39 = load i8*, i8** %4, align 8, !dbg !3380, !tbaa !510
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3380
  %41 = load i8*, i8** %40, align 8, !dbg !3380, !tbaa !510
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3380
  %43 = load i8*, i8** %42, align 8, !dbg !3380, !tbaa !510
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3380
  %45 = load i8*, i8** %44, align 8, !dbg !3380, !tbaa !510
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #35, !dbg !3380
  br label %147, !dbg !3381

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.150, i64 0, i64 0), i32 noundef 5) #35, !dbg !3382
  %49 = load i8*, i8** %4, align 8, !dbg !3382, !tbaa !510
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3382
  %51 = load i8*, i8** %50, align 8, !dbg !3382, !tbaa !510
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3382
  %53 = load i8*, i8** %52, align 8, !dbg !3382, !tbaa !510
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3382
  %55 = load i8*, i8** %54, align 8, !dbg !3382, !tbaa !510
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3382
  %57 = load i8*, i8** %56, align 8, !dbg !3382, !tbaa !510
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #35, !dbg !3382
  br label %147, !dbg !3383

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.151, i64 0, i64 0), i32 noundef 5) #35, !dbg !3384
  %61 = load i8*, i8** %4, align 8, !dbg !3384, !tbaa !510
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3384
  %63 = load i8*, i8** %62, align 8, !dbg !3384, !tbaa !510
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3384
  %65 = load i8*, i8** %64, align 8, !dbg !3384, !tbaa !510
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3384
  %67 = load i8*, i8** %66, align 8, !dbg !3384, !tbaa !510
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3384
  %69 = load i8*, i8** %68, align 8, !dbg !3384, !tbaa !510
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3384
  %71 = load i8*, i8** %70, align 8, !dbg !3384, !tbaa !510
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #35, !dbg !3384
  br label %147, !dbg !3385

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.152, i64 0, i64 0), i32 noundef 5) #35, !dbg !3386
  %75 = load i8*, i8** %4, align 8, !dbg !3386, !tbaa !510
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3386
  %77 = load i8*, i8** %76, align 8, !dbg !3386, !tbaa !510
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3386
  %79 = load i8*, i8** %78, align 8, !dbg !3386, !tbaa !510
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3386
  %81 = load i8*, i8** %80, align 8, !dbg !3386, !tbaa !510
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3386
  %83 = load i8*, i8** %82, align 8, !dbg !3386, !tbaa !510
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3386
  %85 = load i8*, i8** %84, align 8, !dbg !3386, !tbaa !510
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3386
  %87 = load i8*, i8** %86, align 8, !dbg !3386, !tbaa !510
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #35, !dbg !3386
  br label %147, !dbg !3387

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.153, i64 0, i64 0), i32 noundef 5) #35, !dbg !3388
  %91 = load i8*, i8** %4, align 8, !dbg !3388, !tbaa !510
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3388
  %93 = load i8*, i8** %92, align 8, !dbg !3388, !tbaa !510
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3388
  %95 = load i8*, i8** %94, align 8, !dbg !3388, !tbaa !510
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3388
  %97 = load i8*, i8** %96, align 8, !dbg !3388, !tbaa !510
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3388
  %99 = load i8*, i8** %98, align 8, !dbg !3388, !tbaa !510
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3388
  %101 = load i8*, i8** %100, align 8, !dbg !3388, !tbaa !510
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3388
  %103 = load i8*, i8** %102, align 8, !dbg !3388, !tbaa !510
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3388
  %105 = load i8*, i8** %104, align 8, !dbg !3388, !tbaa !510
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #35, !dbg !3388
  br label %147, !dbg !3389

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.154, i64 0, i64 0), i32 noundef 5) #35, !dbg !3390
  %109 = load i8*, i8** %4, align 8, !dbg !3390, !tbaa !510
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3390
  %111 = load i8*, i8** %110, align 8, !dbg !3390, !tbaa !510
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3390
  %113 = load i8*, i8** %112, align 8, !dbg !3390, !tbaa !510
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3390
  %115 = load i8*, i8** %114, align 8, !dbg !3390, !tbaa !510
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3390
  %117 = load i8*, i8** %116, align 8, !dbg !3390, !tbaa !510
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3390
  %119 = load i8*, i8** %118, align 8, !dbg !3390, !tbaa !510
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3390
  %121 = load i8*, i8** %120, align 8, !dbg !3390, !tbaa !510
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3390
  %123 = load i8*, i8** %122, align 8, !dbg !3390, !tbaa !510
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3390
  %125 = load i8*, i8** %124, align 8, !dbg !3390, !tbaa !510
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #35, !dbg !3390
  br label %147, !dbg !3391

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.155, i64 0, i64 0), i32 noundef 5) #35, !dbg !3392
  %129 = load i8*, i8** %4, align 8, !dbg !3392, !tbaa !510
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3392
  %131 = load i8*, i8** %130, align 8, !dbg !3392, !tbaa !510
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3392
  %133 = load i8*, i8** %132, align 8, !dbg !3392, !tbaa !510
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3392
  %135 = load i8*, i8** %134, align 8, !dbg !3392, !tbaa !510
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3392
  %137 = load i8*, i8** %136, align 8, !dbg !3392, !tbaa !510
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3392
  %139 = load i8*, i8** %138, align 8, !dbg !3392, !tbaa !510
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3392
  %141 = load i8*, i8** %140, align 8, !dbg !3392, !tbaa !510
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3392
  %143 = load i8*, i8** %142, align 8, !dbg !3392, !tbaa !510
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3392
  %145 = load i8*, i8** %144, align 8, !dbg !3392, !tbaa !510
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #35, !dbg !3392
  br label %147, !dbg !3393

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3394
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3395 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3399, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i8* %1, metadata !3400, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i8* %2, metadata !3401, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i8* %3, metadata !3402, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i8** %4, metadata !3403, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 0, metadata !3404, metadata !DIExpression()), !dbg !3405
  br label %6, !dbg !3406

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3408
  call void @llvm.dbg.value(metadata i64 %7, metadata !3404, metadata !DIExpression()), !dbg !3405
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3409
  %9 = load i8*, i8** %8, align 8, !dbg !3409, !tbaa !510
  %10 = icmp eq i8* %9, null, !dbg !3411
  %11 = add i64 %7, 1, !dbg !3412
  call void @llvm.dbg.value(metadata i64 %11, metadata !3404, metadata !DIExpression()), !dbg !3405
  br i1 %10, label %12, label %6, !dbg !3411, !llvm.loop !3413

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3415
  ret void, !dbg !3416
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3417 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3432, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i8* %1, metadata !3433, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i8* %2, metadata !3434, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i8* %3, metadata !3435, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3436, metadata !DIExpression()), !dbg !3441
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3442
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3442
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3438, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 0, metadata !3437, metadata !DIExpression()), !dbg !3440
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3437, metadata !DIExpression()), !dbg !3440
  %11 = load i32, i32* %8, align 8, !dbg !3444
  %12 = icmp sgt i32 %11, -1, !dbg !3444
  br i1 %12, label %20, label %13, !dbg !3444

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3444
  store i32 %14, i32* %8, align 8, !dbg !3444
  %15 = icmp ult i32 %11, -7, !dbg !3444
  br i1 %15, label %16, label %20, !dbg !3444

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3444
  %18 = sext i32 %11 to i64, !dbg !3444
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3444
  br label %24, !dbg !3444

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3444
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3444
  store i8* %23, i8** %10, align 8, !dbg !3444
  br label %24, !dbg !3444

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3444
  %28 = load i8*, i8** %27, align 8, !dbg !3444
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3447
  store i8* %28, i8** %29, align 8, !dbg !3448, !tbaa !510
  %30 = icmp eq i8* %28, null, !dbg !3449
  br i1 %30, label %210, label %31, !dbg !3450

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 1, metadata !3437, metadata !DIExpression()), !dbg !3440
  %32 = icmp sgt i32 %25, -1, !dbg !3444
  br i1 %32, label %40, label %33, !dbg !3444

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3444
  store i32 %34, i32* %8, align 8, !dbg !3444
  %35 = icmp ult i32 %25, -7, !dbg !3444
  br i1 %35, label %36, label %40, !dbg !3444

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3444
  %38 = sext i32 %25 to i64, !dbg !3444
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3444
  br label %44, !dbg !3444

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3444
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3444
  store i8* %43, i8** %10, align 8, !dbg !3444
  br label %44, !dbg !3444

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3444
  %48 = load i8*, i8** %47, align 8, !dbg !3444
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3447
  store i8* %48, i8** %49, align 8, !dbg !3448, !tbaa !510
  %50 = icmp eq i8* %48, null, !dbg !3449
  br i1 %50, label %210, label %51, !dbg !3450

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 2, metadata !3437, metadata !DIExpression()), !dbg !3440
  %52 = icmp sgt i32 %45, -1, !dbg !3444
  br i1 %52, label %60, label %53, !dbg !3444

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3444
  store i32 %54, i32* %8, align 8, !dbg !3444
  %55 = icmp ult i32 %45, -7, !dbg !3444
  br i1 %55, label %56, label %60, !dbg !3444

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3444
  %58 = sext i32 %45 to i64, !dbg !3444
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3444
  br label %64, !dbg !3444

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3444
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3444
  store i8* %63, i8** %10, align 8, !dbg !3444
  br label %64, !dbg !3444

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3444
  %68 = load i8*, i8** %67, align 8, !dbg !3444
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3447
  store i8* %68, i8** %69, align 8, !dbg !3448, !tbaa !510
  %70 = icmp eq i8* %68, null, !dbg !3449
  br i1 %70, label %210, label %71, !dbg !3450

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 3, metadata !3437, metadata !DIExpression()), !dbg !3440
  %72 = icmp sgt i32 %65, -1, !dbg !3444
  br i1 %72, label %80, label %73, !dbg !3444

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3444
  store i32 %74, i32* %8, align 8, !dbg !3444
  %75 = icmp ult i32 %65, -7, !dbg !3444
  br i1 %75, label %76, label %80, !dbg !3444

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3444
  %78 = sext i32 %65 to i64, !dbg !3444
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3444
  br label %84, !dbg !3444

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3444
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3444
  store i8* %83, i8** %10, align 8, !dbg !3444
  br label %84, !dbg !3444

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3444
  %88 = load i8*, i8** %87, align 8, !dbg !3444
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3447
  store i8* %88, i8** %89, align 8, !dbg !3448, !tbaa !510
  %90 = icmp eq i8* %88, null, !dbg !3449
  br i1 %90, label %210, label %91, !dbg !3450

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 4, metadata !3437, metadata !DIExpression()), !dbg !3440
  %92 = icmp sgt i32 %85, -1, !dbg !3444
  br i1 %92, label %100, label %93, !dbg !3444

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3444
  store i32 %94, i32* %8, align 8, !dbg !3444
  %95 = icmp ult i32 %85, -7, !dbg !3444
  br i1 %95, label %96, label %100, !dbg !3444

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3444
  %98 = sext i32 %85 to i64, !dbg !3444
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3444
  br label %104, !dbg !3444

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3444
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3444
  store i8* %103, i8** %10, align 8, !dbg !3444
  br label %104, !dbg !3444

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3444
  %108 = load i8*, i8** %107, align 8, !dbg !3444
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3447
  store i8* %108, i8** %109, align 8, !dbg !3448, !tbaa !510
  %110 = icmp eq i8* %108, null, !dbg !3449
  br i1 %110, label %210, label %111, !dbg !3450

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 5, metadata !3437, metadata !DIExpression()), !dbg !3440
  %112 = icmp sgt i32 %105, -1, !dbg !3444
  br i1 %112, label %120, label %113, !dbg !3444

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3444
  store i32 %114, i32* %8, align 8, !dbg !3444
  %115 = icmp ult i32 %105, -7, !dbg !3444
  br i1 %115, label %116, label %120, !dbg !3444

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3444
  %118 = sext i32 %105 to i64, !dbg !3444
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3444
  br label %124, !dbg !3444

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3444
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3444
  store i8* %123, i8** %10, align 8, !dbg !3444
  br label %124, !dbg !3444

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3444
  %128 = load i8*, i8** %127, align 8, !dbg !3444
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3447
  store i8* %128, i8** %129, align 8, !dbg !3448, !tbaa !510
  %130 = icmp eq i8* %128, null, !dbg !3449
  br i1 %130, label %210, label %131, !dbg !3450

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 6, metadata !3437, metadata !DIExpression()), !dbg !3440
  %132 = icmp sgt i32 %125, -1, !dbg !3444
  br i1 %132, label %140, label %133, !dbg !3444

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3444
  store i32 %134, i32* %8, align 8, !dbg !3444
  %135 = icmp ult i32 %125, -7, !dbg !3444
  br i1 %135, label %136, label %140, !dbg !3444

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3444
  %138 = sext i32 %125 to i64, !dbg !3444
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3444
  br label %144, !dbg !3444

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3444
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3444
  store i8* %143, i8** %10, align 8, !dbg !3444
  br label %144, !dbg !3444

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3444
  %148 = load i8*, i8** %147, align 8, !dbg !3444
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3447
  store i8* %148, i8** %149, align 8, !dbg !3448, !tbaa !510
  %150 = icmp eq i8* %148, null, !dbg !3449
  br i1 %150, label %210, label %151, !dbg !3450

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 7, metadata !3437, metadata !DIExpression()), !dbg !3440
  %152 = icmp sgt i32 %145, -1, !dbg !3444
  br i1 %152, label %160, label %153, !dbg !3444

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3444
  store i32 %154, i32* %8, align 8, !dbg !3444
  %155 = icmp ult i32 %145, -7, !dbg !3444
  br i1 %155, label %156, label %160, !dbg !3444

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3444
  %158 = sext i32 %145 to i64, !dbg !3444
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3444
  br label %164, !dbg !3444

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3444
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3444
  store i8* %163, i8** %10, align 8, !dbg !3444
  br label %164, !dbg !3444

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3444
  %168 = load i8*, i8** %167, align 8, !dbg !3444
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3447
  store i8* %168, i8** %169, align 8, !dbg !3448, !tbaa !510
  %170 = icmp eq i8* %168, null, !dbg !3449
  br i1 %170, label %210, label %171, !dbg !3450

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 8, metadata !3437, metadata !DIExpression()), !dbg !3440
  %172 = icmp sgt i32 %165, -1, !dbg !3444
  br i1 %172, label %180, label %173, !dbg !3444

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3444
  store i32 %174, i32* %8, align 8, !dbg !3444
  %175 = icmp ult i32 %165, -7, !dbg !3444
  br i1 %175, label %176, label %180, !dbg !3444

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3444
  %178 = sext i32 %165 to i64, !dbg !3444
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3444
  br label %184, !dbg !3444

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3444
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3444
  store i8* %183, i8** %10, align 8, !dbg !3444
  br label %184, !dbg !3444

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3444
  %188 = load i8*, i8** %187, align 8, !dbg !3444
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3447
  store i8* %188, i8** %189, align 8, !dbg !3448, !tbaa !510
  %190 = icmp eq i8* %188, null, !dbg !3449
  br i1 %190, label %210, label %191, !dbg !3450

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3437, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 9, metadata !3437, metadata !DIExpression()), !dbg !3440
  %192 = icmp sgt i32 %185, -1, !dbg !3444
  br i1 %192, label %200, label %193, !dbg !3444

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3444
  store i32 %194, i32* %8, align 8, !dbg !3444
  %195 = icmp ult i32 %185, -7, !dbg !3444
  br i1 %195, label %196, label %200, !dbg !3444

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3444
  %198 = sext i32 %185 to i64, !dbg !3444
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3444
  br label %203, !dbg !3444

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3444
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3444
  store i8* %202, i8** %10, align 8, !dbg !3444
  br label %203, !dbg !3444

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3444
  %206 = load i8*, i8** %205, align 8, !dbg !3444
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3447
  store i8* %206, i8** %207, align 8, !dbg !3448, !tbaa !510
  %208 = icmp eq i8* %206, null, !dbg !3449
  %209 = select i1 %208, i64 9, i64 10, !dbg !3450
  br label %210, !dbg !3450

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3451
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3452
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3453
  ret void, !dbg !3453
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3454 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3458, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i8* %1, metadata !3459, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i8* %2, metadata !3460, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i8* %3, metadata !3461, metadata !DIExpression()), !dbg !3463
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3464
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3464
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3462, metadata !DIExpression()), !dbg !3465
  call void @llvm.va_start(i8* nonnull %7), !dbg !3466
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3467
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3467
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3467, !tbaa.struct !1594
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3467
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3467
  call void @llvm.va_end(i8* nonnull %7), !dbg !3468
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3469
  ret void, !dbg !3469
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3470 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3471, !tbaa !510
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.143, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3471
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.160, i64 0, i64 0), i32 noundef 5) #35, !dbg !3472
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.161, i64 0, i64 0)) #35, !dbg !3472
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.162, i64 0, i64 0), i32 noundef 5) #35, !dbg !3473
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.163, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.164, i64 0, i64 0)) #35, !dbg !3473
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.165, i64 0, i64 0), i32 noundef 5) #35, !dbg !3474
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.166, i64 0, i64 0)) #35, !dbg !3474
  ret void, !dbg !3475
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3476 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3481, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %1, metadata !3482, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %2, metadata !3483, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8* %0, metadata !3485, metadata !DIExpression()) #35, !dbg !3490
  call void @llvm.dbg.value(metadata i64 %1, metadata !3488, metadata !DIExpression()) #35, !dbg !3490
  call void @llvm.dbg.value(metadata i64 %2, metadata !3489, metadata !DIExpression()) #35, !dbg !3490
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3492
  call void @llvm.dbg.value(metadata i8* %4, metadata !3493, metadata !DIExpression()) #35, !dbg !3498
  %5 = icmp eq i8* %4, null, !dbg !3500
  br i1 %5, label %6, label %7, !dbg !3502

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3503
  unreachable, !dbg !3503

7:                                                ; preds = %3
  ret i8* %4, !dbg !3504
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3486 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3485, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 %1, metadata !3488, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 %2, metadata !3489, metadata !DIExpression()), !dbg !3505
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3506
  call void @llvm.dbg.value(metadata i8* %4, metadata !3493, metadata !DIExpression()) #35, !dbg !3507
  %5 = icmp eq i8* %4, null, !dbg !3509
  br i1 %5, label %6, label %7, !dbg !3510

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3511
  unreachable, !dbg !3511

7:                                                ; preds = %3
  ret i8* %4, !dbg !3512
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3513 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3517, metadata !DIExpression()), !dbg !3518
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3519
  call void @llvm.dbg.value(metadata i8* %2, metadata !3493, metadata !DIExpression()) #35, !dbg !3520
  %3 = icmp eq i8* %2, null, !dbg !3522
  br i1 %3, label %4, label %5, !dbg !3523

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3524
  unreachable, !dbg !3524

5:                                                ; preds = %1
  ret i8* %2, !dbg !3525
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3526 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3530, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %0, metadata !3532, metadata !DIExpression()) #35, !dbg !3536
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3538
  call void @llvm.dbg.value(metadata i8* %2, metadata !3493, metadata !DIExpression()) #35, !dbg !3539
  %3 = icmp eq i8* %2, null, !dbg !3541
  br i1 %3, label %4, label %5, !dbg !3542

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3543
  unreachable, !dbg !3543

5:                                                ; preds = %1
  ret i8* %2, !dbg !3544
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3545 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3549, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i64 %0, metadata !3517, metadata !DIExpression()) #35, !dbg !3551
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3553
  call void @llvm.dbg.value(metadata i8* %2, metadata !3493, metadata !DIExpression()) #35, !dbg !3554
  %3 = icmp eq i8* %2, null, !dbg !3556
  br i1 %3, label %4, label %5, !dbg !3557

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3558
  unreachable, !dbg !3558

5:                                                ; preds = %1
  ret i8* %2, !dbg !3559
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3560 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3564, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64 %1, metadata !3565, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8* %0, metadata !3567, metadata !DIExpression()) #35, !dbg !3572
  call void @llvm.dbg.value(metadata i64 %1, metadata !3571, metadata !DIExpression()) #35, !dbg !3572
  %3 = icmp eq i64 %1, 0, !dbg !3574
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3574
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3575
  call void @llvm.dbg.value(metadata i8* %5, metadata !3493, metadata !DIExpression()) #35, !dbg !3576
  %6 = icmp eq i8* %5, null, !dbg !3578
  br i1 %6, label %7, label %8, !dbg !3579

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3580
  unreachable, !dbg !3580

8:                                                ; preds = %2
  ret i8* %5, !dbg !3581
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3582 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3586, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i64 %1, metadata !3587, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i8* %0, metadata !3589, metadata !DIExpression()) #35, !dbg !3593
  call void @llvm.dbg.value(metadata i64 %1, metadata !3592, metadata !DIExpression()) #35, !dbg !3593
  call void @llvm.dbg.value(metadata i8* %0, metadata !3567, metadata !DIExpression()) #35, !dbg !3595
  call void @llvm.dbg.value(metadata i64 %1, metadata !3571, metadata !DIExpression()) #35, !dbg !3595
  %3 = icmp eq i64 %1, 0, !dbg !3597
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3597
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3598
  call void @llvm.dbg.value(metadata i8* %5, metadata !3493, metadata !DIExpression()) #35, !dbg !3599
  %6 = icmp eq i8* %5, null, !dbg !3601
  br i1 %6, label %7, label %8, !dbg !3602

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3603
  unreachable, !dbg !3603

8:                                                ; preds = %2
  ret i8* %5, !dbg !3604
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3605 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3609, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i64 %1, metadata !3610, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i64 %2, metadata !3611, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i8* %0, metadata !3613, metadata !DIExpression()) #35, !dbg !3618
  call void @llvm.dbg.value(metadata i64 %1, metadata !3616, metadata !DIExpression()) #35, !dbg !3618
  call void @llvm.dbg.value(metadata i64 %2, metadata !3617, metadata !DIExpression()) #35, !dbg !3618
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3620
  call void @llvm.dbg.value(metadata i8* %4, metadata !3493, metadata !DIExpression()) #35, !dbg !3621
  %5 = icmp eq i8* %4, null, !dbg !3623
  br i1 %5, label %6, label %7, !dbg !3624

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3625
  unreachable, !dbg !3625

7:                                                ; preds = %3
  ret i8* %4, !dbg !3626
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3627 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3631, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i64 %1, metadata !3632, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i8* null, metadata !3485, metadata !DIExpression()) #35, !dbg !3634
  call void @llvm.dbg.value(metadata i64 %0, metadata !3488, metadata !DIExpression()) #35, !dbg !3634
  call void @llvm.dbg.value(metadata i64 %1, metadata !3489, metadata !DIExpression()) #35, !dbg !3634
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3636
  call void @llvm.dbg.value(metadata i8* %3, metadata !3493, metadata !DIExpression()) #35, !dbg !3637
  %4 = icmp eq i8* %3, null, !dbg !3639
  br i1 %4, label %5, label %6, !dbg !3640

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3641
  unreachable, !dbg !3641

6:                                                ; preds = %2
  ret i8* %3, !dbg !3642
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3643 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3647, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i64 %1, metadata !3648, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i8* null, metadata !3609, metadata !DIExpression()) #35, !dbg !3650
  call void @llvm.dbg.value(metadata i64 %0, metadata !3610, metadata !DIExpression()) #35, !dbg !3650
  call void @llvm.dbg.value(metadata i64 %1, metadata !3611, metadata !DIExpression()) #35, !dbg !3650
  call void @llvm.dbg.value(metadata i8* null, metadata !3613, metadata !DIExpression()) #35, !dbg !3652
  call void @llvm.dbg.value(metadata i64 %0, metadata !3616, metadata !DIExpression()) #35, !dbg !3652
  call void @llvm.dbg.value(metadata i64 %1, metadata !3617, metadata !DIExpression()) #35, !dbg !3652
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3654
  call void @llvm.dbg.value(metadata i8* %3, metadata !3493, metadata !DIExpression()) #35, !dbg !3655
  %4 = icmp eq i8* %3, null, !dbg !3657
  br i1 %4, label %5, label %6, !dbg !3658

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3659
  unreachable, !dbg !3659

6:                                                ; preds = %2
  ret i8* %3, !dbg !3660
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3661 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3665, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64* %1, metadata !3666, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i8* %0, metadata !443, metadata !DIExpression()) #35, !dbg !3668
  call void @llvm.dbg.value(metadata i64* %1, metadata !444, metadata !DIExpression()) #35, !dbg !3668
  call void @llvm.dbg.value(metadata i64 1, metadata !445, metadata !DIExpression()) #35, !dbg !3668
  %3 = load i64, i64* %1, align 8, !dbg !3670, !tbaa !2751
  call void @llvm.dbg.value(metadata i64 %3, metadata !446, metadata !DIExpression()) #35, !dbg !3668
  %4 = icmp eq i8* %0, null, !dbg !3671
  br i1 %4, label %5, label %8, !dbg !3673

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3674
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3677
  br label %15, !dbg !3677

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3678
  %10 = add nuw i64 %9, 1, !dbg !3678
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #35, !dbg !3678
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3678
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %13, metadata !446, metadata !DIExpression()) #35, !dbg !3668
  br i1 %12, label %14, label %15, !dbg !3681

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !3682
  unreachable, !dbg !3682

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3668
  call void @llvm.dbg.value(metadata i64 %16, metadata !446, metadata !DIExpression()) #35, !dbg !3668
  call void @llvm.dbg.value(metadata i8* %0, metadata !3485, metadata !DIExpression()) #35, !dbg !3683
  call void @llvm.dbg.value(metadata i64 %16, metadata !3488, metadata !DIExpression()) #35, !dbg !3683
  call void @llvm.dbg.value(metadata i64 1, metadata !3489, metadata !DIExpression()) #35, !dbg !3683
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #35, !dbg !3685
  call void @llvm.dbg.value(metadata i8* %17, metadata !3493, metadata !DIExpression()) #35, !dbg !3686
  %18 = icmp eq i8* %17, null, !dbg !3688
  br i1 %18, label %19, label %20, !dbg !3689

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !3690
  unreachable, !dbg !3690

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !443, metadata !DIExpression()) #35, !dbg !3668
  store i64 %16, i64* %1, align 8, !dbg !3691, !tbaa !2751
  ret i8* %17, !dbg !3692
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !438 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !443, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i64* %1, metadata !444, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i64 %2, metadata !445, metadata !DIExpression()), !dbg !3693
  %4 = load i64, i64* %1, align 8, !dbg !3694, !tbaa !2751
  call void @llvm.dbg.value(metadata i64 %4, metadata !446, metadata !DIExpression()), !dbg !3693
  %5 = icmp eq i8* %0, null, !dbg !3695
  br i1 %5, label %6, label %13, !dbg !3696

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3697
  br i1 %7, label %8, label %20, !dbg !3698

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3699
  call void @llvm.dbg.value(metadata i64 %9, metadata !446, metadata !DIExpression()), !dbg !3693
  %10 = icmp ugt i64 %2, 128, !dbg !3701
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3702
  call void @llvm.dbg.value(metadata i64 %12, metadata !446, metadata !DIExpression()), !dbg !3693
  br label %20, !dbg !3703

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3704
  %15 = add nuw i64 %14, 1, !dbg !3704
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3704
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3704
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %18, metadata !446, metadata !DIExpression()), !dbg !3693
  br i1 %17, label %19, label %20, !dbg !3705

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !3706
  unreachable, !dbg !3706

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3693
  call void @llvm.dbg.value(metadata i64 %21, metadata !446, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i8* %0, metadata !3485, metadata !DIExpression()) #35, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %21, metadata !3488, metadata !DIExpression()) #35, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %2, metadata !3489, metadata !DIExpression()) #35, !dbg !3707
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #35, !dbg !3709
  call void @llvm.dbg.value(metadata i8* %22, metadata !3493, metadata !DIExpression()) #35, !dbg !3710
  %23 = icmp eq i8* %22, null, !dbg !3712
  br i1 %23, label %24, label %25, !dbg !3713

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !3714
  unreachable, !dbg !3714

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !443, metadata !DIExpression()), !dbg !3693
  store i64 %21, i64* %1, align 8, !dbg !3715, !tbaa !2751
  ret i8* %22, !dbg !3716
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !450 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !458, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64* %1, metadata !459, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %2, metadata !460, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %3, metadata !461, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %4, metadata !462, metadata !DIExpression()), !dbg !3717
  %6 = load i64, i64* %1, align 8, !dbg !3718, !tbaa !2751
  call void @llvm.dbg.value(metadata i64 %6, metadata !463, metadata !DIExpression()), !dbg !3717
  %7 = ashr i64 %6, 1, !dbg !3719
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3719
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3719
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3719
  call void @llvm.dbg.value(metadata i64 %10, metadata !464, metadata !DIExpression()), !dbg !3717
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3721
  call void @llvm.dbg.value(metadata i64 %11, metadata !464, metadata !DIExpression()), !dbg !3717
  %12 = icmp sgt i64 %3, -1, !dbg !3722
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3724
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3724
  call void @llvm.dbg.value(metadata i64 %15, metadata !464, metadata !DIExpression()), !dbg !3717
  %16 = icmp slt i64 %4, 0, !dbg !3725
  br i1 %16, label %17, label %30, !dbg !3725

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3725
  br i1 %18, label %19, label %24, !dbg !3725

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3725
  %21 = udiv i64 9223372036854775807, %20, !dbg !3725
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3725
  br i1 %23, label %46, label %43, !dbg !3725

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3725
  br i1 %25, label %43, label %26, !dbg !3725

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3725
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3725
  %29 = icmp ult i64 %28, %15, !dbg !3725
  br i1 %29, label %46, label %43, !dbg !3725

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3725
  br i1 %31, label %43, label %32, !dbg !3725

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3725
  br i1 %33, label %34, label %40, !dbg !3725

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3725
  br i1 %35, label %43, label %36, !dbg !3725

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3725
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3725
  %39 = icmp ult i64 %38, %4, !dbg !3725
  br i1 %39, label %46, label %43, !dbg !3725

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3725
  %42 = icmp ult i64 %41, %15, !dbg !3725
  br i1 %42, label %46, label %43, !dbg !3725

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !465, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3717
  %44 = mul i64 %15, %4, !dbg !3725
  call void @llvm.dbg.value(metadata i64 %44, metadata !465, metadata !DIExpression()), !dbg !3717
  %45 = icmp slt i64 %44, 128, !dbg !3725
  br i1 %45, label %46, label %52, !dbg !3725

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !466, metadata !DIExpression()), !dbg !3717
  %48 = sdiv i64 %47, %4, !dbg !3726
  call void @llvm.dbg.value(metadata i64 %48, metadata !464, metadata !DIExpression()), !dbg !3717
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3729
  call void @llvm.dbg.value(metadata i64 %51, metadata !465, metadata !DIExpression()), !dbg !3717
  br label %52, !dbg !3730

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3717
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3717
  call void @llvm.dbg.value(metadata i64 %54, metadata !465, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %53, metadata !464, metadata !DIExpression()), !dbg !3717
  %55 = icmp eq i8* %0, null, !dbg !3731
  br i1 %55, label %56, label %57, !dbg !3733

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3734, !tbaa !2751
  br label %57, !dbg !3735

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3736
  %59 = icmp slt i64 %58, %2, !dbg !3738
  br i1 %59, label %60, label %97, !dbg !3739

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3740
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3740
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3740
  call void @llvm.dbg.value(metadata i64 %63, metadata !464, metadata !DIExpression()), !dbg !3717
  br i1 %62, label %96, label %64, !dbg !3741

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3742
  br i1 %66, label %96, label %67, !dbg !3742

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3743

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3743
  br i1 %69, label %70, label %75, !dbg !3743

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3743
  %72 = udiv i64 9223372036854775807, %71, !dbg !3743
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3743
  br i1 %74, label %96, label %94, !dbg !3743

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3743
  br i1 %76, label %94, label %77, !dbg !3743

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3743
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3743
  %80 = icmp ult i64 %79, %63, !dbg !3743
  br i1 %80, label %96, label %94, !dbg !3743

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3743
  br i1 %82, label %94, label %83, !dbg !3743

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3743
  br i1 %84, label %85, label %91, !dbg !3743

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3743
  br i1 %86, label %94, label %87, !dbg !3743

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3743
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3743
  %90 = icmp ult i64 %89, %4, !dbg !3743
  br i1 %90, label %96, label %94, !dbg !3743

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3743
  %93 = icmp ult i64 %92, %63, !dbg !3743
  br i1 %93, label %96, label %94, !dbg !3743

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !465, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3717
  %95 = mul i64 %63, %4, !dbg !3743
  call void @llvm.dbg.value(metadata i64 %95, metadata !465, metadata !DIExpression()), !dbg !3717
  br label %97, !dbg !3744

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #37, !dbg !3745
  unreachable, !dbg !3745

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3717
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3717
  call void @llvm.dbg.value(metadata i64 %99, metadata !465, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %98, metadata !464, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i8* %0, metadata !3564, metadata !DIExpression()) #35, !dbg !3746
  call void @llvm.dbg.value(metadata i64 %99, metadata !3565, metadata !DIExpression()) #35, !dbg !3746
  call void @llvm.dbg.value(metadata i8* %0, metadata !3567, metadata !DIExpression()) #35, !dbg !3748
  call void @llvm.dbg.value(metadata i64 %99, metadata !3571, metadata !DIExpression()) #35, !dbg !3748
  %100 = icmp eq i64 %99, 0, !dbg !3750
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3750
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #35, !dbg !3751
  call void @llvm.dbg.value(metadata i8* %102, metadata !3493, metadata !DIExpression()) #35, !dbg !3752
  %103 = icmp eq i8* %102, null, !dbg !3754
  br i1 %103, label %104, label %105, !dbg !3755

104:                                              ; preds = %97
  tail call void @xalloc_die() #37, !dbg !3756
  unreachable, !dbg !3756

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !458, metadata !DIExpression()), !dbg !3717
  store i64 %98, i64* %1, align 8, !dbg !3757, !tbaa !2751
  ret i8* %102, !dbg !3758
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3759 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3761, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i64 %0, metadata !3763, metadata !DIExpression()) #35, !dbg !3767
  call void @llvm.dbg.value(metadata i64 1, metadata !3766, metadata !DIExpression()) #35, !dbg !3767
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !3769
  call void @llvm.dbg.value(metadata i8* %2, metadata !3493, metadata !DIExpression()) #35, !dbg !3770
  %3 = icmp eq i8* %2, null, !dbg !3772
  br i1 %3, label %4, label %5, !dbg !3773

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3774
  unreachable, !dbg !3774

5:                                                ; preds = %1
  ret i8* %2, !dbg !3775
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3764 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3763, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 %1, metadata !3766, metadata !DIExpression()), !dbg !3776
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !3777
  call void @llvm.dbg.value(metadata i8* %3, metadata !3493, metadata !DIExpression()) #35, !dbg !3778
  %4 = icmp eq i8* %3, null, !dbg !3780
  br i1 %4, label %5, label %6, !dbg !3781

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3782
  unreachable, !dbg !3782

6:                                                ; preds = %2
  ret i8* %3, !dbg !3783
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3784 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3786, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i64 %0, metadata !3788, metadata !DIExpression()) #35, !dbg !3792
  call void @llvm.dbg.value(metadata i64 1, metadata !3791, metadata !DIExpression()) #35, !dbg !3792
  call void @llvm.dbg.value(metadata i64 %0, metadata !3794, metadata !DIExpression()) #35, !dbg !3798
  call void @llvm.dbg.value(metadata i64 1, metadata !3797, metadata !DIExpression()) #35, !dbg !3798
  call void @llvm.dbg.value(metadata i64 %0, metadata !3794, metadata !DIExpression()) #35, !dbg !3798
  call void @llvm.dbg.value(metadata i64 1, metadata !3797, metadata !DIExpression()) #35, !dbg !3798
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !3800
  call void @llvm.dbg.value(metadata i8* %2, metadata !3493, metadata !DIExpression()) #35, !dbg !3801
  %3 = icmp eq i8* %2, null, !dbg !3803
  br i1 %3, label %4, label %5, !dbg !3804

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3805
  unreachable, !dbg !3805

5:                                                ; preds = %1
  ret i8* %2, !dbg !3806
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3789 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3788, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i64 %1, metadata !3791, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i64 %0, metadata !3794, metadata !DIExpression()) #35, !dbg !3808
  call void @llvm.dbg.value(metadata i64 %1, metadata !3797, metadata !DIExpression()) #35, !dbg !3808
  call void @llvm.dbg.value(metadata i64 %0, metadata !3794, metadata !DIExpression()) #35, !dbg !3808
  call void @llvm.dbg.value(metadata i64 %1, metadata !3797, metadata !DIExpression()) #35, !dbg !3808
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !3810
  call void @llvm.dbg.value(metadata i8* %3, metadata !3493, metadata !DIExpression()) #35, !dbg !3811
  %4 = icmp eq i8* %3, null, !dbg !3813
  br i1 %4, label %5, label %6, !dbg !3814

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3815
  unreachable, !dbg !3815

6:                                                ; preds = %2
  ret i8* %3, !dbg !3816
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3817 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3821, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i64 %1, metadata !3822, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i64 %1, metadata !3517, metadata !DIExpression()) #35, !dbg !3824
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !3826
  call void @llvm.dbg.value(metadata i8* %3, metadata !3493, metadata !DIExpression()) #35, !dbg !3827
  %4 = icmp eq i8* %3, null, !dbg !3829
  br i1 %4, label %5, label %6, !dbg !3830

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3831
  unreachable, !dbg !3831

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3832, metadata !DIExpression()) #35, !dbg !3840
  call void @llvm.dbg.value(metadata i8* %0, metadata !3838, metadata !DIExpression()) #35, !dbg !3840
  call void @llvm.dbg.value(metadata i64 %1, metadata !3839, metadata !DIExpression()) #35, !dbg !3840
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3842
  ret i8* %3, !dbg !3843
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3844 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3848, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i64 %1, metadata !3849, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.value(metadata i64 %1, metadata !3530, metadata !DIExpression()) #35, !dbg !3851
  call void @llvm.dbg.value(metadata i64 %1, metadata !3532, metadata !DIExpression()) #35, !dbg !3853
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !3855
  call void @llvm.dbg.value(metadata i8* %3, metadata !3493, metadata !DIExpression()) #35, !dbg !3856
  %4 = icmp eq i8* %3, null, !dbg !3858
  br i1 %4, label %5, label %6, !dbg !3859

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3860
  unreachable, !dbg !3860

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3832, metadata !DIExpression()) #35, !dbg !3861
  call void @llvm.dbg.value(metadata i8* %0, metadata !3838, metadata !DIExpression()) #35, !dbg !3861
  call void @llvm.dbg.value(metadata i64 %1, metadata !3839, metadata !DIExpression()) #35, !dbg !3861
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3863
  ret i8* %3, !dbg !3864
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3865 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3869, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i64 %1, metadata !3870, metadata !DIExpression()), !dbg !3872
  %3 = add nsw i64 %1, 1, !dbg !3873
  call void @llvm.dbg.value(metadata i64 %3, metadata !3530, metadata !DIExpression()) #35, !dbg !3874
  call void @llvm.dbg.value(metadata i64 %3, metadata !3532, metadata !DIExpression()) #35, !dbg !3876
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !3878
  call void @llvm.dbg.value(metadata i8* %4, metadata !3493, metadata !DIExpression()) #35, !dbg !3879
  %5 = icmp eq i8* %4, null, !dbg !3881
  br i1 %5, label %6, label %7, !dbg !3882

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3883
  unreachable, !dbg !3883

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3871, metadata !DIExpression()), !dbg !3872
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3884
  store i8 0, i8* %8, align 1, !dbg !3885, !tbaa !610
  call void @llvm.dbg.value(metadata i8* %4, metadata !3832, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i8* %0, metadata !3838, metadata !DIExpression()) #35, !dbg !3886
  call void @llvm.dbg.value(metadata i64 %1, metadata !3839, metadata !DIExpression()) #35, !dbg !3886
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3888
  ret i8* %4, !dbg !3889
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3890 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3892, metadata !DIExpression()), !dbg !3893
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !3894
  %3 = add i64 %2, 1, !dbg !3895
  call void @llvm.dbg.value(metadata i8* %0, metadata !3821, metadata !DIExpression()) #35, !dbg !3896
  call void @llvm.dbg.value(metadata i64 %3, metadata !3822, metadata !DIExpression()) #35, !dbg !3896
  call void @llvm.dbg.value(metadata i64 %3, metadata !3517, metadata !DIExpression()) #35, !dbg !3898
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !3900
  call void @llvm.dbg.value(metadata i8* %4, metadata !3493, metadata !DIExpression()) #35, !dbg !3901
  %5 = icmp eq i8* %4, null, !dbg !3903
  br i1 %5, label %6, label %7, !dbg !3904

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3905
  unreachable, !dbg !3905

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3832, metadata !DIExpression()) #35, !dbg !3906
  call void @llvm.dbg.value(metadata i8* %0, metadata !3838, metadata !DIExpression()) #35, !dbg !3906
  call void @llvm.dbg.value(metadata i64 %3, metadata !3839, metadata !DIExpression()) #35, !dbg !3906
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #35, !dbg !3908
  ret i8* %4, !dbg !3909
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3910 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3914, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %1, metadata !3912, metadata !DIExpression()), !dbg !3915
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.179, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.180, i64 0, i64 0), i32 noundef 5) #35, !dbg !3914
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.181, i64 0, i64 0), i8* noundef %2) #35, !dbg !3914
  %3 = icmp eq i32 %1, 0, !dbg !3914
  tail call void @llvm.assume(i1 %3), !dbg !3914
  tail call void @abort() #37, !dbg !3916
  unreachable, !dbg !3916
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3917 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3955, metadata !DIExpression()), !dbg !3960
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #35, !dbg !3961
  call void @llvm.dbg.value(metadata i1 undef, metadata !3956, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3960
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3962, metadata !DIExpression()), !dbg !3965
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3967
  %4 = load i32, i32* %3, align 8, !dbg !3967, !tbaa !3968
  %5 = and i32 %4, 32, !dbg !3969
  %6 = icmp eq i32 %5, 0, !dbg !3969
  call void @llvm.dbg.value(metadata i1 %6, metadata !3958, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3960
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #35, !dbg !3970
  %8 = icmp eq i32 %7, 0, !dbg !3971
  call void @llvm.dbg.value(metadata i1 %8, metadata !3959, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3960
  br i1 %6, label %9, label %19, !dbg !3972

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3974
  call void @llvm.dbg.value(metadata i1 %10, metadata !3956, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3960
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3975
  %12 = xor i1 %8, true, !dbg !3975
  %13 = sext i1 %12 to i32, !dbg !3975
  br i1 %11, label %22, label %14, !dbg !3975

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #38, !dbg !3976
  %16 = load i32, i32* %15, align 4, !dbg !3976, !tbaa !601
  %17 = icmp ne i32 %16, 9, !dbg !3977
  %18 = sext i1 %17 to i32, !dbg !3978
  br label %22, !dbg !3978

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3979

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #38, !dbg !3981
  store i32 0, i32* %21, align 4, !dbg !3983, !tbaa !601
  br label %22, !dbg !3981

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3960
  ret i32 %23, !dbg !3984
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3985 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4023, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i32 0, metadata !4024, metadata !DIExpression()), !dbg !4027
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4028
  call void @llvm.dbg.value(metadata i32 %2, metadata !4025, metadata !DIExpression()), !dbg !4027
  %3 = icmp slt i32 %2, 0, !dbg !4029
  br i1 %3, label %4, label %6, !dbg !4031

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4032
  br label %24, !dbg !4033

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4034
  %8 = icmp eq i32 %7, 0, !dbg !4034
  br i1 %8, label %13, label %9, !dbg !4036

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4037
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #35, !dbg !4038
  %12 = icmp eq i64 %11, -1, !dbg !4039
  br i1 %12, label %16, label %13, !dbg !4040

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4041
  %15 = icmp eq i32 %14, 0, !dbg !4041
  br i1 %15, label %16, label %18, !dbg !4042

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4024, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i32 0, metadata !4026, metadata !DIExpression()), !dbg !4027
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4043
  call void @llvm.dbg.value(metadata i32 %21, metadata !4026, metadata !DIExpression()), !dbg !4027
  br label %24, !dbg !4044

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #38, !dbg !4045
  %20 = load i32, i32* %19, align 4, !dbg !4045, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %20, metadata !4024, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i32 0, metadata !4026, metadata !DIExpression()), !dbg !4027
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4043
  call void @llvm.dbg.value(metadata i32 %21, metadata !4026, metadata !DIExpression()), !dbg !4027
  %22 = icmp eq i32 %20, 0, !dbg !4046
  br i1 %22, label %24, label %23, !dbg !4044

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4048, !tbaa !601
  call void @llvm.dbg.value(metadata i32 -1, metadata !4026, metadata !DIExpression()), !dbg !4027
  br label %24, !dbg !4050

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4027
  ret i32 %25, !dbg !4051
}

; Function Attrs: nofree nounwind
declare !dbg !4052 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4053 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4056 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4094, metadata !DIExpression()), !dbg !4095
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4096
  br i1 %2, label %6, label %3, !dbg !4098

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4099
  %5 = icmp eq i32 %4, 0, !dbg !4099
  br i1 %5, label %6, label %8, !dbg !4100

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !4101
  br label %17, !dbg !4102

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4103, metadata !DIExpression()) #35, !dbg !4108
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4110
  %10 = load i32, i32* %9, align 8, !dbg !4110, !tbaa !3968
  %11 = and i32 %10, 256, !dbg !4112
  %12 = icmp eq i32 %11, 0, !dbg !4112
  br i1 %12, label %15, label %13, !dbg !4113

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #35, !dbg !4114
  br label %15, !dbg !4114

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !4115
  br label %17, !dbg !4116

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4095
  ret i32 %18, !dbg !4117
}

; Function Attrs: nofree nounwind
declare !dbg !4118 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !4119 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4157, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i64 %1, metadata !4158, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i32 %2, metadata !4159, metadata !DIExpression()), !dbg !4163
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4164
  %5 = load i8*, i8** %4, align 8, !dbg !4164, !tbaa !4165
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4166
  %7 = load i8*, i8** %6, align 8, !dbg !4166, !tbaa !4167
  %8 = icmp eq i8* %5, %7, !dbg !4168
  br i1 %8, label %9, label %28, !dbg !4169

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4170
  %11 = load i8*, i8** %10, align 8, !dbg !4170, !tbaa !1410
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4171
  %13 = load i8*, i8** %12, align 8, !dbg !4171, !tbaa !4172
  %14 = icmp eq i8* %11, %13, !dbg !4173
  br i1 %14, label %15, label %28, !dbg !4174

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4175
  %17 = load i8*, i8** %16, align 8, !dbg !4175, !tbaa !4176
  %18 = icmp eq i8* %17, null, !dbg !4177
  br i1 %18, label %19, label %28, !dbg !4178

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4179
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #35, !dbg !4180
  call void @llvm.dbg.value(metadata i64 %21, metadata !4160, metadata !DIExpression()), !dbg !4181
  %22 = icmp eq i64 %21, -1, !dbg !4182
  br i1 %22, label %30, label %23, !dbg !4184

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4185
  %25 = load i32, i32* %24, align 8, !dbg !4186, !tbaa !3968
  %26 = and i32 %25, -17, !dbg !4186
  store i32 %26, i32* %24, align 8, !dbg !4186, !tbaa !3968
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4187
  store i64 %21, i64* %27, align 8, !dbg !4188, !tbaa !4189
  br label %30, !dbg !4190

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4191
  br label %30, !dbg !4192

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4163
  ret i32 %31, !dbg !4193
}

; Function Attrs: nofree nounwind
declare !dbg !4194 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4197 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4202, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i8* %1, metadata !4203, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i64 %2, metadata !4204, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4205, metadata !DIExpression()), !dbg !4207
  %5 = icmp eq i8* %1, null, !dbg !4208
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4210
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.192, i64 0, i64 0), i8* %1, !dbg !4210
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4210
  call void @llvm.dbg.value(metadata i64 %8, metadata !4204, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i8* %7, metadata !4203, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i32* %6, metadata !4202, metadata !DIExpression()), !dbg !4207
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4211
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4213
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4205, metadata !DIExpression()), !dbg !4207
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #35, !dbg !4214
  call void @llvm.dbg.value(metadata i64 %11, metadata !4206, metadata !DIExpression()), !dbg !4207
  %12 = icmp ult i64 %11, -3, !dbg !4215
  br i1 %12, label %13, label %18, !dbg !4217

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #36, !dbg !4218
  %15 = icmp eq i32 %14, 0, !dbg !4218
  br i1 %15, label %16, label %30, !dbg !4219

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4220, metadata !DIExpression()) #35, !dbg !4225
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4227, metadata !DIExpression()) #35, !dbg !4232
  call void @llvm.dbg.value(metadata i32 0, metadata !4230, metadata !DIExpression()) #35, !dbg !4232
  call void @llvm.dbg.value(metadata i64 8, metadata !4231, metadata !DIExpression()) #35, !dbg !4232
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4234
  store i64 0, i64* %17, align 1, !dbg !4234
  br label %30, !dbg !4235

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4236
  br i1 %19, label %20, label %21, !dbg !4238

20:                                               ; preds = %18
  tail call void @abort() #37, !dbg !4239
  unreachable, !dbg !4239

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4240

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #35, !dbg !4242
  br i1 %24, label %30, label %25, !dbg !4243

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4244
  br i1 %26, label %30, label %27, !dbg !4247

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4248, !tbaa !610
  %29 = zext i8 %28 to i32, !dbg !4249
  store i32 %29, i32* %6, align 4, !dbg !4250, !tbaa !601
  br label %30, !dbg !4251

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4207
  ret i64 %31, !dbg !4252
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4253 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !4259 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4261, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 %1, metadata !4262, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 %2, metadata !4263, metadata !DIExpression()), !dbg !4265
  %4 = icmp eq i64 %2, 0, !dbg !4266
  br i1 %4, label %8, label %5, !dbg !4266

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4266
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4266
  br i1 %7, label %13, label %8, !dbg !4266

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4264, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4265
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4264, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4265
  %9 = mul i64 %2, %1, !dbg !4266
  call void @llvm.dbg.value(metadata i64 %9, metadata !4264, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i8* %0, metadata !4268, metadata !DIExpression()) #35, !dbg !4272
  call void @llvm.dbg.value(metadata i64 %9, metadata !4271, metadata !DIExpression()) #35, !dbg !4272
  %10 = icmp eq i64 %9, 0, !dbg !4274
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4274
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #35, !dbg !4275
  br label %15, !dbg !4276

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4264, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4265
  %14 = tail call i32* @__errno_location() #38, !dbg !4277
  store i32 12, i32* %14, align 4, !dbg !4279, !tbaa !601
  br label %15, !dbg !4280

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4265
  ret i8* %16, !dbg !4281
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #12 !dbg !4282 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4284, metadata !DIExpression()), !dbg !4285
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #35, !dbg !4286
  ret i32 %2, !dbg !4287
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #12 !dbg !4288 {
  %3 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4290, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i32 %1, metadata !4291, metadata !DIExpression()), !dbg !4315
  %4 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !4316
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #35, !dbg !4316
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !4292, metadata !DIExpression()), !dbg !4317
  call void @llvm.va_start(i8* nonnull %4), !dbg !4318
  call void @llvm.dbg.value(metadata i32 -1, metadata !4303, metadata !DIExpression()), !dbg !4315
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
  ], !dbg !4319

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !4320
  %7 = load i32, i32* %6, align 8, !dbg !4320
  %8 = icmp sgt i32 %7, -1, !dbg !4320
  br i1 %8, label %17, label %9, !dbg !4320

9:                                                ; preds = %5
  %10 = add nsw i32 %7, 8, !dbg !4320
  store i32 %10, i32* %6, align 8, !dbg !4320
  %11 = icmp ult i32 %7, -7, !dbg !4320
  br i1 %11, label %12, label %17, !dbg !4320

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !4320
  %14 = load i8*, i8** %13, align 8, !dbg !4320
  %15 = sext i32 %7 to i64, !dbg !4320
  %16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !4320
  br label %21, !dbg !4320

17:                                               ; preds = %9, %5
  %18 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !4320
  %19 = load i8*, i8** %18, align 8, !dbg !4320
  %20 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !4320
  store i8* %20, i8** %18, align 8, !dbg !4320
  br label %21, !dbg !4320

21:                                               ; preds = %17, %12
  %22 = phi i8* [ %16, %12 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*, !dbg !4320
  %24 = load i32, i32* %23, align 8, !dbg !4320
  call void @llvm.dbg.value(metadata i32 %24, metadata !4304, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata i32 %0, metadata !4322, metadata !DIExpression()) #35, !dbg !4327
  call void @llvm.dbg.value(metadata i32 %24, metadata !4325, metadata !DIExpression()) #35, !dbg !4327
  %25 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %24) #35, !dbg !4329
  call void @llvm.dbg.value(metadata i32 %25, metadata !4326, metadata !DIExpression()) #35, !dbg !4327
  call void @llvm.dbg.value(metadata i32 %25, metadata !4303, metadata !DIExpression()), !dbg !4315
  br label %124

26:                                               ; preds = %2
  %27 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !4330
  %28 = load i32, i32* %27, align 8, !dbg !4330
  %29 = icmp sgt i32 %28, -1, !dbg !4330
  br i1 %29, label %38, label %30, !dbg !4330

30:                                               ; preds = %26
  %31 = add nsw i32 %28, 8, !dbg !4330
  store i32 %31, i32* %27, align 8, !dbg !4330
  %32 = icmp ult i32 %28, -7, !dbg !4330
  br i1 %32, label %33, label %38, !dbg !4330

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !4330
  %35 = load i8*, i8** %34, align 8, !dbg !4330
  %36 = sext i32 %28 to i64, !dbg !4330
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !4330
  br label %42, !dbg !4330

38:                                               ; preds = %30, %26
  %39 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !4330
  %40 = load i8*, i8** %39, align 8, !dbg !4330
  %41 = getelementptr inbounds i8, i8* %40, i64 8, !dbg !4330
  store i8* %41, i8** %39, align 8, !dbg !4330
  br label %42, !dbg !4330

42:                                               ; preds = %38, %33
  %43 = phi i8* [ %37, %33 ], [ %40, %38 ]
  %44 = bitcast i8* %43 to i32*, !dbg !4330
  %45 = load i32, i32* %44, align 8, !dbg !4330
  call void @llvm.dbg.value(metadata i32 %45, metadata !4307, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i32 %0, metadata !405, metadata !DIExpression()) #35, !dbg !4332
  call void @llvm.dbg.value(metadata i32 %45, metadata !406, metadata !DIExpression()) #35, !dbg !4332
  %46 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4334, !tbaa !601
  %47 = icmp sgt i32 %46, -1, !dbg !4336
  br i1 %47, label %48, label %60, !dbg !4337

48:                                               ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %45) #35, !dbg !4338
  call void @llvm.dbg.value(metadata i32 %49, metadata !407, metadata !DIExpression()) #35, !dbg !4332
  %50 = icmp sgt i32 %49, -1, !dbg !4340
  br i1 %50, label %55, label %51, !dbg !4342

51:                                               ; preds = %48
  %52 = tail call i32* @__errno_location() #38, !dbg !4343
  %53 = load i32, i32* %52, align 4, !dbg !4343, !tbaa !601
  %54 = icmp eq i32 %53, 22, !dbg !4344
  br i1 %54, label %56, label %55, !dbg !4345

55:                                               ; preds = %51, %48
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4346, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %66, metadata !407, metadata !DIExpression()) #35, !dbg !4332
  br label %124, !dbg !4348

56:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %0, metadata !4322, metadata !DIExpression()) #35, !dbg !4349
  call void @llvm.dbg.value(metadata i32 %45, metadata !4325, metadata !DIExpression()) #35, !dbg !4349
  %57 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #35, !dbg !4352
  call void @llvm.dbg.value(metadata i32 %57, metadata !4326, metadata !DIExpression()) #35, !dbg !4349
  call void @llvm.dbg.value(metadata i32 %57, metadata !407, metadata !DIExpression()) #35, !dbg !4332
  %58 = icmp sgt i32 %57, -1, !dbg !4353
  br i1 %58, label %59, label %124, !dbg !4355

59:                                               ; preds = %56
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4356, !tbaa !601
  br label %64, !dbg !4357

60:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !4322, metadata !DIExpression()) #35, !dbg !4358
  call void @llvm.dbg.value(metadata i32 %45, metadata !4325, metadata !DIExpression()) #35, !dbg !4358
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #35, !dbg !4360
  call void @llvm.dbg.value(metadata i32 %61, metadata !4326, metadata !DIExpression()) #35, !dbg !4358
  call void @llvm.dbg.value(metadata i32 %61, metadata !407, metadata !DIExpression()) #35, !dbg !4332
  %62 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %63 = icmp eq i32 %62, -1
  br label %64

64:                                               ; preds = %60, %59
  %65 = phi i1 [ true, %59 ], [ %63, %60 ]
  %66 = phi i32 [ %57, %59 ], [ %61, %60 ], !dbg !4361
  call void @llvm.dbg.value(metadata i32 %66, metadata !407, metadata !DIExpression()) #35, !dbg !4332
  %67 = icmp sgt i32 %66, -1, !dbg !4362
  %68 = select i1 %67, i1 %65, i1 false, !dbg !4348
  br i1 %68, label %69, label %124, !dbg !4348

69:                                               ; preds = %64
  %70 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 1) #35, !dbg !4363
  call void @llvm.dbg.value(metadata i32 %70, metadata !408, metadata !DIExpression()) #35, !dbg !4364
  %71 = icmp slt i32 %70, 0, !dbg !4365
  br i1 %71, label %76, label %72, !dbg !4366

72:                                               ; preds = %69
  %73 = or i32 %70, 1, !dbg !4367
  %74 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 2, i32 noundef %73) #35, !dbg !4368
  %75 = icmp eq i32 %74, -1, !dbg !4369
  br i1 %75, label %76, label %124, !dbg !4370

76:                                               ; preds = %72, %69
  %77 = tail call i32* @__errno_location() #38, !dbg !4371
  %78 = load i32, i32* %77, align 4, !dbg !4371, !tbaa !601
  call void @llvm.dbg.value(metadata i32 %78, metadata !411, metadata !DIExpression()) #35, !dbg !4372
  %79 = call i32 @close(i32 noundef %66) #35, !dbg !4373
  store i32 %78, i32* %77, align 4, !dbg !4374, !tbaa !601
  call void @llvm.dbg.value(metadata i32 -1, metadata !407, metadata !DIExpression()) #35, !dbg !4332
  br label %124, !dbg !4375

80:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %81 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #35, !dbg !4376
  call void @llvm.dbg.value(metadata i32 %81, metadata !4303, metadata !DIExpression()), !dbg !4315
  br label %124, !dbg !4377

82:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %83 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !4378
  %84 = load i32, i32* %83, align 8, !dbg !4378
  %85 = icmp sgt i32 %84, -1, !dbg !4378
  br i1 %85, label %94, label %86, !dbg !4378

86:                                               ; preds = %82
  %87 = add nsw i32 %84, 8, !dbg !4378
  store i32 %87, i32* %83, align 8, !dbg !4378
  %88 = icmp ult i32 %84, -7, !dbg !4378
  br i1 %88, label %89, label %94, !dbg !4378

89:                                               ; preds = %86
  %90 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !4378
  %91 = load i8*, i8** %90, align 8, !dbg !4378
  %92 = sext i32 %84 to i64, !dbg !4378
  %93 = getelementptr inbounds i8, i8* %91, i64 %92, !dbg !4378
  br label %98, !dbg !4378

94:                                               ; preds = %86, %82
  %95 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !4378
  %96 = load i8*, i8** %95, align 8, !dbg !4378
  %97 = getelementptr inbounds i8, i8* %96, i64 8, !dbg !4378
  store i8* %97, i8** %95, align 8, !dbg !4378
  br label %98, !dbg !4378

98:                                               ; preds = %94, %89
  %99 = phi i8* [ %93, %89 ], [ %96, %94 ]
  %100 = bitcast i8* %99 to i32*, !dbg !4378
  %101 = load i32, i32* %100, align 8, !dbg !4378
  call void @llvm.dbg.value(metadata i32 %101, metadata !4309, metadata !DIExpression()), !dbg !4379
  %102 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %101) #35, !dbg !4380
  call void @llvm.dbg.value(metadata i32 %102, metadata !4303, metadata !DIExpression()), !dbg !4315
  br label %124, !dbg !4381

103:                                              ; preds = %2
  %104 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !4382
  %105 = load i32, i32* %104, align 8, !dbg !4382
  %106 = icmp sgt i32 %105, -1, !dbg !4382
  br i1 %106, label %115, label %107, !dbg !4382

107:                                              ; preds = %103
  %108 = add nsw i32 %105, 8, !dbg !4382
  store i32 %108, i32* %104, align 8, !dbg !4382
  %109 = icmp ult i32 %105, -7, !dbg !4382
  br i1 %109, label %110, label %115, !dbg !4382

110:                                              ; preds = %107
  %111 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !4382
  %112 = load i8*, i8** %111, align 8, !dbg !4382
  %113 = sext i32 %105 to i64, !dbg !4382
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !4382
  br label %119, !dbg !4382

115:                                              ; preds = %107, %103
  %116 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !4382
  %117 = load i8*, i8** %116, align 8, !dbg !4382
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !4382
  store i8* %118, i8** %116, align 8, !dbg !4382
  br label %119, !dbg !4382

119:                                              ; preds = %115, %110
  %120 = phi i8* [ %114, %110 ], [ %117, %115 ]
  %121 = bitcast i8* %120 to i8**, !dbg !4382
  %122 = load i8*, i8** %121, align 8, !dbg !4382
  call void @llvm.dbg.value(metadata i8* %122, metadata !4313, metadata !DIExpression()), !dbg !4383
  %123 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i8* noundef %122) #35, !dbg !4384
  call void @llvm.dbg.value(metadata i32 %123, metadata !4303, metadata !DIExpression()), !dbg !4315
  br label %124, !dbg !4385

124:                                              ; preds = %76, %72, %64, %56, %55, %80, %98, %119, %21
  %125 = phi i32 [ %123, %119 ], [ %102, %98 ], [ %81, %80 ], [ %25, %21 ], [ %66, %64 ], [ -1, %76 ], [ %66, %72 ], [ %57, %56 ], [ %49, %55 ], !dbg !4386
  call void @llvm.dbg.value(metadata i32 %125, metadata !4303, metadata !DIExpression()), !dbg !4315
  call void @llvm.va_end(i8* nonnull %4), !dbg !4387
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #35, !dbg !4388
  ret i32 %125, !dbg !4389
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4390 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4392, metadata !DIExpression()), !dbg !4397
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4398
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4398
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4393, metadata !DIExpression()), !dbg !4399
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #35, !dbg !4400
  %5 = icmp eq i32 %4, 0, !dbg !4400
  br i1 %5, label %6, label %13, !dbg !4402

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4403, metadata !DIExpression()) #35, !dbg !4407
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.201, i64 0, i64 0), metadata !4406, metadata !DIExpression()) #35, !dbg !4407
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.201, i64 0, i64 0), i64 2), !dbg !4410
  %8 = icmp eq i32 %7, 0, !dbg !4411
  br i1 %8, label %12, label %9, !dbg !4412

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4403, metadata !DIExpression()) #35, !dbg !4413
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.202, i64 0, i64 0), metadata !4406, metadata !DIExpression()) #35, !dbg !4413
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.202, i64 0, i64 0), i64 6), !dbg !4415
  %11 = icmp eq i32 %10, 0, !dbg !4416
  br i1 %11, label %12, label %13, !dbg !4417

12:                                               ; preds = %9, %6
  br label %13, !dbg !4418

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4397
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4419
  ret i1 %14, !dbg !4419
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4420 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4424, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i8* %1, metadata !4425, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64 %2, metadata !4426, metadata !DIExpression()), !dbg !4427
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #35, !dbg !4428
  ret i32 %4, !dbg !4429
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4430 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4434, metadata !DIExpression()), !dbg !4435
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #35, !dbg !4436
  ret i8* %2, !dbg !4437
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4438 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4440, metadata !DIExpression()), !dbg !4442
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4443
  call void @llvm.dbg.value(metadata i8* %2, metadata !4441, metadata !DIExpression()), !dbg !4442
  ret i8* %2, !dbg !4444
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4445 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4447, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i8* %1, metadata !4448, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %2, metadata !4449, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i32 %0, metadata !4440, metadata !DIExpression()) #35, !dbg !4455
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4457
  call void @llvm.dbg.value(metadata i8* %4, metadata !4441, metadata !DIExpression()) #35, !dbg !4455
  call void @llvm.dbg.value(metadata i8* %4, metadata !4450, metadata !DIExpression()), !dbg !4454
  %5 = icmp eq i8* %4, null, !dbg !4458
  br i1 %5, label %6, label %9, !dbg !4459

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4460
  br i1 %7, label %19, label %8, !dbg !4463

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4464, !tbaa !610
  br label %19, !dbg !4465

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #36, !dbg !4466
  call void @llvm.dbg.value(metadata i64 %10, metadata !4451, metadata !DIExpression()), !dbg !4467
  %11 = icmp ult i64 %10, %2, !dbg !4468
  br i1 %11, label %12, label %14, !dbg !4470

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4471
  call void @llvm.dbg.value(metadata i8* %1, metadata !4473, metadata !DIExpression()) #35, !dbg !4478
  call void @llvm.dbg.value(metadata i8* %4, metadata !4476, metadata !DIExpression()) #35, !dbg !4478
  call void @llvm.dbg.value(metadata i64 %13, metadata !4477, metadata !DIExpression()) #35, !dbg !4478
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #35, !dbg !4480
  br label %19, !dbg !4481

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4482
  br i1 %15, label %19, label %16, !dbg !4485

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4486
  call void @llvm.dbg.value(metadata i8* %1, metadata !4473, metadata !DIExpression()) #35, !dbg !4488
  call void @llvm.dbg.value(metadata i8* %4, metadata !4476, metadata !DIExpression()) #35, !dbg !4488
  call void @llvm.dbg.value(metadata i64 %17, metadata !4477, metadata !DIExpression()) #35, !dbg !4488
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #35, !dbg !4490
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4491
  store i8 0, i8* %18, align 1, !dbg !4492, !tbaa !610
  br label %19, !dbg !4493

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4494
  ret i32 %20, !dbg !4495
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
attributes #14 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { nofree nosync nounwind willreturn }
attributes #23 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #24 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { argmemonly nofree nounwind willreturn writeonly }
attributes #27 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #35 = { nounwind }
attributes #36 = { nounwind readonly willreturn }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind readnone willreturn }
attributes #39 = { noreturn }
attributes #40 = { nounwind allocsize(0,1) }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2, !414, !192, !197, !209, !216, !376, !416, !419, !421, !423, !254, !264, !294, !425, !427, !368, !434, !468, !470, !472, !474, !476, !382, !478, !481, !402, !483, !485, !487}
!llvm.ident = !{!489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489, !489}
!llvm.module.flags = !{!490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 59, type: !176, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !51, globals: !70, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/tee.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cec0a20486dbac1b82051156d303a2f2")
!4 = !{!5, !13, !28, !37}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "output_error", file: !3, line: 48, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11, !12}
!8 = !DIEnumerator(name: "output_error_sigpipe", value: 0)
!9 = !DIEnumerator(name: "output_error_warn", value: 1)
!10 = !DIEnumerator(name: "output_error_warn_nopipe", value: 2)
!11 = !DIEnumerator(name: "output_error_exit", value: 3)
!12 = !DIEnumerator(name: "output_error_exit_nopipe", value: 4)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 46, baseType: !6, size: 32, elements: !15)
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
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 44, baseType: !6, size: 32, elements: !30)
!29 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!30 = !{!31, !32, !33, !34, !35, !36}
!31 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!32 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!33 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!34 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!35 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!36 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !38, line: 42, baseType: !6, size: 32, elements: !39)
!38 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!40 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!41 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!42 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!43 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!44 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!45 = !DIEnumerator(name: "c_quoting_style", value: 5)
!46 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!47 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!48 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!49 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!50 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!51 = !{!52, !54, !56, !57, !62, !63, !64, !67, !69}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !58, line: 72, baseType: !59)
!58 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62}
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 46, baseType: !66)
!65 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!66 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!69 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!70 = !{!71, !74, !76, !78, !0, !164, !170}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "append", scope: !2, file: !3, line: 43, type: !73, isLocal: true, isDefinition: true)
!73 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "ignore_interrupts", scope: !2, file: !3, line: 46, type: !73, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "output_error", scope: !2, file: !3, line: 57, type: !5, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !80, file: !81, line: 575, type: !62, isLocal: true, isDefinition: true)
!80 = distinct !DISubprogram(name: "oputs_", scope: !81, file: !81, line: 573, type: !82, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!81 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!82 = !DISubroutineType(types: !83)
!83 = !{null, !67, !67}
!84 = !{!85, !86, !87, !90, !91, !92, !93, !97, !98, !99, !100, !102, !158, !159, !160, !162, !163}
!85 = !DILocalVariable(name: "program", arg: 1, scope: !80, file: !81, line: 573, type: !67)
!86 = !DILocalVariable(name: "option", arg: 2, scope: !80, file: !81, line: 573, type: !67)
!87 = !DILocalVariable(name: "term", scope: !88, file: !81, line: 585, type: !67)
!88 = distinct !DILexicalBlock(scope: !89, file: !81, line: 582, column: 5)
!89 = distinct !DILexicalBlock(scope: !80, file: !81, line: 581, column: 7)
!90 = !DILocalVariable(name: "double_space", scope: !80, file: !81, line: 594, type: !73)
!91 = !DILocalVariable(name: "first_word", scope: !80, file: !81, line: 595, type: !67)
!92 = !DILocalVariable(name: "option_text", scope: !80, file: !81, line: 596, type: !67)
!93 = !DILocalVariable(name: "s", scope: !94, file: !81, line: 608, type: !67)
!94 = distinct !DILexicalBlock(scope: !95, file: !81, line: 605, column: 5)
!95 = distinct !DILexicalBlock(scope: !96, file: !81, line: 604, column: 12)
!96 = distinct !DILexicalBlock(scope: !80, file: !81, line: 597, column: 7)
!97 = !DILocalVariable(name: "spaces", scope: !94, file: !81, line: 609, type: !64)
!98 = !DILocalVariable(name: "anchor_len", scope: !80, file: !81, line: 620, type: !64)
!99 = !DILocalVariable(name: "desc_text", scope: !80, file: !81, line: 625, type: !67)
!100 = !DILocalVariable(name: "__ptr", scope: !101, file: !81, line: 644, type: !67)
!101 = distinct !DILexicalBlock(scope: !80, file: !81, line: 644, column: 3)
!102 = !DILocalVariable(name: "__stream", scope: !101, file: !81, line: 644, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !106)
!105 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !108)
!107 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !124, !126, !127, !128, !132, !133, !135, !139, !142, !144, !147, !150, !151, !152, !153, !154}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !106, file: !107, line: 51, baseType: !62, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !106, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !106, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !106, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !106, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !106, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !106, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !106, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !106, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !106, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !106, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !106, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !106, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !107, line: 36, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !106, file: !107, line: 70, baseType: !125, size: 64, offset: 832)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !106, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !106, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !106, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !130, line: 152, baseType: !131)
!130 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!131 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !106, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !106, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!134 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !106, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 1)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !106, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !107, line: 43, baseType: null)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !106, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !130, line: 153, baseType: !131)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !106, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !107, line: 37, flags: DIFlagFwdDecl)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !106, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !107, line: 38, flags: DIFlagFwdDecl)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !106, file: !107, line: 93, baseType: !125, size: 64, offset: 1344)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !106, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !106, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !106, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !106, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 160, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 20)
!158 = !DILocalVariable(name: "__cnt", scope: !101, file: !81, line: 644, type: !64)
!159 = !DILocalVariable(name: "url_program", scope: !80, file: !81, line: 648, type: !67)
!160 = !DILocalVariable(name: "__ptr", scope: !161, file: !81, line: 686, type: !67)
!161 = distinct !DILexicalBlock(scope: !80, file: !81, line: 686, column: 3)
!162 = !DILocalVariable(name: "__stream", scope: !161, file: !81, line: 686, type: !103)
!163 = !DILocalVariable(name: "__cnt", scope: !161, file: !81, line: 686, type: !64)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "output_error_types", scope: !2, file: !3, line: 73, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 128, elements: !168)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!168 = !{!169}
!169 = !DISubrange(count: 4)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "output_error_args", scope: !2, file: !3, line: 69, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 320, elements: !174)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!174 = !{!175}
!175 = !DISubrange(count: 5)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 1536, elements: !186)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !179, line: 50, size: 256, elements: !180)
!179 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!180 = !{!181, !182, !183, !185}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !178, file: !179, line: 52, baseType: !67, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !178, file: !179, line: 55, baseType: !62, size: 32, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !178, file: !179, line: 56, baseType: !184, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !178, file: !179, line: 57, baseType: !62, size: 32, offset: 192)
!186 = !{!187}
!187 = !DISubrange(count: 6)
!188 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!189 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "Version", scope: !192, file: !193, line: 3, type: !67, isLocal: false, isDefinition: true)
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !194, splitDebugInlining: false, nameTableKind: None)
!193 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!194 = !{!190}
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !197, file: !198, line: 65, type: !202, isLocal: false, isDefinition: true)
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !199, retainedTypes: !200, globals: !201, splitDebugInlining: false, nameTableKind: None)
!198 = !DIFile(filename: "lib/argmatch.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b147d258438e01421d766b453f353b54")
!199 = !{!37}
!200 = !{!56, !67, !69}
!201 = !{!195}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !203, line: 69, baseType: !204)
!203 = !DIFile(filename: "./lib/argmatch.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0538d47ac978b3f52562dc3536aacea1")
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null}
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "file_name", scope: !209, file: !210, line: 45, type: !67, isLocal: true, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !211, splitDebugInlining: false, nameTableKind: None)
!210 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!211 = !{!207, !212}
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !209, file: !210, line: 55, type: !73, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !216, file: !217, line: 66, type: !204, isLocal: false, isDefinition: true)
!216 = distinct !DICompileUnit(language: DW_LANG_C99, file: !217, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !218, globals: !219, splitDebugInlining: false, nameTableKind: None)
!217 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!218 = !{!56, !69}
!219 = !{!220, !246, !214, !248, !250}
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "old_file_name", scope: !222, file: !217, line: 304, type: !67, isLocal: true, isDefinition: true)
!222 = distinct !DISubprogram(name: "verror_at_line", scope: !217, file: !217, line: 298, type: !223, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !239)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !62, !62, !67, !6, !67, !225}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !226, line: 52, baseType: !227)
!226 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !228, line: 32, baseType: !229)
!228 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !230, baseType: !231)
!230 = !DIFile(filename: "lib/error.c", directory: "/src")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !232, size: 256, elements: !233)
!232 = !DINamespace(name: "std", scope: null)
!233 = !{!234, !235, !236, !237, !238}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !231, file: !230, baseType: !56, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !231, file: !230, baseType: !56, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !231, file: !230, baseType: !56, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !231, file: !230, baseType: !62, size: 32, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !231, file: !230, baseType: !62, size: 32, offset: 224)
!239 = !{!240, !241, !242, !243, !244, !245}
!240 = !DILocalVariable(name: "status", arg: 1, scope: !222, file: !217, line: 298, type: !62)
!241 = !DILocalVariable(name: "errnum", arg: 2, scope: !222, file: !217, line: 298, type: !62)
!242 = !DILocalVariable(name: "file_name", arg: 3, scope: !222, file: !217, line: 298, type: !67)
!243 = !DILocalVariable(name: "line_number", arg: 4, scope: !222, file: !217, line: 298, type: !6)
!244 = !DILocalVariable(name: "message", arg: 5, scope: !222, file: !217, line: 298, type: !67)
!245 = !DILocalVariable(name: "args", arg: 6, scope: !222, file: !217, line: 298, type: !225)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "old_line_number", scope: !222, file: !217, line: 305, type: !6, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "error_message_count", scope: !216, file: !217, line: 69, type: !6, isLocal: false, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !216, file: !217, line: 295, type: !62, isLocal: false, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "program_name", scope: !254, file: !255, line: 31, type: !67, isLocal: false, isDefinition: true)
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !256, globals: !257, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!256 = !{!54}
!257 = !{!252}
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "utf07FF", scope: !260, file: !261, line: 46, type: !289, isLocal: true, isDefinition: true)
!260 = distinct !DISubprogram(name: "proper_name_lite", scope: !261, file: !261, line: 38, type: !262, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !266)
!261 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!262 = !DISubroutineType(types: !263)
!263 = !{!67, !67, !67}
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !265, splitDebugInlining: false, nameTableKind: None)
!265 = !{!258}
!266 = !{!267, !268, !269, !270, !275}
!267 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !260, file: !261, line: 38, type: !67)
!268 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !260, file: !261, line: 38, type: !67)
!269 = !DILocalVariable(name: "translation", scope: !260, file: !261, line: 40, type: !67)
!270 = !DILocalVariable(name: "w", scope: !260, file: !261, line: 47, type: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !272, line: 37, baseType: !273)
!272 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !130, line: 57, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !130, line: 42, baseType: !6)
!275 = !DILocalVariable(name: "mbs", scope: !260, file: !261, line: 48, type: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !277, line: 6, baseType: !278)
!277 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !279, line: 21, baseType: !280)
!279 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !279, line: 13, size: 64, elements: !281)
!281 = !{!282, !283}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !280, file: !279, line: 15, baseType: !62, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !280, file: !279, line: 20, baseType: !284, size: 32, offset: 32)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !280, file: !279, line: 16, size: 32, elements: !285)
!285 = !{!286, !287}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !284, file: !279, line: 18, baseType: !6, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !284, file: !279, line: 19, baseType: !288, size: 32)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 32, elements: !168)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 16, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 2)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !294, file: !295, line: 76, type: !363, isLocal: false, isDefinition: true)
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !296, retainedTypes: !302, globals: !303, splitDebugInlining: false, nameTableKind: None)
!295 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!296 = !{!37, !297, !13}
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !38, line: 254, baseType: !6, size: 32, elements: !298)
!298 = !{!299, !300, !301}
!299 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!300 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!301 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!302 = !{!62, !63, !64}
!303 = !{!292, !304, !310, !322, !324, !329, !352, !359, !361}
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !294, file: !295, line: 92, type: !306, isLocal: false, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 320, elements: !308)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!308 = !{!309}
!309 = !DISubrange(count: 10)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !294, file: !295, line: 1040, type: !312, isLocal: false, isDefinition: true)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !295, line: 56, size: 448, elements: !313)
!313 = !{!314, !315, !316, !320, !321}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !312, file: !295, line: 59, baseType: !37, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !295, line: 62, baseType: !62, size: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !312, file: !295, line: 66, baseType: !317, size: 256, offset: 64)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 8)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !312, file: !295, line: 69, baseType: !67, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !312, file: !295, line: 72, baseType: !67, size: 64, offset: 384)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !294, file: !295, line: 107, type: !312, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(name: "slot0", scope: !294, file: !295, line: 831, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2048, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 256)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(name: "quote", scope: !331, file: !295, line: 228, type: !350, isLocal: true, isDefinition: true)
!331 = distinct !DISubprogram(name: "gettext_quote", scope: !295, file: !295, line: 197, type: !332, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !334)
!332 = !DISubroutineType(types: !333)
!333 = !{!67, !67, !37}
!334 = !{!335, !336, !337, !338, !339}
!335 = !DILocalVariable(name: "msgid", arg: 1, scope: !331, file: !295, line: 197, type: !67)
!336 = !DILocalVariable(name: "s", arg: 2, scope: !331, file: !295, line: 197, type: !37)
!337 = !DILocalVariable(name: "translation", scope: !331, file: !295, line: 199, type: !67)
!338 = !DILocalVariable(name: "w", scope: !331, file: !295, line: 229, type: !271)
!339 = !DILocalVariable(name: "mbs", scope: !331, file: !295, line: 230, type: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !277, line: 6, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !279, line: 21, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !279, line: 13, size: 64, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !342, file: !279, line: 15, baseType: !62, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !342, file: !279, line: 20, baseType: !346, size: 32, offset: 32)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !279, line: 16, size: 32, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !346, file: !279, line: 18, baseType: !6, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !346, file: !279, line: 19, baseType: !288, size: 32)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 64, elements: !351)
!351 = !{!291, !169}
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "slotvec", scope: !294, file: !295, line: 834, type: !354, isLocal: true, isDefinition: true)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !295, line: 823, size: 128, elements: !356)
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !355, file: !295, line: 825, baseType: !64, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !355, file: !295, line: 826, baseType: !54, size: 64, offset: 64)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "nslots", scope: !294, file: !295, line: 832, type: !62, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "slotvec0", scope: !294, file: !295, line: 833, type: !355, isLocal: true, isDefinition: true)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 704, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 11)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !368, file: !369, line: 26, type: !371, isLocal: false, isDefinition: true)
!368 = distinct !DICompileUnit(language: DW_LANG_C99, file: !369, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !370, splitDebugInlining: false, nameTableKind: None)
!369 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!370 = !{!366}
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 376, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 47)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "exit_failure", scope: !376, file: !377, line: 24, type: !379, isLocal: false, isDefinition: true)
!376 = distinct !DICompileUnit(language: DW_LANG_C99, file: !377, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !378, splitDebugInlining: false, nameTableKind: None)
!377 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!378 = !{!374}
!379 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "internal_state", scope: !382, file: !383, line: 97, type: !386, isLocal: true, isDefinition: true)
!382 = distinct !DICompileUnit(language: DW_LANG_C99, file: !383, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !384, globals: !385, splitDebugInlining: false, nameTableKind: None)
!383 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!384 = !{!56, !64, !69}
!385 = !{!380}
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !277, line: 6, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !279, line: 21, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !279, line: 13, size: 64, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !388, file: !279, line: 15, baseType: !62, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !388, file: !279, line: 20, baseType: !392, size: 32, offset: 32)
!392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !279, line: 16, size: 32, elements: !393)
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !392, file: !279, line: 18, baseType: !6, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !392, file: !279, line: 19, baseType: !288, size: 32)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !398, file: !399, line: 506, type: !62, isLocal: true, isDefinition: true)
!398 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !399, file: !399, line: 485, type: !400, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !404)
!399 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!400 = !DISubroutineType(types: !401)
!401 = !{!62, !62, !62}
!402 = distinct !DICompileUnit(language: DW_LANG_C99, file: !399, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !403, splitDebugInlining: false, nameTableKind: None)
!403 = !{!396}
!404 = !{!405, !406, !407, !408, !411}
!405 = !DILocalVariable(name: "fd", arg: 1, scope: !398, file: !399, line: 485, type: !62)
!406 = !DILocalVariable(name: "target", arg: 2, scope: !398, file: !399, line: 485, type: !62)
!407 = !DILocalVariable(name: "result", scope: !398, file: !399, line: 487, type: !62)
!408 = !DILocalVariable(name: "flags", scope: !409, file: !399, line: 530, type: !62)
!409 = distinct !DILexicalBlock(scope: !410, file: !399, line: 529, column: 5)
!410 = distinct !DILexicalBlock(scope: !398, file: !399, line: 528, column: 7)
!411 = !DILocalVariable(name: "saved_errno", scope: !412, file: !399, line: 533, type: !62)
!412 = distinct !DILexicalBlock(scope: !413, file: !399, line: 532, column: 9)
!413 = distinct !DILexicalBlock(scope: !409, file: !399, line: 531, column: 11)
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "src/iopoll.c", directory: "/src", checksumkind: CSK_MD5, checksum: "994e71aa1d7ebbae5028422474ffd3c4")
!416 = distinct !DICompileUnit(language: DW_LANG_C99, file: !417, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !418, splitDebugInlining: false, nameTableKind: None)
!417 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!418 = !{!28}
!419 = distinct !DICompileUnit(language: DW_LANG_C99, file: !420, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!420 = !DIFile(filename: "lib/open-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "84efcad54206a8ffedf254f32134ee9c")
!421 = distinct !DICompileUnit(language: DW_LANG_C99, file: !422, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!422 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!423 = distinct !DICompileUnit(language: DW_LANG_C99, file: !424, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!424 = !DIFile(filename: "lib/isapipe.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5445de1f00883805631d924b7433dad7")
!425 = distinct !DICompileUnit(language: DW_LANG_C99, file: !426, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!426 = !DIFile(filename: "lib/fd-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12c3310fb811f6ed0e0fb7e99c1b995b")
!427 = distinct !DICompileUnit(language: DW_LANG_C99, file: !428, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !429, retainedTypes: !433, splitDebugInlining: false, nameTableKind: None)
!428 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!429 = !{!430}
!430 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !428, line: 40, baseType: !6, size: 32, elements: !431)
!431 = !{!432}
!432 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!433 = !{!56}
!434 = distinct !DICompileUnit(language: DW_LANG_C99, file: !435, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !436, retainedTypes: !467, splitDebugInlining: false, nameTableKind: None)
!435 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!436 = !{!437, !449}
!437 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !438, file: !435, line: 188, baseType: !6, size: 32, elements: !447)
!438 = distinct !DISubprogram(name: "x2nrealloc", scope: !435, file: !435, line: 176, type: !439, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !442)
!439 = !DISubroutineType(types: !440)
!440 = !{!56, !56, !441, !64}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!442 = !{!443, !444, !445, !446}
!443 = !DILocalVariable(name: "p", arg: 1, scope: !438, file: !435, line: 176, type: !56)
!444 = !DILocalVariable(name: "pn", arg: 2, scope: !438, file: !435, line: 176, type: !441)
!445 = !DILocalVariable(name: "s", arg: 3, scope: !438, file: !435, line: 176, type: !64)
!446 = !DILocalVariable(name: "n", scope: !438, file: !435, line: 178, type: !64)
!447 = !{!448}
!448 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!449 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !450, file: !435, line: 228, baseType: !6, size: 32, elements: !447)
!450 = distinct !DISubprogram(name: "xpalloc", scope: !435, file: !435, line: 223, type: !451, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !457)
!451 = !DISubroutineType(types: !452)
!452 = !{!56, !56, !453, !454, !456, !454}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !455, line: 130, baseType: !456)
!455 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !65, line: 35, baseType: !131)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466}
!458 = !DILocalVariable(name: "pa", arg: 1, scope: !450, file: !435, line: 223, type: !56)
!459 = !DILocalVariable(name: "pn", arg: 2, scope: !450, file: !435, line: 223, type: !453)
!460 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !450, file: !435, line: 223, type: !454)
!461 = !DILocalVariable(name: "n_max", arg: 4, scope: !450, file: !435, line: 223, type: !456)
!462 = !DILocalVariable(name: "s", arg: 5, scope: !450, file: !435, line: 223, type: !454)
!463 = !DILocalVariable(name: "n0", scope: !450, file: !435, line: 230, type: !454)
!464 = !DILocalVariable(name: "n", scope: !450, file: !435, line: 237, type: !454)
!465 = !DILocalVariable(name: "nbytes", scope: !450, file: !435, line: 248, type: !454)
!466 = !DILocalVariable(name: "adjusted_nbytes", scope: !450, file: !435, line: 252, type: !454)
!467 = !{!54, !56, !73, !131, !66}
!468 = distinct !DICompileUnit(language: DW_LANG_C99, file: !469, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!469 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!470 = distinct !DICompileUnit(language: DW_LANG_C99, file: !471, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!471 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!472 = distinct !DICompileUnit(language: DW_LANG_C99, file: !473, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!473 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!474 = distinct !DICompileUnit(language: DW_LANG_C99, file: !475, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !433, splitDebugInlining: false, nameTableKind: None)
!475 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!476 = distinct !DICompileUnit(language: DW_LANG_C99, file: !477, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !433, splitDebugInlining: false, nameTableKind: None)
!477 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!478 = distinct !DICompileUnit(language: DW_LANG_C99, file: !479, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !480, splitDebugInlining: false, nameTableKind: None)
!479 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!480 = !{!73, !66, !56}
!481 = distinct !DICompileUnit(language: DW_LANG_C99, file: !482, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!482 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!483 = distinct !DICompileUnit(language: DW_LANG_C99, file: !484, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!484 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!485 = distinct !DICompileUnit(language: DW_LANG_C99, file: !486, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!486 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!487 = distinct !DICompileUnit(language: DW_LANG_C99, file: !488, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !433, splitDebugInlining: false, nameTableKind: None)
!488 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!489 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!490 = !{i32 7, !"Dwarf Version", i32 5}
!491 = !{i32 2, !"Debug Info Version", i32 3}
!492 = !{i32 1, !"wchar_size", i32 4}
!493 = !{i32 1, !"branch-target-enforcement", i32 0}
!494 = !{i32 1, !"sign-return-address", i32 0}
!495 = !{i32 1, !"sign-return-address-all", i32 0}
!496 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!497 = !{i32 7, !"PIC Level", i32 2}
!498 = !{i32 7, !"PIE Level", i32 2}
!499 = !{i32 7, !"uwtable", i32 1}
!500 = !{i32 7, !"frame-pointer", i32 1}
!501 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 81, type: !60, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !502)
!502 = !{!503}
!503 = !DILocalVariable(name: "status", arg: 1, scope: !501, file: !3, line: 81, type: !62)
!504 = !DILocation(line: 0, scope: !501)
!505 = !DILocation(line: 83, column: 14, scope: !506)
!506 = distinct !DILexicalBlock(scope: !501, file: !3, line: 83, column: 7)
!507 = !DILocation(line: 83, column: 7, scope: !501)
!508 = !DILocation(line: 84, column: 5, scope: !509)
!509 = distinct !DILexicalBlock(scope: !506, file: !3, line: 84, column: 5)
!510 = !{!511, !511, i64 0}
!511 = !{!"any pointer", !512, i64 0}
!512 = !{!"omnipotent char", !513, i64 0}
!513 = !{!"Simple C/C++ TBAA"}
!514 = !DILocation(line: 87, column: 7, scope: !515)
!515 = distinct !DILexicalBlock(scope: !506, file: !3, line: 86, column: 5)
!516 = !DILocation(line: 88, column: 7, scope: !515)
!517 = !DILocation(line: 92, column: 7, scope: !515)
!518 = !DILocation(line: 96, column: 7, scope: !515)
!519 = !DILocation(line: 100, column: 7, scope: !515)
!520 = !DILocation(line: 104, column: 7, scope: !515)
!521 = !DILocation(line: 108, column: 7, scope: !515)
!522 = !DILocation(line: 109, column: 7, scope: !515)
!523 = !DILocation(line: 110, column: 7, scope: !515)
!524 = !DILocalVariable(name: "program", arg: 1, scope: !525, file: !81, line: 836, type: !67)
!525 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !81, file: !81, line: 836, type: !526, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !67}
!528 = !{!524, !529, !538, !539, !541, !542}
!529 = !DILocalVariable(name: "infomap", scope: !525, file: !81, line: 838, type: !530)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 896, elements: !536)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !525, file: !81, line: 838, size: 128, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !532, file: !81, line: 838, baseType: !67, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !532, file: !81, line: 838, baseType: !67, size: 64, offset: 64)
!536 = !{!537}
!537 = !DISubrange(count: 7)
!538 = !DILocalVariable(name: "node", scope: !525, file: !81, line: 848, type: !67)
!539 = !DILocalVariable(name: "map_prog", scope: !525, file: !81, line: 849, type: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!541 = !DILocalVariable(name: "lc_messages", scope: !525, file: !81, line: 861, type: !67)
!542 = !DILocalVariable(name: "url_program", scope: !525, file: !81, line: 874, type: !67)
!543 = !DILocation(line: 0, scope: !525, inlinedAt: !544)
!544 = distinct !DILocation(line: 123, column: 7, scope: !515)
!545 = !DILocation(line: 838, column: 3, scope: !525, inlinedAt: !544)
!546 = !DILocation(line: 838, column: 67, scope: !525, inlinedAt: !544)
!547 = !DILocation(line: 849, column: 36, scope: !525, inlinedAt: !544)
!548 = !DILocation(line: 851, column: 3, scope: !525, inlinedAt: !544)
!549 = !DILocalVariable(name: "__s1", arg: 1, scope: !550, file: !551, line: 1359, type: !67)
!550 = distinct !DISubprogram(name: "streq", scope: !551, file: !551, line: 1359, type: !552, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !554)
!551 = !DIFile(filename: "./lib/string.h", directory: "/src")
!552 = !DISubroutineType(types: !553)
!553 = !{!73, !67, !67}
!554 = !{!549, !555}
!555 = !DILocalVariable(name: "__s2", arg: 2, scope: !550, file: !551, line: 1359, type: !67)
!556 = !DILocation(line: 0, scope: !550, inlinedAt: !557)
!557 = distinct !DILocation(line: 851, column: 33, scope: !525, inlinedAt: !544)
!558 = !DILocation(line: 1361, column: 11, scope: !550, inlinedAt: !557)
!559 = !DILocation(line: 1361, column: 10, scope: !550, inlinedAt: !557)
!560 = !DILocation(line: 852, column: 13, scope: !525, inlinedAt: !544)
!561 = !DILocation(line: 851, column: 20, scope: !525, inlinedAt: !544)
!562 = !{!563, !511, i64 0}
!563 = !{!"infomap", !511, i64 0, !511, i64 8}
!564 = !DILocation(line: 851, column: 10, scope: !525, inlinedAt: !544)
!565 = !DILocation(line: 851, column: 28, scope: !525, inlinedAt: !544)
!566 = distinct !{!566, !548, !560, !567}
!567 = !{!"llvm.loop.mustprogress"}
!568 = !DILocation(line: 854, column: 17, scope: !569, inlinedAt: !544)
!569 = distinct !DILexicalBlock(scope: !525, file: !81, line: 854, column: 7)
!570 = !{!563, !511, i64 8}
!571 = !DILocation(line: 854, column: 7, scope: !569, inlinedAt: !544)
!572 = !DILocation(line: 854, column: 7, scope: !525, inlinedAt: !544)
!573 = !DILocation(line: 857, column: 3, scope: !525, inlinedAt: !544)
!574 = !DILocation(line: 861, column: 29, scope: !525, inlinedAt: !544)
!575 = !DILocation(line: 862, column: 7, scope: !576, inlinedAt: !544)
!576 = distinct !DILexicalBlock(scope: !525, file: !81, line: 862, column: 7)
!577 = !DILocation(line: 862, column: 19, scope: !576, inlinedAt: !544)
!578 = !DILocation(line: 862, column: 22, scope: !576, inlinedAt: !544)
!579 = !DILocation(line: 862, column: 7, scope: !525, inlinedAt: !544)
!580 = !DILocation(line: 868, column: 7, scope: !581, inlinedAt: !544)
!581 = distinct !DILexicalBlock(scope: !576, file: !81, line: 863, column: 5)
!582 = !DILocation(line: 870, column: 5, scope: !581, inlinedAt: !544)
!583 = !DILocation(line: 0, scope: !550, inlinedAt: !584)
!584 = distinct !DILocation(line: 874, column: 29, scope: !525, inlinedAt: !544)
!585 = !DILocation(line: 875, column: 3, scope: !525, inlinedAt: !544)
!586 = !DILocation(line: 877, column: 3, scope: !525, inlinedAt: !544)
!587 = !DILocation(line: 879, column: 1, scope: !525, inlinedAt: !544)
!588 = !DILocation(line: 125, column: 3, scope: !501)
!589 = !DISubprogram(name: "dcgettext", scope: !590, file: !590, line: 51, type: !591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!590 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!591 = !DISubroutineType(types: !592)
!592 = !{!54, !67, !67, !62}
!593 = !{}
!594 = !DISubprogram(name: "fputs_unlocked", scope: !226, file: !226, line: 691, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!595 = !DISubroutineType(types: !596)
!596 = !{!62, !597, !598}
!597 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!598 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !103)
!599 = !DILocation(line: 0, scope: !80)
!600 = !DILocation(line: 581, column: 7, scope: !89)
!601 = !{!602, !602, i64 0}
!602 = !{!"int", !512, i64 0}
!603 = !DILocation(line: 581, column: 19, scope: !89)
!604 = !DILocation(line: 581, column: 7, scope: !80)
!605 = !DILocation(line: 585, column: 26, scope: !88)
!606 = !DILocation(line: 0, scope: !88)
!607 = !DILocation(line: 586, column: 23, scope: !88)
!608 = !DILocation(line: 586, column: 28, scope: !88)
!609 = !DILocation(line: 586, column: 32, scope: !88)
!610 = !{!512, !512, i64 0}
!611 = !DILocation(line: 586, column: 38, scope: !88)
!612 = !DILocation(line: 0, scope: !550, inlinedAt: !613)
!613 = distinct !DILocation(line: 586, column: 41, scope: !88)
!614 = !DILocation(line: 1361, column: 11, scope: !550, inlinedAt: !613)
!615 = !DILocation(line: 1361, column: 10, scope: !550, inlinedAt: !613)
!616 = !DILocation(line: 586, column: 19, scope: !88)
!617 = !DILocation(line: 587, column: 5, scope: !88)
!618 = !DILocation(line: 588, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !80, file: !81, line: 588, column: 7)
!620 = !DILocation(line: 588, column: 7, scope: !80)
!621 = !DILocation(line: 590, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !81, line: 589, column: 5)
!623 = !DILocation(line: 591, column: 7, scope: !622)
!624 = !DILocation(line: 595, column: 37, scope: !80)
!625 = !DILocation(line: 595, column: 35, scope: !80)
!626 = !DILocation(line: 596, column: 29, scope: !80)
!627 = !DILocation(line: 597, column: 8, scope: !96)
!628 = !DILocation(line: 597, column: 7, scope: !80)
!629 = !DILocation(line: 604, column: 24, scope: !95)
!630 = !DILocation(line: 604, column: 12, scope: !96)
!631 = !DILocation(line: 0, scope: !94)
!632 = !DILocation(line: 610, column: 16, scope: !94)
!633 = !DILocation(line: 610, column: 7, scope: !94)
!634 = !DILocation(line: 611, column: 21, scope: !94)
!635 = !{!636, !636, i64 0}
!636 = !{!"short", !512, i64 0}
!637 = !DILocation(line: 611, column: 19, scope: !94)
!638 = !DILocation(line: 611, column: 16, scope: !94)
!639 = !DILocation(line: 610, column: 30, scope: !94)
!640 = distinct !{!640, !633, !634, !567}
!641 = !DILocation(line: 612, column: 18, scope: !642)
!642 = distinct !DILexicalBlock(scope: !94, file: !81, line: 612, column: 11)
!643 = !DILocation(line: 612, column: 11, scope: !94)
!644 = !DILocation(line: 620, column: 23, scope: !80)
!645 = !DILocation(line: 625, column: 39, scope: !80)
!646 = !DILocation(line: 626, column: 3, scope: !80)
!647 = !DILocation(line: 626, column: 10, scope: !80)
!648 = !DILocation(line: 626, column: 21, scope: !80)
!649 = !DILocation(line: 628, column: 44, scope: !650)
!650 = distinct !DILexicalBlock(scope: !651, file: !81, line: 628, column: 11)
!651 = distinct !DILexicalBlock(scope: !80, file: !81, line: 627, column: 5)
!652 = !DILocation(line: 628, column: 32, scope: !650)
!653 = !DILocation(line: 628, column: 49, scope: !650)
!654 = !DILocation(line: 628, column: 11, scope: !651)
!655 = !DILocation(line: 630, column: 11, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !81, line: 630, column: 11)
!657 = !DILocation(line: 630, column: 11, scope: !651)
!658 = !DILocation(line: 632, column: 26, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !81, line: 632, column: 15)
!660 = distinct !DILexicalBlock(scope: !656, file: !81, line: 631, column: 9)
!661 = !DILocation(line: 632, column: 34, scope: !659)
!662 = !DILocation(line: 632, column: 37, scope: !659)
!663 = !DILocation(line: 632, column: 15, scope: !660)
!664 = !DILocation(line: 636, column: 29, scope: !665)
!665 = distinct !DILexicalBlock(scope: !660, file: !81, line: 636, column: 15)
!666 = !DILocation(line: 640, column: 16, scope: !651)
!667 = distinct !{!667, !646, !668, !567}
!668 = !DILocation(line: 641, column: 5, scope: !80)
!669 = !DILocation(line: 644, column: 3, scope: !80)
!670 = !DILocation(line: 0, scope: !550, inlinedAt: !671)
!671 = distinct !DILocation(line: 648, column: 31, scope: !80)
!672 = !DILocation(line: 0, scope: !550, inlinedAt: !673)
!673 = distinct !DILocation(line: 649, column: 31, scope: !80)
!674 = !DILocation(line: 0, scope: !550, inlinedAt: !675)
!675 = distinct !DILocation(line: 650, column: 31, scope: !80)
!676 = !DILocation(line: 0, scope: !550, inlinedAt: !677)
!677 = distinct !DILocation(line: 651, column: 31, scope: !80)
!678 = !DILocation(line: 0, scope: !550, inlinedAt: !679)
!679 = distinct !DILocation(line: 652, column: 31, scope: !80)
!680 = !DILocation(line: 0, scope: !550, inlinedAt: !681)
!681 = distinct !DILocation(line: 653, column: 31, scope: !80)
!682 = !DILocation(line: 0, scope: !550, inlinedAt: !683)
!683 = distinct !DILocation(line: 654, column: 31, scope: !80)
!684 = !DILocation(line: 0, scope: !550, inlinedAt: !685)
!685 = distinct !DILocation(line: 655, column: 31, scope: !80)
!686 = !DILocation(line: 0, scope: !550, inlinedAt: !687)
!687 = distinct !DILocation(line: 656, column: 31, scope: !80)
!688 = !DILocation(line: 0, scope: !550, inlinedAt: !689)
!689 = distinct !DILocation(line: 657, column: 31, scope: !80)
!690 = !DILocation(line: 663, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !80, file: !81, line: 663, column: 7)
!692 = !DILocation(line: 664, column: 7, scope: !691)
!693 = !DILocation(line: 664, column: 10, scope: !691)
!694 = !DILocation(line: 663, column: 7, scope: !80)
!695 = !DILocation(line: 669, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !691, file: !81, line: 665, column: 5)
!697 = !DILocation(line: 671, column: 5, scope: !696)
!698 = !DILocation(line: 676, column: 7, scope: !699)
!699 = distinct !DILexicalBlock(scope: !691, file: !81, line: 673, column: 5)
!700 = !DILocation(line: 679, column: 3, scope: !80)
!701 = !DILocation(line: 683, column: 3, scope: !80)
!702 = !DILocation(line: 686, column: 3, scope: !80)
!703 = !DILocation(line: 688, column: 3, scope: !80)
!704 = !DILocation(line: 691, column: 3, scope: !80)
!705 = !DILocation(line: 695, column: 3, scope: !80)
!706 = !DILocation(line: 696, column: 1, scope: !80)
!707 = !DISubprogram(name: "setlocale", scope: !708, file: !708, line: 122, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!708 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!709 = !DISubroutineType(types: !710)
!710 = !{!54, !62, !67}
!711 = !DISubprogram(name: "getenv", scope: !712, file: !712, line: 641, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!712 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!713 = !DISubroutineType(types: !714)
!714 = !{!54, !67}
!715 = !DISubprogram(name: "fwrite_unlocked", scope: !226, file: !226, line: 704, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!716 = !DISubroutineType(types: !717)
!717 = !{!64, !718, !64, !64, !598}
!718 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!719 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 129, type: !720, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !723)
!720 = !DISubroutineType(types: !721)
!721 = !{!62, !62, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!723 = !{!724, !725, !726, !727, !728}
!724 = !DILocalVariable(name: "argc", arg: 1, scope: !719, file: !3, line: 129, type: !62)
!725 = !DILocalVariable(name: "argv", arg: 2, scope: !719, file: !3, line: 129, type: !722)
!726 = !DILocalVariable(name: "optc", scope: !719, file: !3, line: 139, type: !62)
!727 = !DILocalVariable(name: "pipe_check", scope: !719, file: !3, line: 177, type: !73)
!728 = !DILocalVariable(name: "ok", scope: !719, file: !3, line: 184, type: !73)
!729 = !DILocation(line: 0, scope: !719)
!730 = !DILocation(line: 132, column: 21, scope: !719)
!731 = !DILocation(line: 132, column: 3, scope: !719)
!732 = !DILocation(line: 133, column: 3, scope: !719)
!733 = !DILocation(line: 134, column: 3, scope: !719)
!734 = !DILocation(line: 135, column: 3, scope: !719)
!735 = !DILocation(line: 137, column: 3, scope: !719)
!736 = !DILocation(line: 140, column: 3, scope: !719)
!737 = !DILocation(line: 140, column: 18, scope: !719)
!738 = !DILocation(line: 145, column: 18, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !3, line: 143, column: 9)
!740 = distinct !DILexicalBlock(scope: !719, file: !3, line: 141, column: 5)
!741 = !DILocation(line: 146, column: 11, scope: !739)
!742 = !DILocation(line: 149, column: 29, scope: !739)
!743 = !DILocation(line: 150, column: 11, scope: !739)
!744 = !DILocation(line: 153, column: 15, scope: !745)
!745 = distinct !DILexicalBlock(scope: !739, file: !3, line: 153, column: 15)
!746 = !DILocation(line: 153, column: 15, scope: !739)
!747 = !DILocation(line: 154, column: 28, scope: !745)
!748 = !DILocation(line: 154, column: 26, scope: !745)
!749 = !DILocation(line: 154, column: 13, scope: !745)
!750 = distinct !{!750, !736, !751, !567}
!751 = !DILocation(line: 167, column: 5, scope: !719)
!752 = !DILocation(line: 157, column: 26, scope: !745)
!753 = !DILocation(line: 160, column: 9, scope: !739)
!754 = !DILocation(line: 162, column: 9, scope: !739)
!755 = !DILocation(line: 165, column: 11, scope: !739)
!756 = !DILocation(line: 169, column: 7, scope: !757)
!757 = distinct !DILexicalBlock(scope: !719, file: !3, line: 169, column: 7)
!758 = !DILocation(line: 169, column: 7, scope: !719)
!759 = !DILocation(line: 170, column: 5, scope: !757)
!760 = !DILocation(line: 172, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !719, file: !3, line: 172, column: 7)
!762 = !DILocation(line: 172, column: 20, scope: !761)
!763 = !DILocation(line: 172, column: 7, scope: !719)
!764 = !DILocation(line: 173, column: 5, scope: !761)
!765 = !DILocation(line: 177, column: 23, scope: !719)
!766 = !DILocation(line: 178, column: 23, scope: !719)
!767 = !DILocation(line: 179, column: 25, scope: !719)
!768 = !DILocation(line: 184, column: 31, scope: !719)
!769 = !DILocation(line: 184, column: 29, scope: !719)
!770 = !DILocation(line: 184, column: 40, scope: !719)
!771 = !DILocalVariable(name: "nfiles", arg: 1, scope: !772, file: !3, line: 231, type: !62)
!772 = distinct !DISubprogram(name: "tee_files", scope: !3, file: !3, line: 231, type: !773, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{!73, !62, !722, !73}
!775 = !{!771, !776, !777, !778, !779, !780, !782, !786, !790, !791, !792, !793, !795, !802, !806, !808}
!776 = !DILocalVariable(name: "files", arg: 2, scope: !772, file: !3, line: 231, type: !722)
!777 = !DILocalVariable(name: "pipe_check", arg: 3, scope: !772, file: !3, line: 231, type: !73)
!778 = !DILocalVariable(name: "n_outputs", scope: !772, file: !3, line: 233, type: !64)
!779 = !DILocalVariable(name: "descriptors", scope: !772, file: !3, line: 234, type: !184)
!780 = !DILocalVariable(name: "out_pollable", scope: !772, file: !3, line: 235, type: !781)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!782 = !DILocalVariable(name: "buffer", scope: !772, file: !3, line: 236, type: !783)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 65536, elements: !784)
!784 = !{!785}
!785 = !DISubrange(count: 8192)
!786 = !DILocalVariable(name: "bytes_read", scope: !772, file: !3, line: 237, type: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !788, line: 108, baseType: !789)
!788 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !130, line: 194, baseType: !131)
!790 = !DILocalVariable(name: "first_out", scope: !772, file: !3, line: 238, type: !62)
!791 = !DILocalVariable(name: "ok", scope: !772, file: !3, line: 239, type: !73)
!792 = !DILocalVariable(name: "flags", scope: !772, file: !3, line: 240, type: !62)
!793 = !DILocalVariable(name: "i", scope: !794, file: !3, line: 259, type: !62)
!794 = distinct !DILexicalBlock(scope: !772, file: !3, line: 259, column: 3)
!795 = !DILocalVariable(name: "__errstatus", scope: !796, file: !3, line: 267, type: !801)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 267, column: 11)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 264, column: 9)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 263, column: 11)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 260, column: 5)
!800 = distinct !DILexicalBlock(scope: !794, file: !3, line: 259, column: 3)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!802 = !DILocalVariable(name: "err", scope: !803, file: !3, line: 285, type: !62)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 283, column: 9)
!804 = distinct !DILexicalBlock(scope: !805, file: !3, line: 282, column: 11)
!805 = distinct !DILexicalBlock(scope: !772, file: !3, line: 281, column: 5)
!806 = !DILocalVariable(name: "i", scope: !807, file: !3, line: 312, type: !62)
!807 = distinct !DILexicalBlock(scope: !805, file: !3, line: 312, column: 7)
!808 = !DILocalVariable(name: "i", scope: !809, file: !3, line: 331, type: !62)
!809 = distinct !DILexicalBlock(scope: !772, file: !3, line: 331, column: 3)
!810 = !DILocation(line: 0, scope: !772, inlinedAt: !811)
!811 = distinct !DILocation(line: 184, column: 13, scope: !719)
!812 = !DILocation(line: 236, column: 3, scope: !772, inlinedAt: !811)
!813 = !DILocation(line: 236, column: 8, scope: !772, inlinedAt: !811)
!814 = !DILocation(line: 240, column: 48, scope: !772, inlinedAt: !811)
!815 = !DILocation(line: 240, column: 45, scope: !772, inlinedAt: !811)
!816 = !DILocation(line: 244, column: 12, scope: !772, inlinedAt: !811)
!817 = !DILocation(line: 244, column: 3, scope: !772, inlinedAt: !811)
!818 = !DILocation(line: 249, column: 34, scope: !772, inlinedAt: !811)
!819 = !DILocation(line: 249, column: 27, scope: !772, inlinedAt: !811)
!820 = !DILocation(line: 249, column: 17, scope: !772, inlinedAt: !811)
!821 = !DILocation(line: 250, column: 7, scope: !772, inlinedAt: !811)
!822 = !DILocation(line: 253, column: 18, scope: !772, inlinedAt: !811)
!823 = !DILocation(line: 251, column: 20, scope: !824, inlinedAt: !811)
!824 = distinct !DILexicalBlock(scope: !772, file: !3, line: 250, column: 7)
!825 = !DILocation(line: 255, column: 23, scope: !826, inlinedAt: !811)
!826 = distinct !DILexicalBlock(scope: !772, file: !3, line: 254, column: 7)
!827 = !DILocation(line: 255, column: 21, scope: !826, inlinedAt: !811)
!828 = !{!829, !829, i64 0}
!829 = !{!"_Bool", !512, i64 0}
!830 = !DILocation(line: 255, column: 5, scope: !826, inlinedAt: !811)
!831 = !DILocation(line: 252, column: 8, scope: !772, inlinedAt: !811)
!832 = !DILocation(line: 256, column: 24, scope: !772, inlinedAt: !811)
!833 = !DILocation(line: 256, column: 12, scope: !772, inlinedAt: !811)
!834 = !DILocation(line: 0, scope: !794, inlinedAt: !811)
!835 = !DILocation(line: 259, column: 21, scope: !800, inlinedAt: !811)
!836 = !DILocation(line: 259, column: 3, scope: !794, inlinedAt: !811)
!837 = !DILocation(line: 280, column: 3, scope: !772, inlinedAt: !811)
!838 = !DILocation(line: 262, column: 30, scope: !799, inlinedAt: !811)
!839 = !DILocation(line: 262, column: 24, scope: !799, inlinedAt: !811)
!840 = !DILocation(line: 262, column: 7, scope: !799, inlinedAt: !811)
!841 = !DILocation(line: 262, column: 22, scope: !799, inlinedAt: !811)
!842 = !DILocation(line: 263, column: 26, scope: !798, inlinedAt: !811)
!843 = !DILocation(line: 263, column: 11, scope: !799, inlinedAt: !811)
!844 = !DILocation(line: 265, column: 15, scope: !797, inlinedAt: !811)
!845 = !DILocation(line: 266, column: 13, scope: !846, inlinedAt: !811)
!846 = distinct !DILexicalBlock(scope: !797, file: !3, line: 265, column: 15)
!847 = !DILocation(line: 266, column: 29, scope: !846, inlinedAt: !811)
!848 = !DILocation(line: 267, column: 11, scope: !797, inlinedAt: !811)
!849 = !DILocation(line: 0, scope: !797, inlinedAt: !811)
!850 = !DILocation(line: 0, scope: !796, inlinedAt: !811)
!851 = !DILocation(line: 267, column: 11, scope: !796, inlinedAt: !811)
!852 = !DILocation(line: 274, column: 15, scope: !853, inlinedAt: !811)
!853 = distinct !DILexicalBlock(scope: !798, file: !3, line: 273, column: 9)
!854 = !DILocation(line: 275, column: 31, scope: !855, inlinedAt: !811)
!855 = distinct !DILexicalBlock(scope: !853, file: !3, line: 274, column: 15)
!856 = !DILocation(line: 275, column: 13, scope: !855, inlinedAt: !811)
!857 = !DILocation(line: 275, column: 29, scope: !855, inlinedAt: !811)
!858 = !DILocation(line: 276, column: 20, scope: !853, inlinedAt: !811)
!859 = !DILocation(line: 259, column: 33, scope: !800, inlinedAt: !811)
!860 = distinct !{!860, !836, !861, !567}
!861 = !DILocation(line: 278, column: 5, scope: !794, inlinedAt: !811)
!862 = !DILocation(line: 282, column: 22, scope: !804, inlinedAt: !811)
!863 = !DILocation(line: 282, column: 25, scope: !804, inlinedAt: !811)
!864 = !{i8 0, i8 2}
!865 = !DILocation(line: 282, column: 11, scope: !805, inlinedAt: !811)
!866 = !DILocation(line: 285, column: 43, scope: !803, inlinedAt: !811)
!867 = !DILocation(line: 285, column: 21, scope: !803, inlinedAt: !811)
!868 = !DILocation(line: 0, scope: !803, inlinedAt: !811)
!869 = !DILocation(line: 288, column: 15, scope: !803, inlinedAt: !811)
!870 = !DILocation(line: 290, column: 15, scope: !871, inlinedAt: !811)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 289, column: 13)
!872 = distinct !DILexicalBlock(scope: !803, file: !3, line: 288, column: 15)
!873 = !DILocation(line: 290, column: 21, scope: !871, inlinedAt: !811)
!874 = !DILocalVariable(name: "descriptors", arg: 1, scope: !875, file: !3, line: 209, type: !184)
!875 = distinct !DISubprogram(name: "fail_output", scope: !3, file: !3, line: 209, type: !876, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !878)
!876 = !DISubroutineType(types: !877)
!877 = !{!73, !184, !722, !62}
!878 = !{!874, !879, !880, !881, !882, !883}
!879 = !DILocalVariable(name: "files", arg: 2, scope: !875, file: !3, line: 209, type: !722)
!880 = !DILocalVariable(name: "i", arg: 3, scope: !875, file: !3, line: 209, type: !62)
!881 = !DILocalVariable(name: "w_errno", scope: !875, file: !3, line: 211, type: !62)
!882 = !DILocalVariable(name: "fail", scope: !875, file: !3, line: 212, type: !73)
!883 = !DILocalVariable(name: "__errstatus", scope: !884, file: !3, line: 217, type: !801)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 217, column: 7)
!885 = distinct !DILexicalBlock(scope: !886, file: !3, line: 216, column: 5)
!886 = distinct !DILexicalBlock(scope: !875, file: !3, line: 215, column: 7)
!887 = !DILocation(line: 0, scope: !875, inlinedAt: !888)
!888 = distinct !DILocation(line: 291, column: 19, scope: !889, inlinedAt: !811)
!889 = distinct !DILexicalBlock(scope: !871, file: !3, line: 291, column: 19)
!890 = !DILocation(line: 215, column: 7, scope: !875, inlinedAt: !888)
!891 = !DILocation(line: 217, column: 7, scope: !885, inlinedAt: !888)
!892 = !DILocation(line: 0, scope: !885, inlinedAt: !888)
!893 = !DILocation(line: 0, scope: !884, inlinedAt: !888)
!894 = !DILocation(line: 217, column: 7, scope: !884, inlinedAt: !888)
!895 = !DILocation(line: 213, column: 15, scope: !875, inlinedAt: !888)
!896 = !DILocation(line: 221, column: 18, scope: !875, inlinedAt: !888)
!897 = !DILocation(line: 291, column: 19, scope: !871, inlinedAt: !811)
!898 = !DILocation(line: 293, column: 24, scope: !871, inlinedAt: !811)
!899 = !DILocalVariable(name: "descriptors", arg: 1, scope: !900, file: !3, line: 197, type: !184)
!900 = distinct !DISubprogram(name: "get_next_out", scope: !3, file: !3, line: 197, type: !901, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !903)
!901 = !DISubroutineType(types: !902)
!902 = !{!62, !184, !62, !62}
!903 = !{!899, !904, !905}
!904 = !DILocalVariable(name: "nfiles", arg: 2, scope: !900, file: !3, line: 197, type: !62)
!905 = !DILocalVariable(name: "idx", arg: 3, scope: !900, file: !3, line: 197, type: !62)
!906 = !DILocation(line: 0, scope: !900, inlinedAt: !907)
!907 = distinct !DILocation(line: 294, column: 27, scope: !871, inlinedAt: !811)
!908 = !DILocation(line: 199, column: 8, scope: !909, inlinedAt: !907)
!909 = distinct !DILexicalBlock(scope: !900, file: !3, line: 199, column: 3)
!910 = !DILocation(line: 199, column: 19, scope: !911, inlinedAt: !907)
!911 = distinct !DILexicalBlock(scope: !909, file: !3, line: 199, column: 3)
!912 = !DILocation(line: 0, scope: !909, inlinedAt: !907)
!913 = !DILocation(line: 199, column: 3, scope: !909, inlinedAt: !907)
!914 = distinct !{!914, !837, !915, !567}
!915 = !DILocation(line: 322, column: 5, scope: !772, inlinedAt: !811)
!916 = !DILocation(line: 200, column: 14, scope: !917, inlinedAt: !907)
!917 = distinct !DILexicalBlock(scope: !911, file: !3, line: 200, column: 9)
!918 = !DILocation(line: 200, column: 11, scope: !917, inlinedAt: !907)
!919 = !DILocation(line: 200, column: 9, scope: !911, inlinedAt: !907)
!920 = distinct !{!920, !913, !921, !567}
!921 = !DILocation(line: 201, column: 14, scope: !909, inlinedAt: !907)
!922 = !DILocation(line: 203, column: 1, scope: !900, inlinedAt: !907)
!923 = distinct !{!923, !837, !915, !567}
!924 = !DILocation(line: 299, column: 15, scope: !925, inlinedAt: !811)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 298, column: 13)
!926 = distinct !DILexicalBlock(scope: !872, file: !3, line: 297, column: 20)
!927 = !DILocation(line: 301, column: 13, scope: !925, inlinedAt: !811)
!928 = !DILocation(line: 304, column: 20, scope: !805, inlinedAt: !811)
!929 = !DILocation(line: 305, column: 22, scope: !930, inlinedAt: !811)
!930 = distinct !DILexicalBlock(scope: !805, file: !3, line: 305, column: 11)
!931 = !DILocation(line: 305, column: 26, scope: !930, inlinedAt: !811)
!932 = !DILocation(line: 305, column: 29, scope: !930, inlinedAt: !811)
!933 = !DILocation(line: 305, column: 35, scope: !930, inlinedAt: !811)
!934 = !DILocation(line: 305, column: 11, scope: !805, inlinedAt: !811)
!935 = distinct !{!935, !837, !915, !567}
!936 = !DILocation(line: 307, column: 22, scope: !937, inlinedAt: !811)
!937 = distinct !DILexicalBlock(scope: !805, file: !3, line: 307, column: 11)
!938 = !DILocation(line: 307, column: 11, scope: !805, inlinedAt: !811)
!939 = !DILocation(line: 0, scope: !807, inlinedAt: !811)
!940 = !DILocation(line: 312, column: 7, scope: !807, inlinedAt: !811)
!941 = distinct !{!941, !837, !915, !567}
!942 = !DILocation(line: 313, column: 18, scope: !943, inlinedAt: !811)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 313, column: 13)
!944 = distinct !DILexicalBlock(scope: !807, file: !3, line: 312, column: 7)
!945 = !DILocation(line: 313, column: 15, scope: !943, inlinedAt: !811)
!946 = !DILocation(line: 314, column: 13, scope: !943, inlinedAt: !811)
!947 = !DILocation(line: 314, column: 18, scope: !943, inlinedAt: !811)
!948 = !DILocation(line: 313, column: 13, scope: !944, inlinedAt: !811)
!949 = !DILocation(line: 0, scope: !875, inlinedAt: !950)
!950 = distinct !DILocation(line: 316, column: 17, scope: !951, inlinedAt: !811)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 316, column: 17)
!952 = distinct !DILexicalBlock(scope: !943, file: !3, line: 315, column: 11)
!953 = !DILocation(line: 211, column: 17, scope: !875, inlinedAt: !950)
!954 = !DILocation(line: 212, column: 21, scope: !875, inlinedAt: !950)
!955 = !DILocation(line: 215, column: 7, scope: !875, inlinedAt: !950)
!956 = !DILocation(line: 217, column: 7, scope: !885, inlinedAt: !950)
!957 = !DILocation(line: 0, scope: !885, inlinedAt: !950)
!958 = !DILocation(line: 0, scope: !884, inlinedAt: !950)
!959 = !DILocation(line: 217, column: 7, scope: !884, inlinedAt: !950)
!960 = !DILocation(line: 213, column: 15, scope: !875, inlinedAt: !950)
!961 = !DILocation(line: 221, column: 18, scope: !875, inlinedAt: !950)
!962 = !DILocation(line: 316, column: 17, scope: !952, inlinedAt: !811)
!963 = !DILocation(line: 318, column: 22, scope: !952, inlinedAt: !811)
!964 = !DILocation(line: 319, column: 19, scope: !965, inlinedAt: !811)
!965 = distinct !DILexicalBlock(scope: !952, file: !3, line: 319, column: 17)
!966 = !DILocation(line: 319, column: 17, scope: !952, inlinedAt: !811)
!967 = !DILocation(line: 0, scope: !900, inlinedAt: !968)
!968 = distinct !DILocation(line: 320, column: 27, scope: !965, inlinedAt: !811)
!969 = !DILocation(line: 199, column: 8, scope: !909, inlinedAt: !968)
!970 = !DILocation(line: 199, column: 19, scope: !911, inlinedAt: !968)
!971 = !DILocation(line: 0, scope: !909, inlinedAt: !968)
!972 = !DILocation(line: 199, column: 3, scope: !909, inlinedAt: !968)
!973 = !DILocation(line: 200, column: 14, scope: !917, inlinedAt: !968)
!974 = !DILocation(line: 200, column: 11, scope: !917, inlinedAt: !968)
!975 = !DILocation(line: 200, column: 9, scope: !911, inlinedAt: !968)
!976 = distinct !{!976, !972, !977, !567}
!977 = !DILocation(line: 201, column: 14, scope: !909, inlinedAt: !968)
!978 = !DILocation(line: 203, column: 1, scope: !900, inlinedAt: !968)
!979 = !DILocation(line: 0, scope: !805, inlinedAt: !811)
!980 = !DILocation(line: 312, column: 37, scope: !944, inlinedAt: !811)
!981 = !DILocation(line: 312, column: 25, scope: !944, inlinedAt: !811)
!982 = distinct !{!982, !940, !983, !567}
!983 = !DILocation(line: 321, column: 11, scope: !807, inlinedAt: !811)
!984 = !DILocation(line: 324, column: 18, scope: !985, inlinedAt: !811)
!985 = distinct !DILexicalBlock(scope: !772, file: !3, line: 324, column: 7)
!986 = !DILocation(line: 324, column: 7, scope: !772, inlinedAt: !811)
!987 = !DILocation(line: 326, column: 7, scope: !988, inlinedAt: !811)
!988 = distinct !DILexicalBlock(scope: !985, file: !3, line: 325, column: 5)
!989 = !DILocation(line: 328, column: 5, scope: !988, inlinedAt: !811)
!990 = !DILocation(line: 0, scope: !809, inlinedAt: !811)
!991 = !DILocation(line: 331, column: 3, scope: !809, inlinedAt: !811)
!992 = !DILocation(line: 331, column: 21, scope: !993, inlinedAt: !811)
!993 = distinct !DILexicalBlock(scope: !809, file: !3, line: 331, column: 3)
!994 = !DILocation(line: 338, column: 3, scope: !772, inlinedAt: !811)
!995 = !DILocation(line: 339, column: 7, scope: !772, inlinedAt: !811)
!996 = !DILocation(line: 332, column: 14, scope: !997, inlinedAt: !811)
!997 = distinct !DILexicalBlock(scope: !993, file: !3, line: 332, column: 9)
!998 = !DILocation(line: 332, column: 11, scope: !997, inlinedAt: !811)
!999 = !DILocation(line: 332, column: 29, scope: !997, inlinedAt: !811)
!1000 = !DILocation(line: 332, column: 34, scope: !997, inlinedAt: !811)
!1001 = !DILocation(line: 332, column: 9, scope: !993, inlinedAt: !811)
!1002 = !DILocation(line: 334, column: 9, scope: !1003, inlinedAt: !811)
!1003 = distinct !DILexicalBlock(scope: !997, file: !3, line: 333, column: 7)
!1004 = !DILocation(line: 336, column: 7, scope: !1003, inlinedAt: !811)
!1005 = !DILocation(line: 331, column: 33, scope: !993, inlinedAt: !811)
!1006 = distinct !{!1006, !991, !1007, !567}
!1007 = !DILocation(line: 336, column: 7, scope: !809, inlinedAt: !811)
!1008 = !DILocation(line: 340, column: 5, scope: !1009, inlinedAt: !811)
!1009 = distinct !DILexicalBlock(scope: !772, file: !3, line: 339, column: 7)
!1010 = !DILocation(line: 343, column: 1, scope: !772, inlinedAt: !811)
!1011 = !DILocation(line: 185, column: 7, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !719, file: !3, line: 185, column: 7)
!1013 = !DILocation(line: 185, column: 28, scope: !1012)
!1014 = !DILocation(line: 185, column: 7, scope: !719)
!1015 = !DILocation(line: 186, column: 5, scope: !1012)
!1016 = !DILocation(line: 188, column: 10, scope: !719)
!1017 = !DILocation(line: 189, column: 1, scope: !719)
!1018 = !DISubprogram(name: "bindtextdomain", scope: !590, file: !590, line: 86, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!54, !67, !67}
!1021 = !DISubprogram(name: "textdomain", scope: !590, file: !590, line: 82, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1022 = !DISubprogram(name: "atexit", scope: !712, file: !712, line: 602, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!62, !204}
!1025 = !DISubprogram(name: "getopt_long", scope: !179, file: !179, line: 66, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!62, !62, !1028, !67, !1030, !184}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1031 = !DISubprogram(name: "signal", scope: !58, file: !58, line: 88, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!57, !62, !57}
!1034 = !DISubprogram(name: "close", scope: !1035, file: !1035, line: 358, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1035 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!62, !62}
!1038 = distinct !DISubprogram(name: "iopoll", scope: !415, file: !415, line: 139, type: !1039, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1041)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!62, !62, !62, !73}
!1041 = !{!1042, !1043, !1044}
!1042 = !DILocalVariable(name: "fdin", arg: 1, scope: !1038, file: !415, line: 139, type: !62)
!1043 = !DILocalVariable(name: "fdout", arg: 2, scope: !1038, file: !415, line: 139, type: !62)
!1044 = !DILocalVariable(name: "block", arg: 3, scope: !1038, file: !415, line: 139, type: !73)
!1045 = !DILocation(line: 0, scope: !1038)
!1046 = !DILocation(line: 141, column: 10, scope: !1038)
!1047 = !DILocation(line: 141, column: 3, scope: !1038)
!1048 = distinct !DISubprogram(name: "iopoll_internal", scope: !415, file: !415, line: 62, type: !1049, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1051)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!62, !62, !62, !73, !73}
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1065, !1066}
!1052 = !DILocalVariable(name: "fdin", arg: 1, scope: !1048, file: !415, line: 62, type: !62)
!1053 = !DILocalVariable(name: "fdout", arg: 2, scope: !1048, file: !415, line: 62, type: !62)
!1054 = !DILocalVariable(name: "block", arg: 3, scope: !1048, file: !415, line: 62, type: !73)
!1055 = !DILocalVariable(name: "broken_output", arg: 4, scope: !1048, file: !415, line: 62, type: !73)
!1056 = !DILocalVariable(name: "pfds", scope: !1048, file: !415, line: 67, type: !1057)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1058, size: 128, elements: !290)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1059, line: 36, size: 64, elements: !1060)
!1059 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!1060 = !{!1061, !1062, !1064}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1058, file: !1059, line: 38, baseType: !62, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1058, file: !1059, line: 39, baseType: !1063, size: 16, offset: 32)
!1063 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1058, file: !1059, line: 40, baseType: !1063, size: 16, offset: 48)
!1065 = !DILocalVariable(name: "check_out_events", scope: !1048, file: !415, line: 71, type: !62)
!1066 = !DILocalVariable(name: "ret", scope: !1048, file: !415, line: 72, type: !62)
!1067 = !DILocation(line: 0, scope: !1048)
!1068 = !DILocation(line: 64, column: 3, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !415, line: 64, column: 3)
!1070 = distinct !DILexicalBlock(scope: !1048, file: !415, line: 64, column: 3)
!1071 = !DILocation(line: 67, column: 3, scope: !1048)
!1072 = !DILocation(line: 67, column: 17, scope: !1048)
!1073 = !DILocation(line: 67, column: 27, scope: !1048)
!1074 = !DILocation(line: 68, column: 5, scope: !1048)
!1075 = !{!1076, !602, i64 0}
!1076 = !{!"pollfd", !602, i64 0, !636, i64 4, !636, i64 6}
!1077 = !{!1076, !636, i64 4}
!1078 = !{!1076, !636, i64 6}
!1079 = !DILocation(line: 69, column: 5, scope: !1048)
!1080 = !DILocation(line: 74, column: 7, scope: !1048)
!1081 = !DILocation(line: 76, column: 39, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !415, line: 75, column: 5)
!1083 = distinct !DILexicalBlock(scope: !1048, file: !415, line: 74, column: 7)
!1084 = !DILocation(line: 76, column: 22, scope: !1082)
!1085 = !DILocation(line: 78, column: 5, scope: !1082)
!1086 = !DILocation(line: 80, column: 3, scope: !1048)
!1087 = !DILocation(line: 80, column: 12, scope: !1048)
!1088 = !DILocation(line: 80, column: 19, scope: !1048)
!1089 = !DILocation(line: 80, column: 22, scope: !1048)
!1090 = !DILocation(line: 80, column: 28, scope: !1048)
!1091 = !DILocation(line: 82, column: 13, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1048, file: !415, line: 81, column: 5)
!1093 = !DILocation(line: 84, column: 15, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1092, file: !415, line: 84, column: 11)
!1095 = !DILocation(line: 84, column: 11, scope: !1092)
!1096 = distinct !{!1096, !1086, !1097, !567}
!1097 = !DILocation(line: 93, column: 5, scope: !1048)
!1098 = !DILocation(line: 86, column: 15, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1092, file: !415, line: 86, column: 11)
!1100 = !DILocation(line: 86, column: 20, scope: !1099)
!1101 = !DILocation(line: 88, column: 7, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !415, line: 88, column: 7)
!1103 = distinct !DILexicalBlock(scope: !1092, file: !415, line: 88, column: 7)
!1104 = !DILocation(line: 88, column: 7, scope: !1103)
!1105 = !DILocation(line: 89, column: 19, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1092, file: !415, line: 89, column: 11)
!1107 = !DILocation(line: 89, column: 11, scope: !1106)
!1108 = !DILocation(line: 89, column: 11, scope: !1092)
!1109 = !DILocation(line: 91, column: 19, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1092, file: !415, line: 91, column: 11)
!1111 = !DILocation(line: 91, column: 11, scope: !1110)
!1112 = !DILocation(line: 91, column: 27, scope: !1110)
!1113 = !DILocation(line: 91, column: 11, scope: !1092)
!1114 = !DILocation(line: 92, column: 16, scope: !1110)
!1115 = !DILocation(line: 92, column: 9, scope: !1110)
!1116 = !DILocation(line: 136, column: 1, scope: !1048)
!1117 = distinct !DISubprogram(name: "iopoll_input_ok", scope: !415, file: !415, line: 151, type: !1118, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1120)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!73, !62}
!1120 = !{!1121, !1122, !1158}
!1121 = !DILocalVariable(name: "fdin", arg: 1, scope: !1117, file: !415, line: 151, type: !62)
!1122 = !DILocalVariable(name: "st", scope: !1117, file: !415, line: 153, type: !1123)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1124, line: 44, size: 1024, elements: !1125)
!1124 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1125 = !{!1126, !1128, !1130, !1132, !1134, !1136, !1138, !1139, !1140, !1141, !1143, !1144, !1146, !1154, !1155, !1156}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1123, file: !1124, line: 46, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !130, line: 145, baseType: !66)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1123, file: !1124, line: 47, baseType: !1129, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !130, line: 148, baseType: !66)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1123, file: !1124, line: 48, baseType: !1131, size: 32, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !130, line: 150, baseType: !6)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1123, file: !1124, line: 49, baseType: !1133, size: 32, offset: 160)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !130, line: 151, baseType: !6)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1123, file: !1124, line: 50, baseType: !1135, size: 32, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !130, line: 146, baseType: !6)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1123, file: !1124, line: 51, baseType: !1137, size: 32, offset: 224)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !130, line: 147, baseType: !6)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1123, file: !1124, line: 52, baseType: !1127, size: 64, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1123, file: !1124, line: 53, baseType: !1127, size: 64, offset: 320)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1123, file: !1124, line: 54, baseType: !129, size: 64, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1123, file: !1124, line: 55, baseType: !1142, size: 32, offset: 448)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !130, line: 175, baseType: !62)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1123, file: !1124, line: 56, baseType: !62, size: 32, offset: 480)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1123, file: !1124, line: 57, baseType: !1145, size: 64, offset: 512)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !130, line: 180, baseType: !131)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1123, file: !1124, line: 65, baseType: !1147, size: 128, offset: 576)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1148, line: 11, size: 128, elements: !1149)
!1148 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1149 = !{!1150, !1152}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1147, file: !1148, line: 16, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !130, line: 160, baseType: !131)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1147, file: !1148, line: 21, baseType: !1153, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !130, line: 197, baseType: !131)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1123, file: !1124, line: 66, baseType: !1147, size: 128, offset: 704)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1123, file: !1124, line: 67, baseType: !1147, size: 128, offset: 832)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1123, file: !1124, line: 79, baseType: !1157, size: 64, offset: 960)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !290)
!1158 = !DILocalVariable(name: "always_ready", scope: !1117, file: !415, line: 154, type: !73)
!1159 = !DILocation(line: 0, scope: !1117)
!1160 = !DILocation(line: 153, column: 3, scope: !1117)
!1161 = !DILocation(line: 153, column: 15, scope: !1117)
!1162 = !DILocation(line: 154, column: 23, scope: !1117)
!1163 = !DILocation(line: 154, column: 41, scope: !1117)
!1164 = !DILocation(line: 155, column: 23, scope: !1117)
!1165 = !DILocation(line: 155, column: 27, scope: !1117)
!1166 = !{!1167, !602, i64 16}
!1167 = !{!"stat", !1168, i64 0, !1168, i64 8, !602, i64 16, !602, i64 20, !602, i64 24, !602, i64 28, !1168, i64 32, !1168, i64 40, !1168, i64 48, !602, i64 56, !602, i64 60, !1168, i64 64, !1169, i64 72, !1169, i64 88, !1169, i64 104, !512, i64 120}
!1168 = !{!"long", !512, i64 0}
!1169 = !{!"timespec", !1168, i64 0, !1168, i64 8}
!1170 = !DILocation(line: 156, column: 27, scope: !1117)
!1171 = !DILocation(line: 158, column: 1, scope: !1117)
!1172 = !DILocation(line: 157, column: 3, scope: !1117)
!1173 = !DISubprogram(name: "fstat", scope: !1174, file: !1174, line: 210, type: !1175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1174 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!62, !62, !1177}
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1178 = distinct !DISubprogram(name: "iopoll_output_ok", scope: !415, file: !415, line: 164, type: !1118, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1179)
!1179 = !{!1180}
!1180 = !DILocalVariable(name: "fdout", arg: 1, scope: !1178, file: !415, line: 164, type: !62)
!1181 = !DILocation(line: 0, scope: !1178)
!1182 = !DILocation(line: 166, column: 10, scope: !1178)
!1183 = !DILocation(line: 166, column: 26, scope: !1178)
!1184 = !DILocation(line: 166, column: 3, scope: !1178)
!1185 = distinct !DISubprogram(name: "close_wait", scope: !415, file: !415, line: 200, type: !1118, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1186)
!1186 = !{!1187}
!1187 = !DILocalVariable(name: "fd", arg: 1, scope: !1185, file: !415, line: 200, type: !62)
!1188 = !DILocation(line: 0, scope: !1185)
!1189 = !DILocation(line: 202, column: 3, scope: !1185)
!1190 = !DILocalVariable(name: "fd", arg: 1, scope: !1191, file: !415, line: 180, type: !62)
!1191 = distinct !DISubprogram(name: "wait_for_nonblocking_write", scope: !415, file: !415, line: 180, type: !1118, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1192)
!1192 = !{!1190}
!1193 = !DILocation(line: 0, scope: !1191, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 202, column: 10, scope: !1185)
!1195 = !DILocation(line: 182, column: 9, scope: !1196, inlinedAt: !1194)
!1196 = distinct !DILexicalBlock(scope: !1191, file: !415, line: 182, column: 7)
!1197 = !DILocation(line: 187, column: 7, scope: !1198, inlinedAt: !1194)
!1198 = distinct !DILexicalBlock(scope: !1191, file: !415, line: 187, column: 7)
!1199 = !DILocation(line: 187, column: 45, scope: !1198, inlinedAt: !1194)
!1200 = !DILocation(line: 187, column: 7, scope: !1191, inlinedAt: !1194)
!1201 = distinct !{!1201, !1189, !1202, !567}
!1202 = !DILocation(line: 203, column: 5, scope: !1185)
!1203 = !DILocation(line: 189, column: 13, scope: !1204, inlinedAt: !1194)
!1204 = distinct !DILexicalBlock(scope: !1198, file: !415, line: 188, column: 5)
!1205 = !DILocation(line: 190, column: 7, scope: !1204, inlinedAt: !1194)
!1206 = !DILocation(line: 204, column: 10, scope: !1185)
!1207 = !DILocation(line: 204, column: 21, scope: !1185)
!1208 = !DILocation(line: 204, column: 3, scope: !1185)
!1209 = distinct !DISubprogram(name: "write_wait", scope: !415, file: !415, line: 211, type: !1210, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1212)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!73, !62, !52, !64}
!1212 = !{!1213, !1214, !1215, !1216, !1219}
!1213 = !DILocalVariable(name: "fd", arg: 1, scope: !1209, file: !415, line: 211, type: !62)
!1214 = !DILocalVariable(name: "buffer", arg: 2, scope: !1209, file: !415, line: 211, type: !52)
!1215 = !DILocalVariable(name: "size", arg: 3, scope: !1209, file: !415, line: 211, type: !64)
!1216 = !DILocalVariable(name: "buf", scope: !1209, file: !415, line: 213, type: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!1219 = !DILocalVariable(name: "written", scope: !1220, file: !415, line: 217, type: !787)
!1220 = distinct !DILexicalBlock(scope: !1209, file: !415, line: 216, column: 5)
!1221 = !DILocation(line: 0, scope: !1209)
!1222 = !DILocation(line: 217, column: 25, scope: !1220)
!1223 = !DILocation(line: 0, scope: !1220)
!1224 = !DILocation(line: 218, column: 11, scope: !1220)
!1225 = !DILocation(line: 221, column: 12, scope: !1220)
!1226 = !DILocation(line: 222, column: 16, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1220, file: !415, line: 222, column: 11)
!1228 = !DILocation(line: 222, column: 11, scope: !1220)
!1229 = !DILocation(line: 0, scope: !1191, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 225, column: 13, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1220, file: !415, line: 225, column: 11)
!1232 = !DILocation(line: 182, column: 9, scope: !1196, inlinedAt: !1230)
!1233 = !DILocation(line: 187, column: 7, scope: !1198, inlinedAt: !1230)
!1234 = !DILocation(line: 187, column: 45, scope: !1198, inlinedAt: !1230)
!1235 = !DILocation(line: 187, column: 7, scope: !1191, inlinedAt: !1230)
!1236 = !DILocation(line: 189, column: 13, scope: !1204, inlinedAt: !1230)
!1237 = !DILocation(line: 190, column: 7, scope: !1204, inlinedAt: !1230)
!1238 = !DILocation(line: 228, column: 11, scope: !1220)
!1239 = distinct !{!1239, !1240, !1241}
!1240 = !DILocation(line: 215, column: 3, scope: !1209)
!1241 = !DILocation(line: 229, column: 5, scope: !1209)
!1242 = !DILocation(line: 230, column: 1, scope: !1209)
!1243 = !DISubprogram(name: "write", scope: !1035, file: !1035, line: 378, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!787, !62, !52, !64}
!1246 = distinct !DISubprogram(name: "__argmatch_die", scope: !198, file: !198, line: 58, type: !205, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !593)
!1247 = !DILocation(line: 60, column: 3, scope: !1246)
!1248 = !DILocation(line: 61, column: 1, scope: !1246)
!1249 = distinct !DISubprogram(name: "argmatch", scope: !198, file: !198, line: 80, type: !1250, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1253)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!456, !67, !1252, !52, !64}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!1253 = !{!1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261}
!1254 = !DILocalVariable(name: "arg", arg: 1, scope: !1249, file: !198, line: 80, type: !67)
!1255 = !DILocalVariable(name: "arglist", arg: 2, scope: !1249, file: !198, line: 80, type: !1252)
!1256 = !DILocalVariable(name: "vallist", arg: 3, scope: !1249, file: !198, line: 81, type: !52)
!1257 = !DILocalVariable(name: "valsize", arg: 4, scope: !1249, file: !198, line: 81, type: !64)
!1258 = !DILocalVariable(name: "arglen", scope: !1249, file: !198, line: 83, type: !64)
!1259 = !DILocalVariable(name: "matchind", scope: !1249, file: !198, line: 85, type: !456)
!1260 = !DILocalVariable(name: "ambiguous", scope: !1249, file: !198, line: 86, type: !73)
!1261 = !DILocalVariable(name: "i", scope: !1262, file: !198, line: 89, type: !64)
!1262 = distinct !DILexicalBlock(scope: !1249, file: !198, line: 89, column: 3)
!1263 = !DILocation(line: 0, scope: !1249)
!1264 = !DILocation(line: 83, column: 19, scope: !1249)
!1265 = !DILocation(line: 0, scope: !1262)
!1266 = !DILocation(line: 89, column: 22, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !198, line: 89, column: 3)
!1268 = !DILocation(line: 89, column: 3, scope: !1262)
!1269 = !DILocation(line: 91, column: 12, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !198, line: 91, column: 11)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !198, line: 90, column: 5)
!1272 = !DILocation(line: 91, column: 11, scope: !1271)
!1273 = !DILocation(line: 93, column: 15, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !198, line: 93, column: 15)
!1275 = distinct !DILexicalBlock(scope: !1270, file: !198, line: 92, column: 9)
!1276 = !DILocation(line: 93, column: 35, scope: !1274)
!1277 = !DILocation(line: 93, column: 15, scope: !1275)
!1278 = !DILocation(line: 96, column: 29, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !198, line: 96, column: 20)
!1280 = !DILocation(line: 96, column: 20, scope: !1274)
!1281 = !DILocation(line: 103, column: 19, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !198, line: 102, column: 19)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !198, line: 100, column: 13)
!1284 = !DILocation(line: 103, column: 63, scope: !1282)
!1285 = !DILocation(line: 103, column: 53, scope: !1282)
!1286 = !DILocation(line: 104, column: 63, scope: !1282)
!1287 = !DILocation(line: 104, column: 53, scope: !1282)
!1288 = !DILocalVariable(name: "__s1", arg: 1, scope: !1289, file: !551, line: 974, type: !52)
!1289 = distinct !DISubprogram(name: "memeq", scope: !551, file: !551, line: 974, type: !1290, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1292)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!73, !52, !52, !64}
!1292 = !{!1288, !1293, !1294}
!1293 = !DILocalVariable(name: "__s2", arg: 2, scope: !1289, file: !551, line: 974, type: !52)
!1294 = !DILocalVariable(name: "__n", arg: 3, scope: !1289, file: !551, line: 974, type: !64)
!1295 = !DILocation(line: 0, scope: !1289, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 103, column: 23, scope: !1282)
!1297 = !DILocation(line: 976, column: 11, scope: !1289, inlinedAt: !1296)
!1298 = !DILocation(line: 976, column: 10, scope: !1289, inlinedAt: !1296)
!1299 = !DILocation(line: 102, column: 19, scope: !1283)
!1300 = !DILocation(line: 109, column: 17, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1282, file: !198, line: 105, column: 17)
!1302 = !DILocation(line: 89, column: 35, scope: !1267)
!1303 = distinct !{!1303, !1268, !1304, !567}
!1304 = !DILocation(line: 112, column: 5, scope: !1262)
!1305 = !DILocation(line: 0, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1249, file: !198, line: 113, column: 7)
!1307 = !DILocation(line: 117, column: 1, scope: !1249)
!1308 = distinct !DISubprogram(name: "argmatch_exact", scope: !198, file: !198, line: 120, type: !1309, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1311)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!456, !67, !1252}
!1311 = !{!1312, !1313, !1314}
!1312 = !DILocalVariable(name: "arg", arg: 1, scope: !1308, file: !198, line: 120, type: !67)
!1313 = !DILocalVariable(name: "arglist", arg: 2, scope: !1308, file: !198, line: 120, type: !1252)
!1314 = !DILocalVariable(name: "i", scope: !1315, file: !198, line: 123, type: !64)
!1315 = distinct !DILexicalBlock(scope: !1308, file: !198, line: 123, column: 3)
!1316 = !DILocation(line: 0, scope: !1308)
!1317 = !DILocation(line: 0, scope: !1315)
!1318 = !DILocation(line: 123, column: 22, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !198, line: 123, column: 3)
!1320 = !DILocation(line: 123, column: 3, scope: !1315)
!1321 = !DILocalVariable(name: "__s1", arg: 1, scope: !1322, file: !551, line: 1359, type: !67)
!1322 = distinct !DISubprogram(name: "streq", scope: !551, file: !551, line: 1359, type: !552, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1323)
!1323 = !{!1321, !1324}
!1324 = !DILocalVariable(name: "__s2", arg: 2, scope: !1322, file: !551, line: 1359, type: !67)
!1325 = !DILocation(line: 0, scope: !1322, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 125, column: 11, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !198, line: 125, column: 11)
!1328 = distinct !DILexicalBlock(scope: !1319, file: !198, line: 124, column: 5)
!1329 = !DILocation(line: 1361, column: 11, scope: !1322, inlinedAt: !1326)
!1330 = !DILocation(line: 1361, column: 10, scope: !1322, inlinedAt: !1326)
!1331 = !DILocation(line: 125, column: 11, scope: !1328)
!1332 = !DILocation(line: 123, column: 35, scope: !1319)
!1333 = distinct !{!1333, !1320, !1334, !567}
!1334 = !DILocation(line: 127, column: 5, scope: !1315)
!1335 = !DILocation(line: 130, column: 1, scope: !1308)
!1336 = distinct !DISubprogram(name: "argmatch_invalid", scope: !198, file: !198, line: 138, type: !1337, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1339)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{null, !67, !67, !456}
!1339 = !{!1340, !1341, !1342, !1343}
!1340 = !DILocalVariable(name: "context", arg: 1, scope: !1336, file: !198, line: 138, type: !67)
!1341 = !DILocalVariable(name: "value", arg: 2, scope: !1336, file: !198, line: 138, type: !67)
!1342 = !DILocalVariable(name: "problem", arg: 3, scope: !1336, file: !198, line: 138, type: !456)
!1343 = !DILocalVariable(name: "format", scope: !1336, file: !198, line: 140, type: !67)
!1344 = !DILocation(line: 0, scope: !1336)
!1345 = !DILocation(line: 140, column: 33, scope: !1336)
!1346 = !DILocation(line: 140, column: 25, scope: !1336)
!1347 = !DILocation(line: 144, column: 3, scope: !1336)
!1348 = !DILocation(line: 146, column: 1, scope: !1336)
!1349 = distinct !DISubprogram(name: "argmatch_valid", scope: !198, file: !198, line: 153, type: !1350, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1352)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !1252, !52, !64}
!1352 = !{!1353, !1354, !1355, !1356, !1357}
!1353 = !DILocalVariable(name: "arglist", arg: 1, scope: !1349, file: !198, line: 153, type: !1252)
!1354 = !DILocalVariable(name: "vallist", arg: 2, scope: !1349, file: !198, line: 154, type: !52)
!1355 = !DILocalVariable(name: "valsize", arg: 3, scope: !1349, file: !198, line: 154, type: !64)
!1356 = !DILocalVariable(name: "last_val", scope: !1349, file: !198, line: 156, type: !67)
!1357 = !DILocalVariable(name: "i", scope: !1358, file: !198, line: 161, type: !64)
!1358 = distinct !DILexicalBlock(scope: !1349, file: !198, line: 161, column: 3)
!1359 = !DILocation(line: 0, scope: !1349)
!1360 = !DILocation(line: 160, column: 3, scope: !1349)
!1361 = !DILocation(line: 0, scope: !1358)
!1362 = !DILocation(line: 161, column: 22, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1358, file: !198, line: 161, column: 3)
!1364 = !DILocation(line: 161, column: 3, scope: !1358)
!1365 = !DILocation(line: 172, column: 3, scope: !1349)
!1366 = !DILocalVariable(name: "__c", arg: 1, scope: !1367, file: !1368, line: 101, type: !62)
!1367 = distinct !DISubprogram(name: "putc_unlocked", scope: !1368, file: !1368, line: 101, type: !1369, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1405)
!1368 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!62, !62, !1371}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !1373)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !1374)
!1374 = !{!1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1373, file: !107, line: 51, baseType: !62, size: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1373, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1373, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1373, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1373, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1373, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1373, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1373, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1373, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1373, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1373, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1373, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1373, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1373, file: !107, line: 70, baseType: !1389, size: 64, offset: 832)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1373, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1373, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1373, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1373, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1373, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1373, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1373, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1373, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1373, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1373, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1373, file: !107, line: 93, baseType: !1389, size: 64, offset: 1344)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1373, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1373, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1373, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1373, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!1405 = !{!1366, !1406}
!1406 = !DILocalVariable(name: "__stream", arg: 2, scope: !1367, file: !1368, line: 101, type: !1371)
!1407 = !DILocation(line: 0, scope: !1367, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 172, column: 3, scope: !1349)
!1409 = !DILocation(line: 103, column: 10, scope: !1367, inlinedAt: !1408)
!1410 = !{!1411, !511, i64 40}
!1411 = !{!"_IO_FILE", !602, i64 0, !511, i64 8, !511, i64 16, !511, i64 24, !511, i64 32, !511, i64 40, !511, i64 48, !511, i64 56, !511, i64 64, !511, i64 72, !511, i64 80, !511, i64 88, !511, i64 96, !511, i64 104, !602, i64 112, !602, i64 116, !1168, i64 120, !636, i64 128, !512, i64 130, !512, i64 131, !511, i64 136, !1168, i64 144, !511, i64 152, !511, i64 160, !511, i64 168, !511, i64 176, !1168, i64 184, !602, i64 192, !512, i64 196}
!1412 = !{!1411, !511, i64 48}
!1413 = !{!"branch_weights", i32 2000, i32 1}
!1414 = !DILocation(line: 173, column: 1, scope: !1349)
!1415 = !DILocation(line: 162, column: 12, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1363, file: !198, line: 162, column: 9)
!1417 = !DILocation(line: 163, column: 9, scope: !1416)
!1418 = !DILocation(line: 163, column: 63, scope: !1416)
!1419 = !DILocation(line: 163, column: 53, scope: !1416)
!1420 = !DILocation(line: 0, scope: !1289, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 163, column: 13, scope: !1416)
!1422 = !DILocation(line: 976, column: 11, scope: !1289, inlinedAt: !1421)
!1423 = !DILocation(line: 976, column: 10, scope: !1289, inlinedAt: !1421)
!1424 = !DILocation(line: 162, column: 9, scope: !1363)
!1425 = !DILocation(line: 166, column: 53, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1416, file: !198, line: 164, column: 7)
!1427 = !DILocation(line: 165, column: 9, scope: !1426)
!1428 = !DILocation(line: 166, column: 43, scope: !1426)
!1429 = !DILocation(line: 167, column: 7, scope: !1426)
!1430 = !DILocation(line: 170, column: 9, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1416, file: !198, line: 169, column: 7)
!1432 = !DILocation(line: 161, column: 35, scope: !1363)
!1433 = distinct !{!1433, !1364, !1434, !567}
!1434 = !DILocation(line: 171, column: 7, scope: !1358)
!1435 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !198, file: !198, line: 182, type: !1436, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1438)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!456, !67, !67, !1252, !52, !64, !202, !73}
!1438 = !{!1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446}
!1439 = !DILocalVariable(name: "context", arg: 1, scope: !1435, file: !198, line: 182, type: !67)
!1440 = !DILocalVariable(name: "arg", arg: 2, scope: !1435, file: !198, line: 183, type: !67)
!1441 = !DILocalVariable(name: "arglist", arg: 3, scope: !1435, file: !198, line: 183, type: !1252)
!1442 = !DILocalVariable(name: "vallist", arg: 4, scope: !1435, file: !198, line: 184, type: !52)
!1443 = !DILocalVariable(name: "valsize", arg: 5, scope: !1435, file: !198, line: 184, type: !64)
!1444 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1435, file: !198, line: 185, type: !202)
!1445 = !DILocalVariable(name: "allow_abbreviation", arg: 7, scope: !1435, file: !198, line: 186, type: !73)
!1446 = !DILocalVariable(name: "res", scope: !1435, file: !198, line: 188, type: !456)
!1447 = !DILocation(line: 0, scope: !1435)
!1448 = !DILocation(line: 189, column: 7, scope: !1435)
!1449 = !DILocation(line: 0, scope: !1249, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 190, column: 11, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1435, file: !198, line: 189, column: 7)
!1452 = !DILocation(line: 83, column: 19, scope: !1249, inlinedAt: !1450)
!1453 = !DILocation(line: 0, scope: !1262, inlinedAt: !1450)
!1454 = !DILocation(line: 89, column: 22, scope: !1267, inlinedAt: !1450)
!1455 = !DILocation(line: 89, column: 3, scope: !1262, inlinedAt: !1450)
!1456 = !DILocation(line: 91, column: 12, scope: !1270, inlinedAt: !1450)
!1457 = !DILocation(line: 91, column: 11, scope: !1271, inlinedAt: !1450)
!1458 = !DILocation(line: 93, column: 15, scope: !1274, inlinedAt: !1450)
!1459 = !DILocation(line: 93, column: 35, scope: !1274, inlinedAt: !1450)
!1460 = !DILocation(line: 93, column: 15, scope: !1275, inlinedAt: !1450)
!1461 = !DILocation(line: 96, column: 29, scope: !1279, inlinedAt: !1450)
!1462 = !DILocation(line: 96, column: 20, scope: !1274, inlinedAt: !1450)
!1463 = !DILocation(line: 103, column: 19, scope: !1282, inlinedAt: !1450)
!1464 = !DILocation(line: 103, column: 63, scope: !1282, inlinedAt: !1450)
!1465 = !DILocation(line: 103, column: 53, scope: !1282, inlinedAt: !1450)
!1466 = !DILocation(line: 104, column: 63, scope: !1282, inlinedAt: !1450)
!1467 = !DILocation(line: 104, column: 53, scope: !1282, inlinedAt: !1450)
!1468 = !DILocation(line: 0, scope: !1289, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 103, column: 23, scope: !1282, inlinedAt: !1450)
!1470 = !DILocation(line: 976, column: 11, scope: !1289, inlinedAt: !1469)
!1471 = !DILocation(line: 976, column: 10, scope: !1289, inlinedAt: !1469)
!1472 = !DILocation(line: 102, column: 19, scope: !1283, inlinedAt: !1450)
!1473 = !DILocation(line: 89, column: 35, scope: !1267, inlinedAt: !1450)
!1474 = distinct !{!1474, !1455, !1475, !567}
!1475 = !DILocation(line: 112, column: 5, scope: !1262, inlinedAt: !1450)
!1476 = !DILocation(line: 0, scope: !1306, inlinedAt: !1450)
!1477 = !DILocation(line: 0, scope: !1308, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 192, column: 11, scope: !1451)
!1479 = !DILocation(line: 0, scope: !1315, inlinedAt: !1478)
!1480 = !DILocation(line: 123, column: 22, scope: !1319, inlinedAt: !1478)
!1481 = !DILocation(line: 123, column: 3, scope: !1315, inlinedAt: !1478)
!1482 = !DILocation(line: 0, scope: !1322, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 125, column: 11, scope: !1327, inlinedAt: !1478)
!1484 = !DILocation(line: 1361, column: 11, scope: !1322, inlinedAt: !1483)
!1485 = !DILocation(line: 1361, column: 10, scope: !1322, inlinedAt: !1483)
!1486 = !DILocation(line: 125, column: 11, scope: !1328, inlinedAt: !1478)
!1487 = !DILocation(line: 123, column: 35, scope: !1319, inlinedAt: !1478)
!1488 = distinct !{!1488, !1481, !1489, !567}
!1489 = !DILocation(line: 127, column: 5, scope: !1315, inlinedAt: !1478)
!1490 = !DILocation(line: 0, scope: !1451)
!1491 = !DILocation(line: 194, column: 11, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1435, file: !198, line: 194, column: 7)
!1493 = !DILocation(line: 194, column: 7, scope: !1435)
!1494 = !DILocation(line: 0, scope: !1336, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 199, column: 3, scope: !1435)
!1496 = !DILocation(line: 140, column: 33, scope: !1336, inlinedAt: !1495)
!1497 = !DILocation(line: 140, column: 25, scope: !1336, inlinedAt: !1495)
!1498 = !DILocation(line: 144, column: 3, scope: !1336, inlinedAt: !1495)
!1499 = !DILocation(line: 200, column: 3, scope: !1435)
!1500 = !DILocation(line: 201, column: 3, scope: !1435)
!1501 = !DILocation(line: 203, column: 3, scope: !1435)
!1502 = !DILocation(line: 204, column: 1, scope: !1435)
!1503 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !198, file: !198, line: 209, type: !1504, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1506)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!67, !52, !1252, !52, !64}
!1506 = !{!1507, !1508, !1509, !1510, !1511}
!1507 = !DILocalVariable(name: "value", arg: 1, scope: !1503, file: !198, line: 209, type: !52)
!1508 = !DILocalVariable(name: "arglist", arg: 2, scope: !1503, file: !198, line: 210, type: !1252)
!1509 = !DILocalVariable(name: "vallist", arg: 3, scope: !1503, file: !198, line: 211, type: !52)
!1510 = !DILocalVariable(name: "valsize", arg: 4, scope: !1503, file: !198, line: 211, type: !64)
!1511 = !DILocalVariable(name: "i", scope: !1512, file: !198, line: 213, type: !64)
!1512 = distinct !DILexicalBlock(scope: !1503, file: !198, line: 213, column: 3)
!1513 = !DILocation(line: 0, scope: !1503)
!1514 = !DILocation(line: 0, scope: !1512)
!1515 = !DILocation(line: 213, column: 22, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !198, line: 213, column: 3)
!1517 = !DILocation(line: 213, column: 3, scope: !1512)
!1518 = !DILocation(line: 0, scope: !1289, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 214, column: 9, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !198, line: 214, column: 9)
!1521 = !DILocation(line: 976, column: 11, scope: !1289, inlinedAt: !1519)
!1522 = !DILocation(line: 976, column: 10, scope: !1289, inlinedAt: !1519)
!1523 = !DILocation(line: 214, column: 9, scope: !1516)
!1524 = distinct !{!1524, !1517, !1525, !567}
!1525 = !DILocation(line: 215, column: 23, scope: !1512)
!1526 = !DILocation(line: 214, column: 56, scope: !1520)
!1527 = !DILocation(line: 214, column: 46, scope: !1520)
!1528 = !DILocation(line: 213, column: 35, scope: !1516)
!1529 = !DILocation(line: 217, column: 1, scope: !1503)
!1530 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !210, file: !210, line: 50, type: !526, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !1531)
!1531 = !{!1532}
!1532 = !DILocalVariable(name: "file", arg: 1, scope: !1530, file: !210, line: 50, type: !67)
!1533 = !DILocation(line: 0, scope: !1530)
!1534 = !DILocation(line: 52, column: 13, scope: !1530)
!1535 = !DILocation(line: 53, column: 1, scope: !1530)
!1536 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !210, file: !210, line: 87, type: !1537, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !1539)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !73}
!1539 = !{!1540}
!1540 = !DILocalVariable(name: "ignore", arg: 1, scope: !1536, file: !210, line: 87, type: !73)
!1541 = !DILocation(line: 0, scope: !1536)
!1542 = !DILocation(line: 89, column: 16, scope: !1536)
!1543 = !DILocation(line: 90, column: 1, scope: !1536)
!1544 = distinct !DISubprogram(name: "close_stdout", scope: !210, file: !210, line: 116, type: !205, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !1545)
!1545 = !{!1546}
!1546 = !DILocalVariable(name: "write_error", scope: !1547, file: !210, line: 121, type: !67)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !210, line: 120, column: 5)
!1548 = distinct !DILexicalBlock(scope: !1544, file: !210, line: 118, column: 7)
!1549 = !DILocation(line: 118, column: 21, scope: !1548)
!1550 = !DILocation(line: 118, column: 7, scope: !1548)
!1551 = !DILocation(line: 118, column: 29, scope: !1548)
!1552 = !DILocation(line: 119, column: 7, scope: !1548)
!1553 = !DILocation(line: 119, column: 12, scope: !1548)
!1554 = !DILocation(line: 119, column: 25, scope: !1548)
!1555 = !DILocation(line: 119, column: 28, scope: !1548)
!1556 = !DILocation(line: 119, column: 34, scope: !1548)
!1557 = !DILocation(line: 118, column: 7, scope: !1544)
!1558 = !DILocation(line: 121, column: 33, scope: !1547)
!1559 = !DILocation(line: 0, scope: !1547)
!1560 = !DILocation(line: 122, column: 11, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1547, file: !210, line: 122, column: 11)
!1562 = !DILocation(line: 0, scope: !1561)
!1563 = !DILocation(line: 122, column: 11, scope: !1547)
!1564 = !DILocation(line: 123, column: 9, scope: !1561)
!1565 = !DILocation(line: 126, column: 9, scope: !1561)
!1566 = !DILocation(line: 128, column: 14, scope: !1547)
!1567 = !DILocation(line: 128, column: 7, scope: !1547)
!1568 = !DILocation(line: 133, column: 42, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1544, file: !210, line: 133, column: 7)
!1570 = !DILocation(line: 133, column: 28, scope: !1569)
!1571 = !DILocation(line: 133, column: 50, scope: !1569)
!1572 = !DILocation(line: 133, column: 7, scope: !1544)
!1573 = !DILocation(line: 134, column: 12, scope: !1569)
!1574 = !DILocation(line: 134, column: 5, scope: !1569)
!1575 = !DILocation(line: 135, column: 1, scope: !1544)
!1576 = distinct !DISubprogram(name: "verror", scope: !217, file: !217, line: 251, type: !1577, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1579)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{null, !62, !62, !67, !225}
!1579 = !{!1580, !1581, !1582, !1583}
!1580 = !DILocalVariable(name: "status", arg: 1, scope: !1576, file: !217, line: 251, type: !62)
!1581 = !DILocalVariable(name: "errnum", arg: 2, scope: !1576, file: !217, line: 251, type: !62)
!1582 = !DILocalVariable(name: "message", arg: 3, scope: !1576, file: !217, line: 251, type: !67)
!1583 = !DILocalVariable(name: "args", arg: 4, scope: !1576, file: !217, line: 251, type: !225)
!1584 = !DILocation(line: 0, scope: !1576)
!1585 = !DILocation(line: 251, column: 1, scope: !1576)
!1586 = !DILocation(line: 261, column: 3, scope: !1576)
!1587 = !DILocation(line: 265, column: 7, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1576, file: !217, line: 265, column: 7)
!1589 = !DILocation(line: 265, column: 7, scope: !1576)
!1590 = !DILocation(line: 266, column: 5, scope: !1588)
!1591 = !DILocation(line: 272, column: 7, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1588, file: !217, line: 268, column: 5)
!1593 = !DILocation(line: 276, column: 3, scope: !1576)
!1594 = !{i64 0, i64 8, !510, i64 8, i64 8, !510, i64 16, i64 8, !510, i64 24, i64 4, !601, i64 28, i64 4, !601}
!1595 = !DILocation(line: 282, column: 1, scope: !1576)
!1596 = distinct !DISubprogram(name: "flush_stdout", scope: !217, file: !217, line: 163, type: !205, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1597)
!1597 = !{!1598}
!1598 = !DILocalVariable(name: "stdout_fd", scope: !1596, file: !217, line: 166, type: !62)
!1599 = !DILocation(line: 0, scope: !1596)
!1600 = !DILocalVariable(name: "fd", arg: 1, scope: !1601, file: !217, line: 145, type: !62)
!1601 = distinct !DISubprogram(name: "is_open", scope: !217, file: !217, line: 145, type: !1036, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1602)
!1602 = !{!1600}
!1603 = !DILocation(line: 0, scope: !1601, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 182, column: 25, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1596, file: !217, line: 182, column: 7)
!1606 = !DILocation(line: 157, column: 15, scope: !1601, inlinedAt: !1604)
!1607 = !DILocation(line: 182, column: 25, scope: !1605)
!1608 = !DILocation(line: 182, column: 7, scope: !1596)
!1609 = !DILocation(line: 184, column: 5, scope: !1605)
!1610 = !DILocation(line: 185, column: 1, scope: !1596)
!1611 = distinct !DISubprogram(name: "error_tail", scope: !217, file: !217, line: 219, type: !1577, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1612)
!1612 = !{!1613, !1614, !1615, !1616}
!1613 = !DILocalVariable(name: "status", arg: 1, scope: !1611, file: !217, line: 219, type: !62)
!1614 = !DILocalVariable(name: "errnum", arg: 2, scope: !1611, file: !217, line: 219, type: !62)
!1615 = !DILocalVariable(name: "message", arg: 3, scope: !1611, file: !217, line: 219, type: !67)
!1616 = !DILocalVariable(name: "args", arg: 4, scope: !1611, file: !217, line: 219, type: !225)
!1617 = !DILocation(line: 0, scope: !1611)
!1618 = !DILocation(line: 219, column: 1, scope: !1611)
!1619 = !DILocation(line: 229, column: 13, scope: !1611)
!1620 = !DILocation(line: 229, column: 3, scope: !1611)
!1621 = !DILocalVariable(name: "__stream", arg: 1, scope: !1622, file: !1623, line: 132, type: !1626)
!1622 = distinct !DISubprogram(name: "vfprintf", scope: !1623, file: !1623, line: 132, type: !1624, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1661)
!1623 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!62, !1626, !597, !227}
!1626 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1627)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1629, file: !107, line: 51, baseType: !62, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1629, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1629, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1629, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1629, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1629, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1629, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1629, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1629, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1629, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1629, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1629, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1629, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1629, file: !107, line: 70, baseType: !1645, size: 64, offset: 832)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1629, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1629, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1629, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1629, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1629, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1629, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1629, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1629, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1629, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1629, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1629, file: !107, line: 93, baseType: !1645, size: 64, offset: 1344)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1629, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1629, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1629, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1629, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!1661 = !{!1621, !1662, !1663}
!1662 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1622, file: !1623, line: 133, type: !597)
!1663 = !DILocalVariable(name: "__ap", arg: 3, scope: !1622, file: !1623, line: 133, type: !227)
!1664 = !DILocation(line: 0, scope: !1622, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 229, column: 3, scope: !1611)
!1666 = !DILocation(line: 135, column: 10, scope: !1622, inlinedAt: !1665)
!1667 = !{!1668, !1670}
!1668 = distinct !{!1668, !1669, !"vfprintf.inline: argument 0"}
!1669 = distinct !{!1669, !"vfprintf.inline"}
!1670 = distinct !{!1670, !1669, !"vfprintf.inline: argument 1"}
!1671 = !DILocation(line: 232, column: 3, scope: !1611)
!1672 = !DILocation(line: 233, column: 7, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1611, file: !217, line: 233, column: 7)
!1674 = !DILocation(line: 233, column: 7, scope: !1611)
!1675 = !DILocalVariable(name: "errnum", arg: 1, scope: !1676, file: !217, line: 188, type: !62)
!1676 = distinct !DISubprogram(name: "print_errno_message", scope: !217, file: !217, line: 188, type: !60, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1677)
!1677 = !{!1675, !1678, !1679}
!1678 = !DILocalVariable(name: "s", scope: !1676, file: !217, line: 190, type: !67)
!1679 = !DILocalVariable(name: "errbuf", scope: !1676, file: !217, line: 193, type: !1680)
!1680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8192, elements: !1681)
!1681 = !{!1682}
!1682 = !DISubrange(count: 1024)
!1683 = !DILocation(line: 0, scope: !1676, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 234, column: 5, scope: !1673)
!1685 = !DILocation(line: 193, column: 3, scope: !1676, inlinedAt: !1684)
!1686 = !DILocation(line: 193, column: 8, scope: !1676, inlinedAt: !1684)
!1687 = !DILocation(line: 195, column: 7, scope: !1676, inlinedAt: !1684)
!1688 = !DILocation(line: 207, column: 9, scope: !1689, inlinedAt: !1684)
!1689 = distinct !DILexicalBlock(scope: !1676, file: !217, line: 207, column: 7)
!1690 = !DILocation(line: 207, column: 7, scope: !1676, inlinedAt: !1684)
!1691 = !DILocation(line: 208, column: 9, scope: !1689, inlinedAt: !1684)
!1692 = !DILocation(line: 208, column: 5, scope: !1689, inlinedAt: !1684)
!1693 = !DILocation(line: 214, column: 3, scope: !1676, inlinedAt: !1684)
!1694 = !DILocation(line: 216, column: 1, scope: !1676, inlinedAt: !1684)
!1695 = !DILocation(line: 234, column: 5, scope: !1673)
!1696 = !DILocation(line: 238, column: 3, scope: !1611)
!1697 = !DILocalVariable(name: "__c", arg: 1, scope: !1698, file: !1368, line: 101, type: !62)
!1698 = distinct !DISubprogram(name: "putc_unlocked", scope: !1368, file: !1368, line: 101, type: !1699, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1701)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!62, !62, !1627}
!1701 = !{!1697, !1702}
!1702 = !DILocalVariable(name: "__stream", arg: 2, scope: !1698, file: !1368, line: 101, type: !1627)
!1703 = !DILocation(line: 0, scope: !1698, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 238, column: 3, scope: !1611)
!1705 = !DILocation(line: 103, column: 10, scope: !1698, inlinedAt: !1704)
!1706 = !DILocation(line: 240, column: 3, scope: !1611)
!1707 = !DILocation(line: 241, column: 7, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1611, file: !217, line: 241, column: 7)
!1709 = !DILocation(line: 241, column: 7, scope: !1611)
!1710 = !DILocation(line: 242, column: 5, scope: !1708)
!1711 = !DILocation(line: 243, column: 1, scope: !1611)
!1712 = !DISubprogram(name: "strerror_r", scope: !1713, file: !1713, line: 444, type: !1714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1713 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!54, !62, !54, !64}
!1716 = !DISubprogram(name: "fflush_unlocked", scope: !226, file: !226, line: 239, type: !1717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!62, !1627}
!1719 = !DISubprogram(name: "fcntl", scope: !1720, file: !1720, line: 149, type: !1721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1720 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!62, !62, !62, null}
!1723 = distinct !DISubprogram(name: "error", scope: !217, file: !217, line: 285, type: !1724, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1726)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !62, !62, !67, null}
!1726 = !{!1727, !1728, !1729, !1730}
!1727 = !DILocalVariable(name: "status", arg: 1, scope: !1723, file: !217, line: 285, type: !62)
!1728 = !DILocalVariable(name: "errnum", arg: 2, scope: !1723, file: !217, line: 285, type: !62)
!1729 = !DILocalVariable(name: "message", arg: 3, scope: !1723, file: !217, line: 285, type: !67)
!1730 = !DILocalVariable(name: "ap", scope: !1723, file: !217, line: 287, type: !225)
!1731 = !DILocation(line: 0, scope: !1723)
!1732 = !DILocation(line: 287, column: 3, scope: !1723)
!1733 = !DILocation(line: 287, column: 11, scope: !1723)
!1734 = !DILocation(line: 288, column: 3, scope: !1723)
!1735 = !DILocation(line: 289, column: 3, scope: !1723)
!1736 = !DILocation(line: 290, column: 3, scope: !1723)
!1737 = !DILocation(line: 291, column: 1, scope: !1723)
!1738 = !DILocation(line: 0, scope: !222)
!1739 = !DILocation(line: 298, column: 1, scope: !222)
!1740 = !DILocation(line: 302, column: 7, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !222, file: !217, line: 302, column: 7)
!1742 = !DILocation(line: 302, column: 7, scope: !222)
!1743 = !DILocation(line: 307, column: 11, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !217, line: 307, column: 11)
!1745 = distinct !DILexicalBlock(scope: !1741, file: !217, line: 303, column: 5)
!1746 = !DILocation(line: 307, column: 27, scope: !1744)
!1747 = !DILocation(line: 308, column: 11, scope: !1744)
!1748 = !DILocation(line: 308, column: 28, scope: !1744)
!1749 = !DILocation(line: 308, column: 25, scope: !1744)
!1750 = !DILocation(line: 309, column: 15, scope: !1744)
!1751 = !DILocation(line: 309, column: 33, scope: !1744)
!1752 = !DILocation(line: 310, column: 19, scope: !1744)
!1753 = !DILocation(line: 311, column: 22, scope: !1744)
!1754 = !DILocation(line: 311, column: 56, scope: !1744)
!1755 = !DILocation(line: 307, column: 11, scope: !1745)
!1756 = !DILocation(line: 316, column: 21, scope: !1745)
!1757 = !DILocation(line: 317, column: 23, scope: !1745)
!1758 = !DILocation(line: 318, column: 5, scope: !1745)
!1759 = !DILocation(line: 327, column: 3, scope: !222)
!1760 = !DILocation(line: 331, column: 7, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !222, file: !217, line: 331, column: 7)
!1762 = !DILocation(line: 331, column: 7, scope: !222)
!1763 = !DILocation(line: 332, column: 5, scope: !1761)
!1764 = !DILocation(line: 338, column: 7, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1761, file: !217, line: 334, column: 5)
!1766 = !DILocation(line: 346, column: 3, scope: !222)
!1767 = !DILocation(line: 350, column: 3, scope: !222)
!1768 = !DILocation(line: 356, column: 1, scope: !222)
!1769 = distinct !DISubprogram(name: "error_at_line", scope: !217, file: !217, line: 359, type: !1770, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1772)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !62, !62, !67, !6, !67, null}
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1778}
!1773 = !DILocalVariable(name: "status", arg: 1, scope: !1769, file: !217, line: 359, type: !62)
!1774 = !DILocalVariable(name: "errnum", arg: 2, scope: !1769, file: !217, line: 359, type: !62)
!1775 = !DILocalVariable(name: "file_name", arg: 3, scope: !1769, file: !217, line: 359, type: !67)
!1776 = !DILocalVariable(name: "line_number", arg: 4, scope: !1769, file: !217, line: 360, type: !6)
!1777 = !DILocalVariable(name: "message", arg: 5, scope: !1769, file: !217, line: 360, type: !67)
!1778 = !DILocalVariable(name: "ap", scope: !1769, file: !217, line: 362, type: !225)
!1779 = !DILocation(line: 0, scope: !1769)
!1780 = !DILocation(line: 362, column: 3, scope: !1769)
!1781 = !DILocation(line: 362, column: 11, scope: !1769)
!1782 = !DILocation(line: 363, column: 3, scope: !1769)
!1783 = !DILocation(line: 364, column: 3, scope: !1769)
!1784 = !DILocation(line: 366, column: 3, scope: !1769)
!1785 = !DILocation(line: 367, column: 1, scope: !1769)
!1786 = distinct !DISubprogram(name: "fdadvise", scope: !417, file: !417, line: 25, type: !1787, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !1791)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{null, !62, !1789, !1789, !1790}
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !226, line: 63, baseType: !129)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !29, line: 51, baseType: !28)
!1791 = !{!1792, !1793, !1794, !1795}
!1792 = !DILocalVariable(name: "fd", arg: 1, scope: !1786, file: !417, line: 25, type: !62)
!1793 = !DILocalVariable(name: "offset", arg: 2, scope: !1786, file: !417, line: 25, type: !1789)
!1794 = !DILocalVariable(name: "len", arg: 3, scope: !1786, file: !417, line: 25, type: !1789)
!1795 = !DILocalVariable(name: "advice", arg: 4, scope: !1786, file: !417, line: 25, type: !1790)
!1796 = !DILocation(line: 0, scope: !1786)
!1797 = !DILocation(line: 28, column: 3, scope: !1786)
!1798 = !DILocation(line: 30, column: 1, scope: !1786)
!1799 = !DISubprogram(name: "posix_fadvise", scope: !1720, file: !1720, line: 273, type: !1800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!62, !62, !1789, !1789, !62}
!1802 = distinct !DISubprogram(name: "fadvise", scope: !417, file: !417, line: 33, type: !1803, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !1839)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{null, !1805, !1790}
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !1807)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1807, file: !107, line: 51, baseType: !62, size: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1807, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1807, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1807, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1807, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1807, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1807, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1807, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1807, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1807, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1807, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1807, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1807, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1807, file: !107, line: 70, baseType: !1823, size: 64, offset: 832)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1807, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1807, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1807, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1807, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1807, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1807, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1807, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1807, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1807, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1807, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1807, file: !107, line: 93, baseType: !1823, size: 64, offset: 1344)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1807, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1807, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1807, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1807, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!1839 = !{!1840, !1841}
!1840 = !DILocalVariable(name: "fp", arg: 1, scope: !1802, file: !417, line: 33, type: !1805)
!1841 = !DILocalVariable(name: "advice", arg: 2, scope: !1802, file: !417, line: 33, type: !1790)
!1842 = !DILocation(line: 0, scope: !1802)
!1843 = !DILocation(line: 35, column: 7, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1802, file: !417, line: 35, column: 7)
!1845 = !DILocation(line: 35, column: 7, scope: !1802)
!1846 = !DILocation(line: 36, column: 15, scope: !1844)
!1847 = !DILocation(line: 0, scope: !1786, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 36, column: 5, scope: !1844)
!1849 = !DILocation(line: 28, column: 3, scope: !1786, inlinedAt: !1848)
!1850 = !DILocation(line: 36, column: 5, scope: !1844)
!1851 = !DILocation(line: 37, column: 1, scope: !1802)
!1852 = !DISubprogram(name: "fileno", scope: !226, file: !226, line: 809, type: !1853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!62, !1805}
!1855 = distinct !DISubprogram(name: "open_safer", scope: !420, file: !420, line: 29, type: !1856, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !1858)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!62, !67, !62, null}
!1858 = !{!1859, !1860, !1861, !1863}
!1859 = !DILocalVariable(name: "file", arg: 1, scope: !1855, file: !420, line: 29, type: !67)
!1860 = !DILocalVariable(name: "flags", arg: 2, scope: !1855, file: !420, line: 29, type: !62)
!1861 = !DILocalVariable(name: "mode", scope: !1855, file: !420, line: 31, type: !1862)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !788, line: 69, baseType: !1131)
!1863 = !DILocalVariable(name: "ap", scope: !1864, file: !420, line: 35, type: !1866)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !420, line: 34, column: 5)
!1865 = distinct !DILexicalBlock(scope: !1855, file: !420, line: 33, column: 7)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !228, line: 14, baseType: !1867)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1868, baseType: !1869)
!1868 = !DIFile(filename: "lib/open-safer.c", directory: "/src")
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !232, size: 256, elements: !1870)
!1870 = !{!1871, !1872, !1873, !1874, !1875}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1869, file: !1868, line: 35, baseType: !56, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1869, file: !1868, line: 35, baseType: !56, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1869, file: !1868, line: 35, baseType: !56, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1869, file: !1868, line: 35, baseType: !62, size: 32, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1869, file: !1868, line: 35, baseType: !62, size: 32, offset: 224)
!1876 = !DILocation(line: 0, scope: !1855)
!1877 = !DILocation(line: 33, column: 13, scope: !1865)
!1878 = !DILocation(line: 33, column: 7, scope: !1855)
!1879 = !DILocation(line: 35, column: 7, scope: !1864)
!1880 = !DILocation(line: 35, column: 15, scope: !1864)
!1881 = !DILocation(line: 36, column: 7, scope: !1864)
!1882 = !DILocation(line: 40, column: 14, scope: !1864)
!1883 = !DILocation(line: 42, column: 7, scope: !1864)
!1884 = !DILocation(line: 43, column: 5, scope: !1865)
!1885 = !DILocation(line: 43, column: 5, scope: !1864)
!1886 = !DILocation(line: 45, column: 20, scope: !1855)
!1887 = !DILocation(line: 45, column: 10, scope: !1855)
!1888 = !DILocation(line: 45, column: 3, scope: !1855)
!1889 = !DISubprogram(name: "open", scope: !1720, file: !1720, line: 181, type: !1856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!1890 = distinct !DISubprogram(name: "getprogname", scope: !422, file: !422, line: 54, type: !1891, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !593)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!67}
!1893 = !DILocation(line: 58, column: 10, scope: !1890)
!1894 = !DILocation(line: 58, column: 3, scope: !1890)
!1895 = distinct !DISubprogram(name: "isapipe", scope: !424, file: !424, line: 72, type: !1036, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !1896)
!1896 = !{!1897, !1898, !1900, !1901, !1924}
!1897 = !DILocalVariable(name: "fd", arg: 1, scope: !1895, file: !424, line: 72, type: !62)
!1898 = !DILocalVariable(name: "pipe_link_count_max", scope: !1895, file: !424, line: 74, type: !1899)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !788, line: 74, baseType: !1133)
!1900 = !DILocalVariable(name: "check_for_fifo", scope: !1895, file: !424, line: 75, type: !73)
!1901 = !DILocalVariable(name: "st", scope: !1895, file: !424, line: 77, type: !1902)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1124, line: 44, size: 1024, elements: !1903)
!1903 = !{!1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1921, !1922, !1923}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1902, file: !1124, line: 46, baseType: !1127, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1902, file: !1124, line: 47, baseType: !1129, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1902, file: !1124, line: 48, baseType: !1131, size: 32, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1902, file: !1124, line: 49, baseType: !1133, size: 32, offset: 160)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1902, file: !1124, line: 50, baseType: !1135, size: 32, offset: 192)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1902, file: !1124, line: 51, baseType: !1137, size: 32, offset: 224)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1902, file: !1124, line: 52, baseType: !1127, size: 64, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1902, file: !1124, line: 53, baseType: !1127, size: 64, offset: 320)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1902, file: !1124, line: 54, baseType: !129, size: 64, offset: 384)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1902, file: !1124, line: 55, baseType: !1142, size: 32, offset: 448)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1902, file: !1124, line: 56, baseType: !62, size: 32, offset: 480)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1902, file: !1124, line: 57, baseType: !1145, size: 64, offset: 512)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1902, file: !1124, line: 65, baseType: !1917, size: 128, offset: 576)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1148, line: 11, size: 128, elements: !1918)
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1917, file: !1148, line: 16, baseType: !1151, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1917, file: !1148, line: 21, baseType: !1153, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1902, file: !1124, line: 66, baseType: !1917, size: 128, offset: 704)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1902, file: !1124, line: 67, baseType: !1917, size: 128, offset: 832)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1902, file: !1124, line: 79, baseType: !1157, size: 64, offset: 960)
!1924 = !DILocalVariable(name: "fstat_result", scope: !1895, file: !424, line: 78, type: !62)
!1925 = !DILocation(line: 0, scope: !1895)
!1926 = !DILocation(line: 77, column: 3, scope: !1895)
!1927 = !DILocation(line: 77, column: 15, scope: !1895)
!1928 = !DILocation(line: 78, column: 22, scope: !1895)
!1929 = !DILocation(line: 79, column: 20, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1895, file: !424, line: 79, column: 7)
!1931 = !DILocation(line: 79, column: 7, scope: !1895)
!1932 = !DILocation(line: 118, column: 9, scope: !1895)
!1933 = !{!1167, !602, i64 20}
!1934 = !DILocation(line: 118, column: 18, scope: !1895)
!1935 = !DILocation(line: 119, column: 6, scope: !1895)
!1936 = !DILocation(line: 117, column: 3, scope: !1895)
!1937 = !DILocation(line: 120, column: 1, scope: !1895)
!1938 = distinct !DISubprogram(name: "set_program_name", scope: !255, file: !255, line: 37, type: !526, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1939)
!1939 = !{!1940, !1941, !1942}
!1940 = !DILocalVariable(name: "argv0", arg: 1, scope: !1938, file: !255, line: 37, type: !67)
!1941 = !DILocalVariable(name: "slash", scope: !1938, file: !255, line: 44, type: !67)
!1942 = !DILocalVariable(name: "base", scope: !1938, file: !255, line: 45, type: !67)
!1943 = !DILocation(line: 0, scope: !1938)
!1944 = !DILocation(line: 44, column: 23, scope: !1938)
!1945 = !DILocation(line: 45, column: 22, scope: !1938)
!1946 = !DILocation(line: 46, column: 17, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1938, file: !255, line: 46, column: 7)
!1948 = !DILocation(line: 46, column: 9, scope: !1947)
!1949 = !DILocation(line: 46, column: 25, scope: !1947)
!1950 = !DILocation(line: 46, column: 40, scope: !1947)
!1951 = !DILocalVariable(name: "__s1", arg: 1, scope: !1952, file: !551, line: 974, type: !52)
!1952 = distinct !DISubprogram(name: "memeq", scope: !551, file: !551, line: 974, type: !1290, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1953)
!1953 = !{!1951, !1954, !1955}
!1954 = !DILocalVariable(name: "__s2", arg: 2, scope: !1952, file: !551, line: 974, type: !52)
!1955 = !DILocalVariable(name: "__n", arg: 3, scope: !1952, file: !551, line: 974, type: !64)
!1956 = !DILocation(line: 0, scope: !1952, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 46, column: 28, scope: !1947)
!1958 = !DILocation(line: 976, column: 11, scope: !1952, inlinedAt: !1957)
!1959 = !DILocation(line: 976, column: 10, scope: !1952, inlinedAt: !1957)
!1960 = !DILocation(line: 46, column: 7, scope: !1938)
!1961 = !DILocation(line: 49, column: 11, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !255, line: 49, column: 11)
!1963 = distinct !DILexicalBlock(scope: !1947, file: !255, line: 47, column: 5)
!1964 = !DILocation(line: 49, column: 36, scope: !1962)
!1965 = !DILocation(line: 49, column: 11, scope: !1963)
!1966 = !DILocation(line: 65, column: 16, scope: !1938)
!1967 = !DILocation(line: 71, column: 27, scope: !1938)
!1968 = !DILocation(line: 74, column: 33, scope: !1938)
!1969 = !DILocation(line: 76, column: 1, scope: !1938)
!1970 = !DILocation(line: 0, scope: !260)
!1971 = !DILocation(line: 40, column: 29, scope: !260)
!1972 = !DILocation(line: 41, column: 19, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !260, file: !261, line: 41, column: 7)
!1974 = !DILocation(line: 41, column: 7, scope: !260)
!1975 = !DILocation(line: 47, column: 3, scope: !260)
!1976 = !DILocation(line: 48, column: 3, scope: !260)
!1977 = !DILocation(line: 48, column: 13, scope: !260)
!1978 = !DILocalVariable(name: "ps", arg: 1, scope: !1979, file: !1980, line: 1135, type: !1983)
!1979 = distinct !DISubprogram(name: "mbszero", scope: !1980, file: !1980, line: 1135, type: !1981, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !1984)
!1980 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !1983}
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1984 = !{!1978}
!1985 = !DILocation(line: 0, scope: !1979, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 48, column: 18, scope: !260)
!1987 = !DILocalVariable(name: "__dest", arg: 1, scope: !1988, file: !1989, line: 57, type: !56)
!1988 = distinct !DISubprogram(name: "memset", scope: !1989, file: !1989, line: 57, type: !1990, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !264, retainedNodes: !1992)
!1989 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!56, !56, !62, !64}
!1992 = !{!1987, !1993, !1994}
!1993 = !DILocalVariable(name: "__ch", arg: 2, scope: !1988, file: !1989, line: 57, type: !62)
!1994 = !DILocalVariable(name: "__len", arg: 3, scope: !1988, file: !1989, line: 57, type: !64)
!1995 = !DILocation(line: 0, scope: !1988, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 1137, column: 3, scope: !1979, inlinedAt: !1986)
!1997 = !DILocation(line: 59, column: 10, scope: !1988, inlinedAt: !1996)
!1998 = !DILocation(line: 49, column: 7, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !260, file: !261, line: 49, column: 7)
!2000 = !DILocation(line: 49, column: 39, scope: !1999)
!2001 = !DILocation(line: 49, column: 44, scope: !1999)
!2002 = !DILocation(line: 54, column: 1, scope: !260)
!2003 = !DISubprogram(name: "mbrtoc32", scope: !272, file: !272, line: 57, type: !2004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!64, !2006, !597, !64, !2008}
!2006 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2007)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1983)
!2009 = distinct !DISubprogram(name: "clone_quoting_options", scope: !295, file: !295, line: 113, type: !2010, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2013)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!2012, !2012}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!2013 = !{!2014, !2015, !2016}
!2014 = !DILocalVariable(name: "o", arg: 1, scope: !2009, file: !295, line: 113, type: !2012)
!2015 = !DILocalVariable(name: "saved_errno", scope: !2009, file: !295, line: 115, type: !62)
!2016 = !DILocalVariable(name: "p", scope: !2009, file: !295, line: 116, type: !2012)
!2017 = !DILocation(line: 0, scope: !2009)
!2018 = !DILocation(line: 115, column: 21, scope: !2009)
!2019 = !DILocation(line: 116, column: 40, scope: !2009)
!2020 = !DILocation(line: 116, column: 31, scope: !2009)
!2021 = !DILocation(line: 118, column: 9, scope: !2009)
!2022 = !DILocation(line: 119, column: 3, scope: !2009)
!2023 = distinct !DISubprogram(name: "get_quoting_style", scope: !295, file: !295, line: 124, type: !2024, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2028)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!37, !2026}
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!2028 = !{!2029}
!2029 = !DILocalVariable(name: "o", arg: 1, scope: !2023, file: !295, line: 124, type: !2026)
!2030 = !DILocation(line: 0, scope: !2023)
!2031 = !DILocation(line: 126, column: 11, scope: !2023)
!2032 = !DILocation(line: 126, column: 46, scope: !2023)
!2033 = !{!2034, !512, i64 0}
!2034 = !{!"quoting_options", !512, i64 0, !602, i64 4, !512, i64 8, !511, i64 40, !511, i64 48}
!2035 = !DILocation(line: 126, column: 3, scope: !2023)
!2036 = distinct !DISubprogram(name: "set_quoting_style", scope: !295, file: !295, line: 132, type: !2037, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{null, !2012, !37}
!2039 = !{!2040, !2041}
!2040 = !DILocalVariable(name: "o", arg: 1, scope: !2036, file: !295, line: 132, type: !2012)
!2041 = !DILocalVariable(name: "s", arg: 2, scope: !2036, file: !295, line: 132, type: !37)
!2042 = !DILocation(line: 0, scope: !2036)
!2043 = !DILocation(line: 134, column: 4, scope: !2036)
!2044 = !DILocation(line: 134, column: 39, scope: !2036)
!2045 = !DILocation(line: 134, column: 45, scope: !2036)
!2046 = !DILocation(line: 135, column: 1, scope: !2036)
!2047 = distinct !DISubprogram(name: "set_char_quoting", scope: !295, file: !295, line: 143, type: !2048, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2050)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!62, !2012, !55, !62}
!2050 = !{!2051, !2052, !2053, !2054, !2055, !2057, !2058}
!2051 = !DILocalVariable(name: "o", arg: 1, scope: !2047, file: !295, line: 143, type: !2012)
!2052 = !DILocalVariable(name: "c", arg: 2, scope: !2047, file: !295, line: 143, type: !55)
!2053 = !DILocalVariable(name: "i", arg: 3, scope: !2047, file: !295, line: 143, type: !62)
!2054 = !DILocalVariable(name: "uc", scope: !2047, file: !295, line: 145, type: !69)
!2055 = !DILocalVariable(name: "p", scope: !2047, file: !295, line: 146, type: !2056)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2057 = !DILocalVariable(name: "shift", scope: !2047, file: !295, line: 148, type: !62)
!2058 = !DILocalVariable(name: "r", scope: !2047, file: !295, line: 149, type: !6)
!2059 = !DILocation(line: 0, scope: !2047)
!2060 = !DILocation(line: 147, column: 6, scope: !2047)
!2061 = !DILocation(line: 147, column: 62, scope: !2047)
!2062 = !DILocation(line: 147, column: 57, scope: !2047)
!2063 = !DILocation(line: 148, column: 15, scope: !2047)
!2064 = !DILocation(line: 149, column: 21, scope: !2047)
!2065 = !DILocation(line: 149, column: 24, scope: !2047)
!2066 = !DILocation(line: 149, column: 34, scope: !2047)
!2067 = !DILocation(line: 150, column: 13, scope: !2047)
!2068 = !DILocation(line: 150, column: 19, scope: !2047)
!2069 = !DILocation(line: 150, column: 24, scope: !2047)
!2070 = !DILocation(line: 150, column: 6, scope: !2047)
!2071 = !DILocation(line: 151, column: 3, scope: !2047)
!2072 = distinct !DISubprogram(name: "set_quoting_flags", scope: !295, file: !295, line: 159, type: !2073, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2075)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!62, !2012, !62}
!2075 = !{!2076, !2077, !2078}
!2076 = !DILocalVariable(name: "o", arg: 1, scope: !2072, file: !295, line: 159, type: !2012)
!2077 = !DILocalVariable(name: "i", arg: 2, scope: !2072, file: !295, line: 159, type: !62)
!2078 = !DILocalVariable(name: "r", scope: !2072, file: !295, line: 163, type: !62)
!2079 = !DILocation(line: 0, scope: !2072)
!2080 = !DILocation(line: 161, column: 8, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2072, file: !295, line: 161, column: 7)
!2082 = !DILocation(line: 161, column: 7, scope: !2072)
!2083 = !DILocation(line: 163, column: 14, scope: !2072)
!2084 = !{!2034, !602, i64 4}
!2085 = !DILocation(line: 164, column: 12, scope: !2072)
!2086 = !DILocation(line: 165, column: 3, scope: !2072)
!2087 = distinct !DISubprogram(name: "set_custom_quoting", scope: !295, file: !295, line: 169, type: !2088, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2090)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !2012, !67, !67}
!2090 = !{!2091, !2092, !2093}
!2091 = !DILocalVariable(name: "o", arg: 1, scope: !2087, file: !295, line: 169, type: !2012)
!2092 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2087, file: !295, line: 170, type: !67)
!2093 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2087, file: !295, line: 170, type: !67)
!2094 = !DILocation(line: 0, scope: !2087)
!2095 = !DILocation(line: 172, column: 8, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2087, file: !295, line: 172, column: 7)
!2097 = !DILocation(line: 172, column: 7, scope: !2087)
!2098 = !DILocation(line: 174, column: 6, scope: !2087)
!2099 = !DILocation(line: 174, column: 12, scope: !2087)
!2100 = !DILocation(line: 175, column: 8, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2087, file: !295, line: 175, column: 7)
!2102 = !DILocation(line: 175, column: 19, scope: !2101)
!2103 = !DILocation(line: 176, column: 5, scope: !2101)
!2104 = !DILocation(line: 177, column: 6, scope: !2087)
!2105 = !DILocation(line: 177, column: 17, scope: !2087)
!2106 = !{!2034, !511, i64 40}
!2107 = !DILocation(line: 178, column: 6, scope: !2087)
!2108 = !DILocation(line: 178, column: 18, scope: !2087)
!2109 = !{!2034, !511, i64 48}
!2110 = !DILocation(line: 179, column: 1, scope: !2087)
!2111 = distinct !DISubprogram(name: "quotearg_buffer", scope: !295, file: !295, line: 774, type: !2112, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2114)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!64, !54, !64, !67, !64, !2026}
!2114 = !{!2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122}
!2115 = !DILocalVariable(name: "buffer", arg: 1, scope: !2111, file: !295, line: 774, type: !54)
!2116 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2111, file: !295, line: 774, type: !64)
!2117 = !DILocalVariable(name: "arg", arg: 3, scope: !2111, file: !295, line: 775, type: !67)
!2118 = !DILocalVariable(name: "argsize", arg: 4, scope: !2111, file: !295, line: 775, type: !64)
!2119 = !DILocalVariable(name: "o", arg: 5, scope: !2111, file: !295, line: 776, type: !2026)
!2120 = !DILocalVariable(name: "p", scope: !2111, file: !295, line: 778, type: !2026)
!2121 = !DILocalVariable(name: "saved_errno", scope: !2111, file: !295, line: 779, type: !62)
!2122 = !DILocalVariable(name: "r", scope: !2111, file: !295, line: 780, type: !64)
!2123 = !DILocation(line: 0, scope: !2111)
!2124 = !DILocation(line: 778, column: 37, scope: !2111)
!2125 = !DILocation(line: 779, column: 21, scope: !2111)
!2126 = !DILocation(line: 781, column: 43, scope: !2111)
!2127 = !DILocation(line: 781, column: 53, scope: !2111)
!2128 = !DILocation(line: 781, column: 60, scope: !2111)
!2129 = !DILocation(line: 782, column: 43, scope: !2111)
!2130 = !DILocation(line: 782, column: 58, scope: !2111)
!2131 = !DILocation(line: 780, column: 14, scope: !2111)
!2132 = !DILocation(line: 783, column: 9, scope: !2111)
!2133 = !DILocation(line: 784, column: 3, scope: !2111)
!2134 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !295, file: !295, line: 251, type: !2135, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2139)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!64, !54, !64, !67, !64, !37, !62, !2137, !67, !67}
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2139 = !{!2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2164, !2166, !2169, !2170, !2171, !2172, !2175, !2176, !2179, !2183, !2184, !2192, !2195, !2196, !2198, !2199, !2200, !2201}
!2140 = !DILocalVariable(name: "buffer", arg: 1, scope: !2134, file: !295, line: 251, type: !54)
!2141 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2134, file: !295, line: 251, type: !64)
!2142 = !DILocalVariable(name: "arg", arg: 3, scope: !2134, file: !295, line: 252, type: !67)
!2143 = !DILocalVariable(name: "argsize", arg: 4, scope: !2134, file: !295, line: 252, type: !64)
!2144 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2134, file: !295, line: 253, type: !37)
!2145 = !DILocalVariable(name: "flags", arg: 6, scope: !2134, file: !295, line: 253, type: !62)
!2146 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2134, file: !295, line: 254, type: !2137)
!2147 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2134, file: !295, line: 255, type: !67)
!2148 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2134, file: !295, line: 256, type: !67)
!2149 = !DILocalVariable(name: "unibyte_locale", scope: !2134, file: !295, line: 258, type: !73)
!2150 = !DILocalVariable(name: "len", scope: !2134, file: !295, line: 260, type: !64)
!2151 = !DILocalVariable(name: "orig_buffersize", scope: !2134, file: !295, line: 261, type: !64)
!2152 = !DILocalVariable(name: "quote_string", scope: !2134, file: !295, line: 262, type: !67)
!2153 = !DILocalVariable(name: "quote_string_len", scope: !2134, file: !295, line: 263, type: !64)
!2154 = !DILocalVariable(name: "backslash_escapes", scope: !2134, file: !295, line: 264, type: !73)
!2155 = !DILocalVariable(name: "elide_outer_quotes", scope: !2134, file: !295, line: 265, type: !73)
!2156 = !DILocalVariable(name: "encountered_single_quote", scope: !2134, file: !295, line: 266, type: !73)
!2157 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2134, file: !295, line: 267, type: !73)
!2158 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2134, file: !295, line: 309, type: !73)
!2159 = !DILocalVariable(name: "lq", scope: !2160, file: !295, line: 361, type: !67)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !295, line: 361, column: 11)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !295, line: 360, column: 13)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !295, line: 333, column: 7)
!2163 = distinct !DILexicalBlock(scope: !2134, file: !295, line: 312, column: 5)
!2164 = !DILocalVariable(name: "i", scope: !2165, file: !295, line: 395, type: !64)
!2165 = distinct !DILexicalBlock(scope: !2134, file: !295, line: 395, column: 3)
!2166 = !DILocalVariable(name: "is_right_quote", scope: !2167, file: !295, line: 397, type: !73)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !295, line: 396, column: 5)
!2168 = distinct !DILexicalBlock(scope: !2165, file: !295, line: 395, column: 3)
!2169 = !DILocalVariable(name: "escaping", scope: !2167, file: !295, line: 398, type: !73)
!2170 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2167, file: !295, line: 399, type: !73)
!2171 = !DILocalVariable(name: "c", scope: !2167, file: !295, line: 417, type: !69)
!2172 = !DILocalVariable(name: "m", scope: !2173, file: !295, line: 598, type: !64)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !295, line: 596, column: 11)
!2174 = distinct !DILexicalBlock(scope: !2167, file: !295, line: 419, column: 9)
!2175 = !DILocalVariable(name: "printable", scope: !2173, file: !295, line: 600, type: !73)
!2176 = !DILocalVariable(name: "mbs", scope: !2177, file: !295, line: 609, type: !340)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !295, line: 608, column: 15)
!2178 = distinct !DILexicalBlock(scope: !2173, file: !295, line: 602, column: 17)
!2179 = !DILocalVariable(name: "w", scope: !2180, file: !295, line: 618, type: !271)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !295, line: 617, column: 19)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !295, line: 616, column: 17)
!2182 = distinct !DILexicalBlock(scope: !2177, file: !295, line: 616, column: 17)
!2183 = !DILocalVariable(name: "bytes", scope: !2180, file: !295, line: 619, type: !64)
!2184 = !DILocalVariable(name: "j", scope: !2185, file: !295, line: 648, type: !64)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !295, line: 648, column: 29)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !295, line: 647, column: 27)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !295, line: 645, column: 29)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !295, line: 636, column: 23)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !295, line: 628, column: 30)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !295, line: 623, column: 30)
!2191 = distinct !DILexicalBlock(scope: !2180, file: !295, line: 621, column: 25)
!2192 = !DILocalVariable(name: "ilim", scope: !2193, file: !295, line: 674, type: !64)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !295, line: 671, column: 15)
!2194 = distinct !DILexicalBlock(scope: !2173, file: !295, line: 670, column: 17)
!2195 = !DILabel(scope: !2134, name: "process_input", file: !295, line: 308)
!2196 = !DILabel(scope: !2197, name: "c_and_shell_escape", file: !295, line: 502)
!2197 = distinct !DILexicalBlock(scope: !2174, file: !295, line: 478, column: 9)
!2198 = !DILabel(scope: !2197, name: "c_escape", file: !295, line: 507)
!2199 = !DILabel(scope: !2167, name: "store_escape", file: !295, line: 709)
!2200 = !DILabel(scope: !2167, name: "store_c", file: !295, line: 712)
!2201 = !DILabel(scope: !2134, name: "force_outer_quoting_style", file: !295, line: 753)
!2202 = !DILocation(line: 0, scope: !2134)
!2203 = !DILocation(line: 258, column: 25, scope: !2134)
!2204 = !DILocation(line: 258, column: 36, scope: !2134)
!2205 = !DILocation(line: 267, column: 3, scope: !2134)
!2206 = !DILocation(line: 261, column: 10, scope: !2134)
!2207 = !DILocation(line: 262, column: 15, scope: !2134)
!2208 = !DILocation(line: 263, column: 10, scope: !2134)
!2209 = !DILocation(line: 308, column: 2, scope: !2134)
!2210 = !DILocation(line: 311, column: 3, scope: !2134)
!2211 = !DILocation(line: 318, column: 11, scope: !2163)
!2212 = !DILocation(line: 319, column: 9, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !295, line: 319, column: 9)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !295, line: 319, column: 9)
!2215 = distinct !DILexicalBlock(scope: !2163, file: !295, line: 318, column: 11)
!2216 = !DILocation(line: 319, column: 9, scope: !2214)
!2217 = !DILocation(line: 0, scope: !331, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 357, column: 26, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !295, line: 335, column: 11)
!2220 = distinct !DILexicalBlock(scope: !2162, file: !295, line: 334, column: 13)
!2221 = !DILocation(line: 199, column: 29, scope: !331, inlinedAt: !2218)
!2222 = !DILocation(line: 201, column: 19, scope: !2223, inlinedAt: !2218)
!2223 = distinct !DILexicalBlock(scope: !331, file: !295, line: 201, column: 7)
!2224 = !DILocation(line: 201, column: 7, scope: !331, inlinedAt: !2218)
!2225 = !DILocation(line: 229, column: 3, scope: !331, inlinedAt: !2218)
!2226 = !DILocation(line: 230, column: 3, scope: !331, inlinedAt: !2218)
!2227 = !DILocation(line: 230, column: 13, scope: !331, inlinedAt: !2218)
!2228 = !DILocalVariable(name: "ps", arg: 1, scope: !2229, file: !1980, line: 1135, type: !2232)
!2229 = distinct !DISubprogram(name: "mbszero", scope: !1980, file: !1980, line: 1135, type: !2230, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2233)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{null, !2232}
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!2233 = !{!2228}
!2234 = !DILocation(line: 0, scope: !2229, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 230, column: 18, scope: !331, inlinedAt: !2218)
!2236 = !DILocalVariable(name: "__dest", arg: 1, scope: !2237, file: !1989, line: 57, type: !56)
!2237 = distinct !DISubprogram(name: "memset", scope: !1989, file: !1989, line: 57, type: !1990, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2238)
!2238 = !{!2236, !2239, !2240}
!2239 = !DILocalVariable(name: "__ch", arg: 2, scope: !2237, file: !1989, line: 57, type: !62)
!2240 = !DILocalVariable(name: "__len", arg: 3, scope: !2237, file: !1989, line: 57, type: !64)
!2241 = !DILocation(line: 0, scope: !2237, inlinedAt: !2242)
!2242 = distinct !DILocation(line: 1137, column: 3, scope: !2229, inlinedAt: !2235)
!2243 = !DILocation(line: 59, column: 10, scope: !2237, inlinedAt: !2242)
!2244 = !DILocation(line: 231, column: 7, scope: !2245, inlinedAt: !2218)
!2245 = distinct !DILexicalBlock(scope: !331, file: !295, line: 231, column: 7)
!2246 = !DILocation(line: 231, column: 40, scope: !2245, inlinedAt: !2218)
!2247 = !DILocation(line: 231, column: 45, scope: !2245, inlinedAt: !2218)
!2248 = !DILocation(line: 235, column: 1, scope: !331, inlinedAt: !2218)
!2249 = !DILocation(line: 0, scope: !331, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 358, column: 27, scope: !2219)
!2251 = !DILocation(line: 199, column: 29, scope: !331, inlinedAt: !2250)
!2252 = !DILocation(line: 201, column: 19, scope: !2223, inlinedAt: !2250)
!2253 = !DILocation(line: 201, column: 7, scope: !331, inlinedAt: !2250)
!2254 = !DILocation(line: 229, column: 3, scope: !331, inlinedAt: !2250)
!2255 = !DILocation(line: 230, column: 3, scope: !331, inlinedAt: !2250)
!2256 = !DILocation(line: 230, column: 13, scope: !331, inlinedAt: !2250)
!2257 = !DILocation(line: 0, scope: !2229, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 230, column: 18, scope: !331, inlinedAt: !2250)
!2259 = !DILocation(line: 0, scope: !2237, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 1137, column: 3, scope: !2229, inlinedAt: !2258)
!2261 = !DILocation(line: 59, column: 10, scope: !2237, inlinedAt: !2260)
!2262 = !DILocation(line: 231, column: 7, scope: !2245, inlinedAt: !2250)
!2263 = !DILocation(line: 231, column: 40, scope: !2245, inlinedAt: !2250)
!2264 = !DILocation(line: 231, column: 45, scope: !2245, inlinedAt: !2250)
!2265 = !DILocation(line: 235, column: 1, scope: !331, inlinedAt: !2250)
!2266 = !DILocation(line: 360, column: 13, scope: !2162)
!2267 = !DILocation(line: 0, scope: !2160)
!2268 = !DILocation(line: 361, column: 45, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2160, file: !295, line: 361, column: 11)
!2270 = !DILocation(line: 361, column: 11, scope: !2160)
!2271 = !DILocation(line: 362, column: 13, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !295, line: 362, column: 13)
!2273 = distinct !DILexicalBlock(scope: !2269, file: !295, line: 362, column: 13)
!2274 = !DILocation(line: 362, column: 13, scope: !2273)
!2275 = !DILocation(line: 361, column: 52, scope: !2269)
!2276 = distinct !{!2276, !2270, !2277, !567}
!2277 = !DILocation(line: 362, column: 13, scope: !2160)
!2278 = !DILocation(line: 260, column: 10, scope: !2134)
!2279 = !DILocation(line: 365, column: 28, scope: !2162)
!2280 = !DILocation(line: 367, column: 7, scope: !2163)
!2281 = !DILocation(line: 370, column: 7, scope: !2163)
!2282 = !DILocation(line: 376, column: 11, scope: !2163)
!2283 = !DILocation(line: 381, column: 11, scope: !2163)
!2284 = !DILocation(line: 382, column: 9, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !295, line: 382, column: 9)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !295, line: 382, column: 9)
!2287 = distinct !DILexicalBlock(scope: !2163, file: !295, line: 381, column: 11)
!2288 = !DILocation(line: 382, column: 9, scope: !2286)
!2289 = !DILocation(line: 389, column: 7, scope: !2163)
!2290 = !DILocation(line: 392, column: 7, scope: !2163)
!2291 = !DILocation(line: 0, scope: !2165)
!2292 = !DILocation(line: 395, column: 8, scope: !2165)
!2293 = !DILocation(line: 395, column: 34, scope: !2168)
!2294 = !DILocation(line: 395, column: 26, scope: !2168)
!2295 = !DILocation(line: 395, column: 48, scope: !2168)
!2296 = !DILocation(line: 395, column: 55, scope: !2168)
!2297 = !DILocation(line: 395, column: 3, scope: !2165)
!2298 = !DILocation(line: 395, column: 67, scope: !2168)
!2299 = !DILocation(line: 0, scope: !2167)
!2300 = !DILocation(line: 402, column: 11, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2167, file: !295, line: 401, column: 11)
!2302 = !DILocation(line: 404, column: 17, scope: !2301)
!2303 = !DILocation(line: 405, column: 39, scope: !2301)
!2304 = !DILocation(line: 409, column: 32, scope: !2301)
!2305 = !DILocation(line: 405, column: 19, scope: !2301)
!2306 = !DILocation(line: 405, column: 15, scope: !2301)
!2307 = !DILocation(line: 410, column: 11, scope: !2301)
!2308 = !DILocation(line: 410, column: 25, scope: !2301)
!2309 = !DILocalVariable(name: "__s1", arg: 1, scope: !2310, file: !551, line: 974, type: !52)
!2310 = distinct !DISubprogram(name: "memeq", scope: !551, file: !551, line: 974, type: !1290, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2311)
!2311 = !{!2309, !2312, !2313}
!2312 = !DILocalVariable(name: "__s2", arg: 2, scope: !2310, file: !551, line: 974, type: !52)
!2313 = !DILocalVariable(name: "__n", arg: 3, scope: !2310, file: !551, line: 974, type: !64)
!2314 = !DILocation(line: 0, scope: !2310, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 410, column: 14, scope: !2301)
!2316 = !DILocation(line: 976, column: 11, scope: !2310, inlinedAt: !2315)
!2317 = !DILocation(line: 976, column: 10, scope: !2310, inlinedAt: !2315)
!2318 = !DILocation(line: 401, column: 11, scope: !2167)
!2319 = !DILocation(line: 417, column: 25, scope: !2167)
!2320 = !DILocation(line: 418, column: 7, scope: !2167)
!2321 = !DILocation(line: 421, column: 15, scope: !2174)
!2322 = !DILocation(line: 423, column: 15, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !295, line: 423, column: 15)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !295, line: 422, column: 13)
!2325 = distinct !DILexicalBlock(scope: !2174, file: !295, line: 421, column: 15)
!2326 = !DILocation(line: 423, column: 15, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2323, file: !295, line: 423, column: 15)
!2328 = !DILocation(line: 423, column: 15, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !295, line: 423, column: 15)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !295, line: 423, column: 15)
!2331 = distinct !DILexicalBlock(scope: !2327, file: !295, line: 423, column: 15)
!2332 = !DILocation(line: 423, column: 15, scope: !2330)
!2333 = !DILocation(line: 423, column: 15, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !295, line: 423, column: 15)
!2335 = distinct !DILexicalBlock(scope: !2331, file: !295, line: 423, column: 15)
!2336 = !DILocation(line: 423, column: 15, scope: !2335)
!2337 = !DILocation(line: 423, column: 15, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !295, line: 423, column: 15)
!2339 = distinct !DILexicalBlock(scope: !2331, file: !295, line: 423, column: 15)
!2340 = !DILocation(line: 423, column: 15, scope: !2339)
!2341 = !DILocation(line: 423, column: 15, scope: !2331)
!2342 = !DILocation(line: 423, column: 15, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !295, line: 423, column: 15)
!2344 = distinct !DILexicalBlock(scope: !2323, file: !295, line: 423, column: 15)
!2345 = !DILocation(line: 423, column: 15, scope: !2344)
!2346 = !DILocation(line: 431, column: 19, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2324, file: !295, line: 430, column: 19)
!2348 = !DILocation(line: 431, column: 24, scope: !2347)
!2349 = !DILocation(line: 431, column: 28, scope: !2347)
!2350 = !DILocation(line: 431, column: 38, scope: !2347)
!2351 = !DILocation(line: 431, column: 48, scope: !2347)
!2352 = !DILocation(line: 431, column: 59, scope: !2347)
!2353 = !DILocation(line: 433, column: 19, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !295, line: 433, column: 19)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !295, line: 433, column: 19)
!2356 = distinct !DILexicalBlock(scope: !2347, file: !295, line: 432, column: 17)
!2357 = !DILocation(line: 433, column: 19, scope: !2355)
!2358 = !DILocation(line: 434, column: 19, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !295, line: 434, column: 19)
!2360 = distinct !DILexicalBlock(scope: !2356, file: !295, line: 434, column: 19)
!2361 = !DILocation(line: 434, column: 19, scope: !2360)
!2362 = !DILocation(line: 435, column: 17, scope: !2356)
!2363 = !DILocation(line: 442, column: 20, scope: !2325)
!2364 = !DILocation(line: 447, column: 11, scope: !2174)
!2365 = !DILocation(line: 450, column: 19, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2174, file: !295, line: 448, column: 13)
!2367 = !DILocation(line: 456, column: 19, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2366, file: !295, line: 455, column: 19)
!2369 = !DILocation(line: 456, column: 24, scope: !2368)
!2370 = !DILocation(line: 456, column: 28, scope: !2368)
!2371 = !DILocation(line: 456, column: 38, scope: !2368)
!2372 = !DILocation(line: 456, column: 47, scope: !2368)
!2373 = !DILocation(line: 456, column: 41, scope: !2368)
!2374 = !DILocation(line: 456, column: 52, scope: !2368)
!2375 = !DILocation(line: 455, column: 19, scope: !2366)
!2376 = !DILocation(line: 457, column: 25, scope: !2368)
!2377 = !DILocation(line: 457, column: 17, scope: !2368)
!2378 = !DILocation(line: 464, column: 25, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2368, file: !295, line: 458, column: 19)
!2380 = !DILocation(line: 468, column: 21, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !295, line: 468, column: 21)
!2382 = distinct !DILexicalBlock(scope: !2379, file: !295, line: 468, column: 21)
!2383 = !DILocation(line: 468, column: 21, scope: !2382)
!2384 = !DILocation(line: 469, column: 21, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !295, line: 469, column: 21)
!2386 = distinct !DILexicalBlock(scope: !2379, file: !295, line: 469, column: 21)
!2387 = !DILocation(line: 469, column: 21, scope: !2386)
!2388 = !DILocation(line: 470, column: 21, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !295, line: 470, column: 21)
!2390 = distinct !DILexicalBlock(scope: !2379, file: !295, line: 470, column: 21)
!2391 = !DILocation(line: 470, column: 21, scope: !2390)
!2392 = !DILocation(line: 471, column: 21, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !295, line: 471, column: 21)
!2394 = distinct !DILexicalBlock(scope: !2379, file: !295, line: 471, column: 21)
!2395 = !DILocation(line: 471, column: 21, scope: !2394)
!2396 = !DILocation(line: 472, column: 21, scope: !2379)
!2397 = !DILocation(line: 482, column: 33, scope: !2197)
!2398 = !DILocation(line: 483, column: 33, scope: !2197)
!2399 = !DILocation(line: 485, column: 33, scope: !2197)
!2400 = !DILocation(line: 486, column: 33, scope: !2197)
!2401 = !DILocation(line: 487, column: 33, scope: !2197)
!2402 = !DILocation(line: 490, column: 17, scope: !2197)
!2403 = !DILocation(line: 492, column: 21, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !295, line: 491, column: 15)
!2405 = distinct !DILexicalBlock(scope: !2197, file: !295, line: 490, column: 17)
!2406 = !DILocation(line: 499, column: 35, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2197, file: !295, line: 499, column: 17)
!2408 = !DILocation(line: 499, column: 57, scope: !2407)
!2409 = !DILocation(line: 0, scope: !2197)
!2410 = !DILocation(line: 502, column: 11, scope: !2197)
!2411 = !DILocation(line: 504, column: 17, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2197, file: !295, line: 503, column: 17)
!2413 = !DILocation(line: 507, column: 11, scope: !2197)
!2414 = !DILocation(line: 508, column: 17, scope: !2197)
!2415 = !DILocation(line: 517, column: 15, scope: !2174)
!2416 = !DILocation(line: 517, column: 40, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2174, file: !295, line: 517, column: 15)
!2418 = !DILocation(line: 517, column: 47, scope: !2417)
!2419 = !DILocation(line: 517, column: 18, scope: !2417)
!2420 = !DILocation(line: 521, column: 17, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2174, file: !295, line: 521, column: 15)
!2422 = !DILocation(line: 521, column: 15, scope: !2174)
!2423 = !DILocation(line: 525, column: 11, scope: !2174)
!2424 = !DILocation(line: 537, column: 15, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2174, file: !295, line: 536, column: 15)
!2426 = !DILocation(line: 536, column: 15, scope: !2174)
!2427 = !DILocation(line: 544, column: 15, scope: !2174)
!2428 = !DILocation(line: 546, column: 19, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !295, line: 545, column: 13)
!2430 = distinct !DILexicalBlock(scope: !2174, file: !295, line: 544, column: 15)
!2431 = !DILocation(line: 549, column: 19, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2429, file: !295, line: 549, column: 19)
!2433 = !DILocation(line: 549, column: 30, scope: !2432)
!2434 = !DILocation(line: 558, column: 15, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !295, line: 558, column: 15)
!2436 = distinct !DILexicalBlock(scope: !2429, file: !295, line: 558, column: 15)
!2437 = !DILocation(line: 558, column: 15, scope: !2436)
!2438 = !DILocation(line: 559, column: 15, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !295, line: 559, column: 15)
!2440 = distinct !DILexicalBlock(scope: !2429, file: !295, line: 559, column: 15)
!2441 = !DILocation(line: 559, column: 15, scope: !2440)
!2442 = !DILocation(line: 560, column: 15, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !295, line: 560, column: 15)
!2444 = distinct !DILexicalBlock(scope: !2429, file: !295, line: 560, column: 15)
!2445 = !DILocation(line: 560, column: 15, scope: !2444)
!2446 = !DILocation(line: 562, column: 13, scope: !2429)
!2447 = !DILocation(line: 602, column: 17, scope: !2173)
!2448 = !DILocation(line: 0, scope: !2173)
!2449 = !DILocation(line: 605, column: 29, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2178, file: !295, line: 603, column: 15)
!2451 = !DILocation(line: 605, column: 41, scope: !2450)
!2452 = !DILocation(line: 670, column: 23, scope: !2194)
!2453 = !DILocation(line: 609, column: 17, scope: !2177)
!2454 = !DILocation(line: 609, column: 27, scope: !2177)
!2455 = !DILocation(line: 0, scope: !2229, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 609, column: 32, scope: !2177)
!2457 = !DILocation(line: 0, scope: !2237, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 1137, column: 3, scope: !2229, inlinedAt: !2456)
!2459 = !DILocation(line: 59, column: 10, scope: !2237, inlinedAt: !2458)
!2460 = !DILocation(line: 613, column: 29, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2177, file: !295, line: 613, column: 21)
!2462 = !DILocation(line: 613, column: 21, scope: !2177)
!2463 = !DILocation(line: 614, column: 29, scope: !2461)
!2464 = !DILocation(line: 614, column: 19, scope: !2461)
!2465 = !DILocation(line: 618, column: 21, scope: !2180)
!2466 = !DILocation(line: 620, column: 54, scope: !2180)
!2467 = !DILocation(line: 0, scope: !2180)
!2468 = !DILocation(line: 619, column: 36, scope: !2180)
!2469 = !DILocation(line: 621, column: 25, scope: !2180)
!2470 = !DILocation(line: 631, column: 38, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2189, file: !295, line: 629, column: 23)
!2472 = !DILocation(line: 631, column: 48, scope: !2471)
!2473 = !DILocation(line: 665, column: 19, scope: !2181)
!2474 = !DILocation(line: 666, column: 15, scope: !2178)
!2475 = !DILocation(line: 626, column: 25, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2190, file: !295, line: 624, column: 23)
!2477 = !DILocation(line: 631, column: 51, scope: !2471)
!2478 = !DILocation(line: 631, column: 25, scope: !2471)
!2479 = !DILocation(line: 632, column: 28, scope: !2471)
!2480 = !DILocation(line: 631, column: 34, scope: !2471)
!2481 = distinct !{!2481, !2478, !2479, !567}
!2482 = !DILocation(line: 646, column: 29, scope: !2187)
!2483 = !DILocation(line: 0, scope: !2185)
!2484 = !DILocation(line: 649, column: 49, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2185, file: !295, line: 648, column: 29)
!2486 = !DILocation(line: 649, column: 39, scope: !2485)
!2487 = !DILocation(line: 649, column: 31, scope: !2485)
!2488 = !DILocation(line: 648, column: 60, scope: !2485)
!2489 = !DILocation(line: 648, column: 50, scope: !2485)
!2490 = !DILocation(line: 648, column: 29, scope: !2185)
!2491 = distinct !{!2491, !2490, !2492, !567}
!2492 = !DILocation(line: 654, column: 33, scope: !2185)
!2493 = !DILocation(line: 657, column: 43, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2188, file: !295, line: 657, column: 29)
!2495 = !DILocalVariable(name: "wc", arg: 1, scope: !2496, file: !2497, line: 865, type: !2500)
!2496 = distinct !DISubprogram(name: "c32isprint", scope: !2497, file: !2497, line: 865, type: !2498, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2502)
!2497 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!62, !2500}
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2501, line: 20, baseType: !6)
!2501 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2502 = !{!2495}
!2503 = !DILocation(line: 0, scope: !2496, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 657, column: 31, scope: !2494)
!2505 = !DILocation(line: 871, column: 10, scope: !2496, inlinedAt: !2504)
!2506 = !DILocation(line: 657, column: 31, scope: !2494)
!2507 = !DILocation(line: 664, column: 23, scope: !2180)
!2508 = !DILocation(line: 753, column: 2, scope: !2134)
!2509 = !DILocation(line: 756, column: 51, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2134, file: !295, line: 756, column: 7)
!2511 = !DILocation(line: 670, column: 19, scope: !2194)
!2512 = !DILocation(line: 670, column: 45, scope: !2194)
!2513 = !DILocation(line: 674, column: 33, scope: !2193)
!2514 = !DILocation(line: 0, scope: !2193)
!2515 = !DILocation(line: 676, column: 17, scope: !2193)
!2516 = !DILocation(line: 398, column: 12, scope: !2167)
!2517 = !DILocation(line: 678, column: 43, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !295, line: 678, column: 25)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !295, line: 677, column: 19)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !295, line: 676, column: 17)
!2521 = distinct !DILexicalBlock(scope: !2193, file: !295, line: 676, column: 17)
!2522 = !DILocation(line: 680, column: 25, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !295, line: 680, column: 25)
!2524 = distinct !DILexicalBlock(scope: !2518, file: !295, line: 679, column: 23)
!2525 = !DILocation(line: 680, column: 25, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2523, file: !295, line: 680, column: 25)
!2527 = !DILocation(line: 680, column: 25, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !295, line: 680, column: 25)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !295, line: 680, column: 25)
!2530 = distinct !DILexicalBlock(scope: !2526, file: !295, line: 680, column: 25)
!2531 = !DILocation(line: 680, column: 25, scope: !2529)
!2532 = !DILocation(line: 680, column: 25, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !295, line: 680, column: 25)
!2534 = distinct !DILexicalBlock(scope: !2530, file: !295, line: 680, column: 25)
!2535 = !DILocation(line: 680, column: 25, scope: !2534)
!2536 = !DILocation(line: 680, column: 25, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !295, line: 680, column: 25)
!2538 = distinct !DILexicalBlock(scope: !2530, file: !295, line: 680, column: 25)
!2539 = !DILocation(line: 680, column: 25, scope: !2538)
!2540 = !DILocation(line: 680, column: 25, scope: !2530)
!2541 = !DILocation(line: 680, column: 25, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !295, line: 680, column: 25)
!2543 = distinct !DILexicalBlock(scope: !2523, file: !295, line: 680, column: 25)
!2544 = !DILocation(line: 680, column: 25, scope: !2543)
!2545 = !DILocation(line: 681, column: 25, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !295, line: 681, column: 25)
!2547 = distinct !DILexicalBlock(scope: !2524, file: !295, line: 681, column: 25)
!2548 = !DILocation(line: 681, column: 25, scope: !2547)
!2549 = !DILocation(line: 682, column: 25, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !295, line: 682, column: 25)
!2551 = distinct !DILexicalBlock(scope: !2524, file: !295, line: 682, column: 25)
!2552 = !DILocation(line: 682, column: 25, scope: !2551)
!2553 = !DILocation(line: 683, column: 38, scope: !2524)
!2554 = !DILocation(line: 683, column: 33, scope: !2524)
!2555 = !DILocation(line: 684, column: 23, scope: !2524)
!2556 = !DILocation(line: 685, column: 30, scope: !2518)
!2557 = !DILocation(line: 687, column: 25, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !295, line: 687, column: 25)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !295, line: 687, column: 25)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !295, line: 686, column: 23)
!2561 = distinct !DILexicalBlock(scope: !2518, file: !295, line: 685, column: 30)
!2562 = !DILocation(line: 687, column: 25, scope: !2559)
!2563 = !DILocation(line: 689, column: 23, scope: !2560)
!2564 = !DILocation(line: 690, column: 35, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2519, file: !295, line: 690, column: 25)
!2566 = !DILocation(line: 690, column: 30, scope: !2565)
!2567 = !DILocation(line: 690, column: 25, scope: !2519)
!2568 = !DILocation(line: 692, column: 21, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !295, line: 692, column: 21)
!2570 = distinct !DILexicalBlock(scope: !2519, file: !295, line: 692, column: 21)
!2571 = !DILocation(line: 692, column: 21, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !295, line: 692, column: 21)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !295, line: 692, column: 21)
!2574 = distinct !DILexicalBlock(scope: !2569, file: !295, line: 692, column: 21)
!2575 = !DILocation(line: 692, column: 21, scope: !2573)
!2576 = !DILocation(line: 692, column: 21, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !295, line: 692, column: 21)
!2578 = distinct !DILexicalBlock(scope: !2574, file: !295, line: 692, column: 21)
!2579 = !DILocation(line: 692, column: 21, scope: !2578)
!2580 = !DILocation(line: 692, column: 21, scope: !2574)
!2581 = !DILocation(line: 0, scope: !2519)
!2582 = !DILocation(line: 693, column: 21, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !295, line: 693, column: 21)
!2584 = distinct !DILexicalBlock(scope: !2519, file: !295, line: 693, column: 21)
!2585 = !DILocation(line: 693, column: 21, scope: !2584)
!2586 = !DILocation(line: 694, column: 25, scope: !2519)
!2587 = !DILocation(line: 676, column: 17, scope: !2520)
!2588 = distinct !{!2588, !2589, !2590}
!2589 = !DILocation(line: 676, column: 17, scope: !2521)
!2590 = !DILocation(line: 695, column: 19, scope: !2521)
!2591 = !DILocation(line: 409, column: 30, scope: !2301)
!2592 = !DILocation(line: 702, column: 34, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2167, file: !295, line: 702, column: 11)
!2594 = !DILocation(line: 704, column: 14, scope: !2593)
!2595 = !DILocation(line: 705, column: 14, scope: !2593)
!2596 = !DILocation(line: 705, column: 35, scope: !2593)
!2597 = !DILocation(line: 705, column: 17, scope: !2593)
!2598 = !DILocation(line: 705, column: 47, scope: !2593)
!2599 = !DILocation(line: 705, column: 65, scope: !2593)
!2600 = !DILocation(line: 706, column: 11, scope: !2593)
!2601 = !DILocation(line: 702, column: 11, scope: !2167)
!2602 = !DILocation(line: 395, column: 15, scope: !2165)
!2603 = !DILocation(line: 709, column: 5, scope: !2167)
!2604 = !DILocation(line: 710, column: 7, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2167, file: !295, line: 710, column: 7)
!2606 = !DILocation(line: 710, column: 7, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2605, file: !295, line: 710, column: 7)
!2608 = !DILocation(line: 710, column: 7, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !295, line: 710, column: 7)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !295, line: 710, column: 7)
!2611 = distinct !DILexicalBlock(scope: !2607, file: !295, line: 710, column: 7)
!2612 = !DILocation(line: 710, column: 7, scope: !2610)
!2613 = !DILocation(line: 710, column: 7, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !295, line: 710, column: 7)
!2615 = distinct !DILexicalBlock(scope: !2611, file: !295, line: 710, column: 7)
!2616 = !DILocation(line: 710, column: 7, scope: !2615)
!2617 = !DILocation(line: 710, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !295, line: 710, column: 7)
!2619 = distinct !DILexicalBlock(scope: !2611, file: !295, line: 710, column: 7)
!2620 = !DILocation(line: 710, column: 7, scope: !2619)
!2621 = !DILocation(line: 710, column: 7, scope: !2611)
!2622 = !DILocation(line: 710, column: 7, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !295, line: 710, column: 7)
!2624 = distinct !DILexicalBlock(scope: !2605, file: !295, line: 710, column: 7)
!2625 = !DILocation(line: 710, column: 7, scope: !2624)
!2626 = !DILocation(line: 712, column: 5, scope: !2167)
!2627 = !DILocation(line: 713, column: 7, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !295, line: 713, column: 7)
!2629 = distinct !DILexicalBlock(scope: !2167, file: !295, line: 713, column: 7)
!2630 = !DILocation(line: 417, column: 21, scope: !2167)
!2631 = !DILocation(line: 713, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !295, line: 713, column: 7)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !295, line: 713, column: 7)
!2634 = distinct !DILexicalBlock(scope: !2628, file: !295, line: 713, column: 7)
!2635 = !DILocation(line: 713, column: 7, scope: !2633)
!2636 = !DILocation(line: 713, column: 7, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !295, line: 713, column: 7)
!2638 = distinct !DILexicalBlock(scope: !2634, file: !295, line: 713, column: 7)
!2639 = !DILocation(line: 713, column: 7, scope: !2638)
!2640 = !DILocation(line: 713, column: 7, scope: !2634)
!2641 = !DILocation(line: 714, column: 7, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !295, line: 714, column: 7)
!2643 = distinct !DILexicalBlock(scope: !2167, file: !295, line: 714, column: 7)
!2644 = !DILocation(line: 714, column: 7, scope: !2643)
!2645 = !DILocation(line: 716, column: 11, scope: !2167)
!2646 = !DILocation(line: 718, column: 5, scope: !2168)
!2647 = !DILocation(line: 395, column: 82, scope: !2168)
!2648 = !DILocation(line: 395, column: 3, scope: !2168)
!2649 = distinct !{!2649, !2297, !2650, !567}
!2650 = !DILocation(line: 718, column: 5, scope: !2165)
!2651 = !DILocation(line: 720, column: 11, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2134, file: !295, line: 720, column: 7)
!2653 = !DILocation(line: 720, column: 16, scope: !2652)
!2654 = !DILocation(line: 728, column: 51, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2134, file: !295, line: 728, column: 7)
!2656 = !DILocation(line: 731, column: 11, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2655, file: !295, line: 730, column: 5)
!2658 = !DILocation(line: 732, column: 16, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2657, file: !295, line: 731, column: 11)
!2660 = !DILocation(line: 732, column: 9, scope: !2659)
!2661 = !DILocation(line: 736, column: 18, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2659, file: !295, line: 736, column: 16)
!2663 = !DILocation(line: 736, column: 29, scope: !2662)
!2664 = !DILocation(line: 745, column: 7, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2134, file: !295, line: 745, column: 7)
!2666 = !DILocation(line: 745, column: 20, scope: !2665)
!2667 = !DILocation(line: 746, column: 12, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !295, line: 746, column: 5)
!2669 = distinct !DILexicalBlock(scope: !2665, file: !295, line: 746, column: 5)
!2670 = !DILocation(line: 746, column: 5, scope: !2669)
!2671 = !DILocation(line: 747, column: 7, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !295, line: 747, column: 7)
!2673 = distinct !DILexicalBlock(scope: !2668, file: !295, line: 747, column: 7)
!2674 = !DILocation(line: 747, column: 7, scope: !2673)
!2675 = !DILocation(line: 746, column: 39, scope: !2668)
!2676 = distinct !{!2676, !2670, !2677, !567}
!2677 = !DILocation(line: 747, column: 7, scope: !2669)
!2678 = !DILocation(line: 749, column: 11, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2134, file: !295, line: 749, column: 7)
!2680 = !DILocation(line: 749, column: 7, scope: !2134)
!2681 = !DILocation(line: 750, column: 5, scope: !2679)
!2682 = !DILocation(line: 750, column: 17, scope: !2679)
!2683 = !DILocation(line: 756, column: 21, scope: !2510)
!2684 = !DILocation(line: 760, column: 42, scope: !2134)
!2685 = !DILocation(line: 758, column: 10, scope: !2134)
!2686 = !DILocation(line: 758, column: 3, scope: !2134)
!2687 = !DILocation(line: 762, column: 1, scope: !2134)
!2688 = !DISubprogram(name: "iswprint", scope: !2689, file: !2689, line: 120, type: !2498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!2689 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2690 = distinct !DISubprogram(name: "quotearg_alloc", scope: !295, file: !295, line: 788, type: !2691, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2693)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!54, !67, !64, !2026}
!2693 = !{!2694, !2695, !2696}
!2694 = !DILocalVariable(name: "arg", arg: 1, scope: !2690, file: !295, line: 788, type: !67)
!2695 = !DILocalVariable(name: "argsize", arg: 2, scope: !2690, file: !295, line: 788, type: !64)
!2696 = !DILocalVariable(name: "o", arg: 3, scope: !2690, file: !295, line: 789, type: !2026)
!2697 = !DILocation(line: 0, scope: !2690)
!2698 = !DILocalVariable(name: "arg", arg: 1, scope: !2699, file: !295, line: 801, type: !67)
!2699 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !295, file: !295, line: 801, type: !2700, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!54, !67, !64, !441, !2026}
!2702 = !{!2698, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710}
!2703 = !DILocalVariable(name: "argsize", arg: 2, scope: !2699, file: !295, line: 801, type: !64)
!2704 = !DILocalVariable(name: "size", arg: 3, scope: !2699, file: !295, line: 801, type: !441)
!2705 = !DILocalVariable(name: "o", arg: 4, scope: !2699, file: !295, line: 802, type: !2026)
!2706 = !DILocalVariable(name: "p", scope: !2699, file: !295, line: 804, type: !2026)
!2707 = !DILocalVariable(name: "saved_errno", scope: !2699, file: !295, line: 805, type: !62)
!2708 = !DILocalVariable(name: "flags", scope: !2699, file: !295, line: 807, type: !62)
!2709 = !DILocalVariable(name: "bufsize", scope: !2699, file: !295, line: 808, type: !64)
!2710 = !DILocalVariable(name: "buf", scope: !2699, file: !295, line: 812, type: !54)
!2711 = !DILocation(line: 0, scope: !2699, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 791, column: 10, scope: !2690)
!2713 = !DILocation(line: 804, column: 37, scope: !2699, inlinedAt: !2712)
!2714 = !DILocation(line: 805, column: 21, scope: !2699, inlinedAt: !2712)
!2715 = !DILocation(line: 807, column: 18, scope: !2699, inlinedAt: !2712)
!2716 = !DILocation(line: 807, column: 24, scope: !2699, inlinedAt: !2712)
!2717 = !DILocation(line: 808, column: 72, scope: !2699, inlinedAt: !2712)
!2718 = !DILocation(line: 809, column: 53, scope: !2699, inlinedAt: !2712)
!2719 = !DILocation(line: 810, column: 49, scope: !2699, inlinedAt: !2712)
!2720 = !DILocation(line: 811, column: 49, scope: !2699, inlinedAt: !2712)
!2721 = !DILocation(line: 808, column: 20, scope: !2699, inlinedAt: !2712)
!2722 = !DILocation(line: 811, column: 62, scope: !2699, inlinedAt: !2712)
!2723 = !DILocation(line: 812, column: 15, scope: !2699, inlinedAt: !2712)
!2724 = !DILocation(line: 813, column: 60, scope: !2699, inlinedAt: !2712)
!2725 = !DILocation(line: 815, column: 32, scope: !2699, inlinedAt: !2712)
!2726 = !DILocation(line: 815, column: 47, scope: !2699, inlinedAt: !2712)
!2727 = !DILocation(line: 813, column: 3, scope: !2699, inlinedAt: !2712)
!2728 = !DILocation(line: 816, column: 9, scope: !2699, inlinedAt: !2712)
!2729 = !DILocation(line: 791, column: 3, scope: !2690)
!2730 = !DILocation(line: 0, scope: !2699)
!2731 = !DILocation(line: 804, column: 37, scope: !2699)
!2732 = !DILocation(line: 805, column: 21, scope: !2699)
!2733 = !DILocation(line: 807, column: 18, scope: !2699)
!2734 = !DILocation(line: 807, column: 27, scope: !2699)
!2735 = !DILocation(line: 807, column: 24, scope: !2699)
!2736 = !DILocation(line: 808, column: 72, scope: !2699)
!2737 = !DILocation(line: 809, column: 53, scope: !2699)
!2738 = !DILocation(line: 810, column: 49, scope: !2699)
!2739 = !DILocation(line: 811, column: 49, scope: !2699)
!2740 = !DILocation(line: 808, column: 20, scope: !2699)
!2741 = !DILocation(line: 811, column: 62, scope: !2699)
!2742 = !DILocation(line: 812, column: 15, scope: !2699)
!2743 = !DILocation(line: 813, column: 60, scope: !2699)
!2744 = !DILocation(line: 815, column: 32, scope: !2699)
!2745 = !DILocation(line: 815, column: 47, scope: !2699)
!2746 = !DILocation(line: 813, column: 3, scope: !2699)
!2747 = !DILocation(line: 816, column: 9, scope: !2699)
!2748 = !DILocation(line: 817, column: 7, scope: !2699)
!2749 = !DILocation(line: 818, column: 11, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2699, file: !295, line: 817, column: 7)
!2751 = !{!1168, !1168, i64 0}
!2752 = !DILocation(line: 818, column: 5, scope: !2750)
!2753 = !DILocation(line: 819, column: 3, scope: !2699)
!2754 = distinct !DISubprogram(name: "quotearg_free", scope: !295, file: !295, line: 837, type: !205, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2755)
!2755 = !{!2756, !2757}
!2756 = !DILocalVariable(name: "sv", scope: !2754, file: !295, line: 839, type: !354)
!2757 = !DILocalVariable(name: "i", scope: !2758, file: !295, line: 840, type: !62)
!2758 = distinct !DILexicalBlock(scope: !2754, file: !295, line: 840, column: 3)
!2759 = !DILocation(line: 839, column: 24, scope: !2754)
!2760 = !DILocation(line: 0, scope: !2754)
!2761 = !DILocation(line: 0, scope: !2758)
!2762 = !DILocation(line: 840, column: 21, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2758, file: !295, line: 840, column: 3)
!2764 = !DILocation(line: 840, column: 3, scope: !2758)
!2765 = !DILocation(line: 842, column: 13, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2754, file: !295, line: 842, column: 7)
!2767 = !{!2768, !511, i64 8}
!2768 = !{!"slotvec", !1168, i64 0, !511, i64 8}
!2769 = !DILocation(line: 842, column: 17, scope: !2766)
!2770 = !DILocation(line: 842, column: 7, scope: !2754)
!2771 = !DILocation(line: 841, column: 17, scope: !2763)
!2772 = !DILocation(line: 841, column: 5, scope: !2763)
!2773 = !DILocation(line: 840, column: 32, scope: !2763)
!2774 = distinct !{!2774, !2764, !2775, !567}
!2775 = !DILocation(line: 841, column: 20, scope: !2758)
!2776 = !DILocation(line: 844, column: 7, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2766, file: !295, line: 843, column: 5)
!2778 = !DILocation(line: 845, column: 21, scope: !2777)
!2779 = !{!2768, !1168, i64 0}
!2780 = !DILocation(line: 846, column: 20, scope: !2777)
!2781 = !DILocation(line: 847, column: 5, scope: !2777)
!2782 = !DILocation(line: 848, column: 10, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2754, file: !295, line: 848, column: 7)
!2784 = !DILocation(line: 848, column: 7, scope: !2754)
!2785 = !DILocation(line: 850, column: 13, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2783, file: !295, line: 849, column: 5)
!2787 = !DILocation(line: 850, column: 7, scope: !2786)
!2788 = !DILocation(line: 851, column: 15, scope: !2786)
!2789 = !DILocation(line: 852, column: 5, scope: !2786)
!2790 = !DILocation(line: 853, column: 10, scope: !2754)
!2791 = !DILocation(line: 854, column: 1, scope: !2754)
!2792 = distinct !DISubprogram(name: "quotearg_n", scope: !295, file: !295, line: 919, type: !709, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2793)
!2793 = !{!2794, !2795}
!2794 = !DILocalVariable(name: "n", arg: 1, scope: !2792, file: !295, line: 919, type: !62)
!2795 = !DILocalVariable(name: "arg", arg: 2, scope: !2792, file: !295, line: 919, type: !67)
!2796 = !DILocation(line: 0, scope: !2792)
!2797 = !DILocation(line: 921, column: 10, scope: !2792)
!2798 = !DILocation(line: 921, column: 3, scope: !2792)
!2799 = distinct !DISubprogram(name: "quotearg_n_options", scope: !295, file: !295, line: 866, type: !2800, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2802)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!54, !62, !67, !64, !2026}
!2802 = !{!2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2813, !2814, !2816, !2817, !2818}
!2803 = !DILocalVariable(name: "n", arg: 1, scope: !2799, file: !295, line: 866, type: !62)
!2804 = !DILocalVariable(name: "arg", arg: 2, scope: !2799, file: !295, line: 866, type: !67)
!2805 = !DILocalVariable(name: "argsize", arg: 3, scope: !2799, file: !295, line: 866, type: !64)
!2806 = !DILocalVariable(name: "options", arg: 4, scope: !2799, file: !295, line: 867, type: !2026)
!2807 = !DILocalVariable(name: "saved_errno", scope: !2799, file: !295, line: 869, type: !62)
!2808 = !DILocalVariable(name: "sv", scope: !2799, file: !295, line: 871, type: !354)
!2809 = !DILocalVariable(name: "nslots_max", scope: !2799, file: !295, line: 873, type: !62)
!2810 = !DILocalVariable(name: "preallocated", scope: !2811, file: !295, line: 879, type: !73)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !295, line: 878, column: 5)
!2812 = distinct !DILexicalBlock(scope: !2799, file: !295, line: 877, column: 7)
!2813 = !DILocalVariable(name: "new_nslots", scope: !2811, file: !295, line: 880, type: !454)
!2814 = !DILocalVariable(name: "size", scope: !2815, file: !295, line: 891, type: !64)
!2815 = distinct !DILexicalBlock(scope: !2799, file: !295, line: 890, column: 3)
!2816 = !DILocalVariable(name: "val", scope: !2815, file: !295, line: 892, type: !54)
!2817 = !DILocalVariable(name: "flags", scope: !2815, file: !295, line: 894, type: !62)
!2818 = !DILocalVariable(name: "qsize", scope: !2815, file: !295, line: 895, type: !64)
!2819 = !DILocation(line: 0, scope: !2799)
!2820 = !DILocation(line: 869, column: 21, scope: !2799)
!2821 = !DILocation(line: 871, column: 24, scope: !2799)
!2822 = !DILocation(line: 874, column: 17, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2799, file: !295, line: 874, column: 7)
!2824 = !DILocation(line: 875, column: 5, scope: !2823)
!2825 = !DILocation(line: 877, column: 7, scope: !2812)
!2826 = !DILocation(line: 877, column: 14, scope: !2812)
!2827 = !DILocation(line: 877, column: 7, scope: !2799)
!2828 = !DILocation(line: 879, column: 31, scope: !2811)
!2829 = !DILocation(line: 0, scope: !2811)
!2830 = !DILocation(line: 880, column: 7, scope: !2811)
!2831 = !DILocation(line: 880, column: 26, scope: !2811)
!2832 = !DILocation(line: 880, column: 13, scope: !2811)
!2833 = !DILocation(line: 882, column: 31, scope: !2811)
!2834 = !DILocation(line: 883, column: 33, scope: !2811)
!2835 = !DILocation(line: 883, column: 42, scope: !2811)
!2836 = !DILocation(line: 883, column: 31, scope: !2811)
!2837 = !DILocation(line: 882, column: 22, scope: !2811)
!2838 = !DILocation(line: 882, column: 15, scope: !2811)
!2839 = !DILocation(line: 884, column: 11, scope: !2811)
!2840 = !DILocation(line: 885, column: 15, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2811, file: !295, line: 884, column: 11)
!2842 = !{i64 0, i64 8, !2751, i64 8, i64 8, !510}
!2843 = !DILocation(line: 885, column: 9, scope: !2841)
!2844 = !DILocation(line: 886, column: 20, scope: !2811)
!2845 = !DILocation(line: 886, column: 18, scope: !2811)
!2846 = !DILocation(line: 886, column: 15, scope: !2811)
!2847 = !DILocation(line: 886, column: 32, scope: !2811)
!2848 = !DILocation(line: 886, column: 43, scope: !2811)
!2849 = !DILocation(line: 886, column: 53, scope: !2811)
!2850 = !DILocation(line: 0, scope: !2237, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 886, column: 7, scope: !2811)
!2852 = !DILocation(line: 59, column: 10, scope: !2237, inlinedAt: !2851)
!2853 = !DILocation(line: 887, column: 16, scope: !2811)
!2854 = !DILocation(line: 887, column: 14, scope: !2811)
!2855 = !DILocation(line: 888, column: 5, scope: !2812)
!2856 = !DILocation(line: 888, column: 5, scope: !2811)
!2857 = !DILocation(line: 891, column: 19, scope: !2815)
!2858 = !DILocation(line: 891, column: 25, scope: !2815)
!2859 = !DILocation(line: 0, scope: !2815)
!2860 = !DILocation(line: 892, column: 23, scope: !2815)
!2861 = !DILocation(line: 894, column: 26, scope: !2815)
!2862 = !DILocation(line: 894, column: 32, scope: !2815)
!2863 = !DILocation(line: 896, column: 55, scope: !2815)
!2864 = !DILocation(line: 897, column: 46, scope: !2815)
!2865 = !DILocation(line: 898, column: 55, scope: !2815)
!2866 = !DILocation(line: 899, column: 55, scope: !2815)
!2867 = !DILocation(line: 895, column: 20, scope: !2815)
!2868 = !DILocation(line: 901, column: 14, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2815, file: !295, line: 901, column: 9)
!2870 = !DILocation(line: 901, column: 9, scope: !2815)
!2871 = !DILocation(line: 903, column: 35, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2869, file: !295, line: 902, column: 7)
!2873 = !DILocation(line: 903, column: 20, scope: !2872)
!2874 = !DILocation(line: 904, column: 17, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2872, file: !295, line: 904, column: 13)
!2876 = !DILocation(line: 904, column: 13, scope: !2872)
!2877 = !DILocation(line: 905, column: 11, scope: !2875)
!2878 = !DILocation(line: 906, column: 27, scope: !2872)
!2879 = !DILocation(line: 906, column: 19, scope: !2872)
!2880 = !DILocation(line: 907, column: 69, scope: !2872)
!2881 = !DILocation(line: 909, column: 44, scope: !2872)
!2882 = !DILocation(line: 910, column: 44, scope: !2872)
!2883 = !DILocation(line: 907, column: 9, scope: !2872)
!2884 = !DILocation(line: 911, column: 7, scope: !2872)
!2885 = !DILocation(line: 913, column: 11, scope: !2815)
!2886 = !DILocation(line: 914, column: 5, scope: !2815)
!2887 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !295, file: !295, line: 925, type: !2888, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!54, !62, !67, !64}
!2890 = !{!2891, !2892, !2893}
!2891 = !DILocalVariable(name: "n", arg: 1, scope: !2887, file: !295, line: 925, type: !62)
!2892 = !DILocalVariable(name: "arg", arg: 2, scope: !2887, file: !295, line: 925, type: !67)
!2893 = !DILocalVariable(name: "argsize", arg: 3, scope: !2887, file: !295, line: 925, type: !64)
!2894 = !DILocation(line: 0, scope: !2887)
!2895 = !DILocation(line: 927, column: 10, scope: !2887)
!2896 = !DILocation(line: 927, column: 3, scope: !2887)
!2897 = distinct !DISubprogram(name: "quotearg", scope: !295, file: !295, line: 931, type: !713, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2898)
!2898 = !{!2899}
!2899 = !DILocalVariable(name: "arg", arg: 1, scope: !2897, file: !295, line: 931, type: !67)
!2900 = !DILocation(line: 0, scope: !2897)
!2901 = !DILocation(line: 0, scope: !2792, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 933, column: 10, scope: !2897)
!2903 = !DILocation(line: 921, column: 10, scope: !2792, inlinedAt: !2902)
!2904 = !DILocation(line: 933, column: 3, scope: !2897)
!2905 = distinct !DISubprogram(name: "quotearg_mem", scope: !295, file: !295, line: 937, type: !2906, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2908)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!54, !67, !64}
!2908 = !{!2909, !2910}
!2909 = !DILocalVariable(name: "arg", arg: 1, scope: !2905, file: !295, line: 937, type: !67)
!2910 = !DILocalVariable(name: "argsize", arg: 2, scope: !2905, file: !295, line: 937, type: !64)
!2911 = !DILocation(line: 0, scope: !2905)
!2912 = !DILocation(line: 0, scope: !2887, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 939, column: 10, scope: !2905)
!2914 = !DILocation(line: 927, column: 10, scope: !2887, inlinedAt: !2913)
!2915 = !DILocation(line: 939, column: 3, scope: !2905)
!2916 = distinct !DISubprogram(name: "quotearg_n_style", scope: !295, file: !295, line: 943, type: !2917, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!54, !62, !37, !67}
!2919 = !{!2920, !2921, !2922, !2923}
!2920 = !DILocalVariable(name: "n", arg: 1, scope: !2916, file: !295, line: 943, type: !62)
!2921 = !DILocalVariable(name: "s", arg: 2, scope: !2916, file: !295, line: 943, type: !37)
!2922 = !DILocalVariable(name: "arg", arg: 3, scope: !2916, file: !295, line: 943, type: !67)
!2923 = !DILocalVariable(name: "o", scope: !2916, file: !295, line: 945, type: !2027)
!2924 = !DILocation(line: 0, scope: !2916)
!2925 = !DILocation(line: 945, column: 3, scope: !2916)
!2926 = !DILocation(line: 945, column: 32, scope: !2916)
!2927 = !{!2928}
!2928 = distinct !{!2928, !2929, !"quoting_options_from_style: argument 0"}
!2929 = distinct !{!2929, !"quoting_options_from_style"}
!2930 = !DILocation(line: 945, column: 36, scope: !2916)
!2931 = !DILocalVariable(name: "style", arg: 1, scope: !2932, file: !295, line: 183, type: !37)
!2932 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !295, file: !295, line: 183, type: !2933, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2935)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!312, !37}
!2935 = !{!2931, !2936}
!2936 = !DILocalVariable(name: "o", scope: !2932, file: !295, line: 185, type: !312)
!2937 = !DILocation(line: 0, scope: !2932, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 945, column: 36, scope: !2916)
!2939 = !DILocation(line: 185, column: 26, scope: !2932, inlinedAt: !2938)
!2940 = !DILocation(line: 186, column: 13, scope: !2941, inlinedAt: !2938)
!2941 = distinct !DILexicalBlock(scope: !2932, file: !295, line: 186, column: 7)
!2942 = !DILocation(line: 186, column: 7, scope: !2932, inlinedAt: !2938)
!2943 = !DILocation(line: 187, column: 5, scope: !2941, inlinedAt: !2938)
!2944 = !DILocation(line: 188, column: 5, scope: !2932, inlinedAt: !2938)
!2945 = !DILocation(line: 188, column: 11, scope: !2932, inlinedAt: !2938)
!2946 = !DILocation(line: 946, column: 10, scope: !2916)
!2947 = !DILocation(line: 947, column: 1, scope: !2916)
!2948 = !DILocation(line: 946, column: 3, scope: !2916)
!2949 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !295, file: !295, line: 950, type: !2950, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2952)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!54, !62, !37, !67, !64}
!2952 = !{!2953, !2954, !2955, !2956, !2957}
!2953 = !DILocalVariable(name: "n", arg: 1, scope: !2949, file: !295, line: 950, type: !62)
!2954 = !DILocalVariable(name: "s", arg: 2, scope: !2949, file: !295, line: 950, type: !37)
!2955 = !DILocalVariable(name: "arg", arg: 3, scope: !2949, file: !295, line: 951, type: !67)
!2956 = !DILocalVariable(name: "argsize", arg: 4, scope: !2949, file: !295, line: 951, type: !64)
!2957 = !DILocalVariable(name: "o", scope: !2949, file: !295, line: 953, type: !2027)
!2958 = !DILocation(line: 0, scope: !2949)
!2959 = !DILocation(line: 953, column: 3, scope: !2949)
!2960 = !DILocation(line: 953, column: 32, scope: !2949)
!2961 = !{!2962}
!2962 = distinct !{!2962, !2963, !"quoting_options_from_style: argument 0"}
!2963 = distinct !{!2963, !"quoting_options_from_style"}
!2964 = !DILocation(line: 953, column: 36, scope: !2949)
!2965 = !DILocation(line: 0, scope: !2932, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 953, column: 36, scope: !2949)
!2967 = !DILocation(line: 185, column: 26, scope: !2932, inlinedAt: !2966)
!2968 = !DILocation(line: 186, column: 13, scope: !2941, inlinedAt: !2966)
!2969 = !DILocation(line: 186, column: 7, scope: !2932, inlinedAt: !2966)
!2970 = !DILocation(line: 187, column: 5, scope: !2941, inlinedAt: !2966)
!2971 = !DILocation(line: 188, column: 5, scope: !2932, inlinedAt: !2966)
!2972 = !DILocation(line: 188, column: 11, scope: !2932, inlinedAt: !2966)
!2973 = !DILocation(line: 954, column: 10, scope: !2949)
!2974 = !DILocation(line: 955, column: 1, scope: !2949)
!2975 = !DILocation(line: 954, column: 3, scope: !2949)
!2976 = distinct !DISubprogram(name: "quotearg_style", scope: !295, file: !295, line: 958, type: !2977, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !2979)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!54, !37, !67}
!2979 = !{!2980, !2981}
!2980 = !DILocalVariable(name: "s", arg: 1, scope: !2976, file: !295, line: 958, type: !37)
!2981 = !DILocalVariable(name: "arg", arg: 2, scope: !2976, file: !295, line: 958, type: !67)
!2982 = !DILocation(line: 0, scope: !2976)
!2983 = !DILocation(line: 0, scope: !2916, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 960, column: 10, scope: !2976)
!2985 = !DILocation(line: 945, column: 3, scope: !2916, inlinedAt: !2984)
!2986 = !DILocation(line: 945, column: 32, scope: !2916, inlinedAt: !2984)
!2987 = !{!2988}
!2988 = distinct !{!2988, !2989, !"quoting_options_from_style: argument 0"}
!2989 = distinct !{!2989, !"quoting_options_from_style"}
!2990 = !DILocation(line: 945, column: 36, scope: !2916, inlinedAt: !2984)
!2991 = !DILocation(line: 0, scope: !2932, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 945, column: 36, scope: !2916, inlinedAt: !2984)
!2993 = !DILocation(line: 185, column: 26, scope: !2932, inlinedAt: !2992)
!2994 = !DILocation(line: 186, column: 13, scope: !2941, inlinedAt: !2992)
!2995 = !DILocation(line: 186, column: 7, scope: !2932, inlinedAt: !2992)
!2996 = !DILocation(line: 187, column: 5, scope: !2941, inlinedAt: !2992)
!2997 = !DILocation(line: 188, column: 5, scope: !2932, inlinedAt: !2992)
!2998 = !DILocation(line: 188, column: 11, scope: !2932, inlinedAt: !2992)
!2999 = !DILocation(line: 946, column: 10, scope: !2916, inlinedAt: !2984)
!3000 = !DILocation(line: 947, column: 1, scope: !2916, inlinedAt: !2984)
!3001 = !DILocation(line: 960, column: 3, scope: !2976)
!3002 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !295, file: !295, line: 964, type: !3003, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3005)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!54, !37, !67, !64}
!3005 = !{!3006, !3007, !3008}
!3006 = !DILocalVariable(name: "s", arg: 1, scope: !3002, file: !295, line: 964, type: !37)
!3007 = !DILocalVariable(name: "arg", arg: 2, scope: !3002, file: !295, line: 964, type: !67)
!3008 = !DILocalVariable(name: "argsize", arg: 3, scope: !3002, file: !295, line: 964, type: !64)
!3009 = !DILocation(line: 0, scope: !3002)
!3010 = !DILocation(line: 0, scope: !2949, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 966, column: 10, scope: !3002)
!3012 = !DILocation(line: 953, column: 3, scope: !2949, inlinedAt: !3011)
!3013 = !DILocation(line: 953, column: 32, scope: !2949, inlinedAt: !3011)
!3014 = !{!3015}
!3015 = distinct !{!3015, !3016, !"quoting_options_from_style: argument 0"}
!3016 = distinct !{!3016, !"quoting_options_from_style"}
!3017 = !DILocation(line: 953, column: 36, scope: !2949, inlinedAt: !3011)
!3018 = !DILocation(line: 0, scope: !2932, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 953, column: 36, scope: !2949, inlinedAt: !3011)
!3020 = !DILocation(line: 185, column: 26, scope: !2932, inlinedAt: !3019)
!3021 = !DILocation(line: 186, column: 13, scope: !2941, inlinedAt: !3019)
!3022 = !DILocation(line: 186, column: 7, scope: !2932, inlinedAt: !3019)
!3023 = !DILocation(line: 187, column: 5, scope: !2941, inlinedAt: !3019)
!3024 = !DILocation(line: 188, column: 5, scope: !2932, inlinedAt: !3019)
!3025 = !DILocation(line: 188, column: 11, scope: !2932, inlinedAt: !3019)
!3026 = !DILocation(line: 954, column: 10, scope: !2949, inlinedAt: !3011)
!3027 = !DILocation(line: 955, column: 1, scope: !2949, inlinedAt: !3011)
!3028 = !DILocation(line: 966, column: 3, scope: !3002)
!3029 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !295, file: !295, line: 970, type: !3030, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3032)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!54, !67, !64, !55}
!3032 = !{!3033, !3034, !3035, !3036}
!3033 = !DILocalVariable(name: "arg", arg: 1, scope: !3029, file: !295, line: 970, type: !67)
!3034 = !DILocalVariable(name: "argsize", arg: 2, scope: !3029, file: !295, line: 970, type: !64)
!3035 = !DILocalVariable(name: "ch", arg: 3, scope: !3029, file: !295, line: 970, type: !55)
!3036 = !DILocalVariable(name: "options", scope: !3029, file: !295, line: 972, type: !312)
!3037 = !DILocation(line: 0, scope: !3029)
!3038 = !DILocation(line: 972, column: 3, scope: !3029)
!3039 = !DILocation(line: 972, column: 26, scope: !3029)
!3040 = !DILocation(line: 973, column: 13, scope: !3029)
!3041 = !{i64 0, i64 4, !610, i64 4, i64 4, !601, i64 8, i64 32, !610, i64 40, i64 8, !510, i64 48, i64 8, !510}
!3042 = !DILocation(line: 0, scope: !2047, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 974, column: 3, scope: !3029)
!3044 = !DILocation(line: 147, column: 62, scope: !2047, inlinedAt: !3043)
!3045 = !DILocation(line: 147, column: 57, scope: !2047, inlinedAt: !3043)
!3046 = !DILocation(line: 148, column: 15, scope: !2047, inlinedAt: !3043)
!3047 = !DILocation(line: 149, column: 21, scope: !2047, inlinedAt: !3043)
!3048 = !DILocation(line: 149, column: 24, scope: !2047, inlinedAt: !3043)
!3049 = !DILocation(line: 149, column: 34, scope: !2047, inlinedAt: !3043)
!3050 = !DILocation(line: 150, column: 19, scope: !2047, inlinedAt: !3043)
!3051 = !DILocation(line: 150, column: 24, scope: !2047, inlinedAt: !3043)
!3052 = !DILocation(line: 150, column: 6, scope: !2047, inlinedAt: !3043)
!3053 = !DILocation(line: 975, column: 10, scope: !3029)
!3054 = !DILocation(line: 976, column: 1, scope: !3029)
!3055 = !DILocation(line: 975, column: 3, scope: !3029)
!3056 = distinct !DISubprogram(name: "quotearg_char", scope: !295, file: !295, line: 979, type: !3057, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3059)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!54, !67, !55}
!3059 = !{!3060, !3061}
!3060 = !DILocalVariable(name: "arg", arg: 1, scope: !3056, file: !295, line: 979, type: !67)
!3061 = !DILocalVariable(name: "ch", arg: 2, scope: !3056, file: !295, line: 979, type: !55)
!3062 = !DILocation(line: 0, scope: !3056)
!3063 = !DILocation(line: 0, scope: !3029, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 981, column: 10, scope: !3056)
!3065 = !DILocation(line: 972, column: 3, scope: !3029, inlinedAt: !3064)
!3066 = !DILocation(line: 972, column: 26, scope: !3029, inlinedAt: !3064)
!3067 = !DILocation(line: 973, column: 13, scope: !3029, inlinedAt: !3064)
!3068 = !DILocation(line: 0, scope: !2047, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 974, column: 3, scope: !3029, inlinedAt: !3064)
!3070 = !DILocation(line: 147, column: 62, scope: !2047, inlinedAt: !3069)
!3071 = !DILocation(line: 147, column: 57, scope: !2047, inlinedAt: !3069)
!3072 = !DILocation(line: 148, column: 15, scope: !2047, inlinedAt: !3069)
!3073 = !DILocation(line: 149, column: 21, scope: !2047, inlinedAt: !3069)
!3074 = !DILocation(line: 149, column: 24, scope: !2047, inlinedAt: !3069)
!3075 = !DILocation(line: 149, column: 34, scope: !2047, inlinedAt: !3069)
!3076 = !DILocation(line: 150, column: 19, scope: !2047, inlinedAt: !3069)
!3077 = !DILocation(line: 150, column: 24, scope: !2047, inlinedAt: !3069)
!3078 = !DILocation(line: 150, column: 6, scope: !2047, inlinedAt: !3069)
!3079 = !DILocation(line: 975, column: 10, scope: !3029, inlinedAt: !3064)
!3080 = !DILocation(line: 976, column: 1, scope: !3029, inlinedAt: !3064)
!3081 = !DILocation(line: 981, column: 3, scope: !3056)
!3082 = distinct !DISubprogram(name: "quotearg_colon", scope: !295, file: !295, line: 985, type: !713, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3083)
!3083 = !{!3084}
!3084 = !DILocalVariable(name: "arg", arg: 1, scope: !3082, file: !295, line: 985, type: !67)
!3085 = !DILocation(line: 0, scope: !3082)
!3086 = !DILocation(line: 0, scope: !3056, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 987, column: 10, scope: !3082)
!3088 = !DILocation(line: 0, scope: !3029, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 981, column: 10, scope: !3056, inlinedAt: !3087)
!3090 = !DILocation(line: 972, column: 3, scope: !3029, inlinedAt: !3089)
!3091 = !DILocation(line: 972, column: 26, scope: !3029, inlinedAt: !3089)
!3092 = !DILocation(line: 973, column: 13, scope: !3029, inlinedAt: !3089)
!3093 = !DILocation(line: 0, scope: !2047, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 974, column: 3, scope: !3029, inlinedAt: !3089)
!3095 = !DILocation(line: 147, column: 57, scope: !2047, inlinedAt: !3094)
!3096 = !DILocation(line: 149, column: 21, scope: !2047, inlinedAt: !3094)
!3097 = !DILocation(line: 150, column: 6, scope: !2047, inlinedAt: !3094)
!3098 = !DILocation(line: 975, column: 10, scope: !3029, inlinedAt: !3089)
!3099 = !DILocation(line: 976, column: 1, scope: !3029, inlinedAt: !3089)
!3100 = !DILocation(line: 987, column: 3, scope: !3082)
!3101 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !295, file: !295, line: 991, type: !2906, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3102)
!3102 = !{!3103, !3104}
!3103 = !DILocalVariable(name: "arg", arg: 1, scope: !3101, file: !295, line: 991, type: !67)
!3104 = !DILocalVariable(name: "argsize", arg: 2, scope: !3101, file: !295, line: 991, type: !64)
!3105 = !DILocation(line: 0, scope: !3101)
!3106 = !DILocation(line: 0, scope: !3029, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 993, column: 10, scope: !3101)
!3108 = !DILocation(line: 972, column: 3, scope: !3029, inlinedAt: !3107)
!3109 = !DILocation(line: 972, column: 26, scope: !3029, inlinedAt: !3107)
!3110 = !DILocation(line: 973, column: 13, scope: !3029, inlinedAt: !3107)
!3111 = !DILocation(line: 0, scope: !2047, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 974, column: 3, scope: !3029, inlinedAt: !3107)
!3113 = !DILocation(line: 147, column: 57, scope: !2047, inlinedAt: !3112)
!3114 = !DILocation(line: 149, column: 21, scope: !2047, inlinedAt: !3112)
!3115 = !DILocation(line: 150, column: 6, scope: !2047, inlinedAt: !3112)
!3116 = !DILocation(line: 975, column: 10, scope: !3029, inlinedAt: !3107)
!3117 = !DILocation(line: 976, column: 1, scope: !3029, inlinedAt: !3107)
!3118 = !DILocation(line: 993, column: 3, scope: !3101)
!3119 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !295, file: !295, line: 997, type: !2917, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3120)
!3120 = !{!3121, !3122, !3123, !3124}
!3121 = !DILocalVariable(name: "n", arg: 1, scope: !3119, file: !295, line: 997, type: !62)
!3122 = !DILocalVariable(name: "s", arg: 2, scope: !3119, file: !295, line: 997, type: !37)
!3123 = !DILocalVariable(name: "arg", arg: 3, scope: !3119, file: !295, line: 997, type: !67)
!3124 = !DILocalVariable(name: "options", scope: !3119, file: !295, line: 999, type: !312)
!3125 = !DILocation(line: 0, scope: !3119)
!3126 = !DILocation(line: 999, column: 3, scope: !3119)
!3127 = !DILocation(line: 999, column: 26, scope: !3119)
!3128 = !DILocation(line: 0, scope: !2932, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 1000, column: 13, scope: !3119)
!3130 = !DILocation(line: 186, column: 13, scope: !2941, inlinedAt: !3129)
!3131 = !DILocation(line: 186, column: 7, scope: !2932, inlinedAt: !3129)
!3132 = !DILocation(line: 187, column: 5, scope: !2941, inlinedAt: !3129)
!3133 = !{!3134}
!3134 = distinct !{!3134, !3135, !"quoting_options_from_style: argument 0"}
!3135 = distinct !{!3135, !"quoting_options_from_style"}
!3136 = !DILocation(line: 1000, column: 13, scope: !3119)
!3137 = !DILocation(line: 0, scope: !2047, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 1001, column: 3, scope: !3119)
!3139 = !DILocation(line: 147, column: 57, scope: !2047, inlinedAt: !3138)
!3140 = !DILocation(line: 149, column: 21, scope: !2047, inlinedAt: !3138)
!3141 = !DILocation(line: 150, column: 6, scope: !2047, inlinedAt: !3138)
!3142 = !DILocation(line: 1002, column: 10, scope: !3119)
!3143 = !DILocation(line: 1003, column: 1, scope: !3119)
!3144 = !DILocation(line: 1002, column: 3, scope: !3119)
!3145 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !295, file: !295, line: 1006, type: !3146, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3148)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!54, !62, !67, !67, !67}
!3148 = !{!3149, !3150, !3151, !3152}
!3149 = !DILocalVariable(name: "n", arg: 1, scope: !3145, file: !295, line: 1006, type: !62)
!3150 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3145, file: !295, line: 1006, type: !67)
!3151 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3145, file: !295, line: 1007, type: !67)
!3152 = !DILocalVariable(name: "arg", arg: 4, scope: !3145, file: !295, line: 1007, type: !67)
!3153 = !DILocation(line: 0, scope: !3145)
!3154 = !DILocalVariable(name: "n", arg: 1, scope: !3155, file: !295, line: 1014, type: !62)
!3155 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !295, file: !295, line: 1014, type: !3156, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3158)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!54, !62, !67, !67, !67, !64}
!3158 = !{!3154, !3159, !3160, !3161, !3162, !3163}
!3159 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3155, file: !295, line: 1014, type: !67)
!3160 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3155, file: !295, line: 1015, type: !67)
!3161 = !DILocalVariable(name: "arg", arg: 4, scope: !3155, file: !295, line: 1016, type: !67)
!3162 = !DILocalVariable(name: "argsize", arg: 5, scope: !3155, file: !295, line: 1016, type: !64)
!3163 = !DILocalVariable(name: "o", scope: !3155, file: !295, line: 1018, type: !312)
!3164 = !DILocation(line: 0, scope: !3155, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 1009, column: 10, scope: !3145)
!3166 = !DILocation(line: 1018, column: 3, scope: !3155, inlinedAt: !3165)
!3167 = !DILocation(line: 1018, column: 26, scope: !3155, inlinedAt: !3165)
!3168 = !DILocation(line: 1018, column: 30, scope: !3155, inlinedAt: !3165)
!3169 = !DILocation(line: 0, scope: !2087, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 1019, column: 3, scope: !3155, inlinedAt: !3165)
!3171 = !DILocation(line: 174, column: 6, scope: !2087, inlinedAt: !3170)
!3172 = !DILocation(line: 174, column: 12, scope: !2087, inlinedAt: !3170)
!3173 = !DILocation(line: 175, column: 8, scope: !2101, inlinedAt: !3170)
!3174 = !DILocation(line: 175, column: 19, scope: !2101, inlinedAt: !3170)
!3175 = !DILocation(line: 176, column: 5, scope: !2101, inlinedAt: !3170)
!3176 = !DILocation(line: 177, column: 6, scope: !2087, inlinedAt: !3170)
!3177 = !DILocation(line: 177, column: 17, scope: !2087, inlinedAt: !3170)
!3178 = !DILocation(line: 178, column: 6, scope: !2087, inlinedAt: !3170)
!3179 = !DILocation(line: 178, column: 18, scope: !2087, inlinedAt: !3170)
!3180 = !DILocation(line: 1020, column: 10, scope: !3155, inlinedAt: !3165)
!3181 = !DILocation(line: 1021, column: 1, scope: !3155, inlinedAt: !3165)
!3182 = !DILocation(line: 1009, column: 3, scope: !3145)
!3183 = !DILocation(line: 0, scope: !3155)
!3184 = !DILocation(line: 1018, column: 3, scope: !3155)
!3185 = !DILocation(line: 1018, column: 26, scope: !3155)
!3186 = !DILocation(line: 1018, column: 30, scope: !3155)
!3187 = !DILocation(line: 0, scope: !2087, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 1019, column: 3, scope: !3155)
!3189 = !DILocation(line: 174, column: 6, scope: !2087, inlinedAt: !3188)
!3190 = !DILocation(line: 174, column: 12, scope: !2087, inlinedAt: !3188)
!3191 = !DILocation(line: 175, column: 8, scope: !2101, inlinedAt: !3188)
!3192 = !DILocation(line: 175, column: 19, scope: !2101, inlinedAt: !3188)
!3193 = !DILocation(line: 176, column: 5, scope: !2101, inlinedAt: !3188)
!3194 = !DILocation(line: 177, column: 6, scope: !2087, inlinedAt: !3188)
!3195 = !DILocation(line: 177, column: 17, scope: !2087, inlinedAt: !3188)
!3196 = !DILocation(line: 178, column: 6, scope: !2087, inlinedAt: !3188)
!3197 = !DILocation(line: 178, column: 18, scope: !2087, inlinedAt: !3188)
!3198 = !DILocation(line: 1020, column: 10, scope: !3155)
!3199 = !DILocation(line: 1021, column: 1, scope: !3155)
!3200 = !DILocation(line: 1020, column: 3, scope: !3155)
!3201 = distinct !DISubprogram(name: "quotearg_custom", scope: !295, file: !295, line: 1024, type: !3202, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3204)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!54, !67, !67, !67}
!3204 = !{!3205, !3206, !3207}
!3205 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3201, file: !295, line: 1024, type: !67)
!3206 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3201, file: !295, line: 1024, type: !67)
!3207 = !DILocalVariable(name: "arg", arg: 3, scope: !3201, file: !295, line: 1025, type: !67)
!3208 = !DILocation(line: 0, scope: !3201)
!3209 = !DILocation(line: 0, scope: !3145, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 1027, column: 10, scope: !3201)
!3211 = !DILocation(line: 0, scope: !3155, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 1009, column: 10, scope: !3145, inlinedAt: !3210)
!3213 = !DILocation(line: 1018, column: 3, scope: !3155, inlinedAt: !3212)
!3214 = !DILocation(line: 1018, column: 26, scope: !3155, inlinedAt: !3212)
!3215 = !DILocation(line: 1018, column: 30, scope: !3155, inlinedAt: !3212)
!3216 = !DILocation(line: 0, scope: !2087, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 1019, column: 3, scope: !3155, inlinedAt: !3212)
!3218 = !DILocation(line: 174, column: 6, scope: !2087, inlinedAt: !3217)
!3219 = !DILocation(line: 174, column: 12, scope: !2087, inlinedAt: !3217)
!3220 = !DILocation(line: 175, column: 8, scope: !2101, inlinedAt: !3217)
!3221 = !DILocation(line: 175, column: 19, scope: !2101, inlinedAt: !3217)
!3222 = !DILocation(line: 176, column: 5, scope: !2101, inlinedAt: !3217)
!3223 = !DILocation(line: 177, column: 6, scope: !2087, inlinedAt: !3217)
!3224 = !DILocation(line: 177, column: 17, scope: !2087, inlinedAt: !3217)
!3225 = !DILocation(line: 178, column: 6, scope: !2087, inlinedAt: !3217)
!3226 = !DILocation(line: 178, column: 18, scope: !2087, inlinedAt: !3217)
!3227 = !DILocation(line: 1020, column: 10, scope: !3155, inlinedAt: !3212)
!3228 = !DILocation(line: 1021, column: 1, scope: !3155, inlinedAt: !3212)
!3229 = !DILocation(line: 1027, column: 3, scope: !3201)
!3230 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !295, file: !295, line: 1031, type: !3231, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3233)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!54, !67, !67, !67, !64}
!3233 = !{!3234, !3235, !3236, !3237}
!3234 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3230, file: !295, line: 1031, type: !67)
!3235 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3230, file: !295, line: 1031, type: !67)
!3236 = !DILocalVariable(name: "arg", arg: 3, scope: !3230, file: !295, line: 1032, type: !67)
!3237 = !DILocalVariable(name: "argsize", arg: 4, scope: !3230, file: !295, line: 1032, type: !64)
!3238 = !DILocation(line: 0, scope: !3230)
!3239 = !DILocation(line: 0, scope: !3155, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 1034, column: 10, scope: !3230)
!3241 = !DILocation(line: 1018, column: 3, scope: !3155, inlinedAt: !3240)
!3242 = !DILocation(line: 1018, column: 26, scope: !3155, inlinedAt: !3240)
!3243 = !DILocation(line: 1018, column: 30, scope: !3155, inlinedAt: !3240)
!3244 = !DILocation(line: 0, scope: !2087, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 1019, column: 3, scope: !3155, inlinedAt: !3240)
!3246 = !DILocation(line: 174, column: 6, scope: !2087, inlinedAt: !3245)
!3247 = !DILocation(line: 174, column: 12, scope: !2087, inlinedAt: !3245)
!3248 = !DILocation(line: 175, column: 8, scope: !2101, inlinedAt: !3245)
!3249 = !DILocation(line: 175, column: 19, scope: !2101, inlinedAt: !3245)
!3250 = !DILocation(line: 176, column: 5, scope: !2101, inlinedAt: !3245)
!3251 = !DILocation(line: 177, column: 6, scope: !2087, inlinedAt: !3245)
!3252 = !DILocation(line: 177, column: 17, scope: !2087, inlinedAt: !3245)
!3253 = !DILocation(line: 178, column: 6, scope: !2087, inlinedAt: !3245)
!3254 = !DILocation(line: 178, column: 18, scope: !2087, inlinedAt: !3245)
!3255 = !DILocation(line: 1020, column: 10, scope: !3155, inlinedAt: !3240)
!3256 = !DILocation(line: 1021, column: 1, scope: !3155, inlinedAt: !3240)
!3257 = !DILocation(line: 1034, column: 3, scope: !3230)
!3258 = distinct !DISubprogram(name: "quote_n_mem", scope: !295, file: !295, line: 1049, type: !3259, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3261)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!67, !62, !67, !64}
!3261 = !{!3262, !3263, !3264}
!3262 = !DILocalVariable(name: "n", arg: 1, scope: !3258, file: !295, line: 1049, type: !62)
!3263 = !DILocalVariable(name: "arg", arg: 2, scope: !3258, file: !295, line: 1049, type: !67)
!3264 = !DILocalVariable(name: "argsize", arg: 3, scope: !3258, file: !295, line: 1049, type: !64)
!3265 = !DILocation(line: 0, scope: !3258)
!3266 = !DILocation(line: 1051, column: 10, scope: !3258)
!3267 = !DILocation(line: 1051, column: 3, scope: !3258)
!3268 = distinct !DISubprogram(name: "quote_mem", scope: !295, file: !295, line: 1055, type: !3269, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!67, !67, !64}
!3271 = !{!3272, !3273}
!3272 = !DILocalVariable(name: "arg", arg: 1, scope: !3268, file: !295, line: 1055, type: !67)
!3273 = !DILocalVariable(name: "argsize", arg: 2, scope: !3268, file: !295, line: 1055, type: !64)
!3274 = !DILocation(line: 0, scope: !3268)
!3275 = !DILocation(line: 0, scope: !3258, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 1057, column: 10, scope: !3268)
!3277 = !DILocation(line: 1051, column: 10, scope: !3258, inlinedAt: !3276)
!3278 = !DILocation(line: 1057, column: 3, scope: !3268)
!3279 = distinct !DISubprogram(name: "quote_n", scope: !295, file: !295, line: 1061, type: !3280, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3282)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!67, !62, !67}
!3282 = !{!3283, !3284}
!3283 = !DILocalVariable(name: "n", arg: 1, scope: !3279, file: !295, line: 1061, type: !62)
!3284 = !DILocalVariable(name: "arg", arg: 2, scope: !3279, file: !295, line: 1061, type: !67)
!3285 = !DILocation(line: 0, scope: !3279)
!3286 = !DILocation(line: 0, scope: !3258, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 1063, column: 10, scope: !3279)
!3288 = !DILocation(line: 1051, column: 10, scope: !3258, inlinedAt: !3287)
!3289 = !DILocation(line: 1063, column: 3, scope: !3279)
!3290 = distinct !DISubprogram(name: "quote", scope: !295, file: !295, line: 1067, type: !3291, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3293)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!67, !67}
!3293 = !{!3294}
!3294 = !DILocalVariable(name: "arg", arg: 1, scope: !3290, file: !295, line: 1067, type: !67)
!3295 = !DILocation(line: 0, scope: !3290)
!3296 = !DILocation(line: 0, scope: !3279, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 1069, column: 10, scope: !3290)
!3298 = !DILocation(line: 0, scope: !3258, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 1063, column: 10, scope: !3279, inlinedAt: !3297)
!3300 = !DILocation(line: 1051, column: 10, scope: !3258, inlinedAt: !3299)
!3301 = !DILocation(line: 1069, column: 3, scope: !3290)
!3302 = distinct !DISubprogram(name: "fd_safer", scope: !426, file: !426, line: 37, type: !1036, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3303)
!3303 = !{!3304, !3305, !3308}
!3304 = !DILocalVariable(name: "fd", arg: 1, scope: !3302, file: !426, line: 37, type: !62)
!3305 = !DILocalVariable(name: "f", scope: !3306, file: !426, line: 41, type: !62)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !426, line: 40, column: 5)
!3307 = distinct !DILexicalBlock(scope: !3302, file: !426, line: 39, column: 7)
!3308 = !DILocalVariable(name: "saved_errno", scope: !3306, file: !426, line: 42, type: !62)
!3309 = !DILocation(line: 0, scope: !3302)
!3310 = !DILocation(line: 39, column: 26, scope: !3307)
!3311 = !DILocation(line: 41, column: 15, scope: !3306)
!3312 = !DILocation(line: 0, scope: !3306)
!3313 = !DILocation(line: 42, column: 25, scope: !3306)
!3314 = !DILocation(line: 43, column: 7, scope: !3306)
!3315 = !DILocation(line: 44, column: 13, scope: !3306)
!3316 = !DILocation(line: 46, column: 5, scope: !3306)
!3317 = !DILocation(line: 48, column: 3, scope: !3302)
!3318 = distinct !DISubprogram(name: "version_etc_arn", scope: !428, file: !428, line: 61, type: !3319, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !3355)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{null, !3321, !67, !67, !67, !1252, !64}
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !3323)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !3324)
!3324 = !{!3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3323, file: !107, line: 51, baseType: !62, size: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3323, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3323, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3323, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3323, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3323, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3323, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3323, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3323, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3323, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3323, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3323, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3323, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3323, file: !107, line: 70, baseType: !3339, size: 64, offset: 832)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3323, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3323, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3323, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3323, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3323, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3323, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3323, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3323, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3323, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3323, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3323, file: !107, line: 93, baseType: !3339, size: 64, offset: 1344)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3323, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3323, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3323, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3323, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361}
!3356 = !DILocalVariable(name: "stream", arg: 1, scope: !3318, file: !428, line: 61, type: !3321)
!3357 = !DILocalVariable(name: "command_name", arg: 2, scope: !3318, file: !428, line: 62, type: !67)
!3358 = !DILocalVariable(name: "package", arg: 3, scope: !3318, file: !428, line: 62, type: !67)
!3359 = !DILocalVariable(name: "version", arg: 4, scope: !3318, file: !428, line: 63, type: !67)
!3360 = !DILocalVariable(name: "authors", arg: 5, scope: !3318, file: !428, line: 64, type: !1252)
!3361 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3318, file: !428, line: 64, type: !64)
!3362 = !DILocation(line: 0, scope: !3318)
!3363 = !DILocation(line: 66, column: 7, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3318, file: !428, line: 66, column: 7)
!3365 = !DILocation(line: 66, column: 7, scope: !3318)
!3366 = !DILocation(line: 67, column: 5, scope: !3364)
!3367 = !DILocation(line: 69, column: 5, scope: !3364)
!3368 = !DILocation(line: 83, column: 3, scope: !3318)
!3369 = !DILocation(line: 85, column: 3, scope: !3318)
!3370 = !DILocation(line: 88, column: 3, scope: !3318)
!3371 = !DILocation(line: 95, column: 3, scope: !3318)
!3372 = !DILocation(line: 97, column: 3, scope: !3318)
!3373 = !DILocation(line: 105, column: 7, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3318, file: !428, line: 98, column: 5)
!3375 = !DILocation(line: 106, column: 7, scope: !3374)
!3376 = !DILocation(line: 109, column: 7, scope: !3374)
!3377 = !DILocation(line: 110, column: 7, scope: !3374)
!3378 = !DILocation(line: 113, column: 7, scope: !3374)
!3379 = !DILocation(line: 115, column: 7, scope: !3374)
!3380 = !DILocation(line: 120, column: 7, scope: !3374)
!3381 = !DILocation(line: 122, column: 7, scope: !3374)
!3382 = !DILocation(line: 127, column: 7, scope: !3374)
!3383 = !DILocation(line: 129, column: 7, scope: !3374)
!3384 = !DILocation(line: 134, column: 7, scope: !3374)
!3385 = !DILocation(line: 137, column: 7, scope: !3374)
!3386 = !DILocation(line: 142, column: 7, scope: !3374)
!3387 = !DILocation(line: 145, column: 7, scope: !3374)
!3388 = !DILocation(line: 150, column: 7, scope: !3374)
!3389 = !DILocation(line: 154, column: 7, scope: !3374)
!3390 = !DILocation(line: 159, column: 7, scope: !3374)
!3391 = !DILocation(line: 163, column: 7, scope: !3374)
!3392 = !DILocation(line: 170, column: 7, scope: !3374)
!3393 = !DILocation(line: 174, column: 7, scope: !3374)
!3394 = !DILocation(line: 176, column: 1, scope: !3318)
!3395 = distinct !DISubprogram(name: "version_etc_ar", scope: !428, file: !428, line: 183, type: !3396, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{null, !3321, !67, !67, !67, !1252}
!3398 = !{!3399, !3400, !3401, !3402, !3403, !3404}
!3399 = !DILocalVariable(name: "stream", arg: 1, scope: !3395, file: !428, line: 183, type: !3321)
!3400 = !DILocalVariable(name: "command_name", arg: 2, scope: !3395, file: !428, line: 184, type: !67)
!3401 = !DILocalVariable(name: "package", arg: 3, scope: !3395, file: !428, line: 184, type: !67)
!3402 = !DILocalVariable(name: "version", arg: 4, scope: !3395, file: !428, line: 185, type: !67)
!3403 = !DILocalVariable(name: "authors", arg: 5, scope: !3395, file: !428, line: 185, type: !1252)
!3404 = !DILocalVariable(name: "n_authors", scope: !3395, file: !428, line: 187, type: !64)
!3405 = !DILocation(line: 0, scope: !3395)
!3406 = !DILocation(line: 189, column: 8, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3395, file: !428, line: 189, column: 3)
!3408 = !DILocation(line: 0, scope: !3407)
!3409 = !DILocation(line: 189, column: 23, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3407, file: !428, line: 189, column: 3)
!3411 = !DILocation(line: 189, column: 3, scope: !3407)
!3412 = !DILocation(line: 189, column: 52, scope: !3410)
!3413 = distinct !{!3413, !3411, !3414, !567}
!3414 = !DILocation(line: 190, column: 5, scope: !3407)
!3415 = !DILocation(line: 191, column: 3, scope: !3395)
!3416 = !DILocation(line: 192, column: 1, scope: !3395)
!3417 = distinct !DISubprogram(name: "version_etc_va", scope: !428, file: !428, line: 199, type: !3418, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !3431)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{null, !3321, !67, !67, !67, !3420}
!3420 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !226, line: 52, baseType: !3421)
!3421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !228, line: 32, baseType: !3422)
!3422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3423, baseType: !3424)
!3423 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !232, size: 256, elements: !3425)
!3425 = !{!3426, !3427, !3428, !3429, !3430}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3424, file: !3423, line: 192, baseType: !56, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3424, file: !3423, line: 192, baseType: !56, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3424, file: !3423, line: 192, baseType: !56, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3424, file: !3423, line: 192, baseType: !62, size: 32, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3424, file: !3423, line: 192, baseType: !62, size: 32, offset: 224)
!3431 = !{!3432, !3433, !3434, !3435, !3436, !3437, !3438}
!3432 = !DILocalVariable(name: "stream", arg: 1, scope: !3417, file: !428, line: 199, type: !3321)
!3433 = !DILocalVariable(name: "command_name", arg: 2, scope: !3417, file: !428, line: 200, type: !67)
!3434 = !DILocalVariable(name: "package", arg: 3, scope: !3417, file: !428, line: 200, type: !67)
!3435 = !DILocalVariable(name: "version", arg: 4, scope: !3417, file: !428, line: 201, type: !67)
!3436 = !DILocalVariable(name: "authors", arg: 5, scope: !3417, file: !428, line: 201, type: !3420)
!3437 = !DILocalVariable(name: "n_authors", scope: !3417, file: !428, line: 203, type: !64)
!3438 = !DILocalVariable(name: "authtab", scope: !3417, file: !428, line: 204, type: !3439)
!3439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 640, elements: !308)
!3440 = !DILocation(line: 0, scope: !3417)
!3441 = !DILocation(line: 201, column: 46, scope: !3417)
!3442 = !DILocation(line: 204, column: 3, scope: !3417)
!3443 = !DILocation(line: 204, column: 15, scope: !3417)
!3444 = !DILocation(line: 208, column: 35, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3446, file: !428, line: 206, column: 3)
!3446 = distinct !DILexicalBlock(scope: !3417, file: !428, line: 206, column: 3)
!3447 = !DILocation(line: 208, column: 14, scope: !3445)
!3448 = !DILocation(line: 208, column: 33, scope: !3445)
!3449 = !DILocation(line: 208, column: 67, scope: !3445)
!3450 = !DILocation(line: 206, column: 3, scope: !3446)
!3451 = !DILocation(line: 0, scope: !3446)
!3452 = !DILocation(line: 211, column: 3, scope: !3417)
!3453 = !DILocation(line: 213, column: 1, scope: !3417)
!3454 = distinct !DISubprogram(name: "version_etc", scope: !428, file: !428, line: 230, type: !3455, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !3457)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{null, !3321, !67, !67, !67, null}
!3457 = !{!3458, !3459, !3460, !3461, !3462}
!3458 = !DILocalVariable(name: "stream", arg: 1, scope: !3454, file: !428, line: 230, type: !3321)
!3459 = !DILocalVariable(name: "command_name", arg: 2, scope: !3454, file: !428, line: 231, type: !67)
!3460 = !DILocalVariable(name: "package", arg: 3, scope: !3454, file: !428, line: 231, type: !67)
!3461 = !DILocalVariable(name: "version", arg: 4, scope: !3454, file: !428, line: 232, type: !67)
!3462 = !DILocalVariable(name: "authors", scope: !3454, file: !428, line: 234, type: !3420)
!3463 = !DILocation(line: 0, scope: !3454)
!3464 = !DILocation(line: 234, column: 3, scope: !3454)
!3465 = !DILocation(line: 234, column: 11, scope: !3454)
!3466 = !DILocation(line: 235, column: 3, scope: !3454)
!3467 = !DILocation(line: 236, column: 3, scope: !3454)
!3468 = !DILocation(line: 237, column: 3, scope: !3454)
!3469 = !DILocation(line: 238, column: 1, scope: !3454)
!3470 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !428, file: !428, line: 241, type: !205, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !593)
!3471 = !DILocation(line: 243, column: 3, scope: !3470)
!3472 = !DILocation(line: 248, column: 3, scope: !3470)
!3473 = !DILocation(line: 254, column: 3, scope: !3470)
!3474 = !DILocation(line: 259, column: 3, scope: !3470)
!3475 = !DILocation(line: 261, column: 1, scope: !3470)
!3476 = distinct !DISubprogram(name: "xnrealloc", scope: !3477, file: !3477, line: 147, type: !3478, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3480)
!3477 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!56, !56, !64, !64}
!3480 = !{!3481, !3482, !3483}
!3481 = !DILocalVariable(name: "p", arg: 1, scope: !3476, file: !3477, line: 147, type: !56)
!3482 = !DILocalVariable(name: "n", arg: 2, scope: !3476, file: !3477, line: 147, type: !64)
!3483 = !DILocalVariable(name: "s", arg: 3, scope: !3476, file: !3477, line: 147, type: !64)
!3484 = !DILocation(line: 0, scope: !3476)
!3485 = !DILocalVariable(name: "p", arg: 1, scope: !3486, file: !435, line: 83, type: !56)
!3486 = distinct !DISubprogram(name: "xreallocarray", scope: !435, file: !435, line: 83, type: !3478, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3487)
!3487 = !{!3485, !3488, !3489}
!3488 = !DILocalVariable(name: "n", arg: 2, scope: !3486, file: !435, line: 83, type: !64)
!3489 = !DILocalVariable(name: "s", arg: 3, scope: !3486, file: !435, line: 83, type: !64)
!3490 = !DILocation(line: 0, scope: !3486, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 149, column: 10, scope: !3476)
!3492 = !DILocation(line: 85, column: 25, scope: !3486, inlinedAt: !3491)
!3493 = !DILocalVariable(name: "p", arg: 1, scope: !3494, file: !435, line: 37, type: !56)
!3494 = distinct !DISubprogram(name: "check_nonnull", scope: !435, file: !435, line: 37, type: !3495, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3497)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!56, !56}
!3497 = !{!3493}
!3498 = !DILocation(line: 0, scope: !3494, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 85, column: 10, scope: !3486, inlinedAt: !3491)
!3500 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3499)
!3501 = distinct !DILexicalBlock(scope: !3494, file: !435, line: 39, column: 7)
!3502 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3499)
!3503 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3499)
!3504 = !DILocation(line: 149, column: 3, scope: !3476)
!3505 = !DILocation(line: 0, scope: !3486)
!3506 = !DILocation(line: 85, column: 25, scope: !3486)
!3507 = !DILocation(line: 0, scope: !3494, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 85, column: 10, scope: !3486)
!3509 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3508)
!3510 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3508)
!3511 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3508)
!3512 = !DILocation(line: 85, column: 3, scope: !3486)
!3513 = distinct !DISubprogram(name: "xmalloc", scope: !435, file: !435, line: 47, type: !3514, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3516)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!56, !64}
!3516 = !{!3517}
!3517 = !DILocalVariable(name: "s", arg: 1, scope: !3513, file: !435, line: 47, type: !64)
!3518 = !DILocation(line: 0, scope: !3513)
!3519 = !DILocation(line: 49, column: 25, scope: !3513)
!3520 = !DILocation(line: 0, scope: !3494, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 49, column: 10, scope: !3513)
!3522 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3521)
!3523 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3521)
!3524 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3521)
!3525 = !DILocation(line: 49, column: 3, scope: !3513)
!3526 = distinct !DISubprogram(name: "ximalloc", scope: !435, file: !435, line: 53, type: !3527, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3529)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!56, !454}
!3529 = !{!3530}
!3530 = !DILocalVariable(name: "s", arg: 1, scope: !3526, file: !435, line: 53, type: !454)
!3531 = !DILocation(line: 0, scope: !3526)
!3532 = !DILocalVariable(name: "s", arg: 1, scope: !3533, file: !3534, line: 55, type: !454)
!3533 = distinct !DISubprogram(name: "imalloc", scope: !3534, file: !3534, line: 55, type: !3527, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3535)
!3534 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3535 = !{!3532}
!3536 = !DILocation(line: 0, scope: !3533, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 55, column: 25, scope: !3526)
!3538 = !DILocation(line: 57, column: 26, scope: !3533, inlinedAt: !3537)
!3539 = !DILocation(line: 0, scope: !3494, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 55, column: 10, scope: !3526)
!3541 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3540)
!3542 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3540)
!3543 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3540)
!3544 = !DILocation(line: 55, column: 3, scope: !3526)
!3545 = distinct !DISubprogram(name: "xcharalloc", scope: !435, file: !435, line: 59, type: !3546, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3548)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!54, !64}
!3548 = !{!3549}
!3549 = !DILocalVariable(name: "n", arg: 1, scope: !3545, file: !435, line: 59, type: !64)
!3550 = !DILocation(line: 0, scope: !3545)
!3551 = !DILocation(line: 0, scope: !3513, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 61, column: 10, scope: !3545)
!3553 = !DILocation(line: 49, column: 25, scope: !3513, inlinedAt: !3552)
!3554 = !DILocation(line: 0, scope: !3494, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 49, column: 10, scope: !3513, inlinedAt: !3552)
!3556 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3555)
!3557 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3555)
!3558 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3555)
!3559 = !DILocation(line: 61, column: 3, scope: !3545)
!3560 = distinct !DISubprogram(name: "xrealloc", scope: !435, file: !435, line: 68, type: !3561, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3563)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!56, !56, !64}
!3563 = !{!3564, !3565}
!3564 = !DILocalVariable(name: "p", arg: 1, scope: !3560, file: !435, line: 68, type: !56)
!3565 = !DILocalVariable(name: "s", arg: 2, scope: !3560, file: !435, line: 68, type: !64)
!3566 = !DILocation(line: 0, scope: !3560)
!3567 = !DILocalVariable(name: "ptr", arg: 1, scope: !3568, file: !3569, line: 2057, type: !56)
!3568 = distinct !DISubprogram(name: "rpl_realloc", scope: !3569, file: !3569, line: 2057, type: !3561, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3570)
!3569 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3570 = !{!3567, !3571}
!3571 = !DILocalVariable(name: "size", arg: 2, scope: !3568, file: !3569, line: 2057, type: !64)
!3572 = !DILocation(line: 0, scope: !3568, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 70, column: 25, scope: !3560)
!3574 = !DILocation(line: 2059, column: 24, scope: !3568, inlinedAt: !3573)
!3575 = !DILocation(line: 2059, column: 10, scope: !3568, inlinedAt: !3573)
!3576 = !DILocation(line: 0, scope: !3494, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 70, column: 10, scope: !3560)
!3578 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3577)
!3579 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3577)
!3580 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3577)
!3581 = !DILocation(line: 70, column: 3, scope: !3560)
!3582 = distinct !DISubprogram(name: "xirealloc", scope: !435, file: !435, line: 74, type: !3583, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3585)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!56, !56, !454}
!3585 = !{!3586, !3587}
!3586 = !DILocalVariable(name: "p", arg: 1, scope: !3582, file: !435, line: 74, type: !56)
!3587 = !DILocalVariable(name: "s", arg: 2, scope: !3582, file: !435, line: 74, type: !454)
!3588 = !DILocation(line: 0, scope: !3582)
!3589 = !DILocalVariable(name: "p", arg: 1, scope: !3590, file: !3534, line: 66, type: !56)
!3590 = distinct !DISubprogram(name: "irealloc", scope: !3534, file: !3534, line: 66, type: !3583, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3591)
!3591 = !{!3589, !3592}
!3592 = !DILocalVariable(name: "s", arg: 2, scope: !3590, file: !3534, line: 66, type: !454)
!3593 = !DILocation(line: 0, scope: !3590, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 76, column: 25, scope: !3582)
!3595 = !DILocation(line: 0, scope: !3568, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 68, column: 26, scope: !3590, inlinedAt: !3594)
!3597 = !DILocation(line: 2059, column: 24, scope: !3568, inlinedAt: !3596)
!3598 = !DILocation(line: 2059, column: 10, scope: !3568, inlinedAt: !3596)
!3599 = !DILocation(line: 0, scope: !3494, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 76, column: 10, scope: !3582)
!3601 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3600)
!3602 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3600)
!3603 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3600)
!3604 = !DILocation(line: 76, column: 3, scope: !3582)
!3605 = distinct !DISubprogram(name: "xireallocarray", scope: !435, file: !435, line: 89, type: !3606, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!56, !56, !454, !454}
!3608 = !{!3609, !3610, !3611}
!3609 = !DILocalVariable(name: "p", arg: 1, scope: !3605, file: !435, line: 89, type: !56)
!3610 = !DILocalVariable(name: "n", arg: 2, scope: !3605, file: !435, line: 89, type: !454)
!3611 = !DILocalVariable(name: "s", arg: 3, scope: !3605, file: !435, line: 89, type: !454)
!3612 = !DILocation(line: 0, scope: !3605)
!3613 = !DILocalVariable(name: "p", arg: 1, scope: !3614, file: !3534, line: 98, type: !56)
!3614 = distinct !DISubprogram(name: "ireallocarray", scope: !3534, file: !3534, line: 98, type: !3606, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3615)
!3615 = !{!3613, !3616, !3617}
!3616 = !DILocalVariable(name: "n", arg: 2, scope: !3614, file: !3534, line: 98, type: !454)
!3617 = !DILocalVariable(name: "s", arg: 3, scope: !3614, file: !3534, line: 98, type: !454)
!3618 = !DILocation(line: 0, scope: !3614, inlinedAt: !3619)
!3619 = distinct !DILocation(line: 91, column: 25, scope: !3605)
!3620 = !DILocation(line: 101, column: 13, scope: !3614, inlinedAt: !3619)
!3621 = !DILocation(line: 0, scope: !3494, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 91, column: 10, scope: !3605)
!3623 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3622)
!3624 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3622)
!3625 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3622)
!3626 = !DILocation(line: 91, column: 3, scope: !3605)
!3627 = distinct !DISubprogram(name: "xnmalloc", scope: !435, file: !435, line: 98, type: !3628, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3630)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!56, !64, !64}
!3630 = !{!3631, !3632}
!3631 = !DILocalVariable(name: "n", arg: 1, scope: !3627, file: !435, line: 98, type: !64)
!3632 = !DILocalVariable(name: "s", arg: 2, scope: !3627, file: !435, line: 98, type: !64)
!3633 = !DILocation(line: 0, scope: !3627)
!3634 = !DILocation(line: 0, scope: !3486, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 100, column: 10, scope: !3627)
!3636 = !DILocation(line: 85, column: 25, scope: !3486, inlinedAt: !3635)
!3637 = !DILocation(line: 0, scope: !3494, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 85, column: 10, scope: !3486, inlinedAt: !3635)
!3639 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3638)
!3640 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3638)
!3641 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3638)
!3642 = !DILocation(line: 100, column: 3, scope: !3627)
!3643 = distinct !DISubprogram(name: "xinmalloc", scope: !435, file: !435, line: 104, type: !3644, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3646)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!56, !454, !454}
!3646 = !{!3647, !3648}
!3647 = !DILocalVariable(name: "n", arg: 1, scope: !3643, file: !435, line: 104, type: !454)
!3648 = !DILocalVariable(name: "s", arg: 2, scope: !3643, file: !435, line: 104, type: !454)
!3649 = !DILocation(line: 0, scope: !3643)
!3650 = !DILocation(line: 0, scope: !3605, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 106, column: 10, scope: !3643)
!3652 = !DILocation(line: 0, scope: !3614, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 91, column: 25, scope: !3605, inlinedAt: !3651)
!3654 = !DILocation(line: 101, column: 13, scope: !3614, inlinedAt: !3653)
!3655 = !DILocation(line: 0, scope: !3494, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 91, column: 10, scope: !3605, inlinedAt: !3651)
!3657 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3656)
!3658 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3656)
!3659 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3656)
!3660 = !DILocation(line: 106, column: 3, scope: !3643)
!3661 = distinct !DISubprogram(name: "x2realloc", scope: !435, file: !435, line: 116, type: !3662, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3664)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!56, !56, !441}
!3664 = !{!3665, !3666}
!3665 = !DILocalVariable(name: "p", arg: 1, scope: !3661, file: !435, line: 116, type: !56)
!3666 = !DILocalVariable(name: "ps", arg: 2, scope: !3661, file: !435, line: 116, type: !441)
!3667 = !DILocation(line: 0, scope: !3661)
!3668 = !DILocation(line: 0, scope: !438, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 118, column: 10, scope: !3661)
!3670 = !DILocation(line: 178, column: 14, scope: !438, inlinedAt: !3669)
!3671 = !DILocation(line: 180, column: 9, scope: !3672, inlinedAt: !3669)
!3672 = distinct !DILexicalBlock(scope: !438, file: !435, line: 180, column: 7)
!3673 = !DILocation(line: 180, column: 7, scope: !438, inlinedAt: !3669)
!3674 = !DILocation(line: 182, column: 13, scope: !3675, inlinedAt: !3669)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !435, line: 182, column: 11)
!3676 = distinct !DILexicalBlock(scope: !3672, file: !435, line: 181, column: 5)
!3677 = !DILocation(line: 182, column: 11, scope: !3676, inlinedAt: !3669)
!3678 = !DILocation(line: 197, column: 11, scope: !3679, inlinedAt: !3669)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !435, line: 197, column: 11)
!3680 = distinct !DILexicalBlock(scope: !3672, file: !435, line: 195, column: 5)
!3681 = !DILocation(line: 197, column: 11, scope: !3680, inlinedAt: !3669)
!3682 = !DILocation(line: 198, column: 9, scope: !3679, inlinedAt: !3669)
!3683 = !DILocation(line: 0, scope: !3486, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 201, column: 7, scope: !438, inlinedAt: !3669)
!3685 = !DILocation(line: 85, column: 25, scope: !3486, inlinedAt: !3684)
!3686 = !DILocation(line: 0, scope: !3494, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 85, column: 10, scope: !3486, inlinedAt: !3684)
!3688 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3687)
!3689 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3687)
!3690 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3687)
!3691 = !DILocation(line: 202, column: 7, scope: !438, inlinedAt: !3669)
!3692 = !DILocation(line: 118, column: 3, scope: !3661)
!3693 = !DILocation(line: 0, scope: !438)
!3694 = !DILocation(line: 178, column: 14, scope: !438)
!3695 = !DILocation(line: 180, column: 9, scope: !3672)
!3696 = !DILocation(line: 180, column: 7, scope: !438)
!3697 = !DILocation(line: 182, column: 13, scope: !3675)
!3698 = !DILocation(line: 182, column: 11, scope: !3676)
!3699 = !DILocation(line: 190, column: 30, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3675, file: !435, line: 183, column: 9)
!3701 = !DILocation(line: 191, column: 16, scope: !3700)
!3702 = !DILocation(line: 191, column: 13, scope: !3700)
!3703 = !DILocation(line: 192, column: 9, scope: !3700)
!3704 = !DILocation(line: 197, column: 11, scope: !3679)
!3705 = !DILocation(line: 197, column: 11, scope: !3680)
!3706 = !DILocation(line: 198, column: 9, scope: !3679)
!3707 = !DILocation(line: 0, scope: !3486, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 201, column: 7, scope: !438)
!3709 = !DILocation(line: 85, column: 25, scope: !3486, inlinedAt: !3708)
!3710 = !DILocation(line: 0, scope: !3494, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 85, column: 10, scope: !3486, inlinedAt: !3708)
!3712 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3711)
!3713 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3711)
!3714 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3711)
!3715 = !DILocation(line: 202, column: 7, scope: !438)
!3716 = !DILocation(line: 203, column: 3, scope: !438)
!3717 = !DILocation(line: 0, scope: !450)
!3718 = !DILocation(line: 230, column: 14, scope: !450)
!3719 = !DILocation(line: 238, column: 7, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !450, file: !435, line: 238, column: 7)
!3721 = !DILocation(line: 238, column: 7, scope: !450)
!3722 = !DILocation(line: 240, column: 9, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !450, file: !435, line: 240, column: 7)
!3724 = !DILocation(line: 240, column: 18, scope: !3723)
!3725 = !DILocation(line: 253, column: 8, scope: !450)
!3726 = !DILocation(line: 258, column: 27, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3728, file: !435, line: 257, column: 5)
!3728 = distinct !DILexicalBlock(scope: !450, file: !435, line: 256, column: 7)
!3729 = !DILocation(line: 259, column: 32, scope: !3727)
!3730 = !DILocation(line: 260, column: 5, scope: !3727)
!3731 = !DILocation(line: 262, column: 9, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !450, file: !435, line: 262, column: 7)
!3733 = !DILocation(line: 262, column: 7, scope: !450)
!3734 = !DILocation(line: 263, column: 9, scope: !3732)
!3735 = !DILocation(line: 263, column: 5, scope: !3732)
!3736 = !DILocation(line: 264, column: 9, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !450, file: !435, line: 264, column: 7)
!3738 = !DILocation(line: 264, column: 14, scope: !3737)
!3739 = !DILocation(line: 265, column: 7, scope: !3737)
!3740 = !DILocation(line: 265, column: 11, scope: !3737)
!3741 = !DILocation(line: 266, column: 11, scope: !3737)
!3742 = !DILocation(line: 266, column: 26, scope: !3737)
!3743 = !DILocation(line: 267, column: 14, scope: !3737)
!3744 = !DILocation(line: 264, column: 7, scope: !450)
!3745 = !DILocation(line: 268, column: 5, scope: !3737)
!3746 = !DILocation(line: 0, scope: !3560, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 269, column: 8, scope: !450)
!3748 = !DILocation(line: 0, scope: !3568, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 70, column: 25, scope: !3560, inlinedAt: !3747)
!3750 = !DILocation(line: 2059, column: 24, scope: !3568, inlinedAt: !3749)
!3751 = !DILocation(line: 2059, column: 10, scope: !3568, inlinedAt: !3749)
!3752 = !DILocation(line: 0, scope: !3494, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 70, column: 10, scope: !3560, inlinedAt: !3747)
!3754 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3753)
!3755 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3753)
!3756 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3753)
!3757 = !DILocation(line: 270, column: 7, scope: !450)
!3758 = !DILocation(line: 271, column: 3, scope: !450)
!3759 = distinct !DISubprogram(name: "xzalloc", scope: !435, file: !435, line: 279, type: !3514, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3760)
!3760 = !{!3761}
!3761 = !DILocalVariable(name: "s", arg: 1, scope: !3759, file: !435, line: 279, type: !64)
!3762 = !DILocation(line: 0, scope: !3759)
!3763 = !DILocalVariable(name: "n", arg: 1, scope: !3764, file: !435, line: 294, type: !64)
!3764 = distinct !DISubprogram(name: "xcalloc", scope: !435, file: !435, line: 294, type: !3628, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3765)
!3765 = !{!3763, !3766}
!3766 = !DILocalVariable(name: "s", arg: 2, scope: !3764, file: !435, line: 294, type: !64)
!3767 = !DILocation(line: 0, scope: !3764, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 281, column: 10, scope: !3759)
!3769 = !DILocation(line: 296, column: 25, scope: !3764, inlinedAt: !3768)
!3770 = !DILocation(line: 0, scope: !3494, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 296, column: 10, scope: !3764, inlinedAt: !3768)
!3772 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3771)
!3773 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3771)
!3774 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3771)
!3775 = !DILocation(line: 281, column: 3, scope: !3759)
!3776 = !DILocation(line: 0, scope: !3764)
!3777 = !DILocation(line: 296, column: 25, scope: !3764)
!3778 = !DILocation(line: 0, scope: !3494, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 296, column: 10, scope: !3764)
!3780 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3779)
!3781 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3779)
!3782 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3779)
!3783 = !DILocation(line: 296, column: 3, scope: !3764)
!3784 = distinct !DISubprogram(name: "xizalloc", scope: !435, file: !435, line: 285, type: !3527, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3785)
!3785 = !{!3786}
!3786 = !DILocalVariable(name: "s", arg: 1, scope: !3784, file: !435, line: 285, type: !454)
!3787 = !DILocation(line: 0, scope: !3784)
!3788 = !DILocalVariable(name: "n", arg: 1, scope: !3789, file: !435, line: 300, type: !454)
!3789 = distinct !DISubprogram(name: "xicalloc", scope: !435, file: !435, line: 300, type: !3644, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3790)
!3790 = !{!3788, !3791}
!3791 = !DILocalVariable(name: "s", arg: 2, scope: !3789, file: !435, line: 300, type: !454)
!3792 = !DILocation(line: 0, scope: !3789, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 287, column: 10, scope: !3784)
!3794 = !DILocalVariable(name: "n", arg: 1, scope: !3795, file: !3534, line: 77, type: !454)
!3795 = distinct !DISubprogram(name: "icalloc", scope: !3534, file: !3534, line: 77, type: !3644, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3796)
!3796 = !{!3794, !3797}
!3797 = !DILocalVariable(name: "s", arg: 2, scope: !3795, file: !3534, line: 77, type: !454)
!3798 = !DILocation(line: 0, scope: !3795, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 302, column: 25, scope: !3789, inlinedAt: !3793)
!3800 = !DILocation(line: 91, column: 10, scope: !3795, inlinedAt: !3799)
!3801 = !DILocation(line: 0, scope: !3494, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 302, column: 10, scope: !3789, inlinedAt: !3793)
!3803 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3802)
!3804 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3802)
!3805 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3802)
!3806 = !DILocation(line: 287, column: 3, scope: !3784)
!3807 = !DILocation(line: 0, scope: !3789)
!3808 = !DILocation(line: 0, scope: !3795, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 302, column: 25, scope: !3789)
!3810 = !DILocation(line: 91, column: 10, scope: !3795, inlinedAt: !3809)
!3811 = !DILocation(line: 0, scope: !3494, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 302, column: 10, scope: !3789)
!3813 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3812)
!3814 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3812)
!3815 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3812)
!3816 = !DILocation(line: 302, column: 3, scope: !3789)
!3817 = distinct !DISubprogram(name: "xmemdup", scope: !435, file: !435, line: 310, type: !3818, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!56, !52, !64}
!3820 = !{!3821, !3822}
!3821 = !DILocalVariable(name: "p", arg: 1, scope: !3817, file: !435, line: 310, type: !52)
!3822 = !DILocalVariable(name: "s", arg: 2, scope: !3817, file: !435, line: 310, type: !64)
!3823 = !DILocation(line: 0, scope: !3817)
!3824 = !DILocation(line: 0, scope: !3513, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 312, column: 18, scope: !3817)
!3826 = !DILocation(line: 49, column: 25, scope: !3513, inlinedAt: !3825)
!3827 = !DILocation(line: 0, scope: !3494, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 49, column: 10, scope: !3513, inlinedAt: !3825)
!3829 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3828)
!3830 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3828)
!3831 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3828)
!3832 = !DILocalVariable(name: "__dest", arg: 1, scope: !3833, file: !1989, line: 26, type: !3836)
!3833 = distinct !DISubprogram(name: "memcpy", scope: !1989, file: !1989, line: 26, type: !3834, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3837)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!56, !3836, !718, !64}
!3836 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !56)
!3837 = !{!3832, !3838, !3839}
!3838 = !DILocalVariable(name: "__src", arg: 2, scope: !3833, file: !1989, line: 26, type: !718)
!3839 = !DILocalVariable(name: "__len", arg: 3, scope: !3833, file: !1989, line: 26, type: !64)
!3840 = !DILocation(line: 0, scope: !3833, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 312, column: 10, scope: !3817)
!3842 = !DILocation(line: 29, column: 10, scope: !3833, inlinedAt: !3841)
!3843 = !DILocation(line: 312, column: 3, scope: !3817)
!3844 = distinct !DISubprogram(name: "ximemdup", scope: !435, file: !435, line: 316, type: !3845, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3847)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!56, !52, !454}
!3847 = !{!3848, !3849}
!3848 = !DILocalVariable(name: "p", arg: 1, scope: !3844, file: !435, line: 316, type: !52)
!3849 = !DILocalVariable(name: "s", arg: 2, scope: !3844, file: !435, line: 316, type: !454)
!3850 = !DILocation(line: 0, scope: !3844)
!3851 = !DILocation(line: 0, scope: !3526, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 318, column: 18, scope: !3844)
!3853 = !DILocation(line: 0, scope: !3533, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 55, column: 25, scope: !3526, inlinedAt: !3852)
!3855 = !DILocation(line: 57, column: 26, scope: !3533, inlinedAt: !3854)
!3856 = !DILocation(line: 0, scope: !3494, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 55, column: 10, scope: !3526, inlinedAt: !3852)
!3858 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3857)
!3859 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3857)
!3860 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3857)
!3861 = !DILocation(line: 0, scope: !3833, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 318, column: 10, scope: !3844)
!3863 = !DILocation(line: 29, column: 10, scope: !3833, inlinedAt: !3862)
!3864 = !DILocation(line: 318, column: 3, scope: !3844)
!3865 = distinct !DISubprogram(name: "ximemdup0", scope: !435, file: !435, line: 325, type: !3866, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3868)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!54, !52, !454}
!3868 = !{!3869, !3870, !3871}
!3869 = !DILocalVariable(name: "p", arg: 1, scope: !3865, file: !435, line: 325, type: !52)
!3870 = !DILocalVariable(name: "s", arg: 2, scope: !3865, file: !435, line: 325, type: !454)
!3871 = !DILocalVariable(name: "result", scope: !3865, file: !435, line: 327, type: !54)
!3872 = !DILocation(line: 0, scope: !3865)
!3873 = !DILocation(line: 327, column: 30, scope: !3865)
!3874 = !DILocation(line: 0, scope: !3526, inlinedAt: !3875)
!3875 = distinct !DILocation(line: 327, column: 18, scope: !3865)
!3876 = !DILocation(line: 0, scope: !3533, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 55, column: 25, scope: !3526, inlinedAt: !3875)
!3878 = !DILocation(line: 57, column: 26, scope: !3533, inlinedAt: !3877)
!3879 = !DILocation(line: 0, scope: !3494, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 55, column: 10, scope: !3526, inlinedAt: !3875)
!3881 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3880)
!3882 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3880)
!3883 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3880)
!3884 = !DILocation(line: 328, column: 3, scope: !3865)
!3885 = !DILocation(line: 328, column: 13, scope: !3865)
!3886 = !DILocation(line: 0, scope: !3833, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 329, column: 10, scope: !3865)
!3888 = !DILocation(line: 29, column: 10, scope: !3833, inlinedAt: !3887)
!3889 = !DILocation(line: 329, column: 3, scope: !3865)
!3890 = distinct !DISubprogram(name: "xstrdup", scope: !435, file: !435, line: 335, type: !713, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !3891)
!3891 = !{!3892}
!3892 = !DILocalVariable(name: "string", arg: 1, scope: !3890, file: !435, line: 335, type: !67)
!3893 = !DILocation(line: 0, scope: !3890)
!3894 = !DILocation(line: 337, column: 27, scope: !3890)
!3895 = !DILocation(line: 337, column: 43, scope: !3890)
!3896 = !DILocation(line: 0, scope: !3817, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 337, column: 10, scope: !3890)
!3898 = !DILocation(line: 0, scope: !3513, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 312, column: 18, scope: !3817, inlinedAt: !3897)
!3900 = !DILocation(line: 49, column: 25, scope: !3513, inlinedAt: !3899)
!3901 = !DILocation(line: 0, scope: !3494, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 49, column: 10, scope: !3513, inlinedAt: !3899)
!3903 = !DILocation(line: 39, column: 8, scope: !3501, inlinedAt: !3902)
!3904 = !DILocation(line: 39, column: 7, scope: !3494, inlinedAt: !3902)
!3905 = !DILocation(line: 40, column: 5, scope: !3501, inlinedAt: !3902)
!3906 = !DILocation(line: 0, scope: !3833, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 312, column: 10, scope: !3817, inlinedAt: !3897)
!3908 = !DILocation(line: 29, column: 10, scope: !3833, inlinedAt: !3907)
!3909 = !DILocation(line: 337, column: 3, scope: !3890)
!3910 = distinct !DISubprogram(name: "xalloc_die", scope: !469, file: !469, line: 32, type: !205, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3911)
!3911 = !{!3912}
!3912 = !DILocalVariable(name: "__errstatus", scope: !3913, file: !469, line: 34, type: !801)
!3913 = distinct !DILexicalBlock(scope: !3910, file: !469, line: 34, column: 3)
!3914 = !DILocation(line: 34, column: 3, scope: !3913)
!3915 = !DILocation(line: 0, scope: !3913)
!3916 = !DILocation(line: 40, column: 3, scope: !3910)
!3917 = distinct !DISubprogram(name: "close_stream", scope: !471, file: !471, line: 55, type: !3918, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !3954)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!62, !3920}
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !3922)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !3923)
!3923 = !{!3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3922, file: !107, line: 51, baseType: !62, size: 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3922, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3922, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3922, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3922, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3922, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3922, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3922, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3922, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3922, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3922, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3922, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3922, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3922, file: !107, line: 70, baseType: !3938, size: 64, offset: 832)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3922, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3922, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3922, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3922, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3922, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3922, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3922, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3922, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3922, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3922, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3922, file: !107, line: 93, baseType: !3938, size: 64, offset: 1344)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3922, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3922, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3922, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3922, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!3954 = !{!3955, !3956, !3958, !3959}
!3955 = !DILocalVariable(name: "stream", arg: 1, scope: !3917, file: !471, line: 55, type: !3920)
!3956 = !DILocalVariable(name: "some_pending", scope: !3917, file: !471, line: 57, type: !3957)
!3957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!3958 = !DILocalVariable(name: "prev_fail", scope: !3917, file: !471, line: 58, type: !3957)
!3959 = !DILocalVariable(name: "fclose_fail", scope: !3917, file: !471, line: 59, type: !3957)
!3960 = !DILocation(line: 0, scope: !3917)
!3961 = !DILocation(line: 57, column: 30, scope: !3917)
!3962 = !DILocalVariable(name: "__stream", arg: 1, scope: !3963, file: !1368, line: 135, type: !3920)
!3963 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1368, file: !1368, line: 135, type: !3918, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !3964)
!3964 = !{!3962}
!3965 = !DILocation(line: 0, scope: !3963, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 58, column: 27, scope: !3917)
!3967 = !DILocation(line: 137, column: 10, scope: !3963, inlinedAt: !3966)
!3968 = !{!1411, !602, i64 0}
!3969 = !DILocation(line: 58, column: 43, scope: !3917)
!3970 = !DILocation(line: 59, column: 29, scope: !3917)
!3971 = !DILocation(line: 59, column: 45, scope: !3917)
!3972 = !DILocation(line: 69, column: 17, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3917, file: !471, line: 69, column: 7)
!3974 = !DILocation(line: 57, column: 50, scope: !3917)
!3975 = !DILocation(line: 69, column: 33, scope: !3973)
!3976 = !DILocation(line: 69, column: 53, scope: !3973)
!3977 = !DILocation(line: 69, column: 59, scope: !3973)
!3978 = !DILocation(line: 69, column: 7, scope: !3917)
!3979 = !DILocation(line: 71, column: 11, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3973, file: !471, line: 70, column: 5)
!3981 = !DILocation(line: 72, column: 9, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3980, file: !471, line: 71, column: 11)
!3983 = !DILocation(line: 72, column: 15, scope: !3982)
!3984 = !DILocation(line: 77, column: 1, scope: !3917)
!3985 = distinct !DISubprogram(name: "rpl_fclose", scope: !473, file: !473, line: 58, type: !3986, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !4022)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!62, !3988}
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !3990)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !3991)
!3991 = !{!3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3990, file: !107, line: 51, baseType: !62, size: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3990, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3990, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3990, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3990, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3990, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3990, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3990, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3990, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3990, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3990, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3990, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3990, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3990, file: !107, line: 70, baseType: !4006, size: 64, offset: 832)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3990, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3990, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3990, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3990, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3990, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3990, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3990, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3990, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3990, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3990, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3990, file: !107, line: 93, baseType: !4006, size: 64, offset: 1344)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3990, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3990, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3990, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3990, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!4022 = !{!4023, !4024, !4025, !4026}
!4023 = !DILocalVariable(name: "fp", arg: 1, scope: !3985, file: !473, line: 58, type: !3988)
!4024 = !DILocalVariable(name: "saved_errno", scope: !3985, file: !473, line: 60, type: !62)
!4025 = !DILocalVariable(name: "fd", scope: !3985, file: !473, line: 63, type: !62)
!4026 = !DILocalVariable(name: "result", scope: !3985, file: !473, line: 74, type: !62)
!4027 = !DILocation(line: 0, scope: !3985)
!4028 = !DILocation(line: 63, column: 12, scope: !3985)
!4029 = !DILocation(line: 64, column: 10, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3985, file: !473, line: 64, column: 7)
!4031 = !DILocation(line: 64, column: 7, scope: !3985)
!4032 = !DILocation(line: 65, column: 12, scope: !4030)
!4033 = !DILocation(line: 65, column: 5, scope: !4030)
!4034 = !DILocation(line: 70, column: 9, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !3985, file: !473, line: 70, column: 7)
!4036 = !DILocation(line: 70, column: 23, scope: !4035)
!4037 = !DILocation(line: 70, column: 33, scope: !4035)
!4038 = !DILocation(line: 70, column: 26, scope: !4035)
!4039 = !DILocation(line: 70, column: 59, scope: !4035)
!4040 = !DILocation(line: 71, column: 7, scope: !4035)
!4041 = !DILocation(line: 71, column: 10, scope: !4035)
!4042 = !DILocation(line: 70, column: 7, scope: !3985)
!4043 = !DILocation(line: 100, column: 12, scope: !3985)
!4044 = !DILocation(line: 105, column: 7, scope: !3985)
!4045 = !DILocation(line: 72, column: 19, scope: !4035)
!4046 = !DILocation(line: 105, column: 19, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !3985, file: !473, line: 105, column: 7)
!4048 = !DILocation(line: 107, column: 13, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4047, file: !473, line: 106, column: 5)
!4050 = !DILocation(line: 109, column: 5, scope: !4049)
!4051 = !DILocation(line: 112, column: 1, scope: !3985)
!4052 = !DISubprogram(name: "fclose", scope: !226, file: !226, line: 178, type: !3986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!4053 = !DISubprogram(name: "lseek", scope: !1035, file: !1035, line: 339, type: !4054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!129, !62, !129, !62}
!4056 = distinct !DISubprogram(name: "rpl_fflush", scope: !475, file: !475, line: 130, type: !4057, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !4093)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!62, !4059}
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !4061)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !4062)
!4062 = !{!4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4061, file: !107, line: 51, baseType: !62, size: 32)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4061, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4061, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4061, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4061, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4061, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4061, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4061, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4061, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4061, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4061, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4061, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4061, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4061, file: !107, line: 70, baseType: !4077, size: 64, offset: 832)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4061, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4061, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4061, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4061, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4061, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4061, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4061, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4061, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4061, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4061, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4061, file: !107, line: 93, baseType: !4077, size: 64, offset: 1344)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4061, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4061, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4061, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4061, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!4093 = !{!4094}
!4094 = !DILocalVariable(name: "stream", arg: 1, scope: !4056, file: !475, line: 130, type: !4059)
!4095 = !DILocation(line: 0, scope: !4056)
!4096 = !DILocation(line: 151, column: 14, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4056, file: !475, line: 151, column: 7)
!4098 = !DILocation(line: 151, column: 22, scope: !4097)
!4099 = !DILocation(line: 151, column: 27, scope: !4097)
!4100 = !DILocation(line: 151, column: 7, scope: !4056)
!4101 = !DILocation(line: 152, column: 12, scope: !4097)
!4102 = !DILocation(line: 152, column: 5, scope: !4097)
!4103 = !DILocalVariable(name: "fp", arg: 1, scope: !4104, file: !475, line: 42, type: !4059)
!4104 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !475, file: !475, line: 42, type: !4105, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !4107)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{null, !4059}
!4107 = !{!4103}
!4108 = !DILocation(line: 0, scope: !4104, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 157, column: 3, scope: !4056)
!4110 = !DILocation(line: 44, column: 12, scope: !4111, inlinedAt: !4109)
!4111 = distinct !DILexicalBlock(scope: !4104, file: !475, line: 44, column: 7)
!4112 = !DILocation(line: 44, column: 19, scope: !4111, inlinedAt: !4109)
!4113 = !DILocation(line: 44, column: 7, scope: !4104, inlinedAt: !4109)
!4114 = !DILocation(line: 46, column: 5, scope: !4111, inlinedAt: !4109)
!4115 = !DILocation(line: 159, column: 10, scope: !4056)
!4116 = !DILocation(line: 159, column: 3, scope: !4056)
!4117 = !DILocation(line: 236, column: 1, scope: !4056)
!4118 = !DISubprogram(name: "fflush", scope: !226, file: !226, line: 230, type: !4057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!4119 = distinct !DISubprogram(name: "rpl_fseeko", scope: !477, file: !477, line: 28, type: !4120, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !4156)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!62, !4122, !1789, !62}
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 7, baseType: !4124)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !107, line: 49, size: 1728, elements: !4125)
!4125 = !{!4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4124, file: !107, line: 51, baseType: !62, size: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4124, file: !107, line: 54, baseType: !54, size: 64, offset: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4124, file: !107, line: 55, baseType: !54, size: 64, offset: 128)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4124, file: !107, line: 56, baseType: !54, size: 64, offset: 192)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4124, file: !107, line: 57, baseType: !54, size: 64, offset: 256)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4124, file: !107, line: 58, baseType: !54, size: 64, offset: 320)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4124, file: !107, line: 59, baseType: !54, size: 64, offset: 384)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4124, file: !107, line: 60, baseType: !54, size: 64, offset: 448)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4124, file: !107, line: 61, baseType: !54, size: 64, offset: 512)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4124, file: !107, line: 64, baseType: !54, size: 64, offset: 576)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4124, file: !107, line: 65, baseType: !54, size: 64, offset: 640)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4124, file: !107, line: 66, baseType: !54, size: 64, offset: 704)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4124, file: !107, line: 68, baseType: !122, size: 64, offset: 768)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4124, file: !107, line: 70, baseType: !4140, size: 64, offset: 832)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4124, file: !107, line: 72, baseType: !62, size: 32, offset: 896)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4124, file: !107, line: 73, baseType: !62, size: 32, offset: 928)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4124, file: !107, line: 74, baseType: !129, size: 64, offset: 960)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4124, file: !107, line: 77, baseType: !63, size: 16, offset: 1024)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4124, file: !107, line: 78, baseType: !134, size: 8, offset: 1040)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4124, file: !107, line: 79, baseType: !136, size: 8, offset: 1048)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4124, file: !107, line: 81, baseType: !140, size: 64, offset: 1088)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4124, file: !107, line: 89, baseType: !143, size: 64, offset: 1152)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4124, file: !107, line: 91, baseType: !145, size: 64, offset: 1216)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4124, file: !107, line: 92, baseType: !148, size: 64, offset: 1280)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4124, file: !107, line: 93, baseType: !4140, size: 64, offset: 1344)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4124, file: !107, line: 94, baseType: !56, size: 64, offset: 1408)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4124, file: !107, line: 95, baseType: !64, size: 64, offset: 1472)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4124, file: !107, line: 96, baseType: !62, size: 32, offset: 1536)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4124, file: !107, line: 98, baseType: !155, size: 160, offset: 1568)
!4156 = !{!4157, !4158, !4159, !4160}
!4157 = !DILocalVariable(name: "fp", arg: 1, scope: !4119, file: !477, line: 28, type: !4122)
!4158 = !DILocalVariable(name: "offset", arg: 2, scope: !4119, file: !477, line: 28, type: !1789)
!4159 = !DILocalVariable(name: "whence", arg: 3, scope: !4119, file: !477, line: 28, type: !62)
!4160 = !DILocalVariable(name: "pos", scope: !4161, file: !477, line: 123, type: !1789)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !477, line: 119, column: 5)
!4162 = distinct !DILexicalBlock(scope: !4119, file: !477, line: 55, column: 7)
!4163 = !DILocation(line: 0, scope: !4119)
!4164 = !DILocation(line: 55, column: 12, scope: !4162)
!4165 = !{!1411, !511, i64 16}
!4166 = !DILocation(line: 55, column: 33, scope: !4162)
!4167 = !{!1411, !511, i64 8}
!4168 = !DILocation(line: 55, column: 25, scope: !4162)
!4169 = !DILocation(line: 56, column: 7, scope: !4162)
!4170 = !DILocation(line: 56, column: 15, scope: !4162)
!4171 = !DILocation(line: 56, column: 37, scope: !4162)
!4172 = !{!1411, !511, i64 32}
!4173 = !DILocation(line: 56, column: 29, scope: !4162)
!4174 = !DILocation(line: 57, column: 7, scope: !4162)
!4175 = !DILocation(line: 57, column: 15, scope: !4162)
!4176 = !{!1411, !511, i64 72}
!4177 = !DILocation(line: 57, column: 29, scope: !4162)
!4178 = !DILocation(line: 55, column: 7, scope: !4119)
!4179 = !DILocation(line: 123, column: 26, scope: !4161)
!4180 = !DILocation(line: 123, column: 19, scope: !4161)
!4181 = !DILocation(line: 0, scope: !4161)
!4182 = !DILocation(line: 124, column: 15, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4161, file: !477, line: 124, column: 11)
!4184 = !DILocation(line: 124, column: 11, scope: !4161)
!4185 = !DILocation(line: 135, column: 12, scope: !4161)
!4186 = !DILocation(line: 135, column: 19, scope: !4161)
!4187 = !DILocation(line: 136, column: 12, scope: !4161)
!4188 = !DILocation(line: 136, column: 20, scope: !4161)
!4189 = !{!1411, !1168, i64 144}
!4190 = !DILocation(line: 167, column: 7, scope: !4161)
!4191 = !DILocation(line: 169, column: 10, scope: !4119)
!4192 = !DILocation(line: 169, column: 3, scope: !4119)
!4193 = !DILocation(line: 170, column: 1, scope: !4119)
!4194 = !DISubprogram(name: "fseeko", scope: !226, file: !226, line: 736, type: !4195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!62, !4122, !129, !62}
!4197 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !383, file: !383, line: 100, type: !4198, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4201)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!64, !2007, !67, !64, !4200}
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!4201 = !{!4202, !4203, !4204, !4205, !4206}
!4202 = !DILocalVariable(name: "pwc", arg: 1, scope: !4197, file: !383, line: 100, type: !2007)
!4203 = !DILocalVariable(name: "s", arg: 2, scope: !4197, file: !383, line: 100, type: !67)
!4204 = !DILocalVariable(name: "n", arg: 3, scope: !4197, file: !383, line: 100, type: !64)
!4205 = !DILocalVariable(name: "ps", arg: 4, scope: !4197, file: !383, line: 100, type: !4200)
!4206 = !DILocalVariable(name: "ret", scope: !4197, file: !383, line: 130, type: !64)
!4207 = !DILocation(line: 0, scope: !4197)
!4208 = !DILocation(line: 105, column: 9, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4197, file: !383, line: 105, column: 7)
!4210 = !DILocation(line: 105, column: 7, scope: !4197)
!4211 = !DILocation(line: 117, column: 10, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4197, file: !383, line: 117, column: 7)
!4213 = !DILocation(line: 117, column: 7, scope: !4197)
!4214 = !DILocation(line: 130, column: 16, scope: !4197)
!4215 = !DILocation(line: 135, column: 11, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4197, file: !383, line: 135, column: 7)
!4217 = !DILocation(line: 135, column: 25, scope: !4216)
!4218 = !DILocation(line: 135, column: 30, scope: !4216)
!4219 = !DILocation(line: 135, column: 7, scope: !4197)
!4220 = !DILocalVariable(name: "ps", arg: 1, scope: !4221, file: !1980, line: 1135, type: !4200)
!4221 = distinct !DISubprogram(name: "mbszero", scope: !1980, file: !1980, line: 1135, type: !4222, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4224)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{null, !4200}
!4224 = !{!4220}
!4225 = !DILocation(line: 0, scope: !4221, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 137, column: 5, scope: !4216)
!4227 = !DILocalVariable(name: "__dest", arg: 1, scope: !4228, file: !1989, line: 57, type: !56)
!4228 = distinct !DISubprogram(name: "memset", scope: !1989, file: !1989, line: 57, type: !1990, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4229)
!4229 = !{!4227, !4230, !4231}
!4230 = !DILocalVariable(name: "__ch", arg: 2, scope: !4228, file: !1989, line: 57, type: !62)
!4231 = !DILocalVariable(name: "__len", arg: 3, scope: !4228, file: !1989, line: 57, type: !64)
!4232 = !DILocation(line: 0, scope: !4228, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 1137, column: 3, scope: !4221, inlinedAt: !4226)
!4234 = !DILocation(line: 59, column: 10, scope: !4228, inlinedAt: !4233)
!4235 = !DILocation(line: 137, column: 5, scope: !4216)
!4236 = !DILocation(line: 138, column: 11, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4197, file: !383, line: 138, column: 7)
!4238 = !DILocation(line: 138, column: 7, scope: !4197)
!4239 = !DILocation(line: 139, column: 5, scope: !4237)
!4240 = !DILocation(line: 143, column: 26, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4197, file: !383, line: 143, column: 7)
!4242 = !DILocation(line: 143, column: 41, scope: !4241)
!4243 = !DILocation(line: 143, column: 7, scope: !4197)
!4244 = !DILocation(line: 145, column: 15, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !383, line: 145, column: 11)
!4246 = distinct !DILexicalBlock(scope: !4241, file: !383, line: 144, column: 5)
!4247 = !DILocation(line: 145, column: 11, scope: !4246)
!4248 = !DILocation(line: 146, column: 32, scope: !4245)
!4249 = !DILocation(line: 146, column: 16, scope: !4245)
!4250 = !DILocation(line: 146, column: 14, scope: !4245)
!4251 = !DILocation(line: 146, column: 9, scope: !4245)
!4252 = !DILocation(line: 286, column: 1, scope: !4197)
!4253 = !DISubprogram(name: "mbsinit", scope: !4254, file: !4254, line: 293, type: !4255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !593)
!4254 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!62, !4257}
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!4259 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !479, file: !479, line: 27, type: !3478, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4260)
!4260 = !{!4261, !4262, !4263, !4264}
!4261 = !DILocalVariable(name: "ptr", arg: 1, scope: !4259, file: !479, line: 27, type: !56)
!4262 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4259, file: !479, line: 27, type: !64)
!4263 = !DILocalVariable(name: "size", arg: 3, scope: !4259, file: !479, line: 27, type: !64)
!4264 = !DILocalVariable(name: "nbytes", scope: !4259, file: !479, line: 29, type: !64)
!4265 = !DILocation(line: 0, scope: !4259)
!4266 = !DILocation(line: 30, column: 7, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4259, file: !479, line: 30, column: 7)
!4268 = !DILocalVariable(name: "ptr", arg: 1, scope: !4269, file: !3569, line: 2057, type: !56)
!4269 = distinct !DISubprogram(name: "rpl_realloc", scope: !3569, file: !3569, line: 2057, type: !3561, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4270)
!4270 = !{!4268, !4271}
!4271 = !DILocalVariable(name: "size", arg: 2, scope: !4269, file: !3569, line: 2057, type: !64)
!4272 = !DILocation(line: 0, scope: !4269, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 37, column: 10, scope: !4259)
!4274 = !DILocation(line: 2059, column: 24, scope: !4269, inlinedAt: !4273)
!4275 = !DILocation(line: 2059, column: 10, scope: !4269, inlinedAt: !4273)
!4276 = !DILocation(line: 37, column: 3, scope: !4259)
!4277 = !DILocation(line: 32, column: 7, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4267, file: !479, line: 31, column: 5)
!4279 = !DILocation(line: 32, column: 13, scope: !4278)
!4280 = !DILocation(line: 33, column: 7, scope: !4278)
!4281 = !DILocation(line: 38, column: 1, scope: !4259)
!4282 = distinct !DISubprogram(name: "dup_safer", scope: !482, file: !482, line: 31, type: !1036, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !4283)
!4283 = !{!4284}
!4284 = !DILocalVariable(name: "fd", arg: 1, scope: !4282, file: !482, line: 31, type: !62)
!4285 = !DILocation(line: 0, scope: !4282)
!4286 = !DILocation(line: 33, column: 10, scope: !4282)
!4287 = !DILocation(line: 33, column: 3, scope: !4282)
!4288 = distinct !DISubprogram(name: "rpl_fcntl", scope: !399, file: !399, line: 202, type: !1721, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !4289)
!4289 = !{!4290, !4291, !4292, !4303, !4304, !4307, !4309, !4313}
!4290 = !DILocalVariable(name: "fd", arg: 1, scope: !4288, file: !399, line: 202, type: !62)
!4291 = !DILocalVariable(name: "action", arg: 2, scope: !4288, file: !399, line: 202, type: !62)
!4292 = !DILocalVariable(name: "arg", scope: !4288, file: !399, line: 208, type: !4293)
!4293 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !228, line: 14, baseType: !4294)
!4294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4295, baseType: !4296)
!4295 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !232, size: 256, elements: !4297)
!4297 = !{!4298, !4299, !4300, !4301, !4302}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4296, file: !4295, line: 208, baseType: !56, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4296, file: !4295, line: 208, baseType: !56, size: 64, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4296, file: !4295, line: 208, baseType: !56, size: 64, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4296, file: !4295, line: 208, baseType: !62, size: 32, offset: 192)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4296, file: !4295, line: 208, baseType: !62, size: 32, offset: 224)
!4303 = !DILocalVariable(name: "result", scope: !4288, file: !399, line: 211, type: !62)
!4304 = !DILocalVariable(name: "target", scope: !4305, file: !399, line: 216, type: !62)
!4305 = distinct !DILexicalBlock(scope: !4306, file: !399, line: 215, column: 7)
!4306 = distinct !DILexicalBlock(scope: !4288, file: !399, line: 213, column: 5)
!4307 = !DILocalVariable(name: "target", scope: !4308, file: !399, line: 223, type: !62)
!4308 = distinct !DILexicalBlock(scope: !4306, file: !399, line: 222, column: 7)
!4309 = !DILocalVariable(name: "x", scope: !4310, file: !399, line: 418, type: !62)
!4310 = distinct !DILexicalBlock(scope: !4311, file: !399, line: 417, column: 13)
!4311 = distinct !DILexicalBlock(scope: !4312, file: !399, line: 261, column: 11)
!4312 = distinct !DILexicalBlock(scope: !4306, file: !399, line: 258, column: 7)
!4313 = !DILocalVariable(name: "p", scope: !4314, file: !399, line: 426, type: !56)
!4314 = distinct !DILexicalBlock(scope: !4311, file: !399, line: 425, column: 13)
!4315 = !DILocation(line: 0, scope: !4288)
!4316 = !DILocation(line: 208, column: 3, scope: !4288)
!4317 = !DILocation(line: 208, column: 11, scope: !4288)
!4318 = !DILocation(line: 209, column: 3, scope: !4288)
!4319 = !DILocation(line: 212, column: 3, scope: !4288)
!4320 = !DILocation(line: 216, column: 22, scope: !4305)
!4321 = !DILocation(line: 0, scope: !4305)
!4322 = !DILocalVariable(name: "fd", arg: 1, scope: !4323, file: !399, line: 444, type: !62)
!4323 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !399, file: !399, line: 444, type: !400, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !4324)
!4324 = !{!4322, !4325, !4326}
!4325 = !DILocalVariable(name: "target", arg: 2, scope: !4323, file: !399, line: 444, type: !62)
!4326 = !DILocalVariable(name: "result", scope: !4323, file: !399, line: 446, type: !62)
!4327 = !DILocation(line: 0, scope: !4323, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 217, column: 18, scope: !4305)
!4329 = !DILocation(line: 479, column: 12, scope: !4323, inlinedAt: !4328)
!4330 = !DILocation(line: 223, column: 22, scope: !4308)
!4331 = !DILocation(line: 0, scope: !4308)
!4332 = !DILocation(line: 0, scope: !398, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 224, column: 18, scope: !4308)
!4334 = !DILocation(line: 507, column: 12, scope: !4335, inlinedAt: !4333)
!4335 = distinct !DILexicalBlock(scope: !398, file: !399, line: 507, column: 7)
!4336 = !DILocation(line: 507, column: 9, scope: !4335, inlinedAt: !4333)
!4337 = !DILocation(line: 507, column: 7, scope: !398, inlinedAt: !4333)
!4338 = !DILocation(line: 509, column: 16, scope: !4339, inlinedAt: !4333)
!4339 = distinct !DILexicalBlock(scope: !4335, file: !399, line: 508, column: 5)
!4340 = !DILocation(line: 510, column: 13, scope: !4341, inlinedAt: !4333)
!4341 = distinct !DILexicalBlock(scope: !4339, file: !399, line: 510, column: 11)
!4342 = !DILocation(line: 510, column: 23, scope: !4341, inlinedAt: !4333)
!4343 = !DILocation(line: 510, column: 26, scope: !4341, inlinedAt: !4333)
!4344 = !DILocation(line: 510, column: 32, scope: !4341, inlinedAt: !4333)
!4345 = !DILocation(line: 510, column: 11, scope: !4339, inlinedAt: !4333)
!4346 = !DILocation(line: 512, column: 30, scope: !4347, inlinedAt: !4333)
!4347 = distinct !DILexicalBlock(scope: !4341, file: !399, line: 511, column: 9)
!4348 = !DILocation(line: 528, column: 19, scope: !410, inlinedAt: !4333)
!4349 = !DILocation(line: 0, scope: !4323, inlinedAt: !4350)
!4350 = distinct !DILocation(line: 520, column: 20, scope: !4351, inlinedAt: !4333)
!4351 = distinct !DILexicalBlock(scope: !4341, file: !399, line: 519, column: 9)
!4352 = !DILocation(line: 479, column: 12, scope: !4323, inlinedAt: !4350)
!4353 = !DILocation(line: 521, column: 22, scope: !4354, inlinedAt: !4333)
!4354 = distinct !DILexicalBlock(scope: !4351, file: !399, line: 521, column: 15)
!4355 = !DILocation(line: 521, column: 15, scope: !4351, inlinedAt: !4333)
!4356 = !DILocation(line: 522, column: 32, scope: !4354, inlinedAt: !4333)
!4357 = !DILocation(line: 522, column: 13, scope: !4354, inlinedAt: !4333)
!4358 = !DILocation(line: 0, scope: !4323, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 527, column: 14, scope: !4335, inlinedAt: !4333)
!4360 = !DILocation(line: 479, column: 12, scope: !4323, inlinedAt: !4359)
!4361 = !DILocation(line: 0, scope: !4335, inlinedAt: !4333)
!4362 = !DILocation(line: 528, column: 9, scope: !410, inlinedAt: !4333)
!4363 = !DILocation(line: 530, column: 19, scope: !409, inlinedAt: !4333)
!4364 = !DILocation(line: 0, scope: !409, inlinedAt: !4333)
!4365 = !DILocation(line: 531, column: 17, scope: !413, inlinedAt: !4333)
!4366 = !DILocation(line: 531, column: 21, scope: !413, inlinedAt: !4333)
!4367 = !DILocation(line: 531, column: 54, scope: !413, inlinedAt: !4333)
!4368 = !DILocation(line: 531, column: 24, scope: !413, inlinedAt: !4333)
!4369 = !DILocation(line: 531, column: 68, scope: !413, inlinedAt: !4333)
!4370 = !DILocation(line: 531, column: 11, scope: !409, inlinedAt: !4333)
!4371 = !DILocation(line: 533, column: 29, scope: !412, inlinedAt: !4333)
!4372 = !DILocation(line: 0, scope: !412, inlinedAt: !4333)
!4373 = !DILocation(line: 534, column: 11, scope: !412, inlinedAt: !4333)
!4374 = !DILocation(line: 535, column: 17, scope: !412, inlinedAt: !4333)
!4375 = !DILocation(line: 537, column: 9, scope: !412, inlinedAt: !4333)
!4376 = !DILocation(line: 329, column: 22, scope: !4311)
!4377 = !DILocation(line: 330, column: 13, scope: !4311)
!4378 = !DILocation(line: 418, column: 23, scope: !4310)
!4379 = !DILocation(line: 0, scope: !4310)
!4380 = !DILocation(line: 419, column: 24, scope: !4310)
!4381 = !DILocation(line: 421, column: 13, scope: !4311)
!4382 = !DILocation(line: 426, column: 25, scope: !4314)
!4383 = !DILocation(line: 0, scope: !4314)
!4384 = !DILocation(line: 427, column: 24, scope: !4314)
!4385 = !DILocation(line: 429, column: 13, scope: !4311)
!4386 = !DILocation(line: 0, scope: !4306)
!4387 = !DILocation(line: 438, column: 3, scope: !4288)
!4388 = !DILocation(line: 441, column: 1, scope: !4288)
!4389 = !DILocation(line: 440, column: 3, scope: !4288)
!4390 = distinct !DISubprogram(name: "hard_locale", scope: !484, file: !484, line: 28, type: !1118, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !4391)
!4391 = !{!4392, !4393}
!4392 = !DILocalVariable(name: "category", arg: 1, scope: !4390, file: !484, line: 28, type: !62)
!4393 = !DILocalVariable(name: "locale", scope: !4390, file: !484, line: 30, type: !4394)
!4394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2056, elements: !4395)
!4395 = !{!4396}
!4396 = !DISubrange(count: 257)
!4397 = !DILocation(line: 0, scope: !4390)
!4398 = !DILocation(line: 30, column: 3, scope: !4390)
!4399 = !DILocation(line: 30, column: 8, scope: !4390)
!4400 = !DILocation(line: 32, column: 7, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4390, file: !484, line: 32, column: 7)
!4402 = !DILocation(line: 32, column: 7, scope: !4390)
!4403 = !DILocalVariable(name: "__s1", arg: 1, scope: !4404, file: !551, line: 1359, type: !67)
!4404 = distinct !DISubprogram(name: "streq", scope: !551, file: !551, line: 1359, type: !552, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !4405)
!4405 = !{!4403, !4406}
!4406 = !DILocalVariable(name: "__s2", arg: 2, scope: !4404, file: !551, line: 1359, type: !67)
!4407 = !DILocation(line: 0, scope: !4404, inlinedAt: !4408)
!4408 = distinct !DILocation(line: 35, column: 9, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4390, file: !484, line: 35, column: 7)
!4410 = !DILocation(line: 1361, column: 11, scope: !4404, inlinedAt: !4408)
!4411 = !DILocation(line: 1361, column: 10, scope: !4404, inlinedAt: !4408)
!4412 = !DILocation(line: 35, column: 29, scope: !4409)
!4413 = !DILocation(line: 0, scope: !4404, inlinedAt: !4414)
!4414 = distinct !DILocation(line: 35, column: 32, scope: !4409)
!4415 = !DILocation(line: 1361, column: 11, scope: !4404, inlinedAt: !4414)
!4416 = !DILocation(line: 1361, column: 10, scope: !4404, inlinedAt: !4414)
!4417 = !DILocation(line: 35, column: 7, scope: !4390)
!4418 = !DILocation(line: 46, column: 3, scope: !4390)
!4419 = !DILocation(line: 47, column: 1, scope: !4390)
!4420 = distinct !DISubprogram(name: "setlocale_null_r", scope: !486, file: !486, line: 154, type: !4421, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !4423)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!62, !62, !54, !64}
!4423 = !{!4424, !4425, !4426}
!4424 = !DILocalVariable(name: "category", arg: 1, scope: !4420, file: !486, line: 154, type: !62)
!4425 = !DILocalVariable(name: "buf", arg: 2, scope: !4420, file: !486, line: 154, type: !54)
!4426 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4420, file: !486, line: 154, type: !64)
!4427 = !DILocation(line: 0, scope: !4420)
!4428 = !DILocation(line: 159, column: 10, scope: !4420)
!4429 = !DILocation(line: 159, column: 3, scope: !4420)
!4430 = distinct !DISubprogram(name: "setlocale_null", scope: !486, file: !486, line: 186, type: !4431, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !4433)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!67, !62}
!4433 = !{!4434}
!4434 = !DILocalVariable(name: "category", arg: 1, scope: !4430, file: !486, line: 186, type: !62)
!4435 = !DILocation(line: 0, scope: !4430)
!4436 = !DILocation(line: 189, column: 10, scope: !4430)
!4437 = !DILocation(line: 189, column: 3, scope: !4430)
!4438 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !488, file: !488, line: 35, type: !4431, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4439)
!4439 = !{!4440, !4441}
!4440 = !DILocalVariable(name: "category", arg: 1, scope: !4438, file: !488, line: 35, type: !62)
!4441 = !DILocalVariable(name: "result", scope: !4438, file: !488, line: 37, type: !67)
!4442 = !DILocation(line: 0, scope: !4438)
!4443 = !DILocation(line: 37, column: 24, scope: !4438)
!4444 = !DILocation(line: 62, column: 3, scope: !4438)
!4445 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !488, file: !488, line: 66, type: !4421, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4446)
!4446 = !{!4447, !4448, !4449, !4450, !4451}
!4447 = !DILocalVariable(name: "category", arg: 1, scope: !4445, file: !488, line: 66, type: !62)
!4448 = !DILocalVariable(name: "buf", arg: 2, scope: !4445, file: !488, line: 66, type: !54)
!4449 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4445, file: !488, line: 66, type: !64)
!4450 = !DILocalVariable(name: "result", scope: !4445, file: !488, line: 111, type: !67)
!4451 = !DILocalVariable(name: "length", scope: !4452, file: !488, line: 125, type: !64)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !488, line: 124, column: 5)
!4453 = distinct !DILexicalBlock(scope: !4445, file: !488, line: 113, column: 7)
!4454 = !DILocation(line: 0, scope: !4445)
!4455 = !DILocation(line: 0, scope: !4438, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 111, column: 24, scope: !4445)
!4457 = !DILocation(line: 37, column: 24, scope: !4438, inlinedAt: !4456)
!4458 = !DILocation(line: 113, column: 14, scope: !4453)
!4459 = !DILocation(line: 113, column: 7, scope: !4445)
!4460 = !DILocation(line: 116, column: 19, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4462, file: !488, line: 116, column: 11)
!4462 = distinct !DILexicalBlock(scope: !4453, file: !488, line: 114, column: 5)
!4463 = !DILocation(line: 116, column: 11, scope: !4462)
!4464 = !DILocation(line: 120, column: 16, scope: !4461)
!4465 = !DILocation(line: 120, column: 9, scope: !4461)
!4466 = !DILocation(line: 125, column: 23, scope: !4452)
!4467 = !DILocation(line: 0, scope: !4452)
!4468 = !DILocation(line: 126, column: 18, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4452, file: !488, line: 126, column: 11)
!4470 = !DILocation(line: 126, column: 11, scope: !4452)
!4471 = !DILocation(line: 128, column: 39, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4469, file: !488, line: 127, column: 9)
!4473 = !DILocalVariable(name: "__dest", arg: 1, scope: !4474, file: !1989, line: 26, type: !3836)
!4474 = distinct !DISubprogram(name: "memcpy", scope: !1989, file: !1989, line: 26, type: !3834, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4475)
!4475 = !{!4473, !4476, !4477}
!4476 = !DILocalVariable(name: "__src", arg: 2, scope: !4474, file: !1989, line: 26, type: !718)
!4477 = !DILocalVariable(name: "__len", arg: 3, scope: !4474, file: !1989, line: 26, type: !64)
!4478 = !DILocation(line: 0, scope: !4474, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 128, column: 11, scope: !4472)
!4480 = !DILocation(line: 29, column: 10, scope: !4474, inlinedAt: !4479)
!4481 = !DILocation(line: 129, column: 11, scope: !4472)
!4482 = !DILocation(line: 133, column: 23, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4484, file: !488, line: 133, column: 15)
!4484 = distinct !DILexicalBlock(scope: !4469, file: !488, line: 132, column: 9)
!4485 = !DILocation(line: 133, column: 15, scope: !4484)
!4486 = !DILocation(line: 138, column: 44, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4483, file: !488, line: 134, column: 13)
!4488 = !DILocation(line: 0, scope: !4474, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 138, column: 15, scope: !4487)
!4490 = !DILocation(line: 29, column: 10, scope: !4474, inlinedAt: !4489)
!4491 = !DILocation(line: 139, column: 15, scope: !4487)
!4492 = !DILocation(line: 139, column: 32, scope: !4487)
!4493 = !DILocation(line: 140, column: 13, scope: !4487)
!4494 = !DILocation(line: 0, scope: !4453)
!4495 = !DILocation(line: 145, column: 1, scope: !4445)
