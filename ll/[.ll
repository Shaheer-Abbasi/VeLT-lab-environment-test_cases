; ModuleID = 'src/[.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.infomap = type { i8*, i8* }
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
@.str.1 = private unnamed_addr constant [85 x i8] c"Usage: test EXPRESSION\0A  or:  test\0A  or:  [ EXPRESSION ]\0A  or:  [ ]\0A  or:  [ OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Exit with the status determined by EXPRESSION.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [120 x i8] c"\0AAn omitted EXPRESSION defaults to false.  Otherwise,\0AEXPRESSION is true or false and sets exit status.  It is one of:\0A\00", align 1
@.str.7 = private unnamed_addr constant [249 x i8] c"\0A  ( EXPRESSION )               EXPRESSION is true\0A  ! EXPRESSION                 EXPRESSION is false\0A  EXPRESSION1 -a EXPRESSION2   both EXPRESSION1 and EXPRESSION2 are true\0A  EXPRESSION1 -o EXPRESSION2   either EXPRESSION1 or EXPRESSION2 is true\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"  -n STRING            the length of STRING is nonzero\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"  STRING               equivalent to -n STRING\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"  -z STRING            the length of STRING is zero\0A\00", align 1
@.str.12 = private unnamed_addr constant [246 x i8] c"  STRING1 = STRING2    the strings are equal\0A  STRING1 != STRING2   the strings are not equal\0A  STRING1 > STRING2    STRING1 is greater than STRING2 in the current locale\0A  STRING1 < STRING2    STRING1 is less than STRING2 in the current locale\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"  INTEGER1 -eq INTEGER2   INTEGER1 is equal to INTEGER2\0A\00", align 1
@.str.14 = private unnamed_addr constant [73 x i8] c"  INTEGER1 -ge INTEGER2   INTEGER1 is greater than or equal to INTEGER2\0A\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"  INTEGER1 -gt INTEGER2   INTEGER1 is greater than INTEGER2\0A\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"  INTEGER1 -le INTEGER2   INTEGER1 is less than or equal to INTEGER2\0A\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"  INTEGER1 -lt INTEGER2   INTEGER1 is less than INTEGER2\0A\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"  INTEGER1 -ne INTEGER2   INTEGER1 is not equal to INTEGER2\0A\00", align 1
@.str.19 = private unnamed_addr constant [76 x i8] c"  FILE1 -ef FILE2   FILE1 and FILE2 have the same device and inode numbers\0A\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"  FILE1 -nt FILE2   FILE1 is newer (modification date) than FILE2\0A\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"  FILE1 -ot FILE2   FILE1 is older than FILE2\0A\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"  -b FILE     FILE exists and is block special\0A\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c"  -c FILE     FILE exists and is character special\0A\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"  -d FILE     FILE exists and is a directory\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"  -e FILE     FILE exists\0A\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"  -f FILE     FILE exists and is a regular file\0A\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"  -g FILE     FILE exists and is set-group-ID\0A\00", align 1
@.str.28 = private unnamed_addr constant [66 x i8] c"  -G FILE     FILE exists and is owned by the effective group ID\0A\00", align 1
@.str.29 = private unnamed_addr constant [63 x i8] c"  -h FILE     FILE exists and is a symbolic link (same as -L)\0A\00", align 1
@.str.30 = private unnamed_addr constant [54 x i8] c"  -k FILE     FILE exists and has its sticky bit set\0A\00", align 1
@.str.31 = private unnamed_addr constant [63 x i8] c"  -L FILE     FILE exists and is a symbolic link (same as -h)\0A\00", align 1
@.str.32 = private unnamed_addr constant [72 x i8] c"  -N FILE     FILE exists and has been modified since it was last read\0A\00", align 1
@.str.33 = private unnamed_addr constant [65 x i8] c"  -O FILE     FILE exists and is owned by the effective user ID\0A\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"  -p FILE     FILE exists and is a named pipe\0A\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"  -r FILE     FILE exists and the user has read access\0A\00", align 1
@.str.36 = private unnamed_addr constant [60 x i8] c"  -s FILE     FILE exists and has a size greater than zero\0A\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"  -S FILE     FILE exists and is a socket\0A\00", align 1
@.str.38 = private unnamed_addr constant [58 x i8] c"  -t FD       file descriptor FD is opened on a terminal\0A\00", align 1
@.str.39 = private unnamed_addr constant [58 x i8] c"  -u FILE     FILE exists and its set-user-ID bit is set\0A\00", align 1
@.str.40 = private unnamed_addr constant [57 x i8] c"  -w FILE     FILE exists and the user has write access\0A\00", align 1
@.str.41 = private unnamed_addr constant [71 x i8] c"  -x FILE     FILE exists and the user has execute (or search) access\0A\00", align 1
@.str.42 = private unnamed_addr constant [225 x i8] c"\0AExcept for -h and -L, all FILE-related tests dereference symbolic links.\0ABeware that parentheses need to be escaped (e.g., by backslashes) for shells.\0AINTEGER may also be -l STRING, which evaluates to the length of STRING.\0A\00", align 1
@.str.43 = private unnamed_addr constant [105 x i8] c"\0ABinary -a and -o are ambiguous.  Use 'test EXPR1 && test EXPR2'\0Aor 'test EXPR1 || test EXPR2' instead.\0A\00", align 1
@.str.44 = private unnamed_addr constant [70 x i8] c"\0A'[' honors --help and --version, but 'test' treats them as STRINGs.\0A\00", align 1
@.str.45 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"test and/or [\00", align 1
@.str.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@argv = internal unnamed_addr global i8** null, align 8, !dbg !0
@.str.50 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"Kevin Braunsdorf\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"Matthew Bradburn\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"missing %s\00", align 1
@argc = internal unnamed_addr global i32 0, align 4, !dbg !62
@pos = internal unnamed_addr global i32 0, align 4, !dbg !60
@.str.57 = private unnamed_addr constant [18 x i8] c"extra argument %s\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !64
@.str.58 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.75 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.77 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.82, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.83, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.85 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.86 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.88 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"0 < nargs\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"src/test.c\00", align 1
@__PRETTY_FUNCTION__.posixtest = private unnamed_addr constant [21 x i8] c"_Bool posixtest(int)\00", align 1
@.str.95 = private unnamed_addr constant [28 x i8] c"%s: unary operator expected\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"invalid integer %s\00", align 1
@.str.97 = private unnamed_addr constant [26 x i8] c"missing argument after %s\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.102 = private unnamed_addr constant [29 x i8] c"%s: binary operator expected\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"-eq\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"-ne\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"-lt\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"-le\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"-gt\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"-ge\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"-ot\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"-nt\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"-ef\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.116 = private unnamed_addr constant [22 x i8] c"%s does not accept -l\00", align 1
@.str.117 = private unnamed_addr constant [23 x i8] c"-ef does not accept -l\00", align 1
@.str.118 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__PRETTY_FUNCTION__.binary_operator = private unnamed_addr constant [41 x i8] c"_Bool binary_operator(_Bool, enum binop)\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"%s expected\00", align 1
@.str.120 = private unnamed_addr constant [22 x i8] c"%s expected, found %s\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0), align 8, !dbg !150
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !155
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !160
@.str.66 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.67 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.68 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.69 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !162
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.121 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !198
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !168
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !194
@.str.1.127 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.129 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.128 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !196
@.str.4.122 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.123 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.124 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !203
@.str.140 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.141 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !209
@.str.144 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.145 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.146 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.147 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.148 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.149 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.150 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.151 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.152 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.153 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.145, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.146, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.147, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.148, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.149, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.150, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.151, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.152, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.153, i32 0, i32 0), i8* null], align 8, !dbg !245
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !271
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !289
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !319
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !326
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !291
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !328
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !277
@.str.10.156 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.154 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.157 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.155 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !296
@.str.166 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.167 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.168 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.169 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.170 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.171 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.172 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.173 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.174 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.175 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.176 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.177 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.178 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.179 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.180 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.181 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.182 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.187 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.188 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.189 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.190 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.191 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.192 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.193 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !334
@exit_failure = dso_local global i32 1, align 4, !dbg !342
@.str.206 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.204 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.205 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.217 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !348
@.str.222 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.223 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !446 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !450, metadata !DIExpression()), !dbg !451
  %3 = icmp eq i32 %0, 0, !dbg !452
  br i1 %3, label %9, label %4, !dbg !454

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !455, !tbaa !457
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #35, !dbg !455
  %7 = load i8*, i8** @program_name, align 8, !dbg !455, !tbaa !457
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #35, !dbg !455
  br label %119, !dbg !455

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #35, !dbg !461
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !461, !tbaa !457
  %12 = tail call i32 @fputs_unlocked(i8* noundef %10, %struct._IO_FILE* noundef %11), !dbg !461
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #35, !dbg !463
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !463, !tbaa !457
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !463
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #35, !dbg !464
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !464
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #35, !dbg !465
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !465
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([120 x i8], [120 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #35, !dbg !466
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !466, !tbaa !457
  %20 = tail call i32 @fputs_unlocked(i8* noundef %18, %struct._IO_FILE* noundef %19), !dbg !466
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([249 x i8], [249 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #35, !dbg !467
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !467, !tbaa !457
  %23 = tail call i32 @fputs_unlocked(i8* noundef %21, %struct._IO_FILE* noundef %22), !dbg !467
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !468
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !468, !tbaa !457
  %26 = tail call i32 @fputs_unlocked(i8* noundef %24, %struct._IO_FILE* noundef %25), !dbg !468
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #35, !dbg !469
  tail call fastcc void @oputs_(i8* noundef %27), !dbg !469
  %28 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #35, !dbg !470
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !470, !tbaa !457
  %30 = tail call i32 @fputs_unlocked(i8* noundef %28, %struct._IO_FILE* noundef %29), !dbg !470
  %31 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #35, !dbg !471
  tail call fastcc void @oputs_(i8* noundef %31), !dbg !471
  %32 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([246 x i8], [246 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #35, !dbg !472
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !472, !tbaa !457
  %34 = tail call i32 @fputs_unlocked(i8* noundef %32, %struct._IO_FILE* noundef %33), !dbg !472
  %35 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !473
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !473, !tbaa !457
  %37 = tail call i32 @fputs_unlocked(i8* noundef %35, %struct._IO_FILE* noundef %36), !dbg !473
  %38 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #35, !dbg !474
  tail call fastcc void @oputs_(i8* noundef %38), !dbg !474
  %39 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #35, !dbg !475
  tail call fastcc void @oputs_(i8* noundef %39), !dbg !475
  %40 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #35, !dbg !476
  tail call fastcc void @oputs_(i8* noundef %40), !dbg !476
  %41 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #35, !dbg !477
  tail call fastcc void @oputs_(i8* noundef %41), !dbg !477
  %42 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #35, !dbg !478
  tail call fastcc void @oputs_(i8* noundef %42), !dbg !478
  %43 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i64 0, i64 0), i32 noundef 5) #35, !dbg !479
  tail call fastcc void @oputs_(i8* noundef %43), !dbg !479
  %44 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !480
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !480, !tbaa !457
  %46 = tail call i32 @fputs_unlocked(i8* noundef %44, %struct._IO_FILE* noundef %45), !dbg !480
  %47 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #35, !dbg !481
  tail call fastcc void @oputs_(i8* noundef %47), !dbg !481
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i64 0, i64 0), i32 noundef 5) #35, !dbg !482
  tail call fastcc void @oputs_(i8* noundef %48), !dbg !482
  %49 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0), i32 noundef 5) #35, !dbg !483
  tail call fastcc void @oputs_(i8* noundef %49), !dbg !483
  %50 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !484
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !484, !tbaa !457
  %52 = tail call i32 @fputs_unlocked(i8* noundef %50, %struct._IO_FILE* noundef %51), !dbg !484
  %53 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #35, !dbg !485
  tail call fastcc void @oputs_(i8* noundef %53), !dbg !485
  %54 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i64 0, i64 0), i32 noundef 5) #35, !dbg !486
  tail call fastcc void @oputs_(i8* noundef %54), !dbg !486
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i64 0, i64 0), i32 noundef 5) #35, !dbg !487
  tail call fastcc void @oputs_(i8* noundef %55), !dbg !487
  %56 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i32 noundef 5) #35, !dbg !488
  tail call fastcc void @oputs_(i8* noundef %56), !dbg !488
  %57 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.26, i64 0, i64 0), i32 noundef 5) #35, !dbg !489
  tail call fastcc void @oputs_(i8* noundef %57), !dbg !489
  %58 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i64 0, i64 0), i32 noundef 5) #35, !dbg !490
  tail call fastcc void @oputs_(i8* noundef %58), !dbg !490
  %59 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.28, i64 0, i64 0), i32 noundef 5) #35, !dbg !491
  tail call fastcc void @oputs_(i8* noundef %59), !dbg !491
  %60 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.29, i64 0, i64 0), i32 noundef 5) #35, !dbg !492
  tail call fastcc void @oputs_(i8* noundef %60), !dbg !492
  %61 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.30, i64 0, i64 0), i32 noundef 5) #35, !dbg !493
  tail call fastcc void @oputs_(i8* noundef %61), !dbg !493
  %62 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.31, i64 0, i64 0), i32 noundef 5) #35, !dbg !494
  tail call fastcc void @oputs_(i8* noundef %62), !dbg !494
  %63 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.32, i64 0, i64 0), i32 noundef 5) #35, !dbg !495
  tail call fastcc void @oputs_(i8* noundef %63), !dbg !495
  %64 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.33, i64 0, i64 0), i32 noundef 5) #35, !dbg !496
  tail call fastcc void @oputs_(i8* noundef %64), !dbg !496
  %65 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.34, i64 0, i64 0), i32 noundef 5) #35, !dbg !497
  tail call fastcc void @oputs_(i8* noundef %65), !dbg !497
  %66 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i64 0, i64 0), i32 noundef 5) #35, !dbg !498
  tail call fastcc void @oputs_(i8* noundef %66), !dbg !498
  %67 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.36, i64 0, i64 0), i32 noundef 5) #35, !dbg !499
  tail call fastcc void @oputs_(i8* noundef %67), !dbg !499
  %68 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.37, i64 0, i64 0), i32 noundef 5) #35, !dbg !500
  tail call fastcc void @oputs_(i8* noundef %68), !dbg !500
  %69 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.38, i64 0, i64 0), i32 noundef 5) #35, !dbg !501
  tail call fastcc void @oputs_(i8* noundef %69), !dbg !501
  %70 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.39, i64 0, i64 0), i32 noundef 5) #35, !dbg !502
  tail call fastcc void @oputs_(i8* noundef %70), !dbg !502
  %71 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.40, i64 0, i64 0), i32 noundef 5) #35, !dbg !503
  tail call fastcc void @oputs_(i8* noundef %71), !dbg !503
  %72 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.41, i64 0, i64 0), i32 noundef 5) #35, !dbg !504
  tail call fastcc void @oputs_(i8* noundef %72), !dbg !504
  %73 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([225 x i8], [225 x i8]* @.str.42, i64 0, i64 0), i32 noundef 5) #35, !dbg !505
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !505, !tbaa !457
  %75 = tail call i32 @fputs_unlocked(i8* noundef %73, %struct._IO_FILE* noundef %74), !dbg !505
  %76 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.43, i64 0, i64 0), i32 noundef 5) #35, !dbg !506
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !506, !tbaa !457
  %78 = tail call i32 @fputs_unlocked(i8* noundef %76, %struct._IO_FILE* noundef %77), !dbg !506
  %79 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.44, i64 0, i64 0), i32 noundef 5) #35, !dbg !507
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !507, !tbaa !457
  %81 = tail call i32 @fputs_unlocked(i8* noundef %79, %struct._IO_FILE* noundef %80), !dbg !507
  %82 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.45, i64 0, i64 0), i32 noundef 5) #35, !dbg !508
  %83 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i32 noundef 5) #35, !dbg !508
  %84 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %82, i8* noundef %83) #35, !dbg !508
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), metadata !509, metadata !DIExpression()) #35, !dbg !528
  %85 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !530
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %85) #35, !dbg !530
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !514, metadata !DIExpression()) #35, !dbg !531
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %85, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #35, !dbg !531
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), metadata !523, metadata !DIExpression()) #35, !dbg !528
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !524, metadata !DIExpression()) #35, !dbg !528
  %86 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !532
  call void @llvm.dbg.value(metadata %struct.infomap* %86, metadata !524, metadata !DIExpression()) #35, !dbg !528
  br label %87, !dbg !533

87:                                               ; preds = %92, %9
  %88 = phi i8* [ %95, %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %9 ]
  %89 = phi %struct.infomap* [ %93, %92 ], [ %86, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %89, metadata !524, metadata !DIExpression()) #35, !dbg !528
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), metadata !534, metadata !DIExpression()) #35, !dbg !541
  call void @llvm.dbg.value(metadata i8* %88, metadata !540, metadata !DIExpression()) #35, !dbg !541
  %90 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %88) #36, !dbg !543
  %91 = icmp eq i32 %90, 0, !dbg !544
  br i1 %91, label %97, label %92, !dbg !533

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.infomap, %struct.infomap* %89, i64 1, !dbg !545
  call void @llvm.dbg.value(metadata %struct.infomap* %93, metadata !524, metadata !DIExpression()) #35, !dbg !528
  %94 = getelementptr inbounds %struct.infomap, %struct.infomap* %93, i64 0, i32 0, !dbg !546
  %95 = load i8*, i8** %94, align 8, !dbg !546, !tbaa !547
  %96 = icmp eq i8* %95, null, !dbg !549
  br i1 %96, label %97, label %87, !dbg !550, !llvm.loop !551

97:                                               ; preds = %92, %87
  %98 = phi %struct.infomap* [ %89, %87 ], [ %93, %92 ]
  %99 = getelementptr inbounds %struct.infomap, %struct.infomap* %98, i64 0, i32 1, !dbg !553
  %100 = load i8*, i8** %99, align 8, !dbg !553, !tbaa !555
  %101 = icmp eq i8* %100, null, !dbg !556
  %102 = select i1 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %100, !dbg !557
  call void @llvm.dbg.value(metadata i8* %102, metadata !523, metadata !DIExpression()) #35, !dbg !528
  tail call void @emit_bug_reporting_address() #35, !dbg !558
  %103 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #35, !dbg !559
  call void @llvm.dbg.value(metadata i8* %103, metadata !526, metadata !DIExpression()) #35, !dbg !528
  %104 = icmp eq i8* %103, null, !dbg !560
  br i1 %104, label %112, label %105, !dbg !562

105:                                              ; preds = %97
  %106 = tail call i32 @strncmp(i8* noundef nonnull %103, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i64 0, i64 0), i64 noundef 3) #36, !dbg !563
  %107 = icmp eq i32 %106, 0, !dbg !563
  br i1 %107, label %112, label %108, !dbg !564

108:                                              ; preds = %105
  %109 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.86, i64 0, i64 0), i32 noundef 5) #35, !dbg !565
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !565, !tbaa !457
  %111 = tail call i32 @fputs_unlocked(i8* noundef %109, %struct._IO_FILE* noundef %110) #35, !dbg !565
  br label %112, !dbg !567

112:                                              ; preds = %97, %105, %108
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), metadata !534, metadata !DIExpression()) #35, !dbg !568
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !568
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), metadata !527, metadata !DIExpression()) #35, !dbg !528
  %113 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.87, i64 0, i64 0), i32 noundef 5) #35, !dbg !570
  %114 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %113, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0)) #35, !dbg !570
  %115 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.88, i64 0, i64 0), i32 noundef 5) #35, !dbg !571
  %116 = icmp eq i8* %102, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), !dbg !571
  %117 = select i1 %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i64 0, i64 0), !dbg !571
  %118 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %115, i8* noundef %102, i8* noundef %117) #35, !dbg !571
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %85) #35, !dbg !572
  br label %119

119:                                              ; preds = %112, %4
  tail call void @exit(i32 noundef %0) #37, !dbg !573
  unreachable, !dbg !573
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !574 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !579 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !66 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), metadata !71, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata i8* %0, metadata !72, metadata !DIExpression()), !dbg !584
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !585, !tbaa !586
  %3 = icmp eq i32 %2, -1, !dbg !588
  br i1 %3, label %4, label %16, !dbg !589

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0)) #35, !dbg !590
  call void @llvm.dbg.value(metadata i8* %5, metadata !73, metadata !DIExpression()), !dbg !591
  %6 = icmp eq i8* %5, null, !dbg !592
  br i1 %6, label %14, label %7, !dbg !593

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !594, !tbaa !595
  %9 = icmp eq i8 %8, 0, !dbg !594
  br i1 %9, label %14, label %10, !dbg !596

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !534, metadata !DIExpression()) #35, !dbg !597
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !597
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0)) #36, !dbg !599
  %12 = icmp eq i32 %11, 0, !dbg !600
  %13 = zext i1 %12 to i32, !dbg !596
  br label %14, !dbg !596

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !601, !tbaa !586
  br label %16, !dbg !602

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !603
  %18 = icmp eq i32 %17, 0, !dbg !603
  br i1 %18, label %22, label %19, !dbg !605

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !606, !tbaa !457
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !606
  br label %121, !dbg !608

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !76, metadata !DIExpression()), !dbg !584
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)) #36, !dbg !609
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !610
  call void @llvm.dbg.value(metadata i8* %24, metadata !78, metadata !DIExpression()), !dbg !584
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #36, !dbg !611
  call void @llvm.dbg.value(metadata i8* %25, metadata !79, metadata !DIExpression()), !dbg !584
  %26 = icmp eq i8* %25, null, !dbg !612
  br i1 %26, label %53, label %27, !dbg !613

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !614
  br i1 %28, label %53, label %29, !dbg !615

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !80, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.value(metadata i64 0, metadata !84, metadata !DIExpression()), !dbg !616
  %30 = icmp ult i8* %24, %25, !dbg !617
  br i1 %30, label %31, label %53, !dbg !618

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #38, !dbg !584
  %33 = load i16*, i16** %32, align 8, !tbaa !457
  br label %34, !dbg !618

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !80, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.value(metadata i64 %36, metadata !84, metadata !DIExpression()), !dbg !616
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !619
  call void @llvm.dbg.value(metadata i8* %37, metadata !80, metadata !DIExpression()), !dbg !616
  %38 = load i8, i8* %35, align 1, !dbg !619, !tbaa !595
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !619
  %41 = load i16, i16* %40, align 2, !dbg !619, !tbaa !620
  %42 = lshr i16 %41, 13, !dbg !622
  %43 = and i16 %42, 1, !dbg !622
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !623
  call void @llvm.dbg.value(metadata i64 %45, metadata !84, metadata !DIExpression()), !dbg !616
  %46 = icmp ult i8* %37, %25, !dbg !617
  %47 = icmp ult i64 %45, 2, !dbg !624
  %48 = select i1 %46, i1 %47, i1 false, !dbg !624
  br i1 %48, label %34, label %49, !dbg !618, !llvm.loop !625

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !626
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !628
  %52 = xor i1 %50, true, !dbg !628
  br label %53, !dbg !628

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !584
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !76, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata i8* %54, metadata !79, metadata !DIExpression()), !dbg !584
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0)) #36, !dbg !629
  call void @llvm.dbg.value(metadata i64 %56, metadata !85, metadata !DIExpression()), !dbg !584
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !630
  call void @llvm.dbg.value(metadata i8* %57, metadata !86, metadata !DIExpression()), !dbg !584
  br label %58, !dbg !631

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !584
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !76, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata i8* %59, metadata !86, metadata !DIExpression()), !dbg !584
  %61 = load i8, i8* %59, align 1, !dbg !632, !tbaa !595
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !633

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !634
  %64 = load i8, i8* %63, align 1, !dbg !637, !tbaa !595
  %65 = icmp ne i8 %64, 45, !dbg !638
  %66 = select i1 %65, i1 %60, i1 false, !dbg !639
  br label %67, !dbg !639

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !76, metadata !DIExpression()), !dbg !584
  %69 = tail call i16** @__ctype_b_loc() #38, !dbg !640
  %70 = load i16*, i16** %69, align 8, !dbg !640, !tbaa !457
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !640
  %73 = load i16, i16* %72, align 2, !dbg !640, !tbaa !620
  %74 = and i16 %73, 8192, !dbg !640
  %75 = icmp eq i16 %74, 0, !dbg !640
  br i1 %75, label %89, label %76, !dbg !642

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !643
  br i1 %77, label %91, label %78, !dbg !646

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !647
  %80 = load i8, i8* %79, align 1, !dbg !647, !tbaa !595
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !647
  %83 = load i16, i16* %82, align 2, !dbg !647, !tbaa !620
  %84 = and i16 %83, 8192, !dbg !647
  %85 = icmp eq i16 %84, 0, !dbg !647
  br i1 %85, label %86, label %91, !dbg !648

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !649
  br i1 %88, label %89, label %91, !dbg !649

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !651
  call void @llvm.dbg.value(metadata i8* %90, metadata !86, metadata !DIExpression()), !dbg !584
  br label %58, !dbg !631, !llvm.loop !652

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !654
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !654, !tbaa !457
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !654
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), metadata !534, metadata !DIExpression()) #35, !dbg !655
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !655
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), metadata !144, metadata !DIExpression()), !dbg !584
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i64 noundef 6) #36, !dbg !657
  %96 = icmp eq i32 %95, 0, !dbg !657
  br i1 %96, label %100, label %97, !dbg !659

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), i64 noundef 9) #36, !dbg !660
  %99 = icmp eq i32 %98, 0, !dbg !660
  br i1 %99, label %100, label %103, !dbg !661

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !662
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #35, !dbg !662
  br label %106, !dbg !664

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !665
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #35, !dbg !665
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !667, !tbaa !457
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !667
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !668, !tbaa !457
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !668
  %111 = ptrtoint i8* %59 to i64, !dbg !669
  %112 = sub i64 %111, %92, !dbg !669
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !457
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !669
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !670, !tbaa !457
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !670
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !671, !tbaa !457
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !671
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !672, !tbaa !457
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !672
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !673
}

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !674 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !678 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !682 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !688 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !692, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i8** %1, metadata !693, metadata !DIExpression()), !dbg !695
  %3 = load i8*, i8** %1, align 8, !dbg !696, !tbaa !457
  tail call void @set_program_name(i8* noundef %3) #35, !dbg !697
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i64 0, i64 0)) #35, !dbg !698
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0)) #35, !dbg !699
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0)) #35, !dbg !700
  call void @llvm.dbg.value(metadata i32 2, metadata !701, metadata !DIExpression()), !dbg !704
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !706, !tbaa !586
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #35, !dbg !708
  store i8** %1, i8*** @argv, align 8, !dbg !709, !tbaa !457
  %8 = icmp eq i32 %0, 2, !dbg !710
  br i1 %8, label %9, label %23, !dbg !714

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !715
  %11 = load i8*, i8** %10, align 8, !dbg !715, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %11, metadata !534, metadata !DIExpression()) #35, !dbg !718
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !718
  %12 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0)) #36, !dbg !720
  %13 = icmp eq i32 %12, 0, !dbg !721
  br i1 %13, label %14, label %15, !dbg !722

14:                                               ; preds = %9
  tail call void @usage(i32 noundef 0) #39, !dbg !723
  unreachable, !dbg !723

15:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %11, metadata !534, metadata !DIExpression()) #35, !dbg !724
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !724
  %16 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %11, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0)) #36, !dbg !727
  %17 = icmp eq i32 %16, 0, !dbg !728
  br i1 %17, label %18, label %25, !dbg !729

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !730, !tbaa !457
  %20 = load i8*, i8** @Version, align 8, !dbg !732, !tbaa !457
  %21 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0)) #35, !dbg !733
  %22 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i64 0, i64 0)) #35, !dbg !733
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i64 0, i64 0), i8* noundef %20, i8* noundef %21, i8* noundef %22, i8* noundef null) #35, !dbg !734
  br label %54, !dbg !735

23:                                               ; preds = %2
  %24 = icmp slt i32 %0, 2, !dbg !736
  br i1 %24, label %32, label %25, !dbg !738

25:                                               ; preds = %15, %23
  %26 = add nsw i32 %0, -1, !dbg !739
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %1, i64 %27, !dbg !740
  %29 = load i8*, i8** %28, align 8, !dbg !740, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %29, metadata !534, metadata !DIExpression()) #35, !dbg !741
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !741
  %30 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %29, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0)) #36, !dbg !743
  %31 = icmp eq i32 %30, 0, !dbg !744
  br i1 %31, label %35, label %32, !dbg !745

32:                                               ; preds = %25, %23
  %33 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i32 noundef 5) #35, !dbg !746
  %34 = tail call i8* @quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0)) #35, !dbg !747
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %33, i8* noundef %34) #39, !dbg !748
  unreachable, !dbg !748

35:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 %26, metadata !692, metadata !DIExpression()), !dbg !695
  store i32 %26, i32* @argc, align 4, !dbg !749, !tbaa !586
  store i32 1, i32* @pos, align 4, !dbg !750, !tbaa !586
  %36 = icmp ult i32 %0, 3, !dbg !751
  br i1 %36, label %54, label %37, !dbg !753

37:                                               ; preds = %35
  %38 = add nsw i32 %0, -2, !dbg !754
  %39 = tail call fastcc i1 @posixtest(i32 noundef %38), !dbg !755
  call void @llvm.dbg.value(metadata i1 %39, metadata !694, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !695
  %40 = load i32, i32* @pos, align 4, !dbg !756, !tbaa !586
  %41 = load i32, i32* @argc, align 4, !dbg !758, !tbaa !586
  %42 = icmp eq i32 %40, %41, !dbg !759
  br i1 %42, label %51, label %43, !dbg !760

43:                                               ; preds = %37
  %44 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i64 0, i64 0), i32 noundef 5) #35, !dbg !761
  %45 = load i8**, i8*** @argv, align 8, !dbg !762, !tbaa !457
  %46 = load i32, i32* @pos, align 4, !dbg !763, !tbaa !586
  %47 = sext i32 %46 to i64, !dbg !762
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47, !dbg !762
  %49 = load i8*, i8** %48, align 8, !dbg !762, !tbaa !457
  %50 = tail call i8* @quote(i8* noundef %49) #35, !dbg !764
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %44, i8* noundef %50) #39, !dbg !765
  unreachable, !dbg !765

51:                                               ; preds = %37
  %52 = xor i1 %39, true, !dbg !766
  %53 = zext i1 %52 to i32, !dbg !766
  br label %54, !dbg !766

54:                                               ; preds = %35, %51, %18
  %55 = phi i32 [ 0, %18 ], [ %53, %51 ], [ 1, %35 ], !dbg !695
  ret i32 %55, !dbg !767
}

; Function Attrs: nounwind
declare !dbg !768 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !771 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !772 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal void @test_syntax_error(i8* noundef %0, ...) unnamed_addr #0 !dbg !775 {
  %2 = alloca %"struct.std::__va_list", align 8
  %3 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !779, metadata !DIExpression()), !dbg !792
  %4 = bitcast %"struct.std::__va_list"* %2 to i8*, !dbg !793
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #35, !dbg !793
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %2, metadata !780, metadata !DIExpression()), !dbg !794
  call void @llvm.va_start(i8* nonnull %4), !dbg !795
  %5 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !796
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #35, !dbg !796
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %5, i8* noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !796, !tbaa.struct !797
  call void @verror(i32 noundef 0, i32 noundef 0, i8* noundef %0, %"struct.std::__va_list"* noundef nonnull %3) #40, !dbg !796
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #35, !dbg !796
  call void @exit(i32 noundef 2) #37, !dbg !798
  unreachable, !dbg !798
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @posixtest(i32 noundef %0) unnamed_addr #12 !dbg !799 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !803, metadata !DIExpression()), !dbg !805
  switch i32 %0, label %102 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %41
    i32 4, label %43
  ], !dbg !806

2:                                                ; preds = %1
  %3 = load i8**, i8*** @argv, align 8, !dbg !807, !tbaa !457
  %4 = load i32, i32* @pos, align 4, !dbg !813, !tbaa !586
  %5 = add nsw i32 %4, 1, !dbg !813
  store i32 %5, i32* @pos, align 4, !dbg !813, !tbaa !586
  %6 = sext i32 %4 to i64, !dbg !807
  %7 = getelementptr inbounds i8*, i8** %3, i64 %6, !dbg !807
  %8 = load i8*, i8** %7, align 8, !dbg !807, !tbaa !457
  %9 = load i8, i8* %8, align 1, !dbg !807, !tbaa !595
  %10 = icmp ne i8 %9, 0, !dbg !814
  call void @llvm.dbg.value(metadata i1 %10, metadata !804, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !805
  br label %114, !dbg !815

11:                                               ; preds = %1
  %12 = load i8**, i8*** @argv, align 8, !dbg !816, !tbaa !457
  %13 = load i32, i32* @pos, align 4, !dbg !822, !tbaa !586
  %14 = sext i32 %13 to i64, !dbg !816
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14, !dbg !816
  %16 = load i8*, i8** %15, align 8, !dbg !816, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %16, metadata !534, metadata !DIExpression()) #35, !dbg !823
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !823
  %17 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %16, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0)) #36, !dbg !825
  %18 = icmp eq i32 %17, 0, !dbg !826
  br i1 %18, label %19, label %27, !dbg !827

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 false, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !833
  %20 = add nsw i32 %13, 1, !dbg !836
  %21 = add nsw i32 %13, 2, !dbg !837
  store i32 %21, i32* @pos, align 4, !dbg !837, !tbaa !586
  %22 = sext i32 %20 to i64, !dbg !839
  %23 = getelementptr inbounds i8*, i8** %12, i64 %22, !dbg !839
  %24 = load i8*, i8** %23, align 8, !dbg !839, !tbaa !457
  %25 = load i8, i8* %24, align 1, !dbg !839, !tbaa !595
  %26 = icmp eq i8 %25, 0, !dbg !840
  call void @llvm.dbg.value(metadata i1 %26, metadata !820, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !841
  br label %114, !dbg !842

27:                                               ; preds = %11
  %28 = load i8, i8* %16, align 1, !dbg !843, !tbaa !595
  %29 = icmp eq i8 %28, 45, !dbg !845
  br i1 %29, label %30, label %40, !dbg !846

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !847
  %32 = load i8, i8* %31, align 1, !dbg !847, !tbaa !595
  %33 = icmp eq i8 %32, 0, !dbg !848
  br i1 %33, label %40, label %34, !dbg !849

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, i8* %16, i64 2, !dbg !850
  %36 = load i8, i8* %35, align 1, !dbg !850, !tbaa !595
  %37 = icmp eq i8 %36, 0, !dbg !851
  br i1 %37, label %38, label %40, !dbg !852

38:                                               ; preds = %34
  %39 = tail call fastcc i1 @unary_operator() #35, !dbg !853
  call void @llvm.dbg.value(metadata i1 %39, metadata !820, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !841
  br label %114

40:                                               ; preds = %34, %30, %27
  tail call fastcc void @beyond() #37, !dbg !855
  unreachable, !dbg !855

41:                                               ; preds = %1
  %42 = tail call fastcc i1 @three_arguments(), !dbg !856
  call void @llvm.dbg.value(metadata i1 %42, metadata !804, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !805
  br label %114, !dbg !857

43:                                               ; preds = %1
  %44 = load i8**, i8*** @argv, align 8, !dbg !858, !tbaa !457
  %45 = load i32, i32* @pos, align 4, !dbg !860, !tbaa !586
  %46 = sext i32 %45 to i64, !dbg !858
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46, !dbg !858
  %48 = load i8*, i8** %47, align 8, !dbg !858, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %48, metadata !534, metadata !DIExpression()) #35, !dbg !861
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !861
  %49 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %48, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0)) #36, !dbg !863
  %50 = icmp eq i32 %49, 0, !dbg !864
  br i1 %50, label %51, label %59, !dbg !865

51:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !866
  %52 = add nsw i32 %45, 1, !dbg !869
  store i32 %52, i32* @pos, align 4, !dbg !869, !tbaa !586
  %53 = load i32, i32* @argc, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %56, label %55, !dbg !870

55:                                               ; preds = %51
  tail call fastcc void @beyond() #35, !dbg !872
  unreachable, !dbg !872

56:                                               ; preds = %51
  %57 = tail call fastcc i1 @three_arguments(), !dbg !873
  %58 = xor i1 %57, true, !dbg !874
  call void @llvm.dbg.value(metadata i1 %58, metadata !804, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !805
  br label %114, !dbg !875

59:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i8* %48, metadata !534, metadata !DIExpression()) #35, !dbg !876
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !876
  %60 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %48, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0)) #36, !dbg !879
  %61 = icmp eq i32 %60, 0, !dbg !880
  br i1 %61, label %62, label %107, !dbg !881

62:                                               ; preds = %59
  %63 = add nsw i32 %45, 3, !dbg !882
  %64 = sext i32 %63 to i64, !dbg !883
  %65 = getelementptr inbounds i8*, i8** %44, i64 %64, !dbg !883
  %66 = load i8*, i8** %65, align 8, !dbg !883, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %66, metadata !534, metadata !DIExpression()) #35, !dbg !884
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !884
  %67 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %66, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i64 0, i64 0)) #36, !dbg !886
  %68 = icmp eq i32 %67, 0, !dbg !887
  br i1 %68, label %69, label %107, !dbg !888

69:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i1 false, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !889
  %70 = add nsw i32 %45, 1, !dbg !892
  store i32 %70, i32* @pos, align 4, !dbg !892, !tbaa !586
  %71 = sext i32 %70 to i64, !dbg !893
  %72 = getelementptr inbounds i8*, i8** %44, i64 %71, !dbg !893
  %73 = load i8*, i8** %72, align 8, !dbg !893, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %73, metadata !534, metadata !DIExpression()) #35, !dbg !895
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !895
  %74 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %73, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0)) #36, !dbg !897
  %75 = icmp eq i32 %74, 0, !dbg !898
  br i1 %75, label %76, label %83, !dbg !899

76:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i1 false, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !900
  %77 = add nsw i32 %45, 2, !dbg !902
  %78 = sext i32 %77 to i64, !dbg !903
  %79 = getelementptr inbounds i8*, i8** %44, i64 %78, !dbg !903
  %80 = load i8*, i8** %79, align 8, !dbg !903, !tbaa !457
  %81 = load i8, i8* %80, align 1, !dbg !903, !tbaa !595
  %82 = icmp eq i8 %81, 0, !dbg !905
  call void @llvm.dbg.value(metadata i1 %82, metadata !820, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !906
  br label %98, !dbg !907

83:                                               ; preds = %69
  %84 = load i8, i8* %73, align 1, !dbg !908, !tbaa !595
  %85 = icmp eq i8 %84, 45, !dbg !909
  br i1 %85, label %86, label %97, !dbg !910

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, i8* %73, i64 1, !dbg !911
  %88 = load i8, i8* %87, align 1, !dbg !911, !tbaa !595
  %89 = icmp eq i8 %88, 0, !dbg !912
  br i1 %89, label %97, label %90, !dbg !913

90:                                               ; preds = %86
  %91 = getelementptr inbounds i8, i8* %73, i64 2, !dbg !914
  %92 = load i8, i8* %91, align 1, !dbg !914, !tbaa !595
  %93 = icmp eq i8 %92, 0, !dbg !915
  br i1 %93, label %94, label %97, !dbg !916

94:                                               ; preds = %90
  %95 = tail call fastcc i1 @unary_operator() #35, !dbg !917
  call void @llvm.dbg.value(metadata i1 %95, metadata !820, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !906
  %96 = load i32, i32* @pos, align 4, !dbg !918, !tbaa !586
  br label %98

97:                                               ; preds = %90, %86, %83
  tail call fastcc void @beyond() #37, !dbg !920
  unreachable, !dbg !920

98:                                               ; preds = %76, %94
  %99 = phi i32 [ %63, %76 ], [ %96, %94 ], !dbg !918
  %100 = phi i1 [ %82, %76 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i1 %100, metadata !820, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !906
  call void @llvm.dbg.value(metadata i1 %100, metadata !804, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !805
  call void @llvm.dbg.value(metadata i1 false, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !921
  %101 = add nsw i32 %99, 1, !dbg !918
  store i32 %101, i32* @pos, align 4, !dbg !918, !tbaa !586
  br label %114, !dbg !922

102:                                              ; preds = %1
  %103 = icmp sgt i32 %0, 0, !dbg !923
  br i1 %103, label %104, label %106, !dbg !926

104:                                              ; preds = %102
  %105 = load i32, i32* @pos, align 4, !dbg !927, !tbaa !586
  br label %107, !dbg !926

106:                                              ; preds = %102
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i64 0, i64 0), i32 noundef 651, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.posixtest, i64 0, i64 0)) #37, !dbg !923
  unreachable, !dbg !923

107:                                              ; preds = %104, %59, %62
  %108 = phi i32 [ %105, %104 ], [ %45, %59 ], [ %45, %62 ], !dbg !927
  %109 = load i32, i32* @argc, align 4, !dbg !931, !tbaa !586
  %110 = icmp slt i32 %108, %109, !dbg !932
  br i1 %110, label %112, label %111, !dbg !933

111:                                              ; preds = %107
  tail call fastcc void @beyond() #37, !dbg !934
  unreachable, !dbg !934

112:                                              ; preds = %107
  %113 = tail call fastcc i1 @or() #35, !dbg !935
  call void @llvm.dbg.value(metadata i1 %113, metadata !804, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !805
  br label %114, !dbg !936

114:                                              ; preds = %38, %19, %112, %98, %56, %41, %2
  %115 = phi i1 [ %113, %112 ], [ %58, %56 ], [ %100, %98 ], [ %42, %41 ], [ %10, %2 ], [ %26, %19 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i1 %115, metadata !804, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !805
  ret i1 %115, !dbg !937
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @unary_operator() unnamed_addr #12 !dbg !938 {
  %1 = alloca [1 x i8], align 1
  %2 = alloca %struct.stat, align 8
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !991
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #35, !dbg !991
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !940, metadata !DIExpression()), !dbg !992
  %4 = load i8**, i8*** @argv, align 8, !dbg !993, !tbaa !457
  %5 = load i32, i32* @pos, align 4, !dbg !994, !tbaa !586
  %6 = sext i32 %5 to i64, !dbg !993
  %7 = getelementptr inbounds i8*, i8** %4, i64 %6, !dbg !993
  %8 = load i8*, i8** %7, align 8, !dbg !993, !tbaa !457
  %9 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !993
  %10 = load i8, i8* %9, align 1, !dbg !993, !tbaa !595
  switch i8 %10, label %11 [
    i8 101, label %19
    i8 114, label %31
    i8 119, label %43
    i8 120, label %55
    i8 78, label %67
    i8 79, label %96
    i8 71, label %119
    i8 102, label %142
    i8 100, label %159
    i8 115, label %176
    i8 83, label %192
    i8 99, label %209
    i8 98, label %226
    i8 112, label %243
    i8 76, label %260
    i8 104, label %260
    i8 117, label %273
    i8 103, label %290
    i8 107, label %307
    i8 116, label %324
    i8 110, label %347
    i8 122, label %359
  ], !dbg !995

11:                                               ; preds = %0
  %12 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.95, i64 0, i64 0), i32 noundef 5) #35, !dbg !996
  %13 = load i8**, i8*** @argv, align 8, !dbg !997, !tbaa !457
  %14 = load i32, i32* @pos, align 4, !dbg !998, !tbaa !586
  %15 = sext i32 %14 to i64, !dbg !997
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15, !dbg !997
  %17 = load i8*, i8** %16, align 8, !dbg !997, !tbaa !457
  %18 = tail call i8* @quote(i8* noundef %17) #35, !dbg !999
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %12, i8* noundef %18) #39, !dbg !1000
  unreachable, !dbg !1000

19:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1001
  %20 = add nsw i32 %5, 1, !dbg !1005
  store i32 %20, i32* @pos, align 4, !dbg !1005, !tbaa !586
  %21 = load i32, i32* @argc, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %24, label %23, !dbg !1006

23:                                               ; preds = %19
  tail call fastcc void @beyond() #35, !dbg !1007
  unreachable, !dbg !1007

24:                                               ; preds = %19
  %25 = add nsw i32 %5, 2, !dbg !1008
  store i32 %25, i32* @pos, align 4, !dbg !1008, !tbaa !586
  %26 = sext i32 %20 to i64, !dbg !1009
  %27 = getelementptr inbounds i8*, i8** %4, i64 %26, !dbg !1009
  %28 = load i8*, i8** %27, align 8, !dbg !1009, !tbaa !457
  %29 = call i32 @stat(i8* noundef %28, %struct.stat* noundef nonnull %2) #35, !dbg !1010
  %30 = icmp eq i32 %29, 0, !dbg !1011
  br label %371, !dbg !1012

31:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1013
  %32 = add nsw i32 %5, 1, !dbg !1016
  store i32 %32, i32* @pos, align 4, !dbg !1016, !tbaa !586
  %33 = load i32, i32* @argc, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %36, label %35, !dbg !1017

35:                                               ; preds = %31
  tail call fastcc void @beyond() #35, !dbg !1018
  unreachable, !dbg !1018

36:                                               ; preds = %31
  %37 = add nsw i32 %5, 2, !dbg !1019
  store i32 %37, i32* @pos, align 4, !dbg !1019, !tbaa !586
  %38 = sext i32 %32 to i64, !dbg !1020
  %39 = getelementptr inbounds i8*, i8** %4, i64 %38, !dbg !1020
  %40 = load i8*, i8** %39, align 8, !dbg !1020, !tbaa !457
  %41 = tail call i32 @euidaccess(i8* noundef %40, i32 noundef 4) #35, !dbg !1021
  %42 = icmp eq i32 %41, 0, !dbg !1022
  br label %371, !dbg !1023

43:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1024
  %44 = add nsw i32 %5, 1, !dbg !1027
  store i32 %44, i32* @pos, align 4, !dbg !1027, !tbaa !586
  %45 = load i32, i32* @argc, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %48, label %47, !dbg !1028

47:                                               ; preds = %43
  tail call fastcc void @beyond() #35, !dbg !1029
  unreachable, !dbg !1029

48:                                               ; preds = %43
  %49 = add nsw i32 %5, 2, !dbg !1030
  store i32 %49, i32* @pos, align 4, !dbg !1030, !tbaa !586
  %50 = sext i32 %44 to i64, !dbg !1031
  %51 = getelementptr inbounds i8*, i8** %4, i64 %50, !dbg !1031
  %52 = load i8*, i8** %51, align 8, !dbg !1031, !tbaa !457
  %53 = tail call i32 @euidaccess(i8* noundef %52, i32 noundef 2) #35, !dbg !1032
  %54 = icmp eq i32 %53, 0, !dbg !1033
  br label %371, !dbg !1034

55:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1035
  %56 = add nsw i32 %5, 1, !dbg !1038
  store i32 %56, i32* @pos, align 4, !dbg !1038, !tbaa !586
  %57 = load i32, i32* @argc, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %60, label %59, !dbg !1039

59:                                               ; preds = %55
  tail call fastcc void @beyond() #35, !dbg !1040
  unreachable, !dbg !1040

60:                                               ; preds = %55
  %61 = add nsw i32 %5, 2, !dbg !1041
  store i32 %61, i32* @pos, align 4, !dbg !1041, !tbaa !586
  %62 = sext i32 %56 to i64, !dbg !1042
  %63 = getelementptr inbounds i8*, i8** %4, i64 %62, !dbg !1042
  %64 = load i8*, i8** %63, align 8, !dbg !1042, !tbaa !457
  %65 = tail call i32 @euidaccess(i8* noundef %64, i32 noundef 1) #35, !dbg !1043
  %66 = icmp eq i32 %65, 0, !dbg !1044
  br label %371, !dbg !1045

67:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1046
  %68 = add nsw i32 %5, 1, !dbg !1049
  store i32 %68, i32* @pos, align 4, !dbg !1049, !tbaa !586
  %69 = load i32, i32* @argc, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %72, label %71, !dbg !1050

71:                                               ; preds = %67
  tail call fastcc void @beyond() #35, !dbg !1051
  unreachable, !dbg !1051

72:                                               ; preds = %67
  %73 = add nsw i32 %5, 2, !dbg !1052
  store i32 %73, i32* @pos, align 4, !dbg !1052, !tbaa !586
  %74 = sext i32 %68 to i64, !dbg !1053
  %75 = getelementptr inbounds i8*, i8** %4, i64 %74, !dbg !1053
  %76 = load i8*, i8** %75, align 8, !dbg !1053, !tbaa !457
  %77 = call i32 @stat(i8* noundef %76, %struct.stat* noundef nonnull %2) #35, !dbg !1055
  %78 = icmp eq i32 %77, 0, !dbg !1056
  br i1 %78, label %79, label %371, !dbg !1057

79:                                               ; preds = %72
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1058, metadata !DIExpression()), !dbg !1066
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 0, !dbg !1068
  %81 = bitcast i64* %80 to <2 x i64>*, !dbg !1068
  %82 = load <2 x i64>, <2 x i64>* %81, align 8, !dbg !1068
  call void @llvm.dbg.value(metadata i64 undef, metadata !975, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1069
  call void @llvm.dbg.value(metadata i64 undef, metadata !975, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1069
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1070, metadata !DIExpression()), !dbg !1073
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 13, i32 0, !dbg !1075
  %84 = bitcast i64* %83 to <2 x i64>*, !dbg !1075
  %85 = load <2 x i64>, <2 x i64>* %84, align 8, !dbg !1075
  call void @llvm.dbg.value(metadata i64 undef, metadata !978, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1069
  call void @llvm.dbg.value(metadata i64 undef, metadata !978, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1069
  call void @llvm.dbg.value(metadata i64 undef, metadata !1076, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1083
  call void @llvm.dbg.value(metadata i64 undef, metadata !1076, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1083
  call void @llvm.dbg.value(metadata i64 undef, metadata !1082, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1083
  call void @llvm.dbg.value(metadata i64 undef, metadata !1082, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1083
  %86 = icmp sgt <2 x i64> %85, %82, !dbg !1085
  %87 = zext <2 x i1> %86 to <2 x i32>, !dbg !1085
  %88 = icmp slt <2 x i64> %85, %82, !dbg !1085
  %89 = sext <2 x i1> %88 to <2 x i32>, !dbg !1085
  %90 = add nsw <2 x i32> %89, %87, !dbg !1085
  %91 = extractelement <2 x i32> %90, i64 0, !dbg !1086
  %92 = shl nsw i32 %91, 1, !dbg !1086
  %93 = extractelement <2 x i32> %90, i64 1, !dbg !1087
  %94 = add nsw i32 %93, %92, !dbg !1087
  %95 = icmp sgt i32 %94, 0, !dbg !1088
  br label %371

96:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1089
  %97 = add nsw i32 %5, 1, !dbg !1092
  store i32 %97, i32* @pos, align 4, !dbg !1092, !tbaa !586
  %98 = load i32, i32* @argc, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %101, label %100, !dbg !1093

100:                                              ; preds = %96
  tail call fastcc void @beyond() #35, !dbg !1094
  unreachable, !dbg !1094

101:                                              ; preds = %96
  %102 = add nsw i32 %5, 2, !dbg !1095
  store i32 %102, i32* @pos, align 4, !dbg !1095, !tbaa !586
  %103 = sext i32 %97 to i64, !dbg !1096
  %104 = getelementptr inbounds i8*, i8** %4, i64 %103, !dbg !1096
  %105 = load i8*, i8** %104, align 8, !dbg !1096, !tbaa !457
  %106 = call i32 @stat(i8* noundef %105, %struct.stat* noundef nonnull %2) #35, !dbg !1098
  %107 = icmp eq i32 %106, 0, !dbg !1099
  br i1 %107, label %108, label %371, !dbg !1100

108:                                              ; preds = %101
  %109 = tail call i32* @__errno_location() #38, !dbg !1101
  store i32 0, i32* %109, align 4, !dbg !1102, !tbaa !586
  %110 = tail call i32 @geteuid() #35, !dbg !1103
  call void @llvm.dbg.value(metadata i32 %110, metadata !979, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i32 -1, metadata !983, metadata !DIExpression()), !dbg !1104
  %111 = icmp eq i32 %110, -1, !dbg !1105
  br i1 %111, label %112, label %115, !dbg !1106

112:                                              ; preds = %108
  %113 = load i32, i32* %109, align 4, !dbg !1107, !tbaa !586
  %114 = icmp eq i32 %113, 0, !dbg !1107
  br i1 %114, label %115, label %371, !dbg !1108

115:                                              ; preds = %112, %108
  %116 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 4, !dbg !1109
  %117 = load i32, i32* %116, align 8, !dbg !1109, !tbaa !1110
  %118 = icmp eq i32 %110, %117, !dbg !1114
  br label %371

119:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1115
  %120 = add nsw i32 %5, 1, !dbg !1118
  store i32 %120, i32* @pos, align 4, !dbg !1118, !tbaa !586
  %121 = load i32, i32* @argc, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %124, label %123, !dbg !1119

123:                                              ; preds = %119
  tail call fastcc void @beyond() #35, !dbg !1120
  unreachable, !dbg !1120

124:                                              ; preds = %119
  %125 = add nsw i32 %5, 2, !dbg !1121
  store i32 %125, i32* @pos, align 4, !dbg !1121, !tbaa !586
  %126 = sext i32 %120 to i64, !dbg !1122
  %127 = getelementptr inbounds i8*, i8** %4, i64 %126, !dbg !1122
  %128 = load i8*, i8** %127, align 8, !dbg !1122, !tbaa !457
  %129 = call i32 @stat(i8* noundef %128, %struct.stat* noundef nonnull %2) #35, !dbg !1124
  %130 = icmp eq i32 %129, 0, !dbg !1125
  br i1 %130, label %131, label %371, !dbg !1126

131:                                              ; preds = %124
  %132 = tail call i32* @__errno_location() #38, !dbg !1127
  store i32 0, i32* %132, align 4, !dbg !1128, !tbaa !586
  %133 = tail call i32 @getegid() #35, !dbg !1129
  call void @llvm.dbg.value(metadata i32 %133, metadata !984, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata i32 -1, metadata !987, metadata !DIExpression()), !dbg !1130
  %134 = icmp eq i32 %133, -1, !dbg !1131
  br i1 %134, label %135, label %138, !dbg !1132

135:                                              ; preds = %131
  %136 = load i32, i32* %132, align 4, !dbg !1133, !tbaa !586
  %137 = icmp eq i32 %136, 0, !dbg !1133
  br i1 %137, label %138, label %371, !dbg !1134

138:                                              ; preds = %135, %131
  %139 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 5, !dbg !1135
  %140 = load i32, i32* %139, align 4, !dbg !1135, !tbaa !1136
  %141 = icmp eq i32 %133, %140, !dbg !1137
  br label %371

142:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1138
  %143 = add nsw i32 %5, 1, !dbg !1141
  store i32 %143, i32* @pos, align 4, !dbg !1141, !tbaa !586
  %144 = load i32, i32* @argc, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %147, label %146, !dbg !1142

146:                                              ; preds = %142
  tail call fastcc void @beyond() #35, !dbg !1143
  unreachable, !dbg !1143

147:                                              ; preds = %142
  %148 = add nsw i32 %5, 2, !dbg !1144
  store i32 %148, i32* @pos, align 4, !dbg !1144, !tbaa !586
  %149 = sext i32 %143 to i64, !dbg !1145
  %150 = getelementptr inbounds i8*, i8** %4, i64 %149, !dbg !1145
  %151 = load i8*, i8** %150, align 8, !dbg !1145, !tbaa !457
  %152 = call i32 @stat(i8* noundef %151, %struct.stat* noundef nonnull %2) #35, !dbg !1146
  %153 = icmp eq i32 %152, 0, !dbg !1147
  %154 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1148
  %155 = load i32, i32* %154, align 8, !dbg !1148
  %156 = and i32 %155, 61440, !dbg !1148
  %157 = icmp eq i32 %156, 32768, !dbg !1148
  %158 = select i1 %153, i1 %157, i1 false, !dbg !1148
  br label %371, !dbg !1149

159:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1150
  %160 = add nsw i32 %5, 1, !dbg !1153
  store i32 %160, i32* @pos, align 4, !dbg !1153, !tbaa !586
  %161 = load i32, i32* @argc, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %164, label %163, !dbg !1154

163:                                              ; preds = %159
  tail call fastcc void @beyond() #35, !dbg !1155
  unreachable, !dbg !1155

164:                                              ; preds = %159
  %165 = add nsw i32 %5, 2, !dbg !1156
  store i32 %165, i32* @pos, align 4, !dbg !1156, !tbaa !586
  %166 = sext i32 %160 to i64, !dbg !1157
  %167 = getelementptr inbounds i8*, i8** %4, i64 %166, !dbg !1157
  %168 = load i8*, i8** %167, align 8, !dbg !1157, !tbaa !457
  %169 = call i32 @stat(i8* noundef %168, %struct.stat* noundef nonnull %2) #35, !dbg !1158
  %170 = icmp eq i32 %169, 0, !dbg !1159
  %171 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1160
  %172 = load i32, i32* %171, align 8, !dbg !1160
  %173 = and i32 %172, 61440, !dbg !1160
  %174 = icmp eq i32 %173, 16384, !dbg !1160
  %175 = select i1 %170, i1 %174, i1 false, !dbg !1160
  br label %371, !dbg !1161

176:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1162
  %177 = add nsw i32 %5, 1, !dbg !1165
  store i32 %177, i32* @pos, align 4, !dbg !1165, !tbaa !586
  %178 = load i32, i32* @argc, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %181, label %180, !dbg !1166

180:                                              ; preds = %176
  tail call fastcc void @beyond() #35, !dbg !1167
  unreachable, !dbg !1167

181:                                              ; preds = %176
  %182 = add nsw i32 %5, 2, !dbg !1168
  store i32 %182, i32* @pos, align 4, !dbg !1168, !tbaa !586
  %183 = sext i32 %177 to i64, !dbg !1169
  %184 = getelementptr inbounds i8*, i8** %4, i64 %183, !dbg !1169
  %185 = load i8*, i8** %184, align 8, !dbg !1169, !tbaa !457
  %186 = call i32 @stat(i8* noundef %185, %struct.stat* noundef nonnull %2) #35, !dbg !1170
  %187 = icmp eq i32 %186, 0, !dbg !1171
  %188 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 8, !dbg !1172
  %189 = load i64, i64* %188, align 8, !dbg !1172
  %190 = icmp sgt i64 %189, 0, !dbg !1172
  %191 = select i1 %187, i1 %190, i1 false, !dbg !1172
  br label %371, !dbg !1173

192:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1174
  %193 = add nsw i32 %5, 1, !dbg !1177
  store i32 %193, i32* @pos, align 4, !dbg !1177, !tbaa !586
  %194 = load i32, i32* @argc, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %197, label %196, !dbg !1178

196:                                              ; preds = %192
  tail call fastcc void @beyond() #35, !dbg !1179
  unreachable, !dbg !1179

197:                                              ; preds = %192
  %198 = add nsw i32 %5, 2, !dbg !1180
  store i32 %198, i32* @pos, align 4, !dbg !1180, !tbaa !586
  %199 = sext i32 %193 to i64, !dbg !1181
  %200 = getelementptr inbounds i8*, i8** %4, i64 %199, !dbg !1181
  %201 = load i8*, i8** %200, align 8, !dbg !1181, !tbaa !457
  %202 = call i32 @stat(i8* noundef %201, %struct.stat* noundef nonnull %2) #35, !dbg !1182
  %203 = icmp eq i32 %202, 0, !dbg !1183
  %204 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1184
  %205 = load i32, i32* %204, align 8, !dbg !1184
  %206 = and i32 %205, 61440, !dbg !1184
  %207 = icmp eq i32 %206, 49152, !dbg !1184
  %208 = select i1 %203, i1 %207, i1 false, !dbg !1184
  br label %371, !dbg !1185

209:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1186
  %210 = add nsw i32 %5, 1, !dbg !1189
  store i32 %210, i32* @pos, align 4, !dbg !1189, !tbaa !586
  %211 = load i32, i32* @argc, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %214, label %213, !dbg !1190

213:                                              ; preds = %209
  tail call fastcc void @beyond() #35, !dbg !1191
  unreachable, !dbg !1191

214:                                              ; preds = %209
  %215 = add nsw i32 %5, 2, !dbg !1192
  store i32 %215, i32* @pos, align 4, !dbg !1192, !tbaa !586
  %216 = sext i32 %210 to i64, !dbg !1193
  %217 = getelementptr inbounds i8*, i8** %4, i64 %216, !dbg !1193
  %218 = load i8*, i8** %217, align 8, !dbg !1193, !tbaa !457
  %219 = call i32 @stat(i8* noundef %218, %struct.stat* noundef nonnull %2) #35, !dbg !1194
  %220 = icmp eq i32 %219, 0, !dbg !1195
  %221 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1196
  %222 = load i32, i32* %221, align 8, !dbg !1196
  %223 = and i32 %222, 61440, !dbg !1196
  %224 = icmp eq i32 %223, 8192, !dbg !1196
  %225 = select i1 %220, i1 %224, i1 false, !dbg !1196
  br label %371, !dbg !1197

226:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1198
  %227 = add nsw i32 %5, 1, !dbg !1201
  store i32 %227, i32* @pos, align 4, !dbg !1201, !tbaa !586
  %228 = load i32, i32* @argc, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %231, label %230, !dbg !1202

230:                                              ; preds = %226
  tail call fastcc void @beyond() #35, !dbg !1203
  unreachable, !dbg !1203

231:                                              ; preds = %226
  %232 = add nsw i32 %5, 2, !dbg !1204
  store i32 %232, i32* @pos, align 4, !dbg !1204, !tbaa !586
  %233 = sext i32 %227 to i64, !dbg !1205
  %234 = getelementptr inbounds i8*, i8** %4, i64 %233, !dbg !1205
  %235 = load i8*, i8** %234, align 8, !dbg !1205, !tbaa !457
  %236 = call i32 @stat(i8* noundef %235, %struct.stat* noundef nonnull %2) #35, !dbg !1206
  %237 = icmp eq i32 %236, 0, !dbg !1207
  %238 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1208
  %239 = load i32, i32* %238, align 8, !dbg !1208
  %240 = and i32 %239, 61440, !dbg !1208
  %241 = icmp eq i32 %240, 24576, !dbg !1208
  %242 = select i1 %237, i1 %241, i1 false, !dbg !1208
  br label %371, !dbg !1209

243:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1210
  %244 = add nsw i32 %5, 1, !dbg !1213
  store i32 %244, i32* @pos, align 4, !dbg !1213, !tbaa !586
  %245 = load i32, i32* @argc, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %248, label %247, !dbg !1214

247:                                              ; preds = %243
  tail call fastcc void @beyond() #35, !dbg !1215
  unreachable, !dbg !1215

248:                                              ; preds = %243
  %249 = add nsw i32 %5, 2, !dbg !1216
  store i32 %249, i32* @pos, align 4, !dbg !1216, !tbaa !586
  %250 = sext i32 %244 to i64, !dbg !1217
  %251 = getelementptr inbounds i8*, i8** %4, i64 %250, !dbg !1217
  %252 = load i8*, i8** %251, align 8, !dbg !1217, !tbaa !457
  %253 = call i32 @stat(i8* noundef %252, %struct.stat* noundef nonnull %2) #35, !dbg !1218
  %254 = icmp eq i32 %253, 0, !dbg !1219
  %255 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1220
  %256 = load i32, i32* %255, align 8, !dbg !1220
  %257 = and i32 %256, 61440, !dbg !1220
  %258 = icmp eq i32 %257, 4096, !dbg !1220
  %259 = select i1 %254, i1 %258, i1 false, !dbg !1220
  br label %371, !dbg !1221

260:                                              ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1222
  %261 = add nsw i32 %5, 1, !dbg !1225
  store i32 %261, i32* @pos, align 4, !dbg !1225, !tbaa !586
  %262 = load i32, i32* @argc, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %265, label %264, !dbg !1226

264:                                              ; preds = %260
  tail call fastcc void @beyond() #35, !dbg !1227
  unreachable, !dbg !1227

265:                                              ; preds = %260
  %266 = add nsw i32 %5, 2, !dbg !1228
  store i32 %266, i32* @pos, align 4, !dbg !1228, !tbaa !586
  %267 = sext i32 %261 to i64, !dbg !1229
  %268 = getelementptr inbounds i8*, i8** %4, i64 %267, !dbg !1229
  %269 = load i8*, i8** %268, align 8, !dbg !1229, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %269, metadata !1230, metadata !DIExpression()) #35, !dbg !1237
  %270 = getelementptr inbounds [1 x i8], [1 x i8]* %1, i64 0, i64 0, !dbg !1239
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %270) #35, !dbg !1239
  call void @llvm.dbg.declare(metadata [1 x i8]* %1, metadata !1236, metadata !DIExpression()) #35, !dbg !1240
  %271 = call i64 @readlink(i8* noundef nonnull %269, i8* noundef nonnull %270, i64 noundef 1) #35, !dbg !1241
  %272 = icmp sgt i64 %271, -1, !dbg !1243
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %270) #35, !dbg !1244
  br label %371, !dbg !1245

273:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1246
  %274 = add nsw i32 %5, 1, !dbg !1249
  store i32 %274, i32* @pos, align 4, !dbg !1249, !tbaa !586
  %275 = load i32, i32* @argc, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %278, label %277, !dbg !1250

277:                                              ; preds = %273
  tail call fastcc void @beyond() #35, !dbg !1251
  unreachable, !dbg !1251

278:                                              ; preds = %273
  %279 = add nsw i32 %5, 2, !dbg !1252
  store i32 %279, i32* @pos, align 4, !dbg !1252, !tbaa !586
  %280 = sext i32 %274 to i64, !dbg !1253
  %281 = getelementptr inbounds i8*, i8** %4, i64 %280, !dbg !1253
  %282 = load i8*, i8** %281, align 8, !dbg !1253, !tbaa !457
  %283 = call i32 @stat(i8* noundef %282, %struct.stat* noundef nonnull %2) #35, !dbg !1254
  %284 = icmp eq i32 %283, 0, !dbg !1255
  %285 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1256
  %286 = load i32, i32* %285, align 8, !dbg !1256
  %287 = and i32 %286, 2048, !dbg !1256
  %288 = icmp ne i32 %287, 0, !dbg !1256
  %289 = select i1 %284, i1 %288, i1 false, !dbg !1256
  br label %371, !dbg !1257

290:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1258
  %291 = add nsw i32 %5, 1, !dbg !1261
  store i32 %291, i32* @pos, align 4, !dbg !1261, !tbaa !586
  %292 = load i32, i32* @argc, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %295, label %294, !dbg !1262

294:                                              ; preds = %290
  tail call fastcc void @beyond() #35, !dbg !1263
  unreachable, !dbg !1263

295:                                              ; preds = %290
  %296 = add nsw i32 %5, 2, !dbg !1264
  store i32 %296, i32* @pos, align 4, !dbg !1264, !tbaa !586
  %297 = sext i32 %291 to i64, !dbg !1265
  %298 = getelementptr inbounds i8*, i8** %4, i64 %297, !dbg !1265
  %299 = load i8*, i8** %298, align 8, !dbg !1265, !tbaa !457
  %300 = call i32 @stat(i8* noundef %299, %struct.stat* noundef nonnull %2) #35, !dbg !1266
  %301 = icmp eq i32 %300, 0, !dbg !1267
  %302 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1268
  %303 = load i32, i32* %302, align 8, !dbg !1268
  %304 = and i32 %303, 1024, !dbg !1268
  %305 = icmp ne i32 %304, 0, !dbg !1268
  %306 = select i1 %301, i1 %305, i1 false, !dbg !1268
  br label %371, !dbg !1269

307:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1270
  %308 = add nsw i32 %5, 1, !dbg !1273
  store i32 %308, i32* @pos, align 4, !dbg !1273, !tbaa !586
  %309 = load i32, i32* @argc, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %312, label %311, !dbg !1274

311:                                              ; preds = %307
  tail call fastcc void @beyond() #35, !dbg !1275
  unreachable, !dbg !1275

312:                                              ; preds = %307
  %313 = add nsw i32 %5, 2, !dbg !1276
  store i32 %313, i32* @pos, align 4, !dbg !1276, !tbaa !586
  %314 = sext i32 %308 to i64, !dbg !1277
  %315 = getelementptr inbounds i8*, i8** %4, i64 %314, !dbg !1277
  %316 = load i8*, i8** %315, align 8, !dbg !1277, !tbaa !457
  %317 = call i32 @stat(i8* noundef %316, %struct.stat* noundef nonnull %2) #35, !dbg !1278
  %318 = icmp eq i32 %317, 0, !dbg !1279
  %319 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1280
  %320 = load i32, i32* %319, align 8, !dbg !1280
  %321 = and i32 %320, 512, !dbg !1280
  %322 = icmp ne i32 %321, 0, !dbg !1280
  %323 = select i1 %318, i1 %322, i1 false, !dbg !1280
  br label %371, !dbg !1281

324:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1282
  %325 = add nsw i32 %5, 1, !dbg !1285
  store i32 %325, i32* @pos, align 4, !dbg !1285, !tbaa !586
  %326 = load i32, i32* @argc, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %329, label %328, !dbg !1286

328:                                              ; preds = %324
  tail call fastcc void @beyond() #35, !dbg !1287
  unreachable, !dbg !1287

329:                                              ; preds = %324
  %330 = add nsw i32 %5, 2, !dbg !1288
  store i32 %330, i32* @pos, align 4, !dbg !1288, !tbaa !586
  %331 = sext i32 %325 to i64, !dbg !1289
  %332 = getelementptr inbounds i8*, i8** %4, i64 %331, !dbg !1289
  %333 = load i8*, i8** %332, align 8, !dbg !1289, !tbaa !457
  %334 = tail call fastcc i8* @find_int(i8* noundef %333), !dbg !1290
  call void @llvm.dbg.value(metadata i8* %334, metadata !990, metadata !DIExpression()), !dbg !1291
  %335 = tail call i32* @__errno_location() #38, !dbg !1292
  store i32 0, i32* %335, align 4, !dbg !1293, !tbaa !586
  %336 = tail call i64 @strtol(i8* nocapture noundef %334, i8** noundef null, i32 noundef 10) #35, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %336, metadata !988, metadata !DIExpression()), !dbg !1291
  %337 = load i32, i32* %335, align 4, !dbg !1295, !tbaa !586
  %338 = icmp ne i32 %337, 34, !dbg !1296
  %339 = icmp sgt i64 %336, -1
  %340 = select i1 %338, i1 %339, i1 false, !dbg !1297
  %341 = icmp slt i64 %336, 2147483648
  %342 = select i1 %340, i1 %341, i1 false, !dbg !1297
  br i1 %342, label %343, label %371, !dbg !1297

343:                                              ; preds = %329
  %344 = trunc i64 %336 to i32, !dbg !1298
  %345 = tail call i32 @isatty(i32 noundef %344) #35, !dbg !1299
  %346 = icmp ne i32 %345, 0, !dbg !1300
  br label %371

347:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1301
  %348 = add nsw i32 %5, 1, !dbg !1304
  store i32 %348, i32* @pos, align 4, !dbg !1304, !tbaa !586
  %349 = load i32, i32* @argc, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %352, label %351, !dbg !1305

351:                                              ; preds = %347
  tail call fastcc void @beyond() #35, !dbg !1306
  unreachable, !dbg !1306

352:                                              ; preds = %347
  %353 = add nsw i32 %5, 2, !dbg !1307
  store i32 %353, i32* @pos, align 4, !dbg !1307, !tbaa !586
  %354 = sext i32 %348 to i64, !dbg !1308
  %355 = getelementptr inbounds i8*, i8** %4, i64 %354, !dbg !1308
  %356 = load i8*, i8** %355, align 8, !dbg !1308, !tbaa !457
  %357 = load i8, i8* %356, align 1, !dbg !1308, !tbaa !595
  %358 = icmp ne i8 %357, 0, !dbg !1309
  br label %371, !dbg !1310

359:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1311
  %360 = add nsw i32 %5, 1, !dbg !1314
  store i32 %360, i32* @pos, align 4, !dbg !1314, !tbaa !586
  %361 = load i32, i32* @argc, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %364, label %363, !dbg !1315

363:                                              ; preds = %359
  tail call fastcc void @beyond() #35, !dbg !1316
  unreachable, !dbg !1316

364:                                              ; preds = %359
  %365 = add nsw i32 %5, 2, !dbg !1317
  store i32 %365, i32* @pos, align 4, !dbg !1317, !tbaa !586
  %366 = sext i32 %360 to i64, !dbg !1318
  %367 = getelementptr inbounds i8*, i8** %4, i64 %366, !dbg !1318
  %368 = load i8*, i8** %367, align 8, !dbg !1318, !tbaa !457
  %369 = load i8, i8* %368, align 1, !dbg !1318, !tbaa !595
  %370 = icmp eq i8 %369, 0, !dbg !1319
  br label %371, !dbg !1320

371:                                              ; preds = %329, %343, %135, %138, %124, %112, %115, %101, %72, %364, %352, %312, %295, %278, %265, %248, %231, %214, %197, %181, %164, %147, %79, %60, %48, %36, %24
  %372 = phi i1 [ %370, %364 ], [ %358, %352 ], [ %323, %312 ], [ %306, %295 ], [ %289, %278 ], [ %272, %265 ], [ %259, %248 ], [ %242, %231 ], [ %225, %214 ], [ %208, %197 ], [ %191, %181 ], [ %175, %164 ], [ %158, %147 ], [ %95, %79 ], [ %66, %60 ], [ %54, %48 ], [ %42, %36 ], [ %30, %24 ], [ false, %72 ], [ false, %101 ], [ false, %112 ], [ %118, %115 ], [ false, %124 ], [ false, %135 ], [ %141, %138 ], [ false, %329 ], [ %346, %343 ], !dbg !1321
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #35, !dbg !1322
  ret i1 %372, !dbg !1322
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !1323 {
  %1 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.97, i64 0, i64 0), i32 noundef 5) #35, !dbg !1324
  %2 = load i8**, i8*** @argv, align 8, !dbg !1325, !tbaa !457
  %3 = load i32, i32* @argc, align 4, !dbg !1326, !tbaa !586
  %4 = add nsw i32 %3, -1, !dbg !1327
  %5 = sext i32 %4 to i64, !dbg !1325
  %6 = getelementptr inbounds i8*, i8** %2, i64 %5, !dbg !1325
  %7 = load i8*, i8** %6, align 8, !dbg !1325, !tbaa !457
  %8 = tail call i8* @quote(i8* noundef %7) #35, !dbg !1328
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %1, i8* noundef %8) #39, !dbg !1329
  unreachable, !dbg !1329
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @three_arguments() unnamed_addr #12 !dbg !1330 {
  %1 = load i8**, i8*** @argv, align 8, !dbg !1334, !tbaa !457
  %2 = load i32, i32* @pos, align 4, !dbg !1335, !tbaa !586
  %3 = add nsw i32 %2, 1, !dbg !1336
  %4 = sext i32 %3 to i64, !dbg !1334
  %5 = getelementptr inbounds i8*, i8** %1, i64 %4, !dbg !1334
  %6 = load i8*, i8** %5, align 8, !dbg !1334, !tbaa !457
  %7 = tail call fastcc i32 @binop(i8* noundef %6), !dbg !1337
  call void @llvm.dbg.value(metadata i32 %7, metadata !1333, metadata !DIExpression()), !dbg !1338
  %8 = icmp sgt i32 %7, -1, !dbg !1339
  br i1 %8, label %9, label %11, !dbg !1341

9:                                                ; preds = %0
  %10 = tail call fastcc i1 @binary_operator(i1 noundef false, i32 noundef %7), !dbg !1342
  call void @llvm.dbg.value(metadata i1 %10, metadata !1332, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1338
  br label %90, !dbg !1343

11:                                               ; preds = %0
  %12 = sext i32 %2 to i64, !dbg !1344
  %13 = getelementptr inbounds i8*, i8** %1, i64 %12, !dbg !1344
  %14 = load i8*, i8** %13, align 8, !dbg !1344, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %14, metadata !534, metadata !DIExpression()) #35, !dbg !1346
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1346
  %15 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %14, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0)) #36, !dbg !1348
  %16 = icmp eq i32 %15, 0, !dbg !1349
  br i1 %16, label %17, label %49, !dbg !1350

17:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1351
  store i32 %3, i32* @pos, align 4, !dbg !1354, !tbaa !586
  %18 = load i32, i32* @argc, align 4
  %19 = icmp slt i32 %3, %18
  br i1 %19, label %21, label %20, !dbg !1355

20:                                               ; preds = %17
  tail call fastcc void @beyond() #35, !dbg !1356
  unreachable, !dbg !1356

21:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8* %6, metadata !534, metadata !DIExpression()) #35, !dbg !1357
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1357
  %22 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0)) #36, !dbg !1360
  %23 = icmp eq i32 %22, 0, !dbg !1361
  br i1 %23, label %24, label %32, !dbg !1362

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i1 false, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1363
  %25 = add nsw i32 %2, 2, !dbg !1365
  %26 = add nsw i32 %2, 3, !dbg !1366
  store i32 %26, i32* @pos, align 4, !dbg !1366, !tbaa !586
  %27 = sext i32 %25 to i64, !dbg !1368
  %28 = getelementptr inbounds i8*, i8** %1, i64 %27, !dbg !1368
  %29 = load i8*, i8** %28, align 8, !dbg !1368, !tbaa !457
  %30 = load i8, i8* %29, align 1, !dbg !1368, !tbaa !595
  %31 = icmp eq i8 %30, 0, !dbg !1369
  call void @llvm.dbg.value(metadata i1 %31, metadata !820, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1370
  br label %46, !dbg !1371

32:                                               ; preds = %21
  %33 = load i8, i8* %6, align 1, !dbg !1372, !tbaa !595
  %34 = icmp eq i8 %33, 45, !dbg !1373
  br i1 %34, label %35, label %45, !dbg !1374

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1375
  %37 = load i8, i8* %36, align 1, !dbg !1375, !tbaa !595
  %38 = icmp eq i8 %37, 0, !dbg !1376
  br i1 %38, label %45, label %39, !dbg !1377

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1378
  %41 = load i8, i8* %40, align 1, !dbg !1378, !tbaa !595
  %42 = icmp eq i8 %41, 0, !dbg !1379
  br i1 %42, label %43, label %45, !dbg !1380

43:                                               ; preds = %39
  %44 = tail call fastcc i1 @unary_operator() #35, !dbg !1381
  call void @llvm.dbg.value(metadata i1 %44, metadata !820, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1370
  br label %46

45:                                               ; preds = %39, %35, %32
  tail call fastcc void @beyond() #37, !dbg !1382
  unreachable, !dbg !1382

46:                                               ; preds = %24, %43
  %47 = phi i1 [ %31, %24 ], [ %44, %43 ]
  call void @llvm.dbg.value(metadata i1 %47, metadata !820, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1370
  %48 = xor i1 %47, true, !dbg !1383
  call void @llvm.dbg.value(metadata i1 %48, metadata !1332, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1338
  br label %90, !dbg !1384

49:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8* %14, metadata !534, metadata !DIExpression()) #35, !dbg !1385
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1385
  %50 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %14, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i64 0, i64 0)) #36, !dbg !1388
  %51 = icmp eq i32 %50, 0, !dbg !1389
  br i1 %51, label %52, label %63, !dbg !1390

52:                                               ; preds = %49
  %53 = add nsw i32 %2, 2, !dbg !1391
  %54 = sext i32 %53 to i64, !dbg !1392
  %55 = getelementptr inbounds i8*, i8** %1, i64 %54, !dbg !1392
  %56 = load i8*, i8** %55, align 8, !dbg !1392, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %56, metadata !534, metadata !DIExpression()) #35, !dbg !1393
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1393
  %57 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %56, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i64 0, i64 0)) #36, !dbg !1395
  %58 = icmp eq i32 %57, 0, !dbg !1396
  br i1 %58, label %59, label %63, !dbg !1397

59:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i1 false, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1398
  %60 = load i8, i8* %6, align 1, !dbg !1401, !tbaa !595
  %61 = icmp ne i8 %60, 0, !dbg !1403
  call void @llvm.dbg.value(metadata i1 %61, metadata !1332, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1338
  call void @llvm.dbg.value(metadata i1 false, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1404
  %62 = add nsw i32 %2, 3, !dbg !1406
  store i32 %62, i32* @pos, align 4, !dbg !1406, !tbaa !586
  br label %90, !dbg !1407

63:                                               ; preds = %52, %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !534, metadata !DIExpression()) #35, !dbg !1408
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1408
  %64 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0)) #36, !dbg !1411
  %65 = icmp eq i32 %64, 0, !dbg !1412
  br i1 %65, label %75, label %66, !dbg !1413

66:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i8* %6, metadata !534, metadata !DIExpression()) #35, !dbg !1414
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1414
  %67 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0)) #36, !dbg !1416
  %68 = icmp eq i32 %67, 0, !dbg !1417
  br i1 %68, label %75, label %69, !dbg !1418

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i8* %6, metadata !534, metadata !DIExpression()) #35, !dbg !1419
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1419
  %70 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i64 0, i64 0)) #36, !dbg !1421
  %71 = icmp eq i32 %70, 0, !dbg !1422
  br i1 %71, label %75, label %72, !dbg !1423

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i8* %6, metadata !534, metadata !DIExpression()) #35, !dbg !1424
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1424
  %73 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i64 0, i64 0)) #36, !dbg !1426
  %74 = icmp eq i32 %73, 0, !dbg !1427
  br i1 %74, label %75, label %81, !dbg !1428

75:                                               ; preds = %72, %69, %66, %63
  %76 = load i32, i32* @argc, align 4, !dbg !1429, !tbaa !586
  %77 = icmp slt i32 %2, %76, !dbg !1431
  br i1 %77, label %79, label %78, !dbg !1432

78:                                               ; preds = %75
  tail call fastcc void @beyond() #37, !dbg !1433
  unreachable, !dbg !1433

79:                                               ; preds = %75
  %80 = tail call fastcc i1 @or() #35, !dbg !1434
  call void @llvm.dbg.value(metadata i1 %80, metadata !1332, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1338
  br label %90

81:                                               ; preds = %72
  %82 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.102, i64 0, i64 0), i32 noundef 5) #35, !dbg !1435
  %83 = load i8**, i8*** @argv, align 8, !dbg !1436, !tbaa !457
  %84 = load i32, i32* @pos, align 4, !dbg !1437, !tbaa !586
  %85 = add nsw i32 %84, 1, !dbg !1438
  %86 = sext i32 %85 to i64, !dbg !1436
  %87 = getelementptr inbounds i8*, i8** %83, i64 %86, !dbg !1436
  %88 = load i8*, i8** %87, align 8, !dbg !1436, !tbaa !457
  %89 = tail call i8* @quote(i8* noundef %88) #35, !dbg !1439
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %82, i8* noundef %89) #39, !dbg !1440
  unreachable, !dbg !1440

90:                                               ; preds = %46, %79, %59, %9
  %91 = phi i1 [ %10, %9 ], [ %48, %46 ], [ %61, %59 ], [ %80, %79 ]
  call void @llvm.dbg.value(metadata i1 %91, metadata !1332, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1338
  ret i1 %91, !dbg !1441
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i1 @or() unnamed_addr #12 !dbg !1442 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1444, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 poison, metadata !1444, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 1, metadata !1446, metadata !DIExpression()) #35, !dbg !1449
  call void @llvm.dbg.value(metadata i8 poison, metadata !1446, metadata !DIExpression()) #35, !dbg !1449
  call void @llvm.dbg.value(metadata i8 0, metadata !1452, metadata !DIExpression()) #35, !dbg !1460
  %1 = load i32, i32* @argc, align 4, !tbaa !586
  %2 = load i32, i32* @pos, align 4, !tbaa !586
  call void @llvm.dbg.value(metadata i8 poison, metadata !1452, metadata !DIExpression()) #35, !dbg !1460
  %3 = icmp sgt i32 %1, %2, !dbg !1463
  br i1 %3, label %4, label %40, !dbg !1464

4:                                                ; preds = %0
  %5 = load i8**, i8*** @argv, align 8, !tbaa !457
  br label %6, !dbg !1465

6:                                                ; preds = %4, %192
  %7 = phi i8** [ %175, %192 ], [ %5, %4 ]
  %8 = phi i32 [ %193, %192 ], [ %2, %4 ]
  %9 = phi i32 [ %172, %192 ], [ %1, %4 ]
  %10 = phi i1 [ %187, %192 ], [ false, %4 ]
  br label %11, !dbg !1464

11:                                               ; preds = %6, %181
  %12 = phi i8** [ %7, %6 ], [ %175, %181 ]
  %13 = phi i32 [ %8, %6 ], [ %182, %181 ]
  %14 = phi i32 [ %9, %6 ], [ %172, %181 ]
  %15 = phi i1 [ true, %6 ], [ %170, %181 ]
  %16 = sext i32 %13 to i64, !dbg !1464
  %17 = sext i32 %14 to i64, !dbg !1464
  %18 = getelementptr inbounds i8*, i8** %12, i64 %16, !dbg !1466
  %19 = load i8*, i8** %18, align 8, !dbg !1466, !tbaa !457
  %20 = load i8, i8* %19, align 1, !dbg !1466, !tbaa !595
  %21 = icmp eq i8 %20, 33, !dbg !1467
  br i1 %21, label %22, label %41, !dbg !1468

22:                                               ; preds = %11, %34
  %23 = phi i8* [ %37, %34 ], [ %19, %11 ]
  %24 = phi i1 [ %35, %34 ], [ false, %11 ]
  %25 = phi i64 [ %30, %34 ], [ %16, %11 ]
  %26 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !1469
  %27 = load i8, i8* %26, align 1, !dbg !1469, !tbaa !595
  %28 = icmp eq i8 %27, 0, !dbg !1470
  br i1 %28, label %29, label %41, !dbg !1471

29:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1472
  %30 = add nsw i64 %25, 1, !dbg !1475
  %31 = trunc i64 %30 to i32, !dbg !1475
  store i32 %31, i32* @pos, align 4, !dbg !1475, !tbaa !586
  %32 = icmp slt i64 %30, %17
  br i1 %32, label %34, label %33, !dbg !1476

33:                                               ; preds = %29
  tail call fastcc void @beyond() #35, !dbg !1477
  unreachable, !dbg !1477

34:                                               ; preds = %29
  %35 = xor i1 %24, true, !dbg !1478
  call void @llvm.dbg.value(metadata i8 poison, metadata !1452, metadata !DIExpression()) #35, !dbg !1460
  %36 = getelementptr inbounds i8*, i8** %12, i64 %30, !dbg !1466
  %37 = load i8*, i8** %36, align 8, !dbg !1466, !tbaa !457
  %38 = load i8, i8* %37, align 1, !dbg !1466, !tbaa !595
  %39 = icmp eq i8 %38, 33, !dbg !1467
  br i1 %39, label %22, label %41, !dbg !1468, !llvm.loop !1479

40:                                               ; preds = %192, %181, %0
  tail call fastcc void @beyond() #37, !dbg !1481
  unreachable, !dbg !1481

41:                                               ; preds = %34, %22, %11
  %42 = phi i64 [ %16, %11 ], [ %25, %22 ], [ %30, %34 ]
  %43 = phi i1 [ false, %11 ], [ %24, %22 ], [ %35, %34 ]
  %44 = trunc i64 %42 to i32, !dbg !1468
  %45 = shl i64 %42, 32, !dbg !1483
  %46 = ashr exact i64 %45, 32, !dbg !1483
  %47 = getelementptr inbounds i8*, i8** %12, i64 %46, !dbg !1483
  %48 = load i8*, i8** %47, align 8, !dbg !1483, !tbaa !457
  %49 = load i8, i8* %48, align 1, !dbg !1483, !tbaa !595
  %50 = icmp eq i8 %49, 40, !dbg !1484
  br i1 %50, label %51, label %126, !dbg !1485

51:                                               ; preds = %41
  %52 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !1486
  %53 = load i8, i8* %52, align 1, !dbg !1486, !tbaa !595
  %54 = icmp eq i8 %53, 0, !dbg !1487
  br i1 %54, label %55, label %126, !dbg !1488

55:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i1 true, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1489
  %56 = add nsw i32 %44, 1, !dbg !1491
  store i32 %56, i32* @pos, align 4, !dbg !1491, !tbaa !586
  %57 = icmp sgt i32 %14, %56
  br i1 %57, label %58, label %69, !dbg !1492

58:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 1, metadata !1457, metadata !DIExpression()) #35, !dbg !1493
  %59 = add i32 %44, 2, !dbg !1494
  %60 = icmp slt i32 %59, %14, !dbg !1497
  br i1 %60, label %61, label %96, !dbg !1498

61:                                               ; preds = %58
  %62 = sext i32 %59 to i64, !dbg !1499
  %63 = xor i32 %44, -1, !dbg !1499
  %64 = add i32 %14, %63, !dbg !1499
  call void @llvm.dbg.value(metadata i64 1, metadata !1457, metadata !DIExpression()) #35, !dbg !1493
  %65 = getelementptr inbounds i8*, i8** %12, i64 %62, !dbg !1500
  %66 = load i8*, i8** %65, align 8, !dbg !1500, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %66, metadata !534, metadata !DIExpression()) #35, !dbg !1501
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1501
  %67 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %66, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i64 0, i64 0)) #36, !dbg !1503
  %68 = icmp eq i32 %67, 0, !dbg !1504
  br i1 %68, label %96, label %70, !dbg !1499

69:                                               ; preds = %55
  tail call fastcc void @beyond() #35, !dbg !1505
  unreachable, !dbg !1505

70:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i64 2, metadata !1457, metadata !DIExpression()) #35, !dbg !1493
  %71 = icmp eq i32 %64, 2, !dbg !1497
  br i1 %71, label %96, label %72, !dbg !1498, !llvm.loop !1506

72:                                               ; preds = %70
  %73 = add nsw i64 %62, 1, !dbg !1494
  call void @llvm.dbg.value(metadata i64 2, metadata !1457, metadata !DIExpression()) #35, !dbg !1493
  %74 = getelementptr inbounds i8*, i8** %12, i64 %73, !dbg !1500
  %75 = load i8*, i8** %74, align 8, !dbg !1500, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %75, metadata !534, metadata !DIExpression()) #35, !dbg !1501
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1501
  %76 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %75, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i64 0, i64 0)) #36, !dbg !1503
  %77 = icmp eq i32 %76, 0, !dbg !1504
  br i1 %77, label %96, label %78, !dbg !1499

78:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i64 3, metadata !1457, metadata !DIExpression()) #35, !dbg !1493
  %79 = icmp eq i32 %64, 3, !dbg !1497
  br i1 %79, label %96, label %80, !dbg !1498, !llvm.loop !1506

80:                                               ; preds = %78
  %81 = add nsw i64 %62, 2, !dbg !1494
  call void @llvm.dbg.value(metadata i64 3, metadata !1457, metadata !DIExpression()) #35, !dbg !1493
  %82 = getelementptr inbounds i8*, i8** %12, i64 %81, !dbg !1500
  %83 = load i8*, i8** %82, align 8, !dbg !1500, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %83, metadata !534, metadata !DIExpression()) #35, !dbg !1501
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1501
  %84 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %83, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i64 0, i64 0)) #36, !dbg !1503
  %85 = icmp eq i32 %84, 0, !dbg !1504
  br i1 %85, label %96, label %86, !dbg !1499

86:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i64 4, metadata !1457, metadata !DIExpression()) #35, !dbg !1493
  %87 = icmp eq i32 %64, 4, !dbg !1497
  br i1 %87, label %96, label %88, !dbg !1498, !llvm.loop !1506

88:                                               ; preds = %86
  %89 = add nsw i64 %62, 3, !dbg !1494
  call void @llvm.dbg.value(metadata i64 4, metadata !1457, metadata !DIExpression()) #35, !dbg !1493
  %90 = getelementptr inbounds i8*, i8** %12, i64 %89, !dbg !1500
  %91 = load i8*, i8** %90, align 8, !dbg !1500, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %91, metadata !534, metadata !DIExpression()) #35, !dbg !1501
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1501
  %92 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %91, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i64 0, i64 0)) #36, !dbg !1503
  %93 = icmp eq i32 %92, 0, !dbg !1504
  %94 = sub nsw i32 %14, %56
  %95 = select i1 %93, i32 4, i32 %94, !dbg !1499
  br label %96, !dbg !1499

96:                                               ; preds = %88, %70, %61, %72, %78, %80, %86, %58
  %97 = phi i32 [ 1, %58 ], [ 1, %61 ], [ 2, %70 ], [ 2, %72 ], [ 3, %78 ], [ 3, %80 ], [ 4, %86 ], [ %95, %88 ], !dbg !1508
  call void @llvm.dbg.value(metadata i32 %97, metadata !1457, metadata !DIExpression()) #35, !dbg !1493
  %98 = tail call fastcc i1 @posixtest(i32 noundef %97) #35, !dbg !1509
  call void @llvm.dbg.value(metadata i1 %98, metadata !1455, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1460
  %99 = load i8**, i8*** @argv, align 8, !dbg !1510, !tbaa !457
  %100 = load i32, i32* @pos, align 4, !dbg !1512, !tbaa !586
  %101 = sext i32 %100 to i64, !dbg !1510
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101, !dbg !1510
  %103 = load i8*, i8** %102, align 8, !dbg !1510, !tbaa !457
  %104 = icmp eq i8* %103, null, !dbg !1510
  br i1 %104, label %105, label %108, !dbg !1513

105:                                              ; preds = %96
  %106 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i64 0, i64 0), i32 noundef 5) #35, !dbg !1514
  %107 = tail call i8* @quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i64 0, i64 0)) #35, !dbg !1515
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %106, i8* noundef %107) #37, !dbg !1516
  unreachable, !dbg !1516

108:                                              ; preds = %96
  %109 = load i8, i8* %103, align 1, !dbg !1517, !tbaa !595
  %110 = icmp eq i8 %109, 41, !dbg !1519
  br i1 %110, label %111, label %115, !dbg !1520

111:                                              ; preds = %108
  %112 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !1521
  %113 = load i8, i8* %112, align 1, !dbg !1521, !tbaa !595
  %114 = icmp eq i8 %113, 0, !dbg !1521
  br i1 %114, label %124, label %115, !dbg !1522

115:                                              ; preds = %111, %108
  %116 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.120, i64 0, i64 0), i32 noundef 5) #35, !dbg !1523
  %117 = tail call i8* @quote_n(i32 noundef 0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i64 0, i64 0)) #35, !dbg !1524
  %118 = load i8**, i8*** @argv, align 8, !dbg !1525, !tbaa !457
  %119 = load i32, i32* @pos, align 4, !dbg !1526, !tbaa !586
  %120 = sext i32 %119 to i64, !dbg !1525
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120, !dbg !1525
  %122 = load i8*, i8** %121, align 8, !dbg !1525, !tbaa !457
  %123 = tail call i8* @quote_n(i32 noundef 1, i8* noundef %122) #35, !dbg !1527
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %116, i8* noundef %117, i8* noundef %123) #37, !dbg !1528
  unreachable, !dbg !1528

124:                                              ; preds = %111
  call void @llvm.dbg.value(metadata i1 false, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1529
  %125 = add nsw i32 %100, 1, !dbg !1531
  store i32 %125, i32* @pos, align 4, !dbg !1531, !tbaa !586
  br label %167, !dbg !1532

126:                                              ; preds = %51, %41
  %127 = sub nsw i32 %14, %44, !dbg !1533
  %128 = icmp sgt i32 %127, 3, !dbg !1535
  br i1 %128, label %129, label %141, !dbg !1536

129:                                              ; preds = %126
  call void @llvm.dbg.value(metadata i8* %48, metadata !534, metadata !DIExpression()) #35, !dbg !1537
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1537
  %130 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %48, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i64 0, i64 0)) #36, !dbg !1539
  %131 = icmp eq i32 %130, 0, !dbg !1540
  br i1 %131, label %132, label %143, !dbg !1541

132:                                              ; preds = %129
  %133 = add i64 %45, 8589934592, !dbg !1542
  %134 = ashr exact i64 %133, 32, !dbg !1542
  %135 = getelementptr inbounds i8*, i8** %12, i64 %134, !dbg !1542
  %136 = load i8*, i8** %135, align 8, !dbg !1542, !tbaa !457
  %137 = tail call fastcc i32 @binop(i8* noundef %136) #35, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %137, metadata !1456, metadata !DIExpression()) #35, !dbg !1460
  %138 = icmp sgt i32 %137, -1, !dbg !1544
  br i1 %138, label %139, label %143, !dbg !1545

139:                                              ; preds = %132
  %140 = tail call fastcc i1 @binary_operator(i1 noundef true, i32 noundef %137) #35, !dbg !1546
  call void @llvm.dbg.value(metadata i1 %140, metadata !1455, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1460
  br label %167, !dbg !1547

141:                                              ; preds = %126
  %142 = icmp eq i32 %127, 3, !dbg !1548
  br i1 %142, label %143, label %152, !dbg !1550

143:                                              ; preds = %129, %132, %141
  %144 = add i64 %45, 4294967296, !dbg !1551
  %145 = ashr exact i64 %144, 32, !dbg !1551
  %146 = getelementptr inbounds i8*, i8** %12, i64 %145, !dbg !1551
  %147 = load i8*, i8** %146, align 8, !dbg !1551, !tbaa !457
  %148 = tail call fastcc i32 @binop(i8* noundef %147) #35, !dbg !1552
  call void @llvm.dbg.value(metadata i32 %148, metadata !1456, metadata !DIExpression()) #35, !dbg !1460
  %149 = icmp sgt i32 %148, -1, !dbg !1553
  br i1 %149, label %150, label %152, !dbg !1554

150:                                              ; preds = %143
  %151 = tail call fastcc i1 @binary_operator(i1 noundef false, i32 noundef %148) #35, !dbg !1555
  call void @llvm.dbg.value(metadata i1 %151, metadata !1455, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1460
  br label %167, !dbg !1556

152:                                              ; preds = %143, %141
  %153 = icmp eq i8 %49, 45, !dbg !1557
  br i1 %153, label %154, label %164, !dbg !1559

154:                                              ; preds = %152
  %155 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !1560
  %156 = load i8, i8* %155, align 1, !dbg !1560, !tbaa !595
  %157 = icmp eq i8 %156, 0, !dbg !1560
  br i1 %157, label %164, label %158, !dbg !1561

158:                                              ; preds = %154
  %159 = getelementptr inbounds i8, i8* %48, i64 2, !dbg !1562
  %160 = load i8, i8* %159, align 1, !dbg !1562, !tbaa !595
  %161 = icmp eq i8 %160, 0, !dbg !1563
  br i1 %161, label %162, label %164, !dbg !1564

162:                                              ; preds = %158
  %163 = tail call fastcc i1 @unary_operator() #35, !dbg !1565
  call void @llvm.dbg.value(metadata i1 %163, metadata !1455, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1460
  br label %167, !dbg !1566

164:                                              ; preds = %158, %154, %152
  %165 = icmp ne i8 %49, 0, !dbg !1567
  call void @llvm.dbg.value(metadata i1 %165, metadata !1455, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1460
  call void @llvm.dbg.value(metadata i1 false, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1569
  %166 = add nsw i32 %44, 1, !dbg !1571
  store i32 %166, i32* @pos, align 4, !dbg !1571, !tbaa !586
  br label %167

167:                                              ; preds = %124, %139, %150, %162, %164
  %168 = phi i1 [ %98, %124 ], [ %140, %139 ], [ %151, %150 ], [ %163, %162 ], [ %165, %164 ]
  call void @llvm.dbg.value(metadata i1 %168, metadata !1455, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1460
  %169 = xor i1 %43, %168, !dbg !1572
  %170 = and i1 %15, %169, !dbg !1573
  call void @llvm.dbg.value(metadata i1 %170, metadata !1446, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1449
  %171 = load i32, i32* @pos, align 4, !dbg !1574, !tbaa !586
  %172 = load i32, i32* @argc, align 4, !dbg !1576, !tbaa !586
  %173 = icmp slt i32 %171, %172, !dbg !1577
  br i1 %173, label %174, label %184, !dbg !1578

174:                                              ; preds = %167
  %175 = load i8**, i8*** @argv, align 8, !dbg !1579, !tbaa !457
  %176 = sext i32 %171 to i64, !dbg !1579
  %177 = getelementptr inbounds i8*, i8** %175, i64 %176, !dbg !1579
  %178 = load i8*, i8** %177, align 8, !dbg !1579, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %178, metadata !534, metadata !DIExpression()) #35, !dbg !1580
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1580
  %179 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %178, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0)) #36, !dbg !1582
  %180 = icmp eq i32 %179, 0, !dbg !1583
  br i1 %180, label %181, label %186, !dbg !1584

181:                                              ; preds = %174
  call void @llvm.dbg.value(metadata i1 false, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1585
  %182 = add nsw i32 %171, 1, !dbg !1587
  store i32 %182, i32* @pos, align 4, !dbg !1587, !tbaa !586
  call void @llvm.dbg.value(metadata i8 poison, metadata !1446, metadata !DIExpression()) #35, !dbg !1449
  call void @llvm.dbg.value(metadata i8 poison, metadata !1452, metadata !DIExpression()) #35, !dbg !1460
  %183 = icmp sgt i32 %172, %182, !dbg !1463
  br i1 %183, label %11, label %40, !dbg !1464, !llvm.loop !1588

184:                                              ; preds = %167
  %185 = or i1 %10, %170, !dbg !1591
  call void @llvm.dbg.value(metadata i1 %185, metadata !1444, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1445
  br label %190

186:                                              ; preds = %174
  %187 = or i1 %10, %170, !dbg !1591
  call void @llvm.dbg.value(metadata i1 %185, metadata !1444, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1445
  call void @llvm.dbg.value(metadata i8* %178, metadata !534, metadata !DIExpression()) #35, !dbg !1592
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1592
  %188 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %178, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0)) #36, !dbg !1595
  %189 = icmp eq i32 %188, 0, !dbg !1596
  br i1 %189, label %192, label %190, !dbg !1597

190:                                              ; preds = %186, %184
  %191 = phi i1 [ %185, %184 ], [ %187, %186 ]
  ret i1 %191, !dbg !1598

192:                                              ; preds = %186
  call void @llvm.dbg.value(metadata i1 false, metadata !828, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1599
  %193 = add nsw i32 %171, 1, !dbg !1601
  store i32 %193, i32* @pos, align 4, !dbg !1601, !tbaa !586
  call void @llvm.dbg.value(metadata i8 poison, metadata !1444, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 poison, metadata !1446, metadata !DIExpression()) #35, !dbg !1449
  call void @llvm.dbg.value(metadata i8 poison, metadata !1452, metadata !DIExpression()) #35, !dbg !1460
  %194 = icmp sgt i32 %172, %193, !dbg !1463
  br i1 %194, label %6, label %40, !dbg !1464, !llvm.loop !1602
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define internal fastcc i32 @binop(i8* nocapture noundef readonly %0) unnamed_addr #13 !dbg !1604 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1606, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8* %0, metadata !534, metadata !DIExpression()) #35, !dbg !1608
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1608
  %2 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i64 0, i64 0)) #36, !dbg !1610
  %3 = icmp eq i32 %2, 0, !dbg !1611
  br i1 %3, label %44, label %4, !dbg !1612

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %0, metadata !534, metadata !DIExpression()) #35, !dbg !1613
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1613
  %5 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0)) #36, !dbg !1615
  %6 = icmp eq i32 %5, 0, !dbg !1616
  br i1 %6, label %44, label %7, !dbg !1617

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %0, metadata !534, metadata !DIExpression()) #35, !dbg !1618
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1618
  %8 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0)) #36, !dbg !1620
  %9 = icmp eq i32 %8, 0, !dbg !1621
  br i1 %9, label %44, label %10, !dbg !1622

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %0, metadata !534, metadata !DIExpression()) #35, !dbg !1623
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1623
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i64 0, i64 0)) #36, !dbg !1625
  %12 = icmp eq i32 %11, 0, !dbg !1626
  br i1 %12, label %44, label %13, !dbg !1627

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %0, metadata !534, metadata !DIExpression()) #35, !dbg !1628
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1628
  %14 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i64 0, i64 0)) #36, !dbg !1630
  %15 = icmp eq i32 %14, 0, !dbg !1631
  br i1 %15, label %44, label %16, !dbg !1632

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8* %0, metadata !534, metadata !DIExpression()) #35, !dbg !1633
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1633
  %17 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0)) #36, !dbg !1635
  %18 = icmp eq i32 %17, 0, !dbg !1636
  br i1 %18, label %44, label %19, !dbg !1637

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8* %0, metadata !534, metadata !DIExpression()) #35, !dbg !1638
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1638
  %20 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)) #36, !dbg !1640
  %21 = icmp eq i32 %20, 0, !dbg !1641
  br i1 %21, label %44, label %22, !dbg !1642

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %0, metadata !534, metadata !DIExpression()) #35, !dbg !1643
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1643
  %23 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #36, !dbg !1645
  %24 = icmp eq i32 %23, 0, !dbg !1646
  br i1 %24, label %44, label %25, !dbg !1647

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8* %0, metadata !534, metadata !DIExpression()) #35, !dbg !1648
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1648
  %26 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0)) #36, !dbg !1650
  %27 = icmp eq i32 %26, 0, !dbg !1651
  br i1 %27, label %44, label %28, !dbg !1652

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i8* %0, metadata !534, metadata !DIExpression()) #35, !dbg !1653
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1653
  %29 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i64 0, i64 0)) #36, !dbg !1655
  %30 = icmp eq i32 %29, 0, !dbg !1656
  br i1 %30, label %44, label %31, !dbg !1657

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8* %0, metadata !534, metadata !DIExpression()) #35, !dbg !1658
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1658
  %32 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i64 0, i64 0)) #36, !dbg !1660
  %33 = icmp eq i32 %32, 0, !dbg !1661
  br i1 %33, label %44, label %34, !dbg !1662

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i8* %0, metadata !534, metadata !DIExpression()) #35, !dbg !1663
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1663
  %35 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i64 0, i64 0)) #36, !dbg !1665
  %36 = icmp eq i32 %35, 0, !dbg !1666
  br i1 %36, label %44, label %37, !dbg !1667

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i8* %0, metadata !534, metadata !DIExpression()) #35, !dbg !1668
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1668
  %38 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0)) #36, !dbg !1670
  %39 = icmp eq i32 %38, 0, !dbg !1671
  br i1 %39, label %44, label %40, !dbg !1672

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i8* %0, metadata !534, metadata !DIExpression()) #35, !dbg !1673
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1673
  %41 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0)) #36, !dbg !1675
  %42 = icmp eq i32 %41, 0, !dbg !1676
  %43 = select i1 %42, i32 10, i32 -1, !dbg !1677
  br label %44, !dbg !1672

44:                                               ; preds = %4, %10, %16, %22, %28, %34, %37, %40, %31, %25, %19, %13, %7, %1
  %45 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 3, %7 ], [ 1, %10 ], [ 2, %13 ], [ 4, %16 ], [ 9, %19 ], [ 8, %22 ], [ 7, %25 ], [ 6, %28 ], [ 5, %31 ], [ 12, %34 ], [ %43, %40 ], [ 11, %37 ], !dbg !1612
  ret i32 %45, !dbg !1678
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @binary_operator(i1 noundef %0, i32 noundef %1) unnamed_addr #12 !dbg !1679 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca [21 x i8], align 1
  %6 = alloca [21 x i8], align 1
  %7 = alloca [2 x %struct.stat], align 8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1683, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1705
  call void @llvm.dbg.value(metadata i32 %1, metadata !1684, metadata !DIExpression()), !dbg !1705
  %8 = load i32, i32* @pos, align 4, !dbg !1705, !tbaa !586
  %9 = zext i1 %0 to i32, !dbg !1706
  %10 = add nsw i32 %8, %9, !dbg !1706
  %11 = add nsw i32 %10, 1, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %11, metadata !1685, metadata !DIExpression()), !dbg !1705
  %12 = load i32, i32* @argc, align 4, !dbg !1708, !tbaa !586
  %13 = add nsw i32 %12, -2, !dbg !1709
  %14 = icmp slt i32 %11, %13, !dbg !1710
  br i1 %14, label %15, label %24, !dbg !1711

15:                                               ; preds = %2
  %16 = load i8**, i8*** @argv, align 8, !dbg !1712, !tbaa !457
  %17 = add nsw i32 %10, 2, !dbg !1713
  %18 = sext i32 %17 to i64, !dbg !1712
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18, !dbg !1712
  %20 = load i8*, i8** %19, align 8, !dbg !1712, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %20, metadata !534, metadata !DIExpression()) #35, !dbg !1714
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i64 0, i64 0), metadata !540, metadata !DIExpression()) #35, !dbg !1714
  %21 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %20, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i64 0, i64 0)) #36, !dbg !1716
  %22 = icmp eq i32 %21, 0, !dbg !1717
  call void @llvm.dbg.value(metadata i1 %22, metadata !1686, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1705
  %23 = select i1 %22, i32 %11, i32 %10, !dbg !1718
  br label %24, !dbg !1718

24:                                               ; preds = %15, %2
  %25 = phi i32 [ %10, %2 ], [ %23, %15 ], !dbg !1719
  %26 = phi i1 [ false, %2 ], [ %22, %15 ]
  %27 = add nsw i32 %25, 3, !dbg !1719
  store i32 %27, i32* @pos, align 4, !dbg !1719, !tbaa !586
  switch i32 %1, label %195 [
    i32 4, label %28
    i32 5, label %28
    i32 6, label %28
    i32 7, label %28
    i32 8, label %28
    i32 9, label %28
    i32 11, label %74
    i32 12, label %74
    i32 10, label %132
    i32 0, label %168
    i32 3, label %168
    i32 1, label %181
    i32 2, label %181
  ], !dbg !1720

28:                                               ; preds = %24, %24, %24, %24, %24, %24
  %29 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0, !dbg !1721
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %29) #35, !dbg !1721
  call void @llvm.dbg.declare(metadata [21 x i8]* %5, metadata !1687, metadata !DIExpression()), !dbg !1722
  %30 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0, !dbg !1723
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %30) #35, !dbg !1723
  call void @llvm.dbg.declare(metadata [21 x i8]* %6, metadata !1693, metadata !DIExpression()), !dbg !1724
  %31 = load i8**, i8*** @argv, align 8, !dbg !1725, !tbaa !457
  %32 = sext i32 %10 to i64, !dbg !1725
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32, !dbg !1725
  %34 = load i8*, i8** %33, align 8, !dbg !1725, !tbaa !457
  br i1 %0, label %35, label %38, !dbg !1726

35:                                               ; preds = %28
  %36 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %34) #36, !dbg !1727
  %37 = call i8* @umaxtostr(i64 noundef %36, i8* noundef nonnull %29) #35, !dbg !1728
  br label %40, !dbg !1726

38:                                               ; preds = %28
  %39 = tail call fastcc i8* @find_int(i8* noundef %34), !dbg !1729
  br label %40, !dbg !1726

40:                                               ; preds = %38, %35
  %41 = phi i8* [ %37, %35 ], [ %39, %38 ], !dbg !1726
  call void @llvm.dbg.value(metadata i8* %41, metadata !1694, metadata !DIExpression()), !dbg !1725
  %42 = load i8**, i8*** @argv, align 8, !dbg !1725, !tbaa !457
  br i1 %26, label %43, label %50, !dbg !1730

43:                                               ; preds = %40
  %44 = add nsw i32 %10, 3, !dbg !1731
  %45 = sext i32 %44 to i64, !dbg !1732
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45, !dbg !1732
  %47 = load i8*, i8** %46, align 8, !dbg !1732, !tbaa !457
  %48 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %47) #36, !dbg !1733
  %49 = call i8* @umaxtostr(i64 noundef %48, i8* noundef nonnull %30) #35, !dbg !1734
  br label %56, !dbg !1730

50:                                               ; preds = %40
  %51 = add nsw i32 %10, 2, !dbg !1735
  %52 = sext i32 %51 to i64, !dbg !1736
  %53 = getelementptr inbounds i8*, i8** %42, i64 %52, !dbg !1736
  %54 = load i8*, i8** %53, align 8, !dbg !1736, !tbaa !457
  %55 = call fastcc i8* @find_int(i8* noundef %54), !dbg !1737
  br label %56, !dbg !1730

56:                                               ; preds = %50, %43
  %57 = phi i8* [ %49, %43 ], [ %55, %50 ], !dbg !1730
  call void @llvm.dbg.value(metadata i8* %57, metadata !1695, metadata !DIExpression()), !dbg !1725
  %58 = call i32 @strintcmp(i8* noundef %41, i8* noundef %57) #36, !dbg !1738
  call void @llvm.dbg.value(metadata i32 %58, metadata !1696, metadata !DIExpression()), !dbg !1725
  switch i32 %1, label %71 [
    i32 4, label %59
    i32 5, label %61
    i32 6, label %63
    i32 7, label %65
    i32 8, label %67
    i32 9, label %69
  ], !dbg !1739

59:                                               ; preds = %56
  %60 = icmp eq i32 %58, 0, !dbg !1740
  br label %72, !dbg !1742

61:                                               ; preds = %56
  %62 = icmp sgt i32 %58, -1, !dbg !1743
  br label %72, !dbg !1744

63:                                               ; preds = %56
  %64 = icmp sgt i32 %58, 0, !dbg !1745
  br label %72, !dbg !1746

65:                                               ; preds = %56
  %66 = icmp slt i32 %58, 1, !dbg !1747
  br label %72, !dbg !1748

67:                                               ; preds = %56
  %68 = icmp slt i32 %58, 0, !dbg !1749
  br label %72, !dbg !1750

69:                                               ; preds = %56
  %70 = icmp ne i32 %58, 0, !dbg !1751
  br label %72, !dbg !1752

71:                                               ; preds = %56
  unreachable, !dbg !1753

72:                                               ; preds = %69, %67, %65, %63, %61, %59
  %73 = phi i1 [ %70, %69 ], [ %68, %67 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %60, %59 ], !dbg !1754
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %30) #35, !dbg !1755
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %29) #35, !dbg !1755
  br label %196

74:                                               ; preds = %24, %24
  %75 = or i1 %26, %0, !dbg !1756
  br i1 %75, label %76, label %82, !dbg !1758

76:                                               ; preds = %74
  %77 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.116, i64 0, i64 0), i32 noundef 5) #35, !dbg !1759
  %78 = load i8**, i8*** @argv, align 8, !dbg !1760, !tbaa !457
  %79 = sext i32 %11 to i64, !dbg !1760
  %80 = getelementptr inbounds i8*, i8** %78, i64 %79, !dbg !1760
  %81 = load i8*, i8** %80, align 8, !dbg !1760, !tbaa !457
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %77, i8* noundef %81) #39, !dbg !1761
  unreachable, !dbg !1761

82:                                               ; preds = %74
  %83 = load i8**, i8*** @argv, align 8, !dbg !1762, !tbaa !457
  %84 = sext i32 %10 to i64, !dbg !1762
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84, !dbg !1762
  %86 = load i8*, i8** %85, align 8, !dbg !1762, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %86, metadata !1763, metadata !DIExpression()) #35, !dbg !1769
  %87 = bitcast %struct.stat* %4 to i8*, !dbg !1771
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %87) #35, !dbg !1771
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1768, metadata !DIExpression()) #35, !dbg !1772
  %88 = call i32 @stat(i8* noundef %86, %struct.stat* noundef nonnull %4) #35, !dbg !1773
  %89 = icmp slt i32 %88, 0, !dbg !1774
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 13, i32 0, !dbg !1773
  %91 = load i64, i64* %90, align 8, !dbg !1773
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 13, i32 1, !dbg !1773
  %93 = load i64, i64* %92, align 8, !dbg !1773
  %94 = insertvalue [2 x i64] poison, i64 %91, 0, !dbg !1773
  %95 = insertvalue [2 x i64] %94, i64 %93, 1, !dbg !1773
  %96 = select i1 %89, [2 x i64] [i64 -9223372036854775808, i64 -1], [2 x i64] %95, !dbg !1773
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %87) #35, !dbg !1775
  %97 = load i8**, i8*** @argv, align 8, !dbg !1776, !tbaa !457
  %98 = add nsw i32 %10, 2, !dbg !1777
  %99 = sext i32 %98 to i64, !dbg !1776
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99, !dbg !1776
  %101 = load i8*, i8** %100, align 8, !dbg !1776, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %101, metadata !1763, metadata !DIExpression()) #35, !dbg !1778
  %102 = bitcast %struct.stat* %3 to i8*, !dbg !1780
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %102) #35, !dbg !1780
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !1768, metadata !DIExpression()) #35, !dbg !1781
  %103 = call i32 @stat(i8* noundef %101, %struct.stat* noundef nonnull %3) #35, !dbg !1782
  %104 = icmp slt i32 %103, 0, !dbg !1783
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 13, i32 0, !dbg !1782
  %106 = load i64, i64* %105, align 8, !dbg !1782
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 13, i32 1, !dbg !1782
  %108 = load i64, i64* %107, align 8, !dbg !1782
  %109 = insertvalue [2 x i64] poison, i64 %106, 0, !dbg !1782
  %110 = insertvalue [2 x i64] %109, i64 %108, 1, !dbg !1782
  %111 = select i1 %104, [2 x i64] [i64 -9223372036854775808, i64 -1], [2 x i64] %110, !dbg !1782
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %102) #35, !dbg !1784
  %112 = extractvalue [2 x i64] %96, 0
  call void @llvm.dbg.value(metadata i64 %112, metadata !1076, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1785
  %113 = extractvalue [2 x i64] %96, 1
  call void @llvm.dbg.value(metadata i64 %113, metadata !1076, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1785
  %114 = extractvalue [2 x i64] %111, 0
  call void @llvm.dbg.value(metadata i64 %114, metadata !1082, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1785
  %115 = extractvalue [2 x i64] %111, 1
  call void @llvm.dbg.value(metadata i64 %115, metadata !1082, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1785
  %116 = icmp sgt i64 %112, %114, !dbg !1787
  %117 = zext i1 %116 to i32, !dbg !1787
  %118 = icmp slt i64 %112, %114, !dbg !1787
  %119 = sext i1 %118 to i32, !dbg !1787
  %120 = add nsw i32 %119, %117, !dbg !1787
  %121 = shl nsw i32 %120, 1, !dbg !1788
  %122 = icmp sgt i64 %113, %115, !dbg !1789
  %123 = zext i1 %122 to i32, !dbg !1789
  %124 = icmp slt i64 %113, %115, !dbg !1789
  %125 = sext i1 %124 to i32, !dbg !1789
  %126 = add nsw i32 %125, %123, !dbg !1789
  %127 = add nsw i32 %126, %121, !dbg !1790
  call void @llvm.dbg.value(metadata i32 %127, metadata !1697, metadata !DIExpression()), !dbg !1791
  %128 = icmp eq i32 %1, 12, !dbg !1792
  %129 = icmp slt i32 %127, 0, !dbg !1793
  %130 = icmp sgt i32 %127, 0, !dbg !1793
  %131 = select i1 %128, i1 %129, i1 %130, !dbg !1793
  br label %196

132:                                              ; preds = %24
  %133 = or i1 %26, %0, !dbg !1794
  br i1 %133, label %134, label %136, !dbg !1795

134:                                              ; preds = %132
  %135 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.117, i64 0, i64 0), i32 noundef 5) #35, !dbg !1796
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %135) #39, !dbg !1797
  unreachable, !dbg !1797

136:                                              ; preds = %132
  %137 = bitcast [2 x %struct.stat]* %7 to i8*, !dbg !1798
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %137) #35, !dbg !1798
  call void @llvm.dbg.declare(metadata [2 x %struct.stat]* %7, metadata !1699, metadata !DIExpression()), !dbg !1799
  %138 = load i8**, i8*** @argv, align 8, !dbg !1800, !tbaa !457
  %139 = sext i32 %10 to i64, !dbg !1800
  %140 = getelementptr inbounds i8*, i8** %138, i64 %139, !dbg !1800
  %141 = load i8*, i8** %140, align 8, !dbg !1800, !tbaa !457
  %142 = getelementptr inbounds [2 x %struct.stat], [2 x %struct.stat]* %7, i64 0, i64 0, !dbg !1801
  %143 = call i32 @stat(i8* noundef %141, %struct.stat* noundef nonnull %142) #35, !dbg !1802
  %144 = icmp eq i32 %143, 0, !dbg !1803
  br i1 %144, label %145, label %166, !dbg !1804

145:                                              ; preds = %136
  %146 = load i8**, i8*** @argv, align 8, !dbg !1805, !tbaa !457
  %147 = add nsw i32 %10, 2, !dbg !1806
  %148 = sext i32 %147 to i64, !dbg !1805
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148, !dbg !1805
  %150 = load i8*, i8** %149, align 8, !dbg !1805, !tbaa !457
  %151 = getelementptr inbounds [2 x %struct.stat], [2 x %struct.stat]* %7, i64 0, i64 1, !dbg !1807
  %152 = call i32 @stat(i8* noundef %150, %struct.stat* noundef nonnull %151) #35, !dbg !1808
  %153 = icmp eq i32 %152, 0, !dbg !1809
  br i1 %153, label %154, label %166, !dbg !1810

154:                                              ; preds = %145
  call void @llvm.dbg.value(metadata %struct.stat* %142, metadata !1811, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata %struct.stat* %151, metadata !1817, metadata !DIExpression()), !dbg !1818
  %155 = getelementptr inbounds [2 x %struct.stat], [2 x %struct.stat]* %7, i64 0, i64 0, i32 0, !dbg !1820
  %156 = load i64, i64* %155, align 8, !dbg !1820, !tbaa !1821
  %157 = getelementptr inbounds %struct.stat, %struct.stat* %151, i64 0, i32 0, !dbg !1820
  %158 = load i64, i64* %157, align 8, !dbg !1820, !tbaa !1821
  %159 = icmp eq i64 %156, %158, !dbg !1820
  %160 = getelementptr inbounds [2 x %struct.stat], [2 x %struct.stat]* %7, i64 0, i64 0, i32 1, !dbg !1820
  %161 = load i64, i64* %160, align 8, !dbg !1820, !tbaa !1822
  %162 = getelementptr inbounds [2 x %struct.stat], [2 x %struct.stat]* %7, i64 0, i64 1, i32 1, !dbg !1820
  %163 = load i64, i64* %162, align 8, !dbg !1820, !tbaa !1822
  %164 = icmp eq i64 %161, %163, !dbg !1820
  %165 = and i1 %159, %164, !dbg !1820
  br label %166

166:                                              ; preds = %154, %145, %136
  %167 = phi i1 [ false, %145 ], [ false, %136 ], [ %165, %154 ], !dbg !1823
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %137) #35, !dbg !1824
  br label %196

168:                                              ; preds = %24, %24
  %169 = load i8**, i8*** @argv, align 8, !dbg !1825, !tbaa !457
  %170 = sext i32 %10 to i64, !dbg !1825
  %171 = getelementptr inbounds i8*, i8** %169, i64 %170, !dbg !1825
  %172 = load i8*, i8** %171, align 8, !dbg !1825, !tbaa !457
  %173 = add nsw i32 %10, 2, !dbg !1826
  %174 = sext i32 %173 to i64, !dbg !1827
  %175 = getelementptr inbounds i8*, i8** %169, i64 %174, !dbg !1827
  %176 = load i8*, i8** %175, align 8, !dbg !1827, !tbaa !457
  call void @llvm.dbg.value(metadata i8* %172, metadata !534, metadata !DIExpression()) #35, !dbg !1828
  call void @llvm.dbg.value(metadata i8* %176, metadata !540, metadata !DIExpression()) #35, !dbg !1828
  %177 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %172, i8* noundef nonnull dereferenceable(1) %176) #36, !dbg !1830
  %178 = icmp eq i32 %177, 0, !dbg !1831
  %179 = icmp ne i32 %1, 0, !dbg !1832
  %180 = xor i1 %179, %178, !dbg !1833
  br label %196, !dbg !1834

181:                                              ; preds = %24, %24
  %182 = load i8**, i8*** @argv, align 8, !dbg !1835, !tbaa !457
  %183 = sext i32 %10 to i64, !dbg !1835
  %184 = getelementptr inbounds i8*, i8** %182, i64 %183, !dbg !1835
  %185 = load i8*, i8** %184, align 8, !dbg !1835, !tbaa !457
  %186 = add nsw i32 %10, 2, !dbg !1836
  %187 = sext i32 %186 to i64, !dbg !1837
  %188 = getelementptr inbounds i8*, i8** %182, i64 %187, !dbg !1837
  %189 = load i8*, i8** %188, align 8, !dbg !1837, !tbaa !457
  %190 = tail call i32 @strcoll(i8* noundef %185, i8* noundef %189) #36, !dbg !1838
  call void @llvm.dbg.value(metadata i32 %190, metadata !1703, metadata !DIExpression()), !dbg !1839
  %191 = icmp eq i32 %1, 2, !dbg !1840
  %192 = icmp slt i32 %190, 0, !dbg !1841
  %193 = icmp sgt i32 %190, 0, !dbg !1841
  %194 = select i1 %191, i1 %192, i1 %193, !dbg !1841
  br label %196

195:                                              ; preds = %24
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.binary_operator, i64 0, i64 0)) #37, !dbg !1842
  unreachable, !dbg !1842

196:                                              ; preds = %181, %168, %166, %82, %72
  %197 = phi i1 [ %194, %181 ], [ %180, %168 ], [ %167, %166 ], [ %131, %82 ], [ %73, %72 ], !dbg !1845
  ret i1 %197, !dbg !1846
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc i8* @find_int(i8* noundef %0) unnamed_addr #12 !dbg !1847 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1851, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8* %0, metadata !1852, metadata !DIExpression()), !dbg !1854
  %2 = tail call i16** @__ctype_b_loc() #38, !dbg !1854
  %3 = load i16*, i16** %2, align 8, !tbaa !457
  br label %4, !dbg !1855

4:                                                ; preds = %4, %1
  %5 = phi i8* [ %0, %1 ], [ %12, %4 ], !dbg !1857
  call void @llvm.dbg.value(metadata i8* %5, metadata !1852, metadata !DIExpression()), !dbg !1854
  %6 = load i8, i8* %5, align 1, !dbg !1858, !tbaa !595
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i16, i16* %3, i64 %7, !dbg !1858
  %9 = load i16, i16* %8, align 2, !dbg !1858, !tbaa !620
  %10 = and i16 %9, 8192, !dbg !1858
  %11 = icmp eq i16 %10, 0, !dbg !1860
  %12 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1861
  call void @llvm.dbg.value(metadata i8* %12, metadata !1852, metadata !DIExpression()), !dbg !1854
  br i1 %11, label %13, label %4, !dbg !1860, !llvm.loop !1862

13:                                               ; preds = %4
  %14 = icmp eq i8 %6, 43, !dbg !1864
  %15 = icmp eq i8 %6, 45, !dbg !1866
  %16 = zext i1 %15 to i64, !dbg !1866
  %17 = getelementptr inbounds i8, i8* %5, i64 %16, !dbg !1866
  %18 = select i1 %14, i8* %12, i8* %17, !dbg !1866
  call void @llvm.dbg.value(metadata i8* undef, metadata !1853, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8* %18, metadata !1852, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8* %18, metadata !1852, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1854
  %19 = load i8, i8* %18, align 1, !dbg !1867, !tbaa !595
  %20 = zext i8 %19 to i32, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %20, metadata !1869, metadata !DIExpression()), !dbg !1873
  %21 = add nsw i32 %20, -48, !dbg !1875
  %22 = icmp ult i32 %21, 10, !dbg !1875
  br i1 %22, label %23, label %50, !dbg !1876

23:                                               ; preds = %13, %23
  %24 = phi i8* [ %25, %23 ], [ %18, %13 ]
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !1877
  call void @llvm.dbg.value(metadata i8* %25, metadata !1852, metadata !DIExpression()), !dbg !1854
  %26 = load i8, i8* %25, align 1, !dbg !1878, !tbaa !595
  %27 = zext i8 %26 to i32, !dbg !1878
  call void @llvm.dbg.value(metadata i32 %27, metadata !1869, metadata !DIExpression()), !dbg !1880
  %28 = add nsw i32 %27, -48, !dbg !1882
  %29 = icmp ult i32 %28, 10, !dbg !1882
  br i1 %29, label %23, label %30, !dbg !1883, !llvm.loop !1884

30:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %25, metadata !1852, metadata !DIExpression()), !dbg !1854
  %31 = zext i8 %26 to i64
  %32 = getelementptr inbounds i16, i16* %3, i64 %31, !dbg !1886
  %33 = load i16, i16* %32, align 2, !dbg !1886, !tbaa !620
  %34 = and i16 %33, 8192, !dbg !1886
  %35 = icmp eq i16 %34, 0, !dbg !1887
  br i1 %35, label %45, label %36, !dbg !1887

36:                                               ; preds = %30, %36
  %37 = phi i8* [ %38, %36 ], [ %25, %30 ]
  call void @llvm.dbg.value(metadata i8* %37, metadata !1852, metadata !DIExpression()), !dbg !1854
  %38 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1888
  call void @llvm.dbg.value(metadata i8* %38, metadata !1852, metadata !DIExpression()), !dbg !1854
  %39 = load i8, i8* %38, align 1, !dbg !1886, !tbaa !595
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, i16* %3, i64 %40, !dbg !1886
  %42 = load i16, i16* %41, align 2, !dbg !1886, !tbaa !620
  %43 = and i16 %42, 8192, !dbg !1886
  %44 = icmp eq i16 %43, 0, !dbg !1887
  br i1 %44, label %45, label %36, !dbg !1887, !llvm.loop !1889

45:                                               ; preds = %36, %30
  %46 = phi i8 [ %26, %30 ], [ %39, %36 ], !dbg !1886
  %47 = icmp eq i8 %46, 0, !dbg !1890
  br i1 %47, label %48, label %50, !dbg !1892

48:                                               ; preds = %45
  %49 = select i1 %14, i8* %12, i8* %5, !dbg !1866
  call void @llvm.dbg.value(metadata i8* %49, metadata !1853, metadata !DIExpression()), !dbg !1854
  ret i8* %49, !dbg !1893

50:                                               ; preds = %45, %13
  %51 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.96, i64 0, i64 0), i32 noundef 5) #35, !dbg !1894
  %52 = tail call i8* @quote(i8* noundef %0) #35, !dbg !1895
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %51, i8* noundef %52) #39, !dbg !1896
  unreachable, !dbg !1896
}

; Function Attrs: nofree nounwind
declare !dbg !1897 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !1903 i32 @strcoll(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !1907 i32 @euidaccess(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1911 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1914 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(i8* nocapture noundef readonly, i8* nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare !dbg !1917 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #17 !dbg !1920 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1922, metadata !DIExpression()), !dbg !1923
  store i8* %0, i8** @file_name, align 8, !dbg !1924, !tbaa !457
  ret void, !dbg !1925
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #17 !dbg !1926 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1928, metadata !DIExpression()), !dbg !1929
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1930, !tbaa !1931
  ret void, !dbg !1933
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1934 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1939, !tbaa !457
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #35, !dbg !1940
  %3 = icmp eq i32 %2, 0, !dbg !1941
  br i1 %3, label %22, label %4, !dbg !1942

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1943, !tbaa !1931, !range !1944
  %6 = icmp eq i8 %5, 0, !dbg !1943
  br i1 %6, label %11, label %7, !dbg !1945

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #38, !dbg !1946
  %9 = load i32, i32* %8, align 4, !dbg !1946, !tbaa !586
  %10 = icmp eq i32 %9, 32, !dbg !1947
  br i1 %10, label %22, label %11, !dbg !1948

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.67, i64 0, i64 0), i32 noundef 5) #35, !dbg !1949
  call void @llvm.dbg.value(metadata i8* %12, metadata !1936, metadata !DIExpression()), !dbg !1950
  %13 = load i8*, i8** @file_name, align 8, !dbg !1951, !tbaa !457
  %14 = icmp eq i8* %13, null, !dbg !1951
  %15 = tail call i32* @__errno_location() #38, !dbg !1953
  %16 = load i32, i32* %15, align 4, !dbg !1953, !tbaa !586
  br i1 %14, label %19, label %17, !dbg !1954

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #35, !dbg !1955
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.68, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #35, !dbg !1955
  br label %20, !dbg !1955

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.69, i64 0, i64 0), i8* noundef %12) #35, !dbg !1956
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1957, !tbaa !586
  tail call void @_exit(i32 noundef %21) #37, !dbg !1958
  unreachable, !dbg !1958

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1959, !tbaa !457
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #35, !dbg !1961
  %25 = icmp eq i32 %24, 0, !dbg !1962
  br i1 %25, label %28, label %26, !dbg !1963

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1964, !tbaa !586
  tail call void @_exit(i32 noundef %27) #37, !dbg !1965
  unreachable, !dbg !1965

28:                                               ; preds = %22
  ret void, !dbg !1966
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #19 !dbg !1967 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1971, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i32 %1, metadata !1972, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8* %2, metadata !1973, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1974, metadata !DIExpression()), !dbg !1976
  tail call fastcc void @flush_stdout(), !dbg !1977
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1978, !tbaa !457
  %7 = icmp eq void ()* %6, null, !dbg !1978
  br i1 %7, label %9, label %8, !dbg !1980

8:                                                ; preds = %4
  tail call void %6() #35, !dbg !1981
  br label %13, !dbg !1981

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1982, !tbaa !457
  %11 = tail call i8* @getprogname() #36, !dbg !1982
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i64 0, i64 0), i8* noundef %11) #35, !dbg !1982
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1984
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1984
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1984
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1984, !tbaa.struct !797
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1984
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1984
  ret void, !dbg !1985
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1986 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1988, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i32 1, metadata !1990, metadata !DIExpression()) #35, !dbg !1993
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #35, !dbg !1996
  %2 = icmp slt i32 %1, 0, !dbg !1997
  br i1 %2, label %6, label %3, !dbg !1998

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1999, !tbaa !457
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #35, !dbg !1999
  br label %6, !dbg !1999

6:                                                ; preds = %3, %0
  ret void, !dbg !2000
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !2001 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2003, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 %1, metadata !2004, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8* %2, metadata !2005, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !2006, metadata !DIExpression()), !dbg !2008
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2009, !tbaa !457
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !2010
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !2011, metadata !DIExpression()) #35, !dbg !2054
  call void @llvm.dbg.value(metadata i8* %2, metadata !2052, metadata !DIExpression()) #35, !dbg !2054
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2056
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !2056, !noalias !2057
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !2056
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #35, !dbg !2056
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !2056, !noalias !2057
  %11 = load i32, i32* @error_message_count, align 4, !dbg !2061, !tbaa !586
  %12 = add i32 %11, 1, !dbg !2061
  store i32 %12, i32* @error_message_count, align 4, !dbg !2061, !tbaa !586
  %13 = icmp eq i32 %1, 0, !dbg !2062
  br i1 %13, label %24, label %14, !dbg !2064

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2065, metadata !DIExpression()) #35, !dbg !2073
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !2075
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !2075
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !2069, metadata !DIExpression()) #35, !dbg !2076
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #35, !dbg !2077
  call void @llvm.dbg.value(metadata i8* %16, metadata !2068, metadata !DIExpression()) #35, !dbg !2073
  %17 = icmp eq i8* %16, null, !dbg !2078
  br i1 %17, label %18, label %20, !dbg !2080

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.123, i64 0, i64 0), i32 noundef 5) #35, !dbg !2081
  call void @llvm.dbg.value(metadata i8* %19, metadata !2068, metadata !DIExpression()) #35, !dbg !2073
  br label %20, !dbg !2082

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !2073
  call void @llvm.dbg.value(metadata i8* %21, metadata !2068, metadata !DIExpression()) #35, !dbg !2073
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2083, !tbaa !457
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.124, i64 0, i64 0), i8* noundef %21) #35, !dbg !2083
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !2084
  br label %24, !dbg !2085

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2086, !tbaa !457
  call void @llvm.dbg.value(metadata i32 10, metadata !2087, metadata !DIExpression()) #35, !dbg !2094
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !2093, metadata !DIExpression()) #35, !dbg !2094
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !2096
  %27 = load i8*, i8** %26, align 8, !dbg !2096, !tbaa !2097
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !2096
  %29 = load i8*, i8** %28, align 8, !dbg !2096, !tbaa !2099
  %30 = icmp ult i8* %27, %29, !dbg !2096
  br i1 %30, label %33, label %31, !dbg !2096, !prof !2100

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #35, !dbg !2096
  br label %35, !dbg !2096

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !2096
  store i8* %34, i8** %26, align 8, !dbg !2096, !tbaa !2097
  store i8 10, i8* %27, align 1, !dbg !2096, !tbaa !595
  br label %35, !dbg !2096

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2101, !tbaa !457
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #35, !dbg !2101
  %38 = icmp eq i32 %0, 0, !dbg !2102
  br i1 %38, label %40, label %39, !dbg !2104

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #37, !dbg !2105
  unreachable, !dbg !2105

40:                                               ; preds = %35
  ret void, !dbg !2106
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2107 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2110 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !2113 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !2117 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2121, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i32 %1, metadata !2122, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8* %2, metadata !2123, metadata !DIExpression()), !dbg !2125
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !2126
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #35, !dbg !2126
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2124, metadata !DIExpression()), !dbg !2127
  call void @llvm.va_start(i8* nonnull %6), !dbg !2128
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2129
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !2129
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2129, !tbaa.struct !797
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #41, !dbg !2129
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !2129
  call void @llvm.va_end(i8* nonnull %6), !dbg !2130
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #35, !dbg !2131
  ret void, !dbg !2131
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #19 !dbg !170 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !188, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i32 %1, metadata !189, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8* %2, metadata !190, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i32 %3, metadata !191, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8* %4, metadata !192, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !193, metadata !DIExpression()), !dbg !2133
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !2134, !tbaa !586
  %9 = icmp eq i32 %8, 0, !dbg !2134
  br i1 %9, label %24, label %10, !dbg !2136

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !2137, !tbaa !586
  %12 = icmp eq i32 %11, %3, !dbg !2140
  br i1 %12, label %13, label %23, !dbg !2141

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !2142, !tbaa !457
  %15 = icmp eq i8* %14, %2, !dbg !2143
  br i1 %15, label %39, label %16, !dbg !2144

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !2145
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !2146
  br i1 %19, label %20, label %23, !dbg !2146

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #36, !dbg !2147
  %22 = icmp eq i32 %21, 0, !dbg !2148
  br i1 %22, label %39, label %23, !dbg !2149

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !2150, !tbaa !457
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !2151, !tbaa !586
  br label %24, !dbg !2152

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2153
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !2154, !tbaa !457
  %26 = icmp eq void ()* %25, null, !dbg !2154
  br i1 %26, label %28, label %27, !dbg !2156

27:                                               ; preds = %24
  tail call void %25() #35, !dbg !2157
  br label %32, !dbg !2157

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2158, !tbaa !457
  %30 = tail call i8* @getprogname() #36, !dbg !2158
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.127, i64 0, i64 0), i8* noundef %30) #35, !dbg !2158
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2160, !tbaa !457
  %34 = icmp eq i8* %2, null, !dbg !2160
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.128, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.129, i64 0, i64 0), !dbg !2160
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #35, !dbg !2160
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2161
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #35, !dbg !2161
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2161
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !2161, !tbaa.struct !797
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !2161
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #35, !dbg !2161
  br label %39, !dbg !2162

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !2162
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !2163 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2167, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i32 %1, metadata !2168, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8* %2, metadata !2169, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i32 %3, metadata !2170, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8* %4, metadata !2171, metadata !DIExpression()), !dbg !2173
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2174
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !2174
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !2172, metadata !DIExpression()), !dbg !2175
  call void @llvm.va_start(i8* nonnull %8), !dbg !2176
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2177
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !2177
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !2177, !tbaa.struct !797
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #41, !dbg !2177
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !2177
  call void @llvm.va_end(i8* nonnull %8), !dbg !2178
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !2179
  ret void, !dbg !2179
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #20 !dbg !2180 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !2183, !tbaa !457
  ret i8* %1, !dbg !2184
}

; Function Attrs: nofree norecurse nosync nounwind uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 noundef %0, i8* noundef writeonly %1) local_unnamed_addr #21 !dbg !2185 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2190, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %1, metadata !2191, metadata !DIExpression()), !dbg !2193
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2194
  call void @llvm.dbg.value(metadata i8* %3, metadata !2192, metadata !DIExpression()), !dbg !2193
  store i8 0, i8* %3, align 1, !dbg !2195, !tbaa !595
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %8, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %13, %4 ], !dbg !2193
  call void @llvm.dbg.value(metadata i8* %6, metadata !2192, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %5, metadata !2190, metadata !DIExpression()), !dbg !2193
  %7 = freeze i64 %5
  %8 = udiv i64 %7, 10, !dbg !2196
  %9 = mul i64 %8, 10
  %10 = sub i64 %7, %9
  %11 = trunc i64 %10 to i8, !dbg !2199
  %12 = or i8 %11, 48, !dbg !2199
  %13 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2200
  call void @llvm.dbg.value(metadata i8* %13, metadata !2192, metadata !DIExpression()), !dbg !2193
  store i8 %12, i8* %13, align 1, !dbg !2201, !tbaa !595
  call void @llvm.dbg.value(metadata i64 %8, metadata !2190, metadata !DIExpression()), !dbg !2193
  %14 = icmp ult i64 %5, 10, !dbg !2202
  br i1 %14, label %15, label %4, !dbg !2203, !llvm.loop !2204

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %13, metadata !2192, metadata !DIExpression()), !dbg !2193
  ret i8* %13, !dbg !2207
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #22 !dbg !2208 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2210, metadata !DIExpression()), !dbg !2213
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #36, !dbg !2214
  call void @llvm.dbg.value(metadata i8* %2, metadata !2211, metadata !DIExpression()), !dbg !2213
  %3 = icmp eq i8* %2, null, !dbg !2215
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2215
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !2215
  call void @llvm.dbg.value(metadata i8* %5, metadata !2212, metadata !DIExpression()), !dbg !2213
  %6 = ptrtoint i8* %5 to i64, !dbg !2216
  %7 = ptrtoint i8* %0 to i64, !dbg !2216
  %8 = sub i64 %6, %7, !dbg !2216
  %9 = icmp sgt i64 %8, 6, !dbg !2218
  br i1 %9, label %10, label %19, !dbg !2219

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !2220
  call void @llvm.dbg.value(metadata i8* %11, metadata !2221, metadata !DIExpression()) #35, !dbg !2228
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.140, i64 0, i64 0), metadata !2226, metadata !DIExpression()) #35, !dbg !2228
  call void @llvm.dbg.value(metadata i64 7, metadata !2227, metadata !DIExpression()) #35, !dbg !2228
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.140, i64 0, i64 0), i64 7) #35, !dbg !2230
  %13 = icmp eq i32 %12, 0, !dbg !2231
  br i1 %13, label %14, label %19, !dbg !2232

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !2210, metadata !DIExpression()), !dbg !2213
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.141, i64 0, i64 0), i64 noundef 3) #36, !dbg !2233
  %16 = icmp eq i32 %15, 0, !dbg !2236
  %17 = select i1 %16, i64 3, i64 0, !dbg !2237
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !2237
  br label %19, !dbg !2237

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2213
  call void @llvm.dbg.value(metadata i8* %21, metadata !2212, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i8* %20, metadata !2210, metadata !DIExpression()), !dbg !2213
  store i8* %20, i8** @program_name, align 8, !dbg !2238, !tbaa !457
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !2239, !tbaa !457
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !2240, !tbaa !457
  ret void, !dbg !2241
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !211 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !218, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8* %1, metadata !219, metadata !DIExpression()), !dbg !2242
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #35, !dbg !2243
  call void @llvm.dbg.value(metadata i8* %5, metadata !220, metadata !DIExpression()), !dbg !2242
  %6 = icmp eq i8* %5, %0, !dbg !2244
  br i1 %6, label %7, label %17, !dbg !2246

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !2247
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #35, !dbg !2247
  %10 = bitcast i64* %4 to i8*, !dbg !2248
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35, !dbg !2248
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !226, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !2250, metadata !DIExpression()) #35, !dbg !2257
  call void @llvm.dbg.value(metadata i8* %10, metadata !2259, metadata !DIExpression()) #35, !dbg !2267
  call void @llvm.dbg.value(metadata i32 0, metadata !2265, metadata !DIExpression()) #35, !dbg !2267
  call void @llvm.dbg.value(metadata i64 8, metadata !2266, metadata !DIExpression()) #35, !dbg !2267
  store i64 0, i64* %4, align 8, !dbg !2269
  call void @llvm.dbg.value(metadata i32* %3, metadata !221, metadata !DIExpression(DW_OP_deref)), !dbg !2242
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #35, !dbg !2270
  %12 = icmp eq i64 %11, 2, !dbg !2272
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !221, metadata !DIExpression()), !dbg !2242
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2273
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !2242
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35, !dbg !2274
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #35, !dbg !2274
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !2242
  ret i8* %18, !dbg !2274
}

; Function Attrs: nounwind
declare !dbg !2275 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !2281 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2286, metadata !DIExpression()), !dbg !2289
  %2 = tail call i32* @__errno_location() #38, !dbg !2290
  %3 = load i32, i32* %2, align 4, !dbg !2290, !tbaa !586
  call void @llvm.dbg.value(metadata i32 %3, metadata !2287, metadata !DIExpression()), !dbg !2289
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2291
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2291
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2291
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #42, !dbg !2292
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2292
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2288, metadata !DIExpression()), !dbg !2289
  store i32 %3, i32* %2, align 4, !dbg !2293, !tbaa !586
  ret %struct.quoting_options* %8, !dbg !2294
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #20 !dbg !2295 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2301, metadata !DIExpression()), !dbg !2302
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2303
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2303
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2304
  %5 = load i32, i32* %4, align 8, !dbg !2304, !tbaa !2305
  ret i32 %5, !dbg !2307
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #17 !dbg !2308 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2312, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32 %1, metadata !2313, metadata !DIExpression()), !dbg !2314
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2315
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2315
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2316
  store i32 %1, i32* %5, align 8, !dbg !2317, !tbaa !2305
  ret void, !dbg !2318
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !2319 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2323, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8 %1, metadata !2324, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 %2, metadata !2325, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i8 %1, metadata !2326, metadata !DIExpression()), !dbg !2331
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2332
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2332
  %6 = lshr i8 %1, 5, !dbg !2333
  %7 = zext i8 %6 to i64, !dbg !2333
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2334
  call void @llvm.dbg.value(metadata i32* %8, metadata !2327, metadata !DIExpression()), !dbg !2331
  %9 = and i8 %1, 31, !dbg !2335
  %10 = zext i8 %9 to i32, !dbg !2335
  call void @llvm.dbg.value(metadata i32 %10, metadata !2329, metadata !DIExpression()), !dbg !2331
  %11 = load i32, i32* %8, align 4, !dbg !2336, !tbaa !586
  %12 = lshr i32 %11, %10, !dbg !2337
  %13 = and i32 %12, 1, !dbg !2338
  call void @llvm.dbg.value(metadata i32 %13, metadata !2330, metadata !DIExpression()), !dbg !2331
  %14 = and i32 %2, 1, !dbg !2339
  %15 = xor i32 %13, %14, !dbg !2340
  %16 = shl i32 %15, %10, !dbg !2341
  %17 = xor i32 %16, %11, !dbg !2342
  store i32 %17, i32* %8, align 4, !dbg !2342, !tbaa !586
  ret i32 %13, !dbg !2343
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2344 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2348, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 %1, metadata !2349, metadata !DIExpression()), !dbg !2351
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2352
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2354
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2348, metadata !DIExpression()), !dbg !2351
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2355
  %6 = load i32, i32* %5, align 4, !dbg !2355, !tbaa !2356
  call void @llvm.dbg.value(metadata i32 %6, metadata !2350, metadata !DIExpression()), !dbg !2351
  store i32 %1, i32* %5, align 4, !dbg !2357, !tbaa !2356
  ret i32 %6, !dbg !2358
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2359 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2363, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i8* %1, metadata !2364, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i8* %2, metadata !2365, metadata !DIExpression()), !dbg !2366
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2367
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2369
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2363, metadata !DIExpression()), !dbg !2366
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2370
  store i32 10, i32* %6, align 8, !dbg !2371, !tbaa !2305
  %7 = icmp ne i8* %1, null, !dbg !2372
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2374
  br i1 %9, label %11, label %10, !dbg !2374

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !2375
  unreachable, !dbg !2375

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2376
  store i8* %1, i8** %12, align 8, !dbg !2377, !tbaa !2378
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2379
  store i8* %2, i8** %13, align 8, !dbg !2380, !tbaa !2381
  ret void, !dbg !2382
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2383 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2387, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64 %1, metadata !2388, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8* %2, metadata !2389, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64 %3, metadata !2390, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2391, metadata !DIExpression()), !dbg !2395
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2396
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2396
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2392, metadata !DIExpression()), !dbg !2395
  %8 = tail call i32* @__errno_location() #38, !dbg !2397
  %9 = load i32, i32* %8, align 4, !dbg !2397, !tbaa !586
  call void @llvm.dbg.value(metadata i32 %9, metadata !2393, metadata !DIExpression()), !dbg !2395
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2398
  %11 = load i32, i32* %10, align 8, !dbg !2398, !tbaa !2305
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2399
  %13 = load i32, i32* %12, align 4, !dbg !2399, !tbaa !2356
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2400
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2401
  %16 = load i8*, i8** %15, align 8, !dbg !2401, !tbaa !2378
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2402
  %18 = load i8*, i8** %17, align 8, !dbg !2402, !tbaa !2381
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2403
  call void @llvm.dbg.value(metadata i64 %19, metadata !2394, metadata !DIExpression()), !dbg !2395
  store i32 %9, i32* %8, align 4, !dbg !2404, !tbaa !586
  ret i64 %19, !dbg !2405
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2406 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2412, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %1, metadata !2413, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %2, metadata !2414, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %3, metadata !2415, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 %4, metadata !2416, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 %5, metadata !2417, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32* %6, metadata !2418, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %7, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %8, metadata !2420, metadata !DIExpression()), !dbg !2474
  %17 = tail call i64 @__ctype_get_mb_cur_max() #35, !dbg !2475
  %18 = icmp eq i64 %17, 1, !dbg !2476
  call void @llvm.dbg.value(metadata i1 %18, metadata !2421, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2474
  call void @llvm.dbg.value(metadata i64 0, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 0, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* null, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 0, metadata !2425, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 0, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 %5, metadata !2427, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2474
  call void @llvm.dbg.value(metadata i8 0, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 1, metadata !2429, metadata !DIExpression()), !dbg !2474
  %19 = and i32 %5, 2, !dbg !2477
  %20 = icmp ne i32 %19, 0, !dbg !2477
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
  br label %36, !dbg !2477

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2478
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2479
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2480
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2413, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2429, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %43, metadata !2425, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %42, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %41, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 0, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %40, metadata !2415, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %39, metadata !2420, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %38, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 %37, metadata !2416, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.label(metadata !2467), !dbg !2481
  call void @llvm.dbg.value(metadata i8 0, metadata !2430, metadata !DIExpression()), !dbg !2474
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
  ], !dbg !2482

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 5, metadata !2416, metadata !DIExpression()), !dbg !2474
  br label %111, !dbg !2483

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 5, metadata !2416, metadata !DIExpression()), !dbg !2474
  br i1 %45, label %111, label %51, !dbg !2483

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2484
  br i1 %52, label %111, label %53, !dbg !2488

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2484, !tbaa !595
  br label %111, !dbg !2484

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.154, i64 0, i64 0), metadata !302, metadata !DIExpression()) #35, !dbg !2489
  call void @llvm.dbg.value(metadata i32 %37, metadata !303, metadata !DIExpression()) #35, !dbg !2489
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.155, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.154, i64 0, i64 0), i32 noundef 5) #35, !dbg !2493
  call void @llvm.dbg.value(metadata i8* %55, metadata !304, metadata !DIExpression()) #35, !dbg !2489
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.154, i64 0, i64 0), !dbg !2494
  br i1 %56, label %57, label %66, !dbg !2496

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2497
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2498
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !306, metadata !DIExpression()) #35, !dbg !2499
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2500, metadata !DIExpression()) #35, !dbg !2506
  call void @llvm.dbg.value(metadata i8* %23, metadata !2508, metadata !DIExpression()) #35, !dbg !2513
  call void @llvm.dbg.value(metadata i32 0, metadata !2511, metadata !DIExpression()) #35, !dbg !2513
  call void @llvm.dbg.value(metadata i64 8, metadata !2512, metadata !DIExpression()) #35, !dbg !2513
  store i64 0, i64* %13, align 8, !dbg !2515
  call void @llvm.dbg.value(metadata i32* %12, metadata !305, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2489
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #35, !dbg !2516
  %59 = icmp eq i64 %58, 3, !dbg !2518
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !305, metadata !DIExpression()) #35, !dbg !2489
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2519
  %63 = icmp eq i32 %37, 9, !dbg !2519
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.156, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.157, i64 0, i64 0), !dbg !2519
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2519
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2520
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2520
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2489
  call void @llvm.dbg.value(metadata i8* %67, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.157, i64 0, i64 0), metadata !302, metadata !DIExpression()) #35, !dbg !2521
  call void @llvm.dbg.value(metadata i32 %37, metadata !303, metadata !DIExpression()) #35, !dbg !2521
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.155, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.157, i64 0, i64 0), i32 noundef 5) #35, !dbg !2523
  call void @llvm.dbg.value(metadata i8* %68, metadata !304, metadata !DIExpression()) #35, !dbg !2521
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.157, i64 0, i64 0), !dbg !2524
  br i1 %69, label %70, label %79, !dbg !2525

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2526
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2527
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !306, metadata !DIExpression()) #35, !dbg !2528
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2500, metadata !DIExpression()) #35, !dbg !2529
  call void @llvm.dbg.value(metadata i8* %26, metadata !2508, metadata !DIExpression()) #35, !dbg !2531
  call void @llvm.dbg.value(metadata i32 0, metadata !2511, metadata !DIExpression()) #35, !dbg !2531
  call void @llvm.dbg.value(metadata i64 8, metadata !2512, metadata !DIExpression()) #35, !dbg !2531
  store i64 0, i64* %11, align 8, !dbg !2533
  call void @llvm.dbg.value(metadata i32* %10, metadata !305, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2521
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #35, !dbg !2534
  %72 = icmp eq i64 %71, 3, !dbg !2535
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !305, metadata !DIExpression()) #35, !dbg !2521
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2536
  %76 = icmp eq i32 %37, 9, !dbg !2536
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.156, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.157, i64 0, i64 0), !dbg !2536
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2536
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2537
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2537
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2420, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %80, metadata !2419, metadata !DIExpression()), !dbg !2474
  br i1 %45, label %97, label %82, !dbg !2538

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2431, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 0, metadata !2422, metadata !DIExpression()), !dbg !2474
  %83 = load i8, i8* %80, align 1, !dbg !2540, !tbaa !595
  %84 = icmp eq i8 %83, 0, !dbg !2542
  br i1 %84, label %97, label %85, !dbg !2542

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2431, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 %88, metadata !2422, metadata !DIExpression()), !dbg !2474
  %89 = icmp ult i64 %88, %48, !dbg !2543
  br i1 %89, label %90, label %92, !dbg !2546

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2543
  store i8 %86, i8* %91, align 1, !dbg !2543, !tbaa !595
  br label %92, !dbg !2543

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2546
  call void @llvm.dbg.value(metadata i64 %93, metadata !2422, metadata !DIExpression()), !dbg !2474
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2547
  call void @llvm.dbg.value(metadata i8* %94, metadata !2431, metadata !DIExpression()), !dbg !2539
  %95 = load i8, i8* %94, align 1, !dbg !2540, !tbaa !595
  %96 = icmp eq i8 %95, 0, !dbg !2542
  br i1 %96, label %97, label %85, !dbg !2542, !llvm.loop !2548

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2550
  call void @llvm.dbg.value(metadata i64 %98, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 1, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %81, metadata !2424, metadata !DIExpression()), !dbg !2474
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #36, !dbg !2551
  call void @llvm.dbg.value(metadata i64 %99, metadata !2425, metadata !DIExpression()), !dbg !2474
  br label %111, !dbg !2552

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2426, metadata !DIExpression()), !dbg !2474
  br label %102, !dbg !2553

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2426, metadata !DIExpression()), !dbg !2474
  br i1 %45, label %102, label %105, !dbg !2554

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 2, metadata !2416, metadata !DIExpression()), !dbg !2474
  br label %111, !dbg !2555

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 2, metadata !2416, metadata !DIExpression()), !dbg !2474
  br i1 %45, label %111, label %105, !dbg !2555

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2556
  br i1 %107, label %111, label %108, !dbg !2560

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2556, !tbaa !595
  br label %111, !dbg !2556

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2427, metadata !DIExpression()), !dbg !2474
  br label %111, !dbg !2561

110:                                              ; preds = %36
  call void @abort() #37, !dbg !2562
  unreachable, !dbg !2562

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2550
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.156, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.156, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.156, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.157, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.157, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.157, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.156, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.157, i64 0, i64 0), %102 ], !dbg !2474
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2474
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2427, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2426, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %117, metadata !2425, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %116, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %115, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %114, metadata !2420, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %113, metadata !2419, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 %112, metadata !2416, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 0, metadata !2436, metadata !DIExpression()), !dbg !2563
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
  br label %132, !dbg !2564

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2550
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2478
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2563
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2413, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %139, metadata !2436, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 poison, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2429, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %135, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %134, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %133, metadata !2415, metadata !DIExpression()), !dbg !2474
  %141 = icmp eq i64 %133, -1, !dbg !2565
  br i1 %141, label %142, label %146, !dbg !2566

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2567
  %144 = load i8, i8* %143, align 1, !dbg !2567, !tbaa !595
  %145 = icmp eq i8 %144, 0, !dbg !2568
  br i1 %145, label %596, label %148, !dbg !2569

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2570
  br i1 %147, label %596, label %148, !dbg !2569

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2438, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 0, metadata !2441, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 0, metadata !2442, metadata !DIExpression()), !dbg !2571
  br i1 %123, label %149, label %163, !dbg !2572

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2574
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2575
  br i1 %151, label %152, label %154, !dbg !2575

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %153, metadata !2415, metadata !DIExpression()), !dbg !2474
  br label %154, !dbg !2577

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2577
  call void @llvm.dbg.value(metadata i64 %155, metadata !2415, metadata !DIExpression()), !dbg !2474
  %156 = icmp ugt i64 %150, %155, !dbg !2578
  br i1 %156, label %163, label %157, !dbg !2579

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2580
  call void @llvm.dbg.value(metadata i8* %158, metadata !2581, metadata !DIExpression()) #35, !dbg !2586
  call void @llvm.dbg.value(metadata i8* %116, metadata !2584, metadata !DIExpression()) #35, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %117, metadata !2585, metadata !DIExpression()) #35, !dbg !2586
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #35, !dbg !2588
  %160 = icmp ne i32 %159, 0, !dbg !2589
  %161 = or i1 %160, %125, !dbg !2590
  %162 = xor i1 %160, true, !dbg !2590
  br i1 %161, label %163, label %647, !dbg !2590

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2438, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %164, metadata !2415, metadata !DIExpression()), !dbg !2474
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2591
  %167 = load i8, i8* %166, align 1, !dbg !2591, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %167, metadata !2443, metadata !DIExpression()), !dbg !2571
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
  ], !dbg !2592

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2593

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2594

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2441, metadata !DIExpression()), !dbg !2571
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2598
  br i1 %171, label %188, label %172, !dbg !2598

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2600
  br i1 %173, label %174, label %176, !dbg !2604

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2600
  store i8 39, i8* %175, align 1, !dbg !2600, !tbaa !595
  br label %176, !dbg !2600

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2604
  call void @llvm.dbg.value(metadata i64 %177, metadata !2422, metadata !DIExpression()), !dbg !2474
  %178 = icmp ult i64 %177, %140, !dbg !2605
  br i1 %178, label %179, label %181, !dbg !2608

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2605
  store i8 36, i8* %180, align 1, !dbg !2605, !tbaa !595
  br label %181, !dbg !2605

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2608
  call void @llvm.dbg.value(metadata i64 %182, metadata !2422, metadata !DIExpression()), !dbg !2474
  %183 = icmp ult i64 %182, %140, !dbg !2609
  br i1 %183, label %184, label %186, !dbg !2612

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2609
  store i8 39, i8* %185, align 1, !dbg !2609, !tbaa !595
  br label %186, !dbg !2609

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2612
  call void @llvm.dbg.value(metadata i64 %187, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 1, metadata !2430, metadata !DIExpression()), !dbg !2474
  br label %188, !dbg !2613

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2474
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %189, metadata !2422, metadata !DIExpression()), !dbg !2474
  %191 = icmp ult i64 %189, %140, !dbg !2614
  br i1 %191, label %192, label %194, !dbg !2617

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2614
  store i8 92, i8* %193, align 1, !dbg !2614, !tbaa !595
  br label %194, !dbg !2614

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2617
  call void @llvm.dbg.value(metadata i64 %195, metadata !2422, metadata !DIExpression()), !dbg !2474
  br i1 %120, label %196, label %499, !dbg !2618

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2620
  %198 = icmp ult i64 %197, %164, !dbg !2621
  br i1 %198, label %199, label %456, !dbg !2622

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2623
  %201 = load i8, i8* %200, align 1, !dbg !2623, !tbaa !595
  %202 = add i8 %201, -48, !dbg !2624
  %203 = icmp ult i8 %202, 10, !dbg !2624
  br i1 %203, label %204, label %456, !dbg !2624

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2625
  br i1 %205, label %206, label %208, !dbg !2629

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2625
  store i8 48, i8* %207, align 1, !dbg !2625, !tbaa !595
  br label %208, !dbg !2625

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %209, metadata !2422, metadata !DIExpression()), !dbg !2474
  %210 = icmp ult i64 %209, %140, !dbg !2630
  br i1 %210, label %211, label %213, !dbg !2633

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2630
  store i8 48, i8* %212, align 1, !dbg !2630, !tbaa !595
  br label %213, !dbg !2630

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2633
  call void @llvm.dbg.value(metadata i64 %214, metadata !2422, metadata !DIExpression()), !dbg !2474
  br label %456, !dbg !2634

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2635

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2636

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2637

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2639

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2641
  %221 = icmp ult i64 %220, %164, !dbg !2642
  br i1 %221, label %222, label %456, !dbg !2643

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2644
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2645
  %225 = load i8, i8* %224, align 1, !dbg !2645, !tbaa !595
  %226 = icmp eq i8 %225, 63, !dbg !2646
  br i1 %226, label %227, label %456, !dbg !2647

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2648
  %229 = load i8, i8* %228, align 1, !dbg !2648, !tbaa !595
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
  ], !dbg !2649

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2650

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2443, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %220, metadata !2436, metadata !DIExpression()), !dbg !2563
  %232 = icmp ult i64 %134, %140, !dbg !2652
  br i1 %232, label %233, label %235, !dbg !2655

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2652
  store i8 63, i8* %234, align 1, !dbg !2652, !tbaa !595
  br label %235, !dbg !2652

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2655
  call void @llvm.dbg.value(metadata i64 %236, metadata !2422, metadata !DIExpression()), !dbg !2474
  %237 = icmp ult i64 %236, %140, !dbg !2656
  br i1 %237, label %238, label %240, !dbg !2659

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2656
  store i8 34, i8* %239, align 1, !dbg !2656, !tbaa !595
  br label %240, !dbg !2656

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %241, metadata !2422, metadata !DIExpression()), !dbg !2474
  %242 = icmp ult i64 %241, %140, !dbg !2660
  br i1 %242, label %243, label %245, !dbg !2663

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2660
  store i8 34, i8* %244, align 1, !dbg !2660, !tbaa !595
  br label %245, !dbg !2660

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %246, metadata !2422, metadata !DIExpression()), !dbg !2474
  %247 = icmp ult i64 %246, %140, !dbg !2664
  br i1 %247, label %248, label %250, !dbg !2667

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2664
  store i8 63, i8* %249, align 1, !dbg !2664, !tbaa !595
  br label %250, !dbg !2664

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %251, metadata !2422, metadata !DIExpression()), !dbg !2474
  br label %456, !dbg !2668

252:                                              ; preds = %163
  br label %263, !dbg !2669

253:                                              ; preds = %163
  br label %263, !dbg !2670

254:                                              ; preds = %163
  br label %261, !dbg !2671

255:                                              ; preds = %163
  br label %261, !dbg !2672

256:                                              ; preds = %163
  br label %263, !dbg !2673

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2674

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2675

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2678

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2680

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2681
  call void @llvm.dbg.label(metadata !2468), !dbg !2682
  br i1 %128, label %263, label %638, !dbg !2683

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2681
  call void @llvm.dbg.label(metadata !2470), !dbg !2685
  br i1 %118, label %510, label %467, !dbg !2686

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2687

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2688, !tbaa !595
  %268 = icmp eq i8 %267, 0, !dbg !2690
  br i1 %268, label %269, label %456, !dbg !2691

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2692
  br i1 %270, label %271, label %456, !dbg !2694

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2442, metadata !DIExpression()), !dbg !2571
  br label %272, !dbg !2695

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2442, metadata !DIExpression()), !dbg !2571
  br i1 %126, label %274, label %456, !dbg !2696

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2698

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 1, metadata !2442, metadata !DIExpression()), !dbg !2571
  br i1 %126, label %276, label %456, !dbg !2699

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2700

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2703
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2705
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2705
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2705
  call void @llvm.dbg.value(metadata i64 %282, metadata !2413, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %281, metadata !2423, metadata !DIExpression()), !dbg !2474
  %283 = icmp ult i64 %134, %282, !dbg !2706
  br i1 %283, label %284, label %286, !dbg !2709

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2706
  store i8 39, i8* %285, align 1, !dbg !2706, !tbaa !595
  br label %286, !dbg !2706

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %287, metadata !2422, metadata !DIExpression()), !dbg !2474
  %288 = icmp ult i64 %287, %282, !dbg !2710
  br i1 %288, label %289, label %291, !dbg !2713

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2710
  store i8 92, i8* %290, align 1, !dbg !2710, !tbaa !595
  br label %291, !dbg !2710

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %292, metadata !2422, metadata !DIExpression()), !dbg !2474
  %293 = icmp ult i64 %292, %282, !dbg !2714
  br i1 %293, label %294, label %296, !dbg !2717

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2714
  store i8 39, i8* %295, align 1, !dbg !2714, !tbaa !595
  br label %296, !dbg !2714

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2717
  call void @llvm.dbg.value(metadata i64 %297, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 0, metadata !2430, metadata !DIExpression()), !dbg !2474
  br label %456, !dbg !2718

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2719

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2444, metadata !DIExpression()), !dbg !2720
  %300 = tail call i16** @__ctype_b_loc() #38, !dbg !2721
  %301 = load i16*, i16** %300, align 8, !dbg !2721, !tbaa !457
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2721
  %304 = load i16, i16* %303, align 2, !dbg !2721, !tbaa !620
  %305 = and i16 %304, 16384, !dbg !2721
  %306 = icmp ne i16 %305, 0, !dbg !2723
  call void @llvm.dbg.value(metadata i8 poison, metadata !2447, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %349, metadata !2444, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %312, metadata !2415, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i1 %350, metadata !2442, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2571
  br label %352, !dbg !2724

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2725
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2448, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2500, metadata !DIExpression()) #35, !dbg !2727
  call void @llvm.dbg.value(metadata i8* %32, metadata !2508, metadata !DIExpression()) #35, !dbg !2729
  call void @llvm.dbg.value(metadata i32 0, metadata !2511, metadata !DIExpression()) #35, !dbg !2729
  call void @llvm.dbg.value(metadata i64 8, metadata !2512, metadata !DIExpression()) #35, !dbg !2729
  store i64 0, i64* %14, align 8, !dbg !2731
  call void @llvm.dbg.value(metadata i64 0, metadata !2444, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8 1, metadata !2447, metadata !DIExpression()), !dbg !2720
  %308 = icmp eq i64 %164, -1, !dbg !2732
  br i1 %308, label %309, label %311, !dbg !2734

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %310, metadata !2415, metadata !DIExpression()), !dbg !2474
  br label %311, !dbg !2736

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2571
  call void @llvm.dbg.value(metadata i64 %312, metadata !2415, metadata !DIExpression()), !dbg !2474
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2737
  %313 = sub i64 %312, %139, !dbg !2738
  call void @llvm.dbg.value(metadata i32* %16, metadata !2451, metadata !DIExpression(DW_OP_deref)), !dbg !2739
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #35, !dbg !2740
  call void @llvm.dbg.value(metadata i64 %314, metadata !2455, metadata !DIExpression()), !dbg !2739
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2741

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2444, metadata !DIExpression()), !dbg !2720
  %316 = icmp ugt i64 %312, %139, !dbg !2742
  br i1 %316, label %319, label %317, !dbg !2744

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2447, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 0, metadata !2444, metadata !DIExpression()), !dbg !2720
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2745
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2746
  call void @llvm.dbg.value(metadata i64 %349, metadata !2444, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %312, metadata !2415, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i1 %350, metadata !2442, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2571
  br label %352, !dbg !2724

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2447, metadata !DIExpression()), !dbg !2720
  br label %346, !dbg !2747

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2444, metadata !DIExpression()), !dbg !2720
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2749
  %323 = load i8, i8* %322, align 1, !dbg !2749, !tbaa !595
  %324 = icmp eq i8 %323, 0, !dbg !2744
  br i1 %324, label %348, label %325, !dbg !2750

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %326, metadata !2444, metadata !DIExpression()), !dbg !2720
  %327 = add i64 %326, %139, !dbg !2752
  %328 = icmp eq i64 %326, %313, !dbg !2742
  br i1 %328, label %348, label %319, !dbg !2744, !llvm.loop !2753

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2754
  call void @llvm.dbg.value(metadata i64 1, metadata !2456, metadata !DIExpression()), !dbg !2755
  br i1 %331, label %332, label %340, !dbg !2754

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2456, metadata !DIExpression()), !dbg !2755
  %334 = add i64 %333, %139, !dbg !2756
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2758
  %336 = load i8, i8* %335, align 1, !dbg !2758, !tbaa !595
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2759

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %338, metadata !2456, metadata !DIExpression()), !dbg !2755
  %339 = icmp eq i64 %338, %314, !dbg !2761
  br i1 %339, label %340, label %332, !dbg !2762, !llvm.loop !2763

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2765, !tbaa !586
  call void @llvm.dbg.value(metadata i32 %341, metadata !2451, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i32 %341, metadata !2767, metadata !DIExpression()) #35, !dbg !2775
  %342 = call i32 @iswprint(i32 noundef %341) #35, !dbg !2777
  %343 = icmp ne i32 %342, 0, !dbg !2778
  call void @llvm.dbg.value(metadata i8 poison, metadata !2447, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %314, metadata !2444, metadata !DIExpression()), !dbg !2720
  br label %348, !dbg !2779

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2447, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 0, metadata !2444, metadata !DIExpression()), !dbg !2720
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2745
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2746
  call void @llvm.dbg.label(metadata !2473), !dbg !2780
  %345 = select i1 %118, i32 4, i32 2, !dbg !2781
  br label %643, !dbg !2781

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2447, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 0, metadata !2444, metadata !DIExpression()), !dbg !2720
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2745
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2746
  call void @llvm.dbg.value(metadata i64 %349, metadata !2444, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %312, metadata !2415, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i1 %350, metadata !2442, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2571
  br label %352, !dbg !2724

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2447, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 0, metadata !2444, metadata !DIExpression()), !dbg !2720
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2745
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2746
  call void @llvm.dbg.value(metadata i64 %349, metadata !2444, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %312, metadata !2415, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i1 %350, metadata !2442, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2571
  %351 = icmp ugt i64 %349, 1, !dbg !2783
  br i1 %351, label %357, label %352, !dbg !2724

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2784
  br i1 %356, label %456, label %357, !dbg !2784

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2785
  call void @llvm.dbg.value(metadata i64 %361, metadata !2464, metadata !DIExpression()), !dbg !2786
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2787

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2474
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2563
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2788
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2571
  call void @llvm.dbg.value(metadata i8 %369, metadata !2443, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %368, metadata !2441, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2438, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %366, metadata !2436, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 poison, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %364, metadata !2422, metadata !DIExpression()), !dbg !2474
  br i1 %362, label %414, label %370, !dbg !2789

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2794

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2441, metadata !DIExpression()), !dbg !2571
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2797
  br i1 %372, label %389, label %373, !dbg !2797

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2799
  br i1 %374, label %375, label %377, !dbg !2803

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2799
  store i8 39, i8* %376, align 1, !dbg !2799, !tbaa !595
  br label %377, !dbg !2799

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2803
  call void @llvm.dbg.value(metadata i64 %378, metadata !2422, metadata !DIExpression()), !dbg !2474
  %379 = icmp ult i64 %378, %140, !dbg !2804
  br i1 %379, label %380, label %382, !dbg !2807

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2804
  store i8 36, i8* %381, align 1, !dbg !2804, !tbaa !595
  br label %382, !dbg !2804

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %383, metadata !2422, metadata !DIExpression()), !dbg !2474
  %384 = icmp ult i64 %383, %140, !dbg !2808
  br i1 %384, label %385, label %387, !dbg !2811

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2808
  store i8 39, i8* %386, align 1, !dbg !2808, !tbaa !595
  br label %387, !dbg !2808

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2811
  call void @llvm.dbg.value(metadata i64 %388, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 1, metadata !2430, metadata !DIExpression()), !dbg !2474
  br label %389, !dbg !2812

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2474
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %390, metadata !2422, metadata !DIExpression()), !dbg !2474
  %392 = icmp ult i64 %390, %140, !dbg !2813
  br i1 %392, label %393, label %395, !dbg !2816

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2813
  store i8 92, i8* %394, align 1, !dbg !2813, !tbaa !595
  br label %395, !dbg !2813

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %396, metadata !2422, metadata !DIExpression()), !dbg !2474
  %397 = icmp ult i64 %396, %140, !dbg !2817
  br i1 %397, label %398, label %402, !dbg !2820

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2817
  %400 = or i8 %399, 48, !dbg !2817
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2817
  store i8 %400, i8* %401, align 1, !dbg !2817, !tbaa !595
  br label %402, !dbg !2817

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %403, metadata !2422, metadata !DIExpression()), !dbg !2474
  %404 = icmp ult i64 %403, %140, !dbg !2821
  br i1 %404, label %405, label %410, !dbg !2824

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2821
  %407 = and i8 %406, 7, !dbg !2821
  %408 = or i8 %407, 48, !dbg !2821
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2821
  store i8 %408, i8* %409, align 1, !dbg !2821, !tbaa !595
  br label %410, !dbg !2821

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %411, metadata !2422, metadata !DIExpression()), !dbg !2474
  %412 = and i8 %369, 7, !dbg !2825
  %413 = or i8 %412, 48, !dbg !2826
  call void @llvm.dbg.value(metadata i8 %413, metadata !2443, metadata !DIExpression()), !dbg !2571
  br label %421, !dbg !2827

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2828

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2829
  br i1 %416, label %417, label %419, !dbg !2834

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2829
  store i8 92, i8* %418, align 1, !dbg !2829, !tbaa !595
  br label %419, !dbg !2829

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %420, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 0, metadata !2438, metadata !DIExpression()), !dbg !2571
  br label %421, !dbg !2835

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2474
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2571
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2571
  call void @llvm.dbg.value(metadata i8 %426, metadata !2443, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %425, metadata !2441, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2438, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %422, metadata !2422, metadata !DIExpression()), !dbg !2474
  %427 = add i64 %366, 1, !dbg !2836
  %428 = icmp ugt i64 %361, %427, !dbg !2838
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2839

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2840
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2840
  br i1 %432, label %433, label %444, !dbg !2840

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2843
  br i1 %434, label %435, label %437, !dbg !2847

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2843
  store i8 39, i8* %436, align 1, !dbg !2843, !tbaa !595
  br label %437, !dbg !2843

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2847
  call void @llvm.dbg.value(metadata i64 %438, metadata !2422, metadata !DIExpression()), !dbg !2474
  %439 = icmp ult i64 %438, %140, !dbg !2848
  br i1 %439, label %440, label %442, !dbg !2851

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2848
  store i8 39, i8* %441, align 1, !dbg !2848, !tbaa !595
  br label %442, !dbg !2848

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2851
  call void @llvm.dbg.value(metadata i64 %443, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 0, metadata !2430, metadata !DIExpression()), !dbg !2474
  br label %444, !dbg !2852

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2853
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %445, metadata !2422, metadata !DIExpression()), !dbg !2474
  %447 = icmp ult i64 %445, %140, !dbg !2854
  br i1 %447, label %448, label %450, !dbg !2857

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2854
  store i8 %426, i8* %449, align 1, !dbg !2854, !tbaa !595
  br label %450, !dbg !2854

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2857
  call void @llvm.dbg.value(metadata i64 %451, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %427, metadata !2436, metadata !DIExpression()), !dbg !2563
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2858
  %453 = load i8, i8* %452, align 1, !dbg !2858, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %453, metadata !2443, metadata !DIExpression()), !dbg !2571
  br label %363, !dbg !2859, !llvm.loop !2860

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2443, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i1 %358, metadata !2442, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %425, metadata !2441, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2438, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %366, metadata !2436, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 poison, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %422, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %360, metadata !2415, metadata !DIExpression()), !dbg !2474
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2863
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2474
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2478
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2563
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2571
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2413, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %465, metadata !2443, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2442, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2441, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2438, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %462, metadata !2436, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 poison, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %459, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %458, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %457, metadata !2415, metadata !DIExpression()), !dbg !2474
  br i1 %121, label %478, label %467, !dbg !2864

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
  br i1 %131, label %479, label %499, !dbg !2866

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2867

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
  %490 = lshr i8 %481, 5, !dbg !2868
  %491 = zext i8 %490 to i64, !dbg !2868
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2869
  %493 = load i32, i32* %492, align 4, !dbg !2869, !tbaa !586
  %494 = and i8 %481, 31, !dbg !2870
  %495 = zext i8 %494 to i32, !dbg !2870
  %496 = shl nuw i32 1, %495, !dbg !2871
  %497 = and i32 %493, %496, !dbg !2871
  %498 = icmp eq i32 %497, 0, !dbg !2871
  br i1 %498, label %499, label %510, !dbg !2872

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
  br i1 %165, label %510, label %546, !dbg !2873

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2863
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2474
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2478
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2874
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2571
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2413, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %518, metadata !2443, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2442, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %516, metadata !2436, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 poison, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %513, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %512, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %511, metadata !2415, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.label(metadata !2471), !dbg !2875
  br i1 %119, label %638, label %520, !dbg !2876

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2441, metadata !DIExpression()), !dbg !2571
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2878
  br i1 %521, label %538, label %522, !dbg !2878

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2880
  br i1 %523, label %524, label %526, !dbg !2884

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2880
  store i8 39, i8* %525, align 1, !dbg !2880, !tbaa !595
  br label %526, !dbg !2880

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2884
  call void @llvm.dbg.value(metadata i64 %527, metadata !2422, metadata !DIExpression()), !dbg !2474
  %528 = icmp ult i64 %527, %519, !dbg !2885
  br i1 %528, label %529, label %531, !dbg !2888

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2885
  store i8 36, i8* %530, align 1, !dbg !2885, !tbaa !595
  br label %531, !dbg !2885

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2888
  call void @llvm.dbg.value(metadata i64 %532, metadata !2422, metadata !DIExpression()), !dbg !2474
  %533 = icmp ult i64 %532, %519, !dbg !2889
  br i1 %533, label %534, label %536, !dbg !2892

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2889
  store i8 39, i8* %535, align 1, !dbg !2889, !tbaa !595
  br label %536, !dbg !2889

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2892
  call void @llvm.dbg.value(metadata i64 %537, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 1, metadata !2430, metadata !DIExpression()), !dbg !2474
  br label %538, !dbg !2893

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2571
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %539, metadata !2422, metadata !DIExpression()), !dbg !2474
  %541 = icmp ult i64 %539, %519, !dbg !2894
  br i1 %541, label %542, label %544, !dbg !2897

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2894
  store i8 92, i8* %543, align 1, !dbg !2894, !tbaa !595
  br label %544, !dbg !2894

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2897
  call void @llvm.dbg.value(metadata i64 %556, metadata !2413, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %555, metadata !2443, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2442, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2441, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %552, metadata !2436, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 poison, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %549, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %548, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %547, metadata !2415, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.label(metadata !2472), !dbg !2898
  br label %570, !dbg !2899

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2863
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2474
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2478
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2874
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2902
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2413, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 %555, metadata !2443, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2442, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 poison, metadata !2441, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %552, metadata !2436, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 poison, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %549, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %548, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %547, metadata !2415, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.label(metadata !2472), !dbg !2898
  %557 = xor i1 %551, true, !dbg !2899
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2899
  br i1 %558, label %570, label %559, !dbg !2899

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2903
  br i1 %560, label %561, label %563, !dbg !2907

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2903
  store i8 39, i8* %562, align 1, !dbg !2903, !tbaa !595
  br label %563, !dbg !2903

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %564, metadata !2422, metadata !DIExpression()), !dbg !2474
  %565 = icmp ult i64 %564, %556, !dbg !2908
  br i1 %565, label %566, label %568, !dbg !2911

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2908
  store i8 39, i8* %567, align 1, !dbg !2908, !tbaa !595
  br label %568, !dbg !2908

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2911
  call void @llvm.dbg.value(metadata i64 %569, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 0, metadata !2430, metadata !DIExpression()), !dbg !2474
  br label %570, !dbg !2912

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2571
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %578, metadata !2422, metadata !DIExpression()), !dbg !2474
  %580 = icmp ult i64 %578, %571, !dbg !2913
  br i1 %580, label %581, label %583, !dbg !2916

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2913
  store i8 %572, i8* %582, align 1, !dbg !2913, !tbaa !595
  br label %583, !dbg !2913

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %584, metadata !2422, metadata !DIExpression()), !dbg !2474
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2917
  call void @llvm.dbg.value(metadata i8 poison, metadata !2429, metadata !DIExpression()), !dbg !2474
  br label %586, !dbg !2918

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2863
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2474
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2478
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2874
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2413, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %593, metadata !2436, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 poison, metadata !2430, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2429, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %589, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %588, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %587, metadata !2415, metadata !DIExpression()), !dbg !2474
  %595 = add i64 %593, 1, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %595, metadata !2436, metadata !DIExpression()), !dbg !2563
  br label %132, !dbg !2920, !llvm.loop !2921

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2413, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2429, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 poison, metadata !2428, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 undef, metadata !2423, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 undef, metadata !2422, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 undef, metadata !2415, metadata !DIExpression()), !dbg !2474
  %597 = icmp eq i64 %134, 0, !dbg !2923
  %598 = and i1 %126, %597, !dbg !2925
  %599 = and i1 %598, %119, !dbg !2925
  br i1 %599, label %638, label %600, !dbg !2925

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2926
  %602 = or i1 %119, %601, !dbg !2926
  %603 = xor i1 %136, true, !dbg !2926
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2926
  br i1 %604, label %612, label %605, !dbg !2926

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2928

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2930
  br label %653, !dbg !2932

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2933
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2935
  br i1 %611, label %36, label %612, !dbg !2935

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2936
  %615 = or i1 %614, %613, !dbg !2938
  br i1 %615, label %631, label %616, !dbg !2938

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %134, metadata !2422, metadata !DIExpression()), !dbg !2474
  %617 = load i8, i8* %116, align 1, !dbg !2939, !tbaa !595
  %618 = icmp eq i8 %617, 0, !dbg !2942
  br i1 %618, label %631, label %619, !dbg !2942

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2424, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %622, metadata !2422, metadata !DIExpression()), !dbg !2474
  %623 = icmp ult i64 %622, %140, !dbg !2943
  br i1 %623, label %624, label %626, !dbg !2946

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2943
  store i8 %620, i8* %625, align 1, !dbg !2943, !tbaa !595
  br label %626, !dbg !2943

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2946
  call void @llvm.dbg.value(metadata i64 %627, metadata !2422, metadata !DIExpression()), !dbg !2474
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2947
  call void @llvm.dbg.value(metadata i8* %628, metadata !2424, metadata !DIExpression()), !dbg !2474
  %629 = load i8, i8* %628, align 1, !dbg !2939, !tbaa !595
  %630 = icmp eq i8 %629, 0, !dbg !2942
  br i1 %630, label %631, label %619, !dbg !2942, !llvm.loop !2948

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2550
  call void @llvm.dbg.value(metadata i64 %632, metadata !2422, metadata !DIExpression()), !dbg !2474
  %633 = icmp ult i64 %632, %140, !dbg !2950
  br i1 %633, label %634, label %653, !dbg !2952

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2953
  store i8 0, i8* %635, align 1, !dbg !2954, !tbaa !595
  br label %653, !dbg !2953

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2473), !dbg !2780
  %637 = icmp eq i32 %112, 2, !dbg !2955
  br i1 %637, label %643, label %647, !dbg !2781

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2473), !dbg !2780
  %641 = icmp eq i32 %112, 2, !dbg !2955
  %642 = select i1 %118, i32 4, i32 2, !dbg !2781
  br i1 %641, label %643, label %647, !dbg !2781

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2781

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2416, metadata !DIExpression()), !dbg !2474
  %651 = and i32 %5, -3, !dbg !2956
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2957
  br label %653, !dbg !2958

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2959
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2960 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2962 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2966, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %1, metadata !2967, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2968, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8* %0, metadata !2970, metadata !DIExpression()) #35, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %1, metadata !2975, metadata !DIExpression()) #35, !dbg !2983
  call void @llvm.dbg.value(metadata i64* null, metadata !2976, metadata !DIExpression()) #35, !dbg !2983
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2977, metadata !DIExpression()) #35, !dbg !2983
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2985
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2985
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2978, metadata !DIExpression()) #35, !dbg !2983
  %6 = tail call i32* @__errno_location() #38, !dbg !2986
  %7 = load i32, i32* %6, align 4, !dbg !2986, !tbaa !586
  call void @llvm.dbg.value(metadata i32 %7, metadata !2979, metadata !DIExpression()) #35, !dbg !2983
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2987
  %9 = load i32, i32* %8, align 4, !dbg !2987, !tbaa !2356
  %10 = or i32 %9, 1, !dbg !2988
  call void @llvm.dbg.value(metadata i32 %10, metadata !2980, metadata !DIExpression()) #35, !dbg !2983
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2989
  %12 = load i32, i32* %11, align 8, !dbg !2989, !tbaa !2305
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2990
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2991
  %15 = load i8*, i8** %14, align 8, !dbg !2991, !tbaa !2378
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2992
  %17 = load i8*, i8** %16, align 8, !dbg !2992, !tbaa !2381
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #35, !dbg !2993
  %19 = add i64 %18, 1, !dbg !2994
  call void @llvm.dbg.value(metadata i64 %19, metadata !2981, metadata !DIExpression()) #35, !dbg !2983
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #43, !dbg !2995
  call void @llvm.dbg.value(metadata i8* %20, metadata !2982, metadata !DIExpression()) #35, !dbg !2983
  %21 = load i32, i32* %11, align 8, !dbg !2996, !tbaa !2305
  %22 = load i8*, i8** %14, align 8, !dbg !2997, !tbaa !2378
  %23 = load i8*, i8** %16, align 8, !dbg !2998, !tbaa !2381
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #35, !dbg !2999
  store i32 %7, i32* %6, align 4, !dbg !3000, !tbaa !586
  ret i8* %20, !dbg !3001
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2971 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2970, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i64 %1, metadata !2975, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i64* %2, metadata !2976, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2977, metadata !DIExpression()), !dbg !3002
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3003
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3003
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2978, metadata !DIExpression()), !dbg !3002
  %7 = tail call i32* @__errno_location() #38, !dbg !3004
  %8 = load i32, i32* %7, align 4, !dbg !3004, !tbaa !586
  call void @llvm.dbg.value(metadata i32 %8, metadata !2979, metadata !DIExpression()), !dbg !3002
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3005
  %10 = load i32, i32* %9, align 4, !dbg !3005, !tbaa !2356
  %11 = icmp eq i64* %2, null, !dbg !3006
  %12 = zext i1 %11 to i32, !dbg !3006
  %13 = or i32 %10, %12, !dbg !3007
  call void @llvm.dbg.value(metadata i32 %13, metadata !2980, metadata !DIExpression()), !dbg !3002
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3008
  %15 = load i32, i32* %14, align 8, !dbg !3008, !tbaa !2305
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3009
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3010
  %18 = load i8*, i8** %17, align 8, !dbg !3010, !tbaa !2378
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3011
  %20 = load i8*, i8** %19, align 8, !dbg !3011, !tbaa !2381
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !3012
  %22 = add i64 %21, 1, !dbg !3013
  call void @llvm.dbg.value(metadata i64 %22, metadata !2981, metadata !DIExpression()), !dbg !3002
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #43, !dbg !3014
  call void @llvm.dbg.value(metadata i8* %23, metadata !2982, metadata !DIExpression()), !dbg !3002
  %24 = load i32, i32* %14, align 8, !dbg !3015, !tbaa !2305
  %25 = load i8*, i8** %17, align 8, !dbg !3016, !tbaa !2378
  %26 = load i8*, i8** %19, align 8, !dbg !3017, !tbaa !2381
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !3018
  store i32 %8, i32* %7, align 4, !dbg !3019, !tbaa !586
  br i1 %11, label %29, label %28, !dbg !3020

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3021, !tbaa !3023
  br label %29, !dbg !3024

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3025
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !3026 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3031, !tbaa !457
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3028, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i32 1, metadata !3029, metadata !DIExpression()), !dbg !3033
  %2 = load i32, i32* @nslots, align 4, !tbaa !586
  call void @llvm.dbg.value(metadata i32 1, metadata !3029, metadata !DIExpression()), !dbg !3033
  %3 = icmp sgt i32 %2, 1, !dbg !3034
  br i1 %3, label %4, label %6, !dbg !3036

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3034
  br label %10, !dbg !3036

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3037
  %8 = load i8*, i8** %7, align 8, !dbg !3037, !tbaa !3039
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3041
  br i1 %9, label %17, label %16, !dbg !3042

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3029, metadata !DIExpression()), !dbg !3033
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !3043
  %13 = load i8*, i8** %12, align 8, !dbg !3043, !tbaa !3039
  tail call void @free(i8* noundef %13) #35, !dbg !3044
  %14 = add nuw nsw i64 %11, 1, !dbg !3045
  call void @llvm.dbg.value(metadata i64 %14, metadata !3029, metadata !DIExpression()), !dbg !3033
  %15 = icmp eq i64 %14, %5, !dbg !3034
  br i1 %15, label %6, label %10, !dbg !3036, !llvm.loop !3046

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #35, !dbg !3048
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3050, !tbaa !3051
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3052, !tbaa !3039
  br label %17, !dbg !3053

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3054
  br i1 %18, label %21, label %19, !dbg !3056

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3057
  tail call void @free(i8* noundef %20) #35, !dbg !3059
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3060, !tbaa !457
  br label %21, !dbg !3061

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3062, !tbaa !586
  ret void, !dbg !3063
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3064 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3066, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8* %1, metadata !3067, metadata !DIExpression()), !dbg !3068
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3069
  ret i8* %3, !dbg !3070
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !3071 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3075, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8* %1, metadata !3076, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %2, metadata !3077, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3078, metadata !DIExpression()), !dbg !3091
  %6 = tail call i32* @__errno_location() #38, !dbg !3092
  %7 = load i32, i32* %6, align 4, !dbg !3092, !tbaa !586
  call void @llvm.dbg.value(metadata i32 %7, metadata !3079, metadata !DIExpression()), !dbg !3091
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3093, !tbaa !457
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !3080, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3081, metadata !DIExpression()), !dbg !3091
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3094
  br i1 %9, label %10, label %11, !dbg !3094

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3096
  unreachable, !dbg !3096

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !3097, !tbaa !586
  %13 = icmp sgt i32 %12, %0, !dbg !3098
  br i1 %13, label %36, label %14, !dbg !3099

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !3100
  call void @llvm.dbg.value(metadata i1 %15, metadata !3082, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3101
  %16 = bitcast i64* %5 to i8*, !dbg !3102
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #35, !dbg !3102
  %17 = sext i32 %12 to i64, !dbg !3103
  call void @llvm.dbg.value(metadata i64 %17, metadata !3085, metadata !DIExpression()), !dbg !3101
  store i64 %17, i64* %5, align 8, !dbg !3104, !tbaa !3023
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !3105
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3105
  %20 = add nuw nsw i32 %0, 1, !dbg !3106
  %21 = sub i32 %20, %12, !dbg !3107
  %22 = sext i32 %21 to i64, !dbg !3108
  call void @llvm.dbg.value(metadata i64* %5, metadata !3085, metadata !DIExpression(DW_OP_deref)), !dbg !3101
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !3109
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3109
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3080, metadata !DIExpression()), !dbg !3091
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3110, !tbaa !457
  br i1 %15, label %25, label %26, !dbg !3111

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3112, !tbaa.struct !3114
  br label %26, !dbg !3115

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !3116, !tbaa !586
  %28 = sext i32 %27 to i64, !dbg !3117
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3117
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3118
  %31 = load i64, i64* %5, align 8, !dbg !3119, !tbaa !3023
  call void @llvm.dbg.value(metadata i64 %31, metadata !3085, metadata !DIExpression()), !dbg !3101
  %32 = sub nsw i64 %31, %28, !dbg !3120
  %33 = shl i64 %32, 4, !dbg !3121
  call void @llvm.dbg.value(metadata i8* %30, metadata !2508, metadata !DIExpression()) #35, !dbg !3122
  call void @llvm.dbg.value(metadata i32 0, metadata !2511, metadata !DIExpression()) #35, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %33, metadata !2512, metadata !DIExpression()) #35, !dbg !3122
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #35, !dbg !3124
  %34 = load i64, i64* %5, align 8, !dbg !3125, !tbaa !3023
  call void @llvm.dbg.value(metadata i64 %34, metadata !3085, metadata !DIExpression()), !dbg !3101
  %35 = trunc i64 %34 to i32, !dbg !3125
  store i32 %35, i32* @nslots, align 4, !dbg !3126, !tbaa !586
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #35, !dbg !3127
  br label %36, !dbg !3128

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !3091
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !3080, metadata !DIExpression()), !dbg !3091
  %38 = zext i32 %0 to i64, !dbg !3129
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !3130
  %40 = load i64, i64* %39, align 8, !dbg !3130, !tbaa !3051
  call void @llvm.dbg.value(metadata i64 %40, metadata !3086, metadata !DIExpression()), !dbg !3131
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !3132
  %42 = load i8*, i8** %41, align 8, !dbg !3132, !tbaa !3039
  call void @llvm.dbg.value(metadata i8* %42, metadata !3088, metadata !DIExpression()), !dbg !3131
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3133
  %44 = load i32, i32* %43, align 4, !dbg !3133, !tbaa !2356
  %45 = or i32 %44, 1, !dbg !3134
  call void @llvm.dbg.value(metadata i32 %45, metadata !3089, metadata !DIExpression()), !dbg !3131
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3135
  %47 = load i32, i32* %46, align 8, !dbg !3135, !tbaa !2305
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3136
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3137
  %50 = load i8*, i8** %49, align 8, !dbg !3137, !tbaa !2378
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3138
  %52 = load i8*, i8** %51, align 8, !dbg !3138, !tbaa !2381
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %53, metadata !3090, metadata !DIExpression()), !dbg !3131
  %54 = icmp ugt i64 %40, %53, !dbg !3140
  br i1 %54, label %65, label %55, !dbg !3142

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !3143
  call void @llvm.dbg.value(metadata i64 %56, metadata !3086, metadata !DIExpression()), !dbg !3131
  store i64 %56, i64* %39, align 8, !dbg !3145, !tbaa !3051
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3146
  br i1 %57, label %59, label %58, !dbg !3148

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #35, !dbg !3149
  br label %59, !dbg !3149

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #43, !dbg !3150
  call void @llvm.dbg.value(metadata i8* %60, metadata !3088, metadata !DIExpression()), !dbg !3131
  store i8* %60, i8** %41, align 8, !dbg !3151, !tbaa !3039
  %61 = load i32, i32* %46, align 8, !dbg !3152, !tbaa !2305
  %62 = load i8*, i8** %49, align 8, !dbg !3153, !tbaa !2378
  %63 = load i8*, i8** %51, align 8, !dbg !3154, !tbaa !2381
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !3155
  br label %65, !dbg !3156

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !3131
  call void @llvm.dbg.value(metadata i8* %66, metadata !3088, metadata !DIExpression()), !dbg !3131
  store i32 %7, i32* %6, align 4, !dbg !3157, !tbaa !586
  ret i8* %66, !dbg !3158
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3159 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3163, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i8* %1, metadata !3164, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i64 %2, metadata !3165, metadata !DIExpression()), !dbg !3166
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3167
  ret i8* %4, !dbg !3168
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !3169 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3171, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i32 0, metadata !3066, metadata !DIExpression()) #35, !dbg !3173
  call void @llvm.dbg.value(metadata i8* %0, metadata !3067, metadata !DIExpression()) #35, !dbg !3173
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !3175
  ret i8* %2, !dbg !3176
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3177 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3181, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i64 %1, metadata !3182, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i32 0, metadata !3163, metadata !DIExpression()) #35, !dbg !3184
  call void @llvm.dbg.value(metadata i8* %0, metadata !3164, metadata !DIExpression()) #35, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %1, metadata !3165, metadata !DIExpression()) #35, !dbg !3184
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !3186
  ret i8* %3, !dbg !3187
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3188 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3192, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %1, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8* %2, metadata !3194, metadata !DIExpression()), !dbg !3196
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3197
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3197
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3195, metadata !DIExpression()), !dbg !3198
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3199), !dbg !3202
  call void @llvm.dbg.value(metadata i32 %1, metadata !3203, metadata !DIExpression()) #35, !dbg !3209
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3208, metadata !DIExpression()) #35, !dbg !3211
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !3211, !alias.scope !3199
  %6 = icmp eq i32 %1, 10, !dbg !3212
  br i1 %6, label %7, label %8, !dbg !3214

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3215, !noalias !3199
  unreachable, !dbg !3215

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3216
  store i32 %1, i32* %9, align 8, !dbg !3217, !tbaa !2305, !alias.scope !3199
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3218
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3219
  ret i8* %10, !dbg !3220
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3221 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3225, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 %1, metadata !3226, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8* %2, metadata !3227, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %3, metadata !3228, metadata !DIExpression()), !dbg !3230
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3231
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3231
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3229, metadata !DIExpression()), !dbg !3232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3233), !dbg !3236
  call void @llvm.dbg.value(metadata i32 %1, metadata !3203, metadata !DIExpression()) #35, !dbg !3237
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3208, metadata !DIExpression()) #35, !dbg !3239
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #35, !dbg !3239, !alias.scope !3233
  %7 = icmp eq i32 %1, 10, !dbg !3240
  br i1 %7, label %8, label %9, !dbg !3241

8:                                                ; preds = %4
  tail call void @abort() #37, !dbg !3242, !noalias !3233
  unreachable, !dbg !3242

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3243
  store i32 %1, i32* %10, align 8, !dbg !3244, !tbaa !2305, !alias.scope !3233
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !3245
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3246
  ret i8* %11, !dbg !3247
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3248 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3252, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8* %1, metadata !3253, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 0, metadata !3192, metadata !DIExpression()) #35, !dbg !3255
  call void @llvm.dbg.value(metadata i32 %0, metadata !3193, metadata !DIExpression()) #35, !dbg !3255
  call void @llvm.dbg.value(metadata i8* %1, metadata !3194, metadata !DIExpression()) #35, !dbg !3255
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3257
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3257
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3195, metadata !DIExpression()) #35, !dbg !3258
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3259) #35, !dbg !3262
  call void @llvm.dbg.value(metadata i32 %0, metadata !3203, metadata !DIExpression()) #35, !dbg !3263
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3208, metadata !DIExpression()) #35, !dbg !3265
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #35, !dbg !3265, !alias.scope !3259
  %5 = icmp eq i32 %0, 10, !dbg !3266
  br i1 %5, label %6, label %7, !dbg !3267

6:                                                ; preds = %2
  tail call void @abort() #37, !dbg !3268, !noalias !3259
  unreachable, !dbg !3268

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3269
  store i32 %0, i32* %8, align 8, !dbg !3270, !tbaa !2305, !alias.scope !3259
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3271
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3272
  ret i8* %9, !dbg !3273
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3274 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3278, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8* %1, metadata !3279, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %2, metadata !3280, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 0, metadata !3225, metadata !DIExpression()) #35, !dbg !3282
  call void @llvm.dbg.value(metadata i32 %0, metadata !3226, metadata !DIExpression()) #35, !dbg !3282
  call void @llvm.dbg.value(metadata i8* %1, metadata !3227, metadata !DIExpression()) #35, !dbg !3282
  call void @llvm.dbg.value(metadata i64 %2, metadata !3228, metadata !DIExpression()) #35, !dbg !3282
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3284
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3284
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3229, metadata !DIExpression()) #35, !dbg !3285
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3286) #35, !dbg !3289
  call void @llvm.dbg.value(metadata i32 %0, metadata !3203, metadata !DIExpression()) #35, !dbg !3290
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3208, metadata !DIExpression()) #35, !dbg !3292
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !3292, !alias.scope !3286
  %6 = icmp eq i32 %0, 10, !dbg !3293
  br i1 %6, label %7, label %8, !dbg !3294

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3295, !noalias !3286
  unreachable, !dbg !3295

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3296
  store i32 %0, i32* %9, align 8, !dbg !3297, !tbaa !2305, !alias.scope !3286
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3298
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3299
  ret i8* %10, !dbg !3300
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3301 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3305, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i64 %1, metadata !3306, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i8 %2, metadata !3307, metadata !DIExpression()), !dbg !3309
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3310
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3310
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3308, metadata !DIExpression()), !dbg !3311
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3312, !tbaa.struct !3313
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2323, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i8 %2, metadata !2324, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 1, metadata !2325, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i8 %2, metadata !2326, metadata !DIExpression()), !dbg !3314
  %6 = lshr i8 %2, 5, !dbg !3316
  %7 = zext i8 %6 to i64, !dbg !3316
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3317
  call void @llvm.dbg.value(metadata i32* %8, metadata !2327, metadata !DIExpression()), !dbg !3314
  %9 = and i8 %2, 31, !dbg !3318
  %10 = zext i8 %9 to i32, !dbg !3318
  call void @llvm.dbg.value(metadata i32 %10, metadata !2329, metadata !DIExpression()), !dbg !3314
  %11 = load i32, i32* %8, align 4, !dbg !3319, !tbaa !586
  %12 = lshr i32 %11, %10, !dbg !3320
  %13 = and i32 %12, 1, !dbg !3321
  call void @llvm.dbg.value(metadata i32 %13, metadata !2330, metadata !DIExpression()), !dbg !3314
  %14 = xor i32 %13, 1, !dbg !3322
  %15 = shl i32 %14, %10, !dbg !3323
  %16 = xor i32 %15, %11, !dbg !3324
  store i32 %16, i32* %8, align 4, !dbg !3324, !tbaa !586
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3325
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3326
  ret i8* %17, !dbg !3327
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3328 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3332, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i8 %1, metadata !3333, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i8* %0, metadata !3305, metadata !DIExpression()) #35, !dbg !3335
  call void @llvm.dbg.value(metadata i64 -1, metadata !3306, metadata !DIExpression()) #35, !dbg !3335
  call void @llvm.dbg.value(metadata i8 %1, metadata !3307, metadata !DIExpression()) #35, !dbg !3335
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3337
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3337
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3308, metadata !DIExpression()) #35, !dbg !3338
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3339, !tbaa.struct !3313
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2323, metadata !DIExpression()) #35, !dbg !3340
  call void @llvm.dbg.value(metadata i8 %1, metadata !2324, metadata !DIExpression()) #35, !dbg !3340
  call void @llvm.dbg.value(metadata i32 1, metadata !2325, metadata !DIExpression()) #35, !dbg !3340
  call void @llvm.dbg.value(metadata i8 %1, metadata !2326, metadata !DIExpression()) #35, !dbg !3340
  %5 = lshr i8 %1, 5, !dbg !3342
  %6 = zext i8 %5 to i64, !dbg !3342
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3343
  call void @llvm.dbg.value(metadata i32* %7, metadata !2327, metadata !DIExpression()) #35, !dbg !3340
  %8 = and i8 %1, 31, !dbg !3344
  %9 = zext i8 %8 to i32, !dbg !3344
  call void @llvm.dbg.value(metadata i32 %9, metadata !2329, metadata !DIExpression()) #35, !dbg !3340
  %10 = load i32, i32* %7, align 4, !dbg !3345, !tbaa !586
  %11 = lshr i32 %10, %9, !dbg !3346
  %12 = and i32 %11, 1, !dbg !3347
  call void @llvm.dbg.value(metadata i32 %12, metadata !2330, metadata !DIExpression()) #35, !dbg !3340
  %13 = xor i32 %12, 1, !dbg !3348
  %14 = shl i32 %13, %9, !dbg !3349
  %15 = xor i32 %14, %10, !dbg !3350
  store i32 %15, i32* %7, align 4, !dbg !3350, !tbaa !586
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3351
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3352
  ret i8* %16, !dbg !3353
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3354 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3356, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i8* %0, metadata !3332, metadata !DIExpression()) #35, !dbg !3358
  call void @llvm.dbg.value(metadata i8 58, metadata !3333, metadata !DIExpression()) #35, !dbg !3358
  call void @llvm.dbg.value(metadata i8* %0, metadata !3305, metadata !DIExpression()) #35, !dbg !3360
  call void @llvm.dbg.value(metadata i64 -1, metadata !3306, metadata !DIExpression()) #35, !dbg !3360
  call void @llvm.dbg.value(metadata i8 58, metadata !3307, metadata !DIExpression()) #35, !dbg !3360
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3362
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3362
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3308, metadata !DIExpression()) #35, !dbg !3363
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3364, !tbaa.struct !3313
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2323, metadata !DIExpression()) #35, !dbg !3365
  call void @llvm.dbg.value(metadata i8 58, metadata !2324, metadata !DIExpression()) #35, !dbg !3365
  call void @llvm.dbg.value(metadata i32 1, metadata !2325, metadata !DIExpression()) #35, !dbg !3365
  call void @llvm.dbg.value(metadata i8 58, metadata !2326, metadata !DIExpression()) #35, !dbg !3365
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3367
  call void @llvm.dbg.value(metadata i32* %4, metadata !2327, metadata !DIExpression()) #35, !dbg !3365
  call void @llvm.dbg.value(metadata i32 26, metadata !2329, metadata !DIExpression()) #35, !dbg !3365
  %5 = load i32, i32* %4, align 4, !dbg !3368, !tbaa !586
  call void @llvm.dbg.value(metadata i32 %5, metadata !2330, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3365
  %6 = or i32 %5, 67108864, !dbg !3369
  store i32 %6, i32* %4, align 4, !dbg !3369, !tbaa !586
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #35, !dbg !3370
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3371
  ret i8* %7, !dbg !3372
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3373 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3375, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i64 %1, metadata !3376, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %0, metadata !3305, metadata !DIExpression()) #35, !dbg !3378
  call void @llvm.dbg.value(metadata i64 %1, metadata !3306, metadata !DIExpression()) #35, !dbg !3378
  call void @llvm.dbg.value(metadata i8 58, metadata !3307, metadata !DIExpression()) #35, !dbg !3378
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3380
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3380
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3308, metadata !DIExpression()) #35, !dbg !3381
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3382, !tbaa.struct !3313
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2323, metadata !DIExpression()) #35, !dbg !3383
  call void @llvm.dbg.value(metadata i8 58, metadata !2324, metadata !DIExpression()) #35, !dbg !3383
  call void @llvm.dbg.value(metadata i32 1, metadata !2325, metadata !DIExpression()) #35, !dbg !3383
  call void @llvm.dbg.value(metadata i8 58, metadata !2326, metadata !DIExpression()) #35, !dbg !3383
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3385
  call void @llvm.dbg.value(metadata i32* %5, metadata !2327, metadata !DIExpression()) #35, !dbg !3383
  call void @llvm.dbg.value(metadata i32 26, metadata !2329, metadata !DIExpression()) #35, !dbg !3383
  %6 = load i32, i32* %5, align 4, !dbg !3386, !tbaa !586
  call void @llvm.dbg.value(metadata i32 %6, metadata !2330, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3383
  %7 = or i32 %6, 67108864, !dbg !3387
  store i32 %7, i32* %5, align 4, !dbg !3387, !tbaa !586
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3388
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3389
  ret i8* %8, !dbg !3390
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3391 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3393, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 %1, metadata !3394, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i8* %2, metadata !3395, metadata !DIExpression()), !dbg !3397
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3398
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3398
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3396, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i32 %1, metadata !3203, metadata !DIExpression()) #35, !dbg !3400
  call void @llvm.dbg.value(metadata i32 0, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3400
  %6 = icmp eq i32 %1, 10, !dbg !3402
  br i1 %6, label %7, label %8, !dbg !3403

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3404, !noalias !3405
  unreachable, !dbg !3404

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3400
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3408
  store i32 %1, i32* %9, align 8, !dbg !3408, !tbaa.struct !3313
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3408
  %11 = bitcast i32* %10 to i8*, !dbg !3408
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3408
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2323, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i8 58, metadata !2324, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i32 1, metadata !2325, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i8 58, metadata !2326, metadata !DIExpression()), !dbg !3409
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3411
  call void @llvm.dbg.value(metadata i32* %12, metadata !2327, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i32 26, metadata !2329, metadata !DIExpression()), !dbg !3409
  %13 = load i32, i32* %12, align 4, !dbg !3412, !tbaa !586
  call void @llvm.dbg.value(metadata i32 %13, metadata !2330, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3409
  %14 = or i32 %13, 67108864, !dbg !3413
  store i32 %14, i32* %12, align 4, !dbg !3413, !tbaa !586
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3414
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3415
  ret i8* %15, !dbg !3416
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3417 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3421, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i8* %1, metadata !3422, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i8* %2, metadata !3423, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i8* %3, metadata !3424, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i32 %0, metadata !3426, metadata !DIExpression()) #35, !dbg !3436
  call void @llvm.dbg.value(metadata i8* %1, metadata !3431, metadata !DIExpression()) #35, !dbg !3436
  call void @llvm.dbg.value(metadata i8* %2, metadata !3432, metadata !DIExpression()) #35, !dbg !3436
  call void @llvm.dbg.value(metadata i8* %3, metadata !3433, metadata !DIExpression()) #35, !dbg !3436
  call void @llvm.dbg.value(metadata i64 -1, metadata !3434, metadata !DIExpression()) #35, !dbg !3436
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3438
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3438
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3435, metadata !DIExpression()) #35, !dbg !3439
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3440, !tbaa.struct !3313
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2363, metadata !DIExpression()) #35, !dbg !3441
  call void @llvm.dbg.value(metadata i8* %1, metadata !2364, metadata !DIExpression()) #35, !dbg !3441
  call void @llvm.dbg.value(metadata i8* %2, metadata !2365, metadata !DIExpression()) #35, !dbg !3441
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2363, metadata !DIExpression()) #35, !dbg !3441
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3443
  store i32 10, i32* %7, align 8, !dbg !3444, !tbaa !2305
  %8 = icmp ne i8* %1, null, !dbg !3445
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3446
  br i1 %10, label %12, label %11, !dbg !3446

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3447
  unreachable, !dbg !3447

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3448
  store i8* %1, i8** %13, align 8, !dbg !3449, !tbaa !2378
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3450
  store i8* %2, i8** %14, align 8, !dbg !3451, !tbaa !2381
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3452
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3453
  ret i8* %15, !dbg !3454
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3427 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3426, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i8* %1, metadata !3431, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i8* %2, metadata !3432, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i8* %3, metadata !3433, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i64 %4, metadata !3434, metadata !DIExpression()), !dbg !3455
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3456
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3456
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3435, metadata !DIExpression()), !dbg !3457
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3458, !tbaa.struct !3313
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2363, metadata !DIExpression()) #35, !dbg !3459
  call void @llvm.dbg.value(metadata i8* %1, metadata !2364, metadata !DIExpression()) #35, !dbg !3459
  call void @llvm.dbg.value(metadata i8* %2, metadata !2365, metadata !DIExpression()) #35, !dbg !3459
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2363, metadata !DIExpression()) #35, !dbg !3459
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3461
  store i32 10, i32* %8, align 8, !dbg !3462, !tbaa !2305
  %9 = icmp ne i8* %1, null, !dbg !3463
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3464
  br i1 %11, label %13, label %12, !dbg !3464

12:                                               ; preds = %5
  tail call void @abort() #37, !dbg !3465
  unreachable, !dbg !3465

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3466
  store i8* %1, i8** %14, align 8, !dbg !3467, !tbaa !2378
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3468
  store i8* %2, i8** %15, align 8, !dbg !3469, !tbaa !2381
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3470
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3471
  ret i8* %16, !dbg !3472
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3473 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3477, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8* %1, metadata !3478, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8* %2, metadata !3479, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 0, metadata !3421, metadata !DIExpression()) #35, !dbg !3481
  call void @llvm.dbg.value(metadata i8* %0, metadata !3422, metadata !DIExpression()) #35, !dbg !3481
  call void @llvm.dbg.value(metadata i8* %1, metadata !3423, metadata !DIExpression()) #35, !dbg !3481
  call void @llvm.dbg.value(metadata i8* %2, metadata !3424, metadata !DIExpression()) #35, !dbg !3481
  call void @llvm.dbg.value(metadata i32 0, metadata !3426, metadata !DIExpression()) #35, !dbg !3483
  call void @llvm.dbg.value(metadata i8* %0, metadata !3431, metadata !DIExpression()) #35, !dbg !3483
  call void @llvm.dbg.value(metadata i8* %1, metadata !3432, metadata !DIExpression()) #35, !dbg !3483
  call void @llvm.dbg.value(metadata i8* %2, metadata !3433, metadata !DIExpression()) #35, !dbg !3483
  call void @llvm.dbg.value(metadata i64 -1, metadata !3434, metadata !DIExpression()) #35, !dbg !3483
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3485
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3485
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3435, metadata !DIExpression()) #35, !dbg !3486
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3487, !tbaa.struct !3313
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2363, metadata !DIExpression()) #35, !dbg !3488
  call void @llvm.dbg.value(metadata i8* %0, metadata !2364, metadata !DIExpression()) #35, !dbg !3488
  call void @llvm.dbg.value(metadata i8* %1, metadata !2365, metadata !DIExpression()) #35, !dbg !3488
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2363, metadata !DIExpression()) #35, !dbg !3488
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3490
  store i32 10, i32* %6, align 8, !dbg !3491, !tbaa !2305
  %7 = icmp ne i8* %0, null, !dbg !3492
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3493
  br i1 %9, label %11, label %10, !dbg !3493

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !3494
  unreachable, !dbg !3494

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3495
  store i8* %0, i8** %12, align 8, !dbg !3496, !tbaa !2378
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3497
  store i8* %1, i8** %13, align 8, !dbg !3498, !tbaa !2381
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3499
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3500
  ret i8* %14, !dbg !3501
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3502 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3506, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i8* %1, metadata !3507, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i8* %2, metadata !3508, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i64 %3, metadata !3509, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i32 0, metadata !3426, metadata !DIExpression()) #35, !dbg !3511
  call void @llvm.dbg.value(metadata i8* %0, metadata !3431, metadata !DIExpression()) #35, !dbg !3511
  call void @llvm.dbg.value(metadata i8* %1, metadata !3432, metadata !DIExpression()) #35, !dbg !3511
  call void @llvm.dbg.value(metadata i8* %2, metadata !3433, metadata !DIExpression()) #35, !dbg !3511
  call void @llvm.dbg.value(metadata i64 %3, metadata !3434, metadata !DIExpression()) #35, !dbg !3511
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3513
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3513
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3435, metadata !DIExpression()) #35, !dbg !3514
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3515, !tbaa.struct !3313
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2363, metadata !DIExpression()) #35, !dbg !3516
  call void @llvm.dbg.value(metadata i8* %0, metadata !2364, metadata !DIExpression()) #35, !dbg !3516
  call void @llvm.dbg.value(metadata i8* %1, metadata !2365, metadata !DIExpression()) #35, !dbg !3516
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2363, metadata !DIExpression()) #35, !dbg !3516
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3518
  store i32 10, i32* %7, align 8, !dbg !3519, !tbaa !2305
  %8 = icmp ne i8* %0, null, !dbg !3520
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3521
  br i1 %10, label %12, label %11, !dbg !3521

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3522
  unreachable, !dbg !3522

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3523
  store i8* %0, i8** %13, align 8, !dbg !3524, !tbaa !2378
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3525
  store i8* %1, i8** %14, align 8, !dbg !3526, !tbaa !2381
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3527
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3528
  ret i8* %15, !dbg !3529
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3530 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3534, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i8* %1, metadata !3535, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i64 %2, metadata !3536, metadata !DIExpression()), !dbg !3537
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3538
  ret i8* %4, !dbg !3539
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3540 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3544, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %1, metadata !3545, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i32 0, metadata !3534, metadata !DIExpression()) #35, !dbg !3547
  call void @llvm.dbg.value(metadata i8* %0, metadata !3535, metadata !DIExpression()) #35, !dbg !3547
  call void @llvm.dbg.value(metadata i64 %1, metadata !3536, metadata !DIExpression()) #35, !dbg !3547
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3549
  ret i8* %3, !dbg !3550
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3551 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3555, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i8* %1, metadata !3556, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i32 %0, metadata !3534, metadata !DIExpression()) #35, !dbg !3558
  call void @llvm.dbg.value(metadata i8* %1, metadata !3535, metadata !DIExpression()) #35, !dbg !3558
  call void @llvm.dbg.value(metadata i64 -1, metadata !3536, metadata !DIExpression()) #35, !dbg !3558
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3560
  ret i8* %3, !dbg !3561
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3562 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3564, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()) #35, !dbg !3566
  call void @llvm.dbg.value(metadata i8* %0, metadata !3556, metadata !DIExpression()) #35, !dbg !3566
  call void @llvm.dbg.value(metadata i32 0, metadata !3534, metadata !DIExpression()) #35, !dbg !3568
  call void @llvm.dbg.value(metadata i8* %0, metadata !3535, metadata !DIExpression()) #35, !dbg !3568
  call void @llvm.dbg.value(metadata i64 -1, metadata !3536, metadata !DIExpression()) #35, !dbg !3568
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3570
  ret i8* %2, !dbg !3571
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @strintcmp(i8* nocapture noundef nonnull readonly %0, i8* nocapture noundef nonnull readonly %1) local_unnamed_addr #20 !dbg !3572 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3574, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i8* %1, metadata !3575, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i8* %0, metadata !3577, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %1, metadata !3583, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 256, metadata !3584, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 256, metadata !3585, metadata !DIExpression()), !dbg !3591
  %3 = load i8, i8* %0, align 1, !dbg !3593, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %3, metadata !3586, metadata !DIExpression()), !dbg !3591
  %4 = load i8, i8* %1, align 1, !dbg !3594, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %4, metadata !3587, metadata !DIExpression()), !dbg !3591
  %5 = icmp eq i8 %3, 45, !dbg !3595
  br i1 %5, label %6, label %95, !dbg !3597

6:                                                ; preds = %2, %6
  %7 = phi i8* [ %8, %6 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !3577, metadata !DIExpression()), !dbg !3591
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3598
  call void @llvm.dbg.value(metadata i8* %8, metadata !3577, metadata !DIExpression()), !dbg !3591
  %9 = load i8, i8* %8, align 1, !dbg !3600, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %9, metadata !3586, metadata !DIExpression()), !dbg !3591
  %10 = icmp eq i8 %9, 48, !dbg !3601
  br i1 %10, label %6, label %11, !dbg !3602, !llvm.loop !3603

11:                                               ; preds = %6
  %12 = icmp eq i8 %4, 45, !dbg !3606
  br i1 %12, label %30, label %13, !dbg !3608

13:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 %9, metadata !3586, metadata !DIExpression()), !dbg !3591
  %14 = zext i8 %9 to i32, !dbg !3609
  call void @llvm.dbg.value(metadata i32 %14, metadata !3612, metadata !DIExpression()), !dbg !3615
  %15 = add nsw i32 %14, -48, !dbg !3617
  %16 = icmp ult i32 %15, 10, !dbg !3617
  br i1 %16, label %197, label %17, !dbg !3618

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 %4, metadata !3587, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %1, metadata !3583, metadata !DIExpression()), !dbg !3591
  %18 = icmp eq i8 %4, 48, !dbg !3619
  br i1 %18, label %19, label %24, !dbg !3620

19:                                               ; preds = %17, %19
  %20 = phi i8* [ %21, %19 ], [ %1, %17 ]
  call void @llvm.dbg.value(metadata i8* %20, metadata !3583, metadata !DIExpression()), !dbg !3591
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !3621
  call void @llvm.dbg.value(metadata i8* %21, metadata !3583, metadata !DIExpression()), !dbg !3591
  %22 = load i8, i8* %21, align 1, !dbg !3622, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %22, metadata !3587, metadata !DIExpression()), !dbg !3591
  %23 = icmp eq i8 %22, 48, !dbg !3619
  br i1 %23, label %19, label %24, !dbg !3620, !llvm.loop !3623

24:                                               ; preds = %19, %17
  %25 = phi i8 [ %4, %17 ], [ %22, %19 ], !dbg !3591
  call void @llvm.dbg.value(metadata i8 %25, metadata !3587, metadata !DIExpression()), !dbg !3591
  %26 = zext i8 %25 to i32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 %26, metadata !3612, metadata !DIExpression()), !dbg !3626
  %27 = add nsw i32 %26, -48, !dbg !3628
  %28 = icmp ult i32 %27, 10, !dbg !3628
  %29 = sext i1 %28 to i32, !dbg !3629
  br label %197, !dbg !3630

30:                                               ; preds = %11, %30
  %31 = phi i8* [ %32, %30 ], [ %1, %11 ]
  call void @llvm.dbg.value(metadata i8* %31, metadata !3583, metadata !DIExpression()), !dbg !3591
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !3631
  call void @llvm.dbg.value(metadata i8* %32, metadata !3583, metadata !DIExpression()), !dbg !3591
  %33 = load i8, i8* %32, align 1, !dbg !3632, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %33, metadata !3587, metadata !DIExpression()), !dbg !3591
  %34 = icmp eq i8 %33, 48, !dbg !3633
  br i1 %34, label %30, label %35, !dbg !3634, !llvm.loop !3635

35:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8 %33, metadata !3587, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8 %9, metadata !3586, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %8, metadata !3577, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %32, metadata !3583, metadata !DIExpression()), !dbg !3591
  %36 = zext i8 %9 to i32, !dbg !3638
  %37 = icmp eq i8 %33, %9, !dbg !3639
  %38 = add nsw i32 %36, -48
  %39 = icmp ult i32 %38, 10
  %40 = select i1 %37, i1 %39, i1 false, !dbg !3640
  call void @llvm.dbg.value(metadata i32 %36, metadata !3612, metadata !DIExpression()), !dbg !3641
  br i1 %40, label %41, label %55, !dbg !3640

41:                                               ; preds = %35, %41
  %42 = phi i8* [ %44, %41 ], [ %8, %35 ]
  %43 = phi i8* [ %46, %41 ], [ %32, %35 ]
  call void @llvm.dbg.value(metadata i8* %43, metadata !3583, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %42, metadata !3577, metadata !DIExpression()), !dbg !3591
  %44 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !3643
  call void @llvm.dbg.value(metadata i8* %44, metadata !3577, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8 undef, metadata !3586, metadata !DIExpression()), !dbg !3591
  %45 = load i8, i8* %44, align 1, !dbg !3645, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %45, metadata !3586, metadata !DIExpression()), !dbg !3591
  %46 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !3646
  call void @llvm.dbg.value(metadata i8* %46, metadata !3583, metadata !DIExpression()), !dbg !3591
  %47 = load i8, i8* %46, align 1, !dbg !3647, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %47, metadata !3587, metadata !DIExpression()), !dbg !3591
  %48 = zext i8 %45 to i32, !dbg !3638
  %49 = icmp eq i8 %47, %45, !dbg !3639
  %50 = add nsw i32 %48, -48
  %51 = icmp ult i32 %50, 10
  %52 = select i1 %49, i1 %51, i1 false, !dbg !3640
  call void @llvm.dbg.value(metadata i32 %48, metadata !3612, metadata !DIExpression()), !dbg !3641
  br i1 %52, label %41, label %53, !dbg !3640

53:                                               ; preds = %41
  %54 = zext i8 %45 to i32, !dbg !3638
  br label %55, !dbg !3648

55:                                               ; preds = %53, %35
  %56 = phi i32 [ %38, %35 ], [ %50, %53 ], !dbg !3649
  %57 = phi i8* [ %32, %35 ], [ %46, %53 ], !dbg !3653
  %58 = phi i8* [ %8, %35 ], [ %44, %53 ], !dbg !3653
  %59 = phi i8 [ %33, %35 ], [ %47, %53 ], !dbg !3653
  %60 = phi i32 [ %36, %35 ], [ %54, %53 ], !dbg !3638
  %61 = zext i8 %59 to i32, !dbg !3648
  %62 = sub nsw i32 %61, %60, !dbg !3654
  call void @llvm.dbg.value(metadata i32 %62, metadata !3588, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i64 0, metadata !3589, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8 undef, metadata !3586, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %58, metadata !3577, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 undef, metadata !3612, metadata !DIExpression()), !dbg !3655
  %63 = icmp ult i32 %56, 10, !dbg !3649
  br i1 %63, label %68, label %64, !dbg !3656

64:                                               ; preds = %68, %55
  %65 = phi i64 [ 0, %55 ], [ %73, %68 ], !dbg !3657
  call void @llvm.dbg.value(metadata i64 0, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8 %59, metadata !3587, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %57, metadata !3583, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 %61, metadata !3612, metadata !DIExpression()), !dbg !3658
  %66 = add nsw i32 %61, -48, !dbg !3662
  %67 = icmp ult i32 %66, 10, !dbg !3662
  br i1 %67, label %77, label %86, !dbg !3663

68:                                               ; preds = %55, %68
  %69 = phi i64 [ %73, %68 ], [ 0, %55 ]
  %70 = phi i8* [ %71, %68 ], [ %58, %55 ]
  call void @llvm.dbg.value(metadata i64 %69, metadata !3589, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %70, metadata !3577, metadata !DIExpression()), !dbg !3591
  %71 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !3664
  call void @llvm.dbg.value(metadata i8* %71, metadata !3577, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8 undef, metadata !3586, metadata !DIExpression()), !dbg !3591
  %72 = load i8, i8* %71, align 1, !dbg !3665, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %72, metadata !3586, metadata !DIExpression()), !dbg !3591
  %73 = add i64 %69, 1, !dbg !3666
  call void @llvm.dbg.value(metadata i64 %73, metadata !3589, metadata !DIExpression()), !dbg !3591
  %74 = zext i8 %72 to i32, !dbg !3667
  call void @llvm.dbg.value(metadata i32 %74, metadata !3612, metadata !DIExpression()), !dbg !3655
  %75 = add nsw i32 %74, -48, !dbg !3649
  %76 = icmp ult i32 %75, 10, !dbg !3649
  br i1 %76, label %68, label %64, !dbg !3656, !llvm.loop !3668

77:                                               ; preds = %64, %77
  %78 = phi i64 [ %82, %77 ], [ 0, %64 ]
  %79 = phi i8* [ %80, %77 ], [ %57, %64 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %79, metadata !3583, metadata !DIExpression()), !dbg !3591
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !3670
  call void @llvm.dbg.value(metadata i8* %80, metadata !3583, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8 undef, metadata !3587, metadata !DIExpression()), !dbg !3591
  %81 = load i8, i8* %80, align 1, !dbg !3671, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %81, metadata !3587, metadata !DIExpression()), !dbg !3591
  %82 = add i64 %78, 1, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %82, metadata !3590, metadata !DIExpression()), !dbg !3591
  %83 = zext i8 %81 to i32, !dbg !3673
  call void @llvm.dbg.value(metadata i32 %83, metadata !3612, metadata !DIExpression()), !dbg !3658
  %84 = add nsw i32 %83, -48, !dbg !3662
  %85 = icmp ult i32 %84, 10, !dbg !3662
  br i1 %85, label %77, label %86, !dbg !3663, !llvm.loop !3674

86:                                               ; preds = %77, %64
  %87 = phi i64 [ 0, %64 ], [ %82, %77 ], !dbg !3676
  %88 = icmp eq i64 %65, %87, !dbg !3677
  br i1 %88, label %92, label %89, !dbg !3679

89:                                               ; preds = %86
  %90 = icmp ult i64 %65, %87, !dbg !3680
  %91 = select i1 %90, i32 1, i32 -1, !dbg !3681
  br label %197, !dbg !3682

92:                                               ; preds = %86
  %93 = icmp eq i64 %65, 0, !dbg !3683
  %94 = select i1 %93, i32 0, i32 %62, !dbg !3653
  br label %197, !dbg !3653

95:                                               ; preds = %2
  %96 = icmp eq i8 %4, 45, !dbg !3685
  br i1 %96, label %99, label %97, !dbg !3687

97:                                               ; preds = %95
  call void @llvm.dbg.value(metadata i8 %3, metadata !3586, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %0, metadata !3577, metadata !DIExpression()), !dbg !3591
  %98 = icmp eq i8 %3, 48, !dbg !3688
  br i1 %98, label %125, label %121, !dbg !3690

99:                                               ; preds = %95, %99
  %100 = phi i8* [ %101, %99 ], [ %1, %95 ]
  call void @llvm.dbg.value(metadata i8* %100, metadata !3583, metadata !DIExpression()), !dbg !3591
  %101 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !3691
  call void @llvm.dbg.value(metadata i8* %101, metadata !3583, metadata !DIExpression()), !dbg !3591
  %102 = load i8, i8* %101, align 1, !dbg !3693, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %102, metadata !3587, metadata !DIExpression()), !dbg !3591
  %103 = icmp eq i8 %102, 48, !dbg !3694
  br i1 %103, label %99, label %104, !dbg !3695, !llvm.loop !3696

104:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i8 %102, metadata !3587, metadata !DIExpression()), !dbg !3591
  %105 = zext i8 %102 to i32, !dbg !3699
  call void @llvm.dbg.value(metadata i32 %105, metadata !3612, metadata !DIExpression()), !dbg !3701
  %106 = add nsw i32 %105, -48, !dbg !3703
  %107 = icmp ult i32 %106, 10, !dbg !3703
  br i1 %107, label %197, label %108, !dbg !3704

108:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i8 %3, metadata !3586, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %0, metadata !3577, metadata !DIExpression()), !dbg !3591
  %109 = icmp eq i8 %3, 48, !dbg !3705
  br i1 %109, label %110, label %115, !dbg !3706

110:                                              ; preds = %108, %110
  %111 = phi i8* [ %112, %110 ], [ %0, %108 ]
  call void @llvm.dbg.value(metadata i8* %111, metadata !3577, metadata !DIExpression()), !dbg !3591
  %112 = getelementptr inbounds i8, i8* %111, i64 1, !dbg !3707
  call void @llvm.dbg.value(metadata i8* %112, metadata !3577, metadata !DIExpression()), !dbg !3591
  %113 = load i8, i8* %112, align 1, !dbg !3708, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %113, metadata !3586, metadata !DIExpression()), !dbg !3591
  %114 = icmp eq i8 %113, 48, !dbg !3705
  br i1 %114, label %110, label %115, !dbg !3706, !llvm.loop !3709

115:                                              ; preds = %110, %108
  %116 = phi i8 [ %3, %108 ], [ %113, %110 ], !dbg !3591
  call void @llvm.dbg.value(metadata i8 %116, metadata !3586, metadata !DIExpression()), !dbg !3591
  %117 = zext i8 %116 to i32, !dbg !3711
  call void @llvm.dbg.value(metadata i32 %117, metadata !3612, metadata !DIExpression()), !dbg !3712
  %118 = add nsw i32 %117, -48, !dbg !3714
  %119 = icmp ult i32 %118, 10, !dbg !3714
  %120 = zext i1 %119 to i32, !dbg !3715
  br label %197, !dbg !3716

121:                                              ; preds = %125, %97
  %122 = phi i8* [ %0, %97 ], [ %127, %125 ]
  %123 = phi i8 [ %3, %97 ], [ %128, %125 ], !dbg !3591
  call void @llvm.dbg.value(metadata i8 %4, metadata !3587, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %1, metadata !3583, metadata !DIExpression()), !dbg !3591
  %124 = icmp eq i8 %4, 48, !dbg !3717
  br i1 %124, label %138, label %130, !dbg !3718

125:                                              ; preds = %97, %125
  %126 = phi i8* [ %127, %125 ], [ %0, %97 ]
  call void @llvm.dbg.value(metadata i8* %126, metadata !3577, metadata !DIExpression()), !dbg !3591
  %127 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !3719
  call void @llvm.dbg.value(metadata i8* %127, metadata !3577, metadata !DIExpression()), !dbg !3591
  %128 = load i8, i8* %127, align 1, !dbg !3720, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %128, metadata !3586, metadata !DIExpression()), !dbg !3591
  %129 = icmp eq i8 %128, 48, !dbg !3688
  br i1 %129, label %125, label %121, !dbg !3690, !llvm.loop !3721

130:                                              ; preds = %138, %121
  %131 = phi i8* [ %1, %121 ], [ %140, %138 ]
  %132 = phi i8 [ %4, %121 ], [ %141, %138 ], !dbg !3591
  call void @llvm.dbg.value(metadata i8 %132, metadata !3587, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8 %123, metadata !3586, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %122, metadata !3577, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %131, metadata !3583, metadata !DIExpression()), !dbg !3591
  %133 = zext i8 %123 to i32, !dbg !3723
  %134 = icmp eq i8 %123, %132, !dbg !3724
  %135 = add nsw i32 %133, -48
  %136 = icmp ult i32 %135, 10
  %137 = select i1 %134, i1 %136, i1 false, !dbg !3725
  call void @llvm.dbg.value(metadata i32 %133, metadata !3612, metadata !DIExpression()), !dbg !3726
  br i1 %137, label %143, label %157, !dbg !3725

138:                                              ; preds = %121, %138
  %139 = phi i8* [ %140, %138 ], [ %1, %121 ]
  call void @llvm.dbg.value(metadata i8* %139, metadata !3583, metadata !DIExpression()), !dbg !3591
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !3728
  call void @llvm.dbg.value(metadata i8* %140, metadata !3583, metadata !DIExpression()), !dbg !3591
  %141 = load i8, i8* %140, align 1, !dbg !3729, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %141, metadata !3587, metadata !DIExpression()), !dbg !3591
  %142 = icmp eq i8 %141, 48, !dbg !3717
  br i1 %142, label %138, label %130, !dbg !3718, !llvm.loop !3730

143:                                              ; preds = %130, %143
  %144 = phi i8* [ %146, %143 ], [ %122, %130 ]
  %145 = phi i8* [ %148, %143 ], [ %131, %130 ]
  call void @llvm.dbg.value(metadata i8* %145, metadata !3583, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %144, metadata !3577, metadata !DIExpression()), !dbg !3591
  %146 = getelementptr inbounds i8, i8* %144, i64 1, !dbg !3732
  call void @llvm.dbg.value(metadata i8* %146, metadata !3577, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8 undef, metadata !3586, metadata !DIExpression()), !dbg !3591
  %147 = load i8, i8* %146, align 1, !dbg !3734, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %147, metadata !3586, metadata !DIExpression()), !dbg !3591
  %148 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3735
  call void @llvm.dbg.value(metadata i8* %148, metadata !3583, metadata !DIExpression()), !dbg !3591
  %149 = load i8, i8* %148, align 1, !dbg !3736, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %149, metadata !3587, metadata !DIExpression()), !dbg !3591
  %150 = zext i8 %147 to i32, !dbg !3723
  %151 = icmp eq i8 %147, %149, !dbg !3724
  %152 = add nsw i32 %150, -48
  %153 = icmp ult i32 %152, 10
  %154 = select i1 %151, i1 %153, i1 false, !dbg !3725
  call void @llvm.dbg.value(metadata i32 %150, metadata !3612, metadata !DIExpression()), !dbg !3726
  br i1 %154, label %143, label %155, !dbg !3725

155:                                              ; preds = %143
  %156 = zext i8 %147 to i32, !dbg !3723
  br label %157, !dbg !3737

157:                                              ; preds = %155, %130
  %158 = phi i32 [ %135, %130 ], [ %152, %155 ], !dbg !3738
  %159 = phi i8* [ %131, %130 ], [ %148, %155 ]
  %160 = phi i8* [ %122, %130 ], [ %146, %155 ]
  %161 = phi i8 [ %132, %130 ], [ %149, %155 ], !dbg !3591
  %162 = phi i32 [ %133, %130 ], [ %156, %155 ], !dbg !3723
  %163 = zext i8 %161 to i32, !dbg !3737
  %164 = sub nsw i32 %162, %163, !dbg !3742
  call void @llvm.dbg.value(metadata i32 %164, metadata !3588, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i64 0, metadata !3589, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8 undef, metadata !3586, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %160, metadata !3577, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 undef, metadata !3612, metadata !DIExpression()), !dbg !3743
  %165 = icmp ult i32 %158, 10, !dbg !3738
  br i1 %165, label %170, label %166, !dbg !3744

166:                                              ; preds = %170, %157
  %167 = phi i64 [ 0, %157 ], [ %175, %170 ], !dbg !3745
  call void @llvm.dbg.value(metadata i64 0, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8 %161, metadata !3587, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %159, metadata !3583, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 %163, metadata !3612, metadata !DIExpression()), !dbg !3746
  %168 = add nsw i32 %163, -48, !dbg !3750
  %169 = icmp ult i32 %168, 10, !dbg !3750
  br i1 %169, label %179, label %188, !dbg !3751

170:                                              ; preds = %157, %170
  %171 = phi i64 [ %175, %170 ], [ 0, %157 ]
  %172 = phi i8* [ %173, %170 ], [ %160, %157 ]
  call void @llvm.dbg.value(metadata i64 %171, metadata !3589, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %172, metadata !3577, metadata !DIExpression()), !dbg !3591
  %173 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !3752
  call void @llvm.dbg.value(metadata i8* %173, metadata !3577, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8 undef, metadata !3586, metadata !DIExpression()), !dbg !3591
  %174 = load i8, i8* %173, align 1, !dbg !3753, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %174, metadata !3586, metadata !DIExpression()), !dbg !3591
  %175 = add i64 %171, 1, !dbg !3754
  call void @llvm.dbg.value(metadata i64 %175, metadata !3589, metadata !DIExpression()), !dbg !3591
  %176 = zext i8 %174 to i32, !dbg !3755
  call void @llvm.dbg.value(metadata i32 %176, metadata !3612, metadata !DIExpression()), !dbg !3743
  %177 = add nsw i32 %176, -48, !dbg !3738
  %178 = icmp ult i32 %177, 10, !dbg !3738
  br i1 %178, label %170, label %166, !dbg !3744, !llvm.loop !3756

179:                                              ; preds = %166, %179
  %180 = phi i64 [ %184, %179 ], [ 0, %166 ]
  %181 = phi i8* [ %182, %179 ], [ %159, %166 ]
  call void @llvm.dbg.value(metadata i64 %180, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %181, metadata !3583, metadata !DIExpression()), !dbg !3591
  %182 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !3758
  call void @llvm.dbg.value(metadata i8* %182, metadata !3583, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8 undef, metadata !3587, metadata !DIExpression()), !dbg !3591
  %183 = load i8, i8* %182, align 1, !dbg !3759, !tbaa !595
  call void @llvm.dbg.value(metadata i8 %183, metadata !3587, metadata !DIExpression()), !dbg !3591
  %184 = add i64 %180, 1, !dbg !3760
  call void @llvm.dbg.value(metadata i64 %184, metadata !3590, metadata !DIExpression()), !dbg !3591
  %185 = zext i8 %183 to i32, !dbg !3761
  call void @llvm.dbg.value(metadata i32 %185, metadata !3612, metadata !DIExpression()), !dbg !3746
  %186 = add nsw i32 %185, -48, !dbg !3750
  %187 = icmp ult i32 %186, 10, !dbg !3750
  br i1 %187, label %179, label %188, !dbg !3751, !llvm.loop !3762

188:                                              ; preds = %179, %166
  %189 = phi i64 [ 0, %166 ], [ %184, %179 ], !dbg !3764
  %190 = icmp eq i64 %167, %189, !dbg !3765
  br i1 %190, label %194, label %191, !dbg !3767

191:                                              ; preds = %188
  %192 = icmp ult i64 %167, %189, !dbg !3768
  %193 = select i1 %192, i32 -1, i32 1, !dbg !3769
  br label %197, !dbg !3770

194:                                              ; preds = %188
  %195 = icmp eq i64 %167, 0, !dbg !3771
  %196 = select i1 %195, i32 0, i32 %164, !dbg !3773
  br label %197, !dbg !3773

197:                                              ; preds = %13, %24, %89, %92, %104, %115, %191, %194
  %198 = phi i32 [ %29, %24 ], [ %91, %89 ], [ %120, %115 ], [ %193, %191 ], [ -1, %13 ], [ %94, %92 ], [ 1, %104 ], [ %196, %194 ], !dbg !3774
  ret i32 %198, !dbg !3775
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3776 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3815, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i8* %1, metadata !3816, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i8* %2, metadata !3817, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i8* %3, metadata !3818, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i8** %4, metadata !3819, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i64 %5, metadata !3820, metadata !DIExpression()), !dbg !3821
  %7 = icmp eq i8* %1, null, !dbg !3822
  br i1 %7, label %10, label %8, !dbg !3824

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #35, !dbg !3825
  br label %12, !dbg !3825

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.167, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #35, !dbg !3826
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.169, i64 0, i64 0), i32 noundef 5) #35, !dbg !3827
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #35, !dbg !3827
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.170, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3828
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.171, i64 0, i64 0), i32 noundef 5) #35, !dbg !3829
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.172, i64 0, i64 0)) #35, !dbg !3829
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.170, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3830
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
  ], !dbg !3831

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.173, i64 0, i64 0), i32 noundef 5) #35, !dbg !3832
  %21 = load i8*, i8** %4, align 8, !dbg !3832, !tbaa !457
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #35, !dbg !3832
  br label %147, !dbg !3834

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.174, i64 0, i64 0), i32 noundef 5) #35, !dbg !3835
  %25 = load i8*, i8** %4, align 8, !dbg !3835, !tbaa !457
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3835
  %27 = load i8*, i8** %26, align 8, !dbg !3835, !tbaa !457
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #35, !dbg !3835
  br label %147, !dbg !3836

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.175, i64 0, i64 0), i32 noundef 5) #35, !dbg !3837
  %31 = load i8*, i8** %4, align 8, !dbg !3837, !tbaa !457
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3837
  %33 = load i8*, i8** %32, align 8, !dbg !3837, !tbaa !457
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3837
  %35 = load i8*, i8** %34, align 8, !dbg !3837, !tbaa !457
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #35, !dbg !3837
  br label %147, !dbg !3838

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.176, i64 0, i64 0), i32 noundef 5) #35, !dbg !3839
  %39 = load i8*, i8** %4, align 8, !dbg !3839, !tbaa !457
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3839
  %41 = load i8*, i8** %40, align 8, !dbg !3839, !tbaa !457
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3839
  %43 = load i8*, i8** %42, align 8, !dbg !3839, !tbaa !457
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3839
  %45 = load i8*, i8** %44, align 8, !dbg !3839, !tbaa !457
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #35, !dbg !3839
  br label %147, !dbg !3840

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.177, i64 0, i64 0), i32 noundef 5) #35, !dbg !3841
  %49 = load i8*, i8** %4, align 8, !dbg !3841, !tbaa !457
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3841
  %51 = load i8*, i8** %50, align 8, !dbg !3841, !tbaa !457
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3841
  %53 = load i8*, i8** %52, align 8, !dbg !3841, !tbaa !457
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3841
  %55 = load i8*, i8** %54, align 8, !dbg !3841, !tbaa !457
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3841
  %57 = load i8*, i8** %56, align 8, !dbg !3841, !tbaa !457
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #35, !dbg !3841
  br label %147, !dbg !3842

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.178, i64 0, i64 0), i32 noundef 5) #35, !dbg !3843
  %61 = load i8*, i8** %4, align 8, !dbg !3843, !tbaa !457
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3843
  %63 = load i8*, i8** %62, align 8, !dbg !3843, !tbaa !457
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3843
  %65 = load i8*, i8** %64, align 8, !dbg !3843, !tbaa !457
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3843
  %67 = load i8*, i8** %66, align 8, !dbg !3843, !tbaa !457
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3843
  %69 = load i8*, i8** %68, align 8, !dbg !3843, !tbaa !457
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3843
  %71 = load i8*, i8** %70, align 8, !dbg !3843, !tbaa !457
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #35, !dbg !3843
  br label %147, !dbg !3844

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.179, i64 0, i64 0), i32 noundef 5) #35, !dbg !3845
  %75 = load i8*, i8** %4, align 8, !dbg !3845, !tbaa !457
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3845
  %77 = load i8*, i8** %76, align 8, !dbg !3845, !tbaa !457
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3845
  %79 = load i8*, i8** %78, align 8, !dbg !3845, !tbaa !457
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3845
  %81 = load i8*, i8** %80, align 8, !dbg !3845, !tbaa !457
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3845
  %83 = load i8*, i8** %82, align 8, !dbg !3845, !tbaa !457
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3845
  %85 = load i8*, i8** %84, align 8, !dbg !3845, !tbaa !457
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3845
  %87 = load i8*, i8** %86, align 8, !dbg !3845, !tbaa !457
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #35, !dbg !3845
  br label %147, !dbg !3846

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.180, i64 0, i64 0), i32 noundef 5) #35, !dbg !3847
  %91 = load i8*, i8** %4, align 8, !dbg !3847, !tbaa !457
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3847
  %93 = load i8*, i8** %92, align 8, !dbg !3847, !tbaa !457
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3847
  %95 = load i8*, i8** %94, align 8, !dbg !3847, !tbaa !457
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3847
  %97 = load i8*, i8** %96, align 8, !dbg !3847, !tbaa !457
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3847
  %99 = load i8*, i8** %98, align 8, !dbg !3847, !tbaa !457
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3847
  %101 = load i8*, i8** %100, align 8, !dbg !3847, !tbaa !457
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3847
  %103 = load i8*, i8** %102, align 8, !dbg !3847, !tbaa !457
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3847
  %105 = load i8*, i8** %104, align 8, !dbg !3847, !tbaa !457
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #35, !dbg !3847
  br label %147, !dbg !3848

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.181, i64 0, i64 0), i32 noundef 5) #35, !dbg !3849
  %109 = load i8*, i8** %4, align 8, !dbg !3849, !tbaa !457
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3849
  %111 = load i8*, i8** %110, align 8, !dbg !3849, !tbaa !457
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3849
  %113 = load i8*, i8** %112, align 8, !dbg !3849, !tbaa !457
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3849
  %115 = load i8*, i8** %114, align 8, !dbg !3849, !tbaa !457
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3849
  %117 = load i8*, i8** %116, align 8, !dbg !3849, !tbaa !457
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3849
  %119 = load i8*, i8** %118, align 8, !dbg !3849, !tbaa !457
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3849
  %121 = load i8*, i8** %120, align 8, !dbg !3849, !tbaa !457
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3849
  %123 = load i8*, i8** %122, align 8, !dbg !3849, !tbaa !457
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3849
  %125 = load i8*, i8** %124, align 8, !dbg !3849, !tbaa !457
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #35, !dbg !3849
  br label %147, !dbg !3850

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.182, i64 0, i64 0), i32 noundef 5) #35, !dbg !3851
  %129 = load i8*, i8** %4, align 8, !dbg !3851, !tbaa !457
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3851
  %131 = load i8*, i8** %130, align 8, !dbg !3851, !tbaa !457
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3851
  %133 = load i8*, i8** %132, align 8, !dbg !3851, !tbaa !457
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3851
  %135 = load i8*, i8** %134, align 8, !dbg !3851, !tbaa !457
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3851
  %137 = load i8*, i8** %136, align 8, !dbg !3851, !tbaa !457
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3851
  %139 = load i8*, i8** %138, align 8, !dbg !3851, !tbaa !457
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3851
  %141 = load i8*, i8** %140, align 8, !dbg !3851, !tbaa !457
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3851
  %143 = load i8*, i8** %142, align 8, !dbg !3851, !tbaa !457
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3851
  %145 = load i8*, i8** %144, align 8, !dbg !3851, !tbaa !457
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #35, !dbg !3851
  br label %147, !dbg !3852

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3853
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3854 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3858, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i8* %1, metadata !3859, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i8* %2, metadata !3860, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i8* %3, metadata !3861, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i8** %4, metadata !3862, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i64 0, metadata !3863, metadata !DIExpression()), !dbg !3864
  br label %6, !dbg !3865

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3867
  call void @llvm.dbg.value(metadata i64 %7, metadata !3863, metadata !DIExpression()), !dbg !3864
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3868
  %9 = load i8*, i8** %8, align 8, !dbg !3868, !tbaa !457
  %10 = icmp eq i8* %9, null, !dbg !3870
  %11 = add i64 %7, 1, !dbg !3871
  call void @llvm.dbg.value(metadata i64 %11, metadata !3863, metadata !DIExpression()), !dbg !3864
  br i1 %10, label %12, label %6, !dbg !3870, !llvm.loop !3872

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3874
  ret void, !dbg !3875
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3876 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3891, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i8* %1, metadata !3892, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i8* %2, metadata !3893, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i8* %3, metadata !3894, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3895, metadata !DIExpression()), !dbg !3900
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3901
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3901
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3897, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i64 0, metadata !3896, metadata !DIExpression()), !dbg !3899
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3896, metadata !DIExpression()), !dbg !3899
  %11 = load i32, i32* %8, align 8, !dbg !3903
  %12 = icmp sgt i32 %11, -1, !dbg !3903
  br i1 %12, label %20, label %13, !dbg !3903

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3903
  store i32 %14, i32* %8, align 8, !dbg !3903
  %15 = icmp ult i32 %11, -7, !dbg !3903
  br i1 %15, label %16, label %20, !dbg !3903

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3903
  %18 = sext i32 %11 to i64, !dbg !3903
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3903
  br label %24, !dbg !3903

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3903
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3903
  store i8* %23, i8** %10, align 8, !dbg !3903
  br label %24, !dbg !3903

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3903
  %28 = load i8*, i8** %27, align 8, !dbg !3903
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3906
  store i8* %28, i8** %29, align 8, !dbg !3907, !tbaa !457
  %30 = icmp eq i8* %28, null, !dbg !3908
  br i1 %30, label %210, label %31, !dbg !3909

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3896, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 1, metadata !3896, metadata !DIExpression()), !dbg !3899
  %32 = icmp sgt i32 %25, -1, !dbg !3903
  br i1 %32, label %40, label %33, !dbg !3903

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3903
  store i32 %34, i32* %8, align 8, !dbg !3903
  %35 = icmp ult i32 %25, -7, !dbg !3903
  br i1 %35, label %36, label %40, !dbg !3903

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3903
  %38 = sext i32 %25 to i64, !dbg !3903
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3903
  br label %44, !dbg !3903

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3903
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3903
  store i8* %43, i8** %10, align 8, !dbg !3903
  br label %44, !dbg !3903

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3903
  %48 = load i8*, i8** %47, align 8, !dbg !3903
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3906
  store i8* %48, i8** %49, align 8, !dbg !3907, !tbaa !457
  %50 = icmp eq i8* %48, null, !dbg !3908
  br i1 %50, label %210, label %51, !dbg !3909

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3896, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 2, metadata !3896, metadata !DIExpression()), !dbg !3899
  %52 = icmp sgt i32 %45, -1, !dbg !3903
  br i1 %52, label %60, label %53, !dbg !3903

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3903
  store i32 %54, i32* %8, align 8, !dbg !3903
  %55 = icmp ult i32 %45, -7, !dbg !3903
  br i1 %55, label %56, label %60, !dbg !3903

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3903
  %58 = sext i32 %45 to i64, !dbg !3903
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3903
  br label %64, !dbg !3903

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3903
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3903
  store i8* %63, i8** %10, align 8, !dbg !3903
  br label %64, !dbg !3903

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3903
  %68 = load i8*, i8** %67, align 8, !dbg !3903
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3906
  store i8* %68, i8** %69, align 8, !dbg !3907, !tbaa !457
  %70 = icmp eq i8* %68, null, !dbg !3908
  br i1 %70, label %210, label %71, !dbg !3909

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3896, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 3, metadata !3896, metadata !DIExpression()), !dbg !3899
  %72 = icmp sgt i32 %65, -1, !dbg !3903
  br i1 %72, label %80, label %73, !dbg !3903

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3903
  store i32 %74, i32* %8, align 8, !dbg !3903
  %75 = icmp ult i32 %65, -7, !dbg !3903
  br i1 %75, label %76, label %80, !dbg !3903

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3903
  %78 = sext i32 %65 to i64, !dbg !3903
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3903
  br label %84, !dbg !3903

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3903
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3903
  store i8* %83, i8** %10, align 8, !dbg !3903
  br label %84, !dbg !3903

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3903
  %88 = load i8*, i8** %87, align 8, !dbg !3903
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3906
  store i8* %88, i8** %89, align 8, !dbg !3907, !tbaa !457
  %90 = icmp eq i8* %88, null, !dbg !3908
  br i1 %90, label %210, label %91, !dbg !3909

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3896, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 4, metadata !3896, metadata !DIExpression()), !dbg !3899
  %92 = icmp sgt i32 %85, -1, !dbg !3903
  br i1 %92, label %100, label %93, !dbg !3903

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3903
  store i32 %94, i32* %8, align 8, !dbg !3903
  %95 = icmp ult i32 %85, -7, !dbg !3903
  br i1 %95, label %96, label %100, !dbg !3903

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3903
  %98 = sext i32 %85 to i64, !dbg !3903
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3903
  br label %104, !dbg !3903

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3903
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3903
  store i8* %103, i8** %10, align 8, !dbg !3903
  br label %104, !dbg !3903

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3903
  %108 = load i8*, i8** %107, align 8, !dbg !3903
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3906
  store i8* %108, i8** %109, align 8, !dbg !3907, !tbaa !457
  %110 = icmp eq i8* %108, null, !dbg !3908
  br i1 %110, label %210, label %111, !dbg !3909

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3896, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 5, metadata !3896, metadata !DIExpression()), !dbg !3899
  %112 = icmp sgt i32 %105, -1, !dbg !3903
  br i1 %112, label %120, label %113, !dbg !3903

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3903
  store i32 %114, i32* %8, align 8, !dbg !3903
  %115 = icmp ult i32 %105, -7, !dbg !3903
  br i1 %115, label %116, label %120, !dbg !3903

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3903
  %118 = sext i32 %105 to i64, !dbg !3903
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3903
  br label %124, !dbg !3903

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3903
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3903
  store i8* %123, i8** %10, align 8, !dbg !3903
  br label %124, !dbg !3903

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3903
  %128 = load i8*, i8** %127, align 8, !dbg !3903
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3906
  store i8* %128, i8** %129, align 8, !dbg !3907, !tbaa !457
  %130 = icmp eq i8* %128, null, !dbg !3908
  br i1 %130, label %210, label %131, !dbg !3909

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3896, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 6, metadata !3896, metadata !DIExpression()), !dbg !3899
  %132 = icmp sgt i32 %125, -1, !dbg !3903
  br i1 %132, label %140, label %133, !dbg !3903

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3903
  store i32 %134, i32* %8, align 8, !dbg !3903
  %135 = icmp ult i32 %125, -7, !dbg !3903
  br i1 %135, label %136, label %140, !dbg !3903

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3903
  %138 = sext i32 %125 to i64, !dbg !3903
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3903
  br label %144, !dbg !3903

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3903
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3903
  store i8* %143, i8** %10, align 8, !dbg !3903
  br label %144, !dbg !3903

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3903
  %148 = load i8*, i8** %147, align 8, !dbg !3903
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3906
  store i8* %148, i8** %149, align 8, !dbg !3907, !tbaa !457
  %150 = icmp eq i8* %148, null, !dbg !3908
  br i1 %150, label %210, label %151, !dbg !3909

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3896, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 7, metadata !3896, metadata !DIExpression()), !dbg !3899
  %152 = icmp sgt i32 %145, -1, !dbg !3903
  br i1 %152, label %160, label %153, !dbg !3903

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3903
  store i32 %154, i32* %8, align 8, !dbg !3903
  %155 = icmp ult i32 %145, -7, !dbg !3903
  br i1 %155, label %156, label %160, !dbg !3903

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3903
  %158 = sext i32 %145 to i64, !dbg !3903
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3903
  br label %164, !dbg !3903

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3903
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3903
  store i8* %163, i8** %10, align 8, !dbg !3903
  br label %164, !dbg !3903

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3903
  %168 = load i8*, i8** %167, align 8, !dbg !3903
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3906
  store i8* %168, i8** %169, align 8, !dbg !3907, !tbaa !457
  %170 = icmp eq i8* %168, null, !dbg !3908
  br i1 %170, label %210, label %171, !dbg !3909

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3896, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 8, metadata !3896, metadata !DIExpression()), !dbg !3899
  %172 = icmp sgt i32 %165, -1, !dbg !3903
  br i1 %172, label %180, label %173, !dbg !3903

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3903
  store i32 %174, i32* %8, align 8, !dbg !3903
  %175 = icmp ult i32 %165, -7, !dbg !3903
  br i1 %175, label %176, label %180, !dbg !3903

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3903
  %178 = sext i32 %165 to i64, !dbg !3903
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3903
  br label %184, !dbg !3903

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3903
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3903
  store i8* %183, i8** %10, align 8, !dbg !3903
  br label %184, !dbg !3903

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3903
  %188 = load i8*, i8** %187, align 8, !dbg !3903
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3906
  store i8* %188, i8** %189, align 8, !dbg !3907, !tbaa !457
  %190 = icmp eq i8* %188, null, !dbg !3908
  br i1 %190, label %210, label %191, !dbg !3909

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3896, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 9, metadata !3896, metadata !DIExpression()), !dbg !3899
  %192 = icmp sgt i32 %185, -1, !dbg !3903
  br i1 %192, label %200, label %193, !dbg !3903

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3903
  store i32 %194, i32* %8, align 8, !dbg !3903
  %195 = icmp ult i32 %185, -7, !dbg !3903
  br i1 %195, label %196, label %200, !dbg !3903

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3903
  %198 = sext i32 %185 to i64, !dbg !3903
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3903
  br label %203, !dbg !3903

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3903
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3903
  store i8* %202, i8** %10, align 8, !dbg !3903
  br label %203, !dbg !3903

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3903
  %206 = load i8*, i8** %205, align 8, !dbg !3903
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3906
  store i8* %206, i8** %207, align 8, !dbg !3907, !tbaa !457
  %208 = icmp eq i8* %206, null, !dbg !3908
  %209 = select i1 %208, i64 9, i64 10, !dbg !3909
  br label %210, !dbg !3909

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3910
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3911
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3912
  ret void, !dbg !3912
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3913 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3917, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i8* %1, metadata !3918, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i8* %2, metadata !3919, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i8* %3, metadata !3920, metadata !DIExpression()), !dbg !3922
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3923
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3923
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3921, metadata !DIExpression()), !dbg !3924
  call void @llvm.va_start(i8* nonnull %7), !dbg !3925
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3926
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3926
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3926, !tbaa.struct !797
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3926
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3926
  call void @llvm.va_end(i8* nonnull %7), !dbg !3927
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3928
  ret void, !dbg !3928
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3929 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3930, !tbaa !457
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.170, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3930
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.187, i64 0, i64 0), i32 noundef 5) #35, !dbg !3931
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.188, i64 0, i64 0)) #35, !dbg !3931
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.189, i64 0, i64 0), i32 noundef 5) #35, !dbg !3932
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.190, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.191, i64 0, i64 0)) #35, !dbg !3932
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.192, i64 0, i64 0), i32 noundef 5) #35, !dbg !3933
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.193, i64 0, i64 0)) #35, !dbg !3933
  ret void, !dbg !3934
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3935 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3940, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i64 %1, metadata !3941, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i64 %2, metadata !3942, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i8* %0, metadata !3944, metadata !DIExpression()) #35, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %1, metadata !3947, metadata !DIExpression()) #35, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %2, metadata !3948, metadata !DIExpression()) #35, !dbg !3949
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3951
  call void @llvm.dbg.value(metadata i8* %4, metadata !3952, metadata !DIExpression()) #35, !dbg !3957
  %5 = icmp eq i8* %4, null, !dbg !3959
  br i1 %5, label %6, label %7, !dbg !3961

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3962
  unreachable, !dbg !3962

7:                                                ; preds = %3
  ret i8* %4, !dbg !3963
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3945 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3944, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %1, metadata !3947, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %2, metadata !3948, metadata !DIExpression()), !dbg !3964
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3965
  call void @llvm.dbg.value(metadata i8* %4, metadata !3952, metadata !DIExpression()) #35, !dbg !3966
  %5 = icmp eq i8* %4, null, !dbg !3968
  br i1 %5, label %6, label %7, !dbg !3969

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3970
  unreachable, !dbg !3970

7:                                                ; preds = %3
  ret i8* %4, !dbg !3971
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3972 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3976, metadata !DIExpression()), !dbg !3977
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3978
  call void @llvm.dbg.value(metadata i8* %2, metadata !3952, metadata !DIExpression()) #35, !dbg !3979
  %3 = icmp eq i8* %2, null, !dbg !3981
  br i1 %3, label %4, label %5, !dbg !3982

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3983
  unreachable, !dbg !3983

5:                                                ; preds = %1
  ret i8* %2, !dbg !3984
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3985 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3989, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i64 %0, metadata !3991, metadata !DIExpression()) #35, !dbg !3995
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3997
  call void @llvm.dbg.value(metadata i8* %2, metadata !3952, metadata !DIExpression()) #35, !dbg !3998
  %3 = icmp eq i8* %2, null, !dbg !4000
  br i1 %3, label %4, label %5, !dbg !4001

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4002
  unreachable, !dbg !4002

5:                                                ; preds = %1
  ret i8* %2, !dbg !4003
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4004 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4008, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %0, metadata !3976, metadata !DIExpression()) #35, !dbg !4010
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !4012
  call void @llvm.dbg.value(metadata i8* %2, metadata !3952, metadata !DIExpression()) #35, !dbg !4013
  %3 = icmp eq i8* %2, null, !dbg !4015
  br i1 %3, label %4, label %5, !dbg !4016

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4017
  unreachable, !dbg !4017

5:                                                ; preds = %1
  ret i8* %2, !dbg !4018
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4019 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4023, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i64 %1, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i8* %0, metadata !4026, metadata !DIExpression()) #35, !dbg !4031
  call void @llvm.dbg.value(metadata i64 %1, metadata !4030, metadata !DIExpression()) #35, !dbg !4031
  %3 = icmp eq i64 %1, 0, !dbg !4033
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4033
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !4034
  call void @llvm.dbg.value(metadata i8* %5, metadata !3952, metadata !DIExpression()) #35, !dbg !4035
  %6 = icmp eq i8* %5, null, !dbg !4037
  br i1 %6, label %7, label %8, !dbg !4038

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4039
  unreachable, !dbg !4039

8:                                                ; preds = %2
  ret i8* %5, !dbg !4040
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #25

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4041 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4045, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata i64 %1, metadata !4046, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata i8* %0, metadata !4048, metadata !DIExpression()) #35, !dbg !4052
  call void @llvm.dbg.value(metadata i64 %1, metadata !4051, metadata !DIExpression()) #35, !dbg !4052
  call void @llvm.dbg.value(metadata i8* %0, metadata !4026, metadata !DIExpression()) #35, !dbg !4054
  call void @llvm.dbg.value(metadata i64 %1, metadata !4030, metadata !DIExpression()) #35, !dbg !4054
  %3 = icmp eq i64 %1, 0, !dbg !4056
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4056
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !4057
  call void @llvm.dbg.value(metadata i8* %5, metadata !3952, metadata !DIExpression()) #35, !dbg !4058
  %6 = icmp eq i8* %5, null, !dbg !4060
  br i1 %6, label %7, label %8, !dbg !4061

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4062
  unreachable, !dbg !4062

8:                                                ; preds = %2
  ret i8* %5, !dbg !4063
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4064 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4068, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %1, metadata !4069, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %2, metadata !4070, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i8* %0, metadata !4072, metadata !DIExpression()) #35, !dbg !4077
  call void @llvm.dbg.value(metadata i64 %1, metadata !4075, metadata !DIExpression()) #35, !dbg !4077
  call void @llvm.dbg.value(metadata i64 %2, metadata !4076, metadata !DIExpression()) #35, !dbg !4077
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !4079
  call void @llvm.dbg.value(metadata i8* %4, metadata !3952, metadata !DIExpression()) #35, !dbg !4080
  %5 = icmp eq i8* %4, null, !dbg !4082
  br i1 %5, label %6, label %7, !dbg !4083

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !4084
  unreachable, !dbg !4084

7:                                                ; preds = %3
  ret i8* %4, !dbg !4085
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4086 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4090, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 %1, metadata !4091, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i8* null, metadata !3944, metadata !DIExpression()) #35, !dbg !4093
  call void @llvm.dbg.value(metadata i64 %0, metadata !3947, metadata !DIExpression()) #35, !dbg !4093
  call void @llvm.dbg.value(metadata i64 %1, metadata !3948, metadata !DIExpression()) #35, !dbg !4093
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !4095
  call void @llvm.dbg.value(metadata i8* %3, metadata !3952, metadata !DIExpression()) #35, !dbg !4096
  %4 = icmp eq i8* %3, null, !dbg !4098
  br i1 %4, label %5, label %6, !dbg !4099

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4100
  unreachable, !dbg !4100

6:                                                ; preds = %2
  ret i8* %3, !dbg !4101
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4102 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4106, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i64 %1, metadata !4107, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i8* null, metadata !4068, metadata !DIExpression()) #35, !dbg !4109
  call void @llvm.dbg.value(metadata i64 %0, metadata !4069, metadata !DIExpression()) #35, !dbg !4109
  call void @llvm.dbg.value(metadata i64 %1, metadata !4070, metadata !DIExpression()) #35, !dbg !4109
  call void @llvm.dbg.value(metadata i8* null, metadata !4072, metadata !DIExpression()) #35, !dbg !4111
  call void @llvm.dbg.value(metadata i64 %0, metadata !4075, metadata !DIExpression()) #35, !dbg !4111
  call void @llvm.dbg.value(metadata i64 %1, metadata !4076, metadata !DIExpression()) #35, !dbg !4111
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !4113
  call void @llvm.dbg.value(metadata i8* %3, metadata !3952, metadata !DIExpression()) #35, !dbg !4114
  %4 = icmp eq i8* %3, null, !dbg !4116
  br i1 %4, label %5, label %6, !dbg !4117

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4118
  unreachable, !dbg !4118

6:                                                ; preds = %2
  ret i8* %3, !dbg !4119
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !4120 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4124, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i64* %1, metadata !4125, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i8* %0, metadata !390, metadata !DIExpression()) #35, !dbg !4127
  call void @llvm.dbg.value(metadata i64* %1, metadata !391, metadata !DIExpression()) #35, !dbg !4127
  call void @llvm.dbg.value(metadata i64 1, metadata !392, metadata !DIExpression()) #35, !dbg !4127
  %3 = load i64, i64* %1, align 8, !dbg !4129, !tbaa !3023
  call void @llvm.dbg.value(metadata i64 %3, metadata !393, metadata !DIExpression()) #35, !dbg !4127
  %4 = icmp eq i8* %0, null, !dbg !4130
  br i1 %4, label %5, label %8, !dbg !4132

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4133
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4136
  br label %15, !dbg !4136

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4137
  %10 = add nuw i64 %9, 1, !dbg !4137
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #35, !dbg !4137
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4137
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4137
  call void @llvm.dbg.value(metadata i64 %13, metadata !393, metadata !DIExpression()) #35, !dbg !4127
  br i1 %12, label %14, label %15, !dbg !4140

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !4141
  unreachable, !dbg !4141

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4127
  call void @llvm.dbg.value(metadata i64 %16, metadata !393, metadata !DIExpression()) #35, !dbg !4127
  call void @llvm.dbg.value(metadata i8* %0, metadata !3944, metadata !DIExpression()) #35, !dbg !4142
  call void @llvm.dbg.value(metadata i64 %16, metadata !3947, metadata !DIExpression()) #35, !dbg !4142
  call void @llvm.dbg.value(metadata i64 1, metadata !3948, metadata !DIExpression()) #35, !dbg !4142
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #35, !dbg !4144
  call void @llvm.dbg.value(metadata i8* %17, metadata !3952, metadata !DIExpression()) #35, !dbg !4145
  %18 = icmp eq i8* %17, null, !dbg !4147
  br i1 %18, label %19, label %20, !dbg !4148

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !4149
  unreachable, !dbg !4149

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !390, metadata !DIExpression()) #35, !dbg !4127
  store i64 %16, i64* %1, align 8, !dbg !4150, !tbaa !3023
  ret i8* %17, !dbg !4151
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !385 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !390, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i64* %1, metadata !391, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i64 %2, metadata !392, metadata !DIExpression()), !dbg !4152
  %4 = load i64, i64* %1, align 8, !dbg !4153, !tbaa !3023
  call void @llvm.dbg.value(metadata i64 %4, metadata !393, metadata !DIExpression()), !dbg !4152
  %5 = icmp eq i8* %0, null, !dbg !4154
  br i1 %5, label %6, label %13, !dbg !4155

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4156
  br i1 %7, label %8, label %20, !dbg !4157

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4158
  call void @llvm.dbg.value(metadata i64 %9, metadata !393, metadata !DIExpression()), !dbg !4152
  %10 = icmp ugt i64 %2, 128, !dbg !4160
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4161
  call void @llvm.dbg.value(metadata i64 %12, metadata !393, metadata !DIExpression()), !dbg !4152
  br label %20, !dbg !4162

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4163
  %15 = add nuw i64 %14, 1, !dbg !4163
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4163
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4163
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4163
  call void @llvm.dbg.value(metadata i64 %18, metadata !393, metadata !DIExpression()), !dbg !4152
  br i1 %17, label %19, label %20, !dbg !4164

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !4165
  unreachable, !dbg !4165

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4152
  call void @llvm.dbg.value(metadata i64 %21, metadata !393, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i8* %0, metadata !3944, metadata !DIExpression()) #35, !dbg !4166
  call void @llvm.dbg.value(metadata i64 %21, metadata !3947, metadata !DIExpression()) #35, !dbg !4166
  call void @llvm.dbg.value(metadata i64 %2, metadata !3948, metadata !DIExpression()) #35, !dbg !4166
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #35, !dbg !4168
  call void @llvm.dbg.value(metadata i8* %22, metadata !3952, metadata !DIExpression()) #35, !dbg !4169
  %23 = icmp eq i8* %22, null, !dbg !4171
  br i1 %23, label %24, label %25, !dbg !4172

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !4173
  unreachable, !dbg !4173

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !390, metadata !DIExpression()), !dbg !4152
  store i64 %21, i64* %1, align 8, !dbg !4174, !tbaa !3023
  ret i8* %22, !dbg !4175
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !397 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !405, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64* %1, metadata !406, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %2, metadata !407, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %3, metadata !408, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %4, metadata !409, metadata !DIExpression()), !dbg !4176
  %6 = load i64, i64* %1, align 8, !dbg !4177, !tbaa !3023
  call void @llvm.dbg.value(metadata i64 %6, metadata !410, metadata !DIExpression()), !dbg !4176
  %7 = ashr i64 %6, 1, !dbg !4178
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4178
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4178
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4178
  call void @llvm.dbg.value(metadata i64 %10, metadata !411, metadata !DIExpression()), !dbg !4176
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4180
  call void @llvm.dbg.value(metadata i64 %11, metadata !411, metadata !DIExpression()), !dbg !4176
  %12 = icmp sgt i64 %3, -1, !dbg !4181
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4183
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4183
  call void @llvm.dbg.value(metadata i64 %15, metadata !411, metadata !DIExpression()), !dbg !4176
  %16 = icmp slt i64 %4, 0, !dbg !4184
  br i1 %16, label %17, label %30, !dbg !4184

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4184
  br i1 %18, label %19, label %24, !dbg !4184

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4184
  %21 = udiv i64 9223372036854775807, %20, !dbg !4184
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4184
  br i1 %23, label %46, label %43, !dbg !4184

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4184
  br i1 %25, label %43, label %26, !dbg !4184

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4184
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4184
  %29 = icmp ult i64 %28, %15, !dbg !4184
  br i1 %29, label %46, label %43, !dbg !4184

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4184
  br i1 %31, label %43, label %32, !dbg !4184

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4184
  br i1 %33, label %34, label %40, !dbg !4184

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4184
  br i1 %35, label %43, label %36, !dbg !4184

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4184
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4184
  %39 = icmp ult i64 %38, %4, !dbg !4184
  br i1 %39, label %46, label %43, !dbg !4184

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !4184
  %42 = icmp ult i64 %41, %15, !dbg !4184
  br i1 %42, label %46, label %43, !dbg !4184

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !412, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4176
  %44 = mul i64 %15, %4, !dbg !4184
  call void @llvm.dbg.value(metadata i64 %44, metadata !412, metadata !DIExpression()), !dbg !4176
  %45 = icmp slt i64 %44, 128, !dbg !4184
  br i1 %45, label %46, label %52, !dbg !4184

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !413, metadata !DIExpression()), !dbg !4176
  %48 = sdiv i64 %47, %4, !dbg !4185
  call void @llvm.dbg.value(metadata i64 %48, metadata !411, metadata !DIExpression()), !dbg !4176
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4188
  call void @llvm.dbg.value(metadata i64 %51, metadata !412, metadata !DIExpression()), !dbg !4176
  br label %52, !dbg !4189

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4176
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4176
  call void @llvm.dbg.value(metadata i64 %54, metadata !412, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %53, metadata !411, metadata !DIExpression()), !dbg !4176
  %55 = icmp eq i8* %0, null, !dbg !4190
  br i1 %55, label %56, label %57, !dbg !4192

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !4193, !tbaa !3023
  br label %57, !dbg !4194

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4195
  %59 = icmp slt i64 %58, %2, !dbg !4197
  br i1 %59, label %60, label %97, !dbg !4198

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4199
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4199
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4199
  call void @llvm.dbg.value(metadata i64 %63, metadata !411, metadata !DIExpression()), !dbg !4176
  br i1 %62, label %96, label %64, !dbg !4200

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !4201
  br i1 %66, label %96, label %67, !dbg !4201

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !4202

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4202
  br i1 %69, label %70, label %75, !dbg !4202

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4202
  %72 = udiv i64 9223372036854775807, %71, !dbg !4202
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4202
  br i1 %74, label %96, label %94, !dbg !4202

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4202
  br i1 %76, label %94, label %77, !dbg !4202

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4202
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4202
  %80 = icmp ult i64 %79, %63, !dbg !4202
  br i1 %80, label %96, label %94, !dbg !4202

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4202
  br i1 %82, label %94, label %83, !dbg !4202

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4202
  br i1 %84, label %85, label %91, !dbg !4202

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4202
  br i1 %86, label %94, label %87, !dbg !4202

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4202
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4202
  %90 = icmp ult i64 %89, %4, !dbg !4202
  br i1 %90, label %96, label %94, !dbg !4202

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !4202
  %93 = icmp ult i64 %92, %63, !dbg !4202
  br i1 %93, label %96, label %94, !dbg !4202

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !412, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4176
  %95 = mul i64 %63, %4, !dbg !4202
  call void @llvm.dbg.value(metadata i64 %95, metadata !412, metadata !DIExpression()), !dbg !4176
  br label %97, !dbg !4203

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #37, !dbg !4204
  unreachable, !dbg !4204

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4176
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4176
  call void @llvm.dbg.value(metadata i64 %99, metadata !412, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %98, metadata !411, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i8* %0, metadata !4023, metadata !DIExpression()) #35, !dbg !4205
  call void @llvm.dbg.value(metadata i64 %99, metadata !4024, metadata !DIExpression()) #35, !dbg !4205
  call void @llvm.dbg.value(metadata i8* %0, metadata !4026, metadata !DIExpression()) #35, !dbg !4207
  call void @llvm.dbg.value(metadata i64 %99, metadata !4030, metadata !DIExpression()) #35, !dbg !4207
  %100 = icmp eq i64 %99, 0, !dbg !4209
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4209
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #35, !dbg !4210
  call void @llvm.dbg.value(metadata i8* %102, metadata !3952, metadata !DIExpression()) #35, !dbg !4211
  %103 = icmp eq i8* %102, null, !dbg !4213
  br i1 %103, label %104, label %105, !dbg !4214

104:                                              ; preds = %97
  tail call void @xalloc_die() #37, !dbg !4215
  unreachable, !dbg !4215

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !405, metadata !DIExpression()), !dbg !4176
  store i64 %98, i64* %1, align 8, !dbg !4216, !tbaa !3023
  ret i8* %102, !dbg !4217
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4218 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4220, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i64 %0, metadata !4222, metadata !DIExpression()) #35, !dbg !4226
  call void @llvm.dbg.value(metadata i64 1, metadata !4225, metadata !DIExpression()) #35, !dbg !4226
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !4228
  call void @llvm.dbg.value(metadata i8* %2, metadata !3952, metadata !DIExpression()) #35, !dbg !4229
  %3 = icmp eq i8* %2, null, !dbg !4231
  br i1 %3, label %4, label %5, !dbg !4232

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4233
  unreachable, !dbg !4233

5:                                                ; preds = %1
  ret i8* %2, !dbg !4234
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4223 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4222, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i64 %1, metadata !4225, metadata !DIExpression()), !dbg !4235
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !4236
  call void @llvm.dbg.value(metadata i8* %3, metadata !3952, metadata !DIExpression()) #35, !dbg !4237
  %4 = icmp eq i8* %3, null, !dbg !4239
  br i1 %4, label %5, label %6, !dbg !4240

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4241
  unreachable, !dbg !4241

6:                                                ; preds = %2
  ret i8* %3, !dbg !4242
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4243 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4245, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i64 %0, metadata !4247, metadata !DIExpression()) #35, !dbg !4251
  call void @llvm.dbg.value(metadata i64 1, metadata !4250, metadata !DIExpression()) #35, !dbg !4251
  call void @llvm.dbg.value(metadata i64 %0, metadata !4253, metadata !DIExpression()) #35, !dbg !4257
  call void @llvm.dbg.value(metadata i64 1, metadata !4256, metadata !DIExpression()) #35, !dbg !4257
  call void @llvm.dbg.value(metadata i64 %0, metadata !4253, metadata !DIExpression()) #35, !dbg !4257
  call void @llvm.dbg.value(metadata i64 1, metadata !4256, metadata !DIExpression()) #35, !dbg !4257
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !4259
  call void @llvm.dbg.value(metadata i8* %2, metadata !3952, metadata !DIExpression()) #35, !dbg !4260
  %3 = icmp eq i8* %2, null, !dbg !4262
  br i1 %3, label %4, label %5, !dbg !4263

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4264
  unreachable, !dbg !4264

5:                                                ; preds = %1
  ret i8* %2, !dbg !4265
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4248 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4247, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i64 %1, metadata !4250, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i64 %0, metadata !4253, metadata !DIExpression()) #35, !dbg !4267
  call void @llvm.dbg.value(metadata i64 %1, metadata !4256, metadata !DIExpression()) #35, !dbg !4267
  call void @llvm.dbg.value(metadata i64 %0, metadata !4253, metadata !DIExpression()) #35, !dbg !4267
  call void @llvm.dbg.value(metadata i64 %1, metadata !4256, metadata !DIExpression()) #35, !dbg !4267
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !4269
  call void @llvm.dbg.value(metadata i8* %3, metadata !3952, metadata !DIExpression()) #35, !dbg !4270
  %4 = icmp eq i8* %3, null, !dbg !4272
  br i1 %4, label %5, label %6, !dbg !4273

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4274
  unreachable, !dbg !4274

6:                                                ; preds = %2
  ret i8* %3, !dbg !4275
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4276 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4280, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i64 %1, metadata !4281, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i64 %1, metadata !3976, metadata !DIExpression()) #35, !dbg !4283
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !4285
  call void @llvm.dbg.value(metadata i8* %3, metadata !3952, metadata !DIExpression()) #35, !dbg !4286
  %4 = icmp eq i8* %3, null, !dbg !4288
  br i1 %4, label %5, label %6, !dbg !4289

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4290
  unreachable, !dbg !4290

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4291, metadata !DIExpression()) #35, !dbg !4299
  call void @llvm.dbg.value(metadata i8* %0, metadata !4297, metadata !DIExpression()) #35, !dbg !4299
  call void @llvm.dbg.value(metadata i64 %1, metadata !4298, metadata !DIExpression()) #35, !dbg !4299
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4301
  ret i8* %3, !dbg !4302
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4303 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4307, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata i64 %1, metadata !4308, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata i64 %1, metadata !3989, metadata !DIExpression()) #35, !dbg !4310
  call void @llvm.dbg.value(metadata i64 %1, metadata !3991, metadata !DIExpression()) #35, !dbg !4312
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !4314
  call void @llvm.dbg.value(metadata i8* %3, metadata !3952, metadata !DIExpression()) #35, !dbg !4315
  %4 = icmp eq i8* %3, null, !dbg !4317
  br i1 %4, label %5, label %6, !dbg !4318

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4319
  unreachable, !dbg !4319

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4291, metadata !DIExpression()) #35, !dbg !4320
  call void @llvm.dbg.value(metadata i8* %0, metadata !4297, metadata !DIExpression()) #35, !dbg !4320
  call void @llvm.dbg.value(metadata i64 %1, metadata !4298, metadata !DIExpression()) #35, !dbg !4320
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4322
  ret i8* %3, !dbg !4323
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4324 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4328, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i64 %1, metadata !4329, metadata !DIExpression()), !dbg !4331
  %3 = add nsw i64 %1, 1, !dbg !4332
  call void @llvm.dbg.value(metadata i64 %3, metadata !3989, metadata !DIExpression()) #35, !dbg !4333
  call void @llvm.dbg.value(metadata i64 %3, metadata !3991, metadata !DIExpression()) #35, !dbg !4335
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !4337
  call void @llvm.dbg.value(metadata i8* %4, metadata !3952, metadata !DIExpression()) #35, !dbg !4338
  %5 = icmp eq i8* %4, null, !dbg !4340
  br i1 %5, label %6, label %7, !dbg !4341

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4342
  unreachable, !dbg !4342

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4330, metadata !DIExpression()), !dbg !4331
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4343
  store i8 0, i8* %8, align 1, !dbg !4344, !tbaa !595
  call void @llvm.dbg.value(metadata i8* %4, metadata !4291, metadata !DIExpression()) #35, !dbg !4345
  call void @llvm.dbg.value(metadata i8* %0, metadata !4297, metadata !DIExpression()) #35, !dbg !4345
  call void @llvm.dbg.value(metadata i64 %1, metadata !4298, metadata !DIExpression()) #35, !dbg !4345
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4347
  ret i8* %4, !dbg !4348
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4349 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4351, metadata !DIExpression()), !dbg !4352
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !4353
  %3 = add i64 %2, 1, !dbg !4354
  call void @llvm.dbg.value(metadata i8* %0, metadata !4280, metadata !DIExpression()) #35, !dbg !4355
  call void @llvm.dbg.value(metadata i64 %3, metadata !4281, metadata !DIExpression()) #35, !dbg !4355
  call void @llvm.dbg.value(metadata i64 %3, metadata !3976, metadata !DIExpression()) #35, !dbg !4357
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !4359
  call void @llvm.dbg.value(metadata i8* %4, metadata !3952, metadata !DIExpression()) #35, !dbg !4360
  %5 = icmp eq i8* %4, null, !dbg !4362
  br i1 %5, label %6, label %7, !dbg !4363

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4364
  unreachable, !dbg !4364

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4291, metadata !DIExpression()) #35, !dbg !4365
  call void @llvm.dbg.value(metadata i8* %0, metadata !4297, metadata !DIExpression()) #35, !dbg !4365
  call void @llvm.dbg.value(metadata i64 %3, metadata !4298, metadata !DIExpression()) #35, !dbg !4365
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #35, !dbg !4367
  ret i8* %4, !dbg !4368
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4369 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4374, !tbaa !586
  call void @llvm.dbg.value(metadata i32 %1, metadata !4371, metadata !DIExpression()), !dbg !4375
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.204, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.205, i64 0, i64 0), i32 noundef 5) #35, !dbg !4374
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.206, i64 0, i64 0), i8* noundef %2) #35, !dbg !4374
  %3 = icmp eq i32 %1, 0, !dbg !4374
  tail call void @llvm.assume(i1 %3), !dbg !4374
  tail call void @abort() #37, !dbg !4376
  unreachable, !dbg !4376
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4377 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4415, metadata !DIExpression()), !dbg !4420
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #35, !dbg !4421
  call void @llvm.dbg.value(metadata i1 undef, metadata !4416, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4420
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4422, metadata !DIExpression()), !dbg !4425
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4427
  %4 = load i32, i32* %3, align 8, !dbg !4427, !tbaa !4428
  %5 = and i32 %4, 32, !dbg !4429
  %6 = icmp eq i32 %5, 0, !dbg !4429
  call void @llvm.dbg.value(metadata i1 %6, metadata !4418, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4420
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #35, !dbg !4430
  %8 = icmp eq i32 %7, 0, !dbg !4431
  call void @llvm.dbg.value(metadata i1 %8, metadata !4419, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4420
  br i1 %6, label %9, label %19, !dbg !4432

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4434
  call void @llvm.dbg.value(metadata i1 %10, metadata !4416, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4420
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4435
  %12 = xor i1 %8, true, !dbg !4435
  %13 = sext i1 %12 to i32, !dbg !4435
  br i1 %11, label %22, label %14, !dbg !4435

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #38, !dbg !4436
  %16 = load i32, i32* %15, align 4, !dbg !4436, !tbaa !586
  %17 = icmp ne i32 %16, 9, !dbg !4437
  %18 = sext i1 %17 to i32, !dbg !4438
  br label %22, !dbg !4438

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4439

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #38, !dbg !4441
  store i32 0, i32* %21, align 4, !dbg !4443, !tbaa !586
  br label %22, !dbg !4441

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4420
  ret i32 %23, !dbg !4444
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !4445 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4483, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i32 0, metadata !4484, metadata !DIExpression()), !dbg !4487
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4488
  call void @llvm.dbg.value(metadata i32 %2, metadata !4485, metadata !DIExpression()), !dbg !4487
  %3 = icmp slt i32 %2, 0, !dbg !4489
  br i1 %3, label %4, label %6, !dbg !4491

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4492
  br label %24, !dbg !4493

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4494
  %8 = icmp eq i32 %7, 0, !dbg !4494
  br i1 %8, label %13, label %9, !dbg !4496

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4497
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #35, !dbg !4498
  %12 = icmp eq i64 %11, -1, !dbg !4499
  br i1 %12, label %16, label %13, !dbg !4500

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4501
  %15 = icmp eq i32 %14, 0, !dbg !4501
  br i1 %15, label %16, label %18, !dbg !4502

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4484, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i32 0, metadata !4486, metadata !DIExpression()), !dbg !4487
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4503
  call void @llvm.dbg.value(metadata i32 %21, metadata !4486, metadata !DIExpression()), !dbg !4487
  br label %24, !dbg !4504

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #38, !dbg !4505
  %20 = load i32, i32* %19, align 4, !dbg !4505, !tbaa !586
  call void @llvm.dbg.value(metadata i32 %20, metadata !4484, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i32 0, metadata !4486, metadata !DIExpression()), !dbg !4487
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4503
  call void @llvm.dbg.value(metadata i32 %21, metadata !4486, metadata !DIExpression()), !dbg !4487
  %22 = icmp eq i32 %20, 0, !dbg !4506
  br i1 %22, label %24, label %23, !dbg !4504

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4508, !tbaa !586
  call void @llvm.dbg.value(metadata i32 -1, metadata !4486, metadata !DIExpression()), !dbg !4487
  br label %24, !dbg !4510

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4487
  ret i32 %25, !dbg !4511
}

; Function Attrs: nofree nounwind
declare !dbg !4512 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4513 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4514 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4517 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4555, metadata !DIExpression()), !dbg !4556
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4557
  br i1 %2, label %6, label %3, !dbg !4559

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4560
  %5 = icmp eq i32 %4, 0, !dbg !4560
  br i1 %5, label %6, label %8, !dbg !4561

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !4562
  br label %17, !dbg !4563

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4564, metadata !DIExpression()) #35, !dbg !4569
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4571
  %10 = load i32, i32* %9, align 8, !dbg !4571, !tbaa !4428
  %11 = and i32 %10, 256, !dbg !4573
  %12 = icmp eq i32 %11, 0, !dbg !4573
  br i1 %12, label %15, label %13, !dbg !4574

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #35, !dbg !4575
  br label %15, !dbg !4575

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !4576
  br label %17, !dbg !4577

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4556
  ret i32 %18, !dbg !4578
}

; Function Attrs: nofree nounwind
declare !dbg !4579 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !4580 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4619, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i64 %1, metadata !4620, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i32 %2, metadata !4621, metadata !DIExpression()), !dbg !4625
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4626
  %5 = load i8*, i8** %4, align 8, !dbg !4626, !tbaa !4627
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4628
  %7 = load i8*, i8** %6, align 8, !dbg !4628, !tbaa !4629
  %8 = icmp eq i8* %5, %7, !dbg !4630
  br i1 %8, label %9, label %28, !dbg !4631

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4632
  %11 = load i8*, i8** %10, align 8, !dbg !4632, !tbaa !2097
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4633
  %13 = load i8*, i8** %12, align 8, !dbg !4633, !tbaa !4634
  %14 = icmp eq i8* %11, %13, !dbg !4635
  br i1 %14, label %15, label %28, !dbg !4636

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4637
  %17 = load i8*, i8** %16, align 8, !dbg !4637, !tbaa !4638
  %18 = icmp eq i8* %17, null, !dbg !4639
  br i1 %18, label %19, label %28, !dbg !4640

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4641
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #35, !dbg !4642
  call void @llvm.dbg.value(metadata i64 %21, metadata !4622, metadata !DIExpression()), !dbg !4643
  %22 = icmp eq i64 %21, -1, !dbg !4644
  br i1 %22, label %30, label %23, !dbg !4646

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4647
  %25 = load i32, i32* %24, align 8, !dbg !4648, !tbaa !4428
  %26 = and i32 %25, -17, !dbg !4648
  store i32 %26, i32* %24, align 8, !dbg !4648, !tbaa !4428
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4649
  store i64 %21, i64* %27, align 8, !dbg !4650, !tbaa !4651
  br label %30, !dbg !4652

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4653
  br label %30, !dbg !4654

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4625
  ret i32 %31, !dbg !4655
}

; Function Attrs: nofree nounwind
declare !dbg !4656 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4659 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4664, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata i8* %1, metadata !4665, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata i64 %2, metadata !4666, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4667, metadata !DIExpression()), !dbg !4669
  %5 = icmp eq i8* %1, null, !dbg !4670
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4672
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.217, i64 0, i64 0), i8* %1, !dbg !4672
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4672
  call void @llvm.dbg.value(metadata i64 %8, metadata !4666, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata i8* %7, metadata !4665, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata i32* %6, metadata !4664, metadata !DIExpression()), !dbg !4669
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4673
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4675
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4667, metadata !DIExpression()), !dbg !4669
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #35, !dbg !4676
  call void @llvm.dbg.value(metadata i64 %11, metadata !4668, metadata !DIExpression()), !dbg !4669
  %12 = icmp ult i64 %11, -3, !dbg !4677
  br i1 %12, label %13, label %18, !dbg !4679

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #36, !dbg !4680
  %15 = icmp eq i32 %14, 0, !dbg !4680
  br i1 %15, label %16, label %30, !dbg !4681

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4682, metadata !DIExpression()) #35, !dbg !4687
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4689, metadata !DIExpression()) #35, !dbg !4694
  call void @llvm.dbg.value(metadata i32 0, metadata !4692, metadata !DIExpression()) #35, !dbg !4694
  call void @llvm.dbg.value(metadata i64 8, metadata !4693, metadata !DIExpression()) #35, !dbg !4694
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4696
  store i64 0, i64* %17, align 1, !dbg !4696
  br label %30, !dbg !4697

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4698
  br i1 %19, label %20, label %21, !dbg !4700

20:                                               ; preds = %18
  tail call void @abort() #37, !dbg !4701
  unreachable, !dbg !4701

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4702

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #35, !dbg !4704
  br i1 %24, label %30, label %25, !dbg !4705

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4706
  br i1 %26, label %30, label %27, !dbg !4709

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4710, !tbaa !595
  %29 = zext i8 %28 to i32, !dbg !4711
  store i32 %29, i32* %6, align 4, !dbg !4712, !tbaa !586
  br label %30, !dbg !4713

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4669
  ret i64 %31, !dbg !4714
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4715 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !4721 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4723, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i64 %1, metadata !4724, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i64 %2, metadata !4725, metadata !DIExpression()), !dbg !4727
  %4 = icmp eq i64 %2, 0, !dbg !4728
  br i1 %4, label %8, label %5, !dbg !4728

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4728
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4728
  br i1 %7, label %13, label %8, !dbg !4728

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4726, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4727
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4726, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4727
  %9 = mul i64 %2, %1, !dbg !4728
  call void @llvm.dbg.value(metadata i64 %9, metadata !4726, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i8* %0, metadata !4730, metadata !DIExpression()) #35, !dbg !4734
  call void @llvm.dbg.value(metadata i64 %9, metadata !4733, metadata !DIExpression()) #35, !dbg !4734
  %10 = icmp eq i64 %9, 0, !dbg !4736
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4736
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #35, !dbg !4737
  br label %15, !dbg !4738

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4726, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4727
  %14 = tail call i32* @__errno_location() #38, !dbg !4739
  store i32 12, i32* %14, align 4, !dbg !4741, !tbaa !586
  br label %15, !dbg !4742

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4727
  ret i8* %16, !dbg !4743
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4744 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4746, metadata !DIExpression()), !dbg !4751
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4752
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4752
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4747, metadata !DIExpression()), !dbg !4753
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #35, !dbg !4754
  %5 = icmp eq i32 %4, 0, !dbg !4754
  br i1 %5, label %6, label %13, !dbg !4756

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4757, metadata !DIExpression()) #35, !dbg !4761
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.222, i64 0, i64 0), metadata !4760, metadata !DIExpression()) #35, !dbg !4761
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.222, i64 0, i64 0), i64 2), !dbg !4764
  %8 = icmp eq i32 %7, 0, !dbg !4765
  br i1 %8, label %12, label %9, !dbg !4766

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4757, metadata !DIExpression()) #35, !dbg !4767
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.223, i64 0, i64 0), metadata !4760, metadata !DIExpression()) #35, !dbg !4767
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.223, i64 0, i64 0), i64 6), !dbg !4769
  %11 = icmp eq i32 %10, 0, !dbg !4770
  br i1 %11, label %12, label %13, !dbg !4771

12:                                               ; preds = %9, %6
  br label %13, !dbg !4772

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4751
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4773
  ret i1 %14, !dbg !4773
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4774 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4778, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i8* %1, metadata !4779, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i64 %2, metadata !4780, metadata !DIExpression()), !dbg !4781
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #35, !dbg !4782
  ret i32 %4, !dbg !4783
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4784 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4788, metadata !DIExpression()), !dbg !4789
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #35, !dbg !4790
  ret i8* %2, !dbg !4791
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4792 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4794, metadata !DIExpression()), !dbg !4796
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4797
  call void @llvm.dbg.value(metadata i8* %2, metadata !4795, metadata !DIExpression()), !dbg !4796
  ret i8* %2, !dbg !4798
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4799 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4801, metadata !DIExpression()), !dbg !4808
  call void @llvm.dbg.value(metadata i8* %1, metadata !4802, metadata !DIExpression()), !dbg !4808
  call void @llvm.dbg.value(metadata i64 %2, metadata !4803, metadata !DIExpression()), !dbg !4808
  call void @llvm.dbg.value(metadata i32 %0, metadata !4794, metadata !DIExpression()) #35, !dbg !4809
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4811
  call void @llvm.dbg.value(metadata i8* %4, metadata !4795, metadata !DIExpression()) #35, !dbg !4809
  call void @llvm.dbg.value(metadata i8* %4, metadata !4804, metadata !DIExpression()), !dbg !4808
  %5 = icmp eq i8* %4, null, !dbg !4812
  br i1 %5, label %6, label %9, !dbg !4813

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4814
  br i1 %7, label %19, label %8, !dbg !4817

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4818, !tbaa !595
  br label %19, !dbg !4819

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #36, !dbg !4820
  call void @llvm.dbg.value(metadata i64 %10, metadata !4805, metadata !DIExpression()), !dbg !4821
  %11 = icmp ult i64 %10, %2, !dbg !4822
  br i1 %11, label %12, label %14, !dbg !4824

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4825
  call void @llvm.dbg.value(metadata i8* %1, metadata !4827, metadata !DIExpression()) #35, !dbg !4832
  call void @llvm.dbg.value(metadata i8* %4, metadata !4830, metadata !DIExpression()) #35, !dbg !4832
  call void @llvm.dbg.value(metadata i64 %13, metadata !4831, metadata !DIExpression()) #35, !dbg !4832
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #35, !dbg !4834
  br label %19, !dbg !4835

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4836
  br i1 %15, label %19, label %16, !dbg !4839

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4840
  call void @llvm.dbg.value(metadata i8* %1, metadata !4827, metadata !DIExpression()) #35, !dbg !4842
  call void @llvm.dbg.value(metadata i8* %4, metadata !4830, metadata !DIExpression()) #35, !dbg !4842
  call void @llvm.dbg.value(metadata i64 %17, metadata !4831, metadata !DIExpression()) #35, !dbg !4842
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #35, !dbg !4844
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4845
  store i8 0, i8* %18, align 1, !dbg !4846, !tbaa !595
  br label %19, !dbg !4847

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4848
  ret i32 %20, !dbg !4849
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
attributes #13 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { argmemonly nofree nounwind readonly willreturn }
attributes #24 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { argmemonly nofree nounwind willreturn writeonly }
attributes #27 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #28 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #35 = { nounwind }
attributes #36 = { nounwind readonly willreturn }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind readnone willreturn }
attributes #39 = { noreturn }
attributes #40 = { cold nounwind }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2, !152, !157, !164, !344, !364, !366, !205, !215, !247, !372, !374, !336, !381, !415, !417, !419, !421, !423, !350, !425, !428, !430, !432}
!llvm.ident = !{!434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434, !434}
!llvm.module.flags = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "argv", scope: !2, file: !6, line: 80, type: !149, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !59, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/lbracket.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7f5314e6a85a0cd1a7b9f272709c5c74")
!4 = !{!5, !12, !27}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 55, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/test.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7583f30ebbd536ebc500e5a99f7dfb08")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "TEST_TRUE", value: 0)
!10 = !DIEnumerator(name: "TEST_FALSE", value: 1)
!11 = !DIEnumerator(name: "TEST_FAILURE", value: 2)
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
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "binop", file: !6, line: 58, baseType: !7, size: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!29 = !DIEnumerator(name: "EQ_STRING_BINOP", value: 0)
!30 = !DIEnumerator(name: "GT_STRING_BINOP", value: 1)
!31 = !DIEnumerator(name: "LT_STRING_BINOP", value: 2)
!32 = !DIEnumerator(name: "NE_STRING_BINOP", value: 3)
!33 = !DIEnumerator(name: "EQ_BINOP", value: 4)
!34 = !DIEnumerator(name: "GE_BINOP", value: 5)
!35 = !DIEnumerator(name: "GT_BINOP", value: 6)
!36 = !DIEnumerator(name: "LE_BINOP", value: 7)
!37 = !DIEnumerator(name: "LT_BINOP", value: 8)
!38 = !DIEnumerator(name: "NE_BINOP", value: 9)
!39 = !DIEnumerator(name: "EF_BINOP", value: 10)
!40 = !DIEnumerator(name: "NT_BINOP", value: 11)
!41 = !DIEnumerator(name: "OT_BINOP", value: 12)
!42 = !{!43, !45, !46, !47, !48, !51, !53, !54}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 46, baseType: !50)
!49 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !55, line: 10, baseType: !56)
!55 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !57, line: 160, baseType: !58)
!57 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!58 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!59 = !{!60, !62, !0, !64}
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "pos", scope: !2, file: !6, line: 78, type: !46, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "argc", scope: !2, file: !6, line: 79, type: !46, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !66, file: !67, line: 575, type: !46, isLocal: true, isDefinition: true)
!66 = distinct !DISubprogram(name: "oputs_", scope: !67, file: !67, line: 573, type: !68, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !70)
!67 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!68 = !DISubroutineType(types: !69)
!69 = !{null, !51, !51}
!70 = !{!71, !72, !73, !76, !78, !79, !80, !84, !85, !86, !87, !89, !143, !144, !145, !147, !148}
!71 = !DILocalVariable(name: "program", arg: 1, scope: !66, file: !67, line: 573, type: !51)
!72 = !DILocalVariable(name: "option", arg: 2, scope: !66, file: !67, line: 573, type: !51)
!73 = !DILocalVariable(name: "term", scope: !74, file: !67, line: 585, type: !51)
!74 = distinct !DILexicalBlock(scope: !75, file: !67, line: 582, column: 5)
!75 = distinct !DILexicalBlock(scope: !66, file: !67, line: 581, column: 7)
!76 = !DILocalVariable(name: "double_space", scope: !66, file: !67, line: 594, type: !77)
!77 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!78 = !DILocalVariable(name: "first_word", scope: !66, file: !67, line: 595, type: !51)
!79 = !DILocalVariable(name: "option_text", scope: !66, file: !67, line: 596, type: !51)
!80 = !DILocalVariable(name: "s", scope: !81, file: !67, line: 608, type: !51)
!81 = distinct !DILexicalBlock(scope: !82, file: !67, line: 605, column: 5)
!82 = distinct !DILexicalBlock(scope: !83, file: !67, line: 604, column: 12)
!83 = distinct !DILexicalBlock(scope: !66, file: !67, line: 597, column: 7)
!84 = !DILocalVariable(name: "spaces", scope: !81, file: !67, line: 609, type: !48)
!85 = !DILocalVariable(name: "anchor_len", scope: !66, file: !67, line: 620, type: !48)
!86 = !DILocalVariable(name: "desc_text", scope: !66, file: !67, line: 625, type: !51)
!87 = !DILocalVariable(name: "__ptr", scope: !88, file: !67, line: 644, type: !51)
!88 = distinct !DILexicalBlock(scope: !66, file: !67, line: 644, column: 3)
!89 = !DILocalVariable(name: "__stream", scope: !88, file: !67, line: 644, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !92, line: 7, baseType: !93)
!92 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !94, line: 49, size: 1728, elements: !95)
!94 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !111, !113, !114, !115, !117, !118, !120, !124, !127, !129, !132, !135, !136, !137, !138, !139}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !93, file: !94, line: 51, baseType: !46, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !93, file: !94, line: 54, baseType: !43, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !93, file: !94, line: 55, baseType: !43, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !93, file: !94, line: 56, baseType: !43, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !93, file: !94, line: 57, baseType: !43, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !93, file: !94, line: 58, baseType: !43, size: 64, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !93, file: !94, line: 59, baseType: !43, size: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !93, file: !94, line: 60, baseType: !43, size: 64, offset: 448)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !93, file: !94, line: 61, baseType: !43, size: 64, offset: 512)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !93, file: !94, line: 64, baseType: !43, size: 64, offset: 576)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !93, file: !94, line: 65, baseType: !43, size: 64, offset: 640)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !93, file: !94, line: 66, baseType: !43, size: 64, offset: 704)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !93, file: !94, line: 68, baseType: !109, size: 64, offset: 768)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !94, line: 36, flags: DIFlagFwdDecl)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !93, file: !94, line: 70, baseType: !112, size: 64, offset: 832)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !93, file: !94, line: 72, baseType: !46, size: 32, offset: 896)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !93, file: !94, line: 73, baseType: !46, size: 32, offset: 928)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !93, file: !94, line: 74, baseType: !116, size: 64, offset: 960)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !57, line: 152, baseType: !58)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !93, file: !94, line: 77, baseType: !47, size: 16, offset: 1024)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !93, file: !94, line: 78, baseType: !119, size: 8, offset: 1040)
!119 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !93, file: !94, line: 79, baseType: !121, size: 8, offset: 1048)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 1)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !93, file: !94, line: 81, baseType: !125, size: 64, offset: 1088)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !94, line: 43, baseType: null)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !93, file: !94, line: 89, baseType: !128, size: 64, offset: 1152)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !57, line: 153, baseType: !58)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !93, file: !94, line: 91, baseType: !130, size: 64, offset: 1216)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !94, line: 37, flags: DIFlagFwdDecl)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !93, file: !94, line: 92, baseType: !133, size: 64, offset: 1280)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !94, line: 38, flags: DIFlagFwdDecl)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !93, file: !94, line: 93, baseType: !112, size: 64, offset: 1344)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !93, file: !94, line: 94, baseType: !45, size: 64, offset: 1408)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !93, file: !94, line: 95, baseType: !48, size: 64, offset: 1472)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !93, file: !94, line: 96, baseType: !46, size: 32, offset: 1536)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !93, file: !94, line: 98, baseType: !140, size: 160, offset: 1568)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 160, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 20)
!143 = !DILocalVariable(name: "__cnt", scope: !88, file: !67, line: 644, type: !48)
!144 = !DILocalVariable(name: "url_program", scope: !66, file: !67, line: 648, type: !51)
!145 = !DILocalVariable(name: "__ptr", scope: !146, file: !67, line: 686, type: !51)
!146 = distinct !DILexicalBlock(scope: !66, file: !67, line: 686, column: 3)
!147 = !DILocalVariable(name: "__stream", scope: !146, file: !67, line: 686, type: !90)
!148 = !DILocalVariable(name: "__cnt", scope: !146, file: !67, line: 686, type: !48)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "Version", scope: !152, file: !153, line: 3, type: !51, isLocal: false, isDefinition: true)
!152 = distinct !DICompileUnit(language: DW_LANG_C99, file: !153, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !154, splitDebugInlining: false, nameTableKind: None)
!153 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!154 = !{!150}
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "file_name", scope: !157, file: !158, line: 45, type: !51, isLocal: true, isDefinition: true)
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !159, splitDebugInlining: false, nameTableKind: None)
!158 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!159 = !{!155, !160}
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !157, file: !158, line: 55, type: !77, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !164, file: !165, line: 66, type: !200, isLocal: false, isDefinition: true)
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !166, globals: !167, splitDebugInlining: false, nameTableKind: None)
!165 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!166 = !{!45, !53}
!167 = !{!168, !194, !162, !196, !198}
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "old_file_name", scope: !170, file: !165, line: 304, type: !51, isLocal: true, isDefinition: true)
!170 = distinct !DISubprogram(name: "verror_at_line", scope: !165, file: !165, line: 298, type: !171, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !187)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !46, !46, !51, !7, !51, !173}
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !174, line: 52, baseType: !175)
!174 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !176, line: 32, baseType: !177)
!176 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !178, baseType: !179)
!178 = !DIFile(filename: "lib/error.c", directory: "/src")
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !180, size: 256, elements: !181)
!180 = !DINamespace(name: "std", scope: null)
!181 = !{!182, !183, !184, !185, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !179, file: !178, baseType: !45, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !179, file: !178, baseType: !45, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !179, file: !178, baseType: !45, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !179, file: !178, baseType: !46, size: 32, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !179, file: !178, baseType: !46, size: 32, offset: 224)
!187 = !{!188, !189, !190, !191, !192, !193}
!188 = !DILocalVariable(name: "status", arg: 1, scope: !170, file: !165, line: 298, type: !46)
!189 = !DILocalVariable(name: "errnum", arg: 2, scope: !170, file: !165, line: 298, type: !46)
!190 = !DILocalVariable(name: "file_name", arg: 3, scope: !170, file: !165, line: 298, type: !51)
!191 = !DILocalVariable(name: "line_number", arg: 4, scope: !170, file: !165, line: 298, type: !7)
!192 = !DILocalVariable(name: "message", arg: 5, scope: !170, file: !165, line: 298, type: !51)
!193 = !DILocalVariable(name: "args", arg: 6, scope: !170, file: !165, line: 298, type: !173)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "old_line_number", scope: !170, file: !165, line: 305, type: !7, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "error_message_count", scope: !164, file: !165, line: 69, type: !7, isLocal: false, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !164, file: !165, line: 295, type: !46, isLocal: false, isDefinition: true)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null}
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "program_name", scope: !205, file: !206, line: 31, type: !51, isLocal: false, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !207, globals: !208, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!207 = !{!43}
!208 = !{!203}
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "utf07FF", scope: !211, file: !212, line: 46, type: !242, isLocal: true, isDefinition: true)
!211 = distinct !DISubprogram(name: "proper_name_lite", scope: !212, file: !212, line: 38, type: !213, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !217)
!212 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!213 = !DISubroutineType(types: !214)
!214 = !{!51, !51, !51}
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !216, splitDebugInlining: false, nameTableKind: None)
!216 = !{!209}
!217 = !{!218, !219, !220, !221, !226}
!218 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !211, file: !212, line: 38, type: !51)
!219 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !211, file: !212, line: 38, type: !51)
!220 = !DILocalVariable(name: "translation", scope: !211, file: !212, line: 40, type: !51)
!221 = !DILocalVariable(name: "w", scope: !211, file: !212, line: 47, type: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !223, line: 37, baseType: !224)
!223 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !57, line: 57, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !57, line: 42, baseType: !7)
!226 = !DILocalVariable(name: "mbs", scope: !211, file: !212, line: 48, type: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !228, line: 6, baseType: !229)
!228 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !230, line: 21, baseType: !231)
!230 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 13, size: 64, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !231, file: !230, line: 15, baseType: !46, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !231, file: !230, line: 20, baseType: !235, size: 32, offset: 32)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !231, file: !230, line: 16, size: 32, elements: !236)
!236 = !{!237, !238}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !235, file: !230, line: 18, baseType: !7, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !235, file: !230, line: 19, baseType: !239, size: 32)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 32, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 4)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 16, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 2)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !247, file: !248, line: 76, type: !330, isLocal: false, isDefinition: true)
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !249, retainedTypes: !269, globals: !270, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!249 = !{!250, !264, !12}
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !251, line: 42, baseType: !7, size: 32, elements: !252)
!251 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!253 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!254 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!255 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!256 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!257 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!258 = !DIEnumerator(name: "c_quoting_style", value: 5)
!259 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!260 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!261 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!262 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!263 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !251, line: 254, baseType: !7, size: 32, elements: !265)
!265 = !{!266, !267, !268}
!266 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!267 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!268 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!269 = !{!46, !47, !48}
!270 = !{!245, !271, !277, !289, !291, !296, !319, !326, !328}
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !247, file: !248, line: 92, type: !273, isLocal: false, isDefinition: true)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 320, elements: !275)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!275 = !{!276}
!276 = !DISubrange(count: 10)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !247, file: !248, line: 1040, type: !279, isLocal: false, isDefinition: true)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !248, line: 56, size: 448, elements: !280)
!280 = !{!281, !282, !283, !287, !288}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !279, file: !248, line: 59, baseType: !250, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !248, line: 62, baseType: !46, size: 32, offset: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !279, file: !248, line: 66, baseType: !284, size: 256, offset: 64)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 8)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !279, file: !248, line: 69, baseType: !51, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !279, file: !248, line: 72, baseType: !51, size: 64, offset: 384)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !247, file: !248, line: 107, type: !279, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "slot0", scope: !247, file: !248, line: 831, type: !293, isLocal: true, isDefinition: true)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2048, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 256)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "quote", scope: !298, file: !248, line: 228, type: !317, isLocal: true, isDefinition: true)
!298 = distinct !DISubprogram(name: "gettext_quote", scope: !248, file: !248, line: 197, type: !299, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{!51, !51, !250}
!301 = !{!302, !303, !304, !305, !306}
!302 = !DILocalVariable(name: "msgid", arg: 1, scope: !298, file: !248, line: 197, type: !51)
!303 = !DILocalVariable(name: "s", arg: 2, scope: !298, file: !248, line: 197, type: !250)
!304 = !DILocalVariable(name: "translation", scope: !298, file: !248, line: 199, type: !51)
!305 = !DILocalVariable(name: "w", scope: !298, file: !248, line: 229, type: !222)
!306 = !DILocalVariable(name: "mbs", scope: !298, file: !248, line: 230, type: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !228, line: 6, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !230, line: 21, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 13, size: 64, elements: !310)
!310 = !{!311, !312}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !309, file: !230, line: 15, baseType: !46, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !309, file: !230, line: 20, baseType: !313, size: 32, offset: 32)
!313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !309, file: !230, line: 16, size: 32, elements: !314)
!314 = !{!315, !316}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !313, file: !230, line: 18, baseType: !7, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !313, file: !230, line: 19, baseType: !239, size: 32)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 64, elements: !318)
!318 = !{!244, !241}
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "slotvec", scope: !247, file: !248, line: 834, type: !321, isLocal: true, isDefinition: true)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !248, line: 823, size: 128, elements: !323)
!323 = !{!324, !325}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !322, file: !248, line: 825, baseType: !48, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !322, file: !248, line: 826, baseType: !43, size: 64, offset: 64)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "nslots", scope: !247, file: !248, line: 832, type: !46, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "slotvec0", scope: !247, file: !248, line: 833, type: !322, isLocal: true, isDefinition: true)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 704, elements: !332)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!332 = !{!333}
!333 = !DISubrange(count: 11)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !336, file: !337, line: 26, type: !339, isLocal: false, isDefinition: true)
!336 = distinct !DICompileUnit(language: DW_LANG_C99, file: !337, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !338, splitDebugInlining: false, nameTableKind: None)
!337 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!338 = !{!334}
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 376, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 47)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(name: "exit_failure", scope: !344, file: !345, line: 24, type: !347, isLocal: false, isDefinition: true)
!344 = distinct !DICompileUnit(language: DW_LANG_C99, file: !345, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !346, splitDebugInlining: false, nameTableKind: None)
!345 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!346 = !{!342}
!347 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !46)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "internal_state", scope: !350, file: !351, line: 97, type: !354, isLocal: true, isDefinition: true)
!350 = distinct !DICompileUnit(language: DW_LANG_C99, file: !351, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !352, globals: !353, splitDebugInlining: false, nameTableKind: None)
!351 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!352 = !{!45, !48, !53}
!353 = !{!348}
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !228, line: 6, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !230, line: 21, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 13, size: 64, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !356, file: !230, line: 15, baseType: !46, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !356, file: !230, line: 20, baseType: !360, size: 32, offset: 32)
!360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !230, line: 16, size: 32, elements: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !360, file: !230, line: 18, baseType: !7, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !360, file: !230, line: 19, baseType: !239, size: 32)
!364 = distinct !DICompileUnit(language: DW_LANG_C99, file: !365, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!365 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!366 = distinct !DICompileUnit(language: DW_LANG_C99, file: !367, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !368, splitDebugInlining: false, nameTableKind: None)
!367 = !DIFile(filename: "lib/umaxtostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa759af6e92fed26f32f683da6c23a8")
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !370, line: 102, baseType: !371)
!370 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !57, line: 73, baseType: !50)
!372 = distinct !DICompileUnit(language: DW_LANG_C99, file: !373, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!373 = !DIFile(filename: "lib/strintcmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cbb3801b0b03f23f2fd643484b645368")
!374 = distinct !DICompileUnit(language: DW_LANG_C99, file: !375, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376, retainedTypes: !380, splitDebugInlining: false, nameTableKind: None)
!375 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!376 = !{!377}
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !375, line: 40, baseType: !7, size: 32, elements: !378)
!378 = !{!379}
!379 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!380 = !{!45}
!381 = distinct !DICompileUnit(language: DW_LANG_C99, file: !382, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !383, retainedTypes: !414, splitDebugInlining: false, nameTableKind: None)
!382 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!383 = !{!384, !396}
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !385, file: !382, line: 188, baseType: !7, size: 32, elements: !394)
!385 = distinct !DISubprogram(name: "x2nrealloc", scope: !382, file: !382, line: 176, type: !386, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !389)
!386 = !DISubroutineType(types: !387)
!387 = !{!45, !45, !388, !48}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!389 = !{!390, !391, !392, !393}
!390 = !DILocalVariable(name: "p", arg: 1, scope: !385, file: !382, line: 176, type: !45)
!391 = !DILocalVariable(name: "pn", arg: 2, scope: !385, file: !382, line: 176, type: !388)
!392 = !DILocalVariable(name: "s", arg: 3, scope: !385, file: !382, line: 176, type: !48)
!393 = !DILocalVariable(name: "n", scope: !385, file: !382, line: 178, type: !48)
!394 = !{!395}
!395 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!396 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !397, file: !382, line: 228, baseType: !7, size: 32, elements: !394)
!397 = distinct !DISubprogram(name: "xpalloc", scope: !382, file: !382, line: 223, type: !398, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !404)
!398 = !DISubroutineType(types: !399)
!399 = !{!45, !45, !400, !401, !403, !401}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !402, line: 130, baseType: !403)
!402 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !49, line: 35, baseType: !58)
!404 = !{!405, !406, !407, !408, !409, !410, !411, !412, !413}
!405 = !DILocalVariable(name: "pa", arg: 1, scope: !397, file: !382, line: 223, type: !45)
!406 = !DILocalVariable(name: "pn", arg: 2, scope: !397, file: !382, line: 223, type: !400)
!407 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !397, file: !382, line: 223, type: !401)
!408 = !DILocalVariable(name: "n_max", arg: 4, scope: !397, file: !382, line: 223, type: !403)
!409 = !DILocalVariable(name: "s", arg: 5, scope: !397, file: !382, line: 223, type: !401)
!410 = !DILocalVariable(name: "n0", scope: !397, file: !382, line: 230, type: !401)
!411 = !DILocalVariable(name: "n", scope: !397, file: !382, line: 237, type: !401)
!412 = !DILocalVariable(name: "nbytes", scope: !397, file: !382, line: 248, type: !401)
!413 = !DILocalVariable(name: "adjusted_nbytes", scope: !397, file: !382, line: 252, type: !401)
!414 = !{!43, !45, !77, !58, !50}
!415 = distinct !DICompileUnit(language: DW_LANG_C99, file: !416, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!416 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!417 = distinct !DICompileUnit(language: DW_LANG_C99, file: !418, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!418 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!419 = distinct !DICompileUnit(language: DW_LANG_C99, file: !420, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!420 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!421 = distinct !DICompileUnit(language: DW_LANG_C99, file: !422, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !380, splitDebugInlining: false, nameTableKind: None)
!422 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!423 = distinct !DICompileUnit(language: DW_LANG_C99, file: !424, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !380, splitDebugInlining: false, nameTableKind: None)
!424 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!425 = distinct !DICompileUnit(language: DW_LANG_C99, file: !426, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !427, splitDebugInlining: false, nameTableKind: None)
!426 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!427 = !{!77, !50, !45}
!428 = distinct !DICompileUnit(language: DW_LANG_C99, file: !429, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!429 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!430 = distinct !DICompileUnit(language: DW_LANG_C99, file: !431, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!431 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!432 = distinct !DICompileUnit(language: DW_LANG_C99, file: !433, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !380, splitDebugInlining: false, nameTableKind: None)
!433 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!434 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!435 = !{i32 7, !"Dwarf Version", i32 5}
!436 = !{i32 2, !"Debug Info Version", i32 3}
!437 = !{i32 1, !"wchar_size", i32 4}
!438 = !{i32 1, !"branch-target-enforcement", i32 0}
!439 = !{i32 1, !"sign-return-address", i32 0}
!440 = !{i32 1, !"sign-return-address-all", i32 0}
!441 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!442 = !{i32 7, !"PIC Level", i32 2}
!443 = !{i32 7, !"PIE Level", i32 2}
!444 = !{i32 7, !"uwtable", i32 1}
!445 = !{i32 7, !"frame-pointer", i32 1}
!446 = distinct !DISubprogram(name: "usage", scope: !6, file: !6, line: 661, type: !447, scopeLine: 662, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !46}
!449 = !{!450}
!450 = !DILocalVariable(name: "status", arg: 1, scope: !446, file: !6, line: 661, type: !46)
!451 = !DILocation(line: 0, scope: !446)
!452 = !DILocation(line: 663, column: 14, scope: !453)
!453 = distinct !DILexicalBlock(scope: !446, file: !6, line: 663, column: 7)
!454 = !DILocation(line: 663, column: 7, scope: !446)
!455 = !DILocation(line: 664, column: 5, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !6, line: 664, column: 5)
!457 = !{!458, !458, i64 0}
!458 = !{!"any pointer", !459, i64 0}
!459 = !{!"omnipotent char", !460, i64 0}
!460 = !{!"Simple C/C++ TBAA"}
!461 = !DILocation(line: 667, column: 7, scope: !462)
!462 = distinct !DILexicalBlock(scope: !453, file: !6, line: 666, column: 5)
!463 = !DILocation(line: 674, column: 7, scope: !462)
!464 = !DILocation(line: 678, column: 7, scope: !462)
!465 = !DILocation(line: 679, column: 7, scope: !462)
!466 = !DILocation(line: 680, column: 7, scope: !462)
!467 = !DILocation(line: 685, column: 7, scope: !462)
!468 = !DILocation(line: 692, column: 7, scope: !462)
!469 = !DILocation(line: 695, column: 7, scope: !462)
!470 = !DILocation(line: 698, column: 7, scope: !462)
!471 = !DILocation(line: 701, column: 7, scope: !462)
!472 = !DILocation(line: 704, column: 7, scope: !462)
!473 = !DILocation(line: 710, column: 7, scope: !462)
!474 = !DILocation(line: 713, column: 7, scope: !462)
!475 = !DILocation(line: 716, column: 7, scope: !462)
!476 = !DILocation(line: 719, column: 7, scope: !462)
!477 = !DILocation(line: 722, column: 7, scope: !462)
!478 = !DILocation(line: 725, column: 7, scope: !462)
!479 = !DILocation(line: 728, column: 7, scope: !462)
!480 = !DILocation(line: 731, column: 7, scope: !462)
!481 = !DILocation(line: 734, column: 7, scope: !462)
!482 = !DILocation(line: 737, column: 7, scope: !462)
!483 = !DILocation(line: 740, column: 7, scope: !462)
!484 = !DILocation(line: 743, column: 7, scope: !462)
!485 = !DILocation(line: 746, column: 7, scope: !462)
!486 = !DILocation(line: 749, column: 7, scope: !462)
!487 = !DILocation(line: 752, column: 7, scope: !462)
!488 = !DILocation(line: 755, column: 7, scope: !462)
!489 = !DILocation(line: 758, column: 7, scope: !462)
!490 = !DILocation(line: 761, column: 7, scope: !462)
!491 = !DILocation(line: 764, column: 7, scope: !462)
!492 = !DILocation(line: 767, column: 7, scope: !462)
!493 = !DILocation(line: 770, column: 7, scope: !462)
!494 = !DILocation(line: 773, column: 7, scope: !462)
!495 = !DILocation(line: 776, column: 7, scope: !462)
!496 = !DILocation(line: 779, column: 7, scope: !462)
!497 = !DILocation(line: 782, column: 7, scope: !462)
!498 = !DILocation(line: 785, column: 7, scope: !462)
!499 = !DILocation(line: 788, column: 7, scope: !462)
!500 = !DILocation(line: 791, column: 7, scope: !462)
!501 = !DILocation(line: 794, column: 7, scope: !462)
!502 = !DILocation(line: 797, column: 7, scope: !462)
!503 = !DILocation(line: 800, column: 7, scope: !462)
!504 = !DILocation(line: 803, column: 7, scope: !462)
!505 = !DILocation(line: 806, column: 7, scope: !462)
!506 = !DILocation(line: 812, column: 7, scope: !462)
!507 = !DILocation(line: 817, column: 7, scope: !462)
!508 = !DILocation(line: 821, column: 7, scope: !462)
!509 = !DILocalVariable(name: "program", arg: 1, scope: !510, file: !67, line: 836, type: !51)
!510 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !67, file: !67, line: 836, type: !511, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !51}
!513 = !{!509, !514, !523, !524, !526, !527}
!514 = !DILocalVariable(name: "infomap", scope: !510, file: !67, line: 838, type: !515)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 896, elements: !521)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !510, file: !67, line: 838, size: 128, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !517, file: !67, line: 838, baseType: !51, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !517, file: !67, line: 838, baseType: !51, size: 64, offset: 64)
!521 = !{!522}
!522 = !DISubrange(count: 7)
!523 = !DILocalVariable(name: "node", scope: !510, file: !67, line: 848, type: !51)
!524 = !DILocalVariable(name: "map_prog", scope: !510, file: !67, line: 849, type: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!526 = !DILocalVariable(name: "lc_messages", scope: !510, file: !67, line: 861, type: !51)
!527 = !DILocalVariable(name: "url_program", scope: !510, file: !67, line: 874, type: !51)
!528 = !DILocation(line: 0, scope: !510, inlinedAt: !529)
!529 = distinct !DILocation(line: 822, column: 7, scope: !462)
!530 = !DILocation(line: 838, column: 3, scope: !510, inlinedAt: !529)
!531 = !DILocation(line: 838, column: 67, scope: !510, inlinedAt: !529)
!532 = !DILocation(line: 849, column: 36, scope: !510, inlinedAt: !529)
!533 = !DILocation(line: 851, column: 3, scope: !510, inlinedAt: !529)
!534 = !DILocalVariable(name: "__s1", arg: 1, scope: !535, file: !536, line: 1359, type: !51)
!535 = distinct !DISubprogram(name: "streq", scope: !536, file: !536, line: 1359, type: !537, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !539)
!536 = !DIFile(filename: "./lib/string.h", directory: "/src")
!537 = !DISubroutineType(types: !538)
!538 = !{!77, !51, !51}
!539 = !{!534, !540}
!540 = !DILocalVariable(name: "__s2", arg: 2, scope: !535, file: !536, line: 1359, type: !51)
!541 = !DILocation(line: 0, scope: !535, inlinedAt: !542)
!542 = distinct !DILocation(line: 851, column: 33, scope: !510, inlinedAt: !529)
!543 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !542)
!544 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !542)
!545 = !DILocation(line: 852, column: 13, scope: !510, inlinedAt: !529)
!546 = !DILocation(line: 851, column: 20, scope: !510, inlinedAt: !529)
!547 = !{!548, !458, i64 0}
!548 = !{!"infomap", !458, i64 0, !458, i64 8}
!549 = !DILocation(line: 851, column: 10, scope: !510, inlinedAt: !529)
!550 = !DILocation(line: 851, column: 28, scope: !510, inlinedAt: !529)
!551 = distinct !{!551, !533, !545, !552}
!552 = !{!"llvm.loop.mustprogress"}
!553 = !DILocation(line: 854, column: 17, scope: !554, inlinedAt: !529)
!554 = distinct !DILexicalBlock(scope: !510, file: !67, line: 854, column: 7)
!555 = !{!548, !458, i64 8}
!556 = !DILocation(line: 854, column: 7, scope: !554, inlinedAt: !529)
!557 = !DILocation(line: 854, column: 7, scope: !510, inlinedAt: !529)
!558 = !DILocation(line: 857, column: 3, scope: !510, inlinedAt: !529)
!559 = !DILocation(line: 861, column: 29, scope: !510, inlinedAt: !529)
!560 = !DILocation(line: 862, column: 7, scope: !561, inlinedAt: !529)
!561 = distinct !DILexicalBlock(scope: !510, file: !67, line: 862, column: 7)
!562 = !DILocation(line: 862, column: 19, scope: !561, inlinedAt: !529)
!563 = !DILocation(line: 862, column: 22, scope: !561, inlinedAt: !529)
!564 = !DILocation(line: 862, column: 7, scope: !510, inlinedAt: !529)
!565 = !DILocation(line: 868, column: 7, scope: !566, inlinedAt: !529)
!566 = distinct !DILexicalBlock(scope: !561, file: !67, line: 863, column: 5)
!567 = !DILocation(line: 870, column: 5, scope: !566, inlinedAt: !529)
!568 = !DILocation(line: 0, scope: !535, inlinedAt: !569)
!569 = distinct !DILocation(line: 874, column: 29, scope: !510, inlinedAt: !529)
!570 = !DILocation(line: 875, column: 3, scope: !510, inlinedAt: !529)
!571 = !DILocation(line: 877, column: 3, scope: !510, inlinedAt: !529)
!572 = !DILocation(line: 879, column: 1, scope: !510, inlinedAt: !529)
!573 = !DILocation(line: 824, column: 3, scope: !446)
!574 = !DISubprogram(name: "dcgettext", scope: !575, file: !575, line: 51, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!575 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!576 = !DISubroutineType(types: !577)
!577 = !{!43, !51, !51, !46}
!578 = !{}
!579 = !DISubprogram(name: "fputs_unlocked", scope: !174, file: !174, line: 691, type: !580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!580 = !DISubroutineType(types: !581)
!581 = !{!46, !582, !583}
!582 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!583 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!584 = !DILocation(line: 0, scope: !66)
!585 = !DILocation(line: 581, column: 7, scope: !75)
!586 = !{!587, !587, i64 0}
!587 = !{!"int", !459, i64 0}
!588 = !DILocation(line: 581, column: 19, scope: !75)
!589 = !DILocation(line: 581, column: 7, scope: !66)
!590 = !DILocation(line: 585, column: 26, scope: !74)
!591 = !DILocation(line: 0, scope: !74)
!592 = !DILocation(line: 586, column: 23, scope: !74)
!593 = !DILocation(line: 586, column: 28, scope: !74)
!594 = !DILocation(line: 586, column: 32, scope: !74)
!595 = !{!459, !459, i64 0}
!596 = !DILocation(line: 586, column: 38, scope: !74)
!597 = !DILocation(line: 0, scope: !535, inlinedAt: !598)
!598 = distinct !DILocation(line: 586, column: 41, scope: !74)
!599 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !598)
!600 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !598)
!601 = !DILocation(line: 586, column: 19, scope: !74)
!602 = !DILocation(line: 587, column: 5, scope: !74)
!603 = !DILocation(line: 588, column: 7, scope: !604)
!604 = distinct !DILexicalBlock(scope: !66, file: !67, line: 588, column: 7)
!605 = !DILocation(line: 588, column: 7, scope: !66)
!606 = !DILocation(line: 590, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !604, file: !67, line: 589, column: 5)
!608 = !DILocation(line: 591, column: 7, scope: !607)
!609 = !DILocation(line: 595, column: 37, scope: !66)
!610 = !DILocation(line: 595, column: 35, scope: !66)
!611 = !DILocation(line: 596, column: 29, scope: !66)
!612 = !DILocation(line: 597, column: 8, scope: !83)
!613 = !DILocation(line: 597, column: 7, scope: !66)
!614 = !DILocation(line: 604, column: 24, scope: !82)
!615 = !DILocation(line: 604, column: 12, scope: !83)
!616 = !DILocation(line: 0, scope: !81)
!617 = !DILocation(line: 610, column: 16, scope: !81)
!618 = !DILocation(line: 610, column: 7, scope: !81)
!619 = !DILocation(line: 611, column: 21, scope: !81)
!620 = !{!621, !621, i64 0}
!621 = !{!"short", !459, i64 0}
!622 = !DILocation(line: 611, column: 19, scope: !81)
!623 = !DILocation(line: 611, column: 16, scope: !81)
!624 = !DILocation(line: 610, column: 30, scope: !81)
!625 = distinct !{!625, !618, !619, !552}
!626 = !DILocation(line: 612, column: 18, scope: !627)
!627 = distinct !DILexicalBlock(scope: !81, file: !67, line: 612, column: 11)
!628 = !DILocation(line: 612, column: 11, scope: !81)
!629 = !DILocation(line: 620, column: 23, scope: !66)
!630 = !DILocation(line: 625, column: 39, scope: !66)
!631 = !DILocation(line: 626, column: 3, scope: !66)
!632 = !DILocation(line: 626, column: 10, scope: !66)
!633 = !DILocation(line: 626, column: 21, scope: !66)
!634 = !DILocation(line: 628, column: 44, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !67, line: 628, column: 11)
!636 = distinct !DILexicalBlock(scope: !66, file: !67, line: 627, column: 5)
!637 = !DILocation(line: 628, column: 32, scope: !635)
!638 = !DILocation(line: 628, column: 49, scope: !635)
!639 = !DILocation(line: 628, column: 11, scope: !636)
!640 = !DILocation(line: 630, column: 11, scope: !641)
!641 = distinct !DILexicalBlock(scope: !636, file: !67, line: 630, column: 11)
!642 = !DILocation(line: 630, column: 11, scope: !636)
!643 = !DILocation(line: 632, column: 26, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !67, line: 632, column: 15)
!645 = distinct !DILexicalBlock(scope: !641, file: !67, line: 631, column: 9)
!646 = !DILocation(line: 632, column: 34, scope: !644)
!647 = !DILocation(line: 632, column: 37, scope: !644)
!648 = !DILocation(line: 632, column: 15, scope: !645)
!649 = !DILocation(line: 636, column: 29, scope: !650)
!650 = distinct !DILexicalBlock(scope: !645, file: !67, line: 636, column: 15)
!651 = !DILocation(line: 640, column: 16, scope: !636)
!652 = distinct !{!652, !631, !653, !552}
!653 = !DILocation(line: 641, column: 5, scope: !66)
!654 = !DILocation(line: 644, column: 3, scope: !66)
!655 = !DILocation(line: 0, scope: !535, inlinedAt: !656)
!656 = distinct !DILocation(line: 648, column: 31, scope: !66)
!657 = !DILocation(line: 663, column: 7, scope: !658)
!658 = distinct !DILexicalBlock(scope: !66, file: !67, line: 663, column: 7)
!659 = !DILocation(line: 664, column: 7, scope: !658)
!660 = !DILocation(line: 664, column: 10, scope: !658)
!661 = !DILocation(line: 663, column: 7, scope: !66)
!662 = !DILocation(line: 669, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !658, file: !67, line: 665, column: 5)
!664 = !DILocation(line: 671, column: 5, scope: !663)
!665 = !DILocation(line: 676, column: 7, scope: !666)
!666 = distinct !DILexicalBlock(scope: !658, file: !67, line: 673, column: 5)
!667 = !DILocation(line: 679, column: 3, scope: !66)
!668 = !DILocation(line: 683, column: 3, scope: !66)
!669 = !DILocation(line: 686, column: 3, scope: !66)
!670 = !DILocation(line: 688, column: 3, scope: !66)
!671 = !DILocation(line: 691, column: 3, scope: !66)
!672 = !DILocation(line: 695, column: 3, scope: !66)
!673 = !DILocation(line: 696, column: 1, scope: !66)
!674 = !DISubprogram(name: "setlocale", scope: !675, file: !675, line: 122, type: !676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!675 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!676 = !DISubroutineType(types: !677)
!677 = !{!43, !46, !51}
!678 = !DISubprogram(name: "getenv", scope: !679, file: !679, line: 641, type: !680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!679 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!680 = !DISubroutineType(types: !681)
!681 = !{!43, !51}
!682 = !DISubprogram(name: "fwrite_unlocked", scope: !174, file: !174, line: 704, type: !683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!683 = !DISubroutineType(types: !684)
!684 = !{!48, !685, !48, !48, !583}
!685 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !686)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!688 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 843, type: !689, scopeLine: 844, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !691)
!689 = !DISubroutineType(types: !690)
!690 = !{!46, !46, !149}
!691 = !{!692, !693, !694}
!692 = !DILocalVariable(name: "margc", arg: 1, scope: !688, file: !6, line: 843, type: !46)
!693 = !DILocalVariable(name: "margv", arg: 2, scope: !688, file: !6, line: 843, type: !149)
!694 = !DILocalVariable(name: "value", scope: !688, file: !6, line: 845, type: !77)
!695 = !DILocation(line: 0, scope: !688)
!696 = !DILocation(line: 856, column: 21, scope: !688)
!697 = !DILocation(line: 856, column: 3, scope: !688)
!698 = !DILocation(line: 857, column: 3, scope: !688)
!699 = !DILocation(line: 858, column: 3, scope: !688)
!700 = !DILocation(line: 859, column: 3, scope: !688)
!701 = !DILocalVariable(name: "status", arg: 1, scope: !702, file: !67, line: 102, type: !46)
!702 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !67, file: !67, line: 102, type: !447, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !703)
!703 = !{!701}
!704 = !DILocation(line: 0, scope: !702, inlinedAt: !705)
!705 = distinct !DILocation(line: 861, column: 3, scope: !688)
!706 = !DILocation(line: 105, column: 18, scope: !707, inlinedAt: !705)
!707 = distinct !DILexicalBlock(scope: !702, file: !67, line: 104, column: 7)
!708 = !DILocation(line: 862, column: 3, scope: !688)
!709 = !DILocation(line: 865, column: 8, scope: !688)
!710 = !DILocation(line: 875, column: 17, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !6, line: 875, column: 11)
!712 = distinct !DILexicalBlock(scope: !713, file: !6, line: 868, column: 5)
!713 = distinct !DILexicalBlock(scope: !688, file: !6, line: 867, column: 7)
!714 = !DILocation(line: 875, column: 11, scope: !712)
!715 = !DILocation(line: 877, column: 22, scope: !716)
!716 = distinct !DILexicalBlock(scope: !717, file: !6, line: 877, column: 15)
!717 = distinct !DILexicalBlock(scope: !711, file: !6, line: 876, column: 9)
!718 = !DILocation(line: 0, scope: !535, inlinedAt: !719)
!719 = distinct !DILocation(line: 877, column: 15, scope: !716)
!720 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !719)
!721 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !719)
!722 = !DILocation(line: 877, column: 15, scope: !717)
!723 = !DILocation(line: 878, column: 13, scope: !716)
!724 = !DILocation(line: 0, scope: !535, inlinedAt: !725)
!725 = distinct !DILocation(line: 880, column: 15, scope: !726)
!726 = distinct !DILexicalBlock(scope: !717, file: !6, line: 880, column: 15)
!727 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !725)
!728 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !725)
!729 = !DILocation(line: 880, column: 15, scope: !717)
!730 = !DILocation(line: 882, column: 28, scope: !731)
!731 = distinct !DILexicalBlock(scope: !726, file: !6, line: 881, column: 13)
!732 = !DILocation(line: 882, column: 64, scope: !731)
!733 = !DILocation(line: 882, column: 73, scope: !731)
!734 = !DILocation(line: 882, column: 15, scope: !731)
!735 = !DILocation(line: 884, column: 15, scope: !731)
!736 = !DILocation(line: 887, column: 17, scope: !737)
!737 = distinct !DILexicalBlock(scope: !712, file: !6, line: 887, column: 11)
!738 = !DILocation(line: 887, column: 21, scope: !737)
!739 = !DILocation(line: 887, column: 44, scope: !737)
!740 = !DILocation(line: 887, column: 32, scope: !737)
!741 = !DILocation(line: 0, scope: !535, inlinedAt: !742)
!742 = distinct !DILocation(line: 887, column: 25, scope: !737)
!743 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !742)
!744 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !742)
!745 = !DILocation(line: 887, column: 11, scope: !712)
!746 = !DILocation(line: 888, column: 28, scope: !737)
!747 = !DILocation(line: 888, column: 45, scope: !737)
!748 = !DILocation(line: 888, column: 9, scope: !737)
!749 = !DILocation(line: 893, column: 8, scope: !688)
!750 = !DILocation(line: 894, column: 7, scope: !688)
!751 = !DILocation(line: 896, column: 11, scope: !752)
!752 = distinct !DILexicalBlock(scope: !688, file: !6, line: 896, column: 7)
!753 = !DILocation(line: 896, column: 7, scope: !688)
!754 = !DILocation(line: 899, column: 27, scope: !688)
!755 = !DILocation(line: 899, column: 11, scope: !688)
!756 = !DILocation(line: 901, column: 7, scope: !757)
!757 = distinct !DILexicalBlock(scope: !688, file: !6, line: 901, column: 7)
!758 = !DILocation(line: 901, column: 14, scope: !757)
!759 = !DILocation(line: 901, column: 11, scope: !757)
!760 = !DILocation(line: 901, column: 7, scope: !688)
!761 = !DILocation(line: 902, column: 24, scope: !757)
!762 = !DILocation(line: 902, column: 55, scope: !757)
!763 = !DILocation(line: 902, column: 60, scope: !757)
!764 = !DILocation(line: 902, column: 48, scope: !757)
!765 = !DILocation(line: 902, column: 5, scope: !757)
!766 = !DILocation(line: 904, column: 3, scope: !688)
!767 = !DILocation(line: 905, column: 1, scope: !688)
!768 = !DISubprogram(name: "bindtextdomain", scope: !575, file: !575, line: 86, type: !769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!769 = !DISubroutineType(types: !770)
!770 = !{!43, !51, !51}
!771 = !DISubprogram(name: "textdomain", scope: !575, file: !575, line: 82, type: !680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!772 = !DISubprogram(name: "atexit", scope: !679, file: !679, line: 602, type: !773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!773 = !DISubroutineType(types: !774)
!774 = !{!46, !200}
!775 = distinct !DISubprogram(name: "test_syntax_error", scope: !6, file: !6, line: 97, type: !776, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !778)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !51, null}
!778 = !{!779, !780}
!779 = !DILocalVariable(name: "format", arg: 1, scope: !775, file: !6, line: 97, type: !51)
!780 = !DILocalVariable(name: "ap", scope: !775, file: !6, line: 99, type: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !174, line: 52, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !176, line: 32, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !784, baseType: !785)
!784 = !DIFile(filename: "src/lbracket.c", directory: "/src")
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !180, size: 256, elements: !786)
!786 = !{!787, !788, !789, !790, !791}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !785, file: !784, line: 99, baseType: !45, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !785, file: !784, line: 99, baseType: !45, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !785, file: !784, line: 99, baseType: !45, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !785, file: !784, line: 99, baseType: !46, size: 32, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !785, file: !784, line: 99, baseType: !46, size: 32, offset: 224)
!792 = !DILocation(line: 0, scope: !775)
!793 = !DILocation(line: 99, column: 3, scope: !775)
!794 = !DILocation(line: 99, column: 11, scope: !775)
!795 = !DILocation(line: 100, column: 3, scope: !775)
!796 = !DILocation(line: 101, column: 3, scope: !775)
!797 = !{i64 0, i64 8, !457, i64 8, i64 8, !457, i64 16, i64 8, !457, i64 24, i64 4, !586, i64 28, i64 4, !586}
!798 = !DILocation(line: 102, column: 3, scope: !775)
!799 = distinct !DISubprogram(name: "posixtest", scope: !6, file: !6, line: 616, type: !800, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !802)
!800 = !DISubroutineType(types: !801)
!801 = !{!77, !46}
!802 = !{!803, !804}
!803 = !DILocalVariable(name: "nargs", arg: 1, scope: !799, file: !6, line: 616, type: !46)
!804 = !DILocalVariable(name: "value", scope: !799, file: !6, line: 618, type: !77)
!805 = !DILocation(line: 0, scope: !799)
!806 = !DILocation(line: 620, column: 3, scope: !799)
!807 = !DILocation(line: 562, column: 10, scope: !808, inlinedAt: !811)
!808 = distinct !DISubprogram(name: "one_argument", scope: !6, file: !6, line: 560, type: !809, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !578)
!809 = !DISubroutineType(types: !810)
!810 = !{!77}
!811 = distinct !DILocation(line: 623, column: 17, scope: !812)
!812 = distinct !DILexicalBlock(scope: !799, file: !6, line: 621, column: 5)
!813 = !DILocation(line: 562, column: 18, scope: !808, inlinedAt: !811)
!814 = !DILocation(line: 562, column: 25, scope: !808, inlinedAt: !811)
!815 = !DILocation(line: 624, column: 9, scope: !812)
!816 = !DILocation(line: 570, column: 14, scope: !817, inlinedAt: !821)
!817 = distinct !DILexicalBlock(scope: !818, file: !6, line: 570, column: 7)
!818 = distinct !DISubprogram(name: "two_arguments", scope: !6, file: !6, line: 566, type: !809, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !819)
!819 = !{!820}
!820 = !DILocalVariable(name: "value", scope: !818, file: !6, line: 568, type: !77)
!821 = distinct !DILocation(line: 627, column: 17, scope: !812)
!822 = !DILocation(line: 570, column: 19, scope: !817, inlinedAt: !821)
!823 = !DILocation(line: 0, scope: !535, inlinedAt: !824)
!824 = distinct !DILocation(line: 570, column: 7, scope: !817, inlinedAt: !821)
!825 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !824)
!826 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !824)
!827 = !DILocation(line: 570, column: 7, scope: !818, inlinedAt: !821)
!828 = !DILocalVariable(name: "f", arg: 1, scope: !829, file: !6, line: 110, type: !77)
!829 = distinct !DISubprogram(name: "advance", scope: !6, file: !6, line: 110, type: !830, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !77}
!832 = !{!828}
!833 = !DILocation(line: 0, scope: !829, inlinedAt: !834)
!834 = distinct !DILocation(line: 572, column: 7, scope: !835, inlinedAt: !821)
!835 = distinct !DILexicalBlock(scope: !817, file: !6, line: 571, column: 5)
!836 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !834)
!837 = !DILocation(line: 562, column: 18, scope: !808, inlinedAt: !838)
!838 = distinct !DILocation(line: 573, column: 17, scope: !835, inlinedAt: !821)
!839 = !DILocation(line: 562, column: 10, scope: !808, inlinedAt: !838)
!840 = !DILocation(line: 562, column: 25, scope: !808, inlinedAt: !838)
!841 = !DILocation(line: 0, scope: !818, inlinedAt: !821)
!842 = !DILocation(line: 574, column: 5, scope: !835, inlinedAt: !821)
!843 = !DILocation(line: 575, column: 12, scope: !844, inlinedAt: !821)
!844 = distinct !DILexicalBlock(scope: !817, file: !6, line: 575, column: 12)
!845 = !DILocation(line: 575, column: 25, scope: !844, inlinedAt: !821)
!846 = !DILocation(line: 576, column: 12, scope: !844, inlinedAt: !821)
!847 = !DILocation(line: 576, column: 15, scope: !844, inlinedAt: !821)
!848 = !DILocation(line: 576, column: 28, scope: !844, inlinedAt: !821)
!849 = !DILocation(line: 577, column: 12, scope: !844, inlinedAt: !821)
!850 = !DILocation(line: 577, column: 15, scope: !844, inlinedAt: !821)
!851 = !DILocation(line: 577, column: 28, scope: !844, inlinedAt: !821)
!852 = !DILocation(line: 575, column: 12, scope: !817, inlinedAt: !821)
!853 = !DILocation(line: 579, column: 15, scope: !854, inlinedAt: !821)
!854 = distinct !DILexicalBlock(scope: !844, file: !6, line: 578, column: 5)
!855 = !DILocation(line: 582, column: 5, scope: !844, inlinedAt: !821)
!856 = !DILocation(line: 631, column: 17, scope: !812)
!857 = !DILocation(line: 632, column: 9, scope: !812)
!858 = !DILocation(line: 635, column: 20, scope: !859)
!859 = distinct !DILexicalBlock(scope: !812, file: !6, line: 635, column: 13)
!860 = !DILocation(line: 635, column: 25, scope: !859)
!861 = !DILocation(line: 0, scope: !535, inlinedAt: !862)
!862 = distinct !DILocation(line: 635, column: 13, scope: !859)
!863 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !862)
!864 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !862)
!865 = !DILocation(line: 635, column: 13, scope: !812)
!866 = !DILocation(line: 0, scope: !829, inlinedAt: !867)
!867 = distinct !DILocation(line: 637, column: 13, scope: !868)
!868 = distinct !DILexicalBlock(scope: !859, file: !6, line: 636, column: 11)
!869 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !867)
!870 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !867)
!871 = distinct !DILexicalBlock(scope: !829, file: !6, line: 114, column: 7)
!872 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !867)
!873 = !DILocation(line: 638, column: 22, scope: !868)
!874 = !DILocation(line: 638, column: 21, scope: !868)
!875 = !DILocation(line: 639, column: 13, scope: !868)
!876 = !DILocation(line: 0, scope: !535, inlinedAt: !877)
!877 = distinct !DILocation(line: 641, column: 13, scope: !878)
!878 = distinct !DILexicalBlock(scope: !812, file: !6, line: 641, column: 13)
!879 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !877)
!880 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !877)
!881 = !DILocation(line: 641, column: 36, scope: !878)
!882 = !DILocation(line: 641, column: 55, scope: !878)
!883 = !DILocation(line: 641, column: 46, scope: !878)
!884 = !DILocation(line: 0, scope: !535, inlinedAt: !885)
!885 = distinct !DILocation(line: 641, column: 39, scope: !878)
!886 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !885)
!887 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !885)
!888 = !DILocation(line: 641, column: 13, scope: !812)
!889 = !DILocation(line: 0, scope: !829, inlinedAt: !890)
!890 = distinct !DILocation(line: 643, column: 13, scope: !891)
!891 = distinct !DILexicalBlock(scope: !878, file: !6, line: 642, column: 11)
!892 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !890)
!893 = !DILocation(line: 570, column: 14, scope: !817, inlinedAt: !894)
!894 = distinct !DILocation(line: 644, column: 21, scope: !891)
!895 = !DILocation(line: 0, scope: !535, inlinedAt: !896)
!896 = distinct !DILocation(line: 570, column: 7, scope: !817, inlinedAt: !894)
!897 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !896)
!898 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !896)
!899 = !DILocation(line: 570, column: 7, scope: !818, inlinedAt: !894)
!900 = !DILocation(line: 0, scope: !829, inlinedAt: !901)
!901 = distinct !DILocation(line: 572, column: 7, scope: !835, inlinedAt: !894)
!902 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !901)
!903 = !DILocation(line: 562, column: 10, scope: !808, inlinedAt: !904)
!904 = distinct !DILocation(line: 573, column: 17, scope: !835, inlinedAt: !894)
!905 = !DILocation(line: 562, column: 25, scope: !808, inlinedAt: !904)
!906 = !DILocation(line: 0, scope: !818, inlinedAt: !894)
!907 = !DILocation(line: 574, column: 5, scope: !835, inlinedAt: !894)
!908 = !DILocation(line: 575, column: 12, scope: !844, inlinedAt: !894)
!909 = !DILocation(line: 575, column: 25, scope: !844, inlinedAt: !894)
!910 = !DILocation(line: 576, column: 12, scope: !844, inlinedAt: !894)
!911 = !DILocation(line: 576, column: 15, scope: !844, inlinedAt: !894)
!912 = !DILocation(line: 576, column: 28, scope: !844, inlinedAt: !894)
!913 = !DILocation(line: 577, column: 12, scope: !844, inlinedAt: !894)
!914 = !DILocation(line: 577, column: 15, scope: !844, inlinedAt: !894)
!915 = !DILocation(line: 577, column: 28, scope: !844, inlinedAt: !894)
!916 = !DILocation(line: 575, column: 12, scope: !817, inlinedAt: !894)
!917 = !DILocation(line: 579, column: 15, scope: !854, inlinedAt: !894)
!918 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !919)
!919 = distinct !DILocation(line: 645, column: 13, scope: !891)
!920 = !DILocation(line: 582, column: 5, scope: !844, inlinedAt: !894)
!921 = !DILocation(line: 0, scope: !829, inlinedAt: !919)
!922 = !DILocation(line: 646, column: 13, scope: !891)
!923 = !DILocation(line: 651, column: 9, scope: !924)
!924 = distinct !DILexicalBlock(scope: !925, file: !6, line: 651, column: 9)
!925 = distinct !DILexicalBlock(scope: !812, file: !6, line: 651, column: 9)
!926 = !DILocation(line: 651, column: 9, scope: !925)
!927 = !DILocation(line: 553, column: 7, scope: !928, inlinedAt: !930)
!928 = distinct !DILexicalBlock(scope: !929, file: !6, line: 553, column: 7)
!929 = distinct !DISubprogram(name: "expr", scope: !6, file: !6, line: 551, type: !809, scopeLine: 552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !578)
!930 = distinct !DILocation(line: 652, column: 17, scope: !812)
!931 = !DILocation(line: 553, column: 14, scope: !928, inlinedAt: !930)
!932 = !DILocation(line: 553, column: 11, scope: !928, inlinedAt: !930)
!933 = !DILocation(line: 553, column: 7, scope: !929, inlinedAt: !930)
!934 = !DILocation(line: 554, column: 5, scope: !928, inlinedAt: !930)
!935 = !DILocation(line: 556, column: 10, scope: !929, inlinedAt: !930)
!936 = !DILocation(line: 653, column: 5, scope: !812)
!937 = !DILocation(line: 655, column: 3, scope: !799)
!938 = distinct !DISubprogram(name: "unary_operator", scope: !6, file: !6, line: 366, type: !809, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !939)
!939 = !{!940, !975, !978, !979, !983, !984, !987, !988, !990}
!940 = !DILocalVariable(name: "stat_buf", scope: !938, file: !6, line: 368, type: !941)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !942, line: 44, size: 1024, elements: !943)
!942 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!943 = !{!944, !946, !948, !950, !952, !954, !956, !957, !958, !959, !961, !962, !964, !971, !972, !973}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !941, file: !942, line: 46, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !57, line: 145, baseType: !50)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !941, file: !942, line: 47, baseType: !947, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !57, line: 148, baseType: !50)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !941, file: !942, line: 48, baseType: !949, size: 32, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !57, line: 150, baseType: !7)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !941, file: !942, line: 49, baseType: !951, size: 32, offset: 160)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !57, line: 151, baseType: !7)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !941, file: !942, line: 50, baseType: !953, size: 32, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !57, line: 146, baseType: !7)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !941, file: !942, line: 51, baseType: !955, size: 32, offset: 224)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !57, line: 147, baseType: !7)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !941, file: !942, line: 52, baseType: !945, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !941, file: !942, line: 53, baseType: !945, size: 64, offset: 320)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !941, file: !942, line: 54, baseType: !116, size: 64, offset: 384)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !941, file: !942, line: 55, baseType: !960, size: 32, offset: 448)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !57, line: 175, baseType: !46)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !941, file: !942, line: 56, baseType: !46, size: 32, offset: 480)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !941, file: !942, line: 57, baseType: !963, size: 64, offset: 512)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !57, line: 180, baseType: !58)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !941, file: !942, line: 65, baseType: !965, size: 128, offset: 576)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !966, line: 11, size: 128, elements: !967)
!966 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !965, file: !966, line: 16, baseType: !56, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !965, file: !966, line: 21, baseType: !970, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !57, line: 197, baseType: !58)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !941, file: !942, line: 66, baseType: !965, size: 128, offset: 704)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !941, file: !942, line: 67, baseType: !965, size: 128, offset: 832)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !941, file: !942, line: 79, baseType: !974, size: 64, offset: 960)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !243)
!975 = !DILocalVariable(name: "atime", scope: !976, file: !6, line: 401, type: !965)
!976 = distinct !DILexicalBlock(scope: !977, file: !6, line: 397, column: 7)
!977 = distinct !DILexicalBlock(scope: !938, file: !6, line: 371, column: 5)
!978 = !DILocalVariable(name: "mtime", scope: !976, file: !6, line: 402, type: !965)
!979 = !DILocalVariable(name: "euid", scope: !980, file: !6, line: 412, type: !981)
!980 = distinct !DILexicalBlock(scope: !977, file: !6, line: 407, column: 7)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !982, line: 79, baseType: !953)
!982 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!983 = !DILocalVariable(name: "NO_UID", scope: !980, file: !6, line: 413, type: !981)
!984 = !DILocalVariable(name: "egid", scope: !985, file: !6, line: 423, type: !986)
!985 = distinct !DILexicalBlock(scope: !977, file: !6, line: 418, column: 7)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !982, line: 64, baseType: !955)
!987 = !DILocalVariable(name: "NO_GID", scope: !985, file: !6, line: 424, type: !986)
!988 = !DILocalVariable(name: "fd", scope: !989, file: !6, line: 489, type: !58)
!989 = distinct !DILexicalBlock(scope: !977, file: !6, line: 488, column: 7)
!990 = !DILocalVariable(name: "arg", scope: !989, file: !6, line: 490, type: !51)
!991 = !DILocation(line: 368, column: 3, scope: !938)
!992 = !DILocation(line: 368, column: 15, scope: !938)
!993 = !DILocation(line: 370, column: 11, scope: !938)
!994 = !DILocation(line: 370, column: 16, scope: !938)
!995 = !DILocation(line: 370, column: 3, scope: !938)
!996 = !DILocation(line: 373, column: 26, scope: !977)
!997 = !DILocation(line: 373, column: 67, scope: !977)
!998 = !DILocation(line: 373, column: 72, scope: !977)
!999 = !DILocation(line: 373, column: 60, scope: !977)
!1000 = !DILocation(line: 373, column: 7, scope: !977)
!1001 = !DILocation(line: 0, scope: !829, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1004)
!1003 = distinct !DISubprogram(name: "unary_advance", scope: !6, file: !6, line: 119, type: !201, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !578)
!1004 = distinct !DILocation(line: 381, column: 7, scope: !977)
!1005 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1002)
!1006 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1002)
!1007 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1002)
!1008 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1004)
!1009 = !DILocation(line: 382, column: 20, scope: !977)
!1010 = !DILocation(line: 382, column: 14, scope: !977)
!1011 = !DILocation(line: 382, column: 46, scope: !977)
!1012 = !DILocation(line: 382, column: 7, scope: !977)
!1013 = !DILocation(line: 0, scope: !829, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 385, column: 7, scope: !977)
!1016 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1014)
!1017 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1014)
!1018 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1014)
!1019 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1015)
!1020 = !DILocation(line: 386, column: 26, scope: !977)
!1021 = !DILocation(line: 386, column: 14, scope: !977)
!1022 = !DILocation(line: 386, column: 47, scope: !977)
!1023 = !DILocation(line: 386, column: 7, scope: !977)
!1024 = !DILocation(line: 0, scope: !829, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 389, column: 7, scope: !977)
!1027 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1025)
!1028 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1025)
!1029 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1025)
!1030 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1026)
!1031 = !DILocation(line: 390, column: 26, scope: !977)
!1032 = !DILocation(line: 390, column: 14, scope: !977)
!1033 = !DILocation(line: 390, column: 47, scope: !977)
!1034 = !DILocation(line: 390, column: 7, scope: !977)
!1035 = !DILocation(line: 0, scope: !829, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 393, column: 7, scope: !977)
!1038 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1036)
!1039 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1036)
!1040 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1036)
!1041 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1037)
!1042 = !DILocation(line: 394, column: 26, scope: !977)
!1043 = !DILocation(line: 394, column: 14, scope: !977)
!1044 = !DILocation(line: 394, column: 47, scope: !977)
!1045 = !DILocation(line: 394, column: 7, scope: !977)
!1046 = !DILocation(line: 0, scope: !829, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 398, column: 9, scope: !976)
!1049 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1047)
!1050 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1047)
!1051 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1047)
!1052 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1048)
!1053 = !DILocation(line: 399, column: 19, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !976, file: !6, line: 399, column: 13)
!1055 = !DILocation(line: 399, column: 13, scope: !1054)
!1056 = !DILocation(line: 399, column: 45, scope: !1054)
!1057 = !DILocation(line: 399, column: 13, scope: !976)
!1058 = !DILocalVariable(name: "st", arg: 1, scope: !1059, file: !1060, line: 147, type: !1063)
!1059 = distinct !DISubprogram(name: "get_stat_atime", scope: !1060, file: !1060, line: 147, type: !1061, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1065)
!1060 = !DIFile(filename: "./lib/stat-time.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f4edb1fd4cb81bf2ea0eec563958d759")
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!965, !1063}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!1065 = !{!1058}
!1066 = !DILocation(line: 0, scope: !1059, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 401, column: 33, scope: !976)
!1068 = !DILocation(line: 150, column: 10, scope: !1059, inlinedAt: !1067)
!1069 = !DILocation(line: 0, scope: !976)
!1070 = !DILocalVariable(name: "st", arg: 1, scope: !1071, file: !1060, line: 169, type: !1063)
!1071 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1060, file: !1060, line: 169, type: !1061, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1072)
!1072 = !{!1070}
!1073 = !DILocation(line: 0, scope: !1071, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 402, column: 33, scope: !976)
!1075 = !DILocation(line: 172, column: 10, scope: !1071, inlinedAt: !1074)
!1076 = !DILocalVariable(name: "a", arg: 1, scope: !1077, file: !1078, line: 64, type: !965)
!1077 = distinct !DISubprogram(name: "timespec_cmp", scope: !1078, file: !1078, line: 64, type: !1079, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1081)
!1078 = !DIFile(filename: "./lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!46, !965, !965}
!1081 = !{!1076, !1082}
!1082 = !DILocalVariable(name: "b", arg: 2, scope: !1077, file: !1078, line: 64, type: !965)
!1083 = !DILocation(line: 0, scope: !1077, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 403, column: 17, scope: !976)
!1085 = !DILocation(line: 66, column: 45, scope: !1077, inlinedAt: !1084)
!1086 = !DILocation(line: 66, column: 12, scope: !1077, inlinedAt: !1084)
!1087 = !DILocation(line: 66, column: 43, scope: !1077, inlinedAt: !1084)
!1088 = !DILocation(line: 403, column: 45, scope: !976)
!1089 = !DILocation(line: 0, scope: !829, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 408, column: 9, scope: !980)
!1092 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1090)
!1093 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1090)
!1094 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1090)
!1095 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1091)
!1096 = !DILocation(line: 409, column: 19, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !980, file: !6, line: 409, column: 13)
!1098 = !DILocation(line: 409, column: 13, scope: !1097)
!1099 = !DILocation(line: 409, column: 45, scope: !1097)
!1100 = !DILocation(line: 409, column: 13, scope: !980)
!1101 = !DILocation(line: 411, column: 9, scope: !980)
!1102 = !DILocation(line: 411, column: 15, scope: !980)
!1103 = !DILocation(line: 412, column: 22, scope: !980)
!1104 = !DILocation(line: 0, scope: !980)
!1105 = !DILocation(line: 414, column: 24, scope: !980)
!1106 = !DILocation(line: 414, column: 34, scope: !980)
!1107 = !DILocation(line: 414, column: 37, scope: !980)
!1108 = !DILocation(line: 414, column: 44, scope: !980)
!1109 = !DILocation(line: 414, column: 64, scope: !980)
!1110 = !{!1111, !587, i64 24}
!1111 = !{!"stat", !1112, i64 0, !1112, i64 8, !587, i64 16, !587, i64 20, !587, i64 24, !587, i64 28, !1112, i64 32, !1112, i64 40, !1112, i64 48, !587, i64 56, !587, i64 60, !1112, i64 64, !1113, i64 72, !1113, i64 88, !1113, i64 104, !459, i64 120}
!1112 = !{!"long", !459, i64 0}
!1113 = !{!"timespec", !1112, i64 0, !1112, i64 8}
!1114 = !DILocation(line: 414, column: 52, scope: !980)
!1115 = !DILocation(line: 0, scope: !829, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 419, column: 9, scope: !985)
!1118 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1116)
!1119 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1116)
!1120 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1116)
!1121 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1117)
!1122 = !DILocation(line: 420, column: 19, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !985, file: !6, line: 420, column: 13)
!1124 = !DILocation(line: 420, column: 13, scope: !1123)
!1125 = !DILocation(line: 420, column: 45, scope: !1123)
!1126 = !DILocation(line: 420, column: 13, scope: !985)
!1127 = !DILocation(line: 422, column: 9, scope: !985)
!1128 = !DILocation(line: 422, column: 15, scope: !985)
!1129 = !DILocation(line: 423, column: 22, scope: !985)
!1130 = !DILocation(line: 0, scope: !985)
!1131 = !DILocation(line: 425, column: 24, scope: !985)
!1132 = !DILocation(line: 425, column: 34, scope: !985)
!1133 = !DILocation(line: 425, column: 37, scope: !985)
!1134 = !DILocation(line: 425, column: 44, scope: !985)
!1135 = !DILocation(line: 425, column: 64, scope: !985)
!1136 = !{!1111, !587, i64 28}
!1137 = !DILocation(line: 425, column: 52, scope: !985)
!1138 = !DILocation(line: 0, scope: !829, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 429, column: 7, scope: !977)
!1141 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1139)
!1142 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1139)
!1143 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1139)
!1144 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1140)
!1145 = !DILocation(line: 432, column: 21, scope: !977)
!1146 = !DILocation(line: 432, column: 15, scope: !977)
!1147 = !DILocation(line: 432, column: 47, scope: !977)
!1148 = !DILocation(line: 433, column: 15, scope: !977)
!1149 = !DILocation(line: 432, column: 7, scope: !977)
!1150 = !DILocation(line: 0, scope: !829, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 436, column: 7, scope: !977)
!1153 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1151)
!1154 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1151)
!1155 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1151)
!1156 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1152)
!1157 = !DILocation(line: 437, column: 21, scope: !977)
!1158 = !DILocation(line: 437, column: 15, scope: !977)
!1159 = !DILocation(line: 437, column: 47, scope: !977)
!1160 = !DILocation(line: 438, column: 15, scope: !977)
!1161 = !DILocation(line: 437, column: 7, scope: !977)
!1162 = !DILocation(line: 0, scope: !829, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 441, column: 7, scope: !977)
!1165 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1163)
!1166 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1163)
!1167 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1163)
!1168 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1164)
!1169 = !DILocation(line: 442, column: 21, scope: !977)
!1170 = !DILocation(line: 442, column: 15, scope: !977)
!1171 = !DILocation(line: 442, column: 47, scope: !977)
!1172 = !DILocation(line: 443, column: 15, scope: !977)
!1173 = !DILocation(line: 442, column: 7, scope: !977)
!1174 = !DILocation(line: 0, scope: !829, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 446, column: 7, scope: !977)
!1177 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1175)
!1178 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1175)
!1179 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1175)
!1180 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1176)
!1181 = !DILocation(line: 447, column: 21, scope: !977)
!1182 = !DILocation(line: 447, column: 15, scope: !977)
!1183 = !DILocation(line: 447, column: 47, scope: !977)
!1184 = !DILocation(line: 448, column: 15, scope: !977)
!1185 = !DILocation(line: 447, column: 7, scope: !977)
!1186 = !DILocation(line: 0, scope: !829, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 451, column: 7, scope: !977)
!1189 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1187)
!1190 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1187)
!1191 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1187)
!1192 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1188)
!1193 = !DILocation(line: 452, column: 21, scope: !977)
!1194 = !DILocation(line: 452, column: 15, scope: !977)
!1195 = !DILocation(line: 452, column: 47, scope: !977)
!1196 = !DILocation(line: 453, column: 15, scope: !977)
!1197 = !DILocation(line: 452, column: 7, scope: !977)
!1198 = !DILocation(line: 0, scope: !829, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1200)
!1200 = distinct !DILocation(line: 456, column: 7, scope: !977)
!1201 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1199)
!1202 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1199)
!1203 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1199)
!1204 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1200)
!1205 = !DILocation(line: 457, column: 21, scope: !977)
!1206 = !DILocation(line: 457, column: 15, scope: !977)
!1207 = !DILocation(line: 457, column: 47, scope: !977)
!1208 = !DILocation(line: 458, column: 15, scope: !977)
!1209 = !DILocation(line: 457, column: 7, scope: !977)
!1210 = !DILocation(line: 0, scope: !829, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 461, column: 7, scope: !977)
!1213 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1211)
!1214 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1211)
!1215 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1211)
!1216 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1212)
!1217 = !DILocation(line: 462, column: 21, scope: !977)
!1218 = !DILocation(line: 462, column: 15, scope: !977)
!1219 = !DILocation(line: 462, column: 47, scope: !977)
!1220 = !DILocation(line: 463, column: 15, scope: !977)
!1221 = !DILocation(line: 462, column: 7, scope: !977)
!1222 = !DILocation(line: 0, scope: !829, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 469, column: 7, scope: !977)
!1225 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1223)
!1226 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1223)
!1227 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1223)
!1228 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1224)
!1229 = !DILocation(line: 470, column: 25, scope: !977)
!1230 = !DILocalVariable(name: "filename", arg: 1, scope: !1231, file: !1232, line: 49, type: !51)
!1231 = distinct !DISubprogram(name: "issymlink", scope: !1232, file: !1232, line: 49, type: !1233, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1235)
!1232 = !DIFile(filename: "./lib/issymlink.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3ed5fe5c76158b7c9a68dd013fb9e151")
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!46, !51}
!1235 = !{!1230, !1236}
!1236 = !DILocalVariable(name: "linkbuf", scope: !1231, file: !1232, line: 51, type: !121)
!1237 = !DILocation(line: 0, scope: !1231, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 470, column: 14, scope: !977)
!1239 = !DILocation(line: 51, column: 3, scope: !1231, inlinedAt: !1238)
!1240 = !DILocation(line: 51, column: 8, scope: !1231, inlinedAt: !1238)
!1241 = !DILocation(line: 52, column: 7, scope: !1242, inlinedAt: !1238)
!1242 = distinct !DILexicalBlock(scope: !1231, file: !1232, line: 52, column: 7)
!1243 = !DILocation(line: 52, column: 54, scope: !1242, inlinedAt: !1238)
!1244 = !DILocation(line: 58, column: 1, scope: !1231, inlinedAt: !1238)
!1245 = !DILocation(line: 470, column: 7, scope: !977)
!1246 = !DILocation(line: 0, scope: !829, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 473, column: 7, scope: !977)
!1249 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1247)
!1250 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1247)
!1251 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1247)
!1252 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1248)
!1253 = !DILocation(line: 474, column: 21, scope: !977)
!1254 = !DILocation(line: 474, column: 15, scope: !977)
!1255 = !DILocation(line: 474, column: 47, scope: !977)
!1256 = !DILocation(line: 475, column: 15, scope: !977)
!1257 = !DILocation(line: 474, column: 7, scope: !977)
!1258 = !DILocation(line: 0, scope: !829, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 478, column: 7, scope: !977)
!1261 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1259)
!1262 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1259)
!1263 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1259)
!1264 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1260)
!1265 = !DILocation(line: 479, column: 21, scope: !977)
!1266 = !DILocation(line: 479, column: 15, scope: !977)
!1267 = !DILocation(line: 479, column: 47, scope: !977)
!1268 = !DILocation(line: 480, column: 15, scope: !977)
!1269 = !DILocation(line: 479, column: 7, scope: !977)
!1270 = !DILocation(line: 0, scope: !829, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 483, column: 7, scope: !977)
!1273 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1271)
!1274 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1271)
!1275 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1271)
!1276 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1272)
!1277 = !DILocation(line: 484, column: 21, scope: !977)
!1278 = !DILocation(line: 484, column: 15, scope: !977)
!1279 = !DILocation(line: 484, column: 47, scope: !977)
!1280 = !DILocation(line: 485, column: 15, scope: !977)
!1281 = !DILocation(line: 484, column: 7, scope: !977)
!1282 = !DILocation(line: 0, scope: !829, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 491, column: 9, scope: !989)
!1285 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1283)
!1286 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1283)
!1287 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1283)
!1288 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1284)
!1289 = !DILocation(line: 492, column: 25, scope: !989)
!1290 = !DILocation(line: 492, column: 15, scope: !989)
!1291 = !DILocation(line: 0, scope: !989)
!1292 = !DILocation(line: 493, column: 9, scope: !989)
!1293 = !DILocation(line: 493, column: 15, scope: !989)
!1294 = !DILocation(line: 494, column: 14, scope: !989)
!1295 = !DILocation(line: 495, column: 17, scope: !989)
!1296 = !DILocation(line: 495, column: 23, scope: !989)
!1297 = !DILocation(line: 495, column: 33, scope: !989)
!1298 = !DILocation(line: 495, column: 72, scope: !989)
!1299 = !DILocation(line: 495, column: 64, scope: !989)
!1300 = !DILocation(line: 495, column: 61, scope: !989)
!1301 = !DILocation(line: 0, scope: !829, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1303)
!1303 = distinct !DILocation(line: 499, column: 7, scope: !977)
!1304 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1302)
!1305 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1302)
!1306 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1302)
!1307 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1303)
!1308 = !DILocation(line: 500, column: 14, scope: !977)
!1309 = !DILocation(line: 500, column: 31, scope: !977)
!1310 = !DILocation(line: 500, column: 7, scope: !977)
!1311 = !DILocation(line: 0, scope: !829, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 121, column: 3, scope: !1003, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 503, column: 7, scope: !977)
!1314 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1312)
!1315 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1312)
!1316 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1312)
!1317 = !DILocation(line: 122, column: 3, scope: !1003, inlinedAt: !1313)
!1318 = !DILocation(line: 504, column: 14, scope: !977)
!1319 = !DILocation(line: 504, column: 31, scope: !977)
!1320 = !DILocation(line: 504, column: 7, scope: !977)
!1321 = !DILocation(line: 0, scope: !977)
!1322 = !DILocation(line: 506, column: 1, scope: !938)
!1323 = distinct !DISubprogram(name: "beyond", scope: !6, file: !6, line: 130, type: !201, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !578)
!1324 = !DILocation(line: 132, column: 22, scope: !1323)
!1325 = !DILocation(line: 132, column: 61, scope: !1323)
!1326 = !DILocation(line: 132, column: 66, scope: !1323)
!1327 = !DILocation(line: 132, column: 71, scope: !1323)
!1328 = !DILocation(line: 132, column: 54, scope: !1323)
!1329 = !DILocation(line: 132, column: 3, scope: !1323)
!1330 = distinct !DISubprogram(name: "three_arguments", scope: !6, file: !6, line: 587, type: !809, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1331)
!1331 = !{!1332, !1333}
!1332 = !DILocalVariable(name: "value", scope: !1330, file: !6, line: 589, type: !77)
!1333 = !DILocalVariable(name: "bop", scope: !1330, file: !6, line: 590, type: !46)
!1334 = !DILocation(line: 590, column: 20, scope: !1330)
!1335 = !DILocation(line: 590, column: 25, scope: !1330)
!1336 = !DILocation(line: 590, column: 29, scope: !1330)
!1337 = !DILocation(line: 590, column: 13, scope: !1330)
!1338 = !DILocation(line: 0, scope: !1330)
!1339 = !DILocation(line: 592, column: 9, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1330, file: !6, line: 592, column: 7)
!1341 = !DILocation(line: 592, column: 7, scope: !1330)
!1342 = !DILocation(line: 593, column: 13, scope: !1340)
!1343 = !DILocation(line: 593, column: 5, scope: !1340)
!1344 = !DILocation(line: 594, column: 19, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !6, line: 594, column: 12)
!1346 = !DILocation(line: 0, scope: !535, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 594, column: 12, scope: !1345)
!1348 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1347)
!1349 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1347)
!1350 = !DILocation(line: 594, column: 12, scope: !1340)
!1351 = !DILocation(line: 0, scope: !829, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 596, column: 7, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1345, file: !6, line: 595, column: 5)
!1354 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1352)
!1355 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1352)
!1356 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1352)
!1357 = !DILocation(line: 0, scope: !535, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 570, column: 7, scope: !817, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 597, column: 16, scope: !1353)
!1360 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1358)
!1361 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1358)
!1362 = !DILocation(line: 570, column: 7, scope: !818, inlinedAt: !1359)
!1363 = !DILocation(line: 0, scope: !829, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 572, column: 7, scope: !835, inlinedAt: !1359)
!1365 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1364)
!1366 = !DILocation(line: 562, column: 18, scope: !808, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 573, column: 17, scope: !835, inlinedAt: !1359)
!1368 = !DILocation(line: 562, column: 10, scope: !808, inlinedAt: !1367)
!1369 = !DILocation(line: 562, column: 25, scope: !808, inlinedAt: !1367)
!1370 = !DILocation(line: 0, scope: !818, inlinedAt: !1359)
!1371 = !DILocation(line: 574, column: 5, scope: !835, inlinedAt: !1359)
!1372 = !DILocation(line: 575, column: 12, scope: !844, inlinedAt: !1359)
!1373 = !DILocation(line: 575, column: 25, scope: !844, inlinedAt: !1359)
!1374 = !DILocation(line: 576, column: 12, scope: !844, inlinedAt: !1359)
!1375 = !DILocation(line: 576, column: 15, scope: !844, inlinedAt: !1359)
!1376 = !DILocation(line: 576, column: 28, scope: !844, inlinedAt: !1359)
!1377 = !DILocation(line: 577, column: 12, scope: !844, inlinedAt: !1359)
!1378 = !DILocation(line: 577, column: 15, scope: !844, inlinedAt: !1359)
!1379 = !DILocation(line: 577, column: 28, scope: !844, inlinedAt: !1359)
!1380 = !DILocation(line: 575, column: 12, scope: !817, inlinedAt: !1359)
!1381 = !DILocation(line: 579, column: 15, scope: !854, inlinedAt: !1359)
!1382 = !DILocation(line: 582, column: 5, scope: !844, inlinedAt: !1359)
!1383 = !DILocation(line: 597, column: 15, scope: !1353)
!1384 = !DILocation(line: 598, column: 5, scope: !1353)
!1385 = !DILocation(line: 0, scope: !535, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 599, column: 12, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1345, file: !6, line: 599, column: 12)
!1388 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1386)
!1389 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1386)
!1390 = !DILocation(line: 599, column: 35, scope: !1387)
!1391 = !DILocation(line: 599, column: 54, scope: !1387)
!1392 = !DILocation(line: 599, column: 45, scope: !1387)
!1393 = !DILocation(line: 0, scope: !535, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 599, column: 38, scope: !1387)
!1395 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1394)
!1396 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1394)
!1397 = !DILocation(line: 599, column: 12, scope: !1345)
!1398 = !DILocation(line: 0, scope: !829, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 601, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1387, file: !6, line: 600, column: 5)
!1401 = !DILocation(line: 562, column: 10, scope: !808, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 602, column: 15, scope: !1400)
!1403 = !DILocation(line: 562, column: 25, scope: !808, inlinedAt: !1402)
!1404 = !DILocation(line: 0, scope: !829, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 603, column: 7, scope: !1400)
!1406 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1405)
!1407 = !DILocation(line: 604, column: 5, scope: !1400)
!1408 = !DILocation(line: 0, scope: !535, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 605, column: 12, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1387, file: !6, line: 605, column: 12)
!1411 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1409)
!1412 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1409)
!1413 = !DILocation(line: 605, column: 40, scope: !1410)
!1414 = !DILocation(line: 0, scope: !535, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 605, column: 43, scope: !1410)
!1416 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1415)
!1417 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1415)
!1418 = !DILocation(line: 606, column: 12, scope: !1410)
!1419 = !DILocation(line: 0, scope: !535, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 606, column: 15, scope: !1410)
!1421 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1420)
!1422 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1420)
!1423 = !DILocation(line: 606, column: 42, scope: !1410)
!1424 = !DILocation(line: 0, scope: !535, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 606, column: 45, scope: !1410)
!1426 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1425)
!1427 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1425)
!1428 = !DILocation(line: 605, column: 12, scope: !1387)
!1429 = !DILocation(line: 553, column: 14, scope: !928, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 607, column: 13, scope: !1410)
!1431 = !DILocation(line: 553, column: 11, scope: !928, inlinedAt: !1430)
!1432 = !DILocation(line: 553, column: 7, scope: !929, inlinedAt: !1430)
!1433 = !DILocation(line: 554, column: 5, scope: !928, inlinedAt: !1430)
!1434 = !DILocation(line: 556, column: 10, scope: !929, inlinedAt: !1430)
!1435 = !DILocation(line: 609, column: 24, scope: !1410)
!1436 = !DILocation(line: 610, column: 31, scope: !1410)
!1437 = !DILocation(line: 610, column: 36, scope: !1410)
!1438 = !DILocation(line: 610, column: 40, scope: !1410)
!1439 = !DILocation(line: 610, column: 24, scope: !1410)
!1440 = !DILocation(line: 609, column: 5, scope: !1410)
!1441 = !DILocation(line: 611, column: 3, scope: !1330)
!1442 = distinct !DISubprogram(name: "or", scope: !6, file: !6, line: 533, type: !809, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1443)
!1443 = !{!1444}
!1444 = !DILocalVariable(name: "value", scope: !1442, file: !6, line: 535, type: !77)
!1445 = !DILocation(line: 0, scope: !1442)
!1446 = !DILocalVariable(name: "value", scope: !1447, file: !6, line: 516, type: !77)
!1447 = distinct !DISubprogram(name: "and", scope: !6, file: !6, line: 514, type: !809, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1448)
!1448 = !{!1446}
!1449 = !DILocation(line: 0, scope: !1447, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 539, column: 16, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1442, file: !6, line: 538, column: 5)
!1452 = !DILocalVariable(name: "negated", scope: !1453, file: !6, line: 227, type: !77)
!1453 = distinct !DISubprogram(name: "term", scope: !6, file: !6, line: 224, type: !809, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1454)
!1454 = !{!1455, !1452, !1456, !1457}
!1455 = !DILocalVariable(name: "value", scope: !1453, file: !6, line: 226, type: !77)
!1456 = !DILocalVariable(name: "bop", scope: !1453, file: !6, line: 228, type: !46)
!1457 = !DILocalVariable(name: "nargs", scope: !1458, file: !6, line: 243, type: !46)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !6, line: 242, column: 5)
!1459 = distinct !DILexicalBlock(scope: !1453, file: !6, line: 241, column: 7)
!1460 = !DILocation(line: 0, scope: !1453, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 520, column: 16, scope: !1462, inlinedAt: !1450)
!1462 = distinct !DILexicalBlock(scope: !1447, file: !6, line: 519, column: 5)
!1463 = !DILocation(line: 231, column: 14, scope: !1453, inlinedAt: !1461)
!1464 = !DILocation(line: 231, column: 21, scope: !1453, inlinedAt: !1461)
!1465 = !DILocation(line: 537, column: 3, scope: !1442)
!1466 = !DILocation(line: 231, column: 24, scope: !1453, inlinedAt: !1461)
!1467 = !DILocation(line: 231, column: 37, scope: !1453, inlinedAt: !1461)
!1468 = !DILocation(line: 231, column: 44, scope: !1453, inlinedAt: !1461)
!1469 = !DILocation(line: 231, column: 47, scope: !1453, inlinedAt: !1461)
!1470 = !DILocation(line: 231, column: 60, scope: !1453, inlinedAt: !1461)
!1471 = !DILocation(line: 231, column: 3, scope: !1453, inlinedAt: !1461)
!1472 = !DILocation(line: 0, scope: !829, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 233, column: 7, scope: !1474, inlinedAt: !1461)
!1474 = distinct !DILexicalBlock(scope: !1453, file: !6, line: 232, column: 5)
!1475 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1473)
!1476 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1473)
!1477 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1473)
!1478 = !DILocation(line: 234, column: 17, scope: !1474, inlinedAt: !1461)
!1479 = distinct !{!1479, !1471, !1480, !552}
!1480 = !DILocation(line: 235, column: 5, scope: !1453, inlinedAt: !1461)
!1481 = !DILocation(line: 238, column: 5, scope: !1482, inlinedAt: !1461)
!1482 = distinct !DILexicalBlock(scope: !1453, file: !6, line: 237, column: 7)
!1483 = !DILocation(line: 241, column: 7, scope: !1459, inlinedAt: !1461)
!1484 = !DILocation(line: 241, column: 20, scope: !1459, inlinedAt: !1461)
!1485 = !DILocation(line: 241, column: 27, scope: !1459, inlinedAt: !1461)
!1486 = !DILocation(line: 241, column: 30, scope: !1459, inlinedAt: !1461)
!1487 = !DILocation(line: 241, column: 43, scope: !1459, inlinedAt: !1461)
!1488 = !DILocation(line: 241, column: 7, scope: !1453, inlinedAt: !1461)
!1489 = !DILocation(line: 0, scope: !829, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 245, column: 7, scope: !1458, inlinedAt: !1461)
!1491 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1490)
!1492 = !DILocation(line: 114, column: 9, scope: !871, inlinedAt: !1490)
!1493 = !DILocation(line: 0, scope: !1458, inlinedAt: !1461)
!1494 = !DILocation(line: 248, column: 16, scope: !1495, inlinedAt: !1461)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !6, line: 247, column: 7)
!1496 = distinct !DILexicalBlock(scope: !1458, file: !6, line: 247, column: 7)
!1497 = !DILocation(line: 248, column: 24, scope: !1495, inlinedAt: !1461)
!1498 = !DILocation(line: 248, column: 31, scope: !1495, inlinedAt: !1461)
!1499 = !DILocation(line: 247, column: 7, scope: !1496, inlinedAt: !1461)
!1500 = !DILocation(line: 248, column: 43, scope: !1495, inlinedAt: !1461)
!1501 = !DILocation(line: 0, scope: !535, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 248, column: 36, scope: !1495, inlinedAt: !1461)
!1503 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1502)
!1504 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1502)
!1505 = !DILocation(line: 115, column: 5, scope: !871, inlinedAt: !1490)
!1506 = distinct !{!1506, !1499, !1507, !552}
!1507 = !DILocation(line: 254, column: 11, scope: !1496, inlinedAt: !1461)
!1508 = !DILocation(line: 0, scope: !1496, inlinedAt: !1461)
!1509 = !DILocation(line: 256, column: 15, scope: !1458, inlinedAt: !1461)
!1510 = !DILocation(line: 257, column: 12, scope: !1511, inlinedAt: !1461)
!1511 = distinct !DILexicalBlock(scope: !1458, file: !6, line: 257, column: 11)
!1512 = !DILocation(line: 257, column: 17, scope: !1511, inlinedAt: !1461)
!1513 = !DILocation(line: 257, column: 11, scope: !1458, inlinedAt: !1461)
!1514 = !DILocation(line: 258, column: 28, scope: !1511, inlinedAt: !1461)
!1515 = !DILocation(line: 258, column: 46, scope: !1511, inlinedAt: !1461)
!1516 = !DILocation(line: 258, column: 9, scope: !1511, inlinedAt: !1461)
!1517 = !DILocation(line: 260, column: 13, scope: !1518, inlinedAt: !1461)
!1518 = distinct !DILexicalBlock(scope: !1511, file: !6, line: 260, column: 13)
!1519 = !DILocation(line: 260, column: 26, scope: !1518, inlinedAt: !1461)
!1520 = !DILocation(line: 260, column: 33, scope: !1518, inlinedAt: !1461)
!1521 = !DILocation(line: 260, column: 36, scope: !1518, inlinedAt: !1461)
!1522 = !DILocation(line: 260, column: 13, scope: !1511, inlinedAt: !1461)
!1523 = !DILocation(line: 261, column: 30, scope: !1518, inlinedAt: !1461)
!1524 = !DILocation(line: 262, column: 30, scope: !1518, inlinedAt: !1461)
!1525 = !DILocation(line: 262, column: 60, scope: !1518, inlinedAt: !1461)
!1526 = !DILocation(line: 262, column: 65, scope: !1518, inlinedAt: !1461)
!1527 = !DILocation(line: 262, column: 48, scope: !1518, inlinedAt: !1461)
!1528 = !DILocation(line: 261, column: 11, scope: !1518, inlinedAt: !1461)
!1529 = !DILocation(line: 0, scope: !829, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 263, column: 7, scope: !1458, inlinedAt: !1461)
!1531 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1530)
!1532 = !DILocation(line: 264, column: 5, scope: !1458, inlinedAt: !1461)
!1533 = !DILocation(line: 267, column: 22, scope: !1534, inlinedAt: !1461)
!1534 = distinct !DILexicalBlock(scope: !1459, file: !6, line: 267, column: 12)
!1535 = !DILocation(line: 267, column: 14, scope: !1534, inlinedAt: !1461)
!1536 = !DILocation(line: 267, column: 28, scope: !1534, inlinedAt: !1461)
!1537 = !DILocation(line: 0, scope: !535, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 267, column: 31, scope: !1534, inlinedAt: !1461)
!1539 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1538)
!1540 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1538)
!1541 = !DILocation(line: 268, column: 12, scope: !1534, inlinedAt: !1461)
!1542 = !DILocation(line: 268, column: 34, scope: !1534, inlinedAt: !1461)
!1543 = !DILocation(line: 268, column: 27, scope: !1534, inlinedAt: !1461)
!1544 = !DILocation(line: 268, column: 17, scope: !1534, inlinedAt: !1461)
!1545 = !DILocation(line: 267, column: 12, scope: !1459, inlinedAt: !1461)
!1546 = !DILocation(line: 269, column: 13, scope: !1534, inlinedAt: !1461)
!1547 = !DILocation(line: 269, column: 5, scope: !1534, inlinedAt: !1461)
!1548 = !DILocation(line: 270, column: 14, scope: !1549, inlinedAt: !1461)
!1549 = distinct !DILexicalBlock(scope: !1534, file: !6, line: 270, column: 12)
!1550 = !DILocation(line: 271, column: 12, scope: !1549, inlinedAt: !1461)
!1551 = !DILocation(line: 271, column: 34, scope: !1549, inlinedAt: !1461)
!1552 = !DILocation(line: 271, column: 27, scope: !1549, inlinedAt: !1461)
!1553 = !DILocation(line: 271, column: 17, scope: !1549, inlinedAt: !1461)
!1554 = !DILocation(line: 270, column: 12, scope: !1534, inlinedAt: !1461)
!1555 = !DILocation(line: 272, column: 13, scope: !1549, inlinedAt: !1461)
!1556 = !DILocation(line: 272, column: 5, scope: !1549, inlinedAt: !1461)
!1557 = !DILocation(line: 275, column: 25, scope: !1558, inlinedAt: !1461)
!1558 = distinct !DILexicalBlock(scope: !1549, file: !6, line: 275, column: 12)
!1559 = !DILocation(line: 275, column: 32, scope: !1558, inlinedAt: !1461)
!1560 = !DILocation(line: 275, column: 35, scope: !1558, inlinedAt: !1461)
!1561 = !DILocation(line: 275, column: 48, scope: !1558, inlinedAt: !1461)
!1562 = !DILocation(line: 275, column: 51, scope: !1558, inlinedAt: !1461)
!1563 = !DILocation(line: 275, column: 64, scope: !1558, inlinedAt: !1461)
!1564 = !DILocation(line: 275, column: 12, scope: !1549, inlinedAt: !1461)
!1565 = !DILocation(line: 276, column: 13, scope: !1558, inlinedAt: !1461)
!1566 = !DILocation(line: 276, column: 5, scope: !1558, inlinedAt: !1461)
!1567 = !DILocation(line: 279, column: 29, scope: !1568, inlinedAt: !1461)
!1568 = distinct !DILexicalBlock(scope: !1558, file: !6, line: 278, column: 5)
!1569 = !DILocation(line: 0, scope: !829, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 280, column: 7, scope: !1568, inlinedAt: !1461)
!1571 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1570)
!1572 = !DILocation(line: 283, column: 18, scope: !1453, inlinedAt: !1461)
!1573 = !DILocation(line: 520, column: 13, scope: !1462, inlinedAt: !1450)
!1574 = !DILocation(line: 521, column: 14, scope: !1575, inlinedAt: !1450)
!1575 = distinct !DILexicalBlock(scope: !1462, file: !6, line: 521, column: 11)
!1576 = !DILocation(line: 521, column: 20, scope: !1575, inlinedAt: !1450)
!1577 = !DILocation(line: 521, column: 18, scope: !1575, inlinedAt: !1450)
!1578 = !DILocation(line: 521, column: 25, scope: !1575, inlinedAt: !1450)
!1579 = !DILocation(line: 521, column: 35, scope: !1575, inlinedAt: !1450)
!1580 = !DILocation(line: 0, scope: !535, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 521, column: 28, scope: !1575, inlinedAt: !1450)
!1582 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1581)
!1583 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1581)
!1584 = !DILocation(line: 521, column: 11, scope: !1462, inlinedAt: !1450)
!1585 = !DILocation(line: 0, scope: !829, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 523, column: 7, scope: !1462, inlinedAt: !1450)
!1587 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1586)
!1588 = distinct !{!1588, !1589, !1590}
!1589 = !DILocation(line: 518, column: 3, scope: !1447, inlinedAt: !1450)
!1590 = !DILocation(line: 524, column: 5, scope: !1447, inlinedAt: !1450)
!1591 = !DILocation(line: 539, column: 13, scope: !1451)
!1592 = !DILocation(line: 0, scope: !535, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 540, column: 28, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1451, file: !6, line: 540, column: 11)
!1595 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1593)
!1596 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1593)
!1597 = !DILocation(line: 540, column: 11, scope: !1451)
!1598 = !DILocation(line: 541, column: 9, scope: !1594)
!1599 = !DILocation(line: 0, scope: !829, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 542, column: 7, scope: !1451)
!1601 = !DILocation(line: 112, column: 3, scope: !829, inlinedAt: !1600)
!1602 = distinct !{!1602, !1465, !1603}
!1603 = !DILocation(line: 543, column: 5, scope: !1442)
!1604 = distinct !DISubprogram(name: "binop", scope: !6, file: !6, line: 186, type: !1233, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1605)
!1605 = !{!1606}
!1606 = !DILocalVariable(name: "s", arg: 1, scope: !1604, file: !6, line: 186, type: !51)
!1607 = !DILocation(line: 0, scope: !1604)
!1608 = !DILocation(line: 0, scope: !535, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 188, column: 13, scope: !1604)
!1610 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1609)
!1611 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1609)
!1612 = !DILocation(line: 188, column: 13, scope: !1604)
!1613 = !DILocation(line: 0, scope: !535, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 189, column: 13, scope: !1604)
!1615 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1614)
!1616 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1614)
!1617 = !DILocation(line: 189, column: 13, scope: !1604)
!1618 = !DILocation(line: 0, scope: !535, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 190, column: 13, scope: !1604)
!1620 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1619)
!1621 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1619)
!1622 = !DILocation(line: 190, column: 13, scope: !1604)
!1623 = !DILocation(line: 0, scope: !535, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 191, column: 13, scope: !1604)
!1625 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1624)
!1626 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1624)
!1627 = !DILocation(line: 191, column: 13, scope: !1604)
!1628 = !DILocation(line: 0, scope: !535, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 192, column: 13, scope: !1604)
!1630 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1629)
!1631 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1629)
!1632 = !DILocation(line: 192, column: 13, scope: !1604)
!1633 = !DILocation(line: 0, scope: !535, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 193, column: 13, scope: !1604)
!1635 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1634)
!1636 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1634)
!1637 = !DILocation(line: 193, column: 13, scope: !1604)
!1638 = !DILocation(line: 0, scope: !535, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 194, column: 13, scope: !1604)
!1640 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1639)
!1641 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1639)
!1642 = !DILocation(line: 194, column: 13, scope: !1604)
!1643 = !DILocation(line: 0, scope: !535, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 195, column: 13, scope: !1604)
!1645 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1644)
!1646 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1644)
!1647 = !DILocation(line: 195, column: 13, scope: !1604)
!1648 = !DILocation(line: 0, scope: !535, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 196, column: 13, scope: !1604)
!1650 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1649)
!1651 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1649)
!1652 = !DILocation(line: 196, column: 13, scope: !1604)
!1653 = !DILocation(line: 0, scope: !535, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 197, column: 13, scope: !1604)
!1655 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1654)
!1656 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1654)
!1657 = !DILocation(line: 197, column: 13, scope: !1604)
!1658 = !DILocation(line: 0, scope: !535, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 198, column: 13, scope: !1604)
!1660 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1659)
!1661 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1659)
!1662 = !DILocation(line: 198, column: 13, scope: !1604)
!1663 = !DILocation(line: 0, scope: !535, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 199, column: 13, scope: !1604)
!1665 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1664)
!1666 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1664)
!1667 = !DILocation(line: 199, column: 13, scope: !1604)
!1668 = !DILocation(line: 0, scope: !535, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 200, column: 13, scope: !1604)
!1670 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1669)
!1671 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1669)
!1672 = !DILocation(line: 200, column: 13, scope: !1604)
!1673 = !DILocation(line: 0, scope: !535, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 201, column: 13, scope: !1604)
!1675 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1674)
!1676 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1674)
!1677 = !DILocation(line: 201, column: 13, scope: !1604)
!1678 = !DILocation(line: 188, column: 3, scope: !1604)
!1679 = distinct !DISubprogram(name: "binary_operator", scope: !6, file: !6, line: 287, type: !1680, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1682)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!77, !77, !27}
!1682 = !{!1683, !1684, !1685, !1686, !1687, !1693, !1694, !1695, !1696, !1697, !1699, !1703}
!1683 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !1679, file: !6, line: 287, type: !77)
!1684 = !DILocalVariable(name: "bop", arg: 2, scope: !1679, file: !6, line: 287, type: !27)
!1685 = !DILocalVariable(name: "op", scope: !1679, file: !6, line: 289, type: !46)
!1686 = !DILocalVariable(name: "r_is_l", scope: !1679, file: !6, line: 296, type: !77)
!1687 = !DILocalVariable(name: "lbuf", scope: !1688, file: !6, line: 307, type: !1690)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !6, line: 306, column: 7)
!1689 = distinct !DILexicalBlock(scope: !1679, file: !6, line: 303, column: 5)
!1690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 168, elements: !1691)
!1691 = !{!1692}
!1692 = !DISubrange(count: 21)
!1693 = !DILocalVariable(name: "rbuf", scope: !1688, file: !6, line: 308, type: !1690)
!1694 = !DILocalVariable(name: "l", scope: !1688, file: !6, line: 309, type: !51)
!1695 = !DILocalVariable(name: "r", scope: !1688, file: !6, line: 312, type: !51)
!1696 = !DILocalVariable(name: "cmp", scope: !1688, file: !6, line: 315, type: !46)
!1697 = !DILocalVariable(name: "cmp", scope: !1698, file: !6, line: 333, type: !46)
!1698 = distinct !DILexicalBlock(scope: !1689, file: !6, line: 329, column: 7)
!1699 = !DILocalVariable(name: "st", scope: !1700, file: !6, line: 343, type: !1702)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !6, line: 342, column: 9)
!1701 = distinct !DILexicalBlock(scope: !1689, file: !6, line: 339, column: 11)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !941, size: 2048, elements: !243)
!1703 = !DILocalVariable(name: "cmp", scope: !1704, file: !6, line: 356, type: !46)
!1704 = distinct !DILexicalBlock(scope: !1689, file: !6, line: 355, column: 7)
!1705 = !DILocation(line: 0, scope: !1679)
!1706 = !DILocation(line: 291, column: 7, scope: !1679)
!1707 = !DILocation(line: 293, column: 12, scope: !1679)
!1708 = !DILocation(line: 296, column: 22, scope: !1679)
!1709 = !DILocation(line: 296, column: 27, scope: !1679)
!1710 = !DILocation(line: 296, column: 20, scope: !1679)
!1711 = !DILocation(line: 296, column: 31, scope: !1679)
!1712 = !DILocation(line: 296, column: 41, scope: !1679)
!1713 = !DILocation(line: 296, column: 49, scope: !1679)
!1714 = !DILocation(line: 0, scope: !535, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 296, column: 34, scope: !1679)
!1716 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1715)
!1717 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1715)
!1718 = !DILocation(line: 297, column: 7, scope: !1679)
!1719 = !DILocation(line: 300, column: 7, scope: !1679)
!1720 = !DILocation(line: 302, column: 3, scope: !1679)
!1721 = !DILocation(line: 307, column: 9, scope: !1688)
!1722 = !DILocation(line: 307, column: 14, scope: !1688)
!1723 = !DILocation(line: 308, column: 9, scope: !1688)
!1724 = !DILocation(line: 308, column: 14, scope: !1688)
!1725 = !DILocation(line: 0, scope: !1688)
!1726 = !DILocation(line: 309, column: 26, scope: !1688)
!1727 = !DILocation(line: 310, column: 39, scope: !1688)
!1728 = !DILocation(line: 310, column: 28, scope: !1688)
!1729 = !DILocation(line: 311, column: 28, scope: !1688)
!1730 = !DILocation(line: 312, column: 26, scope: !1688)
!1731 = !DILocation(line: 313, column: 55, scope: !1688)
!1732 = !DILocation(line: 313, column: 47, scope: !1688)
!1733 = !DILocation(line: 313, column: 39, scope: !1688)
!1734 = !DILocation(line: 313, column: 28, scope: !1688)
!1735 = !DILocation(line: 314, column: 46, scope: !1688)
!1736 = !DILocation(line: 314, column: 38, scope: !1688)
!1737 = !DILocation(line: 314, column: 28, scope: !1688)
!1738 = !DILocation(line: 315, column: 19, scope: !1688)
!1739 = !DILocation(line: 316, column: 9, scope: !1688)
!1740 = !DILocation(line: 318, column: 37, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1688, file: !6, line: 317, column: 11)
!1742 = !DILocation(line: 318, column: 26, scope: !1741)
!1743 = !DILocation(line: 319, column: 37, scope: !1741)
!1744 = !DILocation(line: 319, column: 26, scope: !1741)
!1745 = !DILocation(line: 320, column: 37, scope: !1741)
!1746 = !DILocation(line: 320, column: 26, scope: !1741)
!1747 = !DILocation(line: 321, column: 37, scope: !1741)
!1748 = !DILocation(line: 321, column: 26, scope: !1741)
!1749 = !DILocation(line: 322, column: 37, scope: !1741)
!1750 = !DILocation(line: 322, column: 26, scope: !1741)
!1751 = !DILocation(line: 323, column: 37, scope: !1741)
!1752 = !DILocation(line: 323, column: 26, scope: !1741)
!1753 = !DILocation(line: 325, column: 9, scope: !1688)
!1754 = !DILocation(line: 0, scope: !1741)
!1755 = !DILocation(line: 326, column: 7, scope: !1689)
!1756 = !DILocation(line: 330, column: 20, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1698, file: !6, line: 330, column: 13)
!1758 = !DILocation(line: 330, column: 13, scope: !1698)
!1759 = !DILocation(line: 331, column: 30, scope: !1757)
!1760 = !DILocation(line: 332, column: 30, scope: !1757)
!1761 = !DILocation(line: 331, column: 11, scope: !1757)
!1762 = !DILocation(line: 333, column: 44, scope: !1698)
!1763 = !DILocalVariable(name: "filename", arg: 1, scope: !1764, file: !6, line: 175, type: !51)
!1764 = distinct !DISubprogram(name: "get_mtime", scope: !6, file: !6, line: 175, type: !1765, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1767)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!965, !51}
!1767 = !{!1763, !1768}
!1768 = !DILocalVariable(name: "finfo", scope: !1764, file: !6, line: 177, type: !941)
!1769 = !DILocation(line: 0, scope: !1764, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 333, column: 33, scope: !1698)
!1771 = !DILocation(line: 177, column: 3, scope: !1764, inlinedAt: !1770)
!1772 = !DILocation(line: 177, column: 15, scope: !1764, inlinedAt: !1770)
!1773 = !DILocation(line: 178, column: 11, scope: !1764, inlinedAt: !1770)
!1774 = !DILocation(line: 178, column: 35, scope: !1764, inlinedAt: !1770)
!1775 = !DILocation(line: 181, column: 1, scope: !1764, inlinedAt: !1770)
!1776 = !DILocation(line: 334, column: 44, scope: !1698)
!1777 = !DILocation(line: 334, column: 52, scope: !1698)
!1778 = !DILocation(line: 0, scope: !1764, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 334, column: 33, scope: !1698)
!1780 = !DILocation(line: 177, column: 3, scope: !1764, inlinedAt: !1779)
!1781 = !DILocation(line: 177, column: 15, scope: !1764, inlinedAt: !1779)
!1782 = !DILocation(line: 178, column: 11, scope: !1764, inlinedAt: !1779)
!1783 = !DILocation(line: 178, column: 35, scope: !1764, inlinedAt: !1779)
!1784 = !DILocation(line: 181, column: 1, scope: !1764, inlinedAt: !1779)
!1785 = !DILocation(line: 0, scope: !1077, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 333, column: 19, scope: !1698)
!1787 = !DILocation(line: 66, column: 14, scope: !1077, inlinedAt: !1786)
!1788 = !DILocation(line: 66, column: 12, scope: !1077, inlinedAt: !1786)
!1789 = !DILocation(line: 66, column: 45, scope: !1077, inlinedAt: !1786)
!1790 = !DILocation(line: 66, column: 43, scope: !1077, inlinedAt: !1786)
!1791 = !DILocation(line: 0, scope: !1698)
!1792 = !DILocation(line: 335, column: 20, scope: !1698)
!1793 = !DILocation(line: 335, column: 16, scope: !1698)
!1794 = !DILocation(line: 339, column: 18, scope: !1701)
!1795 = !DILocation(line: 339, column: 11, scope: !1689)
!1796 = !DILocation(line: 340, column: 28, scope: !1701)
!1797 = !DILocation(line: 340, column: 9, scope: !1701)
!1798 = !DILocation(line: 343, column: 11, scope: !1700)
!1799 = !DILocation(line: 343, column: 23, scope: !1700)
!1800 = !DILocation(line: 344, column: 25, scope: !1700)
!1801 = !DILocation(line: 344, column: 40, scope: !1700)
!1802 = !DILocation(line: 344, column: 19, scope: !1700)
!1803 = !DILocation(line: 344, column: 47, scope: !1700)
!1804 = !DILocation(line: 345, column: 19, scope: !1700)
!1805 = !DILocation(line: 345, column: 28, scope: !1700)
!1806 = !DILocation(line: 345, column: 36, scope: !1700)
!1807 = !DILocation(line: 345, column: 43, scope: !1700)
!1808 = !DILocation(line: 345, column: 22, scope: !1700)
!1809 = !DILocation(line: 345, column: 50, scope: !1700)
!1810 = !DILocation(line: 346, column: 19, scope: !1700)
!1811 = !DILocalVariable(name: "a", arg: 1, scope: !1812, file: !1813, line: 86, type: !1063)
!1812 = distinct !DISubprogram(name: "psame_inode", scope: !1813, file: !1813, line: 86, type: !1814, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1816)
!1813 = !DIFile(filename: "./lib/same-inode.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6a49db1c884e7bc93549038e7fb28788")
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!77, !1063, !1063}
!1816 = !{!1811, !1817}
!1817 = !DILocalVariable(name: "b", arg: 2, scope: !1812, file: !1813, line: 86, type: !1063)
!1818 = !DILocation(line: 0, scope: !1812, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 346, column: 22, scope: !1700)
!1820 = !DILocation(line: 90, column: 14, scope: !1812, inlinedAt: !1819)
!1821 = !{!1111, !1112, i64 0}
!1822 = !{!1111, !1112, i64 8}
!1823 = !DILocation(line: 0, scope: !1700)
!1824 = !DILocation(line: 347, column: 9, scope: !1701)
!1825 = !DILocation(line: 351, column: 21, scope: !1689)
!1826 = !DILocation(line: 351, column: 43, scope: !1689)
!1827 = !DILocation(line: 351, column: 35, scope: !1689)
!1828 = !DILocation(line: 0, scope: !535, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 351, column: 14, scope: !1689)
!1830 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !1829)
!1831 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !1829)
!1832 = !DILocation(line: 351, column: 57, scope: !1689)
!1833 = !DILocation(line: 351, column: 49, scope: !1689)
!1834 = !DILocation(line: 351, column: 7, scope: !1689)
!1835 = !DILocation(line: 356, column: 28, scope: !1704)
!1836 = !DILocation(line: 356, column: 50, scope: !1704)
!1837 = !DILocation(line: 356, column: 42, scope: !1704)
!1838 = !DILocation(line: 356, column: 19, scope: !1704)
!1839 = !DILocation(line: 0, scope: !1704)
!1840 = !DILocation(line: 357, column: 20, scope: !1704)
!1841 = !DILocation(line: 357, column: 16, scope: !1704)
!1842 = !DILocation(line: 362, column: 3, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !6, line: 362, column: 3)
!1844 = distinct !DILexicalBlock(scope: !1679, file: !6, line: 362, column: 3)
!1845 = !DILocation(line: 0, scope: !1689)
!1846 = !DILocation(line: 363, column: 1, scope: !1679)
!1847 = distinct !DISubprogram(name: "find_int", scope: !6, file: !6, line: 139, type: !1848, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1850)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!51, !51}
!1850 = !{!1851, !1852, !1853}
!1851 = !DILocalVariable(name: "string", arg: 1, scope: !1847, file: !6, line: 139, type: !51)
!1852 = !DILocalVariable(name: "p", scope: !1847, file: !6, line: 141, type: !51)
!1853 = !DILocalVariable(name: "number_start", scope: !1847, file: !6, line: 142, type: !51)
!1854 = !DILocation(line: 0, scope: !1847)
!1855 = !DILocation(line: 144, column: 8, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1847, file: !6, line: 144, column: 3)
!1857 = !DILocation(line: 0, scope: !1856)
!1858 = !DILocation(line: 144, column: 20, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1856, file: !6, line: 144, column: 3)
!1860 = !DILocation(line: 144, column: 3, scope: !1856)
!1861 = !DILocation(line: 144, column: 46, scope: !1859)
!1862 = distinct !{!1862, !1860, !1863, !552}
!1863 = !DILocation(line: 145, column: 5, scope: !1856)
!1864 = !DILocation(line: 147, column: 10, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1847, file: !6, line: 147, column: 7)
!1866 = !DILocation(line: 147, column: 7, scope: !1847)
!1867 = !DILocation(line: 158, column: 18, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1847, file: !6, line: 158, column: 7)
!1869 = !DILocalVariable(name: "c", arg: 1, scope: !1870, file: !1871, line: 233, type: !46)
!1870 = distinct !DISubprogram(name: "c_isdigit", scope: !1871, file: !1871, line: 233, type: !800, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1872)
!1871 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1872 = !{!1869}
!1873 = !DILocation(line: 0, scope: !1870, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 158, column: 7, scope: !1868)
!1875 = !DILocation(line: 235, column: 3, scope: !1870, inlinedAt: !1874)
!1876 = !DILocation(line: 158, column: 7, scope: !1847)
!1877 = !DILocation(line: 0, scope: !1868)
!1878 = !DILocation(line: 160, column: 25, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1868, file: !6, line: 159, column: 5)
!1880 = !DILocation(line: 0, scope: !1870, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 160, column: 14, scope: !1879)
!1882 = !DILocation(line: 235, column: 3, scope: !1870, inlinedAt: !1881)
!1883 = !DILocation(line: 160, column: 7, scope: !1879)
!1884 = distinct !{!1884, !1883, !1885, !552}
!1885 = !DILocation(line: 161, column: 10, scope: !1879)
!1886 = !DILocation(line: 162, column: 14, scope: !1879)
!1887 = !DILocation(line: 162, column: 7, scope: !1879)
!1888 = !DILocation(line: 163, column: 10, scope: !1879)
!1889 = distinct !{!1889, !1887, !1888, !552}
!1890 = !DILocation(line: 164, column: 12, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1879, file: !6, line: 164, column: 11)
!1892 = !DILocation(line: 164, column: 11, scope: !1879)
!1893 = !DILocation(line: 165, column: 9, scope: !1891)
!1894 = !DILocation(line: 168, column: 22, scope: !1847)
!1895 = !DILocation(line: 168, column: 47, scope: !1847)
!1896 = !DILocation(line: 168, column: 3, scope: !1847)
!1897 = !DISubprogram(name: "stat", scope: !1898, file: !1898, line: 205, type: !1899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!1898 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!46, !582, !1901}
!1901 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1902)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!1903 = !DISubprogram(name: "strcoll", scope: !1904, file: !1904, line: 163, type: !1905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!1904 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!46, !51, !51}
!1907 = !DISubprogram(name: "euidaccess", scope: !1908, file: !1908, line: 292, type: !1909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!1908 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!46, !51, !46}
!1911 = !DISubprogram(name: "geteuid", scope: !1908, file: !1908, line: 700, type: !1912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!953}
!1914 = !DISubprogram(name: "getegid", scope: !1908, file: !1908, line: 706, type: !1915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!955}
!1917 = !DISubprogram(name: "isatty", scope: !1908, file: !1908, line: 809, type: !1918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!46, !46}
!1920 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !158, file: !158, line: 50, type: !511, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !1921)
!1921 = !{!1922}
!1922 = !DILocalVariable(name: "file", arg: 1, scope: !1920, file: !158, line: 50, type: !51)
!1923 = !DILocation(line: 0, scope: !1920)
!1924 = !DILocation(line: 52, column: 13, scope: !1920)
!1925 = !DILocation(line: 53, column: 1, scope: !1920)
!1926 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !158, file: !158, line: 87, type: !830, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !1927)
!1927 = !{!1928}
!1928 = !DILocalVariable(name: "ignore", arg: 1, scope: !1926, file: !158, line: 87, type: !77)
!1929 = !DILocation(line: 0, scope: !1926)
!1930 = !DILocation(line: 89, column: 16, scope: !1926)
!1931 = !{!1932, !1932, i64 0}
!1932 = !{!"_Bool", !459, i64 0}
!1933 = !DILocation(line: 90, column: 1, scope: !1926)
!1934 = distinct !DISubprogram(name: "close_stdout", scope: !158, file: !158, line: 116, type: !201, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !1935)
!1935 = !{!1936}
!1936 = !DILocalVariable(name: "write_error", scope: !1937, file: !158, line: 121, type: !51)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !158, line: 120, column: 5)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !158, line: 118, column: 7)
!1939 = !DILocation(line: 118, column: 21, scope: !1938)
!1940 = !DILocation(line: 118, column: 7, scope: !1938)
!1941 = !DILocation(line: 118, column: 29, scope: !1938)
!1942 = !DILocation(line: 119, column: 7, scope: !1938)
!1943 = !DILocation(line: 119, column: 12, scope: !1938)
!1944 = !{i8 0, i8 2}
!1945 = !DILocation(line: 119, column: 25, scope: !1938)
!1946 = !DILocation(line: 119, column: 28, scope: !1938)
!1947 = !DILocation(line: 119, column: 34, scope: !1938)
!1948 = !DILocation(line: 118, column: 7, scope: !1934)
!1949 = !DILocation(line: 121, column: 33, scope: !1937)
!1950 = !DILocation(line: 0, scope: !1937)
!1951 = !DILocation(line: 122, column: 11, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1937, file: !158, line: 122, column: 11)
!1953 = !DILocation(line: 0, scope: !1952)
!1954 = !DILocation(line: 122, column: 11, scope: !1937)
!1955 = !DILocation(line: 123, column: 9, scope: !1952)
!1956 = !DILocation(line: 126, column: 9, scope: !1952)
!1957 = !DILocation(line: 128, column: 14, scope: !1937)
!1958 = !DILocation(line: 128, column: 7, scope: !1937)
!1959 = !DILocation(line: 133, column: 42, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1934, file: !158, line: 133, column: 7)
!1961 = !DILocation(line: 133, column: 28, scope: !1960)
!1962 = !DILocation(line: 133, column: 50, scope: !1960)
!1963 = !DILocation(line: 133, column: 7, scope: !1934)
!1964 = !DILocation(line: 134, column: 12, scope: !1960)
!1965 = !DILocation(line: 134, column: 5, scope: !1960)
!1966 = !DILocation(line: 135, column: 1, scope: !1934)
!1967 = distinct !DISubprogram(name: "verror", scope: !165, file: !165, line: 251, type: !1968, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1970)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !46, !46, !51, !173}
!1970 = !{!1971, !1972, !1973, !1974}
!1971 = !DILocalVariable(name: "status", arg: 1, scope: !1967, file: !165, line: 251, type: !46)
!1972 = !DILocalVariable(name: "errnum", arg: 2, scope: !1967, file: !165, line: 251, type: !46)
!1973 = !DILocalVariable(name: "message", arg: 3, scope: !1967, file: !165, line: 251, type: !51)
!1974 = !DILocalVariable(name: "args", arg: 4, scope: !1967, file: !165, line: 251, type: !173)
!1975 = !DILocation(line: 0, scope: !1967)
!1976 = !DILocation(line: 251, column: 1, scope: !1967)
!1977 = !DILocation(line: 261, column: 3, scope: !1967)
!1978 = !DILocation(line: 265, column: 7, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1967, file: !165, line: 265, column: 7)
!1980 = !DILocation(line: 265, column: 7, scope: !1967)
!1981 = !DILocation(line: 266, column: 5, scope: !1979)
!1982 = !DILocation(line: 272, column: 7, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !165, line: 268, column: 5)
!1984 = !DILocation(line: 276, column: 3, scope: !1967)
!1985 = !DILocation(line: 282, column: 1, scope: !1967)
!1986 = distinct !DISubprogram(name: "flush_stdout", scope: !165, file: !165, line: 163, type: !201, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1987)
!1987 = !{!1988}
!1988 = !DILocalVariable(name: "stdout_fd", scope: !1986, file: !165, line: 166, type: !46)
!1989 = !DILocation(line: 0, scope: !1986)
!1990 = !DILocalVariable(name: "fd", arg: 1, scope: !1991, file: !165, line: 145, type: !46)
!1991 = distinct !DISubprogram(name: "is_open", scope: !165, file: !165, line: 145, type: !1918, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1992)
!1992 = !{!1990}
!1993 = !DILocation(line: 0, scope: !1991, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 182, column: 25, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1986, file: !165, line: 182, column: 7)
!1996 = !DILocation(line: 157, column: 15, scope: !1991, inlinedAt: !1994)
!1997 = !DILocation(line: 182, column: 25, scope: !1995)
!1998 = !DILocation(line: 182, column: 7, scope: !1986)
!1999 = !DILocation(line: 184, column: 5, scope: !1995)
!2000 = !DILocation(line: 185, column: 1, scope: !1986)
!2001 = distinct !DISubprogram(name: "error_tail", scope: !165, file: !165, line: 219, type: !1968, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2002)
!2002 = !{!2003, !2004, !2005, !2006}
!2003 = !DILocalVariable(name: "status", arg: 1, scope: !2001, file: !165, line: 219, type: !46)
!2004 = !DILocalVariable(name: "errnum", arg: 2, scope: !2001, file: !165, line: 219, type: !46)
!2005 = !DILocalVariable(name: "message", arg: 3, scope: !2001, file: !165, line: 219, type: !51)
!2006 = !DILocalVariable(name: "args", arg: 4, scope: !2001, file: !165, line: 219, type: !173)
!2007 = !DILocation(line: 0, scope: !2001)
!2008 = !DILocation(line: 219, column: 1, scope: !2001)
!2009 = !DILocation(line: 229, column: 13, scope: !2001)
!2010 = !DILocation(line: 229, column: 3, scope: !2001)
!2011 = !DILocalVariable(name: "__stream", arg: 1, scope: !2012, file: !2013, line: 132, type: !2016)
!2012 = distinct !DISubprogram(name: "vfprintf", scope: !2013, file: !2013, line: 132, type: !2014, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2051)
!2013 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!46, !2016, !582, !175}
!2016 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2017)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !92, line: 7, baseType: !2019)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !94, line: 49, size: 1728, elements: !2020)
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2019, file: !94, line: 51, baseType: !46, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2019, file: !94, line: 54, baseType: !43, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2019, file: !94, line: 55, baseType: !43, size: 64, offset: 128)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2019, file: !94, line: 56, baseType: !43, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2019, file: !94, line: 57, baseType: !43, size: 64, offset: 256)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2019, file: !94, line: 58, baseType: !43, size: 64, offset: 320)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2019, file: !94, line: 59, baseType: !43, size: 64, offset: 384)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2019, file: !94, line: 60, baseType: !43, size: 64, offset: 448)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2019, file: !94, line: 61, baseType: !43, size: 64, offset: 512)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2019, file: !94, line: 64, baseType: !43, size: 64, offset: 576)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2019, file: !94, line: 65, baseType: !43, size: 64, offset: 640)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2019, file: !94, line: 66, baseType: !43, size: 64, offset: 704)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2019, file: !94, line: 68, baseType: !109, size: 64, offset: 768)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2019, file: !94, line: 70, baseType: !2035, size: 64, offset: 832)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2019, file: !94, line: 72, baseType: !46, size: 32, offset: 896)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2019, file: !94, line: 73, baseType: !46, size: 32, offset: 928)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2019, file: !94, line: 74, baseType: !116, size: 64, offset: 960)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2019, file: !94, line: 77, baseType: !47, size: 16, offset: 1024)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2019, file: !94, line: 78, baseType: !119, size: 8, offset: 1040)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2019, file: !94, line: 79, baseType: !121, size: 8, offset: 1048)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2019, file: !94, line: 81, baseType: !125, size: 64, offset: 1088)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2019, file: !94, line: 89, baseType: !128, size: 64, offset: 1152)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2019, file: !94, line: 91, baseType: !130, size: 64, offset: 1216)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2019, file: !94, line: 92, baseType: !133, size: 64, offset: 1280)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2019, file: !94, line: 93, baseType: !2035, size: 64, offset: 1344)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2019, file: !94, line: 94, baseType: !45, size: 64, offset: 1408)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2019, file: !94, line: 95, baseType: !48, size: 64, offset: 1472)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2019, file: !94, line: 96, baseType: !46, size: 32, offset: 1536)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2019, file: !94, line: 98, baseType: !140, size: 160, offset: 1568)
!2051 = !{!2011, !2052, !2053}
!2052 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2012, file: !2013, line: 133, type: !582)
!2053 = !DILocalVariable(name: "__ap", arg: 3, scope: !2012, file: !2013, line: 133, type: !175)
!2054 = !DILocation(line: 0, scope: !2012, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 229, column: 3, scope: !2001)
!2056 = !DILocation(line: 135, column: 10, scope: !2012, inlinedAt: !2055)
!2057 = !{!2058, !2060}
!2058 = distinct !{!2058, !2059, !"vfprintf.inline: argument 0"}
!2059 = distinct !{!2059, !"vfprintf.inline"}
!2060 = distinct !{!2060, !2059, !"vfprintf.inline: argument 1"}
!2061 = !DILocation(line: 232, column: 3, scope: !2001)
!2062 = !DILocation(line: 233, column: 7, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2001, file: !165, line: 233, column: 7)
!2064 = !DILocation(line: 233, column: 7, scope: !2001)
!2065 = !DILocalVariable(name: "errnum", arg: 1, scope: !2066, file: !165, line: 188, type: !46)
!2066 = distinct !DISubprogram(name: "print_errno_message", scope: !165, file: !165, line: 188, type: !447, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2067)
!2067 = !{!2065, !2068, !2069}
!2068 = !DILocalVariable(name: "s", scope: !2066, file: !165, line: 190, type: !51)
!2069 = !DILocalVariable(name: "errbuf", scope: !2066, file: !165, line: 193, type: !2070)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8192, elements: !2071)
!2071 = !{!2072}
!2072 = !DISubrange(count: 1024)
!2073 = !DILocation(line: 0, scope: !2066, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 234, column: 5, scope: !2063)
!2075 = !DILocation(line: 193, column: 3, scope: !2066, inlinedAt: !2074)
!2076 = !DILocation(line: 193, column: 8, scope: !2066, inlinedAt: !2074)
!2077 = !DILocation(line: 195, column: 7, scope: !2066, inlinedAt: !2074)
!2078 = !DILocation(line: 207, column: 9, scope: !2079, inlinedAt: !2074)
!2079 = distinct !DILexicalBlock(scope: !2066, file: !165, line: 207, column: 7)
!2080 = !DILocation(line: 207, column: 7, scope: !2066, inlinedAt: !2074)
!2081 = !DILocation(line: 208, column: 9, scope: !2079, inlinedAt: !2074)
!2082 = !DILocation(line: 208, column: 5, scope: !2079, inlinedAt: !2074)
!2083 = !DILocation(line: 214, column: 3, scope: !2066, inlinedAt: !2074)
!2084 = !DILocation(line: 216, column: 1, scope: !2066, inlinedAt: !2074)
!2085 = !DILocation(line: 234, column: 5, scope: !2063)
!2086 = !DILocation(line: 238, column: 3, scope: !2001)
!2087 = !DILocalVariable(name: "__c", arg: 1, scope: !2088, file: !2089, line: 101, type: !46)
!2088 = distinct !DISubprogram(name: "putc_unlocked", scope: !2089, file: !2089, line: 101, type: !2090, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2092)
!2089 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!46, !46, !2017}
!2092 = !{!2087, !2093}
!2093 = !DILocalVariable(name: "__stream", arg: 2, scope: !2088, file: !2089, line: 101, type: !2017)
!2094 = !DILocation(line: 0, scope: !2088, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 238, column: 3, scope: !2001)
!2096 = !DILocation(line: 103, column: 10, scope: !2088, inlinedAt: !2095)
!2097 = !{!2098, !458, i64 40}
!2098 = !{!"_IO_FILE", !587, i64 0, !458, i64 8, !458, i64 16, !458, i64 24, !458, i64 32, !458, i64 40, !458, i64 48, !458, i64 56, !458, i64 64, !458, i64 72, !458, i64 80, !458, i64 88, !458, i64 96, !458, i64 104, !587, i64 112, !587, i64 116, !1112, i64 120, !621, i64 128, !459, i64 130, !459, i64 131, !458, i64 136, !1112, i64 144, !458, i64 152, !458, i64 160, !458, i64 168, !458, i64 176, !1112, i64 184, !587, i64 192, !459, i64 196}
!2099 = !{!2098, !458, i64 48}
!2100 = !{!"branch_weights", i32 2000, i32 1}
!2101 = !DILocation(line: 240, column: 3, scope: !2001)
!2102 = !DILocation(line: 241, column: 7, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2001, file: !165, line: 241, column: 7)
!2104 = !DILocation(line: 241, column: 7, scope: !2001)
!2105 = !DILocation(line: 242, column: 5, scope: !2103)
!2106 = !DILocation(line: 243, column: 1, scope: !2001)
!2107 = !DISubprogram(name: "strerror_r", scope: !1904, file: !1904, line: 444, type: !2108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!43, !46, !43, !48}
!2110 = !DISubprogram(name: "fflush_unlocked", scope: !174, file: !174, line: 239, type: !2111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!46, !2017}
!2113 = !DISubprogram(name: "fcntl", scope: !2114, file: !2114, line: 149, type: !2115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!2114 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!46, !46, !46, null}
!2117 = distinct !DISubprogram(name: "error", scope: !165, file: !165, line: 285, type: !2118, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2120)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !46, !46, !51, null}
!2120 = !{!2121, !2122, !2123, !2124}
!2121 = !DILocalVariable(name: "status", arg: 1, scope: !2117, file: !165, line: 285, type: !46)
!2122 = !DILocalVariable(name: "errnum", arg: 2, scope: !2117, file: !165, line: 285, type: !46)
!2123 = !DILocalVariable(name: "message", arg: 3, scope: !2117, file: !165, line: 285, type: !51)
!2124 = !DILocalVariable(name: "ap", scope: !2117, file: !165, line: 287, type: !173)
!2125 = !DILocation(line: 0, scope: !2117)
!2126 = !DILocation(line: 287, column: 3, scope: !2117)
!2127 = !DILocation(line: 287, column: 11, scope: !2117)
!2128 = !DILocation(line: 288, column: 3, scope: !2117)
!2129 = !DILocation(line: 289, column: 3, scope: !2117)
!2130 = !DILocation(line: 290, column: 3, scope: !2117)
!2131 = !DILocation(line: 291, column: 1, scope: !2117)
!2132 = !DILocation(line: 0, scope: !170)
!2133 = !DILocation(line: 298, column: 1, scope: !170)
!2134 = !DILocation(line: 302, column: 7, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !170, file: !165, line: 302, column: 7)
!2136 = !DILocation(line: 302, column: 7, scope: !170)
!2137 = !DILocation(line: 307, column: 11, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !165, line: 307, column: 11)
!2139 = distinct !DILexicalBlock(scope: !2135, file: !165, line: 303, column: 5)
!2140 = !DILocation(line: 307, column: 27, scope: !2138)
!2141 = !DILocation(line: 308, column: 11, scope: !2138)
!2142 = !DILocation(line: 308, column: 28, scope: !2138)
!2143 = !DILocation(line: 308, column: 25, scope: !2138)
!2144 = !DILocation(line: 309, column: 15, scope: !2138)
!2145 = !DILocation(line: 309, column: 33, scope: !2138)
!2146 = !DILocation(line: 310, column: 19, scope: !2138)
!2147 = !DILocation(line: 311, column: 22, scope: !2138)
!2148 = !DILocation(line: 311, column: 56, scope: !2138)
!2149 = !DILocation(line: 307, column: 11, scope: !2139)
!2150 = !DILocation(line: 316, column: 21, scope: !2139)
!2151 = !DILocation(line: 317, column: 23, scope: !2139)
!2152 = !DILocation(line: 318, column: 5, scope: !2139)
!2153 = !DILocation(line: 327, column: 3, scope: !170)
!2154 = !DILocation(line: 331, column: 7, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !170, file: !165, line: 331, column: 7)
!2156 = !DILocation(line: 331, column: 7, scope: !170)
!2157 = !DILocation(line: 332, column: 5, scope: !2155)
!2158 = !DILocation(line: 338, column: 7, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !165, line: 334, column: 5)
!2160 = !DILocation(line: 346, column: 3, scope: !170)
!2161 = !DILocation(line: 350, column: 3, scope: !170)
!2162 = !DILocation(line: 356, column: 1, scope: !170)
!2163 = distinct !DISubprogram(name: "error_at_line", scope: !165, file: !165, line: 359, type: !2164, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{null, !46, !46, !51, !7, !51, null}
!2166 = !{!2167, !2168, !2169, !2170, !2171, !2172}
!2167 = !DILocalVariable(name: "status", arg: 1, scope: !2163, file: !165, line: 359, type: !46)
!2168 = !DILocalVariable(name: "errnum", arg: 2, scope: !2163, file: !165, line: 359, type: !46)
!2169 = !DILocalVariable(name: "file_name", arg: 3, scope: !2163, file: !165, line: 359, type: !51)
!2170 = !DILocalVariable(name: "line_number", arg: 4, scope: !2163, file: !165, line: 360, type: !7)
!2171 = !DILocalVariable(name: "message", arg: 5, scope: !2163, file: !165, line: 360, type: !51)
!2172 = !DILocalVariable(name: "ap", scope: !2163, file: !165, line: 362, type: !173)
!2173 = !DILocation(line: 0, scope: !2163)
!2174 = !DILocation(line: 362, column: 3, scope: !2163)
!2175 = !DILocation(line: 362, column: 11, scope: !2163)
!2176 = !DILocation(line: 363, column: 3, scope: !2163)
!2177 = !DILocation(line: 364, column: 3, scope: !2163)
!2178 = !DILocation(line: 366, column: 3, scope: !2163)
!2179 = !DILocation(line: 367, column: 1, scope: !2163)
!2180 = distinct !DISubprogram(name: "getprogname", scope: !365, file: !365, line: 54, type: !2181, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !578)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!51}
!2183 = !DILocation(line: 58, column: 10, scope: !2180)
!2184 = !DILocation(line: 58, column: 3, scope: !2180)
!2185 = distinct !DISubprogram(name: "umaxtostr", scope: !2186, file: !2186, line: 29, type: !2187, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !366, retainedNodes: !2189)
!2186 = !DIFile(filename: "./lib/anytostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e5b8bc0749223f86edfe264a04f25de0")
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!43, !369, !43}
!2189 = !{!2190, !2191, !2192}
!2190 = !DILocalVariable(name: "i", arg: 1, scope: !2185, file: !2186, line: 29, type: !369)
!2191 = !DILocalVariable(name: "buf", arg: 2, scope: !2185, file: !2186, line: 29, type: !43)
!2192 = !DILocalVariable(name: "p", scope: !2185, file: !2186, line: 31, type: !43)
!2193 = !DILocation(line: 0, scope: !2185)
!2194 = !DILocation(line: 31, column: 17, scope: !2185)
!2195 = !DILocation(line: 32, column: 6, scope: !2185)
!2196 = !DILocation(line: 46, column: 17, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !2186, line: 43, column: 5)
!2198 = distinct !DILexicalBlock(scope: !2185, file: !2186, line: 34, column: 7)
!2199 = !DILocation(line: 45, column: 16, scope: !2197)
!2200 = !DILocation(line: 45, column: 10, scope: !2197)
!2201 = !DILocation(line: 45, column: 14, scope: !2197)
!2202 = !DILocation(line: 46, column: 24, scope: !2197)
!2203 = !DILocation(line: 45, column: 9, scope: !2197)
!2204 = distinct !{!2204, !2205, !2206, !552}
!2205 = !DILocation(line: 44, column: 7, scope: !2197)
!2206 = !DILocation(line: 46, column: 28, scope: !2197)
!2207 = !DILocation(line: 49, column: 3, scope: !2185)
!2208 = distinct !DISubprogram(name: "set_program_name", scope: !206, file: !206, line: 37, type: !511, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2209)
!2209 = !{!2210, !2211, !2212}
!2210 = !DILocalVariable(name: "argv0", arg: 1, scope: !2208, file: !206, line: 37, type: !51)
!2211 = !DILocalVariable(name: "slash", scope: !2208, file: !206, line: 44, type: !51)
!2212 = !DILocalVariable(name: "base", scope: !2208, file: !206, line: 45, type: !51)
!2213 = !DILocation(line: 0, scope: !2208)
!2214 = !DILocation(line: 44, column: 23, scope: !2208)
!2215 = !DILocation(line: 45, column: 22, scope: !2208)
!2216 = !DILocation(line: 46, column: 17, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2208, file: !206, line: 46, column: 7)
!2218 = !DILocation(line: 46, column: 9, scope: !2217)
!2219 = !DILocation(line: 46, column: 25, scope: !2217)
!2220 = !DILocation(line: 46, column: 40, scope: !2217)
!2221 = !DILocalVariable(name: "__s1", arg: 1, scope: !2222, file: !536, line: 974, type: !686)
!2222 = distinct !DISubprogram(name: "memeq", scope: !536, file: !536, line: 974, type: !2223, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2225)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!77, !686, !686, !48}
!2225 = !{!2221, !2226, !2227}
!2226 = !DILocalVariable(name: "__s2", arg: 2, scope: !2222, file: !536, line: 974, type: !686)
!2227 = !DILocalVariable(name: "__n", arg: 3, scope: !2222, file: !536, line: 974, type: !48)
!2228 = !DILocation(line: 0, scope: !2222, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 46, column: 28, scope: !2217)
!2230 = !DILocation(line: 976, column: 11, scope: !2222, inlinedAt: !2229)
!2231 = !DILocation(line: 976, column: 10, scope: !2222, inlinedAt: !2229)
!2232 = !DILocation(line: 46, column: 7, scope: !2208)
!2233 = !DILocation(line: 49, column: 11, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !206, line: 49, column: 11)
!2235 = distinct !DILexicalBlock(scope: !2217, file: !206, line: 47, column: 5)
!2236 = !DILocation(line: 49, column: 36, scope: !2234)
!2237 = !DILocation(line: 49, column: 11, scope: !2235)
!2238 = !DILocation(line: 65, column: 16, scope: !2208)
!2239 = !DILocation(line: 71, column: 27, scope: !2208)
!2240 = !DILocation(line: 74, column: 33, scope: !2208)
!2241 = !DILocation(line: 76, column: 1, scope: !2208)
!2242 = !DILocation(line: 0, scope: !211)
!2243 = !DILocation(line: 40, column: 29, scope: !211)
!2244 = !DILocation(line: 41, column: 19, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !211, file: !212, line: 41, column: 7)
!2246 = !DILocation(line: 41, column: 7, scope: !211)
!2247 = !DILocation(line: 47, column: 3, scope: !211)
!2248 = !DILocation(line: 48, column: 3, scope: !211)
!2249 = !DILocation(line: 48, column: 13, scope: !211)
!2250 = !DILocalVariable(name: "ps", arg: 1, scope: !2251, file: !2252, line: 1135, type: !2255)
!2251 = distinct !DISubprogram(name: "mbszero", scope: !2252, file: !2252, line: 1135, type: !2253, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !2256)
!2252 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2253 = !DISubroutineType(types: !2254)
!2254 = !{null, !2255}
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!2256 = !{!2250}
!2257 = !DILocation(line: 0, scope: !2251, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 48, column: 18, scope: !211)
!2259 = !DILocalVariable(name: "__dest", arg: 1, scope: !2260, file: !2261, line: 57, type: !45)
!2260 = distinct !DISubprogram(name: "memset", scope: !2261, file: !2261, line: 57, type: !2262, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !2264)
!2261 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!45, !45, !46, !48}
!2264 = !{!2259, !2265, !2266}
!2265 = !DILocalVariable(name: "__ch", arg: 2, scope: !2260, file: !2261, line: 57, type: !46)
!2266 = !DILocalVariable(name: "__len", arg: 3, scope: !2260, file: !2261, line: 57, type: !48)
!2267 = !DILocation(line: 0, scope: !2260, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 1137, column: 3, scope: !2251, inlinedAt: !2258)
!2269 = !DILocation(line: 59, column: 10, scope: !2260, inlinedAt: !2268)
!2270 = !DILocation(line: 49, column: 7, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !211, file: !212, line: 49, column: 7)
!2272 = !DILocation(line: 49, column: 39, scope: !2271)
!2273 = !DILocation(line: 49, column: 44, scope: !2271)
!2274 = !DILocation(line: 54, column: 1, scope: !211)
!2275 = !DISubprogram(name: "mbrtoc32", scope: !223, file: !223, line: 57, type: !2276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!48, !2278, !582, !48, !2280}
!2278 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2279)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2255)
!2281 = distinct !DISubprogram(name: "clone_quoting_options", scope: !248, file: !248, line: 113, type: !2282, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2285)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!2284, !2284}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!2285 = !{!2286, !2287, !2288}
!2286 = !DILocalVariable(name: "o", arg: 1, scope: !2281, file: !248, line: 113, type: !2284)
!2287 = !DILocalVariable(name: "saved_errno", scope: !2281, file: !248, line: 115, type: !46)
!2288 = !DILocalVariable(name: "p", scope: !2281, file: !248, line: 116, type: !2284)
!2289 = !DILocation(line: 0, scope: !2281)
!2290 = !DILocation(line: 115, column: 21, scope: !2281)
!2291 = !DILocation(line: 116, column: 40, scope: !2281)
!2292 = !DILocation(line: 116, column: 31, scope: !2281)
!2293 = !DILocation(line: 118, column: 9, scope: !2281)
!2294 = !DILocation(line: 119, column: 3, scope: !2281)
!2295 = distinct !DISubprogram(name: "get_quoting_style", scope: !248, file: !248, line: 124, type: !2296, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2300)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!250, !2298}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!2300 = !{!2301}
!2301 = !DILocalVariable(name: "o", arg: 1, scope: !2295, file: !248, line: 124, type: !2298)
!2302 = !DILocation(line: 0, scope: !2295)
!2303 = !DILocation(line: 126, column: 11, scope: !2295)
!2304 = !DILocation(line: 126, column: 46, scope: !2295)
!2305 = !{!2306, !459, i64 0}
!2306 = !{!"quoting_options", !459, i64 0, !587, i64 4, !459, i64 8, !458, i64 40, !458, i64 48}
!2307 = !DILocation(line: 126, column: 3, scope: !2295)
!2308 = distinct !DISubprogram(name: "set_quoting_style", scope: !248, file: !248, line: 132, type: !2309, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2311)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{null, !2284, !250}
!2311 = !{!2312, !2313}
!2312 = !DILocalVariable(name: "o", arg: 1, scope: !2308, file: !248, line: 132, type: !2284)
!2313 = !DILocalVariable(name: "s", arg: 2, scope: !2308, file: !248, line: 132, type: !250)
!2314 = !DILocation(line: 0, scope: !2308)
!2315 = !DILocation(line: 134, column: 4, scope: !2308)
!2316 = !DILocation(line: 134, column: 39, scope: !2308)
!2317 = !DILocation(line: 134, column: 45, scope: !2308)
!2318 = !DILocation(line: 135, column: 1, scope: !2308)
!2319 = distinct !DISubprogram(name: "set_char_quoting", scope: !248, file: !248, line: 143, type: !2320, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!46, !2284, !44, !46}
!2322 = !{!2323, !2324, !2325, !2326, !2327, !2329, !2330}
!2323 = !DILocalVariable(name: "o", arg: 1, scope: !2319, file: !248, line: 143, type: !2284)
!2324 = !DILocalVariable(name: "c", arg: 2, scope: !2319, file: !248, line: 143, type: !44)
!2325 = !DILocalVariable(name: "i", arg: 3, scope: !2319, file: !248, line: 143, type: !46)
!2326 = !DILocalVariable(name: "uc", scope: !2319, file: !248, line: 145, type: !53)
!2327 = !DILocalVariable(name: "p", scope: !2319, file: !248, line: 146, type: !2328)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2329 = !DILocalVariable(name: "shift", scope: !2319, file: !248, line: 148, type: !46)
!2330 = !DILocalVariable(name: "r", scope: !2319, file: !248, line: 149, type: !7)
!2331 = !DILocation(line: 0, scope: !2319)
!2332 = !DILocation(line: 147, column: 6, scope: !2319)
!2333 = !DILocation(line: 147, column: 62, scope: !2319)
!2334 = !DILocation(line: 147, column: 57, scope: !2319)
!2335 = !DILocation(line: 148, column: 15, scope: !2319)
!2336 = !DILocation(line: 149, column: 21, scope: !2319)
!2337 = !DILocation(line: 149, column: 24, scope: !2319)
!2338 = !DILocation(line: 149, column: 34, scope: !2319)
!2339 = !DILocation(line: 150, column: 13, scope: !2319)
!2340 = !DILocation(line: 150, column: 19, scope: !2319)
!2341 = !DILocation(line: 150, column: 24, scope: !2319)
!2342 = !DILocation(line: 150, column: 6, scope: !2319)
!2343 = !DILocation(line: 151, column: 3, scope: !2319)
!2344 = distinct !DISubprogram(name: "set_quoting_flags", scope: !248, file: !248, line: 159, type: !2345, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2347)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!46, !2284, !46}
!2347 = !{!2348, !2349, !2350}
!2348 = !DILocalVariable(name: "o", arg: 1, scope: !2344, file: !248, line: 159, type: !2284)
!2349 = !DILocalVariable(name: "i", arg: 2, scope: !2344, file: !248, line: 159, type: !46)
!2350 = !DILocalVariable(name: "r", scope: !2344, file: !248, line: 163, type: !46)
!2351 = !DILocation(line: 0, scope: !2344)
!2352 = !DILocation(line: 161, column: 8, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2344, file: !248, line: 161, column: 7)
!2354 = !DILocation(line: 161, column: 7, scope: !2344)
!2355 = !DILocation(line: 163, column: 14, scope: !2344)
!2356 = !{!2306, !587, i64 4}
!2357 = !DILocation(line: 164, column: 12, scope: !2344)
!2358 = !DILocation(line: 165, column: 3, scope: !2344)
!2359 = distinct !DISubprogram(name: "set_custom_quoting", scope: !248, file: !248, line: 169, type: !2360, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{null, !2284, !51, !51}
!2362 = !{!2363, !2364, !2365}
!2363 = !DILocalVariable(name: "o", arg: 1, scope: !2359, file: !248, line: 169, type: !2284)
!2364 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2359, file: !248, line: 170, type: !51)
!2365 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2359, file: !248, line: 170, type: !51)
!2366 = !DILocation(line: 0, scope: !2359)
!2367 = !DILocation(line: 172, column: 8, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2359, file: !248, line: 172, column: 7)
!2369 = !DILocation(line: 172, column: 7, scope: !2359)
!2370 = !DILocation(line: 174, column: 6, scope: !2359)
!2371 = !DILocation(line: 174, column: 12, scope: !2359)
!2372 = !DILocation(line: 175, column: 8, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2359, file: !248, line: 175, column: 7)
!2374 = !DILocation(line: 175, column: 19, scope: !2373)
!2375 = !DILocation(line: 176, column: 5, scope: !2373)
!2376 = !DILocation(line: 177, column: 6, scope: !2359)
!2377 = !DILocation(line: 177, column: 17, scope: !2359)
!2378 = !{!2306, !458, i64 40}
!2379 = !DILocation(line: 178, column: 6, scope: !2359)
!2380 = !DILocation(line: 178, column: 18, scope: !2359)
!2381 = !{!2306, !458, i64 48}
!2382 = !DILocation(line: 179, column: 1, scope: !2359)
!2383 = distinct !DISubprogram(name: "quotearg_buffer", scope: !248, file: !248, line: 774, type: !2384, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2386)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!48, !43, !48, !51, !48, !2298}
!2386 = !{!2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394}
!2387 = !DILocalVariable(name: "buffer", arg: 1, scope: !2383, file: !248, line: 774, type: !43)
!2388 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2383, file: !248, line: 774, type: !48)
!2389 = !DILocalVariable(name: "arg", arg: 3, scope: !2383, file: !248, line: 775, type: !51)
!2390 = !DILocalVariable(name: "argsize", arg: 4, scope: !2383, file: !248, line: 775, type: !48)
!2391 = !DILocalVariable(name: "o", arg: 5, scope: !2383, file: !248, line: 776, type: !2298)
!2392 = !DILocalVariable(name: "p", scope: !2383, file: !248, line: 778, type: !2298)
!2393 = !DILocalVariable(name: "saved_errno", scope: !2383, file: !248, line: 779, type: !46)
!2394 = !DILocalVariable(name: "r", scope: !2383, file: !248, line: 780, type: !48)
!2395 = !DILocation(line: 0, scope: !2383)
!2396 = !DILocation(line: 778, column: 37, scope: !2383)
!2397 = !DILocation(line: 779, column: 21, scope: !2383)
!2398 = !DILocation(line: 781, column: 43, scope: !2383)
!2399 = !DILocation(line: 781, column: 53, scope: !2383)
!2400 = !DILocation(line: 781, column: 60, scope: !2383)
!2401 = !DILocation(line: 782, column: 43, scope: !2383)
!2402 = !DILocation(line: 782, column: 58, scope: !2383)
!2403 = !DILocation(line: 780, column: 14, scope: !2383)
!2404 = !DILocation(line: 783, column: 9, scope: !2383)
!2405 = !DILocation(line: 784, column: 3, scope: !2383)
!2406 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !248, file: !248, line: 251, type: !2407, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2411)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!48, !43, !48, !51, !48, !250, !46, !2409, !51, !51}
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2436, !2438, !2441, !2442, !2443, !2444, !2447, !2448, !2451, !2455, !2456, !2464, !2467, !2468, !2470, !2471, !2472, !2473}
!2412 = !DILocalVariable(name: "buffer", arg: 1, scope: !2406, file: !248, line: 251, type: !43)
!2413 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2406, file: !248, line: 251, type: !48)
!2414 = !DILocalVariable(name: "arg", arg: 3, scope: !2406, file: !248, line: 252, type: !51)
!2415 = !DILocalVariable(name: "argsize", arg: 4, scope: !2406, file: !248, line: 252, type: !48)
!2416 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2406, file: !248, line: 253, type: !250)
!2417 = !DILocalVariable(name: "flags", arg: 6, scope: !2406, file: !248, line: 253, type: !46)
!2418 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2406, file: !248, line: 254, type: !2409)
!2419 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2406, file: !248, line: 255, type: !51)
!2420 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2406, file: !248, line: 256, type: !51)
!2421 = !DILocalVariable(name: "unibyte_locale", scope: !2406, file: !248, line: 258, type: !77)
!2422 = !DILocalVariable(name: "len", scope: !2406, file: !248, line: 260, type: !48)
!2423 = !DILocalVariable(name: "orig_buffersize", scope: !2406, file: !248, line: 261, type: !48)
!2424 = !DILocalVariable(name: "quote_string", scope: !2406, file: !248, line: 262, type: !51)
!2425 = !DILocalVariable(name: "quote_string_len", scope: !2406, file: !248, line: 263, type: !48)
!2426 = !DILocalVariable(name: "backslash_escapes", scope: !2406, file: !248, line: 264, type: !77)
!2427 = !DILocalVariable(name: "elide_outer_quotes", scope: !2406, file: !248, line: 265, type: !77)
!2428 = !DILocalVariable(name: "encountered_single_quote", scope: !2406, file: !248, line: 266, type: !77)
!2429 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2406, file: !248, line: 267, type: !77)
!2430 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2406, file: !248, line: 309, type: !77)
!2431 = !DILocalVariable(name: "lq", scope: !2432, file: !248, line: 361, type: !51)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !248, line: 361, column: 11)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !248, line: 360, column: 13)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !248, line: 333, column: 7)
!2435 = distinct !DILexicalBlock(scope: !2406, file: !248, line: 312, column: 5)
!2436 = !DILocalVariable(name: "i", scope: !2437, file: !248, line: 395, type: !48)
!2437 = distinct !DILexicalBlock(scope: !2406, file: !248, line: 395, column: 3)
!2438 = !DILocalVariable(name: "is_right_quote", scope: !2439, file: !248, line: 397, type: !77)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !248, line: 396, column: 5)
!2440 = distinct !DILexicalBlock(scope: !2437, file: !248, line: 395, column: 3)
!2441 = !DILocalVariable(name: "escaping", scope: !2439, file: !248, line: 398, type: !77)
!2442 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2439, file: !248, line: 399, type: !77)
!2443 = !DILocalVariable(name: "c", scope: !2439, file: !248, line: 417, type: !53)
!2444 = !DILocalVariable(name: "m", scope: !2445, file: !248, line: 598, type: !48)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !248, line: 596, column: 11)
!2446 = distinct !DILexicalBlock(scope: !2439, file: !248, line: 419, column: 9)
!2447 = !DILocalVariable(name: "printable", scope: !2445, file: !248, line: 600, type: !77)
!2448 = !DILocalVariable(name: "mbs", scope: !2449, file: !248, line: 609, type: !307)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !248, line: 608, column: 15)
!2450 = distinct !DILexicalBlock(scope: !2445, file: !248, line: 602, column: 17)
!2451 = !DILocalVariable(name: "w", scope: !2452, file: !248, line: 618, type: !222)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !248, line: 617, column: 19)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !248, line: 616, column: 17)
!2454 = distinct !DILexicalBlock(scope: !2449, file: !248, line: 616, column: 17)
!2455 = !DILocalVariable(name: "bytes", scope: !2452, file: !248, line: 619, type: !48)
!2456 = !DILocalVariable(name: "j", scope: !2457, file: !248, line: 648, type: !48)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !248, line: 648, column: 29)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !248, line: 647, column: 27)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !248, line: 645, column: 29)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !248, line: 636, column: 23)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !248, line: 628, column: 30)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !248, line: 623, column: 30)
!2463 = distinct !DILexicalBlock(scope: !2452, file: !248, line: 621, column: 25)
!2464 = !DILocalVariable(name: "ilim", scope: !2465, file: !248, line: 674, type: !48)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !248, line: 671, column: 15)
!2466 = distinct !DILexicalBlock(scope: !2445, file: !248, line: 670, column: 17)
!2467 = !DILabel(scope: !2406, name: "process_input", file: !248, line: 308)
!2468 = !DILabel(scope: !2469, name: "c_and_shell_escape", file: !248, line: 502)
!2469 = distinct !DILexicalBlock(scope: !2446, file: !248, line: 478, column: 9)
!2470 = !DILabel(scope: !2469, name: "c_escape", file: !248, line: 507)
!2471 = !DILabel(scope: !2439, name: "store_escape", file: !248, line: 709)
!2472 = !DILabel(scope: !2439, name: "store_c", file: !248, line: 712)
!2473 = !DILabel(scope: !2406, name: "force_outer_quoting_style", file: !248, line: 753)
!2474 = !DILocation(line: 0, scope: !2406)
!2475 = !DILocation(line: 258, column: 25, scope: !2406)
!2476 = !DILocation(line: 258, column: 36, scope: !2406)
!2477 = !DILocation(line: 267, column: 3, scope: !2406)
!2478 = !DILocation(line: 261, column: 10, scope: !2406)
!2479 = !DILocation(line: 262, column: 15, scope: !2406)
!2480 = !DILocation(line: 263, column: 10, scope: !2406)
!2481 = !DILocation(line: 308, column: 2, scope: !2406)
!2482 = !DILocation(line: 311, column: 3, scope: !2406)
!2483 = !DILocation(line: 318, column: 11, scope: !2435)
!2484 = !DILocation(line: 319, column: 9, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !248, line: 319, column: 9)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !248, line: 319, column: 9)
!2487 = distinct !DILexicalBlock(scope: !2435, file: !248, line: 318, column: 11)
!2488 = !DILocation(line: 319, column: 9, scope: !2486)
!2489 = !DILocation(line: 0, scope: !298, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 357, column: 26, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !248, line: 335, column: 11)
!2492 = distinct !DILexicalBlock(scope: !2434, file: !248, line: 334, column: 13)
!2493 = !DILocation(line: 199, column: 29, scope: !298, inlinedAt: !2490)
!2494 = !DILocation(line: 201, column: 19, scope: !2495, inlinedAt: !2490)
!2495 = distinct !DILexicalBlock(scope: !298, file: !248, line: 201, column: 7)
!2496 = !DILocation(line: 201, column: 7, scope: !298, inlinedAt: !2490)
!2497 = !DILocation(line: 229, column: 3, scope: !298, inlinedAt: !2490)
!2498 = !DILocation(line: 230, column: 3, scope: !298, inlinedAt: !2490)
!2499 = !DILocation(line: 230, column: 13, scope: !298, inlinedAt: !2490)
!2500 = !DILocalVariable(name: "ps", arg: 1, scope: !2501, file: !2252, line: 1135, type: !2504)
!2501 = distinct !DISubprogram(name: "mbszero", scope: !2252, file: !2252, line: 1135, type: !2502, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2505)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{null, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!2505 = !{!2500}
!2506 = !DILocation(line: 0, scope: !2501, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 230, column: 18, scope: !298, inlinedAt: !2490)
!2508 = !DILocalVariable(name: "__dest", arg: 1, scope: !2509, file: !2261, line: 57, type: !45)
!2509 = distinct !DISubprogram(name: "memset", scope: !2261, file: !2261, line: 57, type: !2262, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2510)
!2510 = !{!2508, !2511, !2512}
!2511 = !DILocalVariable(name: "__ch", arg: 2, scope: !2509, file: !2261, line: 57, type: !46)
!2512 = !DILocalVariable(name: "__len", arg: 3, scope: !2509, file: !2261, line: 57, type: !48)
!2513 = !DILocation(line: 0, scope: !2509, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 1137, column: 3, scope: !2501, inlinedAt: !2507)
!2515 = !DILocation(line: 59, column: 10, scope: !2509, inlinedAt: !2514)
!2516 = !DILocation(line: 231, column: 7, scope: !2517, inlinedAt: !2490)
!2517 = distinct !DILexicalBlock(scope: !298, file: !248, line: 231, column: 7)
!2518 = !DILocation(line: 231, column: 40, scope: !2517, inlinedAt: !2490)
!2519 = !DILocation(line: 231, column: 45, scope: !2517, inlinedAt: !2490)
!2520 = !DILocation(line: 235, column: 1, scope: !298, inlinedAt: !2490)
!2521 = !DILocation(line: 0, scope: !298, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 358, column: 27, scope: !2491)
!2523 = !DILocation(line: 199, column: 29, scope: !298, inlinedAt: !2522)
!2524 = !DILocation(line: 201, column: 19, scope: !2495, inlinedAt: !2522)
!2525 = !DILocation(line: 201, column: 7, scope: !298, inlinedAt: !2522)
!2526 = !DILocation(line: 229, column: 3, scope: !298, inlinedAt: !2522)
!2527 = !DILocation(line: 230, column: 3, scope: !298, inlinedAt: !2522)
!2528 = !DILocation(line: 230, column: 13, scope: !298, inlinedAt: !2522)
!2529 = !DILocation(line: 0, scope: !2501, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 230, column: 18, scope: !298, inlinedAt: !2522)
!2531 = !DILocation(line: 0, scope: !2509, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 1137, column: 3, scope: !2501, inlinedAt: !2530)
!2533 = !DILocation(line: 59, column: 10, scope: !2509, inlinedAt: !2532)
!2534 = !DILocation(line: 231, column: 7, scope: !2517, inlinedAt: !2522)
!2535 = !DILocation(line: 231, column: 40, scope: !2517, inlinedAt: !2522)
!2536 = !DILocation(line: 231, column: 45, scope: !2517, inlinedAt: !2522)
!2537 = !DILocation(line: 235, column: 1, scope: !298, inlinedAt: !2522)
!2538 = !DILocation(line: 360, column: 13, scope: !2434)
!2539 = !DILocation(line: 0, scope: !2432)
!2540 = !DILocation(line: 361, column: 45, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2432, file: !248, line: 361, column: 11)
!2542 = !DILocation(line: 361, column: 11, scope: !2432)
!2543 = !DILocation(line: 362, column: 13, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !248, line: 362, column: 13)
!2545 = distinct !DILexicalBlock(scope: !2541, file: !248, line: 362, column: 13)
!2546 = !DILocation(line: 362, column: 13, scope: !2545)
!2547 = !DILocation(line: 361, column: 52, scope: !2541)
!2548 = distinct !{!2548, !2542, !2549, !552}
!2549 = !DILocation(line: 362, column: 13, scope: !2432)
!2550 = !DILocation(line: 260, column: 10, scope: !2406)
!2551 = !DILocation(line: 365, column: 28, scope: !2434)
!2552 = !DILocation(line: 367, column: 7, scope: !2435)
!2553 = !DILocation(line: 370, column: 7, scope: !2435)
!2554 = !DILocation(line: 376, column: 11, scope: !2435)
!2555 = !DILocation(line: 381, column: 11, scope: !2435)
!2556 = !DILocation(line: 382, column: 9, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !248, line: 382, column: 9)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !248, line: 382, column: 9)
!2559 = distinct !DILexicalBlock(scope: !2435, file: !248, line: 381, column: 11)
!2560 = !DILocation(line: 382, column: 9, scope: !2558)
!2561 = !DILocation(line: 389, column: 7, scope: !2435)
!2562 = !DILocation(line: 392, column: 7, scope: !2435)
!2563 = !DILocation(line: 0, scope: !2437)
!2564 = !DILocation(line: 395, column: 8, scope: !2437)
!2565 = !DILocation(line: 395, column: 34, scope: !2440)
!2566 = !DILocation(line: 395, column: 26, scope: !2440)
!2567 = !DILocation(line: 395, column: 48, scope: !2440)
!2568 = !DILocation(line: 395, column: 55, scope: !2440)
!2569 = !DILocation(line: 395, column: 3, scope: !2437)
!2570 = !DILocation(line: 395, column: 67, scope: !2440)
!2571 = !DILocation(line: 0, scope: !2439)
!2572 = !DILocation(line: 402, column: 11, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2439, file: !248, line: 401, column: 11)
!2574 = !DILocation(line: 404, column: 17, scope: !2573)
!2575 = !DILocation(line: 405, column: 39, scope: !2573)
!2576 = !DILocation(line: 409, column: 32, scope: !2573)
!2577 = !DILocation(line: 405, column: 19, scope: !2573)
!2578 = !DILocation(line: 405, column: 15, scope: !2573)
!2579 = !DILocation(line: 410, column: 11, scope: !2573)
!2580 = !DILocation(line: 410, column: 25, scope: !2573)
!2581 = !DILocalVariable(name: "__s1", arg: 1, scope: !2582, file: !536, line: 974, type: !686)
!2582 = distinct !DISubprogram(name: "memeq", scope: !536, file: !536, line: 974, type: !2223, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2583)
!2583 = !{!2581, !2584, !2585}
!2584 = !DILocalVariable(name: "__s2", arg: 2, scope: !2582, file: !536, line: 974, type: !686)
!2585 = !DILocalVariable(name: "__n", arg: 3, scope: !2582, file: !536, line: 974, type: !48)
!2586 = !DILocation(line: 0, scope: !2582, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 410, column: 14, scope: !2573)
!2588 = !DILocation(line: 976, column: 11, scope: !2582, inlinedAt: !2587)
!2589 = !DILocation(line: 976, column: 10, scope: !2582, inlinedAt: !2587)
!2590 = !DILocation(line: 401, column: 11, scope: !2439)
!2591 = !DILocation(line: 417, column: 25, scope: !2439)
!2592 = !DILocation(line: 418, column: 7, scope: !2439)
!2593 = !DILocation(line: 421, column: 15, scope: !2446)
!2594 = !DILocation(line: 423, column: 15, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !248, line: 423, column: 15)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !248, line: 422, column: 13)
!2597 = distinct !DILexicalBlock(scope: !2446, file: !248, line: 421, column: 15)
!2598 = !DILocation(line: 423, column: 15, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2595, file: !248, line: 423, column: 15)
!2600 = !DILocation(line: 423, column: 15, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !248, line: 423, column: 15)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !248, line: 423, column: 15)
!2603 = distinct !DILexicalBlock(scope: !2599, file: !248, line: 423, column: 15)
!2604 = !DILocation(line: 423, column: 15, scope: !2602)
!2605 = !DILocation(line: 423, column: 15, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !248, line: 423, column: 15)
!2607 = distinct !DILexicalBlock(scope: !2603, file: !248, line: 423, column: 15)
!2608 = !DILocation(line: 423, column: 15, scope: !2607)
!2609 = !DILocation(line: 423, column: 15, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !248, line: 423, column: 15)
!2611 = distinct !DILexicalBlock(scope: !2603, file: !248, line: 423, column: 15)
!2612 = !DILocation(line: 423, column: 15, scope: !2611)
!2613 = !DILocation(line: 423, column: 15, scope: !2603)
!2614 = !DILocation(line: 423, column: 15, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !248, line: 423, column: 15)
!2616 = distinct !DILexicalBlock(scope: !2595, file: !248, line: 423, column: 15)
!2617 = !DILocation(line: 423, column: 15, scope: !2616)
!2618 = !DILocation(line: 431, column: 19, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2596, file: !248, line: 430, column: 19)
!2620 = !DILocation(line: 431, column: 24, scope: !2619)
!2621 = !DILocation(line: 431, column: 28, scope: !2619)
!2622 = !DILocation(line: 431, column: 38, scope: !2619)
!2623 = !DILocation(line: 431, column: 48, scope: !2619)
!2624 = !DILocation(line: 431, column: 59, scope: !2619)
!2625 = !DILocation(line: 433, column: 19, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !248, line: 433, column: 19)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !248, line: 433, column: 19)
!2628 = distinct !DILexicalBlock(scope: !2619, file: !248, line: 432, column: 17)
!2629 = !DILocation(line: 433, column: 19, scope: !2627)
!2630 = !DILocation(line: 434, column: 19, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !248, line: 434, column: 19)
!2632 = distinct !DILexicalBlock(scope: !2628, file: !248, line: 434, column: 19)
!2633 = !DILocation(line: 434, column: 19, scope: !2632)
!2634 = !DILocation(line: 435, column: 17, scope: !2628)
!2635 = !DILocation(line: 442, column: 20, scope: !2597)
!2636 = !DILocation(line: 447, column: 11, scope: !2446)
!2637 = !DILocation(line: 450, column: 19, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2446, file: !248, line: 448, column: 13)
!2639 = !DILocation(line: 456, column: 19, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2638, file: !248, line: 455, column: 19)
!2641 = !DILocation(line: 456, column: 24, scope: !2640)
!2642 = !DILocation(line: 456, column: 28, scope: !2640)
!2643 = !DILocation(line: 456, column: 38, scope: !2640)
!2644 = !DILocation(line: 456, column: 47, scope: !2640)
!2645 = !DILocation(line: 456, column: 41, scope: !2640)
!2646 = !DILocation(line: 456, column: 52, scope: !2640)
!2647 = !DILocation(line: 455, column: 19, scope: !2638)
!2648 = !DILocation(line: 457, column: 25, scope: !2640)
!2649 = !DILocation(line: 457, column: 17, scope: !2640)
!2650 = !DILocation(line: 464, column: 25, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2640, file: !248, line: 458, column: 19)
!2652 = !DILocation(line: 468, column: 21, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !248, line: 468, column: 21)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !248, line: 468, column: 21)
!2655 = !DILocation(line: 468, column: 21, scope: !2654)
!2656 = !DILocation(line: 469, column: 21, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !248, line: 469, column: 21)
!2658 = distinct !DILexicalBlock(scope: !2651, file: !248, line: 469, column: 21)
!2659 = !DILocation(line: 469, column: 21, scope: !2658)
!2660 = !DILocation(line: 470, column: 21, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !248, line: 470, column: 21)
!2662 = distinct !DILexicalBlock(scope: !2651, file: !248, line: 470, column: 21)
!2663 = !DILocation(line: 470, column: 21, scope: !2662)
!2664 = !DILocation(line: 471, column: 21, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !248, line: 471, column: 21)
!2666 = distinct !DILexicalBlock(scope: !2651, file: !248, line: 471, column: 21)
!2667 = !DILocation(line: 471, column: 21, scope: !2666)
!2668 = !DILocation(line: 472, column: 21, scope: !2651)
!2669 = !DILocation(line: 482, column: 33, scope: !2469)
!2670 = !DILocation(line: 483, column: 33, scope: !2469)
!2671 = !DILocation(line: 485, column: 33, scope: !2469)
!2672 = !DILocation(line: 486, column: 33, scope: !2469)
!2673 = !DILocation(line: 487, column: 33, scope: !2469)
!2674 = !DILocation(line: 490, column: 17, scope: !2469)
!2675 = !DILocation(line: 492, column: 21, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !248, line: 491, column: 15)
!2677 = distinct !DILexicalBlock(scope: !2469, file: !248, line: 490, column: 17)
!2678 = !DILocation(line: 499, column: 35, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2469, file: !248, line: 499, column: 17)
!2680 = !DILocation(line: 499, column: 57, scope: !2679)
!2681 = !DILocation(line: 0, scope: !2469)
!2682 = !DILocation(line: 502, column: 11, scope: !2469)
!2683 = !DILocation(line: 504, column: 17, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2469, file: !248, line: 503, column: 17)
!2685 = !DILocation(line: 507, column: 11, scope: !2469)
!2686 = !DILocation(line: 508, column: 17, scope: !2469)
!2687 = !DILocation(line: 517, column: 15, scope: !2446)
!2688 = !DILocation(line: 517, column: 40, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2446, file: !248, line: 517, column: 15)
!2690 = !DILocation(line: 517, column: 47, scope: !2689)
!2691 = !DILocation(line: 517, column: 18, scope: !2689)
!2692 = !DILocation(line: 521, column: 17, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2446, file: !248, line: 521, column: 15)
!2694 = !DILocation(line: 521, column: 15, scope: !2446)
!2695 = !DILocation(line: 525, column: 11, scope: !2446)
!2696 = !DILocation(line: 537, column: 15, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2446, file: !248, line: 536, column: 15)
!2698 = !DILocation(line: 536, column: 15, scope: !2446)
!2699 = !DILocation(line: 544, column: 15, scope: !2446)
!2700 = !DILocation(line: 546, column: 19, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !248, line: 545, column: 13)
!2702 = distinct !DILexicalBlock(scope: !2446, file: !248, line: 544, column: 15)
!2703 = !DILocation(line: 549, column: 19, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2701, file: !248, line: 549, column: 19)
!2705 = !DILocation(line: 549, column: 30, scope: !2704)
!2706 = !DILocation(line: 558, column: 15, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !248, line: 558, column: 15)
!2708 = distinct !DILexicalBlock(scope: !2701, file: !248, line: 558, column: 15)
!2709 = !DILocation(line: 558, column: 15, scope: !2708)
!2710 = !DILocation(line: 559, column: 15, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !248, line: 559, column: 15)
!2712 = distinct !DILexicalBlock(scope: !2701, file: !248, line: 559, column: 15)
!2713 = !DILocation(line: 559, column: 15, scope: !2712)
!2714 = !DILocation(line: 560, column: 15, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !248, line: 560, column: 15)
!2716 = distinct !DILexicalBlock(scope: !2701, file: !248, line: 560, column: 15)
!2717 = !DILocation(line: 560, column: 15, scope: !2716)
!2718 = !DILocation(line: 562, column: 13, scope: !2701)
!2719 = !DILocation(line: 602, column: 17, scope: !2445)
!2720 = !DILocation(line: 0, scope: !2445)
!2721 = !DILocation(line: 605, column: 29, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2450, file: !248, line: 603, column: 15)
!2723 = !DILocation(line: 605, column: 41, scope: !2722)
!2724 = !DILocation(line: 670, column: 23, scope: !2466)
!2725 = !DILocation(line: 609, column: 17, scope: !2449)
!2726 = !DILocation(line: 609, column: 27, scope: !2449)
!2727 = !DILocation(line: 0, scope: !2501, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 609, column: 32, scope: !2449)
!2729 = !DILocation(line: 0, scope: !2509, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 1137, column: 3, scope: !2501, inlinedAt: !2728)
!2731 = !DILocation(line: 59, column: 10, scope: !2509, inlinedAt: !2730)
!2732 = !DILocation(line: 613, column: 29, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2449, file: !248, line: 613, column: 21)
!2734 = !DILocation(line: 613, column: 21, scope: !2449)
!2735 = !DILocation(line: 614, column: 29, scope: !2733)
!2736 = !DILocation(line: 614, column: 19, scope: !2733)
!2737 = !DILocation(line: 618, column: 21, scope: !2452)
!2738 = !DILocation(line: 620, column: 54, scope: !2452)
!2739 = !DILocation(line: 0, scope: !2452)
!2740 = !DILocation(line: 619, column: 36, scope: !2452)
!2741 = !DILocation(line: 621, column: 25, scope: !2452)
!2742 = !DILocation(line: 631, column: 38, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2461, file: !248, line: 629, column: 23)
!2744 = !DILocation(line: 631, column: 48, scope: !2743)
!2745 = !DILocation(line: 665, column: 19, scope: !2453)
!2746 = !DILocation(line: 666, column: 15, scope: !2450)
!2747 = !DILocation(line: 626, column: 25, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2462, file: !248, line: 624, column: 23)
!2749 = !DILocation(line: 631, column: 51, scope: !2743)
!2750 = !DILocation(line: 631, column: 25, scope: !2743)
!2751 = !DILocation(line: 632, column: 28, scope: !2743)
!2752 = !DILocation(line: 631, column: 34, scope: !2743)
!2753 = distinct !{!2753, !2750, !2751, !552}
!2754 = !DILocation(line: 646, column: 29, scope: !2459)
!2755 = !DILocation(line: 0, scope: !2457)
!2756 = !DILocation(line: 649, column: 49, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2457, file: !248, line: 648, column: 29)
!2758 = !DILocation(line: 649, column: 39, scope: !2757)
!2759 = !DILocation(line: 649, column: 31, scope: !2757)
!2760 = !DILocation(line: 648, column: 60, scope: !2757)
!2761 = !DILocation(line: 648, column: 50, scope: !2757)
!2762 = !DILocation(line: 648, column: 29, scope: !2457)
!2763 = distinct !{!2763, !2762, !2764, !552}
!2764 = !DILocation(line: 654, column: 33, scope: !2457)
!2765 = !DILocation(line: 657, column: 43, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2460, file: !248, line: 657, column: 29)
!2767 = !DILocalVariable(name: "wc", arg: 1, scope: !2768, file: !2769, line: 865, type: !2772)
!2768 = distinct !DISubprogram(name: "c32isprint", scope: !2769, file: !2769, line: 865, type: !2770, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2774)
!2769 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!46, !2772}
!2772 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2773, line: 20, baseType: !7)
!2773 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2774 = !{!2767}
!2775 = !DILocation(line: 0, scope: !2768, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 657, column: 31, scope: !2766)
!2777 = !DILocation(line: 871, column: 10, scope: !2768, inlinedAt: !2776)
!2778 = !DILocation(line: 657, column: 31, scope: !2766)
!2779 = !DILocation(line: 664, column: 23, scope: !2452)
!2780 = !DILocation(line: 753, column: 2, scope: !2406)
!2781 = !DILocation(line: 756, column: 51, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2406, file: !248, line: 756, column: 7)
!2783 = !DILocation(line: 670, column: 19, scope: !2466)
!2784 = !DILocation(line: 670, column: 45, scope: !2466)
!2785 = !DILocation(line: 674, column: 33, scope: !2465)
!2786 = !DILocation(line: 0, scope: !2465)
!2787 = !DILocation(line: 676, column: 17, scope: !2465)
!2788 = !DILocation(line: 398, column: 12, scope: !2439)
!2789 = !DILocation(line: 678, column: 43, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !248, line: 678, column: 25)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !248, line: 677, column: 19)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !248, line: 676, column: 17)
!2793 = distinct !DILexicalBlock(scope: !2465, file: !248, line: 676, column: 17)
!2794 = !DILocation(line: 680, column: 25, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !248, line: 680, column: 25)
!2796 = distinct !DILexicalBlock(scope: !2790, file: !248, line: 679, column: 23)
!2797 = !DILocation(line: 680, column: 25, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2795, file: !248, line: 680, column: 25)
!2799 = !DILocation(line: 680, column: 25, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !248, line: 680, column: 25)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !248, line: 680, column: 25)
!2802 = distinct !DILexicalBlock(scope: !2798, file: !248, line: 680, column: 25)
!2803 = !DILocation(line: 680, column: 25, scope: !2801)
!2804 = !DILocation(line: 680, column: 25, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !248, line: 680, column: 25)
!2806 = distinct !DILexicalBlock(scope: !2802, file: !248, line: 680, column: 25)
!2807 = !DILocation(line: 680, column: 25, scope: !2806)
!2808 = !DILocation(line: 680, column: 25, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !248, line: 680, column: 25)
!2810 = distinct !DILexicalBlock(scope: !2802, file: !248, line: 680, column: 25)
!2811 = !DILocation(line: 680, column: 25, scope: !2810)
!2812 = !DILocation(line: 680, column: 25, scope: !2802)
!2813 = !DILocation(line: 680, column: 25, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !248, line: 680, column: 25)
!2815 = distinct !DILexicalBlock(scope: !2795, file: !248, line: 680, column: 25)
!2816 = !DILocation(line: 680, column: 25, scope: !2815)
!2817 = !DILocation(line: 681, column: 25, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !248, line: 681, column: 25)
!2819 = distinct !DILexicalBlock(scope: !2796, file: !248, line: 681, column: 25)
!2820 = !DILocation(line: 681, column: 25, scope: !2819)
!2821 = !DILocation(line: 682, column: 25, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !248, line: 682, column: 25)
!2823 = distinct !DILexicalBlock(scope: !2796, file: !248, line: 682, column: 25)
!2824 = !DILocation(line: 682, column: 25, scope: !2823)
!2825 = !DILocation(line: 683, column: 38, scope: !2796)
!2826 = !DILocation(line: 683, column: 33, scope: !2796)
!2827 = !DILocation(line: 684, column: 23, scope: !2796)
!2828 = !DILocation(line: 685, column: 30, scope: !2790)
!2829 = !DILocation(line: 687, column: 25, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !248, line: 687, column: 25)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !248, line: 687, column: 25)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !248, line: 686, column: 23)
!2833 = distinct !DILexicalBlock(scope: !2790, file: !248, line: 685, column: 30)
!2834 = !DILocation(line: 687, column: 25, scope: !2831)
!2835 = !DILocation(line: 689, column: 23, scope: !2832)
!2836 = !DILocation(line: 690, column: 35, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2791, file: !248, line: 690, column: 25)
!2838 = !DILocation(line: 690, column: 30, scope: !2837)
!2839 = !DILocation(line: 690, column: 25, scope: !2791)
!2840 = !DILocation(line: 692, column: 21, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !248, line: 692, column: 21)
!2842 = distinct !DILexicalBlock(scope: !2791, file: !248, line: 692, column: 21)
!2843 = !DILocation(line: 692, column: 21, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !248, line: 692, column: 21)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !248, line: 692, column: 21)
!2846 = distinct !DILexicalBlock(scope: !2841, file: !248, line: 692, column: 21)
!2847 = !DILocation(line: 692, column: 21, scope: !2845)
!2848 = !DILocation(line: 692, column: 21, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !248, line: 692, column: 21)
!2850 = distinct !DILexicalBlock(scope: !2846, file: !248, line: 692, column: 21)
!2851 = !DILocation(line: 692, column: 21, scope: !2850)
!2852 = !DILocation(line: 692, column: 21, scope: !2846)
!2853 = !DILocation(line: 0, scope: !2791)
!2854 = !DILocation(line: 693, column: 21, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !248, line: 693, column: 21)
!2856 = distinct !DILexicalBlock(scope: !2791, file: !248, line: 693, column: 21)
!2857 = !DILocation(line: 693, column: 21, scope: !2856)
!2858 = !DILocation(line: 694, column: 25, scope: !2791)
!2859 = !DILocation(line: 676, column: 17, scope: !2792)
!2860 = distinct !{!2860, !2861, !2862}
!2861 = !DILocation(line: 676, column: 17, scope: !2793)
!2862 = !DILocation(line: 695, column: 19, scope: !2793)
!2863 = !DILocation(line: 409, column: 30, scope: !2573)
!2864 = !DILocation(line: 702, column: 34, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2439, file: !248, line: 702, column: 11)
!2866 = !DILocation(line: 704, column: 14, scope: !2865)
!2867 = !DILocation(line: 705, column: 14, scope: !2865)
!2868 = !DILocation(line: 705, column: 35, scope: !2865)
!2869 = !DILocation(line: 705, column: 17, scope: !2865)
!2870 = !DILocation(line: 705, column: 47, scope: !2865)
!2871 = !DILocation(line: 705, column: 65, scope: !2865)
!2872 = !DILocation(line: 706, column: 11, scope: !2865)
!2873 = !DILocation(line: 702, column: 11, scope: !2439)
!2874 = !DILocation(line: 395, column: 15, scope: !2437)
!2875 = !DILocation(line: 709, column: 5, scope: !2439)
!2876 = !DILocation(line: 710, column: 7, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2439, file: !248, line: 710, column: 7)
!2878 = !DILocation(line: 710, column: 7, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2877, file: !248, line: 710, column: 7)
!2880 = !DILocation(line: 710, column: 7, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !248, line: 710, column: 7)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !248, line: 710, column: 7)
!2883 = distinct !DILexicalBlock(scope: !2879, file: !248, line: 710, column: 7)
!2884 = !DILocation(line: 710, column: 7, scope: !2882)
!2885 = !DILocation(line: 710, column: 7, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !248, line: 710, column: 7)
!2887 = distinct !DILexicalBlock(scope: !2883, file: !248, line: 710, column: 7)
!2888 = !DILocation(line: 710, column: 7, scope: !2887)
!2889 = !DILocation(line: 710, column: 7, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !248, line: 710, column: 7)
!2891 = distinct !DILexicalBlock(scope: !2883, file: !248, line: 710, column: 7)
!2892 = !DILocation(line: 710, column: 7, scope: !2891)
!2893 = !DILocation(line: 710, column: 7, scope: !2883)
!2894 = !DILocation(line: 710, column: 7, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !248, line: 710, column: 7)
!2896 = distinct !DILexicalBlock(scope: !2877, file: !248, line: 710, column: 7)
!2897 = !DILocation(line: 710, column: 7, scope: !2896)
!2898 = !DILocation(line: 712, column: 5, scope: !2439)
!2899 = !DILocation(line: 713, column: 7, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !248, line: 713, column: 7)
!2901 = distinct !DILexicalBlock(scope: !2439, file: !248, line: 713, column: 7)
!2902 = !DILocation(line: 417, column: 21, scope: !2439)
!2903 = !DILocation(line: 713, column: 7, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !248, line: 713, column: 7)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !248, line: 713, column: 7)
!2906 = distinct !DILexicalBlock(scope: !2900, file: !248, line: 713, column: 7)
!2907 = !DILocation(line: 713, column: 7, scope: !2905)
!2908 = !DILocation(line: 713, column: 7, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2910, file: !248, line: 713, column: 7)
!2910 = distinct !DILexicalBlock(scope: !2906, file: !248, line: 713, column: 7)
!2911 = !DILocation(line: 713, column: 7, scope: !2910)
!2912 = !DILocation(line: 713, column: 7, scope: !2906)
!2913 = !DILocation(line: 714, column: 7, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !248, line: 714, column: 7)
!2915 = distinct !DILexicalBlock(scope: !2439, file: !248, line: 714, column: 7)
!2916 = !DILocation(line: 714, column: 7, scope: !2915)
!2917 = !DILocation(line: 716, column: 11, scope: !2439)
!2918 = !DILocation(line: 718, column: 5, scope: !2440)
!2919 = !DILocation(line: 395, column: 82, scope: !2440)
!2920 = !DILocation(line: 395, column: 3, scope: !2440)
!2921 = distinct !{!2921, !2569, !2922, !552}
!2922 = !DILocation(line: 718, column: 5, scope: !2437)
!2923 = !DILocation(line: 720, column: 11, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2406, file: !248, line: 720, column: 7)
!2925 = !DILocation(line: 720, column: 16, scope: !2924)
!2926 = !DILocation(line: 728, column: 51, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2406, file: !248, line: 728, column: 7)
!2928 = !DILocation(line: 731, column: 11, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2927, file: !248, line: 730, column: 5)
!2930 = !DILocation(line: 732, column: 16, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2929, file: !248, line: 731, column: 11)
!2932 = !DILocation(line: 732, column: 9, scope: !2931)
!2933 = !DILocation(line: 736, column: 18, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2931, file: !248, line: 736, column: 16)
!2935 = !DILocation(line: 736, column: 29, scope: !2934)
!2936 = !DILocation(line: 745, column: 7, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2406, file: !248, line: 745, column: 7)
!2938 = !DILocation(line: 745, column: 20, scope: !2937)
!2939 = !DILocation(line: 746, column: 12, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !248, line: 746, column: 5)
!2941 = distinct !DILexicalBlock(scope: !2937, file: !248, line: 746, column: 5)
!2942 = !DILocation(line: 746, column: 5, scope: !2941)
!2943 = !DILocation(line: 747, column: 7, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !248, line: 747, column: 7)
!2945 = distinct !DILexicalBlock(scope: !2940, file: !248, line: 747, column: 7)
!2946 = !DILocation(line: 747, column: 7, scope: !2945)
!2947 = !DILocation(line: 746, column: 39, scope: !2940)
!2948 = distinct !{!2948, !2942, !2949, !552}
!2949 = !DILocation(line: 747, column: 7, scope: !2941)
!2950 = !DILocation(line: 749, column: 11, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2406, file: !248, line: 749, column: 7)
!2952 = !DILocation(line: 749, column: 7, scope: !2406)
!2953 = !DILocation(line: 750, column: 5, scope: !2951)
!2954 = !DILocation(line: 750, column: 17, scope: !2951)
!2955 = !DILocation(line: 756, column: 21, scope: !2782)
!2956 = !DILocation(line: 760, column: 42, scope: !2406)
!2957 = !DILocation(line: 758, column: 10, scope: !2406)
!2958 = !DILocation(line: 758, column: 3, scope: !2406)
!2959 = !DILocation(line: 762, column: 1, scope: !2406)
!2960 = !DISubprogram(name: "iswprint", scope: !2961, file: !2961, line: 120, type: !2770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!2961 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2962 = distinct !DISubprogram(name: "quotearg_alloc", scope: !248, file: !248, line: 788, type: !2963, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!43, !51, !48, !2298}
!2965 = !{!2966, !2967, !2968}
!2966 = !DILocalVariable(name: "arg", arg: 1, scope: !2962, file: !248, line: 788, type: !51)
!2967 = !DILocalVariable(name: "argsize", arg: 2, scope: !2962, file: !248, line: 788, type: !48)
!2968 = !DILocalVariable(name: "o", arg: 3, scope: !2962, file: !248, line: 789, type: !2298)
!2969 = !DILocation(line: 0, scope: !2962)
!2970 = !DILocalVariable(name: "arg", arg: 1, scope: !2971, file: !248, line: 801, type: !51)
!2971 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !248, file: !248, line: 801, type: !2972, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!43, !51, !48, !388, !2298}
!2974 = !{!2970, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982}
!2975 = !DILocalVariable(name: "argsize", arg: 2, scope: !2971, file: !248, line: 801, type: !48)
!2976 = !DILocalVariable(name: "size", arg: 3, scope: !2971, file: !248, line: 801, type: !388)
!2977 = !DILocalVariable(name: "o", arg: 4, scope: !2971, file: !248, line: 802, type: !2298)
!2978 = !DILocalVariable(name: "p", scope: !2971, file: !248, line: 804, type: !2298)
!2979 = !DILocalVariable(name: "saved_errno", scope: !2971, file: !248, line: 805, type: !46)
!2980 = !DILocalVariable(name: "flags", scope: !2971, file: !248, line: 807, type: !46)
!2981 = !DILocalVariable(name: "bufsize", scope: !2971, file: !248, line: 808, type: !48)
!2982 = !DILocalVariable(name: "buf", scope: !2971, file: !248, line: 812, type: !43)
!2983 = !DILocation(line: 0, scope: !2971, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 791, column: 10, scope: !2962)
!2985 = !DILocation(line: 804, column: 37, scope: !2971, inlinedAt: !2984)
!2986 = !DILocation(line: 805, column: 21, scope: !2971, inlinedAt: !2984)
!2987 = !DILocation(line: 807, column: 18, scope: !2971, inlinedAt: !2984)
!2988 = !DILocation(line: 807, column: 24, scope: !2971, inlinedAt: !2984)
!2989 = !DILocation(line: 808, column: 72, scope: !2971, inlinedAt: !2984)
!2990 = !DILocation(line: 809, column: 53, scope: !2971, inlinedAt: !2984)
!2991 = !DILocation(line: 810, column: 49, scope: !2971, inlinedAt: !2984)
!2992 = !DILocation(line: 811, column: 49, scope: !2971, inlinedAt: !2984)
!2993 = !DILocation(line: 808, column: 20, scope: !2971, inlinedAt: !2984)
!2994 = !DILocation(line: 811, column: 62, scope: !2971, inlinedAt: !2984)
!2995 = !DILocation(line: 812, column: 15, scope: !2971, inlinedAt: !2984)
!2996 = !DILocation(line: 813, column: 60, scope: !2971, inlinedAt: !2984)
!2997 = !DILocation(line: 815, column: 32, scope: !2971, inlinedAt: !2984)
!2998 = !DILocation(line: 815, column: 47, scope: !2971, inlinedAt: !2984)
!2999 = !DILocation(line: 813, column: 3, scope: !2971, inlinedAt: !2984)
!3000 = !DILocation(line: 816, column: 9, scope: !2971, inlinedAt: !2984)
!3001 = !DILocation(line: 791, column: 3, scope: !2962)
!3002 = !DILocation(line: 0, scope: !2971)
!3003 = !DILocation(line: 804, column: 37, scope: !2971)
!3004 = !DILocation(line: 805, column: 21, scope: !2971)
!3005 = !DILocation(line: 807, column: 18, scope: !2971)
!3006 = !DILocation(line: 807, column: 27, scope: !2971)
!3007 = !DILocation(line: 807, column: 24, scope: !2971)
!3008 = !DILocation(line: 808, column: 72, scope: !2971)
!3009 = !DILocation(line: 809, column: 53, scope: !2971)
!3010 = !DILocation(line: 810, column: 49, scope: !2971)
!3011 = !DILocation(line: 811, column: 49, scope: !2971)
!3012 = !DILocation(line: 808, column: 20, scope: !2971)
!3013 = !DILocation(line: 811, column: 62, scope: !2971)
!3014 = !DILocation(line: 812, column: 15, scope: !2971)
!3015 = !DILocation(line: 813, column: 60, scope: !2971)
!3016 = !DILocation(line: 815, column: 32, scope: !2971)
!3017 = !DILocation(line: 815, column: 47, scope: !2971)
!3018 = !DILocation(line: 813, column: 3, scope: !2971)
!3019 = !DILocation(line: 816, column: 9, scope: !2971)
!3020 = !DILocation(line: 817, column: 7, scope: !2971)
!3021 = !DILocation(line: 818, column: 11, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2971, file: !248, line: 817, column: 7)
!3023 = !{!1112, !1112, i64 0}
!3024 = !DILocation(line: 818, column: 5, scope: !3022)
!3025 = !DILocation(line: 819, column: 3, scope: !2971)
!3026 = distinct !DISubprogram(name: "quotearg_free", scope: !248, file: !248, line: 837, type: !201, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3027)
!3027 = !{!3028, !3029}
!3028 = !DILocalVariable(name: "sv", scope: !3026, file: !248, line: 839, type: !321)
!3029 = !DILocalVariable(name: "i", scope: !3030, file: !248, line: 840, type: !46)
!3030 = distinct !DILexicalBlock(scope: !3026, file: !248, line: 840, column: 3)
!3031 = !DILocation(line: 839, column: 24, scope: !3026)
!3032 = !DILocation(line: 0, scope: !3026)
!3033 = !DILocation(line: 0, scope: !3030)
!3034 = !DILocation(line: 840, column: 21, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3030, file: !248, line: 840, column: 3)
!3036 = !DILocation(line: 840, column: 3, scope: !3030)
!3037 = !DILocation(line: 842, column: 13, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3026, file: !248, line: 842, column: 7)
!3039 = !{!3040, !458, i64 8}
!3040 = !{!"slotvec", !1112, i64 0, !458, i64 8}
!3041 = !DILocation(line: 842, column: 17, scope: !3038)
!3042 = !DILocation(line: 842, column: 7, scope: !3026)
!3043 = !DILocation(line: 841, column: 17, scope: !3035)
!3044 = !DILocation(line: 841, column: 5, scope: !3035)
!3045 = !DILocation(line: 840, column: 32, scope: !3035)
!3046 = distinct !{!3046, !3036, !3047, !552}
!3047 = !DILocation(line: 841, column: 20, scope: !3030)
!3048 = !DILocation(line: 844, column: 7, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3038, file: !248, line: 843, column: 5)
!3050 = !DILocation(line: 845, column: 21, scope: !3049)
!3051 = !{!3040, !1112, i64 0}
!3052 = !DILocation(line: 846, column: 20, scope: !3049)
!3053 = !DILocation(line: 847, column: 5, scope: !3049)
!3054 = !DILocation(line: 848, column: 10, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3026, file: !248, line: 848, column: 7)
!3056 = !DILocation(line: 848, column: 7, scope: !3026)
!3057 = !DILocation(line: 850, column: 13, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3055, file: !248, line: 849, column: 5)
!3059 = !DILocation(line: 850, column: 7, scope: !3058)
!3060 = !DILocation(line: 851, column: 15, scope: !3058)
!3061 = !DILocation(line: 852, column: 5, scope: !3058)
!3062 = !DILocation(line: 853, column: 10, scope: !3026)
!3063 = !DILocation(line: 854, column: 1, scope: !3026)
!3064 = distinct !DISubprogram(name: "quotearg_n", scope: !248, file: !248, line: 919, type: !676, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3065)
!3065 = !{!3066, !3067}
!3066 = !DILocalVariable(name: "n", arg: 1, scope: !3064, file: !248, line: 919, type: !46)
!3067 = !DILocalVariable(name: "arg", arg: 2, scope: !3064, file: !248, line: 919, type: !51)
!3068 = !DILocation(line: 0, scope: !3064)
!3069 = !DILocation(line: 921, column: 10, scope: !3064)
!3070 = !DILocation(line: 921, column: 3, scope: !3064)
!3071 = distinct !DISubprogram(name: "quotearg_n_options", scope: !248, file: !248, line: 866, type: !3072, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!43, !46, !51, !48, !2298}
!3074 = !{!3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3085, !3086, !3088, !3089, !3090}
!3075 = !DILocalVariable(name: "n", arg: 1, scope: !3071, file: !248, line: 866, type: !46)
!3076 = !DILocalVariable(name: "arg", arg: 2, scope: !3071, file: !248, line: 866, type: !51)
!3077 = !DILocalVariable(name: "argsize", arg: 3, scope: !3071, file: !248, line: 866, type: !48)
!3078 = !DILocalVariable(name: "options", arg: 4, scope: !3071, file: !248, line: 867, type: !2298)
!3079 = !DILocalVariable(name: "saved_errno", scope: !3071, file: !248, line: 869, type: !46)
!3080 = !DILocalVariable(name: "sv", scope: !3071, file: !248, line: 871, type: !321)
!3081 = !DILocalVariable(name: "nslots_max", scope: !3071, file: !248, line: 873, type: !46)
!3082 = !DILocalVariable(name: "preallocated", scope: !3083, file: !248, line: 879, type: !77)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !248, line: 878, column: 5)
!3084 = distinct !DILexicalBlock(scope: !3071, file: !248, line: 877, column: 7)
!3085 = !DILocalVariable(name: "new_nslots", scope: !3083, file: !248, line: 880, type: !401)
!3086 = !DILocalVariable(name: "size", scope: !3087, file: !248, line: 891, type: !48)
!3087 = distinct !DILexicalBlock(scope: !3071, file: !248, line: 890, column: 3)
!3088 = !DILocalVariable(name: "val", scope: !3087, file: !248, line: 892, type: !43)
!3089 = !DILocalVariable(name: "flags", scope: !3087, file: !248, line: 894, type: !46)
!3090 = !DILocalVariable(name: "qsize", scope: !3087, file: !248, line: 895, type: !48)
!3091 = !DILocation(line: 0, scope: !3071)
!3092 = !DILocation(line: 869, column: 21, scope: !3071)
!3093 = !DILocation(line: 871, column: 24, scope: !3071)
!3094 = !DILocation(line: 874, column: 17, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3071, file: !248, line: 874, column: 7)
!3096 = !DILocation(line: 875, column: 5, scope: !3095)
!3097 = !DILocation(line: 877, column: 7, scope: !3084)
!3098 = !DILocation(line: 877, column: 14, scope: !3084)
!3099 = !DILocation(line: 877, column: 7, scope: !3071)
!3100 = !DILocation(line: 879, column: 31, scope: !3083)
!3101 = !DILocation(line: 0, scope: !3083)
!3102 = !DILocation(line: 880, column: 7, scope: !3083)
!3103 = !DILocation(line: 880, column: 26, scope: !3083)
!3104 = !DILocation(line: 880, column: 13, scope: !3083)
!3105 = !DILocation(line: 882, column: 31, scope: !3083)
!3106 = !DILocation(line: 883, column: 33, scope: !3083)
!3107 = !DILocation(line: 883, column: 42, scope: !3083)
!3108 = !DILocation(line: 883, column: 31, scope: !3083)
!3109 = !DILocation(line: 882, column: 22, scope: !3083)
!3110 = !DILocation(line: 882, column: 15, scope: !3083)
!3111 = !DILocation(line: 884, column: 11, scope: !3083)
!3112 = !DILocation(line: 885, column: 15, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3083, file: !248, line: 884, column: 11)
!3114 = !{i64 0, i64 8, !3023, i64 8, i64 8, !457}
!3115 = !DILocation(line: 885, column: 9, scope: !3113)
!3116 = !DILocation(line: 886, column: 20, scope: !3083)
!3117 = !DILocation(line: 886, column: 18, scope: !3083)
!3118 = !DILocation(line: 886, column: 15, scope: !3083)
!3119 = !DILocation(line: 886, column: 32, scope: !3083)
!3120 = !DILocation(line: 886, column: 43, scope: !3083)
!3121 = !DILocation(line: 886, column: 53, scope: !3083)
!3122 = !DILocation(line: 0, scope: !2509, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 886, column: 7, scope: !3083)
!3124 = !DILocation(line: 59, column: 10, scope: !2509, inlinedAt: !3123)
!3125 = !DILocation(line: 887, column: 16, scope: !3083)
!3126 = !DILocation(line: 887, column: 14, scope: !3083)
!3127 = !DILocation(line: 888, column: 5, scope: !3084)
!3128 = !DILocation(line: 888, column: 5, scope: !3083)
!3129 = !DILocation(line: 891, column: 19, scope: !3087)
!3130 = !DILocation(line: 891, column: 25, scope: !3087)
!3131 = !DILocation(line: 0, scope: !3087)
!3132 = !DILocation(line: 892, column: 23, scope: !3087)
!3133 = !DILocation(line: 894, column: 26, scope: !3087)
!3134 = !DILocation(line: 894, column: 32, scope: !3087)
!3135 = !DILocation(line: 896, column: 55, scope: !3087)
!3136 = !DILocation(line: 897, column: 46, scope: !3087)
!3137 = !DILocation(line: 898, column: 55, scope: !3087)
!3138 = !DILocation(line: 899, column: 55, scope: !3087)
!3139 = !DILocation(line: 895, column: 20, scope: !3087)
!3140 = !DILocation(line: 901, column: 14, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3087, file: !248, line: 901, column: 9)
!3142 = !DILocation(line: 901, column: 9, scope: !3087)
!3143 = !DILocation(line: 903, column: 35, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3141, file: !248, line: 902, column: 7)
!3145 = !DILocation(line: 903, column: 20, scope: !3144)
!3146 = !DILocation(line: 904, column: 17, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3144, file: !248, line: 904, column: 13)
!3148 = !DILocation(line: 904, column: 13, scope: !3144)
!3149 = !DILocation(line: 905, column: 11, scope: !3147)
!3150 = !DILocation(line: 906, column: 27, scope: !3144)
!3151 = !DILocation(line: 906, column: 19, scope: !3144)
!3152 = !DILocation(line: 907, column: 69, scope: !3144)
!3153 = !DILocation(line: 909, column: 44, scope: !3144)
!3154 = !DILocation(line: 910, column: 44, scope: !3144)
!3155 = !DILocation(line: 907, column: 9, scope: !3144)
!3156 = !DILocation(line: 911, column: 7, scope: !3144)
!3157 = !DILocation(line: 913, column: 11, scope: !3087)
!3158 = !DILocation(line: 914, column: 5, scope: !3087)
!3159 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !248, file: !248, line: 925, type: !3160, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3162)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!43, !46, !51, !48}
!3162 = !{!3163, !3164, !3165}
!3163 = !DILocalVariable(name: "n", arg: 1, scope: !3159, file: !248, line: 925, type: !46)
!3164 = !DILocalVariable(name: "arg", arg: 2, scope: !3159, file: !248, line: 925, type: !51)
!3165 = !DILocalVariable(name: "argsize", arg: 3, scope: !3159, file: !248, line: 925, type: !48)
!3166 = !DILocation(line: 0, scope: !3159)
!3167 = !DILocation(line: 927, column: 10, scope: !3159)
!3168 = !DILocation(line: 927, column: 3, scope: !3159)
!3169 = distinct !DISubprogram(name: "quotearg", scope: !248, file: !248, line: 931, type: !680, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3170)
!3170 = !{!3171}
!3171 = !DILocalVariable(name: "arg", arg: 1, scope: !3169, file: !248, line: 931, type: !51)
!3172 = !DILocation(line: 0, scope: !3169)
!3173 = !DILocation(line: 0, scope: !3064, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 933, column: 10, scope: !3169)
!3175 = !DILocation(line: 921, column: 10, scope: !3064, inlinedAt: !3174)
!3176 = !DILocation(line: 933, column: 3, scope: !3169)
!3177 = distinct !DISubprogram(name: "quotearg_mem", scope: !248, file: !248, line: 937, type: !3178, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!43, !51, !48}
!3180 = !{!3181, !3182}
!3181 = !DILocalVariable(name: "arg", arg: 1, scope: !3177, file: !248, line: 937, type: !51)
!3182 = !DILocalVariable(name: "argsize", arg: 2, scope: !3177, file: !248, line: 937, type: !48)
!3183 = !DILocation(line: 0, scope: !3177)
!3184 = !DILocation(line: 0, scope: !3159, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 939, column: 10, scope: !3177)
!3186 = !DILocation(line: 927, column: 10, scope: !3159, inlinedAt: !3185)
!3187 = !DILocation(line: 939, column: 3, scope: !3177)
!3188 = distinct !DISubprogram(name: "quotearg_n_style", scope: !248, file: !248, line: 943, type: !3189, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3191)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!43, !46, !250, !51}
!3191 = !{!3192, !3193, !3194, !3195}
!3192 = !DILocalVariable(name: "n", arg: 1, scope: !3188, file: !248, line: 943, type: !46)
!3193 = !DILocalVariable(name: "s", arg: 2, scope: !3188, file: !248, line: 943, type: !250)
!3194 = !DILocalVariable(name: "arg", arg: 3, scope: !3188, file: !248, line: 943, type: !51)
!3195 = !DILocalVariable(name: "o", scope: !3188, file: !248, line: 945, type: !2299)
!3196 = !DILocation(line: 0, scope: !3188)
!3197 = !DILocation(line: 945, column: 3, scope: !3188)
!3198 = !DILocation(line: 945, column: 32, scope: !3188)
!3199 = !{!3200}
!3200 = distinct !{!3200, !3201, !"quoting_options_from_style: argument 0"}
!3201 = distinct !{!3201, !"quoting_options_from_style"}
!3202 = !DILocation(line: 945, column: 36, scope: !3188)
!3203 = !DILocalVariable(name: "style", arg: 1, scope: !3204, file: !248, line: 183, type: !250)
!3204 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !248, file: !248, line: 183, type: !3205, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!279, !250}
!3207 = !{!3203, !3208}
!3208 = !DILocalVariable(name: "o", scope: !3204, file: !248, line: 185, type: !279)
!3209 = !DILocation(line: 0, scope: !3204, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 945, column: 36, scope: !3188)
!3211 = !DILocation(line: 185, column: 26, scope: !3204, inlinedAt: !3210)
!3212 = !DILocation(line: 186, column: 13, scope: !3213, inlinedAt: !3210)
!3213 = distinct !DILexicalBlock(scope: !3204, file: !248, line: 186, column: 7)
!3214 = !DILocation(line: 186, column: 7, scope: !3204, inlinedAt: !3210)
!3215 = !DILocation(line: 187, column: 5, scope: !3213, inlinedAt: !3210)
!3216 = !DILocation(line: 188, column: 5, scope: !3204, inlinedAt: !3210)
!3217 = !DILocation(line: 188, column: 11, scope: !3204, inlinedAt: !3210)
!3218 = !DILocation(line: 946, column: 10, scope: !3188)
!3219 = !DILocation(line: 947, column: 1, scope: !3188)
!3220 = !DILocation(line: 946, column: 3, scope: !3188)
!3221 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !248, file: !248, line: 950, type: !3222, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3224)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!43, !46, !250, !51, !48}
!3224 = !{!3225, !3226, !3227, !3228, !3229}
!3225 = !DILocalVariable(name: "n", arg: 1, scope: !3221, file: !248, line: 950, type: !46)
!3226 = !DILocalVariable(name: "s", arg: 2, scope: !3221, file: !248, line: 950, type: !250)
!3227 = !DILocalVariable(name: "arg", arg: 3, scope: !3221, file: !248, line: 951, type: !51)
!3228 = !DILocalVariable(name: "argsize", arg: 4, scope: !3221, file: !248, line: 951, type: !48)
!3229 = !DILocalVariable(name: "o", scope: !3221, file: !248, line: 953, type: !2299)
!3230 = !DILocation(line: 0, scope: !3221)
!3231 = !DILocation(line: 953, column: 3, scope: !3221)
!3232 = !DILocation(line: 953, column: 32, scope: !3221)
!3233 = !{!3234}
!3234 = distinct !{!3234, !3235, !"quoting_options_from_style: argument 0"}
!3235 = distinct !{!3235, !"quoting_options_from_style"}
!3236 = !DILocation(line: 953, column: 36, scope: !3221)
!3237 = !DILocation(line: 0, scope: !3204, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 953, column: 36, scope: !3221)
!3239 = !DILocation(line: 185, column: 26, scope: !3204, inlinedAt: !3238)
!3240 = !DILocation(line: 186, column: 13, scope: !3213, inlinedAt: !3238)
!3241 = !DILocation(line: 186, column: 7, scope: !3204, inlinedAt: !3238)
!3242 = !DILocation(line: 187, column: 5, scope: !3213, inlinedAt: !3238)
!3243 = !DILocation(line: 188, column: 5, scope: !3204, inlinedAt: !3238)
!3244 = !DILocation(line: 188, column: 11, scope: !3204, inlinedAt: !3238)
!3245 = !DILocation(line: 954, column: 10, scope: !3221)
!3246 = !DILocation(line: 955, column: 1, scope: !3221)
!3247 = !DILocation(line: 954, column: 3, scope: !3221)
!3248 = distinct !DISubprogram(name: "quotearg_style", scope: !248, file: !248, line: 958, type: !3249, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3251)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!43, !250, !51}
!3251 = !{!3252, !3253}
!3252 = !DILocalVariable(name: "s", arg: 1, scope: !3248, file: !248, line: 958, type: !250)
!3253 = !DILocalVariable(name: "arg", arg: 2, scope: !3248, file: !248, line: 958, type: !51)
!3254 = !DILocation(line: 0, scope: !3248)
!3255 = !DILocation(line: 0, scope: !3188, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 960, column: 10, scope: !3248)
!3257 = !DILocation(line: 945, column: 3, scope: !3188, inlinedAt: !3256)
!3258 = !DILocation(line: 945, column: 32, scope: !3188, inlinedAt: !3256)
!3259 = !{!3260}
!3260 = distinct !{!3260, !3261, !"quoting_options_from_style: argument 0"}
!3261 = distinct !{!3261, !"quoting_options_from_style"}
!3262 = !DILocation(line: 945, column: 36, scope: !3188, inlinedAt: !3256)
!3263 = !DILocation(line: 0, scope: !3204, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 945, column: 36, scope: !3188, inlinedAt: !3256)
!3265 = !DILocation(line: 185, column: 26, scope: !3204, inlinedAt: !3264)
!3266 = !DILocation(line: 186, column: 13, scope: !3213, inlinedAt: !3264)
!3267 = !DILocation(line: 186, column: 7, scope: !3204, inlinedAt: !3264)
!3268 = !DILocation(line: 187, column: 5, scope: !3213, inlinedAt: !3264)
!3269 = !DILocation(line: 188, column: 5, scope: !3204, inlinedAt: !3264)
!3270 = !DILocation(line: 188, column: 11, scope: !3204, inlinedAt: !3264)
!3271 = !DILocation(line: 946, column: 10, scope: !3188, inlinedAt: !3256)
!3272 = !DILocation(line: 947, column: 1, scope: !3188, inlinedAt: !3256)
!3273 = !DILocation(line: 960, column: 3, scope: !3248)
!3274 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !248, file: !248, line: 964, type: !3275, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3277)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!43, !250, !51, !48}
!3277 = !{!3278, !3279, !3280}
!3278 = !DILocalVariable(name: "s", arg: 1, scope: !3274, file: !248, line: 964, type: !250)
!3279 = !DILocalVariable(name: "arg", arg: 2, scope: !3274, file: !248, line: 964, type: !51)
!3280 = !DILocalVariable(name: "argsize", arg: 3, scope: !3274, file: !248, line: 964, type: !48)
!3281 = !DILocation(line: 0, scope: !3274)
!3282 = !DILocation(line: 0, scope: !3221, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 966, column: 10, scope: !3274)
!3284 = !DILocation(line: 953, column: 3, scope: !3221, inlinedAt: !3283)
!3285 = !DILocation(line: 953, column: 32, scope: !3221, inlinedAt: !3283)
!3286 = !{!3287}
!3287 = distinct !{!3287, !3288, !"quoting_options_from_style: argument 0"}
!3288 = distinct !{!3288, !"quoting_options_from_style"}
!3289 = !DILocation(line: 953, column: 36, scope: !3221, inlinedAt: !3283)
!3290 = !DILocation(line: 0, scope: !3204, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 953, column: 36, scope: !3221, inlinedAt: !3283)
!3292 = !DILocation(line: 185, column: 26, scope: !3204, inlinedAt: !3291)
!3293 = !DILocation(line: 186, column: 13, scope: !3213, inlinedAt: !3291)
!3294 = !DILocation(line: 186, column: 7, scope: !3204, inlinedAt: !3291)
!3295 = !DILocation(line: 187, column: 5, scope: !3213, inlinedAt: !3291)
!3296 = !DILocation(line: 188, column: 5, scope: !3204, inlinedAt: !3291)
!3297 = !DILocation(line: 188, column: 11, scope: !3204, inlinedAt: !3291)
!3298 = !DILocation(line: 954, column: 10, scope: !3221, inlinedAt: !3283)
!3299 = !DILocation(line: 955, column: 1, scope: !3221, inlinedAt: !3283)
!3300 = !DILocation(line: 966, column: 3, scope: !3274)
!3301 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !248, file: !248, line: 970, type: !3302, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3304)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!43, !51, !48, !44}
!3304 = !{!3305, !3306, !3307, !3308}
!3305 = !DILocalVariable(name: "arg", arg: 1, scope: !3301, file: !248, line: 970, type: !51)
!3306 = !DILocalVariable(name: "argsize", arg: 2, scope: !3301, file: !248, line: 970, type: !48)
!3307 = !DILocalVariable(name: "ch", arg: 3, scope: !3301, file: !248, line: 970, type: !44)
!3308 = !DILocalVariable(name: "options", scope: !3301, file: !248, line: 972, type: !279)
!3309 = !DILocation(line: 0, scope: !3301)
!3310 = !DILocation(line: 972, column: 3, scope: !3301)
!3311 = !DILocation(line: 972, column: 26, scope: !3301)
!3312 = !DILocation(line: 973, column: 13, scope: !3301)
!3313 = !{i64 0, i64 4, !595, i64 4, i64 4, !586, i64 8, i64 32, !595, i64 40, i64 8, !457, i64 48, i64 8, !457}
!3314 = !DILocation(line: 0, scope: !2319, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 974, column: 3, scope: !3301)
!3316 = !DILocation(line: 147, column: 62, scope: !2319, inlinedAt: !3315)
!3317 = !DILocation(line: 147, column: 57, scope: !2319, inlinedAt: !3315)
!3318 = !DILocation(line: 148, column: 15, scope: !2319, inlinedAt: !3315)
!3319 = !DILocation(line: 149, column: 21, scope: !2319, inlinedAt: !3315)
!3320 = !DILocation(line: 149, column: 24, scope: !2319, inlinedAt: !3315)
!3321 = !DILocation(line: 149, column: 34, scope: !2319, inlinedAt: !3315)
!3322 = !DILocation(line: 150, column: 19, scope: !2319, inlinedAt: !3315)
!3323 = !DILocation(line: 150, column: 24, scope: !2319, inlinedAt: !3315)
!3324 = !DILocation(line: 150, column: 6, scope: !2319, inlinedAt: !3315)
!3325 = !DILocation(line: 975, column: 10, scope: !3301)
!3326 = !DILocation(line: 976, column: 1, scope: !3301)
!3327 = !DILocation(line: 975, column: 3, scope: !3301)
!3328 = distinct !DISubprogram(name: "quotearg_char", scope: !248, file: !248, line: 979, type: !3329, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3331)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!43, !51, !44}
!3331 = !{!3332, !3333}
!3332 = !DILocalVariable(name: "arg", arg: 1, scope: !3328, file: !248, line: 979, type: !51)
!3333 = !DILocalVariable(name: "ch", arg: 2, scope: !3328, file: !248, line: 979, type: !44)
!3334 = !DILocation(line: 0, scope: !3328)
!3335 = !DILocation(line: 0, scope: !3301, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 981, column: 10, scope: !3328)
!3337 = !DILocation(line: 972, column: 3, scope: !3301, inlinedAt: !3336)
!3338 = !DILocation(line: 972, column: 26, scope: !3301, inlinedAt: !3336)
!3339 = !DILocation(line: 973, column: 13, scope: !3301, inlinedAt: !3336)
!3340 = !DILocation(line: 0, scope: !2319, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 974, column: 3, scope: !3301, inlinedAt: !3336)
!3342 = !DILocation(line: 147, column: 62, scope: !2319, inlinedAt: !3341)
!3343 = !DILocation(line: 147, column: 57, scope: !2319, inlinedAt: !3341)
!3344 = !DILocation(line: 148, column: 15, scope: !2319, inlinedAt: !3341)
!3345 = !DILocation(line: 149, column: 21, scope: !2319, inlinedAt: !3341)
!3346 = !DILocation(line: 149, column: 24, scope: !2319, inlinedAt: !3341)
!3347 = !DILocation(line: 149, column: 34, scope: !2319, inlinedAt: !3341)
!3348 = !DILocation(line: 150, column: 19, scope: !2319, inlinedAt: !3341)
!3349 = !DILocation(line: 150, column: 24, scope: !2319, inlinedAt: !3341)
!3350 = !DILocation(line: 150, column: 6, scope: !2319, inlinedAt: !3341)
!3351 = !DILocation(line: 975, column: 10, scope: !3301, inlinedAt: !3336)
!3352 = !DILocation(line: 976, column: 1, scope: !3301, inlinedAt: !3336)
!3353 = !DILocation(line: 981, column: 3, scope: !3328)
!3354 = distinct !DISubprogram(name: "quotearg_colon", scope: !248, file: !248, line: 985, type: !680, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3355)
!3355 = !{!3356}
!3356 = !DILocalVariable(name: "arg", arg: 1, scope: !3354, file: !248, line: 985, type: !51)
!3357 = !DILocation(line: 0, scope: !3354)
!3358 = !DILocation(line: 0, scope: !3328, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 987, column: 10, scope: !3354)
!3360 = !DILocation(line: 0, scope: !3301, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 981, column: 10, scope: !3328, inlinedAt: !3359)
!3362 = !DILocation(line: 972, column: 3, scope: !3301, inlinedAt: !3361)
!3363 = !DILocation(line: 972, column: 26, scope: !3301, inlinedAt: !3361)
!3364 = !DILocation(line: 973, column: 13, scope: !3301, inlinedAt: !3361)
!3365 = !DILocation(line: 0, scope: !2319, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 974, column: 3, scope: !3301, inlinedAt: !3361)
!3367 = !DILocation(line: 147, column: 57, scope: !2319, inlinedAt: !3366)
!3368 = !DILocation(line: 149, column: 21, scope: !2319, inlinedAt: !3366)
!3369 = !DILocation(line: 150, column: 6, scope: !2319, inlinedAt: !3366)
!3370 = !DILocation(line: 975, column: 10, scope: !3301, inlinedAt: !3361)
!3371 = !DILocation(line: 976, column: 1, scope: !3301, inlinedAt: !3361)
!3372 = !DILocation(line: 987, column: 3, scope: !3354)
!3373 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !248, file: !248, line: 991, type: !3178, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3374)
!3374 = !{!3375, !3376}
!3375 = !DILocalVariable(name: "arg", arg: 1, scope: !3373, file: !248, line: 991, type: !51)
!3376 = !DILocalVariable(name: "argsize", arg: 2, scope: !3373, file: !248, line: 991, type: !48)
!3377 = !DILocation(line: 0, scope: !3373)
!3378 = !DILocation(line: 0, scope: !3301, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 993, column: 10, scope: !3373)
!3380 = !DILocation(line: 972, column: 3, scope: !3301, inlinedAt: !3379)
!3381 = !DILocation(line: 972, column: 26, scope: !3301, inlinedAt: !3379)
!3382 = !DILocation(line: 973, column: 13, scope: !3301, inlinedAt: !3379)
!3383 = !DILocation(line: 0, scope: !2319, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 974, column: 3, scope: !3301, inlinedAt: !3379)
!3385 = !DILocation(line: 147, column: 57, scope: !2319, inlinedAt: !3384)
!3386 = !DILocation(line: 149, column: 21, scope: !2319, inlinedAt: !3384)
!3387 = !DILocation(line: 150, column: 6, scope: !2319, inlinedAt: !3384)
!3388 = !DILocation(line: 975, column: 10, scope: !3301, inlinedAt: !3379)
!3389 = !DILocation(line: 976, column: 1, scope: !3301, inlinedAt: !3379)
!3390 = !DILocation(line: 993, column: 3, scope: !3373)
!3391 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !248, file: !248, line: 997, type: !3189, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3392)
!3392 = !{!3393, !3394, !3395, !3396}
!3393 = !DILocalVariable(name: "n", arg: 1, scope: !3391, file: !248, line: 997, type: !46)
!3394 = !DILocalVariable(name: "s", arg: 2, scope: !3391, file: !248, line: 997, type: !250)
!3395 = !DILocalVariable(name: "arg", arg: 3, scope: !3391, file: !248, line: 997, type: !51)
!3396 = !DILocalVariable(name: "options", scope: !3391, file: !248, line: 999, type: !279)
!3397 = !DILocation(line: 0, scope: !3391)
!3398 = !DILocation(line: 999, column: 3, scope: !3391)
!3399 = !DILocation(line: 999, column: 26, scope: !3391)
!3400 = !DILocation(line: 0, scope: !3204, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 1000, column: 13, scope: !3391)
!3402 = !DILocation(line: 186, column: 13, scope: !3213, inlinedAt: !3401)
!3403 = !DILocation(line: 186, column: 7, scope: !3204, inlinedAt: !3401)
!3404 = !DILocation(line: 187, column: 5, scope: !3213, inlinedAt: !3401)
!3405 = !{!3406}
!3406 = distinct !{!3406, !3407, !"quoting_options_from_style: argument 0"}
!3407 = distinct !{!3407, !"quoting_options_from_style"}
!3408 = !DILocation(line: 1000, column: 13, scope: !3391)
!3409 = !DILocation(line: 0, scope: !2319, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 1001, column: 3, scope: !3391)
!3411 = !DILocation(line: 147, column: 57, scope: !2319, inlinedAt: !3410)
!3412 = !DILocation(line: 149, column: 21, scope: !2319, inlinedAt: !3410)
!3413 = !DILocation(line: 150, column: 6, scope: !2319, inlinedAt: !3410)
!3414 = !DILocation(line: 1002, column: 10, scope: !3391)
!3415 = !DILocation(line: 1003, column: 1, scope: !3391)
!3416 = !DILocation(line: 1002, column: 3, scope: !3391)
!3417 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !248, file: !248, line: 1006, type: !3418, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3420)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!43, !46, !51, !51, !51}
!3420 = !{!3421, !3422, !3423, !3424}
!3421 = !DILocalVariable(name: "n", arg: 1, scope: !3417, file: !248, line: 1006, type: !46)
!3422 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3417, file: !248, line: 1006, type: !51)
!3423 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3417, file: !248, line: 1007, type: !51)
!3424 = !DILocalVariable(name: "arg", arg: 4, scope: !3417, file: !248, line: 1007, type: !51)
!3425 = !DILocation(line: 0, scope: !3417)
!3426 = !DILocalVariable(name: "n", arg: 1, scope: !3427, file: !248, line: 1014, type: !46)
!3427 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !248, file: !248, line: 1014, type: !3428, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3430)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!43, !46, !51, !51, !51, !48}
!3430 = !{!3426, !3431, !3432, !3433, !3434, !3435}
!3431 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3427, file: !248, line: 1014, type: !51)
!3432 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3427, file: !248, line: 1015, type: !51)
!3433 = !DILocalVariable(name: "arg", arg: 4, scope: !3427, file: !248, line: 1016, type: !51)
!3434 = !DILocalVariable(name: "argsize", arg: 5, scope: !3427, file: !248, line: 1016, type: !48)
!3435 = !DILocalVariable(name: "o", scope: !3427, file: !248, line: 1018, type: !279)
!3436 = !DILocation(line: 0, scope: !3427, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 1009, column: 10, scope: !3417)
!3438 = !DILocation(line: 1018, column: 3, scope: !3427, inlinedAt: !3437)
!3439 = !DILocation(line: 1018, column: 26, scope: !3427, inlinedAt: !3437)
!3440 = !DILocation(line: 1018, column: 30, scope: !3427, inlinedAt: !3437)
!3441 = !DILocation(line: 0, scope: !2359, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 1019, column: 3, scope: !3427, inlinedAt: !3437)
!3443 = !DILocation(line: 174, column: 6, scope: !2359, inlinedAt: !3442)
!3444 = !DILocation(line: 174, column: 12, scope: !2359, inlinedAt: !3442)
!3445 = !DILocation(line: 175, column: 8, scope: !2373, inlinedAt: !3442)
!3446 = !DILocation(line: 175, column: 19, scope: !2373, inlinedAt: !3442)
!3447 = !DILocation(line: 176, column: 5, scope: !2373, inlinedAt: !3442)
!3448 = !DILocation(line: 177, column: 6, scope: !2359, inlinedAt: !3442)
!3449 = !DILocation(line: 177, column: 17, scope: !2359, inlinedAt: !3442)
!3450 = !DILocation(line: 178, column: 6, scope: !2359, inlinedAt: !3442)
!3451 = !DILocation(line: 178, column: 18, scope: !2359, inlinedAt: !3442)
!3452 = !DILocation(line: 1020, column: 10, scope: !3427, inlinedAt: !3437)
!3453 = !DILocation(line: 1021, column: 1, scope: !3427, inlinedAt: !3437)
!3454 = !DILocation(line: 1009, column: 3, scope: !3417)
!3455 = !DILocation(line: 0, scope: !3427)
!3456 = !DILocation(line: 1018, column: 3, scope: !3427)
!3457 = !DILocation(line: 1018, column: 26, scope: !3427)
!3458 = !DILocation(line: 1018, column: 30, scope: !3427)
!3459 = !DILocation(line: 0, scope: !2359, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 1019, column: 3, scope: !3427)
!3461 = !DILocation(line: 174, column: 6, scope: !2359, inlinedAt: !3460)
!3462 = !DILocation(line: 174, column: 12, scope: !2359, inlinedAt: !3460)
!3463 = !DILocation(line: 175, column: 8, scope: !2373, inlinedAt: !3460)
!3464 = !DILocation(line: 175, column: 19, scope: !2373, inlinedAt: !3460)
!3465 = !DILocation(line: 176, column: 5, scope: !2373, inlinedAt: !3460)
!3466 = !DILocation(line: 177, column: 6, scope: !2359, inlinedAt: !3460)
!3467 = !DILocation(line: 177, column: 17, scope: !2359, inlinedAt: !3460)
!3468 = !DILocation(line: 178, column: 6, scope: !2359, inlinedAt: !3460)
!3469 = !DILocation(line: 178, column: 18, scope: !2359, inlinedAt: !3460)
!3470 = !DILocation(line: 1020, column: 10, scope: !3427)
!3471 = !DILocation(line: 1021, column: 1, scope: !3427)
!3472 = !DILocation(line: 1020, column: 3, scope: !3427)
!3473 = distinct !DISubprogram(name: "quotearg_custom", scope: !248, file: !248, line: 1024, type: !3474, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3476)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!43, !51, !51, !51}
!3476 = !{!3477, !3478, !3479}
!3477 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3473, file: !248, line: 1024, type: !51)
!3478 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3473, file: !248, line: 1024, type: !51)
!3479 = !DILocalVariable(name: "arg", arg: 3, scope: !3473, file: !248, line: 1025, type: !51)
!3480 = !DILocation(line: 0, scope: !3473)
!3481 = !DILocation(line: 0, scope: !3417, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 1027, column: 10, scope: !3473)
!3483 = !DILocation(line: 0, scope: !3427, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 1009, column: 10, scope: !3417, inlinedAt: !3482)
!3485 = !DILocation(line: 1018, column: 3, scope: !3427, inlinedAt: !3484)
!3486 = !DILocation(line: 1018, column: 26, scope: !3427, inlinedAt: !3484)
!3487 = !DILocation(line: 1018, column: 30, scope: !3427, inlinedAt: !3484)
!3488 = !DILocation(line: 0, scope: !2359, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 1019, column: 3, scope: !3427, inlinedAt: !3484)
!3490 = !DILocation(line: 174, column: 6, scope: !2359, inlinedAt: !3489)
!3491 = !DILocation(line: 174, column: 12, scope: !2359, inlinedAt: !3489)
!3492 = !DILocation(line: 175, column: 8, scope: !2373, inlinedAt: !3489)
!3493 = !DILocation(line: 175, column: 19, scope: !2373, inlinedAt: !3489)
!3494 = !DILocation(line: 176, column: 5, scope: !2373, inlinedAt: !3489)
!3495 = !DILocation(line: 177, column: 6, scope: !2359, inlinedAt: !3489)
!3496 = !DILocation(line: 177, column: 17, scope: !2359, inlinedAt: !3489)
!3497 = !DILocation(line: 178, column: 6, scope: !2359, inlinedAt: !3489)
!3498 = !DILocation(line: 178, column: 18, scope: !2359, inlinedAt: !3489)
!3499 = !DILocation(line: 1020, column: 10, scope: !3427, inlinedAt: !3484)
!3500 = !DILocation(line: 1021, column: 1, scope: !3427, inlinedAt: !3484)
!3501 = !DILocation(line: 1027, column: 3, scope: !3473)
!3502 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !248, file: !248, line: 1031, type: !3503, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3505)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!43, !51, !51, !51, !48}
!3505 = !{!3506, !3507, !3508, !3509}
!3506 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3502, file: !248, line: 1031, type: !51)
!3507 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3502, file: !248, line: 1031, type: !51)
!3508 = !DILocalVariable(name: "arg", arg: 3, scope: !3502, file: !248, line: 1032, type: !51)
!3509 = !DILocalVariable(name: "argsize", arg: 4, scope: !3502, file: !248, line: 1032, type: !48)
!3510 = !DILocation(line: 0, scope: !3502)
!3511 = !DILocation(line: 0, scope: !3427, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 1034, column: 10, scope: !3502)
!3513 = !DILocation(line: 1018, column: 3, scope: !3427, inlinedAt: !3512)
!3514 = !DILocation(line: 1018, column: 26, scope: !3427, inlinedAt: !3512)
!3515 = !DILocation(line: 1018, column: 30, scope: !3427, inlinedAt: !3512)
!3516 = !DILocation(line: 0, scope: !2359, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 1019, column: 3, scope: !3427, inlinedAt: !3512)
!3518 = !DILocation(line: 174, column: 6, scope: !2359, inlinedAt: !3517)
!3519 = !DILocation(line: 174, column: 12, scope: !2359, inlinedAt: !3517)
!3520 = !DILocation(line: 175, column: 8, scope: !2373, inlinedAt: !3517)
!3521 = !DILocation(line: 175, column: 19, scope: !2373, inlinedAt: !3517)
!3522 = !DILocation(line: 176, column: 5, scope: !2373, inlinedAt: !3517)
!3523 = !DILocation(line: 177, column: 6, scope: !2359, inlinedAt: !3517)
!3524 = !DILocation(line: 177, column: 17, scope: !2359, inlinedAt: !3517)
!3525 = !DILocation(line: 178, column: 6, scope: !2359, inlinedAt: !3517)
!3526 = !DILocation(line: 178, column: 18, scope: !2359, inlinedAt: !3517)
!3527 = !DILocation(line: 1020, column: 10, scope: !3427, inlinedAt: !3512)
!3528 = !DILocation(line: 1021, column: 1, scope: !3427, inlinedAt: !3512)
!3529 = !DILocation(line: 1034, column: 3, scope: !3502)
!3530 = distinct !DISubprogram(name: "quote_n_mem", scope: !248, file: !248, line: 1049, type: !3531, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3533)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!51, !46, !51, !48}
!3533 = !{!3534, !3535, !3536}
!3534 = !DILocalVariable(name: "n", arg: 1, scope: !3530, file: !248, line: 1049, type: !46)
!3535 = !DILocalVariable(name: "arg", arg: 2, scope: !3530, file: !248, line: 1049, type: !51)
!3536 = !DILocalVariable(name: "argsize", arg: 3, scope: !3530, file: !248, line: 1049, type: !48)
!3537 = !DILocation(line: 0, scope: !3530)
!3538 = !DILocation(line: 1051, column: 10, scope: !3530)
!3539 = !DILocation(line: 1051, column: 3, scope: !3530)
!3540 = distinct !DISubprogram(name: "quote_mem", scope: !248, file: !248, line: 1055, type: !3541, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!51, !51, !48}
!3543 = !{!3544, !3545}
!3544 = !DILocalVariable(name: "arg", arg: 1, scope: !3540, file: !248, line: 1055, type: !51)
!3545 = !DILocalVariable(name: "argsize", arg: 2, scope: !3540, file: !248, line: 1055, type: !48)
!3546 = !DILocation(line: 0, scope: !3540)
!3547 = !DILocation(line: 0, scope: !3530, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 1057, column: 10, scope: !3540)
!3549 = !DILocation(line: 1051, column: 10, scope: !3530, inlinedAt: !3548)
!3550 = !DILocation(line: 1057, column: 3, scope: !3540)
!3551 = distinct !DISubprogram(name: "quote_n", scope: !248, file: !248, line: 1061, type: !3552, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3554)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!51, !46, !51}
!3554 = !{!3555, !3556}
!3555 = !DILocalVariable(name: "n", arg: 1, scope: !3551, file: !248, line: 1061, type: !46)
!3556 = !DILocalVariable(name: "arg", arg: 2, scope: !3551, file: !248, line: 1061, type: !51)
!3557 = !DILocation(line: 0, scope: !3551)
!3558 = !DILocation(line: 0, scope: !3530, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 1063, column: 10, scope: !3551)
!3560 = !DILocation(line: 1051, column: 10, scope: !3530, inlinedAt: !3559)
!3561 = !DILocation(line: 1063, column: 3, scope: !3551)
!3562 = distinct !DISubprogram(name: "quote", scope: !248, file: !248, line: 1067, type: !1848, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !3563)
!3563 = !{!3564}
!3564 = !DILocalVariable(name: "arg", arg: 1, scope: !3562, file: !248, line: 1067, type: !51)
!3565 = !DILocation(line: 0, scope: !3562)
!3566 = !DILocation(line: 0, scope: !3551, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 1069, column: 10, scope: !3562)
!3568 = !DILocation(line: 0, scope: !3530, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 1063, column: 10, scope: !3551, inlinedAt: !3567)
!3570 = !DILocation(line: 1051, column: 10, scope: !3530, inlinedAt: !3569)
!3571 = !DILocation(line: 1069, column: 3, scope: !3562)
!3572 = distinct !DISubprogram(name: "strintcmp", scope: !373, file: !373, line: 31, type: !1905, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !3573)
!3573 = !{!3574, !3575}
!3574 = !DILocalVariable(name: "a", arg: 1, scope: !3572, file: !373, line: 31, type: !51)
!3575 = !DILocalVariable(name: "b", arg: 2, scope: !3572, file: !373, line: 31, type: !51)
!3576 = !DILocation(line: 0, scope: !3572)
!3577 = !DILocalVariable(name: "a", arg: 1, scope: !3578, file: !3579, line: 105, type: !51)
!3578 = distinct !DISubprogram(name: "numcompare", scope: !3579, file: !3579, line: 105, type: !3580, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !3582)
!3579 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f69f23aa922f1f0bf768a1237830bd5f")
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!46, !51, !51, !46, !46}
!3582 = !{!3577, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590}
!3583 = !DILocalVariable(name: "b", arg: 2, scope: !3578, file: !3579, line: 105, type: !51)
!3584 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !3578, file: !3579, line: 106, type: !46)
!3585 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !3578, file: !3579, line: 106, type: !46)
!3586 = !DILocalVariable(name: "tmpa", scope: !3578, file: !3579, line: 108, type: !44)
!3587 = !DILocalVariable(name: "tmpb", scope: !3578, file: !3579, line: 109, type: !44)
!3588 = !DILocalVariable(name: "tmp", scope: !3578, file: !3579, line: 110, type: !46)
!3589 = !DILocalVariable(name: "log_a", scope: !3578, file: !3579, line: 111, type: !48)
!3590 = !DILocalVariable(name: "log_b", scope: !3578, file: !3579, line: 112, type: !48)
!3591 = !DILocation(line: 0, scope: !3578, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 33, column: 10, scope: !3572)
!3593 = !DILocation(line: 108, column: 15, scope: !3578, inlinedAt: !3592)
!3594 = !DILocation(line: 109, column: 15, scope: !3578, inlinedAt: !3592)
!3595 = !DILocation(line: 114, column: 12, scope: !3596, inlinedAt: !3592)
!3596 = distinct !DILexicalBlock(scope: !3578, file: !3579, line: 114, column: 7)
!3597 = !DILocation(line: 114, column: 7, scope: !3578, inlinedAt: !3592)
!3598 = !DILocation(line: 117, column: 17, scope: !3599, inlinedAt: !3592)
!3599 = distinct !DILexicalBlock(scope: !3596, file: !3579, line: 115, column: 5)
!3600 = !DILocation(line: 117, column: 16, scope: !3599, inlinedAt: !3592)
!3601 = !DILocation(line: 118, column: 19, scope: !3599, inlinedAt: !3592)
!3602 = !DILocation(line: 117, column: 9, scope: !3599, inlinedAt: !3592)
!3603 = distinct !{!3603, !3604, !3605, !552}
!3604 = !DILocation(line: 116, column: 7, scope: !3599, inlinedAt: !3592)
!3605 = !DILocation(line: 118, column: 59, scope: !3599, inlinedAt: !3592)
!3606 = !DILocation(line: 119, column: 16, scope: !3607, inlinedAt: !3592)
!3607 = distinct !DILexicalBlock(scope: !3599, file: !3579, line: 119, column: 11)
!3608 = !DILocation(line: 119, column: 11, scope: !3599, inlinedAt: !3592)
!3609 = !DILocation(line: 125, column: 26, scope: !3610, inlinedAt: !3592)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !3579, line: 125, column: 15)
!3611 = distinct !DILexicalBlock(scope: !3607, file: !3579, line: 120, column: 9)
!3612 = !DILocalVariable(name: "c", arg: 1, scope: !3613, file: !1871, line: 233, type: !46)
!3613 = distinct !DISubprogram(name: "c_isdigit", scope: !1871, file: !1871, line: 233, type: !800, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !3614)
!3614 = !{!3612}
!3615 = !DILocation(line: 0, scope: !3613, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 125, column: 15, scope: !3610, inlinedAt: !3592)
!3617 = !DILocation(line: 235, column: 3, scope: !3613, inlinedAt: !3616)
!3618 = !DILocation(line: 125, column: 15, scope: !3611, inlinedAt: !3592)
!3619 = !DILocation(line: 127, column: 23, scope: !3611, inlinedAt: !3592)
!3620 = !DILocation(line: 127, column: 11, scope: !3611, inlinedAt: !3592)
!3621 = !DILocation(line: 128, column: 21, scope: !3611, inlinedAt: !3592)
!3622 = !DILocation(line: 128, column: 20, scope: !3611, inlinedAt: !3592)
!3623 = distinct !{!3623, !3620, !3624, !552}
!3624 = !DILocation(line: 128, column: 23, scope: !3611, inlinedAt: !3592)
!3625 = !DILocation(line: 133, column: 31, scope: !3611, inlinedAt: !3592)
!3626 = !DILocation(line: 0, scope: !3613, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 133, column: 20, scope: !3611, inlinedAt: !3592)
!3628 = !DILocation(line: 235, column: 3, scope: !3613, inlinedAt: !3627)
!3629 = !DILocation(line: 133, column: 20, scope: !3611, inlinedAt: !3592)
!3630 = !DILocation(line: 133, column: 11, scope: !3611, inlinedAt: !3592)
!3631 = !DILocation(line: 136, column: 17, scope: !3599, inlinedAt: !3592)
!3632 = !DILocation(line: 136, column: 16, scope: !3599, inlinedAt: !3592)
!3633 = !DILocation(line: 137, column: 19, scope: !3599, inlinedAt: !3592)
!3634 = !DILocation(line: 136, column: 9, scope: !3599, inlinedAt: !3592)
!3635 = distinct !{!3635, !3636, !3637, !552}
!3636 = !DILocation(line: 135, column: 7, scope: !3599, inlinedAt: !3592)
!3637 = !DILocation(line: 137, column: 59, scope: !3599, inlinedAt: !3592)
!3638 = !DILocation(line: 139, column: 14, scope: !3599, inlinedAt: !3592)
!3639 = !DILocation(line: 139, column: 19, scope: !3599, inlinedAt: !3592)
!3640 = !DILocation(line: 139, column: 27, scope: !3599, inlinedAt: !3592)
!3641 = !DILocation(line: 0, scope: !3613, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 139, column: 30, scope: !3599, inlinedAt: !3592)
!3643 = !DILocation(line: 142, column: 21, scope: !3644, inlinedAt: !3592)
!3644 = distinct !DILexicalBlock(scope: !3599, file: !3579, line: 140, column: 9)
!3645 = !DILocation(line: 142, column: 20, scope: !3644, inlinedAt: !3592)
!3646 = !DILocation(line: 145, column: 21, scope: !3644, inlinedAt: !3592)
!3647 = !DILocation(line: 145, column: 20, scope: !3644, inlinedAt: !3592)
!3648 = !DILocation(line: 139, column: 22, scope: !3599, inlinedAt: !3592)
!3649 = !DILocation(line: 235, column: 3, scope: !3613, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 155, column: 23, scope: !3651, inlinedAt: !3592)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !3579, line: 155, column: 7)
!3652 = distinct !DILexicalBlock(scope: !3599, file: !3579, line: 155, column: 7)
!3653 = !DILocation(line: 0, scope: !3599, inlinedAt: !3592)
!3654 = !DILocation(line: 153, column: 18, scope: !3599, inlinedAt: !3592)
!3655 = !DILocation(line: 0, scope: !3613, inlinedAt: !3650)
!3656 = !DILocation(line: 155, column: 7, scope: !3652, inlinedAt: !3592)
!3657 = !DILocation(line: 0, scope: !3652, inlinedAt: !3592)
!3658 = !DILocation(line: 0, scope: !3613, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 160, column: 23, scope: !3660, inlinedAt: !3592)
!3660 = distinct !DILexicalBlock(scope: !3661, file: !3579, line: 160, column: 7)
!3661 = distinct !DILexicalBlock(scope: !3599, file: !3579, line: 160, column: 7)
!3662 = !DILocation(line: 235, column: 3, scope: !3613, inlinedAt: !3659)
!3663 = !DILocation(line: 160, column: 7, scope: !3661, inlinedAt: !3592)
!3664 = !DILocation(line: 157, column: 19, scope: !3651, inlinedAt: !3592)
!3665 = !DILocation(line: 157, column: 18, scope: !3651, inlinedAt: !3592)
!3666 = !DILocation(line: 155, column: 41, scope: !3651, inlinedAt: !3592)
!3667 = !DILocation(line: 155, column: 34, scope: !3651, inlinedAt: !3592)
!3668 = distinct !{!3668, !3656, !3669, !552}
!3669 = !DILocation(line: 158, column: 37, scope: !3652, inlinedAt: !3592)
!3670 = !DILocation(line: 162, column: 19, scope: !3660, inlinedAt: !3592)
!3671 = !DILocation(line: 162, column: 18, scope: !3660, inlinedAt: !3592)
!3672 = !DILocation(line: 160, column: 41, scope: !3660, inlinedAt: !3592)
!3673 = !DILocation(line: 160, column: 34, scope: !3660, inlinedAt: !3592)
!3674 = distinct !{!3674, !3663, !3675, !552}
!3675 = !DILocation(line: 163, column: 37, scope: !3661, inlinedAt: !3592)
!3676 = !DILocation(line: 0, scope: !3661, inlinedAt: !3592)
!3677 = !DILocation(line: 165, column: 17, scope: !3678, inlinedAt: !3592)
!3678 = distinct !DILexicalBlock(scope: !3599, file: !3579, line: 165, column: 11)
!3679 = !DILocation(line: 165, column: 11, scope: !3599, inlinedAt: !3592)
!3680 = !DILocation(line: 166, column: 22, scope: !3678, inlinedAt: !3592)
!3681 = !DILocation(line: 166, column: 16, scope: !3678, inlinedAt: !3592)
!3682 = !DILocation(line: 166, column: 9, scope: !3678, inlinedAt: !3592)
!3683 = !DILocation(line: 168, column: 12, scope: !3684, inlinedAt: !3592)
!3684 = distinct !DILexicalBlock(scope: !3599, file: !3579, line: 168, column: 11)
!3685 = !DILocation(line: 173, column: 17, scope: !3686, inlinedAt: !3592)
!3686 = distinct !DILexicalBlock(scope: !3596, file: !3579, line: 173, column: 12)
!3687 = !DILocation(line: 173, column: 12, scope: !3596, inlinedAt: !3592)
!3688 = !DILocation(line: 194, column: 19, scope: !3689, inlinedAt: !3592)
!3689 = distinct !DILexicalBlock(scope: !3686, file: !3579, line: 193, column: 5)
!3690 = !DILocation(line: 194, column: 7, scope: !3689, inlinedAt: !3592)
!3691 = !DILocation(line: 176, column: 17, scope: !3692, inlinedAt: !3592)
!3692 = distinct !DILexicalBlock(scope: !3686, file: !3579, line: 174, column: 5)
!3693 = !DILocation(line: 176, column: 16, scope: !3692, inlinedAt: !3592)
!3694 = !DILocation(line: 177, column: 19, scope: !3692, inlinedAt: !3592)
!3695 = !DILocation(line: 176, column: 9, scope: !3692, inlinedAt: !3592)
!3696 = distinct !{!3696, !3697, !3698, !552}
!3697 = !DILocation(line: 175, column: 7, scope: !3692, inlinedAt: !3592)
!3698 = !DILocation(line: 177, column: 59, scope: !3692, inlinedAt: !3592)
!3699 = !DILocation(line: 182, column: 22, scope: !3700, inlinedAt: !3592)
!3700 = distinct !DILexicalBlock(scope: !3692, file: !3579, line: 182, column: 11)
!3701 = !DILocation(line: 0, scope: !3613, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 182, column: 11, scope: !3700, inlinedAt: !3592)
!3703 = !DILocation(line: 235, column: 3, scope: !3613, inlinedAt: !3702)
!3704 = !DILocation(line: 182, column: 11, scope: !3692, inlinedAt: !3592)
!3705 = !DILocation(line: 184, column: 19, scope: !3692, inlinedAt: !3592)
!3706 = !DILocation(line: 184, column: 7, scope: !3692, inlinedAt: !3592)
!3707 = !DILocation(line: 185, column: 17, scope: !3692, inlinedAt: !3592)
!3708 = !DILocation(line: 185, column: 16, scope: !3692, inlinedAt: !3592)
!3709 = distinct !{!3709, !3706, !3710, !552}
!3710 = !DILocation(line: 185, column: 19, scope: !3692, inlinedAt: !3592)
!3711 = !DILocation(line: 190, column: 25, scope: !3692, inlinedAt: !3592)
!3712 = !DILocation(line: 0, scope: !3613, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 190, column: 14, scope: !3692, inlinedAt: !3592)
!3714 = !DILocation(line: 235, column: 3, scope: !3613, inlinedAt: !3713)
!3715 = !DILocation(line: 190, column: 14, scope: !3692, inlinedAt: !3592)
!3716 = !DILocation(line: 190, column: 7, scope: !3692, inlinedAt: !3592)
!3717 = !DILocation(line: 196, column: 19, scope: !3689, inlinedAt: !3592)
!3718 = !DILocation(line: 196, column: 7, scope: !3689, inlinedAt: !3592)
!3719 = !DILocation(line: 195, column: 17, scope: !3689, inlinedAt: !3592)
!3720 = !DILocation(line: 195, column: 16, scope: !3689, inlinedAt: !3592)
!3721 = distinct !{!3721, !3690, !3722, !552}
!3722 = !DILocation(line: 195, column: 19, scope: !3689, inlinedAt: !3592)
!3723 = !DILocation(line: 199, column: 14, scope: !3689, inlinedAt: !3592)
!3724 = !DILocation(line: 199, column: 19, scope: !3689, inlinedAt: !3592)
!3725 = !DILocation(line: 199, column: 27, scope: !3689, inlinedAt: !3592)
!3726 = !DILocation(line: 0, scope: !3613, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 199, column: 30, scope: !3689, inlinedAt: !3592)
!3728 = !DILocation(line: 197, column: 17, scope: !3689, inlinedAt: !3592)
!3729 = !DILocation(line: 197, column: 16, scope: !3689, inlinedAt: !3592)
!3730 = distinct !{!3730, !3718, !3731, !552}
!3731 = !DILocation(line: 197, column: 19, scope: !3689, inlinedAt: !3592)
!3732 = !DILocation(line: 202, column: 21, scope: !3733, inlinedAt: !3592)
!3733 = distinct !DILexicalBlock(scope: !3689, file: !3579, line: 200, column: 9)
!3734 = !DILocation(line: 202, column: 20, scope: !3733, inlinedAt: !3592)
!3735 = !DILocation(line: 205, column: 21, scope: !3733, inlinedAt: !3592)
!3736 = !DILocation(line: 205, column: 20, scope: !3733, inlinedAt: !3592)
!3737 = !DILocation(line: 199, column: 22, scope: !3689, inlinedAt: !3592)
!3738 = !DILocation(line: 235, column: 3, scope: !3613, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 215, column: 23, scope: !3740, inlinedAt: !3592)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !3579, line: 215, column: 7)
!3741 = distinct !DILexicalBlock(scope: !3689, file: !3579, line: 215, column: 7)
!3742 = !DILocation(line: 213, column: 18, scope: !3689, inlinedAt: !3592)
!3743 = !DILocation(line: 0, scope: !3613, inlinedAt: !3739)
!3744 = !DILocation(line: 215, column: 7, scope: !3741, inlinedAt: !3592)
!3745 = !DILocation(line: 0, scope: !3741, inlinedAt: !3592)
!3746 = !DILocation(line: 0, scope: !3613, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 220, column: 23, scope: !3748, inlinedAt: !3592)
!3748 = distinct !DILexicalBlock(scope: !3749, file: !3579, line: 220, column: 7)
!3749 = distinct !DILexicalBlock(scope: !3689, file: !3579, line: 220, column: 7)
!3750 = !DILocation(line: 235, column: 3, scope: !3613, inlinedAt: !3747)
!3751 = !DILocation(line: 220, column: 7, scope: !3749, inlinedAt: !3592)
!3752 = !DILocation(line: 217, column: 19, scope: !3740, inlinedAt: !3592)
!3753 = !DILocation(line: 217, column: 18, scope: !3740, inlinedAt: !3592)
!3754 = !DILocation(line: 215, column: 41, scope: !3740, inlinedAt: !3592)
!3755 = !DILocation(line: 215, column: 34, scope: !3740, inlinedAt: !3592)
!3756 = distinct !{!3756, !3744, !3757, !552}
!3757 = !DILocation(line: 218, column: 37, scope: !3741, inlinedAt: !3592)
!3758 = !DILocation(line: 222, column: 19, scope: !3748, inlinedAt: !3592)
!3759 = !DILocation(line: 222, column: 18, scope: !3748, inlinedAt: !3592)
!3760 = !DILocation(line: 220, column: 41, scope: !3748, inlinedAt: !3592)
!3761 = !DILocation(line: 220, column: 34, scope: !3748, inlinedAt: !3592)
!3762 = distinct !{!3762, !3751, !3763, !552}
!3763 = !DILocation(line: 223, column: 37, scope: !3749, inlinedAt: !3592)
!3764 = !DILocation(line: 0, scope: !3749, inlinedAt: !3592)
!3765 = !DILocation(line: 225, column: 17, scope: !3766, inlinedAt: !3592)
!3766 = distinct !DILexicalBlock(scope: !3689, file: !3579, line: 225, column: 11)
!3767 = !DILocation(line: 225, column: 11, scope: !3689, inlinedAt: !3592)
!3768 = !DILocation(line: 226, column: 22, scope: !3766, inlinedAt: !3592)
!3769 = !DILocation(line: 226, column: 16, scope: !3766, inlinedAt: !3592)
!3770 = !DILocation(line: 226, column: 9, scope: !3766, inlinedAt: !3592)
!3771 = !DILocation(line: 228, column: 12, scope: !3772, inlinedAt: !3592)
!3772 = distinct !DILexicalBlock(scope: !3689, file: !3579, line: 228, column: 11)
!3773 = !DILocation(line: 0, scope: !3689, inlinedAt: !3592)
!3774 = !DILocation(line: 0, scope: !3596, inlinedAt: !3592)
!3775 = !DILocation(line: 33, column: 3, scope: !3572)
!3776 = distinct !DISubprogram(name: "version_etc_arn", scope: !375, file: !375, line: 61, type: !3777, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !374, retainedNodes: !3814)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{null, !3779, !51, !51, !51, !3813, !48}
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !92, line: 7, baseType: !3781)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !94, line: 49, size: 1728, elements: !3782)
!3782 = !{!3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3781, file: !94, line: 51, baseType: !46, size: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3781, file: !94, line: 54, baseType: !43, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3781, file: !94, line: 55, baseType: !43, size: 64, offset: 128)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3781, file: !94, line: 56, baseType: !43, size: 64, offset: 192)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3781, file: !94, line: 57, baseType: !43, size: 64, offset: 256)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3781, file: !94, line: 58, baseType: !43, size: 64, offset: 320)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3781, file: !94, line: 59, baseType: !43, size: 64, offset: 384)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3781, file: !94, line: 60, baseType: !43, size: 64, offset: 448)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3781, file: !94, line: 61, baseType: !43, size: 64, offset: 512)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3781, file: !94, line: 64, baseType: !43, size: 64, offset: 576)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3781, file: !94, line: 65, baseType: !43, size: 64, offset: 640)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3781, file: !94, line: 66, baseType: !43, size: 64, offset: 704)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3781, file: !94, line: 68, baseType: !109, size: 64, offset: 768)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3781, file: !94, line: 70, baseType: !3797, size: 64, offset: 832)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3781, file: !94, line: 72, baseType: !46, size: 32, offset: 896)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3781, file: !94, line: 73, baseType: !46, size: 32, offset: 928)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3781, file: !94, line: 74, baseType: !116, size: 64, offset: 960)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3781, file: !94, line: 77, baseType: !47, size: 16, offset: 1024)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3781, file: !94, line: 78, baseType: !119, size: 8, offset: 1040)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3781, file: !94, line: 79, baseType: !121, size: 8, offset: 1048)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3781, file: !94, line: 81, baseType: !125, size: 64, offset: 1088)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3781, file: !94, line: 89, baseType: !128, size: 64, offset: 1152)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3781, file: !94, line: 91, baseType: !130, size: 64, offset: 1216)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3781, file: !94, line: 92, baseType: !133, size: 64, offset: 1280)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3781, file: !94, line: 93, baseType: !3797, size: 64, offset: 1344)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3781, file: !94, line: 94, baseType: !45, size: 64, offset: 1408)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3781, file: !94, line: 95, baseType: !48, size: 64, offset: 1472)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3781, file: !94, line: 96, baseType: !46, size: 32, offset: 1536)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3781, file: !94, line: 98, baseType: !140, size: 160, offset: 1568)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!3814 = !{!3815, !3816, !3817, !3818, !3819, !3820}
!3815 = !DILocalVariable(name: "stream", arg: 1, scope: !3776, file: !375, line: 61, type: !3779)
!3816 = !DILocalVariable(name: "command_name", arg: 2, scope: !3776, file: !375, line: 62, type: !51)
!3817 = !DILocalVariable(name: "package", arg: 3, scope: !3776, file: !375, line: 62, type: !51)
!3818 = !DILocalVariable(name: "version", arg: 4, scope: !3776, file: !375, line: 63, type: !51)
!3819 = !DILocalVariable(name: "authors", arg: 5, scope: !3776, file: !375, line: 64, type: !3813)
!3820 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3776, file: !375, line: 64, type: !48)
!3821 = !DILocation(line: 0, scope: !3776)
!3822 = !DILocation(line: 66, column: 7, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3776, file: !375, line: 66, column: 7)
!3824 = !DILocation(line: 66, column: 7, scope: !3776)
!3825 = !DILocation(line: 67, column: 5, scope: !3823)
!3826 = !DILocation(line: 69, column: 5, scope: !3823)
!3827 = !DILocation(line: 83, column: 3, scope: !3776)
!3828 = !DILocation(line: 85, column: 3, scope: !3776)
!3829 = !DILocation(line: 88, column: 3, scope: !3776)
!3830 = !DILocation(line: 95, column: 3, scope: !3776)
!3831 = !DILocation(line: 97, column: 3, scope: !3776)
!3832 = !DILocation(line: 105, column: 7, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3776, file: !375, line: 98, column: 5)
!3834 = !DILocation(line: 106, column: 7, scope: !3833)
!3835 = !DILocation(line: 109, column: 7, scope: !3833)
!3836 = !DILocation(line: 110, column: 7, scope: !3833)
!3837 = !DILocation(line: 113, column: 7, scope: !3833)
!3838 = !DILocation(line: 115, column: 7, scope: !3833)
!3839 = !DILocation(line: 120, column: 7, scope: !3833)
!3840 = !DILocation(line: 122, column: 7, scope: !3833)
!3841 = !DILocation(line: 127, column: 7, scope: !3833)
!3842 = !DILocation(line: 129, column: 7, scope: !3833)
!3843 = !DILocation(line: 134, column: 7, scope: !3833)
!3844 = !DILocation(line: 137, column: 7, scope: !3833)
!3845 = !DILocation(line: 142, column: 7, scope: !3833)
!3846 = !DILocation(line: 145, column: 7, scope: !3833)
!3847 = !DILocation(line: 150, column: 7, scope: !3833)
!3848 = !DILocation(line: 154, column: 7, scope: !3833)
!3849 = !DILocation(line: 159, column: 7, scope: !3833)
!3850 = !DILocation(line: 163, column: 7, scope: !3833)
!3851 = !DILocation(line: 170, column: 7, scope: !3833)
!3852 = !DILocation(line: 174, column: 7, scope: !3833)
!3853 = !DILocation(line: 176, column: 1, scope: !3776)
!3854 = distinct !DISubprogram(name: "version_etc_ar", scope: !375, file: !375, line: 183, type: !3855, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !374, retainedNodes: !3857)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{null, !3779, !51, !51, !51, !3813}
!3857 = !{!3858, !3859, !3860, !3861, !3862, !3863}
!3858 = !DILocalVariable(name: "stream", arg: 1, scope: !3854, file: !375, line: 183, type: !3779)
!3859 = !DILocalVariable(name: "command_name", arg: 2, scope: !3854, file: !375, line: 184, type: !51)
!3860 = !DILocalVariable(name: "package", arg: 3, scope: !3854, file: !375, line: 184, type: !51)
!3861 = !DILocalVariable(name: "version", arg: 4, scope: !3854, file: !375, line: 185, type: !51)
!3862 = !DILocalVariable(name: "authors", arg: 5, scope: !3854, file: !375, line: 185, type: !3813)
!3863 = !DILocalVariable(name: "n_authors", scope: !3854, file: !375, line: 187, type: !48)
!3864 = !DILocation(line: 0, scope: !3854)
!3865 = !DILocation(line: 189, column: 8, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3854, file: !375, line: 189, column: 3)
!3867 = !DILocation(line: 0, scope: !3866)
!3868 = !DILocation(line: 189, column: 23, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3866, file: !375, line: 189, column: 3)
!3870 = !DILocation(line: 189, column: 3, scope: !3866)
!3871 = !DILocation(line: 189, column: 52, scope: !3869)
!3872 = distinct !{!3872, !3870, !3873, !552}
!3873 = !DILocation(line: 190, column: 5, scope: !3866)
!3874 = !DILocation(line: 191, column: 3, scope: !3854)
!3875 = !DILocation(line: 192, column: 1, scope: !3854)
!3876 = distinct !DISubprogram(name: "version_etc_va", scope: !375, file: !375, line: 199, type: !3877, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !374, retainedNodes: !3890)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{null, !3779, !51, !51, !51, !3879}
!3879 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !174, line: 52, baseType: !3880)
!3880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !176, line: 32, baseType: !3881)
!3881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3882, baseType: !3883)
!3882 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !180, size: 256, elements: !3884)
!3884 = !{!3885, !3886, !3887, !3888, !3889}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3883, file: !3882, line: 192, baseType: !45, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3883, file: !3882, line: 192, baseType: !45, size: 64, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3883, file: !3882, line: 192, baseType: !45, size: 64, offset: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3883, file: !3882, line: 192, baseType: !46, size: 32, offset: 192)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3883, file: !3882, line: 192, baseType: !46, size: 32, offset: 224)
!3890 = !{!3891, !3892, !3893, !3894, !3895, !3896, !3897}
!3891 = !DILocalVariable(name: "stream", arg: 1, scope: !3876, file: !375, line: 199, type: !3779)
!3892 = !DILocalVariable(name: "command_name", arg: 2, scope: !3876, file: !375, line: 200, type: !51)
!3893 = !DILocalVariable(name: "package", arg: 3, scope: !3876, file: !375, line: 200, type: !51)
!3894 = !DILocalVariable(name: "version", arg: 4, scope: !3876, file: !375, line: 201, type: !51)
!3895 = !DILocalVariable(name: "authors", arg: 5, scope: !3876, file: !375, line: 201, type: !3879)
!3896 = !DILocalVariable(name: "n_authors", scope: !3876, file: !375, line: 203, type: !48)
!3897 = !DILocalVariable(name: "authtab", scope: !3876, file: !375, line: 204, type: !3898)
!3898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 640, elements: !275)
!3899 = !DILocation(line: 0, scope: !3876)
!3900 = !DILocation(line: 201, column: 46, scope: !3876)
!3901 = !DILocation(line: 204, column: 3, scope: !3876)
!3902 = !DILocation(line: 204, column: 15, scope: !3876)
!3903 = !DILocation(line: 208, column: 35, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3905, file: !375, line: 206, column: 3)
!3905 = distinct !DILexicalBlock(scope: !3876, file: !375, line: 206, column: 3)
!3906 = !DILocation(line: 208, column: 14, scope: !3904)
!3907 = !DILocation(line: 208, column: 33, scope: !3904)
!3908 = !DILocation(line: 208, column: 67, scope: !3904)
!3909 = !DILocation(line: 206, column: 3, scope: !3905)
!3910 = !DILocation(line: 0, scope: !3905)
!3911 = !DILocation(line: 211, column: 3, scope: !3876)
!3912 = !DILocation(line: 213, column: 1, scope: !3876)
!3913 = distinct !DISubprogram(name: "version_etc", scope: !375, file: !375, line: 230, type: !3914, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !374, retainedNodes: !3916)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{null, !3779, !51, !51, !51, null}
!3916 = !{!3917, !3918, !3919, !3920, !3921}
!3917 = !DILocalVariable(name: "stream", arg: 1, scope: !3913, file: !375, line: 230, type: !3779)
!3918 = !DILocalVariable(name: "command_name", arg: 2, scope: !3913, file: !375, line: 231, type: !51)
!3919 = !DILocalVariable(name: "package", arg: 3, scope: !3913, file: !375, line: 231, type: !51)
!3920 = !DILocalVariable(name: "version", arg: 4, scope: !3913, file: !375, line: 232, type: !51)
!3921 = !DILocalVariable(name: "authors", scope: !3913, file: !375, line: 234, type: !3879)
!3922 = !DILocation(line: 0, scope: !3913)
!3923 = !DILocation(line: 234, column: 3, scope: !3913)
!3924 = !DILocation(line: 234, column: 11, scope: !3913)
!3925 = !DILocation(line: 235, column: 3, scope: !3913)
!3926 = !DILocation(line: 236, column: 3, scope: !3913)
!3927 = !DILocation(line: 237, column: 3, scope: !3913)
!3928 = !DILocation(line: 238, column: 1, scope: !3913)
!3929 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !375, file: !375, line: 241, type: !201, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !374, retainedNodes: !578)
!3930 = !DILocation(line: 243, column: 3, scope: !3929)
!3931 = !DILocation(line: 248, column: 3, scope: !3929)
!3932 = !DILocation(line: 254, column: 3, scope: !3929)
!3933 = !DILocation(line: 259, column: 3, scope: !3929)
!3934 = !DILocation(line: 261, column: 1, scope: !3929)
!3935 = distinct !DISubprogram(name: "xnrealloc", scope: !3936, file: !3936, line: 147, type: !3937, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !3939)
!3936 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!45, !45, !48, !48}
!3939 = !{!3940, !3941, !3942}
!3940 = !DILocalVariable(name: "p", arg: 1, scope: !3935, file: !3936, line: 147, type: !45)
!3941 = !DILocalVariable(name: "n", arg: 2, scope: !3935, file: !3936, line: 147, type: !48)
!3942 = !DILocalVariable(name: "s", arg: 3, scope: !3935, file: !3936, line: 147, type: !48)
!3943 = !DILocation(line: 0, scope: !3935)
!3944 = !DILocalVariable(name: "p", arg: 1, scope: !3945, file: !382, line: 83, type: !45)
!3945 = distinct !DISubprogram(name: "xreallocarray", scope: !382, file: !382, line: 83, type: !3937, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !3946)
!3946 = !{!3944, !3947, !3948}
!3947 = !DILocalVariable(name: "n", arg: 2, scope: !3945, file: !382, line: 83, type: !48)
!3948 = !DILocalVariable(name: "s", arg: 3, scope: !3945, file: !382, line: 83, type: !48)
!3949 = !DILocation(line: 0, scope: !3945, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 149, column: 10, scope: !3935)
!3951 = !DILocation(line: 85, column: 25, scope: !3945, inlinedAt: !3950)
!3952 = !DILocalVariable(name: "p", arg: 1, scope: !3953, file: !382, line: 37, type: !45)
!3953 = distinct !DISubprogram(name: "check_nonnull", scope: !382, file: !382, line: 37, type: !3954, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !3956)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!45, !45}
!3956 = !{!3952}
!3957 = !DILocation(line: 0, scope: !3953, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 85, column: 10, scope: !3945, inlinedAt: !3950)
!3959 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !3958)
!3960 = distinct !DILexicalBlock(scope: !3953, file: !382, line: 39, column: 7)
!3961 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !3958)
!3962 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !3958)
!3963 = !DILocation(line: 149, column: 3, scope: !3935)
!3964 = !DILocation(line: 0, scope: !3945)
!3965 = !DILocation(line: 85, column: 25, scope: !3945)
!3966 = !DILocation(line: 0, scope: !3953, inlinedAt: !3967)
!3967 = distinct !DILocation(line: 85, column: 10, scope: !3945)
!3968 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !3967)
!3969 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !3967)
!3970 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !3967)
!3971 = !DILocation(line: 85, column: 3, scope: !3945)
!3972 = distinct !DISubprogram(name: "xmalloc", scope: !382, file: !382, line: 47, type: !3973, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !3975)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!45, !48}
!3975 = !{!3976}
!3976 = !DILocalVariable(name: "s", arg: 1, scope: !3972, file: !382, line: 47, type: !48)
!3977 = !DILocation(line: 0, scope: !3972)
!3978 = !DILocation(line: 49, column: 25, scope: !3972)
!3979 = !DILocation(line: 0, scope: !3953, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 49, column: 10, scope: !3972)
!3981 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !3980)
!3982 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !3980)
!3983 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !3980)
!3984 = !DILocation(line: 49, column: 3, scope: !3972)
!3985 = distinct !DISubprogram(name: "ximalloc", scope: !382, file: !382, line: 53, type: !3986, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !3988)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!45, !401}
!3988 = !{!3989}
!3989 = !DILocalVariable(name: "s", arg: 1, scope: !3985, file: !382, line: 53, type: !401)
!3990 = !DILocation(line: 0, scope: !3985)
!3991 = !DILocalVariable(name: "s", arg: 1, scope: !3992, file: !3993, line: 55, type: !401)
!3992 = distinct !DISubprogram(name: "imalloc", scope: !3993, file: !3993, line: 55, type: !3986, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !3994)
!3993 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3994 = !{!3991}
!3995 = !DILocation(line: 0, scope: !3992, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 55, column: 25, scope: !3985)
!3997 = !DILocation(line: 57, column: 26, scope: !3992, inlinedAt: !3996)
!3998 = !DILocation(line: 0, scope: !3953, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 55, column: 10, scope: !3985)
!4000 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !3999)
!4001 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !3999)
!4002 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !3999)
!4003 = !DILocation(line: 55, column: 3, scope: !3985)
!4004 = distinct !DISubprogram(name: "xcharalloc", scope: !382, file: !382, line: 59, type: !4005, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4007)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!43, !48}
!4007 = !{!4008}
!4008 = !DILocalVariable(name: "n", arg: 1, scope: !4004, file: !382, line: 59, type: !48)
!4009 = !DILocation(line: 0, scope: !4004)
!4010 = !DILocation(line: 0, scope: !3972, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 61, column: 10, scope: !4004)
!4012 = !DILocation(line: 49, column: 25, scope: !3972, inlinedAt: !4011)
!4013 = !DILocation(line: 0, scope: !3953, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 49, column: 10, scope: !3972, inlinedAt: !4011)
!4015 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !4014)
!4016 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !4014)
!4017 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !4014)
!4018 = !DILocation(line: 61, column: 3, scope: !4004)
!4019 = distinct !DISubprogram(name: "xrealloc", scope: !382, file: !382, line: 68, type: !4020, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4022)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!45, !45, !48}
!4022 = !{!4023, !4024}
!4023 = !DILocalVariable(name: "p", arg: 1, scope: !4019, file: !382, line: 68, type: !45)
!4024 = !DILocalVariable(name: "s", arg: 2, scope: !4019, file: !382, line: 68, type: !48)
!4025 = !DILocation(line: 0, scope: !4019)
!4026 = !DILocalVariable(name: "ptr", arg: 1, scope: !4027, file: !4028, line: 2057, type: !45)
!4027 = distinct !DISubprogram(name: "rpl_realloc", scope: !4028, file: !4028, line: 2057, type: !4020, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4029)
!4028 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4029 = !{!4026, !4030}
!4030 = !DILocalVariable(name: "size", arg: 2, scope: !4027, file: !4028, line: 2057, type: !48)
!4031 = !DILocation(line: 0, scope: !4027, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 70, column: 25, scope: !4019)
!4033 = !DILocation(line: 2059, column: 24, scope: !4027, inlinedAt: !4032)
!4034 = !DILocation(line: 2059, column: 10, scope: !4027, inlinedAt: !4032)
!4035 = !DILocation(line: 0, scope: !3953, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 70, column: 10, scope: !4019)
!4037 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !4036)
!4038 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !4036)
!4039 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !4036)
!4040 = !DILocation(line: 70, column: 3, scope: !4019)
!4041 = distinct !DISubprogram(name: "xirealloc", scope: !382, file: !382, line: 74, type: !4042, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4044)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!45, !45, !401}
!4044 = !{!4045, !4046}
!4045 = !DILocalVariable(name: "p", arg: 1, scope: !4041, file: !382, line: 74, type: !45)
!4046 = !DILocalVariable(name: "s", arg: 2, scope: !4041, file: !382, line: 74, type: !401)
!4047 = !DILocation(line: 0, scope: !4041)
!4048 = !DILocalVariable(name: "p", arg: 1, scope: !4049, file: !3993, line: 66, type: !45)
!4049 = distinct !DISubprogram(name: "irealloc", scope: !3993, file: !3993, line: 66, type: !4042, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4050)
!4050 = !{!4048, !4051}
!4051 = !DILocalVariable(name: "s", arg: 2, scope: !4049, file: !3993, line: 66, type: !401)
!4052 = !DILocation(line: 0, scope: !4049, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 76, column: 25, scope: !4041)
!4054 = !DILocation(line: 0, scope: !4027, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 68, column: 26, scope: !4049, inlinedAt: !4053)
!4056 = !DILocation(line: 2059, column: 24, scope: !4027, inlinedAt: !4055)
!4057 = !DILocation(line: 2059, column: 10, scope: !4027, inlinedAt: !4055)
!4058 = !DILocation(line: 0, scope: !3953, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 76, column: 10, scope: !4041)
!4060 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !4059)
!4061 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !4059)
!4062 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !4059)
!4063 = !DILocation(line: 76, column: 3, scope: !4041)
!4064 = distinct !DISubprogram(name: "xireallocarray", scope: !382, file: !382, line: 89, type: !4065, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4067)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!45, !45, !401, !401}
!4067 = !{!4068, !4069, !4070}
!4068 = !DILocalVariable(name: "p", arg: 1, scope: !4064, file: !382, line: 89, type: !45)
!4069 = !DILocalVariable(name: "n", arg: 2, scope: !4064, file: !382, line: 89, type: !401)
!4070 = !DILocalVariable(name: "s", arg: 3, scope: !4064, file: !382, line: 89, type: !401)
!4071 = !DILocation(line: 0, scope: !4064)
!4072 = !DILocalVariable(name: "p", arg: 1, scope: !4073, file: !3993, line: 98, type: !45)
!4073 = distinct !DISubprogram(name: "ireallocarray", scope: !3993, file: !3993, line: 98, type: !4065, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4074)
!4074 = !{!4072, !4075, !4076}
!4075 = !DILocalVariable(name: "n", arg: 2, scope: !4073, file: !3993, line: 98, type: !401)
!4076 = !DILocalVariable(name: "s", arg: 3, scope: !4073, file: !3993, line: 98, type: !401)
!4077 = !DILocation(line: 0, scope: !4073, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 91, column: 25, scope: !4064)
!4079 = !DILocation(line: 101, column: 13, scope: !4073, inlinedAt: !4078)
!4080 = !DILocation(line: 0, scope: !3953, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 91, column: 10, scope: !4064)
!4082 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !4081)
!4083 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !4081)
!4084 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !4081)
!4085 = !DILocation(line: 91, column: 3, scope: !4064)
!4086 = distinct !DISubprogram(name: "xnmalloc", scope: !382, file: !382, line: 98, type: !4087, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4089)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!45, !48, !48}
!4089 = !{!4090, !4091}
!4090 = !DILocalVariable(name: "n", arg: 1, scope: !4086, file: !382, line: 98, type: !48)
!4091 = !DILocalVariable(name: "s", arg: 2, scope: !4086, file: !382, line: 98, type: !48)
!4092 = !DILocation(line: 0, scope: !4086)
!4093 = !DILocation(line: 0, scope: !3945, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 100, column: 10, scope: !4086)
!4095 = !DILocation(line: 85, column: 25, scope: !3945, inlinedAt: !4094)
!4096 = !DILocation(line: 0, scope: !3953, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 85, column: 10, scope: !3945, inlinedAt: !4094)
!4098 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !4097)
!4099 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !4097)
!4100 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !4097)
!4101 = !DILocation(line: 100, column: 3, scope: !4086)
!4102 = distinct !DISubprogram(name: "xinmalloc", scope: !382, file: !382, line: 104, type: !4103, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4105)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!45, !401, !401}
!4105 = !{!4106, !4107}
!4106 = !DILocalVariable(name: "n", arg: 1, scope: !4102, file: !382, line: 104, type: !401)
!4107 = !DILocalVariable(name: "s", arg: 2, scope: !4102, file: !382, line: 104, type: !401)
!4108 = !DILocation(line: 0, scope: !4102)
!4109 = !DILocation(line: 0, scope: !4064, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 106, column: 10, scope: !4102)
!4111 = !DILocation(line: 0, scope: !4073, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 91, column: 25, scope: !4064, inlinedAt: !4110)
!4113 = !DILocation(line: 101, column: 13, scope: !4073, inlinedAt: !4112)
!4114 = !DILocation(line: 0, scope: !3953, inlinedAt: !4115)
!4115 = distinct !DILocation(line: 91, column: 10, scope: !4064, inlinedAt: !4110)
!4116 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !4115)
!4117 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !4115)
!4118 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !4115)
!4119 = !DILocation(line: 106, column: 3, scope: !4102)
!4120 = distinct !DISubprogram(name: "x2realloc", scope: !382, file: !382, line: 116, type: !4121, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4123)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!45, !45, !388}
!4123 = !{!4124, !4125}
!4124 = !DILocalVariable(name: "p", arg: 1, scope: !4120, file: !382, line: 116, type: !45)
!4125 = !DILocalVariable(name: "ps", arg: 2, scope: !4120, file: !382, line: 116, type: !388)
!4126 = !DILocation(line: 0, scope: !4120)
!4127 = !DILocation(line: 0, scope: !385, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 118, column: 10, scope: !4120)
!4129 = !DILocation(line: 178, column: 14, scope: !385, inlinedAt: !4128)
!4130 = !DILocation(line: 180, column: 9, scope: !4131, inlinedAt: !4128)
!4131 = distinct !DILexicalBlock(scope: !385, file: !382, line: 180, column: 7)
!4132 = !DILocation(line: 180, column: 7, scope: !385, inlinedAt: !4128)
!4133 = !DILocation(line: 182, column: 13, scope: !4134, inlinedAt: !4128)
!4134 = distinct !DILexicalBlock(scope: !4135, file: !382, line: 182, column: 11)
!4135 = distinct !DILexicalBlock(scope: !4131, file: !382, line: 181, column: 5)
!4136 = !DILocation(line: 182, column: 11, scope: !4135, inlinedAt: !4128)
!4137 = !DILocation(line: 197, column: 11, scope: !4138, inlinedAt: !4128)
!4138 = distinct !DILexicalBlock(scope: !4139, file: !382, line: 197, column: 11)
!4139 = distinct !DILexicalBlock(scope: !4131, file: !382, line: 195, column: 5)
!4140 = !DILocation(line: 197, column: 11, scope: !4139, inlinedAt: !4128)
!4141 = !DILocation(line: 198, column: 9, scope: !4138, inlinedAt: !4128)
!4142 = !DILocation(line: 0, scope: !3945, inlinedAt: !4143)
!4143 = distinct !DILocation(line: 201, column: 7, scope: !385, inlinedAt: !4128)
!4144 = !DILocation(line: 85, column: 25, scope: !3945, inlinedAt: !4143)
!4145 = !DILocation(line: 0, scope: !3953, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 85, column: 10, scope: !3945, inlinedAt: !4143)
!4147 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !4146)
!4148 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !4146)
!4149 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !4146)
!4150 = !DILocation(line: 202, column: 7, scope: !385, inlinedAt: !4128)
!4151 = !DILocation(line: 118, column: 3, scope: !4120)
!4152 = !DILocation(line: 0, scope: !385)
!4153 = !DILocation(line: 178, column: 14, scope: !385)
!4154 = !DILocation(line: 180, column: 9, scope: !4131)
!4155 = !DILocation(line: 180, column: 7, scope: !385)
!4156 = !DILocation(line: 182, column: 13, scope: !4134)
!4157 = !DILocation(line: 182, column: 11, scope: !4135)
!4158 = !DILocation(line: 190, column: 30, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4134, file: !382, line: 183, column: 9)
!4160 = !DILocation(line: 191, column: 16, scope: !4159)
!4161 = !DILocation(line: 191, column: 13, scope: !4159)
!4162 = !DILocation(line: 192, column: 9, scope: !4159)
!4163 = !DILocation(line: 197, column: 11, scope: !4138)
!4164 = !DILocation(line: 197, column: 11, scope: !4139)
!4165 = !DILocation(line: 198, column: 9, scope: !4138)
!4166 = !DILocation(line: 0, scope: !3945, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 201, column: 7, scope: !385)
!4168 = !DILocation(line: 85, column: 25, scope: !3945, inlinedAt: !4167)
!4169 = !DILocation(line: 0, scope: !3953, inlinedAt: !4170)
!4170 = distinct !DILocation(line: 85, column: 10, scope: !3945, inlinedAt: !4167)
!4171 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !4170)
!4172 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !4170)
!4173 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !4170)
!4174 = !DILocation(line: 202, column: 7, scope: !385)
!4175 = !DILocation(line: 203, column: 3, scope: !385)
!4176 = !DILocation(line: 0, scope: !397)
!4177 = !DILocation(line: 230, column: 14, scope: !397)
!4178 = !DILocation(line: 238, column: 7, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !397, file: !382, line: 238, column: 7)
!4180 = !DILocation(line: 238, column: 7, scope: !397)
!4181 = !DILocation(line: 240, column: 9, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !397, file: !382, line: 240, column: 7)
!4183 = !DILocation(line: 240, column: 18, scope: !4182)
!4184 = !DILocation(line: 253, column: 8, scope: !397)
!4185 = !DILocation(line: 258, column: 27, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4187, file: !382, line: 257, column: 5)
!4187 = distinct !DILexicalBlock(scope: !397, file: !382, line: 256, column: 7)
!4188 = !DILocation(line: 259, column: 32, scope: !4186)
!4189 = !DILocation(line: 260, column: 5, scope: !4186)
!4190 = !DILocation(line: 262, column: 9, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !397, file: !382, line: 262, column: 7)
!4192 = !DILocation(line: 262, column: 7, scope: !397)
!4193 = !DILocation(line: 263, column: 9, scope: !4191)
!4194 = !DILocation(line: 263, column: 5, scope: !4191)
!4195 = !DILocation(line: 264, column: 9, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !397, file: !382, line: 264, column: 7)
!4197 = !DILocation(line: 264, column: 14, scope: !4196)
!4198 = !DILocation(line: 265, column: 7, scope: !4196)
!4199 = !DILocation(line: 265, column: 11, scope: !4196)
!4200 = !DILocation(line: 266, column: 11, scope: !4196)
!4201 = !DILocation(line: 266, column: 26, scope: !4196)
!4202 = !DILocation(line: 267, column: 14, scope: !4196)
!4203 = !DILocation(line: 264, column: 7, scope: !397)
!4204 = !DILocation(line: 268, column: 5, scope: !4196)
!4205 = !DILocation(line: 0, scope: !4019, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 269, column: 8, scope: !397)
!4207 = !DILocation(line: 0, scope: !4027, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 70, column: 25, scope: !4019, inlinedAt: !4206)
!4209 = !DILocation(line: 2059, column: 24, scope: !4027, inlinedAt: !4208)
!4210 = !DILocation(line: 2059, column: 10, scope: !4027, inlinedAt: !4208)
!4211 = !DILocation(line: 0, scope: !3953, inlinedAt: !4212)
!4212 = distinct !DILocation(line: 70, column: 10, scope: !4019, inlinedAt: !4206)
!4213 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !4212)
!4214 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !4212)
!4215 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !4212)
!4216 = !DILocation(line: 270, column: 7, scope: !397)
!4217 = !DILocation(line: 271, column: 3, scope: !397)
!4218 = distinct !DISubprogram(name: "xzalloc", scope: !382, file: !382, line: 279, type: !3973, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4219)
!4219 = !{!4220}
!4220 = !DILocalVariable(name: "s", arg: 1, scope: !4218, file: !382, line: 279, type: !48)
!4221 = !DILocation(line: 0, scope: !4218)
!4222 = !DILocalVariable(name: "n", arg: 1, scope: !4223, file: !382, line: 294, type: !48)
!4223 = distinct !DISubprogram(name: "xcalloc", scope: !382, file: !382, line: 294, type: !4087, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4224)
!4224 = !{!4222, !4225}
!4225 = !DILocalVariable(name: "s", arg: 2, scope: !4223, file: !382, line: 294, type: !48)
!4226 = !DILocation(line: 0, scope: !4223, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 281, column: 10, scope: !4218)
!4228 = !DILocation(line: 296, column: 25, scope: !4223, inlinedAt: !4227)
!4229 = !DILocation(line: 0, scope: !3953, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 296, column: 10, scope: !4223, inlinedAt: !4227)
!4231 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !4230)
!4232 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !4230)
!4233 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !4230)
!4234 = !DILocation(line: 281, column: 3, scope: !4218)
!4235 = !DILocation(line: 0, scope: !4223)
!4236 = !DILocation(line: 296, column: 25, scope: !4223)
!4237 = !DILocation(line: 0, scope: !3953, inlinedAt: !4238)
!4238 = distinct !DILocation(line: 296, column: 10, scope: !4223)
!4239 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !4238)
!4240 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !4238)
!4241 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !4238)
!4242 = !DILocation(line: 296, column: 3, scope: !4223)
!4243 = distinct !DISubprogram(name: "xizalloc", scope: !382, file: !382, line: 285, type: !3986, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4244)
!4244 = !{!4245}
!4245 = !DILocalVariable(name: "s", arg: 1, scope: !4243, file: !382, line: 285, type: !401)
!4246 = !DILocation(line: 0, scope: !4243)
!4247 = !DILocalVariable(name: "n", arg: 1, scope: !4248, file: !382, line: 300, type: !401)
!4248 = distinct !DISubprogram(name: "xicalloc", scope: !382, file: !382, line: 300, type: !4103, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4249)
!4249 = !{!4247, !4250}
!4250 = !DILocalVariable(name: "s", arg: 2, scope: !4248, file: !382, line: 300, type: !401)
!4251 = !DILocation(line: 0, scope: !4248, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 287, column: 10, scope: !4243)
!4253 = !DILocalVariable(name: "n", arg: 1, scope: !4254, file: !3993, line: 77, type: !401)
!4254 = distinct !DISubprogram(name: "icalloc", scope: !3993, file: !3993, line: 77, type: !4103, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4255)
!4255 = !{!4253, !4256}
!4256 = !DILocalVariable(name: "s", arg: 2, scope: !4254, file: !3993, line: 77, type: !401)
!4257 = !DILocation(line: 0, scope: !4254, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 302, column: 25, scope: !4248, inlinedAt: !4252)
!4259 = !DILocation(line: 91, column: 10, scope: !4254, inlinedAt: !4258)
!4260 = !DILocation(line: 0, scope: !3953, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 302, column: 10, scope: !4248, inlinedAt: !4252)
!4262 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !4261)
!4263 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !4261)
!4264 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !4261)
!4265 = !DILocation(line: 287, column: 3, scope: !4243)
!4266 = !DILocation(line: 0, scope: !4248)
!4267 = !DILocation(line: 0, scope: !4254, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 302, column: 25, scope: !4248)
!4269 = !DILocation(line: 91, column: 10, scope: !4254, inlinedAt: !4268)
!4270 = !DILocation(line: 0, scope: !3953, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 302, column: 10, scope: !4248)
!4272 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !4271)
!4273 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !4271)
!4274 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !4271)
!4275 = !DILocation(line: 302, column: 3, scope: !4248)
!4276 = distinct !DISubprogram(name: "xmemdup", scope: !382, file: !382, line: 310, type: !4277, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4279)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!45, !686, !48}
!4279 = !{!4280, !4281}
!4280 = !DILocalVariable(name: "p", arg: 1, scope: !4276, file: !382, line: 310, type: !686)
!4281 = !DILocalVariable(name: "s", arg: 2, scope: !4276, file: !382, line: 310, type: !48)
!4282 = !DILocation(line: 0, scope: !4276)
!4283 = !DILocation(line: 0, scope: !3972, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 312, column: 18, scope: !4276)
!4285 = !DILocation(line: 49, column: 25, scope: !3972, inlinedAt: !4284)
!4286 = !DILocation(line: 0, scope: !3953, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 49, column: 10, scope: !3972, inlinedAt: !4284)
!4288 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !4287)
!4289 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !4287)
!4290 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !4287)
!4291 = !DILocalVariable(name: "__dest", arg: 1, scope: !4292, file: !2261, line: 26, type: !4295)
!4292 = distinct !DISubprogram(name: "memcpy", scope: !2261, file: !2261, line: 26, type: !4293, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4296)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!45, !4295, !685, !48}
!4295 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!4296 = !{!4291, !4297, !4298}
!4297 = !DILocalVariable(name: "__src", arg: 2, scope: !4292, file: !2261, line: 26, type: !685)
!4298 = !DILocalVariable(name: "__len", arg: 3, scope: !4292, file: !2261, line: 26, type: !48)
!4299 = !DILocation(line: 0, scope: !4292, inlinedAt: !4300)
!4300 = distinct !DILocation(line: 312, column: 10, scope: !4276)
!4301 = !DILocation(line: 29, column: 10, scope: !4292, inlinedAt: !4300)
!4302 = !DILocation(line: 312, column: 3, scope: !4276)
!4303 = distinct !DISubprogram(name: "ximemdup", scope: !382, file: !382, line: 316, type: !4304, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4306)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!45, !686, !401}
!4306 = !{!4307, !4308}
!4307 = !DILocalVariable(name: "p", arg: 1, scope: !4303, file: !382, line: 316, type: !686)
!4308 = !DILocalVariable(name: "s", arg: 2, scope: !4303, file: !382, line: 316, type: !401)
!4309 = !DILocation(line: 0, scope: !4303)
!4310 = !DILocation(line: 0, scope: !3985, inlinedAt: !4311)
!4311 = distinct !DILocation(line: 318, column: 18, scope: !4303)
!4312 = !DILocation(line: 0, scope: !3992, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 55, column: 25, scope: !3985, inlinedAt: !4311)
!4314 = !DILocation(line: 57, column: 26, scope: !3992, inlinedAt: !4313)
!4315 = !DILocation(line: 0, scope: !3953, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 55, column: 10, scope: !3985, inlinedAt: !4311)
!4317 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !4316)
!4318 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !4316)
!4319 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !4316)
!4320 = !DILocation(line: 0, scope: !4292, inlinedAt: !4321)
!4321 = distinct !DILocation(line: 318, column: 10, scope: !4303)
!4322 = !DILocation(line: 29, column: 10, scope: !4292, inlinedAt: !4321)
!4323 = !DILocation(line: 318, column: 3, scope: !4303)
!4324 = distinct !DISubprogram(name: "ximemdup0", scope: !382, file: !382, line: 325, type: !4325, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4327)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!43, !686, !401}
!4327 = !{!4328, !4329, !4330}
!4328 = !DILocalVariable(name: "p", arg: 1, scope: !4324, file: !382, line: 325, type: !686)
!4329 = !DILocalVariable(name: "s", arg: 2, scope: !4324, file: !382, line: 325, type: !401)
!4330 = !DILocalVariable(name: "result", scope: !4324, file: !382, line: 327, type: !43)
!4331 = !DILocation(line: 0, scope: !4324)
!4332 = !DILocation(line: 327, column: 30, scope: !4324)
!4333 = !DILocation(line: 0, scope: !3985, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 327, column: 18, scope: !4324)
!4335 = !DILocation(line: 0, scope: !3992, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 55, column: 25, scope: !3985, inlinedAt: !4334)
!4337 = !DILocation(line: 57, column: 26, scope: !3992, inlinedAt: !4336)
!4338 = !DILocation(line: 0, scope: !3953, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 55, column: 10, scope: !3985, inlinedAt: !4334)
!4340 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !4339)
!4341 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !4339)
!4342 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !4339)
!4343 = !DILocation(line: 328, column: 3, scope: !4324)
!4344 = !DILocation(line: 328, column: 13, scope: !4324)
!4345 = !DILocation(line: 0, scope: !4292, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 329, column: 10, scope: !4324)
!4347 = !DILocation(line: 29, column: 10, scope: !4292, inlinedAt: !4346)
!4348 = !DILocation(line: 329, column: 3, scope: !4324)
!4349 = distinct !DISubprogram(name: "xstrdup", scope: !382, file: !382, line: 335, type: !680, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !381, retainedNodes: !4350)
!4350 = !{!4351}
!4351 = !DILocalVariable(name: "string", arg: 1, scope: !4349, file: !382, line: 335, type: !51)
!4352 = !DILocation(line: 0, scope: !4349)
!4353 = !DILocation(line: 337, column: 27, scope: !4349)
!4354 = !DILocation(line: 337, column: 43, scope: !4349)
!4355 = !DILocation(line: 0, scope: !4276, inlinedAt: !4356)
!4356 = distinct !DILocation(line: 337, column: 10, scope: !4349)
!4357 = !DILocation(line: 0, scope: !3972, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 312, column: 18, scope: !4276, inlinedAt: !4356)
!4359 = !DILocation(line: 49, column: 25, scope: !3972, inlinedAt: !4358)
!4360 = !DILocation(line: 0, scope: !3953, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 49, column: 10, scope: !3972, inlinedAt: !4358)
!4362 = !DILocation(line: 39, column: 8, scope: !3960, inlinedAt: !4361)
!4363 = !DILocation(line: 39, column: 7, scope: !3953, inlinedAt: !4361)
!4364 = !DILocation(line: 40, column: 5, scope: !3960, inlinedAt: !4361)
!4365 = !DILocation(line: 0, scope: !4292, inlinedAt: !4366)
!4366 = distinct !DILocation(line: 312, column: 10, scope: !4276, inlinedAt: !4356)
!4367 = !DILocation(line: 29, column: 10, scope: !4292, inlinedAt: !4366)
!4368 = !DILocation(line: 337, column: 3, scope: !4349)
!4369 = distinct !DISubprogram(name: "xalloc_die", scope: !416, file: !416, line: 32, type: !201, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !4370)
!4370 = !{!4371}
!4371 = !DILocalVariable(name: "__errstatus", scope: !4372, file: !416, line: 34, type: !4373)
!4372 = distinct !DILexicalBlock(scope: !4369, file: !416, line: 34, column: 3)
!4373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!4374 = !DILocation(line: 34, column: 3, scope: !4372)
!4375 = !DILocation(line: 0, scope: !4372)
!4376 = !DILocation(line: 40, column: 3, scope: !4369)
!4377 = distinct !DISubprogram(name: "close_stream", scope: !418, file: !418, line: 55, type: !4378, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !4414)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!46, !4380}
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !92, line: 7, baseType: !4382)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !94, line: 49, size: 1728, elements: !4383)
!4383 = !{!4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4382, file: !94, line: 51, baseType: !46, size: 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4382, file: !94, line: 54, baseType: !43, size: 64, offset: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4382, file: !94, line: 55, baseType: !43, size: 64, offset: 128)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4382, file: !94, line: 56, baseType: !43, size: 64, offset: 192)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4382, file: !94, line: 57, baseType: !43, size: 64, offset: 256)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4382, file: !94, line: 58, baseType: !43, size: 64, offset: 320)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4382, file: !94, line: 59, baseType: !43, size: 64, offset: 384)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4382, file: !94, line: 60, baseType: !43, size: 64, offset: 448)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4382, file: !94, line: 61, baseType: !43, size: 64, offset: 512)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4382, file: !94, line: 64, baseType: !43, size: 64, offset: 576)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4382, file: !94, line: 65, baseType: !43, size: 64, offset: 640)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4382, file: !94, line: 66, baseType: !43, size: 64, offset: 704)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4382, file: !94, line: 68, baseType: !109, size: 64, offset: 768)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4382, file: !94, line: 70, baseType: !4398, size: 64, offset: 832)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4382, file: !94, line: 72, baseType: !46, size: 32, offset: 896)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4382, file: !94, line: 73, baseType: !46, size: 32, offset: 928)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4382, file: !94, line: 74, baseType: !116, size: 64, offset: 960)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4382, file: !94, line: 77, baseType: !47, size: 16, offset: 1024)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4382, file: !94, line: 78, baseType: !119, size: 8, offset: 1040)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4382, file: !94, line: 79, baseType: !121, size: 8, offset: 1048)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4382, file: !94, line: 81, baseType: !125, size: 64, offset: 1088)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4382, file: !94, line: 89, baseType: !128, size: 64, offset: 1152)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4382, file: !94, line: 91, baseType: !130, size: 64, offset: 1216)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4382, file: !94, line: 92, baseType: !133, size: 64, offset: 1280)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4382, file: !94, line: 93, baseType: !4398, size: 64, offset: 1344)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4382, file: !94, line: 94, baseType: !45, size: 64, offset: 1408)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4382, file: !94, line: 95, baseType: !48, size: 64, offset: 1472)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4382, file: !94, line: 96, baseType: !46, size: 32, offset: 1536)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4382, file: !94, line: 98, baseType: !140, size: 160, offset: 1568)
!4414 = !{!4415, !4416, !4418, !4419}
!4415 = !DILocalVariable(name: "stream", arg: 1, scope: !4377, file: !418, line: 55, type: !4380)
!4416 = !DILocalVariable(name: "some_pending", scope: !4377, file: !418, line: 57, type: !4417)
!4417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!4418 = !DILocalVariable(name: "prev_fail", scope: !4377, file: !418, line: 58, type: !4417)
!4419 = !DILocalVariable(name: "fclose_fail", scope: !4377, file: !418, line: 59, type: !4417)
!4420 = !DILocation(line: 0, scope: !4377)
!4421 = !DILocation(line: 57, column: 30, scope: !4377)
!4422 = !DILocalVariable(name: "__stream", arg: 1, scope: !4423, file: !2089, line: 135, type: !4380)
!4423 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2089, file: !2089, line: 135, type: !4378, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !4424)
!4424 = !{!4422}
!4425 = !DILocation(line: 0, scope: !4423, inlinedAt: !4426)
!4426 = distinct !DILocation(line: 58, column: 27, scope: !4377)
!4427 = !DILocation(line: 137, column: 10, scope: !4423, inlinedAt: !4426)
!4428 = !{!2098, !587, i64 0}
!4429 = !DILocation(line: 58, column: 43, scope: !4377)
!4430 = !DILocation(line: 59, column: 29, scope: !4377)
!4431 = !DILocation(line: 59, column: 45, scope: !4377)
!4432 = !DILocation(line: 69, column: 17, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4377, file: !418, line: 69, column: 7)
!4434 = !DILocation(line: 57, column: 50, scope: !4377)
!4435 = !DILocation(line: 69, column: 33, scope: !4433)
!4436 = !DILocation(line: 69, column: 53, scope: !4433)
!4437 = !DILocation(line: 69, column: 59, scope: !4433)
!4438 = !DILocation(line: 69, column: 7, scope: !4377)
!4439 = !DILocation(line: 71, column: 11, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4433, file: !418, line: 70, column: 5)
!4441 = !DILocation(line: 72, column: 9, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4440, file: !418, line: 71, column: 11)
!4443 = !DILocation(line: 72, column: 15, scope: !4442)
!4444 = !DILocation(line: 77, column: 1, scope: !4377)
!4445 = distinct !DISubprogram(name: "rpl_fclose", scope: !420, file: !420, line: 58, type: !4446, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4482)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!46, !4448}
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !92, line: 7, baseType: !4450)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !94, line: 49, size: 1728, elements: !4451)
!4451 = !{!4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4450, file: !94, line: 51, baseType: !46, size: 32)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4450, file: !94, line: 54, baseType: !43, size: 64, offset: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4450, file: !94, line: 55, baseType: !43, size: 64, offset: 128)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4450, file: !94, line: 56, baseType: !43, size: 64, offset: 192)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4450, file: !94, line: 57, baseType: !43, size: 64, offset: 256)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4450, file: !94, line: 58, baseType: !43, size: 64, offset: 320)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4450, file: !94, line: 59, baseType: !43, size: 64, offset: 384)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4450, file: !94, line: 60, baseType: !43, size: 64, offset: 448)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4450, file: !94, line: 61, baseType: !43, size: 64, offset: 512)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4450, file: !94, line: 64, baseType: !43, size: 64, offset: 576)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4450, file: !94, line: 65, baseType: !43, size: 64, offset: 640)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4450, file: !94, line: 66, baseType: !43, size: 64, offset: 704)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4450, file: !94, line: 68, baseType: !109, size: 64, offset: 768)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4450, file: !94, line: 70, baseType: !4466, size: 64, offset: 832)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4450, file: !94, line: 72, baseType: !46, size: 32, offset: 896)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4450, file: !94, line: 73, baseType: !46, size: 32, offset: 928)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4450, file: !94, line: 74, baseType: !116, size: 64, offset: 960)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4450, file: !94, line: 77, baseType: !47, size: 16, offset: 1024)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4450, file: !94, line: 78, baseType: !119, size: 8, offset: 1040)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4450, file: !94, line: 79, baseType: !121, size: 8, offset: 1048)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4450, file: !94, line: 81, baseType: !125, size: 64, offset: 1088)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4450, file: !94, line: 89, baseType: !128, size: 64, offset: 1152)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4450, file: !94, line: 91, baseType: !130, size: 64, offset: 1216)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4450, file: !94, line: 92, baseType: !133, size: 64, offset: 1280)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4450, file: !94, line: 93, baseType: !4466, size: 64, offset: 1344)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4450, file: !94, line: 94, baseType: !45, size: 64, offset: 1408)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4450, file: !94, line: 95, baseType: !48, size: 64, offset: 1472)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4450, file: !94, line: 96, baseType: !46, size: 32, offset: 1536)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4450, file: !94, line: 98, baseType: !140, size: 160, offset: 1568)
!4482 = !{!4483, !4484, !4485, !4486}
!4483 = !DILocalVariable(name: "fp", arg: 1, scope: !4445, file: !420, line: 58, type: !4448)
!4484 = !DILocalVariable(name: "saved_errno", scope: !4445, file: !420, line: 60, type: !46)
!4485 = !DILocalVariable(name: "fd", scope: !4445, file: !420, line: 63, type: !46)
!4486 = !DILocalVariable(name: "result", scope: !4445, file: !420, line: 74, type: !46)
!4487 = !DILocation(line: 0, scope: !4445)
!4488 = !DILocation(line: 63, column: 12, scope: !4445)
!4489 = !DILocation(line: 64, column: 10, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4445, file: !420, line: 64, column: 7)
!4491 = !DILocation(line: 64, column: 7, scope: !4445)
!4492 = !DILocation(line: 65, column: 12, scope: !4490)
!4493 = !DILocation(line: 65, column: 5, scope: !4490)
!4494 = !DILocation(line: 70, column: 9, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4445, file: !420, line: 70, column: 7)
!4496 = !DILocation(line: 70, column: 23, scope: !4495)
!4497 = !DILocation(line: 70, column: 33, scope: !4495)
!4498 = !DILocation(line: 70, column: 26, scope: !4495)
!4499 = !DILocation(line: 70, column: 59, scope: !4495)
!4500 = !DILocation(line: 71, column: 7, scope: !4495)
!4501 = !DILocation(line: 71, column: 10, scope: !4495)
!4502 = !DILocation(line: 70, column: 7, scope: !4445)
!4503 = !DILocation(line: 100, column: 12, scope: !4445)
!4504 = !DILocation(line: 105, column: 7, scope: !4445)
!4505 = !DILocation(line: 72, column: 19, scope: !4495)
!4506 = !DILocation(line: 105, column: 19, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4445, file: !420, line: 105, column: 7)
!4508 = !DILocation(line: 107, column: 13, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4507, file: !420, line: 106, column: 5)
!4510 = !DILocation(line: 109, column: 5, scope: !4509)
!4511 = !DILocation(line: 112, column: 1, scope: !4445)
!4512 = !DISubprogram(name: "fileno", scope: !174, file: !174, line: 809, type: !4446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!4513 = !DISubprogram(name: "fclose", scope: !174, file: !174, line: 178, type: !4446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!4514 = !DISubprogram(name: "lseek", scope: !1908, file: !1908, line: 339, type: !4515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!116, !46, !116, !46}
!4517 = distinct !DISubprogram(name: "rpl_fflush", scope: !422, file: !422, line: 130, type: !4518, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !4554)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!46, !4520}
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !92, line: 7, baseType: !4522)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !94, line: 49, size: 1728, elements: !4523)
!4523 = !{!4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4522, file: !94, line: 51, baseType: !46, size: 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4522, file: !94, line: 54, baseType: !43, size: 64, offset: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4522, file: !94, line: 55, baseType: !43, size: 64, offset: 128)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4522, file: !94, line: 56, baseType: !43, size: 64, offset: 192)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4522, file: !94, line: 57, baseType: !43, size: 64, offset: 256)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4522, file: !94, line: 58, baseType: !43, size: 64, offset: 320)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4522, file: !94, line: 59, baseType: !43, size: 64, offset: 384)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4522, file: !94, line: 60, baseType: !43, size: 64, offset: 448)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4522, file: !94, line: 61, baseType: !43, size: 64, offset: 512)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4522, file: !94, line: 64, baseType: !43, size: 64, offset: 576)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4522, file: !94, line: 65, baseType: !43, size: 64, offset: 640)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4522, file: !94, line: 66, baseType: !43, size: 64, offset: 704)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4522, file: !94, line: 68, baseType: !109, size: 64, offset: 768)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4522, file: !94, line: 70, baseType: !4538, size: 64, offset: 832)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4522, file: !94, line: 72, baseType: !46, size: 32, offset: 896)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4522, file: !94, line: 73, baseType: !46, size: 32, offset: 928)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4522, file: !94, line: 74, baseType: !116, size: 64, offset: 960)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4522, file: !94, line: 77, baseType: !47, size: 16, offset: 1024)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4522, file: !94, line: 78, baseType: !119, size: 8, offset: 1040)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4522, file: !94, line: 79, baseType: !121, size: 8, offset: 1048)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4522, file: !94, line: 81, baseType: !125, size: 64, offset: 1088)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4522, file: !94, line: 89, baseType: !128, size: 64, offset: 1152)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4522, file: !94, line: 91, baseType: !130, size: 64, offset: 1216)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4522, file: !94, line: 92, baseType: !133, size: 64, offset: 1280)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4522, file: !94, line: 93, baseType: !4538, size: 64, offset: 1344)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4522, file: !94, line: 94, baseType: !45, size: 64, offset: 1408)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4522, file: !94, line: 95, baseType: !48, size: 64, offset: 1472)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4522, file: !94, line: 96, baseType: !46, size: 32, offset: 1536)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4522, file: !94, line: 98, baseType: !140, size: 160, offset: 1568)
!4554 = !{!4555}
!4555 = !DILocalVariable(name: "stream", arg: 1, scope: !4517, file: !422, line: 130, type: !4520)
!4556 = !DILocation(line: 0, scope: !4517)
!4557 = !DILocation(line: 151, column: 14, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4517, file: !422, line: 151, column: 7)
!4559 = !DILocation(line: 151, column: 22, scope: !4558)
!4560 = !DILocation(line: 151, column: 27, scope: !4558)
!4561 = !DILocation(line: 151, column: 7, scope: !4517)
!4562 = !DILocation(line: 152, column: 12, scope: !4558)
!4563 = !DILocation(line: 152, column: 5, scope: !4558)
!4564 = !DILocalVariable(name: "fp", arg: 1, scope: !4565, file: !422, line: 42, type: !4520)
!4565 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !422, file: !422, line: 42, type: !4566, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !4568)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{null, !4520}
!4568 = !{!4564}
!4569 = !DILocation(line: 0, scope: !4565, inlinedAt: !4570)
!4570 = distinct !DILocation(line: 157, column: 3, scope: !4517)
!4571 = !DILocation(line: 44, column: 12, scope: !4572, inlinedAt: !4570)
!4572 = distinct !DILexicalBlock(scope: !4565, file: !422, line: 44, column: 7)
!4573 = !DILocation(line: 44, column: 19, scope: !4572, inlinedAt: !4570)
!4574 = !DILocation(line: 44, column: 7, scope: !4565, inlinedAt: !4570)
!4575 = !DILocation(line: 46, column: 5, scope: !4572, inlinedAt: !4570)
!4576 = !DILocation(line: 159, column: 10, scope: !4517)
!4577 = !DILocation(line: 159, column: 3, scope: !4517)
!4578 = !DILocation(line: 236, column: 1, scope: !4517)
!4579 = !DISubprogram(name: "fflush", scope: !174, file: !174, line: 230, type: !4518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!4580 = distinct !DISubprogram(name: "rpl_fseeko", scope: !424, file: !424, line: 28, type: !4581, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !4618)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!46, !4583, !4617, !46}
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !92, line: 7, baseType: !4585)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !94, line: 49, size: 1728, elements: !4586)
!4586 = !{!4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4585, file: !94, line: 51, baseType: !46, size: 32)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4585, file: !94, line: 54, baseType: !43, size: 64, offset: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4585, file: !94, line: 55, baseType: !43, size: 64, offset: 128)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4585, file: !94, line: 56, baseType: !43, size: 64, offset: 192)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4585, file: !94, line: 57, baseType: !43, size: 64, offset: 256)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4585, file: !94, line: 58, baseType: !43, size: 64, offset: 320)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4585, file: !94, line: 59, baseType: !43, size: 64, offset: 384)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4585, file: !94, line: 60, baseType: !43, size: 64, offset: 448)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4585, file: !94, line: 61, baseType: !43, size: 64, offset: 512)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4585, file: !94, line: 64, baseType: !43, size: 64, offset: 576)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4585, file: !94, line: 65, baseType: !43, size: 64, offset: 640)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4585, file: !94, line: 66, baseType: !43, size: 64, offset: 704)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4585, file: !94, line: 68, baseType: !109, size: 64, offset: 768)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4585, file: !94, line: 70, baseType: !4601, size: 64, offset: 832)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4585, file: !94, line: 72, baseType: !46, size: 32, offset: 896)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4585, file: !94, line: 73, baseType: !46, size: 32, offset: 928)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4585, file: !94, line: 74, baseType: !116, size: 64, offset: 960)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4585, file: !94, line: 77, baseType: !47, size: 16, offset: 1024)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4585, file: !94, line: 78, baseType: !119, size: 8, offset: 1040)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4585, file: !94, line: 79, baseType: !121, size: 8, offset: 1048)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4585, file: !94, line: 81, baseType: !125, size: 64, offset: 1088)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4585, file: !94, line: 89, baseType: !128, size: 64, offset: 1152)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4585, file: !94, line: 91, baseType: !130, size: 64, offset: 1216)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4585, file: !94, line: 92, baseType: !133, size: 64, offset: 1280)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4585, file: !94, line: 93, baseType: !4601, size: 64, offset: 1344)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4585, file: !94, line: 94, baseType: !45, size: 64, offset: 1408)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4585, file: !94, line: 95, baseType: !48, size: 64, offset: 1472)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4585, file: !94, line: 96, baseType: !46, size: 32, offset: 1536)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4585, file: !94, line: 98, baseType: !140, size: 160, offset: 1568)
!4617 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !174, line: 63, baseType: !116)
!4618 = !{!4619, !4620, !4621, !4622}
!4619 = !DILocalVariable(name: "fp", arg: 1, scope: !4580, file: !424, line: 28, type: !4583)
!4620 = !DILocalVariable(name: "offset", arg: 2, scope: !4580, file: !424, line: 28, type: !4617)
!4621 = !DILocalVariable(name: "whence", arg: 3, scope: !4580, file: !424, line: 28, type: !46)
!4622 = !DILocalVariable(name: "pos", scope: !4623, file: !424, line: 123, type: !4617)
!4623 = distinct !DILexicalBlock(scope: !4624, file: !424, line: 119, column: 5)
!4624 = distinct !DILexicalBlock(scope: !4580, file: !424, line: 55, column: 7)
!4625 = !DILocation(line: 0, scope: !4580)
!4626 = !DILocation(line: 55, column: 12, scope: !4624)
!4627 = !{!2098, !458, i64 16}
!4628 = !DILocation(line: 55, column: 33, scope: !4624)
!4629 = !{!2098, !458, i64 8}
!4630 = !DILocation(line: 55, column: 25, scope: !4624)
!4631 = !DILocation(line: 56, column: 7, scope: !4624)
!4632 = !DILocation(line: 56, column: 15, scope: !4624)
!4633 = !DILocation(line: 56, column: 37, scope: !4624)
!4634 = !{!2098, !458, i64 32}
!4635 = !DILocation(line: 56, column: 29, scope: !4624)
!4636 = !DILocation(line: 57, column: 7, scope: !4624)
!4637 = !DILocation(line: 57, column: 15, scope: !4624)
!4638 = !{!2098, !458, i64 72}
!4639 = !DILocation(line: 57, column: 29, scope: !4624)
!4640 = !DILocation(line: 55, column: 7, scope: !4580)
!4641 = !DILocation(line: 123, column: 26, scope: !4623)
!4642 = !DILocation(line: 123, column: 19, scope: !4623)
!4643 = !DILocation(line: 0, scope: !4623)
!4644 = !DILocation(line: 124, column: 15, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4623, file: !424, line: 124, column: 11)
!4646 = !DILocation(line: 124, column: 11, scope: !4623)
!4647 = !DILocation(line: 135, column: 12, scope: !4623)
!4648 = !DILocation(line: 135, column: 19, scope: !4623)
!4649 = !DILocation(line: 136, column: 12, scope: !4623)
!4650 = !DILocation(line: 136, column: 20, scope: !4623)
!4651 = !{!2098, !1112, i64 144}
!4652 = !DILocation(line: 167, column: 7, scope: !4623)
!4653 = !DILocation(line: 169, column: 10, scope: !4580)
!4654 = !DILocation(line: 169, column: 3, scope: !4580)
!4655 = !DILocation(line: 170, column: 1, scope: !4580)
!4656 = !DISubprogram(name: "fseeko", scope: !174, file: !174, line: 736, type: !4657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!46, !4583, !116, !46}
!4659 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !351, file: !351, line: 100, type: !4660, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4663)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!48, !2279, !51, !48, !4662}
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!4663 = !{!4664, !4665, !4666, !4667, !4668}
!4664 = !DILocalVariable(name: "pwc", arg: 1, scope: !4659, file: !351, line: 100, type: !2279)
!4665 = !DILocalVariable(name: "s", arg: 2, scope: !4659, file: !351, line: 100, type: !51)
!4666 = !DILocalVariable(name: "n", arg: 3, scope: !4659, file: !351, line: 100, type: !48)
!4667 = !DILocalVariable(name: "ps", arg: 4, scope: !4659, file: !351, line: 100, type: !4662)
!4668 = !DILocalVariable(name: "ret", scope: !4659, file: !351, line: 130, type: !48)
!4669 = !DILocation(line: 0, scope: !4659)
!4670 = !DILocation(line: 105, column: 9, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4659, file: !351, line: 105, column: 7)
!4672 = !DILocation(line: 105, column: 7, scope: !4659)
!4673 = !DILocation(line: 117, column: 10, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4659, file: !351, line: 117, column: 7)
!4675 = !DILocation(line: 117, column: 7, scope: !4659)
!4676 = !DILocation(line: 130, column: 16, scope: !4659)
!4677 = !DILocation(line: 135, column: 11, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4659, file: !351, line: 135, column: 7)
!4679 = !DILocation(line: 135, column: 25, scope: !4678)
!4680 = !DILocation(line: 135, column: 30, scope: !4678)
!4681 = !DILocation(line: 135, column: 7, scope: !4659)
!4682 = !DILocalVariable(name: "ps", arg: 1, scope: !4683, file: !2252, line: 1135, type: !4662)
!4683 = distinct !DISubprogram(name: "mbszero", scope: !2252, file: !2252, line: 1135, type: !4684, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4686)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{null, !4662}
!4686 = !{!4682}
!4687 = !DILocation(line: 0, scope: !4683, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 137, column: 5, scope: !4678)
!4689 = !DILocalVariable(name: "__dest", arg: 1, scope: !4690, file: !2261, line: 57, type: !45)
!4690 = distinct !DISubprogram(name: "memset", scope: !2261, file: !2261, line: 57, type: !2262, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4691)
!4691 = !{!4689, !4692, !4693}
!4692 = !DILocalVariable(name: "__ch", arg: 2, scope: !4690, file: !2261, line: 57, type: !46)
!4693 = !DILocalVariable(name: "__len", arg: 3, scope: !4690, file: !2261, line: 57, type: !48)
!4694 = !DILocation(line: 0, scope: !4690, inlinedAt: !4695)
!4695 = distinct !DILocation(line: 1137, column: 3, scope: !4683, inlinedAt: !4688)
!4696 = !DILocation(line: 59, column: 10, scope: !4690, inlinedAt: !4695)
!4697 = !DILocation(line: 137, column: 5, scope: !4678)
!4698 = !DILocation(line: 138, column: 11, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4659, file: !351, line: 138, column: 7)
!4700 = !DILocation(line: 138, column: 7, scope: !4659)
!4701 = !DILocation(line: 139, column: 5, scope: !4699)
!4702 = !DILocation(line: 143, column: 26, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4659, file: !351, line: 143, column: 7)
!4704 = !DILocation(line: 143, column: 41, scope: !4703)
!4705 = !DILocation(line: 143, column: 7, scope: !4659)
!4706 = !DILocation(line: 145, column: 15, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4708, file: !351, line: 145, column: 11)
!4708 = distinct !DILexicalBlock(scope: !4703, file: !351, line: 144, column: 5)
!4709 = !DILocation(line: 145, column: 11, scope: !4708)
!4710 = !DILocation(line: 146, column: 32, scope: !4707)
!4711 = !DILocation(line: 146, column: 16, scope: !4707)
!4712 = !DILocation(line: 146, column: 14, scope: !4707)
!4713 = !DILocation(line: 146, column: 9, scope: !4707)
!4714 = !DILocation(line: 286, column: 1, scope: !4659)
!4715 = !DISubprogram(name: "mbsinit", scope: !4716, file: !4716, line: 293, type: !4717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !578)
!4716 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!46, !4719}
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!4721 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !426, file: !426, line: 27, type: !3937, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !4722)
!4722 = !{!4723, !4724, !4725, !4726}
!4723 = !DILocalVariable(name: "ptr", arg: 1, scope: !4721, file: !426, line: 27, type: !45)
!4724 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4721, file: !426, line: 27, type: !48)
!4725 = !DILocalVariable(name: "size", arg: 3, scope: !4721, file: !426, line: 27, type: !48)
!4726 = !DILocalVariable(name: "nbytes", scope: !4721, file: !426, line: 29, type: !48)
!4727 = !DILocation(line: 0, scope: !4721)
!4728 = !DILocation(line: 30, column: 7, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4721, file: !426, line: 30, column: 7)
!4730 = !DILocalVariable(name: "ptr", arg: 1, scope: !4731, file: !4028, line: 2057, type: !45)
!4731 = distinct !DISubprogram(name: "rpl_realloc", scope: !4028, file: !4028, line: 2057, type: !4020, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !4732)
!4732 = !{!4730, !4733}
!4733 = !DILocalVariable(name: "size", arg: 2, scope: !4731, file: !4028, line: 2057, type: !48)
!4734 = !DILocation(line: 0, scope: !4731, inlinedAt: !4735)
!4735 = distinct !DILocation(line: 37, column: 10, scope: !4721)
!4736 = !DILocation(line: 2059, column: 24, scope: !4731, inlinedAt: !4735)
!4737 = !DILocation(line: 2059, column: 10, scope: !4731, inlinedAt: !4735)
!4738 = !DILocation(line: 37, column: 3, scope: !4721)
!4739 = !DILocation(line: 32, column: 7, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4729, file: !426, line: 31, column: 5)
!4741 = !DILocation(line: 32, column: 13, scope: !4740)
!4742 = !DILocation(line: 33, column: 7, scope: !4740)
!4743 = !DILocation(line: 38, column: 1, scope: !4721)
!4744 = distinct !DISubprogram(name: "hard_locale", scope: !429, file: !429, line: 28, type: !800, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !4745)
!4745 = !{!4746, !4747}
!4746 = !DILocalVariable(name: "category", arg: 1, scope: !4744, file: !429, line: 28, type: !46)
!4747 = !DILocalVariable(name: "locale", scope: !4744, file: !429, line: 30, type: !4748)
!4748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2056, elements: !4749)
!4749 = !{!4750}
!4750 = !DISubrange(count: 257)
!4751 = !DILocation(line: 0, scope: !4744)
!4752 = !DILocation(line: 30, column: 3, scope: !4744)
!4753 = !DILocation(line: 30, column: 8, scope: !4744)
!4754 = !DILocation(line: 32, column: 7, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4744, file: !429, line: 32, column: 7)
!4756 = !DILocation(line: 32, column: 7, scope: !4744)
!4757 = !DILocalVariable(name: "__s1", arg: 1, scope: !4758, file: !536, line: 1359, type: !51)
!4758 = distinct !DISubprogram(name: "streq", scope: !536, file: !536, line: 1359, type: !537, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !4759)
!4759 = !{!4757, !4760}
!4760 = !DILocalVariable(name: "__s2", arg: 2, scope: !4758, file: !536, line: 1359, type: !51)
!4761 = !DILocation(line: 0, scope: !4758, inlinedAt: !4762)
!4762 = distinct !DILocation(line: 35, column: 9, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4744, file: !429, line: 35, column: 7)
!4764 = !DILocation(line: 1361, column: 11, scope: !4758, inlinedAt: !4762)
!4765 = !DILocation(line: 1361, column: 10, scope: !4758, inlinedAt: !4762)
!4766 = !DILocation(line: 35, column: 29, scope: !4763)
!4767 = !DILocation(line: 0, scope: !4758, inlinedAt: !4768)
!4768 = distinct !DILocation(line: 35, column: 32, scope: !4763)
!4769 = !DILocation(line: 1361, column: 11, scope: !4758, inlinedAt: !4768)
!4770 = !DILocation(line: 1361, column: 10, scope: !4758, inlinedAt: !4768)
!4771 = !DILocation(line: 35, column: 7, scope: !4744)
!4772 = !DILocation(line: 46, column: 3, scope: !4744)
!4773 = !DILocation(line: 47, column: 1, scope: !4744)
!4774 = distinct !DISubprogram(name: "setlocale_null_r", scope: !431, file: !431, line: 154, type: !4775, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !4777)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{!46, !46, !43, !48}
!4777 = !{!4778, !4779, !4780}
!4778 = !DILocalVariable(name: "category", arg: 1, scope: !4774, file: !431, line: 154, type: !46)
!4779 = !DILocalVariable(name: "buf", arg: 2, scope: !4774, file: !431, line: 154, type: !43)
!4780 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4774, file: !431, line: 154, type: !48)
!4781 = !DILocation(line: 0, scope: !4774)
!4782 = !DILocation(line: 159, column: 10, scope: !4774)
!4783 = !DILocation(line: 159, column: 3, scope: !4774)
!4784 = distinct !DISubprogram(name: "setlocale_null", scope: !431, file: !431, line: 186, type: !4785, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !4787)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!51, !46}
!4787 = !{!4788}
!4788 = !DILocalVariable(name: "category", arg: 1, scope: !4784, file: !431, line: 186, type: !46)
!4789 = !DILocation(line: 0, scope: !4784)
!4790 = !DILocation(line: 189, column: 10, scope: !4784)
!4791 = !DILocation(line: 189, column: 3, scope: !4784)
!4792 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !433, file: !433, line: 35, type: !4785, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !4793)
!4793 = !{!4794, !4795}
!4794 = !DILocalVariable(name: "category", arg: 1, scope: !4792, file: !433, line: 35, type: !46)
!4795 = !DILocalVariable(name: "result", scope: !4792, file: !433, line: 37, type: !51)
!4796 = !DILocation(line: 0, scope: !4792)
!4797 = !DILocation(line: 37, column: 24, scope: !4792)
!4798 = !DILocation(line: 62, column: 3, scope: !4792)
!4799 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !433, file: !433, line: 66, type: !4775, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !4800)
!4800 = !{!4801, !4802, !4803, !4804, !4805}
!4801 = !DILocalVariable(name: "category", arg: 1, scope: !4799, file: !433, line: 66, type: !46)
!4802 = !DILocalVariable(name: "buf", arg: 2, scope: !4799, file: !433, line: 66, type: !43)
!4803 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4799, file: !433, line: 66, type: !48)
!4804 = !DILocalVariable(name: "result", scope: !4799, file: !433, line: 111, type: !51)
!4805 = !DILocalVariable(name: "length", scope: !4806, file: !433, line: 125, type: !48)
!4806 = distinct !DILexicalBlock(scope: !4807, file: !433, line: 124, column: 5)
!4807 = distinct !DILexicalBlock(scope: !4799, file: !433, line: 113, column: 7)
!4808 = !DILocation(line: 0, scope: !4799)
!4809 = !DILocation(line: 0, scope: !4792, inlinedAt: !4810)
!4810 = distinct !DILocation(line: 111, column: 24, scope: !4799)
!4811 = !DILocation(line: 37, column: 24, scope: !4792, inlinedAt: !4810)
!4812 = !DILocation(line: 113, column: 14, scope: !4807)
!4813 = !DILocation(line: 113, column: 7, scope: !4799)
!4814 = !DILocation(line: 116, column: 19, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4816, file: !433, line: 116, column: 11)
!4816 = distinct !DILexicalBlock(scope: !4807, file: !433, line: 114, column: 5)
!4817 = !DILocation(line: 116, column: 11, scope: !4816)
!4818 = !DILocation(line: 120, column: 16, scope: !4815)
!4819 = !DILocation(line: 120, column: 9, scope: !4815)
!4820 = !DILocation(line: 125, column: 23, scope: !4806)
!4821 = !DILocation(line: 0, scope: !4806)
!4822 = !DILocation(line: 126, column: 18, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4806, file: !433, line: 126, column: 11)
!4824 = !DILocation(line: 126, column: 11, scope: !4806)
!4825 = !DILocation(line: 128, column: 39, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4823, file: !433, line: 127, column: 9)
!4827 = !DILocalVariable(name: "__dest", arg: 1, scope: !4828, file: !2261, line: 26, type: !4295)
!4828 = distinct !DISubprogram(name: "memcpy", scope: !2261, file: !2261, line: 26, type: !4293, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !4829)
!4829 = !{!4827, !4830, !4831}
!4830 = !DILocalVariable(name: "__src", arg: 2, scope: !4828, file: !2261, line: 26, type: !685)
!4831 = !DILocalVariable(name: "__len", arg: 3, scope: !4828, file: !2261, line: 26, type: !48)
!4832 = !DILocation(line: 0, scope: !4828, inlinedAt: !4833)
!4833 = distinct !DILocation(line: 128, column: 11, scope: !4826)
!4834 = !DILocation(line: 29, column: 10, scope: !4828, inlinedAt: !4833)
!4835 = !DILocation(line: 129, column: 11, scope: !4826)
!4836 = !DILocation(line: 133, column: 23, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4838, file: !433, line: 133, column: 15)
!4838 = distinct !DILexicalBlock(scope: !4823, file: !433, line: 132, column: 9)
!4839 = !DILocation(line: 133, column: 15, scope: !4838)
!4840 = !DILocation(line: 138, column: 44, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4837, file: !433, line: 134, column: 13)
!4842 = !DILocation(line: 0, scope: !4828, inlinedAt: !4843)
!4843 = distinct !DILocation(line: 138, column: 15, scope: !4841)
!4844 = !DILocation(line: 29, column: 10, scope: !4828, inlinedAt: !4843)
!4845 = !DILocation(line: 139, column: 15, scope: !4841)
!4846 = !DILocation(line: 139, column: 32, scope: !4841)
!4847 = !DILocation(line: 140, column: 13, scope: !4841)
!4848 = !DILocation(line: 0, scope: !4807)
!4849 = !DILocation(line: 145, column: 1, scope: !4799)
