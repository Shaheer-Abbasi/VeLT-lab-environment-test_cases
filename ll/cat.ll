; ModuleID = 'src/cat.bc'
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
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Concatenate FILE(s) to standard output.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"  -A, --show-all           equivalent to -vET\0A\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"  -b, --number-nonblank    number nonempty output lines, overrides -n\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"  -e                       equivalent to -vE\0A\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"  -E, --show-ends          display $ or ^M$ at end of each line\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"  -n, --number             number all output lines\0A\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"  -s, --squeeze-blank      suppress repeated empty output lines\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"  -t                       equivalent to -vT\0A\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"  -T, --show-tabs          display TAB characters as ^I\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"  -u                       (ignored)\0A\00", align 1
@.str.13 = private unnamed_addr constant [74 x i8] c"  -v, --show-nonprinting   use ^ and M- notation, except for LFD and TAB\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.16 = private unnamed_addr constant [137 x i8] c"\0AExamples:\0A  %s f - g  Output f's contents, then standard input, then g's contents.\0A  %s        Copy standard input to standard output.\0A\00", align 1
@main.long_options = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 0, i32* null, i32 69 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 0, i32* null, i32 65 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.17 = private unnamed_addr constant [16 x i8] c"number-nonblank\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"squeeze-blank\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"show-nonprinting\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"show-ends\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"show-tabs\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"show-all\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"benstuvAET\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Torbjorn Granlund\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Torbj\C3\B6rn Granlund\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@infile = internal unnamed_addr global i8* null, align 8, !dbg !71
@optind = external local_unnamed_addr global i32, align 4
@input_desc = internal unnamed_addr global i32 0, align 4, !dbg !73
@.str.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"%s: input file is output file\00", align 1
@pending_cr = internal unnamed_addr global i1 false, align 1, !dbg !263
@.str.38 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1
@.str.40 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !75
@.str.41 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.61 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.63 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.69, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.71 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.72 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.74 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@newlines2 = internal unnamed_addr global i32 0, align 4, !dbg !160
@.str.76 = private unnamed_addr constant [22 x i8] c"cannot do ioctl on %s\00", align 1
@line_num_print = internal unnamed_addr global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 12), align 8, !dbg !168
@line_num_start = internal unnamed_addr global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), align 8, !dbg !164
@line_buf = internal global [20 x i8] c"                 0\09\00", align 4, !dbg !166
@.str.77 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i64 0, i64 0), align 8, !dbg !264
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !269
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !274
@.str.49 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.50 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.51 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.52 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !276
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.78 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !311
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !282
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !307
@.str.1.84 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.86 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.85 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !309
@.str.4.79 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.80 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.81 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !316
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !334
@.str.103 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.104 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !340
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
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.108, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.109, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.110, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.111, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.112, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.113, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.114, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.115, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.116, i32 0, i32 0), i8* null], align 8, !dbg !374
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !386
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !402
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !432
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !439
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !404
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !441
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !390
@.str.10.119 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.117 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.120 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.118 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !409
@.str.129 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.130 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.131 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.132 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.133 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.134 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.135 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.136 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.137 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.138 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.139 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.140 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.141 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.142 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.143 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.144 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.145 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.150 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.151 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.152 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.153 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.154 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.155 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.156 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !447
@exit_failure = dso_local global i32 1, align 4, !dbg !455
@.str.171 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.169 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.170 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.182 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !461
@.str.187 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.188 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !564 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !568, metadata !DIExpression()), !dbg !569
  %3 = icmp eq i32 %0, 0, !dbg !570
  br i1 %3, label %9, label %4, !dbg !572

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !573, !tbaa !575
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #34, !dbg !573
  %7 = load i8*, i8** @program_name, align 8, !dbg !573, !tbaa !575
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #34, !dbg !573
  br label %68, !dbg !573

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #34, !dbg !579
  %11 = load i8*, i8** @program_name, align 8, !dbg !579, !tbaa !575
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #34, !dbg !579
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #34, !dbg !581
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !581, !tbaa !575
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !581
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.40, i64 0, i64 0), i32 noundef 5) #34, !dbg !582
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !582, !tbaa !575
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #34, !dbg !582
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #34, !dbg !586
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !586
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #34, !dbg !587
  tail call fastcc void @oputs_(i8* noundef %20), !dbg !587
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #34, !dbg !588
  tail call fastcc void @oputs_(i8* noundef %21), !dbg !588
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #34, !dbg !589
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !589
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #34, !dbg !590
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !590
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #34, !dbg !591
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !591
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #34, !dbg !592
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !592
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #34, !dbg !593
  tail call fastcc void @oputs_(i8* noundef %26), !dbg !593
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #34, !dbg !594
  tail call fastcc void @oputs_(i8* noundef %27), !dbg !594
  %28 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #34, !dbg !595
  tail call fastcc void @oputs_(i8* noundef %28), !dbg !595
  %29 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #34, !dbg !596
  tail call fastcc void @oputs_(i8* noundef %29), !dbg !596
  %30 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #34, !dbg !597
  tail call fastcc void @oputs_(i8* noundef %30), !dbg !597
  %31 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([137 x i8], [137 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #34, !dbg !598
  %32 = load i8*, i8** @program_name, align 8, !dbg !598, !tbaa !575
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %31, i8* noundef %32, i8* noundef %32) #34, !dbg !598
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !599, metadata !DIExpression()) #34, !dbg !618
  %34 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !620
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #34, !dbg !620
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !604, metadata !DIExpression()) #34, !dbg !621
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %34, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #34, !dbg !621
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !613, metadata !DIExpression()) #34, !dbg !618
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !614, metadata !DIExpression()) #34, !dbg !618
  %35 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !622
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !614, metadata !DIExpression()) #34, !dbg !618
  br label %36, !dbg !623

36:                                               ; preds = %41, %9
  %37 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), %9 ]
  %38 = phi %struct.infomap* [ %42, %41 ], [ %35, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !614, metadata !DIExpression()) #34, !dbg !618
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !624, metadata !DIExpression()) #34, !dbg !631
  call void @llvm.dbg.value(metadata i8* %37, metadata !630, metadata !DIExpression()) #34, !dbg !631
  %39 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %37) #35, !dbg !633
  %40 = icmp eq i32 %39, 0, !dbg !634
  br i1 %40, label %46, label %41, !dbg !623

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 1, !dbg !635
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !614, metadata !DIExpression()) #34, !dbg !618
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 0, !dbg !636
  %44 = load i8*, i8** %43, align 8, !dbg !636, !tbaa !637
  %45 = icmp eq i8* %44, null, !dbg !639
  br i1 %45, label %46, label %36, !dbg !640, !llvm.loop !641

46:                                               ; preds = %41, %36
  %47 = phi %struct.infomap* [ %38, %36 ], [ %42, %41 ]
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 1, !dbg !643
  %49 = load i8*, i8** %48, align 8, !dbg !643, !tbaa !645
  %50 = icmp eq i8* %49, null, !dbg !646
  %51 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %49, !dbg !647
  call void @llvm.dbg.value(metadata i8* %51, metadata !613, metadata !DIExpression()) #34, !dbg !618
  tail call void @emit_bug_reporting_address() #34, !dbg !648
  %52 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #34, !dbg !649
  call void @llvm.dbg.value(metadata i8* %52, metadata !616, metadata !DIExpression()) #34, !dbg !618
  %53 = icmp eq i8* %52, null, !dbg !650
  br i1 %53, label %61, label %54, !dbg !652

54:                                               ; preds = %46
  %55 = tail call i32 @strncmp(i8* noundef nonnull %52, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i64 0, i64 0), i64 noundef 3) #35, !dbg !653
  %56 = icmp eq i32 %55, 0, !dbg !653
  br i1 %56, label %61, label %57, !dbg !654

57:                                               ; preds = %54
  %58 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.72, i64 0, i64 0), i32 noundef 5) #34, !dbg !655
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !655, !tbaa !575
  %60 = tail call i32 @fputs_unlocked(i8* noundef %58, %struct._IO_FILE* noundef %59) #34, !dbg !655
  br label %61, !dbg !657

61:                                               ; preds = %46, %54, %57
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !624, metadata !DIExpression()) #34, !dbg !658
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), metadata !630, metadata !DIExpression()) #34, !dbg !658
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !617, metadata !DIExpression()) #34, !dbg !618
  %62 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.73, i64 0, i64 0), i32 noundef 5) #34, !dbg !660
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %62, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #34, !dbg !660
  %64 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.74, i64 0, i64 0), i32 noundef 5) #34, !dbg !661
  %65 = icmp eq i8* %51, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), !dbg !661
  %66 = select i1 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0), !dbg !661
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %64, i8* noundef %51, i8* noundef %66) #34, !dbg !661
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #34, !dbg !662
  br label %68

68:                                               ; preds = %61, %4
  tail call void @exit(i32 noundef %0) #36, !dbg !663
  unreachable, !dbg !663
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !664 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !668 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !77 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !82, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata i8* %0, metadata !83, metadata !DIExpression()), !dbg !673
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !674, !tbaa !675
  %3 = icmp eq i32 %2, -1, !dbg !677
  br i1 %3, label %4, label %16, !dbg !678

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0)) #34, !dbg !679
  call void @llvm.dbg.value(metadata i8* %5, metadata !84, metadata !DIExpression()), !dbg !680
  %6 = icmp eq i8* %5, null, !dbg !681
  br i1 %6, label %14, label %7, !dbg !682

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !683, !tbaa !684
  %9 = icmp eq i8 %8, 0, !dbg !683
  br i1 %9, label %14, label %10, !dbg !685

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !624, metadata !DIExpression()) #34, !dbg !686
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), metadata !630, metadata !DIExpression()) #34, !dbg !686
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #35, !dbg !688
  %12 = icmp eq i32 %11, 0, !dbg !689
  %13 = zext i1 %12 to i32, !dbg !685
  br label %14, !dbg !685

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !690, !tbaa !675
  br label %16, !dbg !691

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !692
  %18 = icmp eq i32 %17, 0, !dbg !692
  br i1 %18, label %22, label %19, !dbg !694

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !695, !tbaa !575
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !695
  br label %121, !dbg !697

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !87, metadata !DIExpression()), !dbg !673
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0)) #35, !dbg !698
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !699
  call void @llvm.dbg.value(metadata i8* %24, metadata !88, metadata !DIExpression()), !dbg !673
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #35, !dbg !700
  call void @llvm.dbg.value(metadata i8* %25, metadata !89, metadata !DIExpression()), !dbg !673
  %26 = icmp eq i8* %25, null, !dbg !701
  br i1 %26, label %53, label %27, !dbg !702

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !703
  br i1 %28, label %53, label %29, !dbg !704

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !90, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i64 0, metadata !94, metadata !DIExpression()), !dbg !705
  %30 = icmp ult i8* %24, %25, !dbg !706
  br i1 %30, label %31, label %53, !dbg !707

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #37, !dbg !673
  %33 = load i16*, i16** %32, align 8, !tbaa !575
  br label %34, !dbg !707

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !90, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i64 %36, metadata !94, metadata !DIExpression()), !dbg !705
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !708
  call void @llvm.dbg.value(metadata i8* %37, metadata !90, metadata !DIExpression()), !dbg !705
  %38 = load i8, i8* %35, align 1, !dbg !708, !tbaa !684
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !708
  %41 = load i16, i16* %40, align 2, !dbg !708, !tbaa !709
  %42 = lshr i16 %41, 13, !dbg !711
  %43 = and i16 %42, 1, !dbg !711
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !712
  call void @llvm.dbg.value(metadata i64 %45, metadata !94, metadata !DIExpression()), !dbg !705
  %46 = icmp ult i8* %37, %25, !dbg !706
  %47 = icmp ult i64 %45, 2, !dbg !713
  %48 = select i1 %46, i1 %47, i1 false, !dbg !713
  br i1 %48, label %34, label %49, !dbg !707, !llvm.loop !714

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !715
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !717
  %52 = xor i1 %50, true, !dbg !717
  br label %53, !dbg !717

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !673
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !87, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata i8* %54, metadata !89, metadata !DIExpression()), !dbg !673
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #35, !dbg !718
  call void @llvm.dbg.value(metadata i64 %56, metadata !95, metadata !DIExpression()), !dbg !673
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !719
  call void @llvm.dbg.value(metadata i8* %57, metadata !96, metadata !DIExpression()), !dbg !673
  br label %58, !dbg !720

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !673
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !87, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata i8* %59, metadata !96, metadata !DIExpression()), !dbg !673
  %61 = load i8, i8* %59, align 1, !dbg !721, !tbaa !684
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !722

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !723
  %64 = load i8, i8* %63, align 1, !dbg !726, !tbaa !684
  %65 = icmp ne i8 %64, 45, !dbg !727
  %66 = select i1 %65, i1 %60, i1 false, !dbg !728
  br label %67, !dbg !728

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !87, metadata !DIExpression()), !dbg !673
  %69 = tail call i16** @__ctype_b_loc() #37, !dbg !729
  %70 = load i16*, i16** %69, align 8, !dbg !729, !tbaa !575
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !729
  %73 = load i16, i16* %72, align 2, !dbg !729, !tbaa !709
  %74 = and i16 %73, 8192, !dbg !729
  %75 = icmp eq i16 %74, 0, !dbg !729
  br i1 %75, label %89, label %76, !dbg !731

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !732
  br i1 %77, label %91, label %78, !dbg !735

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !736
  %80 = load i8, i8* %79, align 1, !dbg !736, !tbaa !684
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !736
  %83 = load i16, i16* %82, align 2, !dbg !736, !tbaa !709
  %84 = and i16 %83, 8192, !dbg !736
  %85 = icmp eq i16 %84, 0, !dbg !736
  br i1 %85, label %86, label %91, !dbg !737

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !738
  br i1 %88, label %89, label %91, !dbg !738

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !740
  call void @llvm.dbg.value(metadata i8* %90, metadata !96, metadata !DIExpression()), !dbg !673
  br label %58, !dbg !720, !llvm.loop !741

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !743
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !743, !tbaa !575
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !743
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !624, metadata !DIExpression()) #34, !dbg !744
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), metadata !630, metadata !DIExpression()) #34, !dbg !744
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !624, metadata !DIExpression()) #34, !dbg !746
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !624, metadata !DIExpression()) #34, !dbg !748
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !624, metadata !DIExpression()) #34, !dbg !750
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !624, metadata !DIExpression()) #34, !dbg !752
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !624, metadata !DIExpression()) #34, !dbg !754
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !624, metadata !DIExpression()) #34, !dbg !756
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !624, metadata !DIExpression()) #34, !dbg !758
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !624, metadata !DIExpression()) #34, !dbg !760
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !624, metadata !DIExpression()) #34, !dbg !762
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !155, metadata !DIExpression()), !dbg !673
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0), i64 noundef 6) #35, !dbg !764
  %96 = icmp eq i32 %95, 0, !dbg !764
  br i1 %96, label %100, label %97, !dbg !766

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i64 noundef 9) #35, !dbg !767
  %99 = icmp eq i32 %98, 0, !dbg !767
  br i1 %99, label %100, label %103, !dbg !768

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !769
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #34, !dbg !769
  br label %106, !dbg !771

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !772
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #34, !dbg !772
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !774, !tbaa !575
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !774
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !775, !tbaa !575
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !775
  %111 = ptrtoint i8* %59 to i64, !dbg !776
  %112 = sub i64 %111, %92, !dbg !776
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !776, !tbaa !575
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !776
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !777, !tbaa !575
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !777
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !778, !tbaa !575
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !778
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !779, !tbaa !575
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !779
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !780
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
declare !dbg !781 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !785 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !789 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !173, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8** %1, metadata !174, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 0, metadata !175, metadata !DIExpression()), !dbg !795
  %6 = bitcast %struct.stat* %4 to i8*, !dbg !796
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #34, !dbg !796
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !176, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.value(metadata i8 0, metadata !214, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 0, metadata !215, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 0, metadata !216, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 0, metadata !217, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 0, metadata !218, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 0, metadata !219, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 0, metadata !220, metadata !DIExpression()), !dbg !795
  %7 = load i8*, i8** %1, align 8, !dbg !798, !tbaa !575
  tail call void @set_program_name(i8* noundef %7) #34, !dbg !799
  %8 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0)) #34, !dbg !800
  %9 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0)) #34, !dbg !801
  %10 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0)) #34, !dbg !802
  %11 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #34, !dbg !803
  br label %12, !dbg !804

12:                                               ; preds = %20, %2
  %13 = phi i1 [ false, %2 ], [ %21, %20 ]
  %14 = phi i1 [ false, %2 ], [ %22, %20 ]
  %15 = phi i1 [ false, %2 ], [ %23, %20 ]
  %16 = phi i1 [ false, %2 ], [ %24, %20 ]
  %17 = phi i1 [ false, %2 ], [ %25, %20 ]
  %18 = phi i1 [ false, %2 ], [ %26, %20 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !214, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 poison, metadata !215, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 poison, metadata !216, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 poison, metadata !217, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 poison, metadata !218, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 poison, metadata !219, metadata !DIExpression()), !dbg !795
  %19 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @main.long_options, i64 0, i64 0), i32* noundef null) #34, !dbg !805
  call void @llvm.dbg.value(metadata i32 %19, metadata !221, metadata !DIExpression()), !dbg !795
  switch i32 %19, label %42 [
    i32 -1, label %43
    i32 98, label %27
    i32 101, label %28
    i32 110, label %29
    i32 115, label %30
    i32 116, label %31
    i32 117, label %20
    i32 118, label %32
    i32 65, label %33
    i32 69, label %34
    i32 84, label %35
    i32 -2, label %36
    i32 -3, label %37
  ], !dbg !804

20:                                               ; preds = %12, %35, %34, %33, %32, %31, %30, %29, %28, %27
  %21 = phi i1 [ true, %35 ], [ %13, %34 ], [ true, %33 ], [ %13, %32 ], [ true, %31 ], [ %13, %30 ], [ %13, %29 ], [ %13, %28 ], [ %13, %27 ], [ %13, %12 ]
  %22 = phi i1 [ %14, %35 ], [ %14, %34 ], [ true, %33 ], [ true, %32 ], [ true, %31 ], [ %14, %30 ], [ %14, %29 ], [ true, %28 ], [ %14, %27 ], [ %14, %12 ]
  %23 = phi i1 [ %15, %35 ], [ true, %34 ], [ true, %33 ], [ %15, %32 ], [ %15, %31 ], [ %15, %30 ], [ %15, %29 ], [ true, %28 ], [ %15, %27 ], [ %15, %12 ]
  %24 = phi i1 [ %16, %35 ], [ %16, %34 ], [ %16, %33 ], [ %16, %32 ], [ %16, %31 ], [ true, %30 ], [ %16, %29 ], [ %16, %28 ], [ %16, %27 ], [ %16, %12 ]
  %25 = phi i1 [ %17, %35 ], [ %17, %34 ], [ %17, %33 ], [ %17, %32 ], [ %17, %31 ], [ %17, %30 ], [ %17, %29 ], [ %17, %28 ], [ true, %27 ], [ %17, %12 ]
  %26 = phi i1 [ %18, %35 ], [ %18, %34 ], [ %18, %33 ], [ %18, %32 ], [ %18, %31 ], [ %18, %30 ], [ true, %29 ], [ %18, %28 ], [ true, %27 ], [ %18, %12 ]
  br label %12, !dbg !795, !llvm.loop !806

27:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i8 1, metadata !214, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 1, metadata !215, metadata !DIExpression()), !dbg !795
  br label %20, !dbg !808

28:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i8 1, metadata !217, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 1, metadata !218, metadata !DIExpression()), !dbg !795
  br label %20, !dbg !811

29:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i8 1, metadata !214, metadata !DIExpression()), !dbg !795
  br label %20, !dbg !812

30:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i8 1, metadata !216, metadata !DIExpression()), !dbg !795
  br label %20, !dbg !813

31:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i8 1, metadata !219, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 1, metadata !218, metadata !DIExpression()), !dbg !795
  br label %20, !dbg !814

32:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i8 1, metadata !218, metadata !DIExpression()), !dbg !795
  br label %20, !dbg !815

33:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i8 1, metadata !218, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 1, metadata !217, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 1, metadata !219, metadata !DIExpression()), !dbg !795
  br label %20, !dbg !816

34:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i8 1, metadata !217, metadata !DIExpression()), !dbg !795
  br label %20, !dbg !817

35:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i8 1, metadata !219, metadata !DIExpression()), !dbg !795
  br label %20, !dbg !818

36:                                               ; preds = %12
  tail call void @usage(i32 noundef 0) #38, !dbg !819
  unreachable, !dbg !819

37:                                               ; preds = %12
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !820, !tbaa !575
  %39 = load i8*, i8** @Version, align 8, !dbg !820, !tbaa !575
  %40 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0)) #34, !dbg !820
  %41 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0)) #34, !dbg !820
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* noundef %39, i8* noundef %40, i8* noundef %41, i8* noundef null) #34, !dbg !820
  tail call void @exit(i32 noundef 0) #36, !dbg !820
  unreachable, !dbg !820

42:                                               ; preds = %12
  tail call void @usage(i32 noundef 1) #38, !dbg !821
  unreachable, !dbg !821

43:                                               ; preds = %12
  %44 = call i32 @fstat(i32 noundef 1, %struct.stat* noundef nonnull %4) #34, !dbg !822
  %45 = icmp slt i32 %44, 0, !dbg !824
  br i1 %45, label %46, label %50, !dbg !825

46:                                               ; preds = %43
  %47 = tail call i32* @__errno_location() #37, !dbg !826
  %48 = load i32, i32* %47, align 4, !dbg !826, !tbaa !675
  %49 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i32 noundef 5) #34, !dbg !826
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %48, i8* noundef %49) #34, !dbg !826
  unreachable, !dbg !826

50:                                               ; preds = %43
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !827, metadata !DIExpression()) #34, !dbg !842
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 9, !dbg !844
  %52 = load i32, i32* %51, align 8, !dbg !844, !tbaa !845
  %53 = icmp sgt i32 %52, 0, !dbg !849
  %54 = select i1 %53, i32 %52, i32 512, !dbg !849
  %55 = zext i32 %54 to i64, !dbg !849
  call void @llvm.dbg.value(metadata i64 %55, metadata !834, metadata !DIExpression()) #34, !dbg !842
  %56 = urem i32 262143, %54, !dbg !850
  %57 = xor i32 %56, 262143, !dbg !851
  %58 = zext i32 %57 to i64, !dbg !851
  %59 = add nuw nsw i64 %55, %58, !dbg !852
  call void @llvm.dbg.value(metadata i64 %59, metadata !834, metadata !DIExpression()) #34, !dbg !842
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 2, !dbg !853
  %61 = load i32, i32* %60, align 8, !dbg !853, !tbaa !854
  %62 = and i32 %61, 61440, !dbg !853
  %63 = icmp ne i32 %62, 32768, !dbg !853
  %64 = tail call i64 @llvm.ctpop.i64(i64 %59) #34, !range !855
  %65 = icmp ult i64 %64, 2
  %66 = select i1 %63, i1 true, i1 %65, !dbg !856
  br i1 %66, label %73, label %67, !dbg !856

67:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %59, metadata !857, metadata !DIExpression()) #34, !dbg !863
  call void @llvm.dbg.value(metadata i64 %59, metadata !865, metadata !DIExpression()) #34, !dbg !870
  %68 = tail call i64 @llvm.ctlz.i64(i64 %59, i1 false) #34, !dbg !872, !range !855
  call void @llvm.dbg.value(metadata i64 %68, metadata !835, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !873
  call void @llvm.dbg.value(metadata !DIArgList(i64 1, i32 64, i64 %68), metadata !838, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_minus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_stack_value)) #34, !dbg !874
  %69 = icmp eq i64 %68, 1, !dbg !875
  %70 = sub nuw nsw i64 64, %68, !dbg !877
  %71 = shl nuw i64 1, %70, !dbg !877
  %72 = select i1 %69, i64 %59, i64 %71, !dbg !877
  call void @llvm.dbg.value(metadata i64 %72, metadata !834, metadata !DIExpression()) #34, !dbg !842
  br label %73, !dbg !878

73:                                               ; preds = %50, %67
  %74 = phi i64 [ %72, %67 ], [ %59, %50 ], !dbg !842
  call void @llvm.dbg.value(metadata i64 %74, metadata !834, metadata !DIExpression()) #34, !dbg !842
  %75 = icmp slt i64 %74, 2146435072, !dbg !879
  %76 = select i1 %75, i64 %74, i64 2146435072, !dbg !879
  call void @llvm.dbg.value(metadata i64 %76, metadata !222, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 -2, metadata !226, metadata !DIExpression()), !dbg !795
  %77 = icmp eq i32 %62, 32768, !dbg !880
  call void @llvm.dbg.value(metadata i1 %77, metadata !227, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !795
  %78 = select i1 %18, i1 true, i1 %15, !dbg !881
  call void @llvm.dbg.value(metadata i32 0, metadata !220, metadata !DIExpression()), !dbg !795
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i8** @infile, align 8, !dbg !883, !tbaa !575
  %79 = load i32, i32* @optind, align 4, !dbg !884, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %79, metadata !228, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 1, metadata !229, metadata !DIExpression()), !dbg !795
  %80 = tail call i32 @getpagesize() #37, !dbg !885
  %81 = sext i32 %80 to i64, !dbg !885
  call void @llvm.dbg.value(metadata i64 %81, metadata !230, metadata !DIExpression()), !dbg !795
  %82 = bitcast %struct.stat* %5 to i8*
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 9
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 2
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 0
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 1
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1
  %89 = select i1 %78, i1 true, i1 %14
  %90 = select i1 %89, i1 true, i1 %13
  %91 = select i1 %90, i1 true, i1 %16
  %92 = xor i1 %16, true
  %93 = xor i1 %18, true
  %94 = or i1 %17, %93
  %95 = bitcast i32* %3 to i8*
  %96 = sext i32 %79 to i64, !dbg !886
  %97 = sext i32 %0 to i64, !dbg !886
  br label %98, !dbg !886

98:                                               ; preds = %550, %73
  %99 = phi i64 [ %554, %550 ], [ %96, %73 ], !dbg !887
  %100 = phi i32 [ %551, %550 ], [ -2, %73 ], !dbg !887
  %101 = phi i1 [ %552, %550 ], [ true, %73 ]
  %102 = phi i1 [ %553, %550 ], [ false, %73 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !175, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 poison, metadata !229, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i64 %99, metadata !228, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %100, metadata !226, metadata !DIExpression()), !dbg !795
  %103 = icmp slt i64 %99, %97, !dbg !888
  br i1 %103, label %106, label %104, !dbg !890

104:                                              ; preds = %98
  %105 = load i8*, i8** @infile, align 8, !dbg !891, !tbaa !575
  br label %109, !dbg !890

106:                                              ; preds = %98
  %107 = getelementptr inbounds i8*, i8** %1, i64 %99, !dbg !892
  %108 = load i8*, i8** %107, align 8, !dbg !892, !tbaa !575
  store i8* %108, i8** @infile, align 8, !dbg !893, !tbaa !575
  br label %109, !dbg !894

109:                                              ; preds = %104, %106
  %110 = phi i8* [ %105, %104 ], [ %108, %106 ], !dbg !891
  call void @llvm.dbg.value(metadata i8* %110, metadata !624, metadata !DIExpression()) #34, !dbg !895
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), metadata !630, metadata !DIExpression()) #34, !dbg !895
  %111 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %110, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #35, !dbg !897
  %112 = icmp eq i32 %111, 0, !dbg !898
  call void @llvm.dbg.value(metadata i1 %112, metadata !231, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !899
  br i1 %112, label %113, label %114, !dbg !900

113:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i8 1, metadata !175, metadata !DIExpression()), !dbg !795
  store i32 0, i32* @input_desc, align 4, !dbg !901, !tbaa !675
  br label %122

114:                                              ; preds = %109
  %115 = call i32 (i8*, i32, ...) @open(i8* noundef %110, i32 noundef 0) #34, !dbg !904
  store i32 %115, i32* @input_desc, align 4, !dbg !906, !tbaa !675
  %116 = icmp slt i32 %115, 0, !dbg !907
  br i1 %116, label %117, label %122, !dbg !909

117:                                              ; preds = %114
  %118 = tail call i32* @__errno_location() #37, !dbg !910
  %119 = load i32, i32* %118, align 4, !dbg !910, !tbaa !675
  %120 = load i8*, i8** @infile, align 8, !dbg !910, !tbaa !575
  %121 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %120) #34, !dbg !910
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %119, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* noundef %121) #34, !dbg !910
  call void @llvm.dbg.value(metadata i8 0, metadata !229, metadata !DIExpression()), !dbg !795
  br label %550, !dbg !912

122:                                              ; preds = %113, %114
  %123 = phi i32 [ 0, %113 ], [ %115, %114 ], !dbg !913
  %124 = phi i1 [ true, %113 ], [ %102, %114 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !175, metadata !DIExpression()), !dbg !795
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %82) #34, !dbg !915
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !233, metadata !DIExpression()), !dbg !916
  %125 = call i32 @fstat(i32 noundef %123, %struct.stat* noundef nonnull %5) #34, !dbg !917
  %126 = icmp slt i32 %125, 0, !dbg !918
  br i1 %126, label %127, label %132, !dbg !919

127:                                              ; preds = %122
  %128 = tail call i32* @__errno_location() #37, !dbg !920
  %129 = load i32, i32* %128, align 4, !dbg !920, !tbaa !675
  %130 = load i8*, i8** @infile, align 8, !dbg !920, !tbaa !575
  %131 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %130) #34, !dbg !920
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %129, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* noundef %131) #34, !dbg !920
  call void @llvm.dbg.value(metadata i8 0, metadata !229, metadata !DIExpression()), !dbg !795
  br label %536, !dbg !922

132:                                              ; preds = %122
  call void @llvm.dbg.value(metadata %struct.stat* %5, metadata !827, metadata !DIExpression()) #34, !dbg !923
  %133 = load i32, i32* %83, align 8, !dbg !925, !tbaa !845
  %134 = icmp sgt i32 %133, 0, !dbg !926
  %135 = select i1 %134, i32 %133, i32 512, !dbg !926
  %136 = zext i32 %135 to i64, !dbg !926
  call void @llvm.dbg.value(metadata i64 %136, metadata !834, metadata !DIExpression()) #34, !dbg !923
  %137 = urem i32 262143, %135, !dbg !927
  %138 = xor i32 %137, 262143, !dbg !928
  %139 = zext i32 %138 to i64, !dbg !928
  %140 = add nuw nsw i64 %136, %139, !dbg !929
  call void @llvm.dbg.value(metadata i64 %140, metadata !834, metadata !DIExpression()) #34, !dbg !923
  %141 = load i32, i32* %84, align 8, !dbg !930, !tbaa !854
  %142 = and i32 %141, 61440, !dbg !930
  %143 = icmp ne i32 %142, 32768, !dbg !930
  %144 = call i64 @llvm.ctpop.i64(i64 %140) #34, !range !855
  %145 = icmp ult i64 %144, 2
  %146 = select i1 %143, i1 true, i1 %145, !dbg !931
  br i1 %146, label %156, label %147, !dbg !931

147:                                              ; preds = %132
  call void @llvm.dbg.value(metadata i64 %140, metadata !857, metadata !DIExpression()) #34, !dbg !932
  call void @llvm.dbg.value(metadata i64 %140, metadata !865, metadata !DIExpression()) #34, !dbg !934
  %148 = call i64 @llvm.ctlz.i64(i64 %140, i1 false) #34, !dbg !936, !range !855
  call void @llvm.dbg.value(metadata i64 %148, metadata !835, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !937
  call void @llvm.dbg.value(metadata !DIArgList(i64 1, i32 64, i64 %148), metadata !838, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_minus, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_shl, DW_OP_stack_value)) #34, !dbg !938
  %149 = icmp eq i64 %148, 1, !dbg !939
  %150 = sub nuw nsw i64 64, %148, !dbg !940
  %151 = shl nuw i64 1, %150, !dbg !940
  %152 = select i1 %149, i64 %140, i64 %151, !dbg !940
  call void @llvm.dbg.value(metadata i64 %140, metadata !834, metadata !DIExpression()) #34, !dbg !923
  %153 = icmp slt i64 %152, 2146435072, !dbg !941
  %154 = select i1 %153, i64 %152, i64 2146435072, !dbg !941
  call void @llvm.dbg.value(metadata i64 %158, metadata !234, metadata !DIExpression()), !dbg !899
  %155 = load i32, i32* @input_desc, align 4, !dbg !942, !tbaa !675
  call void @fdadvise(i32 noundef %155, i64 noundef 0, i64 noundef 0, i32 noundef 2) #34, !dbg !943
  br label %161, !dbg !944

156:                                              ; preds = %132
  call void @llvm.dbg.value(metadata i64 %140, metadata !834, metadata !DIExpression()) #34, !dbg !923
  %157 = icmp ult i64 %140, 2146435072, !dbg !941
  %158 = select i1 %157, i64 %140, i64 2146435072, !dbg !941
  call void @llvm.dbg.value(metadata i64 %158, metadata !234, metadata !DIExpression()), !dbg !899
  %159 = load i32, i32* @input_desc, align 4, !dbg !942, !tbaa !675
  call void @fdadvise(i32 noundef %159, i64 noundef 0, i64 noundef 0, i32 noundef 2) #34, !dbg !943
  %160 = trunc i32 %142 to i16, !dbg !944
  switch i16 %160, label %161 [
    i16 4096, label %189
    i16 -16384, label %189
  ], !dbg !944

161:                                              ; preds = %147, %156
  %162 = phi i64 [ %154, %147 ], [ %158, %156 ]
  %163 = load i64, i64* %85, align 8, !dbg !945, !tbaa !946
  %164 = load i64, i64* %86, align 8, !dbg !945, !tbaa !946
  %165 = load i64, i64* %87, align 8, !dbg !945, !tbaa !947
  %166 = load i64, i64* %88, align 8, !dbg !945, !tbaa !947
  %167 = icmp eq i64 %163, %164, !dbg !945
  %168 = icmp eq i64 %165, %166, !dbg !945
  %169 = and i1 %167, %168, !dbg !945
  br i1 %169, label %170, label %189, !dbg !948

170:                                              ; preds = %161
  %171 = load i32, i32* @input_desc, align 4, !dbg !949, !tbaa !675
  %172 = call i64 @lseek(i32 noundef %171, i64 noundef 0, i32 noundef 1) #34, !dbg !950
  call void @llvm.dbg.value(metadata i64 %172, metadata !235, metadata !DIExpression()), !dbg !951
  %173 = icmp sgt i64 %172, -1, !dbg !952
  br i1 %173, label %174, label %189, !dbg !953

174:                                              ; preds = %170
  %175 = icmp slt i32 %100, -1, !dbg !954
  br i1 %175, label %176, label %178, !dbg !956

176:                                              ; preds = %174
  %177 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 1, i32 noundef 3) #34, !dbg !957
  call void @llvm.dbg.value(metadata i32 %177, metadata !226, metadata !DIExpression()), !dbg !795
  br label %178, !dbg !958

178:                                              ; preds = %176, %174
  %179 = phi i32 [ %177, %176 ], [ %100, %174 ], !dbg !795
  call void @llvm.dbg.value(metadata i32 %179, metadata !226, metadata !DIExpression()), !dbg !795
  %180 = and i32 %179, -2147482624, !dbg !959
  %181 = icmp eq i32 %180, 1024, !dbg !959
  %182 = select i1 %181, i32 2, i32 1, !dbg !960
  call void @llvm.dbg.value(metadata i32 %182, metadata !240, metadata !DIExpression()), !dbg !961
  %183 = call i64 @lseek(i32 noundef 1, i64 noundef 0, i32 noundef %182) #34, !dbg !962
  %184 = icmp slt i64 %172, %183, !dbg !964
  br i1 %184, label %185, label %189, !dbg !965

185:                                              ; preds = %178
  %186 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i32 noundef 5) #34, !dbg !966
  %187 = load i8*, i8** @infile, align 8, !dbg !966, !tbaa !575
  %188 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %187) #34, !dbg !966
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %186, i8* noundef %188) #34, !dbg !966
  call void @llvm.dbg.value(metadata i8 poison, metadata !229, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %179, metadata !226, metadata !DIExpression()), !dbg !795
  br label %536

189:                                              ; preds = %170, %178, %156, %156, %161
  %190 = phi i64 [ %158, %156 ], [ %162, %161 ], [ %158, %156 ], [ %162, %178 ], [ %162, %170 ]
  %191 = phi i32 [ %100, %156 ], [ %100, %161 ], [ %100, %156 ], [ %179, %178 ], [ %100, %170 ], !dbg !795
  call void @llvm.dbg.value(metadata i8 poison, metadata !229, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %191, metadata !226, metadata !DIExpression()), !dbg !795
  br i1 %91, label %235, label %192, !dbg !968

192:                                              ; preds = %189
  %193 = icmp eq i32 %142, 32768
  %194 = select i1 %77, i1 %193, i1 false, !dbg !969
  br i1 %194, label %195, label %206, !dbg !969

195:                                              ; preds = %192, %195
  %196 = phi i1 [ false, %195 ], [ true, %192 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !970, metadata !DIExpression()) #34, !dbg !979
  %197 = load i32, i32* @input_desc, align 4, !dbg !981, !tbaa !675
  %198 = call i64 @rpl_copy_file_range(i32 noundef %197, i64* noundef null, i32 noundef 1, i64* noundef null, i64 noundef 9223372035781033984, i32 noundef 0) #34, !dbg !983
  switch i64 %198, label %195 [
    i64 0, label %205
    i64 -1, label %199
  ], !dbg !984, !llvm.loop !985

199:                                              ; preds = %195
  %200 = tail call i32* @__errno_location() #37, !dbg !988
  %201 = load i32, i32* %200, align 4, !dbg !988, !tbaa !675
  switch i32 %201, label %202 [
    i32 38, label %206
    i32 95, label %206
    i32 22, label %206
    i32 9, label %206
    i32 18, label %206
    i32 26, label %206
    i32 1, label %206
    i32 27, label %206
  ], !dbg !991

202:                                              ; preds = %199
  %203 = load i8*, i8** @infile, align 8, !dbg !992, !tbaa !575
  %204 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %203) #34, !dbg !992
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %201, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* noundef %204) #34, !dbg !992
  call void @llvm.dbg.value(metadata i32 undef, metadata !244, metadata !DIExpression()), !dbg !993
  br label %532, !dbg !994

205:                                              ; preds = %195
  call void @llvm.dbg.value(metadata i32 undef, metadata !244, metadata !DIExpression()), !dbg !993
  br i1 %196, label %206, label %532, !dbg !994

206:                                              ; preds = %199, %199, %199, %199, %199, %199, %199, %199, %192, %205
  %207 = icmp sgt i64 %190, %76, !dbg !995
  %208 = select i1 %207, i64 %190, i64 %76, !dbg !995
  call void @llvm.dbg.value(metadata i64 %208, metadata !234, metadata !DIExpression()), !dbg !899
  %209 = call noalias nonnull i8* @xalignalloc(i64 noundef %81, i64 noundef %208) #39, !dbg !998
  call void @llvm.dbg.value(metadata i8* %209, metadata !243, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i8* %209, metadata !999, metadata !DIExpression()) #34, !dbg !1007
  call void @llvm.dbg.value(metadata i64 %208, metadata !1004, metadata !DIExpression()) #34, !dbg !1007
  br label %210, !dbg !1009

210:                                              ; preds = %221, %206
  %211 = load i32, i32* @input_desc, align 4, !dbg !1010, !tbaa !675
  %212 = call i64 @read(i32 noundef %211, i8* noundef nonnull %209, i64 noundef %208) #34, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %212, metadata !1005, metadata !DIExpression()) #34, !dbg !1012
  %213 = icmp slt i64 %212, 0, !dbg !1013
  br i1 %213, label %214, label %219, !dbg !1015

214:                                              ; preds = %210
  %215 = tail call i32* @__errno_location() #37, !dbg !1016
  %216 = load i32, i32* %215, align 4, !dbg !1016, !tbaa !675
  %217 = load i8*, i8** @infile, align 8, !dbg !1016, !tbaa !575
  %218 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %217) #34, !dbg !1016
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %216, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* noundef %218) #34, !dbg !1016
  br label %233, !dbg !1018

219:                                              ; preds = %210
  %220 = icmp eq i64 %212, 0, !dbg !1019
  br i1 %220, label %233, label %221, !dbg !1021

221:                                              ; preds = %219
  %222 = call i64 @full_write(i32 noundef 1, i8* noundef nonnull %209, i64 noundef %212) #34, !dbg !1022
  %223 = icmp eq i64 %222, %212, !dbg !1024
  br i1 %223, label %210, label %224, !dbg !1025

224:                                              ; preds = %221
  %225 = tail call i32* @__errno_location() #37, !dbg !1026
  %226 = load i32, i32* %225, align 4, !dbg !1026, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %226, metadata !1029, metadata !DIExpression()) #34, !dbg !1031
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1032, !tbaa !575
  %228 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %227) #34, !dbg !1032
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1033, !tbaa !575
  %230 = call i32 @fpurge(%struct._IO_FILE* noundef %229) #34, !dbg !1034
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1035, !tbaa !575
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %231) #34, !dbg !1035
  %232 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i32 noundef 5) #34, !dbg !1036
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %226, i8* noundef %232) #34, !dbg !1036
  unreachable, !dbg !1036

233:                                              ; preds = %219, %214
  %234 = xor i1 %213, true, !dbg !1037
  call void @llvm.dbg.value(metadata !DIArgList(i1 %101, i1 %234), metadata !229, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !795
  br label %532

235:                                              ; preds = %189
  %236 = add nsw i64 %190, 1, !dbg !1038
  %237 = call noalias nonnull i8* @xalignalloc(i64 noundef %81, i64 noundef %236) #39, !dbg !1039
  call void @llvm.dbg.value(metadata i8* %237, metadata !243, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i64 %158, metadata !247, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value)), !dbg !1040
  %238 = shl i64 %190, 2, !dbg !1041
  call void @llvm.dbg.value(metadata i64 %238, metadata !247, metadata !DIExpression()), !dbg !1040
  %239 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %238, i64 %76), !dbg !1043
  %240 = extractvalue { i64, i1 } %239, 1, !dbg !1043
  call void @llvm.dbg.value(metadata i64 undef, metadata !247, metadata !DIExpression()), !dbg !1040
  br i1 %240, label %245, label %241, !dbg !1044

241:                                              ; preds = %235
  %242 = extractvalue { i64, i1 } %239, 0, !dbg !1043
  call void @llvm.dbg.value(metadata i64 %242, metadata !247, metadata !DIExpression()), !dbg !1040
  %243 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %242, i64 19), !dbg !1045
  %244 = extractvalue { i64, i1 } %243, 1, !dbg !1045
  call void @llvm.dbg.value(metadata i64 undef, metadata !247, metadata !DIExpression()), !dbg !1040
  br i1 %244, label %245, label %246, !dbg !1046

245:                                              ; preds = %241, %235
  call void @xalloc_die() #36, !dbg !1047
  unreachable, !dbg !1047

246:                                              ; preds = %241
  %247 = extractvalue { i64, i1 } %243, 0, !dbg !1045
  call void @llvm.dbg.value(metadata i64 %247, metadata !247, metadata !DIExpression()), !dbg !1040
  %248 = call noalias nonnull i8* @xalignalloc(i64 noundef %81, i64 noundef %247) #39, !dbg !1048
  call void @llvm.dbg.value(metadata i8* %248, metadata !249, metadata !DIExpression()), !dbg !1040
  call void @llvm.dbg.value(metadata i8* %237, metadata !1049, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %158, metadata !1054, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %248, metadata !1055, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %76, metadata !1056, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i1 %14, metadata !1057, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i1 %13, metadata !1058, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i1 %18, metadata !1059, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i1 %17, metadata !1060, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i1 %15, metadata !1061, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i1 %16, metadata !1062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !1080
  %249 = load i32, i32* @newlines2, align 4, !dbg !1082, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %249, metadata !1064, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i8 1, metadata !1065, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %237, metadata !1066, metadata !DIExpression()) #34, !dbg !1080
  %250 = getelementptr inbounds i8, i8* %237, i64 1, !dbg !1083
  call void @llvm.dbg.value(metadata i8* %250, metadata !1067, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %248, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  %251 = getelementptr inbounds i8, i8* %248, i64 %76
  %252 = ptrtoint i8* %248 to i64
  br label %253, !dbg !1084

253:                                              ; preds = %420, %246
  %254 = phi i8* [ %248, %246 ], [ %421, %420 ], !dbg !1085
  %255 = phi i32 [ %249, %246 ], [ %422, %420 ], !dbg !1086
  %256 = phi i1 [ true, %246 ], [ %414, %420 ]
  %257 = phi i8* [ %237, %246 ], [ %415, %420 ], !dbg !1087
  %258 = phi i8* [ %250, %246 ], [ %423, %420 ], !dbg !1080
  call void @llvm.dbg.value(metadata i8* %258, metadata !1067, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %257, metadata !1066, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i8 poison, metadata !1065, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i32 %255, metadata !1064, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %254, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  %259 = icmp ugt i8* %251, %254, !dbg !1088
  br i1 %259, label %282, label %260, !dbg !1089

260:                                              ; preds = %253
  %261 = ptrtoint i8* %254 to i64
  br label %262, !dbg !1090

262:                                              ; preds = %275, %260
  %263 = phi i8* [ %276, %275 ], [ %248, %260 ], !dbg !1091
  call void @llvm.dbg.value(metadata i8* %263, metadata !1069, metadata !DIExpression()) #34, !dbg !1091
  %264 = call i64 @full_write(i32 noundef 1, i8* noundef %263, i64 noundef %76) #34, !dbg !1092
  %265 = icmp eq i64 %264, %76, !dbg !1095
  br i1 %265, label %275, label %266, !dbg !1096

266:                                              ; preds = %262
  %267 = tail call i32* @__errno_location() #37, !dbg !1097
  %268 = load i32, i32* %267, align 4, !dbg !1097, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %268, metadata !1029, metadata !DIExpression()) #34, !dbg !1099
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1100, !tbaa !575
  %270 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %269) #34, !dbg !1100
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1101, !tbaa !575
  %272 = call i32 @fpurge(%struct._IO_FILE* noundef %271) #34, !dbg !1102
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1103, !tbaa !575
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %273) #34, !dbg !1103
  %274 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i32 noundef 5) #34, !dbg !1104
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %268, i8* noundef %274) #34, !dbg !1104
  unreachable, !dbg !1104

275:                                              ; preds = %262
  %276 = getelementptr inbounds i8, i8* %263, i64 %76, !dbg !1105
  call void @llvm.dbg.value(metadata i8* %276, metadata !1069, metadata !DIExpression()) #34, !dbg !1091
  call void @llvm.dbg.value(metadata i8* %254, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  %277 = ptrtoint i8* %276 to i64, !dbg !1106
  %278 = sub i64 %261, %277, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %278, metadata !1074, metadata !DIExpression()) #34, !dbg !1091
  %279 = icmp slt i64 %278, %76, !dbg !1107
  br i1 %279, label %280, label %262, !dbg !1108, !llvm.loop !1109

280:                                              ; preds = %275
  call void @llvm.dbg.value(metadata i8* %248, metadata !1111, metadata !DIExpression()) #34, !dbg !1119
  call void @llvm.dbg.value(metadata i8* %276, metadata !1117, metadata !DIExpression()) #34, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %278, metadata !1118, metadata !DIExpression()) #34, !dbg !1119
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %248, i8* noundef nonnull align 1 %276, i64 noundef %278, i1 noundef false) #34, !dbg !1121
  %281 = getelementptr inbounds i8, i8* %248, i64 %278, !dbg !1122
  call void @llvm.dbg.value(metadata i8* %281, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  br label %282, !dbg !1123

282:                                              ; preds = %280, %253
  %283 = phi i8* [ %254, %253 ], [ %281, %280 ], !dbg !1080
  %284 = icmp ugt i8* %258, %257, !dbg !1124
  br i1 %284, label %285, label %363, !dbg !1125

285:                                              ; preds = %282
  call void @llvm.dbg.value(metadata i8 0, metadata !1075, metadata !DIExpression()) #34, !dbg !1126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %95) #34, !dbg !1127
  call void @llvm.dbg.value(metadata i32 0, metadata !1078, metadata !DIExpression()) #34, !dbg !1126
  store i32 0, i32* %3, align 4, !dbg !1128, !tbaa !675
  br i1 %256, label %286, label %301, !dbg !1129

286:                                              ; preds = %285
  %287 = load i32, i32* @input_desc, align 4, !dbg !1131, !tbaa !675
  call void @llvm.dbg.value(metadata i32* %3, metadata !1078, metadata !DIExpression(DW_OP_deref)) #34, !dbg !1126
  %288 = call i32 (i32, i64, ...) @ioctl(i32 noundef %287, i64 noundef 21531, i32* noundef nonnull %3) #34, !dbg !1132
  %289 = icmp slt i32 %288, 0, !dbg !1133
  br i1 %289, label %290, label %297, !dbg !1134

290:                                              ; preds = %286
  %291 = tail call i32* @__errno_location() #37, !dbg !1135
  %292 = load i32, i32* %291, align 4, !dbg !1135, !tbaa !675
  switch i32 %292, label %293 [
    i32 95, label %297
    i32 25, label %297
    i32 22, label %297
    i32 19, label %297
    i32 38, label %297
  ], !dbg !1138

293:                                              ; preds = %290
  %294 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.76, i64 0, i64 0), i32 noundef 5) #34, !dbg !1139
  %295 = load i8*, i8** @infile, align 8, !dbg !1139, !tbaa !575
  %296 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %295) #34, !dbg !1139
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %292, i8* noundef %294, i8* noundef %296) #34, !dbg !1139
  br label %530, !dbg !1141

297:                                              ; preds = %290, %290, %290, %290, %290, %286
  %298 = phi i1 [ false, %290 ], [ false, %290 ], [ false, %290 ], [ false, %290 ], [ false, %290 ], [ true, %286 ]
  %299 = load i32, i32* %3, align 4, !dbg !1142, !tbaa !675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1065, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i32 %299, metadata !1078, metadata !DIExpression()) #34, !dbg !1126
  %300 = icmp eq i32 %299, 0, !dbg !1144
  call void @llvm.dbg.value(metadata i8 poison, metadata !1075, metadata !DIExpression()) #34, !dbg !1126
  br i1 %300, label %301, label %318, !dbg !1145

301:                                              ; preds = %297, %285
  %302 = phi i1 [ %298, %297 ], [ false, %285 ]
  call void @llvm.dbg.value(metadata i8* %248, metadata !1146, metadata !DIExpression()) #34, !dbg !1153
  call void @llvm.dbg.value(metadata i8** undef, metadata !1151, metadata !DIExpression()) #34, !dbg !1153
  %303 = ptrtoint i8* %283 to i64, !dbg !1156
  %304 = sub i64 %303, %252, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %304, metadata !1152, metadata !DIExpression()) #34, !dbg !1153
  %305 = icmp sgt i64 %304, 0, !dbg !1157
  br i1 %305, label %306, label %318, !dbg !1159

306:                                              ; preds = %301
  %307 = call i64 @full_write(i32 noundef 1, i8* noundef nonnull %248, i64 noundef %304) #34, !dbg !1160
  %308 = icmp eq i64 %307, %304, !dbg !1163
  br i1 %308, label %318, label %309, !dbg !1164

309:                                              ; preds = %306
  %310 = tail call i32* @__errno_location() #37, !dbg !1165
  %311 = load i32, i32* %310, align 4, !dbg !1165, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %311, metadata !1029, metadata !DIExpression()) #34, !dbg !1167
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1168, !tbaa !575
  %313 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %312) #34, !dbg !1168
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1169, !tbaa !575
  %315 = call i32 @fpurge(%struct._IO_FILE* noundef %314) #34, !dbg !1170
  %316 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1171, !tbaa !575
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %316) #34, !dbg !1171
  %317 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i32 noundef 5) #34, !dbg !1172
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %311, i8* noundef %317) #34, !dbg !1172
  unreachable, !dbg !1172

318:                                              ; preds = %306, %301, %297
  %319 = phi i1 [ %298, %297 ], [ %302, %306 ], [ %302, %301 ]
  %320 = phi i8* [ %283, %297 ], [ %248, %306 ], [ %283, %301 ], !dbg !1080
  %321 = load i32, i32* @input_desc, align 4, !dbg !1173, !tbaa !675
  %322 = call i64 @read(i32 noundef %321, i8* noundef nonnull %237, i64 noundef %190) #34, !dbg !1174
  call void @llvm.dbg.value(metadata i64 %322, metadata !1079, metadata !DIExpression()) #34, !dbg !1126
  %323 = icmp slt i64 %322, 0, !dbg !1175
  br i1 %323, label %324, label %343, !dbg !1177

324:                                              ; preds = %318
  %325 = tail call i32* @__errno_location() #37, !dbg !1178
  %326 = load i32, i32* %325, align 4, !dbg !1178, !tbaa !675
  %327 = load i8*, i8** @infile, align 8, !dbg !1178, !tbaa !575
  %328 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %327) #34, !dbg !1178
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %326, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* noundef %328) #34, !dbg !1178
  call void @llvm.dbg.value(metadata i8* %248, metadata !1146, metadata !DIExpression()) #34, !dbg !1180
  call void @llvm.dbg.value(metadata i8** undef, metadata !1151, metadata !DIExpression()) #34, !dbg !1180
  %329 = ptrtoint i8* %320 to i64, !dbg !1182
  %330 = sub i64 %329, %252, !dbg !1182
  call void @llvm.dbg.value(metadata i64 %330, metadata !1152, metadata !DIExpression()) #34, !dbg !1180
  %331 = icmp sgt i64 %330, 0, !dbg !1183
  br i1 %331, label %332, label %530, !dbg !1184

332:                                              ; preds = %324
  %333 = call i64 @full_write(i32 noundef 1, i8* noundef nonnull %248, i64 noundef %330) #34, !dbg !1185
  %334 = icmp eq i64 %333, %330, !dbg !1186
  br i1 %334, label %530, label %335, !dbg !1187

335:                                              ; preds = %332
  %336 = load i32, i32* %325, align 4, !dbg !1188, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %336, metadata !1029, metadata !DIExpression()) #34, !dbg !1190
  %337 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1191, !tbaa !575
  %338 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %337) #34, !dbg !1191
  %339 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1192, !tbaa !575
  %340 = call i32 @fpurge(%struct._IO_FILE* noundef %339) #34, !dbg !1193
  %341 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1194, !tbaa !575
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %341) #34, !dbg !1194
  %342 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i32 noundef 5) #34, !dbg !1195
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %336, i8* noundef %342) #34, !dbg !1195
  unreachable, !dbg !1195

343:                                              ; preds = %318
  %344 = icmp eq i64 %322, 0, !dbg !1196
  br i1 %344, label %345, label %361, !dbg !1198

345:                                              ; preds = %343
  call void @llvm.dbg.value(metadata i8* %248, metadata !1146, metadata !DIExpression()) #34, !dbg !1199
  call void @llvm.dbg.value(metadata i8** undef, metadata !1151, metadata !DIExpression()) #34, !dbg !1199
  %346 = ptrtoint i8* %320 to i64, !dbg !1202
  %347 = sub i64 %346, %252, !dbg !1202
  call void @llvm.dbg.value(metadata i64 %347, metadata !1152, metadata !DIExpression()) #34, !dbg !1199
  %348 = icmp sgt i64 %347, 0, !dbg !1203
  br i1 %348, label %349, label %530, !dbg !1204

349:                                              ; preds = %345
  %350 = call i64 @full_write(i32 noundef 1, i8* noundef nonnull %248, i64 noundef %347) #34, !dbg !1205
  %351 = icmp eq i64 %350, %347, !dbg !1206
  br i1 %351, label %530, label %352, !dbg !1207

352:                                              ; preds = %349
  %353 = tail call i32* @__errno_location() #37, !dbg !1208
  %354 = load i32, i32* %353, align 4, !dbg !1208, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %354, metadata !1029, metadata !DIExpression()) #34, !dbg !1210
  %355 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1211, !tbaa !575
  %356 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %355) #34, !dbg !1211
  %357 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1212, !tbaa !575
  %358 = call i32 @fpurge(%struct._IO_FILE* noundef %357) #34, !dbg !1213
  %359 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1214, !tbaa !575
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %359) #34, !dbg !1214
  %360 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i32 noundef 5) #34, !dbg !1215
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %354, i8* noundef %360) #34, !dbg !1215
  unreachable, !dbg !1215

361:                                              ; preds = %343
  call void @llvm.dbg.value(metadata i8* %237, metadata !1067, metadata !DIExpression()) #34, !dbg !1080
  %362 = getelementptr inbounds i8, i8* %237, i64 %322, !dbg !1216
  call void @llvm.dbg.value(metadata i8* %362, metadata !1066, metadata !DIExpression()) #34, !dbg !1080
  store i8 10, i8* %362, align 1, !dbg !1217, !tbaa !684
  call void @llvm.dbg.value(metadata i8 poison, metadata !1065, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %95) #34, !dbg !1218
  br label %411

363:                                              ; preds = %282
  %364 = add nsw i32 %255, 1, !dbg !1219
  call void @llvm.dbg.value(metadata i32 %364, metadata !1064, metadata !DIExpression()) #34, !dbg !1080
  %365 = icmp sgt i32 %255, -1, !dbg !1222
  br i1 %365, label %366, label %397, !dbg !1223

366:                                              ; preds = %363
  %367 = icmp eq i32 %255, 0, !dbg !1224
  %368 = or i1 %367, %92, !dbg !1227
  %369 = select i1 %367, i32 1, i32 2, !dbg !1227
  br i1 %368, label %370, label %411, !dbg !1227

370:                                              ; preds = %366
  call void @llvm.dbg.value(metadata i32 %369, metadata !1064, metadata !DIExpression()) #34, !dbg !1080
  br i1 %94, label %397, label %371, !dbg !1228

371:                                              ; preds = %370
  %372 = load i8*, i8** @line_num_start, align 8
  br label %373, !dbg !1230

373:                                              ; preds = %378, %371
  %374 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), %371 ], [ %379, %378 ], !dbg !1236
  call void @llvm.dbg.value(metadata i8* %374, metadata !1233, metadata !DIExpression()) #34, !dbg !1236
  %375 = load i8, i8* %374, align 1, !dbg !1237, !tbaa !684
  %376 = add i8 %375, 1, !dbg !1237
  store i8 %376, i8* %374, align 1, !dbg !1237, !tbaa !684
  %377 = icmp ult i8 %375, 57, !dbg !1240
  br i1 %377, label %392, label %378, !dbg !1241

378:                                              ; preds = %373
  %379 = getelementptr inbounds i8, i8* %374, i64 -1, !dbg !1242
  call void @llvm.dbg.value(metadata i8* %379, metadata !1233, metadata !DIExpression()) #34, !dbg !1236
  store i8 48, i8* %374, align 1, !dbg !1243, !tbaa !684
  %380 = icmp ult i8* %379, %372, !dbg !1244
  br i1 %380, label %381, label %373, !dbg !1245, !llvm.loop !1246

381:                                              ; preds = %378
  %382 = icmp ugt i8* %372, getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), !dbg !1248
  br i1 %382, label %383, label %385, !dbg !1250

383:                                              ; preds = %381
  %384 = getelementptr inbounds i8, i8* %372, i64 -1, !dbg !1251
  store i8* %384, i8** @line_num_start, align 8, !dbg !1251, !tbaa !575
  store i8 49, i8* %384, align 1, !dbg !1252, !tbaa !684
  br label %386, !dbg !1253

385:                                              ; preds = %381
  store i8 62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), align 4, !dbg !1254, !tbaa !684
  br label %386

386:                                              ; preds = %385, %383
  %387 = phi i8* [ %372, %385 ], [ %384, %383 ], !dbg !1255
  %388 = load i8*, i8** @line_num_print, align 8, !dbg !1257, !tbaa !575
  %389 = icmp ult i8* %387, %388, !dbg !1258
  br i1 %389, label %390, label %394, !dbg !1259

390:                                              ; preds = %386
  %391 = getelementptr inbounds i8, i8* %388, i64 -1, !dbg !1260
  store i8* %391, i8** @line_num_print, align 8, !dbg !1260, !tbaa !575
  br label %394, !dbg !1261

392:                                              ; preds = %373
  %393 = load i8*, i8** @line_num_print, align 8, !dbg !1262, !tbaa !575
  br label %394, !dbg !1262

394:                                              ; preds = %392, %390, %386
  %395 = phi i8* [ %393, %392 ], [ %388, %386 ], [ %391, %390 ], !dbg !1262
  call void @llvm.dbg.value(metadata i8* %283, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %283, metadata !1263, metadata !DIExpression()) #34, !dbg !1270
  call void @llvm.dbg.value(metadata i8* %395, metadata !1269, metadata !DIExpression()) #34, !dbg !1270
  %396 = call i8* @stpcpy(i8* %283, i8* %395), !dbg !1272
  call void @llvm.dbg.value(metadata i8* %396, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  br label %397, !dbg !1273

397:                                              ; preds = %394, %370, %363
  %398 = phi i8* [ %283, %370 ], [ %396, %394 ], [ %283, %363 ], !dbg !1080
  %399 = phi i32 [ %369, %370 ], [ %369, %394 ], [ %364, %363 ], !dbg !1274
  call void @llvm.dbg.value(metadata i32 %399, metadata !1064, metadata !DIExpression()) #34, !dbg !1080
  br i1 %15, label %400, label %408, !dbg !1275

400:                                              ; preds = %397
  %401 = load i1, i1* @pending_cr, align 1, !dbg !1276
  br i1 %401, label %402, label %405, !dbg !1280

402:                                              ; preds = %400
  call void @llvm.dbg.value(metadata i8* %398, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  %403 = getelementptr inbounds i8, i8* %398, i64 1, !dbg !1281
  call void @llvm.dbg.value(metadata i8* %403, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 94, i8* %398, align 1, !dbg !1283, !tbaa !684
  %404 = getelementptr inbounds i8, i8* %398, i64 2, !dbg !1284
  call void @llvm.dbg.value(metadata i8* %404, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 77, i8* %403, align 1, !dbg !1285, !tbaa !684
  store i1 false, i1* @pending_cr, align 1, !dbg !1286
  br label %405, !dbg !1287

405:                                              ; preds = %402, %400
  %406 = phi i8* [ %404, %402 ], [ %398, %400 ], !dbg !1080
  call void @llvm.dbg.value(metadata i8* %406, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  %407 = getelementptr inbounds i8, i8* %406, i64 1, !dbg !1288
  call void @llvm.dbg.value(metadata i8* %407, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 36, i8* %406, align 1, !dbg !1289, !tbaa !684
  br label %408, !dbg !1290

408:                                              ; preds = %405, %397
  %409 = phi i8* [ %407, %405 ], [ %398, %397 ], !dbg !1080
  call void @llvm.dbg.value(metadata i8* %409, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  %410 = getelementptr inbounds i8, i8* %409, i64 1, !dbg !1291
  call void @llvm.dbg.value(metadata i8* %410, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 10, i8* %409, align 1, !dbg !1292, !tbaa !684
  br label %411

411:                                              ; preds = %408, %366, %361
  %412 = phi i8* [ %320, %361 ], [ %410, %408 ], [ %283, %366 ], !dbg !1080
  %413 = phi i32 [ %255, %361 ], [ %399, %408 ], [ 2, %366 ], !dbg !1080
  %414 = phi i1 [ %319, %361 ], [ %256, %408 ], [ %256, %366 ]
  %415 = phi i8* [ %362, %361 ], [ %257, %408 ], [ %257, %366 ], !dbg !1087
  %416 = phi i8* [ %237, %361 ], [ %258, %408 ], [ %258, %366 ]
  %417 = getelementptr inbounds i8, i8* %416, i64 1, !dbg !1293
  %418 = load i8, i8* %416, align 1, !dbg !1293, !tbaa !684
  call void @llvm.dbg.value(metadata i8 %418, metadata !1063, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %417, metadata !1067, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %415, metadata !1066, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i8 poison, metadata !1065, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i32 %413, metadata !1064, metadata !DIExpression()) #34, !dbg !1080
  %419 = icmp eq i8 %418, 10, !dbg !1294
  br i1 %419, label %420, label %424, !dbg !1295

420:                                              ; preds = %513, %494, %411
  %421 = phi i8* [ %412, %411 ], [ %461, %494 ], [ %505, %513 ]
  %422 = phi i32 [ %413, %411 ], [ -1, %494 ], [ -1, %513 ]
  %423 = phi i8* [ %417, %411 ], [ %462, %494 ], [ %506, %513 ]
  br label %253, !dbg !1080, !llvm.loop !1296

424:                                              ; preds = %411
  %425 = load i1, i1* @pending_cr, align 1, !dbg !1299
  br i1 %425, label %426, label %428, !dbg !1301

426:                                              ; preds = %424
  call void @llvm.dbg.value(metadata i8* %412, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  %427 = getelementptr inbounds i8, i8* %412, i64 1, !dbg !1302
  call void @llvm.dbg.value(metadata i8* %427, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 13, i8* %412, align 1, !dbg !1304, !tbaa !684
  store i1 false, i1* @pending_cr, align 1, !dbg !1305
  br label %428, !dbg !1306

428:                                              ; preds = %426, %424
  %429 = phi i8* [ %427, %426 ], [ %412, %424 ], !dbg !1080
  %430 = icmp sgt i32 %413, -1, !dbg !1307
  %431 = and i1 %18, %430, !dbg !1309
  br i1 %431, label %432, label %458, !dbg !1309

432:                                              ; preds = %428
  %433 = load i8*, i8** @line_num_start, align 8
  br label %434, !dbg !1310

434:                                              ; preds = %439, %432
  %435 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), %432 ], [ %440, %439 ], !dbg !1313
  call void @llvm.dbg.value(metadata i8* %435, metadata !1233, metadata !DIExpression()) #34, !dbg !1313
  %436 = load i8, i8* %435, align 1, !dbg !1314, !tbaa !684
  %437 = add i8 %436, 1, !dbg !1314
  store i8 %437, i8* %435, align 1, !dbg !1314, !tbaa !684
  %438 = icmp ult i8 %436, 57, !dbg !1315
  br i1 %438, label %453, label %439, !dbg !1316

439:                                              ; preds = %434
  %440 = getelementptr inbounds i8, i8* %435, i64 -1, !dbg !1317
  call void @llvm.dbg.value(metadata i8* %440, metadata !1233, metadata !DIExpression()) #34, !dbg !1313
  store i8 48, i8* %435, align 1, !dbg !1318, !tbaa !684
  %441 = icmp ult i8* %440, %433, !dbg !1319
  br i1 %441, label %442, label %434, !dbg !1320, !llvm.loop !1321

442:                                              ; preds = %439
  %443 = icmp ugt i8* %433, getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), !dbg !1323
  br i1 %443, label %444, label %446, !dbg !1324

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %433, i64 -1, !dbg !1325
  store i8* %445, i8** @line_num_start, align 8, !dbg !1325, !tbaa !575
  store i8 49, i8* %445, align 1, !dbg !1326, !tbaa !684
  br label %447, !dbg !1327

446:                                              ; preds = %442
  store i8 62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), align 4, !dbg !1328, !tbaa !684
  br label %447

447:                                              ; preds = %446, %444
  %448 = phi i8* [ %433, %446 ], [ %445, %444 ], !dbg !1329
  %449 = load i8*, i8** @line_num_print, align 8, !dbg !1330, !tbaa !575
  %450 = icmp ult i8* %448, %449, !dbg !1331
  br i1 %450, label %451, label %455, !dbg !1332

451:                                              ; preds = %447
  %452 = getelementptr inbounds i8, i8* %449, i64 -1, !dbg !1333
  store i8* %452, i8** @line_num_print, align 8, !dbg !1333, !tbaa !575
  br label %455, !dbg !1334

453:                                              ; preds = %434
  %454 = load i8*, i8** @line_num_print, align 8, !dbg !1335, !tbaa !575
  br label %455, !dbg !1335

455:                                              ; preds = %453, %451, %447
  %456 = phi i8* [ %454, %453 ], [ %449, %447 ], [ %452, %451 ], !dbg !1335
  call void @llvm.dbg.value(metadata i8* %429, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %429, metadata !1263, metadata !DIExpression()) #34, !dbg !1336
  call void @llvm.dbg.value(metadata i8* %456, metadata !1269, metadata !DIExpression()) #34, !dbg !1336
  %457 = call i8* @stpcpy(i8* %429, i8* %456), !dbg !1338
  call void @llvm.dbg.value(metadata i8* %457, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  br label %458, !dbg !1339

458:                                              ; preds = %455, %428
  %459 = phi i8* [ %429, %428 ], [ %457, %455 ], !dbg !1340
  br i1 %14, label %460, label %504, !dbg !1341

460:                                              ; preds = %458, %500
  %461 = phi i8* [ %501, %500 ], [ %459, %458 ], !dbg !1340
  %462 = phi i8* [ %502, %500 ], [ %417, %458 ], !dbg !1340
  %463 = phi i8 [ %503, %500 ], [ %418, %458 ], !dbg !1340
  call void @llvm.dbg.value(metadata i8 %463, metadata !1063, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %462, metadata !1067, metadata !DIExpression()) #34, !dbg !1080
  %464 = icmp ugt i8 %463, 31, !dbg !1342
  br i1 %464, label %465, label %489, !dbg !1347

465:                                              ; preds = %460
  %466 = icmp ult i8 %463, 127, !dbg !1348
  br i1 %466, label %467, label %469, !dbg !1351

467:                                              ; preds = %465
  call void @llvm.dbg.value(metadata i8* %461, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  %468 = getelementptr inbounds i8, i8* %461, i64 1, !dbg !1352
  call void @llvm.dbg.value(metadata i8* %468, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 %463, i8* %461, align 1, !dbg !1353, !tbaa !684
  br label %500, !dbg !1354

469:                                              ; preds = %465
  %470 = icmp eq i8 %463, 127, !dbg !1355
  call void @llvm.dbg.value(metadata i8* %461, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  %471 = getelementptr inbounds i8, i8* %461, i64 1, !dbg !1357
  call void @llvm.dbg.value(metadata i8* %471, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  br i1 %470, label %472, label %474, !dbg !1358

472:                                              ; preds = %469
  store i8 94, i8* %461, align 1, !dbg !1359, !tbaa !684
  %473 = getelementptr inbounds i8, i8* %461, i64 2, !dbg !1361
  call void @llvm.dbg.value(metadata i8* %473, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 63, i8* %471, align 1, !dbg !1362, !tbaa !684
  br label %500, !dbg !1363

474:                                              ; preds = %469
  store i8 77, i8* %461, align 1, !dbg !1364, !tbaa !684
  %475 = getelementptr inbounds i8, i8* %461, i64 2, !dbg !1366
  call void @llvm.dbg.value(metadata i8* %475, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 45, i8* %471, align 1, !dbg !1367, !tbaa !684
  %476 = icmp ugt i8 %463, -97, !dbg !1368
  br i1 %476, label %477, label %485, !dbg !1370

477:                                              ; preds = %474
  %478 = icmp eq i8 %463, -1, !dbg !1371
  br i1 %478, label %482, label %479, !dbg !1374

479:                                              ; preds = %477
  %480 = xor i8 %463, -128, !dbg !1375
  call void @llvm.dbg.value(metadata i8* %475, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  %481 = getelementptr inbounds i8, i8* %461, i64 3, !dbg !1376
  call void @llvm.dbg.value(metadata i8* %481, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 %480, i8* %475, align 1, !dbg !1377, !tbaa !684
  br label %500, !dbg !1378

482:                                              ; preds = %477
  call void @llvm.dbg.value(metadata i8* %475, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  %483 = getelementptr inbounds i8, i8* %461, i64 3, !dbg !1379
  call void @llvm.dbg.value(metadata i8* %483, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 94, i8* %475, align 1, !dbg !1381, !tbaa !684
  %484 = getelementptr inbounds i8, i8* %461, i64 4, !dbg !1382
  call void @llvm.dbg.value(metadata i8* %484, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 63, i8* %483, align 1, !dbg !1383, !tbaa !684
  br label %500

485:                                              ; preds = %474
  call void @llvm.dbg.value(metadata i8* %475, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  %486 = getelementptr inbounds i8, i8* %461, i64 3, !dbg !1384
  call void @llvm.dbg.value(metadata i8* %486, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 94, i8* %475, align 1, !dbg !1386, !tbaa !684
  %487 = add i8 %463, -64, !dbg !1387
  %488 = getelementptr inbounds i8, i8* %461, i64 4, !dbg !1388
  call void @llvm.dbg.value(metadata i8* %488, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 %487, i8* %486, align 1, !dbg !1389, !tbaa !684
  br label %500

489:                                              ; preds = %460
  %490 = icmp ne i8 %463, 9, !dbg !1390
  %491 = or i1 %13, %490, !dbg !1392
  br i1 %491, label %494, label %492, !dbg !1392

492:                                              ; preds = %489
  call void @llvm.dbg.value(metadata i8* %461, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  %493 = getelementptr inbounds i8, i8* %461, i64 1, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %493, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 9, i8* %461, align 1, !dbg !1394, !tbaa !684
  br label %500, !dbg !1395

494:                                              ; preds = %489
  %495 = icmp eq i8 %463, 10, !dbg !1396
  br i1 %495, label %420, label %496, !dbg !1398, !llvm.loop !1399

496:                                              ; preds = %494
  call void @llvm.dbg.value(metadata i8* %461, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  %497 = getelementptr inbounds i8, i8* %461, i64 1, !dbg !1401
  call void @llvm.dbg.value(metadata i8* %497, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 94, i8* %461, align 1, !dbg !1403, !tbaa !684
  %498 = add nuw nsw i8 %463, 64, !dbg !1404
  %499 = getelementptr inbounds i8, i8* %461, i64 2, !dbg !1405
  call void @llvm.dbg.value(metadata i8* %499, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 %498, i8* %497, align 1, !dbg !1406, !tbaa !684
  br label %500

500:                                              ; preds = %496, %492, %485, %482, %479, %472, %467
  %501 = phi i8* [ %468, %467 ], [ %473, %472 ], [ %484, %482 ], [ %481, %479 ], [ %488, %485 ], [ %499, %496 ], [ %493, %492 ], !dbg !1407
  %502 = getelementptr inbounds i8, i8* %462, i64 1, !dbg !1408
  call void @llvm.dbg.value(metadata i8* %502, metadata !1067, metadata !DIExpression()) #34, !dbg !1080
  %503 = load i8, i8* %462, align 1, !dbg !1409, !tbaa !684
  call void @llvm.dbg.value(metadata i8 %503, metadata !1063, metadata !DIExpression()) #34, !dbg !1080
  br label %460, !dbg !1410, !llvm.loop !1411

504:                                              ; preds = %458, %526
  %505 = phi i8* [ %527, %526 ], [ %459, %458 ], !dbg !1340
  %506 = phi i8* [ %528, %526 ], [ %417, %458 ], !dbg !1340
  %507 = phi i8 [ %529, %526 ], [ %418, %458 ], !dbg !1340
  call void @llvm.dbg.value(metadata i8 %507, metadata !1063, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %506, metadata !1067, metadata !DIExpression()) #34, !dbg !1080
  %508 = icmp eq i8 %507, 9, !dbg !1413
  %509 = and i1 %13, %508, !dbg !1417
  br i1 %509, label %510, label %513, !dbg !1417

510:                                              ; preds = %504
  call void @llvm.dbg.value(metadata i8* %505, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  %511 = getelementptr inbounds i8, i8* %505, i64 1, !dbg !1418
  call void @llvm.dbg.value(metadata i8* %511, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 94, i8* %505, align 1, !dbg !1420, !tbaa !684
  %512 = getelementptr inbounds i8, i8* %505, i64 2, !dbg !1421
  call void @llvm.dbg.value(metadata i8* %512, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 73, i8* %511, align 1, !dbg !1422, !tbaa !684
  br label %526, !dbg !1423

513:                                              ; preds = %504
  switch i8 %507, label %524 [
    i8 10, label %420
    i8 13, label %514
  ], !dbg !1424, !llvm.loop !1399

514:                                              ; preds = %513
  %515 = load i8, i8* %506, align 1, !dbg !1425, !tbaa !684
  %516 = icmp eq i8 %515, 10, !dbg !1429
  %517 = and i1 %15, %516, !dbg !1430
  br i1 %517, label %518, label %524, !dbg !1430

518:                                              ; preds = %514
  %519 = icmp eq i8* %506, %415, !dbg !1431
  br i1 %519, label %520, label %521, !dbg !1434

520:                                              ; preds = %518
  store i1 true, i1* @pending_cr, align 1, !dbg !1435
  br label %526, !dbg !1436

521:                                              ; preds = %518
  call void @llvm.dbg.value(metadata i8* %505, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  %522 = getelementptr inbounds i8, i8* %505, i64 1, !dbg !1437
  call void @llvm.dbg.value(metadata i8* %522, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 94, i8* %505, align 1, !dbg !1439, !tbaa !684
  %523 = getelementptr inbounds i8, i8* %505, i64 2, !dbg !1440
  call void @llvm.dbg.value(metadata i8* %523, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 77, i8* %522, align 1, !dbg !1441, !tbaa !684
  br label %526

524:                                              ; preds = %514, %513
  call void @llvm.dbg.value(metadata i8* %505, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  %525 = getelementptr inbounds i8, i8* %505, i64 1, !dbg !1442
  call void @llvm.dbg.value(metadata i8* %525, metadata !1068, metadata !DIExpression()) #34, !dbg !1080
  store i8 %507, i8* %505, align 1, !dbg !1443, !tbaa !684
  br label %526

526:                                              ; preds = %524, %521, %520, %510
  %527 = phi i8* [ %525, %524 ], [ %505, %520 ], [ %523, %521 ], [ %512, %510 ], !dbg !1340
  %528 = getelementptr inbounds i8, i8* %506, i64 1, !dbg !1444
  call void @llvm.dbg.value(metadata i8* %528, metadata !1067, metadata !DIExpression()) #34, !dbg !1080
  %529 = load i8, i8* %506, align 1, !dbg !1445, !tbaa !684
  call void @llvm.dbg.value(metadata i8 %529, metadata !1063, metadata !DIExpression()) #34, !dbg !1080
  br label %504, !dbg !1446, !llvm.loop !1447

530:                                              ; preds = %293, %324, %332, %345, %349
  %531 = phi i1 [ false, %293 ], [ false, %332 ], [ false, %324 ], [ true, %349 ], [ true, %345 ]
  store i32 %255, i32* @newlines2, align 4, !dbg !1126, !tbaa !675
  call void @llvm.dbg.value(metadata i8* %237, metadata !1067, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %362, metadata !1066, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.dbg.value(metadata i8 poison, metadata !1065, metadata !DIExpression()) #34, !dbg !1080
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %95) #34, !dbg !1218
  call void @llvm.dbg.value(metadata !DIArgList(i1 %101, i1 %531), metadata !229, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !795
  call void @llvm.dbg.value(metadata i8* %248, metadata !1449, metadata !DIExpression()) #34, !dbg !1455
  call void @free(i8* noundef nonnull %248) #34, !dbg !1457
  br label %532

532:                                              ; preds = %205, %202, %233, %530
  %533 = phi i1 [ %531, %530 ], [ %234, %233 ], [ false, %202 ], [ true, %205 ]
  %534 = phi i8* [ %237, %530 ], [ %209, %233 ], [ null, %202 ], [ null, %205 ], !dbg !1458
  %535 = and i1 %101, %533, !dbg !1458
  call void @llvm.dbg.value(metadata i8* %534, metadata !243, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i1 %535, metadata !229, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !795
  call void @llvm.dbg.value(metadata i8* %534, metadata !1449, metadata !DIExpression()) #34, !dbg !1459
  call void @free(i8* noundef %534) #34, !dbg !1461
  br label %536, !dbg !1462

536:                                              ; preds = %185, %532, %127
  %537 = phi i32 [ %100, %127 ], [ %191, %532 ], [ %179, %185 ], !dbg !795
  %538 = phi i1 [ false, %127 ], [ %535, %532 ], [ false, %185 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !229, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %537, metadata !226, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.label(metadata !250), !dbg !1463
  br i1 %112, label %548, label %539, !dbg !1464

539:                                              ; preds = %536
  %540 = load i32, i32* @input_desc, align 4, !dbg !1466, !tbaa !675
  %541 = call i32 @close(i32 noundef %540) #34, !dbg !1467
  %542 = icmp slt i32 %541, 0, !dbg !1468
  br i1 %542, label %543, label %548, !dbg !1469

543:                                              ; preds = %539
  %544 = tail call i32* @__errno_location() #37, !dbg !1470
  %545 = load i32, i32* %544, align 4, !dbg !1470, !tbaa !675
  %546 = load i8*, i8** @infile, align 8, !dbg !1470, !tbaa !575
  %547 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %546) #34, !dbg !1470
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %545, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* noundef %547) #34, !dbg !1470
  call void @llvm.dbg.value(metadata i8 0, metadata !229, metadata !DIExpression()), !dbg !795
  br label %548, !dbg !1472

548:                                              ; preds = %543, %539, %536
  %549 = phi i1 [ %538, %536 ], [ false, %543 ], [ %538, %539 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !229, metadata !DIExpression()), !dbg !795
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %82) #34, !dbg !1473
  br label %550, !dbg !1473

550:                                              ; preds = %548, %117
  %551 = phi i32 [ %537, %548 ], [ %100, %117 ], !dbg !887
  %552 = phi i1 [ %549, %548 ], [ false, %117 ]
  %553 = phi i1 [ %124, %548 ], [ %102, %117 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !175, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 poison, metadata !229, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %551, metadata !226, metadata !DIExpression()), !dbg !795
  %554 = add nsw i64 %99, 1, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %554, metadata !228, metadata !DIExpression()), !dbg !795
  %555 = icmp slt i64 %554, %97, !dbg !1475
  br i1 %555, label %98, label %556, !dbg !1476, !llvm.loop !1477

556:                                              ; preds = %550
  %557 = load i1, i1* @pending_cr, align 1, !dbg !1479
  br i1 %557, label %558, label %570, !dbg !1481

558:                                              ; preds = %556
  %559 = call i64 @full_write(i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i64 noundef 1) #34, !dbg !1482
  %560 = icmp eq i64 %559, 1, !dbg !1485
  br i1 %560, label %570, label %561, !dbg !1486

561:                                              ; preds = %558
  %562 = tail call i32* @__errno_location() #37, !dbg !1487
  %563 = load i32, i32* %562, align 4, !dbg !1487, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %563, metadata !1029, metadata !DIExpression()) #34, !dbg !1489
  %564 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1490, !tbaa !575
  %565 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %564) #34, !dbg !1490
  %566 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1491, !tbaa !575
  %567 = call i32 @fpurge(%struct._IO_FILE* noundef %566) #34, !dbg !1492
  %568 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1493, !tbaa !575
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %568) #34, !dbg !1493
  %569 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i32 noundef 5) #34, !dbg !1494
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %563, i8* noundef %569) #34, !dbg !1494
  unreachable, !dbg !1494

570:                                              ; preds = %558, %556
  br i1 %553, label %571, label %578, !dbg !1495

571:                                              ; preds = %570
  %572 = call i32 @close(i32 noundef 0) #34, !dbg !1497
  %573 = icmp slt i32 %572, 0, !dbg !1498
  br i1 %573, label %574, label %578, !dbg !1499

574:                                              ; preds = %571
  %575 = tail call i32* @__errno_location() #37, !dbg !1500
  %576 = load i32, i32* %575, align 4, !dbg !1500, !tbaa !675
  %577 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 noundef 5) #34, !dbg !1500
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %576, i8* noundef %577) #34, !dbg !1500
  unreachable, !dbg !1500

578:                                              ; preds = %571, %570
  %579 = xor i1 %552, true, !dbg !1501
  %580 = zext i1 %579 to i32, !dbg !1501
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #34, !dbg !1502
  ret i32 %580, !dbg !1502
}

; Function Attrs: nounwind
declare !dbg !1503 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1506 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1507 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1510 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1516 noundef i32 @fstat(i32 noundef, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare !dbg !1521 i32 @getpagesize() local_unnamed_addr #11

; Function Attrs: nofree
declare !dbg !1523 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !1527 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #13

declare !dbg !1530 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1533 void @clearerr_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind
declare !dbg !1536 i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @stpcpy(i8* noalias writeonly, i8* noalias nocapture readonly) #7

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !1540 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #15 !dbg !1543 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1545, metadata !DIExpression()), !dbg !1546
  store i8* %0, i8** @file_name, align 8, !dbg !1547, !tbaa !575
  ret void, !dbg !1548
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !1549 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1553, metadata !DIExpression()), !dbg !1554
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1555, !tbaa !1556
  ret void, !dbg !1558
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1559 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1564, !tbaa !575
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #34, !dbg !1565
  %3 = icmp eq i32 %2, 0, !dbg !1566
  br i1 %3, label %22, label %4, !dbg !1567

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1568, !tbaa !1556, !range !1569
  %6 = icmp eq i8 %5, 0, !dbg !1568
  br i1 %6, label %11, label %7, !dbg !1570

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #37, !dbg !1571
  %9 = load i32, i32* %8, align 4, !dbg !1571, !tbaa !675
  %10 = icmp eq i32 %9, 32, !dbg !1572
  br i1 %10, label %22, label %11, !dbg !1573

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.50, i64 0, i64 0), i32 noundef 5) #34, !dbg !1574
  call void @llvm.dbg.value(metadata i8* %12, metadata !1561, metadata !DIExpression()), !dbg !1575
  %13 = load i8*, i8** @file_name, align 8, !dbg !1576, !tbaa !575
  %14 = icmp eq i8* %13, null, !dbg !1576
  %15 = tail call i32* @__errno_location() #37, !dbg !1578
  %16 = load i32, i32* %15, align 4, !dbg !1578, !tbaa !675
  br i1 %14, label %19, label %17, !dbg !1579

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #34, !dbg !1580
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.51, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #34, !dbg !1580
  br label %20, !dbg !1580

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.52, i64 0, i64 0), i8* noundef %12) #34, !dbg !1581
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1582, !tbaa !675
  tail call void @_exit(i32 noundef %21) #36, !dbg !1583
  unreachable, !dbg !1583

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1584, !tbaa !575
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #34, !dbg !1586
  %25 = icmp eq i32 %24, 0, !dbg !1587
  br i1 %25, label %28, label %26, !dbg !1588

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1589, !tbaa !675
  tail call void @_exit(i32 noundef %27) #36, !dbg !1590
  unreachable, !dbg !1590

28:                                               ; preds = %22
  ret void, !dbg !1591
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_copy_file_range(i32 noundef %0, i64* noundef %1, i32 noundef %2, i64* noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #12 !dbg !1592 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1599, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i64* %1, metadata !1600, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i32 %2, metadata !1601, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i64* %3, metadata !1602, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i64 %4, metadata !1603, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i32 %5, metadata !1604, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i8 1, metadata !1605, metadata !DIExpression()), !dbg !1606
  %7 = icmp ult i64 %4, 2146435072, !dbg !1607
  %8 = select i1 %7, i64 %4, i64 2146435072, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %8, metadata !1603, metadata !DIExpression()), !dbg !1606
  %9 = tail call i64 @copy_file_range(i32 noundef %0, i64* noundef %1, i32 noundef %2, i64* noundef %3, i64 noundef %8, i32 noundef %5) #34, !dbg !1610
  ret i64 %9, !dbg !1611
}

declare !dbg !1612 i64 @copy_file_range(i32 noundef, i64* noundef, i32 noundef, i64* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !1616 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1620, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i32 %1, metadata !1621, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8* %2, metadata !1622, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1623, metadata !DIExpression()), !dbg !1625
  tail call fastcc void @flush_stdout(), !dbg !1626
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1627, !tbaa !575
  %7 = icmp eq void ()* %6, null, !dbg !1627
  br i1 %7, label %9, label %8, !dbg !1629

8:                                                ; preds = %4
  tail call void %6() #34, !dbg !1630
  br label %13, !dbg !1630

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1631, !tbaa !575
  %11 = tail call i8* @getprogname() #35, !dbg !1631
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0), i8* noundef %11) #34, !dbg !1631
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1633
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1633
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1633
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1633, !tbaa.struct !1634
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1633
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1633
  ret void, !dbg !1635
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1636 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1638, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i32 1, metadata !1640, metadata !DIExpression()) #34, !dbg !1643
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #34, !dbg !1646
  %2 = icmp slt i32 %1, 0, !dbg !1647
  br i1 %2, label %6, label %3, !dbg !1648

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1649, !tbaa !575
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #34, !dbg !1649
  br label %6, !dbg !1649

6:                                                ; preds = %3, %0
  ret void, !dbg !1650
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1651 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1653, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i32 %1, metadata !1654, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8* %2, metadata !1655, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1656, metadata !DIExpression()), !dbg !1658
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1659, !tbaa !575
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1660
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1661, metadata !DIExpression()) #34, !dbg !1704
  call void @llvm.dbg.value(metadata i8* %2, metadata !1702, metadata !DIExpression()) #34, !dbg !1704
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1706
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1706, !noalias !1707
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1706
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #34, !dbg !1706
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1706, !noalias !1707
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1711, !tbaa !675
  %12 = add i32 %11, 1, !dbg !1711
  store i32 %12, i32* @error_message_count, align 4, !dbg !1711, !tbaa !675
  %13 = icmp eq i32 %1, 0, !dbg !1712
  br i1 %13, label %24, label %14, !dbg !1714

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1715, metadata !DIExpression()) #34, !dbg !1723
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1725
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1725
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1719, metadata !DIExpression()) #34, !dbg !1726
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #34, !dbg !1727
  call void @llvm.dbg.value(metadata i8* %16, metadata !1718, metadata !DIExpression()) #34, !dbg !1723
  %17 = icmp eq i8* %16, null, !dbg !1728
  br i1 %17, label %18, label %20, !dbg !1730

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.79, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.80, i64 0, i64 0), i32 noundef 5) #34, !dbg !1731
  call void @llvm.dbg.value(metadata i8* %19, metadata !1718, metadata !DIExpression()) #34, !dbg !1723
  br label %20, !dbg !1732

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1723
  call void @llvm.dbg.value(metadata i8* %21, metadata !1718, metadata !DIExpression()) #34, !dbg !1723
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1733, !tbaa !575
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.81, i64 0, i64 0), i8* noundef %21) #34, !dbg !1733
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1734
  br label %24, !dbg !1735

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1736, !tbaa !575
  call void @llvm.dbg.value(metadata i32 10, metadata !1737, metadata !DIExpression()) #34, !dbg !1744
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1743, metadata !DIExpression()) #34, !dbg !1744
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1746
  %27 = load i8*, i8** %26, align 8, !dbg !1746, !tbaa !1747
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1746
  %29 = load i8*, i8** %28, align 8, !dbg !1746, !tbaa !1749
  %30 = icmp ult i8* %27, %29, !dbg !1746
  br i1 %30, label %33, label %31, !dbg !1746, !prof !1750

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #34, !dbg !1746
  br label %35, !dbg !1746

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1746
  store i8* %34, i8** %26, align 8, !dbg !1746, !tbaa !1747
  store i8 10, i8* %27, align 1, !dbg !1746, !tbaa !684
  br label %35, !dbg !1746

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1751, !tbaa !575
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #34, !dbg !1751
  %38 = icmp eq i32 %0, 0, !dbg !1752
  br i1 %38, label %40, label %39, !dbg !1754

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #36, !dbg !1755
  unreachable, !dbg !1755

40:                                               ; preds = %35
  ret void, !dbg !1756
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1757 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1761 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1764 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1768, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i32 %1, metadata !1769, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8* %2, metadata !1770, metadata !DIExpression()), !dbg !1772
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1773
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1773
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1771, metadata !DIExpression()), !dbg !1774
  call void @llvm.va_start(i8* nonnull %6), !dbg !1775
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1776
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1776
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1776, !tbaa.struct !1634
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #40, !dbg !1776
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1776
  call void @llvm.va_end(i8* nonnull %6), !dbg !1777
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1778
  ret void, !dbg !1778
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #18

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !284 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !301, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %1, metadata !302, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8* %2, metadata !303, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %3, metadata !304, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8* %4, metadata !305, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !306, metadata !DIExpression()), !dbg !1780
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1781, !tbaa !675
  %9 = icmp eq i32 %8, 0, !dbg !1781
  br i1 %9, label %24, label %10, !dbg !1783

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1784, !tbaa !675
  %12 = icmp eq i32 %11, %3, !dbg !1787
  br i1 %12, label %13, label %23, !dbg !1788

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1789, !tbaa !575
  %15 = icmp eq i8* %14, %2, !dbg !1790
  br i1 %15, label %39, label %16, !dbg !1791

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1792
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1793
  br i1 %19, label %20, label %23, !dbg !1793

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #35, !dbg !1794
  %22 = icmp eq i32 %21, 0, !dbg !1795
  br i1 %22, label %39, label %23, !dbg !1796

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1797, !tbaa !575
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1798, !tbaa !675
  br label %24, !dbg !1799

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1800
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1801, !tbaa !575
  %26 = icmp eq void ()* %25, null, !dbg !1801
  br i1 %26, label %28, label %27, !dbg !1803

27:                                               ; preds = %24
  tail call void %25() #34, !dbg !1804
  br label %32, !dbg !1804

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1805, !tbaa !575
  %30 = tail call i8* @getprogname() #35, !dbg !1805
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.84, i64 0, i64 0), i8* noundef %30) #34, !dbg !1805
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1807, !tbaa !575
  %34 = icmp eq i8* %2, null, !dbg !1807
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.85, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.86, i64 0, i64 0), !dbg !1807
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #34, !dbg !1807
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1808
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1808
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1808
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1808, !tbaa.struct !1634
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1808
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1808
  br label %39, !dbg !1809

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1809
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1810 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1814, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i32 %1, metadata !1815, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8* %2, metadata !1816, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i32 %3, metadata !1817, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8* %4, metadata !1818, metadata !DIExpression()), !dbg !1820
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1821
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1821
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1819, metadata !DIExpression()), !dbg !1822
  call void @llvm.va_start(i8* nonnull %8), !dbg !1823
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1824
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1824
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1824, !tbaa.struct !1634
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #40, !dbg !1824
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1824
  call void @llvm.va_end(i8* nonnull %8), !dbg !1825
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1826
  ret void, !dbg !1826
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !1827 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1832, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i64 %1, metadata !1833, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i64 %2, metadata !1834, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i32 %3, metadata !1835, metadata !DIExpression()), !dbg !1836
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #34, !dbg !1837
  ret void, !dbg !1838
}

; Function Attrs: nounwind
declare !dbg !1839 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !1842 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1880, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i32 %1, metadata !1881, metadata !DIExpression()), !dbg !1882
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1883
  br i1 %3, label %7, label %4, !dbg !1885

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1886
  call void @llvm.dbg.value(metadata i32 %5, metadata !1832, metadata !DIExpression()) #34, !dbg !1887
  call void @llvm.dbg.value(metadata i64 0, metadata !1833, metadata !DIExpression()) #34, !dbg !1887
  call void @llvm.dbg.value(metadata i64 0, metadata !1834, metadata !DIExpression()) #34, !dbg !1887
  call void @llvm.dbg.value(metadata i32 %1, metadata !1835, metadata !DIExpression()) #34, !dbg !1887
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #34, !dbg !1889
  br label %7, !dbg !1890

7:                                                ; preds = %4, %2
  ret void, !dbg !1891
}

; Function Attrs: nofree nounwind
declare !dbg !1892 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #12 !dbg !1895 {
  %3 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1897, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i32 %1, metadata !1898, metadata !DIExpression()), !dbg !1922
  %4 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1923
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #34, !dbg !1923
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1899, metadata !DIExpression()), !dbg !1924
  call void @llvm.va_start(i8* nonnull %4), !dbg !1925
  call void @llvm.dbg.value(metadata i32 -1, metadata !1910, metadata !DIExpression()), !dbg !1922
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
  ], !dbg !1926

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1927
  %7 = load i32, i32* %6, align 8, !dbg !1927
  %8 = icmp sgt i32 %7, -1, !dbg !1927
  br i1 %8, label %17, label %9, !dbg !1927

9:                                                ; preds = %5
  %10 = add nsw i32 %7, 8, !dbg !1927
  store i32 %10, i32* %6, align 8, !dbg !1927
  %11 = icmp ult i32 %7, -7, !dbg !1927
  br i1 %11, label %12, label %17, !dbg !1927

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1927
  %14 = load i8*, i8** %13, align 8, !dbg !1927
  %15 = sext i32 %7 to i64, !dbg !1927
  %16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !1927
  br label %21, !dbg !1927

17:                                               ; preds = %9, %5
  %18 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1927
  %19 = load i8*, i8** %18, align 8, !dbg !1927
  %20 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !1927
  store i8* %20, i8** %18, align 8, !dbg !1927
  br label %21, !dbg !1927

21:                                               ; preds = %17, %12
  %22 = phi i8* [ %16, %12 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*, !dbg !1927
  %24 = load i32, i32* %23, align 8, !dbg !1927
  call void @llvm.dbg.value(metadata i32 %24, metadata !1911, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i32 %0, metadata !1929, metadata !DIExpression()) #34, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %24, metadata !1932, metadata !DIExpression()) #34, !dbg !1934
  %25 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %24) #34, !dbg !1936
  call void @llvm.dbg.value(metadata i32 %25, metadata !1933, metadata !DIExpression()) #34, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %25, metadata !1910, metadata !DIExpression()), !dbg !1922
  br label %124

26:                                               ; preds = %2
  %27 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1937
  %28 = load i32, i32* %27, align 8, !dbg !1937
  %29 = icmp sgt i32 %28, -1, !dbg !1937
  br i1 %29, label %38, label %30, !dbg !1937

30:                                               ; preds = %26
  %31 = add nsw i32 %28, 8, !dbg !1937
  store i32 %31, i32* %27, align 8, !dbg !1937
  %32 = icmp ult i32 %28, -7, !dbg !1937
  br i1 %32, label %33, label %38, !dbg !1937

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1937
  %35 = load i8*, i8** %34, align 8, !dbg !1937
  %36 = sext i32 %28 to i64, !dbg !1937
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !1937
  br label %42, !dbg !1937

38:                                               ; preds = %30, %26
  %39 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1937
  %40 = load i8*, i8** %39, align 8, !dbg !1937
  %41 = getelementptr inbounds i8, i8* %40, i64 8, !dbg !1937
  store i8* %41, i8** %39, align 8, !dbg !1937
  br label %42, !dbg !1937

42:                                               ; preds = %38, %33
  %43 = phi i8* [ %37, %33 ], [ %40, %38 ]
  %44 = bitcast i8* %43 to i32*, !dbg !1937
  %45 = load i32, i32* %44, align 8, !dbg !1937
  call void @llvm.dbg.value(metadata i32 %45, metadata !1914, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i32 %0, metadata !325, metadata !DIExpression()) #34, !dbg !1939
  call void @llvm.dbg.value(metadata i32 %45, metadata !326, metadata !DIExpression()) #34, !dbg !1939
  %46 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1941, !tbaa !675
  %47 = icmp sgt i32 %46, -1, !dbg !1943
  br i1 %47, label %48, label %60, !dbg !1944

48:                                               ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %45) #34, !dbg !1945
  call void @llvm.dbg.value(metadata i32 %49, metadata !327, metadata !DIExpression()) #34, !dbg !1939
  %50 = icmp sgt i32 %49, -1, !dbg !1947
  br i1 %50, label %55, label %51, !dbg !1949

51:                                               ; preds = %48
  %52 = tail call i32* @__errno_location() #37, !dbg !1950
  %53 = load i32, i32* %52, align 4, !dbg !1950, !tbaa !675
  %54 = icmp eq i32 %53, 22, !dbg !1951
  br i1 %54, label %56, label %55, !dbg !1952

55:                                               ; preds = %51, %48
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1953, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %66, metadata !327, metadata !DIExpression()) #34, !dbg !1939
  br label %124, !dbg !1955

56:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %0, metadata !1929, metadata !DIExpression()) #34, !dbg !1956
  call void @llvm.dbg.value(metadata i32 %45, metadata !1932, metadata !DIExpression()) #34, !dbg !1956
  %57 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #34, !dbg !1959
  call void @llvm.dbg.value(metadata i32 %57, metadata !1933, metadata !DIExpression()) #34, !dbg !1956
  call void @llvm.dbg.value(metadata i32 %57, metadata !327, metadata !DIExpression()) #34, !dbg !1939
  %58 = icmp sgt i32 %57, -1, !dbg !1960
  br i1 %58, label %59, label %124, !dbg !1962

59:                                               ; preds = %56
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1963, !tbaa !675
  br label %64, !dbg !1964

60:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !1929, metadata !DIExpression()) #34, !dbg !1965
  call void @llvm.dbg.value(metadata i32 %45, metadata !1932, metadata !DIExpression()) #34, !dbg !1965
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #34, !dbg !1967
  call void @llvm.dbg.value(metadata i32 %61, metadata !1933, metadata !DIExpression()) #34, !dbg !1965
  call void @llvm.dbg.value(metadata i32 %61, metadata !327, metadata !DIExpression()) #34, !dbg !1939
  %62 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %63 = icmp eq i32 %62, -1
  br label %64

64:                                               ; preds = %60, %59
  %65 = phi i1 [ true, %59 ], [ %63, %60 ]
  %66 = phi i32 [ %57, %59 ], [ %61, %60 ], !dbg !1968
  call void @llvm.dbg.value(metadata i32 %66, metadata !327, metadata !DIExpression()) #34, !dbg !1939
  %67 = icmp sgt i32 %66, -1, !dbg !1969
  %68 = select i1 %67, i1 %65, i1 false, !dbg !1955
  br i1 %68, label %69, label %124, !dbg !1955

69:                                               ; preds = %64
  %70 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 1) #34, !dbg !1970
  call void @llvm.dbg.value(metadata i32 %70, metadata !328, metadata !DIExpression()) #34, !dbg !1971
  %71 = icmp slt i32 %70, 0, !dbg !1972
  br i1 %71, label %76, label %72, !dbg !1973

72:                                               ; preds = %69
  %73 = or i32 %70, 1, !dbg !1974
  %74 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 2, i32 noundef %73) #34, !dbg !1975
  %75 = icmp eq i32 %74, -1, !dbg !1976
  br i1 %75, label %76, label %124, !dbg !1977

76:                                               ; preds = %72, %69
  %77 = tail call i32* @__errno_location() #37, !dbg !1978
  %78 = load i32, i32* %77, align 4, !dbg !1978, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %78, metadata !331, metadata !DIExpression()) #34, !dbg !1979
  %79 = call i32 @close(i32 noundef %66) #34, !dbg !1980
  store i32 %78, i32* %77, align 4, !dbg !1981, !tbaa !675
  call void @llvm.dbg.value(metadata i32 -1, metadata !327, metadata !DIExpression()) #34, !dbg !1939
  br label %124, !dbg !1982

80:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %81 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #34, !dbg !1983
  call void @llvm.dbg.value(metadata i32 %81, metadata !1910, metadata !DIExpression()), !dbg !1922
  br label %124, !dbg !1984

82:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %83 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1985
  %84 = load i32, i32* %83, align 8, !dbg !1985
  %85 = icmp sgt i32 %84, -1, !dbg !1985
  br i1 %85, label %94, label %86, !dbg !1985

86:                                               ; preds = %82
  %87 = add nsw i32 %84, 8, !dbg !1985
  store i32 %87, i32* %83, align 8, !dbg !1985
  %88 = icmp ult i32 %84, -7, !dbg !1985
  br i1 %88, label %89, label %94, !dbg !1985

89:                                               ; preds = %86
  %90 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1985
  %91 = load i8*, i8** %90, align 8, !dbg !1985
  %92 = sext i32 %84 to i64, !dbg !1985
  %93 = getelementptr inbounds i8, i8* %91, i64 %92, !dbg !1985
  br label %98, !dbg !1985

94:                                               ; preds = %86, %82
  %95 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1985
  %96 = load i8*, i8** %95, align 8, !dbg !1985
  %97 = getelementptr inbounds i8, i8* %96, i64 8, !dbg !1985
  store i8* %97, i8** %95, align 8, !dbg !1985
  br label %98, !dbg !1985

98:                                               ; preds = %94, %89
  %99 = phi i8* [ %93, %89 ], [ %96, %94 ]
  %100 = bitcast i8* %99 to i32*, !dbg !1985
  %101 = load i32, i32* %100, align 8, !dbg !1985
  call void @llvm.dbg.value(metadata i32 %101, metadata !1916, metadata !DIExpression()), !dbg !1986
  %102 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %101) #34, !dbg !1987
  call void @llvm.dbg.value(metadata i32 %102, metadata !1910, metadata !DIExpression()), !dbg !1922
  br label %124, !dbg !1988

103:                                              ; preds = %2
  %104 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1989
  %105 = load i32, i32* %104, align 8, !dbg !1989
  %106 = icmp sgt i32 %105, -1, !dbg !1989
  br i1 %106, label %115, label %107, !dbg !1989

107:                                              ; preds = %103
  %108 = add nsw i32 %105, 8, !dbg !1989
  store i32 %108, i32* %104, align 8, !dbg !1989
  %109 = icmp ult i32 %105, -7, !dbg !1989
  br i1 %109, label %110, label %115, !dbg !1989

110:                                              ; preds = %107
  %111 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1989
  %112 = load i8*, i8** %111, align 8, !dbg !1989
  %113 = sext i32 %105 to i64, !dbg !1989
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !1989
  br label %119, !dbg !1989

115:                                              ; preds = %107, %103
  %116 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1989
  %117 = load i8*, i8** %116, align 8, !dbg !1989
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !1989
  store i8* %118, i8** %116, align 8, !dbg !1989
  br label %119, !dbg !1989

119:                                              ; preds = %115, %110
  %120 = phi i8* [ %114, %110 ], [ %117, %115 ]
  %121 = bitcast i8* %120 to i8**, !dbg !1989
  %122 = load i8*, i8** %121, align 8, !dbg !1989
  call void @llvm.dbg.value(metadata i8* %122, metadata !1920, metadata !DIExpression()), !dbg !1990
  %123 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i8* noundef %122) #34, !dbg !1991
  call void @llvm.dbg.value(metadata i32 %123, metadata !1910, metadata !DIExpression()), !dbg !1922
  br label %124, !dbg !1992

124:                                              ; preds = %76, %72, %64, %56, %55, %80, %98, %119, %21
  %125 = phi i32 [ %123, %119 ], [ %102, %98 ], [ %81, %80 ], [ %25, %21 ], [ %66, %64 ], [ -1, %76 ], [ %66, %72 ], [ %57, %56 ], [ %49, %55 ], !dbg !1993
  call void @llvm.dbg.value(metadata i32 %125, metadata !1910, metadata !DIExpression()), !dbg !1922
  call void @llvm.va_end(i8* nonnull %4), !dbg !1994
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #34, !dbg !1995
  ret i32 %125, !dbg !1996
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !1997 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2035, metadata !DIExpression()), !dbg !2036
  tail call void @__fpurge(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !2037
  ret i32 0, !dbg !2038
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @full_write(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2039 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2043, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8* %1, metadata !2044, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %2, metadata !2045, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 0, metadata !2046, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8* %1, metadata !2047, metadata !DIExpression()), !dbg !2050
  %4 = icmp sgt i64 %2, 0, !dbg !2051
  br i1 %4, label %5, label %20, !dbg !2052

5:                                                ; preds = %3, %15
  %6 = phi i64 [ %18, %15 ], [ %2, %3 ]
  %7 = phi i8* [ %17, %15 ], [ %1, %3 ]
  %8 = phi i64 [ %16, %15 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !2045, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8* %7, metadata !2047, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64 %8, metadata !2046, metadata !DIExpression()), !dbg !2050
  %9 = tail call i64 @safe_write(i32 noundef %0, i8* noundef %7, i64 noundef %6) #34, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %9, metadata !2048, metadata !DIExpression()), !dbg !2054
  %10 = icmp slt i64 %9, 0, !dbg !2055
  br i1 %10, label %20, label %11, !dbg !2057

11:                                               ; preds = %5
  %12 = icmp eq i64 %9, 0, !dbg !2058
  br i1 %12, label %13, label %15, !dbg !2060

13:                                               ; preds = %11
  %14 = tail call i32* @__errno_location() #37, !dbg !2061
  store i32 28, i32* %14, align 4, !dbg !2063, !tbaa !675
  br label %20, !dbg !2064

15:                                               ; preds = %11
  %16 = add nsw i64 %9, %8, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %16, metadata !2046, metadata !DIExpression()), !dbg !2050
  %17 = getelementptr inbounds i8, i8* %7, i64 %9, !dbg !2066
  call void @llvm.dbg.value(metadata i8* %17, metadata !2047, metadata !DIExpression()), !dbg !2050
  %18 = sub nsw i64 %6, %9, !dbg !2067
  call void @llvm.dbg.value(metadata i64 %18, metadata !2045, metadata !DIExpression()), !dbg !2050
  %19 = icmp sgt i64 %18, 0, !dbg !2051
  br i1 %19, label %5, label %20, !dbg !2052

20:                                               ; preds = %15, %5, %3, %13
  %21 = phi i64 [ %8, %13 ], [ 0, %3 ], [ %16, %15 ], [ %8, %5 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !2046, metadata !DIExpression()), !dbg !2050
  ret i64 %21, !dbg !2068
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #19 !dbg !2069 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !2071, !tbaa !575
  ret i8* %1, !dbg !2072
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #20 !dbg !2073 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2075, metadata !DIExpression()), !dbg !2078
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #35, !dbg !2079
  call void @llvm.dbg.value(metadata i8* %2, metadata !2076, metadata !DIExpression()), !dbg !2078
  %3 = icmp eq i8* %2, null, !dbg !2080
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2080
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !2080
  call void @llvm.dbg.value(metadata i8* %5, metadata !2077, metadata !DIExpression()), !dbg !2078
  %6 = ptrtoint i8* %5 to i64, !dbg !2081
  %7 = ptrtoint i8* %0 to i64, !dbg !2081
  %8 = sub i64 %6, %7, !dbg !2081
  %9 = icmp sgt i64 %8, 6, !dbg !2083
  br i1 %9, label %10, label %19, !dbg !2084

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !2085
  call void @llvm.dbg.value(metadata i8* %11, metadata !2086, metadata !DIExpression()) #34, !dbg !2093
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i64 0, i64 0), metadata !2091, metadata !DIExpression()) #34, !dbg !2093
  call void @llvm.dbg.value(metadata i64 7, metadata !2092, metadata !DIExpression()) #34, !dbg !2093
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i64 0, i64 0), i64 7) #34, !dbg !2095
  %13 = icmp eq i32 %12, 0, !dbg !2096
  br i1 %13, label %14, label %19, !dbg !2097

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !2075, metadata !DIExpression()), !dbg !2078
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.104, i64 0, i64 0), i64 noundef 3) #35, !dbg !2098
  %16 = icmp eq i32 %15, 0, !dbg !2101
  %17 = select i1 %16, i64 3, i64 0, !dbg !2102
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !2102
  br label %19, !dbg !2102

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2078
  call void @llvm.dbg.value(metadata i8* %21, metadata !2077, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8* %20, metadata !2075, metadata !DIExpression()), !dbg !2078
  store i8* %20, i8** @program_name, align 8, !dbg !2103, !tbaa !575
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !2104, !tbaa !575
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !2105, !tbaa !575
  ret void, !dbg !2106
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !342 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !349, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8* %1, metadata !350, metadata !DIExpression()), !dbg !2107
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #34, !dbg !2108
  call void @llvm.dbg.value(metadata i8* %5, metadata !351, metadata !DIExpression()), !dbg !2107
  %6 = icmp eq i8* %5, %0, !dbg !2109
  br i1 %6, label %7, label %17, !dbg !2111

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !2112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #34, !dbg !2112
  %10 = bitcast i64* %4 to i8*, !dbg !2113
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !2113
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !357, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !2115, metadata !DIExpression()) #34, !dbg !2122
  call void @llvm.dbg.value(metadata i8* %10, metadata !2124, metadata !DIExpression()) #34, !dbg !2131
  call void @llvm.dbg.value(metadata i32 0, metadata !2129, metadata !DIExpression()) #34, !dbg !2131
  call void @llvm.dbg.value(metadata i64 8, metadata !2130, metadata !DIExpression()) #34, !dbg !2131
  store i64 0, i64* %4, align 8, !dbg !2133
  call void @llvm.dbg.value(metadata i32* %3, metadata !352, metadata !DIExpression(DW_OP_deref)), !dbg !2107
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #34, !dbg !2134
  %12 = icmp eq i64 %11, 2, !dbg !2136
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !352, metadata !DIExpression()), !dbg !2107
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2137
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !2107
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !2138
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #34, !dbg !2138
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !2107
  ret i8* %18, !dbg !2138
}

; Function Attrs: nounwind
declare !dbg !2139 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !2145 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2150, metadata !DIExpression()), !dbg !2153
  %2 = tail call i32* @__errno_location() #37, !dbg !2154
  %3 = load i32, i32* %2, align 4, !dbg !2154, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %3, metadata !2151, metadata !DIExpression()), !dbg !2153
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2155
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2155
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2155
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #39, !dbg !2156
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2152, metadata !DIExpression()), !dbg !2153
  store i32 %3, i32* %2, align 4, !dbg !2157, !tbaa !675
  ret %struct.quoting_options* %8, !dbg !2158
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #19 !dbg !2159 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2165, metadata !DIExpression()), !dbg !2166
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2167
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2167
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2168
  %5 = load i32, i32* %4, align 8, !dbg !2168, !tbaa !2169
  ret i32 %5, !dbg !2171
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #15 !dbg !2172 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2176, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i32 %1, metadata !2177, metadata !DIExpression()), !dbg !2178
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2179
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2179
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2180
  store i32 %1, i32* %5, align 8, !dbg !2181, !tbaa !2169
  ret void, !dbg !2182
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !2183 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2187, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %1, metadata !2188, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i32 %2, metadata !2189, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %1, metadata !2190, metadata !DIExpression()), !dbg !2195
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2196
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2196
  %6 = lshr i8 %1, 5, !dbg !2197
  %7 = zext i8 %6 to i64, !dbg !2197
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2198
  call void @llvm.dbg.value(metadata i32* %8, metadata !2191, metadata !DIExpression()), !dbg !2195
  %9 = and i8 %1, 31, !dbg !2199
  %10 = zext i8 %9 to i32, !dbg !2199
  call void @llvm.dbg.value(metadata i32 %10, metadata !2193, metadata !DIExpression()), !dbg !2195
  %11 = load i32, i32* %8, align 4, !dbg !2200, !tbaa !675
  %12 = lshr i32 %11, %10, !dbg !2201
  %13 = and i32 %12, 1, !dbg !2202
  call void @llvm.dbg.value(metadata i32 %13, metadata !2194, metadata !DIExpression()), !dbg !2195
  %14 = and i32 %2, 1, !dbg !2203
  %15 = xor i32 %13, %14, !dbg !2204
  %16 = shl i32 %15, %10, !dbg !2205
  %17 = xor i32 %16, %11, !dbg !2206
  store i32 %17, i32* %8, align 4, !dbg !2206, !tbaa !675
  ret i32 %13, !dbg !2207
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2208 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2212, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32 %1, metadata !2213, metadata !DIExpression()), !dbg !2215
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2216
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2218
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2212, metadata !DIExpression()), !dbg !2215
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2219
  %6 = load i32, i32* %5, align 4, !dbg !2219, !tbaa !2220
  call void @llvm.dbg.value(metadata i32 %6, metadata !2214, metadata !DIExpression()), !dbg !2215
  store i32 %1, i32* %5, align 4, !dbg !2221, !tbaa !2220
  ret i32 %6, !dbg !2222
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2223 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2227, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i8* %1, metadata !2228, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i8* %2, metadata !2229, metadata !DIExpression()), !dbg !2230
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2231
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2233
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2227, metadata !DIExpression()), !dbg !2230
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2234
  store i32 10, i32* %6, align 8, !dbg !2235, !tbaa !2169
  %7 = icmp ne i8* %1, null, !dbg !2236
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2238
  br i1 %9, label %11, label %10, !dbg !2238

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !2239
  unreachable, !dbg !2239

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2240
  store i8* %1, i8** %12, align 8, !dbg !2241, !tbaa !2242
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2243
  store i8* %2, i8** %13, align 8, !dbg !2244, !tbaa !2245
  ret void, !dbg !2246
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2247 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2251, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i64 %1, metadata !2252, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i8* %2, metadata !2253, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i64 %3, metadata !2254, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2255, metadata !DIExpression()), !dbg !2259
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2260
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2260
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2256, metadata !DIExpression()), !dbg !2259
  %8 = tail call i32* @__errno_location() #37, !dbg !2261
  %9 = load i32, i32* %8, align 4, !dbg !2261, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %9, metadata !2257, metadata !DIExpression()), !dbg !2259
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2262
  %11 = load i32, i32* %10, align 8, !dbg !2262, !tbaa !2169
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2263
  %13 = load i32, i32* %12, align 4, !dbg !2263, !tbaa !2220
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2264
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2265
  %16 = load i8*, i8** %15, align 8, !dbg !2265, !tbaa !2242
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2266
  %18 = load i8*, i8** %17, align 8, !dbg !2266, !tbaa !2245
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %19, metadata !2258, metadata !DIExpression()), !dbg !2259
  store i32 %9, i32* %8, align 4, !dbg !2268, !tbaa !675
  ret i64 %19, !dbg !2269
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2270 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2276, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %1, metadata !2277, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8* %2, metadata !2278, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %3, metadata !2279, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 %4, metadata !2280, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 %5, metadata !2281, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32* %6, metadata !2282, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8* %7, metadata !2283, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8* %8, metadata !2284, metadata !DIExpression()), !dbg !2338
  %17 = tail call i64 @__ctype_get_mb_cur_max() #34, !dbg !2339
  %18 = icmp eq i64 %17, 1, !dbg !2340
  call void @llvm.dbg.value(metadata i1 %18, metadata !2285, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2338
  call void @llvm.dbg.value(metadata i64 0, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 0, metadata !2287, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8* null, metadata !2288, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 0, metadata !2289, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 0, metadata !2290, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 %5, metadata !2291, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2338
  call void @llvm.dbg.value(metadata i8 0, metadata !2292, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 1, metadata !2293, metadata !DIExpression()), !dbg !2338
  %19 = and i32 %5, 2, !dbg !2341
  %20 = icmp ne i32 %19, 0, !dbg !2341
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
  br label %36, !dbg !2341

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2342
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2343
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2344
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2277, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2293, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2292, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2291, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2290, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %43, metadata !2289, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8* %42, metadata !2288, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %41, metadata !2287, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 0, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %40, metadata !2279, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8* %39, metadata !2284, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8* %38, metadata !2283, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 %37, metadata !2280, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.label(metadata !2331), !dbg !2345
  call void @llvm.dbg.value(metadata i8 0, metadata !2294, metadata !DIExpression()), !dbg !2338
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
  ], !dbg !2346

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2291, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 5, metadata !2280, metadata !DIExpression()), !dbg !2338
  br label %111, !dbg !2347

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2291, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 5, metadata !2280, metadata !DIExpression()), !dbg !2338
  br i1 %45, label %111, label %51, !dbg !2347

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2348
  br i1 %52, label %111, label %53, !dbg !2352

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2348, !tbaa !684
  br label %111, !dbg !2348

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.117, i64 0, i64 0), metadata !415, metadata !DIExpression()) #34, !dbg !2353
  call void @llvm.dbg.value(metadata i32 %37, metadata !416, metadata !DIExpression()) #34, !dbg !2353
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.117, i64 0, i64 0), i32 noundef 5) #34, !dbg !2357
  call void @llvm.dbg.value(metadata i8* %55, metadata !417, metadata !DIExpression()) #34, !dbg !2353
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.117, i64 0, i64 0), !dbg !2358
  br i1 %56, label %57, label %66, !dbg !2360

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #34, !dbg !2361
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #34, !dbg !2362
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !419, metadata !DIExpression()) #34, !dbg !2363
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2364, metadata !DIExpression()) #34, !dbg !2370
  call void @llvm.dbg.value(metadata i8* %23, metadata !2372, metadata !DIExpression()) #34, !dbg !2377
  call void @llvm.dbg.value(metadata i32 0, metadata !2375, metadata !DIExpression()) #34, !dbg !2377
  call void @llvm.dbg.value(metadata i64 8, metadata !2376, metadata !DIExpression()) #34, !dbg !2377
  store i64 0, i64* %13, align 8, !dbg !2379
  call void @llvm.dbg.value(metadata i32* %12, metadata !418, metadata !DIExpression(DW_OP_deref)) #34, !dbg !2353
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #34, !dbg !2380
  %59 = icmp eq i64 %58, 3, !dbg !2382
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !418, metadata !DIExpression()) #34, !dbg !2353
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2383
  %63 = icmp eq i32 %37, 9, !dbg !2383
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.119, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), !dbg !2383
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2383
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #34, !dbg !2384
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #34, !dbg !2384
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2353
  call void @llvm.dbg.value(metadata i8* %67, metadata !2283, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), metadata !415, metadata !DIExpression()) #34, !dbg !2385
  call void @llvm.dbg.value(metadata i32 %37, metadata !416, metadata !DIExpression()) #34, !dbg !2385
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), i32 noundef 5) #34, !dbg !2387
  call void @llvm.dbg.value(metadata i8* %68, metadata !417, metadata !DIExpression()) #34, !dbg !2385
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), !dbg !2388
  br i1 %69, label %70, label %79, !dbg !2389

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #34, !dbg !2390
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #34, !dbg !2391
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !419, metadata !DIExpression()) #34, !dbg !2392
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2364, metadata !DIExpression()) #34, !dbg !2393
  call void @llvm.dbg.value(metadata i8* %26, metadata !2372, metadata !DIExpression()) #34, !dbg !2395
  call void @llvm.dbg.value(metadata i32 0, metadata !2375, metadata !DIExpression()) #34, !dbg !2395
  call void @llvm.dbg.value(metadata i64 8, metadata !2376, metadata !DIExpression()) #34, !dbg !2395
  store i64 0, i64* %11, align 8, !dbg !2397
  call void @llvm.dbg.value(metadata i32* %10, metadata !418, metadata !DIExpression(DW_OP_deref)) #34, !dbg !2385
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #34, !dbg !2398
  %72 = icmp eq i64 %71, 3, !dbg !2399
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !418, metadata !DIExpression()) #34, !dbg !2385
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2400
  %76 = icmp eq i32 %37, 9, !dbg !2400
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.119, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), !dbg !2400
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2400
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #34, !dbg !2401
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #34, !dbg !2401
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2284, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8* %80, metadata !2283, metadata !DIExpression()), !dbg !2338
  br i1 %45, label %97, label %82, !dbg !2402

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2295, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i64 0, metadata !2286, metadata !DIExpression()), !dbg !2338
  %83 = load i8, i8* %80, align 1, !dbg !2404, !tbaa !684
  %84 = icmp eq i8 %83, 0, !dbg !2406
  br i1 %84, label %97, label %85, !dbg !2406

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2295, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i64 %88, metadata !2286, metadata !DIExpression()), !dbg !2338
  %89 = icmp ult i64 %88, %48, !dbg !2407
  br i1 %89, label %90, label %92, !dbg !2410

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2407
  store i8 %86, i8* %91, align 1, !dbg !2407, !tbaa !684
  br label %92, !dbg !2407

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %93, metadata !2286, metadata !DIExpression()), !dbg !2338
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2411
  call void @llvm.dbg.value(metadata i8* %94, metadata !2295, metadata !DIExpression()), !dbg !2403
  %95 = load i8, i8* %94, align 1, !dbg !2404, !tbaa !684
  %96 = icmp eq i8 %95, 0, !dbg !2406
  br i1 %96, label %97, label %85, !dbg !2406, !llvm.loop !2412

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2414
  call void @llvm.dbg.value(metadata i64 %98, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 1, metadata !2290, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8* %81, metadata !2288, metadata !DIExpression()), !dbg !2338
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #35, !dbg !2415
  call void @llvm.dbg.value(metadata i64 %99, metadata !2289, metadata !DIExpression()), !dbg !2338
  br label %111, !dbg !2416

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2290, metadata !DIExpression()), !dbg !2338
  br label %102, !dbg !2417

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2291, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2290, metadata !DIExpression()), !dbg !2338
  br i1 %45, label %102, label %105, !dbg !2418

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2291, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2290, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 2, metadata !2280, metadata !DIExpression()), !dbg !2338
  br label %111, !dbg !2419

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2291, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2290, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 2, metadata !2280, metadata !DIExpression()), !dbg !2338
  br i1 %45, label %111, label %105, !dbg !2419

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2420
  br i1 %107, label %111, label %108, !dbg !2424

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2420, !tbaa !684
  br label %111, !dbg !2420

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2291, metadata !DIExpression()), !dbg !2338
  br label %111, !dbg !2425

110:                                              ; preds = %36
  call void @abort() #36, !dbg !2426
  unreachable, !dbg !2426

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2414
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.119, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.119, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.119, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.119, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.120, i64 0, i64 0), %102 ], !dbg !2338
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2338
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2291, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2290, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %117, metadata !2289, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8* %116, metadata !2288, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %115, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8* %114, metadata !2284, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8* %113, metadata !2283, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 %112, metadata !2280, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 0, metadata !2300, metadata !DIExpression()), !dbg !2427
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
  br label %132, !dbg !2428

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2414
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2342
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2427
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2277, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %139, metadata !2300, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2293, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2292, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %135, metadata !2287, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %134, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %133, metadata !2279, metadata !DIExpression()), !dbg !2338
  %141 = icmp eq i64 %133, -1, !dbg !2429
  br i1 %141, label %142, label %146, !dbg !2430

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2431
  %144 = load i8, i8* %143, align 1, !dbg !2431, !tbaa !684
  %145 = icmp eq i8 %144, 0, !dbg !2432
  br i1 %145, label %596, label %148, !dbg !2433

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2434
  br i1 %147, label %596, label %148, !dbg !2433

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2302, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 0, metadata !2306, metadata !DIExpression()), !dbg !2435
  br i1 %123, label %149, label %163, !dbg !2436

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2438
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2439
  br i1 %151, label %152, label %154, !dbg !2439

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !2440
  call void @llvm.dbg.value(metadata i64 %153, metadata !2279, metadata !DIExpression()), !dbg !2338
  br label %154, !dbg !2441

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2441
  call void @llvm.dbg.value(metadata i64 %155, metadata !2279, metadata !DIExpression()), !dbg !2338
  %156 = icmp ugt i64 %150, %155, !dbg !2442
  br i1 %156, label %163, label %157, !dbg !2443

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2444
  call void @llvm.dbg.value(metadata i8* %158, metadata !2445, metadata !DIExpression()) #34, !dbg !2450
  call void @llvm.dbg.value(metadata i8* %116, metadata !2448, metadata !DIExpression()) #34, !dbg !2450
  call void @llvm.dbg.value(metadata i64 %117, metadata !2449, metadata !DIExpression()) #34, !dbg !2450
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #34, !dbg !2452
  %160 = icmp ne i32 %159, 0, !dbg !2453
  %161 = or i1 %160, %125, !dbg !2454
  %162 = xor i1 %160, true, !dbg !2454
  br i1 %161, label %163, label %647, !dbg !2454

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 %164, metadata !2279, metadata !DIExpression()), !dbg !2338
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2455
  %167 = load i8, i8* %166, align 1, !dbg !2455, !tbaa !684
  call void @llvm.dbg.value(metadata i8 %167, metadata !2307, metadata !DIExpression()), !dbg !2435
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
  ], !dbg !2456

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2457

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2458

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2305, metadata !DIExpression()), !dbg !2435
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2462
  br i1 %171, label %188, label %172, !dbg !2462

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2464
  br i1 %173, label %174, label %176, !dbg !2468

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2464
  store i8 39, i8* %175, align 1, !dbg !2464, !tbaa !684
  br label %176, !dbg !2464

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %177, metadata !2286, metadata !DIExpression()), !dbg !2338
  %178 = icmp ult i64 %177, %140, !dbg !2469
  br i1 %178, label %179, label %181, !dbg !2472

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2469
  store i8 36, i8* %180, align 1, !dbg !2469, !tbaa !684
  br label %181, !dbg !2469

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %182, metadata !2286, metadata !DIExpression()), !dbg !2338
  %183 = icmp ult i64 %182, %140, !dbg !2473
  br i1 %183, label %184, label %186, !dbg !2476

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2473
  store i8 39, i8* %185, align 1, !dbg !2473, !tbaa !684
  br label %186, !dbg !2473

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2476
  call void @llvm.dbg.value(metadata i64 %187, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 1, metadata !2294, metadata !DIExpression()), !dbg !2338
  br label %188, !dbg !2477

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2338
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %189, metadata !2286, metadata !DIExpression()), !dbg !2338
  %191 = icmp ult i64 %189, %140, !dbg !2478
  br i1 %191, label %192, label %194, !dbg !2481

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2478
  store i8 92, i8* %193, align 1, !dbg !2478, !tbaa !684
  br label %194, !dbg !2478

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2481
  call void @llvm.dbg.value(metadata i64 %195, metadata !2286, metadata !DIExpression()), !dbg !2338
  br i1 %120, label %196, label %499, !dbg !2482

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2484
  %198 = icmp ult i64 %197, %164, !dbg !2485
  br i1 %198, label %199, label %456, !dbg !2486

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2487
  %201 = load i8, i8* %200, align 1, !dbg !2487, !tbaa !684
  %202 = add i8 %201, -48, !dbg !2488
  %203 = icmp ult i8 %202, 10, !dbg !2488
  br i1 %203, label %204, label %456, !dbg !2488

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2489
  br i1 %205, label %206, label %208, !dbg !2493

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2489
  store i8 48, i8* %207, align 1, !dbg !2489, !tbaa !684
  br label %208, !dbg !2489

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %209, metadata !2286, metadata !DIExpression()), !dbg !2338
  %210 = icmp ult i64 %209, %140, !dbg !2494
  br i1 %210, label %211, label %213, !dbg !2497

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2494
  store i8 48, i8* %212, align 1, !dbg !2494, !tbaa !684
  br label %213, !dbg !2494

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2497
  call void @llvm.dbg.value(metadata i64 %214, metadata !2286, metadata !DIExpression()), !dbg !2338
  br label %456, !dbg !2498

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2499

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2500

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2501

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2503

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2505
  %221 = icmp ult i64 %220, %164, !dbg !2506
  br i1 %221, label %222, label %456, !dbg !2507

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2508
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2509
  %225 = load i8, i8* %224, align 1, !dbg !2509, !tbaa !684
  %226 = icmp eq i8 %225, 63, !dbg !2510
  br i1 %226, label %227, label %456, !dbg !2511

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2512
  %229 = load i8, i8* %228, align 1, !dbg !2512, !tbaa !684
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
  ], !dbg !2513

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2514

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2307, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 %220, metadata !2300, metadata !DIExpression()), !dbg !2427
  %232 = icmp ult i64 %134, %140, !dbg !2516
  br i1 %232, label %233, label %235, !dbg !2519

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2516
  store i8 63, i8* %234, align 1, !dbg !2516, !tbaa !684
  br label %235, !dbg !2516

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2519
  call void @llvm.dbg.value(metadata i64 %236, metadata !2286, metadata !DIExpression()), !dbg !2338
  %237 = icmp ult i64 %236, %140, !dbg !2520
  br i1 %237, label %238, label %240, !dbg !2523

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2520
  store i8 34, i8* %239, align 1, !dbg !2520, !tbaa !684
  br label %240, !dbg !2520

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2523
  call void @llvm.dbg.value(metadata i64 %241, metadata !2286, metadata !DIExpression()), !dbg !2338
  %242 = icmp ult i64 %241, %140, !dbg !2524
  br i1 %242, label %243, label %245, !dbg !2527

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2524
  store i8 34, i8* %244, align 1, !dbg !2524, !tbaa !684
  br label %245, !dbg !2524

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2527
  call void @llvm.dbg.value(metadata i64 %246, metadata !2286, metadata !DIExpression()), !dbg !2338
  %247 = icmp ult i64 %246, %140, !dbg !2528
  br i1 %247, label %248, label %250, !dbg !2531

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2528
  store i8 63, i8* %249, align 1, !dbg !2528, !tbaa !684
  br label %250, !dbg !2528

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %251, metadata !2286, metadata !DIExpression()), !dbg !2338
  br label %456, !dbg !2532

252:                                              ; preds = %163
  br label %263, !dbg !2533

253:                                              ; preds = %163
  br label %263, !dbg !2534

254:                                              ; preds = %163
  br label %261, !dbg !2535

255:                                              ; preds = %163
  br label %261, !dbg !2536

256:                                              ; preds = %163
  br label %263, !dbg !2537

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2538

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2539

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2542

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2544

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2545
  call void @llvm.dbg.label(metadata !2332), !dbg !2546
  br i1 %128, label %263, label %638, !dbg !2547

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2545
  call void @llvm.dbg.label(metadata !2334), !dbg !2549
  br i1 %118, label %510, label %467, !dbg !2550

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2551

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2552, !tbaa !684
  %268 = icmp eq i8 %267, 0, !dbg !2554
  br i1 %268, label %269, label %456, !dbg !2555

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2556
  br i1 %270, label %271, label %456, !dbg !2558

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2306, metadata !DIExpression()), !dbg !2435
  br label %272, !dbg !2559

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2306, metadata !DIExpression()), !dbg !2435
  br i1 %126, label %274, label %456, !dbg !2560

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2562

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2292, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 1, metadata !2306, metadata !DIExpression()), !dbg !2435
  br i1 %126, label %276, label %456, !dbg !2563

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2564

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2567
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2569
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2569
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2569
  call void @llvm.dbg.value(metadata i64 %282, metadata !2277, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %281, metadata !2287, metadata !DIExpression()), !dbg !2338
  %283 = icmp ult i64 %134, %282, !dbg !2570
  br i1 %283, label %284, label %286, !dbg !2573

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2570
  store i8 39, i8* %285, align 1, !dbg !2570, !tbaa !684
  br label %286, !dbg !2570

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %287, metadata !2286, metadata !DIExpression()), !dbg !2338
  %288 = icmp ult i64 %287, %282, !dbg !2574
  br i1 %288, label %289, label %291, !dbg !2577

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2574
  store i8 92, i8* %290, align 1, !dbg !2574, !tbaa !684
  br label %291, !dbg !2574

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %292, metadata !2286, metadata !DIExpression()), !dbg !2338
  %293 = icmp ult i64 %292, %282, !dbg !2578
  br i1 %293, label %294, label %296, !dbg !2581

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2578
  store i8 39, i8* %295, align 1, !dbg !2578, !tbaa !684
  br label %296, !dbg !2578

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2581
  call void @llvm.dbg.value(metadata i64 %297, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 0, metadata !2294, metadata !DIExpression()), !dbg !2338
  br label %456, !dbg !2582

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2583

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2308, metadata !DIExpression()), !dbg !2584
  %300 = tail call i16** @__ctype_b_loc() #37, !dbg !2585
  %301 = load i16*, i16** %300, align 8, !dbg !2585, !tbaa !575
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2585
  %304 = load i16, i16* %303, align 2, !dbg !2585, !tbaa !709
  %305 = and i16 %304, 16384, !dbg !2585
  %306 = icmp ne i16 %305, 0, !dbg !2587
  call void @llvm.dbg.value(metadata i8 poison, metadata !2311, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %349, metadata !2308, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %312, metadata !2279, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i1 %350, metadata !2306, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2435
  br label %352, !dbg !2588

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2589
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2312, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2364, metadata !DIExpression()) #34, !dbg !2591
  call void @llvm.dbg.value(metadata i8* %32, metadata !2372, metadata !DIExpression()) #34, !dbg !2593
  call void @llvm.dbg.value(metadata i32 0, metadata !2375, metadata !DIExpression()) #34, !dbg !2593
  call void @llvm.dbg.value(metadata i64 8, metadata !2376, metadata !DIExpression()) #34, !dbg !2593
  store i64 0, i64* %14, align 8, !dbg !2595
  call void @llvm.dbg.value(metadata i64 0, metadata !2308, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 1, metadata !2311, metadata !DIExpression()), !dbg !2584
  %308 = icmp eq i64 %164, -1, !dbg !2596
  br i1 %308, label %309, label %311, !dbg !2598

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !2599
  call void @llvm.dbg.value(metadata i64 %310, metadata !2279, metadata !DIExpression()), !dbg !2338
  br label %311, !dbg !2600

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2435
  call void @llvm.dbg.value(metadata i64 %312, metadata !2279, metadata !DIExpression()), !dbg !2338
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2601
  %313 = sub i64 %312, %139, !dbg !2602
  call void @llvm.dbg.value(metadata i32* %16, metadata !2315, metadata !DIExpression(DW_OP_deref)), !dbg !2603
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #34, !dbg !2604
  call void @llvm.dbg.value(metadata i64 %314, metadata !2319, metadata !DIExpression()), !dbg !2603
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2605

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2308, metadata !DIExpression()), !dbg !2584
  %316 = icmp ugt i64 %312, %139, !dbg !2606
  br i1 %316, label %319, label %317, !dbg !2608

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2311, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 0, metadata !2308, metadata !DIExpression()), !dbg !2584
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2609
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %349, metadata !2308, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %312, metadata !2279, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i1 %350, metadata !2306, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2435
  br label %352, !dbg !2588

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2311, metadata !DIExpression()), !dbg !2584
  br label %346, !dbg !2611

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2308, metadata !DIExpression()), !dbg !2584
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2613
  %323 = load i8, i8* %322, align 1, !dbg !2613, !tbaa !684
  %324 = icmp eq i8 %323, 0, !dbg !2608
  br i1 %324, label %348, label %325, !dbg !2614

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2615
  call void @llvm.dbg.value(metadata i64 %326, metadata !2308, metadata !DIExpression()), !dbg !2584
  %327 = add i64 %326, %139, !dbg !2616
  %328 = icmp eq i64 %326, %313, !dbg !2606
  br i1 %328, label %348, label %319, !dbg !2608, !llvm.loop !2617

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2618
  call void @llvm.dbg.value(metadata i64 1, metadata !2320, metadata !DIExpression()), !dbg !2619
  br i1 %331, label %332, label %340, !dbg !2618

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2320, metadata !DIExpression()), !dbg !2619
  %334 = add i64 %333, %139, !dbg !2620
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2622
  %336 = load i8, i8* %335, align 1, !dbg !2622, !tbaa !684
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2623

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %338, metadata !2320, metadata !DIExpression()), !dbg !2619
  %339 = icmp eq i64 %338, %314, !dbg !2625
  br i1 %339, label %340, label %332, !dbg !2626, !llvm.loop !2627

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2629, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %341, metadata !2315, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %341, metadata !2631, metadata !DIExpression()) #34, !dbg !2639
  %342 = call i32 @iswprint(i32 noundef %341) #34, !dbg !2641
  %343 = icmp ne i32 %342, 0, !dbg !2642
  call void @llvm.dbg.value(metadata i8 poison, metadata !2311, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %314, metadata !2308, metadata !DIExpression()), !dbg !2584
  br label %348, !dbg !2643

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2311, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 0, metadata !2308, metadata !DIExpression()), !dbg !2584
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2609
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2610
  call void @llvm.dbg.label(metadata !2337), !dbg !2644
  %345 = select i1 %118, i32 4, i32 2, !dbg !2645
  br label %643, !dbg !2645

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2311, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 0, metadata !2308, metadata !DIExpression()), !dbg !2584
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2609
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %349, metadata !2308, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %312, metadata !2279, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i1 %350, metadata !2306, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2435
  br label %352, !dbg !2588

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2311, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 0, metadata !2308, metadata !DIExpression()), !dbg !2584
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2609
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %349, metadata !2308, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %312, metadata !2279, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i1 %350, metadata !2306, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2435
  %351 = icmp ugt i64 %349, 1, !dbg !2647
  br i1 %351, label %357, label %352, !dbg !2588

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2648
  br i1 %356, label %456, label %357, !dbg !2648

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2649
  call void @llvm.dbg.value(metadata i64 %361, metadata !2328, metadata !DIExpression()), !dbg !2650
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2651

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2338
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2427
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2652
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2435
  call void @llvm.dbg.value(metadata i8 %369, metadata !2307, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 %368, metadata !2305, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 %366, metadata !2300, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %364, metadata !2286, metadata !DIExpression()), !dbg !2338
  br i1 %362, label %414, label %370, !dbg !2653

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2658

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2305, metadata !DIExpression()), !dbg !2435
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2661
  br i1 %372, label %389, label %373, !dbg !2661

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2663
  br i1 %374, label %375, label %377, !dbg !2667

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2663
  store i8 39, i8* %376, align 1, !dbg !2663, !tbaa !684
  br label %377, !dbg !2663

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %378, metadata !2286, metadata !DIExpression()), !dbg !2338
  %379 = icmp ult i64 %378, %140, !dbg !2668
  br i1 %379, label %380, label %382, !dbg !2671

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2668
  store i8 36, i8* %381, align 1, !dbg !2668, !tbaa !684
  br label %382, !dbg !2668

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2671
  call void @llvm.dbg.value(metadata i64 %383, metadata !2286, metadata !DIExpression()), !dbg !2338
  %384 = icmp ult i64 %383, %140, !dbg !2672
  br i1 %384, label %385, label %387, !dbg !2675

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2672
  store i8 39, i8* %386, align 1, !dbg !2672, !tbaa !684
  br label %387, !dbg !2672

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2675
  call void @llvm.dbg.value(metadata i64 %388, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 1, metadata !2294, metadata !DIExpression()), !dbg !2338
  br label %389, !dbg !2676

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2338
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %390, metadata !2286, metadata !DIExpression()), !dbg !2338
  %392 = icmp ult i64 %390, %140, !dbg !2677
  br i1 %392, label %393, label %395, !dbg !2680

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2677
  store i8 92, i8* %394, align 1, !dbg !2677, !tbaa !684
  br label %395, !dbg !2677

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2680
  call void @llvm.dbg.value(metadata i64 %396, metadata !2286, metadata !DIExpression()), !dbg !2338
  %397 = icmp ult i64 %396, %140, !dbg !2681
  br i1 %397, label %398, label %402, !dbg !2684

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2681
  %400 = or i8 %399, 48, !dbg !2681
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2681
  store i8 %400, i8* %401, align 1, !dbg !2681, !tbaa !684
  br label %402, !dbg !2681

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %403, metadata !2286, metadata !DIExpression()), !dbg !2338
  %404 = icmp ult i64 %403, %140, !dbg !2685
  br i1 %404, label %405, label %410, !dbg !2688

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2685
  %407 = and i8 %406, 7, !dbg !2685
  %408 = or i8 %407, 48, !dbg !2685
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2685
  store i8 %408, i8* %409, align 1, !dbg !2685, !tbaa !684
  br label %410, !dbg !2685

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %411, metadata !2286, metadata !DIExpression()), !dbg !2338
  %412 = and i8 %369, 7, !dbg !2689
  %413 = or i8 %412, 48, !dbg !2690
  call void @llvm.dbg.value(metadata i8 %413, metadata !2307, metadata !DIExpression()), !dbg !2435
  br label %421, !dbg !2691

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2692

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2693
  br i1 %416, label %417, label %419, !dbg !2698

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2693
  store i8 92, i8* %418, align 1, !dbg !2693, !tbaa !684
  br label %419, !dbg !2693

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2698
  call void @llvm.dbg.value(metadata i64 %420, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 0, metadata !2302, metadata !DIExpression()), !dbg !2435
  br label %421, !dbg !2699

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2338
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2435
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2435
  call void @llvm.dbg.value(metadata i8 %426, metadata !2307, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 %425, metadata !2305, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %422, metadata !2286, metadata !DIExpression()), !dbg !2338
  %427 = add i64 %366, 1, !dbg !2700
  %428 = icmp ugt i64 %361, %427, !dbg !2702
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2703

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2704
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2704
  br i1 %432, label %433, label %444, !dbg !2704

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2707
  br i1 %434, label %435, label %437, !dbg !2711

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2707
  store i8 39, i8* %436, align 1, !dbg !2707, !tbaa !684
  br label %437, !dbg !2707

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2711
  call void @llvm.dbg.value(metadata i64 %438, metadata !2286, metadata !DIExpression()), !dbg !2338
  %439 = icmp ult i64 %438, %140, !dbg !2712
  br i1 %439, label %440, label %442, !dbg !2715

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2712
  store i8 39, i8* %441, align 1, !dbg !2712, !tbaa !684
  br label %442, !dbg !2712

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2715
  call void @llvm.dbg.value(metadata i64 %443, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 0, metadata !2294, metadata !DIExpression()), !dbg !2338
  br label %444, !dbg !2716

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2717
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %445, metadata !2286, metadata !DIExpression()), !dbg !2338
  %447 = icmp ult i64 %445, %140, !dbg !2718
  br i1 %447, label %448, label %450, !dbg !2721

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2718
  store i8 %426, i8* %449, align 1, !dbg !2718, !tbaa !684
  br label %450, !dbg !2718

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2721
  call void @llvm.dbg.value(metadata i64 %451, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %427, metadata !2300, metadata !DIExpression()), !dbg !2427
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2722
  %453 = load i8, i8* %452, align 1, !dbg !2722, !tbaa !684
  call void @llvm.dbg.value(metadata i8 %453, metadata !2307, metadata !DIExpression()), !dbg !2435
  br label %363, !dbg !2723, !llvm.loop !2724

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2307, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i1 %358, metadata !2306, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2435
  call void @llvm.dbg.value(metadata i8 %425, metadata !2305, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 %366, metadata !2300, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %422, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %360, metadata !2279, metadata !DIExpression()), !dbg !2338
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2727
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2338
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2342
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2427
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2435
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2277, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 %465, metadata !2307, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 poison, metadata !2306, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 poison, metadata !2305, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 poison, metadata !2302, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 %462, metadata !2300, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2292, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %459, metadata !2287, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %458, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %457, metadata !2279, metadata !DIExpression()), !dbg !2338
  br i1 %121, label %478, label %467, !dbg !2728

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
  br i1 %131, label %479, label %499, !dbg !2730

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2731

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
  %490 = lshr i8 %481, 5, !dbg !2732
  %491 = zext i8 %490 to i64, !dbg !2732
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2733
  %493 = load i32, i32* %492, align 4, !dbg !2733, !tbaa !675
  %494 = and i8 %481, 31, !dbg !2734
  %495 = zext i8 %494 to i32, !dbg !2734
  %496 = shl nuw i32 1, %495, !dbg !2735
  %497 = and i32 %493, %496, !dbg !2735
  %498 = icmp eq i32 %497, 0, !dbg !2735
  br i1 %498, label %499, label %510, !dbg !2736

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
  br i1 %165, label %510, label %546, !dbg !2737

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2727
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2338
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2342
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2738
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2435
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2277, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 %518, metadata !2307, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 poison, metadata !2306, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 %516, metadata !2300, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2292, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %513, metadata !2287, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %512, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %511, metadata !2279, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.label(metadata !2335), !dbg !2739
  br i1 %119, label %638, label %520, !dbg !2740

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2305, metadata !DIExpression()), !dbg !2435
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2742
  br i1 %521, label %538, label %522, !dbg !2742

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2744
  br i1 %523, label %524, label %526, !dbg !2748

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2744
  store i8 39, i8* %525, align 1, !dbg !2744, !tbaa !684
  br label %526, !dbg !2744

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2748
  call void @llvm.dbg.value(metadata i64 %527, metadata !2286, metadata !DIExpression()), !dbg !2338
  %528 = icmp ult i64 %527, %519, !dbg !2749
  br i1 %528, label %529, label %531, !dbg !2752

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2749
  store i8 36, i8* %530, align 1, !dbg !2749, !tbaa !684
  br label %531, !dbg !2749

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2752
  call void @llvm.dbg.value(metadata i64 %532, metadata !2286, metadata !DIExpression()), !dbg !2338
  %533 = icmp ult i64 %532, %519, !dbg !2753
  br i1 %533, label %534, label %536, !dbg !2756

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2753
  store i8 39, i8* %535, align 1, !dbg !2753, !tbaa !684
  br label %536, !dbg !2753

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2756
  call void @llvm.dbg.value(metadata i64 %537, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 1, metadata !2294, metadata !DIExpression()), !dbg !2338
  br label %538, !dbg !2757

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2435
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %539, metadata !2286, metadata !DIExpression()), !dbg !2338
  %541 = icmp ult i64 %539, %519, !dbg !2758
  br i1 %541, label %542, label %544, !dbg !2761

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2758
  store i8 92, i8* %543, align 1, !dbg !2758, !tbaa !684
  br label %544, !dbg !2758

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %556, metadata !2277, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 %555, metadata !2307, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 poison, metadata !2306, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 poison, metadata !2305, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 %552, metadata !2300, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2292, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %549, metadata !2287, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %548, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %547, metadata !2279, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.label(metadata !2336), !dbg !2762
  br label %570, !dbg !2763

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2727
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2338
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2342
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2738
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2766
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2277, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 %555, metadata !2307, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 poison, metadata !2306, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8 poison, metadata !2305, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i64 %552, metadata !2300, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2292, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %549, metadata !2287, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %548, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %547, metadata !2279, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.label(metadata !2336), !dbg !2762
  %557 = xor i1 %551, true, !dbg !2763
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2763
  br i1 %558, label %570, label %559, !dbg !2763

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2767
  br i1 %560, label %561, label %563, !dbg !2771

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2767
  store i8 39, i8* %562, align 1, !dbg !2767, !tbaa !684
  br label %563, !dbg !2767

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2771
  call void @llvm.dbg.value(metadata i64 %564, metadata !2286, metadata !DIExpression()), !dbg !2338
  %565 = icmp ult i64 %564, %556, !dbg !2772
  br i1 %565, label %566, label %568, !dbg !2775

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2772
  store i8 39, i8* %567, align 1, !dbg !2772, !tbaa !684
  br label %568, !dbg !2772

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2775
  call void @llvm.dbg.value(metadata i64 %569, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 0, metadata !2294, metadata !DIExpression()), !dbg !2338
  br label %570, !dbg !2776

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2435
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %578, metadata !2286, metadata !DIExpression()), !dbg !2338
  %580 = icmp ult i64 %578, %571, !dbg !2777
  br i1 %580, label %581, label %583, !dbg !2780

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2777
  store i8 %572, i8* %582, align 1, !dbg !2777, !tbaa !684
  br label %583, !dbg !2777

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2780
  call void @llvm.dbg.value(metadata i64 %584, metadata !2286, metadata !DIExpression()), !dbg !2338
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2781
  call void @llvm.dbg.value(metadata i8 poison, metadata !2293, metadata !DIExpression()), !dbg !2338
  br label %586, !dbg !2782

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2727
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2338
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2342
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2738
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2277, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %593, metadata !2300, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 poison, metadata !2294, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2293, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2292, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %589, metadata !2287, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %588, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %587, metadata !2279, metadata !DIExpression()), !dbg !2338
  %595 = add i64 %593, 1, !dbg !2783
  call void @llvm.dbg.value(metadata i64 %595, metadata !2300, metadata !DIExpression()), !dbg !2427
  br label %132, !dbg !2784, !llvm.loop !2785

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2277, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2293, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 poison, metadata !2292, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 undef, metadata !2287, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 undef, metadata !2286, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 undef, metadata !2279, metadata !DIExpression()), !dbg !2338
  %597 = icmp eq i64 %134, 0, !dbg !2787
  %598 = and i1 %126, %597, !dbg !2789
  %599 = and i1 %598, %119, !dbg !2789
  br i1 %599, label %638, label %600, !dbg !2789

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2790
  %602 = or i1 %119, %601, !dbg !2790
  %603 = xor i1 %136, true, !dbg !2790
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2790
  br i1 %604, label %612, label %605, !dbg !2790

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2792

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2794
  br label %653, !dbg !2796

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2797
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2799
  br i1 %611, label %36, label %612, !dbg !2799

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2800
  %615 = or i1 %614, %613, !dbg !2802
  br i1 %615, label %631, label %616, !dbg !2802

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2288, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %134, metadata !2286, metadata !DIExpression()), !dbg !2338
  %617 = load i8, i8* %116, align 1, !dbg !2803, !tbaa !684
  %618 = icmp eq i8 %617, 0, !dbg !2806
  br i1 %618, label %631, label %619, !dbg !2806

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2288, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %622, metadata !2286, metadata !DIExpression()), !dbg !2338
  %623 = icmp ult i64 %622, %140, !dbg !2807
  br i1 %623, label %624, label %626, !dbg !2810

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2807
  store i8 %620, i8* %625, align 1, !dbg !2807, !tbaa !684
  br label %626, !dbg !2807

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2810
  call void @llvm.dbg.value(metadata i64 %627, metadata !2286, metadata !DIExpression()), !dbg !2338
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2811
  call void @llvm.dbg.value(metadata i8* %628, metadata !2288, metadata !DIExpression()), !dbg !2338
  %629 = load i8, i8* %628, align 1, !dbg !2803, !tbaa !684
  %630 = icmp eq i8 %629, 0, !dbg !2806
  br i1 %630, label %631, label %619, !dbg !2806, !llvm.loop !2812

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2414
  call void @llvm.dbg.value(metadata i64 %632, metadata !2286, metadata !DIExpression()), !dbg !2338
  %633 = icmp ult i64 %632, %140, !dbg !2814
  br i1 %633, label %634, label %653, !dbg !2816

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2817
  store i8 0, i8* %635, align 1, !dbg !2818, !tbaa !684
  br label %653, !dbg !2817

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2337), !dbg !2644
  %637 = icmp eq i32 %112, 2, !dbg !2819
  br i1 %637, label %643, label %647, !dbg !2645

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2337), !dbg !2644
  %641 = icmp eq i32 %112, 2, !dbg !2819
  %642 = select i1 %118, i32 4, i32 2, !dbg !2645
  br i1 %641, label %643, label %647, !dbg !2645

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2645

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2280, metadata !DIExpression()), !dbg !2338
  %651 = and i32 %5, -3, !dbg !2820
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2821
  br label %653, !dbg !2822

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2823
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !2824 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2826 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2830, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i64 %1, metadata !2831, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2832, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8* %0, metadata !2834, metadata !DIExpression()) #34, !dbg !2847
  call void @llvm.dbg.value(metadata i64 %1, metadata !2839, metadata !DIExpression()) #34, !dbg !2847
  call void @llvm.dbg.value(metadata i64* null, metadata !2840, metadata !DIExpression()) #34, !dbg !2847
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2841, metadata !DIExpression()) #34, !dbg !2847
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2849
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2849
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2842, metadata !DIExpression()) #34, !dbg !2847
  %6 = tail call i32* @__errno_location() #37, !dbg !2850
  %7 = load i32, i32* %6, align 4, !dbg !2850, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %7, metadata !2843, metadata !DIExpression()) #34, !dbg !2847
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2851
  %9 = load i32, i32* %8, align 4, !dbg !2851, !tbaa !2220
  %10 = or i32 %9, 1, !dbg !2852
  call void @llvm.dbg.value(metadata i32 %10, metadata !2844, metadata !DIExpression()) #34, !dbg !2847
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2853
  %12 = load i32, i32* %11, align 8, !dbg !2853, !tbaa !2169
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2854
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2855
  %15 = load i8*, i8** %14, align 8, !dbg !2855, !tbaa !2242
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2856
  %17 = load i8*, i8** %16, align 8, !dbg !2856, !tbaa !2245
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #34, !dbg !2857
  %19 = add i64 %18, 1, !dbg !2858
  call void @llvm.dbg.value(metadata i64 %19, metadata !2845, metadata !DIExpression()) #34, !dbg !2847
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #41, !dbg !2859
  call void @llvm.dbg.value(metadata i8* %20, metadata !2846, metadata !DIExpression()) #34, !dbg !2847
  %21 = load i32, i32* %11, align 8, !dbg !2860, !tbaa !2169
  %22 = load i8*, i8** %14, align 8, !dbg !2861, !tbaa !2242
  %23 = load i8*, i8** %16, align 8, !dbg !2862, !tbaa !2245
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #34, !dbg !2863
  store i32 %7, i32* %6, align 4, !dbg !2864, !tbaa !675
  ret i8* %20, !dbg !2865
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2835 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2834, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i64 %1, metadata !2839, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i64* %2, metadata !2840, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2841, metadata !DIExpression()), !dbg !2866
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2867
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2867
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2842, metadata !DIExpression()), !dbg !2866
  %7 = tail call i32* @__errno_location() #37, !dbg !2868
  %8 = load i32, i32* %7, align 4, !dbg !2868, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %8, metadata !2843, metadata !DIExpression()), !dbg !2866
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2869
  %10 = load i32, i32* %9, align 4, !dbg !2869, !tbaa !2220
  %11 = icmp eq i64* %2, null, !dbg !2870
  %12 = zext i1 %11 to i32, !dbg !2870
  %13 = or i32 %10, %12, !dbg !2871
  call void @llvm.dbg.value(metadata i32 %13, metadata !2844, metadata !DIExpression()), !dbg !2866
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2872
  %15 = load i32, i32* %14, align 8, !dbg !2872, !tbaa !2169
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2873
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2874
  %18 = load i8*, i8** %17, align 8, !dbg !2874, !tbaa !2242
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2875
  %20 = load i8*, i8** %19, align 8, !dbg !2875, !tbaa !2245
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2876
  %22 = add i64 %21, 1, !dbg !2877
  call void @llvm.dbg.value(metadata i64 %22, metadata !2845, metadata !DIExpression()), !dbg !2866
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #41, !dbg !2878
  call void @llvm.dbg.value(metadata i8* %23, metadata !2846, metadata !DIExpression()), !dbg !2866
  %24 = load i32, i32* %14, align 8, !dbg !2879, !tbaa !2169
  %25 = load i8*, i8** %17, align 8, !dbg !2880, !tbaa !2242
  %26 = load i8*, i8** %19, align 8, !dbg !2881, !tbaa !2245
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2882
  store i32 %8, i32* %7, align 4, !dbg !2883, !tbaa !675
  br i1 %11, label %29, label %28, !dbg !2884

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2885, !tbaa !2887
  br label %29, !dbg !2888

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2889
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2890 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2895, !tbaa !575
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2892, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i32 1, metadata !2893, metadata !DIExpression()), !dbg !2897
  %2 = load i32, i32* @nslots, align 4, !tbaa !675
  call void @llvm.dbg.value(metadata i32 1, metadata !2893, metadata !DIExpression()), !dbg !2897
  %3 = icmp sgt i32 %2, 1, !dbg !2898
  br i1 %3, label %4, label %6, !dbg !2900

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2898
  br label %10, !dbg !2900

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2901
  %8 = load i8*, i8** %7, align 8, !dbg !2901, !tbaa !2903
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2905
  br i1 %9, label %17, label %16, !dbg !2906

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2893, metadata !DIExpression()), !dbg !2897
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2907
  %13 = load i8*, i8** %12, align 8, !dbg !2907, !tbaa !2903
  tail call void @free(i8* noundef %13) #34, !dbg !2908
  %14 = add nuw nsw i64 %11, 1, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %14, metadata !2893, metadata !DIExpression()), !dbg !2897
  %15 = icmp eq i64 %14, %5, !dbg !2898
  br i1 %15, label %6, label %10, !dbg !2900, !llvm.loop !2910

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #34, !dbg !2912
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2914, !tbaa !2915
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2916, !tbaa !2903
  br label %17, !dbg !2917

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2918
  br i1 %18, label %21, label %19, !dbg !2920

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2921
  tail call void @free(i8* noundef %20) #34, !dbg !2923
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2924, !tbaa !575
  br label %21, !dbg !2925

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2926, !tbaa !675
  ret void, !dbg !2927
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2928 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2930, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8* %1, metadata !2931, metadata !DIExpression()), !dbg !2932
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2933
  ret i8* %3, !dbg !2934
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2935 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2939, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8* %1, metadata !2940, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %2, metadata !2941, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2942, metadata !DIExpression()), !dbg !2955
  %6 = tail call i32* @__errno_location() #37, !dbg !2956
  %7 = load i32, i32* %6, align 4, !dbg !2956, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %7, metadata !2943, metadata !DIExpression()), !dbg !2955
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2957, !tbaa !575
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2944, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2945, metadata !DIExpression()), !dbg !2955
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2958
  br i1 %9, label %10, label %11, !dbg !2958

10:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2960
  unreachable, !dbg !2960

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2961, !tbaa !675
  %13 = icmp sgt i32 %12, %0, !dbg !2962
  br i1 %13, label %36, label %14, !dbg !2963

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2964
  call void @llvm.dbg.value(metadata i1 %15, metadata !2946, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2965
  %16 = bitcast i64* %5 to i8*, !dbg !2966
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #34, !dbg !2966
  %17 = sext i32 %12 to i64, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %17, metadata !2949, metadata !DIExpression()), !dbg !2965
  store i64 %17, i64* %5, align 8, !dbg !2968, !tbaa !2887
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2969
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2969
  %20 = add nuw nsw i32 %0, 1, !dbg !2970
  %21 = sub i32 %20, %12, !dbg !2971
  %22 = sext i32 %21 to i64, !dbg !2972
  call void @llvm.dbg.value(metadata i64* %5, metadata !2949, metadata !DIExpression(DW_OP_deref)), !dbg !2965
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #34, !dbg !2973
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2973
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2944, metadata !DIExpression()), !dbg !2955
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2974, !tbaa !575
  br i1 %15, label %25, label %26, !dbg !2975

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2976, !tbaa.struct !2978
  br label %26, !dbg !2979

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2980, !tbaa !675
  %28 = sext i32 %27 to i64, !dbg !2981
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2981
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2982
  %31 = load i64, i64* %5, align 8, !dbg !2983, !tbaa !2887
  call void @llvm.dbg.value(metadata i64 %31, metadata !2949, metadata !DIExpression()), !dbg !2965
  %32 = sub nsw i64 %31, %28, !dbg !2984
  %33 = shl i64 %32, 4, !dbg !2985
  call void @llvm.dbg.value(metadata i8* %30, metadata !2372, metadata !DIExpression()) #34, !dbg !2986
  call void @llvm.dbg.value(metadata i32 0, metadata !2375, metadata !DIExpression()) #34, !dbg !2986
  call void @llvm.dbg.value(metadata i64 %33, metadata !2376, metadata !DIExpression()) #34, !dbg !2986
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #34, !dbg !2988
  %34 = load i64, i64* %5, align 8, !dbg !2989, !tbaa !2887
  call void @llvm.dbg.value(metadata i64 %34, metadata !2949, metadata !DIExpression()), !dbg !2965
  %35 = trunc i64 %34 to i32, !dbg !2989
  store i32 %35, i32* @nslots, align 4, !dbg !2990, !tbaa !675
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #34, !dbg !2991
  br label %36, !dbg !2992

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2955
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2944, metadata !DIExpression()), !dbg !2955
  %38 = zext i32 %0 to i64, !dbg !2993
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2994
  %40 = load i64, i64* %39, align 8, !dbg !2994, !tbaa !2915
  call void @llvm.dbg.value(metadata i64 %40, metadata !2950, metadata !DIExpression()), !dbg !2995
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2996
  %42 = load i8*, i8** %41, align 8, !dbg !2996, !tbaa !2903
  call void @llvm.dbg.value(metadata i8* %42, metadata !2952, metadata !DIExpression()), !dbg !2995
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2997
  %44 = load i32, i32* %43, align 4, !dbg !2997, !tbaa !2220
  %45 = or i32 %44, 1, !dbg !2998
  call void @llvm.dbg.value(metadata i32 %45, metadata !2953, metadata !DIExpression()), !dbg !2995
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2999
  %47 = load i32, i32* %46, align 8, !dbg !2999, !tbaa !2169
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3000
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3001
  %50 = load i8*, i8** %49, align 8, !dbg !3001, !tbaa !2242
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3002
  %52 = load i8*, i8** %51, align 8, !dbg !3002, !tbaa !2245
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %53, metadata !2954, metadata !DIExpression()), !dbg !2995
  %54 = icmp ugt i64 %40, %53, !dbg !3004
  br i1 %54, label %65, label %55, !dbg !3006

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !3007
  call void @llvm.dbg.value(metadata i64 %56, metadata !2950, metadata !DIExpression()), !dbg !2995
  store i64 %56, i64* %39, align 8, !dbg !3009, !tbaa !2915
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3010
  br i1 %57, label %59, label %58, !dbg !3012

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #34, !dbg !3013
  br label %59, !dbg !3013

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #41, !dbg !3014
  call void @llvm.dbg.value(metadata i8* %60, metadata !2952, metadata !DIExpression()), !dbg !2995
  store i8* %60, i8** %41, align 8, !dbg !3015, !tbaa !2903
  %61 = load i32, i32* %46, align 8, !dbg !3016, !tbaa !2169
  %62 = load i8*, i8** %49, align 8, !dbg !3017, !tbaa !2242
  %63 = load i8*, i8** %51, align 8, !dbg !3018, !tbaa !2245
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !3019
  br label %65, !dbg !3020

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2995
  call void @llvm.dbg.value(metadata i8* %66, metadata !2952, metadata !DIExpression()), !dbg !2995
  store i32 %7, i32* %6, align 4, !dbg !3021, !tbaa !675
  ret i8* %66, !dbg !3022
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3023 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3027, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i8* %1, metadata !3028, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %2, metadata !3029, metadata !DIExpression()), !dbg !3030
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3031
  ret i8* %4, !dbg !3032
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !3033 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3035, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 0, metadata !2930, metadata !DIExpression()) #34, !dbg !3037
  call void @llvm.dbg.value(metadata i8* %0, metadata !2931, metadata !DIExpression()) #34, !dbg !3037
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !3039
  ret i8* %2, !dbg !3040
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3041 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3045, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 %1, metadata !3046, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i32 0, metadata !3027, metadata !DIExpression()) #34, !dbg !3048
  call void @llvm.dbg.value(metadata i8* %0, metadata !3028, metadata !DIExpression()) #34, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %1, metadata !3029, metadata !DIExpression()) #34, !dbg !3048
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !3050
  ret i8* %3, !dbg !3051
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3052 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3056, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i32 %1, metadata !3057, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8* %2, metadata !3058, metadata !DIExpression()), !dbg !3060
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3061
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3061
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3059, metadata !DIExpression()), !dbg !3062
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3063), !dbg !3066
  call void @llvm.dbg.value(metadata i32 %1, metadata !3067, metadata !DIExpression()) #34, !dbg !3073
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3072, metadata !DIExpression()) #34, !dbg !3075
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !3075, !alias.scope !3063
  %6 = icmp eq i32 %1, 10, !dbg !3076
  br i1 %6, label %7, label %8, !dbg !3078

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !3079, !noalias !3063
  unreachable, !dbg !3079

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3080
  store i32 %1, i32* %9, align 8, !dbg !3081, !tbaa !2169, !alias.scope !3063
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3082
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3083
  ret i8* %10, !dbg !3084
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3085 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3089, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i32 %1, metadata !3090, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i8* %2, metadata !3091, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %3, metadata !3092, metadata !DIExpression()), !dbg !3094
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3095
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3095
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3093, metadata !DIExpression()), !dbg !3096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3097), !dbg !3100
  call void @llvm.dbg.value(metadata i32 %1, metadata !3067, metadata !DIExpression()) #34, !dbg !3101
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3072, metadata !DIExpression()) #34, !dbg !3103
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #34, !dbg !3103, !alias.scope !3097
  %7 = icmp eq i32 %1, 10, !dbg !3104
  br i1 %7, label %8, label %9, !dbg !3105

8:                                                ; preds = %4
  tail call void @abort() #36, !dbg !3106, !noalias !3097
  unreachable, !dbg !3106

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3107
  store i32 %1, i32* %10, align 8, !dbg !3108, !tbaa !2169, !alias.scope !3097
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !3109
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3110
  ret i8* %11, !dbg !3111
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3112 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3116, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i8* %1, metadata !3117, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 0, metadata !3056, metadata !DIExpression()) #34, !dbg !3119
  call void @llvm.dbg.value(metadata i32 %0, metadata !3057, metadata !DIExpression()) #34, !dbg !3119
  call void @llvm.dbg.value(metadata i8* %1, metadata !3058, metadata !DIExpression()) #34, !dbg !3119
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3121
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3121
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3059, metadata !DIExpression()) #34, !dbg !3122
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3123) #34, !dbg !3126
  call void @llvm.dbg.value(metadata i32 %0, metadata !3067, metadata !DIExpression()) #34, !dbg !3127
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3072, metadata !DIExpression()) #34, !dbg !3129
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #34, !dbg !3129, !alias.scope !3123
  %5 = icmp eq i32 %0, 10, !dbg !3130
  br i1 %5, label %6, label %7, !dbg !3131

6:                                                ; preds = %2
  tail call void @abort() #36, !dbg !3132, !noalias !3123
  unreachable, !dbg !3132

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3133
  store i32 %0, i32* %8, align 8, !dbg !3134, !tbaa !2169, !alias.scope !3123
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3135
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3136
  ret i8* %9, !dbg !3137
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3138 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3142, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i8* %1, metadata !3143, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i64 %2, metadata !3144, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i32 0, metadata !3089, metadata !DIExpression()) #34, !dbg !3146
  call void @llvm.dbg.value(metadata i32 %0, metadata !3090, metadata !DIExpression()) #34, !dbg !3146
  call void @llvm.dbg.value(metadata i8* %1, metadata !3091, metadata !DIExpression()) #34, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %2, metadata !3092, metadata !DIExpression()) #34, !dbg !3146
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3148
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3148
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3093, metadata !DIExpression()) #34, !dbg !3149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3150) #34, !dbg !3153
  call void @llvm.dbg.value(metadata i32 %0, metadata !3067, metadata !DIExpression()) #34, !dbg !3154
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3072, metadata !DIExpression()) #34, !dbg !3156
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !3156, !alias.scope !3150
  %6 = icmp eq i32 %0, 10, !dbg !3157
  br i1 %6, label %7, label %8, !dbg !3158

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !3159, !noalias !3150
  unreachable, !dbg !3159

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3160
  store i32 %0, i32* %9, align 8, !dbg !3161, !tbaa !2169, !alias.scope !3150
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #34, !dbg !3162
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3163
  ret i8* %10, !dbg !3164
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3165 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3169, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %1, metadata !3170, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i8 %2, metadata !3171, metadata !DIExpression()), !dbg !3173
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3174
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3174
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3172, metadata !DIExpression()), !dbg !3175
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3176, !tbaa.struct !3177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2187, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i8 %2, metadata !2188, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i32 1, metadata !2189, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i8 %2, metadata !2190, metadata !DIExpression()), !dbg !3178
  %6 = lshr i8 %2, 5, !dbg !3180
  %7 = zext i8 %6 to i64, !dbg !3180
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3181
  call void @llvm.dbg.value(metadata i32* %8, metadata !2191, metadata !DIExpression()), !dbg !3178
  %9 = and i8 %2, 31, !dbg !3182
  %10 = zext i8 %9 to i32, !dbg !3182
  call void @llvm.dbg.value(metadata i32 %10, metadata !2193, metadata !DIExpression()), !dbg !3178
  %11 = load i32, i32* %8, align 4, !dbg !3183, !tbaa !675
  %12 = lshr i32 %11, %10, !dbg !3184
  %13 = and i32 %12, 1, !dbg !3185
  call void @llvm.dbg.value(metadata i32 %13, metadata !2194, metadata !DIExpression()), !dbg !3178
  %14 = xor i32 %13, 1, !dbg !3186
  %15 = shl i32 %14, %10, !dbg !3187
  %16 = xor i32 %15, %11, !dbg !3188
  store i32 %16, i32* %8, align 4, !dbg !3188, !tbaa !675
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3189
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3190
  ret i8* %17, !dbg !3191
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3192 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3196, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i8 %1, metadata !3197, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i8* %0, metadata !3169, metadata !DIExpression()) #34, !dbg !3199
  call void @llvm.dbg.value(metadata i64 -1, metadata !3170, metadata !DIExpression()) #34, !dbg !3199
  call void @llvm.dbg.value(metadata i8 %1, metadata !3171, metadata !DIExpression()) #34, !dbg !3199
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3201
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3201
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3172, metadata !DIExpression()) #34, !dbg !3202
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3203, !tbaa.struct !3177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2187, metadata !DIExpression()) #34, !dbg !3204
  call void @llvm.dbg.value(metadata i8 %1, metadata !2188, metadata !DIExpression()) #34, !dbg !3204
  call void @llvm.dbg.value(metadata i32 1, metadata !2189, metadata !DIExpression()) #34, !dbg !3204
  call void @llvm.dbg.value(metadata i8 %1, metadata !2190, metadata !DIExpression()) #34, !dbg !3204
  %5 = lshr i8 %1, 5, !dbg !3206
  %6 = zext i8 %5 to i64, !dbg !3206
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3207
  call void @llvm.dbg.value(metadata i32* %7, metadata !2191, metadata !DIExpression()) #34, !dbg !3204
  %8 = and i8 %1, 31, !dbg !3208
  %9 = zext i8 %8 to i32, !dbg !3208
  call void @llvm.dbg.value(metadata i32 %9, metadata !2193, metadata !DIExpression()) #34, !dbg !3204
  %10 = load i32, i32* %7, align 4, !dbg !3209, !tbaa !675
  %11 = lshr i32 %10, %9, !dbg !3210
  %12 = and i32 %11, 1, !dbg !3211
  call void @llvm.dbg.value(metadata i32 %12, metadata !2194, metadata !DIExpression()) #34, !dbg !3204
  %13 = xor i32 %12, 1, !dbg !3212
  %14 = shl i32 %13, %9, !dbg !3213
  %15 = xor i32 %14, %10, !dbg !3214
  store i32 %15, i32* %7, align 4, !dbg !3214, !tbaa !675
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3215
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3216
  ret i8* %16, !dbg !3217
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3218 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3220, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8* %0, metadata !3196, metadata !DIExpression()) #34, !dbg !3222
  call void @llvm.dbg.value(metadata i8 58, metadata !3197, metadata !DIExpression()) #34, !dbg !3222
  call void @llvm.dbg.value(metadata i8* %0, metadata !3169, metadata !DIExpression()) #34, !dbg !3224
  call void @llvm.dbg.value(metadata i64 -1, metadata !3170, metadata !DIExpression()) #34, !dbg !3224
  call void @llvm.dbg.value(metadata i8 58, metadata !3171, metadata !DIExpression()) #34, !dbg !3224
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3226
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #34, !dbg !3226
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3172, metadata !DIExpression()) #34, !dbg !3227
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3228, !tbaa.struct !3177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2187, metadata !DIExpression()) #34, !dbg !3229
  call void @llvm.dbg.value(metadata i8 58, metadata !2188, metadata !DIExpression()) #34, !dbg !3229
  call void @llvm.dbg.value(metadata i32 1, metadata !2189, metadata !DIExpression()) #34, !dbg !3229
  call void @llvm.dbg.value(metadata i8 58, metadata !2190, metadata !DIExpression()) #34, !dbg !3229
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3231
  call void @llvm.dbg.value(metadata i32* %4, metadata !2191, metadata !DIExpression()) #34, !dbg !3229
  call void @llvm.dbg.value(metadata i32 26, metadata !2193, metadata !DIExpression()) #34, !dbg !3229
  %5 = load i32, i32* %4, align 4, !dbg !3232, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %5, metadata !2194, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !3229
  %6 = or i32 %5, 67108864, !dbg !3233
  store i32 %6, i32* %4, align 4, !dbg !3233, !tbaa !675
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #34, !dbg !3234
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #34, !dbg !3235
  ret i8* %7, !dbg !3236
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3237 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3239, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %1, metadata !3240, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i8* %0, metadata !3169, metadata !DIExpression()) #34, !dbg !3242
  call void @llvm.dbg.value(metadata i64 %1, metadata !3170, metadata !DIExpression()) #34, !dbg !3242
  call void @llvm.dbg.value(metadata i8 58, metadata !3171, metadata !DIExpression()) #34, !dbg !3242
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3244
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3244
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3172, metadata !DIExpression()) #34, !dbg !3245
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3246, !tbaa.struct !3177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2187, metadata !DIExpression()) #34, !dbg !3247
  call void @llvm.dbg.value(metadata i8 58, metadata !2188, metadata !DIExpression()) #34, !dbg !3247
  call void @llvm.dbg.value(metadata i32 1, metadata !2189, metadata !DIExpression()) #34, !dbg !3247
  call void @llvm.dbg.value(metadata i8 58, metadata !2190, metadata !DIExpression()) #34, !dbg !3247
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3249
  call void @llvm.dbg.value(metadata i32* %5, metadata !2191, metadata !DIExpression()) #34, !dbg !3247
  call void @llvm.dbg.value(metadata i32 26, metadata !2193, metadata !DIExpression()) #34, !dbg !3247
  %6 = load i32, i32* %5, align 4, !dbg !3250, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %6, metadata !2194, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !3247
  %7 = or i32 %6, 67108864, !dbg !3251
  store i32 %7, i32* %5, align 4, !dbg !3251, !tbaa !675
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3252
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3253
  ret i8* %8, !dbg !3254
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3255 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3257, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i32 %1, metadata !3258, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8* %2, metadata !3259, metadata !DIExpression()), !dbg !3261
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3262
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3262
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3260, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i32 %1, metadata !3067, metadata !DIExpression()) #34, !dbg !3264
  call void @llvm.dbg.value(metadata i32 0, metadata !3072, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3264
  %6 = icmp eq i32 %1, 10, !dbg !3266
  br i1 %6, label %7, label %8, !dbg !3267

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !3268, !noalias !3269
  unreachable, !dbg !3268

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3072, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3264
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3272
  store i32 %1, i32* %9, align 8, !dbg !3272, !tbaa.struct !3177
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3272
  %11 = bitcast i32* %10 to i8*, !dbg !3272
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3272
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2187, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i8 58, metadata !2188, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i32 1, metadata !2189, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i8 58, metadata !2190, metadata !DIExpression()), !dbg !3273
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3275
  call void @llvm.dbg.value(metadata i32* %12, metadata !2191, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i32 26, metadata !2193, metadata !DIExpression()), !dbg !3273
  %13 = load i32, i32* %12, align 4, !dbg !3276, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %13, metadata !2194, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3273
  %14 = or i32 %13, 67108864, !dbg !3277
  store i32 %14, i32* %12, align 4, !dbg !3277, !tbaa !675
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3278
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3279
  ret i8* %15, !dbg !3280
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3281 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3285, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* %1, metadata !3286, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* %2, metadata !3287, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* %3, metadata !3288, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 %0, metadata !3290, metadata !DIExpression()) #34, !dbg !3300
  call void @llvm.dbg.value(metadata i8* %1, metadata !3295, metadata !DIExpression()) #34, !dbg !3300
  call void @llvm.dbg.value(metadata i8* %2, metadata !3296, metadata !DIExpression()) #34, !dbg !3300
  call void @llvm.dbg.value(metadata i8* %3, metadata !3297, metadata !DIExpression()) #34, !dbg !3300
  call void @llvm.dbg.value(metadata i64 -1, metadata !3298, metadata !DIExpression()) #34, !dbg !3300
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3302
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3302
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3299, metadata !DIExpression()) #34, !dbg !3303
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3304, !tbaa.struct !3177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2227, metadata !DIExpression()) #34, !dbg !3305
  call void @llvm.dbg.value(metadata i8* %1, metadata !2228, metadata !DIExpression()) #34, !dbg !3305
  call void @llvm.dbg.value(metadata i8* %2, metadata !2229, metadata !DIExpression()) #34, !dbg !3305
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2227, metadata !DIExpression()) #34, !dbg !3305
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3307
  store i32 10, i32* %7, align 8, !dbg !3308, !tbaa !2169
  %8 = icmp ne i8* %1, null, !dbg !3309
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3310
  br i1 %10, label %12, label %11, !dbg !3310

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !3311
  unreachable, !dbg !3311

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3312
  store i8* %1, i8** %13, align 8, !dbg !3313, !tbaa !2242
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3314
  store i8* %2, i8** %14, align 8, !dbg !3315, !tbaa !2245
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #34, !dbg !3316
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3317
  ret i8* %15, !dbg !3318
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3291 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3290, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i8* %1, metadata !3295, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i8* %2, metadata !3296, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i8* %3, metadata !3297, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i64 %4, metadata !3298, metadata !DIExpression()), !dbg !3319
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3320
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #34, !dbg !3320
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3299, metadata !DIExpression()), !dbg !3321
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3322, !tbaa.struct !3177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2227, metadata !DIExpression()) #34, !dbg !3323
  call void @llvm.dbg.value(metadata i8* %1, metadata !2228, metadata !DIExpression()) #34, !dbg !3323
  call void @llvm.dbg.value(metadata i8* %2, metadata !2229, metadata !DIExpression()) #34, !dbg !3323
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2227, metadata !DIExpression()) #34, !dbg !3323
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3325
  store i32 10, i32* %8, align 8, !dbg !3326, !tbaa !2169
  %9 = icmp ne i8* %1, null, !dbg !3327
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3328
  br i1 %11, label %13, label %12, !dbg !3328

12:                                               ; preds = %5
  tail call void @abort() #36, !dbg !3329
  unreachable, !dbg !3329

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3330
  store i8* %1, i8** %14, align 8, !dbg !3331, !tbaa !2242
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3332
  store i8* %2, i8** %15, align 8, !dbg !3333, !tbaa !2245
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3334
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #34, !dbg !3335
  ret i8* %16, !dbg !3336
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3337 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3341, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8* %1, metadata !3342, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8* %2, metadata !3343, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i32 0, metadata !3285, metadata !DIExpression()) #34, !dbg !3345
  call void @llvm.dbg.value(metadata i8* %0, metadata !3286, metadata !DIExpression()) #34, !dbg !3345
  call void @llvm.dbg.value(metadata i8* %1, metadata !3287, metadata !DIExpression()) #34, !dbg !3345
  call void @llvm.dbg.value(metadata i8* %2, metadata !3288, metadata !DIExpression()) #34, !dbg !3345
  call void @llvm.dbg.value(metadata i32 0, metadata !3290, metadata !DIExpression()) #34, !dbg !3347
  call void @llvm.dbg.value(metadata i8* %0, metadata !3295, metadata !DIExpression()) #34, !dbg !3347
  call void @llvm.dbg.value(metadata i8* %1, metadata !3296, metadata !DIExpression()) #34, !dbg !3347
  call void @llvm.dbg.value(metadata i8* %2, metadata !3297, metadata !DIExpression()) #34, !dbg !3347
  call void @llvm.dbg.value(metadata i64 -1, metadata !3298, metadata !DIExpression()) #34, !dbg !3347
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3349
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3349
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3299, metadata !DIExpression()) #34, !dbg !3350
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3351, !tbaa.struct !3177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2227, metadata !DIExpression()) #34, !dbg !3352
  call void @llvm.dbg.value(metadata i8* %0, metadata !2228, metadata !DIExpression()) #34, !dbg !3352
  call void @llvm.dbg.value(metadata i8* %1, metadata !2229, metadata !DIExpression()) #34, !dbg !3352
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2227, metadata !DIExpression()) #34, !dbg !3352
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3354
  store i32 10, i32* %6, align 8, !dbg !3355, !tbaa !2169
  %7 = icmp ne i8* %0, null, !dbg !3356
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3357
  br i1 %9, label %11, label %10, !dbg !3357

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !3358
  unreachable, !dbg !3358

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3359
  store i8* %0, i8** %12, align 8, !dbg !3360, !tbaa !2242
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3361
  store i8* %1, i8** %13, align 8, !dbg !3362, !tbaa !2245
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #34, !dbg !3363
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3364
  ret i8* %14, !dbg !3365
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3366 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3370, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i8* %1, metadata !3371, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i8* %2, metadata !3372, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 %3, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i32 0, metadata !3290, metadata !DIExpression()) #34, !dbg !3375
  call void @llvm.dbg.value(metadata i8* %0, metadata !3295, metadata !DIExpression()) #34, !dbg !3375
  call void @llvm.dbg.value(metadata i8* %1, metadata !3296, metadata !DIExpression()) #34, !dbg !3375
  call void @llvm.dbg.value(metadata i8* %2, metadata !3297, metadata !DIExpression()) #34, !dbg !3375
  call void @llvm.dbg.value(metadata i64 %3, metadata !3298, metadata !DIExpression()) #34, !dbg !3375
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3377
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3377
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3299, metadata !DIExpression()) #34, !dbg !3378
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3379, !tbaa.struct !3177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2227, metadata !DIExpression()) #34, !dbg !3380
  call void @llvm.dbg.value(metadata i8* %0, metadata !2228, metadata !DIExpression()) #34, !dbg !3380
  call void @llvm.dbg.value(metadata i8* %1, metadata !2229, metadata !DIExpression()) #34, !dbg !3380
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2227, metadata !DIExpression()) #34, !dbg !3380
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3382
  store i32 10, i32* %7, align 8, !dbg !3383, !tbaa !2169
  %8 = icmp ne i8* %0, null, !dbg !3384
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3385
  br i1 %10, label %12, label %11, !dbg !3385

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !3386
  unreachable, !dbg !3386

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3387
  store i8* %0, i8** %13, align 8, !dbg !3388, !tbaa !2242
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3389
  store i8* %1, i8** %14, align 8, !dbg !3390, !tbaa !2245
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #34, !dbg !3391
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3392
  ret i8* %15, !dbg !3393
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3394 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3398, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i8* %1, metadata !3399, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %2, metadata !3400, metadata !DIExpression()), !dbg !3401
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3402
  ret i8* %4, !dbg !3403
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3404 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3408, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 %1, metadata !3409, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i32 0, metadata !3398, metadata !DIExpression()) #34, !dbg !3411
  call void @llvm.dbg.value(metadata i8* %0, metadata !3399, metadata !DIExpression()) #34, !dbg !3411
  call void @llvm.dbg.value(metadata i64 %1, metadata !3400, metadata !DIExpression()) #34, !dbg !3411
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3413
  ret i8* %3, !dbg !3414
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3415 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3419, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i8* %1, metadata !3420, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i32 %0, metadata !3398, metadata !DIExpression()) #34, !dbg !3422
  call void @llvm.dbg.value(metadata i8* %1, metadata !3399, metadata !DIExpression()) #34, !dbg !3422
  call void @llvm.dbg.value(metadata i64 -1, metadata !3400, metadata !DIExpression()) #34, !dbg !3422
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3424
  ret i8* %3, !dbg !3425
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3426 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3430, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i32 0, metadata !3419, metadata !DIExpression()) #34, !dbg !3432
  call void @llvm.dbg.value(metadata i8* %0, metadata !3420, metadata !DIExpression()) #34, !dbg !3432
  call void @llvm.dbg.value(metadata i32 0, metadata !3398, metadata !DIExpression()) #34, !dbg !3434
  call void @llvm.dbg.value(metadata i8* %0, metadata !3399, metadata !DIExpression()) #34, !dbg !3434
  call void @llvm.dbg.value(metadata i64 -1, metadata !3400, metadata !DIExpression()) #34, !dbg !3434
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3436
  ret i8* %2, !dbg !3437
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @safe_write(i32 noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3438 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3444, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i8* %1, metadata !3445, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i64 %2, metadata !3446, metadata !DIExpression()), !dbg !3453
  br label %4, !dbg !3454

4:                                                ; preds = %22, %3
  %5 = phi i64 [ %2, %3 ], [ %23, %22 ]
  %6 = phi i64 [ undef, %3 ], [ %24, %22 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3446, metadata !DIExpression()), !dbg !3453
  %7 = tail call i64 @write(i32 noundef %0, i8* noundef %1, i64 noundef %5) #34, !dbg !3455
  call void @llvm.dbg.value(metadata i64 %7, metadata !3447, metadata !DIExpression()), !dbg !3456
  %8 = icmp sgt i64 %7, -1, !dbg !3457
  br i1 %8, label %27, label %9, !dbg !3459

9:                                                ; preds = %4
  %10 = tail call i32* @__errno_location() #37, !dbg !3460
  %11 = load i32, i32* %10, align 4, !dbg !3460, !tbaa !675
  %12 = icmp eq i32 %11, 4, !dbg !3460
  br i1 %12, label %22, label %13, !dbg !3462, !llvm.loop !3463

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !3466
  %15 = icmp sgt i64 %5, 2146435072
  %16 = and i1 %15, %14, !dbg !3468
  %17 = select i1 %16, i64 2146435072, i64 %5, !dbg !3469
  %18 = select i1 %16, i64 %6, i64 %7, !dbg !3469
  %19 = and i1 %15, %14, !dbg !3469
  %20 = xor i1 %19, true, !dbg !3469
  %21 = zext i1 %20 to i32, !dbg !3469
  br label %22, !dbg !3469

22:                                               ; preds = %13, %9
  %23 = phi i64 [ %5, %9 ], [ %17, %13 ]
  %24 = phi i64 [ %6, %9 ], [ %18, %13 ]
  %25 = phi i32 [ 3, %9 ], [ %21, %13 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !3446, metadata !DIExpression()), !dbg !3453
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %4

27:                                               ; preds = %4, %22
  %28 = phi i64 [ %24, %22 ], [ %7, %4 ]
  ret i64 %28, !dbg !3470
}

; Function Attrs: nofree
declare !dbg !3471 noundef i64 @write(i32 noundef, i8* nocapture noundef readonly, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3474 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3513, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i8* %1, metadata !3514, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i8* %2, metadata !3515, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i8* %3, metadata !3516, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i8** %4, metadata !3517, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i64 %5, metadata !3518, metadata !DIExpression()), !dbg !3519
  %7 = icmp eq i8* %1, null, !dbg !3520
  br i1 %7, label %10, label %8, !dbg !3522

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #34, !dbg !3523
  br label %12, !dbg !3523

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.130, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #34, !dbg !3524
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.132, i64 0, i64 0), i32 noundef 5) #34, !dbg !3525
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #34, !dbg !3525
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.133, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3526
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.134, i64 0, i64 0), i32 noundef 5) #34, !dbg !3527
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.135, i64 0, i64 0)) #34, !dbg !3527
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.133, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3528
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
  ], !dbg !3529

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.136, i64 0, i64 0), i32 noundef 5) #34, !dbg !3530
  %21 = load i8*, i8** %4, align 8, !dbg !3530, !tbaa !575
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #34, !dbg !3530
  br label %147, !dbg !3532

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.137, i64 0, i64 0), i32 noundef 5) #34, !dbg !3533
  %25 = load i8*, i8** %4, align 8, !dbg !3533, !tbaa !575
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3533
  %27 = load i8*, i8** %26, align 8, !dbg !3533, !tbaa !575
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #34, !dbg !3533
  br label %147, !dbg !3534

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.138, i64 0, i64 0), i32 noundef 5) #34, !dbg !3535
  %31 = load i8*, i8** %4, align 8, !dbg !3535, !tbaa !575
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3535
  %33 = load i8*, i8** %32, align 8, !dbg !3535, !tbaa !575
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3535
  %35 = load i8*, i8** %34, align 8, !dbg !3535, !tbaa !575
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #34, !dbg !3535
  br label %147, !dbg !3536

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.139, i64 0, i64 0), i32 noundef 5) #34, !dbg !3537
  %39 = load i8*, i8** %4, align 8, !dbg !3537, !tbaa !575
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3537
  %41 = load i8*, i8** %40, align 8, !dbg !3537, !tbaa !575
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3537
  %43 = load i8*, i8** %42, align 8, !dbg !3537, !tbaa !575
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3537
  %45 = load i8*, i8** %44, align 8, !dbg !3537, !tbaa !575
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #34, !dbg !3537
  br label %147, !dbg !3538

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.140, i64 0, i64 0), i32 noundef 5) #34, !dbg !3539
  %49 = load i8*, i8** %4, align 8, !dbg !3539, !tbaa !575
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3539
  %51 = load i8*, i8** %50, align 8, !dbg !3539, !tbaa !575
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3539
  %53 = load i8*, i8** %52, align 8, !dbg !3539, !tbaa !575
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3539
  %55 = load i8*, i8** %54, align 8, !dbg !3539, !tbaa !575
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3539
  %57 = load i8*, i8** %56, align 8, !dbg !3539, !tbaa !575
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #34, !dbg !3539
  br label %147, !dbg !3540

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.141, i64 0, i64 0), i32 noundef 5) #34, !dbg !3541
  %61 = load i8*, i8** %4, align 8, !dbg !3541, !tbaa !575
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3541
  %63 = load i8*, i8** %62, align 8, !dbg !3541, !tbaa !575
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3541
  %65 = load i8*, i8** %64, align 8, !dbg !3541, !tbaa !575
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3541
  %67 = load i8*, i8** %66, align 8, !dbg !3541, !tbaa !575
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3541
  %69 = load i8*, i8** %68, align 8, !dbg !3541, !tbaa !575
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3541
  %71 = load i8*, i8** %70, align 8, !dbg !3541, !tbaa !575
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #34, !dbg !3541
  br label %147, !dbg !3542

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.142, i64 0, i64 0), i32 noundef 5) #34, !dbg !3543
  %75 = load i8*, i8** %4, align 8, !dbg !3543, !tbaa !575
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3543
  %77 = load i8*, i8** %76, align 8, !dbg !3543, !tbaa !575
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3543
  %79 = load i8*, i8** %78, align 8, !dbg !3543, !tbaa !575
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3543
  %81 = load i8*, i8** %80, align 8, !dbg !3543, !tbaa !575
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3543
  %83 = load i8*, i8** %82, align 8, !dbg !3543, !tbaa !575
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3543
  %85 = load i8*, i8** %84, align 8, !dbg !3543, !tbaa !575
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3543
  %87 = load i8*, i8** %86, align 8, !dbg !3543, !tbaa !575
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #34, !dbg !3543
  br label %147, !dbg !3544

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.143, i64 0, i64 0), i32 noundef 5) #34, !dbg !3545
  %91 = load i8*, i8** %4, align 8, !dbg !3545, !tbaa !575
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3545
  %93 = load i8*, i8** %92, align 8, !dbg !3545, !tbaa !575
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3545
  %95 = load i8*, i8** %94, align 8, !dbg !3545, !tbaa !575
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3545
  %97 = load i8*, i8** %96, align 8, !dbg !3545, !tbaa !575
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3545
  %99 = load i8*, i8** %98, align 8, !dbg !3545, !tbaa !575
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3545
  %101 = load i8*, i8** %100, align 8, !dbg !3545, !tbaa !575
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3545
  %103 = load i8*, i8** %102, align 8, !dbg !3545, !tbaa !575
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3545
  %105 = load i8*, i8** %104, align 8, !dbg !3545, !tbaa !575
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #34, !dbg !3545
  br label %147, !dbg !3546

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.144, i64 0, i64 0), i32 noundef 5) #34, !dbg !3547
  %109 = load i8*, i8** %4, align 8, !dbg !3547, !tbaa !575
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3547
  %111 = load i8*, i8** %110, align 8, !dbg !3547, !tbaa !575
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3547
  %113 = load i8*, i8** %112, align 8, !dbg !3547, !tbaa !575
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3547
  %115 = load i8*, i8** %114, align 8, !dbg !3547, !tbaa !575
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3547
  %117 = load i8*, i8** %116, align 8, !dbg !3547, !tbaa !575
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3547
  %119 = load i8*, i8** %118, align 8, !dbg !3547, !tbaa !575
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3547
  %121 = load i8*, i8** %120, align 8, !dbg !3547, !tbaa !575
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3547
  %123 = load i8*, i8** %122, align 8, !dbg !3547, !tbaa !575
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3547
  %125 = load i8*, i8** %124, align 8, !dbg !3547, !tbaa !575
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #34, !dbg !3547
  br label %147, !dbg !3548

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.145, i64 0, i64 0), i32 noundef 5) #34, !dbg !3549
  %129 = load i8*, i8** %4, align 8, !dbg !3549, !tbaa !575
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3549
  %131 = load i8*, i8** %130, align 8, !dbg !3549, !tbaa !575
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3549
  %133 = load i8*, i8** %132, align 8, !dbg !3549, !tbaa !575
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3549
  %135 = load i8*, i8** %134, align 8, !dbg !3549, !tbaa !575
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3549
  %137 = load i8*, i8** %136, align 8, !dbg !3549, !tbaa !575
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3549
  %139 = load i8*, i8** %138, align 8, !dbg !3549, !tbaa !575
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3549
  %141 = load i8*, i8** %140, align 8, !dbg !3549, !tbaa !575
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3549
  %143 = load i8*, i8** %142, align 8, !dbg !3549, !tbaa !575
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3549
  %145 = load i8*, i8** %144, align 8, !dbg !3549, !tbaa !575
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #34, !dbg !3549
  br label %147, !dbg !3550

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3551
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3552 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3556, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i8* %1, metadata !3557, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i8* %2, metadata !3558, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i8* %3, metadata !3559, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i8** %4, metadata !3560, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i64 0, metadata !3561, metadata !DIExpression()), !dbg !3562
  br label %6, !dbg !3563

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3565
  call void @llvm.dbg.value(metadata i64 %7, metadata !3561, metadata !DIExpression()), !dbg !3562
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3566
  %9 = load i8*, i8** %8, align 8, !dbg !3566, !tbaa !575
  %10 = icmp eq i8* %9, null, !dbg !3568
  %11 = add i64 %7, 1, !dbg !3569
  call void @llvm.dbg.value(metadata i64 %11, metadata !3561, metadata !DIExpression()), !dbg !3562
  br i1 %10, label %12, label %6, !dbg !3568, !llvm.loop !3570

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3572
  ret void, !dbg !3573
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3574 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3589, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i8* %1, metadata !3590, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i8* %2, metadata !3591, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i8* %3, metadata !3592, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3593, metadata !DIExpression()), !dbg !3598
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3599
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3599
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3595, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i64 0, metadata !3594, metadata !DIExpression()), !dbg !3597
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3594, metadata !DIExpression()), !dbg !3597
  %11 = load i32, i32* %8, align 8, !dbg !3601
  %12 = icmp sgt i32 %11, -1, !dbg !3601
  br i1 %12, label %20, label %13, !dbg !3601

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3601
  store i32 %14, i32* %8, align 8, !dbg !3601
  %15 = icmp ult i32 %11, -7, !dbg !3601
  br i1 %15, label %16, label %20, !dbg !3601

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3601
  %18 = sext i32 %11 to i64, !dbg !3601
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3601
  br label %24, !dbg !3601

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3601
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3601
  store i8* %23, i8** %10, align 8, !dbg !3601
  br label %24, !dbg !3601

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3601
  %28 = load i8*, i8** %27, align 8, !dbg !3601
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3604
  store i8* %28, i8** %29, align 8, !dbg !3605, !tbaa !575
  %30 = icmp eq i8* %28, null, !dbg !3606
  br i1 %30, label %210, label %31, !dbg !3607

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3594, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 1, metadata !3594, metadata !DIExpression()), !dbg !3597
  %32 = icmp sgt i32 %25, -1, !dbg !3601
  br i1 %32, label %40, label %33, !dbg !3601

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3601
  store i32 %34, i32* %8, align 8, !dbg !3601
  %35 = icmp ult i32 %25, -7, !dbg !3601
  br i1 %35, label %36, label %40, !dbg !3601

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3601
  %38 = sext i32 %25 to i64, !dbg !3601
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3601
  br label %44, !dbg !3601

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3601
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3601
  store i8* %43, i8** %10, align 8, !dbg !3601
  br label %44, !dbg !3601

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3601
  %48 = load i8*, i8** %47, align 8, !dbg !3601
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3604
  store i8* %48, i8** %49, align 8, !dbg !3605, !tbaa !575
  %50 = icmp eq i8* %48, null, !dbg !3606
  br i1 %50, label %210, label %51, !dbg !3607

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3594, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 2, metadata !3594, metadata !DIExpression()), !dbg !3597
  %52 = icmp sgt i32 %45, -1, !dbg !3601
  br i1 %52, label %60, label %53, !dbg !3601

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3601
  store i32 %54, i32* %8, align 8, !dbg !3601
  %55 = icmp ult i32 %45, -7, !dbg !3601
  br i1 %55, label %56, label %60, !dbg !3601

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3601
  %58 = sext i32 %45 to i64, !dbg !3601
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3601
  br label %64, !dbg !3601

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3601
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3601
  store i8* %63, i8** %10, align 8, !dbg !3601
  br label %64, !dbg !3601

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3601
  %68 = load i8*, i8** %67, align 8, !dbg !3601
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3604
  store i8* %68, i8** %69, align 8, !dbg !3605, !tbaa !575
  %70 = icmp eq i8* %68, null, !dbg !3606
  br i1 %70, label %210, label %71, !dbg !3607

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3594, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 3, metadata !3594, metadata !DIExpression()), !dbg !3597
  %72 = icmp sgt i32 %65, -1, !dbg !3601
  br i1 %72, label %80, label %73, !dbg !3601

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3601
  store i32 %74, i32* %8, align 8, !dbg !3601
  %75 = icmp ult i32 %65, -7, !dbg !3601
  br i1 %75, label %76, label %80, !dbg !3601

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3601
  %78 = sext i32 %65 to i64, !dbg !3601
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3601
  br label %84, !dbg !3601

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3601
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3601
  store i8* %83, i8** %10, align 8, !dbg !3601
  br label %84, !dbg !3601

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3601
  %88 = load i8*, i8** %87, align 8, !dbg !3601
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3604
  store i8* %88, i8** %89, align 8, !dbg !3605, !tbaa !575
  %90 = icmp eq i8* %88, null, !dbg !3606
  br i1 %90, label %210, label %91, !dbg !3607

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3594, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 4, metadata !3594, metadata !DIExpression()), !dbg !3597
  %92 = icmp sgt i32 %85, -1, !dbg !3601
  br i1 %92, label %100, label %93, !dbg !3601

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3601
  store i32 %94, i32* %8, align 8, !dbg !3601
  %95 = icmp ult i32 %85, -7, !dbg !3601
  br i1 %95, label %96, label %100, !dbg !3601

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3601
  %98 = sext i32 %85 to i64, !dbg !3601
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3601
  br label %104, !dbg !3601

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3601
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3601
  store i8* %103, i8** %10, align 8, !dbg !3601
  br label %104, !dbg !3601

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3601
  %108 = load i8*, i8** %107, align 8, !dbg !3601
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3604
  store i8* %108, i8** %109, align 8, !dbg !3605, !tbaa !575
  %110 = icmp eq i8* %108, null, !dbg !3606
  br i1 %110, label %210, label %111, !dbg !3607

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3594, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 5, metadata !3594, metadata !DIExpression()), !dbg !3597
  %112 = icmp sgt i32 %105, -1, !dbg !3601
  br i1 %112, label %120, label %113, !dbg !3601

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3601
  store i32 %114, i32* %8, align 8, !dbg !3601
  %115 = icmp ult i32 %105, -7, !dbg !3601
  br i1 %115, label %116, label %120, !dbg !3601

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3601
  %118 = sext i32 %105 to i64, !dbg !3601
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3601
  br label %124, !dbg !3601

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3601
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3601
  store i8* %123, i8** %10, align 8, !dbg !3601
  br label %124, !dbg !3601

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3601
  %128 = load i8*, i8** %127, align 8, !dbg !3601
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3604
  store i8* %128, i8** %129, align 8, !dbg !3605, !tbaa !575
  %130 = icmp eq i8* %128, null, !dbg !3606
  br i1 %130, label %210, label %131, !dbg !3607

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3594, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 6, metadata !3594, metadata !DIExpression()), !dbg !3597
  %132 = icmp sgt i32 %125, -1, !dbg !3601
  br i1 %132, label %140, label %133, !dbg !3601

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3601
  store i32 %134, i32* %8, align 8, !dbg !3601
  %135 = icmp ult i32 %125, -7, !dbg !3601
  br i1 %135, label %136, label %140, !dbg !3601

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3601
  %138 = sext i32 %125 to i64, !dbg !3601
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3601
  br label %144, !dbg !3601

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3601
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3601
  store i8* %143, i8** %10, align 8, !dbg !3601
  br label %144, !dbg !3601

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3601
  %148 = load i8*, i8** %147, align 8, !dbg !3601
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3604
  store i8* %148, i8** %149, align 8, !dbg !3605, !tbaa !575
  %150 = icmp eq i8* %148, null, !dbg !3606
  br i1 %150, label %210, label %151, !dbg !3607

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3594, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 7, metadata !3594, metadata !DIExpression()), !dbg !3597
  %152 = icmp sgt i32 %145, -1, !dbg !3601
  br i1 %152, label %160, label %153, !dbg !3601

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3601
  store i32 %154, i32* %8, align 8, !dbg !3601
  %155 = icmp ult i32 %145, -7, !dbg !3601
  br i1 %155, label %156, label %160, !dbg !3601

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3601
  %158 = sext i32 %145 to i64, !dbg !3601
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3601
  br label %164, !dbg !3601

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3601
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3601
  store i8* %163, i8** %10, align 8, !dbg !3601
  br label %164, !dbg !3601

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3601
  %168 = load i8*, i8** %167, align 8, !dbg !3601
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3604
  store i8* %168, i8** %169, align 8, !dbg !3605, !tbaa !575
  %170 = icmp eq i8* %168, null, !dbg !3606
  br i1 %170, label %210, label %171, !dbg !3607

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3594, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 8, metadata !3594, metadata !DIExpression()), !dbg !3597
  %172 = icmp sgt i32 %165, -1, !dbg !3601
  br i1 %172, label %180, label %173, !dbg !3601

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3601
  store i32 %174, i32* %8, align 8, !dbg !3601
  %175 = icmp ult i32 %165, -7, !dbg !3601
  br i1 %175, label %176, label %180, !dbg !3601

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3601
  %178 = sext i32 %165 to i64, !dbg !3601
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3601
  br label %184, !dbg !3601

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3601
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3601
  store i8* %183, i8** %10, align 8, !dbg !3601
  br label %184, !dbg !3601

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3601
  %188 = load i8*, i8** %187, align 8, !dbg !3601
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3604
  store i8* %188, i8** %189, align 8, !dbg !3605, !tbaa !575
  %190 = icmp eq i8* %188, null, !dbg !3606
  br i1 %190, label %210, label %191, !dbg !3607

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3594, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 9, metadata !3594, metadata !DIExpression()), !dbg !3597
  %192 = icmp sgt i32 %185, -1, !dbg !3601
  br i1 %192, label %200, label %193, !dbg !3601

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3601
  store i32 %194, i32* %8, align 8, !dbg !3601
  %195 = icmp ult i32 %185, -7, !dbg !3601
  br i1 %195, label %196, label %200, !dbg !3601

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3601
  %198 = sext i32 %185 to i64, !dbg !3601
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3601
  br label %203, !dbg !3601

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3601
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3601
  store i8* %202, i8** %10, align 8, !dbg !3601
  br label %203, !dbg !3601

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3601
  %206 = load i8*, i8** %205, align 8, !dbg !3601
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3604
  store i8* %206, i8** %207, align 8, !dbg !3605, !tbaa !575
  %208 = icmp eq i8* %206, null, !dbg !3606
  %209 = select i1 %208, i64 9, i64 10, !dbg !3607
  br label %210, !dbg !3607

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3608
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3609
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3610
  ret void, !dbg !3610
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3611 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3615, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i8* %1, metadata !3616, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i8* %2, metadata !3617, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i8* %3, metadata !3618, metadata !DIExpression()), !dbg !3620
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3621
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3621
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3619, metadata !DIExpression()), !dbg !3622
  call void @llvm.va_start(i8* nonnull %7), !dbg !3623
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3624
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3624
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3624, !tbaa.struct !1634
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3624
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3624
  call void @llvm.va_end(i8* nonnull %7), !dbg !3625
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3626
  ret void, !dbg !3626
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3627 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3628, !tbaa !575
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.133, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3628
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.150, i64 0, i64 0), i32 noundef 5) #34, !dbg !3629
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.151, i64 0, i64 0)) #34, !dbg !3629
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.152, i64 0, i64 0), i32 noundef 5) #34, !dbg !3630
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.153, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.154, i64 0, i64 0)) #34, !dbg !3630
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.155, i64 0, i64 0), i32 noundef 5) #34, !dbg !3631
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.156, i64 0, i64 0)) #34, !dbg !3631
  ret void, !dbg !3632
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xalignalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #26 !dbg !3633 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3637, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 %1, metadata !3638, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i64 %0, metadata !3641, metadata !DIExpression()) #34, !dbg !3645
  call void @llvm.dbg.value(metadata i64 %1, metadata !3644, metadata !DIExpression()) #34, !dbg !3645
  call void @llvm.dbg.value(metadata i64 %0, metadata !3641, metadata !DIExpression()) #34, !dbg !3645
  call void @llvm.dbg.value(metadata i64 %1, metadata !3644, metadata !DIExpression()) #34, !dbg !3645
  %3 = tail call noalias i8* @aligned_alloc(i64 noundef %0, i64 noundef %1) #34, !dbg !3647
  call void @llvm.assume(i1 true) #34 [ "align"(i8* %3, i64 %0) ], !dbg !3647
  call void @llvm.dbg.value(metadata i8* %3, metadata !3639, metadata !DIExpression()), !dbg !3640
  %4 = icmp eq i8* %3, null, !dbg !3648
  br i1 %4, label %5, label %6, !dbg !3650

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3651
  unreachable, !dbg !3651

6:                                                ; preds = %2
  ret i8* %3, !dbg !3652
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @aligned_alloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3653 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3658, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i64 %1, metadata !3659, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i64 %2, metadata !3660, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i8* %0, metadata !3662, metadata !DIExpression()) #34, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %1, metadata !3665, metadata !DIExpression()) #34, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %2, metadata !3666, metadata !DIExpression()) #34, !dbg !3667
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3669
  call void @llvm.dbg.value(metadata i8* %4, metadata !3670, metadata !DIExpression()) #34, !dbg !3675
  %5 = icmp eq i8* %4, null, !dbg !3677
  br i1 %5, label %6, label %7, !dbg !3679

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3680
  unreachable, !dbg !3680

7:                                                ; preds = %3
  ret i8* %4, !dbg !3681
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3663 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3662, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i64 %1, metadata !3665, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i64 %2, metadata !3666, metadata !DIExpression()), !dbg !3682
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3683
  call void @llvm.dbg.value(metadata i8* %4, metadata !3670, metadata !DIExpression()) #34, !dbg !3684
  %5 = icmp eq i8* %4, null, !dbg !3686
  br i1 %5, label %6, label %7, !dbg !3687

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3688
  unreachable, !dbg !3688

7:                                                ; preds = %3
  ret i8* %4, !dbg !3689
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3690 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3694, metadata !DIExpression()), !dbg !3695
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3696
  call void @llvm.dbg.value(metadata i8* %2, metadata !3670, metadata !DIExpression()) #34, !dbg !3697
  %3 = icmp eq i8* %2, null, !dbg !3699
  br i1 %3, label %4, label %5, !dbg !3700

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3701
  unreachable, !dbg !3701

5:                                                ; preds = %1
  ret i8* %2, !dbg !3702
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3703 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3707, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i64 %0, metadata !3709, metadata !DIExpression()) #34, !dbg !3713
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3715
  call void @llvm.dbg.value(metadata i8* %2, metadata !3670, metadata !DIExpression()) #34, !dbg !3716
  %3 = icmp eq i8* %2, null, !dbg !3718
  br i1 %3, label %4, label %5, !dbg !3719

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3720
  unreachable, !dbg !3720

5:                                                ; preds = %1
  ret i8* %2, !dbg !3721
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3722 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3726, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i64 %0, metadata !3694, metadata !DIExpression()) #34, !dbg !3728
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3730
  call void @llvm.dbg.value(metadata i8* %2, metadata !3670, metadata !DIExpression()) #34, !dbg !3731
  %3 = icmp eq i8* %2, null, !dbg !3733
  br i1 %3, label %4, label %5, !dbg !3734

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3735
  unreachable, !dbg !3735

5:                                                ; preds = %1
  ret i8* %2, !dbg !3736
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #26 !dbg !3737 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3741, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i64 %1, metadata !3742, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i8* %0, metadata !3744, metadata !DIExpression()) #34, !dbg !3749
  call void @llvm.dbg.value(metadata i64 %1, metadata !3748, metadata !DIExpression()) #34, !dbg !3749
  %3 = icmp eq i64 %1, 0, !dbg !3751
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3751
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !3752
  call void @llvm.dbg.value(metadata i8* %5, metadata !3670, metadata !DIExpression()) #34, !dbg !3753
  %6 = icmp eq i8* %5, null, !dbg !3755
  br i1 %6, label %7, label %8, !dbg !3756

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3757
  unreachable, !dbg !3757

8:                                                ; preds = %2
  ret i8* %5, !dbg !3758
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #26 !dbg !3759 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3763, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i64 %1, metadata !3764, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i8* %0, metadata !3766, metadata !DIExpression()) #34, !dbg !3770
  call void @llvm.dbg.value(metadata i64 %1, metadata !3769, metadata !DIExpression()) #34, !dbg !3770
  call void @llvm.dbg.value(metadata i8* %0, metadata !3744, metadata !DIExpression()) #34, !dbg !3772
  call void @llvm.dbg.value(metadata i64 %1, metadata !3748, metadata !DIExpression()) #34, !dbg !3772
  %3 = icmp eq i64 %1, 0, !dbg !3774
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3774
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !3775
  call void @llvm.dbg.value(metadata i8* %5, metadata !3670, metadata !DIExpression()) #34, !dbg !3776
  %6 = icmp eq i8* %5, null, !dbg !3778
  br i1 %6, label %7, label %8, !dbg !3779

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3780
  unreachable, !dbg !3780

8:                                                ; preds = %2
  ret i8* %5, !dbg !3781
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3782 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3786, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i64 %1, metadata !3787, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i64 %2, metadata !3788, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i8* %0, metadata !3790, metadata !DIExpression()) #34, !dbg !3795
  call void @llvm.dbg.value(metadata i64 %1, metadata !3793, metadata !DIExpression()) #34, !dbg !3795
  call void @llvm.dbg.value(metadata i64 %2, metadata !3794, metadata !DIExpression()) #34, !dbg !3795
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3797
  call void @llvm.dbg.value(metadata i8* %4, metadata !3670, metadata !DIExpression()) #34, !dbg !3798
  %5 = icmp eq i8* %4, null, !dbg !3800
  br i1 %5, label %6, label %7, !dbg !3801

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3802
  unreachable, !dbg !3802

7:                                                ; preds = %3
  ret i8* %4, !dbg !3803
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3804 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3808, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i64 %1, metadata !3809, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8* null, metadata !3662, metadata !DIExpression()) #34, !dbg !3811
  call void @llvm.dbg.value(metadata i64 %0, metadata !3665, metadata !DIExpression()) #34, !dbg !3811
  call void @llvm.dbg.value(metadata i64 %1, metadata !3666, metadata !DIExpression()) #34, !dbg !3811
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !3813
  call void @llvm.dbg.value(metadata i8* %3, metadata !3670, metadata !DIExpression()) #34, !dbg !3814
  %4 = icmp eq i8* %3, null, !dbg !3816
  br i1 %4, label %5, label %6, !dbg !3817

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3818
  unreachable, !dbg !3818

6:                                                ; preds = %2
  ret i8* %3, !dbg !3819
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3820 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3822, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i64 %1, metadata !3823, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i8* null, metadata !3786, metadata !DIExpression()) #34, !dbg !3825
  call void @llvm.dbg.value(metadata i64 %0, metadata !3787, metadata !DIExpression()) #34, !dbg !3825
  call void @llvm.dbg.value(metadata i64 %1, metadata !3788, metadata !DIExpression()) #34, !dbg !3825
  call void @llvm.dbg.value(metadata i8* null, metadata !3790, metadata !DIExpression()) #34, !dbg !3827
  call void @llvm.dbg.value(metadata i64 %0, metadata !3793, metadata !DIExpression()) #34, !dbg !3827
  call void @llvm.dbg.value(metadata i64 %1, metadata !3794, metadata !DIExpression()) #34, !dbg !3827
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !3829
  call void @llvm.dbg.value(metadata i8* %3, metadata !3670, metadata !DIExpression()) #34, !dbg !3830
  %4 = icmp eq i8* %3, null, !dbg !3832
  br i1 %4, label %5, label %6, !dbg !3833

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3834
  unreachable, !dbg !3834

6:                                                ; preds = %2
  ret i8* %3, !dbg !3835
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3836 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3840, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i64* %1, metadata !3841, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i8* %0, metadata !511, metadata !DIExpression()) #34, !dbg !3843
  call void @llvm.dbg.value(metadata i64* %1, metadata !512, metadata !DIExpression()) #34, !dbg !3843
  call void @llvm.dbg.value(metadata i64 1, metadata !513, metadata !DIExpression()) #34, !dbg !3843
  %3 = load i64, i64* %1, align 8, !dbg !3845, !tbaa !2887
  call void @llvm.dbg.value(metadata i64 %3, metadata !514, metadata !DIExpression()) #34, !dbg !3843
  %4 = icmp eq i8* %0, null, !dbg !3846
  br i1 %4, label %5, label %8, !dbg !3848

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3849
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3852
  br label %15, !dbg !3852

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3853
  %10 = add nuw i64 %9, 1, !dbg !3853
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #34, !dbg !3853
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3853
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3853
  call void @llvm.dbg.value(metadata i64 %13, metadata !514, metadata !DIExpression()) #34, !dbg !3843
  br i1 %12, label %14, label %15, !dbg !3856

14:                                               ; preds = %8
  tail call void @xalloc_die() #36, !dbg !3857
  unreachable, !dbg !3857

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3843
  call void @llvm.dbg.value(metadata i64 %16, metadata !514, metadata !DIExpression()) #34, !dbg !3843
  call void @llvm.dbg.value(metadata i8* %0, metadata !3662, metadata !DIExpression()) #34, !dbg !3858
  call void @llvm.dbg.value(metadata i64 %16, metadata !3665, metadata !DIExpression()) #34, !dbg !3858
  call void @llvm.dbg.value(metadata i64 1, metadata !3666, metadata !DIExpression()) #34, !dbg !3858
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #34, !dbg !3860
  call void @llvm.dbg.value(metadata i8* %17, metadata !3670, metadata !DIExpression()) #34, !dbg !3861
  %18 = icmp eq i8* %17, null, !dbg !3863
  br i1 %18, label %19, label %20, !dbg !3864

19:                                               ; preds = %15
  tail call void @xalloc_die() #36, !dbg !3865
  unreachable, !dbg !3865

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !511, metadata !DIExpression()) #34, !dbg !3843
  store i64 %16, i64* %1, align 8, !dbg !3866, !tbaa !2887
  ret i8* %17, !dbg !3867
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !506 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !511, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64* %1, metadata !512, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64 %2, metadata !513, metadata !DIExpression()), !dbg !3868
  %4 = load i64, i64* %1, align 8, !dbg !3869, !tbaa !2887
  call void @llvm.dbg.value(metadata i64 %4, metadata !514, metadata !DIExpression()), !dbg !3868
  %5 = icmp eq i8* %0, null, !dbg !3870
  br i1 %5, label %6, label %13, !dbg !3871

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3872
  br i1 %7, label %8, label %20, !dbg !3873

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3874
  call void @llvm.dbg.value(metadata i64 %9, metadata !514, metadata !DIExpression()), !dbg !3868
  %10 = icmp ugt i64 %2, 128, !dbg !3876
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3877
  call void @llvm.dbg.value(metadata i64 %12, metadata !514, metadata !DIExpression()), !dbg !3868
  br label %20, !dbg !3878

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3879
  %15 = add nuw i64 %14, 1, !dbg !3879
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3879
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3879
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3879
  call void @llvm.dbg.value(metadata i64 %18, metadata !514, metadata !DIExpression()), !dbg !3868
  br i1 %17, label %19, label %20, !dbg !3880

19:                                               ; preds = %13
  tail call void @xalloc_die() #36, !dbg !3881
  unreachable, !dbg !3881

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3868
  call void @llvm.dbg.value(metadata i64 %21, metadata !514, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i8* %0, metadata !3662, metadata !DIExpression()) #34, !dbg !3882
  call void @llvm.dbg.value(metadata i64 %21, metadata !3665, metadata !DIExpression()) #34, !dbg !3882
  call void @llvm.dbg.value(metadata i64 %2, metadata !3666, metadata !DIExpression()) #34, !dbg !3882
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #34, !dbg !3884
  call void @llvm.dbg.value(metadata i8* %22, metadata !3670, metadata !DIExpression()) #34, !dbg !3885
  %23 = icmp eq i8* %22, null, !dbg !3887
  br i1 %23, label %24, label %25, !dbg !3888

24:                                               ; preds = %20
  tail call void @xalloc_die() #36, !dbg !3889
  unreachable, !dbg !3889

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !511, metadata !DIExpression()), !dbg !3868
  store i64 %21, i64* %1, align 8, !dbg !3890, !tbaa !2887
  ret i8* %22, !dbg !3891
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !518 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !523, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64* %1, metadata !524, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64 %2, metadata !525, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64 %3, metadata !526, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64 %4, metadata !527, metadata !DIExpression()), !dbg !3892
  %6 = load i64, i64* %1, align 8, !dbg !3893, !tbaa !2887
  call void @llvm.dbg.value(metadata i64 %6, metadata !528, metadata !DIExpression()), !dbg !3892
  %7 = ashr i64 %6, 1, !dbg !3894
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3894
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3894
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3894
  call void @llvm.dbg.value(metadata i64 %10, metadata !529, metadata !DIExpression()), !dbg !3892
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3896
  call void @llvm.dbg.value(metadata i64 %11, metadata !529, metadata !DIExpression()), !dbg !3892
  %12 = icmp sgt i64 %3, -1, !dbg !3897
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3899
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3899
  call void @llvm.dbg.value(metadata i64 %15, metadata !529, metadata !DIExpression()), !dbg !3892
  %16 = icmp slt i64 %4, 0, !dbg !3900
  br i1 %16, label %17, label %30, !dbg !3900

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3900
  br i1 %18, label %19, label %24, !dbg !3900

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3900
  %21 = udiv i64 9223372036854775807, %20, !dbg !3900
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3900
  br i1 %23, label %46, label %43, !dbg !3900

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3900
  br i1 %25, label %43, label %26, !dbg !3900

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3900
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3900
  %29 = icmp ult i64 %28, %15, !dbg !3900
  br i1 %29, label %46, label %43, !dbg !3900

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3900
  br i1 %31, label %43, label %32, !dbg !3900

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3900
  br i1 %33, label %34, label %40, !dbg !3900

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3900
  br i1 %35, label %43, label %36, !dbg !3900

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3900
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3900
  %39 = icmp ult i64 %38, %4, !dbg !3900
  br i1 %39, label %46, label %43, !dbg !3900

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3900
  %42 = icmp ult i64 %41, %15, !dbg !3900
  br i1 %42, label %46, label %43, !dbg !3900

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !530, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3892
  %44 = mul i64 %15, %4, !dbg !3900
  call void @llvm.dbg.value(metadata i64 %44, metadata !530, metadata !DIExpression()), !dbg !3892
  %45 = icmp slt i64 %44, 128, !dbg !3900
  br i1 %45, label %46, label %52, !dbg !3900

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !531, metadata !DIExpression()), !dbg !3892
  %48 = sdiv i64 %47, %4, !dbg !3901
  call void @llvm.dbg.value(metadata i64 %48, metadata !529, metadata !DIExpression()), !dbg !3892
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3904
  call void @llvm.dbg.value(metadata i64 %51, metadata !530, metadata !DIExpression()), !dbg !3892
  br label %52, !dbg !3905

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3892
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3892
  call void @llvm.dbg.value(metadata i64 %54, metadata !530, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64 %53, metadata !529, metadata !DIExpression()), !dbg !3892
  %55 = icmp eq i8* %0, null, !dbg !3906
  br i1 %55, label %56, label %57, !dbg !3908

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3909, !tbaa !2887
  br label %57, !dbg !3910

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3911
  %59 = icmp slt i64 %58, %2, !dbg !3913
  br i1 %59, label %60, label %97, !dbg !3914

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3915
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3915
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3915
  call void @llvm.dbg.value(metadata i64 %63, metadata !529, metadata !DIExpression()), !dbg !3892
  br i1 %62, label %96, label %64, !dbg !3916

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3917
  br i1 %66, label %96, label %67, !dbg !3917

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3918

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3918
  br i1 %69, label %70, label %75, !dbg !3918

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3918
  %72 = udiv i64 9223372036854775807, %71, !dbg !3918
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3918
  br i1 %74, label %96, label %94, !dbg !3918

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3918
  br i1 %76, label %94, label %77, !dbg !3918

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3918
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3918
  %80 = icmp ult i64 %79, %63, !dbg !3918
  br i1 %80, label %96, label %94, !dbg !3918

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3918
  br i1 %82, label %94, label %83, !dbg !3918

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3918
  br i1 %84, label %85, label %91, !dbg !3918

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3918
  br i1 %86, label %94, label %87, !dbg !3918

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3918
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3918
  %90 = icmp ult i64 %89, %4, !dbg !3918
  br i1 %90, label %96, label %94, !dbg !3918

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3918
  %93 = icmp ult i64 %92, %63, !dbg !3918
  br i1 %93, label %96, label %94, !dbg !3918

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !530, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3892
  %95 = mul i64 %63, %4, !dbg !3918
  call void @llvm.dbg.value(metadata i64 %95, metadata !530, metadata !DIExpression()), !dbg !3892
  br label %97, !dbg !3919

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #36, !dbg !3920
  unreachable, !dbg !3920

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3892
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3892
  call void @llvm.dbg.value(metadata i64 %99, metadata !530, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64 %98, metadata !529, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i8* %0, metadata !3741, metadata !DIExpression()) #34, !dbg !3921
  call void @llvm.dbg.value(metadata i64 %99, metadata !3742, metadata !DIExpression()) #34, !dbg !3921
  call void @llvm.dbg.value(metadata i8* %0, metadata !3744, metadata !DIExpression()) #34, !dbg !3923
  call void @llvm.dbg.value(metadata i64 %99, metadata !3748, metadata !DIExpression()) #34, !dbg !3923
  %100 = icmp eq i64 %99, 0, !dbg !3925
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3925
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #34, !dbg !3926
  call void @llvm.dbg.value(metadata i8* %102, metadata !3670, metadata !DIExpression()) #34, !dbg !3927
  %103 = icmp eq i8* %102, null, !dbg !3929
  br i1 %103, label %104, label %105, !dbg !3930

104:                                              ; preds = %97
  tail call void @xalloc_die() #36, !dbg !3931
  unreachable, !dbg !3931

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !523, metadata !DIExpression()), !dbg !3892
  store i64 %98, i64* %1, align 8, !dbg !3932, !tbaa !2887
  ret i8* %102, !dbg !3933
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3934 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3936, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i64 %0, metadata !3938, metadata !DIExpression()) #34, !dbg !3942
  call void @llvm.dbg.value(metadata i64 1, metadata !3941, metadata !DIExpression()) #34, !dbg !3942
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !3944
  call void @llvm.dbg.value(metadata i8* %2, metadata !3670, metadata !DIExpression()) #34, !dbg !3945
  %3 = icmp eq i8* %2, null, !dbg !3947
  br i1 %3, label %4, label %5, !dbg !3948

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3949
  unreachable, !dbg !3949

5:                                                ; preds = %1
  ret i8* %2, !dbg !3950
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3939 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3938, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata i64 %1, metadata !3941, metadata !DIExpression()), !dbg !3951
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !3952
  call void @llvm.dbg.value(metadata i8* %3, metadata !3670, metadata !DIExpression()) #34, !dbg !3953
  %4 = icmp eq i8* %3, null, !dbg !3955
  br i1 %4, label %5, label %6, !dbg !3956

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3957
  unreachable, !dbg !3957

6:                                                ; preds = %2
  ret i8* %3, !dbg !3958
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3959 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3961, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i64 %0, metadata !3963, metadata !DIExpression()) #34, !dbg !3967
  call void @llvm.dbg.value(metadata i64 1, metadata !3966, metadata !DIExpression()) #34, !dbg !3967
  call void @llvm.dbg.value(metadata i64 %0, metadata !3969, metadata !DIExpression()) #34, !dbg !3973
  call void @llvm.dbg.value(metadata i64 1, metadata !3972, metadata !DIExpression()) #34, !dbg !3973
  call void @llvm.dbg.value(metadata i64 %0, metadata !3969, metadata !DIExpression()) #34, !dbg !3973
  call void @llvm.dbg.value(metadata i64 1, metadata !3972, metadata !DIExpression()) #34, !dbg !3973
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !3975
  call void @llvm.dbg.value(metadata i8* %2, metadata !3670, metadata !DIExpression()) #34, !dbg !3976
  %3 = icmp eq i8* %2, null, !dbg !3978
  br i1 %3, label %4, label %5, !dbg !3979

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3980
  unreachable, !dbg !3980

5:                                                ; preds = %1
  ret i8* %2, !dbg !3981
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3964 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3963, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i64 %1, metadata !3966, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i64 %0, metadata !3969, metadata !DIExpression()) #34, !dbg !3983
  call void @llvm.dbg.value(metadata i64 %1, metadata !3972, metadata !DIExpression()) #34, !dbg !3983
  call void @llvm.dbg.value(metadata i64 %0, metadata !3969, metadata !DIExpression()) #34, !dbg !3983
  call void @llvm.dbg.value(metadata i64 %1, metadata !3972, metadata !DIExpression()) #34, !dbg !3983
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !3985
  call void @llvm.dbg.value(metadata i8* %3, metadata !3670, metadata !DIExpression()) #34, !dbg !3986
  %4 = icmp eq i8* %3, null, !dbg !3988
  br i1 %4, label %5, label %6, !dbg !3989

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3990
  unreachable, !dbg !3990

6:                                                ; preds = %2
  ret i8* %3, !dbg !3991
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #26 !dbg !3992 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3996, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i64 %1, metadata !3997, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i64 %1, metadata !3694, metadata !DIExpression()) #34, !dbg !3999
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !4001
  call void @llvm.dbg.value(metadata i8* %3, metadata !3670, metadata !DIExpression()) #34, !dbg !4002
  %4 = icmp eq i8* %3, null, !dbg !4004
  br i1 %4, label %5, label %6, !dbg !4005

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4006
  unreachable, !dbg !4006

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4007, metadata !DIExpression()) #34, !dbg !4015
  call void @llvm.dbg.value(metadata i8* %0, metadata !4013, metadata !DIExpression()) #34, !dbg !4015
  call void @llvm.dbg.value(metadata i64 %1, metadata !4014, metadata !DIExpression()) #34, !dbg !4015
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !4017
  ret i8* %3, !dbg !4018
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #26 !dbg !4019 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4023, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i64 %1, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i64 %1, metadata !3707, metadata !DIExpression()) #34, !dbg !4026
  call void @llvm.dbg.value(metadata i64 %1, metadata !3709, metadata !DIExpression()) #34, !dbg !4028
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !4030
  call void @llvm.dbg.value(metadata i8* %3, metadata !3670, metadata !DIExpression()) #34, !dbg !4031
  %4 = icmp eq i8* %3, null, !dbg !4033
  br i1 %4, label %5, label %6, !dbg !4034

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4035
  unreachable, !dbg !4035

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4007, metadata !DIExpression()) #34, !dbg !4036
  call void @llvm.dbg.value(metadata i8* %0, metadata !4013, metadata !DIExpression()) #34, !dbg !4036
  call void @llvm.dbg.value(metadata i64 %1, metadata !4014, metadata !DIExpression()) #34, !dbg !4036
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !4038
  ret i8* %3, !dbg !4039
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4040 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4044, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata i64 %1, metadata !4045, metadata !DIExpression()), !dbg !4047
  %3 = add nsw i64 %1, 1, !dbg !4048
  call void @llvm.dbg.value(metadata i64 %3, metadata !3707, metadata !DIExpression()) #34, !dbg !4049
  call void @llvm.dbg.value(metadata i64 %3, metadata !3709, metadata !DIExpression()) #34, !dbg !4051
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !4053
  call void @llvm.dbg.value(metadata i8* %4, metadata !3670, metadata !DIExpression()) #34, !dbg !4054
  %5 = icmp eq i8* %4, null, !dbg !4056
  br i1 %5, label %6, label %7, !dbg !4057

6:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4058
  unreachable, !dbg !4058

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4046, metadata !DIExpression()), !dbg !4047
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4059
  store i8 0, i8* %8, align 1, !dbg !4060, !tbaa !684
  call void @llvm.dbg.value(metadata i8* %4, metadata !4007, metadata !DIExpression()) #34, !dbg !4061
  call void @llvm.dbg.value(metadata i8* %0, metadata !4013, metadata !DIExpression()) #34, !dbg !4061
  call void @llvm.dbg.value(metadata i64 %1, metadata !4014, metadata !DIExpression()) #34, !dbg !4061
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !4063
  ret i8* %4, !dbg !4064
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4065 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4067, metadata !DIExpression()), !dbg !4068
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #35, !dbg !4069
  %3 = add i64 %2, 1, !dbg !4070
  call void @llvm.dbg.value(metadata i8* %0, metadata !3996, metadata !DIExpression()) #34, !dbg !4071
  call void @llvm.dbg.value(metadata i64 %3, metadata !3997, metadata !DIExpression()) #34, !dbg !4071
  call void @llvm.dbg.value(metadata i64 %3, metadata !3694, metadata !DIExpression()) #34, !dbg !4073
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !4075
  call void @llvm.dbg.value(metadata i8* %4, metadata !3670, metadata !DIExpression()) #34, !dbg !4076
  %5 = icmp eq i8* %4, null, !dbg !4078
  br i1 %5, label %6, label %7, !dbg !4079

6:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !4080
  unreachable, !dbg !4080

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4007, metadata !DIExpression()) #34, !dbg !4081
  call void @llvm.dbg.value(metadata i8* %0, metadata !4013, metadata !DIExpression()) #34, !dbg !4081
  call void @llvm.dbg.value(metadata i64 %3, metadata !4014, metadata !DIExpression()) #34, !dbg !4081
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #34, !dbg !4083
  ret i8* %4, !dbg !4084
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4085 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4090, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %1, metadata !4087, metadata !DIExpression()), !dbg !4091
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.169, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.170, i64 0, i64 0), i32 noundef 5) #34, !dbg !4090
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.171, i64 0, i64 0), i8* noundef %2) #34, !dbg !4090
  %3 = icmp eq i32 %1, 0, !dbg !4090
  tail call void @llvm.assume(i1 %3), !dbg !4090
  tail call void @abort() #36, !dbg !4092
  unreachable, !dbg !4092
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4093 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4131, metadata !DIExpression()), !dbg !4136
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #34, !dbg !4137
  call void @llvm.dbg.value(metadata i1 undef, metadata !4132, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4136
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4138, metadata !DIExpression()), !dbg !4141
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4143
  %4 = load i32, i32* %3, align 8, !dbg !4143, !tbaa !4144
  %5 = and i32 %4, 32, !dbg !4145
  %6 = icmp eq i32 %5, 0, !dbg !4145
  call void @llvm.dbg.value(metadata i1 %6, metadata !4134, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4136
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #34, !dbg !4146
  %8 = icmp eq i32 %7, 0, !dbg !4147
  call void @llvm.dbg.value(metadata i1 %8, metadata !4135, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4136
  br i1 %6, label %9, label %19, !dbg !4148

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4150
  call void @llvm.dbg.value(metadata i1 %10, metadata !4132, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4136
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4151
  %12 = xor i1 %8, true, !dbg !4151
  %13 = sext i1 %12 to i32, !dbg !4151
  br i1 %11, label %22, label %14, !dbg !4151

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #37, !dbg !4152
  %16 = load i32, i32* %15, align 4, !dbg !4152, !tbaa !675
  %17 = icmp ne i32 %16, 9, !dbg !4153
  %18 = sext i1 %17 to i32, !dbg !4154
  br label %22, !dbg !4154

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4155

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #37, !dbg !4157
  store i32 0, i32* %21, align 4, !dbg !4159, !tbaa !675
  br label %22, !dbg !4157

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4136
  ret i32 %23, !dbg !4160
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !4161 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4199, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i32 0, metadata !4200, metadata !DIExpression()), !dbg !4203
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !4204
  call void @llvm.dbg.value(metadata i32 %2, metadata !4201, metadata !DIExpression()), !dbg !4203
  %3 = icmp slt i32 %2, 0, !dbg !4205
  br i1 %3, label %4, label %6, !dbg !4207

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4208
  br label %24, !dbg !4209

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !4210
  %8 = icmp eq i32 %7, 0, !dbg !4210
  br i1 %8, label %13, label %9, !dbg !4212

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !4213
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #34, !dbg !4214
  %12 = icmp eq i64 %11, -1, !dbg !4215
  br i1 %12, label %16, label %13, !dbg !4216

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !4217
  %15 = icmp eq i32 %14, 0, !dbg !4217
  br i1 %15, label %16, label %18, !dbg !4218

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4200, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i32 0, metadata !4202, metadata !DIExpression()), !dbg !4203
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4219
  call void @llvm.dbg.value(metadata i32 %21, metadata !4202, metadata !DIExpression()), !dbg !4203
  br label %24, !dbg !4220

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #37, !dbg !4221
  %20 = load i32, i32* %19, align 4, !dbg !4221, !tbaa !675
  call void @llvm.dbg.value(metadata i32 %20, metadata !4200, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i32 0, metadata !4202, metadata !DIExpression()), !dbg !4203
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4219
  call void @llvm.dbg.value(metadata i32 %21, metadata !4202, metadata !DIExpression()), !dbg !4203
  %22 = icmp eq i32 %20, 0, !dbg !4222
  br i1 %22, label %24, label %23, !dbg !4220

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4224, !tbaa !675
  call void @llvm.dbg.value(metadata i32 -1, metadata !4202, metadata !DIExpression()), !dbg !4203
  br label %24, !dbg !4226

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4203
  ret i32 %25, !dbg !4227
}

; Function Attrs: nofree nounwind
declare !dbg !4228 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4229 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4267, metadata !DIExpression()), !dbg !4268
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4269
  br i1 %2, label %6, label %3, !dbg !4271

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !4272
  %5 = icmp eq i32 %4, 0, !dbg !4272
  br i1 %5, label %6, label %8, !dbg !4273

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !4274
  br label %17, !dbg !4275

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4276, metadata !DIExpression()) #34, !dbg !4281
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4283
  %10 = load i32, i32* %9, align 8, !dbg !4283, !tbaa !4144
  %11 = and i32 %10, 256, !dbg !4285
  %12 = icmp eq i32 %11, 0, !dbg !4285
  br i1 %12, label %15, label %13, !dbg !4286

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #34, !dbg !4287
  br label %15, !dbg !4287

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !4288
  br label %17, !dbg !4289

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4268
  ret i32 %18, !dbg !4290
}

; Function Attrs: nofree nounwind
declare !dbg !4291 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !4292 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4330, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i64 %1, metadata !4331, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i32 %2, metadata !4332, metadata !DIExpression()), !dbg !4336
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4337
  %5 = load i8*, i8** %4, align 8, !dbg !4337, !tbaa !4338
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4339
  %7 = load i8*, i8** %6, align 8, !dbg !4339, !tbaa !4340
  %8 = icmp eq i8* %5, %7, !dbg !4341
  br i1 %8, label %9, label %28, !dbg !4342

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4343
  %11 = load i8*, i8** %10, align 8, !dbg !4343, !tbaa !1747
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4344
  %13 = load i8*, i8** %12, align 8, !dbg !4344, !tbaa !4345
  %14 = icmp eq i8* %11, %13, !dbg !4346
  br i1 %14, label %15, label %28, !dbg !4347

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4348
  %17 = load i8*, i8** %16, align 8, !dbg !4348, !tbaa !4349
  %18 = icmp eq i8* %17, null, !dbg !4350
  br i1 %18, label %19, label %28, !dbg !4351

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !4352
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #34, !dbg !4353
  call void @llvm.dbg.value(metadata i64 %21, metadata !4333, metadata !DIExpression()), !dbg !4354
  %22 = icmp eq i64 %21, -1, !dbg !4355
  br i1 %22, label %30, label %23, !dbg !4357

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4358
  %25 = load i32, i32* %24, align 8, !dbg !4359, !tbaa !4144
  %26 = and i32 %25, -17, !dbg !4359
  store i32 %26, i32* %24, align 8, !dbg !4359, !tbaa !4144
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4360
  store i64 %21, i64* %27, align 8, !dbg !4361, !tbaa !4362
  br label %30, !dbg !4363

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4364
  br label %30, !dbg !4365

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4336
  ret i32 %31, !dbg !4366
}

; Function Attrs: nofree nounwind
declare !dbg !4367 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4370 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4375, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i8* %1, metadata !4376, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 %2, metadata !4377, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4378, metadata !DIExpression()), !dbg !4380
  %5 = icmp eq i8* %1, null, !dbg !4381
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4383
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.182, i64 0, i64 0), i8* %1, !dbg !4383
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4383
  call void @llvm.dbg.value(metadata i64 %8, metadata !4377, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i8* %7, metadata !4376, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i32* %6, metadata !4375, metadata !DIExpression()), !dbg !4380
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4384
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4386
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4378, metadata !DIExpression()), !dbg !4380
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #34, !dbg !4387
  call void @llvm.dbg.value(metadata i64 %11, metadata !4379, metadata !DIExpression()), !dbg !4380
  %12 = icmp ult i64 %11, -3, !dbg !4388
  br i1 %12, label %13, label %18, !dbg !4390

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #35, !dbg !4391
  %15 = icmp eq i32 %14, 0, !dbg !4391
  br i1 %15, label %16, label %30, !dbg !4392

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4393, metadata !DIExpression()) #34, !dbg !4398
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4400, metadata !DIExpression()) #34, !dbg !4405
  call void @llvm.dbg.value(metadata i32 0, metadata !4403, metadata !DIExpression()) #34, !dbg !4405
  call void @llvm.dbg.value(metadata i64 8, metadata !4404, metadata !DIExpression()) #34, !dbg !4405
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4407
  store i64 0, i64* %17, align 1, !dbg !4407
  br label %30, !dbg !4408

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4409
  br i1 %19, label %20, label %21, !dbg !4411

20:                                               ; preds = %18
  tail call void @abort() #36, !dbg !4412
  unreachable, !dbg !4412

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4413

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #34, !dbg !4415
  br i1 %24, label %30, label %25, !dbg !4416

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4417
  br i1 %26, label %30, label %27, !dbg !4420

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4421, !tbaa !684
  %29 = zext i8 %28 to i32, !dbg !4422
  store i32 %29, i32* %6, align 4, !dbg !4423, !tbaa !675
  br label %30, !dbg !4424

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4380
  ret i64 %31, !dbg !4425
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4426 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4432 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4434, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata i64 %1, metadata !4435, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata i64 %2, metadata !4436, metadata !DIExpression()), !dbg !4438
  %4 = icmp eq i64 %2, 0, !dbg !4439
  br i1 %4, label %8, label %5, !dbg !4439

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4439
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4439
  br i1 %7, label %13, label %8, !dbg !4439

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4437, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4438
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4437, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4438
  %9 = mul i64 %2, %1, !dbg !4439
  call void @llvm.dbg.value(metadata i64 %9, metadata !4437, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata i8* %0, metadata !4441, metadata !DIExpression()) #34, !dbg !4445
  call void @llvm.dbg.value(metadata i64 %9, metadata !4444, metadata !DIExpression()) #34, !dbg !4445
  %10 = icmp eq i64 %9, 0, !dbg !4447
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4447
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #34, !dbg !4448
  br label %15, !dbg !4449

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4437, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4438
  %14 = tail call i32* @__errno_location() #37, !dbg !4450
  store i32 12, i32* %14, align 4, !dbg !4452, !tbaa !675
  br label %15, !dbg !4453

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4438
  ret i8* %16, !dbg !4454
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4455 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4459, metadata !DIExpression()), !dbg !4464
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4465
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #34, !dbg !4465
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4460, metadata !DIExpression()), !dbg !4466
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #34, !dbg !4467
  %5 = icmp eq i32 %4, 0, !dbg !4467
  br i1 %5, label %6, label %13, !dbg !4469

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4470, metadata !DIExpression()) #34, !dbg !4474
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.187, i64 0, i64 0), metadata !4473, metadata !DIExpression()) #34, !dbg !4474
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.187, i64 0, i64 0), i64 2), !dbg !4477
  %8 = icmp eq i32 %7, 0, !dbg !4478
  br i1 %8, label %12, label %9, !dbg !4479

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4470, metadata !DIExpression()) #34, !dbg !4480
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.188, i64 0, i64 0), metadata !4473, metadata !DIExpression()) #34, !dbg !4480
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.188, i64 0, i64 0), i64 6), !dbg !4482
  %11 = icmp eq i32 %10, 0, !dbg !4483
  br i1 %11, label %12, label %13, !dbg !4484

12:                                               ; preds = %9, %6
  br label %13, !dbg !4485

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4464
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #34, !dbg !4486
  ret i1 %14, !dbg !4486
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4487 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4491, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i8* %1, metadata !4492, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i64 %2, metadata !4493, metadata !DIExpression()), !dbg !4494
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #34, !dbg !4495
  ret i32 %4, !dbg !4496
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4497 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4501, metadata !DIExpression()), !dbg !4502
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #34, !dbg !4503
  ret i8* %2, !dbg !4504
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4505 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4507, metadata !DIExpression()), !dbg !4509
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !4510
  call void @llvm.dbg.value(metadata i8* %2, metadata !4508, metadata !DIExpression()), !dbg !4509
  ret i8* %2, !dbg !4511
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4512 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4514, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i8* %1, metadata !4515, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i64 %2, metadata !4516, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i32 %0, metadata !4507, metadata !DIExpression()) #34, !dbg !4522
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !4524
  call void @llvm.dbg.value(metadata i8* %4, metadata !4508, metadata !DIExpression()) #34, !dbg !4522
  call void @llvm.dbg.value(metadata i8* %4, metadata !4517, metadata !DIExpression()), !dbg !4521
  %5 = icmp eq i8* %4, null, !dbg !4525
  br i1 %5, label %6, label %9, !dbg !4526

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4527
  br i1 %7, label %19, label %8, !dbg !4530

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4531, !tbaa !684
  br label %19, !dbg !4532

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #35, !dbg !4533
  call void @llvm.dbg.value(metadata i64 %10, metadata !4518, metadata !DIExpression()), !dbg !4534
  %11 = icmp ult i64 %10, %2, !dbg !4535
  br i1 %11, label %12, label %14, !dbg !4537

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4538
  call void @llvm.dbg.value(metadata i8* %1, metadata !4540, metadata !DIExpression()) #34, !dbg !4545
  call void @llvm.dbg.value(metadata i8* %4, metadata !4543, metadata !DIExpression()) #34, !dbg !4545
  call void @llvm.dbg.value(metadata i64 %13, metadata !4544, metadata !DIExpression()) #34, !dbg !4545
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #34, !dbg !4547
  br label %19, !dbg !4548

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4549
  br i1 %15, label %19, label %16, !dbg !4552

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4553
  call void @llvm.dbg.value(metadata i8* %1, metadata !4540, metadata !DIExpression()) #34, !dbg !4555
  call void @llvm.dbg.value(metadata i8* %4, metadata !4543, metadata !DIExpression()) #34, !dbg !4555
  call void @llvm.dbg.value(metadata i64 %17, metadata !4544, metadata !DIExpression()) #34, !dbg !4555
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #34, !dbg !4557
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4558
  store i8 0, i8* %18, align 1, !dbg !4559, !tbaa !684
  br label %19, !dbg !4560

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4561
  ret i32 %20, !dbg !4562
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
attributes #13 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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
attributes #24 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #25 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { nounwind }
attributes #35 = { nounwind readonly willreturn }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind readnone willreturn }
attributes #38 = { noreturn }
attributes #39 = { nounwind allocsize(1) }
attributes #40 = { cold }
attributes #41 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!10, !266, !271, !477, !278, !457, !480, !322, !483, !485, !488, !336, !346, !376, !490, !493, !449, !500, !502, !533, !535, !537, !539, !541, !463, !543, !546, !548, !550}
!llvm.ident = !{!552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552, !552}
!llvm.module.flags = !{!553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 566, type: !251, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 550, type: !4, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !172)
!3 = !DIFile(filename: "src/cat.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6053c0d0ebd845267d30b8d265d68ed1")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !59, globals: !70, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12, !27, !36, !51, !55}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !13, line: 42, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!16 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!17 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!18 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!19 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!20 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!21 = !DIEnumerator(name: "c_quoting_style", value: 5)
!22 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!23 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!24 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!25 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!26 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 44, baseType: !14, size: 32, elements: !29)
!28 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!29 = !{!30, !31, !32, !33, !34, !35}
!30 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!31 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!32 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!33 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!34 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!35 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 46, baseType: !14, size: 32, elements: !38)
!37 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!39 = !DIEnumerator(name: "_ISupper", value: 256)
!40 = !DIEnumerator(name: "_ISlower", value: 512)
!41 = !DIEnumerator(name: "_ISalpha", value: 1024)
!42 = !DIEnumerator(name: "_ISdigit", value: 2048)
!43 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!44 = !DIEnumerator(name: "_ISspace", value: 8192)
!45 = !DIEnumerator(name: "_ISprint", value: 16384)
!46 = !DIEnumerator(name: "_ISgraph", value: 32768)
!47 = !DIEnumerator(name: "_ISblank", value: 1)
!48 = !DIEnumerator(name: "_IScntrl", value: 2)
!49 = !DIEnumerator(name: "_ISpunct", value: 4)
!50 = !DIEnumerator(name: "_ISalnum", value: 8)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 79, baseType: !14, size: 32, elements: !53)
!52 = !DIFile(filename: "src/ioblksize.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f13fda6387359f0e51e261e99a350a45")
!53 = !{!54}
!54 = !DIEnumerator(name: "IO_BUFSIZE", value: 262144)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 36, baseType: !14, size: 32, elements: !57)
!56 = !DIFile(filename: "./lib/sys-limits.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6cbf2bea168df2a7bb951ccec5cf6fff")
!57 = !{!58}
!58 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072)
!59 = !{!8, !60, !61, !62, !63, !6, !64, !65, !67, !69}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!62 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!63 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 46, baseType: !63)
!66 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!69 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!70 = !{!0, !71, !73, !75, !160, !162, !164, !166, !168, !170}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "infile", scope: !10, file: !3, line: 50, type: !67, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "input_desc", scope: !10, file: !3, line: 53, type: !6, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !77, file: !78, line: 575, type: !6, isLocal: true, isDefinition: true)
!77 = distinct !DISubprogram(name: "oputs_", scope: !78, file: !78, line: 573, type: !79, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !81)
!78 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!79 = !DISubroutineType(types: !80)
!80 = !{null, !67, !67}
!81 = !{!82, !83, !84, !87, !88, !89, !90, !94, !95, !96, !97, !99, !154, !155, !156, !158, !159}
!82 = !DILocalVariable(name: "program", arg: 1, scope: !77, file: !78, line: 573, type: !67)
!83 = !DILocalVariable(name: "option", arg: 2, scope: !77, file: !78, line: 573, type: !67)
!84 = !DILocalVariable(name: "term", scope: !85, file: !78, line: 585, type: !67)
!85 = distinct !DILexicalBlock(scope: !86, file: !78, line: 582, column: 5)
!86 = distinct !DILexicalBlock(scope: !77, file: !78, line: 581, column: 7)
!87 = !DILocalVariable(name: "double_space", scope: !77, file: !78, line: 594, type: !61)
!88 = !DILocalVariable(name: "first_word", scope: !77, file: !78, line: 595, type: !67)
!89 = !DILocalVariable(name: "option_text", scope: !77, file: !78, line: 596, type: !67)
!90 = !DILocalVariable(name: "s", scope: !91, file: !78, line: 608, type: !67)
!91 = distinct !DILexicalBlock(scope: !92, file: !78, line: 605, column: 5)
!92 = distinct !DILexicalBlock(scope: !93, file: !78, line: 604, column: 12)
!93 = distinct !DILexicalBlock(scope: !77, file: !78, line: 597, column: 7)
!94 = !DILocalVariable(name: "spaces", scope: !91, file: !78, line: 609, type: !65)
!95 = !DILocalVariable(name: "anchor_len", scope: !77, file: !78, line: 620, type: !65)
!96 = !DILocalVariable(name: "desc_text", scope: !77, file: !78, line: 625, type: !67)
!97 = !DILocalVariable(name: "__ptr", scope: !98, file: !78, line: 644, type: !67)
!98 = distinct !DILexicalBlock(scope: !77, file: !78, line: 644, column: 3)
!99 = !DILocalVariable(name: "__stream", scope: !98, file: !78, line: 644, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !103)
!102 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !105)
!104 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !121, !123, !124, !125, !128, !129, !131, !135, !138, !140, !143, !146, !147, !148, !149, !150}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !103, file: !104, line: 51, baseType: !6, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !103, file: !104, line: 54, baseType: !8, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !103, file: !104, line: 55, baseType: !8, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !103, file: !104, line: 56, baseType: !8, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !103, file: !104, line: 57, baseType: !8, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !103, file: !104, line: 58, baseType: !8, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !103, file: !104, line: 59, baseType: !8, size: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !103, file: !104, line: 60, baseType: !8, size: 64, offset: 448)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !103, file: !104, line: 61, baseType: !8, size: 64, offset: 512)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !103, file: !104, line: 64, baseType: !8, size: 64, offset: 576)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !103, file: !104, line: 65, baseType: !8, size: 64, offset: 640)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !103, file: !104, line: 66, baseType: !8, size: 64, offset: 704)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !103, file: !104, line: 68, baseType: !119, size: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !104, line: 36, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !103, file: !104, line: 70, baseType: !122, size: 64, offset: 832)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !103, file: !104, line: 72, baseType: !6, size: 32, offset: 896)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !103, file: !104, line: 73, baseType: !6, size: 32, offset: 928)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !103, file: !104, line: 74, baseType: !126, size: 64, offset: 960)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !127, line: 152, baseType: !62)
!127 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !103, file: !104, line: 77, baseType: !64, size: 16, offset: 1024)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !103, file: !104, line: 78, baseType: !130, size: 8, offset: 1040)
!130 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !103, file: !104, line: 79, baseType: !132, size: 8, offset: 1048)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 1)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !103, file: !104, line: 81, baseType: !136, size: 64, offset: 1088)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !104, line: 43, baseType: null)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !103, file: !104, line: 89, baseType: !139, size: 64, offset: 1152)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !127, line: 153, baseType: !62)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !103, file: !104, line: 91, baseType: !141, size: 64, offset: 1216)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !104, line: 37, flags: DIFlagFwdDecl)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !103, file: !104, line: 92, baseType: !144, size: 64, offset: 1280)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !104, line: 38, flags: DIFlagFwdDecl)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !103, file: !104, line: 93, baseType: !122, size: 64, offset: 1344)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !103, file: !104, line: 94, baseType: !60, size: 64, offset: 1408)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !103, file: !104, line: 95, baseType: !65, size: 64, offset: 1472)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !103, file: !104, line: 96, baseType: !6, size: 32, offset: 1536)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !103, file: !104, line: 98, baseType: !151, size: 160, offset: 1568)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 20)
!154 = !DILocalVariable(name: "__cnt", scope: !98, file: !78, line: 644, type: !65)
!155 = !DILocalVariable(name: "url_program", scope: !77, file: !78, line: 648, type: !67)
!156 = !DILocalVariable(name: "__ptr", scope: !157, file: !78, line: 686, type: !67)
!157 = distinct !DILexicalBlock(scope: !77, file: !78, line: 686, column: 3)
!158 = !DILocalVariable(name: "__stream", scope: !157, file: !78, line: 686, type: !100)
!159 = !DILocalVariable(name: "__cnt", scope: !157, file: !78, line: 686, type: !65)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "newlines2", scope: !10, file: !3, line: 77, type: !6, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "line_num_end", scope: !10, file: !3, line: 74, type: !8, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "line_num_start", scope: !10, file: !3, line: 71, type: !8, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "line_buf", scope: !10, file: !3, line: 59, type: !151, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "line_num_print", scope: !10, file: !3, line: 68, type: !8, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "pending_cr", scope: !10, file: !3, line: 80, type: !61, isLocal: true, isDefinition: true)
!172 = !{!173, !174, !175, !176, !214, !215, !216, !217, !218, !219, !220, !221, !222, !226, !227, !228, !229, !230, !231, !233, !234, !235, !240, !243, !244, !247, !249, !250}
!173 = !DILocalVariable(name: "argc", arg: 1, scope: !2, file: !3, line: 550, type: !6)
!174 = !DILocalVariable(name: "argv", arg: 2, scope: !2, file: !3, line: 550, type: !7)
!175 = !DILocalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 553, type: !61)
!176 = !DILocalVariable(name: "ostat_buf", scope: !2, file: !3, line: 555, type: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !178, line: 44, size: 1024, elements: !179)
!178 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!179 = !{!180, !182, !184, !186, !188, !190, !192, !193, !194, !195, !197, !198, !200, !208, !209, !210}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !177, file: !178, line: 46, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !127, line: 145, baseType: !63)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !177, file: !178, line: 47, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !127, line: 148, baseType: !63)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !177, file: !178, line: 48, baseType: !185, size: 32, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !127, line: 150, baseType: !14)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !177, file: !178, line: 49, baseType: !187, size: 32, offset: 160)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !127, line: 151, baseType: !14)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !177, file: !178, line: 50, baseType: !189, size: 32, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !127, line: 146, baseType: !14)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !177, file: !178, line: 51, baseType: !191, size: 32, offset: 224)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !127, line: 147, baseType: !14)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !177, file: !178, line: 52, baseType: !181, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !177, file: !178, line: 53, baseType: !181, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !177, file: !178, line: 54, baseType: !126, size: 64, offset: 384)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !177, file: !178, line: 55, baseType: !196, size: 32, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !127, line: 175, baseType: !6)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !177, file: !178, line: 56, baseType: !6, size: 32, offset: 480)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !177, file: !178, line: 57, baseType: !199, size: 64, offset: 512)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !127, line: 180, baseType: !62)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !177, file: !178, line: 65, baseType: !201, size: 128, offset: 576)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !202, line: 11, size: 128, elements: !203)
!202 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!203 = !{!204, !206}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !201, file: !202, line: 16, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !127, line: 160, baseType: !62)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !201, file: !202, line: 21, baseType: !207, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !127, line: 197, baseType: !62)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !177, file: !178, line: 66, baseType: !201, size: 128, offset: 704)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !177, file: !178, line: 67, baseType: !201, size: 128, offset: 832)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !177, file: !178, line: 79, baseType: !211, size: 64, offset: 960)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 2)
!214 = !DILocalVariable(name: "number", scope: !2, file: !3, line: 558, type: !61)
!215 = !DILocalVariable(name: "number_nonblank", scope: !2, file: !3, line: 559, type: !61)
!216 = !DILocalVariable(name: "squeeze_blank", scope: !2, file: !3, line: 560, type: !61)
!217 = !DILocalVariable(name: "show_ends", scope: !2, file: !3, line: 561, type: !61)
!218 = !DILocalVariable(name: "show_nonprinting", scope: !2, file: !3, line: 562, type: !61)
!219 = !DILocalVariable(name: "show_tabs", scope: !2, file: !3, line: 563, type: !61)
!220 = !DILocalVariable(name: "file_open_mode", scope: !2, file: !3, line: 564, type: !6)
!221 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 594, type: !6)
!222 = !DILocalVariable(name: "outsize", scope: !2, file: !3, line: 660, type: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !224, line: 130, baseType: !225)
!224 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !66, line: 35, baseType: !62)
!226 = !DILocalVariable(name: "out_flags", scope: !2, file: !3, line: 663, type: !6)
!227 = !DILocalVariable(name: "out_isreg", scope: !2, file: !3, line: 666, type: !61)
!228 = !DILocalVariable(name: "argind", scope: !2, file: !3, line: 677, type: !6)
!229 = !DILocalVariable(name: "ok", scope: !2, file: !3, line: 678, type: !61)
!230 = !DILocalVariable(name: "page_size", scope: !2, file: !3, line: 679, type: !223)
!231 = !DILocalVariable(name: "reading_stdin", scope: !232, file: !3, line: 686, type: !61)
!232 = distinct !DILexicalBlock(scope: !2, file: !3, line: 682, column: 5)
!233 = !DILocalVariable(name: "istat_buf", scope: !232, file: !3, line: 705, type: !177)
!234 = !DILocalVariable(name: "insize", scope: !232, file: !3, line: 714, type: !223)
!235 = !DILocalVariable(name: "in_pos", scope: !236, file: !3, line: 727, type: !238)
!236 = distinct !DILexicalBlock(scope: !237, file: !3, line: 726, column: 9)
!237 = distinct !DILexicalBlock(scope: !232, file: !3, line: 722, column: 11)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !239, line: 63, baseType: !126)
!239 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!240 = !DILocalVariable(name: "whence", scope: !241, file: !3, line: 732, type: !6)
!241 = distinct !DILexicalBlock(scope: !242, file: !3, line: 729, column: 13)
!242 = distinct !DILexicalBlock(scope: !236, file: !3, line: 728, column: 15)
!243 = !DILocalVariable(name: "inbuf", scope: !232, file: !3, line: 745, type: !8)
!244 = !DILocalVariable(name: "copy_cat_status", scope: !245, file: !3, line: 754, type: !6)
!245 = distinct !DILexicalBlock(scope: !246, file: !3, line: 753, column: 9)
!246 = distinct !DILexicalBlock(scope: !232, file: !3, line: 751, column: 11)
!247 = !DILocalVariable(name: "bufsize", scope: !248, file: !3, line: 794, type: !223)
!248 = distinct !DILexicalBlock(scope: !246, file: !3, line: 769, column: 9)
!249 = !DILocalVariable(name: "outbuf", scope: !248, file: !3, line: 799, type: !8)
!250 = !DILabel(scope: !232, name: "contin", file: !3, line: 810)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 2560, elements: !261)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !254, line: 50, size: 256, elements: !255)
!254 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!255 = !{!256, !257, !258, !260}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !254, line: 52, baseType: !67, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !253, file: !254, line: 55, baseType: !6, size: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !253, file: !254, line: 56, baseType: !259, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !253, file: !254, line: 57, baseType: !6, size: 32, offset: 192)
!261 = !{!262}
!262 = !DISubrange(count: 10)
!263 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "Version", scope: !266, file: !267, line: 3, type: !67, isLocal: false, isDefinition: true)
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !268, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!268 = !{!264}
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "file_name", scope: !271, file: !272, line: 45, type: !67, isLocal: true, isDefinition: true)
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !273, splitDebugInlining: false, nameTableKind: None)
!272 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!273 = !{!269, !274}
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !271, file: !272, line: 55, type: !61, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !278, file: !279, line: 66, type: !313, isLocal: false, isDefinition: true)
!278 = distinct !DICompileUnit(language: DW_LANG_C99, file: !279, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !280, globals: !281, splitDebugInlining: false, nameTableKind: None)
!279 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!280 = !{!60, !69}
!281 = !{!282, !307, !276, !309, !311}
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "old_file_name", scope: !284, file: !279, line: 304, type: !67, isLocal: true, isDefinition: true)
!284 = distinct !DISubprogram(name: "verror_at_line", scope: !279, file: !279, line: 298, type: !285, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !278, retainedNodes: !300)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !6, !6, !67, !14, !67, !287}
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !239, line: 52, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !289, line: 32, baseType: !290)
!289 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !291, baseType: !292)
!291 = !DIFile(filename: "lib/error.c", directory: "/src")
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !293, size: 256, elements: !294)
!293 = !DINamespace(name: "std", scope: null)
!294 = !{!295, !296, !297, !298, !299}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !292, file: !291, baseType: !60, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !292, file: !291, baseType: !60, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !292, file: !291, baseType: !60, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !292, file: !291, baseType: !6, size: 32, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !292, file: !291, baseType: !6, size: 32, offset: 224)
!300 = !{!301, !302, !303, !304, !305, !306}
!301 = !DILocalVariable(name: "status", arg: 1, scope: !284, file: !279, line: 298, type: !6)
!302 = !DILocalVariable(name: "errnum", arg: 2, scope: !284, file: !279, line: 298, type: !6)
!303 = !DILocalVariable(name: "file_name", arg: 3, scope: !284, file: !279, line: 298, type: !67)
!304 = !DILocalVariable(name: "line_number", arg: 4, scope: !284, file: !279, line: 298, type: !14)
!305 = !DILocalVariable(name: "message", arg: 5, scope: !284, file: !279, line: 298, type: !67)
!306 = !DILocalVariable(name: "args", arg: 6, scope: !284, file: !279, line: 298, type: !287)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "old_line_number", scope: !284, file: !279, line: 305, type: !14, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "error_message_count", scope: !278, file: !279, line: 69, type: !14, isLocal: false, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !278, file: !279, line: 295, type: !6, isLocal: false, isDefinition: true)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null}
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !318, file: !319, line: 506, type: !6, isLocal: true, isDefinition: true)
!318 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !319, file: !319, line: 485, type: !320, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !324)
!319 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!320 = !DISubroutineType(types: !321)
!321 = !{!6, !6, !6}
!322 = distinct !DICompileUnit(language: DW_LANG_C99, file: !319, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !323, splitDebugInlining: false, nameTableKind: None)
!323 = !{!316}
!324 = !{!325, !326, !327, !328, !331}
!325 = !DILocalVariable(name: "fd", arg: 1, scope: !318, file: !319, line: 485, type: !6)
!326 = !DILocalVariable(name: "target", arg: 2, scope: !318, file: !319, line: 485, type: !6)
!327 = !DILocalVariable(name: "result", scope: !318, file: !319, line: 487, type: !6)
!328 = !DILocalVariable(name: "flags", scope: !329, file: !319, line: 530, type: !6)
!329 = distinct !DILexicalBlock(scope: !330, file: !319, line: 529, column: 5)
!330 = distinct !DILexicalBlock(scope: !318, file: !319, line: 528, column: 7)
!331 = !DILocalVariable(name: "saved_errno", scope: !332, file: !319, line: 533, type: !6)
!332 = distinct !DILexicalBlock(scope: !333, file: !319, line: 532, column: 9)
!333 = distinct !DILexicalBlock(scope: !329, file: !319, line: 531, column: 11)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(name: "program_name", scope: !336, file: !337, line: 31, type: !67, isLocal: false, isDefinition: true)
!336 = distinct !DICompileUnit(language: DW_LANG_C99, file: !337, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !338, globals: !339, splitDebugInlining: false, nameTableKind: None)
!337 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!338 = !{!8}
!339 = !{!334}
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(name: "utf07FF", scope: !342, file: !343, line: 46, type: !373, isLocal: true, isDefinition: true)
!342 = distinct !DISubprogram(name: "proper_name_lite", scope: !343, file: !343, line: 38, type: !344, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !346, retainedNodes: !348)
!343 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!344 = !DISubroutineType(types: !345)
!345 = !{!67, !67, !67}
!346 = distinct !DICompileUnit(language: DW_LANG_C99, file: !343, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !347, splitDebugInlining: false, nameTableKind: None)
!347 = !{!340}
!348 = !{!349, !350, !351, !352, !357}
!349 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !342, file: !343, line: 38, type: !67)
!350 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !342, file: !343, line: 38, type: !67)
!351 = !DILocalVariable(name: "translation", scope: !342, file: !343, line: 40, type: !67)
!352 = !DILocalVariable(name: "w", scope: !342, file: !343, line: 47, type: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !354, line: 37, baseType: !355)
!354 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !127, line: 57, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !127, line: 42, baseType: !14)
!357 = !DILocalVariable(name: "mbs", scope: !342, file: !343, line: 48, type: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !359, line: 6, baseType: !360)
!359 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !361, line: 21, baseType: !362)
!361 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 13, size: 64, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !362, file: !361, line: 15, baseType: !6, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !362, file: !361, line: 20, baseType: !366, size: 32, offset: 32)
!366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !362, file: !361, line: 16, size: 32, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !366, file: !361, line: 18, baseType: !14, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !366, file: !361, line: 19, baseType: !370, size: 32)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 4)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 16, elements: !212)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !376, file: !377, line: 76, type: !443, isLocal: false, isDefinition: true)
!376 = distinct !DICompileUnit(language: DW_LANG_C99, file: !377, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !378, retainedTypes: !384, globals: !385, splitDebugInlining: false, nameTableKind: None)
!377 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!378 = !{!12, !379, !36}
!379 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !13, line: 254, baseType: !14, size: 32, elements: !380)
!380 = !{!381, !382, !383}
!381 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!382 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!383 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!384 = !{!6, !64, !65}
!385 = !{!374, !386, !390, !402, !404, !409, !432, !439, !441}
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !376, file: !377, line: 92, type: !388, isLocal: false, isDefinition: true)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 320, elements: !261)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !376, file: !377, line: 1040, type: !392, isLocal: false, isDefinition: true)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !377, line: 56, size: 448, elements: !393)
!393 = !{!394, !395, !396, !400, !401}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !392, file: !377, line: 59, baseType: !12, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !377, line: 62, baseType: !6, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !392, file: !377, line: 66, baseType: !397, size: 256, offset: 64)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 8)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !392, file: !377, line: 69, baseType: !67, size: 64, offset: 320)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !392, file: !377, line: 72, baseType: !67, size: 64, offset: 384)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !376, file: !377, line: 107, type: !392, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "slot0", scope: !376, file: !377, line: 831, type: !406, isLocal: true, isDefinition: true)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 256)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "quote", scope: !411, file: !377, line: 228, type: !430, isLocal: true, isDefinition: true)
!411 = distinct !DISubprogram(name: "gettext_quote", scope: !377, file: !377, line: 197, type: !412, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{!67, !67, !12}
!414 = !{!415, !416, !417, !418, !419}
!415 = !DILocalVariable(name: "msgid", arg: 1, scope: !411, file: !377, line: 197, type: !67)
!416 = !DILocalVariable(name: "s", arg: 2, scope: !411, file: !377, line: 197, type: !12)
!417 = !DILocalVariable(name: "translation", scope: !411, file: !377, line: 199, type: !67)
!418 = !DILocalVariable(name: "w", scope: !411, file: !377, line: 229, type: !353)
!419 = !DILocalVariable(name: "mbs", scope: !411, file: !377, line: 230, type: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !359, line: 6, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !361, line: 21, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 13, size: 64, elements: !423)
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !422, file: !361, line: 15, baseType: !6, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !422, file: !361, line: 20, baseType: !426, size: 32, offset: 32)
!426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !361, line: 16, size: 32, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !426, file: !361, line: 18, baseType: !14, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !426, file: !361, line: 19, baseType: !370, size: 32)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 64, elements: !431)
!431 = !{!213, !372}
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "slotvec", scope: !376, file: !377, line: 834, type: !434, isLocal: true, isDefinition: true)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !377, line: 823, size: 128, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !435, file: !377, line: 825, baseType: !65, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !435, file: !377, line: 826, baseType: !8, size: 64, offset: 64)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(name: "nslots", scope: !376, file: !377, line: 832, type: !6, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "slotvec0", scope: !376, file: !377, line: 833, type: !435, isLocal: true, isDefinition: true)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 704, elements: !445)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!445 = !{!446}
!446 = !DISubrange(count: 11)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !449, file: !450, line: 26, type: !452, isLocal: false, isDefinition: true)
!449 = distinct !DICompileUnit(language: DW_LANG_C99, file: !450, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !451, splitDebugInlining: false, nameTableKind: None)
!450 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!451 = !{!447}
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 376, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 47)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "exit_failure", scope: !457, file: !458, line: 24, type: !460, isLocal: false, isDefinition: true)
!457 = distinct !DICompileUnit(language: DW_LANG_C99, file: !458, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !459, splitDebugInlining: false, nameTableKind: None)
!458 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!459 = !{!455}
!460 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(name: "internal_state", scope: !463, file: !464, line: 97, type: !467, isLocal: true, isDefinition: true)
!463 = distinct !DICompileUnit(language: DW_LANG_C99, file: !464, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !465, globals: !466, splitDebugInlining: false, nameTableKind: None)
!464 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!465 = !{!60, !65, !69}
!466 = !{!461}
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !359, line: 6, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !361, line: 21, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 13, size: 64, elements: !470)
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !469, file: !361, line: 15, baseType: !6, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !469, file: !361, line: 20, baseType: !473, size: 32, offset: 32)
!473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !361, line: 16, size: 32, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !473, file: !361, line: 18, baseType: !14, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !473, file: !361, line: 19, baseType: !370, size: 32)
!477 = distinct !DICompileUnit(language: DW_LANG_C99, file: !478, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !479, splitDebugInlining: false, nameTableKind: None)
!478 = !DIFile(filename: "lib/copy-file-range.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6733a97916f50c6b003a01ea6f4c9f0a")
!479 = !{!55}
!480 = distinct !DICompileUnit(language: DW_LANG_C99, file: !481, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !482, splitDebugInlining: false, nameTableKind: None)
!481 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!482 = !{!27}
!483 = distinct !DICompileUnit(language: DW_LANG_C99, file: !484, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!484 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!485 = distinct !DICompileUnit(language: DW_LANG_C99, file: !486, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !487, splitDebugInlining: false, nameTableKind: None)
!486 = !DIFile(filename: "lib/full-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3e4d1fbb34cc594bb17b421b58eed3ca")
!487 = !{!67}
!488 = distinct !DICompileUnit(language: DW_LANG_C99, file: !489, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!489 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!490 = distinct !DICompileUnit(language: DW_LANG_C99, file: !491, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !479, retainedTypes: !492, splitDebugInlining: false, nameTableKind: None)
!491 = !DIFile(filename: "lib/safe-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "868d9fdfbe37109ce7387a63f56e5cc3")
!492 = !{!65}
!493 = distinct !DICompileUnit(language: DW_LANG_C99, file: !494, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !495, retainedTypes: !499, splitDebugInlining: false, nameTableKind: None)
!494 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!495 = !{!496}
!496 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !494, line: 40, baseType: !14, size: 32, elements: !497)
!497 = !{!498}
!498 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!499 = !{!60}
!500 = distinct !DICompileUnit(language: DW_LANG_C99, file: !501, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !492, splitDebugInlining: false, nameTableKind: None)
!501 = !DIFile(filename: "lib/xalignalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3b950fafb945919ba44141bc7f11141c")
!502 = distinct !DICompileUnit(language: DW_LANG_C99, file: !503, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !504, retainedTypes: !532, splitDebugInlining: false, nameTableKind: None)
!503 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!504 = !{!505, !517}
!505 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !506, file: !503, line: 188, baseType: !14, size: 32, elements: !515)
!506 = distinct !DISubprogram(name: "x2nrealloc", scope: !503, file: !503, line: 176, type: !507, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !510)
!507 = !DISubroutineType(types: !508)
!508 = !{!60, !60, !509, !65}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!510 = !{!511, !512, !513, !514}
!511 = !DILocalVariable(name: "p", arg: 1, scope: !506, file: !503, line: 176, type: !60)
!512 = !DILocalVariable(name: "pn", arg: 2, scope: !506, file: !503, line: 176, type: !509)
!513 = !DILocalVariable(name: "s", arg: 3, scope: !506, file: !503, line: 176, type: !65)
!514 = !DILocalVariable(name: "n", scope: !506, file: !503, line: 178, type: !65)
!515 = !{!516}
!516 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!517 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !518, file: !503, line: 228, baseType: !14, size: 32, elements: !515)
!518 = distinct !DISubprogram(name: "xpalloc", scope: !503, file: !503, line: 223, type: !519, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !522)
!519 = !DISubroutineType(types: !520)
!520 = !{!60, !60, !521, !223, !225, !223}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!522 = !{!523, !524, !525, !526, !527, !528, !529, !530, !531}
!523 = !DILocalVariable(name: "pa", arg: 1, scope: !518, file: !503, line: 223, type: !60)
!524 = !DILocalVariable(name: "pn", arg: 2, scope: !518, file: !503, line: 223, type: !521)
!525 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !518, file: !503, line: 223, type: !223)
!526 = !DILocalVariable(name: "n_max", arg: 4, scope: !518, file: !503, line: 223, type: !225)
!527 = !DILocalVariable(name: "s", arg: 5, scope: !518, file: !503, line: 223, type: !223)
!528 = !DILocalVariable(name: "n0", scope: !518, file: !503, line: 230, type: !223)
!529 = !DILocalVariable(name: "n", scope: !518, file: !503, line: 237, type: !223)
!530 = !DILocalVariable(name: "nbytes", scope: !518, file: !503, line: 248, type: !223)
!531 = !DILocalVariable(name: "adjusted_nbytes", scope: !518, file: !503, line: 252, type: !223)
!532 = !{!8, !60, !61, !62, !63}
!533 = distinct !DICompileUnit(language: DW_LANG_C99, file: !534, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!534 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!535 = distinct !DICompileUnit(language: DW_LANG_C99, file: !536, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!536 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!537 = distinct !DICompileUnit(language: DW_LANG_C99, file: !538, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!538 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!539 = distinct !DICompileUnit(language: DW_LANG_C99, file: !540, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !499, splitDebugInlining: false, nameTableKind: None)
!540 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!541 = distinct !DICompileUnit(language: DW_LANG_C99, file: !542, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !499, splitDebugInlining: false, nameTableKind: None)
!542 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!543 = distinct !DICompileUnit(language: DW_LANG_C99, file: !544, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !545, splitDebugInlining: false, nameTableKind: None)
!544 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!545 = !{!61, !63, !60}
!546 = distinct !DICompileUnit(language: DW_LANG_C99, file: !547, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!547 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!548 = distinct !DICompileUnit(language: DW_LANG_C99, file: !549, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!549 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!550 = distinct !DICompileUnit(language: DW_LANG_C99, file: !551, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !499, splitDebugInlining: false, nameTableKind: None)
!551 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!552 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!553 = !{i32 7, !"Dwarf Version", i32 5}
!554 = !{i32 2, !"Debug Info Version", i32 3}
!555 = !{i32 1, !"wchar_size", i32 4}
!556 = !{i32 1, !"branch-target-enforcement", i32 0}
!557 = !{i32 1, !"sign-return-address", i32 0}
!558 = !{i32 1, !"sign-return-address-all", i32 0}
!559 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!560 = !{i32 7, !"PIC Level", i32 2}
!561 = !{i32 7, !"PIE Level", i32 2}
!562 = !{i32 7, !"uwtable", i32 1}
!563 = !{i32 7, !"frame-pointer", i32 1}
!564 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 83, type: !565, scopeLine: 84, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !567)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !6}
!567 = !{!568}
!568 = !DILocalVariable(name: "status", arg: 1, scope: !564, file: !3, line: 83, type: !6)
!569 = !DILocation(line: 0, scope: !564)
!570 = !DILocation(line: 85, column: 14, scope: !571)
!571 = distinct !DILexicalBlock(scope: !564, file: !3, line: 85, column: 7)
!572 = !DILocation(line: 85, column: 7, scope: !564)
!573 = !DILocation(line: 86, column: 5, scope: !574)
!574 = distinct !DILexicalBlock(scope: !571, file: !3, line: 86, column: 5)
!575 = !{!576, !576, i64 0}
!576 = !{!"any pointer", !577, i64 0}
!577 = !{!"omnipotent char", !578, i64 0}
!578 = !{!"Simple C/C++ TBAA"}
!579 = !DILocation(line: 89, column: 7, scope: !580)
!580 = distinct !DILexicalBlock(scope: !571, file: !3, line: 88, column: 5)
!581 = !DILocation(line: 93, column: 7, scope: !580)
!582 = !DILocation(line: 729, column: 3, scope: !583, inlinedAt: !585)
!583 = distinct !DISubprogram(name: "emit_stdin_note", scope: !78, file: !78, line: 727, type: !314, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !584)
!584 = !{}
!585 = distinct !DILocation(line: 97, column: 7, scope: !580)
!586 = !DILocation(line: 99, column: 7, scope: !580)
!587 = !DILocation(line: 102, column: 7, scope: !580)
!588 = !DILocation(line: 105, column: 7, scope: !580)
!589 = !DILocation(line: 108, column: 7, scope: !580)
!590 = !DILocation(line: 111, column: 7, scope: !580)
!591 = !DILocation(line: 114, column: 7, scope: !580)
!592 = !DILocation(line: 117, column: 7, scope: !580)
!593 = !DILocation(line: 120, column: 7, scope: !580)
!594 = !DILocation(line: 123, column: 7, scope: !580)
!595 = !DILocation(line: 126, column: 7, scope: !580)
!596 = !DILocation(line: 129, column: 7, scope: !580)
!597 = !DILocation(line: 130, column: 7, scope: !580)
!598 = !DILocation(line: 131, column: 7, scope: !580)
!599 = !DILocalVariable(name: "program", arg: 1, scope: !600, file: !78, line: 836, type: !67)
!600 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !78, file: !78, line: 836, type: !601, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !603)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !67}
!603 = !{!599, !604, !613, !614, !616, !617}
!604 = !DILocalVariable(name: "infomap", scope: !600, file: !78, line: 838, type: !605)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 896, elements: !611)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !600, file: !78, line: 838, size: 128, elements: !608)
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !607, file: !78, line: 838, baseType: !67, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !607, file: !78, line: 838, baseType: !67, size: 64, offset: 64)
!611 = !{!612}
!612 = !DISubrange(count: 7)
!613 = !DILocalVariable(name: "node", scope: !600, file: !78, line: 848, type: !67)
!614 = !DILocalVariable(name: "map_prog", scope: !600, file: !78, line: 849, type: !615)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!616 = !DILocalVariable(name: "lc_messages", scope: !600, file: !78, line: 861, type: !67)
!617 = !DILocalVariable(name: "url_program", scope: !600, file: !78, line: 874, type: !67)
!618 = !DILocation(line: 0, scope: !600, inlinedAt: !619)
!619 = distinct !DILocation(line: 138, column: 7, scope: !580)
!620 = !DILocation(line: 838, column: 3, scope: !600, inlinedAt: !619)
!621 = !DILocation(line: 838, column: 67, scope: !600, inlinedAt: !619)
!622 = !DILocation(line: 849, column: 36, scope: !600, inlinedAt: !619)
!623 = !DILocation(line: 851, column: 3, scope: !600, inlinedAt: !619)
!624 = !DILocalVariable(name: "__s1", arg: 1, scope: !625, file: !626, line: 1359, type: !67)
!625 = distinct !DISubprogram(name: "streq", scope: !626, file: !626, line: 1359, type: !627, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !629)
!626 = !DIFile(filename: "./lib/string.h", directory: "/src")
!627 = !DISubroutineType(types: !628)
!628 = !{!61, !67, !67}
!629 = !{!624, !630}
!630 = !DILocalVariable(name: "__s2", arg: 2, scope: !625, file: !626, line: 1359, type: !67)
!631 = !DILocation(line: 0, scope: !625, inlinedAt: !632)
!632 = distinct !DILocation(line: 851, column: 33, scope: !600, inlinedAt: !619)
!633 = !DILocation(line: 1361, column: 11, scope: !625, inlinedAt: !632)
!634 = !DILocation(line: 1361, column: 10, scope: !625, inlinedAt: !632)
!635 = !DILocation(line: 852, column: 13, scope: !600, inlinedAt: !619)
!636 = !DILocation(line: 851, column: 20, scope: !600, inlinedAt: !619)
!637 = !{!638, !576, i64 0}
!638 = !{!"infomap", !576, i64 0, !576, i64 8}
!639 = !DILocation(line: 851, column: 10, scope: !600, inlinedAt: !619)
!640 = !DILocation(line: 851, column: 28, scope: !600, inlinedAt: !619)
!641 = distinct !{!641, !623, !635, !642}
!642 = !{!"llvm.loop.mustprogress"}
!643 = !DILocation(line: 854, column: 17, scope: !644, inlinedAt: !619)
!644 = distinct !DILexicalBlock(scope: !600, file: !78, line: 854, column: 7)
!645 = !{!638, !576, i64 8}
!646 = !DILocation(line: 854, column: 7, scope: !644, inlinedAt: !619)
!647 = !DILocation(line: 854, column: 7, scope: !600, inlinedAt: !619)
!648 = !DILocation(line: 857, column: 3, scope: !600, inlinedAt: !619)
!649 = !DILocation(line: 861, column: 29, scope: !600, inlinedAt: !619)
!650 = !DILocation(line: 862, column: 7, scope: !651, inlinedAt: !619)
!651 = distinct !DILexicalBlock(scope: !600, file: !78, line: 862, column: 7)
!652 = !DILocation(line: 862, column: 19, scope: !651, inlinedAt: !619)
!653 = !DILocation(line: 862, column: 22, scope: !651, inlinedAt: !619)
!654 = !DILocation(line: 862, column: 7, scope: !600, inlinedAt: !619)
!655 = !DILocation(line: 868, column: 7, scope: !656, inlinedAt: !619)
!656 = distinct !DILexicalBlock(scope: !651, file: !78, line: 863, column: 5)
!657 = !DILocation(line: 870, column: 5, scope: !656, inlinedAt: !619)
!658 = !DILocation(line: 0, scope: !625, inlinedAt: !659)
!659 = distinct !DILocation(line: 874, column: 29, scope: !600, inlinedAt: !619)
!660 = !DILocation(line: 875, column: 3, scope: !600, inlinedAt: !619)
!661 = !DILocation(line: 877, column: 3, scope: !600, inlinedAt: !619)
!662 = !DILocation(line: 879, column: 1, scope: !600, inlinedAt: !619)
!663 = !DILocation(line: 140, column: 3, scope: !564)
!664 = !DISubprogram(name: "dcgettext", scope: !665, file: !665, line: 51, type: !666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!665 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!666 = !DISubroutineType(types: !667)
!667 = !{!8, !67, !67, !6}
!668 = !DISubprogram(name: "fputs_unlocked", scope: !239, file: !239, line: 691, type: !669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!669 = !DISubroutineType(types: !670)
!670 = !{!6, !671, !672}
!671 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!672 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!673 = !DILocation(line: 0, scope: !77)
!674 = !DILocation(line: 581, column: 7, scope: !86)
!675 = !{!676, !676, i64 0}
!676 = !{!"int", !577, i64 0}
!677 = !DILocation(line: 581, column: 19, scope: !86)
!678 = !DILocation(line: 581, column: 7, scope: !77)
!679 = !DILocation(line: 585, column: 26, scope: !85)
!680 = !DILocation(line: 0, scope: !85)
!681 = !DILocation(line: 586, column: 23, scope: !85)
!682 = !DILocation(line: 586, column: 28, scope: !85)
!683 = !DILocation(line: 586, column: 32, scope: !85)
!684 = !{!577, !577, i64 0}
!685 = !DILocation(line: 586, column: 38, scope: !85)
!686 = !DILocation(line: 0, scope: !625, inlinedAt: !687)
!687 = distinct !DILocation(line: 586, column: 41, scope: !85)
!688 = !DILocation(line: 1361, column: 11, scope: !625, inlinedAt: !687)
!689 = !DILocation(line: 1361, column: 10, scope: !625, inlinedAt: !687)
!690 = !DILocation(line: 586, column: 19, scope: !85)
!691 = !DILocation(line: 587, column: 5, scope: !85)
!692 = !DILocation(line: 588, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !77, file: !78, line: 588, column: 7)
!694 = !DILocation(line: 588, column: 7, scope: !77)
!695 = !DILocation(line: 590, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !78, line: 589, column: 5)
!697 = !DILocation(line: 591, column: 7, scope: !696)
!698 = !DILocation(line: 595, column: 37, scope: !77)
!699 = !DILocation(line: 595, column: 35, scope: !77)
!700 = !DILocation(line: 596, column: 29, scope: !77)
!701 = !DILocation(line: 597, column: 8, scope: !93)
!702 = !DILocation(line: 597, column: 7, scope: !77)
!703 = !DILocation(line: 604, column: 24, scope: !92)
!704 = !DILocation(line: 604, column: 12, scope: !93)
!705 = !DILocation(line: 0, scope: !91)
!706 = !DILocation(line: 610, column: 16, scope: !91)
!707 = !DILocation(line: 610, column: 7, scope: !91)
!708 = !DILocation(line: 611, column: 21, scope: !91)
!709 = !{!710, !710, i64 0}
!710 = !{!"short", !577, i64 0}
!711 = !DILocation(line: 611, column: 19, scope: !91)
!712 = !DILocation(line: 611, column: 16, scope: !91)
!713 = !DILocation(line: 610, column: 30, scope: !91)
!714 = distinct !{!714, !707, !708, !642}
!715 = !DILocation(line: 612, column: 18, scope: !716)
!716 = distinct !DILexicalBlock(scope: !91, file: !78, line: 612, column: 11)
!717 = !DILocation(line: 612, column: 11, scope: !91)
!718 = !DILocation(line: 620, column: 23, scope: !77)
!719 = !DILocation(line: 625, column: 39, scope: !77)
!720 = !DILocation(line: 626, column: 3, scope: !77)
!721 = !DILocation(line: 626, column: 10, scope: !77)
!722 = !DILocation(line: 626, column: 21, scope: !77)
!723 = !DILocation(line: 628, column: 44, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !78, line: 628, column: 11)
!725 = distinct !DILexicalBlock(scope: !77, file: !78, line: 627, column: 5)
!726 = !DILocation(line: 628, column: 32, scope: !724)
!727 = !DILocation(line: 628, column: 49, scope: !724)
!728 = !DILocation(line: 628, column: 11, scope: !725)
!729 = !DILocation(line: 630, column: 11, scope: !730)
!730 = distinct !DILexicalBlock(scope: !725, file: !78, line: 630, column: 11)
!731 = !DILocation(line: 630, column: 11, scope: !725)
!732 = !DILocation(line: 632, column: 26, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !78, line: 632, column: 15)
!734 = distinct !DILexicalBlock(scope: !730, file: !78, line: 631, column: 9)
!735 = !DILocation(line: 632, column: 34, scope: !733)
!736 = !DILocation(line: 632, column: 37, scope: !733)
!737 = !DILocation(line: 632, column: 15, scope: !734)
!738 = !DILocation(line: 636, column: 29, scope: !739)
!739 = distinct !DILexicalBlock(scope: !734, file: !78, line: 636, column: 15)
!740 = !DILocation(line: 640, column: 16, scope: !725)
!741 = distinct !{!741, !720, !742, !642}
!742 = !DILocation(line: 641, column: 5, scope: !77)
!743 = !DILocation(line: 644, column: 3, scope: !77)
!744 = !DILocation(line: 0, scope: !625, inlinedAt: !745)
!745 = distinct !DILocation(line: 648, column: 31, scope: !77)
!746 = !DILocation(line: 0, scope: !625, inlinedAt: !747)
!747 = distinct !DILocation(line: 649, column: 31, scope: !77)
!748 = !DILocation(line: 0, scope: !625, inlinedAt: !749)
!749 = distinct !DILocation(line: 650, column: 31, scope: !77)
!750 = !DILocation(line: 0, scope: !625, inlinedAt: !751)
!751 = distinct !DILocation(line: 651, column: 31, scope: !77)
!752 = !DILocation(line: 0, scope: !625, inlinedAt: !753)
!753 = distinct !DILocation(line: 652, column: 31, scope: !77)
!754 = !DILocation(line: 0, scope: !625, inlinedAt: !755)
!755 = distinct !DILocation(line: 653, column: 31, scope: !77)
!756 = !DILocation(line: 0, scope: !625, inlinedAt: !757)
!757 = distinct !DILocation(line: 654, column: 31, scope: !77)
!758 = !DILocation(line: 0, scope: !625, inlinedAt: !759)
!759 = distinct !DILocation(line: 655, column: 31, scope: !77)
!760 = !DILocation(line: 0, scope: !625, inlinedAt: !761)
!761 = distinct !DILocation(line: 656, column: 31, scope: !77)
!762 = !DILocation(line: 0, scope: !625, inlinedAt: !763)
!763 = distinct !DILocation(line: 657, column: 31, scope: !77)
!764 = !DILocation(line: 663, column: 7, scope: !765)
!765 = distinct !DILexicalBlock(scope: !77, file: !78, line: 663, column: 7)
!766 = !DILocation(line: 664, column: 7, scope: !765)
!767 = !DILocation(line: 664, column: 10, scope: !765)
!768 = !DILocation(line: 663, column: 7, scope: !77)
!769 = !DILocation(line: 669, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !765, file: !78, line: 665, column: 5)
!771 = !DILocation(line: 671, column: 5, scope: !770)
!772 = !DILocation(line: 676, column: 7, scope: !773)
!773 = distinct !DILexicalBlock(scope: !765, file: !78, line: 673, column: 5)
!774 = !DILocation(line: 679, column: 3, scope: !77)
!775 = !DILocation(line: 683, column: 3, scope: !77)
!776 = !DILocation(line: 686, column: 3, scope: !77)
!777 = !DILocation(line: 688, column: 3, scope: !77)
!778 = !DILocation(line: 691, column: 3, scope: !77)
!779 = !DILocation(line: 695, column: 3, scope: !77)
!780 = !DILocation(line: 696, column: 1, scope: !77)
!781 = !DISubprogram(name: "setlocale", scope: !782, file: !782, line: 122, type: !783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!782 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!783 = !DISubroutineType(types: !784)
!784 = !{!8, !6, !67}
!785 = !DISubprogram(name: "getenv", scope: !786, file: !786, line: 641, type: !787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!786 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!787 = !DISubroutineType(types: !788)
!788 = !{!8, !67}
!789 = !DISubprogram(name: "fwrite_unlocked", scope: !239, file: !239, line: 704, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!790 = !DISubroutineType(types: !791)
!791 = !{!65, !792, !65, !65, !672}
!792 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!795 = !DILocation(line: 0, scope: !2)
!796 = !DILocation(line: 555, column: 3, scope: !2)
!797 = !DILocation(line: 555, column: 15, scope: !2)
!798 = !DILocation(line: 581, column: 21, scope: !2)
!799 = !DILocation(line: 581, column: 3, scope: !2)
!800 = !DILocation(line: 582, column: 3, scope: !2)
!801 = !DILocation(line: 583, column: 3, scope: !2)
!802 = !DILocation(line: 584, column: 3, scope: !2)
!803 = !DILocation(line: 590, column: 3, scope: !2)
!804 = !DILocation(line: 595, column: 3, scope: !2)
!805 = !DILocation(line: 595, column: 15, scope: !2)
!806 = distinct !{!806, !804, !807, !642}
!807 = !DILocation(line: 652, column: 5, scope: !2)
!808 = !DILocation(line: 603, column: 11, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 599, column: 9)
!810 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 5)
!811 = !DILocation(line: 608, column: 11, scope: !809)
!812 = !DILocation(line: 612, column: 11, scope: !809)
!813 = !DILocation(line: 616, column: 11, scope: !809)
!814 = !DILocation(line: 621, column: 11, scope: !809)
!815 = !DILocation(line: 629, column: 11, scope: !809)
!816 = !DILocation(line: 635, column: 11, scope: !809)
!817 = !DILocation(line: 639, column: 11, scope: !809)
!818 = !DILocation(line: 643, column: 11, scope: !809)
!819 = !DILocation(line: 645, column: 9, scope: !809)
!820 = !DILocation(line: 647, column: 9, scope: !809)
!821 = !DILocation(line: 650, column: 11, scope: !809)
!822 = !DILocation(line: 656, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !2, file: !3, line: 656, column: 7)
!824 = !DILocation(line: 656, column: 41, scope: !823)
!825 = !DILocation(line: 656, column: 7, scope: !2)
!826 = !DILocation(line: 657, column: 5, scope: !823)
!827 = !DILocalVariable(name: "st", arg: 1, scope: !828, file: !52, line: 81, type: !831)
!828 = distinct !DISubprogram(name: "io_blksize", scope: !52, file: !52, line: 81, type: !829, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !833)
!829 = !DISubroutineType(types: !830)
!830 = !{!223, !831}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!833 = !{!827, !834, !835, !838}
!834 = !DILocalVariable(name: "blocksize", scope: !828, file: !52, line: 84, type: !223)
!835 = !DILocalVariable(name: "leading_zeros", scope: !836, file: !52, line: 98, type: !6)
!836 = distinct !DILexicalBlock(scope: !837, file: !52, line: 97, column: 5)
!837 = distinct !DILexicalBlock(scope: !828, file: !52, line: 96, column: 7)
!838 = !DILocalVariable(name: "power", scope: !839, file: !52, line: 101, type: !841)
!839 = distinct !DILexicalBlock(scope: !840, file: !52, line: 100, column: 9)
!840 = distinct !DILexicalBlock(scope: !836, file: !52, line: 99, column: 11)
!841 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!842 = !DILocation(line: 0, scope: !828, inlinedAt: !843)
!843 = distinct !DILocation(line: 660, column: 19, scope: !2)
!844 = !DILocation(line: 84, column: 21, scope: !828, inlinedAt: !843)
!845 = !{!846, !676, i64 56}
!846 = !{!"stat", !847, i64 0, !847, i64 8, !676, i64 16, !676, i64 20, !676, i64 24, !676, i64 28, !847, i64 32, !847, i64 40, !847, i64 48, !676, i64 56, !676, i64 60, !847, i64 64, !848, i64 72, !848, i64 88, !848, i64 104, !577, i64 120}
!847 = !{!"long", !577, i64 0}
!848 = !{!"timespec", !847, i64 0, !847, i64 8}
!849 = !DILocation(line: 84, column: 58, scope: !828, inlinedAt: !843)
!850 = !DILocation(line: 88, column: 52, scope: !828, inlinedAt: !843)
!851 = !DILocation(line: 88, column: 33, scope: !828, inlinedAt: !843)
!852 = !DILocation(line: 88, column: 13, scope: !828, inlinedAt: !843)
!853 = !DILocation(line: 96, column: 7, scope: !837, inlinedAt: !843)
!854 = !{!846, !676, i64 16}
!855 = !{i64 0, i64 65}
!856 = !DILocation(line: 96, column: 29, scope: !837, inlinedAt: !843)
!857 = !DILocalVariable(name: "n", arg: 1, scope: !858, file: !859, line: 436, type: !841)
!858 = distinct !DISubprogram(name: "stdc_leading_zeros_ull", scope: !859, file: !859, line: 436, type: !860, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !862)
!859 = !DIFile(filename: "./lib/stdbit.h", directory: "/src", checksumkind: CSK_MD5, checksum: "22a94c18744c4eadd69210db6ede4b9c")
!860 = !DISubroutineType(types: !861)
!861 = !{!14, !841}
!862 = !{!857}
!863 = !DILocation(line: 0, scope: !858, inlinedAt: !864)
!864 = distinct !DILocation(line: 98, column: 27, scope: !836, inlinedAt: !843)
!865 = !DILocalVariable(name: "n", arg: 1, scope: !866, file: !859, line: 149, type: !841)
!866 = distinct !DISubprogram(name: "_gl_stdbit_clzll", scope: !859, file: !859, line: 149, type: !867, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !869)
!867 = !DISubroutineType(types: !868)
!868 = !{!6, !841}
!869 = !{!865}
!870 = !DILocation(line: 0, scope: !866, inlinedAt: !871)
!871 = distinct !DILocation(line: 438, column: 10, scope: !858, inlinedAt: !864)
!872 = !DILocation(line: 151, column: 10, scope: !866, inlinedAt: !871)
!873 = !DILocation(line: 0, scope: !836, inlinedAt: !843)
!874 = !DILocation(line: 0, scope: !839, inlinedAt: !843)
!875 = !DILocation(line: 102, column: 21, scope: !876, inlinedAt: !843)
!876 = distinct !DILexicalBlock(scope: !839, file: !52, line: 102, column: 15)
!877 = !DILocation(line: 102, column: 15, scope: !839, inlinedAt: !843)
!878 = !DILocation(line: 105, column: 5, scope: !836, inlinedAt: !843)
!879 = !DILocation(line: 110, column: 10, scope: !828, inlinedAt: !843)
!880 = !DILocation(line: 666, column: 20, scope: !2)
!881 = !DILocation(line: 668, column: 17, scope: !882)
!882 = distinct !DILexicalBlock(scope: !2, file: !3, line: 668, column: 7)
!883 = !DILocation(line: 676, column: 10, scope: !2)
!884 = !DILocation(line: 677, column: 16, scope: !2)
!885 = !DILocation(line: 679, column: 21, scope: !2)
!886 = !DILocation(line: 681, column: 3, scope: !2)
!887 = !DILocation(line: 663, column: 7, scope: !2)
!888 = !DILocation(line: 683, column: 18, scope: !889)
!889 = distinct !DILexicalBlock(scope: !232, file: !3, line: 683, column: 11)
!890 = !DILocation(line: 683, column: 11, scope: !232)
!891 = !DILocation(line: 686, column: 35, scope: !232)
!892 = !DILocation(line: 684, column: 18, scope: !889)
!893 = !DILocation(line: 684, column: 16, scope: !889)
!894 = !DILocation(line: 684, column: 9, scope: !889)
!895 = !DILocation(line: 0, scope: !625, inlinedAt: !896)
!896 = distinct !DILocation(line: 686, column: 28, scope: !232)
!897 = !DILocation(line: 1361, column: 11, scope: !625, inlinedAt: !896)
!898 = !DILocation(line: 1361, column: 10, scope: !625, inlinedAt: !896)
!899 = !DILocation(line: 0, scope: !232)
!900 = !DILocation(line: 687, column: 11, scope: !232)
!901 = !DILocation(line: 690, column: 22, scope: !902)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 688, column: 9)
!903 = distinct !DILexicalBlock(scope: !232, file: !3, line: 687, column: 11)
!904 = !DILocation(line: 696, column: 24, scope: !905)
!905 = distinct !DILexicalBlock(scope: !903, file: !3, line: 695, column: 9)
!906 = !DILocation(line: 696, column: 22, scope: !905)
!907 = !DILocation(line: 697, column: 26, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !3, line: 697, column: 15)
!909 = !DILocation(line: 697, column: 15, scope: !905)
!910 = !DILocation(line: 699, column: 15, scope: !911)
!911 = distinct !DILexicalBlock(scope: !908, file: !3, line: 698, column: 13)
!912 = !DILocation(line: 701, column: 15, scope: !911)
!913 = !DILocation(line: 706, column: 18, scope: !914)
!914 = distinct !DILexicalBlock(scope: !232, file: !3, line: 706, column: 11)
!915 = !DILocation(line: 705, column: 7, scope: !232)
!916 = !DILocation(line: 705, column: 19, scope: !232)
!917 = !DILocation(line: 706, column: 11, scope: !914)
!918 = !DILocation(line: 706, column: 42, scope: !914)
!919 = !DILocation(line: 706, column: 11, scope: !232)
!920 = !DILocation(line: 708, column: 11, scope: !921)
!921 = distinct !DILexicalBlock(scope: !914, file: !3, line: 707, column: 9)
!922 = !DILocation(line: 710, column: 11, scope: !921)
!923 = !DILocation(line: 0, scope: !828, inlinedAt: !924)
!924 = distinct !DILocation(line: 714, column: 22, scope: !232)
!925 = !DILocation(line: 84, column: 21, scope: !828, inlinedAt: !924)
!926 = !DILocation(line: 84, column: 58, scope: !828, inlinedAt: !924)
!927 = !DILocation(line: 88, column: 52, scope: !828, inlinedAt: !924)
!928 = !DILocation(line: 88, column: 33, scope: !828, inlinedAt: !924)
!929 = !DILocation(line: 88, column: 13, scope: !828, inlinedAt: !924)
!930 = !DILocation(line: 96, column: 7, scope: !837, inlinedAt: !924)
!931 = !DILocation(line: 96, column: 29, scope: !837, inlinedAt: !924)
!932 = !DILocation(line: 0, scope: !858, inlinedAt: !933)
!933 = distinct !DILocation(line: 98, column: 27, scope: !836, inlinedAt: !924)
!934 = !DILocation(line: 0, scope: !866, inlinedAt: !935)
!935 = distinct !DILocation(line: 438, column: 10, scope: !858, inlinedAt: !933)
!936 = !DILocation(line: 151, column: 10, scope: !866, inlinedAt: !935)
!937 = !DILocation(line: 0, scope: !836, inlinedAt: !924)
!938 = !DILocation(line: 0, scope: !839, inlinedAt: !924)
!939 = !DILocation(line: 102, column: 21, scope: !876, inlinedAt: !924)
!940 = !DILocation(line: 102, column: 15, scope: !839, inlinedAt: !924)
!941 = !DILocation(line: 110, column: 10, scope: !828, inlinedAt: !924)
!942 = !DILocation(line: 716, column: 17, scope: !232)
!943 = !DILocation(line: 716, column: 7, scope: !232)
!944 = !DILocation(line: 722, column: 43, scope: !237)
!945 = !DILocation(line: 725, column: 14, scope: !237)
!946 = !{!846, !847, i64 0}
!947 = !{!846, !847, i64 8}
!948 = !DILocation(line: 722, column: 11, scope: !232)
!949 = !DILocation(line: 727, column: 33, scope: !236)
!950 = !DILocation(line: 727, column: 26, scope: !236)
!951 = !DILocation(line: 0, scope: !236)
!952 = !DILocation(line: 728, column: 17, scope: !242)
!953 = !DILocation(line: 728, column: 15, scope: !236)
!954 = !DILocation(line: 730, column: 29, scope: !955)
!955 = distinct !DILexicalBlock(scope: !241, file: !3, line: 730, column: 19)
!956 = !DILocation(line: 730, column: 19, scope: !241)
!957 = !DILocation(line: 731, column: 29, scope: !955)
!958 = !DILocation(line: 731, column: 17, scope: !955)
!959 = !DILocation(line: 732, column: 44, scope: !241)
!960 = !DILocation(line: 732, column: 29, scope: !241)
!961 = !DILocation(line: 0, scope: !241)
!962 = !DILocation(line: 734, column: 28, scope: !963)
!963 = distinct !DILexicalBlock(scope: !241, file: !3, line: 734, column: 19)
!964 = !DILocation(line: 734, column: 26, scope: !963)
!965 = !DILocation(line: 734, column: 19, scope: !241)
!966 = !DILocation(line: 736, column: 19, scope: !967)
!967 = distinct !DILexicalBlock(scope: !963, file: !3, line: 735, column: 17)
!968 = !DILocation(line: 751, column: 21, scope: !246)
!969 = !DILocation(line: 755, column: 23, scope: !245)
!970 = !DILocalVariable(name: "some_copied", scope: !971, file: !3, line: 531, type: !61)
!971 = distinct !DILexicalBlock(scope: !972, file: !3, line: 531, column: 3)
!972 = distinct !DISubprogram(name: "copy_cat", scope: !3, file: !3, line: 518, type: !973, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{!6}
!975 = !{!976, !970}
!976 = !DILocalVariable(name: "copy_max", scope: !972, file: !3, line: 523, type: !977)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !239, line: 77, baseType: !978)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !127, line: 194, baseType: !62)
!979 = !DILocation(line: 0, scope: !971, inlinedAt: !980)
!980 = distinct !DILocation(line: 755, column: 56, scope: !245)
!981 = !DILocation(line: 532, column: 30, scope: !982, inlinedAt: !980)
!982 = distinct !DILexicalBlock(scope: !971, file: !3, line: 531, column: 3)
!983 = !DILocation(line: 532, column: 13, scope: !982, inlinedAt: !980)
!984 = !DILocation(line: 532, column: 5, scope: !982, inlinedAt: !980)
!985 = distinct !{!985, !986, !987}
!986 = !DILocation(line: 531, column: 3, scope: !971, inlinedAt: !980)
!987 = !DILocation(line: 545, column: 7, scope: !971, inlinedAt: !980)
!988 = !DILocation(line: 539, column: 13, scope: !989, inlinedAt: !980)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 539, column: 13)
!990 = distinct !DILexicalBlock(scope: !982, file: !3, line: 534, column: 7)
!991 = !DILocation(line: 539, column: 29, scope: !989, inlinedAt: !980)
!992 = !DILocation(line: 543, column: 9, scope: !990, inlinedAt: !980)
!993 = !DILocation(line: 0, scope: !245)
!994 = !DILocation(line: 756, column: 15, scope: !245)
!995 = !DILocation(line: 763, column: 24, scope: !996)
!996 = distinct !DILexicalBlock(scope: !997, file: !3, line: 762, column: 13)
!997 = distinct !DILexicalBlock(scope: !245, file: !3, line: 756, column: 15)
!998 = !DILocation(line: 764, column: 23, scope: !996)
!999 = !DILocalVariable(name: "buf", arg: 1, scope: !1000, file: !3, line: 170, type: !8)
!1000 = distinct !DISubprogram(name: "simple_cat", scope: !3, file: !3, line: 170, type: !1001, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1003)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!61, !8, !223}
!1003 = !{!999, !1004, !1005}
!1004 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1000, file: !3, line: 170, type: !223)
!1005 = !DILocalVariable(name: "n_read", scope: !1006, file: !3, line: 178, type: !977)
!1006 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 175, column: 5)
!1007 = !DILocation(line: 0, scope: !1000, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 765, column: 21, scope: !996)
!1009 = !DILocation(line: 174, column: 3, scope: !1000, inlinedAt: !1008)
!1010 = !DILocation(line: 178, column: 30, scope: !1006, inlinedAt: !1008)
!1011 = !DILocation(line: 178, column: 24, scope: !1006, inlinedAt: !1008)
!1012 = !DILocation(line: 0, scope: !1006, inlinedAt: !1008)
!1013 = !DILocation(line: 179, column: 18, scope: !1014, inlinedAt: !1008)
!1014 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 179, column: 11)
!1015 = !DILocation(line: 179, column: 11, scope: !1006, inlinedAt: !1008)
!1016 = !DILocation(line: 181, column: 11, scope: !1017, inlinedAt: !1008)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 180, column: 9)
!1018 = !DILocation(line: 182, column: 11, scope: !1017, inlinedAt: !1008)
!1019 = !DILocation(line: 187, column: 18, scope: !1020, inlinedAt: !1008)
!1020 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 187, column: 11)
!1021 = !DILocation(line: 187, column: 11, scope: !1006, inlinedAt: !1008)
!1022 = !DILocation(line: 192, column: 11, scope: !1023, inlinedAt: !1008)
!1023 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 192, column: 11)
!1024 = !DILocation(line: 192, column: 51, scope: !1023, inlinedAt: !1008)
!1025 = !DILocation(line: 192, column: 11, scope: !1006, inlinedAt: !1008)
!1026 = !DILocation(line: 948, column: 21, scope: !1027, inlinedAt: !1030)
!1027 = distinct !DISubprogram(name: "write_error", scope: !78, file: !78, line: 946, type: !314, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1028)
!1028 = !{!1029}
!1029 = !DILocalVariable(name: "saved_errno", scope: !1027, file: !78, line: 948, type: !6)
!1030 = distinct !DILocation(line: 193, column: 9, scope: !1023, inlinedAt: !1008)
!1031 = !DILocation(line: 0, scope: !1027, inlinedAt: !1030)
!1032 = !DILocation(line: 949, column: 3, scope: !1027, inlinedAt: !1030)
!1033 = !DILocation(line: 950, column: 11, scope: !1027, inlinedAt: !1030)
!1034 = !DILocation(line: 950, column: 3, scope: !1027, inlinedAt: !1030)
!1035 = !DILocation(line: 951, column: 3, scope: !1027, inlinedAt: !1030)
!1036 = !DILocation(line: 952, column: 3, scope: !1027, inlinedAt: !1030)
!1037 = !DILocation(line: 195, column: 1, scope: !1000, inlinedAt: !1008)
!1038 = !DILocation(line: 771, column: 50, scope: !248)
!1039 = !DILocation(line: 771, column: 19, scope: !248)
!1040 = !DILocation(line: 0, scope: !248)
!1041 = !DILocation(line: 795, column: 15, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !248, file: !3, line: 795, column: 15)
!1043 = !DILocation(line: 796, column: 18, scope: !1042)
!1044 = !DILocation(line: 797, column: 15, scope: !1042)
!1045 = !DILocation(line: 797, column: 18, scope: !1042)
!1046 = !DILocation(line: 795, column: 15, scope: !248)
!1047 = !DILocation(line: 798, column: 13, scope: !1042)
!1048 = !DILocation(line: 799, column: 26, scope: !248)
!1049 = !DILocalVariable(name: "inbuf", arg: 1, scope: !1050, file: !3, line: 226, type: !8)
!1050 = distinct !DISubprogram(name: "cat", scope: !3, file: !3, line: 226, type: !1051, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1053)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!61, !8, !223, !8, !223, !61, !61, !61, !61, !61, !61}
!1053 = !{!1049, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1074, !1075, !1078, !1079}
!1054 = !DILocalVariable(name: "insize", arg: 2, scope: !1050, file: !3, line: 226, type: !223)
!1055 = !DILocalVariable(name: "outbuf", arg: 3, scope: !1050, file: !3, line: 226, type: !8)
!1056 = !DILocalVariable(name: "outsize", arg: 4, scope: !1050, file: !3, line: 226, type: !223)
!1057 = !DILocalVariable(name: "show_nonprinting", arg: 5, scope: !1050, file: !3, line: 227, type: !61)
!1058 = !DILocalVariable(name: "show_tabs", arg: 6, scope: !1050, file: !3, line: 227, type: !61)
!1059 = !DILocalVariable(name: "number", arg: 7, scope: !1050, file: !3, line: 227, type: !61)
!1060 = !DILocalVariable(name: "number_nonblank", arg: 8, scope: !1050, file: !3, line: 227, type: !61)
!1061 = !DILocalVariable(name: "show_ends", arg: 9, scope: !1050, file: !3, line: 228, type: !61)
!1062 = !DILocalVariable(name: "squeeze_blank", arg: 10, scope: !1050, file: !3, line: 228, type: !61)
!1063 = !DILocalVariable(name: "ch", scope: !1050, file: !3, line: 231, type: !69)
!1064 = !DILocalVariable(name: "newlines", scope: !1050, file: !3, line: 238, type: !6)
!1065 = !DILocalVariable(name: "use_fionread", scope: !1050, file: !3, line: 243, type: !61)
!1066 = !DILocalVariable(name: "eob", scope: !1050, file: !3, line: 251, type: !8)
!1067 = !DILocalVariable(name: "bpin", scope: !1050, file: !3, line: 254, type: !8)
!1068 = !DILocalVariable(name: "bpout", scope: !1050, file: !3, line: 257, type: !8)
!1069 = !DILocalVariable(name: "wp", scope: !1070, file: !3, line: 267, type: !8)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 266, column: 13)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 265, column: 15)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 262, column: 9)
!1073 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 260, column: 5)
!1074 = !DILocalVariable(name: "remaining_bytes", scope: !1070, file: !3, line: 268, type: !223)
!1075 = !DILocalVariable(name: "input_pending", scope: !1076, file: !3, line: 289, type: !61)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 288, column: 13)
!1077 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 287, column: 15)
!1078 = !DILocalVariable(name: "n_to_read", scope: !1076, file: !3, line: 291, type: !6)
!1079 = !DILocalVariable(name: "n_read", scope: !1076, file: !3, line: 327, type: !977)
!1080 = !DILocation(line: 0, scope: !1050, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 801, column: 17, scope: !248)
!1082 = !DILocation(line: 238, column: 18, scope: !1050, inlinedAt: !1081)
!1083 = !DILocation(line: 254, column: 20, scope: !1050, inlinedAt: !1081)
!1084 = !DILocation(line: 259, column: 3, scope: !1050, inlinedAt: !1081)
!1085 = !DILocation(line: 257, column: 9, scope: !1050, inlinedAt: !1081)
!1086 = !DILocation(line: 238, column: 7, scope: !1050, inlinedAt: !1081)
!1087 = !DILocation(line: 251, column: 9, scope: !1050, inlinedAt: !1081)
!1088 = !DILocation(line: 265, column: 32, scope: !1071, inlinedAt: !1081)
!1089 = !DILocation(line: 265, column: 15, scope: !1072, inlinedAt: !1081)
!1090 = !DILocation(line: 269, column: 15, scope: !1070, inlinedAt: !1081)
!1091 = !DILocation(line: 0, scope: !1070, inlinedAt: !1081)
!1092 = !DILocation(line: 271, column: 23, scope: !1093, inlinedAt: !1081)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 271, column: 23)
!1094 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 270, column: 17)
!1095 = !DILocation(line: 271, column: 63, scope: !1093, inlinedAt: !1081)
!1096 = !DILocation(line: 271, column: 23, scope: !1094, inlinedAt: !1081)
!1097 = !DILocation(line: 948, column: 21, scope: !1027, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 272, column: 21, scope: !1093, inlinedAt: !1081)
!1099 = !DILocation(line: 0, scope: !1027, inlinedAt: !1098)
!1100 = !DILocation(line: 949, column: 3, scope: !1027, inlinedAt: !1098)
!1101 = !DILocation(line: 950, column: 11, scope: !1027, inlinedAt: !1098)
!1102 = !DILocation(line: 950, column: 3, scope: !1027, inlinedAt: !1098)
!1103 = !DILocation(line: 951, column: 3, scope: !1027, inlinedAt: !1098)
!1104 = !DILocation(line: 952, column: 3, scope: !1027, inlinedAt: !1098)
!1105 = !DILocation(line: 273, column: 22, scope: !1094, inlinedAt: !1081)
!1106 = !DILocation(line: 274, column: 43, scope: !1094, inlinedAt: !1081)
!1107 = !DILocation(line: 276, column: 30, scope: !1070, inlinedAt: !1081)
!1108 = !DILocation(line: 275, column: 17, scope: !1094, inlinedAt: !1081)
!1109 = distinct !{!1109, !1090, !1110, !642}
!1110 = !DILocation(line: 276, column: 48, scope: !1070, inlinedAt: !1081)
!1111 = !DILocalVariable(name: "__dest", arg: 1, scope: !1112, file: !1113, line: 34, type: !60)
!1112 = distinct !DISubprogram(name: "memmove", scope: !1113, file: !1113, line: 34, type: !1114, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1116)
!1113 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!60, !60, !793, !65}
!1116 = !{!1111, !1117, !1118}
!1117 = !DILocalVariable(name: "__src", arg: 2, scope: !1112, file: !1113, line: 34, type: !793)
!1118 = !DILocalVariable(name: "__len", arg: 3, scope: !1112, file: !1113, line: 34, type: !65)
!1119 = !DILocation(line: 0, scope: !1112, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 281, column: 15, scope: !1070, inlinedAt: !1081)
!1121 = !DILocation(line: 36, column: 10, scope: !1112, inlinedAt: !1120)
!1122 = !DILocation(line: 282, column: 30, scope: !1070, inlinedAt: !1081)
!1123 = !DILocation(line: 283, column: 13, scope: !1070, inlinedAt: !1081)
!1124 = !DILocation(line: 287, column: 20, scope: !1077, inlinedAt: !1081)
!1125 = !DILocation(line: 287, column: 15, scope: !1072, inlinedAt: !1081)
!1126 = !DILocation(line: 0, scope: !1076, inlinedAt: !1081)
!1127 = !DILocation(line: 291, column: 15, scope: !1076, inlinedAt: !1081)
!1128 = !DILocation(line: 291, column: 19, scope: !1076, inlinedAt: !1081)
!1129 = !DILocation(line: 298, column: 19, scope: !1130, inlinedAt: !1081)
!1130 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 297, column: 19)
!1131 = !DILocation(line: 298, column: 29, scope: !1130, inlinedAt: !1081)
!1132 = !DILocation(line: 298, column: 22, scope: !1130, inlinedAt: !1081)
!1133 = !DILocation(line: 298, column: 63, scope: !1130, inlinedAt: !1081)
!1134 = !DILocation(line: 297, column: 19, scope: !1076, inlinedAt: !1081)
!1135 = !DILocation(line: 306, column: 23, scope: !1136, inlinedAt: !1081)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 306, column: 23)
!1137 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 299, column: 17)
!1138 = !DILocation(line: 306, column: 43, scope: !1136, inlinedAt: !1081)
!1139 = !DILocation(line: 312, column: 23, scope: !1140, inlinedAt: !1081)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 311, column: 21)
!1141 = !DILocation(line: 315, column: 23, scope: !1140, inlinedAt: !1081)
!1142 = !DILocation(line: 318, column: 19, scope: !1143, inlinedAt: !1081)
!1143 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 318, column: 19)
!1144 = !DILocation(line: 318, column: 29, scope: !1143, inlinedAt: !1081)
!1145 = !DILocation(line: 322, column: 19, scope: !1076, inlinedAt: !1081)
!1146 = !DILocalVariable(name: "outbuf", arg: 1, scope: !1147, file: !3, line: 202, type: !8)
!1147 = distinct !DISubprogram(name: "write_pending", scope: !3, file: !3, line: 202, type: !1148, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1150)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !8, !7}
!1150 = !{!1146, !1151, !1152}
!1151 = !DILocalVariable(name: "bpout", arg: 2, scope: !1147, file: !3, line: 202, type: !7)
!1152 = !DILocalVariable(name: "n_write", scope: !1147, file: !3, line: 204, type: !223)
!1153 = !DILocation(line: 0, scope: !1147, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 323, column: 17, scope: !1155, inlinedAt: !1081)
!1155 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 322, column: 19)
!1156 = !DILocation(line: 204, column: 26, scope: !1147, inlinedAt: !1154)
!1157 = !DILocation(line: 205, column: 9, scope: !1158, inlinedAt: !1154)
!1158 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 205, column: 7)
!1159 = !DILocation(line: 205, column: 7, scope: !1147, inlinedAt: !1154)
!1160 = !DILocation(line: 207, column: 11, scope: !1161, inlinedAt: !1154)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 207, column: 11)
!1162 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 206, column: 5)
!1163 = !DILocation(line: 207, column: 55, scope: !1161, inlinedAt: !1154)
!1164 = !DILocation(line: 207, column: 11, scope: !1162, inlinedAt: !1154)
!1165 = !DILocation(line: 948, column: 21, scope: !1027, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 208, column: 9, scope: !1161, inlinedAt: !1154)
!1167 = !DILocation(line: 0, scope: !1027, inlinedAt: !1166)
!1168 = !DILocation(line: 949, column: 3, scope: !1027, inlinedAt: !1166)
!1169 = !DILocation(line: 950, column: 11, scope: !1027, inlinedAt: !1166)
!1170 = !DILocation(line: 950, column: 3, scope: !1027, inlinedAt: !1166)
!1171 = !DILocation(line: 951, column: 3, scope: !1027, inlinedAt: !1166)
!1172 = !DILocation(line: 952, column: 3, scope: !1027, inlinedAt: !1166)
!1173 = !DILocation(line: 327, column: 38, scope: !1076, inlinedAt: !1081)
!1174 = !DILocation(line: 327, column: 32, scope: !1076, inlinedAt: !1081)
!1175 = !DILocation(line: 328, column: 26, scope: !1176, inlinedAt: !1081)
!1176 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 328, column: 19)
!1177 = !DILocation(line: 328, column: 19, scope: !1076, inlinedAt: !1081)
!1178 = !DILocation(line: 330, column: 19, scope: !1179, inlinedAt: !1081)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 329, column: 17)
!1180 = !DILocation(line: 0, scope: !1147, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 331, column: 19, scope: !1179, inlinedAt: !1081)
!1182 = !DILocation(line: 204, column: 26, scope: !1147, inlinedAt: !1181)
!1183 = !DILocation(line: 205, column: 9, scope: !1158, inlinedAt: !1181)
!1184 = !DILocation(line: 205, column: 7, scope: !1147, inlinedAt: !1181)
!1185 = !DILocation(line: 207, column: 11, scope: !1161, inlinedAt: !1181)
!1186 = !DILocation(line: 207, column: 55, scope: !1161, inlinedAt: !1181)
!1187 = !DILocation(line: 207, column: 11, scope: !1162, inlinedAt: !1181)
!1188 = !DILocation(line: 948, column: 21, scope: !1027, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 208, column: 9, scope: !1161, inlinedAt: !1181)
!1190 = !DILocation(line: 0, scope: !1027, inlinedAt: !1189)
!1191 = !DILocation(line: 949, column: 3, scope: !1027, inlinedAt: !1189)
!1192 = !DILocation(line: 950, column: 11, scope: !1027, inlinedAt: !1189)
!1193 = !DILocation(line: 950, column: 3, scope: !1027, inlinedAt: !1189)
!1194 = !DILocation(line: 951, column: 3, scope: !1027, inlinedAt: !1189)
!1195 = !DILocation(line: 952, column: 3, scope: !1027, inlinedAt: !1189)
!1196 = !DILocation(line: 335, column: 26, scope: !1197, inlinedAt: !1081)
!1197 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 335, column: 19)
!1198 = !DILocation(line: 335, column: 19, scope: !1076, inlinedAt: !1081)
!1199 = !DILocation(line: 0, scope: !1147, inlinedAt: !1200)
!1200 = distinct !DILocation(line: 337, column: 19, scope: !1201, inlinedAt: !1081)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 336, column: 17)
!1202 = !DILocation(line: 204, column: 26, scope: !1147, inlinedAt: !1200)
!1203 = !DILocation(line: 205, column: 9, scope: !1158, inlinedAt: !1200)
!1204 = !DILocation(line: 205, column: 7, scope: !1147, inlinedAt: !1200)
!1205 = !DILocation(line: 207, column: 11, scope: !1161, inlinedAt: !1200)
!1206 = !DILocation(line: 207, column: 55, scope: !1161, inlinedAt: !1200)
!1207 = !DILocation(line: 207, column: 11, scope: !1162, inlinedAt: !1200)
!1208 = !DILocation(line: 948, column: 21, scope: !1027, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 208, column: 9, scope: !1161, inlinedAt: !1200)
!1210 = !DILocation(line: 0, scope: !1027, inlinedAt: !1209)
!1211 = !DILocation(line: 949, column: 3, scope: !1027, inlinedAt: !1209)
!1212 = !DILocation(line: 950, column: 11, scope: !1027, inlinedAt: !1209)
!1213 = !DILocation(line: 950, column: 3, scope: !1027, inlinedAt: !1209)
!1214 = !DILocation(line: 951, column: 3, scope: !1027, inlinedAt: !1209)
!1215 = !DILocation(line: 952, column: 3, scope: !1027, inlinedAt: !1209)
!1216 = !DILocation(line: 346, column: 26, scope: !1076, inlinedAt: !1081)
!1217 = !DILocation(line: 347, column: 20, scope: !1076, inlinedAt: !1081)
!1218 = !DILocation(line: 348, column: 13, scope: !1077, inlinedAt: !1081)
!1219 = !DILocation(line: 356, column: 19, scope: !1220, inlinedAt: !1081)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 356, column: 19)
!1221 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 350, column: 13)
!1222 = !DILocation(line: 356, column: 30, scope: !1220, inlinedAt: !1081)
!1223 = !DILocation(line: 356, column: 19, scope: !1221, inlinedAt: !1081)
!1224 = !DILocation(line: 358, column: 32, scope: !1225, inlinedAt: !1081)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 358, column: 23)
!1226 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 357, column: 17)
!1227 = !DILocation(line: 358, column: 23, scope: !1226, inlinedAt: !1081)
!1228 = !DILocation(line: 377, column: 30, scope: !1229, inlinedAt: !1081)
!1229 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 377, column: 23)
!1230 = !DILocation(line: 149, column: 3, scope: !1231, inlinedAt: !1234)
!1231 = distinct !DISubprogram(name: "next_line_num", scope: !3, file: !3, line: 146, type: !314, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1232)
!1232 = !{!1233}
!1233 = !DILocalVariable(name: "endp", scope: !1231, file: !3, line: 148, type: !8)
!1234 = distinct !DILocation(line: 379, column: 23, scope: !1235, inlinedAt: !1081)
!1235 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 378, column: 21)
!1236 = !DILocation(line: 0, scope: !1231, inlinedAt: !1234)
!1237 = !DILocation(line: 151, column: 18, scope: !1238, inlinedAt: !1234)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 151, column: 11)
!1239 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 150, column: 5)
!1240 = !DILocation(line: 151, column: 21, scope: !1238, inlinedAt: !1234)
!1241 = !DILocation(line: 151, column: 11, scope: !1239, inlinedAt: !1234)
!1242 = !DILocation(line: 153, column: 12, scope: !1239, inlinedAt: !1234)
!1243 = !DILocation(line: 153, column: 15, scope: !1239, inlinedAt: !1234)
!1244 = !DILocation(line: 155, column: 15, scope: !1231, inlinedAt: !1234)
!1245 = !DILocation(line: 154, column: 5, scope: !1239, inlinedAt: !1234)
!1246 = distinct !{!1246, !1230, !1247, !642}
!1247 = !DILocation(line: 155, column: 32, scope: !1231, inlinedAt: !1234)
!1248 = !DILocation(line: 157, column: 22, scope: !1249, inlinedAt: !1234)
!1249 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 157, column: 7)
!1250 = !DILocation(line: 157, column: 7, scope: !1231, inlinedAt: !1234)
!1251 = !DILocation(line: 158, column: 6, scope: !1249, inlinedAt: !1234)
!1252 = !DILocation(line: 158, column: 23, scope: !1249, inlinedAt: !1234)
!1253 = !DILocation(line: 158, column: 5, scope: !1249, inlinedAt: !1234)
!1254 = !DILocation(line: 160, column: 15, scope: !1249, inlinedAt: !1234)
!1255 = !DILocation(line: 161, column: 7, scope: !1256, inlinedAt: !1234)
!1256 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 161, column: 7)
!1257 = !DILocation(line: 161, column: 24, scope: !1256, inlinedAt: !1234)
!1258 = !DILocation(line: 161, column: 22, scope: !1256, inlinedAt: !1234)
!1259 = !DILocation(line: 161, column: 7, scope: !1231, inlinedAt: !1234)
!1260 = !DILocation(line: 162, column: 19, scope: !1256, inlinedAt: !1234)
!1261 = !DILocation(line: 162, column: 5, scope: !1256, inlinedAt: !1234)
!1262 = !DILocation(line: 380, column: 46, scope: !1235, inlinedAt: !1081)
!1263 = !DILocalVariable(name: "__dest", arg: 1, scope: !1264, file: !1113, line: 84, type: !1267)
!1264 = distinct !DISubprogram(name: "stpcpy", scope: !1113, file: !1113, line: 84, type: !1265, scopeLine: 85, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1268)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!8, !1267, !671}
!1267 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!1268 = !{!1263, !1269}
!1269 = !DILocalVariable(name: "__src", arg: 2, scope: !1264, file: !1113, line: 84, type: !671)
!1270 = !DILocation(line: 0, scope: !1264, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 380, column: 31, scope: !1235, inlinedAt: !1081)
!1272 = !DILocation(line: 86, column: 10, scope: !1264, inlinedAt: !1271)
!1273 = !DILocation(line: 381, column: 21, scope: !1235, inlinedAt: !1081)
!1274 = !DILocation(line: 0, scope: !1220, inlinedAt: !1081)
!1275 = !DILocation(line: 385, column: 19, scope: !1221, inlinedAt: !1081)
!1276 = !DILocation(line: 387, column: 23, scope: !1277, inlinedAt: !1081)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 387, column: 23)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 386, column: 17)
!1279 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 385, column: 19)
!1280 = !DILocation(line: 387, column: 23, scope: !1278, inlinedAt: !1081)
!1281 = !DILocation(line: 389, column: 29, scope: !1282, inlinedAt: !1081)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 388, column: 21)
!1283 = !DILocation(line: 389, column: 32, scope: !1282, inlinedAt: !1081)
!1284 = !DILocation(line: 390, column: 29, scope: !1282, inlinedAt: !1081)
!1285 = !DILocation(line: 390, column: 32, scope: !1282, inlinedAt: !1081)
!1286 = !DILocation(line: 391, column: 34, scope: !1282, inlinedAt: !1081)
!1287 = !DILocation(line: 392, column: 21, scope: !1282, inlinedAt: !1081)
!1288 = !DILocation(line: 393, column: 25, scope: !1278, inlinedAt: !1081)
!1289 = !DILocation(line: 393, column: 28, scope: !1278, inlinedAt: !1081)
!1290 = !DILocation(line: 394, column: 17, scope: !1278, inlinedAt: !1081)
!1291 = !DILocation(line: 398, column: 21, scope: !1221, inlinedAt: !1081)
!1292 = !DILocation(line: 398, column: 24, scope: !1221, inlinedAt: !1081)
!1293 = !DILocation(line: 0, scope: !1072, inlinedAt: !1081)
!1294 = !DILocation(line: 402, column: 17, scope: !1073, inlinedAt: !1081)
!1295 = !DILocation(line: 401, column: 9, scope: !1072, inlinedAt: !1081)
!1296 = distinct !{!1296, !1297, !1298, !642}
!1297 = !DILocation(line: 261, column: 7, scope: !1073, inlinedAt: !1081)
!1298 = !DILocation(line: 402, column: 24, scope: !1073, inlinedAt: !1081)
!1299 = !DILocation(line: 406, column: 11, scope: !1300, inlinedAt: !1081)
!1300 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 406, column: 11)
!1301 = !DILocation(line: 406, column: 11, scope: !1073, inlinedAt: !1081)
!1302 = !DILocation(line: 408, column: 17, scope: !1303, inlinedAt: !1081)
!1303 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 407, column: 9)
!1304 = !DILocation(line: 408, column: 20, scope: !1303, inlinedAt: !1081)
!1305 = !DILocation(line: 409, column: 22, scope: !1303, inlinedAt: !1081)
!1306 = !DILocation(line: 410, column: 9, scope: !1303, inlinedAt: !1081)
!1307 = !DILocation(line: 414, column: 20, scope: !1308, inlinedAt: !1081)
!1308 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 414, column: 11)
!1309 = !DILocation(line: 414, column: 25, scope: !1308, inlinedAt: !1081)
!1310 = !DILocation(line: 149, column: 3, scope: !1231, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 416, column: 11, scope: !1312, inlinedAt: !1081)
!1312 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 415, column: 9)
!1313 = !DILocation(line: 0, scope: !1231, inlinedAt: !1311)
!1314 = !DILocation(line: 151, column: 18, scope: !1238, inlinedAt: !1311)
!1315 = !DILocation(line: 151, column: 21, scope: !1238, inlinedAt: !1311)
!1316 = !DILocation(line: 151, column: 11, scope: !1239, inlinedAt: !1311)
!1317 = !DILocation(line: 153, column: 12, scope: !1239, inlinedAt: !1311)
!1318 = !DILocation(line: 153, column: 15, scope: !1239, inlinedAt: !1311)
!1319 = !DILocation(line: 155, column: 15, scope: !1231, inlinedAt: !1311)
!1320 = !DILocation(line: 154, column: 5, scope: !1239, inlinedAt: !1311)
!1321 = distinct !{!1321, !1310, !1322, !642}
!1322 = !DILocation(line: 155, column: 32, scope: !1231, inlinedAt: !1311)
!1323 = !DILocation(line: 157, column: 22, scope: !1249, inlinedAt: !1311)
!1324 = !DILocation(line: 157, column: 7, scope: !1231, inlinedAt: !1311)
!1325 = !DILocation(line: 158, column: 6, scope: !1249, inlinedAt: !1311)
!1326 = !DILocation(line: 158, column: 23, scope: !1249, inlinedAt: !1311)
!1327 = !DILocation(line: 158, column: 5, scope: !1249, inlinedAt: !1311)
!1328 = !DILocation(line: 160, column: 15, scope: !1249, inlinedAt: !1311)
!1329 = !DILocation(line: 161, column: 7, scope: !1256, inlinedAt: !1311)
!1330 = !DILocation(line: 161, column: 24, scope: !1256, inlinedAt: !1311)
!1331 = !DILocation(line: 161, column: 22, scope: !1256, inlinedAt: !1311)
!1332 = !DILocation(line: 161, column: 7, scope: !1231, inlinedAt: !1311)
!1333 = !DILocation(line: 162, column: 19, scope: !1256, inlinedAt: !1311)
!1334 = !DILocation(line: 162, column: 5, scope: !1256, inlinedAt: !1311)
!1335 = !DILocation(line: 417, column: 34, scope: !1312, inlinedAt: !1081)
!1336 = !DILocation(line: 0, scope: !1264, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 417, column: 19, scope: !1312, inlinedAt: !1081)
!1338 = !DILocation(line: 86, column: 10, scope: !1264, inlinedAt: !1337)
!1339 = !DILocation(line: 418, column: 9, scope: !1312, inlinedAt: !1081)
!1340 = !DILocation(line: 0, scope: !1073, inlinedAt: !1081)
!1341 = !DILocation(line: 426, column: 11, scope: !1073, inlinedAt: !1081)
!1342 = !DILocation(line: 430, column: 22, scope: !1343, inlinedAt: !1081)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 430, column: 19)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 429, column: 13)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 427, column: 9)
!1346 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 426, column: 11)
!1347 = !DILocation(line: 430, column: 19, scope: !1344, inlinedAt: !1081)
!1348 = !DILocation(line: 432, column: 26, scope: !1349, inlinedAt: !1081)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 432, column: 23)
!1350 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 431, column: 17)
!1351 = !DILocation(line: 432, column: 23, scope: !1350, inlinedAt: !1081)
!1352 = !DILocation(line: 433, column: 27, scope: !1349, inlinedAt: !1081)
!1353 = !DILocation(line: 433, column: 30, scope: !1349, inlinedAt: !1081)
!1354 = !DILocation(line: 433, column: 21, scope: !1349, inlinedAt: !1081)
!1355 = !DILocation(line: 434, column: 31, scope: !1356, inlinedAt: !1081)
!1356 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 434, column: 28)
!1357 = !DILocation(line: 0, scope: !1356, inlinedAt: !1081)
!1358 = !DILocation(line: 434, column: 28, scope: !1349, inlinedAt: !1081)
!1359 = !DILocation(line: 436, column: 32, scope: !1360, inlinedAt: !1081)
!1360 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 435, column: 21)
!1361 = !DILocation(line: 437, column: 29, scope: !1360, inlinedAt: !1081)
!1362 = !DILocation(line: 437, column: 32, scope: !1360, inlinedAt: !1081)
!1363 = !DILocation(line: 438, column: 21, scope: !1360, inlinedAt: !1081)
!1364 = !DILocation(line: 441, column: 32, scope: !1365, inlinedAt: !1081)
!1365 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 440, column: 21)
!1366 = !DILocation(line: 442, column: 29, scope: !1365, inlinedAt: !1081)
!1367 = !DILocation(line: 442, column: 32, scope: !1365, inlinedAt: !1081)
!1368 = !DILocation(line: 443, column: 30, scope: !1369, inlinedAt: !1081)
!1369 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 443, column: 27)
!1370 = !DILocation(line: 443, column: 27, scope: !1365, inlinedAt: !1081)
!1371 = !DILocation(line: 445, column: 34, scope: !1372, inlinedAt: !1081)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 445, column: 31)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 444, column: 25)
!1374 = !DILocation(line: 445, column: 31, scope: !1373, inlinedAt: !1081)
!1375 = !DILocation(line: 446, column: 43, scope: !1372, inlinedAt: !1081)
!1376 = !DILocation(line: 446, column: 35, scope: !1372, inlinedAt: !1081)
!1377 = !DILocation(line: 446, column: 38, scope: !1372, inlinedAt: !1081)
!1378 = !DILocation(line: 446, column: 29, scope: !1372, inlinedAt: !1081)
!1379 = !DILocation(line: 449, column: 37, scope: !1380, inlinedAt: !1081)
!1380 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 448, column: 29)
!1381 = !DILocation(line: 449, column: 40, scope: !1380, inlinedAt: !1081)
!1382 = !DILocation(line: 450, column: 37, scope: !1380, inlinedAt: !1081)
!1383 = !DILocation(line: 450, column: 40, scope: !1380, inlinedAt: !1081)
!1384 = !DILocation(line: 455, column: 33, scope: !1385, inlinedAt: !1081)
!1385 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 454, column: 25)
!1386 = !DILocation(line: 455, column: 36, scope: !1385, inlinedAt: !1081)
!1387 = !DILocation(line: 456, column: 47, scope: !1385, inlinedAt: !1081)
!1388 = !DILocation(line: 456, column: 33, scope: !1385, inlinedAt: !1081)
!1389 = !DILocation(line: 456, column: 36, scope: !1385, inlinedAt: !1081)
!1390 = !DILocation(line: 460, column: 27, scope: !1391, inlinedAt: !1081)
!1391 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 460, column: 24)
!1392 = !DILocation(line: 460, column: 35, scope: !1391, inlinedAt: !1081)
!1393 = !DILocation(line: 461, column: 23, scope: !1391, inlinedAt: !1081)
!1394 = !DILocation(line: 461, column: 26, scope: !1391, inlinedAt: !1081)
!1395 = !DILocation(line: 461, column: 17, scope: !1391, inlinedAt: !1081)
!1396 = !DILocation(line: 462, column: 27, scope: !1397, inlinedAt: !1081)
!1397 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 462, column: 24)
!1398 = !DILocation(line: 462, column: 24, scope: !1391, inlinedAt: !1081)
!1399 = distinct !{!1399, !1084, !1400}
!1400 = !DILocation(line: 510, column: 5, scope: !1050, inlinedAt: !1081)
!1401 = !DILocation(line: 469, column: 25, scope: !1402, inlinedAt: !1081)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 468, column: 17)
!1403 = !DILocation(line: 469, column: 28, scope: !1402, inlinedAt: !1081)
!1404 = !DILocation(line: 470, column: 33, scope: !1402, inlinedAt: !1081)
!1405 = !DILocation(line: 470, column: 25, scope: !1402, inlinedAt: !1081)
!1406 = !DILocation(line: 470, column: 28, scope: !1402, inlinedAt: !1081)
!1407 = !DILocation(line: 0, scope: !1343, inlinedAt: !1081)
!1408 = !DILocation(line: 473, column: 25, scope: !1344, inlinedAt: !1081)
!1409 = !DILocation(line: 473, column: 20, scope: !1344, inlinedAt: !1081)
!1410 = !DILocation(line: 428, column: 11, scope: !1345, inlinedAt: !1081)
!1411 = distinct !{!1411, !1410, !1412}
!1412 = !DILocation(line: 474, column: 13, scope: !1345, inlinedAt: !1081)
!1413 = !DILocation(line: 481, column: 22, scope: !1414, inlinedAt: !1081)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 481, column: 19)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 480, column: 13)
!1416 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 477, column: 9)
!1417 = !DILocation(line: 481, column: 30, scope: !1414, inlinedAt: !1081)
!1418 = !DILocation(line: 483, column: 25, scope: !1419, inlinedAt: !1081)
!1419 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 482, column: 17)
!1420 = !DILocation(line: 483, column: 28, scope: !1419, inlinedAt: !1081)
!1421 = !DILocation(line: 484, column: 25, scope: !1419, inlinedAt: !1081)
!1422 = !DILocation(line: 484, column: 28, scope: !1419, inlinedAt: !1081)
!1423 = !DILocation(line: 485, column: 17, scope: !1419, inlinedAt: !1081)
!1424 = !DILocation(line: 486, column: 24, scope: !1414, inlinedAt: !1081)
!1425 = !DILocation(line: 488, column: 37, scope: !1426, inlinedAt: !1081)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 488, column: 23)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 487, column: 17)
!1428 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 486, column: 24)
!1429 = !DILocation(line: 488, column: 43, scope: !1426, inlinedAt: !1081)
!1430 = !DILocation(line: 488, column: 51, scope: !1426, inlinedAt: !1081)
!1431 = !DILocation(line: 490, column: 32, scope: !1432, inlinedAt: !1081)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 490, column: 27)
!1433 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 489, column: 21)
!1434 = !DILocation(line: 490, column: 27, scope: !1433, inlinedAt: !1081)
!1435 = !DILocation(line: 491, column: 36, scope: !1432, inlinedAt: !1081)
!1436 = !DILocation(line: 491, column: 25, scope: !1432, inlinedAt: !1081)
!1437 = !DILocation(line: 494, column: 33, scope: !1438, inlinedAt: !1081)
!1438 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 493, column: 25)
!1439 = !DILocation(line: 494, column: 36, scope: !1438, inlinedAt: !1081)
!1440 = !DILocation(line: 495, column: 33, scope: !1438, inlinedAt: !1081)
!1441 = !DILocation(line: 495, column: 36, scope: !1438, inlinedAt: !1081)
!1442 = !DILocation(line: 499, column: 27, scope: !1426, inlinedAt: !1081)
!1443 = !DILocation(line: 499, column: 30, scope: !1426, inlinedAt: !1081)
!1444 = !DILocation(line: 507, column: 25, scope: !1415, inlinedAt: !1081)
!1445 = !DILocation(line: 507, column: 20, scope: !1415, inlinedAt: !1081)
!1446 = !DILocation(line: 479, column: 11, scope: !1416, inlinedAt: !1081)
!1447 = distinct !{!1447, !1446, !1448}
!1448 = !DILocation(line: 508, column: 13, scope: !1416, inlinedAt: !1081)
!1449 = !DILocalVariable(name: "ptr", arg: 1, scope: !1450, file: !1451, line: 75, type: !60)
!1450 = distinct !DISubprogram(name: "alignfree", scope: !1451, file: !1451, line: 75, type: !1452, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1454)
!1451 = !DIFile(filename: "./lib/alignalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0a7d01653c1483fdd96283992acf95d0")
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !60}
!1454 = !{!1449}
!1455 = !DILocation(line: 0, scope: !1450, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 805, column: 11, scope: !248)
!1457 = !DILocation(line: 77, column: 3, scope: !1450, inlinedAt: !1456)
!1458 = !DILocation(line: 0, scope: !246)
!1459 = !DILocation(line: 0, scope: !1450, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 808, column: 7, scope: !232)
!1461 = !DILocation(line: 77, column: 3, scope: !1450, inlinedAt: !1460)
!1462 = !DILocation(line: 808, column: 7, scope: !232)
!1463 = !DILocation(line: 810, column: 5, scope: !232)
!1464 = !DILocation(line: 811, column: 26, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !232, file: !3, line: 811, column: 11)
!1466 = !DILocation(line: 811, column: 36, scope: !1465)
!1467 = !DILocation(line: 811, column: 29, scope: !1465)
!1468 = !DILocation(line: 811, column: 48, scope: !1465)
!1469 = !DILocation(line: 811, column: 11, scope: !232)
!1470 = !DILocation(line: 813, column: 11, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 812, column: 9)
!1472 = !DILocation(line: 815, column: 9, scope: !1471)
!1473 = !DILocation(line: 816, column: 5, scope: !2)
!1474 = !DILocation(line: 817, column: 10, scope: !2)
!1475 = !DILocation(line: 817, column: 19, scope: !2)
!1476 = !DILocation(line: 816, column: 5, scope: !232)
!1477 = distinct !{!1477, !886, !1478, !642}
!1478 = !DILocation(line: 817, column: 25, scope: !2)
!1479 = !DILocation(line: 819, column: 7, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !2, file: !3, line: 819, column: 7)
!1481 = !DILocation(line: 819, column: 7, scope: !2)
!1482 = !DILocation(line: 821, column: 11, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 821, column: 11)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 820, column: 5)
!1485 = !DILocation(line: 821, column: 47, scope: !1483)
!1486 = !DILocation(line: 821, column: 11, scope: !1484)
!1487 = !DILocation(line: 948, column: 21, scope: !1027, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 822, column: 9, scope: !1483)
!1489 = !DILocation(line: 0, scope: !1027, inlinedAt: !1488)
!1490 = !DILocation(line: 949, column: 3, scope: !1027, inlinedAt: !1488)
!1491 = !DILocation(line: 950, column: 11, scope: !1027, inlinedAt: !1488)
!1492 = !DILocation(line: 950, column: 3, scope: !1027, inlinedAt: !1488)
!1493 = !DILocation(line: 951, column: 3, scope: !1027, inlinedAt: !1488)
!1494 = !DILocation(line: 952, column: 3, scope: !1027, inlinedAt: !1488)
!1495 = !DILocation(line: 825, column: 23, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !2, file: !3, line: 825, column: 7)
!1497 = !DILocation(line: 825, column: 26, scope: !1496)
!1498 = !DILocation(line: 825, column: 47, scope: !1496)
!1499 = !DILocation(line: 825, column: 7, scope: !2)
!1500 = !DILocation(line: 826, column: 5, scope: !1496)
!1501 = !DILocation(line: 828, column: 10, scope: !2)
!1502 = !DILocation(line: 829, column: 1, scope: !2)
!1503 = !DISubprogram(name: "bindtextdomain", scope: !665, file: !665, line: 86, type: !1504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!8, !67, !67}
!1506 = !DISubprogram(name: "textdomain", scope: !665, file: !665, line: 82, type: !787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!1507 = !DISubprogram(name: "atexit", scope: !786, file: !786, line: 602, type: !1508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!6, !313}
!1510 = !DISubprogram(name: "getopt_long", scope: !254, file: !254, line: 66, type: !1511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!6, !6, !1513, !67, !1515, !259}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!1516 = !DISubprogram(name: "fstat", scope: !1517, file: !1517, line: 210, type: !1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!1517 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!6, !6, !1520}
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1521 = !DISubprogram(name: "getpagesize", scope: !1522, file: !1522, line: 1011, type: !973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!1522 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1523 = !DISubprogram(name: "open", scope: !1524, file: !1524, line: 181, type: !1525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!1524 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!6, !67, !6, null}
!1527 = !DISubprogram(name: "lseek", scope: !1522, file: !1522, line: 339, type: !1528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!126, !6, !126, !6}
!1530 = !DISubprogram(name: "fflush_unlocked", scope: !239, file: !239, line: 239, type: !1531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!6, !100}
!1533 = !DISubprogram(name: "clearerr_unlocked", scope: !239, file: !239, line: 794, type: !1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !100}
!1536 = !DISubprogram(name: "ioctl", scope: !1537, file: !1537, line: 42, type: !1538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!1537 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/ioctl.h", directory: "", checksumkind: CSK_MD5, checksum: "17041ae374bfd0bee8350d01883d298c")
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!6, !6, !63, null}
!1540 = !DISubprogram(name: "close", scope: !1522, file: !1522, line: 358, type: !1541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!6, !6}
!1543 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !272, file: !272, line: 50, type: !601, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !1544)
!1544 = !{!1545}
!1545 = !DILocalVariable(name: "file", arg: 1, scope: !1543, file: !272, line: 50, type: !67)
!1546 = !DILocation(line: 0, scope: !1543)
!1547 = !DILocation(line: 52, column: 13, scope: !1543)
!1548 = !DILocation(line: 53, column: 1, scope: !1543)
!1549 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !272, file: !272, line: 87, type: !1550, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !1552)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{null, !61}
!1552 = !{!1553}
!1553 = !DILocalVariable(name: "ignore", arg: 1, scope: !1549, file: !272, line: 87, type: !61)
!1554 = !DILocation(line: 0, scope: !1549)
!1555 = !DILocation(line: 89, column: 16, scope: !1549)
!1556 = !{!1557, !1557, i64 0}
!1557 = !{!"_Bool", !577, i64 0}
!1558 = !DILocation(line: 90, column: 1, scope: !1549)
!1559 = distinct !DISubprogram(name: "close_stdout", scope: !272, file: !272, line: 116, type: !314, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !271, retainedNodes: !1560)
!1560 = !{!1561}
!1561 = !DILocalVariable(name: "write_error", scope: !1562, file: !272, line: 121, type: !67)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !272, line: 120, column: 5)
!1563 = distinct !DILexicalBlock(scope: !1559, file: !272, line: 118, column: 7)
!1564 = !DILocation(line: 118, column: 21, scope: !1563)
!1565 = !DILocation(line: 118, column: 7, scope: !1563)
!1566 = !DILocation(line: 118, column: 29, scope: !1563)
!1567 = !DILocation(line: 119, column: 7, scope: !1563)
!1568 = !DILocation(line: 119, column: 12, scope: !1563)
!1569 = !{i8 0, i8 2}
!1570 = !DILocation(line: 119, column: 25, scope: !1563)
!1571 = !DILocation(line: 119, column: 28, scope: !1563)
!1572 = !DILocation(line: 119, column: 34, scope: !1563)
!1573 = !DILocation(line: 118, column: 7, scope: !1559)
!1574 = !DILocation(line: 121, column: 33, scope: !1562)
!1575 = !DILocation(line: 0, scope: !1562)
!1576 = !DILocation(line: 122, column: 11, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1562, file: !272, line: 122, column: 11)
!1578 = !DILocation(line: 0, scope: !1577)
!1579 = !DILocation(line: 122, column: 11, scope: !1562)
!1580 = !DILocation(line: 123, column: 9, scope: !1577)
!1581 = !DILocation(line: 126, column: 9, scope: !1577)
!1582 = !DILocation(line: 128, column: 14, scope: !1562)
!1583 = !DILocation(line: 128, column: 7, scope: !1562)
!1584 = !DILocation(line: 133, column: 42, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1559, file: !272, line: 133, column: 7)
!1586 = !DILocation(line: 133, column: 28, scope: !1585)
!1587 = !DILocation(line: 133, column: 50, scope: !1585)
!1588 = !DILocation(line: 133, column: 7, scope: !1559)
!1589 = !DILocation(line: 134, column: 12, scope: !1585)
!1590 = !DILocation(line: 134, column: 5, scope: !1585)
!1591 = !DILocation(line: 135, column: 1, scope: !1559)
!1592 = distinct !DISubprogram(name: "rpl_copy_file_range", scope: !478, file: !478, line: 41, type: !1593, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1598)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!1595, !6, !1596, !6, !1596, !65, !14}
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1522, line: 220, baseType: !978)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1522, line: 243, baseType: !126)
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604, !1605}
!1599 = !DILocalVariable(name: "infd", arg: 1, scope: !1592, file: !478, line: 41, type: !6)
!1600 = !DILocalVariable(name: "pinoff", arg: 2, scope: !1592, file: !478, line: 41, type: !1596)
!1601 = !DILocalVariable(name: "outfd", arg: 3, scope: !1592, file: !478, line: 42, type: !6)
!1602 = !DILocalVariable(name: "poutoff", arg: 4, scope: !1592, file: !478, line: 42, type: !1596)
!1603 = !DILocalVariable(name: "length", arg: 5, scope: !1592, file: !478, line: 43, type: !65)
!1604 = !DILocalVariable(name: "flags", arg: 6, scope: !1592, file: !478, line: 43, type: !14)
!1605 = !DILocalVariable(name: "ok", scope: !1592, file: !478, line: 48, type: !61)
!1606 = !DILocation(line: 0, scope: !1592)
!1607 = !DILocation(line: 86, column: 11, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !478, line: 78, column: 5)
!1609 = distinct !DILexicalBlock(scope: !1592, file: !478, line: 77, column: 7)
!1610 = !DILocation(line: 90, column: 14, scope: !1608)
!1611 = !DILocation(line: 99, column: 1, scope: !1592)
!1612 = !DISubprogram(name: "copy_file_range", scope: !1522, file: !1522, line: 1142, type: !1613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!1595, !6, !1615, !6, !1615, !65, !14}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!1616 = distinct !DISubprogram(name: "verror", scope: !279, file: !279, line: 251, type: !1617, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !278, retainedNodes: !1619)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !6, !6, !67, !287}
!1619 = !{!1620, !1621, !1622, !1623}
!1620 = !DILocalVariable(name: "status", arg: 1, scope: !1616, file: !279, line: 251, type: !6)
!1621 = !DILocalVariable(name: "errnum", arg: 2, scope: !1616, file: !279, line: 251, type: !6)
!1622 = !DILocalVariable(name: "message", arg: 3, scope: !1616, file: !279, line: 251, type: !67)
!1623 = !DILocalVariable(name: "args", arg: 4, scope: !1616, file: !279, line: 251, type: !287)
!1624 = !DILocation(line: 0, scope: !1616)
!1625 = !DILocation(line: 251, column: 1, scope: !1616)
!1626 = !DILocation(line: 261, column: 3, scope: !1616)
!1627 = !DILocation(line: 265, column: 7, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1616, file: !279, line: 265, column: 7)
!1629 = !DILocation(line: 265, column: 7, scope: !1616)
!1630 = !DILocation(line: 266, column: 5, scope: !1628)
!1631 = !DILocation(line: 272, column: 7, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1628, file: !279, line: 268, column: 5)
!1633 = !DILocation(line: 276, column: 3, scope: !1616)
!1634 = !{i64 0, i64 8, !575, i64 8, i64 8, !575, i64 16, i64 8, !575, i64 24, i64 4, !675, i64 28, i64 4, !675}
!1635 = !DILocation(line: 282, column: 1, scope: !1616)
!1636 = distinct !DISubprogram(name: "flush_stdout", scope: !279, file: !279, line: 163, type: !314, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !278, retainedNodes: !1637)
!1637 = !{!1638}
!1638 = !DILocalVariable(name: "stdout_fd", scope: !1636, file: !279, line: 166, type: !6)
!1639 = !DILocation(line: 0, scope: !1636)
!1640 = !DILocalVariable(name: "fd", arg: 1, scope: !1641, file: !279, line: 145, type: !6)
!1641 = distinct !DISubprogram(name: "is_open", scope: !279, file: !279, line: 145, type: !1541, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !278, retainedNodes: !1642)
!1642 = !{!1640}
!1643 = !DILocation(line: 0, scope: !1641, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 182, column: 25, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1636, file: !279, line: 182, column: 7)
!1646 = !DILocation(line: 157, column: 15, scope: !1641, inlinedAt: !1644)
!1647 = !DILocation(line: 182, column: 25, scope: !1645)
!1648 = !DILocation(line: 182, column: 7, scope: !1636)
!1649 = !DILocation(line: 184, column: 5, scope: !1645)
!1650 = !DILocation(line: 185, column: 1, scope: !1636)
!1651 = distinct !DISubprogram(name: "error_tail", scope: !279, file: !279, line: 219, type: !1617, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !278, retainedNodes: !1652)
!1652 = !{!1653, !1654, !1655, !1656}
!1653 = !DILocalVariable(name: "status", arg: 1, scope: !1651, file: !279, line: 219, type: !6)
!1654 = !DILocalVariable(name: "errnum", arg: 2, scope: !1651, file: !279, line: 219, type: !6)
!1655 = !DILocalVariable(name: "message", arg: 3, scope: !1651, file: !279, line: 219, type: !67)
!1656 = !DILocalVariable(name: "args", arg: 4, scope: !1651, file: !279, line: 219, type: !287)
!1657 = !DILocation(line: 0, scope: !1651)
!1658 = !DILocation(line: 219, column: 1, scope: !1651)
!1659 = !DILocation(line: 229, column: 13, scope: !1651)
!1660 = !DILocation(line: 229, column: 3, scope: !1651)
!1661 = !DILocalVariable(name: "__stream", arg: 1, scope: !1662, file: !1663, line: 132, type: !1666)
!1662 = distinct !DISubprogram(name: "vfprintf", scope: !1663, file: !1663, line: 132, type: !1664, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !278, retainedNodes: !1701)
!1663 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!6, !1666, !671, !288}
!1666 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1667)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !1669)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1669, file: !104, line: 51, baseType: !6, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1669, file: !104, line: 54, baseType: !8, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1669, file: !104, line: 55, baseType: !8, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1669, file: !104, line: 56, baseType: !8, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1669, file: !104, line: 57, baseType: !8, size: 64, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1669, file: !104, line: 58, baseType: !8, size: 64, offset: 320)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1669, file: !104, line: 59, baseType: !8, size: 64, offset: 384)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1669, file: !104, line: 60, baseType: !8, size: 64, offset: 448)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1669, file: !104, line: 61, baseType: !8, size: 64, offset: 512)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1669, file: !104, line: 64, baseType: !8, size: 64, offset: 576)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1669, file: !104, line: 65, baseType: !8, size: 64, offset: 640)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1669, file: !104, line: 66, baseType: !8, size: 64, offset: 704)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1669, file: !104, line: 68, baseType: !119, size: 64, offset: 768)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1669, file: !104, line: 70, baseType: !1685, size: 64, offset: 832)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1669, file: !104, line: 72, baseType: !6, size: 32, offset: 896)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1669, file: !104, line: 73, baseType: !6, size: 32, offset: 928)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1669, file: !104, line: 74, baseType: !126, size: 64, offset: 960)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1669, file: !104, line: 77, baseType: !64, size: 16, offset: 1024)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1669, file: !104, line: 78, baseType: !130, size: 8, offset: 1040)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1669, file: !104, line: 79, baseType: !132, size: 8, offset: 1048)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1669, file: !104, line: 81, baseType: !136, size: 64, offset: 1088)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1669, file: !104, line: 89, baseType: !139, size: 64, offset: 1152)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1669, file: !104, line: 91, baseType: !141, size: 64, offset: 1216)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1669, file: !104, line: 92, baseType: !144, size: 64, offset: 1280)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1669, file: !104, line: 93, baseType: !1685, size: 64, offset: 1344)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1669, file: !104, line: 94, baseType: !60, size: 64, offset: 1408)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1669, file: !104, line: 95, baseType: !65, size: 64, offset: 1472)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1669, file: !104, line: 96, baseType: !6, size: 32, offset: 1536)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1669, file: !104, line: 98, baseType: !151, size: 160, offset: 1568)
!1701 = !{!1661, !1702, !1703}
!1702 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1662, file: !1663, line: 133, type: !671)
!1703 = !DILocalVariable(name: "__ap", arg: 3, scope: !1662, file: !1663, line: 133, type: !288)
!1704 = !DILocation(line: 0, scope: !1662, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 229, column: 3, scope: !1651)
!1706 = !DILocation(line: 135, column: 10, scope: !1662, inlinedAt: !1705)
!1707 = !{!1708, !1710}
!1708 = distinct !{!1708, !1709, !"vfprintf.inline: argument 0"}
!1709 = distinct !{!1709, !"vfprintf.inline"}
!1710 = distinct !{!1710, !1709, !"vfprintf.inline: argument 1"}
!1711 = !DILocation(line: 232, column: 3, scope: !1651)
!1712 = !DILocation(line: 233, column: 7, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1651, file: !279, line: 233, column: 7)
!1714 = !DILocation(line: 233, column: 7, scope: !1651)
!1715 = !DILocalVariable(name: "errnum", arg: 1, scope: !1716, file: !279, line: 188, type: !6)
!1716 = distinct !DISubprogram(name: "print_errno_message", scope: !279, file: !279, line: 188, type: !565, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !278, retainedNodes: !1717)
!1717 = !{!1715, !1718, !1719}
!1718 = !DILocalVariable(name: "s", scope: !1716, file: !279, line: 190, type: !67)
!1719 = !DILocalVariable(name: "errbuf", scope: !1716, file: !279, line: 193, type: !1720)
!1720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8192, elements: !1721)
!1721 = !{!1722}
!1722 = !DISubrange(count: 1024)
!1723 = !DILocation(line: 0, scope: !1716, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 234, column: 5, scope: !1713)
!1725 = !DILocation(line: 193, column: 3, scope: !1716, inlinedAt: !1724)
!1726 = !DILocation(line: 193, column: 8, scope: !1716, inlinedAt: !1724)
!1727 = !DILocation(line: 195, column: 7, scope: !1716, inlinedAt: !1724)
!1728 = !DILocation(line: 207, column: 9, scope: !1729, inlinedAt: !1724)
!1729 = distinct !DILexicalBlock(scope: !1716, file: !279, line: 207, column: 7)
!1730 = !DILocation(line: 207, column: 7, scope: !1716, inlinedAt: !1724)
!1731 = !DILocation(line: 208, column: 9, scope: !1729, inlinedAt: !1724)
!1732 = !DILocation(line: 208, column: 5, scope: !1729, inlinedAt: !1724)
!1733 = !DILocation(line: 214, column: 3, scope: !1716, inlinedAt: !1724)
!1734 = !DILocation(line: 216, column: 1, scope: !1716, inlinedAt: !1724)
!1735 = !DILocation(line: 234, column: 5, scope: !1713)
!1736 = !DILocation(line: 238, column: 3, scope: !1651)
!1737 = !DILocalVariable(name: "__c", arg: 1, scope: !1738, file: !1739, line: 101, type: !6)
!1738 = distinct !DISubprogram(name: "putc_unlocked", scope: !1739, file: !1739, line: 101, type: !1740, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !278, retainedNodes: !1742)
!1739 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!6, !6, !1667}
!1742 = !{!1737, !1743}
!1743 = !DILocalVariable(name: "__stream", arg: 2, scope: !1738, file: !1739, line: 101, type: !1667)
!1744 = !DILocation(line: 0, scope: !1738, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 238, column: 3, scope: !1651)
!1746 = !DILocation(line: 103, column: 10, scope: !1738, inlinedAt: !1745)
!1747 = !{!1748, !576, i64 40}
!1748 = !{!"_IO_FILE", !676, i64 0, !576, i64 8, !576, i64 16, !576, i64 24, !576, i64 32, !576, i64 40, !576, i64 48, !576, i64 56, !576, i64 64, !576, i64 72, !576, i64 80, !576, i64 88, !576, i64 96, !576, i64 104, !676, i64 112, !676, i64 116, !847, i64 120, !710, i64 128, !577, i64 130, !577, i64 131, !576, i64 136, !847, i64 144, !576, i64 152, !576, i64 160, !576, i64 168, !576, i64 176, !847, i64 184, !676, i64 192, !577, i64 196}
!1749 = !{!1748, !576, i64 48}
!1750 = !{!"branch_weights", i32 2000, i32 1}
!1751 = !DILocation(line: 240, column: 3, scope: !1651)
!1752 = !DILocation(line: 241, column: 7, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1651, file: !279, line: 241, column: 7)
!1754 = !DILocation(line: 241, column: 7, scope: !1651)
!1755 = !DILocation(line: 242, column: 5, scope: !1753)
!1756 = !DILocation(line: 243, column: 1, scope: !1651)
!1757 = !DISubprogram(name: "strerror_r", scope: !1758, file: !1758, line: 444, type: !1759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!1758 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!8, !6, !8, !65}
!1761 = !DISubprogram(name: "fcntl", scope: !1524, file: !1524, line: 149, type: !1762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!6, !6, !6, null}
!1764 = distinct !DISubprogram(name: "error", scope: !279, file: !279, line: 285, type: !1765, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !278, retainedNodes: !1767)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{null, !6, !6, !67, null}
!1767 = !{!1768, !1769, !1770, !1771}
!1768 = !DILocalVariable(name: "status", arg: 1, scope: !1764, file: !279, line: 285, type: !6)
!1769 = !DILocalVariable(name: "errnum", arg: 2, scope: !1764, file: !279, line: 285, type: !6)
!1770 = !DILocalVariable(name: "message", arg: 3, scope: !1764, file: !279, line: 285, type: !67)
!1771 = !DILocalVariable(name: "ap", scope: !1764, file: !279, line: 287, type: !287)
!1772 = !DILocation(line: 0, scope: !1764)
!1773 = !DILocation(line: 287, column: 3, scope: !1764)
!1774 = !DILocation(line: 287, column: 11, scope: !1764)
!1775 = !DILocation(line: 288, column: 3, scope: !1764)
!1776 = !DILocation(line: 289, column: 3, scope: !1764)
!1777 = !DILocation(line: 290, column: 3, scope: !1764)
!1778 = !DILocation(line: 291, column: 1, scope: !1764)
!1779 = !DILocation(line: 0, scope: !284)
!1780 = !DILocation(line: 298, column: 1, scope: !284)
!1781 = !DILocation(line: 302, column: 7, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !284, file: !279, line: 302, column: 7)
!1783 = !DILocation(line: 302, column: 7, scope: !284)
!1784 = !DILocation(line: 307, column: 11, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !279, line: 307, column: 11)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !279, line: 303, column: 5)
!1787 = !DILocation(line: 307, column: 27, scope: !1785)
!1788 = !DILocation(line: 308, column: 11, scope: !1785)
!1789 = !DILocation(line: 308, column: 28, scope: !1785)
!1790 = !DILocation(line: 308, column: 25, scope: !1785)
!1791 = !DILocation(line: 309, column: 15, scope: !1785)
!1792 = !DILocation(line: 309, column: 33, scope: !1785)
!1793 = !DILocation(line: 310, column: 19, scope: !1785)
!1794 = !DILocation(line: 311, column: 22, scope: !1785)
!1795 = !DILocation(line: 311, column: 56, scope: !1785)
!1796 = !DILocation(line: 307, column: 11, scope: !1786)
!1797 = !DILocation(line: 316, column: 21, scope: !1786)
!1798 = !DILocation(line: 317, column: 23, scope: !1786)
!1799 = !DILocation(line: 318, column: 5, scope: !1786)
!1800 = !DILocation(line: 327, column: 3, scope: !284)
!1801 = !DILocation(line: 331, column: 7, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !284, file: !279, line: 331, column: 7)
!1803 = !DILocation(line: 331, column: 7, scope: !284)
!1804 = !DILocation(line: 332, column: 5, scope: !1802)
!1805 = !DILocation(line: 338, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !279, line: 334, column: 5)
!1807 = !DILocation(line: 346, column: 3, scope: !284)
!1808 = !DILocation(line: 350, column: 3, scope: !284)
!1809 = !DILocation(line: 356, column: 1, scope: !284)
!1810 = distinct !DISubprogram(name: "error_at_line", scope: !279, file: !279, line: 359, type: !1811, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !278, retainedNodes: !1813)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{null, !6, !6, !67, !14, !67, null}
!1813 = !{!1814, !1815, !1816, !1817, !1818, !1819}
!1814 = !DILocalVariable(name: "status", arg: 1, scope: !1810, file: !279, line: 359, type: !6)
!1815 = !DILocalVariable(name: "errnum", arg: 2, scope: !1810, file: !279, line: 359, type: !6)
!1816 = !DILocalVariable(name: "file_name", arg: 3, scope: !1810, file: !279, line: 359, type: !67)
!1817 = !DILocalVariable(name: "line_number", arg: 4, scope: !1810, file: !279, line: 360, type: !14)
!1818 = !DILocalVariable(name: "message", arg: 5, scope: !1810, file: !279, line: 360, type: !67)
!1819 = !DILocalVariable(name: "ap", scope: !1810, file: !279, line: 362, type: !287)
!1820 = !DILocation(line: 0, scope: !1810)
!1821 = !DILocation(line: 362, column: 3, scope: !1810)
!1822 = !DILocation(line: 362, column: 11, scope: !1810)
!1823 = !DILocation(line: 363, column: 3, scope: !1810)
!1824 = !DILocation(line: 364, column: 3, scope: !1810)
!1825 = !DILocation(line: 366, column: 3, scope: !1810)
!1826 = !DILocation(line: 367, column: 1, scope: !1810)
!1827 = distinct !DISubprogram(name: "fdadvise", scope: !481, file: !481, line: 25, type: !1828, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1831)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{null, !6, !238, !238, !1830}
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !28, line: 51, baseType: !27)
!1831 = !{!1832, !1833, !1834, !1835}
!1832 = !DILocalVariable(name: "fd", arg: 1, scope: !1827, file: !481, line: 25, type: !6)
!1833 = !DILocalVariable(name: "offset", arg: 2, scope: !1827, file: !481, line: 25, type: !238)
!1834 = !DILocalVariable(name: "len", arg: 3, scope: !1827, file: !481, line: 25, type: !238)
!1835 = !DILocalVariable(name: "advice", arg: 4, scope: !1827, file: !481, line: 25, type: !1830)
!1836 = !DILocation(line: 0, scope: !1827)
!1837 = !DILocation(line: 28, column: 3, scope: !1827)
!1838 = !DILocation(line: 30, column: 1, scope: !1827)
!1839 = !DISubprogram(name: "posix_fadvise", scope: !1524, file: !1524, line: 273, type: !1840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!6, !6, !238, !238, !6}
!1842 = distinct !DISubprogram(name: "fadvise", scope: !481, file: !481, line: 33, type: !1843, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1879)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{null, !1845, !1830}
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !1847)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !1848)
!1848 = !{!1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1847, file: !104, line: 51, baseType: !6, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1847, file: !104, line: 54, baseType: !8, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1847, file: !104, line: 55, baseType: !8, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1847, file: !104, line: 56, baseType: !8, size: 64, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1847, file: !104, line: 57, baseType: !8, size: 64, offset: 256)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1847, file: !104, line: 58, baseType: !8, size: 64, offset: 320)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1847, file: !104, line: 59, baseType: !8, size: 64, offset: 384)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1847, file: !104, line: 60, baseType: !8, size: 64, offset: 448)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1847, file: !104, line: 61, baseType: !8, size: 64, offset: 512)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1847, file: !104, line: 64, baseType: !8, size: 64, offset: 576)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1847, file: !104, line: 65, baseType: !8, size: 64, offset: 640)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1847, file: !104, line: 66, baseType: !8, size: 64, offset: 704)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1847, file: !104, line: 68, baseType: !119, size: 64, offset: 768)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1847, file: !104, line: 70, baseType: !1863, size: 64, offset: 832)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1847, file: !104, line: 72, baseType: !6, size: 32, offset: 896)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1847, file: !104, line: 73, baseType: !6, size: 32, offset: 928)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1847, file: !104, line: 74, baseType: !126, size: 64, offset: 960)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1847, file: !104, line: 77, baseType: !64, size: 16, offset: 1024)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1847, file: !104, line: 78, baseType: !130, size: 8, offset: 1040)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1847, file: !104, line: 79, baseType: !132, size: 8, offset: 1048)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1847, file: !104, line: 81, baseType: !136, size: 64, offset: 1088)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1847, file: !104, line: 89, baseType: !139, size: 64, offset: 1152)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1847, file: !104, line: 91, baseType: !141, size: 64, offset: 1216)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1847, file: !104, line: 92, baseType: !144, size: 64, offset: 1280)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1847, file: !104, line: 93, baseType: !1863, size: 64, offset: 1344)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1847, file: !104, line: 94, baseType: !60, size: 64, offset: 1408)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1847, file: !104, line: 95, baseType: !65, size: 64, offset: 1472)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1847, file: !104, line: 96, baseType: !6, size: 32, offset: 1536)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1847, file: !104, line: 98, baseType: !151, size: 160, offset: 1568)
!1879 = !{!1880, !1881}
!1880 = !DILocalVariable(name: "fp", arg: 1, scope: !1842, file: !481, line: 33, type: !1845)
!1881 = !DILocalVariable(name: "advice", arg: 2, scope: !1842, file: !481, line: 33, type: !1830)
!1882 = !DILocation(line: 0, scope: !1842)
!1883 = !DILocation(line: 35, column: 7, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1842, file: !481, line: 35, column: 7)
!1885 = !DILocation(line: 35, column: 7, scope: !1842)
!1886 = !DILocation(line: 36, column: 15, scope: !1884)
!1887 = !DILocation(line: 0, scope: !1827, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 36, column: 5, scope: !1884)
!1889 = !DILocation(line: 28, column: 3, scope: !1827, inlinedAt: !1888)
!1890 = !DILocation(line: 36, column: 5, scope: !1884)
!1891 = !DILocation(line: 37, column: 1, scope: !1842)
!1892 = !DISubprogram(name: "fileno", scope: !239, file: !239, line: 809, type: !1893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!6, !1845}
!1895 = distinct !DISubprogram(name: "rpl_fcntl", scope: !319, file: !319, line: 202, type: !1762, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !1896)
!1896 = !{!1897, !1898, !1899, !1910, !1911, !1914, !1916, !1920}
!1897 = !DILocalVariable(name: "fd", arg: 1, scope: !1895, file: !319, line: 202, type: !6)
!1898 = !DILocalVariable(name: "action", arg: 2, scope: !1895, file: !319, line: 202, type: !6)
!1899 = !DILocalVariable(name: "arg", scope: !1895, file: !319, line: 208, type: !1900)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !289, line: 14, baseType: !1901)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1902, baseType: !1903)
!1902 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !293, size: 256, elements: !1904)
!1904 = !{!1905, !1906, !1907, !1908, !1909}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1903, file: !1902, line: 208, baseType: !60, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1903, file: !1902, line: 208, baseType: !60, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1903, file: !1902, line: 208, baseType: !60, size: 64, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1903, file: !1902, line: 208, baseType: !6, size: 32, offset: 192)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1903, file: !1902, line: 208, baseType: !6, size: 32, offset: 224)
!1910 = !DILocalVariable(name: "result", scope: !1895, file: !319, line: 211, type: !6)
!1911 = !DILocalVariable(name: "target", scope: !1912, file: !319, line: 216, type: !6)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !319, line: 215, column: 7)
!1913 = distinct !DILexicalBlock(scope: !1895, file: !319, line: 213, column: 5)
!1914 = !DILocalVariable(name: "target", scope: !1915, file: !319, line: 223, type: !6)
!1915 = distinct !DILexicalBlock(scope: !1913, file: !319, line: 222, column: 7)
!1916 = !DILocalVariable(name: "x", scope: !1917, file: !319, line: 418, type: !6)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !319, line: 417, column: 13)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !319, line: 261, column: 11)
!1919 = distinct !DILexicalBlock(scope: !1913, file: !319, line: 258, column: 7)
!1920 = !DILocalVariable(name: "p", scope: !1921, file: !319, line: 426, type: !60)
!1921 = distinct !DILexicalBlock(scope: !1918, file: !319, line: 425, column: 13)
!1922 = !DILocation(line: 0, scope: !1895)
!1923 = !DILocation(line: 208, column: 3, scope: !1895)
!1924 = !DILocation(line: 208, column: 11, scope: !1895)
!1925 = !DILocation(line: 209, column: 3, scope: !1895)
!1926 = !DILocation(line: 212, column: 3, scope: !1895)
!1927 = !DILocation(line: 216, column: 22, scope: !1912)
!1928 = !DILocation(line: 0, scope: !1912)
!1929 = !DILocalVariable(name: "fd", arg: 1, scope: !1930, file: !319, line: 444, type: !6)
!1930 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !319, file: !319, line: 444, type: !320, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !1931)
!1931 = !{!1929, !1932, !1933}
!1932 = !DILocalVariable(name: "target", arg: 2, scope: !1930, file: !319, line: 444, type: !6)
!1933 = !DILocalVariable(name: "result", scope: !1930, file: !319, line: 446, type: !6)
!1934 = !DILocation(line: 0, scope: !1930, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 217, column: 18, scope: !1912)
!1936 = !DILocation(line: 479, column: 12, scope: !1930, inlinedAt: !1935)
!1937 = !DILocation(line: 223, column: 22, scope: !1915)
!1938 = !DILocation(line: 0, scope: !1915)
!1939 = !DILocation(line: 0, scope: !318, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 224, column: 18, scope: !1915)
!1941 = !DILocation(line: 507, column: 12, scope: !1942, inlinedAt: !1940)
!1942 = distinct !DILexicalBlock(scope: !318, file: !319, line: 507, column: 7)
!1943 = !DILocation(line: 507, column: 9, scope: !1942, inlinedAt: !1940)
!1944 = !DILocation(line: 507, column: 7, scope: !318, inlinedAt: !1940)
!1945 = !DILocation(line: 509, column: 16, scope: !1946, inlinedAt: !1940)
!1946 = distinct !DILexicalBlock(scope: !1942, file: !319, line: 508, column: 5)
!1947 = !DILocation(line: 510, column: 13, scope: !1948, inlinedAt: !1940)
!1948 = distinct !DILexicalBlock(scope: !1946, file: !319, line: 510, column: 11)
!1949 = !DILocation(line: 510, column: 23, scope: !1948, inlinedAt: !1940)
!1950 = !DILocation(line: 510, column: 26, scope: !1948, inlinedAt: !1940)
!1951 = !DILocation(line: 510, column: 32, scope: !1948, inlinedAt: !1940)
!1952 = !DILocation(line: 510, column: 11, scope: !1946, inlinedAt: !1940)
!1953 = !DILocation(line: 512, column: 30, scope: !1954, inlinedAt: !1940)
!1954 = distinct !DILexicalBlock(scope: !1948, file: !319, line: 511, column: 9)
!1955 = !DILocation(line: 528, column: 19, scope: !330, inlinedAt: !1940)
!1956 = !DILocation(line: 0, scope: !1930, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 520, column: 20, scope: !1958, inlinedAt: !1940)
!1958 = distinct !DILexicalBlock(scope: !1948, file: !319, line: 519, column: 9)
!1959 = !DILocation(line: 479, column: 12, scope: !1930, inlinedAt: !1957)
!1960 = !DILocation(line: 521, column: 22, scope: !1961, inlinedAt: !1940)
!1961 = distinct !DILexicalBlock(scope: !1958, file: !319, line: 521, column: 15)
!1962 = !DILocation(line: 521, column: 15, scope: !1958, inlinedAt: !1940)
!1963 = !DILocation(line: 522, column: 32, scope: !1961, inlinedAt: !1940)
!1964 = !DILocation(line: 522, column: 13, scope: !1961, inlinedAt: !1940)
!1965 = !DILocation(line: 0, scope: !1930, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 527, column: 14, scope: !1942, inlinedAt: !1940)
!1967 = !DILocation(line: 479, column: 12, scope: !1930, inlinedAt: !1966)
!1968 = !DILocation(line: 0, scope: !1942, inlinedAt: !1940)
!1969 = !DILocation(line: 528, column: 9, scope: !330, inlinedAt: !1940)
!1970 = !DILocation(line: 530, column: 19, scope: !329, inlinedAt: !1940)
!1971 = !DILocation(line: 0, scope: !329, inlinedAt: !1940)
!1972 = !DILocation(line: 531, column: 17, scope: !333, inlinedAt: !1940)
!1973 = !DILocation(line: 531, column: 21, scope: !333, inlinedAt: !1940)
!1974 = !DILocation(line: 531, column: 54, scope: !333, inlinedAt: !1940)
!1975 = !DILocation(line: 531, column: 24, scope: !333, inlinedAt: !1940)
!1976 = !DILocation(line: 531, column: 68, scope: !333, inlinedAt: !1940)
!1977 = !DILocation(line: 531, column: 11, scope: !329, inlinedAt: !1940)
!1978 = !DILocation(line: 533, column: 29, scope: !332, inlinedAt: !1940)
!1979 = !DILocation(line: 0, scope: !332, inlinedAt: !1940)
!1980 = !DILocation(line: 534, column: 11, scope: !332, inlinedAt: !1940)
!1981 = !DILocation(line: 535, column: 17, scope: !332, inlinedAt: !1940)
!1982 = !DILocation(line: 537, column: 9, scope: !332, inlinedAt: !1940)
!1983 = !DILocation(line: 329, column: 22, scope: !1918)
!1984 = !DILocation(line: 330, column: 13, scope: !1918)
!1985 = !DILocation(line: 418, column: 23, scope: !1917)
!1986 = !DILocation(line: 0, scope: !1917)
!1987 = !DILocation(line: 419, column: 24, scope: !1917)
!1988 = !DILocation(line: 421, column: 13, scope: !1918)
!1989 = !DILocation(line: 426, column: 25, scope: !1921)
!1990 = !DILocation(line: 0, scope: !1921)
!1991 = !DILocation(line: 427, column: 24, scope: !1921)
!1992 = !DILocation(line: 429, column: 13, scope: !1918)
!1993 = !DILocation(line: 0, scope: !1913)
!1994 = !DILocation(line: 438, column: 3, scope: !1895)
!1995 = !DILocation(line: 441, column: 1, scope: !1895)
!1996 = !DILocation(line: 440, column: 3, scope: !1895)
!1997 = distinct !DISubprogram(name: "fpurge", scope: !484, file: !484, line: 32, type: !1998, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !2034)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!6, !2000}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !2002)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !2003)
!2003 = !{!2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2002, file: !104, line: 51, baseType: !6, size: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2002, file: !104, line: 54, baseType: !8, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2002, file: !104, line: 55, baseType: !8, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2002, file: !104, line: 56, baseType: !8, size: 64, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2002, file: !104, line: 57, baseType: !8, size: 64, offset: 256)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2002, file: !104, line: 58, baseType: !8, size: 64, offset: 320)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2002, file: !104, line: 59, baseType: !8, size: 64, offset: 384)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2002, file: !104, line: 60, baseType: !8, size: 64, offset: 448)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2002, file: !104, line: 61, baseType: !8, size: 64, offset: 512)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2002, file: !104, line: 64, baseType: !8, size: 64, offset: 576)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2002, file: !104, line: 65, baseType: !8, size: 64, offset: 640)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2002, file: !104, line: 66, baseType: !8, size: 64, offset: 704)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2002, file: !104, line: 68, baseType: !119, size: 64, offset: 768)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2002, file: !104, line: 70, baseType: !2018, size: 64, offset: 832)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2002, file: !104, line: 72, baseType: !6, size: 32, offset: 896)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2002, file: !104, line: 73, baseType: !6, size: 32, offset: 928)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2002, file: !104, line: 74, baseType: !126, size: 64, offset: 960)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2002, file: !104, line: 77, baseType: !64, size: 16, offset: 1024)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2002, file: !104, line: 78, baseType: !130, size: 8, offset: 1040)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2002, file: !104, line: 79, baseType: !132, size: 8, offset: 1048)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2002, file: !104, line: 81, baseType: !136, size: 64, offset: 1088)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2002, file: !104, line: 89, baseType: !139, size: 64, offset: 1152)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2002, file: !104, line: 91, baseType: !141, size: 64, offset: 1216)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2002, file: !104, line: 92, baseType: !144, size: 64, offset: 1280)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2002, file: !104, line: 93, baseType: !2018, size: 64, offset: 1344)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2002, file: !104, line: 94, baseType: !60, size: 64, offset: 1408)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2002, file: !104, line: 95, baseType: !65, size: 64, offset: 1472)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2002, file: !104, line: 96, baseType: !6, size: 32, offset: 1536)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2002, file: !104, line: 98, baseType: !151, size: 160, offset: 1568)
!2034 = !{!2035}
!2035 = !DILocalVariable(name: "fp", arg: 1, scope: !1997, file: !484, line: 32, type: !2000)
!2036 = !DILocation(line: 0, scope: !1997)
!2037 = !DILocation(line: 36, column: 3, scope: !1997)
!2038 = !DILocation(line: 38, column: 3, scope: !1997)
!2039 = distinct !DISubprogram(name: "full_write", scope: !486, file: !486, line: 58, type: !2040, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!223, !6, !793, !223}
!2042 = !{!2043, !2044, !2045, !2046, !2047, !2048}
!2043 = !DILocalVariable(name: "fd", arg: 1, scope: !2039, file: !486, line: 58, type: !6)
!2044 = !DILocalVariable(name: "buf", arg: 2, scope: !2039, file: !486, line: 58, type: !793)
!2045 = !DILocalVariable(name: "count", arg: 3, scope: !2039, file: !486, line: 58, type: !223)
!2046 = !DILocalVariable(name: "total", scope: !2039, file: !486, line: 60, type: !223)
!2047 = !DILocalVariable(name: "ptr", scope: !2039, file: !486, line: 61, type: !67)
!2048 = !DILocalVariable(name: "n_rw", scope: !2049, file: !486, line: 65, type: !225)
!2049 = distinct !DILexicalBlock(scope: !2039, file: !486, line: 64, column: 5)
!2050 = !DILocation(line: 0, scope: !2039)
!2051 = !DILocation(line: 63, column: 16, scope: !2039)
!2052 = !DILocation(line: 63, column: 3, scope: !2039)
!2053 = !DILocation(line: 65, column: 24, scope: !2049)
!2054 = !DILocation(line: 0, scope: !2049)
!2055 = !DILocation(line: 66, column: 16, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2049, file: !486, line: 66, column: 11)
!2057 = !DILocation(line: 66, column: 11, scope: !2049)
!2058 = !DILocation(line: 68, column: 16, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2049, file: !486, line: 68, column: 11)
!2060 = !DILocation(line: 68, column: 11, scope: !2049)
!2061 = !DILocation(line: 70, column: 11, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2059, file: !486, line: 69, column: 9)
!2063 = !DILocation(line: 70, column: 17, scope: !2062)
!2064 = !DILocation(line: 71, column: 11, scope: !2062)
!2065 = !DILocation(line: 73, column: 13, scope: !2049)
!2066 = !DILocation(line: 74, column: 11, scope: !2049)
!2067 = !DILocation(line: 75, column: 13, scope: !2049)
!2068 = !DILocation(line: 78, column: 3, scope: !2039)
!2069 = distinct !DISubprogram(name: "getprogname", scope: !489, file: !489, line: 54, type: !2070, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !584)
!2070 = !DISubroutineType(types: !487)
!2071 = !DILocation(line: 58, column: 10, scope: !2069)
!2072 = !DILocation(line: 58, column: 3, scope: !2069)
!2073 = distinct !DISubprogram(name: "set_program_name", scope: !337, file: !337, line: 37, type: !601, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !2074)
!2074 = !{!2075, !2076, !2077}
!2075 = !DILocalVariable(name: "argv0", arg: 1, scope: !2073, file: !337, line: 37, type: !67)
!2076 = !DILocalVariable(name: "slash", scope: !2073, file: !337, line: 44, type: !67)
!2077 = !DILocalVariable(name: "base", scope: !2073, file: !337, line: 45, type: !67)
!2078 = !DILocation(line: 0, scope: !2073)
!2079 = !DILocation(line: 44, column: 23, scope: !2073)
!2080 = !DILocation(line: 45, column: 22, scope: !2073)
!2081 = !DILocation(line: 46, column: 17, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2073, file: !337, line: 46, column: 7)
!2083 = !DILocation(line: 46, column: 9, scope: !2082)
!2084 = !DILocation(line: 46, column: 25, scope: !2082)
!2085 = !DILocation(line: 46, column: 40, scope: !2082)
!2086 = !DILocalVariable(name: "__s1", arg: 1, scope: !2087, file: !626, line: 974, type: !793)
!2087 = distinct !DISubprogram(name: "memeq", scope: !626, file: !626, line: 974, type: !2088, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !2090)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!61, !793, !793, !65}
!2090 = !{!2086, !2091, !2092}
!2091 = !DILocalVariable(name: "__s2", arg: 2, scope: !2087, file: !626, line: 974, type: !793)
!2092 = !DILocalVariable(name: "__n", arg: 3, scope: !2087, file: !626, line: 974, type: !65)
!2093 = !DILocation(line: 0, scope: !2087, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 46, column: 28, scope: !2082)
!2095 = !DILocation(line: 976, column: 11, scope: !2087, inlinedAt: !2094)
!2096 = !DILocation(line: 976, column: 10, scope: !2087, inlinedAt: !2094)
!2097 = !DILocation(line: 46, column: 7, scope: !2073)
!2098 = !DILocation(line: 49, column: 11, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !337, line: 49, column: 11)
!2100 = distinct !DILexicalBlock(scope: !2082, file: !337, line: 47, column: 5)
!2101 = !DILocation(line: 49, column: 36, scope: !2099)
!2102 = !DILocation(line: 49, column: 11, scope: !2100)
!2103 = !DILocation(line: 65, column: 16, scope: !2073)
!2104 = !DILocation(line: 71, column: 27, scope: !2073)
!2105 = !DILocation(line: 74, column: 33, scope: !2073)
!2106 = !DILocation(line: 76, column: 1, scope: !2073)
!2107 = !DILocation(line: 0, scope: !342)
!2108 = !DILocation(line: 40, column: 29, scope: !342)
!2109 = !DILocation(line: 41, column: 19, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !342, file: !343, line: 41, column: 7)
!2111 = !DILocation(line: 41, column: 7, scope: !342)
!2112 = !DILocation(line: 47, column: 3, scope: !342)
!2113 = !DILocation(line: 48, column: 3, scope: !342)
!2114 = !DILocation(line: 48, column: 13, scope: !342)
!2115 = !DILocalVariable(name: "ps", arg: 1, scope: !2116, file: !2117, line: 1135, type: !2120)
!2116 = distinct !DISubprogram(name: "mbszero", scope: !2117, file: !2117, line: 1135, type: !2118, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !346, retainedNodes: !2121)
!2117 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !2120}
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!2121 = !{!2115}
!2122 = !DILocation(line: 0, scope: !2116, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 48, column: 18, scope: !342)
!2124 = !DILocalVariable(name: "__dest", arg: 1, scope: !2125, file: !1113, line: 57, type: !60)
!2125 = distinct !DISubprogram(name: "memset", scope: !1113, file: !1113, line: 57, type: !2126, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !346, retainedNodes: !2128)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!60, !60, !6, !65}
!2128 = !{!2124, !2129, !2130}
!2129 = !DILocalVariable(name: "__ch", arg: 2, scope: !2125, file: !1113, line: 57, type: !6)
!2130 = !DILocalVariable(name: "__len", arg: 3, scope: !2125, file: !1113, line: 57, type: !65)
!2131 = !DILocation(line: 0, scope: !2125, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 1137, column: 3, scope: !2116, inlinedAt: !2123)
!2133 = !DILocation(line: 59, column: 10, scope: !2125, inlinedAt: !2132)
!2134 = !DILocation(line: 49, column: 7, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !342, file: !343, line: 49, column: 7)
!2136 = !DILocation(line: 49, column: 39, scope: !2135)
!2137 = !DILocation(line: 49, column: 44, scope: !2135)
!2138 = !DILocation(line: 54, column: 1, scope: !342)
!2139 = !DISubprogram(name: "mbrtoc32", scope: !354, file: !354, line: 57, type: !2140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!65, !2142, !671, !65, !2144}
!2142 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2143)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2120)
!2145 = distinct !DISubprogram(name: "clone_quoting_options", scope: !377, file: !377, line: 113, type: !2146, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2149)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!2148, !2148}
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!2149 = !{!2150, !2151, !2152}
!2150 = !DILocalVariable(name: "o", arg: 1, scope: !2145, file: !377, line: 113, type: !2148)
!2151 = !DILocalVariable(name: "saved_errno", scope: !2145, file: !377, line: 115, type: !6)
!2152 = !DILocalVariable(name: "p", scope: !2145, file: !377, line: 116, type: !2148)
!2153 = !DILocation(line: 0, scope: !2145)
!2154 = !DILocation(line: 115, column: 21, scope: !2145)
!2155 = !DILocation(line: 116, column: 40, scope: !2145)
!2156 = !DILocation(line: 116, column: 31, scope: !2145)
!2157 = !DILocation(line: 118, column: 9, scope: !2145)
!2158 = !DILocation(line: 119, column: 3, scope: !2145)
!2159 = distinct !DISubprogram(name: "get_quoting_style", scope: !377, file: !377, line: 124, type: !2160, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2164)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!12, !2162}
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!2164 = !{!2165}
!2165 = !DILocalVariable(name: "o", arg: 1, scope: !2159, file: !377, line: 124, type: !2162)
!2166 = !DILocation(line: 0, scope: !2159)
!2167 = !DILocation(line: 126, column: 11, scope: !2159)
!2168 = !DILocation(line: 126, column: 46, scope: !2159)
!2169 = !{!2170, !577, i64 0}
!2170 = !{!"quoting_options", !577, i64 0, !676, i64 4, !577, i64 8, !576, i64 40, !576, i64 48}
!2171 = !DILocation(line: 126, column: 3, scope: !2159)
!2172 = distinct !DISubprogram(name: "set_quoting_style", scope: !377, file: !377, line: 132, type: !2173, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2175)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !2148, !12}
!2175 = !{!2176, !2177}
!2176 = !DILocalVariable(name: "o", arg: 1, scope: !2172, file: !377, line: 132, type: !2148)
!2177 = !DILocalVariable(name: "s", arg: 2, scope: !2172, file: !377, line: 132, type: !12)
!2178 = !DILocation(line: 0, scope: !2172)
!2179 = !DILocation(line: 134, column: 4, scope: !2172)
!2180 = !DILocation(line: 134, column: 39, scope: !2172)
!2181 = !DILocation(line: 134, column: 45, scope: !2172)
!2182 = !DILocation(line: 135, column: 1, scope: !2172)
!2183 = distinct !DISubprogram(name: "set_char_quoting", scope: !377, file: !377, line: 143, type: !2184, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2186)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!6, !2148, !9, !6}
!2186 = !{!2187, !2188, !2189, !2190, !2191, !2193, !2194}
!2187 = !DILocalVariable(name: "o", arg: 1, scope: !2183, file: !377, line: 143, type: !2148)
!2188 = !DILocalVariable(name: "c", arg: 2, scope: !2183, file: !377, line: 143, type: !9)
!2189 = !DILocalVariable(name: "i", arg: 3, scope: !2183, file: !377, line: 143, type: !6)
!2190 = !DILocalVariable(name: "uc", scope: !2183, file: !377, line: 145, type: !69)
!2191 = !DILocalVariable(name: "p", scope: !2183, file: !377, line: 146, type: !2192)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!2193 = !DILocalVariable(name: "shift", scope: !2183, file: !377, line: 148, type: !6)
!2194 = !DILocalVariable(name: "r", scope: !2183, file: !377, line: 149, type: !14)
!2195 = !DILocation(line: 0, scope: !2183)
!2196 = !DILocation(line: 147, column: 6, scope: !2183)
!2197 = !DILocation(line: 147, column: 62, scope: !2183)
!2198 = !DILocation(line: 147, column: 57, scope: !2183)
!2199 = !DILocation(line: 148, column: 15, scope: !2183)
!2200 = !DILocation(line: 149, column: 21, scope: !2183)
!2201 = !DILocation(line: 149, column: 24, scope: !2183)
!2202 = !DILocation(line: 149, column: 34, scope: !2183)
!2203 = !DILocation(line: 150, column: 13, scope: !2183)
!2204 = !DILocation(line: 150, column: 19, scope: !2183)
!2205 = !DILocation(line: 150, column: 24, scope: !2183)
!2206 = !DILocation(line: 150, column: 6, scope: !2183)
!2207 = !DILocation(line: 151, column: 3, scope: !2183)
!2208 = distinct !DISubprogram(name: "set_quoting_flags", scope: !377, file: !377, line: 159, type: !2209, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!6, !2148, !6}
!2211 = !{!2212, !2213, !2214}
!2212 = !DILocalVariable(name: "o", arg: 1, scope: !2208, file: !377, line: 159, type: !2148)
!2213 = !DILocalVariable(name: "i", arg: 2, scope: !2208, file: !377, line: 159, type: !6)
!2214 = !DILocalVariable(name: "r", scope: !2208, file: !377, line: 163, type: !6)
!2215 = !DILocation(line: 0, scope: !2208)
!2216 = !DILocation(line: 161, column: 8, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2208, file: !377, line: 161, column: 7)
!2218 = !DILocation(line: 161, column: 7, scope: !2208)
!2219 = !DILocation(line: 163, column: 14, scope: !2208)
!2220 = !{!2170, !676, i64 4}
!2221 = !DILocation(line: 164, column: 12, scope: !2208)
!2222 = !DILocation(line: 165, column: 3, scope: !2208)
!2223 = distinct !DISubprogram(name: "set_custom_quoting", scope: !377, file: !377, line: 169, type: !2224, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2226)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{null, !2148, !67, !67}
!2226 = !{!2227, !2228, !2229}
!2227 = !DILocalVariable(name: "o", arg: 1, scope: !2223, file: !377, line: 169, type: !2148)
!2228 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2223, file: !377, line: 170, type: !67)
!2229 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2223, file: !377, line: 170, type: !67)
!2230 = !DILocation(line: 0, scope: !2223)
!2231 = !DILocation(line: 172, column: 8, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2223, file: !377, line: 172, column: 7)
!2233 = !DILocation(line: 172, column: 7, scope: !2223)
!2234 = !DILocation(line: 174, column: 6, scope: !2223)
!2235 = !DILocation(line: 174, column: 12, scope: !2223)
!2236 = !DILocation(line: 175, column: 8, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2223, file: !377, line: 175, column: 7)
!2238 = !DILocation(line: 175, column: 19, scope: !2237)
!2239 = !DILocation(line: 176, column: 5, scope: !2237)
!2240 = !DILocation(line: 177, column: 6, scope: !2223)
!2241 = !DILocation(line: 177, column: 17, scope: !2223)
!2242 = !{!2170, !576, i64 40}
!2243 = !DILocation(line: 178, column: 6, scope: !2223)
!2244 = !DILocation(line: 178, column: 18, scope: !2223)
!2245 = !{!2170, !576, i64 48}
!2246 = !DILocation(line: 179, column: 1, scope: !2223)
!2247 = distinct !DISubprogram(name: "quotearg_buffer", scope: !377, file: !377, line: 774, type: !2248, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2250)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!65, !8, !65, !67, !65, !2162}
!2250 = !{!2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258}
!2251 = !DILocalVariable(name: "buffer", arg: 1, scope: !2247, file: !377, line: 774, type: !8)
!2252 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2247, file: !377, line: 774, type: !65)
!2253 = !DILocalVariable(name: "arg", arg: 3, scope: !2247, file: !377, line: 775, type: !67)
!2254 = !DILocalVariable(name: "argsize", arg: 4, scope: !2247, file: !377, line: 775, type: !65)
!2255 = !DILocalVariable(name: "o", arg: 5, scope: !2247, file: !377, line: 776, type: !2162)
!2256 = !DILocalVariable(name: "p", scope: !2247, file: !377, line: 778, type: !2162)
!2257 = !DILocalVariable(name: "saved_errno", scope: !2247, file: !377, line: 779, type: !6)
!2258 = !DILocalVariable(name: "r", scope: !2247, file: !377, line: 780, type: !65)
!2259 = !DILocation(line: 0, scope: !2247)
!2260 = !DILocation(line: 778, column: 37, scope: !2247)
!2261 = !DILocation(line: 779, column: 21, scope: !2247)
!2262 = !DILocation(line: 781, column: 43, scope: !2247)
!2263 = !DILocation(line: 781, column: 53, scope: !2247)
!2264 = !DILocation(line: 781, column: 60, scope: !2247)
!2265 = !DILocation(line: 782, column: 43, scope: !2247)
!2266 = !DILocation(line: 782, column: 58, scope: !2247)
!2267 = !DILocation(line: 780, column: 14, scope: !2247)
!2268 = !DILocation(line: 783, column: 9, scope: !2247)
!2269 = !DILocation(line: 784, column: 3, scope: !2247)
!2270 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !377, file: !377, line: 251, type: !2271, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2275)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!65, !8, !65, !67, !65, !12, !6, !2273, !67, !67}
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!2275 = !{!2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2300, !2302, !2305, !2306, !2307, !2308, !2311, !2312, !2315, !2319, !2320, !2328, !2331, !2332, !2334, !2335, !2336, !2337}
!2276 = !DILocalVariable(name: "buffer", arg: 1, scope: !2270, file: !377, line: 251, type: !8)
!2277 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2270, file: !377, line: 251, type: !65)
!2278 = !DILocalVariable(name: "arg", arg: 3, scope: !2270, file: !377, line: 252, type: !67)
!2279 = !DILocalVariable(name: "argsize", arg: 4, scope: !2270, file: !377, line: 252, type: !65)
!2280 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2270, file: !377, line: 253, type: !12)
!2281 = !DILocalVariable(name: "flags", arg: 6, scope: !2270, file: !377, line: 253, type: !6)
!2282 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2270, file: !377, line: 254, type: !2273)
!2283 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2270, file: !377, line: 255, type: !67)
!2284 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2270, file: !377, line: 256, type: !67)
!2285 = !DILocalVariable(name: "unibyte_locale", scope: !2270, file: !377, line: 258, type: !61)
!2286 = !DILocalVariable(name: "len", scope: !2270, file: !377, line: 260, type: !65)
!2287 = !DILocalVariable(name: "orig_buffersize", scope: !2270, file: !377, line: 261, type: !65)
!2288 = !DILocalVariable(name: "quote_string", scope: !2270, file: !377, line: 262, type: !67)
!2289 = !DILocalVariable(name: "quote_string_len", scope: !2270, file: !377, line: 263, type: !65)
!2290 = !DILocalVariable(name: "backslash_escapes", scope: !2270, file: !377, line: 264, type: !61)
!2291 = !DILocalVariable(name: "elide_outer_quotes", scope: !2270, file: !377, line: 265, type: !61)
!2292 = !DILocalVariable(name: "encountered_single_quote", scope: !2270, file: !377, line: 266, type: !61)
!2293 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2270, file: !377, line: 267, type: !61)
!2294 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2270, file: !377, line: 309, type: !61)
!2295 = !DILocalVariable(name: "lq", scope: !2296, file: !377, line: 361, type: !67)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !377, line: 361, column: 11)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !377, line: 360, column: 13)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !377, line: 333, column: 7)
!2299 = distinct !DILexicalBlock(scope: !2270, file: !377, line: 312, column: 5)
!2300 = !DILocalVariable(name: "i", scope: !2301, file: !377, line: 395, type: !65)
!2301 = distinct !DILexicalBlock(scope: !2270, file: !377, line: 395, column: 3)
!2302 = !DILocalVariable(name: "is_right_quote", scope: !2303, file: !377, line: 397, type: !61)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !377, line: 396, column: 5)
!2304 = distinct !DILexicalBlock(scope: !2301, file: !377, line: 395, column: 3)
!2305 = !DILocalVariable(name: "escaping", scope: !2303, file: !377, line: 398, type: !61)
!2306 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2303, file: !377, line: 399, type: !61)
!2307 = !DILocalVariable(name: "c", scope: !2303, file: !377, line: 417, type: !69)
!2308 = !DILocalVariable(name: "m", scope: !2309, file: !377, line: 598, type: !65)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !377, line: 596, column: 11)
!2310 = distinct !DILexicalBlock(scope: !2303, file: !377, line: 419, column: 9)
!2311 = !DILocalVariable(name: "printable", scope: !2309, file: !377, line: 600, type: !61)
!2312 = !DILocalVariable(name: "mbs", scope: !2313, file: !377, line: 609, type: !420)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !377, line: 608, column: 15)
!2314 = distinct !DILexicalBlock(scope: !2309, file: !377, line: 602, column: 17)
!2315 = !DILocalVariable(name: "w", scope: !2316, file: !377, line: 618, type: !353)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !377, line: 617, column: 19)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !377, line: 616, column: 17)
!2318 = distinct !DILexicalBlock(scope: !2313, file: !377, line: 616, column: 17)
!2319 = !DILocalVariable(name: "bytes", scope: !2316, file: !377, line: 619, type: !65)
!2320 = !DILocalVariable(name: "j", scope: !2321, file: !377, line: 648, type: !65)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !377, line: 648, column: 29)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !377, line: 647, column: 27)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !377, line: 645, column: 29)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !377, line: 636, column: 23)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !377, line: 628, column: 30)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !377, line: 623, column: 30)
!2327 = distinct !DILexicalBlock(scope: !2316, file: !377, line: 621, column: 25)
!2328 = !DILocalVariable(name: "ilim", scope: !2329, file: !377, line: 674, type: !65)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !377, line: 671, column: 15)
!2330 = distinct !DILexicalBlock(scope: !2309, file: !377, line: 670, column: 17)
!2331 = !DILabel(scope: !2270, name: "process_input", file: !377, line: 308)
!2332 = !DILabel(scope: !2333, name: "c_and_shell_escape", file: !377, line: 502)
!2333 = distinct !DILexicalBlock(scope: !2310, file: !377, line: 478, column: 9)
!2334 = !DILabel(scope: !2333, name: "c_escape", file: !377, line: 507)
!2335 = !DILabel(scope: !2303, name: "store_escape", file: !377, line: 709)
!2336 = !DILabel(scope: !2303, name: "store_c", file: !377, line: 712)
!2337 = !DILabel(scope: !2270, name: "force_outer_quoting_style", file: !377, line: 753)
!2338 = !DILocation(line: 0, scope: !2270)
!2339 = !DILocation(line: 258, column: 25, scope: !2270)
!2340 = !DILocation(line: 258, column: 36, scope: !2270)
!2341 = !DILocation(line: 267, column: 3, scope: !2270)
!2342 = !DILocation(line: 261, column: 10, scope: !2270)
!2343 = !DILocation(line: 262, column: 15, scope: !2270)
!2344 = !DILocation(line: 263, column: 10, scope: !2270)
!2345 = !DILocation(line: 308, column: 2, scope: !2270)
!2346 = !DILocation(line: 311, column: 3, scope: !2270)
!2347 = !DILocation(line: 318, column: 11, scope: !2299)
!2348 = !DILocation(line: 319, column: 9, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !377, line: 319, column: 9)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !377, line: 319, column: 9)
!2351 = distinct !DILexicalBlock(scope: !2299, file: !377, line: 318, column: 11)
!2352 = !DILocation(line: 319, column: 9, scope: !2350)
!2353 = !DILocation(line: 0, scope: !411, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 357, column: 26, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !377, line: 335, column: 11)
!2356 = distinct !DILexicalBlock(scope: !2298, file: !377, line: 334, column: 13)
!2357 = !DILocation(line: 199, column: 29, scope: !411, inlinedAt: !2354)
!2358 = !DILocation(line: 201, column: 19, scope: !2359, inlinedAt: !2354)
!2359 = distinct !DILexicalBlock(scope: !411, file: !377, line: 201, column: 7)
!2360 = !DILocation(line: 201, column: 7, scope: !411, inlinedAt: !2354)
!2361 = !DILocation(line: 229, column: 3, scope: !411, inlinedAt: !2354)
!2362 = !DILocation(line: 230, column: 3, scope: !411, inlinedAt: !2354)
!2363 = !DILocation(line: 230, column: 13, scope: !411, inlinedAt: !2354)
!2364 = !DILocalVariable(name: "ps", arg: 1, scope: !2365, file: !2117, line: 1135, type: !2368)
!2365 = distinct !DISubprogram(name: "mbszero", scope: !2117, file: !2117, line: 1135, type: !2366, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2369)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{null, !2368}
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!2369 = !{!2364}
!2370 = !DILocation(line: 0, scope: !2365, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 230, column: 18, scope: !411, inlinedAt: !2354)
!2372 = !DILocalVariable(name: "__dest", arg: 1, scope: !2373, file: !1113, line: 57, type: !60)
!2373 = distinct !DISubprogram(name: "memset", scope: !1113, file: !1113, line: 57, type: !2126, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2374)
!2374 = !{!2372, !2375, !2376}
!2375 = !DILocalVariable(name: "__ch", arg: 2, scope: !2373, file: !1113, line: 57, type: !6)
!2376 = !DILocalVariable(name: "__len", arg: 3, scope: !2373, file: !1113, line: 57, type: !65)
!2377 = !DILocation(line: 0, scope: !2373, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 1137, column: 3, scope: !2365, inlinedAt: !2371)
!2379 = !DILocation(line: 59, column: 10, scope: !2373, inlinedAt: !2378)
!2380 = !DILocation(line: 231, column: 7, scope: !2381, inlinedAt: !2354)
!2381 = distinct !DILexicalBlock(scope: !411, file: !377, line: 231, column: 7)
!2382 = !DILocation(line: 231, column: 40, scope: !2381, inlinedAt: !2354)
!2383 = !DILocation(line: 231, column: 45, scope: !2381, inlinedAt: !2354)
!2384 = !DILocation(line: 235, column: 1, scope: !411, inlinedAt: !2354)
!2385 = !DILocation(line: 0, scope: !411, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 358, column: 27, scope: !2355)
!2387 = !DILocation(line: 199, column: 29, scope: !411, inlinedAt: !2386)
!2388 = !DILocation(line: 201, column: 19, scope: !2359, inlinedAt: !2386)
!2389 = !DILocation(line: 201, column: 7, scope: !411, inlinedAt: !2386)
!2390 = !DILocation(line: 229, column: 3, scope: !411, inlinedAt: !2386)
!2391 = !DILocation(line: 230, column: 3, scope: !411, inlinedAt: !2386)
!2392 = !DILocation(line: 230, column: 13, scope: !411, inlinedAt: !2386)
!2393 = !DILocation(line: 0, scope: !2365, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 230, column: 18, scope: !411, inlinedAt: !2386)
!2395 = !DILocation(line: 0, scope: !2373, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 1137, column: 3, scope: !2365, inlinedAt: !2394)
!2397 = !DILocation(line: 59, column: 10, scope: !2373, inlinedAt: !2396)
!2398 = !DILocation(line: 231, column: 7, scope: !2381, inlinedAt: !2386)
!2399 = !DILocation(line: 231, column: 40, scope: !2381, inlinedAt: !2386)
!2400 = !DILocation(line: 231, column: 45, scope: !2381, inlinedAt: !2386)
!2401 = !DILocation(line: 235, column: 1, scope: !411, inlinedAt: !2386)
!2402 = !DILocation(line: 360, column: 13, scope: !2298)
!2403 = !DILocation(line: 0, scope: !2296)
!2404 = !DILocation(line: 361, column: 45, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2296, file: !377, line: 361, column: 11)
!2406 = !DILocation(line: 361, column: 11, scope: !2296)
!2407 = !DILocation(line: 362, column: 13, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !377, line: 362, column: 13)
!2409 = distinct !DILexicalBlock(scope: !2405, file: !377, line: 362, column: 13)
!2410 = !DILocation(line: 362, column: 13, scope: !2409)
!2411 = !DILocation(line: 361, column: 52, scope: !2405)
!2412 = distinct !{!2412, !2406, !2413, !642}
!2413 = !DILocation(line: 362, column: 13, scope: !2296)
!2414 = !DILocation(line: 260, column: 10, scope: !2270)
!2415 = !DILocation(line: 365, column: 28, scope: !2298)
!2416 = !DILocation(line: 367, column: 7, scope: !2299)
!2417 = !DILocation(line: 370, column: 7, scope: !2299)
!2418 = !DILocation(line: 376, column: 11, scope: !2299)
!2419 = !DILocation(line: 381, column: 11, scope: !2299)
!2420 = !DILocation(line: 382, column: 9, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !377, line: 382, column: 9)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !377, line: 382, column: 9)
!2423 = distinct !DILexicalBlock(scope: !2299, file: !377, line: 381, column: 11)
!2424 = !DILocation(line: 382, column: 9, scope: !2422)
!2425 = !DILocation(line: 389, column: 7, scope: !2299)
!2426 = !DILocation(line: 392, column: 7, scope: !2299)
!2427 = !DILocation(line: 0, scope: !2301)
!2428 = !DILocation(line: 395, column: 8, scope: !2301)
!2429 = !DILocation(line: 395, column: 34, scope: !2304)
!2430 = !DILocation(line: 395, column: 26, scope: !2304)
!2431 = !DILocation(line: 395, column: 48, scope: !2304)
!2432 = !DILocation(line: 395, column: 55, scope: !2304)
!2433 = !DILocation(line: 395, column: 3, scope: !2301)
!2434 = !DILocation(line: 395, column: 67, scope: !2304)
!2435 = !DILocation(line: 0, scope: !2303)
!2436 = !DILocation(line: 402, column: 11, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2303, file: !377, line: 401, column: 11)
!2438 = !DILocation(line: 404, column: 17, scope: !2437)
!2439 = !DILocation(line: 405, column: 39, scope: !2437)
!2440 = !DILocation(line: 409, column: 32, scope: !2437)
!2441 = !DILocation(line: 405, column: 19, scope: !2437)
!2442 = !DILocation(line: 405, column: 15, scope: !2437)
!2443 = !DILocation(line: 410, column: 11, scope: !2437)
!2444 = !DILocation(line: 410, column: 25, scope: !2437)
!2445 = !DILocalVariable(name: "__s1", arg: 1, scope: !2446, file: !626, line: 974, type: !793)
!2446 = distinct !DISubprogram(name: "memeq", scope: !626, file: !626, line: 974, type: !2088, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2447)
!2447 = !{!2445, !2448, !2449}
!2448 = !DILocalVariable(name: "__s2", arg: 2, scope: !2446, file: !626, line: 974, type: !793)
!2449 = !DILocalVariable(name: "__n", arg: 3, scope: !2446, file: !626, line: 974, type: !65)
!2450 = !DILocation(line: 0, scope: !2446, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 410, column: 14, scope: !2437)
!2452 = !DILocation(line: 976, column: 11, scope: !2446, inlinedAt: !2451)
!2453 = !DILocation(line: 976, column: 10, scope: !2446, inlinedAt: !2451)
!2454 = !DILocation(line: 401, column: 11, scope: !2303)
!2455 = !DILocation(line: 417, column: 25, scope: !2303)
!2456 = !DILocation(line: 418, column: 7, scope: !2303)
!2457 = !DILocation(line: 421, column: 15, scope: !2310)
!2458 = !DILocation(line: 423, column: 15, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !377, line: 423, column: 15)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !377, line: 422, column: 13)
!2461 = distinct !DILexicalBlock(scope: !2310, file: !377, line: 421, column: 15)
!2462 = !DILocation(line: 423, column: 15, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2459, file: !377, line: 423, column: 15)
!2464 = !DILocation(line: 423, column: 15, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !377, line: 423, column: 15)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !377, line: 423, column: 15)
!2467 = distinct !DILexicalBlock(scope: !2463, file: !377, line: 423, column: 15)
!2468 = !DILocation(line: 423, column: 15, scope: !2466)
!2469 = !DILocation(line: 423, column: 15, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !377, line: 423, column: 15)
!2471 = distinct !DILexicalBlock(scope: !2467, file: !377, line: 423, column: 15)
!2472 = !DILocation(line: 423, column: 15, scope: !2471)
!2473 = !DILocation(line: 423, column: 15, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !377, line: 423, column: 15)
!2475 = distinct !DILexicalBlock(scope: !2467, file: !377, line: 423, column: 15)
!2476 = !DILocation(line: 423, column: 15, scope: !2475)
!2477 = !DILocation(line: 423, column: 15, scope: !2467)
!2478 = !DILocation(line: 423, column: 15, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !377, line: 423, column: 15)
!2480 = distinct !DILexicalBlock(scope: !2459, file: !377, line: 423, column: 15)
!2481 = !DILocation(line: 423, column: 15, scope: !2480)
!2482 = !DILocation(line: 431, column: 19, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2460, file: !377, line: 430, column: 19)
!2484 = !DILocation(line: 431, column: 24, scope: !2483)
!2485 = !DILocation(line: 431, column: 28, scope: !2483)
!2486 = !DILocation(line: 431, column: 38, scope: !2483)
!2487 = !DILocation(line: 431, column: 48, scope: !2483)
!2488 = !DILocation(line: 431, column: 59, scope: !2483)
!2489 = !DILocation(line: 433, column: 19, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !377, line: 433, column: 19)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !377, line: 433, column: 19)
!2492 = distinct !DILexicalBlock(scope: !2483, file: !377, line: 432, column: 17)
!2493 = !DILocation(line: 433, column: 19, scope: !2491)
!2494 = !DILocation(line: 434, column: 19, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !377, line: 434, column: 19)
!2496 = distinct !DILexicalBlock(scope: !2492, file: !377, line: 434, column: 19)
!2497 = !DILocation(line: 434, column: 19, scope: !2496)
!2498 = !DILocation(line: 435, column: 17, scope: !2492)
!2499 = !DILocation(line: 442, column: 20, scope: !2461)
!2500 = !DILocation(line: 447, column: 11, scope: !2310)
!2501 = !DILocation(line: 450, column: 19, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2310, file: !377, line: 448, column: 13)
!2503 = !DILocation(line: 456, column: 19, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2502, file: !377, line: 455, column: 19)
!2505 = !DILocation(line: 456, column: 24, scope: !2504)
!2506 = !DILocation(line: 456, column: 28, scope: !2504)
!2507 = !DILocation(line: 456, column: 38, scope: !2504)
!2508 = !DILocation(line: 456, column: 47, scope: !2504)
!2509 = !DILocation(line: 456, column: 41, scope: !2504)
!2510 = !DILocation(line: 456, column: 52, scope: !2504)
!2511 = !DILocation(line: 455, column: 19, scope: !2502)
!2512 = !DILocation(line: 457, column: 25, scope: !2504)
!2513 = !DILocation(line: 457, column: 17, scope: !2504)
!2514 = !DILocation(line: 464, column: 25, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2504, file: !377, line: 458, column: 19)
!2516 = !DILocation(line: 468, column: 21, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !377, line: 468, column: 21)
!2518 = distinct !DILexicalBlock(scope: !2515, file: !377, line: 468, column: 21)
!2519 = !DILocation(line: 468, column: 21, scope: !2518)
!2520 = !DILocation(line: 469, column: 21, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !377, line: 469, column: 21)
!2522 = distinct !DILexicalBlock(scope: !2515, file: !377, line: 469, column: 21)
!2523 = !DILocation(line: 469, column: 21, scope: !2522)
!2524 = !DILocation(line: 470, column: 21, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !377, line: 470, column: 21)
!2526 = distinct !DILexicalBlock(scope: !2515, file: !377, line: 470, column: 21)
!2527 = !DILocation(line: 470, column: 21, scope: !2526)
!2528 = !DILocation(line: 471, column: 21, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !377, line: 471, column: 21)
!2530 = distinct !DILexicalBlock(scope: !2515, file: !377, line: 471, column: 21)
!2531 = !DILocation(line: 471, column: 21, scope: !2530)
!2532 = !DILocation(line: 472, column: 21, scope: !2515)
!2533 = !DILocation(line: 482, column: 33, scope: !2333)
!2534 = !DILocation(line: 483, column: 33, scope: !2333)
!2535 = !DILocation(line: 485, column: 33, scope: !2333)
!2536 = !DILocation(line: 486, column: 33, scope: !2333)
!2537 = !DILocation(line: 487, column: 33, scope: !2333)
!2538 = !DILocation(line: 490, column: 17, scope: !2333)
!2539 = !DILocation(line: 492, column: 21, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !377, line: 491, column: 15)
!2541 = distinct !DILexicalBlock(scope: !2333, file: !377, line: 490, column: 17)
!2542 = !DILocation(line: 499, column: 35, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2333, file: !377, line: 499, column: 17)
!2544 = !DILocation(line: 499, column: 57, scope: !2543)
!2545 = !DILocation(line: 0, scope: !2333)
!2546 = !DILocation(line: 502, column: 11, scope: !2333)
!2547 = !DILocation(line: 504, column: 17, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2333, file: !377, line: 503, column: 17)
!2549 = !DILocation(line: 507, column: 11, scope: !2333)
!2550 = !DILocation(line: 508, column: 17, scope: !2333)
!2551 = !DILocation(line: 517, column: 15, scope: !2310)
!2552 = !DILocation(line: 517, column: 40, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2310, file: !377, line: 517, column: 15)
!2554 = !DILocation(line: 517, column: 47, scope: !2553)
!2555 = !DILocation(line: 517, column: 18, scope: !2553)
!2556 = !DILocation(line: 521, column: 17, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2310, file: !377, line: 521, column: 15)
!2558 = !DILocation(line: 521, column: 15, scope: !2310)
!2559 = !DILocation(line: 525, column: 11, scope: !2310)
!2560 = !DILocation(line: 537, column: 15, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2310, file: !377, line: 536, column: 15)
!2562 = !DILocation(line: 536, column: 15, scope: !2310)
!2563 = !DILocation(line: 544, column: 15, scope: !2310)
!2564 = !DILocation(line: 546, column: 19, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !377, line: 545, column: 13)
!2566 = distinct !DILexicalBlock(scope: !2310, file: !377, line: 544, column: 15)
!2567 = !DILocation(line: 549, column: 19, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2565, file: !377, line: 549, column: 19)
!2569 = !DILocation(line: 549, column: 30, scope: !2568)
!2570 = !DILocation(line: 558, column: 15, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !377, line: 558, column: 15)
!2572 = distinct !DILexicalBlock(scope: !2565, file: !377, line: 558, column: 15)
!2573 = !DILocation(line: 558, column: 15, scope: !2572)
!2574 = !DILocation(line: 559, column: 15, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !377, line: 559, column: 15)
!2576 = distinct !DILexicalBlock(scope: !2565, file: !377, line: 559, column: 15)
!2577 = !DILocation(line: 559, column: 15, scope: !2576)
!2578 = !DILocation(line: 560, column: 15, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !377, line: 560, column: 15)
!2580 = distinct !DILexicalBlock(scope: !2565, file: !377, line: 560, column: 15)
!2581 = !DILocation(line: 560, column: 15, scope: !2580)
!2582 = !DILocation(line: 562, column: 13, scope: !2565)
!2583 = !DILocation(line: 602, column: 17, scope: !2309)
!2584 = !DILocation(line: 0, scope: !2309)
!2585 = !DILocation(line: 605, column: 29, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2314, file: !377, line: 603, column: 15)
!2587 = !DILocation(line: 605, column: 41, scope: !2586)
!2588 = !DILocation(line: 670, column: 23, scope: !2330)
!2589 = !DILocation(line: 609, column: 17, scope: !2313)
!2590 = !DILocation(line: 609, column: 27, scope: !2313)
!2591 = !DILocation(line: 0, scope: !2365, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 609, column: 32, scope: !2313)
!2593 = !DILocation(line: 0, scope: !2373, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 1137, column: 3, scope: !2365, inlinedAt: !2592)
!2595 = !DILocation(line: 59, column: 10, scope: !2373, inlinedAt: !2594)
!2596 = !DILocation(line: 613, column: 29, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2313, file: !377, line: 613, column: 21)
!2598 = !DILocation(line: 613, column: 21, scope: !2313)
!2599 = !DILocation(line: 614, column: 29, scope: !2597)
!2600 = !DILocation(line: 614, column: 19, scope: !2597)
!2601 = !DILocation(line: 618, column: 21, scope: !2316)
!2602 = !DILocation(line: 620, column: 54, scope: !2316)
!2603 = !DILocation(line: 0, scope: !2316)
!2604 = !DILocation(line: 619, column: 36, scope: !2316)
!2605 = !DILocation(line: 621, column: 25, scope: !2316)
!2606 = !DILocation(line: 631, column: 38, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2325, file: !377, line: 629, column: 23)
!2608 = !DILocation(line: 631, column: 48, scope: !2607)
!2609 = !DILocation(line: 665, column: 19, scope: !2317)
!2610 = !DILocation(line: 666, column: 15, scope: !2314)
!2611 = !DILocation(line: 626, column: 25, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2326, file: !377, line: 624, column: 23)
!2613 = !DILocation(line: 631, column: 51, scope: !2607)
!2614 = !DILocation(line: 631, column: 25, scope: !2607)
!2615 = !DILocation(line: 632, column: 28, scope: !2607)
!2616 = !DILocation(line: 631, column: 34, scope: !2607)
!2617 = distinct !{!2617, !2614, !2615, !642}
!2618 = !DILocation(line: 646, column: 29, scope: !2323)
!2619 = !DILocation(line: 0, scope: !2321)
!2620 = !DILocation(line: 649, column: 49, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2321, file: !377, line: 648, column: 29)
!2622 = !DILocation(line: 649, column: 39, scope: !2621)
!2623 = !DILocation(line: 649, column: 31, scope: !2621)
!2624 = !DILocation(line: 648, column: 60, scope: !2621)
!2625 = !DILocation(line: 648, column: 50, scope: !2621)
!2626 = !DILocation(line: 648, column: 29, scope: !2321)
!2627 = distinct !{!2627, !2626, !2628, !642}
!2628 = !DILocation(line: 654, column: 33, scope: !2321)
!2629 = !DILocation(line: 657, column: 43, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2324, file: !377, line: 657, column: 29)
!2631 = !DILocalVariable(name: "wc", arg: 1, scope: !2632, file: !2633, line: 865, type: !2636)
!2632 = distinct !DISubprogram(name: "c32isprint", scope: !2633, file: !2633, line: 865, type: !2634, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2638)
!2633 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!6, !2636}
!2636 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2637, line: 20, baseType: !14)
!2637 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2638 = !{!2631}
!2639 = !DILocation(line: 0, scope: !2632, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 657, column: 31, scope: !2630)
!2641 = !DILocation(line: 871, column: 10, scope: !2632, inlinedAt: !2640)
!2642 = !DILocation(line: 657, column: 31, scope: !2630)
!2643 = !DILocation(line: 664, column: 23, scope: !2316)
!2644 = !DILocation(line: 753, column: 2, scope: !2270)
!2645 = !DILocation(line: 756, column: 51, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2270, file: !377, line: 756, column: 7)
!2647 = !DILocation(line: 670, column: 19, scope: !2330)
!2648 = !DILocation(line: 670, column: 45, scope: !2330)
!2649 = !DILocation(line: 674, column: 33, scope: !2329)
!2650 = !DILocation(line: 0, scope: !2329)
!2651 = !DILocation(line: 676, column: 17, scope: !2329)
!2652 = !DILocation(line: 398, column: 12, scope: !2303)
!2653 = !DILocation(line: 678, column: 43, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !377, line: 678, column: 25)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !377, line: 677, column: 19)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !377, line: 676, column: 17)
!2657 = distinct !DILexicalBlock(scope: !2329, file: !377, line: 676, column: 17)
!2658 = !DILocation(line: 680, column: 25, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !377, line: 680, column: 25)
!2660 = distinct !DILexicalBlock(scope: !2654, file: !377, line: 679, column: 23)
!2661 = !DILocation(line: 680, column: 25, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2659, file: !377, line: 680, column: 25)
!2663 = !DILocation(line: 680, column: 25, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !377, line: 680, column: 25)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !377, line: 680, column: 25)
!2666 = distinct !DILexicalBlock(scope: !2662, file: !377, line: 680, column: 25)
!2667 = !DILocation(line: 680, column: 25, scope: !2665)
!2668 = !DILocation(line: 680, column: 25, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !377, line: 680, column: 25)
!2670 = distinct !DILexicalBlock(scope: !2666, file: !377, line: 680, column: 25)
!2671 = !DILocation(line: 680, column: 25, scope: !2670)
!2672 = !DILocation(line: 680, column: 25, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !377, line: 680, column: 25)
!2674 = distinct !DILexicalBlock(scope: !2666, file: !377, line: 680, column: 25)
!2675 = !DILocation(line: 680, column: 25, scope: !2674)
!2676 = !DILocation(line: 680, column: 25, scope: !2666)
!2677 = !DILocation(line: 680, column: 25, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !377, line: 680, column: 25)
!2679 = distinct !DILexicalBlock(scope: !2659, file: !377, line: 680, column: 25)
!2680 = !DILocation(line: 680, column: 25, scope: !2679)
!2681 = !DILocation(line: 681, column: 25, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !377, line: 681, column: 25)
!2683 = distinct !DILexicalBlock(scope: !2660, file: !377, line: 681, column: 25)
!2684 = !DILocation(line: 681, column: 25, scope: !2683)
!2685 = !DILocation(line: 682, column: 25, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !377, line: 682, column: 25)
!2687 = distinct !DILexicalBlock(scope: !2660, file: !377, line: 682, column: 25)
!2688 = !DILocation(line: 682, column: 25, scope: !2687)
!2689 = !DILocation(line: 683, column: 38, scope: !2660)
!2690 = !DILocation(line: 683, column: 33, scope: !2660)
!2691 = !DILocation(line: 684, column: 23, scope: !2660)
!2692 = !DILocation(line: 685, column: 30, scope: !2654)
!2693 = !DILocation(line: 687, column: 25, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !377, line: 687, column: 25)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !377, line: 687, column: 25)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !377, line: 686, column: 23)
!2697 = distinct !DILexicalBlock(scope: !2654, file: !377, line: 685, column: 30)
!2698 = !DILocation(line: 687, column: 25, scope: !2695)
!2699 = !DILocation(line: 689, column: 23, scope: !2696)
!2700 = !DILocation(line: 690, column: 35, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2655, file: !377, line: 690, column: 25)
!2702 = !DILocation(line: 690, column: 30, scope: !2701)
!2703 = !DILocation(line: 690, column: 25, scope: !2655)
!2704 = !DILocation(line: 692, column: 21, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !377, line: 692, column: 21)
!2706 = distinct !DILexicalBlock(scope: !2655, file: !377, line: 692, column: 21)
!2707 = !DILocation(line: 692, column: 21, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !377, line: 692, column: 21)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !377, line: 692, column: 21)
!2710 = distinct !DILexicalBlock(scope: !2705, file: !377, line: 692, column: 21)
!2711 = !DILocation(line: 692, column: 21, scope: !2709)
!2712 = !DILocation(line: 692, column: 21, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !377, line: 692, column: 21)
!2714 = distinct !DILexicalBlock(scope: !2710, file: !377, line: 692, column: 21)
!2715 = !DILocation(line: 692, column: 21, scope: !2714)
!2716 = !DILocation(line: 692, column: 21, scope: !2710)
!2717 = !DILocation(line: 0, scope: !2655)
!2718 = !DILocation(line: 693, column: 21, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !377, line: 693, column: 21)
!2720 = distinct !DILexicalBlock(scope: !2655, file: !377, line: 693, column: 21)
!2721 = !DILocation(line: 693, column: 21, scope: !2720)
!2722 = !DILocation(line: 694, column: 25, scope: !2655)
!2723 = !DILocation(line: 676, column: 17, scope: !2656)
!2724 = distinct !{!2724, !2725, !2726}
!2725 = !DILocation(line: 676, column: 17, scope: !2657)
!2726 = !DILocation(line: 695, column: 19, scope: !2657)
!2727 = !DILocation(line: 409, column: 30, scope: !2437)
!2728 = !DILocation(line: 702, column: 34, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2303, file: !377, line: 702, column: 11)
!2730 = !DILocation(line: 704, column: 14, scope: !2729)
!2731 = !DILocation(line: 705, column: 14, scope: !2729)
!2732 = !DILocation(line: 705, column: 35, scope: !2729)
!2733 = !DILocation(line: 705, column: 17, scope: !2729)
!2734 = !DILocation(line: 705, column: 47, scope: !2729)
!2735 = !DILocation(line: 705, column: 65, scope: !2729)
!2736 = !DILocation(line: 706, column: 11, scope: !2729)
!2737 = !DILocation(line: 702, column: 11, scope: !2303)
!2738 = !DILocation(line: 395, column: 15, scope: !2301)
!2739 = !DILocation(line: 709, column: 5, scope: !2303)
!2740 = !DILocation(line: 710, column: 7, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2303, file: !377, line: 710, column: 7)
!2742 = !DILocation(line: 710, column: 7, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2741, file: !377, line: 710, column: 7)
!2744 = !DILocation(line: 710, column: 7, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !377, line: 710, column: 7)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !377, line: 710, column: 7)
!2747 = distinct !DILexicalBlock(scope: !2743, file: !377, line: 710, column: 7)
!2748 = !DILocation(line: 710, column: 7, scope: !2746)
!2749 = !DILocation(line: 710, column: 7, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !377, line: 710, column: 7)
!2751 = distinct !DILexicalBlock(scope: !2747, file: !377, line: 710, column: 7)
!2752 = !DILocation(line: 710, column: 7, scope: !2751)
!2753 = !DILocation(line: 710, column: 7, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !377, line: 710, column: 7)
!2755 = distinct !DILexicalBlock(scope: !2747, file: !377, line: 710, column: 7)
!2756 = !DILocation(line: 710, column: 7, scope: !2755)
!2757 = !DILocation(line: 710, column: 7, scope: !2747)
!2758 = !DILocation(line: 710, column: 7, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !377, line: 710, column: 7)
!2760 = distinct !DILexicalBlock(scope: !2741, file: !377, line: 710, column: 7)
!2761 = !DILocation(line: 710, column: 7, scope: !2760)
!2762 = !DILocation(line: 712, column: 5, scope: !2303)
!2763 = !DILocation(line: 713, column: 7, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !377, line: 713, column: 7)
!2765 = distinct !DILexicalBlock(scope: !2303, file: !377, line: 713, column: 7)
!2766 = !DILocation(line: 417, column: 21, scope: !2303)
!2767 = !DILocation(line: 713, column: 7, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !377, line: 713, column: 7)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !377, line: 713, column: 7)
!2770 = distinct !DILexicalBlock(scope: !2764, file: !377, line: 713, column: 7)
!2771 = !DILocation(line: 713, column: 7, scope: !2769)
!2772 = !DILocation(line: 713, column: 7, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !377, line: 713, column: 7)
!2774 = distinct !DILexicalBlock(scope: !2770, file: !377, line: 713, column: 7)
!2775 = !DILocation(line: 713, column: 7, scope: !2774)
!2776 = !DILocation(line: 713, column: 7, scope: !2770)
!2777 = !DILocation(line: 714, column: 7, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !377, line: 714, column: 7)
!2779 = distinct !DILexicalBlock(scope: !2303, file: !377, line: 714, column: 7)
!2780 = !DILocation(line: 714, column: 7, scope: !2779)
!2781 = !DILocation(line: 716, column: 11, scope: !2303)
!2782 = !DILocation(line: 718, column: 5, scope: !2304)
!2783 = !DILocation(line: 395, column: 82, scope: !2304)
!2784 = !DILocation(line: 395, column: 3, scope: !2304)
!2785 = distinct !{!2785, !2433, !2786, !642}
!2786 = !DILocation(line: 718, column: 5, scope: !2301)
!2787 = !DILocation(line: 720, column: 11, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2270, file: !377, line: 720, column: 7)
!2789 = !DILocation(line: 720, column: 16, scope: !2788)
!2790 = !DILocation(line: 728, column: 51, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2270, file: !377, line: 728, column: 7)
!2792 = !DILocation(line: 731, column: 11, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2791, file: !377, line: 730, column: 5)
!2794 = !DILocation(line: 732, column: 16, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2793, file: !377, line: 731, column: 11)
!2796 = !DILocation(line: 732, column: 9, scope: !2795)
!2797 = !DILocation(line: 736, column: 18, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2795, file: !377, line: 736, column: 16)
!2799 = !DILocation(line: 736, column: 29, scope: !2798)
!2800 = !DILocation(line: 745, column: 7, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2270, file: !377, line: 745, column: 7)
!2802 = !DILocation(line: 745, column: 20, scope: !2801)
!2803 = !DILocation(line: 746, column: 12, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !377, line: 746, column: 5)
!2805 = distinct !DILexicalBlock(scope: !2801, file: !377, line: 746, column: 5)
!2806 = !DILocation(line: 746, column: 5, scope: !2805)
!2807 = !DILocation(line: 747, column: 7, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !377, line: 747, column: 7)
!2809 = distinct !DILexicalBlock(scope: !2804, file: !377, line: 747, column: 7)
!2810 = !DILocation(line: 747, column: 7, scope: !2809)
!2811 = !DILocation(line: 746, column: 39, scope: !2804)
!2812 = distinct !{!2812, !2806, !2813, !642}
!2813 = !DILocation(line: 747, column: 7, scope: !2805)
!2814 = !DILocation(line: 749, column: 11, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2270, file: !377, line: 749, column: 7)
!2816 = !DILocation(line: 749, column: 7, scope: !2270)
!2817 = !DILocation(line: 750, column: 5, scope: !2815)
!2818 = !DILocation(line: 750, column: 17, scope: !2815)
!2819 = !DILocation(line: 756, column: 21, scope: !2646)
!2820 = !DILocation(line: 760, column: 42, scope: !2270)
!2821 = !DILocation(line: 758, column: 10, scope: !2270)
!2822 = !DILocation(line: 758, column: 3, scope: !2270)
!2823 = !DILocation(line: 762, column: 1, scope: !2270)
!2824 = !DISubprogram(name: "iswprint", scope: !2825, file: !2825, line: 120, type: !2634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!2825 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2826 = distinct !DISubprogram(name: "quotearg_alloc", scope: !377, file: !377, line: 788, type: !2827, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2829)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!8, !67, !65, !2162}
!2829 = !{!2830, !2831, !2832}
!2830 = !DILocalVariable(name: "arg", arg: 1, scope: !2826, file: !377, line: 788, type: !67)
!2831 = !DILocalVariable(name: "argsize", arg: 2, scope: !2826, file: !377, line: 788, type: !65)
!2832 = !DILocalVariable(name: "o", arg: 3, scope: !2826, file: !377, line: 789, type: !2162)
!2833 = !DILocation(line: 0, scope: !2826)
!2834 = !DILocalVariable(name: "arg", arg: 1, scope: !2835, file: !377, line: 801, type: !67)
!2835 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !377, file: !377, line: 801, type: !2836, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2838)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!8, !67, !65, !509, !2162}
!2838 = !{!2834, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846}
!2839 = !DILocalVariable(name: "argsize", arg: 2, scope: !2835, file: !377, line: 801, type: !65)
!2840 = !DILocalVariable(name: "size", arg: 3, scope: !2835, file: !377, line: 801, type: !509)
!2841 = !DILocalVariable(name: "o", arg: 4, scope: !2835, file: !377, line: 802, type: !2162)
!2842 = !DILocalVariable(name: "p", scope: !2835, file: !377, line: 804, type: !2162)
!2843 = !DILocalVariable(name: "saved_errno", scope: !2835, file: !377, line: 805, type: !6)
!2844 = !DILocalVariable(name: "flags", scope: !2835, file: !377, line: 807, type: !6)
!2845 = !DILocalVariable(name: "bufsize", scope: !2835, file: !377, line: 808, type: !65)
!2846 = !DILocalVariable(name: "buf", scope: !2835, file: !377, line: 812, type: !8)
!2847 = !DILocation(line: 0, scope: !2835, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 791, column: 10, scope: !2826)
!2849 = !DILocation(line: 804, column: 37, scope: !2835, inlinedAt: !2848)
!2850 = !DILocation(line: 805, column: 21, scope: !2835, inlinedAt: !2848)
!2851 = !DILocation(line: 807, column: 18, scope: !2835, inlinedAt: !2848)
!2852 = !DILocation(line: 807, column: 24, scope: !2835, inlinedAt: !2848)
!2853 = !DILocation(line: 808, column: 72, scope: !2835, inlinedAt: !2848)
!2854 = !DILocation(line: 809, column: 53, scope: !2835, inlinedAt: !2848)
!2855 = !DILocation(line: 810, column: 49, scope: !2835, inlinedAt: !2848)
!2856 = !DILocation(line: 811, column: 49, scope: !2835, inlinedAt: !2848)
!2857 = !DILocation(line: 808, column: 20, scope: !2835, inlinedAt: !2848)
!2858 = !DILocation(line: 811, column: 62, scope: !2835, inlinedAt: !2848)
!2859 = !DILocation(line: 812, column: 15, scope: !2835, inlinedAt: !2848)
!2860 = !DILocation(line: 813, column: 60, scope: !2835, inlinedAt: !2848)
!2861 = !DILocation(line: 815, column: 32, scope: !2835, inlinedAt: !2848)
!2862 = !DILocation(line: 815, column: 47, scope: !2835, inlinedAt: !2848)
!2863 = !DILocation(line: 813, column: 3, scope: !2835, inlinedAt: !2848)
!2864 = !DILocation(line: 816, column: 9, scope: !2835, inlinedAt: !2848)
!2865 = !DILocation(line: 791, column: 3, scope: !2826)
!2866 = !DILocation(line: 0, scope: !2835)
!2867 = !DILocation(line: 804, column: 37, scope: !2835)
!2868 = !DILocation(line: 805, column: 21, scope: !2835)
!2869 = !DILocation(line: 807, column: 18, scope: !2835)
!2870 = !DILocation(line: 807, column: 27, scope: !2835)
!2871 = !DILocation(line: 807, column: 24, scope: !2835)
!2872 = !DILocation(line: 808, column: 72, scope: !2835)
!2873 = !DILocation(line: 809, column: 53, scope: !2835)
!2874 = !DILocation(line: 810, column: 49, scope: !2835)
!2875 = !DILocation(line: 811, column: 49, scope: !2835)
!2876 = !DILocation(line: 808, column: 20, scope: !2835)
!2877 = !DILocation(line: 811, column: 62, scope: !2835)
!2878 = !DILocation(line: 812, column: 15, scope: !2835)
!2879 = !DILocation(line: 813, column: 60, scope: !2835)
!2880 = !DILocation(line: 815, column: 32, scope: !2835)
!2881 = !DILocation(line: 815, column: 47, scope: !2835)
!2882 = !DILocation(line: 813, column: 3, scope: !2835)
!2883 = !DILocation(line: 816, column: 9, scope: !2835)
!2884 = !DILocation(line: 817, column: 7, scope: !2835)
!2885 = !DILocation(line: 818, column: 11, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2835, file: !377, line: 817, column: 7)
!2887 = !{!847, !847, i64 0}
!2888 = !DILocation(line: 818, column: 5, scope: !2886)
!2889 = !DILocation(line: 819, column: 3, scope: !2835)
!2890 = distinct !DISubprogram(name: "quotearg_free", scope: !377, file: !377, line: 837, type: !314, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2891)
!2891 = !{!2892, !2893}
!2892 = !DILocalVariable(name: "sv", scope: !2890, file: !377, line: 839, type: !434)
!2893 = !DILocalVariable(name: "i", scope: !2894, file: !377, line: 840, type: !6)
!2894 = distinct !DILexicalBlock(scope: !2890, file: !377, line: 840, column: 3)
!2895 = !DILocation(line: 839, column: 24, scope: !2890)
!2896 = !DILocation(line: 0, scope: !2890)
!2897 = !DILocation(line: 0, scope: !2894)
!2898 = !DILocation(line: 840, column: 21, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2894, file: !377, line: 840, column: 3)
!2900 = !DILocation(line: 840, column: 3, scope: !2894)
!2901 = !DILocation(line: 842, column: 13, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2890, file: !377, line: 842, column: 7)
!2903 = !{!2904, !576, i64 8}
!2904 = !{!"slotvec", !847, i64 0, !576, i64 8}
!2905 = !DILocation(line: 842, column: 17, scope: !2902)
!2906 = !DILocation(line: 842, column: 7, scope: !2890)
!2907 = !DILocation(line: 841, column: 17, scope: !2899)
!2908 = !DILocation(line: 841, column: 5, scope: !2899)
!2909 = !DILocation(line: 840, column: 32, scope: !2899)
!2910 = distinct !{!2910, !2900, !2911, !642}
!2911 = !DILocation(line: 841, column: 20, scope: !2894)
!2912 = !DILocation(line: 844, column: 7, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2902, file: !377, line: 843, column: 5)
!2914 = !DILocation(line: 845, column: 21, scope: !2913)
!2915 = !{!2904, !847, i64 0}
!2916 = !DILocation(line: 846, column: 20, scope: !2913)
!2917 = !DILocation(line: 847, column: 5, scope: !2913)
!2918 = !DILocation(line: 848, column: 10, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2890, file: !377, line: 848, column: 7)
!2920 = !DILocation(line: 848, column: 7, scope: !2890)
!2921 = !DILocation(line: 850, column: 13, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2919, file: !377, line: 849, column: 5)
!2923 = !DILocation(line: 850, column: 7, scope: !2922)
!2924 = !DILocation(line: 851, column: 15, scope: !2922)
!2925 = !DILocation(line: 852, column: 5, scope: !2922)
!2926 = !DILocation(line: 853, column: 10, scope: !2890)
!2927 = !DILocation(line: 854, column: 1, scope: !2890)
!2928 = distinct !DISubprogram(name: "quotearg_n", scope: !377, file: !377, line: 919, type: !783, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2929)
!2929 = !{!2930, !2931}
!2930 = !DILocalVariable(name: "n", arg: 1, scope: !2928, file: !377, line: 919, type: !6)
!2931 = !DILocalVariable(name: "arg", arg: 2, scope: !2928, file: !377, line: 919, type: !67)
!2932 = !DILocation(line: 0, scope: !2928)
!2933 = !DILocation(line: 921, column: 10, scope: !2928)
!2934 = !DILocation(line: 921, column: 3, scope: !2928)
!2935 = distinct !DISubprogram(name: "quotearg_n_options", scope: !377, file: !377, line: 866, type: !2936, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !2938)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!8, !6, !67, !65, !2162}
!2938 = !{!2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2949, !2950, !2952, !2953, !2954}
!2939 = !DILocalVariable(name: "n", arg: 1, scope: !2935, file: !377, line: 866, type: !6)
!2940 = !DILocalVariable(name: "arg", arg: 2, scope: !2935, file: !377, line: 866, type: !67)
!2941 = !DILocalVariable(name: "argsize", arg: 3, scope: !2935, file: !377, line: 866, type: !65)
!2942 = !DILocalVariable(name: "options", arg: 4, scope: !2935, file: !377, line: 867, type: !2162)
!2943 = !DILocalVariable(name: "saved_errno", scope: !2935, file: !377, line: 869, type: !6)
!2944 = !DILocalVariable(name: "sv", scope: !2935, file: !377, line: 871, type: !434)
!2945 = !DILocalVariable(name: "nslots_max", scope: !2935, file: !377, line: 873, type: !6)
!2946 = !DILocalVariable(name: "preallocated", scope: !2947, file: !377, line: 879, type: !61)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !377, line: 878, column: 5)
!2948 = distinct !DILexicalBlock(scope: !2935, file: !377, line: 877, column: 7)
!2949 = !DILocalVariable(name: "new_nslots", scope: !2947, file: !377, line: 880, type: !223)
!2950 = !DILocalVariable(name: "size", scope: !2951, file: !377, line: 891, type: !65)
!2951 = distinct !DILexicalBlock(scope: !2935, file: !377, line: 890, column: 3)
!2952 = !DILocalVariable(name: "val", scope: !2951, file: !377, line: 892, type: !8)
!2953 = !DILocalVariable(name: "flags", scope: !2951, file: !377, line: 894, type: !6)
!2954 = !DILocalVariable(name: "qsize", scope: !2951, file: !377, line: 895, type: !65)
!2955 = !DILocation(line: 0, scope: !2935)
!2956 = !DILocation(line: 869, column: 21, scope: !2935)
!2957 = !DILocation(line: 871, column: 24, scope: !2935)
!2958 = !DILocation(line: 874, column: 17, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2935, file: !377, line: 874, column: 7)
!2960 = !DILocation(line: 875, column: 5, scope: !2959)
!2961 = !DILocation(line: 877, column: 7, scope: !2948)
!2962 = !DILocation(line: 877, column: 14, scope: !2948)
!2963 = !DILocation(line: 877, column: 7, scope: !2935)
!2964 = !DILocation(line: 879, column: 31, scope: !2947)
!2965 = !DILocation(line: 0, scope: !2947)
!2966 = !DILocation(line: 880, column: 7, scope: !2947)
!2967 = !DILocation(line: 880, column: 26, scope: !2947)
!2968 = !DILocation(line: 880, column: 13, scope: !2947)
!2969 = !DILocation(line: 882, column: 31, scope: !2947)
!2970 = !DILocation(line: 883, column: 33, scope: !2947)
!2971 = !DILocation(line: 883, column: 42, scope: !2947)
!2972 = !DILocation(line: 883, column: 31, scope: !2947)
!2973 = !DILocation(line: 882, column: 22, scope: !2947)
!2974 = !DILocation(line: 882, column: 15, scope: !2947)
!2975 = !DILocation(line: 884, column: 11, scope: !2947)
!2976 = !DILocation(line: 885, column: 15, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2947, file: !377, line: 884, column: 11)
!2978 = !{i64 0, i64 8, !2887, i64 8, i64 8, !575}
!2979 = !DILocation(line: 885, column: 9, scope: !2977)
!2980 = !DILocation(line: 886, column: 20, scope: !2947)
!2981 = !DILocation(line: 886, column: 18, scope: !2947)
!2982 = !DILocation(line: 886, column: 15, scope: !2947)
!2983 = !DILocation(line: 886, column: 32, scope: !2947)
!2984 = !DILocation(line: 886, column: 43, scope: !2947)
!2985 = !DILocation(line: 886, column: 53, scope: !2947)
!2986 = !DILocation(line: 0, scope: !2373, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 886, column: 7, scope: !2947)
!2988 = !DILocation(line: 59, column: 10, scope: !2373, inlinedAt: !2987)
!2989 = !DILocation(line: 887, column: 16, scope: !2947)
!2990 = !DILocation(line: 887, column: 14, scope: !2947)
!2991 = !DILocation(line: 888, column: 5, scope: !2948)
!2992 = !DILocation(line: 888, column: 5, scope: !2947)
!2993 = !DILocation(line: 891, column: 19, scope: !2951)
!2994 = !DILocation(line: 891, column: 25, scope: !2951)
!2995 = !DILocation(line: 0, scope: !2951)
!2996 = !DILocation(line: 892, column: 23, scope: !2951)
!2997 = !DILocation(line: 894, column: 26, scope: !2951)
!2998 = !DILocation(line: 894, column: 32, scope: !2951)
!2999 = !DILocation(line: 896, column: 55, scope: !2951)
!3000 = !DILocation(line: 897, column: 46, scope: !2951)
!3001 = !DILocation(line: 898, column: 55, scope: !2951)
!3002 = !DILocation(line: 899, column: 55, scope: !2951)
!3003 = !DILocation(line: 895, column: 20, scope: !2951)
!3004 = !DILocation(line: 901, column: 14, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2951, file: !377, line: 901, column: 9)
!3006 = !DILocation(line: 901, column: 9, scope: !2951)
!3007 = !DILocation(line: 903, column: 35, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3005, file: !377, line: 902, column: 7)
!3009 = !DILocation(line: 903, column: 20, scope: !3008)
!3010 = !DILocation(line: 904, column: 17, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3008, file: !377, line: 904, column: 13)
!3012 = !DILocation(line: 904, column: 13, scope: !3008)
!3013 = !DILocation(line: 905, column: 11, scope: !3011)
!3014 = !DILocation(line: 906, column: 27, scope: !3008)
!3015 = !DILocation(line: 906, column: 19, scope: !3008)
!3016 = !DILocation(line: 907, column: 69, scope: !3008)
!3017 = !DILocation(line: 909, column: 44, scope: !3008)
!3018 = !DILocation(line: 910, column: 44, scope: !3008)
!3019 = !DILocation(line: 907, column: 9, scope: !3008)
!3020 = !DILocation(line: 911, column: 7, scope: !3008)
!3021 = !DILocation(line: 913, column: 11, scope: !2951)
!3022 = !DILocation(line: 914, column: 5, scope: !2951)
!3023 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !377, file: !377, line: 925, type: !3024, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3026)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!8, !6, !67, !65}
!3026 = !{!3027, !3028, !3029}
!3027 = !DILocalVariable(name: "n", arg: 1, scope: !3023, file: !377, line: 925, type: !6)
!3028 = !DILocalVariable(name: "arg", arg: 2, scope: !3023, file: !377, line: 925, type: !67)
!3029 = !DILocalVariable(name: "argsize", arg: 3, scope: !3023, file: !377, line: 925, type: !65)
!3030 = !DILocation(line: 0, scope: !3023)
!3031 = !DILocation(line: 927, column: 10, scope: !3023)
!3032 = !DILocation(line: 927, column: 3, scope: !3023)
!3033 = distinct !DISubprogram(name: "quotearg", scope: !377, file: !377, line: 931, type: !787, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3034)
!3034 = !{!3035}
!3035 = !DILocalVariable(name: "arg", arg: 1, scope: !3033, file: !377, line: 931, type: !67)
!3036 = !DILocation(line: 0, scope: !3033)
!3037 = !DILocation(line: 0, scope: !2928, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 933, column: 10, scope: !3033)
!3039 = !DILocation(line: 921, column: 10, scope: !2928, inlinedAt: !3038)
!3040 = !DILocation(line: 933, column: 3, scope: !3033)
!3041 = distinct !DISubprogram(name: "quotearg_mem", scope: !377, file: !377, line: 937, type: !3042, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!8, !67, !65}
!3044 = !{!3045, !3046}
!3045 = !DILocalVariable(name: "arg", arg: 1, scope: !3041, file: !377, line: 937, type: !67)
!3046 = !DILocalVariable(name: "argsize", arg: 2, scope: !3041, file: !377, line: 937, type: !65)
!3047 = !DILocation(line: 0, scope: !3041)
!3048 = !DILocation(line: 0, scope: !3023, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 939, column: 10, scope: !3041)
!3050 = !DILocation(line: 927, column: 10, scope: !3023, inlinedAt: !3049)
!3051 = !DILocation(line: 939, column: 3, scope: !3041)
!3052 = distinct !DISubprogram(name: "quotearg_n_style", scope: !377, file: !377, line: 943, type: !3053, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!8, !6, !12, !67}
!3055 = !{!3056, !3057, !3058, !3059}
!3056 = !DILocalVariable(name: "n", arg: 1, scope: !3052, file: !377, line: 943, type: !6)
!3057 = !DILocalVariable(name: "s", arg: 2, scope: !3052, file: !377, line: 943, type: !12)
!3058 = !DILocalVariable(name: "arg", arg: 3, scope: !3052, file: !377, line: 943, type: !67)
!3059 = !DILocalVariable(name: "o", scope: !3052, file: !377, line: 945, type: !2163)
!3060 = !DILocation(line: 0, scope: !3052)
!3061 = !DILocation(line: 945, column: 3, scope: !3052)
!3062 = !DILocation(line: 945, column: 32, scope: !3052)
!3063 = !{!3064}
!3064 = distinct !{!3064, !3065, !"quoting_options_from_style: argument 0"}
!3065 = distinct !{!3065, !"quoting_options_from_style"}
!3066 = !DILocation(line: 945, column: 36, scope: !3052)
!3067 = !DILocalVariable(name: "style", arg: 1, scope: !3068, file: !377, line: 183, type: !12)
!3068 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !377, file: !377, line: 183, type: !3069, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!392, !12}
!3071 = !{!3067, !3072}
!3072 = !DILocalVariable(name: "o", scope: !3068, file: !377, line: 185, type: !392)
!3073 = !DILocation(line: 0, scope: !3068, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 945, column: 36, scope: !3052)
!3075 = !DILocation(line: 185, column: 26, scope: !3068, inlinedAt: !3074)
!3076 = !DILocation(line: 186, column: 13, scope: !3077, inlinedAt: !3074)
!3077 = distinct !DILexicalBlock(scope: !3068, file: !377, line: 186, column: 7)
!3078 = !DILocation(line: 186, column: 7, scope: !3068, inlinedAt: !3074)
!3079 = !DILocation(line: 187, column: 5, scope: !3077, inlinedAt: !3074)
!3080 = !DILocation(line: 188, column: 5, scope: !3068, inlinedAt: !3074)
!3081 = !DILocation(line: 188, column: 11, scope: !3068, inlinedAt: !3074)
!3082 = !DILocation(line: 946, column: 10, scope: !3052)
!3083 = !DILocation(line: 947, column: 1, scope: !3052)
!3084 = !DILocation(line: 946, column: 3, scope: !3052)
!3085 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !377, file: !377, line: 950, type: !3086, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!8, !6, !12, !67, !65}
!3088 = !{!3089, !3090, !3091, !3092, !3093}
!3089 = !DILocalVariable(name: "n", arg: 1, scope: !3085, file: !377, line: 950, type: !6)
!3090 = !DILocalVariable(name: "s", arg: 2, scope: !3085, file: !377, line: 950, type: !12)
!3091 = !DILocalVariable(name: "arg", arg: 3, scope: !3085, file: !377, line: 951, type: !67)
!3092 = !DILocalVariable(name: "argsize", arg: 4, scope: !3085, file: !377, line: 951, type: !65)
!3093 = !DILocalVariable(name: "o", scope: !3085, file: !377, line: 953, type: !2163)
!3094 = !DILocation(line: 0, scope: !3085)
!3095 = !DILocation(line: 953, column: 3, scope: !3085)
!3096 = !DILocation(line: 953, column: 32, scope: !3085)
!3097 = !{!3098}
!3098 = distinct !{!3098, !3099, !"quoting_options_from_style: argument 0"}
!3099 = distinct !{!3099, !"quoting_options_from_style"}
!3100 = !DILocation(line: 953, column: 36, scope: !3085)
!3101 = !DILocation(line: 0, scope: !3068, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 953, column: 36, scope: !3085)
!3103 = !DILocation(line: 185, column: 26, scope: !3068, inlinedAt: !3102)
!3104 = !DILocation(line: 186, column: 13, scope: !3077, inlinedAt: !3102)
!3105 = !DILocation(line: 186, column: 7, scope: !3068, inlinedAt: !3102)
!3106 = !DILocation(line: 187, column: 5, scope: !3077, inlinedAt: !3102)
!3107 = !DILocation(line: 188, column: 5, scope: !3068, inlinedAt: !3102)
!3108 = !DILocation(line: 188, column: 11, scope: !3068, inlinedAt: !3102)
!3109 = !DILocation(line: 954, column: 10, scope: !3085)
!3110 = !DILocation(line: 955, column: 1, scope: !3085)
!3111 = !DILocation(line: 954, column: 3, scope: !3085)
!3112 = distinct !DISubprogram(name: "quotearg_style", scope: !377, file: !377, line: 958, type: !3113, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3115)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!8, !12, !67}
!3115 = !{!3116, !3117}
!3116 = !DILocalVariable(name: "s", arg: 1, scope: !3112, file: !377, line: 958, type: !12)
!3117 = !DILocalVariable(name: "arg", arg: 2, scope: !3112, file: !377, line: 958, type: !67)
!3118 = !DILocation(line: 0, scope: !3112)
!3119 = !DILocation(line: 0, scope: !3052, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 960, column: 10, scope: !3112)
!3121 = !DILocation(line: 945, column: 3, scope: !3052, inlinedAt: !3120)
!3122 = !DILocation(line: 945, column: 32, scope: !3052, inlinedAt: !3120)
!3123 = !{!3124}
!3124 = distinct !{!3124, !3125, !"quoting_options_from_style: argument 0"}
!3125 = distinct !{!3125, !"quoting_options_from_style"}
!3126 = !DILocation(line: 945, column: 36, scope: !3052, inlinedAt: !3120)
!3127 = !DILocation(line: 0, scope: !3068, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 945, column: 36, scope: !3052, inlinedAt: !3120)
!3129 = !DILocation(line: 185, column: 26, scope: !3068, inlinedAt: !3128)
!3130 = !DILocation(line: 186, column: 13, scope: !3077, inlinedAt: !3128)
!3131 = !DILocation(line: 186, column: 7, scope: !3068, inlinedAt: !3128)
!3132 = !DILocation(line: 187, column: 5, scope: !3077, inlinedAt: !3128)
!3133 = !DILocation(line: 188, column: 5, scope: !3068, inlinedAt: !3128)
!3134 = !DILocation(line: 188, column: 11, scope: !3068, inlinedAt: !3128)
!3135 = !DILocation(line: 946, column: 10, scope: !3052, inlinedAt: !3120)
!3136 = !DILocation(line: 947, column: 1, scope: !3052, inlinedAt: !3120)
!3137 = !DILocation(line: 960, column: 3, scope: !3112)
!3138 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !377, file: !377, line: 964, type: !3139, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!8, !12, !67, !65}
!3141 = !{!3142, !3143, !3144}
!3142 = !DILocalVariable(name: "s", arg: 1, scope: !3138, file: !377, line: 964, type: !12)
!3143 = !DILocalVariable(name: "arg", arg: 2, scope: !3138, file: !377, line: 964, type: !67)
!3144 = !DILocalVariable(name: "argsize", arg: 3, scope: !3138, file: !377, line: 964, type: !65)
!3145 = !DILocation(line: 0, scope: !3138)
!3146 = !DILocation(line: 0, scope: !3085, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 966, column: 10, scope: !3138)
!3148 = !DILocation(line: 953, column: 3, scope: !3085, inlinedAt: !3147)
!3149 = !DILocation(line: 953, column: 32, scope: !3085, inlinedAt: !3147)
!3150 = !{!3151}
!3151 = distinct !{!3151, !3152, !"quoting_options_from_style: argument 0"}
!3152 = distinct !{!3152, !"quoting_options_from_style"}
!3153 = !DILocation(line: 953, column: 36, scope: !3085, inlinedAt: !3147)
!3154 = !DILocation(line: 0, scope: !3068, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 953, column: 36, scope: !3085, inlinedAt: !3147)
!3156 = !DILocation(line: 185, column: 26, scope: !3068, inlinedAt: !3155)
!3157 = !DILocation(line: 186, column: 13, scope: !3077, inlinedAt: !3155)
!3158 = !DILocation(line: 186, column: 7, scope: !3068, inlinedAt: !3155)
!3159 = !DILocation(line: 187, column: 5, scope: !3077, inlinedAt: !3155)
!3160 = !DILocation(line: 188, column: 5, scope: !3068, inlinedAt: !3155)
!3161 = !DILocation(line: 188, column: 11, scope: !3068, inlinedAt: !3155)
!3162 = !DILocation(line: 954, column: 10, scope: !3085, inlinedAt: !3147)
!3163 = !DILocation(line: 955, column: 1, scope: !3085, inlinedAt: !3147)
!3164 = !DILocation(line: 966, column: 3, scope: !3138)
!3165 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !377, file: !377, line: 970, type: !3166, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!8, !67, !65, !9}
!3168 = !{!3169, !3170, !3171, !3172}
!3169 = !DILocalVariable(name: "arg", arg: 1, scope: !3165, file: !377, line: 970, type: !67)
!3170 = !DILocalVariable(name: "argsize", arg: 2, scope: !3165, file: !377, line: 970, type: !65)
!3171 = !DILocalVariable(name: "ch", arg: 3, scope: !3165, file: !377, line: 970, type: !9)
!3172 = !DILocalVariable(name: "options", scope: !3165, file: !377, line: 972, type: !392)
!3173 = !DILocation(line: 0, scope: !3165)
!3174 = !DILocation(line: 972, column: 3, scope: !3165)
!3175 = !DILocation(line: 972, column: 26, scope: !3165)
!3176 = !DILocation(line: 973, column: 13, scope: !3165)
!3177 = !{i64 0, i64 4, !684, i64 4, i64 4, !675, i64 8, i64 32, !684, i64 40, i64 8, !575, i64 48, i64 8, !575}
!3178 = !DILocation(line: 0, scope: !2183, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 974, column: 3, scope: !3165)
!3180 = !DILocation(line: 147, column: 62, scope: !2183, inlinedAt: !3179)
!3181 = !DILocation(line: 147, column: 57, scope: !2183, inlinedAt: !3179)
!3182 = !DILocation(line: 148, column: 15, scope: !2183, inlinedAt: !3179)
!3183 = !DILocation(line: 149, column: 21, scope: !2183, inlinedAt: !3179)
!3184 = !DILocation(line: 149, column: 24, scope: !2183, inlinedAt: !3179)
!3185 = !DILocation(line: 149, column: 34, scope: !2183, inlinedAt: !3179)
!3186 = !DILocation(line: 150, column: 19, scope: !2183, inlinedAt: !3179)
!3187 = !DILocation(line: 150, column: 24, scope: !2183, inlinedAt: !3179)
!3188 = !DILocation(line: 150, column: 6, scope: !2183, inlinedAt: !3179)
!3189 = !DILocation(line: 975, column: 10, scope: !3165)
!3190 = !DILocation(line: 976, column: 1, scope: !3165)
!3191 = !DILocation(line: 975, column: 3, scope: !3165)
!3192 = distinct !DISubprogram(name: "quotearg_char", scope: !377, file: !377, line: 979, type: !3193, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3195)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!8, !67, !9}
!3195 = !{!3196, !3197}
!3196 = !DILocalVariable(name: "arg", arg: 1, scope: !3192, file: !377, line: 979, type: !67)
!3197 = !DILocalVariable(name: "ch", arg: 2, scope: !3192, file: !377, line: 979, type: !9)
!3198 = !DILocation(line: 0, scope: !3192)
!3199 = !DILocation(line: 0, scope: !3165, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 981, column: 10, scope: !3192)
!3201 = !DILocation(line: 972, column: 3, scope: !3165, inlinedAt: !3200)
!3202 = !DILocation(line: 972, column: 26, scope: !3165, inlinedAt: !3200)
!3203 = !DILocation(line: 973, column: 13, scope: !3165, inlinedAt: !3200)
!3204 = !DILocation(line: 0, scope: !2183, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 974, column: 3, scope: !3165, inlinedAt: !3200)
!3206 = !DILocation(line: 147, column: 62, scope: !2183, inlinedAt: !3205)
!3207 = !DILocation(line: 147, column: 57, scope: !2183, inlinedAt: !3205)
!3208 = !DILocation(line: 148, column: 15, scope: !2183, inlinedAt: !3205)
!3209 = !DILocation(line: 149, column: 21, scope: !2183, inlinedAt: !3205)
!3210 = !DILocation(line: 149, column: 24, scope: !2183, inlinedAt: !3205)
!3211 = !DILocation(line: 149, column: 34, scope: !2183, inlinedAt: !3205)
!3212 = !DILocation(line: 150, column: 19, scope: !2183, inlinedAt: !3205)
!3213 = !DILocation(line: 150, column: 24, scope: !2183, inlinedAt: !3205)
!3214 = !DILocation(line: 150, column: 6, scope: !2183, inlinedAt: !3205)
!3215 = !DILocation(line: 975, column: 10, scope: !3165, inlinedAt: !3200)
!3216 = !DILocation(line: 976, column: 1, scope: !3165, inlinedAt: !3200)
!3217 = !DILocation(line: 981, column: 3, scope: !3192)
!3218 = distinct !DISubprogram(name: "quotearg_colon", scope: !377, file: !377, line: 985, type: !787, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3219)
!3219 = !{!3220}
!3220 = !DILocalVariable(name: "arg", arg: 1, scope: !3218, file: !377, line: 985, type: !67)
!3221 = !DILocation(line: 0, scope: !3218)
!3222 = !DILocation(line: 0, scope: !3192, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 987, column: 10, scope: !3218)
!3224 = !DILocation(line: 0, scope: !3165, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 981, column: 10, scope: !3192, inlinedAt: !3223)
!3226 = !DILocation(line: 972, column: 3, scope: !3165, inlinedAt: !3225)
!3227 = !DILocation(line: 972, column: 26, scope: !3165, inlinedAt: !3225)
!3228 = !DILocation(line: 973, column: 13, scope: !3165, inlinedAt: !3225)
!3229 = !DILocation(line: 0, scope: !2183, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 974, column: 3, scope: !3165, inlinedAt: !3225)
!3231 = !DILocation(line: 147, column: 57, scope: !2183, inlinedAt: !3230)
!3232 = !DILocation(line: 149, column: 21, scope: !2183, inlinedAt: !3230)
!3233 = !DILocation(line: 150, column: 6, scope: !2183, inlinedAt: !3230)
!3234 = !DILocation(line: 975, column: 10, scope: !3165, inlinedAt: !3225)
!3235 = !DILocation(line: 976, column: 1, scope: !3165, inlinedAt: !3225)
!3236 = !DILocation(line: 987, column: 3, scope: !3218)
!3237 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !377, file: !377, line: 991, type: !3042, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3238)
!3238 = !{!3239, !3240}
!3239 = !DILocalVariable(name: "arg", arg: 1, scope: !3237, file: !377, line: 991, type: !67)
!3240 = !DILocalVariable(name: "argsize", arg: 2, scope: !3237, file: !377, line: 991, type: !65)
!3241 = !DILocation(line: 0, scope: !3237)
!3242 = !DILocation(line: 0, scope: !3165, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 993, column: 10, scope: !3237)
!3244 = !DILocation(line: 972, column: 3, scope: !3165, inlinedAt: !3243)
!3245 = !DILocation(line: 972, column: 26, scope: !3165, inlinedAt: !3243)
!3246 = !DILocation(line: 973, column: 13, scope: !3165, inlinedAt: !3243)
!3247 = !DILocation(line: 0, scope: !2183, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 974, column: 3, scope: !3165, inlinedAt: !3243)
!3249 = !DILocation(line: 147, column: 57, scope: !2183, inlinedAt: !3248)
!3250 = !DILocation(line: 149, column: 21, scope: !2183, inlinedAt: !3248)
!3251 = !DILocation(line: 150, column: 6, scope: !2183, inlinedAt: !3248)
!3252 = !DILocation(line: 975, column: 10, scope: !3165, inlinedAt: !3243)
!3253 = !DILocation(line: 976, column: 1, scope: !3165, inlinedAt: !3243)
!3254 = !DILocation(line: 993, column: 3, scope: !3237)
!3255 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !377, file: !377, line: 997, type: !3053, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3256)
!3256 = !{!3257, !3258, !3259, !3260}
!3257 = !DILocalVariable(name: "n", arg: 1, scope: !3255, file: !377, line: 997, type: !6)
!3258 = !DILocalVariable(name: "s", arg: 2, scope: !3255, file: !377, line: 997, type: !12)
!3259 = !DILocalVariable(name: "arg", arg: 3, scope: !3255, file: !377, line: 997, type: !67)
!3260 = !DILocalVariable(name: "options", scope: !3255, file: !377, line: 999, type: !392)
!3261 = !DILocation(line: 0, scope: !3255)
!3262 = !DILocation(line: 999, column: 3, scope: !3255)
!3263 = !DILocation(line: 999, column: 26, scope: !3255)
!3264 = !DILocation(line: 0, scope: !3068, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 1000, column: 13, scope: !3255)
!3266 = !DILocation(line: 186, column: 13, scope: !3077, inlinedAt: !3265)
!3267 = !DILocation(line: 186, column: 7, scope: !3068, inlinedAt: !3265)
!3268 = !DILocation(line: 187, column: 5, scope: !3077, inlinedAt: !3265)
!3269 = !{!3270}
!3270 = distinct !{!3270, !3271, !"quoting_options_from_style: argument 0"}
!3271 = distinct !{!3271, !"quoting_options_from_style"}
!3272 = !DILocation(line: 1000, column: 13, scope: !3255)
!3273 = !DILocation(line: 0, scope: !2183, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 1001, column: 3, scope: !3255)
!3275 = !DILocation(line: 147, column: 57, scope: !2183, inlinedAt: !3274)
!3276 = !DILocation(line: 149, column: 21, scope: !2183, inlinedAt: !3274)
!3277 = !DILocation(line: 150, column: 6, scope: !2183, inlinedAt: !3274)
!3278 = !DILocation(line: 1002, column: 10, scope: !3255)
!3279 = !DILocation(line: 1003, column: 1, scope: !3255)
!3280 = !DILocation(line: 1002, column: 3, scope: !3255)
!3281 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !377, file: !377, line: 1006, type: !3282, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!8, !6, !67, !67, !67}
!3284 = !{!3285, !3286, !3287, !3288}
!3285 = !DILocalVariable(name: "n", arg: 1, scope: !3281, file: !377, line: 1006, type: !6)
!3286 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3281, file: !377, line: 1006, type: !67)
!3287 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3281, file: !377, line: 1007, type: !67)
!3288 = !DILocalVariable(name: "arg", arg: 4, scope: !3281, file: !377, line: 1007, type: !67)
!3289 = !DILocation(line: 0, scope: !3281)
!3290 = !DILocalVariable(name: "n", arg: 1, scope: !3291, file: !377, line: 1014, type: !6)
!3291 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !377, file: !377, line: 1014, type: !3292, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3294)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!8, !6, !67, !67, !67, !65}
!3294 = !{!3290, !3295, !3296, !3297, !3298, !3299}
!3295 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3291, file: !377, line: 1014, type: !67)
!3296 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3291, file: !377, line: 1015, type: !67)
!3297 = !DILocalVariable(name: "arg", arg: 4, scope: !3291, file: !377, line: 1016, type: !67)
!3298 = !DILocalVariable(name: "argsize", arg: 5, scope: !3291, file: !377, line: 1016, type: !65)
!3299 = !DILocalVariable(name: "o", scope: !3291, file: !377, line: 1018, type: !392)
!3300 = !DILocation(line: 0, scope: !3291, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 1009, column: 10, scope: !3281)
!3302 = !DILocation(line: 1018, column: 3, scope: !3291, inlinedAt: !3301)
!3303 = !DILocation(line: 1018, column: 26, scope: !3291, inlinedAt: !3301)
!3304 = !DILocation(line: 1018, column: 30, scope: !3291, inlinedAt: !3301)
!3305 = !DILocation(line: 0, scope: !2223, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 1019, column: 3, scope: !3291, inlinedAt: !3301)
!3307 = !DILocation(line: 174, column: 6, scope: !2223, inlinedAt: !3306)
!3308 = !DILocation(line: 174, column: 12, scope: !2223, inlinedAt: !3306)
!3309 = !DILocation(line: 175, column: 8, scope: !2237, inlinedAt: !3306)
!3310 = !DILocation(line: 175, column: 19, scope: !2237, inlinedAt: !3306)
!3311 = !DILocation(line: 176, column: 5, scope: !2237, inlinedAt: !3306)
!3312 = !DILocation(line: 177, column: 6, scope: !2223, inlinedAt: !3306)
!3313 = !DILocation(line: 177, column: 17, scope: !2223, inlinedAt: !3306)
!3314 = !DILocation(line: 178, column: 6, scope: !2223, inlinedAt: !3306)
!3315 = !DILocation(line: 178, column: 18, scope: !2223, inlinedAt: !3306)
!3316 = !DILocation(line: 1020, column: 10, scope: !3291, inlinedAt: !3301)
!3317 = !DILocation(line: 1021, column: 1, scope: !3291, inlinedAt: !3301)
!3318 = !DILocation(line: 1009, column: 3, scope: !3281)
!3319 = !DILocation(line: 0, scope: !3291)
!3320 = !DILocation(line: 1018, column: 3, scope: !3291)
!3321 = !DILocation(line: 1018, column: 26, scope: !3291)
!3322 = !DILocation(line: 1018, column: 30, scope: !3291)
!3323 = !DILocation(line: 0, scope: !2223, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 1019, column: 3, scope: !3291)
!3325 = !DILocation(line: 174, column: 6, scope: !2223, inlinedAt: !3324)
!3326 = !DILocation(line: 174, column: 12, scope: !2223, inlinedAt: !3324)
!3327 = !DILocation(line: 175, column: 8, scope: !2237, inlinedAt: !3324)
!3328 = !DILocation(line: 175, column: 19, scope: !2237, inlinedAt: !3324)
!3329 = !DILocation(line: 176, column: 5, scope: !2237, inlinedAt: !3324)
!3330 = !DILocation(line: 177, column: 6, scope: !2223, inlinedAt: !3324)
!3331 = !DILocation(line: 177, column: 17, scope: !2223, inlinedAt: !3324)
!3332 = !DILocation(line: 178, column: 6, scope: !2223, inlinedAt: !3324)
!3333 = !DILocation(line: 178, column: 18, scope: !2223, inlinedAt: !3324)
!3334 = !DILocation(line: 1020, column: 10, scope: !3291)
!3335 = !DILocation(line: 1021, column: 1, scope: !3291)
!3336 = !DILocation(line: 1020, column: 3, scope: !3291)
!3337 = distinct !DISubprogram(name: "quotearg_custom", scope: !377, file: !377, line: 1024, type: !3338, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3340)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!8, !67, !67, !67}
!3340 = !{!3341, !3342, !3343}
!3341 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3337, file: !377, line: 1024, type: !67)
!3342 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3337, file: !377, line: 1024, type: !67)
!3343 = !DILocalVariable(name: "arg", arg: 3, scope: !3337, file: !377, line: 1025, type: !67)
!3344 = !DILocation(line: 0, scope: !3337)
!3345 = !DILocation(line: 0, scope: !3281, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 1027, column: 10, scope: !3337)
!3347 = !DILocation(line: 0, scope: !3291, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 1009, column: 10, scope: !3281, inlinedAt: !3346)
!3349 = !DILocation(line: 1018, column: 3, scope: !3291, inlinedAt: !3348)
!3350 = !DILocation(line: 1018, column: 26, scope: !3291, inlinedAt: !3348)
!3351 = !DILocation(line: 1018, column: 30, scope: !3291, inlinedAt: !3348)
!3352 = !DILocation(line: 0, scope: !2223, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 1019, column: 3, scope: !3291, inlinedAt: !3348)
!3354 = !DILocation(line: 174, column: 6, scope: !2223, inlinedAt: !3353)
!3355 = !DILocation(line: 174, column: 12, scope: !2223, inlinedAt: !3353)
!3356 = !DILocation(line: 175, column: 8, scope: !2237, inlinedAt: !3353)
!3357 = !DILocation(line: 175, column: 19, scope: !2237, inlinedAt: !3353)
!3358 = !DILocation(line: 176, column: 5, scope: !2237, inlinedAt: !3353)
!3359 = !DILocation(line: 177, column: 6, scope: !2223, inlinedAt: !3353)
!3360 = !DILocation(line: 177, column: 17, scope: !2223, inlinedAt: !3353)
!3361 = !DILocation(line: 178, column: 6, scope: !2223, inlinedAt: !3353)
!3362 = !DILocation(line: 178, column: 18, scope: !2223, inlinedAt: !3353)
!3363 = !DILocation(line: 1020, column: 10, scope: !3291, inlinedAt: !3348)
!3364 = !DILocation(line: 1021, column: 1, scope: !3291, inlinedAt: !3348)
!3365 = !DILocation(line: 1027, column: 3, scope: !3337)
!3366 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !377, file: !377, line: 1031, type: !3367, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3369)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!8, !67, !67, !67, !65}
!3369 = !{!3370, !3371, !3372, !3373}
!3370 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3366, file: !377, line: 1031, type: !67)
!3371 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3366, file: !377, line: 1031, type: !67)
!3372 = !DILocalVariable(name: "arg", arg: 3, scope: !3366, file: !377, line: 1032, type: !67)
!3373 = !DILocalVariable(name: "argsize", arg: 4, scope: !3366, file: !377, line: 1032, type: !65)
!3374 = !DILocation(line: 0, scope: !3366)
!3375 = !DILocation(line: 0, scope: !3291, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 1034, column: 10, scope: !3366)
!3377 = !DILocation(line: 1018, column: 3, scope: !3291, inlinedAt: !3376)
!3378 = !DILocation(line: 1018, column: 26, scope: !3291, inlinedAt: !3376)
!3379 = !DILocation(line: 1018, column: 30, scope: !3291, inlinedAt: !3376)
!3380 = !DILocation(line: 0, scope: !2223, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 1019, column: 3, scope: !3291, inlinedAt: !3376)
!3382 = !DILocation(line: 174, column: 6, scope: !2223, inlinedAt: !3381)
!3383 = !DILocation(line: 174, column: 12, scope: !2223, inlinedAt: !3381)
!3384 = !DILocation(line: 175, column: 8, scope: !2237, inlinedAt: !3381)
!3385 = !DILocation(line: 175, column: 19, scope: !2237, inlinedAt: !3381)
!3386 = !DILocation(line: 176, column: 5, scope: !2237, inlinedAt: !3381)
!3387 = !DILocation(line: 177, column: 6, scope: !2223, inlinedAt: !3381)
!3388 = !DILocation(line: 177, column: 17, scope: !2223, inlinedAt: !3381)
!3389 = !DILocation(line: 178, column: 6, scope: !2223, inlinedAt: !3381)
!3390 = !DILocation(line: 178, column: 18, scope: !2223, inlinedAt: !3381)
!3391 = !DILocation(line: 1020, column: 10, scope: !3291, inlinedAt: !3376)
!3392 = !DILocation(line: 1021, column: 1, scope: !3291, inlinedAt: !3376)
!3393 = !DILocation(line: 1034, column: 3, scope: !3366)
!3394 = distinct !DISubprogram(name: "quote_n_mem", scope: !377, file: !377, line: 1049, type: !3395, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3397)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!67, !6, !67, !65}
!3397 = !{!3398, !3399, !3400}
!3398 = !DILocalVariable(name: "n", arg: 1, scope: !3394, file: !377, line: 1049, type: !6)
!3399 = !DILocalVariable(name: "arg", arg: 2, scope: !3394, file: !377, line: 1049, type: !67)
!3400 = !DILocalVariable(name: "argsize", arg: 3, scope: !3394, file: !377, line: 1049, type: !65)
!3401 = !DILocation(line: 0, scope: !3394)
!3402 = !DILocation(line: 1051, column: 10, scope: !3394)
!3403 = !DILocation(line: 1051, column: 3, scope: !3394)
!3404 = distinct !DISubprogram(name: "quote_mem", scope: !377, file: !377, line: 1055, type: !3405, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3407)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!67, !67, !65}
!3407 = !{!3408, !3409}
!3408 = !DILocalVariable(name: "arg", arg: 1, scope: !3404, file: !377, line: 1055, type: !67)
!3409 = !DILocalVariable(name: "argsize", arg: 2, scope: !3404, file: !377, line: 1055, type: !65)
!3410 = !DILocation(line: 0, scope: !3404)
!3411 = !DILocation(line: 0, scope: !3394, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 1057, column: 10, scope: !3404)
!3413 = !DILocation(line: 1051, column: 10, scope: !3394, inlinedAt: !3412)
!3414 = !DILocation(line: 1057, column: 3, scope: !3404)
!3415 = distinct !DISubprogram(name: "quote_n", scope: !377, file: !377, line: 1061, type: !3416, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!67, !6, !67}
!3418 = !{!3419, !3420}
!3419 = !DILocalVariable(name: "n", arg: 1, scope: !3415, file: !377, line: 1061, type: !6)
!3420 = !DILocalVariable(name: "arg", arg: 2, scope: !3415, file: !377, line: 1061, type: !67)
!3421 = !DILocation(line: 0, scope: !3415)
!3422 = !DILocation(line: 0, scope: !3394, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 1063, column: 10, scope: !3415)
!3424 = !DILocation(line: 1051, column: 10, scope: !3394, inlinedAt: !3423)
!3425 = !DILocation(line: 1063, column: 3, scope: !3415)
!3426 = distinct !DISubprogram(name: "quote", scope: !377, file: !377, line: 1067, type: !3427, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!67, !67}
!3429 = !{!3430}
!3430 = !DILocalVariable(name: "arg", arg: 1, scope: !3426, file: !377, line: 1067, type: !67)
!3431 = !DILocation(line: 0, scope: !3426)
!3432 = !DILocation(line: 0, scope: !3415, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 1069, column: 10, scope: !3426)
!3434 = !DILocation(line: 0, scope: !3394, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 1063, column: 10, scope: !3415, inlinedAt: !3433)
!3436 = !DILocation(line: 1051, column: 10, scope: !3394, inlinedAt: !3435)
!3437 = !DILocation(line: 1069, column: 3, scope: !3426)
!3438 = distinct !DISubprogram(name: "safe_write", scope: !3439, file: !3439, line: 56, type: !3440, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !3443)
!3439 = !DIFile(filename: "./lib/safe-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "434e548fbeff241cc07e1dbcc7b4611f")
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!225, !6, !3442, !223}
!3442 = !DIDerivedType(tag: DW_TAG_typedef, name: "bufptr", file: !3439, line: 45, baseType: !793)
!3443 = !{!3444, !3445, !3446, !3447}
!3444 = !DILocalVariable(name: "fd", arg: 1, scope: !3438, file: !3439, line: 56, type: !6)
!3445 = !DILocalVariable(name: "buf", arg: 2, scope: !3438, file: !3439, line: 56, type: !3442)
!3446 = !DILocalVariable(name: "count", arg: 3, scope: !3438, file: !3439, line: 56, type: !223)
!3447 = !DILocalVariable(name: "result", scope: !3448, file: !3439, line: 60, type: !3451)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !3439, line: 59, column: 5)
!3449 = distinct !DILexicalBlock(scope: !3450, file: !3439, line: 58, column: 3)
!3450 = distinct !DILexicalBlock(scope: !3438, file: !3439, line: 58, column: 3)
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !3452, line: 108, baseType: !978)
!3452 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!3453 = !DILocation(line: 0, scope: !3438)
!3454 = !DILocation(line: 58, column: 3, scope: !3438)
!3455 = !DILocation(line: 60, column: 24, scope: !3448)
!3456 = !DILocation(line: 0, scope: !3448)
!3457 = !DILocation(line: 62, column: 13, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3448, file: !3439, line: 62, column: 11)
!3459 = !DILocation(line: 62, column: 11, scope: !3448)
!3460 = !DILocation(line: 64, column: 16, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3458, file: !3439, line: 64, column: 16)
!3462 = !DILocation(line: 64, column: 16, scope: !3458)
!3463 = distinct !{!3463, !3464, !3465}
!3464 = !DILocation(line: 58, column: 3, scope: !3450)
!3465 = !DILocation(line: 70, column: 5, scope: !3450)
!3466 = !DILocation(line: 66, column: 22, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3461, file: !3439, line: 66, column: 16)
!3468 = !DILocation(line: 66, column: 32, scope: !3467)
!3469 = !DILocation(line: 0, scope: !3449)
!3470 = !DILocation(line: 71, column: 1, scope: !3438)
!3471 = !DISubprogram(name: "write", scope: !1522, file: !1522, line: 378, type: !3472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!3451, !6, !793, !65}
!3474 = distinct !DISubprogram(name: "version_etc_arn", scope: !494, file: !494, line: 61, type: !3475, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !493, retainedNodes: !3512)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{null, !3477, !67, !67, !67, !3511, !65}
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !3479)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !3480)
!3480 = !{!3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3479, file: !104, line: 51, baseType: !6, size: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3479, file: !104, line: 54, baseType: !8, size: 64, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3479, file: !104, line: 55, baseType: !8, size: 64, offset: 128)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3479, file: !104, line: 56, baseType: !8, size: 64, offset: 192)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3479, file: !104, line: 57, baseType: !8, size: 64, offset: 256)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3479, file: !104, line: 58, baseType: !8, size: 64, offset: 320)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3479, file: !104, line: 59, baseType: !8, size: 64, offset: 384)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3479, file: !104, line: 60, baseType: !8, size: 64, offset: 448)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3479, file: !104, line: 61, baseType: !8, size: 64, offset: 512)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3479, file: !104, line: 64, baseType: !8, size: 64, offset: 576)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3479, file: !104, line: 65, baseType: !8, size: 64, offset: 640)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3479, file: !104, line: 66, baseType: !8, size: 64, offset: 704)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3479, file: !104, line: 68, baseType: !119, size: 64, offset: 768)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3479, file: !104, line: 70, baseType: !3495, size: 64, offset: 832)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3479, file: !104, line: 72, baseType: !6, size: 32, offset: 896)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3479, file: !104, line: 73, baseType: !6, size: 32, offset: 928)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3479, file: !104, line: 74, baseType: !126, size: 64, offset: 960)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3479, file: !104, line: 77, baseType: !64, size: 16, offset: 1024)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3479, file: !104, line: 78, baseType: !130, size: 8, offset: 1040)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3479, file: !104, line: 79, baseType: !132, size: 8, offset: 1048)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3479, file: !104, line: 81, baseType: !136, size: 64, offset: 1088)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3479, file: !104, line: 89, baseType: !139, size: 64, offset: 1152)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3479, file: !104, line: 91, baseType: !141, size: 64, offset: 1216)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3479, file: !104, line: 92, baseType: !144, size: 64, offset: 1280)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3479, file: !104, line: 93, baseType: !3495, size: 64, offset: 1344)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3479, file: !104, line: 94, baseType: !60, size: 64, offset: 1408)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3479, file: !104, line: 95, baseType: !65, size: 64, offset: 1472)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3479, file: !104, line: 96, baseType: !6, size: 32, offset: 1536)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3479, file: !104, line: 98, baseType: !151, size: 160, offset: 1568)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!3512 = !{!3513, !3514, !3515, !3516, !3517, !3518}
!3513 = !DILocalVariable(name: "stream", arg: 1, scope: !3474, file: !494, line: 61, type: !3477)
!3514 = !DILocalVariable(name: "command_name", arg: 2, scope: !3474, file: !494, line: 62, type: !67)
!3515 = !DILocalVariable(name: "package", arg: 3, scope: !3474, file: !494, line: 62, type: !67)
!3516 = !DILocalVariable(name: "version", arg: 4, scope: !3474, file: !494, line: 63, type: !67)
!3517 = !DILocalVariable(name: "authors", arg: 5, scope: !3474, file: !494, line: 64, type: !3511)
!3518 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3474, file: !494, line: 64, type: !65)
!3519 = !DILocation(line: 0, scope: !3474)
!3520 = !DILocation(line: 66, column: 7, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3474, file: !494, line: 66, column: 7)
!3522 = !DILocation(line: 66, column: 7, scope: !3474)
!3523 = !DILocation(line: 67, column: 5, scope: !3521)
!3524 = !DILocation(line: 69, column: 5, scope: !3521)
!3525 = !DILocation(line: 83, column: 3, scope: !3474)
!3526 = !DILocation(line: 85, column: 3, scope: !3474)
!3527 = !DILocation(line: 88, column: 3, scope: !3474)
!3528 = !DILocation(line: 95, column: 3, scope: !3474)
!3529 = !DILocation(line: 97, column: 3, scope: !3474)
!3530 = !DILocation(line: 105, column: 7, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3474, file: !494, line: 98, column: 5)
!3532 = !DILocation(line: 106, column: 7, scope: !3531)
!3533 = !DILocation(line: 109, column: 7, scope: !3531)
!3534 = !DILocation(line: 110, column: 7, scope: !3531)
!3535 = !DILocation(line: 113, column: 7, scope: !3531)
!3536 = !DILocation(line: 115, column: 7, scope: !3531)
!3537 = !DILocation(line: 120, column: 7, scope: !3531)
!3538 = !DILocation(line: 122, column: 7, scope: !3531)
!3539 = !DILocation(line: 127, column: 7, scope: !3531)
!3540 = !DILocation(line: 129, column: 7, scope: !3531)
!3541 = !DILocation(line: 134, column: 7, scope: !3531)
!3542 = !DILocation(line: 137, column: 7, scope: !3531)
!3543 = !DILocation(line: 142, column: 7, scope: !3531)
!3544 = !DILocation(line: 145, column: 7, scope: !3531)
!3545 = !DILocation(line: 150, column: 7, scope: !3531)
!3546 = !DILocation(line: 154, column: 7, scope: !3531)
!3547 = !DILocation(line: 159, column: 7, scope: !3531)
!3548 = !DILocation(line: 163, column: 7, scope: !3531)
!3549 = !DILocation(line: 170, column: 7, scope: !3531)
!3550 = !DILocation(line: 174, column: 7, scope: !3531)
!3551 = !DILocation(line: 176, column: 1, scope: !3474)
!3552 = distinct !DISubprogram(name: "version_etc_ar", scope: !494, file: !494, line: 183, type: !3553, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !493, retainedNodes: !3555)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !3477, !67, !67, !67, !3511}
!3555 = !{!3556, !3557, !3558, !3559, !3560, !3561}
!3556 = !DILocalVariable(name: "stream", arg: 1, scope: !3552, file: !494, line: 183, type: !3477)
!3557 = !DILocalVariable(name: "command_name", arg: 2, scope: !3552, file: !494, line: 184, type: !67)
!3558 = !DILocalVariable(name: "package", arg: 3, scope: !3552, file: !494, line: 184, type: !67)
!3559 = !DILocalVariable(name: "version", arg: 4, scope: !3552, file: !494, line: 185, type: !67)
!3560 = !DILocalVariable(name: "authors", arg: 5, scope: !3552, file: !494, line: 185, type: !3511)
!3561 = !DILocalVariable(name: "n_authors", scope: !3552, file: !494, line: 187, type: !65)
!3562 = !DILocation(line: 0, scope: !3552)
!3563 = !DILocation(line: 189, column: 8, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3552, file: !494, line: 189, column: 3)
!3565 = !DILocation(line: 0, scope: !3564)
!3566 = !DILocation(line: 189, column: 23, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3564, file: !494, line: 189, column: 3)
!3568 = !DILocation(line: 189, column: 3, scope: !3564)
!3569 = !DILocation(line: 189, column: 52, scope: !3567)
!3570 = distinct !{!3570, !3568, !3571, !642}
!3571 = !DILocation(line: 190, column: 5, scope: !3564)
!3572 = !DILocation(line: 191, column: 3, scope: !3552)
!3573 = !DILocation(line: 192, column: 1, scope: !3552)
!3574 = distinct !DISubprogram(name: "version_etc_va", scope: !494, file: !494, line: 199, type: !3575, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !493, retainedNodes: !3588)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{null, !3477, !67, !67, !67, !3577}
!3577 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !239, line: 52, baseType: !3578)
!3578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !289, line: 32, baseType: !3579)
!3579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3580, baseType: !3581)
!3580 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !293, size: 256, elements: !3582)
!3582 = !{!3583, !3584, !3585, !3586, !3587}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3581, file: !3580, line: 192, baseType: !60, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3581, file: !3580, line: 192, baseType: !60, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3581, file: !3580, line: 192, baseType: !60, size: 64, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3581, file: !3580, line: 192, baseType: !6, size: 32, offset: 192)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3581, file: !3580, line: 192, baseType: !6, size: 32, offset: 224)
!3588 = !{!3589, !3590, !3591, !3592, !3593, !3594, !3595}
!3589 = !DILocalVariable(name: "stream", arg: 1, scope: !3574, file: !494, line: 199, type: !3477)
!3590 = !DILocalVariable(name: "command_name", arg: 2, scope: !3574, file: !494, line: 200, type: !67)
!3591 = !DILocalVariable(name: "package", arg: 3, scope: !3574, file: !494, line: 200, type: !67)
!3592 = !DILocalVariable(name: "version", arg: 4, scope: !3574, file: !494, line: 201, type: !67)
!3593 = !DILocalVariable(name: "authors", arg: 5, scope: !3574, file: !494, line: 201, type: !3577)
!3594 = !DILocalVariable(name: "n_authors", scope: !3574, file: !494, line: 203, type: !65)
!3595 = !DILocalVariable(name: "authtab", scope: !3574, file: !494, line: 204, type: !3596)
!3596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 640, elements: !261)
!3597 = !DILocation(line: 0, scope: !3574)
!3598 = !DILocation(line: 201, column: 46, scope: !3574)
!3599 = !DILocation(line: 204, column: 3, scope: !3574)
!3600 = !DILocation(line: 204, column: 15, scope: !3574)
!3601 = !DILocation(line: 208, column: 35, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !494, line: 206, column: 3)
!3603 = distinct !DILexicalBlock(scope: !3574, file: !494, line: 206, column: 3)
!3604 = !DILocation(line: 208, column: 14, scope: !3602)
!3605 = !DILocation(line: 208, column: 33, scope: !3602)
!3606 = !DILocation(line: 208, column: 67, scope: !3602)
!3607 = !DILocation(line: 206, column: 3, scope: !3603)
!3608 = !DILocation(line: 0, scope: !3603)
!3609 = !DILocation(line: 211, column: 3, scope: !3574)
!3610 = !DILocation(line: 213, column: 1, scope: !3574)
!3611 = distinct !DISubprogram(name: "version_etc", scope: !494, file: !494, line: 230, type: !3612, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !493, retainedNodes: !3614)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{null, !3477, !67, !67, !67, null}
!3614 = !{!3615, !3616, !3617, !3618, !3619}
!3615 = !DILocalVariable(name: "stream", arg: 1, scope: !3611, file: !494, line: 230, type: !3477)
!3616 = !DILocalVariable(name: "command_name", arg: 2, scope: !3611, file: !494, line: 231, type: !67)
!3617 = !DILocalVariable(name: "package", arg: 3, scope: !3611, file: !494, line: 231, type: !67)
!3618 = !DILocalVariable(name: "version", arg: 4, scope: !3611, file: !494, line: 232, type: !67)
!3619 = !DILocalVariable(name: "authors", scope: !3611, file: !494, line: 234, type: !3577)
!3620 = !DILocation(line: 0, scope: !3611)
!3621 = !DILocation(line: 234, column: 3, scope: !3611)
!3622 = !DILocation(line: 234, column: 11, scope: !3611)
!3623 = !DILocation(line: 235, column: 3, scope: !3611)
!3624 = !DILocation(line: 236, column: 3, scope: !3611)
!3625 = !DILocation(line: 237, column: 3, scope: !3611)
!3626 = !DILocation(line: 238, column: 1, scope: !3611)
!3627 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !494, file: !494, line: 241, type: !314, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !493, retainedNodes: !584)
!3628 = !DILocation(line: 243, column: 3, scope: !3627)
!3629 = !DILocation(line: 248, column: 3, scope: !3627)
!3630 = !DILocation(line: 254, column: 3, scope: !3627)
!3631 = !DILocation(line: 259, column: 3, scope: !3627)
!3632 = !DILocation(line: 261, column: 1, scope: !3627)
!3633 = distinct !DISubprogram(name: "xalignalloc", scope: !501, file: !501, line: 27, type: !3634, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3636)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!60, !223, !223}
!3636 = !{!3637, !3638, !3639}
!3637 = !DILocalVariable(name: "alignment", arg: 1, scope: !3633, file: !501, line: 27, type: !223)
!3638 = !DILocalVariable(name: "size", arg: 2, scope: !3633, file: !501, line: 27, type: !223)
!3639 = !DILocalVariable(name: "p", scope: !3633, file: !501, line: 29, type: !60)
!3640 = !DILocation(line: 0, scope: !3633)
!3641 = !DILocalVariable(name: "alignment", arg: 1, scope: !3642, file: !1451, line: 90, type: !223)
!3642 = distinct !DISubprogram(name: "alignalloc", scope: !1451, file: !1451, line: 90, type: !3634, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3643)
!3643 = !{!3641, !3644}
!3644 = !DILocalVariable(name: "size", arg: 2, scope: !3642, file: !1451, line: 90, type: !223)
!3645 = !DILocation(line: 0, scope: !3642, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 29, column: 13, scope: !3633)
!3647 = !DILocation(line: 98, column: 10, scope: !3642, inlinedAt: !3646)
!3648 = !DILocation(line: 30, column: 8, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3633, file: !501, line: 30, column: 7)
!3650 = !DILocation(line: 30, column: 7, scope: !3633)
!3651 = !DILocation(line: 31, column: 5, scope: !3649)
!3652 = !DILocation(line: 32, column: 3, scope: !3633)
!3653 = distinct !DISubprogram(name: "xnrealloc", scope: !3654, file: !3654, line: 147, type: !3655, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3657)
!3654 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!60, !60, !65, !65}
!3657 = !{!3658, !3659, !3660}
!3658 = !DILocalVariable(name: "p", arg: 1, scope: !3653, file: !3654, line: 147, type: !60)
!3659 = !DILocalVariable(name: "n", arg: 2, scope: !3653, file: !3654, line: 147, type: !65)
!3660 = !DILocalVariable(name: "s", arg: 3, scope: !3653, file: !3654, line: 147, type: !65)
!3661 = !DILocation(line: 0, scope: !3653)
!3662 = !DILocalVariable(name: "p", arg: 1, scope: !3663, file: !503, line: 83, type: !60)
!3663 = distinct !DISubprogram(name: "xreallocarray", scope: !503, file: !503, line: 83, type: !3655, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3664)
!3664 = !{!3662, !3665, !3666}
!3665 = !DILocalVariable(name: "n", arg: 2, scope: !3663, file: !503, line: 83, type: !65)
!3666 = !DILocalVariable(name: "s", arg: 3, scope: !3663, file: !503, line: 83, type: !65)
!3667 = !DILocation(line: 0, scope: !3663, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 149, column: 10, scope: !3653)
!3669 = !DILocation(line: 85, column: 25, scope: !3663, inlinedAt: !3668)
!3670 = !DILocalVariable(name: "p", arg: 1, scope: !3671, file: !503, line: 37, type: !60)
!3671 = distinct !DISubprogram(name: "check_nonnull", scope: !503, file: !503, line: 37, type: !3672, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3674)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!60, !60}
!3674 = !{!3670}
!3675 = !DILocation(line: 0, scope: !3671, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 85, column: 10, scope: !3663, inlinedAt: !3668)
!3677 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !3676)
!3678 = distinct !DILexicalBlock(scope: !3671, file: !503, line: 39, column: 7)
!3679 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !3676)
!3680 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !3676)
!3681 = !DILocation(line: 149, column: 3, scope: !3653)
!3682 = !DILocation(line: 0, scope: !3663)
!3683 = !DILocation(line: 85, column: 25, scope: !3663)
!3684 = !DILocation(line: 0, scope: !3671, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 85, column: 10, scope: !3663)
!3686 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !3685)
!3687 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !3685)
!3688 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !3685)
!3689 = !DILocation(line: 85, column: 3, scope: !3663)
!3690 = distinct !DISubprogram(name: "xmalloc", scope: !503, file: !503, line: 47, type: !3691, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!60, !65}
!3693 = !{!3694}
!3694 = !DILocalVariable(name: "s", arg: 1, scope: !3690, file: !503, line: 47, type: !65)
!3695 = !DILocation(line: 0, scope: !3690)
!3696 = !DILocation(line: 49, column: 25, scope: !3690)
!3697 = !DILocation(line: 0, scope: !3671, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 49, column: 10, scope: !3690)
!3699 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !3698)
!3700 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !3698)
!3701 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !3698)
!3702 = !DILocation(line: 49, column: 3, scope: !3690)
!3703 = distinct !DISubprogram(name: "ximalloc", scope: !503, file: !503, line: 53, type: !3704, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3706)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!60, !223}
!3706 = !{!3707}
!3707 = !DILocalVariable(name: "s", arg: 1, scope: !3703, file: !503, line: 53, type: !223)
!3708 = !DILocation(line: 0, scope: !3703)
!3709 = !DILocalVariable(name: "s", arg: 1, scope: !3710, file: !3711, line: 55, type: !223)
!3710 = distinct !DISubprogram(name: "imalloc", scope: !3711, file: !3711, line: 55, type: !3704, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3712)
!3711 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3712 = !{!3709}
!3713 = !DILocation(line: 0, scope: !3710, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 55, column: 25, scope: !3703)
!3715 = !DILocation(line: 57, column: 26, scope: !3710, inlinedAt: !3714)
!3716 = !DILocation(line: 0, scope: !3671, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 55, column: 10, scope: !3703)
!3718 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !3717)
!3719 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !3717)
!3720 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !3717)
!3721 = !DILocation(line: 55, column: 3, scope: !3703)
!3722 = distinct !DISubprogram(name: "xcharalloc", scope: !503, file: !503, line: 59, type: !3723, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3725)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!8, !65}
!3725 = !{!3726}
!3726 = !DILocalVariable(name: "n", arg: 1, scope: !3722, file: !503, line: 59, type: !65)
!3727 = !DILocation(line: 0, scope: !3722)
!3728 = !DILocation(line: 0, scope: !3690, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 61, column: 10, scope: !3722)
!3730 = !DILocation(line: 49, column: 25, scope: !3690, inlinedAt: !3729)
!3731 = !DILocation(line: 0, scope: !3671, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 49, column: 10, scope: !3690, inlinedAt: !3729)
!3733 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !3732)
!3734 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !3732)
!3735 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !3732)
!3736 = !DILocation(line: 61, column: 3, scope: !3722)
!3737 = distinct !DISubprogram(name: "xrealloc", scope: !503, file: !503, line: 68, type: !3738, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3740)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!60, !60, !65}
!3740 = !{!3741, !3742}
!3741 = !DILocalVariable(name: "p", arg: 1, scope: !3737, file: !503, line: 68, type: !60)
!3742 = !DILocalVariable(name: "s", arg: 2, scope: !3737, file: !503, line: 68, type: !65)
!3743 = !DILocation(line: 0, scope: !3737)
!3744 = !DILocalVariable(name: "ptr", arg: 1, scope: !3745, file: !3746, line: 2057, type: !60)
!3745 = distinct !DISubprogram(name: "rpl_realloc", scope: !3746, file: !3746, line: 2057, type: !3738, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3747)
!3746 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3747 = !{!3744, !3748}
!3748 = !DILocalVariable(name: "size", arg: 2, scope: !3745, file: !3746, line: 2057, type: !65)
!3749 = !DILocation(line: 0, scope: !3745, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 70, column: 25, scope: !3737)
!3751 = !DILocation(line: 2059, column: 24, scope: !3745, inlinedAt: !3750)
!3752 = !DILocation(line: 2059, column: 10, scope: !3745, inlinedAt: !3750)
!3753 = !DILocation(line: 0, scope: !3671, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 70, column: 10, scope: !3737)
!3755 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !3754)
!3756 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !3754)
!3757 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !3754)
!3758 = !DILocation(line: 70, column: 3, scope: !3737)
!3759 = distinct !DISubprogram(name: "xirealloc", scope: !503, file: !503, line: 74, type: !3760, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3762)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!60, !60, !223}
!3762 = !{!3763, !3764}
!3763 = !DILocalVariable(name: "p", arg: 1, scope: !3759, file: !503, line: 74, type: !60)
!3764 = !DILocalVariable(name: "s", arg: 2, scope: !3759, file: !503, line: 74, type: !223)
!3765 = !DILocation(line: 0, scope: !3759)
!3766 = !DILocalVariable(name: "p", arg: 1, scope: !3767, file: !3711, line: 66, type: !60)
!3767 = distinct !DISubprogram(name: "irealloc", scope: !3711, file: !3711, line: 66, type: !3760, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3768)
!3768 = !{!3766, !3769}
!3769 = !DILocalVariable(name: "s", arg: 2, scope: !3767, file: !3711, line: 66, type: !223)
!3770 = !DILocation(line: 0, scope: !3767, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 76, column: 25, scope: !3759)
!3772 = !DILocation(line: 0, scope: !3745, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 68, column: 26, scope: !3767, inlinedAt: !3771)
!3774 = !DILocation(line: 2059, column: 24, scope: !3745, inlinedAt: !3773)
!3775 = !DILocation(line: 2059, column: 10, scope: !3745, inlinedAt: !3773)
!3776 = !DILocation(line: 0, scope: !3671, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 76, column: 10, scope: !3759)
!3778 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !3777)
!3779 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !3777)
!3780 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !3777)
!3781 = !DILocation(line: 76, column: 3, scope: !3759)
!3782 = distinct !DISubprogram(name: "xireallocarray", scope: !503, file: !503, line: 89, type: !3783, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3785)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!60, !60, !223, !223}
!3785 = !{!3786, !3787, !3788}
!3786 = !DILocalVariable(name: "p", arg: 1, scope: !3782, file: !503, line: 89, type: !60)
!3787 = !DILocalVariable(name: "n", arg: 2, scope: !3782, file: !503, line: 89, type: !223)
!3788 = !DILocalVariable(name: "s", arg: 3, scope: !3782, file: !503, line: 89, type: !223)
!3789 = !DILocation(line: 0, scope: !3782)
!3790 = !DILocalVariable(name: "p", arg: 1, scope: !3791, file: !3711, line: 98, type: !60)
!3791 = distinct !DISubprogram(name: "ireallocarray", scope: !3711, file: !3711, line: 98, type: !3783, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3792)
!3792 = !{!3790, !3793, !3794}
!3793 = !DILocalVariable(name: "n", arg: 2, scope: !3791, file: !3711, line: 98, type: !223)
!3794 = !DILocalVariable(name: "s", arg: 3, scope: !3791, file: !3711, line: 98, type: !223)
!3795 = !DILocation(line: 0, scope: !3791, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 91, column: 25, scope: !3782)
!3797 = !DILocation(line: 101, column: 13, scope: !3791, inlinedAt: !3796)
!3798 = !DILocation(line: 0, scope: !3671, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 91, column: 10, scope: !3782)
!3800 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !3799)
!3801 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !3799)
!3802 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !3799)
!3803 = !DILocation(line: 91, column: 3, scope: !3782)
!3804 = distinct !DISubprogram(name: "xnmalloc", scope: !503, file: !503, line: 98, type: !3805, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3807)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!60, !65, !65}
!3807 = !{!3808, !3809}
!3808 = !DILocalVariable(name: "n", arg: 1, scope: !3804, file: !503, line: 98, type: !65)
!3809 = !DILocalVariable(name: "s", arg: 2, scope: !3804, file: !503, line: 98, type: !65)
!3810 = !DILocation(line: 0, scope: !3804)
!3811 = !DILocation(line: 0, scope: !3663, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 100, column: 10, scope: !3804)
!3813 = !DILocation(line: 85, column: 25, scope: !3663, inlinedAt: !3812)
!3814 = !DILocation(line: 0, scope: !3671, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 85, column: 10, scope: !3663, inlinedAt: !3812)
!3816 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !3815)
!3817 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !3815)
!3818 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !3815)
!3819 = !DILocation(line: 100, column: 3, scope: !3804)
!3820 = distinct !DISubprogram(name: "xinmalloc", scope: !503, file: !503, line: 104, type: !3634, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3821)
!3821 = !{!3822, !3823}
!3822 = !DILocalVariable(name: "n", arg: 1, scope: !3820, file: !503, line: 104, type: !223)
!3823 = !DILocalVariable(name: "s", arg: 2, scope: !3820, file: !503, line: 104, type: !223)
!3824 = !DILocation(line: 0, scope: !3820)
!3825 = !DILocation(line: 0, scope: !3782, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 106, column: 10, scope: !3820)
!3827 = !DILocation(line: 0, scope: !3791, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 91, column: 25, scope: !3782, inlinedAt: !3826)
!3829 = !DILocation(line: 101, column: 13, scope: !3791, inlinedAt: !3828)
!3830 = !DILocation(line: 0, scope: !3671, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 91, column: 10, scope: !3782, inlinedAt: !3826)
!3832 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !3831)
!3833 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !3831)
!3834 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !3831)
!3835 = !DILocation(line: 106, column: 3, scope: !3820)
!3836 = distinct !DISubprogram(name: "x2realloc", scope: !503, file: !503, line: 116, type: !3837, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3839)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!60, !60, !509}
!3839 = !{!3840, !3841}
!3840 = !DILocalVariable(name: "p", arg: 1, scope: !3836, file: !503, line: 116, type: !60)
!3841 = !DILocalVariable(name: "ps", arg: 2, scope: !3836, file: !503, line: 116, type: !509)
!3842 = !DILocation(line: 0, scope: !3836)
!3843 = !DILocation(line: 0, scope: !506, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 118, column: 10, scope: !3836)
!3845 = !DILocation(line: 178, column: 14, scope: !506, inlinedAt: !3844)
!3846 = !DILocation(line: 180, column: 9, scope: !3847, inlinedAt: !3844)
!3847 = distinct !DILexicalBlock(scope: !506, file: !503, line: 180, column: 7)
!3848 = !DILocation(line: 180, column: 7, scope: !506, inlinedAt: !3844)
!3849 = !DILocation(line: 182, column: 13, scope: !3850, inlinedAt: !3844)
!3850 = distinct !DILexicalBlock(scope: !3851, file: !503, line: 182, column: 11)
!3851 = distinct !DILexicalBlock(scope: !3847, file: !503, line: 181, column: 5)
!3852 = !DILocation(line: 182, column: 11, scope: !3851, inlinedAt: !3844)
!3853 = !DILocation(line: 197, column: 11, scope: !3854, inlinedAt: !3844)
!3854 = distinct !DILexicalBlock(scope: !3855, file: !503, line: 197, column: 11)
!3855 = distinct !DILexicalBlock(scope: !3847, file: !503, line: 195, column: 5)
!3856 = !DILocation(line: 197, column: 11, scope: !3855, inlinedAt: !3844)
!3857 = !DILocation(line: 198, column: 9, scope: !3854, inlinedAt: !3844)
!3858 = !DILocation(line: 0, scope: !3663, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 201, column: 7, scope: !506, inlinedAt: !3844)
!3860 = !DILocation(line: 85, column: 25, scope: !3663, inlinedAt: !3859)
!3861 = !DILocation(line: 0, scope: !3671, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 85, column: 10, scope: !3663, inlinedAt: !3859)
!3863 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !3862)
!3864 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !3862)
!3865 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !3862)
!3866 = !DILocation(line: 202, column: 7, scope: !506, inlinedAt: !3844)
!3867 = !DILocation(line: 118, column: 3, scope: !3836)
!3868 = !DILocation(line: 0, scope: !506)
!3869 = !DILocation(line: 178, column: 14, scope: !506)
!3870 = !DILocation(line: 180, column: 9, scope: !3847)
!3871 = !DILocation(line: 180, column: 7, scope: !506)
!3872 = !DILocation(line: 182, column: 13, scope: !3850)
!3873 = !DILocation(line: 182, column: 11, scope: !3851)
!3874 = !DILocation(line: 190, column: 30, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3850, file: !503, line: 183, column: 9)
!3876 = !DILocation(line: 191, column: 16, scope: !3875)
!3877 = !DILocation(line: 191, column: 13, scope: !3875)
!3878 = !DILocation(line: 192, column: 9, scope: !3875)
!3879 = !DILocation(line: 197, column: 11, scope: !3854)
!3880 = !DILocation(line: 197, column: 11, scope: !3855)
!3881 = !DILocation(line: 198, column: 9, scope: !3854)
!3882 = !DILocation(line: 0, scope: !3663, inlinedAt: !3883)
!3883 = distinct !DILocation(line: 201, column: 7, scope: !506)
!3884 = !DILocation(line: 85, column: 25, scope: !3663, inlinedAt: !3883)
!3885 = !DILocation(line: 0, scope: !3671, inlinedAt: !3886)
!3886 = distinct !DILocation(line: 85, column: 10, scope: !3663, inlinedAt: !3883)
!3887 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !3886)
!3888 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !3886)
!3889 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !3886)
!3890 = !DILocation(line: 202, column: 7, scope: !506)
!3891 = !DILocation(line: 203, column: 3, scope: !506)
!3892 = !DILocation(line: 0, scope: !518)
!3893 = !DILocation(line: 230, column: 14, scope: !518)
!3894 = !DILocation(line: 238, column: 7, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !518, file: !503, line: 238, column: 7)
!3896 = !DILocation(line: 238, column: 7, scope: !518)
!3897 = !DILocation(line: 240, column: 9, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !518, file: !503, line: 240, column: 7)
!3899 = !DILocation(line: 240, column: 18, scope: !3898)
!3900 = !DILocation(line: 253, column: 8, scope: !518)
!3901 = !DILocation(line: 258, column: 27, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3903, file: !503, line: 257, column: 5)
!3903 = distinct !DILexicalBlock(scope: !518, file: !503, line: 256, column: 7)
!3904 = !DILocation(line: 259, column: 32, scope: !3902)
!3905 = !DILocation(line: 260, column: 5, scope: !3902)
!3906 = !DILocation(line: 262, column: 9, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !518, file: !503, line: 262, column: 7)
!3908 = !DILocation(line: 262, column: 7, scope: !518)
!3909 = !DILocation(line: 263, column: 9, scope: !3907)
!3910 = !DILocation(line: 263, column: 5, scope: !3907)
!3911 = !DILocation(line: 264, column: 9, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !518, file: !503, line: 264, column: 7)
!3913 = !DILocation(line: 264, column: 14, scope: !3912)
!3914 = !DILocation(line: 265, column: 7, scope: !3912)
!3915 = !DILocation(line: 265, column: 11, scope: !3912)
!3916 = !DILocation(line: 266, column: 11, scope: !3912)
!3917 = !DILocation(line: 266, column: 26, scope: !3912)
!3918 = !DILocation(line: 267, column: 14, scope: !3912)
!3919 = !DILocation(line: 264, column: 7, scope: !518)
!3920 = !DILocation(line: 268, column: 5, scope: !3912)
!3921 = !DILocation(line: 0, scope: !3737, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 269, column: 8, scope: !518)
!3923 = !DILocation(line: 0, scope: !3745, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 70, column: 25, scope: !3737, inlinedAt: !3922)
!3925 = !DILocation(line: 2059, column: 24, scope: !3745, inlinedAt: !3924)
!3926 = !DILocation(line: 2059, column: 10, scope: !3745, inlinedAt: !3924)
!3927 = !DILocation(line: 0, scope: !3671, inlinedAt: !3928)
!3928 = distinct !DILocation(line: 70, column: 10, scope: !3737, inlinedAt: !3922)
!3929 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !3928)
!3930 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !3928)
!3931 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !3928)
!3932 = !DILocation(line: 270, column: 7, scope: !518)
!3933 = !DILocation(line: 271, column: 3, scope: !518)
!3934 = distinct !DISubprogram(name: "xzalloc", scope: !503, file: !503, line: 279, type: !3691, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3935)
!3935 = !{!3936}
!3936 = !DILocalVariable(name: "s", arg: 1, scope: !3934, file: !503, line: 279, type: !65)
!3937 = !DILocation(line: 0, scope: !3934)
!3938 = !DILocalVariable(name: "n", arg: 1, scope: !3939, file: !503, line: 294, type: !65)
!3939 = distinct !DISubprogram(name: "xcalloc", scope: !503, file: !503, line: 294, type: !3805, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3940)
!3940 = !{!3938, !3941}
!3941 = !DILocalVariable(name: "s", arg: 2, scope: !3939, file: !503, line: 294, type: !65)
!3942 = !DILocation(line: 0, scope: !3939, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 281, column: 10, scope: !3934)
!3944 = !DILocation(line: 296, column: 25, scope: !3939, inlinedAt: !3943)
!3945 = !DILocation(line: 0, scope: !3671, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 296, column: 10, scope: !3939, inlinedAt: !3943)
!3947 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !3946)
!3948 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !3946)
!3949 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !3946)
!3950 = !DILocation(line: 281, column: 3, scope: !3934)
!3951 = !DILocation(line: 0, scope: !3939)
!3952 = !DILocation(line: 296, column: 25, scope: !3939)
!3953 = !DILocation(line: 0, scope: !3671, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 296, column: 10, scope: !3939)
!3955 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !3954)
!3956 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !3954)
!3957 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !3954)
!3958 = !DILocation(line: 296, column: 3, scope: !3939)
!3959 = distinct !DISubprogram(name: "xizalloc", scope: !503, file: !503, line: 285, type: !3704, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3960)
!3960 = !{!3961}
!3961 = !DILocalVariable(name: "s", arg: 1, scope: !3959, file: !503, line: 285, type: !223)
!3962 = !DILocation(line: 0, scope: !3959)
!3963 = !DILocalVariable(name: "n", arg: 1, scope: !3964, file: !503, line: 300, type: !223)
!3964 = distinct !DISubprogram(name: "xicalloc", scope: !503, file: !503, line: 300, type: !3634, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3965)
!3965 = !{!3963, !3966}
!3966 = !DILocalVariable(name: "s", arg: 2, scope: !3964, file: !503, line: 300, type: !223)
!3967 = !DILocation(line: 0, scope: !3964, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 287, column: 10, scope: !3959)
!3969 = !DILocalVariable(name: "n", arg: 1, scope: !3970, file: !3711, line: 77, type: !223)
!3970 = distinct !DISubprogram(name: "icalloc", scope: !3711, file: !3711, line: 77, type: !3634, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3971)
!3971 = !{!3969, !3972}
!3972 = !DILocalVariable(name: "s", arg: 2, scope: !3970, file: !3711, line: 77, type: !223)
!3973 = !DILocation(line: 0, scope: !3970, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 302, column: 25, scope: !3964, inlinedAt: !3968)
!3975 = !DILocation(line: 91, column: 10, scope: !3970, inlinedAt: !3974)
!3976 = !DILocation(line: 0, scope: !3671, inlinedAt: !3977)
!3977 = distinct !DILocation(line: 302, column: 10, scope: !3964, inlinedAt: !3968)
!3978 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !3977)
!3979 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !3977)
!3980 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !3977)
!3981 = !DILocation(line: 287, column: 3, scope: !3959)
!3982 = !DILocation(line: 0, scope: !3964)
!3983 = !DILocation(line: 0, scope: !3970, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 302, column: 25, scope: !3964)
!3985 = !DILocation(line: 91, column: 10, scope: !3970, inlinedAt: !3984)
!3986 = !DILocation(line: 0, scope: !3671, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 302, column: 10, scope: !3964)
!3988 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !3987)
!3989 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !3987)
!3990 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !3987)
!3991 = !DILocation(line: 302, column: 3, scope: !3964)
!3992 = distinct !DISubprogram(name: "xmemdup", scope: !503, file: !503, line: 310, type: !3993, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3995)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!60, !793, !65}
!3995 = !{!3996, !3997}
!3996 = !DILocalVariable(name: "p", arg: 1, scope: !3992, file: !503, line: 310, type: !793)
!3997 = !DILocalVariable(name: "s", arg: 2, scope: !3992, file: !503, line: 310, type: !65)
!3998 = !DILocation(line: 0, scope: !3992)
!3999 = !DILocation(line: 0, scope: !3690, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 312, column: 18, scope: !3992)
!4001 = !DILocation(line: 49, column: 25, scope: !3690, inlinedAt: !4000)
!4002 = !DILocation(line: 0, scope: !3671, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 49, column: 10, scope: !3690, inlinedAt: !4000)
!4004 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !4003)
!4005 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !4003)
!4006 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !4003)
!4007 = !DILocalVariable(name: "__dest", arg: 1, scope: !4008, file: !1113, line: 26, type: !4011)
!4008 = distinct !DISubprogram(name: "memcpy", scope: !1113, file: !1113, line: 26, type: !4009, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !4012)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!60, !4011, !792, !65}
!4011 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!4012 = !{!4007, !4013, !4014}
!4013 = !DILocalVariable(name: "__src", arg: 2, scope: !4008, file: !1113, line: 26, type: !792)
!4014 = !DILocalVariable(name: "__len", arg: 3, scope: !4008, file: !1113, line: 26, type: !65)
!4015 = !DILocation(line: 0, scope: !4008, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 312, column: 10, scope: !3992)
!4017 = !DILocation(line: 29, column: 10, scope: !4008, inlinedAt: !4016)
!4018 = !DILocation(line: 312, column: 3, scope: !3992)
!4019 = distinct !DISubprogram(name: "ximemdup", scope: !503, file: !503, line: 316, type: !4020, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !4022)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!60, !793, !223}
!4022 = !{!4023, !4024}
!4023 = !DILocalVariable(name: "p", arg: 1, scope: !4019, file: !503, line: 316, type: !793)
!4024 = !DILocalVariable(name: "s", arg: 2, scope: !4019, file: !503, line: 316, type: !223)
!4025 = !DILocation(line: 0, scope: !4019)
!4026 = !DILocation(line: 0, scope: !3703, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 318, column: 18, scope: !4019)
!4028 = !DILocation(line: 0, scope: !3710, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 55, column: 25, scope: !3703, inlinedAt: !4027)
!4030 = !DILocation(line: 57, column: 26, scope: !3710, inlinedAt: !4029)
!4031 = !DILocation(line: 0, scope: !3671, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 55, column: 10, scope: !3703, inlinedAt: !4027)
!4033 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !4032)
!4034 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !4032)
!4035 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !4032)
!4036 = !DILocation(line: 0, scope: !4008, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 318, column: 10, scope: !4019)
!4038 = !DILocation(line: 29, column: 10, scope: !4008, inlinedAt: !4037)
!4039 = !DILocation(line: 318, column: 3, scope: !4019)
!4040 = distinct !DISubprogram(name: "ximemdup0", scope: !503, file: !503, line: 325, type: !4041, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !4043)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!8, !793, !223}
!4043 = !{!4044, !4045, !4046}
!4044 = !DILocalVariable(name: "p", arg: 1, scope: !4040, file: !503, line: 325, type: !793)
!4045 = !DILocalVariable(name: "s", arg: 2, scope: !4040, file: !503, line: 325, type: !223)
!4046 = !DILocalVariable(name: "result", scope: !4040, file: !503, line: 327, type: !8)
!4047 = !DILocation(line: 0, scope: !4040)
!4048 = !DILocation(line: 327, column: 30, scope: !4040)
!4049 = !DILocation(line: 0, scope: !3703, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 327, column: 18, scope: !4040)
!4051 = !DILocation(line: 0, scope: !3710, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 55, column: 25, scope: !3703, inlinedAt: !4050)
!4053 = !DILocation(line: 57, column: 26, scope: !3710, inlinedAt: !4052)
!4054 = !DILocation(line: 0, scope: !3671, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 55, column: 10, scope: !3703, inlinedAt: !4050)
!4056 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !4055)
!4057 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !4055)
!4058 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !4055)
!4059 = !DILocation(line: 328, column: 3, scope: !4040)
!4060 = !DILocation(line: 328, column: 13, scope: !4040)
!4061 = !DILocation(line: 0, scope: !4008, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 329, column: 10, scope: !4040)
!4063 = !DILocation(line: 29, column: 10, scope: !4008, inlinedAt: !4062)
!4064 = !DILocation(line: 329, column: 3, scope: !4040)
!4065 = distinct !DISubprogram(name: "xstrdup", scope: !503, file: !503, line: 335, type: !787, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !4066)
!4066 = !{!4067}
!4067 = !DILocalVariable(name: "string", arg: 1, scope: !4065, file: !503, line: 335, type: !67)
!4068 = !DILocation(line: 0, scope: !4065)
!4069 = !DILocation(line: 337, column: 27, scope: !4065)
!4070 = !DILocation(line: 337, column: 43, scope: !4065)
!4071 = !DILocation(line: 0, scope: !3992, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 337, column: 10, scope: !4065)
!4073 = !DILocation(line: 0, scope: !3690, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 312, column: 18, scope: !3992, inlinedAt: !4072)
!4075 = !DILocation(line: 49, column: 25, scope: !3690, inlinedAt: !4074)
!4076 = !DILocation(line: 0, scope: !3671, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 49, column: 10, scope: !3690, inlinedAt: !4074)
!4078 = !DILocation(line: 39, column: 8, scope: !3678, inlinedAt: !4077)
!4079 = !DILocation(line: 39, column: 7, scope: !3671, inlinedAt: !4077)
!4080 = !DILocation(line: 40, column: 5, scope: !3678, inlinedAt: !4077)
!4081 = !DILocation(line: 0, scope: !4008, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 312, column: 10, scope: !3992, inlinedAt: !4072)
!4083 = !DILocation(line: 29, column: 10, scope: !4008, inlinedAt: !4082)
!4084 = !DILocation(line: 337, column: 3, scope: !4065)
!4085 = distinct !DISubprogram(name: "xalloc_die", scope: !534, file: !534, line: 32, type: !314, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !533, retainedNodes: !4086)
!4086 = !{!4087}
!4087 = !DILocalVariable(name: "__errstatus", scope: !4088, file: !534, line: 34, type: !4089)
!4088 = distinct !DILexicalBlock(scope: !4085, file: !534, line: 34, column: 3)
!4089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!4090 = !DILocation(line: 34, column: 3, scope: !4088)
!4091 = !DILocation(line: 0, scope: !4088)
!4092 = !DILocation(line: 40, column: 3, scope: !4085)
!4093 = distinct !DISubprogram(name: "close_stream", scope: !536, file: !536, line: 55, type: !4094, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !4130)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!6, !4096}
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !4098)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !4099)
!4099 = !{!4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4098, file: !104, line: 51, baseType: !6, size: 32)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4098, file: !104, line: 54, baseType: !8, size: 64, offset: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4098, file: !104, line: 55, baseType: !8, size: 64, offset: 128)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4098, file: !104, line: 56, baseType: !8, size: 64, offset: 192)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4098, file: !104, line: 57, baseType: !8, size: 64, offset: 256)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4098, file: !104, line: 58, baseType: !8, size: 64, offset: 320)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4098, file: !104, line: 59, baseType: !8, size: 64, offset: 384)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4098, file: !104, line: 60, baseType: !8, size: 64, offset: 448)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4098, file: !104, line: 61, baseType: !8, size: 64, offset: 512)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4098, file: !104, line: 64, baseType: !8, size: 64, offset: 576)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4098, file: !104, line: 65, baseType: !8, size: 64, offset: 640)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4098, file: !104, line: 66, baseType: !8, size: 64, offset: 704)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4098, file: !104, line: 68, baseType: !119, size: 64, offset: 768)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4098, file: !104, line: 70, baseType: !4114, size: 64, offset: 832)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4098, file: !104, line: 72, baseType: !6, size: 32, offset: 896)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4098, file: !104, line: 73, baseType: !6, size: 32, offset: 928)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4098, file: !104, line: 74, baseType: !126, size: 64, offset: 960)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4098, file: !104, line: 77, baseType: !64, size: 16, offset: 1024)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4098, file: !104, line: 78, baseType: !130, size: 8, offset: 1040)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4098, file: !104, line: 79, baseType: !132, size: 8, offset: 1048)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4098, file: !104, line: 81, baseType: !136, size: 64, offset: 1088)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4098, file: !104, line: 89, baseType: !139, size: 64, offset: 1152)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4098, file: !104, line: 91, baseType: !141, size: 64, offset: 1216)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4098, file: !104, line: 92, baseType: !144, size: 64, offset: 1280)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4098, file: !104, line: 93, baseType: !4114, size: 64, offset: 1344)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4098, file: !104, line: 94, baseType: !60, size: 64, offset: 1408)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4098, file: !104, line: 95, baseType: !65, size: 64, offset: 1472)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4098, file: !104, line: 96, baseType: !6, size: 32, offset: 1536)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4098, file: !104, line: 98, baseType: !151, size: 160, offset: 1568)
!4130 = !{!4131, !4132, !4134, !4135}
!4131 = !DILocalVariable(name: "stream", arg: 1, scope: !4093, file: !536, line: 55, type: !4096)
!4132 = !DILocalVariable(name: "some_pending", scope: !4093, file: !536, line: 57, type: !4133)
!4133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!4134 = !DILocalVariable(name: "prev_fail", scope: !4093, file: !536, line: 58, type: !4133)
!4135 = !DILocalVariable(name: "fclose_fail", scope: !4093, file: !536, line: 59, type: !4133)
!4136 = !DILocation(line: 0, scope: !4093)
!4137 = !DILocation(line: 57, column: 30, scope: !4093)
!4138 = !DILocalVariable(name: "__stream", arg: 1, scope: !4139, file: !1739, line: 135, type: !4096)
!4139 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1739, file: !1739, line: 135, type: !4094, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !4140)
!4140 = !{!4138}
!4141 = !DILocation(line: 0, scope: !4139, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 58, column: 27, scope: !4093)
!4143 = !DILocation(line: 137, column: 10, scope: !4139, inlinedAt: !4142)
!4144 = !{!1748, !676, i64 0}
!4145 = !DILocation(line: 58, column: 43, scope: !4093)
!4146 = !DILocation(line: 59, column: 29, scope: !4093)
!4147 = !DILocation(line: 59, column: 45, scope: !4093)
!4148 = !DILocation(line: 69, column: 17, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4093, file: !536, line: 69, column: 7)
!4150 = !DILocation(line: 57, column: 50, scope: !4093)
!4151 = !DILocation(line: 69, column: 33, scope: !4149)
!4152 = !DILocation(line: 69, column: 53, scope: !4149)
!4153 = !DILocation(line: 69, column: 59, scope: !4149)
!4154 = !DILocation(line: 69, column: 7, scope: !4093)
!4155 = !DILocation(line: 71, column: 11, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4149, file: !536, line: 70, column: 5)
!4157 = !DILocation(line: 72, column: 9, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4156, file: !536, line: 71, column: 11)
!4159 = !DILocation(line: 72, column: 15, scope: !4158)
!4160 = !DILocation(line: 77, column: 1, scope: !4093)
!4161 = distinct !DISubprogram(name: "rpl_fclose", scope: !538, file: !538, line: 58, type: !4162, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !537, retainedNodes: !4198)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!6, !4164}
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !4166)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !4167)
!4167 = !{!4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4166, file: !104, line: 51, baseType: !6, size: 32)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4166, file: !104, line: 54, baseType: !8, size: 64, offset: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4166, file: !104, line: 55, baseType: !8, size: 64, offset: 128)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4166, file: !104, line: 56, baseType: !8, size: 64, offset: 192)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4166, file: !104, line: 57, baseType: !8, size: 64, offset: 256)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4166, file: !104, line: 58, baseType: !8, size: 64, offset: 320)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4166, file: !104, line: 59, baseType: !8, size: 64, offset: 384)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4166, file: !104, line: 60, baseType: !8, size: 64, offset: 448)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4166, file: !104, line: 61, baseType: !8, size: 64, offset: 512)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4166, file: !104, line: 64, baseType: !8, size: 64, offset: 576)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4166, file: !104, line: 65, baseType: !8, size: 64, offset: 640)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4166, file: !104, line: 66, baseType: !8, size: 64, offset: 704)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4166, file: !104, line: 68, baseType: !119, size: 64, offset: 768)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4166, file: !104, line: 70, baseType: !4182, size: 64, offset: 832)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4166, file: !104, line: 72, baseType: !6, size: 32, offset: 896)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4166, file: !104, line: 73, baseType: !6, size: 32, offset: 928)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4166, file: !104, line: 74, baseType: !126, size: 64, offset: 960)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4166, file: !104, line: 77, baseType: !64, size: 16, offset: 1024)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4166, file: !104, line: 78, baseType: !130, size: 8, offset: 1040)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4166, file: !104, line: 79, baseType: !132, size: 8, offset: 1048)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4166, file: !104, line: 81, baseType: !136, size: 64, offset: 1088)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4166, file: !104, line: 89, baseType: !139, size: 64, offset: 1152)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4166, file: !104, line: 91, baseType: !141, size: 64, offset: 1216)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4166, file: !104, line: 92, baseType: !144, size: 64, offset: 1280)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4166, file: !104, line: 93, baseType: !4182, size: 64, offset: 1344)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4166, file: !104, line: 94, baseType: !60, size: 64, offset: 1408)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4166, file: !104, line: 95, baseType: !65, size: 64, offset: 1472)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4166, file: !104, line: 96, baseType: !6, size: 32, offset: 1536)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4166, file: !104, line: 98, baseType: !151, size: 160, offset: 1568)
!4198 = !{!4199, !4200, !4201, !4202}
!4199 = !DILocalVariable(name: "fp", arg: 1, scope: !4161, file: !538, line: 58, type: !4164)
!4200 = !DILocalVariable(name: "saved_errno", scope: !4161, file: !538, line: 60, type: !6)
!4201 = !DILocalVariable(name: "fd", scope: !4161, file: !538, line: 63, type: !6)
!4202 = !DILocalVariable(name: "result", scope: !4161, file: !538, line: 74, type: !6)
!4203 = !DILocation(line: 0, scope: !4161)
!4204 = !DILocation(line: 63, column: 12, scope: !4161)
!4205 = !DILocation(line: 64, column: 10, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4161, file: !538, line: 64, column: 7)
!4207 = !DILocation(line: 64, column: 7, scope: !4161)
!4208 = !DILocation(line: 65, column: 12, scope: !4206)
!4209 = !DILocation(line: 65, column: 5, scope: !4206)
!4210 = !DILocation(line: 70, column: 9, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4161, file: !538, line: 70, column: 7)
!4212 = !DILocation(line: 70, column: 23, scope: !4211)
!4213 = !DILocation(line: 70, column: 33, scope: !4211)
!4214 = !DILocation(line: 70, column: 26, scope: !4211)
!4215 = !DILocation(line: 70, column: 59, scope: !4211)
!4216 = !DILocation(line: 71, column: 7, scope: !4211)
!4217 = !DILocation(line: 71, column: 10, scope: !4211)
!4218 = !DILocation(line: 70, column: 7, scope: !4161)
!4219 = !DILocation(line: 100, column: 12, scope: !4161)
!4220 = !DILocation(line: 105, column: 7, scope: !4161)
!4221 = !DILocation(line: 72, column: 19, scope: !4211)
!4222 = !DILocation(line: 105, column: 19, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4161, file: !538, line: 105, column: 7)
!4224 = !DILocation(line: 107, column: 13, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4223, file: !538, line: 106, column: 5)
!4226 = !DILocation(line: 109, column: 5, scope: !4225)
!4227 = !DILocation(line: 112, column: 1, scope: !4161)
!4228 = !DISubprogram(name: "fclose", scope: !239, file: !239, line: 178, type: !4162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!4229 = distinct !DISubprogram(name: "rpl_fflush", scope: !540, file: !540, line: 130, type: !4230, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !4266)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!6, !4232}
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !4234)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !4235)
!4235 = !{!4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4234, file: !104, line: 51, baseType: !6, size: 32)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4234, file: !104, line: 54, baseType: !8, size: 64, offset: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4234, file: !104, line: 55, baseType: !8, size: 64, offset: 128)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4234, file: !104, line: 56, baseType: !8, size: 64, offset: 192)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4234, file: !104, line: 57, baseType: !8, size: 64, offset: 256)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4234, file: !104, line: 58, baseType: !8, size: 64, offset: 320)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4234, file: !104, line: 59, baseType: !8, size: 64, offset: 384)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4234, file: !104, line: 60, baseType: !8, size: 64, offset: 448)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4234, file: !104, line: 61, baseType: !8, size: 64, offset: 512)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4234, file: !104, line: 64, baseType: !8, size: 64, offset: 576)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4234, file: !104, line: 65, baseType: !8, size: 64, offset: 640)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4234, file: !104, line: 66, baseType: !8, size: 64, offset: 704)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4234, file: !104, line: 68, baseType: !119, size: 64, offset: 768)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4234, file: !104, line: 70, baseType: !4250, size: 64, offset: 832)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4234, file: !104, line: 72, baseType: !6, size: 32, offset: 896)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4234, file: !104, line: 73, baseType: !6, size: 32, offset: 928)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4234, file: !104, line: 74, baseType: !126, size: 64, offset: 960)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4234, file: !104, line: 77, baseType: !64, size: 16, offset: 1024)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4234, file: !104, line: 78, baseType: !130, size: 8, offset: 1040)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4234, file: !104, line: 79, baseType: !132, size: 8, offset: 1048)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4234, file: !104, line: 81, baseType: !136, size: 64, offset: 1088)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4234, file: !104, line: 89, baseType: !139, size: 64, offset: 1152)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4234, file: !104, line: 91, baseType: !141, size: 64, offset: 1216)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4234, file: !104, line: 92, baseType: !144, size: 64, offset: 1280)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4234, file: !104, line: 93, baseType: !4250, size: 64, offset: 1344)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4234, file: !104, line: 94, baseType: !60, size: 64, offset: 1408)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4234, file: !104, line: 95, baseType: !65, size: 64, offset: 1472)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4234, file: !104, line: 96, baseType: !6, size: 32, offset: 1536)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4234, file: !104, line: 98, baseType: !151, size: 160, offset: 1568)
!4266 = !{!4267}
!4267 = !DILocalVariable(name: "stream", arg: 1, scope: !4229, file: !540, line: 130, type: !4232)
!4268 = !DILocation(line: 0, scope: !4229)
!4269 = !DILocation(line: 151, column: 14, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4229, file: !540, line: 151, column: 7)
!4271 = !DILocation(line: 151, column: 22, scope: !4270)
!4272 = !DILocation(line: 151, column: 27, scope: !4270)
!4273 = !DILocation(line: 151, column: 7, scope: !4229)
!4274 = !DILocation(line: 152, column: 12, scope: !4270)
!4275 = !DILocation(line: 152, column: 5, scope: !4270)
!4276 = !DILocalVariable(name: "fp", arg: 1, scope: !4277, file: !540, line: 42, type: !4232)
!4277 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !540, file: !540, line: 42, type: !4278, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !4280)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{null, !4232}
!4280 = !{!4276}
!4281 = !DILocation(line: 0, scope: !4277, inlinedAt: !4282)
!4282 = distinct !DILocation(line: 157, column: 3, scope: !4229)
!4283 = !DILocation(line: 44, column: 12, scope: !4284, inlinedAt: !4282)
!4284 = distinct !DILexicalBlock(scope: !4277, file: !540, line: 44, column: 7)
!4285 = !DILocation(line: 44, column: 19, scope: !4284, inlinedAt: !4282)
!4286 = !DILocation(line: 44, column: 7, scope: !4277, inlinedAt: !4282)
!4287 = !DILocation(line: 46, column: 5, scope: !4284, inlinedAt: !4282)
!4288 = !DILocation(line: 159, column: 10, scope: !4229)
!4289 = !DILocation(line: 159, column: 3, scope: !4229)
!4290 = !DILocation(line: 236, column: 1, scope: !4229)
!4291 = !DISubprogram(name: "fflush", scope: !239, file: !239, line: 230, type: !4230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!4292 = distinct !DISubprogram(name: "rpl_fseeko", scope: !542, file: !542, line: 28, type: !4293, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !4329)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!6, !4295, !238, !6}
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !4297)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !4298)
!4298 = !{!4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4297, file: !104, line: 51, baseType: !6, size: 32)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4297, file: !104, line: 54, baseType: !8, size: 64, offset: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4297, file: !104, line: 55, baseType: !8, size: 64, offset: 128)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4297, file: !104, line: 56, baseType: !8, size: 64, offset: 192)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4297, file: !104, line: 57, baseType: !8, size: 64, offset: 256)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4297, file: !104, line: 58, baseType: !8, size: 64, offset: 320)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4297, file: !104, line: 59, baseType: !8, size: 64, offset: 384)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4297, file: !104, line: 60, baseType: !8, size: 64, offset: 448)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4297, file: !104, line: 61, baseType: !8, size: 64, offset: 512)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4297, file: !104, line: 64, baseType: !8, size: 64, offset: 576)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4297, file: !104, line: 65, baseType: !8, size: 64, offset: 640)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4297, file: !104, line: 66, baseType: !8, size: 64, offset: 704)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4297, file: !104, line: 68, baseType: !119, size: 64, offset: 768)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4297, file: !104, line: 70, baseType: !4313, size: 64, offset: 832)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4297, file: !104, line: 72, baseType: !6, size: 32, offset: 896)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4297, file: !104, line: 73, baseType: !6, size: 32, offset: 928)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4297, file: !104, line: 74, baseType: !126, size: 64, offset: 960)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4297, file: !104, line: 77, baseType: !64, size: 16, offset: 1024)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4297, file: !104, line: 78, baseType: !130, size: 8, offset: 1040)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4297, file: !104, line: 79, baseType: !132, size: 8, offset: 1048)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4297, file: !104, line: 81, baseType: !136, size: 64, offset: 1088)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4297, file: !104, line: 89, baseType: !139, size: 64, offset: 1152)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4297, file: !104, line: 91, baseType: !141, size: 64, offset: 1216)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4297, file: !104, line: 92, baseType: !144, size: 64, offset: 1280)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4297, file: !104, line: 93, baseType: !4313, size: 64, offset: 1344)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4297, file: !104, line: 94, baseType: !60, size: 64, offset: 1408)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4297, file: !104, line: 95, baseType: !65, size: 64, offset: 1472)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4297, file: !104, line: 96, baseType: !6, size: 32, offset: 1536)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4297, file: !104, line: 98, baseType: !151, size: 160, offset: 1568)
!4329 = !{!4330, !4331, !4332, !4333}
!4330 = !DILocalVariable(name: "fp", arg: 1, scope: !4292, file: !542, line: 28, type: !4295)
!4331 = !DILocalVariable(name: "offset", arg: 2, scope: !4292, file: !542, line: 28, type: !238)
!4332 = !DILocalVariable(name: "whence", arg: 3, scope: !4292, file: !542, line: 28, type: !6)
!4333 = !DILocalVariable(name: "pos", scope: !4334, file: !542, line: 123, type: !238)
!4334 = distinct !DILexicalBlock(scope: !4335, file: !542, line: 119, column: 5)
!4335 = distinct !DILexicalBlock(scope: !4292, file: !542, line: 55, column: 7)
!4336 = !DILocation(line: 0, scope: !4292)
!4337 = !DILocation(line: 55, column: 12, scope: !4335)
!4338 = !{!1748, !576, i64 16}
!4339 = !DILocation(line: 55, column: 33, scope: !4335)
!4340 = !{!1748, !576, i64 8}
!4341 = !DILocation(line: 55, column: 25, scope: !4335)
!4342 = !DILocation(line: 56, column: 7, scope: !4335)
!4343 = !DILocation(line: 56, column: 15, scope: !4335)
!4344 = !DILocation(line: 56, column: 37, scope: !4335)
!4345 = !{!1748, !576, i64 32}
!4346 = !DILocation(line: 56, column: 29, scope: !4335)
!4347 = !DILocation(line: 57, column: 7, scope: !4335)
!4348 = !DILocation(line: 57, column: 15, scope: !4335)
!4349 = !{!1748, !576, i64 72}
!4350 = !DILocation(line: 57, column: 29, scope: !4335)
!4351 = !DILocation(line: 55, column: 7, scope: !4292)
!4352 = !DILocation(line: 123, column: 26, scope: !4334)
!4353 = !DILocation(line: 123, column: 19, scope: !4334)
!4354 = !DILocation(line: 0, scope: !4334)
!4355 = !DILocation(line: 124, column: 15, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4334, file: !542, line: 124, column: 11)
!4357 = !DILocation(line: 124, column: 11, scope: !4334)
!4358 = !DILocation(line: 135, column: 12, scope: !4334)
!4359 = !DILocation(line: 135, column: 19, scope: !4334)
!4360 = !DILocation(line: 136, column: 12, scope: !4334)
!4361 = !DILocation(line: 136, column: 20, scope: !4334)
!4362 = !{!1748, !847, i64 144}
!4363 = !DILocation(line: 167, column: 7, scope: !4334)
!4364 = !DILocation(line: 169, column: 10, scope: !4292)
!4365 = !DILocation(line: 169, column: 3, scope: !4292)
!4366 = !DILocation(line: 170, column: 1, scope: !4292)
!4367 = !DISubprogram(name: "fseeko", scope: !239, file: !239, line: 736, type: !4368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!6, !4295, !126, !6}
!4370 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !464, file: !464, line: 100, type: !4371, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !4374)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!65, !2143, !67, !65, !4373}
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!4374 = !{!4375, !4376, !4377, !4378, !4379}
!4375 = !DILocalVariable(name: "pwc", arg: 1, scope: !4370, file: !464, line: 100, type: !2143)
!4376 = !DILocalVariable(name: "s", arg: 2, scope: !4370, file: !464, line: 100, type: !67)
!4377 = !DILocalVariable(name: "n", arg: 3, scope: !4370, file: !464, line: 100, type: !65)
!4378 = !DILocalVariable(name: "ps", arg: 4, scope: !4370, file: !464, line: 100, type: !4373)
!4379 = !DILocalVariable(name: "ret", scope: !4370, file: !464, line: 130, type: !65)
!4380 = !DILocation(line: 0, scope: !4370)
!4381 = !DILocation(line: 105, column: 9, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4370, file: !464, line: 105, column: 7)
!4383 = !DILocation(line: 105, column: 7, scope: !4370)
!4384 = !DILocation(line: 117, column: 10, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4370, file: !464, line: 117, column: 7)
!4386 = !DILocation(line: 117, column: 7, scope: !4370)
!4387 = !DILocation(line: 130, column: 16, scope: !4370)
!4388 = !DILocation(line: 135, column: 11, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4370, file: !464, line: 135, column: 7)
!4390 = !DILocation(line: 135, column: 25, scope: !4389)
!4391 = !DILocation(line: 135, column: 30, scope: !4389)
!4392 = !DILocation(line: 135, column: 7, scope: !4370)
!4393 = !DILocalVariable(name: "ps", arg: 1, scope: !4394, file: !2117, line: 1135, type: !4373)
!4394 = distinct !DISubprogram(name: "mbszero", scope: !2117, file: !2117, line: 1135, type: !4395, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !4397)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{null, !4373}
!4397 = !{!4393}
!4398 = !DILocation(line: 0, scope: !4394, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 137, column: 5, scope: !4389)
!4400 = !DILocalVariable(name: "__dest", arg: 1, scope: !4401, file: !1113, line: 57, type: !60)
!4401 = distinct !DISubprogram(name: "memset", scope: !1113, file: !1113, line: 57, type: !2126, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !4402)
!4402 = !{!4400, !4403, !4404}
!4403 = !DILocalVariable(name: "__ch", arg: 2, scope: !4401, file: !1113, line: 57, type: !6)
!4404 = !DILocalVariable(name: "__len", arg: 3, scope: !4401, file: !1113, line: 57, type: !65)
!4405 = !DILocation(line: 0, scope: !4401, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 1137, column: 3, scope: !4394, inlinedAt: !4399)
!4407 = !DILocation(line: 59, column: 10, scope: !4401, inlinedAt: !4406)
!4408 = !DILocation(line: 137, column: 5, scope: !4389)
!4409 = !DILocation(line: 138, column: 11, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4370, file: !464, line: 138, column: 7)
!4411 = !DILocation(line: 138, column: 7, scope: !4370)
!4412 = !DILocation(line: 139, column: 5, scope: !4410)
!4413 = !DILocation(line: 143, column: 26, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4370, file: !464, line: 143, column: 7)
!4415 = !DILocation(line: 143, column: 41, scope: !4414)
!4416 = !DILocation(line: 143, column: 7, scope: !4370)
!4417 = !DILocation(line: 145, column: 15, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4419, file: !464, line: 145, column: 11)
!4419 = distinct !DILexicalBlock(scope: !4414, file: !464, line: 144, column: 5)
!4420 = !DILocation(line: 145, column: 11, scope: !4419)
!4421 = !DILocation(line: 146, column: 32, scope: !4418)
!4422 = !DILocation(line: 146, column: 16, scope: !4418)
!4423 = !DILocation(line: 146, column: 14, scope: !4418)
!4424 = !DILocation(line: 146, column: 9, scope: !4418)
!4425 = !DILocation(line: 286, column: 1, scope: !4370)
!4426 = !DISubprogram(name: "mbsinit", scope: !4427, file: !4427, line: 293, type: !4428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !584)
!4427 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!6, !4430}
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!4432 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !544, file: !544, line: 27, type: !3655, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !543, retainedNodes: !4433)
!4433 = !{!4434, !4435, !4436, !4437}
!4434 = !DILocalVariable(name: "ptr", arg: 1, scope: !4432, file: !544, line: 27, type: !60)
!4435 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4432, file: !544, line: 27, type: !65)
!4436 = !DILocalVariable(name: "size", arg: 3, scope: !4432, file: !544, line: 27, type: !65)
!4437 = !DILocalVariable(name: "nbytes", scope: !4432, file: !544, line: 29, type: !65)
!4438 = !DILocation(line: 0, scope: !4432)
!4439 = !DILocation(line: 30, column: 7, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4432, file: !544, line: 30, column: 7)
!4441 = !DILocalVariable(name: "ptr", arg: 1, scope: !4442, file: !3746, line: 2057, type: !60)
!4442 = distinct !DISubprogram(name: "rpl_realloc", scope: !3746, file: !3746, line: 2057, type: !3738, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !543, retainedNodes: !4443)
!4443 = !{!4441, !4444}
!4444 = !DILocalVariable(name: "size", arg: 2, scope: !4442, file: !3746, line: 2057, type: !65)
!4445 = !DILocation(line: 0, scope: !4442, inlinedAt: !4446)
!4446 = distinct !DILocation(line: 37, column: 10, scope: !4432)
!4447 = !DILocation(line: 2059, column: 24, scope: !4442, inlinedAt: !4446)
!4448 = !DILocation(line: 2059, column: 10, scope: !4442, inlinedAt: !4446)
!4449 = !DILocation(line: 37, column: 3, scope: !4432)
!4450 = !DILocation(line: 32, column: 7, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4440, file: !544, line: 31, column: 5)
!4452 = !DILocation(line: 32, column: 13, scope: !4451)
!4453 = !DILocation(line: 33, column: 7, scope: !4451)
!4454 = !DILocation(line: 38, column: 1, scope: !4432)
!4455 = distinct !DISubprogram(name: "hard_locale", scope: !547, file: !547, line: 28, type: !4456, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !4458)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!61, !6}
!4458 = !{!4459, !4460}
!4459 = !DILocalVariable(name: "category", arg: 1, scope: !4455, file: !547, line: 28, type: !6)
!4460 = !DILocalVariable(name: "locale", scope: !4455, file: !547, line: 30, type: !4461)
!4461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2056, elements: !4462)
!4462 = !{!4463}
!4463 = !DISubrange(count: 257)
!4464 = !DILocation(line: 0, scope: !4455)
!4465 = !DILocation(line: 30, column: 3, scope: !4455)
!4466 = !DILocation(line: 30, column: 8, scope: !4455)
!4467 = !DILocation(line: 32, column: 7, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4455, file: !547, line: 32, column: 7)
!4469 = !DILocation(line: 32, column: 7, scope: !4455)
!4470 = !DILocalVariable(name: "__s1", arg: 1, scope: !4471, file: !626, line: 1359, type: !67)
!4471 = distinct !DISubprogram(name: "streq", scope: !626, file: !626, line: 1359, type: !627, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !4472)
!4472 = !{!4470, !4473}
!4473 = !DILocalVariable(name: "__s2", arg: 2, scope: !4471, file: !626, line: 1359, type: !67)
!4474 = !DILocation(line: 0, scope: !4471, inlinedAt: !4475)
!4475 = distinct !DILocation(line: 35, column: 9, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4455, file: !547, line: 35, column: 7)
!4477 = !DILocation(line: 1361, column: 11, scope: !4471, inlinedAt: !4475)
!4478 = !DILocation(line: 1361, column: 10, scope: !4471, inlinedAt: !4475)
!4479 = !DILocation(line: 35, column: 29, scope: !4476)
!4480 = !DILocation(line: 0, scope: !4471, inlinedAt: !4481)
!4481 = distinct !DILocation(line: 35, column: 32, scope: !4476)
!4482 = !DILocation(line: 1361, column: 11, scope: !4471, inlinedAt: !4481)
!4483 = !DILocation(line: 1361, column: 10, scope: !4471, inlinedAt: !4481)
!4484 = !DILocation(line: 35, column: 7, scope: !4455)
!4485 = !DILocation(line: 46, column: 3, scope: !4455)
!4486 = !DILocation(line: 47, column: 1, scope: !4455)
!4487 = distinct !DISubprogram(name: "setlocale_null_r", scope: !549, file: !549, line: 154, type: !4488, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4490)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!6, !6, !8, !65}
!4490 = !{!4491, !4492, !4493}
!4491 = !DILocalVariable(name: "category", arg: 1, scope: !4487, file: !549, line: 154, type: !6)
!4492 = !DILocalVariable(name: "buf", arg: 2, scope: !4487, file: !549, line: 154, type: !8)
!4493 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4487, file: !549, line: 154, type: !65)
!4494 = !DILocation(line: 0, scope: !4487)
!4495 = !DILocation(line: 159, column: 10, scope: !4487)
!4496 = !DILocation(line: 159, column: 3, scope: !4487)
!4497 = distinct !DISubprogram(name: "setlocale_null", scope: !549, file: !549, line: 186, type: !4498, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !4500)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!67, !6}
!4500 = !{!4501}
!4501 = !DILocalVariable(name: "category", arg: 1, scope: !4497, file: !549, line: 186, type: !6)
!4502 = !DILocation(line: 0, scope: !4497)
!4503 = !DILocation(line: 189, column: 10, scope: !4497)
!4504 = !DILocation(line: 189, column: 3, scope: !4497)
!4505 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !551, file: !551, line: 35, type: !4498, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !4506)
!4506 = !{!4507, !4508}
!4507 = !DILocalVariable(name: "category", arg: 1, scope: !4505, file: !551, line: 35, type: !6)
!4508 = !DILocalVariable(name: "result", scope: !4505, file: !551, line: 37, type: !67)
!4509 = !DILocation(line: 0, scope: !4505)
!4510 = !DILocation(line: 37, column: 24, scope: !4505)
!4511 = !DILocation(line: 62, column: 3, scope: !4505)
!4512 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !551, file: !551, line: 66, type: !4488, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !4513)
!4513 = !{!4514, !4515, !4516, !4517, !4518}
!4514 = !DILocalVariable(name: "category", arg: 1, scope: !4512, file: !551, line: 66, type: !6)
!4515 = !DILocalVariable(name: "buf", arg: 2, scope: !4512, file: !551, line: 66, type: !8)
!4516 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4512, file: !551, line: 66, type: !65)
!4517 = !DILocalVariable(name: "result", scope: !4512, file: !551, line: 111, type: !67)
!4518 = !DILocalVariable(name: "length", scope: !4519, file: !551, line: 125, type: !65)
!4519 = distinct !DILexicalBlock(scope: !4520, file: !551, line: 124, column: 5)
!4520 = distinct !DILexicalBlock(scope: !4512, file: !551, line: 113, column: 7)
!4521 = !DILocation(line: 0, scope: !4512)
!4522 = !DILocation(line: 0, scope: !4505, inlinedAt: !4523)
!4523 = distinct !DILocation(line: 111, column: 24, scope: !4512)
!4524 = !DILocation(line: 37, column: 24, scope: !4505, inlinedAt: !4523)
!4525 = !DILocation(line: 113, column: 14, scope: !4520)
!4526 = !DILocation(line: 113, column: 7, scope: !4512)
!4527 = !DILocation(line: 116, column: 19, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4529, file: !551, line: 116, column: 11)
!4529 = distinct !DILexicalBlock(scope: !4520, file: !551, line: 114, column: 5)
!4530 = !DILocation(line: 116, column: 11, scope: !4529)
!4531 = !DILocation(line: 120, column: 16, scope: !4528)
!4532 = !DILocation(line: 120, column: 9, scope: !4528)
!4533 = !DILocation(line: 125, column: 23, scope: !4519)
!4534 = !DILocation(line: 0, scope: !4519)
!4535 = !DILocation(line: 126, column: 18, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4519, file: !551, line: 126, column: 11)
!4537 = !DILocation(line: 126, column: 11, scope: !4519)
!4538 = !DILocation(line: 128, column: 39, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4536, file: !551, line: 127, column: 9)
!4540 = !DILocalVariable(name: "__dest", arg: 1, scope: !4541, file: !1113, line: 26, type: !4011)
!4541 = distinct !DISubprogram(name: "memcpy", scope: !1113, file: !1113, line: 26, type: !4009, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !4542)
!4542 = !{!4540, !4543, !4544}
!4543 = !DILocalVariable(name: "__src", arg: 2, scope: !4541, file: !1113, line: 26, type: !792)
!4544 = !DILocalVariable(name: "__len", arg: 3, scope: !4541, file: !1113, line: 26, type: !65)
!4545 = !DILocation(line: 0, scope: !4541, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 128, column: 11, scope: !4539)
!4547 = !DILocation(line: 29, column: 10, scope: !4541, inlinedAt: !4546)
!4548 = !DILocation(line: 129, column: 11, scope: !4539)
!4549 = !DILocation(line: 133, column: 23, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4551, file: !551, line: 133, column: 15)
!4551 = distinct !DILexicalBlock(scope: !4536, file: !551, line: 132, column: 9)
!4552 = !DILocation(line: 133, column: 15, scope: !4551)
!4553 = !DILocation(line: 138, column: 44, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4550, file: !551, line: 134, column: 13)
!4555 = !DILocation(line: 0, scope: !4541, inlinedAt: !4556)
!4556 = distinct !DILocation(line: 138, column: 15, scope: !4554)
!4557 = !DILocation(line: 29, column: 10, scope: !4541, inlinedAt: !4556)
!4558 = !DILocation(line: 139, column: 15, scope: !4554)
!4559 = !DILocation(line: 139, column: 32, scope: !4554)
!4560 = !DILocation(line: 140, column: 13, scope: !4554)
!4561 = !DILocation(line: 0, scope: !4520)
!4562 = !DILocation(line: 145, column: 1, scope: !4512)
