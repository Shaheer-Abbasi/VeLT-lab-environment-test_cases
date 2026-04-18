; ModuleID = 'src/test.bc'
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
@.str.3 = private unnamed_addr constant [5 x i8] c"test\00", align 1
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
@argc = internal unnamed_addr global i32 0, align 4, !dbg !59
@pos = internal unnamed_addr global i32 0, align 4, !dbg !57
@.str.50 = private unnamed_addr constant [18 x i8] c"extra argument %s\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !61
@.str.51 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.70 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.72 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.78, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.80 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.81 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.83 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"0 < nargs\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"src/test.c\00", align 1
@__PRETTY_FUNCTION__.posixtest = private unnamed_addr constant [21 x i8] c"_Bool posixtest(int)\00", align 1
@.str.90 = private unnamed_addr constant [28 x i8] c"%s: unary operator expected\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"invalid integer %s\00", align 1
@.str.92 = private unnamed_addr constant [26 x i8] c"missing argument after %s\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"%s: binary operator expected\00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"-eq\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"-ne\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"-lt\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"-le\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"-gt\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"-ge\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"-ot\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"-nt\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"-ef\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.111 = private unnamed_addr constant [22 x i8] c"%s does not accept -l\00", align 1
@.str.112 = private unnamed_addr constant [23 x i8] c"-ef does not accept -l\00", align 1
@.str.113 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__PRETTY_FUNCTION__.binary_operator = private unnamed_addr constant [41 x i8] c"_Bool binary_operator(_Bool, enum binop)\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"%s expected\00", align 1
@.str.115 = private unnamed_addr constant [22 x i8] c"%s expected, found %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !149
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !154
@.str.56 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.57 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.58 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.59 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !156
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.62 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !192
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !162
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !188
@.str.1.68 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.70 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.69 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !190
@.str.4.63 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.64 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.65 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !197
@.str.116 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.117 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@.str.118 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.119 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.120 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.121 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.122 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.123 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.124 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.125 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.126 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.127 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.119, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.120, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.121, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.122, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.123, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.124, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.125, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.126, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.127, i32 0, i32 0), i8* null], align 8, !dbg !203
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !229
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !247
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !287
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !294
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !249
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !296
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !235
@.str.10.130 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.128 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.131 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.129 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !254
@.str.140 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.141 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.142 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.143 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.144 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.145 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.146 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.147 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.148 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.149 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.150 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.151 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.152 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.153 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.154 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.155 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.156 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.159 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.160 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.161 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.162 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.163 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.164 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.165 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !302
@exit_failure = dso_local global i32 1, align 4, !dbg !310
@.str.178 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.176 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.177 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.189 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !316
@.str.194 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.195 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !414 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !418, metadata !DIExpression()), !dbg !419
  %3 = icmp eq i32 %0, 0, !dbg !420
  br i1 %3, label %9, label %4, !dbg !422

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !423, !tbaa !425
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #35, !dbg !423
  %7 = load i8*, i8** @program_name, align 8, !dbg !423, !tbaa !425
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #35, !dbg !423
  br label %119, !dbg !423

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #35, !dbg !429
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !429, !tbaa !425
  %12 = tail call i32 @fputs_unlocked(i8* noundef %10, %struct._IO_FILE* noundef %11), !dbg !429
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #35, !dbg !431
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !431, !tbaa !425
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !431
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #35, !dbg !432
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !432
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #35, !dbg !433
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !433
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([120 x i8], [120 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #35, !dbg !434
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !434, !tbaa !425
  %20 = tail call i32 @fputs_unlocked(i8* noundef %18, %struct._IO_FILE* noundef %19), !dbg !434
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([249 x i8], [249 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #35, !dbg !435
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !435, !tbaa !425
  %23 = tail call i32 @fputs_unlocked(i8* noundef %21, %struct._IO_FILE* noundef %22), !dbg !435
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !436
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !436, !tbaa !425
  %26 = tail call i32 @fputs_unlocked(i8* noundef %24, %struct._IO_FILE* noundef %25), !dbg !436
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #35, !dbg !437
  tail call fastcc void @oputs_(i8* noundef %27), !dbg !437
  %28 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #35, !dbg !438
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !438, !tbaa !425
  %30 = tail call i32 @fputs_unlocked(i8* noundef %28, %struct._IO_FILE* noundef %29), !dbg !438
  %31 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #35, !dbg !439
  tail call fastcc void @oputs_(i8* noundef %31), !dbg !439
  %32 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([246 x i8], [246 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #35, !dbg !440
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !440, !tbaa !425
  %34 = tail call i32 @fputs_unlocked(i8* noundef %32, %struct._IO_FILE* noundef %33), !dbg !440
  %35 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !441
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !441, !tbaa !425
  %37 = tail call i32 @fputs_unlocked(i8* noundef %35, %struct._IO_FILE* noundef %36), !dbg !441
  %38 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #35, !dbg !442
  tail call fastcc void @oputs_(i8* noundef %38), !dbg !442
  %39 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #35, !dbg !443
  tail call fastcc void @oputs_(i8* noundef %39), !dbg !443
  %40 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #35, !dbg !444
  tail call fastcc void @oputs_(i8* noundef %40), !dbg !444
  %41 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #35, !dbg !445
  tail call fastcc void @oputs_(i8* noundef %41), !dbg !445
  %42 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #35, !dbg !446
  tail call fastcc void @oputs_(i8* noundef %42), !dbg !446
  %43 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i64 0, i64 0), i32 noundef 5) #35, !dbg !447
  tail call fastcc void @oputs_(i8* noundef %43), !dbg !447
  %44 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !448
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !448, !tbaa !425
  %46 = tail call i32 @fputs_unlocked(i8* noundef %44, %struct._IO_FILE* noundef %45), !dbg !448
  %47 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #35, !dbg !449
  tail call fastcc void @oputs_(i8* noundef %47), !dbg !449
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i64 0, i64 0), i32 noundef 5) #35, !dbg !450
  tail call fastcc void @oputs_(i8* noundef %48), !dbg !450
  %49 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0), i32 noundef 5) #35, !dbg !451
  tail call fastcc void @oputs_(i8* noundef %49), !dbg !451
  %50 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !452
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !452, !tbaa !425
  %52 = tail call i32 @fputs_unlocked(i8* noundef %50, %struct._IO_FILE* noundef %51), !dbg !452
  %53 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #35, !dbg !453
  tail call fastcc void @oputs_(i8* noundef %53), !dbg !453
  %54 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i64 0, i64 0), i32 noundef 5) #35, !dbg !454
  tail call fastcc void @oputs_(i8* noundef %54), !dbg !454
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i64 0, i64 0), i32 noundef 5) #35, !dbg !455
  tail call fastcc void @oputs_(i8* noundef %55), !dbg !455
  %56 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i32 noundef 5) #35, !dbg !456
  tail call fastcc void @oputs_(i8* noundef %56), !dbg !456
  %57 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.26, i64 0, i64 0), i32 noundef 5) #35, !dbg !457
  tail call fastcc void @oputs_(i8* noundef %57), !dbg !457
  %58 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i64 0, i64 0), i32 noundef 5) #35, !dbg !458
  tail call fastcc void @oputs_(i8* noundef %58), !dbg !458
  %59 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.28, i64 0, i64 0), i32 noundef 5) #35, !dbg !459
  tail call fastcc void @oputs_(i8* noundef %59), !dbg !459
  %60 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.29, i64 0, i64 0), i32 noundef 5) #35, !dbg !460
  tail call fastcc void @oputs_(i8* noundef %60), !dbg !460
  %61 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.30, i64 0, i64 0), i32 noundef 5) #35, !dbg !461
  tail call fastcc void @oputs_(i8* noundef %61), !dbg !461
  %62 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.31, i64 0, i64 0), i32 noundef 5) #35, !dbg !462
  tail call fastcc void @oputs_(i8* noundef %62), !dbg !462
  %63 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.32, i64 0, i64 0), i32 noundef 5) #35, !dbg !463
  tail call fastcc void @oputs_(i8* noundef %63), !dbg !463
  %64 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.33, i64 0, i64 0), i32 noundef 5) #35, !dbg !464
  tail call fastcc void @oputs_(i8* noundef %64), !dbg !464
  %65 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.34, i64 0, i64 0), i32 noundef 5) #35, !dbg !465
  tail call fastcc void @oputs_(i8* noundef %65), !dbg !465
  %66 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i64 0, i64 0), i32 noundef 5) #35, !dbg !466
  tail call fastcc void @oputs_(i8* noundef %66), !dbg !466
  %67 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.36, i64 0, i64 0), i32 noundef 5) #35, !dbg !467
  tail call fastcc void @oputs_(i8* noundef %67), !dbg !467
  %68 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.37, i64 0, i64 0), i32 noundef 5) #35, !dbg !468
  tail call fastcc void @oputs_(i8* noundef %68), !dbg !468
  %69 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.38, i64 0, i64 0), i32 noundef 5) #35, !dbg !469
  tail call fastcc void @oputs_(i8* noundef %69), !dbg !469
  %70 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.39, i64 0, i64 0), i32 noundef 5) #35, !dbg !470
  tail call fastcc void @oputs_(i8* noundef %70), !dbg !470
  %71 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.40, i64 0, i64 0), i32 noundef 5) #35, !dbg !471
  tail call fastcc void @oputs_(i8* noundef %71), !dbg !471
  %72 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.41, i64 0, i64 0), i32 noundef 5) #35, !dbg !472
  tail call fastcc void @oputs_(i8* noundef %72), !dbg !472
  %73 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([225 x i8], [225 x i8]* @.str.42, i64 0, i64 0), i32 noundef 5) #35, !dbg !473
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !473, !tbaa !425
  %75 = tail call i32 @fputs_unlocked(i8* noundef %73, %struct._IO_FILE* noundef %74), !dbg !473
  %76 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.43, i64 0, i64 0), i32 noundef 5) #35, !dbg !474
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !474, !tbaa !425
  %78 = tail call i32 @fputs_unlocked(i8* noundef %76, %struct._IO_FILE* noundef %77), !dbg !474
  %79 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.44, i64 0, i64 0), i32 noundef 5) #35, !dbg !475
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !475, !tbaa !425
  %81 = tail call i32 @fputs_unlocked(i8* noundef %79, %struct._IO_FILE* noundef %80), !dbg !475
  %82 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.45, i64 0, i64 0), i32 noundef 5) #35, !dbg !476
  %83 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i32 noundef 5) #35, !dbg !476
  %84 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %82, i8* noundef %83) #35, !dbg !476
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #35, !dbg !496
  %85 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !498
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %85) #35, !dbg !498
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !482, metadata !DIExpression()) #35, !dbg !499
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %85, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #35, !dbg !499
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !491, metadata !DIExpression()) #35, !dbg !496
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !492, metadata !DIExpression()) #35, !dbg !496
  %86 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !500
  call void @llvm.dbg.value(metadata %struct.infomap* %86, metadata !492, metadata !DIExpression()) #35, !dbg !496
  br label %87, !dbg !501

87:                                               ; preds = %92, %9
  %88 = phi i8* [ %95, %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), %9 ]
  %89 = phi %struct.infomap* [ %93, %92 ], [ %86, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %89, metadata !492, metadata !DIExpression()) #35, !dbg !496
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !502, metadata !DIExpression()) #35, !dbg !509
  call void @llvm.dbg.value(metadata i8* %88, metadata !508, metadata !DIExpression()) #35, !dbg !509
  %90 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %88) #36, !dbg !511
  %91 = icmp eq i32 %90, 0, !dbg !512
  br i1 %91, label %97, label %92, !dbg !501

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.infomap, %struct.infomap* %89, i64 1, !dbg !513
  call void @llvm.dbg.value(metadata %struct.infomap* %93, metadata !492, metadata !DIExpression()) #35, !dbg !496
  %94 = getelementptr inbounds %struct.infomap, %struct.infomap* %93, i64 0, i32 0, !dbg !514
  %95 = load i8*, i8** %94, align 8, !dbg !514, !tbaa !515
  %96 = icmp eq i8* %95, null, !dbg !517
  br i1 %96, label %97, label %87, !dbg !518, !llvm.loop !519

97:                                               ; preds = %92, %87
  %98 = phi %struct.infomap* [ %89, %87 ], [ %93, %92 ]
  %99 = getelementptr inbounds %struct.infomap, %struct.infomap* %98, i64 0, i32 1, !dbg !521
  %100 = load i8*, i8** %99, align 8, !dbg !521, !tbaa !523
  %101 = icmp eq i8* %100, null, !dbg !524
  %102 = select i1 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %100, !dbg !525
  call void @llvm.dbg.value(metadata i8* %102, metadata !491, metadata !DIExpression()) #35, !dbg !496
  tail call void @emit_bug_reporting_address() #35, !dbg !526
  %103 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #35, !dbg !527
  call void @llvm.dbg.value(metadata i8* %103, metadata !494, metadata !DIExpression()) #35, !dbg !496
  %104 = icmp eq i8* %103, null, !dbg !528
  br i1 %104, label %112, label %105, !dbg !530

105:                                              ; preds = %97
  %106 = tail call i32 @strncmp(i8* noundef nonnull %103, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i64 noundef 3) #36, !dbg !531
  %107 = icmp eq i32 %106, 0, !dbg !531
  br i1 %107, label %112, label %108, !dbg !532

108:                                              ; preds = %105
  %109 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.81, i64 0, i64 0), i32 noundef 5) #35, !dbg !533
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !533, !tbaa !425
  %111 = tail call i32 @fputs_unlocked(i8* noundef %109, %struct._IO_FILE* noundef %110) #35, !dbg !533
  br label %112, !dbg !535

112:                                              ; preds = %97, %105, %108
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !502, metadata !DIExpression()) #35, !dbg !536
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !536
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !495, metadata !DIExpression()) #35, !dbg !496
  %113 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0), i32 noundef 5) #35, !dbg !538
  %114 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %113, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #35, !dbg !538
  %115 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.83, i64 0, i64 0), i32 noundef 5) #35, !dbg !539
  %116 = icmp eq i8* %102, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), !dbg !539
  %117 = select i1 %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i64 0, i64 0), !dbg !539
  %118 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %115, i8* noundef %102, i8* noundef %117) #35, !dbg !539
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %85) #35, !dbg !540
  br label %119

119:                                              ; preds = %112, %4
  tail call void @exit(i32 noundef %0) #37, !dbg !541
  unreachable, !dbg !541
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !542 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !547 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !63 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !68, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %0, metadata !69, metadata !DIExpression()), !dbg !552
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !553, !tbaa !554
  %3 = icmp eq i32 %2, -1, !dbg !556
  br i1 %3, label %4, label %16, !dbg !557

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0)) #35, !dbg !558
  call void @llvm.dbg.value(metadata i8* %5, metadata !70, metadata !DIExpression()), !dbg !559
  %6 = icmp eq i8* %5, null, !dbg !560
  br i1 %6, label %14, label %7, !dbg !561

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !562, !tbaa !563
  %9 = icmp eq i8 %8, 0, !dbg !562
  br i1 %9, label %14, label %10, !dbg !564

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !502, metadata !DIExpression()) #35, !dbg !565
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !565
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #36, !dbg !567
  %12 = icmp eq i32 %11, 0, !dbg !568
  %13 = zext i1 %12 to i32, !dbg !564
  br label %14, !dbg !564

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !569, !tbaa !554
  br label %16, !dbg !570

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !571
  %18 = icmp eq i32 %17, 0, !dbg !571
  br i1 %18, label %22, label %19, !dbg !573

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !574, !tbaa !425
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !574
  br label %121, !dbg !576

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !73, metadata !DIExpression()), !dbg !552
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)) #36, !dbg !577
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !578
  call void @llvm.dbg.value(metadata i8* %24, metadata !75, metadata !DIExpression()), !dbg !552
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #36, !dbg !579
  call void @llvm.dbg.value(metadata i8* %25, metadata !76, metadata !DIExpression()), !dbg !552
  %26 = icmp eq i8* %25, null, !dbg !580
  br i1 %26, label %53, label %27, !dbg !581

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !582
  br i1 %28, label %53, label %29, !dbg !583

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !77, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata i64 0, metadata !81, metadata !DIExpression()), !dbg !584
  %30 = icmp ult i8* %24, %25, !dbg !585
  br i1 %30, label %31, label %53, !dbg !586

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #38, !dbg !552
  %33 = load i16*, i16** %32, align 8, !tbaa !425
  br label %34, !dbg !586

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !77, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata i64 %36, metadata !81, metadata !DIExpression()), !dbg !584
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !587
  call void @llvm.dbg.value(metadata i8* %37, metadata !77, metadata !DIExpression()), !dbg !584
  %38 = load i8, i8* %35, align 1, !dbg !587, !tbaa !563
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !587
  %41 = load i16, i16* %40, align 2, !dbg !587, !tbaa !588
  %42 = lshr i16 %41, 13, !dbg !590
  %43 = and i16 %42, 1, !dbg !590
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !591
  call void @llvm.dbg.value(metadata i64 %45, metadata !81, metadata !DIExpression()), !dbg !584
  %46 = icmp ult i8* %37, %25, !dbg !585
  %47 = icmp ult i64 %45, 2, !dbg !592
  %48 = select i1 %46, i1 %47, i1 false, !dbg !592
  br i1 %48, label %34, label %49, !dbg !586, !llvm.loop !593

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !594
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !596
  %52 = xor i1 %50, true, !dbg !596
  br label %53, !dbg !596

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !552
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !73, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %54, metadata !76, metadata !DIExpression()), !dbg !552
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0)) #36, !dbg !597
  call void @llvm.dbg.value(metadata i64 %56, metadata !82, metadata !DIExpression()), !dbg !552
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !598
  call void @llvm.dbg.value(metadata i8* %57, metadata !83, metadata !DIExpression()), !dbg !552
  br label %58, !dbg !599

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !552
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !73, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %59, metadata !83, metadata !DIExpression()), !dbg !552
  %61 = load i8, i8* %59, align 1, !dbg !600, !tbaa !563
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !601

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !602
  %64 = load i8, i8* %63, align 1, !dbg !605, !tbaa !563
  %65 = icmp ne i8 %64, 45, !dbg !606
  %66 = select i1 %65, i1 %60, i1 false, !dbg !607
  br label %67, !dbg !607

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !73, metadata !DIExpression()), !dbg !552
  %69 = tail call i16** @__ctype_b_loc() #38, !dbg !608
  %70 = load i16*, i16** %69, align 8, !dbg !608, !tbaa !425
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !608
  %73 = load i16, i16* %72, align 2, !dbg !608, !tbaa !588
  %74 = and i16 %73, 8192, !dbg !608
  %75 = icmp eq i16 %74, 0, !dbg !608
  br i1 %75, label %89, label %76, !dbg !610

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !611
  br i1 %77, label %91, label %78, !dbg !614

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !615
  %80 = load i8, i8* %79, align 1, !dbg !615, !tbaa !563
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !615
  %83 = load i16, i16* %82, align 2, !dbg !615, !tbaa !588
  %84 = and i16 %83, 8192, !dbg !615
  %85 = icmp eq i16 %84, 0, !dbg !615
  br i1 %85, label %86, label %91, !dbg !616

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !617
  br i1 %88, label %89, label %91, !dbg !617

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !619
  call void @llvm.dbg.value(metadata i8* %90, metadata !83, metadata !DIExpression()), !dbg !552
  br label %58, !dbg !599, !llvm.loop !620

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !622
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !622, !tbaa !425
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !622
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !502, metadata !DIExpression()) #35, !dbg !623
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !623
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !502, metadata !DIExpression()) #35, !dbg !625
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !502, metadata !DIExpression()) #35, !dbg !627
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !502, metadata !DIExpression()) #35, !dbg !629
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !502, metadata !DIExpression()) #35, !dbg !631
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !502, metadata !DIExpression()) #35, !dbg !633
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !502, metadata !DIExpression()) #35, !dbg !635
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !502, metadata !DIExpression()) #35, !dbg !637
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !502, metadata !DIExpression()) #35, !dbg !639
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !502, metadata !DIExpression()) #35, !dbg !641
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !143, metadata !DIExpression()), !dbg !552
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0), i64 noundef 6) #36, !dbg !643
  %96 = icmp eq i32 %95, 0, !dbg !643
  br i1 %96, label %100, label %97, !dbg !645

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i64 0, i64 0), i64 noundef 9) #36, !dbg !646
  %99 = icmp eq i32 %98, 0, !dbg !646
  br i1 %99, label %100, label %103, !dbg !647

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !648
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #35, !dbg !648
  br label %106, !dbg !650

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !651
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #35, !dbg !651
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !653, !tbaa !425
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !653
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !654, !tbaa !425
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !654
  %111 = ptrtoint i8* %59 to i64, !dbg !655
  %112 = sub i64 %111, %92, !dbg !655
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !655, !tbaa !425
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !655
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !656, !tbaa !425
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !656
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !657, !tbaa !425
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !657
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !658, !tbaa !425
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !658
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !659
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
declare !dbg !660 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !664 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !668 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !674 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !678, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i8** %1, metadata !679, metadata !DIExpression()), !dbg !681
  %3 = load i8*, i8** %1, align 8, !dbg !682, !tbaa !425
  tail call void @set_program_name(i8* noundef %3) #35, !dbg !683
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i64 0, i64 0)) #35, !dbg !684
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0)) #35, !dbg !685
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0)) #35, !dbg !686
  call void @llvm.dbg.value(metadata i32 2, metadata !687, metadata !DIExpression()), !dbg !690
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !692, !tbaa !554
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #35, !dbg !694
  store i8** %1, i8*** @argv, align 8, !dbg !695, !tbaa !425
  store i32 %0, i32* @argc, align 4, !dbg !696, !tbaa !554
  store i32 1, i32* @pos, align 4, !dbg !697, !tbaa !554
  %8 = icmp slt i32 %0, 2, !dbg !698
  br i1 %8, label %26, label %9, !dbg !700

9:                                                ; preds = %2
  %10 = add nsw i32 %0, -1, !dbg !701
  %11 = tail call fastcc i1 @posixtest(i32 noundef %10), !dbg !702
  call void @llvm.dbg.value(metadata i1 %11, metadata !680, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !681
  %12 = load i32, i32* @pos, align 4, !dbg !703, !tbaa !554
  %13 = load i32, i32* @argc, align 4, !dbg !705, !tbaa !554
  %14 = icmp eq i32 %12, %13, !dbg !706
  br i1 %14, label %23, label %15, !dbg !707

15:                                               ; preds = %9
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i64 0, i64 0), i32 noundef 5) #35, !dbg !708
  %17 = load i8**, i8*** @argv, align 8, !dbg !709, !tbaa !425
  %18 = load i32, i32* @pos, align 4, !dbg !710, !tbaa !554
  %19 = sext i32 %18 to i64, !dbg !709
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19, !dbg !709
  %21 = load i8*, i8** %20, align 8, !dbg !709, !tbaa !425
  %22 = tail call i8* @quote(i8* noundef %21) #35, !dbg !711
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %16, i8* noundef %22) #39, !dbg !712
  unreachable, !dbg !712

23:                                               ; preds = %9
  %24 = xor i1 %11, true, !dbg !713
  %25 = zext i1 %24 to i32, !dbg !713
  br label %26, !dbg !713

26:                                               ; preds = %2, %23
  %27 = phi i32 [ %25, %23 ], [ 1, %2 ], !dbg !681
  ret i32 %27, !dbg !714
}

; Function Attrs: nounwind
declare !dbg !715 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !718 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !719 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i1 @posixtest(i32 noundef %0) unnamed_addr #12 !dbg !722 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !726, metadata !DIExpression()), !dbg !728
  switch i32 %0, label %102 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %41
    i32 4, label %43
  ], !dbg !729

2:                                                ; preds = %1
  %3 = load i8**, i8*** @argv, align 8, !dbg !730, !tbaa !425
  %4 = load i32, i32* @pos, align 4, !dbg !736, !tbaa !554
  %5 = add nsw i32 %4, 1, !dbg !736
  store i32 %5, i32* @pos, align 4, !dbg !736, !tbaa !554
  %6 = sext i32 %4 to i64, !dbg !730
  %7 = getelementptr inbounds i8*, i8** %3, i64 %6, !dbg !730
  %8 = load i8*, i8** %7, align 8, !dbg !730, !tbaa !425
  %9 = load i8, i8* %8, align 1, !dbg !730, !tbaa !563
  %10 = icmp ne i8 %9, 0, !dbg !737
  call void @llvm.dbg.value(metadata i1 %10, metadata !727, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !728
  br label %114, !dbg !738

11:                                               ; preds = %1
  %12 = load i8**, i8*** @argv, align 8, !dbg !739, !tbaa !425
  %13 = load i32, i32* @pos, align 4, !dbg !745, !tbaa !554
  %14 = sext i32 %13 to i64, !dbg !739
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14, !dbg !739
  %16 = load i8*, i8** %15, align 8, !dbg !739, !tbaa !425
  call void @llvm.dbg.value(metadata i8* %16, metadata !502, metadata !DIExpression()) #35, !dbg !746
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !746
  %17 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %16, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #36, !dbg !748
  %18 = icmp eq i32 %17, 0, !dbg !749
  br i1 %18, label %19, label %27, !dbg !750

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 false, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !756
  %20 = add nsw i32 %13, 1, !dbg !759
  %21 = add nsw i32 %13, 2, !dbg !760
  store i32 %21, i32* @pos, align 4, !dbg !760, !tbaa !554
  %22 = sext i32 %20 to i64, !dbg !762
  %23 = getelementptr inbounds i8*, i8** %12, i64 %22, !dbg !762
  %24 = load i8*, i8** %23, align 8, !dbg !762, !tbaa !425
  %25 = load i8, i8* %24, align 1, !dbg !762, !tbaa !563
  %26 = icmp eq i8 %25, 0, !dbg !763
  call void @llvm.dbg.value(metadata i1 %26, metadata !743, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !764
  br label %114, !dbg !765

27:                                               ; preds = %11
  %28 = load i8, i8* %16, align 1, !dbg !766, !tbaa !563
  %29 = icmp eq i8 %28, 45, !dbg !768
  br i1 %29, label %30, label %40, !dbg !769

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !770
  %32 = load i8, i8* %31, align 1, !dbg !770, !tbaa !563
  %33 = icmp eq i8 %32, 0, !dbg !771
  br i1 %33, label %40, label %34, !dbg !772

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, i8* %16, i64 2, !dbg !773
  %36 = load i8, i8* %35, align 1, !dbg !773, !tbaa !563
  %37 = icmp eq i8 %36, 0, !dbg !774
  br i1 %37, label %38, label %40, !dbg !775

38:                                               ; preds = %34
  %39 = tail call fastcc i1 @unary_operator() #35, !dbg !776
  call void @llvm.dbg.value(metadata i1 %39, metadata !743, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !764
  br label %114

40:                                               ; preds = %34, %30, %27
  tail call fastcc void @beyond() #37, !dbg !778
  unreachable, !dbg !778

41:                                               ; preds = %1
  %42 = tail call fastcc i1 @three_arguments(), !dbg !779
  call void @llvm.dbg.value(metadata i1 %42, metadata !727, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !728
  br label %114, !dbg !780

43:                                               ; preds = %1
  %44 = load i8**, i8*** @argv, align 8, !dbg !781, !tbaa !425
  %45 = load i32, i32* @pos, align 4, !dbg !783, !tbaa !554
  %46 = sext i32 %45 to i64, !dbg !781
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46, !dbg !781
  %48 = load i8*, i8** %47, align 8, !dbg !781, !tbaa !425
  call void @llvm.dbg.value(metadata i8* %48, metadata !502, metadata !DIExpression()) #35, !dbg !784
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !784
  %49 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %48, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #36, !dbg !786
  %50 = icmp eq i32 %49, 0, !dbg !787
  br i1 %50, label %51, label %59, !dbg !788

51:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !789
  %52 = add nsw i32 %45, 1, !dbg !792
  store i32 %52, i32* @pos, align 4, !dbg !792, !tbaa !554
  %53 = load i32, i32* @argc, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %56, label %55, !dbg !793

55:                                               ; preds = %51
  tail call fastcc void @beyond() #35, !dbg !795
  unreachable, !dbg !795

56:                                               ; preds = %51
  %57 = tail call fastcc i1 @three_arguments(), !dbg !796
  %58 = xor i1 %57, true, !dbg !797
  call void @llvm.dbg.value(metadata i1 %58, metadata !727, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !728
  br label %114, !dbg !798

59:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i8* %48, metadata !502, metadata !DIExpression()) #35, !dbg !799
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !799
  %60 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %48, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i64 0, i64 0)) #36, !dbg !802
  %61 = icmp eq i32 %60, 0, !dbg !803
  br i1 %61, label %62, label %107, !dbg !804

62:                                               ; preds = %59
  %63 = add nsw i32 %45, 3, !dbg !805
  %64 = sext i32 %63 to i64, !dbg !806
  %65 = getelementptr inbounds i8*, i8** %44, i64 %64, !dbg !806
  %66 = load i8*, i8** %65, align 8, !dbg !806, !tbaa !425
  call void @llvm.dbg.value(metadata i8* %66, metadata !502, metadata !DIExpression()) #35, !dbg !807
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !807
  %67 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %66, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0)) #36, !dbg !809
  %68 = icmp eq i32 %67, 0, !dbg !810
  br i1 %68, label %69, label %107, !dbg !811

69:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i1 false, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !812
  %70 = add nsw i32 %45, 1, !dbg !815
  store i32 %70, i32* @pos, align 4, !dbg !815, !tbaa !554
  %71 = sext i32 %70 to i64, !dbg !816
  %72 = getelementptr inbounds i8*, i8** %44, i64 %71, !dbg !816
  %73 = load i8*, i8** %72, align 8, !dbg !816, !tbaa !425
  call void @llvm.dbg.value(metadata i8* %73, metadata !502, metadata !DIExpression()) #35, !dbg !818
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !818
  %74 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %73, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #36, !dbg !820
  %75 = icmp eq i32 %74, 0, !dbg !821
  br i1 %75, label %76, label %83, !dbg !822

76:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i1 false, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !823
  %77 = add nsw i32 %45, 2, !dbg !825
  %78 = sext i32 %77 to i64, !dbg !826
  %79 = getelementptr inbounds i8*, i8** %44, i64 %78, !dbg !826
  %80 = load i8*, i8** %79, align 8, !dbg !826, !tbaa !425
  %81 = load i8, i8* %80, align 1, !dbg !826, !tbaa !563
  %82 = icmp eq i8 %81, 0, !dbg !828
  call void @llvm.dbg.value(metadata i1 %82, metadata !743, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !829
  br label %98, !dbg !830

83:                                               ; preds = %69
  %84 = load i8, i8* %73, align 1, !dbg !831, !tbaa !563
  %85 = icmp eq i8 %84, 45, !dbg !832
  br i1 %85, label %86, label %97, !dbg !833

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, i8* %73, i64 1, !dbg !834
  %88 = load i8, i8* %87, align 1, !dbg !834, !tbaa !563
  %89 = icmp eq i8 %88, 0, !dbg !835
  br i1 %89, label %97, label %90, !dbg !836

90:                                               ; preds = %86
  %91 = getelementptr inbounds i8, i8* %73, i64 2, !dbg !837
  %92 = load i8, i8* %91, align 1, !dbg !837, !tbaa !563
  %93 = icmp eq i8 %92, 0, !dbg !838
  br i1 %93, label %94, label %97, !dbg !839

94:                                               ; preds = %90
  %95 = tail call fastcc i1 @unary_operator() #35, !dbg !840
  call void @llvm.dbg.value(metadata i1 %95, metadata !743, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !829
  %96 = load i32, i32* @pos, align 4, !dbg !841, !tbaa !554
  br label %98

97:                                               ; preds = %90, %86, %83
  tail call fastcc void @beyond() #37, !dbg !843
  unreachable, !dbg !843

98:                                               ; preds = %76, %94
  %99 = phi i32 [ %63, %76 ], [ %96, %94 ], !dbg !841
  %100 = phi i1 [ %82, %76 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i1 %100, metadata !743, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !829
  call void @llvm.dbg.value(metadata i1 %100, metadata !727, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !728
  call void @llvm.dbg.value(metadata i1 false, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !844
  %101 = add nsw i32 %99, 1, !dbg !841
  store i32 %101, i32* @pos, align 4, !dbg !841, !tbaa !554
  br label %114, !dbg !845

102:                                              ; preds = %1
  %103 = icmp sgt i32 %0, 0, !dbg !846
  br i1 %103, label %104, label %106, !dbg !849

104:                                              ; preds = %102
  %105 = load i32, i32* @pos, align 4, !dbg !850, !tbaa !554
  br label %107, !dbg !849

106:                                              ; preds = %102
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i64 0, i64 0), i32 noundef 651, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.posixtest, i64 0, i64 0)) #37, !dbg !846
  unreachable, !dbg !846

107:                                              ; preds = %104, %59, %62
  %108 = phi i32 [ %105, %104 ], [ %45, %59 ], [ %45, %62 ], !dbg !850
  %109 = load i32, i32* @argc, align 4, !dbg !854, !tbaa !554
  %110 = icmp slt i32 %108, %109, !dbg !855
  br i1 %110, label %112, label %111, !dbg !856

111:                                              ; preds = %107
  tail call fastcc void @beyond() #37, !dbg !857
  unreachable, !dbg !857

112:                                              ; preds = %107
  %113 = tail call fastcc i1 @or() #35, !dbg !858
  call void @llvm.dbg.value(metadata i1 %113, metadata !727, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !728
  br label %114, !dbg !859

114:                                              ; preds = %38, %19, %112, %98, %56, %41, %2
  %115 = phi i1 [ %113, %112 ], [ %58, %56 ], [ %100, %98 ], [ %42, %41 ], [ %10, %2 ], [ %26, %19 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i1 %115, metadata !727, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !728
  ret i1 %115, !dbg !860
}

; Function Attrs: noreturn nounwind uwtable
define internal void @test_syntax_error(i8* noundef %0, ...) unnamed_addr #0 !dbg !861 {
  %2 = alloca %"struct.std::__va_list", align 8
  %3 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !865, metadata !DIExpression()), !dbg !878
  %4 = bitcast %"struct.std::__va_list"* %2 to i8*, !dbg !879
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #35, !dbg !879
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %2, metadata !866, metadata !DIExpression()), !dbg !880
  call void @llvm.va_start(i8* nonnull %4), !dbg !881
  %5 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !882
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #35, !dbg !882
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %5, i8* noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !882, !tbaa.struct !883
  call void @verror(i32 noundef 0, i32 noundef 0, i8* noundef %0, %"struct.std::__va_list"* noundef nonnull %3) #40, !dbg !882
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #35, !dbg !882
  call void @exit(i32 noundef 2) #37, !dbg !884
  unreachable, !dbg !884
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #13

; Function Attrs: nounwind uwtable
define internal fastcc i1 @unary_operator() unnamed_addr #12 !dbg !885 {
  %1 = alloca [1 x i8], align 1
  %2 = alloca %struct.stat, align 8
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !939
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #35, !dbg !939
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !887, metadata !DIExpression()), !dbg !940
  %4 = load i8**, i8*** @argv, align 8, !dbg !941, !tbaa !425
  %5 = load i32, i32* @pos, align 4, !dbg !942, !tbaa !554
  %6 = sext i32 %5 to i64, !dbg !941
  %7 = getelementptr inbounds i8*, i8** %4, i64 %6, !dbg !941
  %8 = load i8*, i8** %7, align 8, !dbg !941, !tbaa !425
  %9 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !941
  %10 = load i8, i8* %9, align 1, !dbg !941, !tbaa !563
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
  ], !dbg !943

11:                                               ; preds = %0
  %12 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.90, i64 0, i64 0), i32 noundef 5) #35, !dbg !944
  %13 = load i8**, i8*** @argv, align 8, !dbg !945, !tbaa !425
  %14 = load i32, i32* @pos, align 4, !dbg !946, !tbaa !554
  %15 = sext i32 %14 to i64, !dbg !945
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15, !dbg !945
  %17 = load i8*, i8** %16, align 8, !dbg !945, !tbaa !425
  %18 = tail call i8* @quote(i8* noundef %17) #35, !dbg !947
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %12, i8* noundef %18) #39, !dbg !948
  unreachable, !dbg !948

19:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !949
  %20 = add nsw i32 %5, 1, !dbg !953
  store i32 %20, i32* @pos, align 4, !dbg !953, !tbaa !554
  %21 = load i32, i32* @argc, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %24, label %23, !dbg !954

23:                                               ; preds = %19
  tail call fastcc void @beyond() #35, !dbg !955
  unreachable, !dbg !955

24:                                               ; preds = %19
  %25 = add nsw i32 %5, 2, !dbg !956
  store i32 %25, i32* @pos, align 4, !dbg !956, !tbaa !554
  %26 = sext i32 %20 to i64, !dbg !957
  %27 = getelementptr inbounds i8*, i8** %4, i64 %26, !dbg !957
  %28 = load i8*, i8** %27, align 8, !dbg !957, !tbaa !425
  %29 = call i32 @stat(i8* noundef %28, %struct.stat* noundef nonnull %2) #35, !dbg !958
  %30 = icmp eq i32 %29, 0, !dbg !959
  br label %371, !dbg !960

31:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !961
  %32 = add nsw i32 %5, 1, !dbg !964
  store i32 %32, i32* @pos, align 4, !dbg !964, !tbaa !554
  %33 = load i32, i32* @argc, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %36, label %35, !dbg !965

35:                                               ; preds = %31
  tail call fastcc void @beyond() #35, !dbg !966
  unreachable, !dbg !966

36:                                               ; preds = %31
  %37 = add nsw i32 %5, 2, !dbg !967
  store i32 %37, i32* @pos, align 4, !dbg !967, !tbaa !554
  %38 = sext i32 %32 to i64, !dbg !968
  %39 = getelementptr inbounds i8*, i8** %4, i64 %38, !dbg !968
  %40 = load i8*, i8** %39, align 8, !dbg !968, !tbaa !425
  %41 = tail call i32 @euidaccess(i8* noundef %40, i32 noundef 4) #35, !dbg !969
  %42 = icmp eq i32 %41, 0, !dbg !970
  br label %371, !dbg !971

43:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !972
  %44 = add nsw i32 %5, 1, !dbg !975
  store i32 %44, i32* @pos, align 4, !dbg !975, !tbaa !554
  %45 = load i32, i32* @argc, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %48, label %47, !dbg !976

47:                                               ; preds = %43
  tail call fastcc void @beyond() #35, !dbg !977
  unreachable, !dbg !977

48:                                               ; preds = %43
  %49 = add nsw i32 %5, 2, !dbg !978
  store i32 %49, i32* @pos, align 4, !dbg !978, !tbaa !554
  %50 = sext i32 %44 to i64, !dbg !979
  %51 = getelementptr inbounds i8*, i8** %4, i64 %50, !dbg !979
  %52 = load i8*, i8** %51, align 8, !dbg !979, !tbaa !425
  %53 = tail call i32 @euidaccess(i8* noundef %52, i32 noundef 2) #35, !dbg !980
  %54 = icmp eq i32 %53, 0, !dbg !981
  br label %371, !dbg !982

55:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !983
  %56 = add nsw i32 %5, 1, !dbg !986
  store i32 %56, i32* @pos, align 4, !dbg !986, !tbaa !554
  %57 = load i32, i32* @argc, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %60, label %59, !dbg !987

59:                                               ; preds = %55
  tail call fastcc void @beyond() #35, !dbg !988
  unreachable, !dbg !988

60:                                               ; preds = %55
  %61 = add nsw i32 %5, 2, !dbg !989
  store i32 %61, i32* @pos, align 4, !dbg !989, !tbaa !554
  %62 = sext i32 %56 to i64, !dbg !990
  %63 = getelementptr inbounds i8*, i8** %4, i64 %62, !dbg !990
  %64 = load i8*, i8** %63, align 8, !dbg !990, !tbaa !425
  %65 = tail call i32 @euidaccess(i8* noundef %64, i32 noundef 1) #35, !dbg !991
  %66 = icmp eq i32 %65, 0, !dbg !992
  br label %371, !dbg !993

67:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !994
  %68 = add nsw i32 %5, 1, !dbg !997
  store i32 %68, i32* @pos, align 4, !dbg !997, !tbaa !554
  %69 = load i32, i32* @argc, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %72, label %71, !dbg !998

71:                                               ; preds = %67
  tail call fastcc void @beyond() #35, !dbg !999
  unreachable, !dbg !999

72:                                               ; preds = %67
  %73 = add nsw i32 %5, 2, !dbg !1000
  store i32 %73, i32* @pos, align 4, !dbg !1000, !tbaa !554
  %74 = sext i32 %68 to i64, !dbg !1001
  %75 = getelementptr inbounds i8*, i8** %4, i64 %74, !dbg !1001
  %76 = load i8*, i8** %75, align 8, !dbg !1001, !tbaa !425
  %77 = call i32 @stat(i8* noundef %76, %struct.stat* noundef nonnull %2) #35, !dbg !1003
  %78 = icmp eq i32 %77, 0, !dbg !1004
  br i1 %78, label %79, label %371, !dbg !1005

79:                                               ; preds = %72
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1006, metadata !DIExpression()), !dbg !1014
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 0, !dbg !1016
  %81 = bitcast i64* %80 to <2 x i64>*, !dbg !1016
  %82 = load <2 x i64>, <2 x i64>* %81, align 8, !dbg !1016
  call void @llvm.dbg.value(metadata i64 undef, metadata !923, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1017
  call void @llvm.dbg.value(metadata i64 undef, metadata !923, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1017
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !1018, metadata !DIExpression()), !dbg !1021
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 13, i32 0, !dbg !1023
  %84 = bitcast i64* %83 to <2 x i64>*, !dbg !1023
  %85 = load <2 x i64>, <2 x i64>* %84, align 8, !dbg !1023
  call void @llvm.dbg.value(metadata i64 undef, metadata !926, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1017
  call void @llvm.dbg.value(metadata i64 undef, metadata !926, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1017
  call void @llvm.dbg.value(metadata i64 undef, metadata !1024, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1031
  call void @llvm.dbg.value(metadata i64 undef, metadata !1024, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1031
  call void @llvm.dbg.value(metadata i64 undef, metadata !1030, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1031
  call void @llvm.dbg.value(metadata i64 undef, metadata !1030, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1031
  %86 = icmp sgt <2 x i64> %85, %82, !dbg !1033
  %87 = zext <2 x i1> %86 to <2 x i32>, !dbg !1033
  %88 = icmp slt <2 x i64> %85, %82, !dbg !1033
  %89 = sext <2 x i1> %88 to <2 x i32>, !dbg !1033
  %90 = add nsw <2 x i32> %89, %87, !dbg !1033
  %91 = extractelement <2 x i32> %90, i64 0, !dbg !1034
  %92 = shl nsw i32 %91, 1, !dbg !1034
  %93 = extractelement <2 x i32> %90, i64 1, !dbg !1035
  %94 = add nsw i32 %93, %92, !dbg !1035
  %95 = icmp sgt i32 %94, 0, !dbg !1036
  br label %371

96:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1037
  %97 = add nsw i32 %5, 1, !dbg !1040
  store i32 %97, i32* @pos, align 4, !dbg !1040, !tbaa !554
  %98 = load i32, i32* @argc, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %101, label %100, !dbg !1041

100:                                              ; preds = %96
  tail call fastcc void @beyond() #35, !dbg !1042
  unreachable, !dbg !1042

101:                                              ; preds = %96
  %102 = add nsw i32 %5, 2, !dbg !1043
  store i32 %102, i32* @pos, align 4, !dbg !1043, !tbaa !554
  %103 = sext i32 %97 to i64, !dbg !1044
  %104 = getelementptr inbounds i8*, i8** %4, i64 %103, !dbg !1044
  %105 = load i8*, i8** %104, align 8, !dbg !1044, !tbaa !425
  %106 = call i32 @stat(i8* noundef %105, %struct.stat* noundef nonnull %2) #35, !dbg !1046
  %107 = icmp eq i32 %106, 0, !dbg !1047
  br i1 %107, label %108, label %371, !dbg !1048

108:                                              ; preds = %101
  %109 = tail call i32* @__errno_location() #38, !dbg !1049
  store i32 0, i32* %109, align 4, !dbg !1050, !tbaa !554
  %110 = tail call i32 @geteuid() #35, !dbg !1051
  call void @llvm.dbg.value(metadata i32 %110, metadata !927, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata i32 -1, metadata !931, metadata !DIExpression()), !dbg !1052
  %111 = icmp eq i32 %110, -1, !dbg !1053
  br i1 %111, label %112, label %115, !dbg !1054

112:                                              ; preds = %108
  %113 = load i32, i32* %109, align 4, !dbg !1055, !tbaa !554
  %114 = icmp eq i32 %113, 0, !dbg !1055
  br i1 %114, label %115, label %371, !dbg !1056

115:                                              ; preds = %112, %108
  %116 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 4, !dbg !1057
  %117 = load i32, i32* %116, align 8, !dbg !1057, !tbaa !1058
  %118 = icmp eq i32 %110, %117, !dbg !1062
  br label %371

119:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1063
  %120 = add nsw i32 %5, 1, !dbg !1066
  store i32 %120, i32* @pos, align 4, !dbg !1066, !tbaa !554
  %121 = load i32, i32* @argc, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %124, label %123, !dbg !1067

123:                                              ; preds = %119
  tail call fastcc void @beyond() #35, !dbg !1068
  unreachable, !dbg !1068

124:                                              ; preds = %119
  %125 = add nsw i32 %5, 2, !dbg !1069
  store i32 %125, i32* @pos, align 4, !dbg !1069, !tbaa !554
  %126 = sext i32 %120 to i64, !dbg !1070
  %127 = getelementptr inbounds i8*, i8** %4, i64 %126, !dbg !1070
  %128 = load i8*, i8** %127, align 8, !dbg !1070, !tbaa !425
  %129 = call i32 @stat(i8* noundef %128, %struct.stat* noundef nonnull %2) #35, !dbg !1072
  %130 = icmp eq i32 %129, 0, !dbg !1073
  br i1 %130, label %131, label %371, !dbg !1074

131:                                              ; preds = %124
  %132 = tail call i32* @__errno_location() #38, !dbg !1075
  store i32 0, i32* %132, align 4, !dbg !1076, !tbaa !554
  %133 = tail call i32 @getegid() #35, !dbg !1077
  call void @llvm.dbg.value(metadata i32 %133, metadata !932, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 -1, metadata !935, metadata !DIExpression()), !dbg !1078
  %134 = icmp eq i32 %133, -1, !dbg !1079
  br i1 %134, label %135, label %138, !dbg !1080

135:                                              ; preds = %131
  %136 = load i32, i32* %132, align 4, !dbg !1081, !tbaa !554
  %137 = icmp eq i32 %136, 0, !dbg !1081
  br i1 %137, label %138, label %371, !dbg !1082

138:                                              ; preds = %135, %131
  %139 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 5, !dbg !1083
  %140 = load i32, i32* %139, align 4, !dbg !1083, !tbaa !1084
  %141 = icmp eq i32 %133, %140, !dbg !1085
  br label %371

142:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1086
  %143 = add nsw i32 %5, 1, !dbg !1089
  store i32 %143, i32* @pos, align 4, !dbg !1089, !tbaa !554
  %144 = load i32, i32* @argc, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %147, label %146, !dbg !1090

146:                                              ; preds = %142
  tail call fastcc void @beyond() #35, !dbg !1091
  unreachable, !dbg !1091

147:                                              ; preds = %142
  %148 = add nsw i32 %5, 2, !dbg !1092
  store i32 %148, i32* @pos, align 4, !dbg !1092, !tbaa !554
  %149 = sext i32 %143 to i64, !dbg !1093
  %150 = getelementptr inbounds i8*, i8** %4, i64 %149, !dbg !1093
  %151 = load i8*, i8** %150, align 8, !dbg !1093, !tbaa !425
  %152 = call i32 @stat(i8* noundef %151, %struct.stat* noundef nonnull %2) #35, !dbg !1094
  %153 = icmp eq i32 %152, 0, !dbg !1095
  %154 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1096
  %155 = load i32, i32* %154, align 8, !dbg !1096
  %156 = and i32 %155, 61440, !dbg !1096
  %157 = icmp eq i32 %156, 32768, !dbg !1096
  %158 = select i1 %153, i1 %157, i1 false, !dbg !1096
  br label %371, !dbg !1097

159:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1098
  %160 = add nsw i32 %5, 1, !dbg !1101
  store i32 %160, i32* @pos, align 4, !dbg !1101, !tbaa !554
  %161 = load i32, i32* @argc, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %164, label %163, !dbg !1102

163:                                              ; preds = %159
  tail call fastcc void @beyond() #35, !dbg !1103
  unreachable, !dbg !1103

164:                                              ; preds = %159
  %165 = add nsw i32 %5, 2, !dbg !1104
  store i32 %165, i32* @pos, align 4, !dbg !1104, !tbaa !554
  %166 = sext i32 %160 to i64, !dbg !1105
  %167 = getelementptr inbounds i8*, i8** %4, i64 %166, !dbg !1105
  %168 = load i8*, i8** %167, align 8, !dbg !1105, !tbaa !425
  %169 = call i32 @stat(i8* noundef %168, %struct.stat* noundef nonnull %2) #35, !dbg !1106
  %170 = icmp eq i32 %169, 0, !dbg !1107
  %171 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1108
  %172 = load i32, i32* %171, align 8, !dbg !1108
  %173 = and i32 %172, 61440, !dbg !1108
  %174 = icmp eq i32 %173, 16384, !dbg !1108
  %175 = select i1 %170, i1 %174, i1 false, !dbg !1108
  br label %371, !dbg !1109

176:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1110
  %177 = add nsw i32 %5, 1, !dbg !1113
  store i32 %177, i32* @pos, align 4, !dbg !1113, !tbaa !554
  %178 = load i32, i32* @argc, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %181, label %180, !dbg !1114

180:                                              ; preds = %176
  tail call fastcc void @beyond() #35, !dbg !1115
  unreachable, !dbg !1115

181:                                              ; preds = %176
  %182 = add nsw i32 %5, 2, !dbg !1116
  store i32 %182, i32* @pos, align 4, !dbg !1116, !tbaa !554
  %183 = sext i32 %177 to i64, !dbg !1117
  %184 = getelementptr inbounds i8*, i8** %4, i64 %183, !dbg !1117
  %185 = load i8*, i8** %184, align 8, !dbg !1117, !tbaa !425
  %186 = call i32 @stat(i8* noundef %185, %struct.stat* noundef nonnull %2) #35, !dbg !1118
  %187 = icmp eq i32 %186, 0, !dbg !1119
  %188 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 8, !dbg !1120
  %189 = load i64, i64* %188, align 8, !dbg !1120
  %190 = icmp sgt i64 %189, 0, !dbg !1120
  %191 = select i1 %187, i1 %190, i1 false, !dbg !1120
  br label %371, !dbg !1121

192:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1122
  %193 = add nsw i32 %5, 1, !dbg !1125
  store i32 %193, i32* @pos, align 4, !dbg !1125, !tbaa !554
  %194 = load i32, i32* @argc, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %197, label %196, !dbg !1126

196:                                              ; preds = %192
  tail call fastcc void @beyond() #35, !dbg !1127
  unreachable, !dbg !1127

197:                                              ; preds = %192
  %198 = add nsw i32 %5, 2, !dbg !1128
  store i32 %198, i32* @pos, align 4, !dbg !1128, !tbaa !554
  %199 = sext i32 %193 to i64, !dbg !1129
  %200 = getelementptr inbounds i8*, i8** %4, i64 %199, !dbg !1129
  %201 = load i8*, i8** %200, align 8, !dbg !1129, !tbaa !425
  %202 = call i32 @stat(i8* noundef %201, %struct.stat* noundef nonnull %2) #35, !dbg !1130
  %203 = icmp eq i32 %202, 0, !dbg !1131
  %204 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1132
  %205 = load i32, i32* %204, align 8, !dbg !1132
  %206 = and i32 %205, 61440, !dbg !1132
  %207 = icmp eq i32 %206, 49152, !dbg !1132
  %208 = select i1 %203, i1 %207, i1 false, !dbg !1132
  br label %371, !dbg !1133

209:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1134
  %210 = add nsw i32 %5, 1, !dbg !1137
  store i32 %210, i32* @pos, align 4, !dbg !1137, !tbaa !554
  %211 = load i32, i32* @argc, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %214, label %213, !dbg !1138

213:                                              ; preds = %209
  tail call fastcc void @beyond() #35, !dbg !1139
  unreachable, !dbg !1139

214:                                              ; preds = %209
  %215 = add nsw i32 %5, 2, !dbg !1140
  store i32 %215, i32* @pos, align 4, !dbg !1140, !tbaa !554
  %216 = sext i32 %210 to i64, !dbg !1141
  %217 = getelementptr inbounds i8*, i8** %4, i64 %216, !dbg !1141
  %218 = load i8*, i8** %217, align 8, !dbg !1141, !tbaa !425
  %219 = call i32 @stat(i8* noundef %218, %struct.stat* noundef nonnull %2) #35, !dbg !1142
  %220 = icmp eq i32 %219, 0, !dbg !1143
  %221 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1144
  %222 = load i32, i32* %221, align 8, !dbg !1144
  %223 = and i32 %222, 61440, !dbg !1144
  %224 = icmp eq i32 %223, 8192, !dbg !1144
  %225 = select i1 %220, i1 %224, i1 false, !dbg !1144
  br label %371, !dbg !1145

226:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1146
  %227 = add nsw i32 %5, 1, !dbg !1149
  store i32 %227, i32* @pos, align 4, !dbg !1149, !tbaa !554
  %228 = load i32, i32* @argc, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %231, label %230, !dbg !1150

230:                                              ; preds = %226
  tail call fastcc void @beyond() #35, !dbg !1151
  unreachable, !dbg !1151

231:                                              ; preds = %226
  %232 = add nsw i32 %5, 2, !dbg !1152
  store i32 %232, i32* @pos, align 4, !dbg !1152, !tbaa !554
  %233 = sext i32 %227 to i64, !dbg !1153
  %234 = getelementptr inbounds i8*, i8** %4, i64 %233, !dbg !1153
  %235 = load i8*, i8** %234, align 8, !dbg !1153, !tbaa !425
  %236 = call i32 @stat(i8* noundef %235, %struct.stat* noundef nonnull %2) #35, !dbg !1154
  %237 = icmp eq i32 %236, 0, !dbg !1155
  %238 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1156
  %239 = load i32, i32* %238, align 8, !dbg !1156
  %240 = and i32 %239, 61440, !dbg !1156
  %241 = icmp eq i32 %240, 24576, !dbg !1156
  %242 = select i1 %237, i1 %241, i1 false, !dbg !1156
  br label %371, !dbg !1157

243:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1158
  %244 = add nsw i32 %5, 1, !dbg !1161
  store i32 %244, i32* @pos, align 4, !dbg !1161, !tbaa !554
  %245 = load i32, i32* @argc, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %248, label %247, !dbg !1162

247:                                              ; preds = %243
  tail call fastcc void @beyond() #35, !dbg !1163
  unreachable, !dbg !1163

248:                                              ; preds = %243
  %249 = add nsw i32 %5, 2, !dbg !1164
  store i32 %249, i32* @pos, align 4, !dbg !1164, !tbaa !554
  %250 = sext i32 %244 to i64, !dbg !1165
  %251 = getelementptr inbounds i8*, i8** %4, i64 %250, !dbg !1165
  %252 = load i8*, i8** %251, align 8, !dbg !1165, !tbaa !425
  %253 = call i32 @stat(i8* noundef %252, %struct.stat* noundef nonnull %2) #35, !dbg !1166
  %254 = icmp eq i32 %253, 0, !dbg !1167
  %255 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1168
  %256 = load i32, i32* %255, align 8, !dbg !1168
  %257 = and i32 %256, 61440, !dbg !1168
  %258 = icmp eq i32 %257, 4096, !dbg !1168
  %259 = select i1 %254, i1 %258, i1 false, !dbg !1168
  br label %371, !dbg !1169

260:                                              ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1170
  %261 = add nsw i32 %5, 1, !dbg !1173
  store i32 %261, i32* @pos, align 4, !dbg !1173, !tbaa !554
  %262 = load i32, i32* @argc, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %265, label %264, !dbg !1174

264:                                              ; preds = %260
  tail call fastcc void @beyond() #35, !dbg !1175
  unreachable, !dbg !1175

265:                                              ; preds = %260
  %266 = add nsw i32 %5, 2, !dbg !1176
  store i32 %266, i32* @pos, align 4, !dbg !1176, !tbaa !554
  %267 = sext i32 %261 to i64, !dbg !1177
  %268 = getelementptr inbounds i8*, i8** %4, i64 %267, !dbg !1177
  %269 = load i8*, i8** %268, align 8, !dbg !1177, !tbaa !425
  call void @llvm.dbg.value(metadata i8* %269, metadata !1178, metadata !DIExpression()) #35, !dbg !1185
  %270 = getelementptr inbounds [1 x i8], [1 x i8]* %1, i64 0, i64 0, !dbg !1187
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %270) #35, !dbg !1187
  call void @llvm.dbg.declare(metadata [1 x i8]* %1, metadata !1184, metadata !DIExpression()) #35, !dbg !1188
  %271 = call i64 @readlink(i8* noundef nonnull %269, i8* noundef nonnull %270, i64 noundef 1) #35, !dbg !1189
  %272 = icmp sgt i64 %271, -1, !dbg !1191
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %270) #35, !dbg !1192
  br label %371, !dbg !1193

273:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1194
  %274 = add nsw i32 %5, 1, !dbg !1197
  store i32 %274, i32* @pos, align 4, !dbg !1197, !tbaa !554
  %275 = load i32, i32* @argc, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %278, label %277, !dbg !1198

277:                                              ; preds = %273
  tail call fastcc void @beyond() #35, !dbg !1199
  unreachable, !dbg !1199

278:                                              ; preds = %273
  %279 = add nsw i32 %5, 2, !dbg !1200
  store i32 %279, i32* @pos, align 4, !dbg !1200, !tbaa !554
  %280 = sext i32 %274 to i64, !dbg !1201
  %281 = getelementptr inbounds i8*, i8** %4, i64 %280, !dbg !1201
  %282 = load i8*, i8** %281, align 8, !dbg !1201, !tbaa !425
  %283 = call i32 @stat(i8* noundef %282, %struct.stat* noundef nonnull %2) #35, !dbg !1202
  %284 = icmp eq i32 %283, 0, !dbg !1203
  %285 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1204
  %286 = load i32, i32* %285, align 8, !dbg !1204
  %287 = and i32 %286, 2048, !dbg !1204
  %288 = icmp ne i32 %287, 0, !dbg !1204
  %289 = select i1 %284, i1 %288, i1 false, !dbg !1204
  br label %371, !dbg !1205

290:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1206
  %291 = add nsw i32 %5, 1, !dbg !1209
  store i32 %291, i32* @pos, align 4, !dbg !1209, !tbaa !554
  %292 = load i32, i32* @argc, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %295, label %294, !dbg !1210

294:                                              ; preds = %290
  tail call fastcc void @beyond() #35, !dbg !1211
  unreachable, !dbg !1211

295:                                              ; preds = %290
  %296 = add nsw i32 %5, 2, !dbg !1212
  store i32 %296, i32* @pos, align 4, !dbg !1212, !tbaa !554
  %297 = sext i32 %291 to i64, !dbg !1213
  %298 = getelementptr inbounds i8*, i8** %4, i64 %297, !dbg !1213
  %299 = load i8*, i8** %298, align 8, !dbg !1213, !tbaa !425
  %300 = call i32 @stat(i8* noundef %299, %struct.stat* noundef nonnull %2) #35, !dbg !1214
  %301 = icmp eq i32 %300, 0, !dbg !1215
  %302 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1216
  %303 = load i32, i32* %302, align 8, !dbg !1216
  %304 = and i32 %303, 1024, !dbg !1216
  %305 = icmp ne i32 %304, 0, !dbg !1216
  %306 = select i1 %301, i1 %305, i1 false, !dbg !1216
  br label %371, !dbg !1217

307:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1218
  %308 = add nsw i32 %5, 1, !dbg !1221
  store i32 %308, i32* @pos, align 4, !dbg !1221, !tbaa !554
  %309 = load i32, i32* @argc, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %312, label %311, !dbg !1222

311:                                              ; preds = %307
  tail call fastcc void @beyond() #35, !dbg !1223
  unreachable, !dbg !1223

312:                                              ; preds = %307
  %313 = add nsw i32 %5, 2, !dbg !1224
  store i32 %313, i32* @pos, align 4, !dbg !1224, !tbaa !554
  %314 = sext i32 %308 to i64, !dbg !1225
  %315 = getelementptr inbounds i8*, i8** %4, i64 %314, !dbg !1225
  %316 = load i8*, i8** %315, align 8, !dbg !1225, !tbaa !425
  %317 = call i32 @stat(i8* noundef %316, %struct.stat* noundef nonnull %2) #35, !dbg !1226
  %318 = icmp eq i32 %317, 0, !dbg !1227
  %319 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1228
  %320 = load i32, i32* %319, align 8, !dbg !1228
  %321 = and i32 %320, 512, !dbg !1228
  %322 = icmp ne i32 %321, 0, !dbg !1228
  %323 = select i1 %318, i1 %322, i1 false, !dbg !1228
  br label %371, !dbg !1229

324:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1230
  %325 = add nsw i32 %5, 1, !dbg !1233
  store i32 %325, i32* @pos, align 4, !dbg !1233, !tbaa !554
  %326 = load i32, i32* @argc, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %329, label %328, !dbg !1234

328:                                              ; preds = %324
  tail call fastcc void @beyond() #35, !dbg !1235
  unreachable, !dbg !1235

329:                                              ; preds = %324
  %330 = add nsw i32 %5, 2, !dbg !1236
  store i32 %330, i32* @pos, align 4, !dbg !1236, !tbaa !554
  %331 = sext i32 %325 to i64, !dbg !1237
  %332 = getelementptr inbounds i8*, i8** %4, i64 %331, !dbg !1237
  %333 = load i8*, i8** %332, align 8, !dbg !1237, !tbaa !425
  %334 = tail call fastcc i8* @find_int(i8* noundef %333), !dbg !1238
  call void @llvm.dbg.value(metadata i8* %334, metadata !938, metadata !DIExpression()), !dbg !1239
  %335 = tail call i32* @__errno_location() #38, !dbg !1240
  store i32 0, i32* %335, align 4, !dbg !1241, !tbaa !554
  %336 = tail call i64 @strtol(i8* nocapture noundef %334, i8** noundef null, i32 noundef 10) #35, !dbg !1242
  call void @llvm.dbg.value(metadata i64 %336, metadata !936, metadata !DIExpression()), !dbg !1239
  %337 = load i32, i32* %335, align 4, !dbg !1243, !tbaa !554
  %338 = icmp ne i32 %337, 34, !dbg !1244
  %339 = icmp sgt i64 %336, -1
  %340 = select i1 %338, i1 %339, i1 false, !dbg !1245
  %341 = icmp slt i64 %336, 2147483648
  %342 = select i1 %340, i1 %341, i1 false, !dbg !1245
  br i1 %342, label %343, label %371, !dbg !1245

343:                                              ; preds = %329
  %344 = trunc i64 %336 to i32, !dbg !1246
  %345 = tail call i32 @isatty(i32 noundef %344) #35, !dbg !1247
  %346 = icmp ne i32 %345, 0, !dbg !1248
  br label %371

347:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1249
  %348 = add nsw i32 %5, 1, !dbg !1252
  store i32 %348, i32* @pos, align 4, !dbg !1252, !tbaa !554
  %349 = load i32, i32* @argc, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %352, label %351, !dbg !1253

351:                                              ; preds = %347
  tail call fastcc void @beyond() #35, !dbg !1254
  unreachable, !dbg !1254

352:                                              ; preds = %347
  %353 = add nsw i32 %5, 2, !dbg !1255
  store i32 %353, i32* @pos, align 4, !dbg !1255, !tbaa !554
  %354 = sext i32 %348 to i64, !dbg !1256
  %355 = getelementptr inbounds i8*, i8** %4, i64 %354, !dbg !1256
  %356 = load i8*, i8** %355, align 8, !dbg !1256, !tbaa !425
  %357 = load i8, i8* %356, align 1, !dbg !1256, !tbaa !563
  %358 = icmp ne i8 %357, 0, !dbg !1257
  br label %371, !dbg !1258

359:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1259
  %360 = add nsw i32 %5, 1, !dbg !1262
  store i32 %360, i32* @pos, align 4, !dbg !1262, !tbaa !554
  %361 = load i32, i32* @argc, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %364, label %363, !dbg !1263

363:                                              ; preds = %359
  tail call fastcc void @beyond() #35, !dbg !1264
  unreachable, !dbg !1264

364:                                              ; preds = %359
  %365 = add nsw i32 %5, 2, !dbg !1265
  store i32 %365, i32* @pos, align 4, !dbg !1265, !tbaa !554
  %366 = sext i32 %360 to i64, !dbg !1266
  %367 = getelementptr inbounds i8*, i8** %4, i64 %366, !dbg !1266
  %368 = load i8*, i8** %367, align 8, !dbg !1266, !tbaa !425
  %369 = load i8, i8* %368, align 1, !dbg !1266, !tbaa !563
  %370 = icmp eq i8 %369, 0, !dbg !1267
  br label %371, !dbg !1268

371:                                              ; preds = %329, %343, %135, %138, %124, %112, %115, %101, %72, %364, %352, %312, %295, %278, %265, %248, %231, %214, %197, %181, %164, %147, %79, %60, %48, %36, %24
  %372 = phi i1 [ %370, %364 ], [ %358, %352 ], [ %323, %312 ], [ %306, %295 ], [ %289, %278 ], [ %272, %265 ], [ %259, %248 ], [ %242, %231 ], [ %225, %214 ], [ %208, %197 ], [ %191, %181 ], [ %175, %164 ], [ %158, %147 ], [ %95, %79 ], [ %66, %60 ], [ %54, %48 ], [ %42, %36 ], [ %30, %24 ], [ false, %72 ], [ false, %101 ], [ false, %112 ], [ %118, %115 ], [ false, %124 ], [ false, %135 ], [ %141, %138 ], [ false, %329 ], [ %346, %343 ], !dbg !1269
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #35, !dbg !1270
  ret i1 %372, !dbg !1270
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !1271 {
  %1 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.92, i64 0, i64 0), i32 noundef 5) #35, !dbg !1272
  %2 = load i8**, i8*** @argv, align 8, !dbg !1273, !tbaa !425
  %3 = load i32, i32* @argc, align 4, !dbg !1274, !tbaa !554
  %4 = add nsw i32 %3, -1, !dbg !1275
  %5 = sext i32 %4 to i64, !dbg !1273
  %6 = getelementptr inbounds i8*, i8** %2, i64 %5, !dbg !1273
  %7 = load i8*, i8** %6, align 8, !dbg !1273, !tbaa !425
  %8 = tail call i8* @quote(i8* noundef %7) #35, !dbg !1276
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %1, i8* noundef %8) #39, !dbg !1277
  unreachable, !dbg !1277
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @three_arguments() unnamed_addr #12 !dbg !1278 {
  %1 = load i8**, i8*** @argv, align 8, !dbg !1282, !tbaa !425
  %2 = load i32, i32* @pos, align 4, !dbg !1283, !tbaa !554
  %3 = add nsw i32 %2, 1, !dbg !1284
  %4 = sext i32 %3 to i64, !dbg !1282
  %5 = getelementptr inbounds i8*, i8** %1, i64 %4, !dbg !1282
  %6 = load i8*, i8** %5, align 8, !dbg !1282, !tbaa !425
  %7 = tail call fastcc i32 @binop(i8* noundef %6), !dbg !1285
  call void @llvm.dbg.value(metadata i32 %7, metadata !1281, metadata !DIExpression()), !dbg !1286
  %8 = icmp sgt i32 %7, -1, !dbg !1287
  br i1 %8, label %9, label %11, !dbg !1289

9:                                                ; preds = %0
  %10 = tail call fastcc i1 @binary_operator(i1 noundef false, i32 noundef %7), !dbg !1290
  call void @llvm.dbg.value(metadata i1 %10, metadata !1280, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1286
  br label %90, !dbg !1291

11:                                               ; preds = %0
  %12 = sext i32 %2 to i64, !dbg !1292
  %13 = getelementptr inbounds i8*, i8** %1, i64 %12, !dbg !1292
  %14 = load i8*, i8** %13, align 8, !dbg !1292, !tbaa !425
  call void @llvm.dbg.value(metadata i8* %14, metadata !502, metadata !DIExpression()) #35, !dbg !1294
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1294
  %15 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %14, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #36, !dbg !1296
  %16 = icmp eq i32 %15, 0, !dbg !1297
  br i1 %16, label %17, label %49, !dbg !1298

17:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1299
  store i32 %3, i32* @pos, align 4, !dbg !1302, !tbaa !554
  %18 = load i32, i32* @argc, align 4
  %19 = icmp slt i32 %3, %18
  br i1 %19, label %21, label %20, !dbg !1303

20:                                               ; preds = %17
  tail call fastcc void @beyond() #35, !dbg !1304
  unreachable, !dbg !1304

21:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8* %6, metadata !502, metadata !DIExpression()) #35, !dbg !1305
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1305
  %22 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0)) #36, !dbg !1308
  %23 = icmp eq i32 %22, 0, !dbg !1309
  br i1 %23, label %24, label %32, !dbg !1310

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i1 false, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1311
  %25 = add nsw i32 %2, 2, !dbg !1313
  %26 = add nsw i32 %2, 3, !dbg !1314
  store i32 %26, i32* @pos, align 4, !dbg !1314, !tbaa !554
  %27 = sext i32 %25 to i64, !dbg !1316
  %28 = getelementptr inbounds i8*, i8** %1, i64 %27, !dbg !1316
  %29 = load i8*, i8** %28, align 8, !dbg !1316, !tbaa !425
  %30 = load i8, i8* %29, align 1, !dbg !1316, !tbaa !563
  %31 = icmp eq i8 %30, 0, !dbg !1317
  call void @llvm.dbg.value(metadata i1 %31, metadata !743, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1318
  br label %46, !dbg !1319

32:                                               ; preds = %21
  %33 = load i8, i8* %6, align 1, !dbg !1320, !tbaa !563
  %34 = icmp eq i8 %33, 45, !dbg !1321
  br i1 %34, label %35, label %45, !dbg !1322

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1323
  %37 = load i8, i8* %36, align 1, !dbg !1323, !tbaa !563
  %38 = icmp eq i8 %37, 0, !dbg !1324
  br i1 %38, label %45, label %39, !dbg !1325

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1326
  %41 = load i8, i8* %40, align 1, !dbg !1326, !tbaa !563
  %42 = icmp eq i8 %41, 0, !dbg !1327
  br i1 %42, label %43, label %45, !dbg !1328

43:                                               ; preds = %39
  %44 = tail call fastcc i1 @unary_operator() #35, !dbg !1329
  call void @llvm.dbg.value(metadata i1 %44, metadata !743, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1318
  br label %46

45:                                               ; preds = %39, %35, %32
  tail call fastcc void @beyond() #37, !dbg !1330
  unreachable, !dbg !1330

46:                                               ; preds = %24, %43
  %47 = phi i1 [ %31, %24 ], [ %44, %43 ]
  call void @llvm.dbg.value(metadata i1 %47, metadata !743, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1318
  %48 = xor i1 %47, true, !dbg !1331
  call void @llvm.dbg.value(metadata i1 %48, metadata !1280, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1286
  br label %90, !dbg !1332

49:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8* %14, metadata !502, metadata !DIExpression()) #35, !dbg !1333
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1333
  %50 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %14, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i64 0, i64 0)) #36, !dbg !1336
  %51 = icmp eq i32 %50, 0, !dbg !1337
  br i1 %51, label %52, label %63, !dbg !1338

52:                                               ; preds = %49
  %53 = add nsw i32 %2, 2, !dbg !1339
  %54 = sext i32 %53 to i64, !dbg !1340
  %55 = getelementptr inbounds i8*, i8** %1, i64 %54, !dbg !1340
  %56 = load i8*, i8** %55, align 8, !dbg !1340, !tbaa !425
  call void @llvm.dbg.value(metadata i8* %56, metadata !502, metadata !DIExpression()) #35, !dbg !1341
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1341
  %57 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %56, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0)) #36, !dbg !1343
  %58 = icmp eq i32 %57, 0, !dbg !1344
  br i1 %58, label %59, label %63, !dbg !1345

59:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i1 false, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1346
  %60 = load i8, i8* %6, align 1, !dbg !1349, !tbaa !563
  %61 = icmp ne i8 %60, 0, !dbg !1351
  call void @llvm.dbg.value(metadata i1 %61, metadata !1280, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1286
  call void @llvm.dbg.value(metadata i1 false, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1352
  %62 = add nsw i32 %2, 3, !dbg !1354
  store i32 %62, i32* @pos, align 4, !dbg !1354, !tbaa !554
  br label %90, !dbg !1355

63:                                               ; preds = %52, %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !502, metadata !DIExpression()) #35, !dbg !1356
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1356
  %64 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i64 0, i64 0)) #36, !dbg !1359
  %65 = icmp eq i32 %64, 0, !dbg !1360
  br i1 %65, label %75, label %66, !dbg !1361

66:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i8* %6, metadata !502, metadata !DIExpression()) #35, !dbg !1362
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1362
  %67 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0)) #36, !dbg !1364
  %68 = icmp eq i32 %67, 0, !dbg !1365
  br i1 %68, label %75, label %69, !dbg !1366

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i8* %6, metadata !502, metadata !DIExpression()) #35, !dbg !1367
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1367
  %70 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i64 0, i64 0)) #36, !dbg !1369
  %71 = icmp eq i32 %70, 0, !dbg !1370
  br i1 %71, label %75, label %72, !dbg !1371

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i8* %6, metadata !502, metadata !DIExpression()) #35, !dbg !1372
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1372
  %73 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i64 0, i64 0)) #36, !dbg !1374
  %74 = icmp eq i32 %73, 0, !dbg !1375
  br i1 %74, label %75, label %81, !dbg !1376

75:                                               ; preds = %72, %69, %66, %63
  %76 = load i32, i32* @argc, align 4, !dbg !1377, !tbaa !554
  %77 = icmp slt i32 %2, %76, !dbg !1379
  br i1 %77, label %79, label %78, !dbg !1380

78:                                               ; preds = %75
  tail call fastcc void @beyond() #37, !dbg !1381
  unreachable, !dbg !1381

79:                                               ; preds = %75
  %80 = tail call fastcc i1 @or() #35, !dbg !1382
  call void @llvm.dbg.value(metadata i1 %80, metadata !1280, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1286
  br label %90

81:                                               ; preds = %72
  %82 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.97, i64 0, i64 0), i32 noundef 5) #35, !dbg !1383
  %83 = load i8**, i8*** @argv, align 8, !dbg !1384, !tbaa !425
  %84 = load i32, i32* @pos, align 4, !dbg !1385, !tbaa !554
  %85 = add nsw i32 %84, 1, !dbg !1386
  %86 = sext i32 %85 to i64, !dbg !1384
  %87 = getelementptr inbounds i8*, i8** %83, i64 %86, !dbg !1384
  %88 = load i8*, i8** %87, align 8, !dbg !1384, !tbaa !425
  %89 = tail call i8* @quote(i8* noundef %88) #35, !dbg !1387
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %82, i8* noundef %89) #39, !dbg !1388
  unreachable, !dbg !1388

90:                                               ; preds = %46, %79, %59, %9
  %91 = phi i1 [ %10, %9 ], [ %48, %46 ], [ %61, %59 ], [ %80, %79 ]
  call void @llvm.dbg.value(metadata i1 %91, metadata !1280, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1286
  ret i1 %91, !dbg !1389
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i1 @or() unnamed_addr #12 !dbg !1390 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1392, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8 poison, metadata !1392, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8 1, metadata !1394, metadata !DIExpression()) #35, !dbg !1397
  call void @llvm.dbg.value(metadata i8 poison, metadata !1394, metadata !DIExpression()) #35, !dbg !1397
  call void @llvm.dbg.value(metadata i8 0, metadata !1400, metadata !DIExpression()) #35, !dbg !1408
  %1 = load i32, i32* @argc, align 4, !tbaa !554
  %2 = load i32, i32* @pos, align 4, !tbaa !554
  call void @llvm.dbg.value(metadata i8 poison, metadata !1400, metadata !DIExpression()) #35, !dbg !1408
  %3 = icmp sgt i32 %1, %2, !dbg !1411
  br i1 %3, label %4, label %40, !dbg !1412

4:                                                ; preds = %0
  %5 = load i8**, i8*** @argv, align 8, !tbaa !425
  br label %6, !dbg !1413

6:                                                ; preds = %4, %192
  %7 = phi i8** [ %175, %192 ], [ %5, %4 ]
  %8 = phi i32 [ %193, %192 ], [ %2, %4 ]
  %9 = phi i32 [ %172, %192 ], [ %1, %4 ]
  %10 = phi i1 [ %187, %192 ], [ false, %4 ]
  br label %11, !dbg !1412

11:                                               ; preds = %6, %181
  %12 = phi i8** [ %7, %6 ], [ %175, %181 ]
  %13 = phi i32 [ %8, %6 ], [ %182, %181 ]
  %14 = phi i32 [ %9, %6 ], [ %172, %181 ]
  %15 = phi i1 [ true, %6 ], [ %170, %181 ]
  %16 = sext i32 %13 to i64, !dbg !1412
  %17 = sext i32 %14 to i64, !dbg !1412
  %18 = getelementptr inbounds i8*, i8** %12, i64 %16, !dbg !1414
  %19 = load i8*, i8** %18, align 8, !dbg !1414, !tbaa !425
  %20 = load i8, i8* %19, align 1, !dbg !1414, !tbaa !563
  %21 = icmp eq i8 %20, 33, !dbg !1415
  br i1 %21, label %22, label %41, !dbg !1416

22:                                               ; preds = %11, %34
  %23 = phi i8* [ %37, %34 ], [ %19, %11 ]
  %24 = phi i1 [ %35, %34 ], [ false, %11 ]
  %25 = phi i64 [ %30, %34 ], [ %16, %11 ]
  %26 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !1417
  %27 = load i8, i8* %26, align 1, !dbg !1417, !tbaa !563
  %28 = icmp eq i8 %27, 0, !dbg !1418
  br i1 %28, label %29, label %41, !dbg !1419

29:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1420
  %30 = add nsw i64 %25, 1, !dbg !1423
  %31 = trunc i64 %30 to i32, !dbg !1423
  store i32 %31, i32* @pos, align 4, !dbg !1423, !tbaa !554
  %32 = icmp slt i64 %30, %17
  br i1 %32, label %34, label %33, !dbg !1424

33:                                               ; preds = %29
  tail call fastcc void @beyond() #35, !dbg !1425
  unreachable, !dbg !1425

34:                                               ; preds = %29
  %35 = xor i1 %24, true, !dbg !1426
  call void @llvm.dbg.value(metadata i8 poison, metadata !1400, metadata !DIExpression()) #35, !dbg !1408
  %36 = getelementptr inbounds i8*, i8** %12, i64 %30, !dbg !1414
  %37 = load i8*, i8** %36, align 8, !dbg !1414, !tbaa !425
  %38 = load i8, i8* %37, align 1, !dbg !1414, !tbaa !563
  %39 = icmp eq i8 %38, 33, !dbg !1415
  br i1 %39, label %22, label %41, !dbg !1416, !llvm.loop !1427

40:                                               ; preds = %192, %181, %0
  tail call fastcc void @beyond() #37, !dbg !1429
  unreachable, !dbg !1429

41:                                               ; preds = %34, %22, %11
  %42 = phi i64 [ %16, %11 ], [ %25, %22 ], [ %30, %34 ]
  %43 = phi i1 [ false, %11 ], [ %24, %22 ], [ %35, %34 ]
  %44 = trunc i64 %42 to i32, !dbg !1416
  %45 = shl i64 %42, 32, !dbg !1431
  %46 = ashr exact i64 %45, 32, !dbg !1431
  %47 = getelementptr inbounds i8*, i8** %12, i64 %46, !dbg !1431
  %48 = load i8*, i8** %47, align 8, !dbg !1431, !tbaa !425
  %49 = load i8, i8* %48, align 1, !dbg !1431, !tbaa !563
  %50 = icmp eq i8 %49, 40, !dbg !1432
  br i1 %50, label %51, label %126, !dbg !1433

51:                                               ; preds = %41
  %52 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !1434
  %53 = load i8, i8* %52, align 1, !dbg !1434, !tbaa !563
  %54 = icmp eq i8 %53, 0, !dbg !1435
  br i1 %54, label %55, label %126, !dbg !1436

55:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i1 true, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1437
  %56 = add nsw i32 %44, 1, !dbg !1439
  store i32 %56, i32* @pos, align 4, !dbg !1439, !tbaa !554
  %57 = icmp sgt i32 %14, %56
  br i1 %57, label %58, label %69, !dbg !1440

58:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 1, metadata !1405, metadata !DIExpression()) #35, !dbg !1441
  %59 = add i32 %44, 2, !dbg !1442
  %60 = icmp slt i32 %59, %14, !dbg !1445
  br i1 %60, label %61, label %96, !dbg !1446

61:                                               ; preds = %58
  %62 = sext i32 %59 to i64, !dbg !1447
  %63 = xor i32 %44, -1, !dbg !1447
  %64 = add i32 %14, %63, !dbg !1447
  call void @llvm.dbg.value(metadata i64 1, metadata !1405, metadata !DIExpression()) #35, !dbg !1441
  %65 = getelementptr inbounds i8*, i8** %12, i64 %62, !dbg !1448
  %66 = load i8*, i8** %65, align 8, !dbg !1448, !tbaa !425
  call void @llvm.dbg.value(metadata i8* %66, metadata !502, metadata !DIExpression()) #35, !dbg !1449
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1449
  %67 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %66, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0)) #36, !dbg !1451
  %68 = icmp eq i32 %67, 0, !dbg !1452
  br i1 %68, label %96, label %70, !dbg !1447

69:                                               ; preds = %55
  tail call fastcc void @beyond() #35, !dbg !1453
  unreachable, !dbg !1453

70:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i64 2, metadata !1405, metadata !DIExpression()) #35, !dbg !1441
  %71 = icmp eq i32 %64, 2, !dbg !1445
  br i1 %71, label %96, label %72, !dbg !1446, !llvm.loop !1454

72:                                               ; preds = %70
  %73 = add nsw i64 %62, 1, !dbg !1442
  call void @llvm.dbg.value(metadata i64 2, metadata !1405, metadata !DIExpression()) #35, !dbg !1441
  %74 = getelementptr inbounds i8*, i8** %12, i64 %73, !dbg !1448
  %75 = load i8*, i8** %74, align 8, !dbg !1448, !tbaa !425
  call void @llvm.dbg.value(metadata i8* %75, metadata !502, metadata !DIExpression()) #35, !dbg !1449
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1449
  %76 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %75, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0)) #36, !dbg !1451
  %77 = icmp eq i32 %76, 0, !dbg !1452
  br i1 %77, label %96, label %78, !dbg !1447

78:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i64 3, metadata !1405, metadata !DIExpression()) #35, !dbg !1441
  %79 = icmp eq i32 %64, 3, !dbg !1445
  br i1 %79, label %96, label %80, !dbg !1446, !llvm.loop !1454

80:                                               ; preds = %78
  %81 = add nsw i64 %62, 2, !dbg !1442
  call void @llvm.dbg.value(metadata i64 3, metadata !1405, metadata !DIExpression()) #35, !dbg !1441
  %82 = getelementptr inbounds i8*, i8** %12, i64 %81, !dbg !1448
  %83 = load i8*, i8** %82, align 8, !dbg !1448, !tbaa !425
  call void @llvm.dbg.value(metadata i8* %83, metadata !502, metadata !DIExpression()) #35, !dbg !1449
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1449
  %84 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %83, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0)) #36, !dbg !1451
  %85 = icmp eq i32 %84, 0, !dbg !1452
  br i1 %85, label %96, label %86, !dbg !1447

86:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i64 4, metadata !1405, metadata !DIExpression()) #35, !dbg !1441
  %87 = icmp eq i32 %64, 4, !dbg !1445
  br i1 %87, label %96, label %88, !dbg !1446, !llvm.loop !1454

88:                                               ; preds = %86
  %89 = add nsw i64 %62, 3, !dbg !1442
  call void @llvm.dbg.value(metadata i64 4, metadata !1405, metadata !DIExpression()) #35, !dbg !1441
  %90 = getelementptr inbounds i8*, i8** %12, i64 %89, !dbg !1448
  %91 = load i8*, i8** %90, align 8, !dbg !1448, !tbaa !425
  call void @llvm.dbg.value(metadata i8* %91, metadata !502, metadata !DIExpression()) #35, !dbg !1449
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1449
  %92 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %91, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0)) #36, !dbg !1451
  %93 = icmp eq i32 %92, 0, !dbg !1452
  %94 = sub nsw i32 %14, %56
  %95 = select i1 %93, i32 4, i32 %94, !dbg !1447
  br label %96, !dbg !1447

96:                                               ; preds = %88, %70, %61, %72, %78, %80, %86, %58
  %97 = phi i32 [ 1, %58 ], [ 1, %61 ], [ 2, %70 ], [ 2, %72 ], [ 3, %78 ], [ 3, %80 ], [ 4, %86 ], [ %95, %88 ], !dbg !1456
  call void @llvm.dbg.value(metadata i32 %97, metadata !1405, metadata !DIExpression()) #35, !dbg !1441
  %98 = tail call fastcc i1 @posixtest(i32 noundef %97) #35, !dbg !1457
  call void @llvm.dbg.value(metadata i1 %98, metadata !1403, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1408
  %99 = load i8**, i8*** @argv, align 8, !dbg !1458, !tbaa !425
  %100 = load i32, i32* @pos, align 4, !dbg !1460, !tbaa !554
  %101 = sext i32 %100 to i64, !dbg !1458
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101, !dbg !1458
  %103 = load i8*, i8** %102, align 8, !dbg !1458, !tbaa !425
  %104 = icmp eq i8* %103, null, !dbg !1458
  br i1 %104, label %105, label %108, !dbg !1461

105:                                              ; preds = %96
  %106 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.114, i64 0, i64 0), i32 noundef 5) #35, !dbg !1462
  %107 = tail call i8* @quote(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0)) #35, !dbg !1463
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %106, i8* noundef %107) #37, !dbg !1464
  unreachable, !dbg !1464

108:                                              ; preds = %96
  %109 = load i8, i8* %103, align 1, !dbg !1465, !tbaa !563
  %110 = icmp eq i8 %109, 41, !dbg !1467
  br i1 %110, label %111, label %115, !dbg !1468

111:                                              ; preds = %108
  %112 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !1469
  %113 = load i8, i8* %112, align 1, !dbg !1469, !tbaa !563
  %114 = icmp eq i8 %113, 0, !dbg !1469
  br i1 %114, label %124, label %115, !dbg !1470

115:                                              ; preds = %111, %108
  %116 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.115, i64 0, i64 0), i32 noundef 5) #35, !dbg !1471
  %117 = tail call i8* @quote_n(i32 noundef 0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i64 0, i64 0)) #35, !dbg !1472
  %118 = load i8**, i8*** @argv, align 8, !dbg !1473, !tbaa !425
  %119 = load i32, i32* @pos, align 4, !dbg !1474, !tbaa !554
  %120 = sext i32 %119 to i64, !dbg !1473
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120, !dbg !1473
  %122 = load i8*, i8** %121, align 8, !dbg !1473, !tbaa !425
  %123 = tail call i8* @quote_n(i32 noundef 1, i8* noundef %122) #35, !dbg !1475
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %116, i8* noundef %117, i8* noundef %123) #37, !dbg !1476
  unreachable, !dbg !1476

124:                                              ; preds = %111
  call void @llvm.dbg.value(metadata i1 false, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1477
  %125 = add nsw i32 %100, 1, !dbg !1479
  store i32 %125, i32* @pos, align 4, !dbg !1479, !tbaa !554
  br label %167, !dbg !1480

126:                                              ; preds = %51, %41
  %127 = sub nsw i32 %14, %44, !dbg !1481
  %128 = icmp sgt i32 %127, 3, !dbg !1483
  br i1 %128, label %129, label %141, !dbg !1484

129:                                              ; preds = %126
  call void @llvm.dbg.value(metadata i8* %48, metadata !502, metadata !DIExpression()) #35, !dbg !1485
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1485
  %130 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %48, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i64 0, i64 0)) #36, !dbg !1487
  %131 = icmp eq i32 %130, 0, !dbg !1488
  br i1 %131, label %132, label %143, !dbg !1489

132:                                              ; preds = %129
  %133 = add i64 %45, 8589934592, !dbg !1490
  %134 = ashr exact i64 %133, 32, !dbg !1490
  %135 = getelementptr inbounds i8*, i8** %12, i64 %134, !dbg !1490
  %136 = load i8*, i8** %135, align 8, !dbg !1490, !tbaa !425
  %137 = tail call fastcc i32 @binop(i8* noundef %136) #35, !dbg !1491
  call void @llvm.dbg.value(metadata i32 %137, metadata !1404, metadata !DIExpression()) #35, !dbg !1408
  %138 = icmp sgt i32 %137, -1, !dbg !1492
  br i1 %138, label %139, label %143, !dbg !1493

139:                                              ; preds = %132
  %140 = tail call fastcc i1 @binary_operator(i1 noundef true, i32 noundef %137) #35, !dbg !1494
  call void @llvm.dbg.value(metadata i1 %140, metadata !1403, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1408
  br label %167, !dbg !1495

141:                                              ; preds = %126
  %142 = icmp eq i32 %127, 3, !dbg !1496
  br i1 %142, label %143, label %152, !dbg !1498

143:                                              ; preds = %129, %132, %141
  %144 = add i64 %45, 4294967296, !dbg !1499
  %145 = ashr exact i64 %144, 32, !dbg !1499
  %146 = getelementptr inbounds i8*, i8** %12, i64 %145, !dbg !1499
  %147 = load i8*, i8** %146, align 8, !dbg !1499, !tbaa !425
  %148 = tail call fastcc i32 @binop(i8* noundef %147) #35, !dbg !1500
  call void @llvm.dbg.value(metadata i32 %148, metadata !1404, metadata !DIExpression()) #35, !dbg !1408
  %149 = icmp sgt i32 %148, -1, !dbg !1501
  br i1 %149, label %150, label %152, !dbg !1502

150:                                              ; preds = %143
  %151 = tail call fastcc i1 @binary_operator(i1 noundef false, i32 noundef %148) #35, !dbg !1503
  call void @llvm.dbg.value(metadata i1 %151, metadata !1403, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1408
  br label %167, !dbg !1504

152:                                              ; preds = %143, %141
  %153 = icmp eq i8 %49, 45, !dbg !1505
  br i1 %153, label %154, label %164, !dbg !1507

154:                                              ; preds = %152
  %155 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !1508
  %156 = load i8, i8* %155, align 1, !dbg !1508, !tbaa !563
  %157 = icmp eq i8 %156, 0, !dbg !1508
  br i1 %157, label %164, label %158, !dbg !1509

158:                                              ; preds = %154
  %159 = getelementptr inbounds i8, i8* %48, i64 2, !dbg !1510
  %160 = load i8, i8* %159, align 1, !dbg !1510, !tbaa !563
  %161 = icmp eq i8 %160, 0, !dbg !1511
  br i1 %161, label %162, label %164, !dbg !1512

162:                                              ; preds = %158
  %163 = tail call fastcc i1 @unary_operator() #35, !dbg !1513
  call void @llvm.dbg.value(metadata i1 %163, metadata !1403, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1408
  br label %167, !dbg !1514

164:                                              ; preds = %158, %154, %152
  %165 = icmp ne i8 %49, 0, !dbg !1515
  call void @llvm.dbg.value(metadata i1 %165, metadata !1403, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1408
  call void @llvm.dbg.value(metadata i1 false, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1517
  %166 = add nsw i32 %44, 1, !dbg !1519
  store i32 %166, i32* @pos, align 4, !dbg !1519, !tbaa !554
  br label %167

167:                                              ; preds = %124, %139, %150, %162, %164
  %168 = phi i1 [ %98, %124 ], [ %140, %139 ], [ %151, %150 ], [ %163, %162 ], [ %165, %164 ]
  call void @llvm.dbg.value(metadata i1 %168, metadata !1403, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1408
  %169 = xor i1 %43, %168, !dbg !1520
  %170 = and i1 %15, %169, !dbg !1521
  call void @llvm.dbg.value(metadata i1 %170, metadata !1394, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1397
  %171 = load i32, i32* @pos, align 4, !dbg !1522, !tbaa !554
  %172 = load i32, i32* @argc, align 4, !dbg !1524, !tbaa !554
  %173 = icmp slt i32 %171, %172, !dbg !1525
  br i1 %173, label %174, label %184, !dbg !1526

174:                                              ; preds = %167
  %175 = load i8**, i8*** @argv, align 8, !dbg !1527, !tbaa !425
  %176 = sext i32 %171 to i64, !dbg !1527
  %177 = getelementptr inbounds i8*, i8** %175, i64 %176, !dbg !1527
  %178 = load i8*, i8** %177, align 8, !dbg !1527, !tbaa !425
  call void @llvm.dbg.value(metadata i8* %178, metadata !502, metadata !DIExpression()) #35, !dbg !1528
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1528
  %179 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %178, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i64 0, i64 0)) #36, !dbg !1530
  %180 = icmp eq i32 %179, 0, !dbg !1531
  br i1 %180, label %181, label %186, !dbg !1532

181:                                              ; preds = %174
  call void @llvm.dbg.value(metadata i1 false, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1533
  %182 = add nsw i32 %171, 1, !dbg !1535
  store i32 %182, i32* @pos, align 4, !dbg !1535, !tbaa !554
  call void @llvm.dbg.value(metadata i8 poison, metadata !1394, metadata !DIExpression()) #35, !dbg !1397
  call void @llvm.dbg.value(metadata i8 poison, metadata !1400, metadata !DIExpression()) #35, !dbg !1408
  %183 = icmp sgt i32 %172, %182, !dbg !1411
  br i1 %183, label %11, label %40, !dbg !1412, !llvm.loop !1536

184:                                              ; preds = %167
  %185 = or i1 %10, %170, !dbg !1539
  call void @llvm.dbg.value(metadata i1 %185, metadata !1392, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1393
  br label %190

186:                                              ; preds = %174
  %187 = or i1 %10, %170, !dbg !1539
  call void @llvm.dbg.value(metadata i1 %185, metadata !1392, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1393
  call void @llvm.dbg.value(metadata i8* %178, metadata !502, metadata !DIExpression()) #35, !dbg !1540
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1540
  %188 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %178, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0)) #36, !dbg !1543
  %189 = icmp eq i32 %188, 0, !dbg !1544
  br i1 %189, label %192, label %190, !dbg !1545

190:                                              ; preds = %186, %184
  %191 = phi i1 [ %185, %184 ], [ %187, %186 ]
  ret i1 %191, !dbg !1546

192:                                              ; preds = %186
  call void @llvm.dbg.value(metadata i1 false, metadata !751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1547
  %193 = add nsw i32 %171, 1, !dbg !1549
  store i32 %193, i32* @pos, align 4, !dbg !1549, !tbaa !554
  call void @llvm.dbg.value(metadata i8 poison, metadata !1392, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8 poison, metadata !1394, metadata !DIExpression()) #35, !dbg !1397
  call void @llvm.dbg.value(metadata i8 poison, metadata !1400, metadata !DIExpression()) #35, !dbg !1408
  %194 = icmp sgt i32 %172, %193, !dbg !1411
  br i1 %194, label %6, label %40, !dbg !1412, !llvm.loop !1550
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define internal fastcc i32 @binop(i8* nocapture noundef readonly %0) unnamed_addr #14 !dbg !1552 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1554, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i8* %0, metadata !502, metadata !DIExpression()) #35, !dbg !1556
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1556
  %2 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i64 0, i64 0)) #36, !dbg !1558
  %3 = icmp eq i32 %2, 0, !dbg !1559
  br i1 %3, label %44, label %4, !dbg !1560

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %0, metadata !502, metadata !DIExpression()) #35, !dbg !1561
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1561
  %5 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0)) #36, !dbg !1563
  %6 = icmp eq i32 %5, 0, !dbg !1564
  br i1 %6, label %44, label %7, !dbg !1565

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %0, metadata !502, metadata !DIExpression()) #35, !dbg !1566
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1566
  %8 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i64 0, i64 0)) #36, !dbg !1568
  %9 = icmp eq i32 %8, 0, !dbg !1569
  br i1 %9, label %44, label %10, !dbg !1570

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %0, metadata !502, metadata !DIExpression()) #35, !dbg !1571
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1571
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i64 0, i64 0)) #36, !dbg !1573
  %12 = icmp eq i32 %11, 0, !dbg !1574
  br i1 %12, label %44, label %13, !dbg !1575

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %0, metadata !502, metadata !DIExpression()) #35, !dbg !1576
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1576
  %14 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i64 0, i64 0)) #36, !dbg !1578
  %15 = icmp eq i32 %14, 0, !dbg !1579
  br i1 %15, label %44, label %16, !dbg !1580

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8* %0, metadata !502, metadata !DIExpression()) #35, !dbg !1581
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1581
  %17 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0)) #36, !dbg !1583
  %18 = icmp eq i32 %17, 0, !dbg !1584
  br i1 %18, label %44, label %19, !dbg !1585

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8* %0, metadata !502, metadata !DIExpression()) #35, !dbg !1586
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1586
  %20 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0)) #36, !dbg !1588
  %21 = icmp eq i32 %20, 0, !dbg !1589
  br i1 %21, label %44, label %22, !dbg !1590

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %0, metadata !502, metadata !DIExpression()) #35, !dbg !1591
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1591
  %23 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)) #36, !dbg !1593
  %24 = icmp eq i32 %23, 0, !dbg !1594
  br i1 %24, label %44, label %25, !dbg !1595

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8* %0, metadata !502, metadata !DIExpression()) #35, !dbg !1596
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1596
  %26 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #36, !dbg !1598
  %27 = icmp eq i32 %26, 0, !dbg !1599
  br i1 %27, label %44, label %28, !dbg !1600

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i8* %0, metadata !502, metadata !DIExpression()) #35, !dbg !1601
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1601
  %29 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #36, !dbg !1603
  %30 = icmp eq i32 %29, 0, !dbg !1604
  br i1 %30, label %44, label %31, !dbg !1605

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8* %0, metadata !502, metadata !DIExpression()) #35, !dbg !1606
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1606
  %32 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0)) #36, !dbg !1608
  %33 = icmp eq i32 %32, 0, !dbg !1609
  br i1 %33, label %44, label %34, !dbg !1610

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i8* %0, metadata !502, metadata !DIExpression()) #35, !dbg !1611
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1611
  %35 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)) #36, !dbg !1613
  %36 = icmp eq i32 %35, 0, !dbg !1614
  br i1 %36, label %44, label %37, !dbg !1615

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i8* %0, metadata !502, metadata !DIExpression()) #35, !dbg !1616
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1616
  %38 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #36, !dbg !1618
  %39 = icmp eq i32 %38, 0, !dbg !1619
  br i1 %39, label %44, label %40, !dbg !1620

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i8* %0, metadata !502, metadata !DIExpression()) #35, !dbg !1621
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1621
  %41 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0)) #36, !dbg !1623
  %42 = icmp eq i32 %41, 0, !dbg !1624
  %43 = select i1 %42, i32 10, i32 -1, !dbg !1625
  br label %44, !dbg !1620

44:                                               ; preds = %4, %10, %16, %22, %28, %34, %37, %40, %31, %25, %19, %13, %7, %1
  %45 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 3, %7 ], [ 1, %10 ], [ 2, %13 ], [ 4, %16 ], [ 9, %19 ], [ 8, %22 ], [ 7, %25 ], [ 6, %28 ], [ 5, %31 ], [ 12, %34 ], [ %43, %40 ], [ 11, %37 ], !dbg !1560
  ret i32 %45, !dbg !1626
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @binary_operator(i1 noundef %0, i32 noundef %1) unnamed_addr #12 !dbg !1627 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca [21 x i8], align 1
  %6 = alloca [21 x i8], align 1
  %7 = alloca [2 x %struct.stat], align 8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1653
  call void @llvm.dbg.value(metadata i32 %1, metadata !1632, metadata !DIExpression()), !dbg !1653
  %8 = load i32, i32* @pos, align 4, !dbg !1653, !tbaa !554
  %9 = zext i1 %0 to i32, !dbg !1654
  %10 = add nsw i32 %8, %9, !dbg !1654
  %11 = add nsw i32 %10, 1, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %11, metadata !1633, metadata !DIExpression()), !dbg !1653
  %12 = load i32, i32* @argc, align 4, !dbg !1656, !tbaa !554
  %13 = add nsw i32 %12, -2, !dbg !1657
  %14 = icmp slt i32 %11, %13, !dbg !1658
  br i1 %14, label %15, label %24, !dbg !1659

15:                                               ; preds = %2
  %16 = load i8**, i8*** @argv, align 8, !dbg !1660, !tbaa !425
  %17 = add nsw i32 %10, 2, !dbg !1661
  %18 = sext i32 %17 to i64, !dbg !1660
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18, !dbg !1660
  %20 = load i8*, i8** %19, align 8, !dbg !1660, !tbaa !425
  call void @llvm.dbg.value(metadata i8* %20, metadata !502, metadata !DIExpression()) #35, !dbg !1662
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !1662
  %21 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %20, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i64 0, i64 0)) #36, !dbg !1664
  %22 = icmp eq i32 %21, 0, !dbg !1665
  call void @llvm.dbg.value(metadata i1 %22, metadata !1634, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1653
  %23 = select i1 %22, i32 %11, i32 %10, !dbg !1666
  br label %24, !dbg !1666

24:                                               ; preds = %15, %2
  %25 = phi i32 [ %10, %2 ], [ %23, %15 ], !dbg !1667
  %26 = phi i1 [ false, %2 ], [ %22, %15 ]
  %27 = add nsw i32 %25, 3, !dbg !1667
  store i32 %27, i32* @pos, align 4, !dbg !1667, !tbaa !554
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
  ], !dbg !1668

28:                                               ; preds = %24, %24, %24, %24, %24, %24
  %29 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0, !dbg !1669
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %29) #35, !dbg !1669
  call void @llvm.dbg.declare(metadata [21 x i8]* %5, metadata !1635, metadata !DIExpression()), !dbg !1670
  %30 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0, !dbg !1671
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %30) #35, !dbg !1671
  call void @llvm.dbg.declare(metadata [21 x i8]* %6, metadata !1641, metadata !DIExpression()), !dbg !1672
  %31 = load i8**, i8*** @argv, align 8, !dbg !1673, !tbaa !425
  %32 = sext i32 %10 to i64, !dbg !1673
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32, !dbg !1673
  %34 = load i8*, i8** %33, align 8, !dbg !1673, !tbaa !425
  br i1 %0, label %35, label %38, !dbg !1674

35:                                               ; preds = %28
  %36 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %34) #36, !dbg !1675
  %37 = call i8* @umaxtostr(i64 noundef %36, i8* noundef nonnull %29) #35, !dbg !1676
  br label %40, !dbg !1674

38:                                               ; preds = %28
  %39 = tail call fastcc i8* @find_int(i8* noundef %34), !dbg !1677
  br label %40, !dbg !1674

40:                                               ; preds = %38, %35
  %41 = phi i8* [ %37, %35 ], [ %39, %38 ], !dbg !1674
  call void @llvm.dbg.value(metadata i8* %41, metadata !1642, metadata !DIExpression()), !dbg !1673
  %42 = load i8**, i8*** @argv, align 8, !dbg !1673, !tbaa !425
  br i1 %26, label %43, label %50, !dbg !1678

43:                                               ; preds = %40
  %44 = add nsw i32 %10, 3, !dbg !1679
  %45 = sext i32 %44 to i64, !dbg !1680
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45, !dbg !1680
  %47 = load i8*, i8** %46, align 8, !dbg !1680, !tbaa !425
  %48 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %47) #36, !dbg !1681
  %49 = call i8* @umaxtostr(i64 noundef %48, i8* noundef nonnull %30) #35, !dbg !1682
  br label %56, !dbg !1678

50:                                               ; preds = %40
  %51 = add nsw i32 %10, 2, !dbg !1683
  %52 = sext i32 %51 to i64, !dbg !1684
  %53 = getelementptr inbounds i8*, i8** %42, i64 %52, !dbg !1684
  %54 = load i8*, i8** %53, align 8, !dbg !1684, !tbaa !425
  %55 = call fastcc i8* @find_int(i8* noundef %54), !dbg !1685
  br label %56, !dbg !1678

56:                                               ; preds = %50, %43
  %57 = phi i8* [ %49, %43 ], [ %55, %50 ], !dbg !1678
  call void @llvm.dbg.value(metadata i8* %57, metadata !1643, metadata !DIExpression()), !dbg !1673
  %58 = call i32 @strintcmp(i8* noundef %41, i8* noundef %57) #36, !dbg !1686
  call void @llvm.dbg.value(metadata i32 %58, metadata !1644, metadata !DIExpression()), !dbg !1673
  switch i32 %1, label %71 [
    i32 4, label %59
    i32 5, label %61
    i32 6, label %63
    i32 7, label %65
    i32 8, label %67
    i32 9, label %69
  ], !dbg !1687

59:                                               ; preds = %56
  %60 = icmp eq i32 %58, 0, !dbg !1688
  br label %72, !dbg !1690

61:                                               ; preds = %56
  %62 = icmp sgt i32 %58, -1, !dbg !1691
  br label %72, !dbg !1692

63:                                               ; preds = %56
  %64 = icmp sgt i32 %58, 0, !dbg !1693
  br label %72, !dbg !1694

65:                                               ; preds = %56
  %66 = icmp slt i32 %58, 1, !dbg !1695
  br label %72, !dbg !1696

67:                                               ; preds = %56
  %68 = icmp slt i32 %58, 0, !dbg !1697
  br label %72, !dbg !1698

69:                                               ; preds = %56
  %70 = icmp ne i32 %58, 0, !dbg !1699
  br label %72, !dbg !1700

71:                                               ; preds = %56
  unreachable, !dbg !1701

72:                                               ; preds = %69, %67, %65, %63, %61, %59
  %73 = phi i1 [ %70, %69 ], [ %68, %67 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %60, %59 ], !dbg !1702
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %30) #35, !dbg !1703
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %29) #35, !dbg !1703
  br label %196

74:                                               ; preds = %24, %24
  %75 = or i1 %26, %0, !dbg !1704
  br i1 %75, label %76, label %82, !dbg !1706

76:                                               ; preds = %74
  %77 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.111, i64 0, i64 0), i32 noundef 5) #35, !dbg !1707
  %78 = load i8**, i8*** @argv, align 8, !dbg !1708, !tbaa !425
  %79 = sext i32 %11 to i64, !dbg !1708
  %80 = getelementptr inbounds i8*, i8** %78, i64 %79, !dbg !1708
  %81 = load i8*, i8** %80, align 8, !dbg !1708, !tbaa !425
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %77, i8* noundef %81) #39, !dbg !1709
  unreachable, !dbg !1709

82:                                               ; preds = %74
  %83 = load i8**, i8*** @argv, align 8, !dbg !1710, !tbaa !425
  %84 = sext i32 %10 to i64, !dbg !1710
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84, !dbg !1710
  %86 = load i8*, i8** %85, align 8, !dbg !1710, !tbaa !425
  call void @llvm.dbg.value(metadata i8* %86, metadata !1711, metadata !DIExpression()) #35, !dbg !1717
  %87 = bitcast %struct.stat* %4 to i8*, !dbg !1719
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %87) #35, !dbg !1719
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1716, metadata !DIExpression()) #35, !dbg !1720
  %88 = call i32 @stat(i8* noundef %86, %struct.stat* noundef nonnull %4) #35, !dbg !1721
  %89 = icmp slt i32 %88, 0, !dbg !1722
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 13, i32 0, !dbg !1721
  %91 = load i64, i64* %90, align 8, !dbg !1721
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 13, i32 1, !dbg !1721
  %93 = load i64, i64* %92, align 8, !dbg !1721
  %94 = insertvalue [2 x i64] poison, i64 %91, 0, !dbg !1721
  %95 = insertvalue [2 x i64] %94, i64 %93, 1, !dbg !1721
  %96 = select i1 %89, [2 x i64] [i64 -9223372036854775808, i64 -1], [2 x i64] %95, !dbg !1721
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %87) #35, !dbg !1723
  %97 = load i8**, i8*** @argv, align 8, !dbg !1724, !tbaa !425
  %98 = add nsw i32 %10, 2, !dbg !1725
  %99 = sext i32 %98 to i64, !dbg !1724
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99, !dbg !1724
  %101 = load i8*, i8** %100, align 8, !dbg !1724, !tbaa !425
  call void @llvm.dbg.value(metadata i8* %101, metadata !1711, metadata !DIExpression()) #35, !dbg !1726
  %102 = bitcast %struct.stat* %3 to i8*, !dbg !1728
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %102) #35, !dbg !1728
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !1716, metadata !DIExpression()) #35, !dbg !1729
  %103 = call i32 @stat(i8* noundef %101, %struct.stat* noundef nonnull %3) #35, !dbg !1730
  %104 = icmp slt i32 %103, 0, !dbg !1731
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 13, i32 0, !dbg !1730
  %106 = load i64, i64* %105, align 8, !dbg !1730
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 13, i32 1, !dbg !1730
  %108 = load i64, i64* %107, align 8, !dbg !1730
  %109 = insertvalue [2 x i64] poison, i64 %106, 0, !dbg !1730
  %110 = insertvalue [2 x i64] %109, i64 %108, 1, !dbg !1730
  %111 = select i1 %104, [2 x i64] [i64 -9223372036854775808, i64 -1], [2 x i64] %110, !dbg !1730
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %102) #35, !dbg !1732
  %112 = extractvalue [2 x i64] %96, 0
  call void @llvm.dbg.value(metadata i64 %112, metadata !1024, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1733
  %113 = extractvalue [2 x i64] %96, 1
  call void @llvm.dbg.value(metadata i64 %113, metadata !1024, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1733
  %114 = extractvalue [2 x i64] %111, 0
  call void @llvm.dbg.value(metadata i64 %114, metadata !1030, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1733
  %115 = extractvalue [2 x i64] %111, 1
  call void @llvm.dbg.value(metadata i64 %115, metadata !1030, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1733
  %116 = icmp sgt i64 %112, %114, !dbg !1735
  %117 = zext i1 %116 to i32, !dbg !1735
  %118 = icmp slt i64 %112, %114, !dbg !1735
  %119 = sext i1 %118 to i32, !dbg !1735
  %120 = add nsw i32 %119, %117, !dbg !1735
  %121 = shl nsw i32 %120, 1, !dbg !1736
  %122 = icmp sgt i64 %113, %115, !dbg !1737
  %123 = zext i1 %122 to i32, !dbg !1737
  %124 = icmp slt i64 %113, %115, !dbg !1737
  %125 = sext i1 %124 to i32, !dbg !1737
  %126 = add nsw i32 %125, %123, !dbg !1737
  %127 = add nsw i32 %126, %121, !dbg !1738
  call void @llvm.dbg.value(metadata i32 %127, metadata !1645, metadata !DIExpression()), !dbg !1739
  %128 = icmp eq i32 %1, 12, !dbg !1740
  %129 = icmp slt i32 %127, 0, !dbg !1741
  %130 = icmp sgt i32 %127, 0, !dbg !1741
  %131 = select i1 %128, i1 %129, i1 %130, !dbg !1741
  br label %196

132:                                              ; preds = %24
  %133 = or i1 %26, %0, !dbg !1742
  br i1 %133, label %134, label %136, !dbg !1743

134:                                              ; preds = %132
  %135 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.112, i64 0, i64 0), i32 noundef 5) #35, !dbg !1744
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %135) #39, !dbg !1745
  unreachable, !dbg !1745

136:                                              ; preds = %132
  %137 = bitcast [2 x %struct.stat]* %7 to i8*, !dbg !1746
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %137) #35, !dbg !1746
  call void @llvm.dbg.declare(metadata [2 x %struct.stat]* %7, metadata !1647, metadata !DIExpression()), !dbg !1747
  %138 = load i8**, i8*** @argv, align 8, !dbg !1748, !tbaa !425
  %139 = sext i32 %10 to i64, !dbg !1748
  %140 = getelementptr inbounds i8*, i8** %138, i64 %139, !dbg !1748
  %141 = load i8*, i8** %140, align 8, !dbg !1748, !tbaa !425
  %142 = getelementptr inbounds [2 x %struct.stat], [2 x %struct.stat]* %7, i64 0, i64 0, !dbg !1749
  %143 = call i32 @stat(i8* noundef %141, %struct.stat* noundef nonnull %142) #35, !dbg !1750
  %144 = icmp eq i32 %143, 0, !dbg !1751
  br i1 %144, label %145, label %166, !dbg !1752

145:                                              ; preds = %136
  %146 = load i8**, i8*** @argv, align 8, !dbg !1753, !tbaa !425
  %147 = add nsw i32 %10, 2, !dbg !1754
  %148 = sext i32 %147 to i64, !dbg !1753
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148, !dbg !1753
  %150 = load i8*, i8** %149, align 8, !dbg !1753, !tbaa !425
  %151 = getelementptr inbounds [2 x %struct.stat], [2 x %struct.stat]* %7, i64 0, i64 1, !dbg !1755
  %152 = call i32 @stat(i8* noundef %150, %struct.stat* noundef nonnull %151) #35, !dbg !1756
  %153 = icmp eq i32 %152, 0, !dbg !1757
  br i1 %153, label %154, label %166, !dbg !1758

154:                                              ; preds = %145
  call void @llvm.dbg.value(metadata %struct.stat* %142, metadata !1759, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata %struct.stat* %151, metadata !1765, metadata !DIExpression()), !dbg !1766
  %155 = getelementptr inbounds [2 x %struct.stat], [2 x %struct.stat]* %7, i64 0, i64 0, i32 0, !dbg !1768
  %156 = load i64, i64* %155, align 8, !dbg !1768, !tbaa !1769
  %157 = getelementptr inbounds %struct.stat, %struct.stat* %151, i64 0, i32 0, !dbg !1768
  %158 = load i64, i64* %157, align 8, !dbg !1768, !tbaa !1769
  %159 = icmp eq i64 %156, %158, !dbg !1768
  %160 = getelementptr inbounds [2 x %struct.stat], [2 x %struct.stat]* %7, i64 0, i64 0, i32 1, !dbg !1768
  %161 = load i64, i64* %160, align 8, !dbg !1768, !tbaa !1770
  %162 = getelementptr inbounds [2 x %struct.stat], [2 x %struct.stat]* %7, i64 0, i64 1, i32 1, !dbg !1768
  %163 = load i64, i64* %162, align 8, !dbg !1768, !tbaa !1770
  %164 = icmp eq i64 %161, %163, !dbg !1768
  %165 = and i1 %159, %164, !dbg !1768
  br label %166

166:                                              ; preds = %154, %145, %136
  %167 = phi i1 [ false, %145 ], [ false, %136 ], [ %165, %154 ], !dbg !1771
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %137) #35, !dbg !1772
  br label %196

168:                                              ; preds = %24, %24
  %169 = load i8**, i8*** @argv, align 8, !dbg !1773, !tbaa !425
  %170 = sext i32 %10 to i64, !dbg !1773
  %171 = getelementptr inbounds i8*, i8** %169, i64 %170, !dbg !1773
  %172 = load i8*, i8** %171, align 8, !dbg !1773, !tbaa !425
  %173 = add nsw i32 %10, 2, !dbg !1774
  %174 = sext i32 %173 to i64, !dbg !1775
  %175 = getelementptr inbounds i8*, i8** %169, i64 %174, !dbg !1775
  %176 = load i8*, i8** %175, align 8, !dbg !1775, !tbaa !425
  call void @llvm.dbg.value(metadata i8* %172, metadata !502, metadata !DIExpression()) #35, !dbg !1776
  call void @llvm.dbg.value(metadata i8* %176, metadata !508, metadata !DIExpression()) #35, !dbg !1776
  %177 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %172, i8* noundef nonnull dereferenceable(1) %176) #36, !dbg !1778
  %178 = icmp eq i32 %177, 0, !dbg !1779
  %179 = icmp ne i32 %1, 0, !dbg !1780
  %180 = xor i1 %179, %178, !dbg !1781
  br label %196, !dbg !1782

181:                                              ; preds = %24, %24
  %182 = load i8**, i8*** @argv, align 8, !dbg !1783, !tbaa !425
  %183 = sext i32 %10 to i64, !dbg !1783
  %184 = getelementptr inbounds i8*, i8** %182, i64 %183, !dbg !1783
  %185 = load i8*, i8** %184, align 8, !dbg !1783, !tbaa !425
  %186 = add nsw i32 %10, 2, !dbg !1784
  %187 = sext i32 %186 to i64, !dbg !1785
  %188 = getelementptr inbounds i8*, i8** %182, i64 %187, !dbg !1785
  %189 = load i8*, i8** %188, align 8, !dbg !1785, !tbaa !425
  %190 = tail call i32 @strcoll(i8* noundef %185, i8* noundef %189) #36, !dbg !1786
  call void @llvm.dbg.value(metadata i32 %190, metadata !1651, metadata !DIExpression()), !dbg !1787
  %191 = icmp eq i32 %1, 2, !dbg !1788
  %192 = icmp slt i32 %190, 0, !dbg !1789
  %193 = icmp sgt i32 %190, 0, !dbg !1789
  %194 = select i1 %191, i1 %192, i1 %193, !dbg !1789
  br label %196

195:                                              ; preds = %24
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.binary_operator, i64 0, i64 0)) #37, !dbg !1790
  unreachable, !dbg !1790

196:                                              ; preds = %181, %168, %166, %82, %72
  %197 = phi i1 [ %194, %181 ], [ %180, %168 ], [ %167, %166 ], [ %131, %82 ], [ %73, %72 ], !dbg !1793
  ret i1 %197, !dbg !1794
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc i8* @find_int(i8* noundef %0) unnamed_addr #12 !dbg !1795 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1799, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i8* %0, metadata !1800, metadata !DIExpression()), !dbg !1802
  %2 = tail call i16** @__ctype_b_loc() #38, !dbg !1802
  %3 = load i16*, i16** %2, align 8, !tbaa !425
  br label %4, !dbg !1803

4:                                                ; preds = %4, %1
  %5 = phi i8* [ %0, %1 ], [ %12, %4 ], !dbg !1805
  call void @llvm.dbg.value(metadata i8* %5, metadata !1800, metadata !DIExpression()), !dbg !1802
  %6 = load i8, i8* %5, align 1, !dbg !1806, !tbaa !563
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i16, i16* %3, i64 %7, !dbg !1806
  %9 = load i16, i16* %8, align 2, !dbg !1806, !tbaa !588
  %10 = and i16 %9, 8192, !dbg !1806
  %11 = icmp eq i16 %10, 0, !dbg !1808
  %12 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1809
  call void @llvm.dbg.value(metadata i8* %12, metadata !1800, metadata !DIExpression()), !dbg !1802
  br i1 %11, label %13, label %4, !dbg !1808, !llvm.loop !1810

13:                                               ; preds = %4
  %14 = icmp eq i8 %6, 43, !dbg !1812
  %15 = icmp eq i8 %6, 45, !dbg !1814
  %16 = zext i1 %15 to i64, !dbg !1814
  %17 = getelementptr inbounds i8, i8* %5, i64 %16, !dbg !1814
  %18 = select i1 %14, i8* %12, i8* %17, !dbg !1814
  call void @llvm.dbg.value(metadata i8* undef, metadata !1801, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i8* %18, metadata !1800, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i8* %18, metadata !1800, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1802
  %19 = load i8, i8* %18, align 1, !dbg !1815, !tbaa !563
  %20 = zext i8 %19 to i32, !dbg !1815
  call void @llvm.dbg.value(metadata i32 %20, metadata !1817, metadata !DIExpression()), !dbg !1821
  %21 = add nsw i32 %20, -48, !dbg !1823
  %22 = icmp ult i32 %21, 10, !dbg !1823
  br i1 %22, label %23, label %50, !dbg !1824

23:                                               ; preds = %13, %23
  %24 = phi i8* [ %25, %23 ], [ %18, %13 ]
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !1825
  call void @llvm.dbg.value(metadata i8* %25, metadata !1800, metadata !DIExpression()), !dbg !1802
  %26 = load i8, i8* %25, align 1, !dbg !1826, !tbaa !563
  %27 = zext i8 %26 to i32, !dbg !1826
  call void @llvm.dbg.value(metadata i32 %27, metadata !1817, metadata !DIExpression()), !dbg !1828
  %28 = add nsw i32 %27, -48, !dbg !1830
  %29 = icmp ult i32 %28, 10, !dbg !1830
  br i1 %29, label %23, label %30, !dbg !1831, !llvm.loop !1832

30:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %25, metadata !1800, metadata !DIExpression()), !dbg !1802
  %31 = zext i8 %26 to i64
  %32 = getelementptr inbounds i16, i16* %3, i64 %31, !dbg !1834
  %33 = load i16, i16* %32, align 2, !dbg !1834, !tbaa !588
  %34 = and i16 %33, 8192, !dbg !1834
  %35 = icmp eq i16 %34, 0, !dbg !1835
  br i1 %35, label %45, label %36, !dbg !1835

36:                                               ; preds = %30, %36
  %37 = phi i8* [ %38, %36 ], [ %25, %30 ]
  call void @llvm.dbg.value(metadata i8* %37, metadata !1800, metadata !DIExpression()), !dbg !1802
  %38 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1836
  call void @llvm.dbg.value(metadata i8* %38, metadata !1800, metadata !DIExpression()), !dbg !1802
  %39 = load i8, i8* %38, align 1, !dbg !1834, !tbaa !563
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, i16* %3, i64 %40, !dbg !1834
  %42 = load i16, i16* %41, align 2, !dbg !1834, !tbaa !588
  %43 = and i16 %42, 8192, !dbg !1834
  %44 = icmp eq i16 %43, 0, !dbg !1835
  br i1 %44, label %45, label %36, !dbg !1835, !llvm.loop !1837

45:                                               ; preds = %36, %30
  %46 = phi i8 [ %26, %30 ], [ %39, %36 ], !dbg !1834
  %47 = icmp eq i8 %46, 0, !dbg !1838
  br i1 %47, label %48, label %50, !dbg !1840

48:                                               ; preds = %45
  %49 = select i1 %14, i8* %12, i8* %5, !dbg !1814
  call void @llvm.dbg.value(metadata i8* %49, metadata !1801, metadata !DIExpression()), !dbg !1802
  ret i8* %49, !dbg !1841

50:                                               ; preds = %45, %13
  %51 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i64 0, i64 0), i32 noundef 5) #35, !dbg !1842
  %52 = tail call i8* @quote(i8* noundef %0) #35, !dbg !1843
  tail call void (i8*, ...) @test_syntax_error(i8* noundef %51, i8* noundef %52) #39, !dbg !1844
  unreachable, !dbg !1844
}

; Function Attrs: nofree nounwind
declare !dbg !1845 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !1851 i32 @strcoll(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare !dbg !1855 i32 @euidaccess(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1859 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1862 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(i8* nocapture noundef readonly, i8* nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare !dbg !1865 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #17 !dbg !1868 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1870, metadata !DIExpression()), !dbg !1871
  store i8* %0, i8** @file_name, align 8, !dbg !1872, !tbaa !425
  ret void, !dbg !1873
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #17 !dbg !1874 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1876, metadata !DIExpression()), !dbg !1877
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1878, !tbaa !1879
  ret void, !dbg !1881
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1882 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1887, !tbaa !425
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #35, !dbg !1888
  %3 = icmp eq i32 %2, 0, !dbg !1889
  br i1 %3, label %22, label %4, !dbg !1890

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1891, !tbaa !1879, !range !1892
  %6 = icmp eq i8 %5, 0, !dbg !1891
  br i1 %6, label %11, label %7, !dbg !1893

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #38, !dbg !1894
  %9 = load i32, i32* %8, align 4, !dbg !1894, !tbaa !554
  %10 = icmp eq i32 %9, 32, !dbg !1895
  br i1 %10, label %22, label %11, !dbg !1896

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.57, i64 0, i64 0), i32 noundef 5) #35, !dbg !1897
  call void @llvm.dbg.value(metadata i8* %12, metadata !1884, metadata !DIExpression()), !dbg !1898
  %13 = load i8*, i8** @file_name, align 8, !dbg !1899, !tbaa !425
  %14 = icmp eq i8* %13, null, !dbg !1899
  %15 = tail call i32* @__errno_location() #38, !dbg !1901
  %16 = load i32, i32* %15, align 4, !dbg !1901, !tbaa !554
  br i1 %14, label %19, label %17, !dbg !1902

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #35, !dbg !1903
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.58, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #35, !dbg !1903
  br label %20, !dbg !1903

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.59, i64 0, i64 0), i8* noundef %12) #35, !dbg !1904
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1905, !tbaa !554
  tail call void @_exit(i32 noundef %21) #37, !dbg !1906
  unreachable, !dbg !1906

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1907, !tbaa !425
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #35, !dbg !1909
  %25 = icmp eq i32 %24, 0, !dbg !1910
  br i1 %25, label %28, label %26, !dbg !1911

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1912, !tbaa !554
  tail call void @_exit(i32 noundef %27) #37, !dbg !1913
  unreachable, !dbg !1913

28:                                               ; preds = %22
  ret void, !dbg !1914
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #19 !dbg !1915 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1919, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %1, metadata !1920, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8* %2, metadata !1921, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1922, metadata !DIExpression()), !dbg !1924
  tail call fastcc void @flush_stdout(), !dbg !1925
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1926, !tbaa !425
  %7 = icmp eq void ()* %6, null, !dbg !1926
  br i1 %7, label %9, label %8, !dbg !1928

8:                                                ; preds = %4
  tail call void %6() #35, !dbg !1929
  br label %13, !dbg !1929

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1930, !tbaa !425
  %11 = tail call i8* @getprogname() #36, !dbg !1930
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i8* noundef %11) #35, !dbg !1930
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1932
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1932
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1932
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1932, !tbaa.struct !883
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1932
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1932
  ret void, !dbg !1933
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1934 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1936, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i32 1, metadata !1938, metadata !DIExpression()) #35, !dbg !1941
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #35, !dbg !1944
  %2 = icmp slt i32 %1, 0, !dbg !1945
  br i1 %2, label %6, label %3, !dbg !1946

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1947, !tbaa !425
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #35, !dbg !1947
  br label %6, !dbg !1947

6:                                                ; preds = %3, %0
  ret void, !dbg !1948
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1949 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1951, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i32 %1, metadata !1952, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8* %2, metadata !1953, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1954, metadata !DIExpression()), !dbg !1956
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1957, !tbaa !425
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1958
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1959, metadata !DIExpression()) #35, !dbg !2002
  call void @llvm.dbg.value(metadata i8* %2, metadata !2000, metadata !DIExpression()) #35, !dbg !2002
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2004
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !2004, !noalias !2005
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !2004
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #35, !dbg !2004
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !2004, !noalias !2005
  %11 = load i32, i32* @error_message_count, align 4, !dbg !2009, !tbaa !554
  %12 = add i32 %11, 1, !dbg !2009
  store i32 %12, i32* @error_message_count, align 4, !dbg !2009, !tbaa !554
  %13 = icmp eq i32 %1, 0, !dbg !2010
  br i1 %13, label %24, label %14, !dbg !2012

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2013, metadata !DIExpression()) #35, !dbg !2021
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !2023
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !2023
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !2017, metadata !DIExpression()) #35, !dbg !2024
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #35, !dbg !2025
  call void @llvm.dbg.value(metadata i8* %16, metadata !2016, metadata !DIExpression()) #35, !dbg !2021
  %17 = icmp eq i8* %16, null, !dbg !2026
  br i1 %17, label %18, label %20, !dbg !2028

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.64, i64 0, i64 0), i32 noundef 5) #35, !dbg !2029
  call void @llvm.dbg.value(metadata i8* %19, metadata !2016, metadata !DIExpression()) #35, !dbg !2021
  br label %20, !dbg !2030

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !2021
  call void @llvm.dbg.value(metadata i8* %21, metadata !2016, metadata !DIExpression()) #35, !dbg !2021
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2031, !tbaa !425
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.65, i64 0, i64 0), i8* noundef %21) #35, !dbg !2031
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !2032
  br label %24, !dbg !2033

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2034, !tbaa !425
  call void @llvm.dbg.value(metadata i32 10, metadata !2035, metadata !DIExpression()) #35, !dbg !2042
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !2041, metadata !DIExpression()) #35, !dbg !2042
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !2044
  %27 = load i8*, i8** %26, align 8, !dbg !2044, !tbaa !2045
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !2044
  %29 = load i8*, i8** %28, align 8, !dbg !2044, !tbaa !2047
  %30 = icmp ult i8* %27, %29, !dbg !2044
  br i1 %30, label %33, label %31, !dbg !2044, !prof !2048

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #35, !dbg !2044
  br label %35, !dbg !2044

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !2044
  store i8* %34, i8** %26, align 8, !dbg !2044, !tbaa !2045
  store i8 10, i8* %27, align 1, !dbg !2044, !tbaa !563
  br label %35, !dbg !2044

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2049, !tbaa !425
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #35, !dbg !2049
  %38 = icmp eq i32 %0, 0, !dbg !2050
  br i1 %38, label %40, label %39, !dbg !2052

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #37, !dbg !2053
  unreachable, !dbg !2053

40:                                               ; preds = %35
  ret void, !dbg !2054
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2055 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2058 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !2061 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !2065 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2069, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i32 %1, metadata !2070, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8* %2, metadata !2071, metadata !DIExpression()), !dbg !2073
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !2074
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #35, !dbg !2074
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2072, metadata !DIExpression()), !dbg !2075
  call void @llvm.va_start(i8* nonnull %6), !dbg !2076
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2077
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !2077
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2077, !tbaa.struct !883
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #41, !dbg !2077
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !2077
  call void @llvm.va_end(i8* nonnull %6), !dbg !2078
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #35, !dbg !2079
  ret void, !dbg !2079
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #13

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #19 !dbg !164 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !182, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i32 %1, metadata !183, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8* %2, metadata !184, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i32 %3, metadata !185, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8* %4, metadata !186, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !187, metadata !DIExpression()), !dbg !2081
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !2082, !tbaa !554
  %9 = icmp eq i32 %8, 0, !dbg !2082
  br i1 %9, label %24, label %10, !dbg !2084

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !2085, !tbaa !554
  %12 = icmp eq i32 %11, %3, !dbg !2088
  br i1 %12, label %13, label %23, !dbg !2089

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !2090, !tbaa !425
  %15 = icmp eq i8* %14, %2, !dbg !2091
  br i1 %15, label %39, label %16, !dbg !2092

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !2093
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !2094
  br i1 %19, label %20, label %23, !dbg !2094

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #36, !dbg !2095
  %22 = icmp eq i32 %21, 0, !dbg !2096
  br i1 %22, label %39, label %23, !dbg !2097

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !2098, !tbaa !425
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !2099, !tbaa !554
  br label %24, !dbg !2100

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2101
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !2102, !tbaa !425
  %26 = icmp eq void ()* %25, null, !dbg !2102
  br i1 %26, label %28, label %27, !dbg !2104

27:                                               ; preds = %24
  tail call void %25() #35, !dbg !2105
  br label %32, !dbg !2105

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2106, !tbaa !425
  %30 = tail call i8* @getprogname() #36, !dbg !2106
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.68, i64 0, i64 0), i8* noundef %30) #35, !dbg !2106
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2108, !tbaa !425
  %34 = icmp eq i8* %2, null, !dbg !2108
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.69, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.70, i64 0, i64 0), !dbg !2108
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #35, !dbg !2108
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2109
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #35, !dbg !2109
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !2109, !tbaa.struct !883
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !2109
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #35, !dbg !2109
  br label %39, !dbg !2110

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !2110
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !2111 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2115, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i32 %1, metadata !2116, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8* %2, metadata !2117, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i32 %3, metadata !2118, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8* %4, metadata !2119, metadata !DIExpression()), !dbg !2121
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2122
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !2122
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !2120, metadata !DIExpression()), !dbg !2123
  call void @llvm.va_start(i8* nonnull %8), !dbg !2124
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2125
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !2125
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !2125, !tbaa.struct !883
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #41, !dbg !2125
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !2125
  call void @llvm.va_end(i8* nonnull %8), !dbg !2126
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !2127
  ret void, !dbg !2127
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #20 !dbg !2128 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !2131, !tbaa !425
  ret i8* %1, !dbg !2132
}

; Function Attrs: nofree norecurse nosync nounwind uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 noundef %0, i8* noundef writeonly %1) local_unnamed_addr #21 !dbg !2133 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2138, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8* %1, metadata !2139, metadata !DIExpression()), !dbg !2141
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2142
  call void @llvm.dbg.value(metadata i8* %3, metadata !2140, metadata !DIExpression()), !dbg !2141
  store i8 0, i8* %3, align 1, !dbg !2143, !tbaa !563
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %8, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %13, %4 ], !dbg !2141
  call void @llvm.dbg.value(metadata i8* %6, metadata !2140, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i64 %5, metadata !2138, metadata !DIExpression()), !dbg !2141
  %7 = freeze i64 %5
  %8 = udiv i64 %7, 10, !dbg !2144
  %9 = mul i64 %8, 10
  %10 = sub i64 %7, %9
  %11 = trunc i64 %10 to i8, !dbg !2147
  %12 = or i8 %11, 48, !dbg !2147
  %13 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2148
  call void @llvm.dbg.value(metadata i8* %13, metadata !2140, metadata !DIExpression()), !dbg !2141
  store i8 %12, i8* %13, align 1, !dbg !2149, !tbaa !563
  call void @llvm.dbg.value(metadata i64 %8, metadata !2138, metadata !DIExpression()), !dbg !2141
  %14 = icmp ult i64 %5, 10, !dbg !2150
  br i1 %14, label %15, label %4, !dbg !2151, !llvm.loop !2152

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %13, metadata !2140, metadata !DIExpression()), !dbg !2141
  ret i8* %13, !dbg !2155
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #22 !dbg !2156 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2158, metadata !DIExpression()), !dbg !2161
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #36, !dbg !2162
  call void @llvm.dbg.value(metadata i8* %2, metadata !2159, metadata !DIExpression()), !dbg !2161
  %3 = icmp eq i8* %2, null, !dbg !2163
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2163
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !2163
  call void @llvm.dbg.value(metadata i8* %5, metadata !2160, metadata !DIExpression()), !dbg !2161
  %6 = ptrtoint i8* %5 to i64, !dbg !2164
  %7 = ptrtoint i8* %0 to i64, !dbg !2164
  %8 = sub i64 %6, %7, !dbg !2164
  %9 = icmp sgt i64 %8, 6, !dbg !2166
  br i1 %9, label %10, label %19, !dbg !2167

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !2168
  call void @llvm.dbg.value(metadata i8* %11, metadata !2169, metadata !DIExpression()) #35, !dbg !2176
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i64 0, i64 0), metadata !2174, metadata !DIExpression()) #35, !dbg !2176
  call void @llvm.dbg.value(metadata i64 7, metadata !2175, metadata !DIExpression()) #35, !dbg !2176
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i64 0, i64 0), i64 7) #35, !dbg !2178
  %13 = icmp eq i32 %12, 0, !dbg !2179
  br i1 %13, label %14, label %19, !dbg !2180

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !2158, metadata !DIExpression()), !dbg !2161
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.117, i64 0, i64 0), i64 noundef 3) #36, !dbg !2181
  %16 = icmp eq i32 %15, 0, !dbg !2184
  %17 = select i1 %16, i64 3, i64 0, !dbg !2185
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !2185
  br label %19, !dbg !2185

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2161
  call void @llvm.dbg.value(metadata i8* %21, metadata !2160, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i8* %20, metadata !2158, metadata !DIExpression()), !dbg !2161
  store i8* %20, i8** @program_name, align 8, !dbg !2186, !tbaa !425
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !2187, !tbaa !425
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !2188, !tbaa !425
  ret void, !dbg !2189
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !2190 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2195, metadata !DIExpression()), !dbg !2198
  %2 = tail call i32* @__errno_location() #38, !dbg !2199
  %3 = load i32, i32* %2, align 4, !dbg !2199, !tbaa !554
  call void @llvm.dbg.value(metadata i32 %3, metadata !2196, metadata !DIExpression()), !dbg !2198
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2200
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2200
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2200
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #42, !dbg !2201
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2201
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2197, metadata !DIExpression()), !dbg !2198
  store i32 %3, i32* %2, align 4, !dbg !2202, !tbaa !554
  ret %struct.quoting_options* %8, !dbg !2203
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #20 !dbg !2204 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2210, metadata !DIExpression()), !dbg !2211
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2212
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2212
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2213
  %5 = load i32, i32* %4, align 8, !dbg !2213, !tbaa !2214
  ret i32 %5, !dbg !2216
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #17 !dbg !2217 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2221, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i32 %1, metadata !2222, metadata !DIExpression()), !dbg !2223
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2224
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2224
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2225
  store i32 %1, i32* %5, align 8, !dbg !2226, !tbaa !2214
  ret void, !dbg !2227
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !2228 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2232, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8 %1, metadata !2233, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %2, metadata !2234, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8 %1, metadata !2235, metadata !DIExpression()), !dbg !2240
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2241
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2241
  %6 = lshr i8 %1, 5, !dbg !2242
  %7 = zext i8 %6 to i64, !dbg !2242
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2243
  call void @llvm.dbg.value(metadata i32* %8, metadata !2236, metadata !DIExpression()), !dbg !2240
  %9 = and i8 %1, 31, !dbg !2244
  %10 = zext i8 %9 to i32, !dbg !2244
  call void @llvm.dbg.value(metadata i32 %10, metadata !2238, metadata !DIExpression()), !dbg !2240
  %11 = load i32, i32* %8, align 4, !dbg !2245, !tbaa !554
  %12 = lshr i32 %11, %10, !dbg !2246
  %13 = and i32 %12, 1, !dbg !2247
  call void @llvm.dbg.value(metadata i32 %13, metadata !2239, metadata !DIExpression()), !dbg !2240
  %14 = and i32 %2, 1, !dbg !2248
  %15 = xor i32 %13, %14, !dbg !2249
  %16 = shl i32 %15, %10, !dbg !2250
  %17 = xor i32 %16, %11, !dbg !2251
  store i32 %17, i32* %8, align 4, !dbg !2251, !tbaa !554
  ret i32 %13, !dbg !2252
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2253 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2257, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i32 %1, metadata !2258, metadata !DIExpression()), !dbg !2260
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2261
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2263
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2257, metadata !DIExpression()), !dbg !2260
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2264
  %6 = load i32, i32* %5, align 4, !dbg !2264, !tbaa !2265
  call void @llvm.dbg.value(metadata i32 %6, metadata !2259, metadata !DIExpression()), !dbg !2260
  store i32 %1, i32* %5, align 4, !dbg !2266, !tbaa !2265
  ret i32 %6, !dbg !2267
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2268 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2272, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8* %1, metadata !2273, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8* %2, metadata !2274, metadata !DIExpression()), !dbg !2275
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2276
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2278
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2272, metadata !DIExpression()), !dbg !2275
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2279
  store i32 10, i32* %6, align 8, !dbg !2280, !tbaa !2214
  %7 = icmp ne i8* %1, null, !dbg !2281
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2283
  br i1 %9, label %11, label %10, !dbg !2283

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !2284
  unreachable, !dbg !2284

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2285
  store i8* %1, i8** %12, align 8, !dbg !2286, !tbaa !2287
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2288
  store i8* %2, i8** %13, align 8, !dbg !2289, !tbaa !2290
  ret void, !dbg !2291
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2292 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2296, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %1, metadata !2297, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i8* %2, metadata !2298, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %3, metadata !2299, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2300, metadata !DIExpression()), !dbg !2304
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2305
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2305
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2301, metadata !DIExpression()), !dbg !2304
  %8 = tail call i32* @__errno_location() #38, !dbg !2306
  %9 = load i32, i32* %8, align 4, !dbg !2306, !tbaa !554
  call void @llvm.dbg.value(metadata i32 %9, metadata !2302, metadata !DIExpression()), !dbg !2304
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2307
  %11 = load i32, i32* %10, align 8, !dbg !2307, !tbaa !2214
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2308
  %13 = load i32, i32* %12, align 4, !dbg !2308, !tbaa !2265
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2309
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2310
  %16 = load i8*, i8** %15, align 8, !dbg !2310, !tbaa !2287
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2311
  %18 = load i8*, i8** %17, align 8, !dbg !2311, !tbaa !2290
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %19, metadata !2303, metadata !DIExpression()), !dbg !2304
  store i32 %9, i32* %8, align 4, !dbg !2313, !tbaa !554
  ret i64 %19, !dbg !2314
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2315 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2321, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %1, metadata !2322, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %2, metadata !2323, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %3, metadata !2324, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 %4, metadata !2325, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 %5, metadata !2326, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32* %6, metadata !2327, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %7, metadata !2328, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %8, metadata !2329, metadata !DIExpression()), !dbg !2383
  %17 = tail call i64 @__ctype_get_mb_cur_max() #35, !dbg !2384
  %18 = icmp eq i64 %17, 1, !dbg !2385
  call void @llvm.dbg.value(metadata i1 %18, metadata !2330, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2383
  call void @llvm.dbg.value(metadata i64 0, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 0, metadata !2332, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* null, metadata !2333, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 0, metadata !2334, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 0, metadata !2335, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 %5, metadata !2336, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2383
  call void @llvm.dbg.value(metadata i8 0, metadata !2337, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 1, metadata !2338, metadata !DIExpression()), !dbg !2383
  %19 = and i32 %5, 2, !dbg !2386
  %20 = icmp ne i32 %19, 0, !dbg !2386
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
  br label %36, !dbg !2386

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2387
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2388
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2389
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2322, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2338, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2337, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2336, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2335, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %43, metadata !2334, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %42, metadata !2333, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %41, metadata !2332, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 0, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %40, metadata !2324, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %39, metadata !2329, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %38, metadata !2328, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 %37, metadata !2325, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.label(metadata !2376), !dbg !2390
  call void @llvm.dbg.value(metadata i8 0, metadata !2339, metadata !DIExpression()), !dbg !2383
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
  ], !dbg !2391

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2336, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 5, metadata !2325, metadata !DIExpression()), !dbg !2383
  br label %111, !dbg !2392

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2336, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 5, metadata !2325, metadata !DIExpression()), !dbg !2383
  br i1 %45, label %111, label %51, !dbg !2392

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2393
  br i1 %52, label %111, label %53, !dbg !2397

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2393, !tbaa !563
  br label %111, !dbg !2393

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.128, i64 0, i64 0), metadata !260, metadata !DIExpression()) #35, !dbg !2398
  call void @llvm.dbg.value(metadata i32 %37, metadata !261, metadata !DIExpression()) #35, !dbg !2398
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.128, i64 0, i64 0), i32 noundef 5) #35, !dbg !2402
  call void @llvm.dbg.value(metadata i8* %55, metadata !262, metadata !DIExpression()) #35, !dbg !2398
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.128, i64 0, i64 0), !dbg !2403
  br i1 %56, label %57, label %66, !dbg !2405

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2406
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2407
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !268, metadata !DIExpression()) #35, !dbg !2408
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2409, metadata !DIExpression()) #35, !dbg !2416
  call void @llvm.dbg.value(metadata i8* %23, metadata !2418, metadata !DIExpression()) #35, !dbg !2426
  call void @llvm.dbg.value(metadata i32 0, metadata !2424, metadata !DIExpression()) #35, !dbg !2426
  call void @llvm.dbg.value(metadata i64 8, metadata !2425, metadata !DIExpression()) #35, !dbg !2426
  store i64 0, i64* %13, align 8, !dbg !2428
  call void @llvm.dbg.value(metadata i32* %12, metadata !263, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2398
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #35, !dbg !2429
  %59 = icmp eq i64 %58, 3, !dbg !2431
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !263, metadata !DIExpression()) #35, !dbg !2398
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2432
  %63 = icmp eq i32 %37, 9, !dbg !2432
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.130, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.131, i64 0, i64 0), !dbg !2432
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2432
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2433
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2433
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2398
  call void @llvm.dbg.value(metadata i8* %67, metadata !2328, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.131, i64 0, i64 0), metadata !260, metadata !DIExpression()) #35, !dbg !2434
  call void @llvm.dbg.value(metadata i32 %37, metadata !261, metadata !DIExpression()) #35, !dbg !2434
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.131, i64 0, i64 0), i32 noundef 5) #35, !dbg !2436
  call void @llvm.dbg.value(metadata i8* %68, metadata !262, metadata !DIExpression()) #35, !dbg !2434
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.131, i64 0, i64 0), !dbg !2437
  br i1 %69, label %70, label %79, !dbg !2438

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2439
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2440
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !268, metadata !DIExpression()) #35, !dbg !2441
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2409, metadata !DIExpression()) #35, !dbg !2442
  call void @llvm.dbg.value(metadata i8* %26, metadata !2418, metadata !DIExpression()) #35, !dbg !2444
  call void @llvm.dbg.value(metadata i32 0, metadata !2424, metadata !DIExpression()) #35, !dbg !2444
  call void @llvm.dbg.value(metadata i64 8, metadata !2425, metadata !DIExpression()) #35, !dbg !2444
  store i64 0, i64* %11, align 8, !dbg !2446
  call void @llvm.dbg.value(metadata i32* %10, metadata !263, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2434
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #35, !dbg !2447
  %72 = icmp eq i64 %71, 3, !dbg !2448
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !263, metadata !DIExpression()) #35, !dbg !2434
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2449
  %76 = icmp eq i32 %37, 9, !dbg !2449
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.130, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.131, i64 0, i64 0), !dbg !2449
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2449
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2450
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2450
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2329, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %80, metadata !2328, metadata !DIExpression()), !dbg !2383
  br i1 %45, label %97, label %82, !dbg !2451

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2340, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i64 0, metadata !2331, metadata !DIExpression()), !dbg !2383
  %83 = load i8, i8* %80, align 1, !dbg !2453, !tbaa !563
  %84 = icmp eq i8 %83, 0, !dbg !2455
  br i1 %84, label %97, label %85, !dbg !2455

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2340, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i64 %88, metadata !2331, metadata !DIExpression()), !dbg !2383
  %89 = icmp ult i64 %88, %48, !dbg !2456
  br i1 %89, label %90, label %92, !dbg !2459

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2456
  store i8 %86, i8* %91, align 1, !dbg !2456, !tbaa !563
  br label %92, !dbg !2456

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %93, metadata !2331, metadata !DIExpression()), !dbg !2383
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2460
  call void @llvm.dbg.value(metadata i8* %94, metadata !2340, metadata !DIExpression()), !dbg !2452
  %95 = load i8, i8* %94, align 1, !dbg !2453, !tbaa !563
  %96 = icmp eq i8 %95, 0, !dbg !2455
  br i1 %96, label %97, label %85, !dbg !2455, !llvm.loop !2461

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2463
  call void @llvm.dbg.value(metadata i64 %98, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 1, metadata !2335, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %81, metadata !2333, metadata !DIExpression()), !dbg !2383
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #36, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %99, metadata !2334, metadata !DIExpression()), !dbg !2383
  br label %111, !dbg !2465

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2335, metadata !DIExpression()), !dbg !2383
  br label %102, !dbg !2466

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2336, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2335, metadata !DIExpression()), !dbg !2383
  br i1 %45, label %102, label %105, !dbg !2467

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2336, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2335, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 2, metadata !2325, metadata !DIExpression()), !dbg !2383
  br label %111, !dbg !2468

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2336, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2335, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 2, metadata !2325, metadata !DIExpression()), !dbg !2383
  br i1 %45, label %111, label %105, !dbg !2468

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2469
  br i1 %107, label %111, label %108, !dbg !2473

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2469, !tbaa !563
  br label %111, !dbg !2469

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2336, metadata !DIExpression()), !dbg !2383
  br label %111, !dbg !2474

110:                                              ; preds = %36
  call void @abort() #37, !dbg !2475
  unreachable, !dbg !2475

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2463
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.130, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.130, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.130, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.131, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.131, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.131, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.130, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.131, i64 0, i64 0), %102 ], !dbg !2383
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2383
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2336, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2335, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %117, metadata !2334, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %116, metadata !2333, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %115, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %114, metadata !2329, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %113, metadata !2328, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 %112, metadata !2325, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 0, metadata !2345, metadata !DIExpression()), !dbg !2476
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
  br label %132, !dbg !2477

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2463
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2387
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2476
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2322, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %139, metadata !2345, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2338, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2337, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %135, metadata !2332, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %134, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %133, metadata !2324, metadata !DIExpression()), !dbg !2383
  %141 = icmp eq i64 %133, -1, !dbg !2478
  br i1 %141, label %142, label %146, !dbg !2479

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2480
  %144 = load i8, i8* %143, align 1, !dbg !2480, !tbaa !563
  %145 = icmp eq i8 %144, 0, !dbg !2481
  br i1 %145, label %596, label %148, !dbg !2482

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2483
  br i1 %147, label %596, label %148, !dbg !2482

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2347, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 0, metadata !2350, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 0, metadata !2351, metadata !DIExpression()), !dbg !2484
  br i1 %123, label %149, label %163, !dbg !2485

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2487
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2488
  br i1 %151, label %152, label %154, !dbg !2488

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2489
  call void @llvm.dbg.value(metadata i64 %153, metadata !2324, metadata !DIExpression()), !dbg !2383
  br label %154, !dbg !2490

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2490
  call void @llvm.dbg.value(metadata i64 %155, metadata !2324, metadata !DIExpression()), !dbg !2383
  %156 = icmp ugt i64 %150, %155, !dbg !2491
  br i1 %156, label %163, label %157, !dbg !2492

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2493
  call void @llvm.dbg.value(metadata i8* %158, metadata !2494, metadata !DIExpression()) #35, !dbg !2499
  call void @llvm.dbg.value(metadata i8* %116, metadata !2497, metadata !DIExpression()) #35, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %117, metadata !2498, metadata !DIExpression()) #35, !dbg !2499
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #35, !dbg !2501
  %160 = icmp ne i32 %159, 0, !dbg !2502
  %161 = or i1 %160, %125, !dbg !2503
  %162 = xor i1 %160, true, !dbg !2503
  br i1 %161, label %163, label %647, !dbg !2503

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2347, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i64 %164, metadata !2324, metadata !DIExpression()), !dbg !2383
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2504
  %167 = load i8, i8* %166, align 1, !dbg !2504, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %167, metadata !2352, metadata !DIExpression()), !dbg !2484
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
  ], !dbg !2505

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2506

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2507

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2350, metadata !DIExpression()), !dbg !2484
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2511
  br i1 %171, label %188, label %172, !dbg !2511

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2513
  br i1 %173, label %174, label %176, !dbg !2517

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2513
  store i8 39, i8* %175, align 1, !dbg !2513, !tbaa !563
  br label %176, !dbg !2513

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2517
  call void @llvm.dbg.value(metadata i64 %177, metadata !2331, metadata !DIExpression()), !dbg !2383
  %178 = icmp ult i64 %177, %140, !dbg !2518
  br i1 %178, label %179, label %181, !dbg !2521

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2518
  store i8 36, i8* %180, align 1, !dbg !2518, !tbaa !563
  br label %181, !dbg !2518

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %182, metadata !2331, metadata !DIExpression()), !dbg !2383
  %183 = icmp ult i64 %182, %140, !dbg !2522
  br i1 %183, label %184, label %186, !dbg !2525

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2522
  store i8 39, i8* %185, align 1, !dbg !2522, !tbaa !563
  br label %186, !dbg !2522

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2525
  call void @llvm.dbg.value(metadata i64 %187, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 1, metadata !2339, metadata !DIExpression()), !dbg !2383
  br label %188, !dbg !2526

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2383
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %189, metadata !2331, metadata !DIExpression()), !dbg !2383
  %191 = icmp ult i64 %189, %140, !dbg !2527
  br i1 %191, label %192, label %194, !dbg !2530

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2527
  store i8 92, i8* %193, align 1, !dbg !2527, !tbaa !563
  br label %194, !dbg !2527

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %195, metadata !2331, metadata !DIExpression()), !dbg !2383
  br i1 %120, label %196, label %499, !dbg !2531

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2533
  %198 = icmp ult i64 %197, %164, !dbg !2534
  br i1 %198, label %199, label %456, !dbg !2535

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2536
  %201 = load i8, i8* %200, align 1, !dbg !2536, !tbaa !563
  %202 = add i8 %201, -48, !dbg !2537
  %203 = icmp ult i8 %202, 10, !dbg !2537
  br i1 %203, label %204, label %456, !dbg !2537

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2538
  br i1 %205, label %206, label %208, !dbg !2542

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2538
  store i8 48, i8* %207, align 1, !dbg !2538, !tbaa !563
  br label %208, !dbg !2538

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2542
  call void @llvm.dbg.value(metadata i64 %209, metadata !2331, metadata !DIExpression()), !dbg !2383
  %210 = icmp ult i64 %209, %140, !dbg !2543
  br i1 %210, label %211, label %213, !dbg !2546

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2543
  store i8 48, i8* %212, align 1, !dbg !2543, !tbaa !563
  br label %213, !dbg !2543

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2546
  call void @llvm.dbg.value(metadata i64 %214, metadata !2331, metadata !DIExpression()), !dbg !2383
  br label %456, !dbg !2547

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2548

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2549

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2550

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2552

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2554
  %221 = icmp ult i64 %220, %164, !dbg !2555
  br i1 %221, label %222, label %456, !dbg !2556

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2557
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2558
  %225 = load i8, i8* %224, align 1, !dbg !2558, !tbaa !563
  %226 = icmp eq i8 %225, 63, !dbg !2559
  br i1 %226, label %227, label %456, !dbg !2560

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2561
  %229 = load i8, i8* %228, align 1, !dbg !2561, !tbaa !563
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
  ], !dbg !2562

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2563

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2352, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i64 %220, metadata !2345, metadata !DIExpression()), !dbg !2476
  %232 = icmp ult i64 %134, %140, !dbg !2565
  br i1 %232, label %233, label %235, !dbg !2568

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2565
  store i8 63, i8* %234, align 1, !dbg !2565, !tbaa !563
  br label %235, !dbg !2565

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2568
  call void @llvm.dbg.value(metadata i64 %236, metadata !2331, metadata !DIExpression()), !dbg !2383
  %237 = icmp ult i64 %236, %140, !dbg !2569
  br i1 %237, label %238, label %240, !dbg !2572

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2569
  store i8 34, i8* %239, align 1, !dbg !2569, !tbaa !563
  br label %240, !dbg !2569

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2572
  call void @llvm.dbg.value(metadata i64 %241, metadata !2331, metadata !DIExpression()), !dbg !2383
  %242 = icmp ult i64 %241, %140, !dbg !2573
  br i1 %242, label %243, label %245, !dbg !2576

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2573
  store i8 34, i8* %244, align 1, !dbg !2573, !tbaa !563
  br label %245, !dbg !2573

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %246, metadata !2331, metadata !DIExpression()), !dbg !2383
  %247 = icmp ult i64 %246, %140, !dbg !2577
  br i1 %247, label %248, label %250, !dbg !2580

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2577
  store i8 63, i8* %249, align 1, !dbg !2577, !tbaa !563
  br label %250, !dbg !2577

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2580
  call void @llvm.dbg.value(metadata i64 %251, metadata !2331, metadata !DIExpression()), !dbg !2383
  br label %456, !dbg !2581

252:                                              ; preds = %163
  br label %263, !dbg !2582

253:                                              ; preds = %163
  br label %263, !dbg !2583

254:                                              ; preds = %163
  br label %261, !dbg !2584

255:                                              ; preds = %163
  br label %261, !dbg !2585

256:                                              ; preds = %163
  br label %263, !dbg !2586

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2587

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2588

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2591

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2593

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2594
  call void @llvm.dbg.label(metadata !2377), !dbg !2595
  br i1 %128, label %263, label %638, !dbg !2596

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2594
  call void @llvm.dbg.label(metadata !2379), !dbg !2598
  br i1 %118, label %510, label %467, !dbg !2599

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2600

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2601, !tbaa !563
  %268 = icmp eq i8 %267, 0, !dbg !2603
  br i1 %268, label %269, label %456, !dbg !2604

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2605
  br i1 %270, label %271, label %456, !dbg !2607

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2351, metadata !DIExpression()), !dbg !2484
  br label %272, !dbg !2608

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2351, metadata !DIExpression()), !dbg !2484
  br i1 %126, label %274, label %456, !dbg !2609

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2611

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2337, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 1, metadata !2351, metadata !DIExpression()), !dbg !2484
  br i1 %126, label %276, label %456, !dbg !2612

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2613

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2616
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2618
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2618
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2618
  call void @llvm.dbg.value(metadata i64 %282, metadata !2322, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %281, metadata !2332, metadata !DIExpression()), !dbg !2383
  %283 = icmp ult i64 %134, %282, !dbg !2619
  br i1 %283, label %284, label %286, !dbg !2622

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2619
  store i8 39, i8* %285, align 1, !dbg !2619, !tbaa !563
  br label %286, !dbg !2619

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2622
  call void @llvm.dbg.value(metadata i64 %287, metadata !2331, metadata !DIExpression()), !dbg !2383
  %288 = icmp ult i64 %287, %282, !dbg !2623
  br i1 %288, label %289, label %291, !dbg !2626

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2623
  store i8 92, i8* %290, align 1, !dbg !2623, !tbaa !563
  br label %291, !dbg !2623

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2626
  call void @llvm.dbg.value(metadata i64 %292, metadata !2331, metadata !DIExpression()), !dbg !2383
  %293 = icmp ult i64 %292, %282, !dbg !2627
  br i1 %293, label %294, label %296, !dbg !2630

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2627
  store i8 39, i8* %295, align 1, !dbg !2627, !tbaa !563
  br label %296, !dbg !2627

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2630
  call void @llvm.dbg.value(metadata i64 %297, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 0, metadata !2339, metadata !DIExpression()), !dbg !2383
  br label %456, !dbg !2631

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2632

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2353, metadata !DIExpression()), !dbg !2633
  %300 = tail call i16** @__ctype_b_loc() #38, !dbg !2634
  %301 = load i16*, i16** %300, align 8, !dbg !2634, !tbaa !425
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2634
  %304 = load i16, i16* %303, align 2, !dbg !2634, !tbaa !588
  %305 = and i16 %304, 16384, !dbg !2634
  %306 = icmp ne i16 %305, 0, !dbg !2636
  call void @llvm.dbg.value(metadata i8 poison, metadata !2356, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 %349, metadata !2353, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 %312, metadata !2324, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i1 %350, metadata !2351, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2484
  br label %352, !dbg !2637

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2638
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2357, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2409, metadata !DIExpression()) #35, !dbg !2640
  call void @llvm.dbg.value(metadata i8* %32, metadata !2418, metadata !DIExpression()) #35, !dbg !2642
  call void @llvm.dbg.value(metadata i32 0, metadata !2424, metadata !DIExpression()) #35, !dbg !2642
  call void @llvm.dbg.value(metadata i64 8, metadata !2425, metadata !DIExpression()) #35, !dbg !2642
  store i64 0, i64* %14, align 8, !dbg !2644
  call void @llvm.dbg.value(metadata i64 0, metadata !2353, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8 1, metadata !2356, metadata !DIExpression()), !dbg !2633
  %308 = icmp eq i64 %164, -1, !dbg !2645
  br i1 %308, label %309, label %311, !dbg !2647

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2648
  call void @llvm.dbg.value(metadata i64 %310, metadata !2324, metadata !DIExpression()), !dbg !2383
  br label %311, !dbg !2649

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2484
  call void @llvm.dbg.value(metadata i64 %312, metadata !2324, metadata !DIExpression()), !dbg !2383
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2650
  %313 = sub i64 %312, %139, !dbg !2651
  call void @llvm.dbg.value(metadata i32* %16, metadata !2360, metadata !DIExpression(DW_OP_deref)), !dbg !2652
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #35, !dbg !2653
  call void @llvm.dbg.value(metadata i64 %314, metadata !2364, metadata !DIExpression()), !dbg !2652
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2654

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2353, metadata !DIExpression()), !dbg !2633
  %316 = icmp ugt i64 %312, %139, !dbg !2655
  br i1 %316, label %319, label %317, !dbg !2657

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2356, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 0, metadata !2353, metadata !DIExpression()), !dbg !2633
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2658
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %349, metadata !2353, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 %312, metadata !2324, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i1 %350, metadata !2351, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2484
  br label %352, !dbg !2637

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2356, metadata !DIExpression()), !dbg !2633
  br label %346, !dbg !2660

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2353, metadata !DIExpression()), !dbg !2633
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2662
  %323 = load i8, i8* %322, align 1, !dbg !2662, !tbaa !563
  %324 = icmp eq i8 %323, 0, !dbg !2657
  br i1 %324, label %348, label %325, !dbg !2663

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2664
  call void @llvm.dbg.value(metadata i64 %326, metadata !2353, metadata !DIExpression()), !dbg !2633
  %327 = add i64 %326, %139, !dbg !2665
  %328 = icmp eq i64 %326, %313, !dbg !2655
  br i1 %328, label %348, label %319, !dbg !2657, !llvm.loop !2666

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2667
  call void @llvm.dbg.value(metadata i64 1, metadata !2365, metadata !DIExpression()), !dbg !2668
  br i1 %331, label %332, label %340, !dbg !2667

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2365, metadata !DIExpression()), !dbg !2668
  %334 = add i64 %333, %139, !dbg !2669
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2671
  %336 = load i8, i8* %335, align 1, !dbg !2671, !tbaa !563
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2672

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2673
  call void @llvm.dbg.value(metadata i64 %338, metadata !2365, metadata !DIExpression()), !dbg !2668
  %339 = icmp eq i64 %338, %314, !dbg !2674
  br i1 %339, label %340, label %332, !dbg !2675, !llvm.loop !2676

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2678, !tbaa !554
  call void @llvm.dbg.value(metadata i32 %341, metadata !2360, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i32 %341, metadata !2680, metadata !DIExpression()) #35, !dbg !2688
  %342 = call i32 @iswprint(i32 noundef %341) #35, !dbg !2690
  %343 = icmp ne i32 %342, 0, !dbg !2691
  call void @llvm.dbg.value(metadata i8 poison, metadata !2356, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 %314, metadata !2353, metadata !DIExpression()), !dbg !2633
  br label %348, !dbg !2692

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2356, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 0, metadata !2353, metadata !DIExpression()), !dbg !2633
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2658
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2659
  call void @llvm.dbg.label(metadata !2382), !dbg !2693
  %345 = select i1 %118, i32 4, i32 2, !dbg !2694
  br label %643, !dbg !2694

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2356, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 0, metadata !2353, metadata !DIExpression()), !dbg !2633
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2658
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %349, metadata !2353, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 %312, metadata !2324, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i1 %350, metadata !2351, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2484
  br label %352, !dbg !2637

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2356, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 0, metadata !2353, metadata !DIExpression()), !dbg !2633
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2658
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %349, metadata !2353, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 %312, metadata !2324, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i1 %350, metadata !2351, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2484
  %351 = icmp ugt i64 %349, 1, !dbg !2696
  br i1 %351, label %357, label %352, !dbg !2637

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2697
  br i1 %356, label %456, label %357, !dbg !2697

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2698
  call void @llvm.dbg.value(metadata i64 %361, metadata !2373, metadata !DIExpression()), !dbg !2699
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2700

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2383
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2476
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2701
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2484
  call void @llvm.dbg.value(metadata i8 %369, metadata !2352, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 %368, metadata !2350, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 poison, metadata !2347, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i64 %366, metadata !2345, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %364, metadata !2331, metadata !DIExpression()), !dbg !2383
  br i1 %362, label %414, label %370, !dbg !2702

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2707

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2350, metadata !DIExpression()), !dbg !2484
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2710
  br i1 %372, label %389, label %373, !dbg !2710

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2712
  br i1 %374, label %375, label %377, !dbg !2716

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2712
  store i8 39, i8* %376, align 1, !dbg !2712, !tbaa !563
  br label %377, !dbg !2712

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2716
  call void @llvm.dbg.value(metadata i64 %378, metadata !2331, metadata !DIExpression()), !dbg !2383
  %379 = icmp ult i64 %378, %140, !dbg !2717
  br i1 %379, label %380, label %382, !dbg !2720

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2717
  store i8 36, i8* %381, align 1, !dbg !2717, !tbaa !563
  br label %382, !dbg !2717

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2720
  call void @llvm.dbg.value(metadata i64 %383, metadata !2331, metadata !DIExpression()), !dbg !2383
  %384 = icmp ult i64 %383, %140, !dbg !2721
  br i1 %384, label %385, label %387, !dbg !2724

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2721
  store i8 39, i8* %386, align 1, !dbg !2721, !tbaa !563
  br label %387, !dbg !2721

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2724
  call void @llvm.dbg.value(metadata i64 %388, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 1, metadata !2339, metadata !DIExpression()), !dbg !2383
  br label %389, !dbg !2725

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2383
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %390, metadata !2331, metadata !DIExpression()), !dbg !2383
  %392 = icmp ult i64 %390, %140, !dbg !2726
  br i1 %392, label %393, label %395, !dbg !2729

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2726
  store i8 92, i8* %394, align 1, !dbg !2726, !tbaa !563
  br label %395, !dbg !2726

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2729
  call void @llvm.dbg.value(metadata i64 %396, metadata !2331, metadata !DIExpression()), !dbg !2383
  %397 = icmp ult i64 %396, %140, !dbg !2730
  br i1 %397, label %398, label %402, !dbg !2733

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2730
  %400 = or i8 %399, 48, !dbg !2730
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2730
  store i8 %400, i8* %401, align 1, !dbg !2730, !tbaa !563
  br label %402, !dbg !2730

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2733
  call void @llvm.dbg.value(metadata i64 %403, metadata !2331, metadata !DIExpression()), !dbg !2383
  %404 = icmp ult i64 %403, %140, !dbg !2734
  br i1 %404, label %405, label %410, !dbg !2737

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2734
  %407 = and i8 %406, 7, !dbg !2734
  %408 = or i8 %407, 48, !dbg !2734
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2734
  store i8 %408, i8* %409, align 1, !dbg !2734, !tbaa !563
  br label %410, !dbg !2734

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2737
  call void @llvm.dbg.value(metadata i64 %411, metadata !2331, metadata !DIExpression()), !dbg !2383
  %412 = and i8 %369, 7, !dbg !2738
  %413 = or i8 %412, 48, !dbg !2739
  call void @llvm.dbg.value(metadata i8 %413, metadata !2352, metadata !DIExpression()), !dbg !2484
  br label %421, !dbg !2740

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2741

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2742
  br i1 %416, label %417, label %419, !dbg !2747

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2742
  store i8 92, i8* %418, align 1, !dbg !2742, !tbaa !563
  br label %419, !dbg !2742

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2747
  call void @llvm.dbg.value(metadata i64 %420, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 0, metadata !2347, metadata !DIExpression()), !dbg !2484
  br label %421, !dbg !2748

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2383
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2484
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2484
  call void @llvm.dbg.value(metadata i8 %426, metadata !2352, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 %425, metadata !2350, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 poison, metadata !2347, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %422, metadata !2331, metadata !DIExpression()), !dbg !2383
  %427 = add i64 %366, 1, !dbg !2749
  %428 = icmp ugt i64 %361, %427, !dbg !2751
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2752

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2753
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2753
  br i1 %432, label %433, label %444, !dbg !2753

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2756
  br i1 %434, label %435, label %437, !dbg !2760

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2756
  store i8 39, i8* %436, align 1, !dbg !2756, !tbaa !563
  br label %437, !dbg !2756

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %438, metadata !2331, metadata !DIExpression()), !dbg !2383
  %439 = icmp ult i64 %438, %140, !dbg !2761
  br i1 %439, label %440, label %442, !dbg !2764

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2761
  store i8 39, i8* %441, align 1, !dbg !2761, !tbaa !563
  br label %442, !dbg !2761

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2764
  call void @llvm.dbg.value(metadata i64 %443, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 0, metadata !2339, metadata !DIExpression()), !dbg !2383
  br label %444, !dbg !2765

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2766
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %445, metadata !2331, metadata !DIExpression()), !dbg !2383
  %447 = icmp ult i64 %445, %140, !dbg !2767
  br i1 %447, label %448, label %450, !dbg !2770

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2767
  store i8 %426, i8* %449, align 1, !dbg !2767, !tbaa !563
  br label %450, !dbg !2767

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %451, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %427, metadata !2345, metadata !DIExpression()), !dbg !2476
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2771
  %453 = load i8, i8* %452, align 1, !dbg !2771, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %453, metadata !2352, metadata !DIExpression()), !dbg !2484
  br label %363, !dbg !2772, !llvm.loop !2773

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2352, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i1 %358, metadata !2351, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2484
  call void @llvm.dbg.value(metadata i8 %425, metadata !2350, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 poison, metadata !2347, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i64 %366, metadata !2345, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %422, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %360, metadata !2324, metadata !DIExpression()), !dbg !2383
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2776
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2383
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2387
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2476
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2484
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2322, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %465, metadata !2352, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 poison, metadata !2351, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 poison, metadata !2350, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 poison, metadata !2347, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i64 %462, metadata !2345, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2337, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %459, metadata !2332, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %458, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %457, metadata !2324, metadata !DIExpression()), !dbg !2383
  br i1 %121, label %478, label %467, !dbg !2777

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
  br i1 %131, label %479, label %499, !dbg !2779

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2780

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
  %490 = lshr i8 %481, 5, !dbg !2781
  %491 = zext i8 %490 to i64, !dbg !2781
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2782
  %493 = load i32, i32* %492, align 4, !dbg !2782, !tbaa !554
  %494 = and i8 %481, 31, !dbg !2783
  %495 = zext i8 %494 to i32, !dbg !2783
  %496 = shl nuw i32 1, %495, !dbg !2784
  %497 = and i32 %493, %496, !dbg !2784
  %498 = icmp eq i32 %497, 0, !dbg !2784
  br i1 %498, label %499, label %510, !dbg !2785

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
  br i1 %165, label %510, label %546, !dbg !2786

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2776
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2383
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2387
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2787
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2484
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2322, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %518, metadata !2352, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 poison, metadata !2351, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i64 %516, metadata !2345, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2337, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %513, metadata !2332, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %512, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %511, metadata !2324, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.label(metadata !2380), !dbg !2788
  br i1 %119, label %638, label %520, !dbg !2789

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2350, metadata !DIExpression()), !dbg !2484
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2791
  br i1 %521, label %538, label %522, !dbg !2791

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2793
  br i1 %523, label %524, label %526, !dbg !2797

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2793
  store i8 39, i8* %525, align 1, !dbg !2793, !tbaa !563
  br label %526, !dbg !2793

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2797
  call void @llvm.dbg.value(metadata i64 %527, metadata !2331, metadata !DIExpression()), !dbg !2383
  %528 = icmp ult i64 %527, %519, !dbg !2798
  br i1 %528, label %529, label %531, !dbg !2801

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2798
  store i8 36, i8* %530, align 1, !dbg !2798, !tbaa !563
  br label %531, !dbg !2798

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2801
  call void @llvm.dbg.value(metadata i64 %532, metadata !2331, metadata !DIExpression()), !dbg !2383
  %533 = icmp ult i64 %532, %519, !dbg !2802
  br i1 %533, label %534, label %536, !dbg !2805

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2802
  store i8 39, i8* %535, align 1, !dbg !2802, !tbaa !563
  br label %536, !dbg !2802

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %537, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 1, metadata !2339, metadata !DIExpression()), !dbg !2383
  br label %538, !dbg !2806

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2484
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %539, metadata !2331, metadata !DIExpression()), !dbg !2383
  %541 = icmp ult i64 %539, %519, !dbg !2807
  br i1 %541, label %542, label %544, !dbg !2810

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2807
  store i8 92, i8* %543, align 1, !dbg !2807, !tbaa !563
  br label %544, !dbg !2807

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2810
  call void @llvm.dbg.value(metadata i64 %556, metadata !2322, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %555, metadata !2352, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 poison, metadata !2351, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 poison, metadata !2350, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i64 %552, metadata !2345, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2337, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %549, metadata !2332, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %548, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %547, metadata !2324, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.label(metadata !2381), !dbg !2811
  br label %570, !dbg !2812

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2776
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2383
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2387
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2787
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2815
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2322, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 %555, metadata !2352, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 poison, metadata !2351, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 poison, metadata !2350, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i64 %552, metadata !2345, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2337, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %549, metadata !2332, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %548, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %547, metadata !2324, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.label(metadata !2381), !dbg !2811
  %557 = xor i1 %551, true, !dbg !2812
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2812
  br i1 %558, label %570, label %559, !dbg !2812

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2816
  br i1 %560, label %561, label %563, !dbg !2820

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2816
  store i8 39, i8* %562, align 1, !dbg !2816, !tbaa !563
  br label %563, !dbg !2816

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %564, metadata !2331, metadata !DIExpression()), !dbg !2383
  %565 = icmp ult i64 %564, %556, !dbg !2821
  br i1 %565, label %566, label %568, !dbg !2824

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2821
  store i8 39, i8* %567, align 1, !dbg !2821, !tbaa !563
  br label %568, !dbg !2821

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %569, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 0, metadata !2339, metadata !DIExpression()), !dbg !2383
  br label %570, !dbg !2825

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2484
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %578, metadata !2331, metadata !DIExpression()), !dbg !2383
  %580 = icmp ult i64 %578, %571, !dbg !2826
  br i1 %580, label %581, label %583, !dbg !2829

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2826
  store i8 %572, i8* %582, align 1, !dbg !2826, !tbaa !563
  br label %583, !dbg !2826

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2829
  call void @llvm.dbg.value(metadata i64 %584, metadata !2331, metadata !DIExpression()), !dbg !2383
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2830
  call void @llvm.dbg.value(metadata i8 poison, metadata !2338, metadata !DIExpression()), !dbg !2383
  br label %586, !dbg !2831

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2776
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2383
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2387
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2787
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2322, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %593, metadata !2345, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 poison, metadata !2339, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2338, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2337, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %589, metadata !2332, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %588, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %587, metadata !2324, metadata !DIExpression()), !dbg !2383
  %595 = add i64 %593, 1, !dbg !2832
  call void @llvm.dbg.value(metadata i64 %595, metadata !2345, metadata !DIExpression()), !dbg !2476
  br label %132, !dbg !2833, !llvm.loop !2834

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2322, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2338, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 poison, metadata !2337, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 undef, metadata !2332, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 undef, metadata !2331, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 undef, metadata !2324, metadata !DIExpression()), !dbg !2383
  %597 = icmp eq i64 %134, 0, !dbg !2836
  %598 = and i1 %126, %597, !dbg !2838
  %599 = and i1 %598, %119, !dbg !2838
  br i1 %599, label %638, label %600, !dbg !2838

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2839
  %602 = or i1 %119, %601, !dbg !2839
  %603 = xor i1 %136, true, !dbg !2839
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2839
  br i1 %604, label %612, label %605, !dbg !2839

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2841

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2843
  br label %653, !dbg !2845

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2846
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2848
  br i1 %611, label %36, label %612, !dbg !2848

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2849
  %615 = or i1 %614, %613, !dbg !2851
  br i1 %615, label %631, label %616, !dbg !2851

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2333, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %134, metadata !2331, metadata !DIExpression()), !dbg !2383
  %617 = load i8, i8* %116, align 1, !dbg !2852, !tbaa !563
  %618 = icmp eq i8 %617, 0, !dbg !2855
  br i1 %618, label %631, label %619, !dbg !2855

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2333, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %622, metadata !2331, metadata !DIExpression()), !dbg !2383
  %623 = icmp ult i64 %622, %140, !dbg !2856
  br i1 %623, label %624, label %626, !dbg !2859

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2856
  store i8 %620, i8* %625, align 1, !dbg !2856, !tbaa !563
  br label %626, !dbg !2856

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2859
  call void @llvm.dbg.value(metadata i64 %627, metadata !2331, metadata !DIExpression()), !dbg !2383
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2860
  call void @llvm.dbg.value(metadata i8* %628, metadata !2333, metadata !DIExpression()), !dbg !2383
  %629 = load i8, i8* %628, align 1, !dbg !2852, !tbaa !563
  %630 = icmp eq i8 %629, 0, !dbg !2855
  br i1 %630, label %631, label %619, !dbg !2855, !llvm.loop !2861

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2463
  call void @llvm.dbg.value(metadata i64 %632, metadata !2331, metadata !DIExpression()), !dbg !2383
  %633 = icmp ult i64 %632, %140, !dbg !2863
  br i1 %633, label %634, label %653, !dbg !2865

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2866
  store i8 0, i8* %635, align 1, !dbg !2867, !tbaa !563
  br label %653, !dbg !2866

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2382), !dbg !2693
  %637 = icmp eq i32 %112, 2, !dbg !2868
  br i1 %637, label %643, label %647, !dbg !2694

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2382), !dbg !2693
  %641 = icmp eq i32 %112, 2, !dbg !2868
  %642 = select i1 %118, i32 4, i32 2, !dbg !2694
  br i1 %641, label %643, label %647, !dbg !2694

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2694

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2325, metadata !DIExpression()), !dbg !2383
  %651 = and i32 %5, -3, !dbg !2869
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2870
  br label %653, !dbg !2871

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2872
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2873 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2875 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2879, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i64 %1, metadata !2880, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2881, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %0, metadata !2883, metadata !DIExpression()) #35, !dbg !2896
  call void @llvm.dbg.value(metadata i64 %1, metadata !2888, metadata !DIExpression()) #35, !dbg !2896
  call void @llvm.dbg.value(metadata i64* null, metadata !2889, metadata !DIExpression()) #35, !dbg !2896
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2890, metadata !DIExpression()) #35, !dbg !2896
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2898
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2898
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2891, metadata !DIExpression()) #35, !dbg !2896
  %6 = tail call i32* @__errno_location() #38, !dbg !2899
  %7 = load i32, i32* %6, align 4, !dbg !2899, !tbaa !554
  call void @llvm.dbg.value(metadata i32 %7, metadata !2892, metadata !DIExpression()) #35, !dbg !2896
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2900
  %9 = load i32, i32* %8, align 4, !dbg !2900, !tbaa !2265
  %10 = or i32 %9, 1, !dbg !2901
  call void @llvm.dbg.value(metadata i32 %10, metadata !2893, metadata !DIExpression()) #35, !dbg !2896
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2902
  %12 = load i32, i32* %11, align 8, !dbg !2902, !tbaa !2214
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2903
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2904
  %15 = load i8*, i8** %14, align 8, !dbg !2904, !tbaa !2287
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2905
  %17 = load i8*, i8** %16, align 8, !dbg !2905, !tbaa !2290
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #35, !dbg !2906
  %19 = add i64 %18, 1, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %19, metadata !2894, metadata !DIExpression()) #35, !dbg !2896
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #43, !dbg !2908
  call void @llvm.dbg.value(metadata i8* %20, metadata !2895, metadata !DIExpression()) #35, !dbg !2896
  %21 = load i32, i32* %11, align 8, !dbg !2909, !tbaa !2214
  %22 = load i8*, i8** %14, align 8, !dbg !2910, !tbaa !2287
  %23 = load i8*, i8** %16, align 8, !dbg !2911, !tbaa !2290
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #35, !dbg !2912
  store i32 %7, i32* %6, align 4, !dbg !2913, !tbaa !554
  ret i8* %20, !dbg !2914
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2884 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2883, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i64 %1, metadata !2888, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i64* %2, metadata !2889, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2890, metadata !DIExpression()), !dbg !2915
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2916
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2916
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2891, metadata !DIExpression()), !dbg !2915
  %7 = tail call i32* @__errno_location() #38, !dbg !2917
  %8 = load i32, i32* %7, align 4, !dbg !2917, !tbaa !554
  call void @llvm.dbg.value(metadata i32 %8, metadata !2892, metadata !DIExpression()), !dbg !2915
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2918
  %10 = load i32, i32* %9, align 4, !dbg !2918, !tbaa !2265
  %11 = icmp eq i64* %2, null, !dbg !2919
  %12 = zext i1 %11 to i32, !dbg !2919
  %13 = or i32 %10, %12, !dbg !2920
  call void @llvm.dbg.value(metadata i32 %13, metadata !2893, metadata !DIExpression()), !dbg !2915
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2921
  %15 = load i32, i32* %14, align 8, !dbg !2921, !tbaa !2214
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2922
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2923
  %18 = load i8*, i8** %17, align 8, !dbg !2923, !tbaa !2287
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2924
  %20 = load i8*, i8** %19, align 8, !dbg !2924, !tbaa !2290
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2925
  %22 = add i64 %21, 1, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %22, metadata !2894, metadata !DIExpression()), !dbg !2915
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #43, !dbg !2927
  call void @llvm.dbg.value(metadata i8* %23, metadata !2895, metadata !DIExpression()), !dbg !2915
  %24 = load i32, i32* %14, align 8, !dbg !2928, !tbaa !2214
  %25 = load i8*, i8** %17, align 8, !dbg !2929, !tbaa !2287
  %26 = load i8*, i8** %19, align 8, !dbg !2930, !tbaa !2290
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2931
  store i32 %8, i32* %7, align 4, !dbg !2932, !tbaa !554
  br i1 %11, label %29, label %28, !dbg !2933

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2934, !tbaa !2936
  br label %29, !dbg !2937

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2938
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2939 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2944, !tbaa !425
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2941, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i32 1, metadata !2942, metadata !DIExpression()), !dbg !2946
  %2 = load i32, i32* @nslots, align 4, !tbaa !554
  call void @llvm.dbg.value(metadata i32 1, metadata !2942, metadata !DIExpression()), !dbg !2946
  %3 = icmp sgt i32 %2, 1, !dbg !2947
  br i1 %3, label %4, label %6, !dbg !2949

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2947
  br label %10, !dbg !2949

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2950
  %8 = load i8*, i8** %7, align 8, !dbg !2950, !tbaa !2952
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2954
  br i1 %9, label %17, label %16, !dbg !2955

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2942, metadata !DIExpression()), !dbg !2946
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2956
  %13 = load i8*, i8** %12, align 8, !dbg !2956, !tbaa !2952
  tail call void @free(i8* noundef %13) #35, !dbg !2957
  %14 = add nuw nsw i64 %11, 1, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %14, metadata !2942, metadata !DIExpression()), !dbg !2946
  %15 = icmp eq i64 %14, %5, !dbg !2947
  br i1 %15, label %6, label %10, !dbg !2949, !llvm.loop !2959

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #35, !dbg !2961
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2963, !tbaa !2964
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2965, !tbaa !2952
  br label %17, !dbg !2966

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2967
  br i1 %18, label %21, label %19, !dbg !2969

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2970
  tail call void @free(i8* noundef %20) #35, !dbg !2972
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2973, !tbaa !425
  br label %21, !dbg !2974

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2975, !tbaa !554
  ret void, !dbg !2976
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2977 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2979, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8* %1, metadata !2980, metadata !DIExpression()), !dbg !2981
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2982
  ret i8* %3, !dbg !2983
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2984 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2988, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8* %1, metadata !2989, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i64 %2, metadata !2990, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2991, metadata !DIExpression()), !dbg !3004
  %6 = tail call i32* @__errno_location() #38, !dbg !3005
  %7 = load i32, i32* %6, align 4, !dbg !3005, !tbaa !554
  call void @llvm.dbg.value(metadata i32 %7, metadata !2992, metadata !DIExpression()), !dbg !3004
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3006, !tbaa !425
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2993, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2994, metadata !DIExpression()), !dbg !3004
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3007
  br i1 %9, label %10, label %11, !dbg !3007

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3009
  unreachable, !dbg !3009

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !3010, !tbaa !554
  %13 = icmp sgt i32 %12, %0, !dbg !3011
  br i1 %13, label %36, label %14, !dbg !3012

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !3013
  call void @llvm.dbg.value(metadata i1 %15, metadata !2995, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3014
  %16 = bitcast i64* %5 to i8*, !dbg !3015
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #35, !dbg !3015
  %17 = sext i32 %12 to i64, !dbg !3016
  call void @llvm.dbg.value(metadata i64 %17, metadata !2998, metadata !DIExpression()), !dbg !3014
  store i64 %17, i64* %5, align 8, !dbg !3017, !tbaa !2936
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !3018
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3018
  %20 = add nuw nsw i32 %0, 1, !dbg !3019
  %21 = sub i32 %20, %12, !dbg !3020
  %22 = sext i32 %21 to i64, !dbg !3021
  call void @llvm.dbg.value(metadata i64* %5, metadata !2998, metadata !DIExpression(DW_OP_deref)), !dbg !3014
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !3022
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3022
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2993, metadata !DIExpression()), !dbg !3004
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3023, !tbaa !425
  br i1 %15, label %25, label %26, !dbg !3024

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3025, !tbaa.struct !3027
  br label %26, !dbg !3028

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !3029, !tbaa !554
  %28 = sext i32 %27 to i64, !dbg !3030
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3030
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3031
  %31 = load i64, i64* %5, align 8, !dbg !3032, !tbaa !2936
  call void @llvm.dbg.value(metadata i64 %31, metadata !2998, metadata !DIExpression()), !dbg !3014
  %32 = sub nsw i64 %31, %28, !dbg !3033
  %33 = shl i64 %32, 4, !dbg !3034
  call void @llvm.dbg.value(metadata i8* %30, metadata !2418, metadata !DIExpression()) #35, !dbg !3035
  call void @llvm.dbg.value(metadata i32 0, metadata !2424, metadata !DIExpression()) #35, !dbg !3035
  call void @llvm.dbg.value(metadata i64 %33, metadata !2425, metadata !DIExpression()) #35, !dbg !3035
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #35, !dbg !3037
  %34 = load i64, i64* %5, align 8, !dbg !3038, !tbaa !2936
  call void @llvm.dbg.value(metadata i64 %34, metadata !2998, metadata !DIExpression()), !dbg !3014
  %35 = trunc i64 %34 to i32, !dbg !3038
  store i32 %35, i32* @nslots, align 4, !dbg !3039, !tbaa !554
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #35, !dbg !3040
  br label %36, !dbg !3041

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !3004
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2993, metadata !DIExpression()), !dbg !3004
  %38 = zext i32 %0 to i64, !dbg !3042
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !3043
  %40 = load i64, i64* %39, align 8, !dbg !3043, !tbaa !2964
  call void @llvm.dbg.value(metadata i64 %40, metadata !2999, metadata !DIExpression()), !dbg !3044
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !3045
  %42 = load i8*, i8** %41, align 8, !dbg !3045, !tbaa !2952
  call void @llvm.dbg.value(metadata i8* %42, metadata !3001, metadata !DIExpression()), !dbg !3044
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3046
  %44 = load i32, i32* %43, align 4, !dbg !3046, !tbaa !2265
  %45 = or i32 %44, 1, !dbg !3047
  call void @llvm.dbg.value(metadata i32 %45, metadata !3002, metadata !DIExpression()), !dbg !3044
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3048
  %47 = load i32, i32* %46, align 8, !dbg !3048, !tbaa !2214
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3049
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3050
  %50 = load i8*, i8** %49, align 8, !dbg !3050, !tbaa !2287
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3051
  %52 = load i8*, i8** %51, align 8, !dbg !3051, !tbaa !2290
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !3052
  call void @llvm.dbg.value(metadata i64 %53, metadata !3003, metadata !DIExpression()), !dbg !3044
  %54 = icmp ugt i64 %40, %53, !dbg !3053
  br i1 %54, label %65, label %55, !dbg !3055

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %56, metadata !2999, metadata !DIExpression()), !dbg !3044
  store i64 %56, i64* %39, align 8, !dbg !3058, !tbaa !2964
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3059
  br i1 %57, label %59, label %58, !dbg !3061

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #35, !dbg !3062
  br label %59, !dbg !3062

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #43, !dbg !3063
  call void @llvm.dbg.value(metadata i8* %60, metadata !3001, metadata !DIExpression()), !dbg !3044
  store i8* %60, i8** %41, align 8, !dbg !3064, !tbaa !2952
  %61 = load i32, i32* %46, align 8, !dbg !3065, !tbaa !2214
  %62 = load i8*, i8** %49, align 8, !dbg !3066, !tbaa !2287
  %63 = load i8*, i8** %51, align 8, !dbg !3067, !tbaa !2290
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !3068
  br label %65, !dbg !3069

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !3044
  call void @llvm.dbg.value(metadata i8* %66, metadata !3001, metadata !DIExpression()), !dbg !3044
  store i32 %7, i32* %6, align 4, !dbg !3070, !tbaa !554
  ret i8* %66, !dbg !3071
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3072 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3076, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i8* %1, metadata !3077, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %2, metadata !3078, metadata !DIExpression()), !dbg !3079
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3080
  ret i8* %4, !dbg !3081
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !3082 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3084, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i32 0, metadata !2979, metadata !DIExpression()) #35, !dbg !3086
  call void @llvm.dbg.value(metadata i8* %0, metadata !2980, metadata !DIExpression()) #35, !dbg !3086
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !3088
  ret i8* %2, !dbg !3089
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3090 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3094, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %1, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 0, metadata !3076, metadata !DIExpression()) #35, !dbg !3097
  call void @llvm.dbg.value(metadata i8* %0, metadata !3077, metadata !DIExpression()) #35, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %1, metadata !3078, metadata !DIExpression()) #35, !dbg !3097
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !3099
  ret i8* %3, !dbg !3100
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3101 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3105, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i32 %1, metadata !3106, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i8* %2, metadata !3107, metadata !DIExpression()), !dbg !3109
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3110
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3110
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3108, metadata !DIExpression()), !dbg !3111
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3112), !dbg !3115
  call void @llvm.dbg.value(metadata i32 %1, metadata !3116, metadata !DIExpression()) #35, !dbg !3122
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3121, metadata !DIExpression()) #35, !dbg !3124
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !3124, !alias.scope !3112
  %6 = icmp eq i32 %1, 10, !dbg !3125
  br i1 %6, label %7, label %8, !dbg !3127

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3128, !noalias !3112
  unreachable, !dbg !3128

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3129
  store i32 %1, i32* %9, align 8, !dbg !3130, !tbaa !2214, !alias.scope !3112
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3131
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3132
  ret i8* %10, !dbg !3133
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3134 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3138, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i32 %1, metadata !3139, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i8* %2, metadata !3140, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i64 %3, metadata !3141, metadata !DIExpression()), !dbg !3143
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3144
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3144
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3142, metadata !DIExpression()), !dbg !3145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3146), !dbg !3149
  call void @llvm.dbg.value(metadata i32 %1, metadata !3116, metadata !DIExpression()) #35, !dbg !3150
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3121, metadata !DIExpression()) #35, !dbg !3152
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #35, !dbg !3152, !alias.scope !3146
  %7 = icmp eq i32 %1, 10, !dbg !3153
  br i1 %7, label %8, label %9, !dbg !3154

8:                                                ; preds = %4
  tail call void @abort() #37, !dbg !3155, !noalias !3146
  unreachable, !dbg !3155

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3156
  store i32 %1, i32* %10, align 8, !dbg !3157, !tbaa !2214, !alias.scope !3146
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !3158
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3159
  ret i8* %11, !dbg !3160
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3161 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3165, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i8* %1, metadata !3166, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i32 0, metadata !3105, metadata !DIExpression()) #35, !dbg !3168
  call void @llvm.dbg.value(metadata i32 %0, metadata !3106, metadata !DIExpression()) #35, !dbg !3168
  call void @llvm.dbg.value(metadata i8* %1, metadata !3107, metadata !DIExpression()) #35, !dbg !3168
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3170
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3170
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3108, metadata !DIExpression()) #35, !dbg !3171
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3172) #35, !dbg !3175
  call void @llvm.dbg.value(metadata i32 %0, metadata !3116, metadata !DIExpression()) #35, !dbg !3176
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3121, metadata !DIExpression()) #35, !dbg !3178
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #35, !dbg !3178, !alias.scope !3172
  %5 = icmp eq i32 %0, 10, !dbg !3179
  br i1 %5, label %6, label %7, !dbg !3180

6:                                                ; preds = %2
  tail call void @abort() #37, !dbg !3181, !noalias !3172
  unreachable, !dbg !3181

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3182
  store i32 %0, i32* %8, align 8, !dbg !3183, !tbaa !2214, !alias.scope !3172
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3184
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3185
  ret i8* %9, !dbg !3186
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3187 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3191, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i8* %1, metadata !3192, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %2, metadata !3193, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i32 0, metadata !3138, metadata !DIExpression()) #35, !dbg !3195
  call void @llvm.dbg.value(metadata i32 %0, metadata !3139, metadata !DIExpression()) #35, !dbg !3195
  call void @llvm.dbg.value(metadata i8* %1, metadata !3140, metadata !DIExpression()) #35, !dbg !3195
  call void @llvm.dbg.value(metadata i64 %2, metadata !3141, metadata !DIExpression()) #35, !dbg !3195
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3197
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3197
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3142, metadata !DIExpression()) #35, !dbg !3198
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3199) #35, !dbg !3202
  call void @llvm.dbg.value(metadata i32 %0, metadata !3116, metadata !DIExpression()) #35, !dbg !3203
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3121, metadata !DIExpression()) #35, !dbg !3205
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !3205, !alias.scope !3199
  %6 = icmp eq i32 %0, 10, !dbg !3206
  br i1 %6, label %7, label %8, !dbg !3207

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3208, !noalias !3199
  unreachable, !dbg !3208

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3209
  store i32 %0, i32* %9, align 8, !dbg !3210, !tbaa !2214, !alias.scope !3199
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3211
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3212
  ret i8* %10, !dbg !3213
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3214 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3218, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i64 %1, metadata !3219, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i8 %2, metadata !3220, metadata !DIExpression()), !dbg !3222
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3223
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3223
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3221, metadata !DIExpression()), !dbg !3224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3225, !tbaa.struct !3226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2232, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i8 %2, metadata !2233, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i32 1, metadata !2234, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i8 %2, metadata !2235, metadata !DIExpression()), !dbg !3227
  %6 = lshr i8 %2, 5, !dbg !3229
  %7 = zext i8 %6 to i64, !dbg !3229
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3230
  call void @llvm.dbg.value(metadata i32* %8, metadata !2236, metadata !DIExpression()), !dbg !3227
  %9 = and i8 %2, 31, !dbg !3231
  %10 = zext i8 %9 to i32, !dbg !3231
  call void @llvm.dbg.value(metadata i32 %10, metadata !2238, metadata !DIExpression()), !dbg !3227
  %11 = load i32, i32* %8, align 4, !dbg !3232, !tbaa !554
  %12 = lshr i32 %11, %10, !dbg !3233
  %13 = and i32 %12, 1, !dbg !3234
  call void @llvm.dbg.value(metadata i32 %13, metadata !2239, metadata !DIExpression()), !dbg !3227
  %14 = xor i32 %13, 1, !dbg !3235
  %15 = shl i32 %14, %10, !dbg !3236
  %16 = xor i32 %15, %11, !dbg !3237
  store i32 %16, i32* %8, align 4, !dbg !3237, !tbaa !554
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3238
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3239
  ret i8* %17, !dbg !3240
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3241 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3245, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i8 %1, metadata !3246, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i8* %0, metadata !3218, metadata !DIExpression()) #35, !dbg !3248
  call void @llvm.dbg.value(metadata i64 -1, metadata !3219, metadata !DIExpression()) #35, !dbg !3248
  call void @llvm.dbg.value(metadata i8 %1, metadata !3220, metadata !DIExpression()) #35, !dbg !3248
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3250
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3250
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3221, metadata !DIExpression()) #35, !dbg !3251
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3252, !tbaa.struct !3226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2232, metadata !DIExpression()) #35, !dbg !3253
  call void @llvm.dbg.value(metadata i8 %1, metadata !2233, metadata !DIExpression()) #35, !dbg !3253
  call void @llvm.dbg.value(metadata i32 1, metadata !2234, metadata !DIExpression()) #35, !dbg !3253
  call void @llvm.dbg.value(metadata i8 %1, metadata !2235, metadata !DIExpression()) #35, !dbg !3253
  %5 = lshr i8 %1, 5, !dbg !3255
  %6 = zext i8 %5 to i64, !dbg !3255
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3256
  call void @llvm.dbg.value(metadata i32* %7, metadata !2236, metadata !DIExpression()) #35, !dbg !3253
  %8 = and i8 %1, 31, !dbg !3257
  %9 = zext i8 %8 to i32, !dbg !3257
  call void @llvm.dbg.value(metadata i32 %9, metadata !2238, metadata !DIExpression()) #35, !dbg !3253
  %10 = load i32, i32* %7, align 4, !dbg !3258, !tbaa !554
  %11 = lshr i32 %10, %9, !dbg !3259
  %12 = and i32 %11, 1, !dbg !3260
  call void @llvm.dbg.value(metadata i32 %12, metadata !2239, metadata !DIExpression()) #35, !dbg !3253
  %13 = xor i32 %12, 1, !dbg !3261
  %14 = shl i32 %13, %9, !dbg !3262
  %15 = xor i32 %14, %10, !dbg !3263
  store i32 %15, i32* %7, align 4, !dbg !3263, !tbaa !554
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3264
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3265
  ret i8* %16, !dbg !3266
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3267 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3269, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i8* %0, metadata !3245, metadata !DIExpression()) #35, !dbg !3271
  call void @llvm.dbg.value(metadata i8 58, metadata !3246, metadata !DIExpression()) #35, !dbg !3271
  call void @llvm.dbg.value(metadata i8* %0, metadata !3218, metadata !DIExpression()) #35, !dbg !3273
  call void @llvm.dbg.value(metadata i64 -1, metadata !3219, metadata !DIExpression()) #35, !dbg !3273
  call void @llvm.dbg.value(metadata i8 58, metadata !3220, metadata !DIExpression()) #35, !dbg !3273
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3275
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3275
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3221, metadata !DIExpression()) #35, !dbg !3276
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3277, !tbaa.struct !3226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2232, metadata !DIExpression()) #35, !dbg !3278
  call void @llvm.dbg.value(metadata i8 58, metadata !2233, metadata !DIExpression()) #35, !dbg !3278
  call void @llvm.dbg.value(metadata i32 1, metadata !2234, metadata !DIExpression()) #35, !dbg !3278
  call void @llvm.dbg.value(metadata i8 58, metadata !2235, metadata !DIExpression()) #35, !dbg !3278
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3280
  call void @llvm.dbg.value(metadata i32* %4, metadata !2236, metadata !DIExpression()) #35, !dbg !3278
  call void @llvm.dbg.value(metadata i32 26, metadata !2238, metadata !DIExpression()) #35, !dbg !3278
  %5 = load i32, i32* %4, align 4, !dbg !3281, !tbaa !554
  call void @llvm.dbg.value(metadata i32 %5, metadata !2239, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3278
  %6 = or i32 %5, 67108864, !dbg !3282
  store i32 %6, i32* %4, align 4, !dbg !3282, !tbaa !554
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #35, !dbg !3283
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3284
  ret i8* %7, !dbg !3285
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3286 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3288, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %1, metadata !3289, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8* %0, metadata !3218, metadata !DIExpression()) #35, !dbg !3291
  call void @llvm.dbg.value(metadata i64 %1, metadata !3219, metadata !DIExpression()) #35, !dbg !3291
  call void @llvm.dbg.value(metadata i8 58, metadata !3220, metadata !DIExpression()) #35, !dbg !3291
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3293
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3293
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3221, metadata !DIExpression()) #35, !dbg !3294
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3295, !tbaa.struct !3226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2232, metadata !DIExpression()) #35, !dbg !3296
  call void @llvm.dbg.value(metadata i8 58, metadata !2233, metadata !DIExpression()) #35, !dbg !3296
  call void @llvm.dbg.value(metadata i32 1, metadata !2234, metadata !DIExpression()) #35, !dbg !3296
  call void @llvm.dbg.value(metadata i8 58, metadata !2235, metadata !DIExpression()) #35, !dbg !3296
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3298
  call void @llvm.dbg.value(metadata i32* %5, metadata !2236, metadata !DIExpression()) #35, !dbg !3296
  call void @llvm.dbg.value(metadata i32 26, metadata !2238, metadata !DIExpression()) #35, !dbg !3296
  %6 = load i32, i32* %5, align 4, !dbg !3299, !tbaa !554
  call void @llvm.dbg.value(metadata i32 %6, metadata !2239, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3296
  %7 = or i32 %6, 67108864, !dbg !3300
  store i32 %7, i32* %5, align 4, !dbg !3300, !tbaa !554
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3301
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3302
  ret i8* %8, !dbg !3303
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3304 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3306, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 %1, metadata !3307, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i8* %2, metadata !3308, metadata !DIExpression()), !dbg !3310
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3311
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3311
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3309, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 %1, metadata !3116, metadata !DIExpression()) #35, !dbg !3313
  call void @llvm.dbg.value(metadata i32 0, metadata !3121, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3313
  %6 = icmp eq i32 %1, 10, !dbg !3315
  br i1 %6, label %7, label %8, !dbg !3316

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3317, !noalias !3318
  unreachable, !dbg !3317

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3121, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3313
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3321
  store i32 %1, i32* %9, align 8, !dbg !3321, !tbaa.struct !3226
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3321
  %11 = bitcast i32* %10 to i8*, !dbg !3321
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3321
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2232, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i8 58, metadata !2233, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32 1, metadata !2234, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i8 58, metadata !2235, metadata !DIExpression()), !dbg !3322
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3324
  call void @llvm.dbg.value(metadata i32* %12, metadata !2236, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32 26, metadata !2238, metadata !DIExpression()), !dbg !3322
  %13 = load i32, i32* %12, align 4, !dbg !3325, !tbaa !554
  call void @llvm.dbg.value(metadata i32 %13, metadata !2239, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3322
  %14 = or i32 %13, 67108864, !dbg !3326
  store i32 %14, i32* %12, align 4, !dbg !3326, !tbaa !554
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3327
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3328
  ret i8* %15, !dbg !3329
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3330 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3334, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8* %1, metadata !3335, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8* %2, metadata !3336, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8* %3, metadata !3337, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i32 %0, metadata !3339, metadata !DIExpression()) #35, !dbg !3349
  call void @llvm.dbg.value(metadata i8* %1, metadata !3344, metadata !DIExpression()) #35, !dbg !3349
  call void @llvm.dbg.value(metadata i8* %2, metadata !3345, metadata !DIExpression()) #35, !dbg !3349
  call void @llvm.dbg.value(metadata i8* %3, metadata !3346, metadata !DIExpression()) #35, !dbg !3349
  call void @llvm.dbg.value(metadata i64 -1, metadata !3347, metadata !DIExpression()) #35, !dbg !3349
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3351
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3351
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3348, metadata !DIExpression()) #35, !dbg !3352
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3353, !tbaa.struct !3226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2272, metadata !DIExpression()) #35, !dbg !3354
  call void @llvm.dbg.value(metadata i8* %1, metadata !2273, metadata !DIExpression()) #35, !dbg !3354
  call void @llvm.dbg.value(metadata i8* %2, metadata !2274, metadata !DIExpression()) #35, !dbg !3354
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2272, metadata !DIExpression()) #35, !dbg !3354
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3356
  store i32 10, i32* %7, align 8, !dbg !3357, !tbaa !2214
  %8 = icmp ne i8* %1, null, !dbg !3358
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3359
  br i1 %10, label %12, label %11, !dbg !3359

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3360
  unreachable, !dbg !3360

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3361
  store i8* %1, i8** %13, align 8, !dbg !3362, !tbaa !2287
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3363
  store i8* %2, i8** %14, align 8, !dbg !3364, !tbaa !2290
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3365
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3366
  ret i8* %15, !dbg !3367
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3340 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3339, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i8* %1, metadata !3344, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i8* %2, metadata !3345, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i8* %3, metadata !3346, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i64 %4, metadata !3347, metadata !DIExpression()), !dbg !3368
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3369
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3369
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3348, metadata !DIExpression()), !dbg !3370
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3371, !tbaa.struct !3226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2272, metadata !DIExpression()) #35, !dbg !3372
  call void @llvm.dbg.value(metadata i8* %1, metadata !2273, metadata !DIExpression()) #35, !dbg !3372
  call void @llvm.dbg.value(metadata i8* %2, metadata !2274, metadata !DIExpression()) #35, !dbg !3372
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2272, metadata !DIExpression()) #35, !dbg !3372
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3374
  store i32 10, i32* %8, align 8, !dbg !3375, !tbaa !2214
  %9 = icmp ne i8* %1, null, !dbg !3376
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3377
  br i1 %11, label %13, label %12, !dbg !3377

12:                                               ; preds = %5
  tail call void @abort() #37, !dbg !3378
  unreachable, !dbg !3378

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3379
  store i8* %1, i8** %14, align 8, !dbg !3380, !tbaa !2287
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3381
  store i8* %2, i8** %15, align 8, !dbg !3382, !tbaa !2290
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3383
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3384
  ret i8* %16, !dbg !3385
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3386 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3390, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8* %1, metadata !3391, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i8* %2, metadata !3392, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i32 0, metadata !3334, metadata !DIExpression()) #35, !dbg !3394
  call void @llvm.dbg.value(metadata i8* %0, metadata !3335, metadata !DIExpression()) #35, !dbg !3394
  call void @llvm.dbg.value(metadata i8* %1, metadata !3336, metadata !DIExpression()) #35, !dbg !3394
  call void @llvm.dbg.value(metadata i8* %2, metadata !3337, metadata !DIExpression()) #35, !dbg !3394
  call void @llvm.dbg.value(metadata i32 0, metadata !3339, metadata !DIExpression()) #35, !dbg !3396
  call void @llvm.dbg.value(metadata i8* %0, metadata !3344, metadata !DIExpression()) #35, !dbg !3396
  call void @llvm.dbg.value(metadata i8* %1, metadata !3345, metadata !DIExpression()) #35, !dbg !3396
  call void @llvm.dbg.value(metadata i8* %2, metadata !3346, metadata !DIExpression()) #35, !dbg !3396
  call void @llvm.dbg.value(metadata i64 -1, metadata !3347, metadata !DIExpression()) #35, !dbg !3396
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3398
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3398
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3348, metadata !DIExpression()) #35, !dbg !3399
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3400, !tbaa.struct !3226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2272, metadata !DIExpression()) #35, !dbg !3401
  call void @llvm.dbg.value(metadata i8* %0, metadata !2273, metadata !DIExpression()) #35, !dbg !3401
  call void @llvm.dbg.value(metadata i8* %1, metadata !2274, metadata !DIExpression()) #35, !dbg !3401
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2272, metadata !DIExpression()) #35, !dbg !3401
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3403
  store i32 10, i32* %6, align 8, !dbg !3404, !tbaa !2214
  %7 = icmp ne i8* %0, null, !dbg !3405
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3406
  br i1 %9, label %11, label %10, !dbg !3406

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !3407
  unreachable, !dbg !3407

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3408
  store i8* %0, i8** %12, align 8, !dbg !3409, !tbaa !2287
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3410
  store i8* %1, i8** %13, align 8, !dbg !3411, !tbaa !2290
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3412
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3413
  ret i8* %14, !dbg !3414
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3415 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3419, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i8* %1, metadata !3420, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i8* %2, metadata !3421, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %3, metadata !3422, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i32 0, metadata !3339, metadata !DIExpression()) #35, !dbg !3424
  call void @llvm.dbg.value(metadata i8* %0, metadata !3344, metadata !DIExpression()) #35, !dbg !3424
  call void @llvm.dbg.value(metadata i8* %1, metadata !3345, metadata !DIExpression()) #35, !dbg !3424
  call void @llvm.dbg.value(metadata i8* %2, metadata !3346, metadata !DIExpression()) #35, !dbg !3424
  call void @llvm.dbg.value(metadata i64 %3, metadata !3347, metadata !DIExpression()) #35, !dbg !3424
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3426
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3426
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3348, metadata !DIExpression()) #35, !dbg !3427
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3428, !tbaa.struct !3226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2272, metadata !DIExpression()) #35, !dbg !3429
  call void @llvm.dbg.value(metadata i8* %0, metadata !2273, metadata !DIExpression()) #35, !dbg !3429
  call void @llvm.dbg.value(metadata i8* %1, metadata !2274, metadata !DIExpression()) #35, !dbg !3429
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2272, metadata !DIExpression()) #35, !dbg !3429
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3431
  store i32 10, i32* %7, align 8, !dbg !3432, !tbaa !2214
  %8 = icmp ne i8* %0, null, !dbg !3433
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3434
  br i1 %10, label %12, label %11, !dbg !3434

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3435
  unreachable, !dbg !3435

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3436
  store i8* %0, i8** %13, align 8, !dbg !3437, !tbaa !2287
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3438
  store i8* %1, i8** %14, align 8, !dbg !3439, !tbaa !2290
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3440
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3441
  ret i8* %15, !dbg !3442
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3443 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3447, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i8* %1, metadata !3448, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %2, metadata !3449, metadata !DIExpression()), !dbg !3450
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3451
  ret i8* %4, !dbg !3452
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3453 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3457, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i64 %1, metadata !3458, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i32 0, metadata !3447, metadata !DIExpression()) #35, !dbg !3460
  call void @llvm.dbg.value(metadata i8* %0, metadata !3448, metadata !DIExpression()) #35, !dbg !3460
  call void @llvm.dbg.value(metadata i64 %1, metadata !3449, metadata !DIExpression()) #35, !dbg !3460
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3462
  ret i8* %3, !dbg !3463
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3464 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3468, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i8* %1, metadata !3469, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i32 %0, metadata !3447, metadata !DIExpression()) #35, !dbg !3471
  call void @llvm.dbg.value(metadata i8* %1, metadata !3448, metadata !DIExpression()) #35, !dbg !3471
  call void @llvm.dbg.value(metadata i64 -1, metadata !3449, metadata !DIExpression()) #35, !dbg !3471
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3473
  ret i8* %3, !dbg !3474
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3475 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3477, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i32 0, metadata !3468, metadata !DIExpression()) #35, !dbg !3479
  call void @llvm.dbg.value(metadata i8* %0, metadata !3469, metadata !DIExpression()) #35, !dbg !3479
  call void @llvm.dbg.value(metadata i32 0, metadata !3447, metadata !DIExpression()) #35, !dbg !3481
  call void @llvm.dbg.value(metadata i8* %0, metadata !3448, metadata !DIExpression()) #35, !dbg !3481
  call void @llvm.dbg.value(metadata i64 -1, metadata !3449, metadata !DIExpression()) #35, !dbg !3481
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3483
  ret i8* %2, !dbg !3484
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @strintcmp(i8* nocapture noundef nonnull readonly %0, i8* nocapture noundef nonnull readonly %1) local_unnamed_addr #20 !dbg !3485 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3487, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i8* %1, metadata !3488, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i8* %0, metadata !3490, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %1, metadata !3496, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i32 256, metadata !3497, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i32 256, metadata !3498, metadata !DIExpression()), !dbg !3504
  %3 = load i8, i8* %0, align 1, !dbg !3506, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %3, metadata !3499, metadata !DIExpression()), !dbg !3504
  %4 = load i8, i8* %1, align 1, !dbg !3507, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %4, metadata !3500, metadata !DIExpression()), !dbg !3504
  %5 = icmp eq i8 %3, 45, !dbg !3508
  br i1 %5, label %6, label %95, !dbg !3510

6:                                                ; preds = %2, %6
  %7 = phi i8* [ %8, %6 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !3490, metadata !DIExpression()), !dbg !3504
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3511
  call void @llvm.dbg.value(metadata i8* %8, metadata !3490, metadata !DIExpression()), !dbg !3504
  %9 = load i8, i8* %8, align 1, !dbg !3513, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %9, metadata !3499, metadata !DIExpression()), !dbg !3504
  %10 = icmp eq i8 %9, 48, !dbg !3514
  br i1 %10, label %6, label %11, !dbg !3515, !llvm.loop !3516

11:                                               ; preds = %6
  %12 = icmp eq i8 %4, 45, !dbg !3519
  br i1 %12, label %30, label %13, !dbg !3521

13:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 %9, metadata !3499, metadata !DIExpression()), !dbg !3504
  %14 = zext i8 %9 to i32, !dbg !3522
  call void @llvm.dbg.value(metadata i32 %14, metadata !3525, metadata !DIExpression()), !dbg !3528
  %15 = add nsw i32 %14, -48, !dbg !3530
  %16 = icmp ult i32 %15, 10, !dbg !3530
  br i1 %16, label %197, label %17, !dbg !3531

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 %4, metadata !3500, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %1, metadata !3496, metadata !DIExpression()), !dbg !3504
  %18 = icmp eq i8 %4, 48, !dbg !3532
  br i1 %18, label %19, label %24, !dbg !3533

19:                                               ; preds = %17, %19
  %20 = phi i8* [ %21, %19 ], [ %1, %17 ]
  call void @llvm.dbg.value(metadata i8* %20, metadata !3496, metadata !DIExpression()), !dbg !3504
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !3534
  call void @llvm.dbg.value(metadata i8* %21, metadata !3496, metadata !DIExpression()), !dbg !3504
  %22 = load i8, i8* %21, align 1, !dbg !3535, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %22, metadata !3500, metadata !DIExpression()), !dbg !3504
  %23 = icmp eq i8 %22, 48, !dbg !3532
  br i1 %23, label %19, label %24, !dbg !3533, !llvm.loop !3536

24:                                               ; preds = %19, %17
  %25 = phi i8 [ %4, %17 ], [ %22, %19 ], !dbg !3504
  call void @llvm.dbg.value(metadata i8 %25, metadata !3500, metadata !DIExpression()), !dbg !3504
  %26 = zext i8 %25 to i32, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %26, metadata !3525, metadata !DIExpression()), !dbg !3539
  %27 = add nsw i32 %26, -48, !dbg !3541
  %28 = icmp ult i32 %27, 10, !dbg !3541
  %29 = sext i1 %28 to i32, !dbg !3542
  br label %197, !dbg !3543

30:                                               ; preds = %11, %30
  %31 = phi i8* [ %32, %30 ], [ %1, %11 ]
  call void @llvm.dbg.value(metadata i8* %31, metadata !3496, metadata !DIExpression()), !dbg !3504
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !3544
  call void @llvm.dbg.value(metadata i8* %32, metadata !3496, metadata !DIExpression()), !dbg !3504
  %33 = load i8, i8* %32, align 1, !dbg !3545, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %33, metadata !3500, metadata !DIExpression()), !dbg !3504
  %34 = icmp eq i8 %33, 48, !dbg !3546
  br i1 %34, label %30, label %35, !dbg !3547, !llvm.loop !3548

35:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8 %33, metadata !3500, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8 %9, metadata !3499, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %8, metadata !3490, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %32, metadata !3496, metadata !DIExpression()), !dbg !3504
  %36 = zext i8 %9 to i32, !dbg !3551
  %37 = icmp eq i8 %33, %9, !dbg !3552
  %38 = add nsw i32 %36, -48
  %39 = icmp ult i32 %38, 10
  %40 = select i1 %37, i1 %39, i1 false, !dbg !3553
  call void @llvm.dbg.value(metadata i32 %36, metadata !3525, metadata !DIExpression()), !dbg !3554
  br i1 %40, label %41, label %55, !dbg !3553

41:                                               ; preds = %35, %41
  %42 = phi i8* [ %44, %41 ], [ %8, %35 ]
  %43 = phi i8* [ %46, %41 ], [ %32, %35 ]
  call void @llvm.dbg.value(metadata i8* %43, metadata !3496, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %42, metadata !3490, metadata !DIExpression()), !dbg !3504
  %44 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !3556
  call void @llvm.dbg.value(metadata i8* %44, metadata !3490, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8 undef, metadata !3499, metadata !DIExpression()), !dbg !3504
  %45 = load i8, i8* %44, align 1, !dbg !3558, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %45, metadata !3499, metadata !DIExpression()), !dbg !3504
  %46 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !3559
  call void @llvm.dbg.value(metadata i8* %46, metadata !3496, metadata !DIExpression()), !dbg !3504
  %47 = load i8, i8* %46, align 1, !dbg !3560, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %47, metadata !3500, metadata !DIExpression()), !dbg !3504
  %48 = zext i8 %45 to i32, !dbg !3551
  %49 = icmp eq i8 %47, %45, !dbg !3552
  %50 = add nsw i32 %48, -48
  %51 = icmp ult i32 %50, 10
  %52 = select i1 %49, i1 %51, i1 false, !dbg !3553
  call void @llvm.dbg.value(metadata i32 %48, metadata !3525, metadata !DIExpression()), !dbg !3554
  br i1 %52, label %41, label %53, !dbg !3553

53:                                               ; preds = %41
  %54 = zext i8 %45 to i32, !dbg !3551
  br label %55, !dbg !3561

55:                                               ; preds = %53, %35
  %56 = phi i32 [ %38, %35 ], [ %50, %53 ], !dbg !3562
  %57 = phi i8* [ %32, %35 ], [ %46, %53 ], !dbg !3566
  %58 = phi i8* [ %8, %35 ], [ %44, %53 ], !dbg !3566
  %59 = phi i8 [ %33, %35 ], [ %47, %53 ], !dbg !3566
  %60 = phi i32 [ %36, %35 ], [ %54, %53 ], !dbg !3551
  %61 = zext i8 %59 to i32, !dbg !3561
  %62 = sub nsw i32 %61, %60, !dbg !3567
  call void @llvm.dbg.value(metadata i32 %62, metadata !3501, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 0, metadata !3502, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8 undef, metadata !3499, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %58, metadata !3490, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i32 undef, metadata !3525, metadata !DIExpression()), !dbg !3568
  %63 = icmp ult i32 %56, 10, !dbg !3562
  br i1 %63, label %68, label %64, !dbg !3569

64:                                               ; preds = %68, %55
  %65 = phi i64 [ 0, %55 ], [ %73, %68 ], !dbg !3570
  call void @llvm.dbg.value(metadata i64 0, metadata !3503, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8 %59, metadata !3500, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %57, metadata !3496, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i32 %61, metadata !3525, metadata !DIExpression()), !dbg !3571
  %66 = add nsw i32 %61, -48, !dbg !3575
  %67 = icmp ult i32 %66, 10, !dbg !3575
  br i1 %67, label %77, label %86, !dbg !3576

68:                                               ; preds = %55, %68
  %69 = phi i64 [ %73, %68 ], [ 0, %55 ]
  %70 = phi i8* [ %71, %68 ], [ %58, %55 ]
  call void @llvm.dbg.value(metadata i64 %69, metadata !3502, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %70, metadata !3490, metadata !DIExpression()), !dbg !3504
  %71 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !3577
  call void @llvm.dbg.value(metadata i8* %71, metadata !3490, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8 undef, metadata !3499, metadata !DIExpression()), !dbg !3504
  %72 = load i8, i8* %71, align 1, !dbg !3578, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %72, metadata !3499, metadata !DIExpression()), !dbg !3504
  %73 = add i64 %69, 1, !dbg !3579
  call void @llvm.dbg.value(metadata i64 %73, metadata !3502, metadata !DIExpression()), !dbg !3504
  %74 = zext i8 %72 to i32, !dbg !3580
  call void @llvm.dbg.value(metadata i32 %74, metadata !3525, metadata !DIExpression()), !dbg !3568
  %75 = add nsw i32 %74, -48, !dbg !3562
  %76 = icmp ult i32 %75, 10, !dbg !3562
  br i1 %76, label %68, label %64, !dbg !3569, !llvm.loop !3581

77:                                               ; preds = %64, %77
  %78 = phi i64 [ %82, %77 ], [ 0, %64 ]
  %79 = phi i8* [ %80, %77 ], [ %57, %64 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !3503, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %79, metadata !3496, metadata !DIExpression()), !dbg !3504
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !3583
  call void @llvm.dbg.value(metadata i8* %80, metadata !3496, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8 undef, metadata !3500, metadata !DIExpression()), !dbg !3504
  %81 = load i8, i8* %80, align 1, !dbg !3584, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %81, metadata !3500, metadata !DIExpression()), !dbg !3504
  %82 = add i64 %78, 1, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %82, metadata !3503, metadata !DIExpression()), !dbg !3504
  %83 = zext i8 %81 to i32, !dbg !3586
  call void @llvm.dbg.value(metadata i32 %83, metadata !3525, metadata !DIExpression()), !dbg !3571
  %84 = add nsw i32 %83, -48, !dbg !3575
  %85 = icmp ult i32 %84, 10, !dbg !3575
  br i1 %85, label %77, label %86, !dbg !3576, !llvm.loop !3587

86:                                               ; preds = %77, %64
  %87 = phi i64 [ 0, %64 ], [ %82, %77 ], !dbg !3589
  %88 = icmp eq i64 %65, %87, !dbg !3590
  br i1 %88, label %92, label %89, !dbg !3592

89:                                               ; preds = %86
  %90 = icmp ult i64 %65, %87, !dbg !3593
  %91 = select i1 %90, i32 1, i32 -1, !dbg !3594
  br label %197, !dbg !3595

92:                                               ; preds = %86
  %93 = icmp eq i64 %65, 0, !dbg !3596
  %94 = select i1 %93, i32 0, i32 %62, !dbg !3566
  br label %197, !dbg !3566

95:                                               ; preds = %2
  %96 = icmp eq i8 %4, 45, !dbg !3598
  br i1 %96, label %99, label %97, !dbg !3600

97:                                               ; preds = %95
  call void @llvm.dbg.value(metadata i8 %3, metadata !3499, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %0, metadata !3490, metadata !DIExpression()), !dbg !3504
  %98 = icmp eq i8 %3, 48, !dbg !3601
  br i1 %98, label %125, label %121, !dbg !3603

99:                                               ; preds = %95, %99
  %100 = phi i8* [ %101, %99 ], [ %1, %95 ]
  call void @llvm.dbg.value(metadata i8* %100, metadata !3496, metadata !DIExpression()), !dbg !3504
  %101 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !3604
  call void @llvm.dbg.value(metadata i8* %101, metadata !3496, metadata !DIExpression()), !dbg !3504
  %102 = load i8, i8* %101, align 1, !dbg !3606, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %102, metadata !3500, metadata !DIExpression()), !dbg !3504
  %103 = icmp eq i8 %102, 48, !dbg !3607
  br i1 %103, label %99, label %104, !dbg !3608, !llvm.loop !3609

104:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i8 %102, metadata !3500, metadata !DIExpression()), !dbg !3504
  %105 = zext i8 %102 to i32, !dbg !3612
  call void @llvm.dbg.value(metadata i32 %105, metadata !3525, metadata !DIExpression()), !dbg !3614
  %106 = add nsw i32 %105, -48, !dbg !3616
  %107 = icmp ult i32 %106, 10, !dbg !3616
  br i1 %107, label %197, label %108, !dbg !3617

108:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i8 %3, metadata !3499, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %0, metadata !3490, metadata !DIExpression()), !dbg !3504
  %109 = icmp eq i8 %3, 48, !dbg !3618
  br i1 %109, label %110, label %115, !dbg !3619

110:                                              ; preds = %108, %110
  %111 = phi i8* [ %112, %110 ], [ %0, %108 ]
  call void @llvm.dbg.value(metadata i8* %111, metadata !3490, metadata !DIExpression()), !dbg !3504
  %112 = getelementptr inbounds i8, i8* %111, i64 1, !dbg !3620
  call void @llvm.dbg.value(metadata i8* %112, metadata !3490, metadata !DIExpression()), !dbg !3504
  %113 = load i8, i8* %112, align 1, !dbg !3621, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %113, metadata !3499, metadata !DIExpression()), !dbg !3504
  %114 = icmp eq i8 %113, 48, !dbg !3618
  br i1 %114, label %110, label %115, !dbg !3619, !llvm.loop !3622

115:                                              ; preds = %110, %108
  %116 = phi i8 [ %3, %108 ], [ %113, %110 ], !dbg !3504
  call void @llvm.dbg.value(metadata i8 %116, metadata !3499, metadata !DIExpression()), !dbg !3504
  %117 = zext i8 %116 to i32, !dbg !3624
  call void @llvm.dbg.value(metadata i32 %117, metadata !3525, metadata !DIExpression()), !dbg !3625
  %118 = add nsw i32 %117, -48, !dbg !3627
  %119 = icmp ult i32 %118, 10, !dbg !3627
  %120 = zext i1 %119 to i32, !dbg !3628
  br label %197, !dbg !3629

121:                                              ; preds = %125, %97
  %122 = phi i8* [ %0, %97 ], [ %127, %125 ]
  %123 = phi i8 [ %3, %97 ], [ %128, %125 ], !dbg !3504
  call void @llvm.dbg.value(metadata i8 %4, metadata !3500, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %1, metadata !3496, metadata !DIExpression()), !dbg !3504
  %124 = icmp eq i8 %4, 48, !dbg !3630
  br i1 %124, label %138, label %130, !dbg !3631

125:                                              ; preds = %97, %125
  %126 = phi i8* [ %127, %125 ], [ %0, %97 ]
  call void @llvm.dbg.value(metadata i8* %126, metadata !3490, metadata !DIExpression()), !dbg !3504
  %127 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !3632
  call void @llvm.dbg.value(metadata i8* %127, metadata !3490, metadata !DIExpression()), !dbg !3504
  %128 = load i8, i8* %127, align 1, !dbg !3633, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %128, metadata !3499, metadata !DIExpression()), !dbg !3504
  %129 = icmp eq i8 %128, 48, !dbg !3601
  br i1 %129, label %125, label %121, !dbg !3603, !llvm.loop !3634

130:                                              ; preds = %138, %121
  %131 = phi i8* [ %1, %121 ], [ %140, %138 ]
  %132 = phi i8 [ %4, %121 ], [ %141, %138 ], !dbg !3504
  call void @llvm.dbg.value(metadata i8 %132, metadata !3500, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8 %123, metadata !3499, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %122, metadata !3490, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %131, metadata !3496, metadata !DIExpression()), !dbg !3504
  %133 = zext i8 %123 to i32, !dbg !3636
  %134 = icmp eq i8 %123, %132, !dbg !3637
  %135 = add nsw i32 %133, -48
  %136 = icmp ult i32 %135, 10
  %137 = select i1 %134, i1 %136, i1 false, !dbg !3638
  call void @llvm.dbg.value(metadata i32 %133, metadata !3525, metadata !DIExpression()), !dbg !3639
  br i1 %137, label %143, label %157, !dbg !3638

138:                                              ; preds = %121, %138
  %139 = phi i8* [ %140, %138 ], [ %1, %121 ]
  call void @llvm.dbg.value(metadata i8* %139, metadata !3496, metadata !DIExpression()), !dbg !3504
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !3641
  call void @llvm.dbg.value(metadata i8* %140, metadata !3496, metadata !DIExpression()), !dbg !3504
  %141 = load i8, i8* %140, align 1, !dbg !3642, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %141, metadata !3500, metadata !DIExpression()), !dbg !3504
  %142 = icmp eq i8 %141, 48, !dbg !3630
  br i1 %142, label %138, label %130, !dbg !3631, !llvm.loop !3643

143:                                              ; preds = %130, %143
  %144 = phi i8* [ %146, %143 ], [ %122, %130 ]
  %145 = phi i8* [ %148, %143 ], [ %131, %130 ]
  call void @llvm.dbg.value(metadata i8* %145, metadata !3496, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %144, metadata !3490, metadata !DIExpression()), !dbg !3504
  %146 = getelementptr inbounds i8, i8* %144, i64 1, !dbg !3645
  call void @llvm.dbg.value(metadata i8* %146, metadata !3490, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8 undef, metadata !3499, metadata !DIExpression()), !dbg !3504
  %147 = load i8, i8* %146, align 1, !dbg !3647, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %147, metadata !3499, metadata !DIExpression()), !dbg !3504
  %148 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !3648
  call void @llvm.dbg.value(metadata i8* %148, metadata !3496, metadata !DIExpression()), !dbg !3504
  %149 = load i8, i8* %148, align 1, !dbg !3649, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %149, metadata !3500, metadata !DIExpression()), !dbg !3504
  %150 = zext i8 %147 to i32, !dbg !3636
  %151 = icmp eq i8 %147, %149, !dbg !3637
  %152 = add nsw i32 %150, -48
  %153 = icmp ult i32 %152, 10
  %154 = select i1 %151, i1 %153, i1 false, !dbg !3638
  call void @llvm.dbg.value(metadata i32 %150, metadata !3525, metadata !DIExpression()), !dbg !3639
  br i1 %154, label %143, label %155, !dbg !3638

155:                                              ; preds = %143
  %156 = zext i8 %147 to i32, !dbg !3636
  br label %157, !dbg !3650

157:                                              ; preds = %155, %130
  %158 = phi i32 [ %135, %130 ], [ %152, %155 ], !dbg !3651
  %159 = phi i8* [ %131, %130 ], [ %148, %155 ]
  %160 = phi i8* [ %122, %130 ], [ %146, %155 ]
  %161 = phi i8 [ %132, %130 ], [ %149, %155 ], !dbg !3504
  %162 = phi i32 [ %133, %130 ], [ %156, %155 ], !dbg !3636
  %163 = zext i8 %161 to i32, !dbg !3650
  %164 = sub nsw i32 %162, %163, !dbg !3655
  call void @llvm.dbg.value(metadata i32 %164, metadata !3501, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 0, metadata !3502, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8 undef, metadata !3499, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %160, metadata !3490, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i32 undef, metadata !3525, metadata !DIExpression()), !dbg !3656
  %165 = icmp ult i32 %158, 10, !dbg !3651
  br i1 %165, label %170, label %166, !dbg !3657

166:                                              ; preds = %170, %157
  %167 = phi i64 [ 0, %157 ], [ %175, %170 ], !dbg !3658
  call void @llvm.dbg.value(metadata i64 0, metadata !3503, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8 %161, metadata !3500, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %159, metadata !3496, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i32 %163, metadata !3525, metadata !DIExpression()), !dbg !3659
  %168 = add nsw i32 %163, -48, !dbg !3663
  %169 = icmp ult i32 %168, 10, !dbg !3663
  br i1 %169, label %179, label %188, !dbg !3664

170:                                              ; preds = %157, %170
  %171 = phi i64 [ %175, %170 ], [ 0, %157 ]
  %172 = phi i8* [ %173, %170 ], [ %160, %157 ]
  call void @llvm.dbg.value(metadata i64 %171, metadata !3502, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %172, metadata !3490, metadata !DIExpression()), !dbg !3504
  %173 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !3665
  call void @llvm.dbg.value(metadata i8* %173, metadata !3490, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8 undef, metadata !3499, metadata !DIExpression()), !dbg !3504
  %174 = load i8, i8* %173, align 1, !dbg !3666, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %174, metadata !3499, metadata !DIExpression()), !dbg !3504
  %175 = add i64 %171, 1, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %175, metadata !3502, metadata !DIExpression()), !dbg !3504
  %176 = zext i8 %174 to i32, !dbg !3668
  call void @llvm.dbg.value(metadata i32 %176, metadata !3525, metadata !DIExpression()), !dbg !3656
  %177 = add nsw i32 %176, -48, !dbg !3651
  %178 = icmp ult i32 %177, 10, !dbg !3651
  br i1 %178, label %170, label %166, !dbg !3657, !llvm.loop !3669

179:                                              ; preds = %166, %179
  %180 = phi i64 [ %184, %179 ], [ 0, %166 ]
  %181 = phi i8* [ %182, %179 ], [ %159, %166 ]
  call void @llvm.dbg.value(metadata i64 %180, metadata !3503, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %181, metadata !3496, metadata !DIExpression()), !dbg !3504
  %182 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !3671
  call void @llvm.dbg.value(metadata i8* %182, metadata !3496, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8 undef, metadata !3500, metadata !DIExpression()), !dbg !3504
  %183 = load i8, i8* %182, align 1, !dbg !3672, !tbaa !563
  call void @llvm.dbg.value(metadata i8 %183, metadata !3500, metadata !DIExpression()), !dbg !3504
  %184 = add i64 %180, 1, !dbg !3673
  call void @llvm.dbg.value(metadata i64 %184, metadata !3503, metadata !DIExpression()), !dbg !3504
  %185 = zext i8 %183 to i32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 %185, metadata !3525, metadata !DIExpression()), !dbg !3659
  %186 = add nsw i32 %185, -48, !dbg !3663
  %187 = icmp ult i32 %186, 10, !dbg !3663
  br i1 %187, label %179, label %188, !dbg !3664, !llvm.loop !3675

188:                                              ; preds = %179, %166
  %189 = phi i64 [ 0, %166 ], [ %184, %179 ], !dbg !3677
  %190 = icmp eq i64 %167, %189, !dbg !3678
  br i1 %190, label %194, label %191, !dbg !3680

191:                                              ; preds = %188
  %192 = icmp ult i64 %167, %189, !dbg !3681
  %193 = select i1 %192, i32 -1, i32 1, !dbg !3682
  br label %197, !dbg !3683

194:                                              ; preds = %188
  %195 = icmp eq i64 %167, 0, !dbg !3684
  %196 = select i1 %195, i32 0, i32 %164, !dbg !3686
  br label %197, !dbg !3686

197:                                              ; preds = %13, %24, %89, %92, %104, %115, %191, %194
  %198 = phi i32 [ %29, %24 ], [ %91, %89 ], [ %120, %115 ], [ %193, %191 ], [ -1, %13 ], [ %94, %92 ], [ 1, %104 ], [ %196, %194 ], !dbg !3687
  ret i32 %198, !dbg !3688
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3689 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3728, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i8* %1, metadata !3729, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i8* %2, metadata !3730, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i8* %3, metadata !3731, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i8** %4, metadata !3732, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i64 %5, metadata !3733, metadata !DIExpression()), !dbg !3734
  %7 = icmp eq i8* %1, null, !dbg !3735
  br i1 %7, label %10, label %8, !dbg !3737

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.140, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #35, !dbg !3738
  br label %12, !dbg !3738

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.141, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #35, !dbg !3739
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.143, i64 0, i64 0), i32 noundef 5) #35, !dbg !3740
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #35, !dbg !3740
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.144, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3741
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.145, i64 0, i64 0), i32 noundef 5) #35, !dbg !3742
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.146, i64 0, i64 0)) #35, !dbg !3742
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.144, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3743
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
  ], !dbg !3744

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.147, i64 0, i64 0), i32 noundef 5) #35, !dbg !3745
  %21 = load i8*, i8** %4, align 8, !dbg !3745, !tbaa !425
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #35, !dbg !3745
  br label %147, !dbg !3747

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.148, i64 0, i64 0), i32 noundef 5) #35, !dbg !3748
  %25 = load i8*, i8** %4, align 8, !dbg !3748, !tbaa !425
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3748
  %27 = load i8*, i8** %26, align 8, !dbg !3748, !tbaa !425
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #35, !dbg !3748
  br label %147, !dbg !3749

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.149, i64 0, i64 0), i32 noundef 5) #35, !dbg !3750
  %31 = load i8*, i8** %4, align 8, !dbg !3750, !tbaa !425
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3750
  %33 = load i8*, i8** %32, align 8, !dbg !3750, !tbaa !425
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3750
  %35 = load i8*, i8** %34, align 8, !dbg !3750, !tbaa !425
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #35, !dbg !3750
  br label %147, !dbg !3751

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.150, i64 0, i64 0), i32 noundef 5) #35, !dbg !3752
  %39 = load i8*, i8** %4, align 8, !dbg !3752, !tbaa !425
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3752
  %41 = load i8*, i8** %40, align 8, !dbg !3752, !tbaa !425
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3752
  %43 = load i8*, i8** %42, align 8, !dbg !3752, !tbaa !425
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3752
  %45 = load i8*, i8** %44, align 8, !dbg !3752, !tbaa !425
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #35, !dbg !3752
  br label %147, !dbg !3753

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.151, i64 0, i64 0), i32 noundef 5) #35, !dbg !3754
  %49 = load i8*, i8** %4, align 8, !dbg !3754, !tbaa !425
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3754
  %51 = load i8*, i8** %50, align 8, !dbg !3754, !tbaa !425
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3754
  %53 = load i8*, i8** %52, align 8, !dbg !3754, !tbaa !425
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3754
  %55 = load i8*, i8** %54, align 8, !dbg !3754, !tbaa !425
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3754
  %57 = load i8*, i8** %56, align 8, !dbg !3754, !tbaa !425
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #35, !dbg !3754
  br label %147, !dbg !3755

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.152, i64 0, i64 0), i32 noundef 5) #35, !dbg !3756
  %61 = load i8*, i8** %4, align 8, !dbg !3756, !tbaa !425
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3756
  %63 = load i8*, i8** %62, align 8, !dbg !3756, !tbaa !425
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3756
  %65 = load i8*, i8** %64, align 8, !dbg !3756, !tbaa !425
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3756
  %67 = load i8*, i8** %66, align 8, !dbg !3756, !tbaa !425
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3756
  %69 = load i8*, i8** %68, align 8, !dbg !3756, !tbaa !425
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3756
  %71 = load i8*, i8** %70, align 8, !dbg !3756, !tbaa !425
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #35, !dbg !3756
  br label %147, !dbg !3757

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.153, i64 0, i64 0), i32 noundef 5) #35, !dbg !3758
  %75 = load i8*, i8** %4, align 8, !dbg !3758, !tbaa !425
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3758
  %77 = load i8*, i8** %76, align 8, !dbg !3758, !tbaa !425
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3758
  %79 = load i8*, i8** %78, align 8, !dbg !3758, !tbaa !425
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3758
  %81 = load i8*, i8** %80, align 8, !dbg !3758, !tbaa !425
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3758
  %83 = load i8*, i8** %82, align 8, !dbg !3758, !tbaa !425
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3758
  %85 = load i8*, i8** %84, align 8, !dbg !3758, !tbaa !425
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3758
  %87 = load i8*, i8** %86, align 8, !dbg !3758, !tbaa !425
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #35, !dbg !3758
  br label %147, !dbg !3759

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.154, i64 0, i64 0), i32 noundef 5) #35, !dbg !3760
  %91 = load i8*, i8** %4, align 8, !dbg !3760, !tbaa !425
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3760
  %93 = load i8*, i8** %92, align 8, !dbg !3760, !tbaa !425
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3760
  %95 = load i8*, i8** %94, align 8, !dbg !3760, !tbaa !425
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3760
  %97 = load i8*, i8** %96, align 8, !dbg !3760, !tbaa !425
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3760
  %99 = load i8*, i8** %98, align 8, !dbg !3760, !tbaa !425
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3760
  %101 = load i8*, i8** %100, align 8, !dbg !3760, !tbaa !425
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3760
  %103 = load i8*, i8** %102, align 8, !dbg !3760, !tbaa !425
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3760
  %105 = load i8*, i8** %104, align 8, !dbg !3760, !tbaa !425
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #35, !dbg !3760
  br label %147, !dbg !3761

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.155, i64 0, i64 0), i32 noundef 5) #35, !dbg !3762
  %109 = load i8*, i8** %4, align 8, !dbg !3762, !tbaa !425
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3762
  %111 = load i8*, i8** %110, align 8, !dbg !3762, !tbaa !425
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3762
  %113 = load i8*, i8** %112, align 8, !dbg !3762, !tbaa !425
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3762
  %115 = load i8*, i8** %114, align 8, !dbg !3762, !tbaa !425
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3762
  %117 = load i8*, i8** %116, align 8, !dbg !3762, !tbaa !425
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3762
  %119 = load i8*, i8** %118, align 8, !dbg !3762, !tbaa !425
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3762
  %121 = load i8*, i8** %120, align 8, !dbg !3762, !tbaa !425
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3762
  %123 = load i8*, i8** %122, align 8, !dbg !3762, !tbaa !425
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3762
  %125 = load i8*, i8** %124, align 8, !dbg !3762, !tbaa !425
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #35, !dbg !3762
  br label %147, !dbg !3763

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.156, i64 0, i64 0), i32 noundef 5) #35, !dbg !3764
  %129 = load i8*, i8** %4, align 8, !dbg !3764, !tbaa !425
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3764
  %131 = load i8*, i8** %130, align 8, !dbg !3764, !tbaa !425
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3764
  %133 = load i8*, i8** %132, align 8, !dbg !3764, !tbaa !425
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3764
  %135 = load i8*, i8** %134, align 8, !dbg !3764, !tbaa !425
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3764
  %137 = load i8*, i8** %136, align 8, !dbg !3764, !tbaa !425
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3764
  %139 = load i8*, i8** %138, align 8, !dbg !3764, !tbaa !425
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3764
  %141 = load i8*, i8** %140, align 8, !dbg !3764, !tbaa !425
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3764
  %143 = load i8*, i8** %142, align 8, !dbg !3764, !tbaa !425
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3764
  %145 = load i8*, i8** %144, align 8, !dbg !3764, !tbaa !425
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #35, !dbg !3764
  br label %147, !dbg !3765

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3766
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3767 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3771, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i8* %1, metadata !3772, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i8* %2, metadata !3773, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i8* %3, metadata !3774, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i8** %4, metadata !3775, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i64 0, metadata !3776, metadata !DIExpression()), !dbg !3777
  br label %6, !dbg !3778

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3780
  call void @llvm.dbg.value(metadata i64 %7, metadata !3776, metadata !DIExpression()), !dbg !3777
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3781
  %9 = load i8*, i8** %8, align 8, !dbg !3781, !tbaa !425
  %10 = icmp eq i8* %9, null, !dbg !3783
  %11 = add i64 %7, 1, !dbg !3784
  call void @llvm.dbg.value(metadata i64 %11, metadata !3776, metadata !DIExpression()), !dbg !3777
  br i1 %10, label %12, label %6, !dbg !3783, !llvm.loop !3785

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3787
  ret void, !dbg !3788
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3789 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3804, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i8* %1, metadata !3805, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i8* %2, metadata !3806, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i8* %3, metadata !3807, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3808, metadata !DIExpression()), !dbg !3813
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3814
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3814
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3810, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.value(metadata i64 0, metadata !3809, metadata !DIExpression()), !dbg !3812
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3809, metadata !DIExpression()), !dbg !3812
  %11 = load i32, i32* %8, align 8, !dbg !3816
  %12 = icmp sgt i32 %11, -1, !dbg !3816
  br i1 %12, label %20, label %13, !dbg !3816

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3816
  store i32 %14, i32* %8, align 8, !dbg !3816
  %15 = icmp ult i32 %11, -7, !dbg !3816
  br i1 %15, label %16, label %20, !dbg !3816

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3816
  %18 = sext i32 %11 to i64, !dbg !3816
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3816
  br label %24, !dbg !3816

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3816
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3816
  store i8* %23, i8** %10, align 8, !dbg !3816
  br label %24, !dbg !3816

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3816
  %28 = load i8*, i8** %27, align 8, !dbg !3816
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3819
  store i8* %28, i8** %29, align 8, !dbg !3820, !tbaa !425
  %30 = icmp eq i8* %28, null, !dbg !3821
  br i1 %30, label %210, label %31, !dbg !3822

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3809, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 1, metadata !3809, metadata !DIExpression()), !dbg !3812
  %32 = icmp sgt i32 %25, -1, !dbg !3816
  br i1 %32, label %40, label %33, !dbg !3816

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3816
  store i32 %34, i32* %8, align 8, !dbg !3816
  %35 = icmp ult i32 %25, -7, !dbg !3816
  br i1 %35, label %36, label %40, !dbg !3816

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3816
  %38 = sext i32 %25 to i64, !dbg !3816
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3816
  br label %44, !dbg !3816

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3816
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3816
  store i8* %43, i8** %10, align 8, !dbg !3816
  br label %44, !dbg !3816

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3816
  %48 = load i8*, i8** %47, align 8, !dbg !3816
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3819
  store i8* %48, i8** %49, align 8, !dbg !3820, !tbaa !425
  %50 = icmp eq i8* %48, null, !dbg !3821
  br i1 %50, label %210, label %51, !dbg !3822

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3809, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 2, metadata !3809, metadata !DIExpression()), !dbg !3812
  %52 = icmp sgt i32 %45, -1, !dbg !3816
  br i1 %52, label %60, label %53, !dbg !3816

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3816
  store i32 %54, i32* %8, align 8, !dbg !3816
  %55 = icmp ult i32 %45, -7, !dbg !3816
  br i1 %55, label %56, label %60, !dbg !3816

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3816
  %58 = sext i32 %45 to i64, !dbg !3816
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3816
  br label %64, !dbg !3816

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3816
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3816
  store i8* %63, i8** %10, align 8, !dbg !3816
  br label %64, !dbg !3816

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3816
  %68 = load i8*, i8** %67, align 8, !dbg !3816
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3819
  store i8* %68, i8** %69, align 8, !dbg !3820, !tbaa !425
  %70 = icmp eq i8* %68, null, !dbg !3821
  br i1 %70, label %210, label %71, !dbg !3822

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3809, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 3, metadata !3809, metadata !DIExpression()), !dbg !3812
  %72 = icmp sgt i32 %65, -1, !dbg !3816
  br i1 %72, label %80, label %73, !dbg !3816

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3816
  store i32 %74, i32* %8, align 8, !dbg !3816
  %75 = icmp ult i32 %65, -7, !dbg !3816
  br i1 %75, label %76, label %80, !dbg !3816

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3816
  %78 = sext i32 %65 to i64, !dbg !3816
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3816
  br label %84, !dbg !3816

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3816
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3816
  store i8* %83, i8** %10, align 8, !dbg !3816
  br label %84, !dbg !3816

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3816
  %88 = load i8*, i8** %87, align 8, !dbg !3816
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3819
  store i8* %88, i8** %89, align 8, !dbg !3820, !tbaa !425
  %90 = icmp eq i8* %88, null, !dbg !3821
  br i1 %90, label %210, label %91, !dbg !3822

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3809, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 4, metadata !3809, metadata !DIExpression()), !dbg !3812
  %92 = icmp sgt i32 %85, -1, !dbg !3816
  br i1 %92, label %100, label %93, !dbg !3816

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3816
  store i32 %94, i32* %8, align 8, !dbg !3816
  %95 = icmp ult i32 %85, -7, !dbg !3816
  br i1 %95, label %96, label %100, !dbg !3816

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3816
  %98 = sext i32 %85 to i64, !dbg !3816
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3816
  br label %104, !dbg !3816

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3816
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3816
  store i8* %103, i8** %10, align 8, !dbg !3816
  br label %104, !dbg !3816

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3816
  %108 = load i8*, i8** %107, align 8, !dbg !3816
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3819
  store i8* %108, i8** %109, align 8, !dbg !3820, !tbaa !425
  %110 = icmp eq i8* %108, null, !dbg !3821
  br i1 %110, label %210, label %111, !dbg !3822

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3809, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 5, metadata !3809, metadata !DIExpression()), !dbg !3812
  %112 = icmp sgt i32 %105, -1, !dbg !3816
  br i1 %112, label %120, label %113, !dbg !3816

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3816
  store i32 %114, i32* %8, align 8, !dbg !3816
  %115 = icmp ult i32 %105, -7, !dbg !3816
  br i1 %115, label %116, label %120, !dbg !3816

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3816
  %118 = sext i32 %105 to i64, !dbg !3816
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3816
  br label %124, !dbg !3816

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3816
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3816
  store i8* %123, i8** %10, align 8, !dbg !3816
  br label %124, !dbg !3816

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3816
  %128 = load i8*, i8** %127, align 8, !dbg !3816
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3819
  store i8* %128, i8** %129, align 8, !dbg !3820, !tbaa !425
  %130 = icmp eq i8* %128, null, !dbg !3821
  br i1 %130, label %210, label %131, !dbg !3822

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3809, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 6, metadata !3809, metadata !DIExpression()), !dbg !3812
  %132 = icmp sgt i32 %125, -1, !dbg !3816
  br i1 %132, label %140, label %133, !dbg !3816

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3816
  store i32 %134, i32* %8, align 8, !dbg !3816
  %135 = icmp ult i32 %125, -7, !dbg !3816
  br i1 %135, label %136, label %140, !dbg !3816

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3816
  %138 = sext i32 %125 to i64, !dbg !3816
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3816
  br label %144, !dbg !3816

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3816
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3816
  store i8* %143, i8** %10, align 8, !dbg !3816
  br label %144, !dbg !3816

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3816
  %148 = load i8*, i8** %147, align 8, !dbg !3816
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3819
  store i8* %148, i8** %149, align 8, !dbg !3820, !tbaa !425
  %150 = icmp eq i8* %148, null, !dbg !3821
  br i1 %150, label %210, label %151, !dbg !3822

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3809, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 7, metadata !3809, metadata !DIExpression()), !dbg !3812
  %152 = icmp sgt i32 %145, -1, !dbg !3816
  br i1 %152, label %160, label %153, !dbg !3816

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3816
  store i32 %154, i32* %8, align 8, !dbg !3816
  %155 = icmp ult i32 %145, -7, !dbg !3816
  br i1 %155, label %156, label %160, !dbg !3816

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3816
  %158 = sext i32 %145 to i64, !dbg !3816
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3816
  br label %164, !dbg !3816

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3816
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3816
  store i8* %163, i8** %10, align 8, !dbg !3816
  br label %164, !dbg !3816

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3816
  %168 = load i8*, i8** %167, align 8, !dbg !3816
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3819
  store i8* %168, i8** %169, align 8, !dbg !3820, !tbaa !425
  %170 = icmp eq i8* %168, null, !dbg !3821
  br i1 %170, label %210, label %171, !dbg !3822

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3809, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 8, metadata !3809, metadata !DIExpression()), !dbg !3812
  %172 = icmp sgt i32 %165, -1, !dbg !3816
  br i1 %172, label %180, label %173, !dbg !3816

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3816
  store i32 %174, i32* %8, align 8, !dbg !3816
  %175 = icmp ult i32 %165, -7, !dbg !3816
  br i1 %175, label %176, label %180, !dbg !3816

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3816
  %178 = sext i32 %165 to i64, !dbg !3816
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3816
  br label %184, !dbg !3816

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3816
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3816
  store i8* %183, i8** %10, align 8, !dbg !3816
  br label %184, !dbg !3816

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3816
  %188 = load i8*, i8** %187, align 8, !dbg !3816
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3819
  store i8* %188, i8** %189, align 8, !dbg !3820, !tbaa !425
  %190 = icmp eq i8* %188, null, !dbg !3821
  br i1 %190, label %210, label %191, !dbg !3822

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3809, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i64 9, metadata !3809, metadata !DIExpression()), !dbg !3812
  %192 = icmp sgt i32 %185, -1, !dbg !3816
  br i1 %192, label %200, label %193, !dbg !3816

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3816
  store i32 %194, i32* %8, align 8, !dbg !3816
  %195 = icmp ult i32 %185, -7, !dbg !3816
  br i1 %195, label %196, label %200, !dbg !3816

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3816
  %198 = sext i32 %185 to i64, !dbg !3816
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3816
  br label %203, !dbg !3816

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3816
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3816
  store i8* %202, i8** %10, align 8, !dbg !3816
  br label %203, !dbg !3816

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3816
  %206 = load i8*, i8** %205, align 8, !dbg !3816
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3819
  store i8* %206, i8** %207, align 8, !dbg !3820, !tbaa !425
  %208 = icmp eq i8* %206, null, !dbg !3821
  %209 = select i1 %208, i64 9, i64 10, !dbg !3822
  br label %210, !dbg !3822

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3823
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3824
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3825
  ret void, !dbg !3825
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3826 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3830, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i8* %1, metadata !3831, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i8* %2, metadata !3832, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i8* %3, metadata !3833, metadata !DIExpression()), !dbg !3835
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3836
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3836
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3834, metadata !DIExpression()), !dbg !3837
  call void @llvm.va_start(i8* nonnull %7), !dbg !3838
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3839
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3839
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3839, !tbaa.struct !883
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3839
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3839
  call void @llvm.va_end(i8* nonnull %7), !dbg !3840
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3841
  ret void, !dbg !3841
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3842 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3843, !tbaa !425
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.144, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3843
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.159, i64 0, i64 0), i32 noundef 5) #35, !dbg !3844
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.160, i64 0, i64 0)) #35, !dbg !3844
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.161, i64 0, i64 0), i32 noundef 5) #35, !dbg !3845
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.162, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.163, i64 0, i64 0)) #35, !dbg !3845
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.164, i64 0, i64 0), i32 noundef 5) #35, !dbg !3846
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.165, i64 0, i64 0)) #35, !dbg !3846
  ret void, !dbg !3847
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3848 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3853, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i64 %1, metadata !3854, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i64 %2, metadata !3855, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i8* %0, metadata !3857, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i64 %1, metadata !3860, metadata !DIExpression()) #35, !dbg !3862
  call void @llvm.dbg.value(metadata i64 %2, metadata !3861, metadata !DIExpression()) #35, !dbg !3862
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3864
  call void @llvm.dbg.value(metadata i8* %4, metadata !3865, metadata !DIExpression()) #35, !dbg !3870
  %5 = icmp eq i8* %4, null, !dbg !3872
  br i1 %5, label %6, label %7, !dbg !3874

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3875
  unreachable, !dbg !3875

7:                                                ; preds = %3
  ret i8* %4, !dbg !3876
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3858 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3857, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i64 %1, metadata !3860, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i64 %2, metadata !3861, metadata !DIExpression()), !dbg !3877
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3878
  call void @llvm.dbg.value(metadata i8* %4, metadata !3865, metadata !DIExpression()) #35, !dbg !3879
  %5 = icmp eq i8* %4, null, !dbg !3881
  br i1 %5, label %6, label %7, !dbg !3882

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3883
  unreachable, !dbg !3883

7:                                                ; preds = %3
  ret i8* %4, !dbg !3884
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3885 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3889, metadata !DIExpression()), !dbg !3890
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3891
  call void @llvm.dbg.value(metadata i8* %2, metadata !3865, metadata !DIExpression()) #35, !dbg !3892
  %3 = icmp eq i8* %2, null, !dbg !3894
  br i1 %3, label %4, label %5, !dbg !3895

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3896
  unreachable, !dbg !3896

5:                                                ; preds = %1
  ret i8* %2, !dbg !3897
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3898 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3902, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 %0, metadata !3904, metadata !DIExpression()) #35, !dbg !3908
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3910
  call void @llvm.dbg.value(metadata i8* %2, metadata !3865, metadata !DIExpression()) #35, !dbg !3911
  %3 = icmp eq i8* %2, null, !dbg !3913
  br i1 %3, label %4, label %5, !dbg !3914

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3915
  unreachable, !dbg !3915

5:                                                ; preds = %1
  ret i8* %2, !dbg !3916
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !3917 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3921, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i64 %0, metadata !3889, metadata !DIExpression()) #35, !dbg !3923
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %2, metadata !3865, metadata !DIExpression()) #35, !dbg !3926
  %3 = icmp eq i8* %2, null, !dbg !3928
  br i1 %3, label %4, label %5, !dbg !3929

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3930
  unreachable, !dbg !3930

5:                                                ; preds = %1
  ret i8* %2, !dbg !3931
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3932 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3936, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i64 %1, metadata !3937, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i8* %0, metadata !3939, metadata !DIExpression()) #35, !dbg !3944
  call void @llvm.dbg.value(metadata i64 %1, metadata !3943, metadata !DIExpression()) #35, !dbg !3944
  %3 = icmp eq i64 %1, 0, !dbg !3946
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3946
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3947
  call void @llvm.dbg.value(metadata i8* %5, metadata !3865, metadata !DIExpression()) #35, !dbg !3948
  %6 = icmp eq i8* %5, null, !dbg !3950
  br i1 %6, label %7, label %8, !dbg !3951

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3952
  unreachable, !dbg !3952

8:                                                ; preds = %2
  ret i8* %5, !dbg !3953
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #25

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3954 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3958, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i64 %1, metadata !3959, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i8* %0, metadata !3961, metadata !DIExpression()) #35, !dbg !3965
  call void @llvm.dbg.value(metadata i64 %1, metadata !3964, metadata !DIExpression()) #35, !dbg !3965
  call void @llvm.dbg.value(metadata i8* %0, metadata !3939, metadata !DIExpression()) #35, !dbg !3967
  call void @llvm.dbg.value(metadata i64 %1, metadata !3943, metadata !DIExpression()) #35, !dbg !3967
  %3 = icmp eq i64 %1, 0, !dbg !3969
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3969
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3970
  call void @llvm.dbg.value(metadata i8* %5, metadata !3865, metadata !DIExpression()) #35, !dbg !3971
  %6 = icmp eq i8* %5, null, !dbg !3973
  br i1 %6, label %7, label %8, !dbg !3974

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3975
  unreachable, !dbg !3975

8:                                                ; preds = %2
  ret i8* %5, !dbg !3976
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3977 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3981, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i64 %1, metadata !3982, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i64 %2, metadata !3983, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i8* %0, metadata !3985, metadata !DIExpression()) #35, !dbg !3990
  call void @llvm.dbg.value(metadata i64 %1, metadata !3988, metadata !DIExpression()) #35, !dbg !3990
  call void @llvm.dbg.value(metadata i64 %2, metadata !3989, metadata !DIExpression()) #35, !dbg !3990
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3992
  call void @llvm.dbg.value(metadata i8* %4, metadata !3865, metadata !DIExpression()) #35, !dbg !3993
  %5 = icmp eq i8* %4, null, !dbg !3995
  br i1 %5, label %6, label %7, !dbg !3996

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3997
  unreachable, !dbg !3997

7:                                                ; preds = %3
  ret i8* %4, !dbg !3998
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3999 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4003, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i64 %1, metadata !4004, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i8* null, metadata !3857, metadata !DIExpression()) #35, !dbg !4006
  call void @llvm.dbg.value(metadata i64 %0, metadata !3860, metadata !DIExpression()) #35, !dbg !4006
  call void @llvm.dbg.value(metadata i64 %1, metadata !3861, metadata !DIExpression()) #35, !dbg !4006
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !4008
  call void @llvm.dbg.value(metadata i8* %3, metadata !3865, metadata !DIExpression()) #35, !dbg !4009
  %4 = icmp eq i8* %3, null, !dbg !4011
  br i1 %4, label %5, label %6, !dbg !4012

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4013
  unreachable, !dbg !4013

6:                                                ; preds = %2
  ret i8* %3, !dbg !4014
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4015 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4019, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i64 %1, metadata !4020, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i8* null, metadata !3981, metadata !DIExpression()) #35, !dbg !4022
  call void @llvm.dbg.value(metadata i64 %0, metadata !3982, metadata !DIExpression()) #35, !dbg !4022
  call void @llvm.dbg.value(metadata i64 %1, metadata !3983, metadata !DIExpression()) #35, !dbg !4022
  call void @llvm.dbg.value(metadata i8* null, metadata !3985, metadata !DIExpression()) #35, !dbg !4024
  call void @llvm.dbg.value(metadata i64 %0, metadata !3988, metadata !DIExpression()) #35, !dbg !4024
  call void @llvm.dbg.value(metadata i64 %1, metadata !3989, metadata !DIExpression()) #35, !dbg !4024
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !4026
  call void @llvm.dbg.value(metadata i8* %3, metadata !3865, metadata !DIExpression()) #35, !dbg !4027
  %4 = icmp eq i8* %3, null, !dbg !4029
  br i1 %4, label %5, label %6, !dbg !4030

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4031
  unreachable, !dbg !4031

6:                                                ; preds = %2
  ret i8* %3, !dbg !4032
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !4033 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4037, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i64* %1, metadata !4038, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i8* %0, metadata !358, metadata !DIExpression()) #35, !dbg !4040
  call void @llvm.dbg.value(metadata i64* %1, metadata !359, metadata !DIExpression()) #35, !dbg !4040
  call void @llvm.dbg.value(metadata i64 1, metadata !360, metadata !DIExpression()) #35, !dbg !4040
  %3 = load i64, i64* %1, align 8, !dbg !4042, !tbaa !2936
  call void @llvm.dbg.value(metadata i64 %3, metadata !361, metadata !DIExpression()) #35, !dbg !4040
  %4 = icmp eq i8* %0, null, !dbg !4043
  br i1 %4, label %5, label %8, !dbg !4045

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4046
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4049
  br label %15, !dbg !4049

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4050
  %10 = add nuw i64 %9, 1, !dbg !4050
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #35, !dbg !4050
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4050
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %13, metadata !361, metadata !DIExpression()) #35, !dbg !4040
  br i1 %12, label %14, label %15, !dbg !4053

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !4054
  unreachable, !dbg !4054

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4040
  call void @llvm.dbg.value(metadata i64 %16, metadata !361, metadata !DIExpression()) #35, !dbg !4040
  call void @llvm.dbg.value(metadata i8* %0, metadata !3857, metadata !DIExpression()) #35, !dbg !4055
  call void @llvm.dbg.value(metadata i64 %16, metadata !3860, metadata !DIExpression()) #35, !dbg !4055
  call void @llvm.dbg.value(metadata i64 1, metadata !3861, metadata !DIExpression()) #35, !dbg !4055
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #35, !dbg !4057
  call void @llvm.dbg.value(metadata i8* %17, metadata !3865, metadata !DIExpression()) #35, !dbg !4058
  %18 = icmp eq i8* %17, null, !dbg !4060
  br i1 %18, label %19, label %20, !dbg !4061

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !4062
  unreachable, !dbg !4062

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !358, metadata !DIExpression()) #35, !dbg !4040
  store i64 %16, i64* %1, align 8, !dbg !4063, !tbaa !2936
  ret i8* %17, !dbg !4064
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !353 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !358, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i64* %1, metadata !359, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i64 %2, metadata !360, metadata !DIExpression()), !dbg !4065
  %4 = load i64, i64* %1, align 8, !dbg !4066, !tbaa !2936
  call void @llvm.dbg.value(metadata i64 %4, metadata !361, metadata !DIExpression()), !dbg !4065
  %5 = icmp eq i8* %0, null, !dbg !4067
  br i1 %5, label %6, label %13, !dbg !4068

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4069
  br i1 %7, label %8, label %20, !dbg !4070

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4071
  call void @llvm.dbg.value(metadata i64 %9, metadata !361, metadata !DIExpression()), !dbg !4065
  %10 = icmp ugt i64 %2, 128, !dbg !4073
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4074
  call void @llvm.dbg.value(metadata i64 %12, metadata !361, metadata !DIExpression()), !dbg !4065
  br label %20, !dbg !4075

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4076
  %15 = add nuw i64 %14, 1, !dbg !4076
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4076
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4076
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4076
  call void @llvm.dbg.value(metadata i64 %18, metadata !361, metadata !DIExpression()), !dbg !4065
  br i1 %17, label %19, label %20, !dbg !4077

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !4078
  unreachable, !dbg !4078

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4065
  call void @llvm.dbg.value(metadata i64 %21, metadata !361, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i8* %0, metadata !3857, metadata !DIExpression()) #35, !dbg !4079
  call void @llvm.dbg.value(metadata i64 %21, metadata !3860, metadata !DIExpression()) #35, !dbg !4079
  call void @llvm.dbg.value(metadata i64 %2, metadata !3861, metadata !DIExpression()) #35, !dbg !4079
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #35, !dbg !4081
  call void @llvm.dbg.value(metadata i8* %22, metadata !3865, metadata !DIExpression()) #35, !dbg !4082
  %23 = icmp eq i8* %22, null, !dbg !4084
  br i1 %23, label %24, label %25, !dbg !4085

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !4086
  unreachable, !dbg !4086

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !358, metadata !DIExpression()), !dbg !4065
  store i64 %21, i64* %1, align 8, !dbg !4087, !tbaa !2936
  ret i8* %22, !dbg !4088
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !365 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !373, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64* %1, metadata !374, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %2, metadata !375, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %3, metadata !376, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %4, metadata !377, metadata !DIExpression()), !dbg !4089
  %6 = load i64, i64* %1, align 8, !dbg !4090, !tbaa !2936
  call void @llvm.dbg.value(metadata i64 %6, metadata !378, metadata !DIExpression()), !dbg !4089
  %7 = ashr i64 %6, 1, !dbg !4091
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4091
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4091
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4091
  call void @llvm.dbg.value(metadata i64 %10, metadata !379, metadata !DIExpression()), !dbg !4089
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4093
  call void @llvm.dbg.value(metadata i64 %11, metadata !379, metadata !DIExpression()), !dbg !4089
  %12 = icmp sgt i64 %3, -1, !dbg !4094
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4096
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4096
  call void @llvm.dbg.value(metadata i64 %15, metadata !379, metadata !DIExpression()), !dbg !4089
  %16 = icmp slt i64 %4, 0, !dbg !4097
  br i1 %16, label %17, label %30, !dbg !4097

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4097
  br i1 %18, label %19, label %24, !dbg !4097

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4097
  %21 = udiv i64 9223372036854775807, %20, !dbg !4097
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4097
  br i1 %23, label %46, label %43, !dbg !4097

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4097
  br i1 %25, label %43, label %26, !dbg !4097

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4097
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4097
  %29 = icmp ult i64 %28, %15, !dbg !4097
  br i1 %29, label %46, label %43, !dbg !4097

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4097
  br i1 %31, label %43, label %32, !dbg !4097

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4097
  br i1 %33, label %34, label %40, !dbg !4097

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4097
  br i1 %35, label %43, label %36, !dbg !4097

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4097
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4097
  %39 = icmp ult i64 %38, %4, !dbg !4097
  br i1 %39, label %46, label %43, !dbg !4097

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !4097
  %42 = icmp ult i64 %41, %15, !dbg !4097
  br i1 %42, label %46, label %43, !dbg !4097

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !380, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4089
  %44 = mul i64 %15, %4, !dbg !4097
  call void @llvm.dbg.value(metadata i64 %44, metadata !380, metadata !DIExpression()), !dbg !4089
  %45 = icmp slt i64 %44, 128, !dbg !4097
  br i1 %45, label %46, label %52, !dbg !4097

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !381, metadata !DIExpression()), !dbg !4089
  %48 = sdiv i64 %47, %4, !dbg !4098
  call void @llvm.dbg.value(metadata i64 %48, metadata !379, metadata !DIExpression()), !dbg !4089
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4101
  call void @llvm.dbg.value(metadata i64 %51, metadata !380, metadata !DIExpression()), !dbg !4089
  br label %52, !dbg !4102

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4089
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4089
  call void @llvm.dbg.value(metadata i64 %54, metadata !380, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %53, metadata !379, metadata !DIExpression()), !dbg !4089
  %55 = icmp eq i8* %0, null, !dbg !4103
  br i1 %55, label %56, label %57, !dbg !4105

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !4106, !tbaa !2936
  br label %57, !dbg !4107

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4108
  %59 = icmp slt i64 %58, %2, !dbg !4110
  br i1 %59, label %60, label %97, !dbg !4111

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4112
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4112
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4112
  call void @llvm.dbg.value(metadata i64 %63, metadata !379, metadata !DIExpression()), !dbg !4089
  br i1 %62, label %96, label %64, !dbg !4113

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !4114
  br i1 %66, label %96, label %67, !dbg !4114

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !4115

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4115
  br i1 %69, label %70, label %75, !dbg !4115

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4115
  %72 = udiv i64 9223372036854775807, %71, !dbg !4115
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4115
  br i1 %74, label %96, label %94, !dbg !4115

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4115
  br i1 %76, label %94, label %77, !dbg !4115

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4115
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4115
  %80 = icmp ult i64 %79, %63, !dbg !4115
  br i1 %80, label %96, label %94, !dbg !4115

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4115
  br i1 %82, label %94, label %83, !dbg !4115

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4115
  br i1 %84, label %85, label %91, !dbg !4115

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4115
  br i1 %86, label %94, label %87, !dbg !4115

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4115
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4115
  %90 = icmp ult i64 %89, %4, !dbg !4115
  br i1 %90, label %96, label %94, !dbg !4115

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !4115
  %93 = icmp ult i64 %92, %63, !dbg !4115
  br i1 %93, label %96, label %94, !dbg !4115

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !380, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4089
  %95 = mul i64 %63, %4, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %95, metadata !380, metadata !DIExpression()), !dbg !4089
  br label %97, !dbg !4116

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #37, !dbg !4117
  unreachable, !dbg !4117

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4089
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4089
  call void @llvm.dbg.value(metadata i64 %99, metadata !380, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %98, metadata !379, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i8* %0, metadata !3936, metadata !DIExpression()) #35, !dbg !4118
  call void @llvm.dbg.value(metadata i64 %99, metadata !3937, metadata !DIExpression()) #35, !dbg !4118
  call void @llvm.dbg.value(metadata i8* %0, metadata !3939, metadata !DIExpression()) #35, !dbg !4120
  call void @llvm.dbg.value(metadata i64 %99, metadata !3943, metadata !DIExpression()) #35, !dbg !4120
  %100 = icmp eq i64 %99, 0, !dbg !4122
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4122
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #35, !dbg !4123
  call void @llvm.dbg.value(metadata i8* %102, metadata !3865, metadata !DIExpression()) #35, !dbg !4124
  %103 = icmp eq i8* %102, null, !dbg !4126
  br i1 %103, label %104, label %105, !dbg !4127

104:                                              ; preds = %97
  tail call void @xalloc_die() #37, !dbg !4128
  unreachable, !dbg !4128

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !373, metadata !DIExpression()), !dbg !4089
  store i64 %98, i64* %1, align 8, !dbg !4129, !tbaa !2936
  ret i8* %102, !dbg !4130
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4131 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4133, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i64 %0, metadata !4135, metadata !DIExpression()) #35, !dbg !4139
  call void @llvm.dbg.value(metadata i64 1, metadata !4138, metadata !DIExpression()) #35, !dbg !4139
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !4141
  call void @llvm.dbg.value(metadata i8* %2, metadata !3865, metadata !DIExpression()) #35, !dbg !4142
  %3 = icmp eq i8* %2, null, !dbg !4144
  br i1 %3, label %4, label %5, !dbg !4145

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4146
  unreachable, !dbg !4146

5:                                                ; preds = %1
  ret i8* %2, !dbg !4147
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4136 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4135, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i64 %1, metadata !4138, metadata !DIExpression()), !dbg !4148
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !4149
  call void @llvm.dbg.value(metadata i8* %3, metadata !3865, metadata !DIExpression()) #35, !dbg !4150
  %4 = icmp eq i8* %3, null, !dbg !4152
  br i1 %4, label %5, label %6, !dbg !4153

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4154
  unreachable, !dbg !4154

6:                                                ; preds = %2
  ret i8* %3, !dbg !4155
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #30 !dbg !4156 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4158, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 %0, metadata !4160, metadata !DIExpression()) #35, !dbg !4164
  call void @llvm.dbg.value(metadata i64 1, metadata !4163, metadata !DIExpression()) #35, !dbg !4164
  call void @llvm.dbg.value(metadata i64 %0, metadata !4166, metadata !DIExpression()) #35, !dbg !4170
  call void @llvm.dbg.value(metadata i64 1, metadata !4169, metadata !DIExpression()) #35, !dbg !4170
  call void @llvm.dbg.value(metadata i64 %0, metadata !4166, metadata !DIExpression()) #35, !dbg !4170
  call void @llvm.dbg.value(metadata i64 1, metadata !4169, metadata !DIExpression()) #35, !dbg !4170
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !4172
  call void @llvm.dbg.value(metadata i8* %2, metadata !3865, metadata !DIExpression()) #35, !dbg !4173
  %3 = icmp eq i8* %2, null, !dbg !4175
  br i1 %3, label %4, label %5, !dbg !4176

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4177
  unreachable, !dbg !4177

5:                                                ; preds = %1
  ret i8* %2, !dbg !4178
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4161 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4160, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i64 %1, metadata !4163, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i64 %0, metadata !4166, metadata !DIExpression()) #35, !dbg !4180
  call void @llvm.dbg.value(metadata i64 %1, metadata !4169, metadata !DIExpression()) #35, !dbg !4180
  call void @llvm.dbg.value(metadata i64 %0, metadata !4166, metadata !DIExpression()) #35, !dbg !4180
  call void @llvm.dbg.value(metadata i64 %1, metadata !4169, metadata !DIExpression()) #35, !dbg !4180
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !4182
  call void @llvm.dbg.value(metadata i8* %3, metadata !3865, metadata !DIExpression()) #35, !dbg !4183
  %4 = icmp eq i8* %3, null, !dbg !4185
  br i1 %4, label %5, label %6, !dbg !4186

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4187
  unreachable, !dbg !4187

6:                                                ; preds = %2
  ret i8* %3, !dbg !4188
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4189 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4193, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata i64 %1, metadata !4194, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata i64 %1, metadata !3889, metadata !DIExpression()) #35, !dbg !4196
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !4198
  call void @llvm.dbg.value(metadata i8* %3, metadata !3865, metadata !DIExpression()) #35, !dbg !4199
  %4 = icmp eq i8* %3, null, !dbg !4201
  br i1 %4, label %5, label %6, !dbg !4202

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4203
  unreachable, !dbg !4203

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4204, metadata !DIExpression()) #35, !dbg !4212
  call void @llvm.dbg.value(metadata i8* %0, metadata !4210, metadata !DIExpression()) #35, !dbg !4212
  call void @llvm.dbg.value(metadata i64 %1, metadata !4211, metadata !DIExpression()) #35, !dbg !4212
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4214
  ret i8* %3, !dbg !4215
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4216 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4220, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %1, metadata !4221, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %1, metadata !3902, metadata !DIExpression()) #35, !dbg !4223
  call void @llvm.dbg.value(metadata i64 %1, metadata !3904, metadata !DIExpression()) #35, !dbg !4225
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !4227
  call void @llvm.dbg.value(metadata i8* %3, metadata !3865, metadata !DIExpression()) #35, !dbg !4228
  %4 = icmp eq i8* %3, null, !dbg !4230
  br i1 %4, label %5, label %6, !dbg !4231

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4232
  unreachable, !dbg !4232

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4204, metadata !DIExpression()) #35, !dbg !4233
  call void @llvm.dbg.value(metadata i8* %0, metadata !4210, metadata !DIExpression()) #35, !dbg !4233
  call void @llvm.dbg.value(metadata i64 %1, metadata !4211, metadata !DIExpression()) #35, !dbg !4233
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4235
  ret i8* %3, !dbg !4236
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4237 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4241, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata i64 %1, metadata !4242, metadata !DIExpression()), !dbg !4244
  %3 = add nsw i64 %1, 1, !dbg !4245
  call void @llvm.dbg.value(metadata i64 %3, metadata !3902, metadata !DIExpression()) #35, !dbg !4246
  call void @llvm.dbg.value(metadata i64 %3, metadata !3904, metadata !DIExpression()) #35, !dbg !4248
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !4250
  call void @llvm.dbg.value(metadata i8* %4, metadata !3865, metadata !DIExpression()) #35, !dbg !4251
  %5 = icmp eq i8* %4, null, !dbg !4253
  br i1 %5, label %6, label %7, !dbg !4254

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4255
  unreachable, !dbg !4255

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4243, metadata !DIExpression()), !dbg !4244
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4256
  store i8 0, i8* %8, align 1, !dbg !4257, !tbaa !563
  call void @llvm.dbg.value(metadata i8* %4, metadata !4204, metadata !DIExpression()) #35, !dbg !4258
  call void @llvm.dbg.value(metadata i8* %0, metadata !4210, metadata !DIExpression()) #35, !dbg !4258
  call void @llvm.dbg.value(metadata i64 %1, metadata !4211, metadata !DIExpression()) #35, !dbg !4258
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4260
  ret i8* %4, !dbg !4261
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4262 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4264, metadata !DIExpression()), !dbg !4265
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !4266
  %3 = add i64 %2, 1, !dbg !4267
  call void @llvm.dbg.value(metadata i8* %0, metadata !4193, metadata !DIExpression()) #35, !dbg !4268
  call void @llvm.dbg.value(metadata i64 %3, metadata !4194, metadata !DIExpression()) #35, !dbg !4268
  call void @llvm.dbg.value(metadata i64 %3, metadata !3889, metadata !DIExpression()) #35, !dbg !4270
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !4272
  call void @llvm.dbg.value(metadata i8* %4, metadata !3865, metadata !DIExpression()) #35, !dbg !4273
  %5 = icmp eq i8* %4, null, !dbg !4275
  br i1 %5, label %6, label %7, !dbg !4276

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4277
  unreachable, !dbg !4277

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4204, metadata !DIExpression()) #35, !dbg !4278
  call void @llvm.dbg.value(metadata i8* %0, metadata !4210, metadata !DIExpression()) #35, !dbg !4278
  call void @llvm.dbg.value(metadata i64 %3, metadata !4211, metadata !DIExpression()) #35, !dbg !4278
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #35, !dbg !4280
  ret i8* %4, !dbg !4281
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4282 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4287, !tbaa !554
  call void @llvm.dbg.value(metadata i32 %1, metadata !4284, metadata !DIExpression()), !dbg !4288
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.176, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.177, i64 0, i64 0), i32 noundef 5) #35, !dbg !4287
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.178, i64 0, i64 0), i8* noundef %2) #35, !dbg !4287
  %3 = icmp eq i32 %1, 0, !dbg !4287
  tail call void @llvm.assume(i1 %3), !dbg !4287
  tail call void @abort() #37, !dbg !4289
  unreachable, !dbg !4289
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4290 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4328, metadata !DIExpression()), !dbg !4333
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #35, !dbg !4334
  call void @llvm.dbg.value(metadata i1 undef, metadata !4329, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4333
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4335, metadata !DIExpression()), !dbg !4338
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4340
  %4 = load i32, i32* %3, align 8, !dbg !4340, !tbaa !4341
  %5 = and i32 %4, 32, !dbg !4342
  %6 = icmp eq i32 %5, 0, !dbg !4342
  call void @llvm.dbg.value(metadata i1 %6, metadata !4331, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4333
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #35, !dbg !4343
  %8 = icmp eq i32 %7, 0, !dbg !4344
  call void @llvm.dbg.value(metadata i1 %8, metadata !4332, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4333
  br i1 %6, label %9, label %19, !dbg !4345

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4347
  call void @llvm.dbg.value(metadata i1 %10, metadata !4329, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4333
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4348
  %12 = xor i1 %8, true, !dbg !4348
  %13 = sext i1 %12 to i32, !dbg !4348
  br i1 %11, label %22, label %14, !dbg !4348

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #38, !dbg !4349
  %16 = load i32, i32* %15, align 4, !dbg !4349, !tbaa !554
  %17 = icmp ne i32 %16, 9, !dbg !4350
  %18 = sext i1 %17 to i32, !dbg !4351
  br label %22, !dbg !4351

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4352

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #38, !dbg !4354
  store i32 0, i32* %21, align 4, !dbg !4356, !tbaa !554
  br label %22, !dbg !4354

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4333
  ret i32 %23, !dbg !4357
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !4358 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4396, metadata !DIExpression()), !dbg !4400
  call void @llvm.dbg.value(metadata i32 0, metadata !4397, metadata !DIExpression()), !dbg !4400
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4401
  call void @llvm.dbg.value(metadata i32 %2, metadata !4398, metadata !DIExpression()), !dbg !4400
  %3 = icmp slt i32 %2, 0, !dbg !4402
  br i1 %3, label %4, label %6, !dbg !4404

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4405
  br label %24, !dbg !4406

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4407
  %8 = icmp eq i32 %7, 0, !dbg !4407
  br i1 %8, label %13, label %9, !dbg !4409

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4410
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #35, !dbg !4411
  %12 = icmp eq i64 %11, -1, !dbg !4412
  br i1 %12, label %16, label %13, !dbg !4413

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4414
  %15 = icmp eq i32 %14, 0, !dbg !4414
  br i1 %15, label %16, label %18, !dbg !4415

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4397, metadata !DIExpression()), !dbg !4400
  call void @llvm.dbg.value(metadata i32 0, metadata !4399, metadata !DIExpression()), !dbg !4400
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4416
  call void @llvm.dbg.value(metadata i32 %21, metadata !4399, metadata !DIExpression()), !dbg !4400
  br label %24, !dbg !4417

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #38, !dbg !4418
  %20 = load i32, i32* %19, align 4, !dbg !4418, !tbaa !554
  call void @llvm.dbg.value(metadata i32 %20, metadata !4397, metadata !DIExpression()), !dbg !4400
  call void @llvm.dbg.value(metadata i32 0, metadata !4399, metadata !DIExpression()), !dbg !4400
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4416
  call void @llvm.dbg.value(metadata i32 %21, metadata !4399, metadata !DIExpression()), !dbg !4400
  %22 = icmp eq i32 %20, 0, !dbg !4419
  br i1 %22, label %24, label %23, !dbg !4417

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4421, !tbaa !554
  call void @llvm.dbg.value(metadata i32 -1, metadata !4399, metadata !DIExpression()), !dbg !4400
  br label %24, !dbg !4423

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4400
  ret i32 %25, !dbg !4424
}

; Function Attrs: nofree nounwind
declare !dbg !4425 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4426 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4427 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4430 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4468, metadata !DIExpression()), !dbg !4469
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4470
  br i1 %2, label %6, label %3, !dbg !4472

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4473
  %5 = icmp eq i32 %4, 0, !dbg !4473
  br i1 %5, label %6, label %8, !dbg !4474

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !4475
  br label %17, !dbg !4476

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4477, metadata !DIExpression()) #35, !dbg !4482
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4484
  %10 = load i32, i32* %9, align 8, !dbg !4484, !tbaa !4341
  %11 = and i32 %10, 256, !dbg !4486
  %12 = icmp eq i32 %11, 0, !dbg !4486
  br i1 %12, label %15, label %13, !dbg !4487

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #35, !dbg !4488
  br label %15, !dbg !4488

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !4489
  br label %17, !dbg !4490

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4469
  ret i32 %18, !dbg !4491
}

; Function Attrs: nofree nounwind
declare !dbg !4492 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !4493 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4532, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i64 %1, metadata !4533, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i32 %2, metadata !4534, metadata !DIExpression()), !dbg !4538
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4539
  %5 = load i8*, i8** %4, align 8, !dbg !4539, !tbaa !4540
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4541
  %7 = load i8*, i8** %6, align 8, !dbg !4541, !tbaa !4542
  %8 = icmp eq i8* %5, %7, !dbg !4543
  br i1 %8, label %9, label %28, !dbg !4544

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4545
  %11 = load i8*, i8** %10, align 8, !dbg !4545, !tbaa !2045
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4546
  %13 = load i8*, i8** %12, align 8, !dbg !4546, !tbaa !4547
  %14 = icmp eq i8* %11, %13, !dbg !4548
  br i1 %14, label %15, label %28, !dbg !4549

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4550
  %17 = load i8*, i8** %16, align 8, !dbg !4550, !tbaa !4551
  %18 = icmp eq i8* %17, null, !dbg !4552
  br i1 %18, label %19, label %28, !dbg !4553

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4554
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #35, !dbg !4555
  call void @llvm.dbg.value(metadata i64 %21, metadata !4535, metadata !DIExpression()), !dbg !4556
  %22 = icmp eq i64 %21, -1, !dbg !4557
  br i1 %22, label %30, label %23, !dbg !4559

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4560
  %25 = load i32, i32* %24, align 8, !dbg !4561, !tbaa !4341
  %26 = and i32 %25, -17, !dbg !4561
  store i32 %26, i32* %24, align 8, !dbg !4561, !tbaa !4341
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4562
  store i64 %21, i64* %27, align 8, !dbg !4563, !tbaa !4564
  br label %30, !dbg !4565

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4566
  br label %30, !dbg !4567

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4538
  ret i32 %31, !dbg !4568
}

; Function Attrs: nofree nounwind
declare !dbg !4569 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4572 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4578, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata i8* %1, metadata !4579, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata i64 %2, metadata !4580, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4581, metadata !DIExpression()), !dbg !4583
  %5 = icmp eq i8* %1, null, !dbg !4584
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4586
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.189, i64 0, i64 0), i8* %1, !dbg !4586
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4586
  call void @llvm.dbg.value(metadata i64 %8, metadata !4580, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata i8* %7, metadata !4579, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata i32* %6, metadata !4578, metadata !DIExpression()), !dbg !4583
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4587
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4589
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4581, metadata !DIExpression()), !dbg !4583
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #35, !dbg !4590
  call void @llvm.dbg.value(metadata i64 %11, metadata !4582, metadata !DIExpression()), !dbg !4583
  %12 = icmp ult i64 %11, -3, !dbg !4591
  br i1 %12, label %13, label %18, !dbg !4593

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #36, !dbg !4594
  %15 = icmp eq i32 %14, 0, !dbg !4594
  br i1 %15, label %16, label %30, !dbg !4595

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4596, metadata !DIExpression()) #35, !dbg !4601
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4603, metadata !DIExpression()) #35, !dbg !4608
  call void @llvm.dbg.value(metadata i32 0, metadata !4606, metadata !DIExpression()) #35, !dbg !4608
  call void @llvm.dbg.value(metadata i64 8, metadata !4607, metadata !DIExpression()) #35, !dbg !4608
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4610
  store i64 0, i64* %17, align 1, !dbg !4610
  br label %30, !dbg !4611

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4612
  br i1 %19, label %20, label %21, !dbg !4614

20:                                               ; preds = %18
  tail call void @abort() #37, !dbg !4615
  unreachable, !dbg !4615

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4616

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #35, !dbg !4618
  br i1 %24, label %30, label %25, !dbg !4619

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4620
  br i1 %26, label %30, label %27, !dbg !4623

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4624, !tbaa !563
  %29 = zext i8 %28 to i32, !dbg !4625
  store i32 %29, i32* %6, align 4, !dbg !4626, !tbaa !554
  br label %30, !dbg !4627

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4583
  ret i64 %31, !dbg !4628
}

; Function Attrs: nounwind
declare !dbg !4629 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4634 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !4640 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4642, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata i64 %1, metadata !4643, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata i64 %2, metadata !4644, metadata !DIExpression()), !dbg !4646
  %4 = icmp eq i64 %2, 0, !dbg !4647
  br i1 %4, label %8, label %5, !dbg !4647

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4647
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4647
  br i1 %7, label %13, label %8, !dbg !4647

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4645, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4646
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4645, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4646
  %9 = mul i64 %2, %1, !dbg !4647
  call void @llvm.dbg.value(metadata i64 %9, metadata !4645, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata i8* %0, metadata !4649, metadata !DIExpression()) #35, !dbg !4653
  call void @llvm.dbg.value(metadata i64 %9, metadata !4652, metadata !DIExpression()) #35, !dbg !4653
  %10 = icmp eq i64 %9, 0, !dbg !4655
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4655
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #35, !dbg !4656
  br label %15, !dbg !4657

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4645, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4646
  %14 = tail call i32* @__errno_location() #38, !dbg !4658
  store i32 12, i32* %14, align 4, !dbg !4660, !tbaa !554
  br label %15, !dbg !4661

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4646
  ret i8* %16, !dbg !4662
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4663 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4665, metadata !DIExpression()), !dbg !4670
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4671
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4671
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4666, metadata !DIExpression()), !dbg !4672
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #35, !dbg !4673
  %5 = icmp eq i32 %4, 0, !dbg !4673
  br i1 %5, label %6, label %13, !dbg !4675

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4676, metadata !DIExpression()) #35, !dbg !4680
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.194, i64 0, i64 0), metadata !4679, metadata !DIExpression()) #35, !dbg !4680
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.194, i64 0, i64 0), i64 2), !dbg !4683
  %8 = icmp eq i32 %7, 0, !dbg !4684
  br i1 %8, label %12, label %9, !dbg !4685

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4676, metadata !DIExpression()) #35, !dbg !4686
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.195, i64 0, i64 0), metadata !4679, metadata !DIExpression()) #35, !dbg !4686
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.195, i64 0, i64 0), i64 6), !dbg !4688
  %11 = icmp eq i32 %10, 0, !dbg !4689
  br i1 %11, label %12, label %13, !dbg !4690

12:                                               ; preds = %9, %6
  br label %13, !dbg !4691

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4670
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4692
  ret i1 %14, !dbg !4692
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4693 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4697, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.value(metadata i8* %1, metadata !4698, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.value(metadata i64 %2, metadata !4699, metadata !DIExpression()), !dbg !4700
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #35, !dbg !4701
  ret i32 %4, !dbg !4702
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4703 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4707, metadata !DIExpression()), !dbg !4708
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #35, !dbg !4709
  ret i8* %2, !dbg !4710
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4711 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4713, metadata !DIExpression()), !dbg !4715
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4716
  call void @llvm.dbg.value(metadata i8* %2, metadata !4714, metadata !DIExpression()), !dbg !4715
  ret i8* %2, !dbg !4717
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4718 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4720, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i8* %1, metadata !4721, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i64 %2, metadata !4722, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i32 %0, metadata !4713, metadata !DIExpression()) #35, !dbg !4728
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4730
  call void @llvm.dbg.value(metadata i8* %4, metadata !4714, metadata !DIExpression()) #35, !dbg !4728
  call void @llvm.dbg.value(metadata i8* %4, metadata !4723, metadata !DIExpression()), !dbg !4727
  %5 = icmp eq i8* %4, null, !dbg !4731
  br i1 %5, label %6, label %9, !dbg !4732

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4733
  br i1 %7, label %19, label %8, !dbg !4736

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4737, !tbaa !563
  br label %19, !dbg !4738

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #36, !dbg !4739
  call void @llvm.dbg.value(metadata i64 %10, metadata !4724, metadata !DIExpression()), !dbg !4740
  %11 = icmp ult i64 %10, %2, !dbg !4741
  br i1 %11, label %12, label %14, !dbg !4743

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4744
  call void @llvm.dbg.value(metadata i8* %1, metadata !4746, metadata !DIExpression()) #35, !dbg !4751
  call void @llvm.dbg.value(metadata i8* %4, metadata !4749, metadata !DIExpression()) #35, !dbg !4751
  call void @llvm.dbg.value(metadata i64 %13, metadata !4750, metadata !DIExpression()) #35, !dbg !4751
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #35, !dbg !4753
  br label %19, !dbg !4754

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4755
  br i1 %15, label %19, label %16, !dbg !4758

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4759
  call void @llvm.dbg.value(metadata i8* %1, metadata !4746, metadata !DIExpression()) #35, !dbg !4761
  call void @llvm.dbg.value(metadata i8* %4, metadata !4749, metadata !DIExpression()) #35, !dbg !4761
  call void @llvm.dbg.value(metadata i64 %17, metadata !4750, metadata !DIExpression()) #35, !dbg !4761
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #35, !dbg !4763
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4764
  store i8 0, i8* %18, align 1, !dbg !4765, !tbaa !563
  br label %19, !dbg !4766

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4767
  ret i32 %20, !dbg !4768
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
attributes #13 = { nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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

!llvm.dbg.cu = !{!2, !151, !158, !312, !332, !334, !199, !205, !340, !342, !304, !349, !383, !385, !387, !389, !391, !318, !393, !396, !398, !400}
!llvm.ident = !{!402, !402, !402, !402, !402, !402, !402, !402, !402, !402, !402, !402, !402, !402, !402, !402, !402, !402, !402, !402, !402, !402}
!llvm.module.flags = !{!403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "argv", scope: !2, file: !3, line: 80, type: !148, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !41, globals: !56, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/test.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7583f30ebbd536ebc500e5a99f7dfb08")
!4 = !{!5, !11, !26}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 55, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "TEST_TRUE", value: 0)
!9 = !DIEnumerator(name: "TEST_FALSE", value: 1)
!10 = !DIEnumerator(name: "TEST_FAILURE", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 46, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!14 = !DIEnumerator(name: "_ISupper", value: 256)
!15 = !DIEnumerator(name: "_ISlower", value: 512)
!16 = !DIEnumerator(name: "_ISalpha", value: 1024)
!17 = !DIEnumerator(name: "_ISdigit", value: 2048)
!18 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!19 = !DIEnumerator(name: "_ISspace", value: 8192)
!20 = !DIEnumerator(name: "_ISprint", value: 16384)
!21 = !DIEnumerator(name: "_ISgraph", value: 32768)
!22 = !DIEnumerator(name: "_ISblank", value: 1)
!23 = !DIEnumerator(name: "_IScntrl", value: 2)
!24 = !DIEnumerator(name: "_ISpunct", value: 4)
!25 = !DIEnumerator(name: "_ISalnum", value: 8)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "binop", file: !3, line: 58, baseType: !6, size: 32, elements: !27)
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!28 = !DIEnumerator(name: "EQ_STRING_BINOP", value: 0)
!29 = !DIEnumerator(name: "GT_STRING_BINOP", value: 1)
!30 = !DIEnumerator(name: "LT_STRING_BINOP", value: 2)
!31 = !DIEnumerator(name: "NE_STRING_BINOP", value: 3)
!32 = !DIEnumerator(name: "EQ_BINOP", value: 4)
!33 = !DIEnumerator(name: "GE_BINOP", value: 5)
!34 = !DIEnumerator(name: "GT_BINOP", value: 6)
!35 = !DIEnumerator(name: "LE_BINOP", value: 7)
!36 = !DIEnumerator(name: "LT_BINOP", value: 8)
!37 = !DIEnumerator(name: "NE_BINOP", value: 9)
!38 = !DIEnumerator(name: "EF_BINOP", value: 10)
!39 = !DIEnumerator(name: "NT_BINOP", value: 11)
!40 = !DIEnumerator(name: "OT_BINOP", value: 12)
!41 = !{!42, !43, !44, !47, !50, !51}
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 46, baseType: !46)
!45 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !52, line: 10, baseType: !53)
!52 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !54, line: 160, baseType: !55)
!54 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!55 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!56 = !{!57, !59, !0, !61}
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "pos", scope: !2, file: !3, line: 78, type: !42, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "argc", scope: !2, file: !3, line: 79, type: !42, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !63, file: !64, line: 575, type: !42, isLocal: true, isDefinition: true)
!63 = distinct !DISubprogram(name: "oputs_", scope: !64, file: !64, line: 573, type: !65, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !67)
!64 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!65 = !DISubroutineType(types: !66)
!66 = !{null, !47, !47}
!67 = !{!68, !69, !70, !73, !75, !76, !77, !81, !82, !83, !84, !86, !142, !143, !144, !146, !147}
!68 = !DILocalVariable(name: "program", arg: 1, scope: !63, file: !64, line: 573, type: !47)
!69 = !DILocalVariable(name: "option", arg: 2, scope: !63, file: !64, line: 573, type: !47)
!70 = !DILocalVariable(name: "term", scope: !71, file: !64, line: 585, type: !47)
!71 = distinct !DILexicalBlock(scope: !72, file: !64, line: 582, column: 5)
!72 = distinct !DILexicalBlock(scope: !63, file: !64, line: 581, column: 7)
!73 = !DILocalVariable(name: "double_space", scope: !63, file: !64, line: 594, type: !74)
!74 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!75 = !DILocalVariable(name: "first_word", scope: !63, file: !64, line: 595, type: !47)
!76 = !DILocalVariable(name: "option_text", scope: !63, file: !64, line: 596, type: !47)
!77 = !DILocalVariable(name: "s", scope: !78, file: !64, line: 608, type: !47)
!78 = distinct !DILexicalBlock(scope: !79, file: !64, line: 605, column: 5)
!79 = distinct !DILexicalBlock(scope: !80, file: !64, line: 604, column: 12)
!80 = distinct !DILexicalBlock(scope: !63, file: !64, line: 597, column: 7)
!81 = !DILocalVariable(name: "spaces", scope: !78, file: !64, line: 609, type: !44)
!82 = !DILocalVariable(name: "anchor_len", scope: !63, file: !64, line: 620, type: !44)
!83 = !DILocalVariable(name: "desc_text", scope: !63, file: !64, line: 625, type: !47)
!84 = !DILocalVariable(name: "__ptr", scope: !85, file: !64, line: 644, type: !47)
!85 = distinct !DILexicalBlock(scope: !63, file: !64, line: 644, column: 3)
!86 = !DILocalVariable(name: "__stream", scope: !85, file: !64, line: 644, type: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !90)
!89 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !92)
!91 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!92 = !{!93, !94, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !109, !111, !112, !113, !115, !116, !118, !122, !125, !127, !130, !133, !134, !136, !137, !138}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !90, file: !91, line: 51, baseType: !42, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !90, file: !91, line: 54, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !90, file: !91, line: 55, baseType: !95, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !90, file: !91, line: 56, baseType: !95, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !90, file: !91, line: 57, baseType: !95, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !90, file: !91, line: 58, baseType: !95, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !90, file: !91, line: 59, baseType: !95, size: 64, offset: 384)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !90, file: !91, line: 60, baseType: !95, size: 64, offset: 448)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !90, file: !91, line: 61, baseType: !95, size: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !90, file: !91, line: 64, baseType: !95, size: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !90, file: !91, line: 65, baseType: !95, size: 64, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !90, file: !91, line: 66, baseType: !95, size: 64, offset: 704)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !90, file: !91, line: 68, baseType: !107, size: 64, offset: 768)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !91, line: 36, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !90, file: !91, line: 70, baseType: !110, size: 64, offset: 832)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !90, file: !91, line: 72, baseType: !42, size: 32, offset: 896)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !90, file: !91, line: 73, baseType: !42, size: 32, offset: 928)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !90, file: !91, line: 74, baseType: !114, size: 64, offset: 960)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !54, line: 152, baseType: !55)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !90, file: !91, line: 77, baseType: !43, size: 16, offset: 1024)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !90, file: !91, line: 78, baseType: !117, size: 8, offset: 1040)
!117 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !90, file: !91, line: 79, baseType: !119, size: 8, offset: 1048)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 1)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !90, file: !91, line: 81, baseType: !123, size: 64, offset: 1088)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !91, line: 43, baseType: null)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !90, file: !91, line: 89, baseType: !126, size: 64, offset: 1152)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !54, line: 153, baseType: !55)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !90, file: !91, line: 91, baseType: !128, size: 64, offset: 1216)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !91, line: 37, flags: DIFlagFwdDecl)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !90, file: !91, line: 92, baseType: !131, size: 64, offset: 1280)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !91, line: 38, flags: DIFlagFwdDecl)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !90, file: !91, line: 93, baseType: !110, size: 64, offset: 1344)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !90, file: !91, line: 94, baseType: !135, size: 64, offset: 1408)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !90, file: !91, line: 95, baseType: !44, size: 64, offset: 1472)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !90, file: !91, line: 96, baseType: !42, size: 32, offset: 1536)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !90, file: !91, line: 98, baseType: !139, size: 160, offset: 1568)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 160, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 20)
!142 = !DILocalVariable(name: "__cnt", scope: !85, file: !64, line: 644, type: !44)
!143 = !DILocalVariable(name: "url_program", scope: !63, file: !64, line: 648, type: !47)
!144 = !DILocalVariable(name: "__ptr", scope: !145, file: !64, line: 686, type: !47)
!145 = distinct !DILexicalBlock(scope: !63, file: !64, line: 686, column: 3)
!146 = !DILocalVariable(name: "__stream", scope: !145, file: !64, line: 686, type: !87)
!147 = !DILocalVariable(name: "__cnt", scope: !145, file: !64, line: 686, type: !44)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "file_name", scope: !151, file: !152, line: 45, type: !47, isLocal: true, isDefinition: true)
!151 = distinct !DICompileUnit(language: DW_LANG_C99, file: !152, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !153, splitDebugInlining: false, nameTableKind: None)
!152 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!153 = !{!149, !154}
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !151, file: !152, line: 55, type: !74, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !158, file: !159, line: 66, type: !194, isLocal: false, isDefinition: true)
!158 = distinct !DICompileUnit(language: DW_LANG_C99, file: !159, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !160, globals: !161, splitDebugInlining: false, nameTableKind: None)
!159 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!160 = !{!135, !50}
!161 = !{!162, !188, !156, !190, !192}
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "old_file_name", scope: !164, file: !159, line: 304, type: !47, isLocal: true, isDefinition: true)
!164 = distinct !DISubprogram(name: "verror_at_line", scope: !159, file: !159, line: 298, type: !165, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !181)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !42, !42, !47, !6, !47, !167}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !168, line: 52, baseType: !169)
!168 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !170, line: 32, baseType: !171)
!170 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !172, baseType: !173)
!172 = !DIFile(filename: "lib/error.c", directory: "/src")
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !174, size: 256, elements: !175)
!174 = !DINamespace(name: "std", scope: null)
!175 = !{!176, !177, !178, !179, !180}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !173, file: !172, baseType: !135, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !173, file: !172, baseType: !135, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !173, file: !172, baseType: !135, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !173, file: !172, baseType: !42, size: 32, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !173, file: !172, baseType: !42, size: 32, offset: 224)
!181 = !{!182, !183, !184, !185, !186, !187}
!182 = !DILocalVariable(name: "status", arg: 1, scope: !164, file: !159, line: 298, type: !42)
!183 = !DILocalVariable(name: "errnum", arg: 2, scope: !164, file: !159, line: 298, type: !42)
!184 = !DILocalVariable(name: "file_name", arg: 3, scope: !164, file: !159, line: 298, type: !47)
!185 = !DILocalVariable(name: "line_number", arg: 4, scope: !164, file: !159, line: 298, type: !6)
!186 = !DILocalVariable(name: "message", arg: 5, scope: !164, file: !159, line: 298, type: !47)
!187 = !DILocalVariable(name: "args", arg: 6, scope: !164, file: !159, line: 298, type: !167)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "old_line_number", scope: !164, file: !159, line: 305, type: !6, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "error_message_count", scope: !158, file: !159, line: 69, type: !6, isLocal: false, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !158, file: !159, line: 295, type: !42, isLocal: false, isDefinition: true)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{null}
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "program_name", scope: !199, file: !200, line: 31, type: !47, isLocal: false, isDefinition: true)
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !201, globals: !202, splitDebugInlining: false, nameTableKind: None)
!200 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!201 = !{!95}
!202 = !{!197}
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !205, file: !206, line: 76, type: !298, isLocal: false, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !207, retainedTypes: !227, globals: !228, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!207 = !{!208, !222, !11}
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !209, line: 42, baseType: !6, size: 32, elements: !210)
!209 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221}
!211 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!212 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!213 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!214 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!215 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!216 = !DIEnumerator(name: "c_quoting_style", value: 5)
!217 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!218 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!219 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!220 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!221 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !209, line: 254, baseType: !6, size: 32, elements: !223)
!223 = !{!224, !225, !226}
!224 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!225 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!226 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!227 = !{!42, !43, !44}
!228 = !{!203, !229, !235, !247, !249, !254, !287, !294, !296}
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !205, file: !206, line: 92, type: !231, isLocal: false, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 320, elements: !233)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!233 = !{!234}
!234 = !DISubrange(count: 10)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !205, file: !206, line: 1040, type: !237, isLocal: false, isDefinition: true)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !206, line: 56, size: 448, elements: !238)
!238 = !{!239, !240, !241, !245, !246}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !237, file: !206, line: 59, baseType: !208, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !237, file: !206, line: 62, baseType: !42, size: 32, offset: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !237, file: !206, line: 66, baseType: !242, size: 256, offset: 64)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 8)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !237, file: !206, line: 69, baseType: !47, size: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !237, file: !206, line: 72, baseType: !47, size: 64, offset: 384)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !205, file: !206, line: 107, type: !237, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "slot0", scope: !205, file: !206, line: 831, type: !251, isLocal: true, isDefinition: true)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2048, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 256)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "quote", scope: !256, file: !206, line: 228, type: !284, isLocal: true, isDefinition: true)
!256 = distinct !DISubprogram(name: "gettext_quote", scope: !206, file: !206, line: 197, type: !257, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !259)
!257 = !DISubroutineType(types: !258)
!258 = !{!47, !47, !208}
!259 = !{!260, !261, !262, !263, !268}
!260 = !DILocalVariable(name: "msgid", arg: 1, scope: !256, file: !206, line: 197, type: !47)
!261 = !DILocalVariable(name: "s", arg: 2, scope: !256, file: !206, line: 197, type: !208)
!262 = !DILocalVariable(name: "translation", scope: !256, file: !206, line: 199, type: !47)
!263 = !DILocalVariable(name: "w", scope: !256, file: !206, line: 229, type: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !265, line: 37, baseType: !266)
!265 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !54, line: 57, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !54, line: 42, baseType: !6)
!268 = !DILocalVariable(name: "mbs", scope: !256, file: !206, line: 230, type: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !270, line: 6, baseType: !271)
!270 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !272, line: 21, baseType: !273)
!272 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 13, size: 64, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !273, file: !272, line: 15, baseType: !42, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !273, file: !272, line: 20, baseType: !277, size: 32, offset: 32)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !273, file: !272, line: 16, size: 32, elements: !278)
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !277, file: !272, line: 18, baseType: !6, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !277, file: !272, line: 19, baseType: !281, size: 32)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 32, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 4)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !285)
!285 = !{!286, !283}
!286 = !DISubrange(count: 2)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(name: "slotvec", scope: !205, file: !206, line: 834, type: !289, isLocal: true, isDefinition: true)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !206, line: 823, size: 128, elements: !291)
!291 = !{!292, !293}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !290, file: !206, line: 825, baseType: !44, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !290, file: !206, line: 826, baseType: !95, size: 64, offset: 64)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "nslots", scope: !205, file: !206, line: 832, type: !42, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "slotvec0", scope: !205, file: !206, line: 833, type: !290, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 704, elements: !300)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!300 = !{!301}
!301 = !DISubrange(count: 11)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !304, file: !305, line: 26, type: !307, isLocal: false, isDefinition: true)
!304 = distinct !DICompileUnit(language: DW_LANG_C99, file: !305, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !306, splitDebugInlining: false, nameTableKind: None)
!305 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!306 = !{!302}
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 376, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 47)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(name: "exit_failure", scope: !312, file: !313, line: 24, type: !315, isLocal: false, isDefinition: true)
!312 = distinct !DICompileUnit(language: DW_LANG_C99, file: !313, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !314, splitDebugInlining: false, nameTableKind: None)
!313 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!314 = !{!310}
!315 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "internal_state", scope: !318, file: !319, line: 97, type: !322, isLocal: true, isDefinition: true)
!318 = distinct !DICompileUnit(language: DW_LANG_C99, file: !319, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !320, globals: !321, splitDebugInlining: false, nameTableKind: None)
!319 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!320 = !{!135, !44, !50}
!321 = !{!316}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !270, line: 6, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !272, line: 21, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 13, size: 64, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !324, file: !272, line: 15, baseType: !42, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !324, file: !272, line: 20, baseType: !328, size: 32, offset: 32)
!328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !272, line: 16, size: 32, elements: !329)
!329 = !{!330, !331}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !328, file: !272, line: 18, baseType: !6, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !328, file: !272, line: 19, baseType: !281, size: 32)
!332 = distinct !DICompileUnit(language: DW_LANG_C99, file: !333, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!333 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!334 = distinct !DICompileUnit(language: DW_LANG_C99, file: !335, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !336, splitDebugInlining: false, nameTableKind: None)
!335 = !DIFile(filename: "lib/umaxtostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa759af6e92fed26f32f683da6c23a8")
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !338, line: 102, baseType: !339)
!338 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !54, line: 73, baseType: !46)
!340 = distinct !DICompileUnit(language: DW_LANG_C99, file: !341, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!341 = !DIFile(filename: "lib/strintcmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cbb3801b0b03f23f2fd643484b645368")
!342 = distinct !DICompileUnit(language: DW_LANG_C99, file: !343, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !344, retainedTypes: !348, splitDebugInlining: false, nameTableKind: None)
!343 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!344 = !{!345}
!345 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !343, line: 40, baseType: !6, size: 32, elements: !346)
!346 = !{!347}
!347 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!348 = !{!135}
!349 = distinct !DICompileUnit(language: DW_LANG_C99, file: !350, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !351, retainedTypes: !382, splitDebugInlining: false, nameTableKind: None)
!350 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!351 = !{!352, !364}
!352 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !353, file: !350, line: 188, baseType: !6, size: 32, elements: !362)
!353 = distinct !DISubprogram(name: "x2nrealloc", scope: !350, file: !350, line: 176, type: !354, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !357)
!354 = !DISubroutineType(types: !355)
!355 = !{!135, !135, !356, !44}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!357 = !{!358, !359, !360, !361}
!358 = !DILocalVariable(name: "p", arg: 1, scope: !353, file: !350, line: 176, type: !135)
!359 = !DILocalVariable(name: "pn", arg: 2, scope: !353, file: !350, line: 176, type: !356)
!360 = !DILocalVariable(name: "s", arg: 3, scope: !353, file: !350, line: 176, type: !44)
!361 = !DILocalVariable(name: "n", scope: !353, file: !350, line: 178, type: !44)
!362 = !{!363}
!363 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!364 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !365, file: !350, line: 228, baseType: !6, size: 32, elements: !362)
!365 = distinct !DISubprogram(name: "xpalloc", scope: !350, file: !350, line: 223, type: !366, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !372)
!366 = !DISubroutineType(types: !367)
!367 = !{!135, !135, !368, !369, !371, !369}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !370, line: 130, baseType: !371)
!370 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !45, line: 35, baseType: !55)
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381}
!373 = !DILocalVariable(name: "pa", arg: 1, scope: !365, file: !350, line: 223, type: !135)
!374 = !DILocalVariable(name: "pn", arg: 2, scope: !365, file: !350, line: 223, type: !368)
!375 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !365, file: !350, line: 223, type: !369)
!376 = !DILocalVariable(name: "n_max", arg: 4, scope: !365, file: !350, line: 223, type: !371)
!377 = !DILocalVariable(name: "s", arg: 5, scope: !365, file: !350, line: 223, type: !369)
!378 = !DILocalVariable(name: "n0", scope: !365, file: !350, line: 230, type: !369)
!379 = !DILocalVariable(name: "n", scope: !365, file: !350, line: 237, type: !369)
!380 = !DILocalVariable(name: "nbytes", scope: !365, file: !350, line: 248, type: !369)
!381 = !DILocalVariable(name: "adjusted_nbytes", scope: !365, file: !350, line: 252, type: !369)
!382 = !{!95, !135, !74, !55, !46}
!383 = distinct !DICompileUnit(language: DW_LANG_C99, file: !384, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!384 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!385 = distinct !DICompileUnit(language: DW_LANG_C99, file: !386, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!386 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!387 = distinct !DICompileUnit(language: DW_LANG_C99, file: !388, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!388 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!389 = distinct !DICompileUnit(language: DW_LANG_C99, file: !390, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !348, splitDebugInlining: false, nameTableKind: None)
!390 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!391 = distinct !DICompileUnit(language: DW_LANG_C99, file: !392, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !348, splitDebugInlining: false, nameTableKind: None)
!392 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!393 = distinct !DICompileUnit(language: DW_LANG_C99, file: !394, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !395, splitDebugInlining: false, nameTableKind: None)
!394 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!395 = !{!74, !46, !135}
!396 = distinct !DICompileUnit(language: DW_LANG_C99, file: !397, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!397 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!398 = distinct !DICompileUnit(language: DW_LANG_C99, file: !399, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!399 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!400 = distinct !DICompileUnit(language: DW_LANG_C99, file: !401, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !348, splitDebugInlining: false, nameTableKind: None)
!401 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!402 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!403 = !{i32 7, !"Dwarf Version", i32 5}
!404 = !{i32 2, !"Debug Info Version", i32 3}
!405 = !{i32 1, !"wchar_size", i32 4}
!406 = !{i32 1, !"branch-target-enforcement", i32 0}
!407 = !{i32 1, !"sign-return-address", i32 0}
!408 = !{i32 1, !"sign-return-address-all", i32 0}
!409 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!410 = !{i32 7, !"PIC Level", i32 2}
!411 = !{i32 7, !"PIE Level", i32 2}
!412 = !{i32 7, !"uwtable", i32 1}
!413 = !{i32 7, !"frame-pointer", i32 1}
!414 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 661, type: !415, scopeLine: 662, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !417)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !42}
!417 = !{!418}
!418 = !DILocalVariable(name: "status", arg: 1, scope: !414, file: !3, line: 661, type: !42)
!419 = !DILocation(line: 0, scope: !414)
!420 = !DILocation(line: 663, column: 14, scope: !421)
!421 = distinct !DILexicalBlock(scope: !414, file: !3, line: 663, column: 7)
!422 = !DILocation(line: 663, column: 7, scope: !414)
!423 = !DILocation(line: 664, column: 5, scope: !424)
!424 = distinct !DILexicalBlock(scope: !421, file: !3, line: 664, column: 5)
!425 = !{!426, !426, i64 0}
!426 = !{!"any pointer", !427, i64 0}
!427 = !{!"omnipotent char", !428, i64 0}
!428 = !{!"Simple C/C++ TBAA"}
!429 = !DILocation(line: 667, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !421, file: !3, line: 666, column: 5)
!431 = !DILocation(line: 674, column: 7, scope: !430)
!432 = !DILocation(line: 678, column: 7, scope: !430)
!433 = !DILocation(line: 679, column: 7, scope: !430)
!434 = !DILocation(line: 680, column: 7, scope: !430)
!435 = !DILocation(line: 685, column: 7, scope: !430)
!436 = !DILocation(line: 692, column: 7, scope: !430)
!437 = !DILocation(line: 695, column: 7, scope: !430)
!438 = !DILocation(line: 698, column: 7, scope: !430)
!439 = !DILocation(line: 701, column: 7, scope: !430)
!440 = !DILocation(line: 704, column: 7, scope: !430)
!441 = !DILocation(line: 710, column: 7, scope: !430)
!442 = !DILocation(line: 713, column: 7, scope: !430)
!443 = !DILocation(line: 716, column: 7, scope: !430)
!444 = !DILocation(line: 719, column: 7, scope: !430)
!445 = !DILocation(line: 722, column: 7, scope: !430)
!446 = !DILocation(line: 725, column: 7, scope: !430)
!447 = !DILocation(line: 728, column: 7, scope: !430)
!448 = !DILocation(line: 731, column: 7, scope: !430)
!449 = !DILocation(line: 734, column: 7, scope: !430)
!450 = !DILocation(line: 737, column: 7, scope: !430)
!451 = !DILocation(line: 740, column: 7, scope: !430)
!452 = !DILocation(line: 743, column: 7, scope: !430)
!453 = !DILocation(line: 746, column: 7, scope: !430)
!454 = !DILocation(line: 749, column: 7, scope: !430)
!455 = !DILocation(line: 752, column: 7, scope: !430)
!456 = !DILocation(line: 755, column: 7, scope: !430)
!457 = !DILocation(line: 758, column: 7, scope: !430)
!458 = !DILocation(line: 761, column: 7, scope: !430)
!459 = !DILocation(line: 764, column: 7, scope: !430)
!460 = !DILocation(line: 767, column: 7, scope: !430)
!461 = !DILocation(line: 770, column: 7, scope: !430)
!462 = !DILocation(line: 773, column: 7, scope: !430)
!463 = !DILocation(line: 776, column: 7, scope: !430)
!464 = !DILocation(line: 779, column: 7, scope: !430)
!465 = !DILocation(line: 782, column: 7, scope: !430)
!466 = !DILocation(line: 785, column: 7, scope: !430)
!467 = !DILocation(line: 788, column: 7, scope: !430)
!468 = !DILocation(line: 791, column: 7, scope: !430)
!469 = !DILocation(line: 794, column: 7, scope: !430)
!470 = !DILocation(line: 797, column: 7, scope: !430)
!471 = !DILocation(line: 800, column: 7, scope: !430)
!472 = !DILocation(line: 803, column: 7, scope: !430)
!473 = !DILocation(line: 806, column: 7, scope: !430)
!474 = !DILocation(line: 812, column: 7, scope: !430)
!475 = !DILocation(line: 817, column: 7, scope: !430)
!476 = !DILocation(line: 821, column: 7, scope: !430)
!477 = !DILocalVariable(name: "program", arg: 1, scope: !478, file: !64, line: 836, type: !47)
!478 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !64, file: !64, line: 836, type: !479, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !481)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !47}
!481 = !{!477, !482, !491, !492, !494, !495}
!482 = !DILocalVariable(name: "infomap", scope: !478, file: !64, line: 838, type: !483)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 896, elements: !489)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !478, file: !64, line: 838, size: 128, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !485, file: !64, line: 838, baseType: !47, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !485, file: !64, line: 838, baseType: !47, size: 64, offset: 64)
!489 = !{!490}
!490 = !DISubrange(count: 7)
!491 = !DILocalVariable(name: "node", scope: !478, file: !64, line: 848, type: !47)
!492 = !DILocalVariable(name: "map_prog", scope: !478, file: !64, line: 849, type: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!494 = !DILocalVariable(name: "lc_messages", scope: !478, file: !64, line: 861, type: !47)
!495 = !DILocalVariable(name: "url_program", scope: !478, file: !64, line: 874, type: !47)
!496 = !DILocation(line: 0, scope: !478, inlinedAt: !497)
!497 = distinct !DILocation(line: 822, column: 7, scope: !430)
!498 = !DILocation(line: 838, column: 3, scope: !478, inlinedAt: !497)
!499 = !DILocation(line: 838, column: 67, scope: !478, inlinedAt: !497)
!500 = !DILocation(line: 849, column: 36, scope: !478, inlinedAt: !497)
!501 = !DILocation(line: 851, column: 3, scope: !478, inlinedAt: !497)
!502 = !DILocalVariable(name: "__s1", arg: 1, scope: !503, file: !504, line: 1359, type: !47)
!503 = distinct !DISubprogram(name: "streq", scope: !504, file: !504, line: 1359, type: !505, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !507)
!504 = !DIFile(filename: "./lib/string.h", directory: "/src")
!505 = !DISubroutineType(types: !506)
!506 = !{!74, !47, !47}
!507 = !{!502, !508}
!508 = !DILocalVariable(name: "__s2", arg: 2, scope: !503, file: !504, line: 1359, type: !47)
!509 = !DILocation(line: 0, scope: !503, inlinedAt: !510)
!510 = distinct !DILocation(line: 851, column: 33, scope: !478, inlinedAt: !497)
!511 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !510)
!512 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !510)
!513 = !DILocation(line: 852, column: 13, scope: !478, inlinedAt: !497)
!514 = !DILocation(line: 851, column: 20, scope: !478, inlinedAt: !497)
!515 = !{!516, !426, i64 0}
!516 = !{!"infomap", !426, i64 0, !426, i64 8}
!517 = !DILocation(line: 851, column: 10, scope: !478, inlinedAt: !497)
!518 = !DILocation(line: 851, column: 28, scope: !478, inlinedAt: !497)
!519 = distinct !{!519, !501, !513, !520}
!520 = !{!"llvm.loop.mustprogress"}
!521 = !DILocation(line: 854, column: 17, scope: !522, inlinedAt: !497)
!522 = distinct !DILexicalBlock(scope: !478, file: !64, line: 854, column: 7)
!523 = !{!516, !426, i64 8}
!524 = !DILocation(line: 854, column: 7, scope: !522, inlinedAt: !497)
!525 = !DILocation(line: 854, column: 7, scope: !478, inlinedAt: !497)
!526 = !DILocation(line: 857, column: 3, scope: !478, inlinedAt: !497)
!527 = !DILocation(line: 861, column: 29, scope: !478, inlinedAt: !497)
!528 = !DILocation(line: 862, column: 7, scope: !529, inlinedAt: !497)
!529 = distinct !DILexicalBlock(scope: !478, file: !64, line: 862, column: 7)
!530 = !DILocation(line: 862, column: 19, scope: !529, inlinedAt: !497)
!531 = !DILocation(line: 862, column: 22, scope: !529, inlinedAt: !497)
!532 = !DILocation(line: 862, column: 7, scope: !478, inlinedAt: !497)
!533 = !DILocation(line: 868, column: 7, scope: !534, inlinedAt: !497)
!534 = distinct !DILexicalBlock(scope: !529, file: !64, line: 863, column: 5)
!535 = !DILocation(line: 870, column: 5, scope: !534, inlinedAt: !497)
!536 = !DILocation(line: 0, scope: !503, inlinedAt: !537)
!537 = distinct !DILocation(line: 874, column: 29, scope: !478, inlinedAt: !497)
!538 = !DILocation(line: 875, column: 3, scope: !478, inlinedAt: !497)
!539 = !DILocation(line: 877, column: 3, scope: !478, inlinedAt: !497)
!540 = !DILocation(line: 879, column: 1, scope: !478, inlinedAt: !497)
!541 = !DILocation(line: 824, column: 3, scope: !414)
!542 = !DISubprogram(name: "dcgettext", scope: !543, file: !543, line: 51, type: !544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!543 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!544 = !DISubroutineType(types: !545)
!545 = !{!95, !47, !47, !42}
!546 = !{}
!547 = !DISubprogram(name: "fputs_unlocked", scope: !168, file: !168, line: 691, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!548 = !DISubroutineType(types: !549)
!549 = !{!42, !550, !551}
!550 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!551 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!552 = !DILocation(line: 0, scope: !63)
!553 = !DILocation(line: 581, column: 7, scope: !72)
!554 = !{!555, !555, i64 0}
!555 = !{!"int", !427, i64 0}
!556 = !DILocation(line: 581, column: 19, scope: !72)
!557 = !DILocation(line: 581, column: 7, scope: !63)
!558 = !DILocation(line: 585, column: 26, scope: !71)
!559 = !DILocation(line: 0, scope: !71)
!560 = !DILocation(line: 586, column: 23, scope: !71)
!561 = !DILocation(line: 586, column: 28, scope: !71)
!562 = !DILocation(line: 586, column: 32, scope: !71)
!563 = !{!427, !427, i64 0}
!564 = !DILocation(line: 586, column: 38, scope: !71)
!565 = !DILocation(line: 0, scope: !503, inlinedAt: !566)
!566 = distinct !DILocation(line: 586, column: 41, scope: !71)
!567 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !566)
!568 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !566)
!569 = !DILocation(line: 586, column: 19, scope: !71)
!570 = !DILocation(line: 587, column: 5, scope: !71)
!571 = !DILocation(line: 588, column: 7, scope: !572)
!572 = distinct !DILexicalBlock(scope: !63, file: !64, line: 588, column: 7)
!573 = !DILocation(line: 588, column: 7, scope: !63)
!574 = !DILocation(line: 590, column: 7, scope: !575)
!575 = distinct !DILexicalBlock(scope: !572, file: !64, line: 589, column: 5)
!576 = !DILocation(line: 591, column: 7, scope: !575)
!577 = !DILocation(line: 595, column: 37, scope: !63)
!578 = !DILocation(line: 595, column: 35, scope: !63)
!579 = !DILocation(line: 596, column: 29, scope: !63)
!580 = !DILocation(line: 597, column: 8, scope: !80)
!581 = !DILocation(line: 597, column: 7, scope: !63)
!582 = !DILocation(line: 604, column: 24, scope: !79)
!583 = !DILocation(line: 604, column: 12, scope: !80)
!584 = !DILocation(line: 0, scope: !78)
!585 = !DILocation(line: 610, column: 16, scope: !78)
!586 = !DILocation(line: 610, column: 7, scope: !78)
!587 = !DILocation(line: 611, column: 21, scope: !78)
!588 = !{!589, !589, i64 0}
!589 = !{!"short", !427, i64 0}
!590 = !DILocation(line: 611, column: 19, scope: !78)
!591 = !DILocation(line: 611, column: 16, scope: !78)
!592 = !DILocation(line: 610, column: 30, scope: !78)
!593 = distinct !{!593, !586, !587, !520}
!594 = !DILocation(line: 612, column: 18, scope: !595)
!595 = distinct !DILexicalBlock(scope: !78, file: !64, line: 612, column: 11)
!596 = !DILocation(line: 612, column: 11, scope: !78)
!597 = !DILocation(line: 620, column: 23, scope: !63)
!598 = !DILocation(line: 625, column: 39, scope: !63)
!599 = !DILocation(line: 626, column: 3, scope: !63)
!600 = !DILocation(line: 626, column: 10, scope: !63)
!601 = !DILocation(line: 626, column: 21, scope: !63)
!602 = !DILocation(line: 628, column: 44, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !64, line: 628, column: 11)
!604 = distinct !DILexicalBlock(scope: !63, file: !64, line: 627, column: 5)
!605 = !DILocation(line: 628, column: 32, scope: !603)
!606 = !DILocation(line: 628, column: 49, scope: !603)
!607 = !DILocation(line: 628, column: 11, scope: !604)
!608 = !DILocation(line: 630, column: 11, scope: !609)
!609 = distinct !DILexicalBlock(scope: !604, file: !64, line: 630, column: 11)
!610 = !DILocation(line: 630, column: 11, scope: !604)
!611 = !DILocation(line: 632, column: 26, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !64, line: 632, column: 15)
!613 = distinct !DILexicalBlock(scope: !609, file: !64, line: 631, column: 9)
!614 = !DILocation(line: 632, column: 34, scope: !612)
!615 = !DILocation(line: 632, column: 37, scope: !612)
!616 = !DILocation(line: 632, column: 15, scope: !613)
!617 = !DILocation(line: 636, column: 29, scope: !618)
!618 = distinct !DILexicalBlock(scope: !613, file: !64, line: 636, column: 15)
!619 = !DILocation(line: 640, column: 16, scope: !604)
!620 = distinct !{!620, !599, !621, !520}
!621 = !DILocation(line: 641, column: 5, scope: !63)
!622 = !DILocation(line: 644, column: 3, scope: !63)
!623 = !DILocation(line: 0, scope: !503, inlinedAt: !624)
!624 = distinct !DILocation(line: 648, column: 31, scope: !63)
!625 = !DILocation(line: 0, scope: !503, inlinedAt: !626)
!626 = distinct !DILocation(line: 649, column: 31, scope: !63)
!627 = !DILocation(line: 0, scope: !503, inlinedAt: !628)
!628 = distinct !DILocation(line: 650, column: 31, scope: !63)
!629 = !DILocation(line: 0, scope: !503, inlinedAt: !630)
!630 = distinct !DILocation(line: 651, column: 31, scope: !63)
!631 = !DILocation(line: 0, scope: !503, inlinedAt: !632)
!632 = distinct !DILocation(line: 652, column: 31, scope: !63)
!633 = !DILocation(line: 0, scope: !503, inlinedAt: !634)
!634 = distinct !DILocation(line: 653, column: 31, scope: !63)
!635 = !DILocation(line: 0, scope: !503, inlinedAt: !636)
!636 = distinct !DILocation(line: 654, column: 31, scope: !63)
!637 = !DILocation(line: 0, scope: !503, inlinedAt: !638)
!638 = distinct !DILocation(line: 655, column: 31, scope: !63)
!639 = !DILocation(line: 0, scope: !503, inlinedAt: !640)
!640 = distinct !DILocation(line: 656, column: 31, scope: !63)
!641 = !DILocation(line: 0, scope: !503, inlinedAt: !642)
!642 = distinct !DILocation(line: 657, column: 31, scope: !63)
!643 = !DILocation(line: 663, column: 7, scope: !644)
!644 = distinct !DILexicalBlock(scope: !63, file: !64, line: 663, column: 7)
!645 = !DILocation(line: 664, column: 7, scope: !644)
!646 = !DILocation(line: 664, column: 10, scope: !644)
!647 = !DILocation(line: 663, column: 7, scope: !63)
!648 = !DILocation(line: 669, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !644, file: !64, line: 665, column: 5)
!650 = !DILocation(line: 671, column: 5, scope: !649)
!651 = !DILocation(line: 676, column: 7, scope: !652)
!652 = distinct !DILexicalBlock(scope: !644, file: !64, line: 673, column: 5)
!653 = !DILocation(line: 679, column: 3, scope: !63)
!654 = !DILocation(line: 683, column: 3, scope: !63)
!655 = !DILocation(line: 686, column: 3, scope: !63)
!656 = !DILocation(line: 688, column: 3, scope: !63)
!657 = !DILocation(line: 691, column: 3, scope: !63)
!658 = !DILocation(line: 695, column: 3, scope: !63)
!659 = !DILocation(line: 696, column: 1, scope: !63)
!660 = !DISubprogram(name: "setlocale", scope: !661, file: !661, line: 122, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!661 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!662 = !DISubroutineType(types: !663)
!663 = !{!95, !42, !47}
!664 = !DISubprogram(name: "getenv", scope: !665, file: !665, line: 641, type: !666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!665 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!666 = !DISubroutineType(types: !667)
!667 = !{!95, !47}
!668 = !DISubprogram(name: "fwrite_unlocked", scope: !168, file: !168, line: 704, type: !669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!669 = !DISubroutineType(types: !670)
!670 = !{!44, !671, !44, !44, !551}
!671 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!674 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 843, type: !675, scopeLine: 844, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !677)
!675 = !DISubroutineType(types: !676)
!676 = !{!42, !42, !148}
!677 = !{!678, !679, !680}
!678 = !DILocalVariable(name: "margc", arg: 1, scope: !674, file: !3, line: 843, type: !42)
!679 = !DILocalVariable(name: "margv", arg: 2, scope: !674, file: !3, line: 843, type: !148)
!680 = !DILocalVariable(name: "value", scope: !674, file: !3, line: 845, type: !74)
!681 = !DILocation(line: 0, scope: !674)
!682 = !DILocation(line: 856, column: 21, scope: !674)
!683 = !DILocation(line: 856, column: 3, scope: !674)
!684 = !DILocation(line: 857, column: 3, scope: !674)
!685 = !DILocation(line: 858, column: 3, scope: !674)
!686 = !DILocation(line: 859, column: 3, scope: !674)
!687 = !DILocalVariable(name: "status", arg: 1, scope: !688, file: !64, line: 102, type: !42)
!688 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !64, file: !64, line: 102, type: !415, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !689)
!689 = !{!687}
!690 = !DILocation(line: 0, scope: !688, inlinedAt: !691)
!691 = distinct !DILocation(line: 861, column: 3, scope: !674)
!692 = !DILocation(line: 105, column: 18, scope: !693, inlinedAt: !691)
!693 = distinct !DILexicalBlock(scope: !688, file: !64, line: 104, column: 7)
!694 = !DILocation(line: 862, column: 3, scope: !674)
!695 = !DILocation(line: 865, column: 8, scope: !674)
!696 = !DILocation(line: 893, column: 8, scope: !674)
!697 = !DILocation(line: 894, column: 7, scope: !674)
!698 = !DILocation(line: 896, column: 11, scope: !699)
!699 = distinct !DILexicalBlock(scope: !674, file: !3, line: 896, column: 7)
!700 = !DILocation(line: 896, column: 7, scope: !674)
!701 = !DILocation(line: 899, column: 27, scope: !674)
!702 = !DILocation(line: 899, column: 11, scope: !674)
!703 = !DILocation(line: 901, column: 7, scope: !704)
!704 = distinct !DILexicalBlock(scope: !674, file: !3, line: 901, column: 7)
!705 = !DILocation(line: 901, column: 14, scope: !704)
!706 = !DILocation(line: 901, column: 11, scope: !704)
!707 = !DILocation(line: 901, column: 7, scope: !674)
!708 = !DILocation(line: 902, column: 24, scope: !704)
!709 = !DILocation(line: 902, column: 55, scope: !704)
!710 = !DILocation(line: 902, column: 60, scope: !704)
!711 = !DILocation(line: 902, column: 48, scope: !704)
!712 = !DILocation(line: 902, column: 5, scope: !704)
!713 = !DILocation(line: 904, column: 3, scope: !674)
!714 = !DILocation(line: 905, column: 1, scope: !674)
!715 = !DISubprogram(name: "bindtextdomain", scope: !543, file: !543, line: 86, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!716 = !DISubroutineType(types: !717)
!717 = !{!95, !47, !47}
!718 = !DISubprogram(name: "textdomain", scope: !543, file: !543, line: 82, type: !666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!719 = !DISubprogram(name: "atexit", scope: !665, file: !665, line: 602, type: !720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!720 = !DISubroutineType(types: !721)
!721 = !{!42, !194}
!722 = distinct !DISubprogram(name: "posixtest", scope: !3, file: !3, line: 616, type: !723, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{!74, !42}
!725 = !{!726, !727}
!726 = !DILocalVariable(name: "nargs", arg: 1, scope: !722, file: !3, line: 616, type: !42)
!727 = !DILocalVariable(name: "value", scope: !722, file: !3, line: 618, type: !74)
!728 = !DILocation(line: 0, scope: !722)
!729 = !DILocation(line: 620, column: 3, scope: !722)
!730 = !DILocation(line: 562, column: 10, scope: !731, inlinedAt: !734)
!731 = distinct !DISubprogram(name: "one_argument", scope: !3, file: !3, line: 560, type: !732, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !546)
!732 = !DISubroutineType(types: !733)
!733 = !{!74}
!734 = distinct !DILocation(line: 623, column: 17, scope: !735)
!735 = distinct !DILexicalBlock(scope: !722, file: !3, line: 621, column: 5)
!736 = !DILocation(line: 562, column: 18, scope: !731, inlinedAt: !734)
!737 = !DILocation(line: 562, column: 25, scope: !731, inlinedAt: !734)
!738 = !DILocation(line: 624, column: 9, scope: !735)
!739 = !DILocation(line: 570, column: 14, scope: !740, inlinedAt: !744)
!740 = distinct !DILexicalBlock(scope: !741, file: !3, line: 570, column: 7)
!741 = distinct !DISubprogram(name: "two_arguments", scope: !3, file: !3, line: 566, type: !732, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !742)
!742 = !{!743}
!743 = !DILocalVariable(name: "value", scope: !741, file: !3, line: 568, type: !74)
!744 = distinct !DILocation(line: 627, column: 17, scope: !735)
!745 = !DILocation(line: 570, column: 19, scope: !740, inlinedAt: !744)
!746 = !DILocation(line: 0, scope: !503, inlinedAt: !747)
!747 = distinct !DILocation(line: 570, column: 7, scope: !740, inlinedAt: !744)
!748 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !747)
!749 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !747)
!750 = !DILocation(line: 570, column: 7, scope: !741, inlinedAt: !744)
!751 = !DILocalVariable(name: "f", arg: 1, scope: !752, file: !3, line: 110, type: !74)
!752 = distinct !DISubprogram(name: "advance", scope: !3, file: !3, line: 110, type: !753, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !755)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !74}
!755 = !{!751}
!756 = !DILocation(line: 0, scope: !752, inlinedAt: !757)
!757 = distinct !DILocation(line: 572, column: 7, scope: !758, inlinedAt: !744)
!758 = distinct !DILexicalBlock(scope: !740, file: !3, line: 571, column: 5)
!759 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !757)
!760 = !DILocation(line: 562, column: 18, scope: !731, inlinedAt: !761)
!761 = distinct !DILocation(line: 573, column: 17, scope: !758, inlinedAt: !744)
!762 = !DILocation(line: 562, column: 10, scope: !731, inlinedAt: !761)
!763 = !DILocation(line: 562, column: 25, scope: !731, inlinedAt: !761)
!764 = !DILocation(line: 0, scope: !741, inlinedAt: !744)
!765 = !DILocation(line: 574, column: 5, scope: !758, inlinedAt: !744)
!766 = !DILocation(line: 575, column: 12, scope: !767, inlinedAt: !744)
!767 = distinct !DILexicalBlock(scope: !740, file: !3, line: 575, column: 12)
!768 = !DILocation(line: 575, column: 25, scope: !767, inlinedAt: !744)
!769 = !DILocation(line: 576, column: 12, scope: !767, inlinedAt: !744)
!770 = !DILocation(line: 576, column: 15, scope: !767, inlinedAt: !744)
!771 = !DILocation(line: 576, column: 28, scope: !767, inlinedAt: !744)
!772 = !DILocation(line: 577, column: 12, scope: !767, inlinedAt: !744)
!773 = !DILocation(line: 577, column: 15, scope: !767, inlinedAt: !744)
!774 = !DILocation(line: 577, column: 28, scope: !767, inlinedAt: !744)
!775 = !DILocation(line: 575, column: 12, scope: !740, inlinedAt: !744)
!776 = !DILocation(line: 579, column: 15, scope: !777, inlinedAt: !744)
!777 = distinct !DILexicalBlock(scope: !767, file: !3, line: 578, column: 5)
!778 = !DILocation(line: 582, column: 5, scope: !767, inlinedAt: !744)
!779 = !DILocation(line: 631, column: 17, scope: !735)
!780 = !DILocation(line: 632, column: 9, scope: !735)
!781 = !DILocation(line: 635, column: 20, scope: !782)
!782 = distinct !DILexicalBlock(scope: !735, file: !3, line: 635, column: 13)
!783 = !DILocation(line: 635, column: 25, scope: !782)
!784 = !DILocation(line: 0, scope: !503, inlinedAt: !785)
!785 = distinct !DILocation(line: 635, column: 13, scope: !782)
!786 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !785)
!787 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !785)
!788 = !DILocation(line: 635, column: 13, scope: !735)
!789 = !DILocation(line: 0, scope: !752, inlinedAt: !790)
!790 = distinct !DILocation(line: 637, column: 13, scope: !791)
!791 = distinct !DILexicalBlock(scope: !782, file: !3, line: 636, column: 11)
!792 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !790)
!793 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !790)
!794 = distinct !DILexicalBlock(scope: !752, file: !3, line: 114, column: 7)
!795 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !790)
!796 = !DILocation(line: 638, column: 22, scope: !791)
!797 = !DILocation(line: 638, column: 21, scope: !791)
!798 = !DILocation(line: 639, column: 13, scope: !791)
!799 = !DILocation(line: 0, scope: !503, inlinedAt: !800)
!800 = distinct !DILocation(line: 641, column: 13, scope: !801)
!801 = distinct !DILexicalBlock(scope: !735, file: !3, line: 641, column: 13)
!802 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !800)
!803 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !800)
!804 = !DILocation(line: 641, column: 36, scope: !801)
!805 = !DILocation(line: 641, column: 55, scope: !801)
!806 = !DILocation(line: 641, column: 46, scope: !801)
!807 = !DILocation(line: 0, scope: !503, inlinedAt: !808)
!808 = distinct !DILocation(line: 641, column: 39, scope: !801)
!809 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !808)
!810 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !808)
!811 = !DILocation(line: 641, column: 13, scope: !735)
!812 = !DILocation(line: 0, scope: !752, inlinedAt: !813)
!813 = distinct !DILocation(line: 643, column: 13, scope: !814)
!814 = distinct !DILexicalBlock(scope: !801, file: !3, line: 642, column: 11)
!815 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !813)
!816 = !DILocation(line: 570, column: 14, scope: !740, inlinedAt: !817)
!817 = distinct !DILocation(line: 644, column: 21, scope: !814)
!818 = !DILocation(line: 0, scope: !503, inlinedAt: !819)
!819 = distinct !DILocation(line: 570, column: 7, scope: !740, inlinedAt: !817)
!820 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !819)
!821 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !819)
!822 = !DILocation(line: 570, column: 7, scope: !741, inlinedAt: !817)
!823 = !DILocation(line: 0, scope: !752, inlinedAt: !824)
!824 = distinct !DILocation(line: 572, column: 7, scope: !758, inlinedAt: !817)
!825 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !824)
!826 = !DILocation(line: 562, column: 10, scope: !731, inlinedAt: !827)
!827 = distinct !DILocation(line: 573, column: 17, scope: !758, inlinedAt: !817)
!828 = !DILocation(line: 562, column: 25, scope: !731, inlinedAt: !827)
!829 = !DILocation(line: 0, scope: !741, inlinedAt: !817)
!830 = !DILocation(line: 574, column: 5, scope: !758, inlinedAt: !817)
!831 = !DILocation(line: 575, column: 12, scope: !767, inlinedAt: !817)
!832 = !DILocation(line: 575, column: 25, scope: !767, inlinedAt: !817)
!833 = !DILocation(line: 576, column: 12, scope: !767, inlinedAt: !817)
!834 = !DILocation(line: 576, column: 15, scope: !767, inlinedAt: !817)
!835 = !DILocation(line: 576, column: 28, scope: !767, inlinedAt: !817)
!836 = !DILocation(line: 577, column: 12, scope: !767, inlinedAt: !817)
!837 = !DILocation(line: 577, column: 15, scope: !767, inlinedAt: !817)
!838 = !DILocation(line: 577, column: 28, scope: !767, inlinedAt: !817)
!839 = !DILocation(line: 575, column: 12, scope: !740, inlinedAt: !817)
!840 = !DILocation(line: 579, column: 15, scope: !777, inlinedAt: !817)
!841 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !842)
!842 = distinct !DILocation(line: 645, column: 13, scope: !814)
!843 = !DILocation(line: 582, column: 5, scope: !767, inlinedAt: !817)
!844 = !DILocation(line: 0, scope: !752, inlinedAt: !842)
!845 = !DILocation(line: 646, column: 13, scope: !814)
!846 = !DILocation(line: 651, column: 9, scope: !847)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 651, column: 9)
!848 = distinct !DILexicalBlock(scope: !735, file: !3, line: 651, column: 9)
!849 = !DILocation(line: 651, column: 9, scope: !848)
!850 = !DILocation(line: 553, column: 7, scope: !851, inlinedAt: !853)
!851 = distinct !DILexicalBlock(scope: !852, file: !3, line: 553, column: 7)
!852 = distinct !DISubprogram(name: "expr", scope: !3, file: !3, line: 551, type: !732, scopeLine: 552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !546)
!853 = distinct !DILocation(line: 652, column: 17, scope: !735)
!854 = !DILocation(line: 553, column: 14, scope: !851, inlinedAt: !853)
!855 = !DILocation(line: 553, column: 11, scope: !851, inlinedAt: !853)
!856 = !DILocation(line: 553, column: 7, scope: !852, inlinedAt: !853)
!857 = !DILocation(line: 554, column: 5, scope: !851, inlinedAt: !853)
!858 = !DILocation(line: 556, column: 10, scope: !852, inlinedAt: !853)
!859 = !DILocation(line: 653, column: 5, scope: !735)
!860 = !DILocation(line: 655, column: 3, scope: !722)
!861 = distinct !DISubprogram(name: "test_syntax_error", scope: !3, file: !3, line: 97, type: !862, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !864)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !47, null}
!864 = !{!865, !866}
!865 = !DILocalVariable(name: "format", arg: 1, scope: !861, file: !3, line: 97, type: !47)
!866 = !DILocalVariable(name: "ap", scope: !861, file: !3, line: 99, type: !867)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !168, line: 52, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !170, line: 32, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !870, baseType: !871)
!870 = !DIFile(filename: "src/test.c", directory: "/src")
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !174, size: 256, elements: !872)
!872 = !{!873, !874, !875, !876, !877}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !871, file: !870, line: 99, baseType: !135, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !871, file: !870, line: 99, baseType: !135, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !871, file: !870, line: 99, baseType: !135, size: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !871, file: !870, line: 99, baseType: !42, size: 32, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !871, file: !870, line: 99, baseType: !42, size: 32, offset: 224)
!878 = !DILocation(line: 0, scope: !861)
!879 = !DILocation(line: 99, column: 3, scope: !861)
!880 = !DILocation(line: 99, column: 11, scope: !861)
!881 = !DILocation(line: 100, column: 3, scope: !861)
!882 = !DILocation(line: 101, column: 3, scope: !861)
!883 = !{i64 0, i64 8, !425, i64 8, i64 8, !425, i64 16, i64 8, !425, i64 24, i64 4, !554, i64 28, i64 4, !554}
!884 = !DILocation(line: 102, column: 3, scope: !861)
!885 = distinct !DISubprogram(name: "unary_operator", scope: !3, file: !3, line: 366, type: !732, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !886)
!886 = !{!887, !923, !926, !927, !931, !932, !935, !936, !938}
!887 = !DILocalVariable(name: "stat_buf", scope: !885, file: !3, line: 368, type: !888)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !889, line: 44, size: 1024, elements: !890)
!889 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!890 = !{!891, !893, !895, !897, !899, !901, !903, !904, !905, !906, !908, !909, !911, !918, !919, !920}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !888, file: !889, line: 46, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !54, line: 145, baseType: !46)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !888, file: !889, line: 47, baseType: !894, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !54, line: 148, baseType: !46)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !888, file: !889, line: 48, baseType: !896, size: 32, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !54, line: 150, baseType: !6)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !888, file: !889, line: 49, baseType: !898, size: 32, offset: 160)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !54, line: 151, baseType: !6)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !888, file: !889, line: 50, baseType: !900, size: 32, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !54, line: 146, baseType: !6)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !888, file: !889, line: 51, baseType: !902, size: 32, offset: 224)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !54, line: 147, baseType: !6)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !888, file: !889, line: 52, baseType: !892, size: 64, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !888, file: !889, line: 53, baseType: !892, size: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !888, file: !889, line: 54, baseType: !114, size: 64, offset: 384)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !888, file: !889, line: 55, baseType: !907, size: 32, offset: 448)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !54, line: 175, baseType: !42)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !888, file: !889, line: 56, baseType: !42, size: 32, offset: 480)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !888, file: !889, line: 57, baseType: !910, size: 64, offset: 512)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !54, line: 180, baseType: !55)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !888, file: !889, line: 65, baseType: !912, size: 128, offset: 576)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !913, line: 11, size: 128, elements: !914)
!913 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !912, file: !913, line: 16, baseType: !53, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !912, file: !913, line: 21, baseType: !917, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !54, line: 197, baseType: !55)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !888, file: !889, line: 66, baseType: !912, size: 128, offset: 704)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !888, file: !889, line: 67, baseType: !912, size: 128, offset: 832)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !888, file: !889, line: 79, baseType: !921, size: 64, offset: 960)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !922)
!922 = !{!286}
!923 = !DILocalVariable(name: "atime", scope: !924, file: !3, line: 401, type: !912)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 397, column: 7)
!925 = distinct !DILexicalBlock(scope: !885, file: !3, line: 371, column: 5)
!926 = !DILocalVariable(name: "mtime", scope: !924, file: !3, line: 402, type: !912)
!927 = !DILocalVariable(name: "euid", scope: !928, file: !3, line: 412, type: !929)
!928 = distinct !DILexicalBlock(scope: !925, file: !3, line: 407, column: 7)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !930, line: 79, baseType: !900)
!930 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!931 = !DILocalVariable(name: "NO_UID", scope: !928, file: !3, line: 413, type: !929)
!932 = !DILocalVariable(name: "egid", scope: !933, file: !3, line: 423, type: !934)
!933 = distinct !DILexicalBlock(scope: !925, file: !3, line: 418, column: 7)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !930, line: 64, baseType: !902)
!935 = !DILocalVariable(name: "NO_GID", scope: !933, file: !3, line: 424, type: !934)
!936 = !DILocalVariable(name: "fd", scope: !937, file: !3, line: 489, type: !55)
!937 = distinct !DILexicalBlock(scope: !925, file: !3, line: 488, column: 7)
!938 = !DILocalVariable(name: "arg", scope: !937, file: !3, line: 490, type: !47)
!939 = !DILocation(line: 368, column: 3, scope: !885)
!940 = !DILocation(line: 368, column: 15, scope: !885)
!941 = !DILocation(line: 370, column: 11, scope: !885)
!942 = !DILocation(line: 370, column: 16, scope: !885)
!943 = !DILocation(line: 370, column: 3, scope: !885)
!944 = !DILocation(line: 373, column: 26, scope: !925)
!945 = !DILocation(line: 373, column: 67, scope: !925)
!946 = !DILocation(line: 373, column: 72, scope: !925)
!947 = !DILocation(line: 373, column: 60, scope: !925)
!948 = !DILocation(line: 373, column: 7, scope: !925)
!949 = !DILocation(line: 0, scope: !752, inlinedAt: !950)
!950 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !952)
!951 = distinct !DISubprogram(name: "unary_advance", scope: !3, file: !3, line: 119, type: !195, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !546)
!952 = distinct !DILocation(line: 381, column: 7, scope: !925)
!953 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !950)
!954 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !950)
!955 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !950)
!956 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !952)
!957 = !DILocation(line: 382, column: 20, scope: !925)
!958 = !DILocation(line: 382, column: 14, scope: !925)
!959 = !DILocation(line: 382, column: 46, scope: !925)
!960 = !DILocation(line: 382, column: 7, scope: !925)
!961 = !DILocation(line: 0, scope: !752, inlinedAt: !962)
!962 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !963)
!963 = distinct !DILocation(line: 385, column: 7, scope: !925)
!964 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !962)
!965 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !962)
!966 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !962)
!967 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !963)
!968 = !DILocation(line: 386, column: 26, scope: !925)
!969 = !DILocation(line: 386, column: 14, scope: !925)
!970 = !DILocation(line: 386, column: 47, scope: !925)
!971 = !DILocation(line: 386, column: 7, scope: !925)
!972 = !DILocation(line: 0, scope: !752, inlinedAt: !973)
!973 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !974)
!974 = distinct !DILocation(line: 389, column: 7, scope: !925)
!975 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !973)
!976 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !973)
!977 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !973)
!978 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !974)
!979 = !DILocation(line: 390, column: 26, scope: !925)
!980 = !DILocation(line: 390, column: 14, scope: !925)
!981 = !DILocation(line: 390, column: 47, scope: !925)
!982 = !DILocation(line: 390, column: 7, scope: !925)
!983 = !DILocation(line: 0, scope: !752, inlinedAt: !984)
!984 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !985)
!985 = distinct !DILocation(line: 393, column: 7, scope: !925)
!986 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !984)
!987 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !984)
!988 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !984)
!989 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !985)
!990 = !DILocation(line: 394, column: 26, scope: !925)
!991 = !DILocation(line: 394, column: 14, scope: !925)
!992 = !DILocation(line: 394, column: 47, scope: !925)
!993 = !DILocation(line: 394, column: 7, scope: !925)
!994 = !DILocation(line: 0, scope: !752, inlinedAt: !995)
!995 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !996)
!996 = distinct !DILocation(line: 398, column: 9, scope: !924)
!997 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !995)
!998 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !995)
!999 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !995)
!1000 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !996)
!1001 = !DILocation(line: 399, column: 19, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !924, file: !3, line: 399, column: 13)
!1003 = !DILocation(line: 399, column: 13, scope: !1002)
!1004 = !DILocation(line: 399, column: 45, scope: !1002)
!1005 = !DILocation(line: 399, column: 13, scope: !924)
!1006 = !DILocalVariable(name: "st", arg: 1, scope: !1007, file: !1008, line: 147, type: !1011)
!1007 = distinct !DISubprogram(name: "get_stat_atime", scope: !1008, file: !1008, line: 147, type: !1009, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1013)
!1008 = !DIFile(filename: "./lib/stat-time.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f4edb1fd4cb81bf2ea0eec563958d759")
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!912, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !888)
!1013 = !{!1006}
!1014 = !DILocation(line: 0, scope: !1007, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 401, column: 33, scope: !924)
!1016 = !DILocation(line: 150, column: 10, scope: !1007, inlinedAt: !1015)
!1017 = !DILocation(line: 0, scope: !924)
!1018 = !DILocalVariable(name: "st", arg: 1, scope: !1019, file: !1008, line: 169, type: !1011)
!1019 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1008, file: !1008, line: 169, type: !1009, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1020)
!1020 = !{!1018}
!1021 = !DILocation(line: 0, scope: !1019, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 402, column: 33, scope: !924)
!1023 = !DILocation(line: 172, column: 10, scope: !1019, inlinedAt: !1022)
!1024 = !DILocalVariable(name: "a", arg: 1, scope: !1025, file: !1026, line: 64, type: !912)
!1025 = distinct !DISubprogram(name: "timespec_cmp", scope: !1026, file: !1026, line: 64, type: !1027, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1029)
!1026 = !DIFile(filename: "./lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!42, !912, !912}
!1029 = !{!1024, !1030}
!1030 = !DILocalVariable(name: "b", arg: 2, scope: !1025, file: !1026, line: 64, type: !912)
!1031 = !DILocation(line: 0, scope: !1025, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 403, column: 17, scope: !924)
!1033 = !DILocation(line: 66, column: 45, scope: !1025, inlinedAt: !1032)
!1034 = !DILocation(line: 66, column: 12, scope: !1025, inlinedAt: !1032)
!1035 = !DILocation(line: 66, column: 43, scope: !1025, inlinedAt: !1032)
!1036 = !DILocation(line: 403, column: 45, scope: !924)
!1037 = !DILocation(line: 0, scope: !752, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 408, column: 9, scope: !928)
!1040 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1038)
!1041 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1038)
!1042 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1038)
!1043 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !1039)
!1044 = !DILocation(line: 409, column: 19, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !928, file: !3, line: 409, column: 13)
!1046 = !DILocation(line: 409, column: 13, scope: !1045)
!1047 = !DILocation(line: 409, column: 45, scope: !1045)
!1048 = !DILocation(line: 409, column: 13, scope: !928)
!1049 = !DILocation(line: 411, column: 9, scope: !928)
!1050 = !DILocation(line: 411, column: 15, scope: !928)
!1051 = !DILocation(line: 412, column: 22, scope: !928)
!1052 = !DILocation(line: 0, scope: !928)
!1053 = !DILocation(line: 414, column: 24, scope: !928)
!1054 = !DILocation(line: 414, column: 34, scope: !928)
!1055 = !DILocation(line: 414, column: 37, scope: !928)
!1056 = !DILocation(line: 414, column: 44, scope: !928)
!1057 = !DILocation(line: 414, column: 64, scope: !928)
!1058 = !{!1059, !555, i64 24}
!1059 = !{!"stat", !1060, i64 0, !1060, i64 8, !555, i64 16, !555, i64 20, !555, i64 24, !555, i64 28, !1060, i64 32, !1060, i64 40, !1060, i64 48, !555, i64 56, !555, i64 60, !1060, i64 64, !1061, i64 72, !1061, i64 88, !1061, i64 104, !427, i64 120}
!1060 = !{!"long", !427, i64 0}
!1061 = !{!"timespec", !1060, i64 0, !1060, i64 8}
!1062 = !DILocation(line: 414, column: 52, scope: !928)
!1063 = !DILocation(line: 0, scope: !752, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 419, column: 9, scope: !933)
!1066 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1064)
!1067 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1064)
!1068 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1064)
!1069 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !1065)
!1070 = !DILocation(line: 420, column: 19, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !933, file: !3, line: 420, column: 13)
!1072 = !DILocation(line: 420, column: 13, scope: !1071)
!1073 = !DILocation(line: 420, column: 45, scope: !1071)
!1074 = !DILocation(line: 420, column: 13, scope: !933)
!1075 = !DILocation(line: 422, column: 9, scope: !933)
!1076 = !DILocation(line: 422, column: 15, scope: !933)
!1077 = !DILocation(line: 423, column: 22, scope: !933)
!1078 = !DILocation(line: 0, scope: !933)
!1079 = !DILocation(line: 425, column: 24, scope: !933)
!1080 = !DILocation(line: 425, column: 34, scope: !933)
!1081 = !DILocation(line: 425, column: 37, scope: !933)
!1082 = !DILocation(line: 425, column: 44, scope: !933)
!1083 = !DILocation(line: 425, column: 64, scope: !933)
!1084 = !{!1059, !555, i64 28}
!1085 = !DILocation(line: 425, column: 52, scope: !933)
!1086 = !DILocation(line: 0, scope: !752, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 429, column: 7, scope: !925)
!1089 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1087)
!1090 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1087)
!1091 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1087)
!1092 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !1088)
!1093 = !DILocation(line: 432, column: 21, scope: !925)
!1094 = !DILocation(line: 432, column: 15, scope: !925)
!1095 = !DILocation(line: 432, column: 47, scope: !925)
!1096 = !DILocation(line: 433, column: 15, scope: !925)
!1097 = !DILocation(line: 432, column: 7, scope: !925)
!1098 = !DILocation(line: 0, scope: !752, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 436, column: 7, scope: !925)
!1101 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1099)
!1102 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1099)
!1103 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1099)
!1104 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !1100)
!1105 = !DILocation(line: 437, column: 21, scope: !925)
!1106 = !DILocation(line: 437, column: 15, scope: !925)
!1107 = !DILocation(line: 437, column: 47, scope: !925)
!1108 = !DILocation(line: 438, column: 15, scope: !925)
!1109 = !DILocation(line: 437, column: 7, scope: !925)
!1110 = !DILocation(line: 0, scope: !752, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 441, column: 7, scope: !925)
!1113 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1111)
!1114 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1111)
!1115 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1111)
!1116 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !1112)
!1117 = !DILocation(line: 442, column: 21, scope: !925)
!1118 = !DILocation(line: 442, column: 15, scope: !925)
!1119 = !DILocation(line: 442, column: 47, scope: !925)
!1120 = !DILocation(line: 443, column: 15, scope: !925)
!1121 = !DILocation(line: 442, column: 7, scope: !925)
!1122 = !DILocation(line: 0, scope: !752, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 446, column: 7, scope: !925)
!1125 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1123)
!1126 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1123)
!1127 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1123)
!1128 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !1124)
!1129 = !DILocation(line: 447, column: 21, scope: !925)
!1130 = !DILocation(line: 447, column: 15, scope: !925)
!1131 = !DILocation(line: 447, column: 47, scope: !925)
!1132 = !DILocation(line: 448, column: 15, scope: !925)
!1133 = !DILocation(line: 447, column: 7, scope: !925)
!1134 = !DILocation(line: 0, scope: !752, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 451, column: 7, scope: !925)
!1137 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1135)
!1138 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1135)
!1139 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1135)
!1140 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !1136)
!1141 = !DILocation(line: 452, column: 21, scope: !925)
!1142 = !DILocation(line: 452, column: 15, scope: !925)
!1143 = !DILocation(line: 452, column: 47, scope: !925)
!1144 = !DILocation(line: 453, column: 15, scope: !925)
!1145 = !DILocation(line: 452, column: 7, scope: !925)
!1146 = !DILocation(line: 0, scope: !752, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 456, column: 7, scope: !925)
!1149 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1147)
!1150 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1147)
!1151 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1147)
!1152 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !1148)
!1153 = !DILocation(line: 457, column: 21, scope: !925)
!1154 = !DILocation(line: 457, column: 15, scope: !925)
!1155 = !DILocation(line: 457, column: 47, scope: !925)
!1156 = !DILocation(line: 458, column: 15, scope: !925)
!1157 = !DILocation(line: 457, column: 7, scope: !925)
!1158 = !DILocation(line: 0, scope: !752, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 461, column: 7, scope: !925)
!1161 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1159)
!1162 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1159)
!1163 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1159)
!1164 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !1160)
!1165 = !DILocation(line: 462, column: 21, scope: !925)
!1166 = !DILocation(line: 462, column: 15, scope: !925)
!1167 = !DILocation(line: 462, column: 47, scope: !925)
!1168 = !DILocation(line: 463, column: 15, scope: !925)
!1169 = !DILocation(line: 462, column: 7, scope: !925)
!1170 = !DILocation(line: 0, scope: !752, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 469, column: 7, scope: !925)
!1173 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1171)
!1174 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1171)
!1175 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1171)
!1176 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !1172)
!1177 = !DILocation(line: 470, column: 25, scope: !925)
!1178 = !DILocalVariable(name: "filename", arg: 1, scope: !1179, file: !1180, line: 49, type: !47)
!1179 = distinct !DISubprogram(name: "issymlink", scope: !1180, file: !1180, line: 49, type: !1181, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1183)
!1180 = !DIFile(filename: "./lib/issymlink.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3ed5fe5c76158b7c9a68dd013fb9e151")
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!42, !47}
!1183 = !{!1178, !1184}
!1184 = !DILocalVariable(name: "linkbuf", scope: !1179, file: !1180, line: 51, type: !119)
!1185 = !DILocation(line: 0, scope: !1179, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 470, column: 14, scope: !925)
!1187 = !DILocation(line: 51, column: 3, scope: !1179, inlinedAt: !1186)
!1188 = !DILocation(line: 51, column: 8, scope: !1179, inlinedAt: !1186)
!1189 = !DILocation(line: 52, column: 7, scope: !1190, inlinedAt: !1186)
!1190 = distinct !DILexicalBlock(scope: !1179, file: !1180, line: 52, column: 7)
!1191 = !DILocation(line: 52, column: 54, scope: !1190, inlinedAt: !1186)
!1192 = !DILocation(line: 58, column: 1, scope: !1179, inlinedAt: !1186)
!1193 = !DILocation(line: 470, column: 7, scope: !925)
!1194 = !DILocation(line: 0, scope: !752, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 473, column: 7, scope: !925)
!1197 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1195)
!1198 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1195)
!1199 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1195)
!1200 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !1196)
!1201 = !DILocation(line: 474, column: 21, scope: !925)
!1202 = !DILocation(line: 474, column: 15, scope: !925)
!1203 = !DILocation(line: 474, column: 47, scope: !925)
!1204 = !DILocation(line: 475, column: 15, scope: !925)
!1205 = !DILocation(line: 474, column: 7, scope: !925)
!1206 = !DILocation(line: 0, scope: !752, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 478, column: 7, scope: !925)
!1209 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1207)
!1210 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1207)
!1211 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1207)
!1212 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !1208)
!1213 = !DILocation(line: 479, column: 21, scope: !925)
!1214 = !DILocation(line: 479, column: 15, scope: !925)
!1215 = !DILocation(line: 479, column: 47, scope: !925)
!1216 = !DILocation(line: 480, column: 15, scope: !925)
!1217 = !DILocation(line: 479, column: 7, scope: !925)
!1218 = !DILocation(line: 0, scope: !752, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 483, column: 7, scope: !925)
!1221 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1219)
!1222 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1219)
!1223 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1219)
!1224 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !1220)
!1225 = !DILocation(line: 484, column: 21, scope: !925)
!1226 = !DILocation(line: 484, column: 15, scope: !925)
!1227 = !DILocation(line: 484, column: 47, scope: !925)
!1228 = !DILocation(line: 485, column: 15, scope: !925)
!1229 = !DILocation(line: 484, column: 7, scope: !925)
!1230 = !DILocation(line: 0, scope: !752, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 491, column: 9, scope: !937)
!1233 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1231)
!1234 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1231)
!1235 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1231)
!1236 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !1232)
!1237 = !DILocation(line: 492, column: 25, scope: !937)
!1238 = !DILocation(line: 492, column: 15, scope: !937)
!1239 = !DILocation(line: 0, scope: !937)
!1240 = !DILocation(line: 493, column: 9, scope: !937)
!1241 = !DILocation(line: 493, column: 15, scope: !937)
!1242 = !DILocation(line: 494, column: 14, scope: !937)
!1243 = !DILocation(line: 495, column: 17, scope: !937)
!1244 = !DILocation(line: 495, column: 23, scope: !937)
!1245 = !DILocation(line: 495, column: 33, scope: !937)
!1246 = !DILocation(line: 495, column: 72, scope: !937)
!1247 = !DILocation(line: 495, column: 64, scope: !937)
!1248 = !DILocation(line: 495, column: 61, scope: !937)
!1249 = !DILocation(line: 0, scope: !752, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 499, column: 7, scope: !925)
!1252 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1250)
!1253 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1250)
!1254 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1250)
!1255 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !1251)
!1256 = !DILocation(line: 500, column: 14, scope: !925)
!1257 = !DILocation(line: 500, column: 31, scope: !925)
!1258 = !DILocation(line: 500, column: 7, scope: !925)
!1259 = !DILocation(line: 0, scope: !752, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 121, column: 3, scope: !951, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 503, column: 7, scope: !925)
!1262 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1260)
!1263 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1260)
!1264 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1260)
!1265 = !DILocation(line: 122, column: 3, scope: !951, inlinedAt: !1261)
!1266 = !DILocation(line: 504, column: 14, scope: !925)
!1267 = !DILocation(line: 504, column: 31, scope: !925)
!1268 = !DILocation(line: 504, column: 7, scope: !925)
!1269 = !DILocation(line: 0, scope: !925)
!1270 = !DILocation(line: 506, column: 1, scope: !885)
!1271 = distinct !DISubprogram(name: "beyond", scope: !3, file: !3, line: 130, type: !195, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !546)
!1272 = !DILocation(line: 132, column: 22, scope: !1271)
!1273 = !DILocation(line: 132, column: 61, scope: !1271)
!1274 = !DILocation(line: 132, column: 66, scope: !1271)
!1275 = !DILocation(line: 132, column: 71, scope: !1271)
!1276 = !DILocation(line: 132, column: 54, scope: !1271)
!1277 = !DILocation(line: 132, column: 3, scope: !1271)
!1278 = distinct !DISubprogram(name: "three_arguments", scope: !3, file: !3, line: 587, type: !732, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1279)
!1279 = !{!1280, !1281}
!1280 = !DILocalVariable(name: "value", scope: !1278, file: !3, line: 589, type: !74)
!1281 = !DILocalVariable(name: "bop", scope: !1278, file: !3, line: 590, type: !42)
!1282 = !DILocation(line: 590, column: 20, scope: !1278)
!1283 = !DILocation(line: 590, column: 25, scope: !1278)
!1284 = !DILocation(line: 590, column: 29, scope: !1278)
!1285 = !DILocation(line: 590, column: 13, scope: !1278)
!1286 = !DILocation(line: 0, scope: !1278)
!1287 = !DILocation(line: 592, column: 9, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 592, column: 7)
!1289 = !DILocation(line: 592, column: 7, scope: !1278)
!1290 = !DILocation(line: 593, column: 13, scope: !1288)
!1291 = !DILocation(line: 593, column: 5, scope: !1288)
!1292 = !DILocation(line: 594, column: 19, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 594, column: 12)
!1294 = !DILocation(line: 0, scope: !503, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 594, column: 12, scope: !1293)
!1296 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1295)
!1297 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1295)
!1298 = !DILocation(line: 594, column: 12, scope: !1288)
!1299 = !DILocation(line: 0, scope: !752, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 596, column: 7, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 595, column: 5)
!1302 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1300)
!1303 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1300)
!1304 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1300)
!1305 = !DILocation(line: 0, scope: !503, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 570, column: 7, scope: !740, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 597, column: 16, scope: !1301)
!1308 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1306)
!1309 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1306)
!1310 = !DILocation(line: 570, column: 7, scope: !741, inlinedAt: !1307)
!1311 = !DILocation(line: 0, scope: !752, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 572, column: 7, scope: !758, inlinedAt: !1307)
!1313 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1312)
!1314 = !DILocation(line: 562, column: 18, scope: !731, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 573, column: 17, scope: !758, inlinedAt: !1307)
!1316 = !DILocation(line: 562, column: 10, scope: !731, inlinedAt: !1315)
!1317 = !DILocation(line: 562, column: 25, scope: !731, inlinedAt: !1315)
!1318 = !DILocation(line: 0, scope: !741, inlinedAt: !1307)
!1319 = !DILocation(line: 574, column: 5, scope: !758, inlinedAt: !1307)
!1320 = !DILocation(line: 575, column: 12, scope: !767, inlinedAt: !1307)
!1321 = !DILocation(line: 575, column: 25, scope: !767, inlinedAt: !1307)
!1322 = !DILocation(line: 576, column: 12, scope: !767, inlinedAt: !1307)
!1323 = !DILocation(line: 576, column: 15, scope: !767, inlinedAt: !1307)
!1324 = !DILocation(line: 576, column: 28, scope: !767, inlinedAt: !1307)
!1325 = !DILocation(line: 577, column: 12, scope: !767, inlinedAt: !1307)
!1326 = !DILocation(line: 577, column: 15, scope: !767, inlinedAt: !1307)
!1327 = !DILocation(line: 577, column: 28, scope: !767, inlinedAt: !1307)
!1328 = !DILocation(line: 575, column: 12, scope: !740, inlinedAt: !1307)
!1329 = !DILocation(line: 579, column: 15, scope: !777, inlinedAt: !1307)
!1330 = !DILocation(line: 582, column: 5, scope: !767, inlinedAt: !1307)
!1331 = !DILocation(line: 597, column: 15, scope: !1301)
!1332 = !DILocation(line: 598, column: 5, scope: !1301)
!1333 = !DILocation(line: 0, scope: !503, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 599, column: 12, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 599, column: 12)
!1336 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1334)
!1337 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1334)
!1338 = !DILocation(line: 599, column: 35, scope: !1335)
!1339 = !DILocation(line: 599, column: 54, scope: !1335)
!1340 = !DILocation(line: 599, column: 45, scope: !1335)
!1341 = !DILocation(line: 0, scope: !503, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 599, column: 38, scope: !1335)
!1343 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1342)
!1344 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1342)
!1345 = !DILocation(line: 599, column: 12, scope: !1293)
!1346 = !DILocation(line: 0, scope: !752, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 601, column: 7, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 600, column: 5)
!1349 = !DILocation(line: 562, column: 10, scope: !731, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 602, column: 15, scope: !1348)
!1351 = !DILocation(line: 562, column: 25, scope: !731, inlinedAt: !1350)
!1352 = !DILocation(line: 0, scope: !752, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 603, column: 7, scope: !1348)
!1354 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1353)
!1355 = !DILocation(line: 604, column: 5, scope: !1348)
!1356 = !DILocation(line: 0, scope: !503, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 605, column: 12, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 605, column: 12)
!1359 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1357)
!1360 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1357)
!1361 = !DILocation(line: 605, column: 40, scope: !1358)
!1362 = !DILocation(line: 0, scope: !503, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 605, column: 43, scope: !1358)
!1364 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1363)
!1365 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1363)
!1366 = !DILocation(line: 606, column: 12, scope: !1358)
!1367 = !DILocation(line: 0, scope: !503, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 606, column: 15, scope: !1358)
!1369 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1368)
!1370 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1368)
!1371 = !DILocation(line: 606, column: 42, scope: !1358)
!1372 = !DILocation(line: 0, scope: !503, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 606, column: 45, scope: !1358)
!1374 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1373)
!1375 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1373)
!1376 = !DILocation(line: 605, column: 12, scope: !1335)
!1377 = !DILocation(line: 553, column: 14, scope: !851, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 607, column: 13, scope: !1358)
!1379 = !DILocation(line: 553, column: 11, scope: !851, inlinedAt: !1378)
!1380 = !DILocation(line: 553, column: 7, scope: !852, inlinedAt: !1378)
!1381 = !DILocation(line: 554, column: 5, scope: !851, inlinedAt: !1378)
!1382 = !DILocation(line: 556, column: 10, scope: !852, inlinedAt: !1378)
!1383 = !DILocation(line: 609, column: 24, scope: !1358)
!1384 = !DILocation(line: 610, column: 31, scope: !1358)
!1385 = !DILocation(line: 610, column: 36, scope: !1358)
!1386 = !DILocation(line: 610, column: 40, scope: !1358)
!1387 = !DILocation(line: 610, column: 24, scope: !1358)
!1388 = !DILocation(line: 609, column: 5, scope: !1358)
!1389 = !DILocation(line: 611, column: 3, scope: !1278)
!1390 = distinct !DISubprogram(name: "or", scope: !3, file: !3, line: 533, type: !732, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1391)
!1391 = !{!1392}
!1392 = !DILocalVariable(name: "value", scope: !1390, file: !3, line: 535, type: !74)
!1393 = !DILocation(line: 0, scope: !1390)
!1394 = !DILocalVariable(name: "value", scope: !1395, file: !3, line: 516, type: !74)
!1395 = distinct !DISubprogram(name: "and", scope: !3, file: !3, line: 514, type: !732, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1396)
!1396 = !{!1394}
!1397 = !DILocation(line: 0, scope: !1395, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 539, column: 16, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 538, column: 5)
!1400 = !DILocalVariable(name: "negated", scope: !1401, file: !3, line: 227, type: !74)
!1401 = distinct !DISubprogram(name: "term", scope: !3, file: !3, line: 224, type: !732, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1402)
!1402 = !{!1403, !1400, !1404, !1405}
!1403 = !DILocalVariable(name: "value", scope: !1401, file: !3, line: 226, type: !74)
!1404 = !DILocalVariable(name: "bop", scope: !1401, file: !3, line: 228, type: !42)
!1405 = !DILocalVariable(name: "nargs", scope: !1406, file: !3, line: 243, type: !42)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 242, column: 5)
!1407 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 241, column: 7)
!1408 = !DILocation(line: 0, scope: !1401, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 520, column: 16, scope: !1410, inlinedAt: !1398)
!1410 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 519, column: 5)
!1411 = !DILocation(line: 231, column: 14, scope: !1401, inlinedAt: !1409)
!1412 = !DILocation(line: 231, column: 21, scope: !1401, inlinedAt: !1409)
!1413 = !DILocation(line: 537, column: 3, scope: !1390)
!1414 = !DILocation(line: 231, column: 24, scope: !1401, inlinedAt: !1409)
!1415 = !DILocation(line: 231, column: 37, scope: !1401, inlinedAt: !1409)
!1416 = !DILocation(line: 231, column: 44, scope: !1401, inlinedAt: !1409)
!1417 = !DILocation(line: 231, column: 47, scope: !1401, inlinedAt: !1409)
!1418 = !DILocation(line: 231, column: 60, scope: !1401, inlinedAt: !1409)
!1419 = !DILocation(line: 231, column: 3, scope: !1401, inlinedAt: !1409)
!1420 = !DILocation(line: 0, scope: !752, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 233, column: 7, scope: !1422, inlinedAt: !1409)
!1422 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 232, column: 5)
!1423 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1421)
!1424 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1421)
!1425 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1421)
!1426 = !DILocation(line: 234, column: 17, scope: !1422, inlinedAt: !1409)
!1427 = distinct !{!1427, !1419, !1428, !520}
!1428 = !DILocation(line: 235, column: 5, scope: !1401, inlinedAt: !1409)
!1429 = !DILocation(line: 238, column: 5, scope: !1430, inlinedAt: !1409)
!1430 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 237, column: 7)
!1431 = !DILocation(line: 241, column: 7, scope: !1407, inlinedAt: !1409)
!1432 = !DILocation(line: 241, column: 20, scope: !1407, inlinedAt: !1409)
!1433 = !DILocation(line: 241, column: 27, scope: !1407, inlinedAt: !1409)
!1434 = !DILocation(line: 241, column: 30, scope: !1407, inlinedAt: !1409)
!1435 = !DILocation(line: 241, column: 43, scope: !1407, inlinedAt: !1409)
!1436 = !DILocation(line: 241, column: 7, scope: !1401, inlinedAt: !1409)
!1437 = !DILocation(line: 0, scope: !752, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 245, column: 7, scope: !1406, inlinedAt: !1409)
!1439 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1438)
!1440 = !DILocation(line: 114, column: 9, scope: !794, inlinedAt: !1438)
!1441 = !DILocation(line: 0, scope: !1406, inlinedAt: !1409)
!1442 = !DILocation(line: 248, column: 16, scope: !1443, inlinedAt: !1409)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 247, column: 7)
!1444 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 247, column: 7)
!1445 = !DILocation(line: 248, column: 24, scope: !1443, inlinedAt: !1409)
!1446 = !DILocation(line: 248, column: 31, scope: !1443, inlinedAt: !1409)
!1447 = !DILocation(line: 247, column: 7, scope: !1444, inlinedAt: !1409)
!1448 = !DILocation(line: 248, column: 43, scope: !1443, inlinedAt: !1409)
!1449 = !DILocation(line: 0, scope: !503, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 248, column: 36, scope: !1443, inlinedAt: !1409)
!1451 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1450)
!1452 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1450)
!1453 = !DILocation(line: 115, column: 5, scope: !794, inlinedAt: !1438)
!1454 = distinct !{!1454, !1447, !1455, !520}
!1455 = !DILocation(line: 254, column: 11, scope: !1444, inlinedAt: !1409)
!1456 = !DILocation(line: 0, scope: !1444, inlinedAt: !1409)
!1457 = !DILocation(line: 256, column: 15, scope: !1406, inlinedAt: !1409)
!1458 = !DILocation(line: 257, column: 12, scope: !1459, inlinedAt: !1409)
!1459 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 257, column: 11)
!1460 = !DILocation(line: 257, column: 17, scope: !1459, inlinedAt: !1409)
!1461 = !DILocation(line: 257, column: 11, scope: !1406, inlinedAt: !1409)
!1462 = !DILocation(line: 258, column: 28, scope: !1459, inlinedAt: !1409)
!1463 = !DILocation(line: 258, column: 46, scope: !1459, inlinedAt: !1409)
!1464 = !DILocation(line: 258, column: 9, scope: !1459, inlinedAt: !1409)
!1465 = !DILocation(line: 260, column: 13, scope: !1466, inlinedAt: !1409)
!1466 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 260, column: 13)
!1467 = !DILocation(line: 260, column: 26, scope: !1466, inlinedAt: !1409)
!1468 = !DILocation(line: 260, column: 33, scope: !1466, inlinedAt: !1409)
!1469 = !DILocation(line: 260, column: 36, scope: !1466, inlinedAt: !1409)
!1470 = !DILocation(line: 260, column: 13, scope: !1459, inlinedAt: !1409)
!1471 = !DILocation(line: 261, column: 30, scope: !1466, inlinedAt: !1409)
!1472 = !DILocation(line: 262, column: 30, scope: !1466, inlinedAt: !1409)
!1473 = !DILocation(line: 262, column: 60, scope: !1466, inlinedAt: !1409)
!1474 = !DILocation(line: 262, column: 65, scope: !1466, inlinedAt: !1409)
!1475 = !DILocation(line: 262, column: 48, scope: !1466, inlinedAt: !1409)
!1476 = !DILocation(line: 261, column: 11, scope: !1466, inlinedAt: !1409)
!1477 = !DILocation(line: 0, scope: !752, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 263, column: 7, scope: !1406, inlinedAt: !1409)
!1479 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1478)
!1480 = !DILocation(line: 264, column: 5, scope: !1406, inlinedAt: !1409)
!1481 = !DILocation(line: 267, column: 22, scope: !1482, inlinedAt: !1409)
!1482 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 267, column: 12)
!1483 = !DILocation(line: 267, column: 14, scope: !1482, inlinedAt: !1409)
!1484 = !DILocation(line: 267, column: 28, scope: !1482, inlinedAt: !1409)
!1485 = !DILocation(line: 0, scope: !503, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 267, column: 31, scope: !1482, inlinedAt: !1409)
!1487 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1486)
!1488 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1486)
!1489 = !DILocation(line: 268, column: 12, scope: !1482, inlinedAt: !1409)
!1490 = !DILocation(line: 268, column: 34, scope: !1482, inlinedAt: !1409)
!1491 = !DILocation(line: 268, column: 27, scope: !1482, inlinedAt: !1409)
!1492 = !DILocation(line: 268, column: 17, scope: !1482, inlinedAt: !1409)
!1493 = !DILocation(line: 267, column: 12, scope: !1407, inlinedAt: !1409)
!1494 = !DILocation(line: 269, column: 13, scope: !1482, inlinedAt: !1409)
!1495 = !DILocation(line: 269, column: 5, scope: !1482, inlinedAt: !1409)
!1496 = !DILocation(line: 270, column: 14, scope: !1497, inlinedAt: !1409)
!1497 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 270, column: 12)
!1498 = !DILocation(line: 271, column: 12, scope: !1497, inlinedAt: !1409)
!1499 = !DILocation(line: 271, column: 34, scope: !1497, inlinedAt: !1409)
!1500 = !DILocation(line: 271, column: 27, scope: !1497, inlinedAt: !1409)
!1501 = !DILocation(line: 271, column: 17, scope: !1497, inlinedAt: !1409)
!1502 = !DILocation(line: 270, column: 12, scope: !1482, inlinedAt: !1409)
!1503 = !DILocation(line: 272, column: 13, scope: !1497, inlinedAt: !1409)
!1504 = !DILocation(line: 272, column: 5, scope: !1497, inlinedAt: !1409)
!1505 = !DILocation(line: 275, column: 25, scope: !1506, inlinedAt: !1409)
!1506 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 275, column: 12)
!1507 = !DILocation(line: 275, column: 32, scope: !1506, inlinedAt: !1409)
!1508 = !DILocation(line: 275, column: 35, scope: !1506, inlinedAt: !1409)
!1509 = !DILocation(line: 275, column: 48, scope: !1506, inlinedAt: !1409)
!1510 = !DILocation(line: 275, column: 51, scope: !1506, inlinedAt: !1409)
!1511 = !DILocation(line: 275, column: 64, scope: !1506, inlinedAt: !1409)
!1512 = !DILocation(line: 275, column: 12, scope: !1497, inlinedAt: !1409)
!1513 = !DILocation(line: 276, column: 13, scope: !1506, inlinedAt: !1409)
!1514 = !DILocation(line: 276, column: 5, scope: !1506, inlinedAt: !1409)
!1515 = !DILocation(line: 279, column: 29, scope: !1516, inlinedAt: !1409)
!1516 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 278, column: 5)
!1517 = !DILocation(line: 0, scope: !752, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 280, column: 7, scope: !1516, inlinedAt: !1409)
!1519 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1518)
!1520 = !DILocation(line: 283, column: 18, scope: !1401, inlinedAt: !1409)
!1521 = !DILocation(line: 520, column: 13, scope: !1410, inlinedAt: !1398)
!1522 = !DILocation(line: 521, column: 14, scope: !1523, inlinedAt: !1398)
!1523 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 521, column: 11)
!1524 = !DILocation(line: 521, column: 20, scope: !1523, inlinedAt: !1398)
!1525 = !DILocation(line: 521, column: 18, scope: !1523, inlinedAt: !1398)
!1526 = !DILocation(line: 521, column: 25, scope: !1523, inlinedAt: !1398)
!1527 = !DILocation(line: 521, column: 35, scope: !1523, inlinedAt: !1398)
!1528 = !DILocation(line: 0, scope: !503, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 521, column: 28, scope: !1523, inlinedAt: !1398)
!1530 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1529)
!1531 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1529)
!1532 = !DILocation(line: 521, column: 11, scope: !1410, inlinedAt: !1398)
!1533 = !DILocation(line: 0, scope: !752, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 523, column: 7, scope: !1410, inlinedAt: !1398)
!1535 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1534)
!1536 = distinct !{!1536, !1537, !1538}
!1537 = !DILocation(line: 518, column: 3, scope: !1395, inlinedAt: !1398)
!1538 = !DILocation(line: 524, column: 5, scope: !1395, inlinedAt: !1398)
!1539 = !DILocation(line: 539, column: 13, scope: !1399)
!1540 = !DILocation(line: 0, scope: !503, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 540, column: 28, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 540, column: 11)
!1543 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1541)
!1544 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1541)
!1545 = !DILocation(line: 540, column: 11, scope: !1399)
!1546 = !DILocation(line: 541, column: 9, scope: !1542)
!1547 = !DILocation(line: 0, scope: !752, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 542, column: 7, scope: !1399)
!1549 = !DILocation(line: 112, column: 3, scope: !752, inlinedAt: !1548)
!1550 = distinct !{!1550, !1413, !1551}
!1551 = !DILocation(line: 543, column: 5, scope: !1390)
!1552 = distinct !DISubprogram(name: "binop", scope: !3, file: !3, line: 186, type: !1181, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1553)
!1553 = !{!1554}
!1554 = !DILocalVariable(name: "s", arg: 1, scope: !1552, file: !3, line: 186, type: !47)
!1555 = !DILocation(line: 0, scope: !1552)
!1556 = !DILocation(line: 0, scope: !503, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 188, column: 13, scope: !1552)
!1558 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1557)
!1559 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1557)
!1560 = !DILocation(line: 188, column: 13, scope: !1552)
!1561 = !DILocation(line: 0, scope: !503, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 189, column: 13, scope: !1552)
!1563 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1562)
!1564 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1562)
!1565 = !DILocation(line: 189, column: 13, scope: !1552)
!1566 = !DILocation(line: 0, scope: !503, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 190, column: 13, scope: !1552)
!1568 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1567)
!1569 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1567)
!1570 = !DILocation(line: 190, column: 13, scope: !1552)
!1571 = !DILocation(line: 0, scope: !503, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 191, column: 13, scope: !1552)
!1573 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1572)
!1574 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1572)
!1575 = !DILocation(line: 191, column: 13, scope: !1552)
!1576 = !DILocation(line: 0, scope: !503, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 192, column: 13, scope: !1552)
!1578 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1577)
!1579 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1577)
!1580 = !DILocation(line: 192, column: 13, scope: !1552)
!1581 = !DILocation(line: 0, scope: !503, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 193, column: 13, scope: !1552)
!1583 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1582)
!1584 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1582)
!1585 = !DILocation(line: 193, column: 13, scope: !1552)
!1586 = !DILocation(line: 0, scope: !503, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 194, column: 13, scope: !1552)
!1588 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1587)
!1589 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1587)
!1590 = !DILocation(line: 194, column: 13, scope: !1552)
!1591 = !DILocation(line: 0, scope: !503, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 195, column: 13, scope: !1552)
!1593 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1592)
!1594 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1592)
!1595 = !DILocation(line: 195, column: 13, scope: !1552)
!1596 = !DILocation(line: 0, scope: !503, inlinedAt: !1597)
!1597 = distinct !DILocation(line: 196, column: 13, scope: !1552)
!1598 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1597)
!1599 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1597)
!1600 = !DILocation(line: 196, column: 13, scope: !1552)
!1601 = !DILocation(line: 0, scope: !503, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 197, column: 13, scope: !1552)
!1603 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1602)
!1604 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1602)
!1605 = !DILocation(line: 197, column: 13, scope: !1552)
!1606 = !DILocation(line: 0, scope: !503, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 198, column: 13, scope: !1552)
!1608 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1607)
!1609 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1607)
!1610 = !DILocation(line: 198, column: 13, scope: !1552)
!1611 = !DILocation(line: 0, scope: !503, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 199, column: 13, scope: !1552)
!1613 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1612)
!1614 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1612)
!1615 = !DILocation(line: 199, column: 13, scope: !1552)
!1616 = !DILocation(line: 0, scope: !503, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 200, column: 13, scope: !1552)
!1618 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1617)
!1619 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1617)
!1620 = !DILocation(line: 200, column: 13, scope: !1552)
!1621 = !DILocation(line: 0, scope: !503, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 201, column: 13, scope: !1552)
!1623 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1622)
!1624 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1622)
!1625 = !DILocation(line: 201, column: 13, scope: !1552)
!1626 = !DILocation(line: 188, column: 3, scope: !1552)
!1627 = distinct !DISubprogram(name: "binary_operator", scope: !3, file: !3, line: 287, type: !1628, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1630)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!74, !74, !26}
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1641, !1642, !1643, !1644, !1645, !1647, !1651}
!1631 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !1627, file: !3, line: 287, type: !74)
!1632 = !DILocalVariable(name: "bop", arg: 2, scope: !1627, file: !3, line: 287, type: !26)
!1633 = !DILocalVariable(name: "op", scope: !1627, file: !3, line: 289, type: !42)
!1634 = !DILocalVariable(name: "r_is_l", scope: !1627, file: !3, line: 296, type: !74)
!1635 = !DILocalVariable(name: "lbuf", scope: !1636, file: !3, line: 307, type: !1638)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 306, column: 7)
!1637 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 303, column: 5)
!1638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 168, elements: !1639)
!1639 = !{!1640}
!1640 = !DISubrange(count: 21)
!1641 = !DILocalVariable(name: "rbuf", scope: !1636, file: !3, line: 308, type: !1638)
!1642 = !DILocalVariable(name: "l", scope: !1636, file: !3, line: 309, type: !47)
!1643 = !DILocalVariable(name: "r", scope: !1636, file: !3, line: 312, type: !47)
!1644 = !DILocalVariable(name: "cmp", scope: !1636, file: !3, line: 315, type: !42)
!1645 = !DILocalVariable(name: "cmp", scope: !1646, file: !3, line: 333, type: !42)
!1646 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 329, column: 7)
!1647 = !DILocalVariable(name: "st", scope: !1648, file: !3, line: 343, type: !1650)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 342, column: 9)
!1649 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 339, column: 11)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !888, size: 2048, elements: !922)
!1651 = !DILocalVariable(name: "cmp", scope: !1652, file: !3, line: 356, type: !42)
!1652 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 355, column: 7)
!1653 = !DILocation(line: 0, scope: !1627)
!1654 = !DILocation(line: 291, column: 7, scope: !1627)
!1655 = !DILocation(line: 293, column: 12, scope: !1627)
!1656 = !DILocation(line: 296, column: 22, scope: !1627)
!1657 = !DILocation(line: 296, column: 27, scope: !1627)
!1658 = !DILocation(line: 296, column: 20, scope: !1627)
!1659 = !DILocation(line: 296, column: 31, scope: !1627)
!1660 = !DILocation(line: 296, column: 41, scope: !1627)
!1661 = !DILocation(line: 296, column: 49, scope: !1627)
!1662 = !DILocation(line: 0, scope: !503, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 296, column: 34, scope: !1627)
!1664 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1663)
!1665 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1663)
!1666 = !DILocation(line: 297, column: 7, scope: !1627)
!1667 = !DILocation(line: 300, column: 7, scope: !1627)
!1668 = !DILocation(line: 302, column: 3, scope: !1627)
!1669 = !DILocation(line: 307, column: 9, scope: !1636)
!1670 = !DILocation(line: 307, column: 14, scope: !1636)
!1671 = !DILocation(line: 308, column: 9, scope: !1636)
!1672 = !DILocation(line: 308, column: 14, scope: !1636)
!1673 = !DILocation(line: 0, scope: !1636)
!1674 = !DILocation(line: 309, column: 26, scope: !1636)
!1675 = !DILocation(line: 310, column: 39, scope: !1636)
!1676 = !DILocation(line: 310, column: 28, scope: !1636)
!1677 = !DILocation(line: 311, column: 28, scope: !1636)
!1678 = !DILocation(line: 312, column: 26, scope: !1636)
!1679 = !DILocation(line: 313, column: 55, scope: !1636)
!1680 = !DILocation(line: 313, column: 47, scope: !1636)
!1681 = !DILocation(line: 313, column: 39, scope: !1636)
!1682 = !DILocation(line: 313, column: 28, scope: !1636)
!1683 = !DILocation(line: 314, column: 46, scope: !1636)
!1684 = !DILocation(line: 314, column: 38, scope: !1636)
!1685 = !DILocation(line: 314, column: 28, scope: !1636)
!1686 = !DILocation(line: 315, column: 19, scope: !1636)
!1687 = !DILocation(line: 316, column: 9, scope: !1636)
!1688 = !DILocation(line: 318, column: 37, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 317, column: 11)
!1690 = !DILocation(line: 318, column: 26, scope: !1689)
!1691 = !DILocation(line: 319, column: 37, scope: !1689)
!1692 = !DILocation(line: 319, column: 26, scope: !1689)
!1693 = !DILocation(line: 320, column: 37, scope: !1689)
!1694 = !DILocation(line: 320, column: 26, scope: !1689)
!1695 = !DILocation(line: 321, column: 37, scope: !1689)
!1696 = !DILocation(line: 321, column: 26, scope: !1689)
!1697 = !DILocation(line: 322, column: 37, scope: !1689)
!1698 = !DILocation(line: 322, column: 26, scope: !1689)
!1699 = !DILocation(line: 323, column: 37, scope: !1689)
!1700 = !DILocation(line: 323, column: 26, scope: !1689)
!1701 = !DILocation(line: 325, column: 9, scope: !1636)
!1702 = !DILocation(line: 0, scope: !1689)
!1703 = !DILocation(line: 326, column: 7, scope: !1637)
!1704 = !DILocation(line: 330, column: 20, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 330, column: 13)
!1706 = !DILocation(line: 330, column: 13, scope: !1646)
!1707 = !DILocation(line: 331, column: 30, scope: !1705)
!1708 = !DILocation(line: 332, column: 30, scope: !1705)
!1709 = !DILocation(line: 331, column: 11, scope: !1705)
!1710 = !DILocation(line: 333, column: 44, scope: !1646)
!1711 = !DILocalVariable(name: "filename", arg: 1, scope: !1712, file: !3, line: 175, type: !47)
!1712 = distinct !DISubprogram(name: "get_mtime", scope: !3, file: !3, line: 175, type: !1713, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1715)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!912, !47}
!1715 = !{!1711, !1716}
!1716 = !DILocalVariable(name: "finfo", scope: !1712, file: !3, line: 177, type: !888)
!1717 = !DILocation(line: 0, scope: !1712, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 333, column: 33, scope: !1646)
!1719 = !DILocation(line: 177, column: 3, scope: !1712, inlinedAt: !1718)
!1720 = !DILocation(line: 177, column: 15, scope: !1712, inlinedAt: !1718)
!1721 = !DILocation(line: 178, column: 11, scope: !1712, inlinedAt: !1718)
!1722 = !DILocation(line: 178, column: 35, scope: !1712, inlinedAt: !1718)
!1723 = !DILocation(line: 181, column: 1, scope: !1712, inlinedAt: !1718)
!1724 = !DILocation(line: 334, column: 44, scope: !1646)
!1725 = !DILocation(line: 334, column: 52, scope: !1646)
!1726 = !DILocation(line: 0, scope: !1712, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 334, column: 33, scope: !1646)
!1728 = !DILocation(line: 177, column: 3, scope: !1712, inlinedAt: !1727)
!1729 = !DILocation(line: 177, column: 15, scope: !1712, inlinedAt: !1727)
!1730 = !DILocation(line: 178, column: 11, scope: !1712, inlinedAt: !1727)
!1731 = !DILocation(line: 178, column: 35, scope: !1712, inlinedAt: !1727)
!1732 = !DILocation(line: 181, column: 1, scope: !1712, inlinedAt: !1727)
!1733 = !DILocation(line: 0, scope: !1025, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 333, column: 19, scope: !1646)
!1735 = !DILocation(line: 66, column: 14, scope: !1025, inlinedAt: !1734)
!1736 = !DILocation(line: 66, column: 12, scope: !1025, inlinedAt: !1734)
!1737 = !DILocation(line: 66, column: 45, scope: !1025, inlinedAt: !1734)
!1738 = !DILocation(line: 66, column: 43, scope: !1025, inlinedAt: !1734)
!1739 = !DILocation(line: 0, scope: !1646)
!1740 = !DILocation(line: 335, column: 20, scope: !1646)
!1741 = !DILocation(line: 335, column: 16, scope: !1646)
!1742 = !DILocation(line: 339, column: 18, scope: !1649)
!1743 = !DILocation(line: 339, column: 11, scope: !1637)
!1744 = !DILocation(line: 340, column: 28, scope: !1649)
!1745 = !DILocation(line: 340, column: 9, scope: !1649)
!1746 = !DILocation(line: 343, column: 11, scope: !1648)
!1747 = !DILocation(line: 343, column: 23, scope: !1648)
!1748 = !DILocation(line: 344, column: 25, scope: !1648)
!1749 = !DILocation(line: 344, column: 40, scope: !1648)
!1750 = !DILocation(line: 344, column: 19, scope: !1648)
!1751 = !DILocation(line: 344, column: 47, scope: !1648)
!1752 = !DILocation(line: 345, column: 19, scope: !1648)
!1753 = !DILocation(line: 345, column: 28, scope: !1648)
!1754 = !DILocation(line: 345, column: 36, scope: !1648)
!1755 = !DILocation(line: 345, column: 43, scope: !1648)
!1756 = !DILocation(line: 345, column: 22, scope: !1648)
!1757 = !DILocation(line: 345, column: 50, scope: !1648)
!1758 = !DILocation(line: 346, column: 19, scope: !1648)
!1759 = !DILocalVariable(name: "a", arg: 1, scope: !1760, file: !1761, line: 86, type: !1011)
!1760 = distinct !DISubprogram(name: "psame_inode", scope: !1761, file: !1761, line: 86, type: !1762, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1764)
!1761 = !DIFile(filename: "./lib/same-inode.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6a49db1c884e7bc93549038e7fb28788")
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!74, !1011, !1011}
!1764 = !{!1759, !1765}
!1765 = !DILocalVariable(name: "b", arg: 2, scope: !1760, file: !1761, line: 86, type: !1011)
!1766 = !DILocation(line: 0, scope: !1760, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 346, column: 22, scope: !1648)
!1768 = !DILocation(line: 90, column: 14, scope: !1760, inlinedAt: !1767)
!1769 = !{!1059, !1060, i64 0}
!1770 = !{!1059, !1060, i64 8}
!1771 = !DILocation(line: 0, scope: !1648)
!1772 = !DILocation(line: 347, column: 9, scope: !1649)
!1773 = !DILocation(line: 351, column: 21, scope: !1637)
!1774 = !DILocation(line: 351, column: 43, scope: !1637)
!1775 = !DILocation(line: 351, column: 35, scope: !1637)
!1776 = !DILocation(line: 0, scope: !503, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 351, column: 14, scope: !1637)
!1778 = !DILocation(line: 1361, column: 11, scope: !503, inlinedAt: !1777)
!1779 = !DILocation(line: 1361, column: 10, scope: !503, inlinedAt: !1777)
!1780 = !DILocation(line: 351, column: 57, scope: !1637)
!1781 = !DILocation(line: 351, column: 49, scope: !1637)
!1782 = !DILocation(line: 351, column: 7, scope: !1637)
!1783 = !DILocation(line: 356, column: 28, scope: !1652)
!1784 = !DILocation(line: 356, column: 50, scope: !1652)
!1785 = !DILocation(line: 356, column: 42, scope: !1652)
!1786 = !DILocation(line: 356, column: 19, scope: !1652)
!1787 = !DILocation(line: 0, scope: !1652)
!1788 = !DILocation(line: 357, column: 20, scope: !1652)
!1789 = !DILocation(line: 357, column: 16, scope: !1652)
!1790 = !DILocation(line: 362, column: 3, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 362, column: 3)
!1792 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 362, column: 3)
!1793 = !DILocation(line: 0, scope: !1637)
!1794 = !DILocation(line: 363, column: 1, scope: !1627)
!1795 = distinct !DISubprogram(name: "find_int", scope: !3, file: !3, line: 139, type: !1796, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1798)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!47, !47}
!1798 = !{!1799, !1800, !1801}
!1799 = !DILocalVariable(name: "string", arg: 1, scope: !1795, file: !3, line: 139, type: !47)
!1800 = !DILocalVariable(name: "p", scope: !1795, file: !3, line: 141, type: !47)
!1801 = !DILocalVariable(name: "number_start", scope: !1795, file: !3, line: 142, type: !47)
!1802 = !DILocation(line: 0, scope: !1795)
!1803 = !DILocation(line: 144, column: 8, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 144, column: 3)
!1805 = !DILocation(line: 0, scope: !1804)
!1806 = !DILocation(line: 144, column: 20, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 144, column: 3)
!1808 = !DILocation(line: 144, column: 3, scope: !1804)
!1809 = !DILocation(line: 144, column: 46, scope: !1807)
!1810 = distinct !{!1810, !1808, !1811, !520}
!1811 = !DILocation(line: 145, column: 5, scope: !1804)
!1812 = !DILocation(line: 147, column: 10, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 147, column: 7)
!1814 = !DILocation(line: 147, column: 7, scope: !1795)
!1815 = !DILocation(line: 158, column: 18, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 158, column: 7)
!1817 = !DILocalVariable(name: "c", arg: 1, scope: !1818, file: !1819, line: 233, type: !42)
!1818 = distinct !DISubprogram(name: "c_isdigit", scope: !1819, file: !1819, line: 233, type: !723, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1820)
!1819 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1820 = !{!1817}
!1821 = !DILocation(line: 0, scope: !1818, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 158, column: 7, scope: !1816)
!1823 = !DILocation(line: 235, column: 3, scope: !1818, inlinedAt: !1822)
!1824 = !DILocation(line: 158, column: 7, scope: !1795)
!1825 = !DILocation(line: 0, scope: !1816)
!1826 = !DILocation(line: 160, column: 25, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 159, column: 5)
!1828 = !DILocation(line: 0, scope: !1818, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 160, column: 14, scope: !1827)
!1830 = !DILocation(line: 235, column: 3, scope: !1818, inlinedAt: !1829)
!1831 = !DILocation(line: 160, column: 7, scope: !1827)
!1832 = distinct !{!1832, !1831, !1833, !520}
!1833 = !DILocation(line: 161, column: 10, scope: !1827)
!1834 = !DILocation(line: 162, column: 14, scope: !1827)
!1835 = !DILocation(line: 162, column: 7, scope: !1827)
!1836 = !DILocation(line: 163, column: 10, scope: !1827)
!1837 = distinct !{!1837, !1835, !1836, !520}
!1838 = !DILocation(line: 164, column: 12, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 164, column: 11)
!1840 = !DILocation(line: 164, column: 11, scope: !1827)
!1841 = !DILocation(line: 165, column: 9, scope: !1839)
!1842 = !DILocation(line: 168, column: 22, scope: !1795)
!1843 = !DILocation(line: 168, column: 47, scope: !1795)
!1844 = !DILocation(line: 168, column: 3, scope: !1795)
!1845 = !DISubprogram(name: "stat", scope: !1846, file: !1846, line: 205, type: !1847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!1846 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!42, !550, !1849}
!1849 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1850)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!1851 = !DISubprogram(name: "strcoll", scope: !1852, file: !1852, line: 163, type: !1853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!1852 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!42, !47, !47}
!1855 = !DISubprogram(name: "euidaccess", scope: !1856, file: !1856, line: 292, type: !1857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!1856 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!42, !47, !42}
!1859 = !DISubprogram(name: "geteuid", scope: !1856, file: !1856, line: 700, type: !1860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!900}
!1862 = !DISubprogram(name: "getegid", scope: !1856, file: !1856, line: 706, type: !1863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!902}
!1865 = !DISubprogram(name: "isatty", scope: !1856, file: !1856, line: 809, type: !1866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!42, !42}
!1868 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !152, file: !152, line: 50, type: !479, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1869)
!1869 = !{!1870}
!1870 = !DILocalVariable(name: "file", arg: 1, scope: !1868, file: !152, line: 50, type: !47)
!1871 = !DILocation(line: 0, scope: !1868)
!1872 = !DILocation(line: 52, column: 13, scope: !1868)
!1873 = !DILocation(line: 53, column: 1, scope: !1868)
!1874 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !152, file: !152, line: 87, type: !753, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1875)
!1875 = !{!1876}
!1876 = !DILocalVariable(name: "ignore", arg: 1, scope: !1874, file: !152, line: 87, type: !74)
!1877 = !DILocation(line: 0, scope: !1874)
!1878 = !DILocation(line: 89, column: 16, scope: !1874)
!1879 = !{!1880, !1880, i64 0}
!1880 = !{!"_Bool", !427, i64 0}
!1881 = !DILocation(line: 90, column: 1, scope: !1874)
!1882 = distinct !DISubprogram(name: "close_stdout", scope: !152, file: !152, line: 116, type: !195, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !1883)
!1883 = !{!1884}
!1884 = !DILocalVariable(name: "write_error", scope: !1885, file: !152, line: 121, type: !47)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !152, line: 120, column: 5)
!1886 = distinct !DILexicalBlock(scope: !1882, file: !152, line: 118, column: 7)
!1887 = !DILocation(line: 118, column: 21, scope: !1886)
!1888 = !DILocation(line: 118, column: 7, scope: !1886)
!1889 = !DILocation(line: 118, column: 29, scope: !1886)
!1890 = !DILocation(line: 119, column: 7, scope: !1886)
!1891 = !DILocation(line: 119, column: 12, scope: !1886)
!1892 = !{i8 0, i8 2}
!1893 = !DILocation(line: 119, column: 25, scope: !1886)
!1894 = !DILocation(line: 119, column: 28, scope: !1886)
!1895 = !DILocation(line: 119, column: 34, scope: !1886)
!1896 = !DILocation(line: 118, column: 7, scope: !1882)
!1897 = !DILocation(line: 121, column: 33, scope: !1885)
!1898 = !DILocation(line: 0, scope: !1885)
!1899 = !DILocation(line: 122, column: 11, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1885, file: !152, line: 122, column: 11)
!1901 = !DILocation(line: 0, scope: !1900)
!1902 = !DILocation(line: 122, column: 11, scope: !1885)
!1903 = !DILocation(line: 123, column: 9, scope: !1900)
!1904 = !DILocation(line: 126, column: 9, scope: !1900)
!1905 = !DILocation(line: 128, column: 14, scope: !1885)
!1906 = !DILocation(line: 128, column: 7, scope: !1885)
!1907 = !DILocation(line: 133, column: 42, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1882, file: !152, line: 133, column: 7)
!1909 = !DILocation(line: 133, column: 28, scope: !1908)
!1910 = !DILocation(line: 133, column: 50, scope: !1908)
!1911 = !DILocation(line: 133, column: 7, scope: !1882)
!1912 = !DILocation(line: 134, column: 12, scope: !1908)
!1913 = !DILocation(line: 134, column: 5, scope: !1908)
!1914 = !DILocation(line: 135, column: 1, scope: !1882)
!1915 = distinct !DISubprogram(name: "verror", scope: !159, file: !159, line: 251, type: !1916, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !1918)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{null, !42, !42, !47, !167}
!1918 = !{!1919, !1920, !1921, !1922}
!1919 = !DILocalVariable(name: "status", arg: 1, scope: !1915, file: !159, line: 251, type: !42)
!1920 = !DILocalVariable(name: "errnum", arg: 2, scope: !1915, file: !159, line: 251, type: !42)
!1921 = !DILocalVariable(name: "message", arg: 3, scope: !1915, file: !159, line: 251, type: !47)
!1922 = !DILocalVariable(name: "args", arg: 4, scope: !1915, file: !159, line: 251, type: !167)
!1923 = !DILocation(line: 0, scope: !1915)
!1924 = !DILocation(line: 251, column: 1, scope: !1915)
!1925 = !DILocation(line: 261, column: 3, scope: !1915)
!1926 = !DILocation(line: 265, column: 7, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1915, file: !159, line: 265, column: 7)
!1928 = !DILocation(line: 265, column: 7, scope: !1915)
!1929 = !DILocation(line: 266, column: 5, scope: !1927)
!1930 = !DILocation(line: 272, column: 7, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1927, file: !159, line: 268, column: 5)
!1932 = !DILocation(line: 276, column: 3, scope: !1915)
!1933 = !DILocation(line: 282, column: 1, scope: !1915)
!1934 = distinct !DISubprogram(name: "flush_stdout", scope: !159, file: !159, line: 163, type: !195, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !1935)
!1935 = !{!1936}
!1936 = !DILocalVariable(name: "stdout_fd", scope: !1934, file: !159, line: 166, type: !42)
!1937 = !DILocation(line: 0, scope: !1934)
!1938 = !DILocalVariable(name: "fd", arg: 1, scope: !1939, file: !159, line: 145, type: !42)
!1939 = distinct !DISubprogram(name: "is_open", scope: !159, file: !159, line: 145, type: !1866, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !1940)
!1940 = !{!1938}
!1941 = !DILocation(line: 0, scope: !1939, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 182, column: 25, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1934, file: !159, line: 182, column: 7)
!1944 = !DILocation(line: 157, column: 15, scope: !1939, inlinedAt: !1942)
!1945 = !DILocation(line: 182, column: 25, scope: !1943)
!1946 = !DILocation(line: 182, column: 7, scope: !1934)
!1947 = !DILocation(line: 184, column: 5, scope: !1943)
!1948 = !DILocation(line: 185, column: 1, scope: !1934)
!1949 = distinct !DISubprogram(name: "error_tail", scope: !159, file: !159, line: 219, type: !1916, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !1950)
!1950 = !{!1951, !1952, !1953, !1954}
!1951 = !DILocalVariable(name: "status", arg: 1, scope: !1949, file: !159, line: 219, type: !42)
!1952 = !DILocalVariable(name: "errnum", arg: 2, scope: !1949, file: !159, line: 219, type: !42)
!1953 = !DILocalVariable(name: "message", arg: 3, scope: !1949, file: !159, line: 219, type: !47)
!1954 = !DILocalVariable(name: "args", arg: 4, scope: !1949, file: !159, line: 219, type: !167)
!1955 = !DILocation(line: 0, scope: !1949)
!1956 = !DILocation(line: 219, column: 1, scope: !1949)
!1957 = !DILocation(line: 229, column: 13, scope: !1949)
!1958 = !DILocation(line: 229, column: 3, scope: !1949)
!1959 = !DILocalVariable(name: "__stream", arg: 1, scope: !1960, file: !1961, line: 132, type: !1964)
!1960 = distinct !DISubprogram(name: "vfprintf", scope: !1961, file: !1961, line: 132, type: !1962, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !1999)
!1961 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!42, !1964, !550, !169}
!1964 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1965)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !1967)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !1968)
!1968 = !{!1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1967, file: !91, line: 51, baseType: !42, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1967, file: !91, line: 54, baseType: !95, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1967, file: !91, line: 55, baseType: !95, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1967, file: !91, line: 56, baseType: !95, size: 64, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1967, file: !91, line: 57, baseType: !95, size: 64, offset: 256)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1967, file: !91, line: 58, baseType: !95, size: 64, offset: 320)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1967, file: !91, line: 59, baseType: !95, size: 64, offset: 384)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1967, file: !91, line: 60, baseType: !95, size: 64, offset: 448)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1967, file: !91, line: 61, baseType: !95, size: 64, offset: 512)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1967, file: !91, line: 64, baseType: !95, size: 64, offset: 576)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1967, file: !91, line: 65, baseType: !95, size: 64, offset: 640)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1967, file: !91, line: 66, baseType: !95, size: 64, offset: 704)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1967, file: !91, line: 68, baseType: !107, size: 64, offset: 768)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1967, file: !91, line: 70, baseType: !1983, size: 64, offset: 832)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1967, file: !91, line: 72, baseType: !42, size: 32, offset: 896)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1967, file: !91, line: 73, baseType: !42, size: 32, offset: 928)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1967, file: !91, line: 74, baseType: !114, size: 64, offset: 960)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1967, file: !91, line: 77, baseType: !43, size: 16, offset: 1024)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1967, file: !91, line: 78, baseType: !117, size: 8, offset: 1040)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1967, file: !91, line: 79, baseType: !119, size: 8, offset: 1048)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1967, file: !91, line: 81, baseType: !123, size: 64, offset: 1088)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1967, file: !91, line: 89, baseType: !126, size: 64, offset: 1152)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1967, file: !91, line: 91, baseType: !128, size: 64, offset: 1216)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1967, file: !91, line: 92, baseType: !131, size: 64, offset: 1280)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1967, file: !91, line: 93, baseType: !1983, size: 64, offset: 1344)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1967, file: !91, line: 94, baseType: !135, size: 64, offset: 1408)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1967, file: !91, line: 95, baseType: !44, size: 64, offset: 1472)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1967, file: !91, line: 96, baseType: !42, size: 32, offset: 1536)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1967, file: !91, line: 98, baseType: !139, size: 160, offset: 1568)
!1999 = !{!1959, !2000, !2001}
!2000 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1960, file: !1961, line: 133, type: !550)
!2001 = !DILocalVariable(name: "__ap", arg: 3, scope: !1960, file: !1961, line: 133, type: !169)
!2002 = !DILocation(line: 0, scope: !1960, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 229, column: 3, scope: !1949)
!2004 = !DILocation(line: 135, column: 10, scope: !1960, inlinedAt: !2003)
!2005 = !{!2006, !2008}
!2006 = distinct !{!2006, !2007, !"vfprintf.inline: argument 0"}
!2007 = distinct !{!2007, !"vfprintf.inline"}
!2008 = distinct !{!2008, !2007, !"vfprintf.inline: argument 1"}
!2009 = !DILocation(line: 232, column: 3, scope: !1949)
!2010 = !DILocation(line: 233, column: 7, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1949, file: !159, line: 233, column: 7)
!2012 = !DILocation(line: 233, column: 7, scope: !1949)
!2013 = !DILocalVariable(name: "errnum", arg: 1, scope: !2014, file: !159, line: 188, type: !42)
!2014 = distinct !DISubprogram(name: "print_errno_message", scope: !159, file: !159, line: 188, type: !415, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !2015)
!2015 = !{!2013, !2016, !2017}
!2016 = !DILocalVariable(name: "s", scope: !2014, file: !159, line: 190, type: !47)
!2017 = !DILocalVariable(name: "errbuf", scope: !2014, file: !159, line: 193, type: !2018)
!2018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8192, elements: !2019)
!2019 = !{!2020}
!2020 = !DISubrange(count: 1024)
!2021 = !DILocation(line: 0, scope: !2014, inlinedAt: !2022)
!2022 = distinct !DILocation(line: 234, column: 5, scope: !2011)
!2023 = !DILocation(line: 193, column: 3, scope: !2014, inlinedAt: !2022)
!2024 = !DILocation(line: 193, column: 8, scope: !2014, inlinedAt: !2022)
!2025 = !DILocation(line: 195, column: 7, scope: !2014, inlinedAt: !2022)
!2026 = !DILocation(line: 207, column: 9, scope: !2027, inlinedAt: !2022)
!2027 = distinct !DILexicalBlock(scope: !2014, file: !159, line: 207, column: 7)
!2028 = !DILocation(line: 207, column: 7, scope: !2014, inlinedAt: !2022)
!2029 = !DILocation(line: 208, column: 9, scope: !2027, inlinedAt: !2022)
!2030 = !DILocation(line: 208, column: 5, scope: !2027, inlinedAt: !2022)
!2031 = !DILocation(line: 214, column: 3, scope: !2014, inlinedAt: !2022)
!2032 = !DILocation(line: 216, column: 1, scope: !2014, inlinedAt: !2022)
!2033 = !DILocation(line: 234, column: 5, scope: !2011)
!2034 = !DILocation(line: 238, column: 3, scope: !1949)
!2035 = !DILocalVariable(name: "__c", arg: 1, scope: !2036, file: !2037, line: 101, type: !42)
!2036 = distinct !DISubprogram(name: "putc_unlocked", scope: !2037, file: !2037, line: 101, type: !2038, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !2040)
!2037 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!42, !42, !1965}
!2040 = !{!2035, !2041}
!2041 = !DILocalVariable(name: "__stream", arg: 2, scope: !2036, file: !2037, line: 101, type: !1965)
!2042 = !DILocation(line: 0, scope: !2036, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 238, column: 3, scope: !1949)
!2044 = !DILocation(line: 103, column: 10, scope: !2036, inlinedAt: !2043)
!2045 = !{!2046, !426, i64 40}
!2046 = !{!"_IO_FILE", !555, i64 0, !426, i64 8, !426, i64 16, !426, i64 24, !426, i64 32, !426, i64 40, !426, i64 48, !426, i64 56, !426, i64 64, !426, i64 72, !426, i64 80, !426, i64 88, !426, i64 96, !426, i64 104, !555, i64 112, !555, i64 116, !1060, i64 120, !589, i64 128, !427, i64 130, !427, i64 131, !426, i64 136, !1060, i64 144, !426, i64 152, !426, i64 160, !426, i64 168, !426, i64 176, !1060, i64 184, !555, i64 192, !427, i64 196}
!2047 = !{!2046, !426, i64 48}
!2048 = !{!"branch_weights", i32 2000, i32 1}
!2049 = !DILocation(line: 240, column: 3, scope: !1949)
!2050 = !DILocation(line: 241, column: 7, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !1949, file: !159, line: 241, column: 7)
!2052 = !DILocation(line: 241, column: 7, scope: !1949)
!2053 = !DILocation(line: 242, column: 5, scope: !2051)
!2054 = !DILocation(line: 243, column: 1, scope: !1949)
!2055 = !DISubprogram(name: "strerror_r", scope: !1852, file: !1852, line: 444, type: !2056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!95, !42, !95, !44}
!2058 = !DISubprogram(name: "fflush_unlocked", scope: !168, file: !168, line: 239, type: !2059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!42, !1965}
!2061 = !DISubprogram(name: "fcntl", scope: !2062, file: !2062, line: 149, type: !2063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!2062 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!42, !42, !42, null}
!2065 = distinct !DISubprogram(name: "error", scope: !159, file: !159, line: 285, type: !2066, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !2068)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !42, !42, !47, null}
!2068 = !{!2069, !2070, !2071, !2072}
!2069 = !DILocalVariable(name: "status", arg: 1, scope: !2065, file: !159, line: 285, type: !42)
!2070 = !DILocalVariable(name: "errnum", arg: 2, scope: !2065, file: !159, line: 285, type: !42)
!2071 = !DILocalVariable(name: "message", arg: 3, scope: !2065, file: !159, line: 285, type: !47)
!2072 = !DILocalVariable(name: "ap", scope: !2065, file: !159, line: 287, type: !167)
!2073 = !DILocation(line: 0, scope: !2065)
!2074 = !DILocation(line: 287, column: 3, scope: !2065)
!2075 = !DILocation(line: 287, column: 11, scope: !2065)
!2076 = !DILocation(line: 288, column: 3, scope: !2065)
!2077 = !DILocation(line: 289, column: 3, scope: !2065)
!2078 = !DILocation(line: 290, column: 3, scope: !2065)
!2079 = !DILocation(line: 291, column: 1, scope: !2065)
!2080 = !DILocation(line: 0, scope: !164)
!2081 = !DILocation(line: 298, column: 1, scope: !164)
!2082 = !DILocation(line: 302, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !164, file: !159, line: 302, column: 7)
!2084 = !DILocation(line: 302, column: 7, scope: !164)
!2085 = !DILocation(line: 307, column: 11, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !159, line: 307, column: 11)
!2087 = distinct !DILexicalBlock(scope: !2083, file: !159, line: 303, column: 5)
!2088 = !DILocation(line: 307, column: 27, scope: !2086)
!2089 = !DILocation(line: 308, column: 11, scope: !2086)
!2090 = !DILocation(line: 308, column: 28, scope: !2086)
!2091 = !DILocation(line: 308, column: 25, scope: !2086)
!2092 = !DILocation(line: 309, column: 15, scope: !2086)
!2093 = !DILocation(line: 309, column: 33, scope: !2086)
!2094 = !DILocation(line: 310, column: 19, scope: !2086)
!2095 = !DILocation(line: 311, column: 22, scope: !2086)
!2096 = !DILocation(line: 311, column: 56, scope: !2086)
!2097 = !DILocation(line: 307, column: 11, scope: !2087)
!2098 = !DILocation(line: 316, column: 21, scope: !2087)
!2099 = !DILocation(line: 317, column: 23, scope: !2087)
!2100 = !DILocation(line: 318, column: 5, scope: !2087)
!2101 = !DILocation(line: 327, column: 3, scope: !164)
!2102 = !DILocation(line: 331, column: 7, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !164, file: !159, line: 331, column: 7)
!2104 = !DILocation(line: 331, column: 7, scope: !164)
!2105 = !DILocation(line: 332, column: 5, scope: !2103)
!2106 = !DILocation(line: 338, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2103, file: !159, line: 334, column: 5)
!2108 = !DILocation(line: 346, column: 3, scope: !164)
!2109 = !DILocation(line: 350, column: 3, scope: !164)
!2110 = !DILocation(line: 356, column: 1, scope: !164)
!2111 = distinct !DISubprogram(name: "error_at_line", scope: !159, file: !159, line: 359, type: !2112, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !2114)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{null, !42, !42, !47, !6, !47, null}
!2114 = !{!2115, !2116, !2117, !2118, !2119, !2120}
!2115 = !DILocalVariable(name: "status", arg: 1, scope: !2111, file: !159, line: 359, type: !42)
!2116 = !DILocalVariable(name: "errnum", arg: 2, scope: !2111, file: !159, line: 359, type: !42)
!2117 = !DILocalVariable(name: "file_name", arg: 3, scope: !2111, file: !159, line: 359, type: !47)
!2118 = !DILocalVariable(name: "line_number", arg: 4, scope: !2111, file: !159, line: 360, type: !6)
!2119 = !DILocalVariable(name: "message", arg: 5, scope: !2111, file: !159, line: 360, type: !47)
!2120 = !DILocalVariable(name: "ap", scope: !2111, file: !159, line: 362, type: !167)
!2121 = !DILocation(line: 0, scope: !2111)
!2122 = !DILocation(line: 362, column: 3, scope: !2111)
!2123 = !DILocation(line: 362, column: 11, scope: !2111)
!2124 = !DILocation(line: 363, column: 3, scope: !2111)
!2125 = !DILocation(line: 364, column: 3, scope: !2111)
!2126 = !DILocation(line: 366, column: 3, scope: !2111)
!2127 = !DILocation(line: 367, column: 1, scope: !2111)
!2128 = distinct !DISubprogram(name: "getprogname", scope: !333, file: !333, line: 54, type: !2129, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !546)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!47}
!2131 = !DILocation(line: 58, column: 10, scope: !2128)
!2132 = !DILocation(line: 58, column: 3, scope: !2128)
!2133 = distinct !DISubprogram(name: "umaxtostr", scope: !2134, file: !2134, line: 29, type: !2135, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !334, retainedNodes: !2137)
!2134 = !DIFile(filename: "./lib/anytostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e5b8bc0749223f86edfe264a04f25de0")
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!95, !337, !95}
!2137 = !{!2138, !2139, !2140}
!2138 = !DILocalVariable(name: "i", arg: 1, scope: !2133, file: !2134, line: 29, type: !337)
!2139 = !DILocalVariable(name: "buf", arg: 2, scope: !2133, file: !2134, line: 29, type: !95)
!2140 = !DILocalVariable(name: "p", scope: !2133, file: !2134, line: 31, type: !95)
!2141 = !DILocation(line: 0, scope: !2133)
!2142 = !DILocation(line: 31, column: 17, scope: !2133)
!2143 = !DILocation(line: 32, column: 6, scope: !2133)
!2144 = !DILocation(line: 46, column: 17, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !2134, line: 43, column: 5)
!2146 = distinct !DILexicalBlock(scope: !2133, file: !2134, line: 34, column: 7)
!2147 = !DILocation(line: 45, column: 16, scope: !2145)
!2148 = !DILocation(line: 45, column: 10, scope: !2145)
!2149 = !DILocation(line: 45, column: 14, scope: !2145)
!2150 = !DILocation(line: 46, column: 24, scope: !2145)
!2151 = !DILocation(line: 45, column: 9, scope: !2145)
!2152 = distinct !{!2152, !2153, !2154, !520}
!2153 = !DILocation(line: 44, column: 7, scope: !2145)
!2154 = !DILocation(line: 46, column: 28, scope: !2145)
!2155 = !DILocation(line: 49, column: 3, scope: !2133)
!2156 = distinct !DISubprogram(name: "set_program_name", scope: !200, file: !200, line: 37, type: !479, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !199, retainedNodes: !2157)
!2157 = !{!2158, !2159, !2160}
!2158 = !DILocalVariable(name: "argv0", arg: 1, scope: !2156, file: !200, line: 37, type: !47)
!2159 = !DILocalVariable(name: "slash", scope: !2156, file: !200, line: 44, type: !47)
!2160 = !DILocalVariable(name: "base", scope: !2156, file: !200, line: 45, type: !47)
!2161 = !DILocation(line: 0, scope: !2156)
!2162 = !DILocation(line: 44, column: 23, scope: !2156)
!2163 = !DILocation(line: 45, column: 22, scope: !2156)
!2164 = !DILocation(line: 46, column: 17, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2156, file: !200, line: 46, column: 7)
!2166 = !DILocation(line: 46, column: 9, scope: !2165)
!2167 = !DILocation(line: 46, column: 25, scope: !2165)
!2168 = !DILocation(line: 46, column: 40, scope: !2165)
!2169 = !DILocalVariable(name: "__s1", arg: 1, scope: !2170, file: !504, line: 974, type: !672)
!2170 = distinct !DISubprogram(name: "memeq", scope: !504, file: !504, line: 974, type: !2171, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !199, retainedNodes: !2173)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!74, !672, !672, !44}
!2173 = !{!2169, !2174, !2175}
!2174 = !DILocalVariable(name: "__s2", arg: 2, scope: !2170, file: !504, line: 974, type: !672)
!2175 = !DILocalVariable(name: "__n", arg: 3, scope: !2170, file: !504, line: 974, type: !44)
!2176 = !DILocation(line: 0, scope: !2170, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 46, column: 28, scope: !2165)
!2178 = !DILocation(line: 976, column: 11, scope: !2170, inlinedAt: !2177)
!2179 = !DILocation(line: 976, column: 10, scope: !2170, inlinedAt: !2177)
!2180 = !DILocation(line: 46, column: 7, scope: !2156)
!2181 = !DILocation(line: 49, column: 11, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !200, line: 49, column: 11)
!2183 = distinct !DILexicalBlock(scope: !2165, file: !200, line: 47, column: 5)
!2184 = !DILocation(line: 49, column: 36, scope: !2182)
!2185 = !DILocation(line: 49, column: 11, scope: !2183)
!2186 = !DILocation(line: 65, column: 16, scope: !2156)
!2187 = !DILocation(line: 71, column: 27, scope: !2156)
!2188 = !DILocation(line: 74, column: 33, scope: !2156)
!2189 = !DILocation(line: 76, column: 1, scope: !2156)
!2190 = distinct !DISubprogram(name: "clone_quoting_options", scope: !206, file: !206, line: 113, type: !2191, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2194)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!2193, !2193}
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!2194 = !{!2195, !2196, !2197}
!2195 = !DILocalVariable(name: "o", arg: 1, scope: !2190, file: !206, line: 113, type: !2193)
!2196 = !DILocalVariable(name: "saved_errno", scope: !2190, file: !206, line: 115, type: !42)
!2197 = !DILocalVariable(name: "p", scope: !2190, file: !206, line: 116, type: !2193)
!2198 = !DILocation(line: 0, scope: !2190)
!2199 = !DILocation(line: 115, column: 21, scope: !2190)
!2200 = !DILocation(line: 116, column: 40, scope: !2190)
!2201 = !DILocation(line: 116, column: 31, scope: !2190)
!2202 = !DILocation(line: 118, column: 9, scope: !2190)
!2203 = !DILocation(line: 119, column: 3, scope: !2190)
!2204 = distinct !DISubprogram(name: "get_quoting_style", scope: !206, file: !206, line: 124, type: !2205, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2209)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!208, !2207}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!2209 = !{!2210}
!2210 = !DILocalVariable(name: "o", arg: 1, scope: !2204, file: !206, line: 124, type: !2207)
!2211 = !DILocation(line: 0, scope: !2204)
!2212 = !DILocation(line: 126, column: 11, scope: !2204)
!2213 = !DILocation(line: 126, column: 46, scope: !2204)
!2214 = !{!2215, !427, i64 0}
!2215 = !{!"quoting_options", !427, i64 0, !555, i64 4, !427, i64 8, !426, i64 40, !426, i64 48}
!2216 = !DILocation(line: 126, column: 3, scope: !2204)
!2217 = distinct !DISubprogram(name: "set_quoting_style", scope: !206, file: !206, line: 132, type: !2218, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !2193, !208}
!2220 = !{!2221, !2222}
!2221 = !DILocalVariable(name: "o", arg: 1, scope: !2217, file: !206, line: 132, type: !2193)
!2222 = !DILocalVariable(name: "s", arg: 2, scope: !2217, file: !206, line: 132, type: !208)
!2223 = !DILocation(line: 0, scope: !2217)
!2224 = !DILocation(line: 134, column: 4, scope: !2217)
!2225 = !DILocation(line: 134, column: 39, scope: !2217)
!2226 = !DILocation(line: 134, column: 45, scope: !2217)
!2227 = !DILocation(line: 135, column: 1, scope: !2217)
!2228 = distinct !DISubprogram(name: "set_char_quoting", scope: !206, file: !206, line: 143, type: !2229, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2231)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!42, !2193, !49, !42}
!2231 = !{!2232, !2233, !2234, !2235, !2236, !2238, !2239}
!2232 = !DILocalVariable(name: "o", arg: 1, scope: !2228, file: !206, line: 143, type: !2193)
!2233 = !DILocalVariable(name: "c", arg: 2, scope: !2228, file: !206, line: 143, type: !49)
!2234 = !DILocalVariable(name: "i", arg: 3, scope: !2228, file: !206, line: 143, type: !42)
!2235 = !DILocalVariable(name: "uc", scope: !2228, file: !206, line: 145, type: !50)
!2236 = !DILocalVariable(name: "p", scope: !2228, file: !206, line: 146, type: !2237)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2238 = !DILocalVariable(name: "shift", scope: !2228, file: !206, line: 148, type: !42)
!2239 = !DILocalVariable(name: "r", scope: !2228, file: !206, line: 149, type: !6)
!2240 = !DILocation(line: 0, scope: !2228)
!2241 = !DILocation(line: 147, column: 6, scope: !2228)
!2242 = !DILocation(line: 147, column: 62, scope: !2228)
!2243 = !DILocation(line: 147, column: 57, scope: !2228)
!2244 = !DILocation(line: 148, column: 15, scope: !2228)
!2245 = !DILocation(line: 149, column: 21, scope: !2228)
!2246 = !DILocation(line: 149, column: 24, scope: !2228)
!2247 = !DILocation(line: 149, column: 34, scope: !2228)
!2248 = !DILocation(line: 150, column: 13, scope: !2228)
!2249 = !DILocation(line: 150, column: 19, scope: !2228)
!2250 = !DILocation(line: 150, column: 24, scope: !2228)
!2251 = !DILocation(line: 150, column: 6, scope: !2228)
!2252 = !DILocation(line: 151, column: 3, scope: !2228)
!2253 = distinct !DISubprogram(name: "set_quoting_flags", scope: !206, file: !206, line: 159, type: !2254, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2256)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!42, !2193, !42}
!2256 = !{!2257, !2258, !2259}
!2257 = !DILocalVariable(name: "o", arg: 1, scope: !2253, file: !206, line: 159, type: !2193)
!2258 = !DILocalVariable(name: "i", arg: 2, scope: !2253, file: !206, line: 159, type: !42)
!2259 = !DILocalVariable(name: "r", scope: !2253, file: !206, line: 163, type: !42)
!2260 = !DILocation(line: 0, scope: !2253)
!2261 = !DILocation(line: 161, column: 8, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2253, file: !206, line: 161, column: 7)
!2263 = !DILocation(line: 161, column: 7, scope: !2253)
!2264 = !DILocation(line: 163, column: 14, scope: !2253)
!2265 = !{!2215, !555, i64 4}
!2266 = !DILocation(line: 164, column: 12, scope: !2253)
!2267 = !DILocation(line: 165, column: 3, scope: !2253)
!2268 = distinct !DISubprogram(name: "set_custom_quoting", scope: !206, file: !206, line: 169, type: !2269, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{null, !2193, !47, !47}
!2271 = !{!2272, !2273, !2274}
!2272 = !DILocalVariable(name: "o", arg: 1, scope: !2268, file: !206, line: 169, type: !2193)
!2273 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2268, file: !206, line: 170, type: !47)
!2274 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2268, file: !206, line: 170, type: !47)
!2275 = !DILocation(line: 0, scope: !2268)
!2276 = !DILocation(line: 172, column: 8, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2268, file: !206, line: 172, column: 7)
!2278 = !DILocation(line: 172, column: 7, scope: !2268)
!2279 = !DILocation(line: 174, column: 6, scope: !2268)
!2280 = !DILocation(line: 174, column: 12, scope: !2268)
!2281 = !DILocation(line: 175, column: 8, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2268, file: !206, line: 175, column: 7)
!2283 = !DILocation(line: 175, column: 19, scope: !2282)
!2284 = !DILocation(line: 176, column: 5, scope: !2282)
!2285 = !DILocation(line: 177, column: 6, scope: !2268)
!2286 = !DILocation(line: 177, column: 17, scope: !2268)
!2287 = !{!2215, !426, i64 40}
!2288 = !DILocation(line: 178, column: 6, scope: !2268)
!2289 = !DILocation(line: 178, column: 18, scope: !2268)
!2290 = !{!2215, !426, i64 48}
!2291 = !DILocation(line: 179, column: 1, scope: !2268)
!2292 = distinct !DISubprogram(name: "quotearg_buffer", scope: !206, file: !206, line: 774, type: !2293, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!44, !95, !44, !47, !44, !2207}
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303}
!2296 = !DILocalVariable(name: "buffer", arg: 1, scope: !2292, file: !206, line: 774, type: !95)
!2297 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2292, file: !206, line: 774, type: !44)
!2298 = !DILocalVariable(name: "arg", arg: 3, scope: !2292, file: !206, line: 775, type: !47)
!2299 = !DILocalVariable(name: "argsize", arg: 4, scope: !2292, file: !206, line: 775, type: !44)
!2300 = !DILocalVariable(name: "o", arg: 5, scope: !2292, file: !206, line: 776, type: !2207)
!2301 = !DILocalVariable(name: "p", scope: !2292, file: !206, line: 778, type: !2207)
!2302 = !DILocalVariable(name: "saved_errno", scope: !2292, file: !206, line: 779, type: !42)
!2303 = !DILocalVariable(name: "r", scope: !2292, file: !206, line: 780, type: !44)
!2304 = !DILocation(line: 0, scope: !2292)
!2305 = !DILocation(line: 778, column: 37, scope: !2292)
!2306 = !DILocation(line: 779, column: 21, scope: !2292)
!2307 = !DILocation(line: 781, column: 43, scope: !2292)
!2308 = !DILocation(line: 781, column: 53, scope: !2292)
!2309 = !DILocation(line: 781, column: 60, scope: !2292)
!2310 = !DILocation(line: 782, column: 43, scope: !2292)
!2311 = !DILocation(line: 782, column: 58, scope: !2292)
!2312 = !DILocation(line: 780, column: 14, scope: !2292)
!2313 = !DILocation(line: 783, column: 9, scope: !2292)
!2314 = !DILocation(line: 784, column: 3, scope: !2292)
!2315 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !206, file: !206, line: 251, type: !2316, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2320)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!44, !95, !44, !47, !44, !208, !42, !2318, !47, !47}
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2320 = !{!2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2345, !2347, !2350, !2351, !2352, !2353, !2356, !2357, !2360, !2364, !2365, !2373, !2376, !2377, !2379, !2380, !2381, !2382}
!2321 = !DILocalVariable(name: "buffer", arg: 1, scope: !2315, file: !206, line: 251, type: !95)
!2322 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2315, file: !206, line: 251, type: !44)
!2323 = !DILocalVariable(name: "arg", arg: 3, scope: !2315, file: !206, line: 252, type: !47)
!2324 = !DILocalVariable(name: "argsize", arg: 4, scope: !2315, file: !206, line: 252, type: !44)
!2325 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2315, file: !206, line: 253, type: !208)
!2326 = !DILocalVariable(name: "flags", arg: 6, scope: !2315, file: !206, line: 253, type: !42)
!2327 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2315, file: !206, line: 254, type: !2318)
!2328 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2315, file: !206, line: 255, type: !47)
!2329 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2315, file: !206, line: 256, type: !47)
!2330 = !DILocalVariable(name: "unibyte_locale", scope: !2315, file: !206, line: 258, type: !74)
!2331 = !DILocalVariable(name: "len", scope: !2315, file: !206, line: 260, type: !44)
!2332 = !DILocalVariable(name: "orig_buffersize", scope: !2315, file: !206, line: 261, type: !44)
!2333 = !DILocalVariable(name: "quote_string", scope: !2315, file: !206, line: 262, type: !47)
!2334 = !DILocalVariable(name: "quote_string_len", scope: !2315, file: !206, line: 263, type: !44)
!2335 = !DILocalVariable(name: "backslash_escapes", scope: !2315, file: !206, line: 264, type: !74)
!2336 = !DILocalVariable(name: "elide_outer_quotes", scope: !2315, file: !206, line: 265, type: !74)
!2337 = !DILocalVariable(name: "encountered_single_quote", scope: !2315, file: !206, line: 266, type: !74)
!2338 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2315, file: !206, line: 267, type: !74)
!2339 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2315, file: !206, line: 309, type: !74)
!2340 = !DILocalVariable(name: "lq", scope: !2341, file: !206, line: 361, type: !47)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !206, line: 361, column: 11)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !206, line: 360, column: 13)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !206, line: 333, column: 7)
!2344 = distinct !DILexicalBlock(scope: !2315, file: !206, line: 312, column: 5)
!2345 = !DILocalVariable(name: "i", scope: !2346, file: !206, line: 395, type: !44)
!2346 = distinct !DILexicalBlock(scope: !2315, file: !206, line: 395, column: 3)
!2347 = !DILocalVariable(name: "is_right_quote", scope: !2348, file: !206, line: 397, type: !74)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !206, line: 396, column: 5)
!2349 = distinct !DILexicalBlock(scope: !2346, file: !206, line: 395, column: 3)
!2350 = !DILocalVariable(name: "escaping", scope: !2348, file: !206, line: 398, type: !74)
!2351 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2348, file: !206, line: 399, type: !74)
!2352 = !DILocalVariable(name: "c", scope: !2348, file: !206, line: 417, type: !50)
!2353 = !DILocalVariable(name: "m", scope: !2354, file: !206, line: 598, type: !44)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !206, line: 596, column: 11)
!2355 = distinct !DILexicalBlock(scope: !2348, file: !206, line: 419, column: 9)
!2356 = !DILocalVariable(name: "printable", scope: !2354, file: !206, line: 600, type: !74)
!2357 = !DILocalVariable(name: "mbs", scope: !2358, file: !206, line: 609, type: !269)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !206, line: 608, column: 15)
!2359 = distinct !DILexicalBlock(scope: !2354, file: !206, line: 602, column: 17)
!2360 = !DILocalVariable(name: "w", scope: !2361, file: !206, line: 618, type: !264)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !206, line: 617, column: 19)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !206, line: 616, column: 17)
!2363 = distinct !DILexicalBlock(scope: !2358, file: !206, line: 616, column: 17)
!2364 = !DILocalVariable(name: "bytes", scope: !2361, file: !206, line: 619, type: !44)
!2365 = !DILocalVariable(name: "j", scope: !2366, file: !206, line: 648, type: !44)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !206, line: 648, column: 29)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !206, line: 647, column: 27)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !206, line: 645, column: 29)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !206, line: 636, column: 23)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !206, line: 628, column: 30)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !206, line: 623, column: 30)
!2372 = distinct !DILexicalBlock(scope: !2361, file: !206, line: 621, column: 25)
!2373 = !DILocalVariable(name: "ilim", scope: !2374, file: !206, line: 674, type: !44)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !206, line: 671, column: 15)
!2375 = distinct !DILexicalBlock(scope: !2354, file: !206, line: 670, column: 17)
!2376 = !DILabel(scope: !2315, name: "process_input", file: !206, line: 308)
!2377 = !DILabel(scope: !2378, name: "c_and_shell_escape", file: !206, line: 502)
!2378 = distinct !DILexicalBlock(scope: !2355, file: !206, line: 478, column: 9)
!2379 = !DILabel(scope: !2378, name: "c_escape", file: !206, line: 507)
!2380 = !DILabel(scope: !2348, name: "store_escape", file: !206, line: 709)
!2381 = !DILabel(scope: !2348, name: "store_c", file: !206, line: 712)
!2382 = !DILabel(scope: !2315, name: "force_outer_quoting_style", file: !206, line: 753)
!2383 = !DILocation(line: 0, scope: !2315)
!2384 = !DILocation(line: 258, column: 25, scope: !2315)
!2385 = !DILocation(line: 258, column: 36, scope: !2315)
!2386 = !DILocation(line: 267, column: 3, scope: !2315)
!2387 = !DILocation(line: 261, column: 10, scope: !2315)
!2388 = !DILocation(line: 262, column: 15, scope: !2315)
!2389 = !DILocation(line: 263, column: 10, scope: !2315)
!2390 = !DILocation(line: 308, column: 2, scope: !2315)
!2391 = !DILocation(line: 311, column: 3, scope: !2315)
!2392 = !DILocation(line: 318, column: 11, scope: !2344)
!2393 = !DILocation(line: 319, column: 9, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !206, line: 319, column: 9)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !206, line: 319, column: 9)
!2396 = distinct !DILexicalBlock(scope: !2344, file: !206, line: 318, column: 11)
!2397 = !DILocation(line: 319, column: 9, scope: !2395)
!2398 = !DILocation(line: 0, scope: !256, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 357, column: 26, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !206, line: 335, column: 11)
!2401 = distinct !DILexicalBlock(scope: !2343, file: !206, line: 334, column: 13)
!2402 = !DILocation(line: 199, column: 29, scope: !256, inlinedAt: !2399)
!2403 = !DILocation(line: 201, column: 19, scope: !2404, inlinedAt: !2399)
!2404 = distinct !DILexicalBlock(scope: !256, file: !206, line: 201, column: 7)
!2405 = !DILocation(line: 201, column: 7, scope: !256, inlinedAt: !2399)
!2406 = !DILocation(line: 229, column: 3, scope: !256, inlinedAt: !2399)
!2407 = !DILocation(line: 230, column: 3, scope: !256, inlinedAt: !2399)
!2408 = !DILocation(line: 230, column: 13, scope: !256, inlinedAt: !2399)
!2409 = !DILocalVariable(name: "ps", arg: 1, scope: !2410, file: !2411, line: 1135, type: !2414)
!2410 = distinct !DISubprogram(name: "mbszero", scope: !2411, file: !2411, line: 1135, type: !2412, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2415)
!2411 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2412 = !DISubroutineType(types: !2413)
!2413 = !{null, !2414}
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!2415 = !{!2409}
!2416 = !DILocation(line: 0, scope: !2410, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 230, column: 18, scope: !256, inlinedAt: !2399)
!2418 = !DILocalVariable(name: "__dest", arg: 1, scope: !2419, file: !2420, line: 57, type: !135)
!2419 = distinct !DISubprogram(name: "memset", scope: !2420, file: !2420, line: 57, type: !2421, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2423)
!2420 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!135, !135, !42, !44}
!2423 = !{!2418, !2424, !2425}
!2424 = !DILocalVariable(name: "__ch", arg: 2, scope: !2419, file: !2420, line: 57, type: !42)
!2425 = !DILocalVariable(name: "__len", arg: 3, scope: !2419, file: !2420, line: 57, type: !44)
!2426 = !DILocation(line: 0, scope: !2419, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 1137, column: 3, scope: !2410, inlinedAt: !2417)
!2428 = !DILocation(line: 59, column: 10, scope: !2419, inlinedAt: !2427)
!2429 = !DILocation(line: 231, column: 7, scope: !2430, inlinedAt: !2399)
!2430 = distinct !DILexicalBlock(scope: !256, file: !206, line: 231, column: 7)
!2431 = !DILocation(line: 231, column: 40, scope: !2430, inlinedAt: !2399)
!2432 = !DILocation(line: 231, column: 45, scope: !2430, inlinedAt: !2399)
!2433 = !DILocation(line: 235, column: 1, scope: !256, inlinedAt: !2399)
!2434 = !DILocation(line: 0, scope: !256, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 358, column: 27, scope: !2400)
!2436 = !DILocation(line: 199, column: 29, scope: !256, inlinedAt: !2435)
!2437 = !DILocation(line: 201, column: 19, scope: !2404, inlinedAt: !2435)
!2438 = !DILocation(line: 201, column: 7, scope: !256, inlinedAt: !2435)
!2439 = !DILocation(line: 229, column: 3, scope: !256, inlinedAt: !2435)
!2440 = !DILocation(line: 230, column: 3, scope: !256, inlinedAt: !2435)
!2441 = !DILocation(line: 230, column: 13, scope: !256, inlinedAt: !2435)
!2442 = !DILocation(line: 0, scope: !2410, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 230, column: 18, scope: !256, inlinedAt: !2435)
!2444 = !DILocation(line: 0, scope: !2419, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 1137, column: 3, scope: !2410, inlinedAt: !2443)
!2446 = !DILocation(line: 59, column: 10, scope: !2419, inlinedAt: !2445)
!2447 = !DILocation(line: 231, column: 7, scope: !2430, inlinedAt: !2435)
!2448 = !DILocation(line: 231, column: 40, scope: !2430, inlinedAt: !2435)
!2449 = !DILocation(line: 231, column: 45, scope: !2430, inlinedAt: !2435)
!2450 = !DILocation(line: 235, column: 1, scope: !256, inlinedAt: !2435)
!2451 = !DILocation(line: 360, column: 13, scope: !2343)
!2452 = !DILocation(line: 0, scope: !2341)
!2453 = !DILocation(line: 361, column: 45, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2341, file: !206, line: 361, column: 11)
!2455 = !DILocation(line: 361, column: 11, scope: !2341)
!2456 = !DILocation(line: 362, column: 13, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !206, line: 362, column: 13)
!2458 = distinct !DILexicalBlock(scope: !2454, file: !206, line: 362, column: 13)
!2459 = !DILocation(line: 362, column: 13, scope: !2458)
!2460 = !DILocation(line: 361, column: 52, scope: !2454)
!2461 = distinct !{!2461, !2455, !2462, !520}
!2462 = !DILocation(line: 362, column: 13, scope: !2341)
!2463 = !DILocation(line: 260, column: 10, scope: !2315)
!2464 = !DILocation(line: 365, column: 28, scope: !2343)
!2465 = !DILocation(line: 367, column: 7, scope: !2344)
!2466 = !DILocation(line: 370, column: 7, scope: !2344)
!2467 = !DILocation(line: 376, column: 11, scope: !2344)
!2468 = !DILocation(line: 381, column: 11, scope: !2344)
!2469 = !DILocation(line: 382, column: 9, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !206, line: 382, column: 9)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !206, line: 382, column: 9)
!2472 = distinct !DILexicalBlock(scope: !2344, file: !206, line: 381, column: 11)
!2473 = !DILocation(line: 382, column: 9, scope: !2471)
!2474 = !DILocation(line: 389, column: 7, scope: !2344)
!2475 = !DILocation(line: 392, column: 7, scope: !2344)
!2476 = !DILocation(line: 0, scope: !2346)
!2477 = !DILocation(line: 395, column: 8, scope: !2346)
!2478 = !DILocation(line: 395, column: 34, scope: !2349)
!2479 = !DILocation(line: 395, column: 26, scope: !2349)
!2480 = !DILocation(line: 395, column: 48, scope: !2349)
!2481 = !DILocation(line: 395, column: 55, scope: !2349)
!2482 = !DILocation(line: 395, column: 3, scope: !2346)
!2483 = !DILocation(line: 395, column: 67, scope: !2349)
!2484 = !DILocation(line: 0, scope: !2348)
!2485 = !DILocation(line: 402, column: 11, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2348, file: !206, line: 401, column: 11)
!2487 = !DILocation(line: 404, column: 17, scope: !2486)
!2488 = !DILocation(line: 405, column: 39, scope: !2486)
!2489 = !DILocation(line: 409, column: 32, scope: !2486)
!2490 = !DILocation(line: 405, column: 19, scope: !2486)
!2491 = !DILocation(line: 405, column: 15, scope: !2486)
!2492 = !DILocation(line: 410, column: 11, scope: !2486)
!2493 = !DILocation(line: 410, column: 25, scope: !2486)
!2494 = !DILocalVariable(name: "__s1", arg: 1, scope: !2495, file: !504, line: 974, type: !672)
!2495 = distinct !DISubprogram(name: "memeq", scope: !504, file: !504, line: 974, type: !2171, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2496)
!2496 = !{!2494, !2497, !2498}
!2497 = !DILocalVariable(name: "__s2", arg: 2, scope: !2495, file: !504, line: 974, type: !672)
!2498 = !DILocalVariable(name: "__n", arg: 3, scope: !2495, file: !504, line: 974, type: !44)
!2499 = !DILocation(line: 0, scope: !2495, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 410, column: 14, scope: !2486)
!2501 = !DILocation(line: 976, column: 11, scope: !2495, inlinedAt: !2500)
!2502 = !DILocation(line: 976, column: 10, scope: !2495, inlinedAt: !2500)
!2503 = !DILocation(line: 401, column: 11, scope: !2348)
!2504 = !DILocation(line: 417, column: 25, scope: !2348)
!2505 = !DILocation(line: 418, column: 7, scope: !2348)
!2506 = !DILocation(line: 421, column: 15, scope: !2355)
!2507 = !DILocation(line: 423, column: 15, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !206, line: 423, column: 15)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !206, line: 422, column: 13)
!2510 = distinct !DILexicalBlock(scope: !2355, file: !206, line: 421, column: 15)
!2511 = !DILocation(line: 423, column: 15, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2508, file: !206, line: 423, column: 15)
!2513 = !DILocation(line: 423, column: 15, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !206, line: 423, column: 15)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !206, line: 423, column: 15)
!2516 = distinct !DILexicalBlock(scope: !2512, file: !206, line: 423, column: 15)
!2517 = !DILocation(line: 423, column: 15, scope: !2515)
!2518 = !DILocation(line: 423, column: 15, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !206, line: 423, column: 15)
!2520 = distinct !DILexicalBlock(scope: !2516, file: !206, line: 423, column: 15)
!2521 = !DILocation(line: 423, column: 15, scope: !2520)
!2522 = !DILocation(line: 423, column: 15, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !206, line: 423, column: 15)
!2524 = distinct !DILexicalBlock(scope: !2516, file: !206, line: 423, column: 15)
!2525 = !DILocation(line: 423, column: 15, scope: !2524)
!2526 = !DILocation(line: 423, column: 15, scope: !2516)
!2527 = !DILocation(line: 423, column: 15, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !206, line: 423, column: 15)
!2529 = distinct !DILexicalBlock(scope: !2508, file: !206, line: 423, column: 15)
!2530 = !DILocation(line: 423, column: 15, scope: !2529)
!2531 = !DILocation(line: 431, column: 19, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2509, file: !206, line: 430, column: 19)
!2533 = !DILocation(line: 431, column: 24, scope: !2532)
!2534 = !DILocation(line: 431, column: 28, scope: !2532)
!2535 = !DILocation(line: 431, column: 38, scope: !2532)
!2536 = !DILocation(line: 431, column: 48, scope: !2532)
!2537 = !DILocation(line: 431, column: 59, scope: !2532)
!2538 = !DILocation(line: 433, column: 19, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !206, line: 433, column: 19)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !206, line: 433, column: 19)
!2541 = distinct !DILexicalBlock(scope: !2532, file: !206, line: 432, column: 17)
!2542 = !DILocation(line: 433, column: 19, scope: !2540)
!2543 = !DILocation(line: 434, column: 19, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !206, line: 434, column: 19)
!2545 = distinct !DILexicalBlock(scope: !2541, file: !206, line: 434, column: 19)
!2546 = !DILocation(line: 434, column: 19, scope: !2545)
!2547 = !DILocation(line: 435, column: 17, scope: !2541)
!2548 = !DILocation(line: 442, column: 20, scope: !2510)
!2549 = !DILocation(line: 447, column: 11, scope: !2355)
!2550 = !DILocation(line: 450, column: 19, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2355, file: !206, line: 448, column: 13)
!2552 = !DILocation(line: 456, column: 19, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2551, file: !206, line: 455, column: 19)
!2554 = !DILocation(line: 456, column: 24, scope: !2553)
!2555 = !DILocation(line: 456, column: 28, scope: !2553)
!2556 = !DILocation(line: 456, column: 38, scope: !2553)
!2557 = !DILocation(line: 456, column: 47, scope: !2553)
!2558 = !DILocation(line: 456, column: 41, scope: !2553)
!2559 = !DILocation(line: 456, column: 52, scope: !2553)
!2560 = !DILocation(line: 455, column: 19, scope: !2551)
!2561 = !DILocation(line: 457, column: 25, scope: !2553)
!2562 = !DILocation(line: 457, column: 17, scope: !2553)
!2563 = !DILocation(line: 464, column: 25, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2553, file: !206, line: 458, column: 19)
!2565 = !DILocation(line: 468, column: 21, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !206, line: 468, column: 21)
!2567 = distinct !DILexicalBlock(scope: !2564, file: !206, line: 468, column: 21)
!2568 = !DILocation(line: 468, column: 21, scope: !2567)
!2569 = !DILocation(line: 469, column: 21, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !206, line: 469, column: 21)
!2571 = distinct !DILexicalBlock(scope: !2564, file: !206, line: 469, column: 21)
!2572 = !DILocation(line: 469, column: 21, scope: !2571)
!2573 = !DILocation(line: 470, column: 21, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !206, line: 470, column: 21)
!2575 = distinct !DILexicalBlock(scope: !2564, file: !206, line: 470, column: 21)
!2576 = !DILocation(line: 470, column: 21, scope: !2575)
!2577 = !DILocation(line: 471, column: 21, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !206, line: 471, column: 21)
!2579 = distinct !DILexicalBlock(scope: !2564, file: !206, line: 471, column: 21)
!2580 = !DILocation(line: 471, column: 21, scope: !2579)
!2581 = !DILocation(line: 472, column: 21, scope: !2564)
!2582 = !DILocation(line: 482, column: 33, scope: !2378)
!2583 = !DILocation(line: 483, column: 33, scope: !2378)
!2584 = !DILocation(line: 485, column: 33, scope: !2378)
!2585 = !DILocation(line: 486, column: 33, scope: !2378)
!2586 = !DILocation(line: 487, column: 33, scope: !2378)
!2587 = !DILocation(line: 490, column: 17, scope: !2378)
!2588 = !DILocation(line: 492, column: 21, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !206, line: 491, column: 15)
!2590 = distinct !DILexicalBlock(scope: !2378, file: !206, line: 490, column: 17)
!2591 = !DILocation(line: 499, column: 35, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2378, file: !206, line: 499, column: 17)
!2593 = !DILocation(line: 499, column: 57, scope: !2592)
!2594 = !DILocation(line: 0, scope: !2378)
!2595 = !DILocation(line: 502, column: 11, scope: !2378)
!2596 = !DILocation(line: 504, column: 17, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2378, file: !206, line: 503, column: 17)
!2598 = !DILocation(line: 507, column: 11, scope: !2378)
!2599 = !DILocation(line: 508, column: 17, scope: !2378)
!2600 = !DILocation(line: 517, column: 15, scope: !2355)
!2601 = !DILocation(line: 517, column: 40, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2355, file: !206, line: 517, column: 15)
!2603 = !DILocation(line: 517, column: 47, scope: !2602)
!2604 = !DILocation(line: 517, column: 18, scope: !2602)
!2605 = !DILocation(line: 521, column: 17, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2355, file: !206, line: 521, column: 15)
!2607 = !DILocation(line: 521, column: 15, scope: !2355)
!2608 = !DILocation(line: 525, column: 11, scope: !2355)
!2609 = !DILocation(line: 537, column: 15, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2355, file: !206, line: 536, column: 15)
!2611 = !DILocation(line: 536, column: 15, scope: !2355)
!2612 = !DILocation(line: 544, column: 15, scope: !2355)
!2613 = !DILocation(line: 546, column: 19, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !206, line: 545, column: 13)
!2615 = distinct !DILexicalBlock(scope: !2355, file: !206, line: 544, column: 15)
!2616 = !DILocation(line: 549, column: 19, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2614, file: !206, line: 549, column: 19)
!2618 = !DILocation(line: 549, column: 30, scope: !2617)
!2619 = !DILocation(line: 558, column: 15, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !206, line: 558, column: 15)
!2621 = distinct !DILexicalBlock(scope: !2614, file: !206, line: 558, column: 15)
!2622 = !DILocation(line: 558, column: 15, scope: !2621)
!2623 = !DILocation(line: 559, column: 15, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !206, line: 559, column: 15)
!2625 = distinct !DILexicalBlock(scope: !2614, file: !206, line: 559, column: 15)
!2626 = !DILocation(line: 559, column: 15, scope: !2625)
!2627 = !DILocation(line: 560, column: 15, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !206, line: 560, column: 15)
!2629 = distinct !DILexicalBlock(scope: !2614, file: !206, line: 560, column: 15)
!2630 = !DILocation(line: 560, column: 15, scope: !2629)
!2631 = !DILocation(line: 562, column: 13, scope: !2614)
!2632 = !DILocation(line: 602, column: 17, scope: !2354)
!2633 = !DILocation(line: 0, scope: !2354)
!2634 = !DILocation(line: 605, column: 29, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2359, file: !206, line: 603, column: 15)
!2636 = !DILocation(line: 605, column: 41, scope: !2635)
!2637 = !DILocation(line: 670, column: 23, scope: !2375)
!2638 = !DILocation(line: 609, column: 17, scope: !2358)
!2639 = !DILocation(line: 609, column: 27, scope: !2358)
!2640 = !DILocation(line: 0, scope: !2410, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 609, column: 32, scope: !2358)
!2642 = !DILocation(line: 0, scope: !2419, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 1137, column: 3, scope: !2410, inlinedAt: !2641)
!2644 = !DILocation(line: 59, column: 10, scope: !2419, inlinedAt: !2643)
!2645 = !DILocation(line: 613, column: 29, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2358, file: !206, line: 613, column: 21)
!2647 = !DILocation(line: 613, column: 21, scope: !2358)
!2648 = !DILocation(line: 614, column: 29, scope: !2646)
!2649 = !DILocation(line: 614, column: 19, scope: !2646)
!2650 = !DILocation(line: 618, column: 21, scope: !2361)
!2651 = !DILocation(line: 620, column: 54, scope: !2361)
!2652 = !DILocation(line: 0, scope: !2361)
!2653 = !DILocation(line: 619, column: 36, scope: !2361)
!2654 = !DILocation(line: 621, column: 25, scope: !2361)
!2655 = !DILocation(line: 631, column: 38, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2370, file: !206, line: 629, column: 23)
!2657 = !DILocation(line: 631, column: 48, scope: !2656)
!2658 = !DILocation(line: 665, column: 19, scope: !2362)
!2659 = !DILocation(line: 666, column: 15, scope: !2359)
!2660 = !DILocation(line: 626, column: 25, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2371, file: !206, line: 624, column: 23)
!2662 = !DILocation(line: 631, column: 51, scope: !2656)
!2663 = !DILocation(line: 631, column: 25, scope: !2656)
!2664 = !DILocation(line: 632, column: 28, scope: !2656)
!2665 = !DILocation(line: 631, column: 34, scope: !2656)
!2666 = distinct !{!2666, !2663, !2664, !520}
!2667 = !DILocation(line: 646, column: 29, scope: !2368)
!2668 = !DILocation(line: 0, scope: !2366)
!2669 = !DILocation(line: 649, column: 49, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2366, file: !206, line: 648, column: 29)
!2671 = !DILocation(line: 649, column: 39, scope: !2670)
!2672 = !DILocation(line: 649, column: 31, scope: !2670)
!2673 = !DILocation(line: 648, column: 60, scope: !2670)
!2674 = !DILocation(line: 648, column: 50, scope: !2670)
!2675 = !DILocation(line: 648, column: 29, scope: !2366)
!2676 = distinct !{!2676, !2675, !2677, !520}
!2677 = !DILocation(line: 654, column: 33, scope: !2366)
!2678 = !DILocation(line: 657, column: 43, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2369, file: !206, line: 657, column: 29)
!2680 = !DILocalVariable(name: "wc", arg: 1, scope: !2681, file: !2682, line: 865, type: !2685)
!2681 = distinct !DISubprogram(name: "c32isprint", scope: !2682, file: !2682, line: 865, type: !2683, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2687)
!2682 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!42, !2685}
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2686, line: 20, baseType: !6)
!2686 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2687 = !{!2680}
!2688 = !DILocation(line: 0, scope: !2681, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 657, column: 31, scope: !2679)
!2690 = !DILocation(line: 871, column: 10, scope: !2681, inlinedAt: !2689)
!2691 = !DILocation(line: 657, column: 31, scope: !2679)
!2692 = !DILocation(line: 664, column: 23, scope: !2361)
!2693 = !DILocation(line: 753, column: 2, scope: !2315)
!2694 = !DILocation(line: 756, column: 51, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2315, file: !206, line: 756, column: 7)
!2696 = !DILocation(line: 670, column: 19, scope: !2375)
!2697 = !DILocation(line: 670, column: 45, scope: !2375)
!2698 = !DILocation(line: 674, column: 33, scope: !2374)
!2699 = !DILocation(line: 0, scope: !2374)
!2700 = !DILocation(line: 676, column: 17, scope: !2374)
!2701 = !DILocation(line: 398, column: 12, scope: !2348)
!2702 = !DILocation(line: 678, column: 43, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !206, line: 678, column: 25)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !206, line: 677, column: 19)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !206, line: 676, column: 17)
!2706 = distinct !DILexicalBlock(scope: !2374, file: !206, line: 676, column: 17)
!2707 = !DILocation(line: 680, column: 25, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !206, line: 680, column: 25)
!2709 = distinct !DILexicalBlock(scope: !2703, file: !206, line: 679, column: 23)
!2710 = !DILocation(line: 680, column: 25, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2708, file: !206, line: 680, column: 25)
!2712 = !DILocation(line: 680, column: 25, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !206, line: 680, column: 25)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !206, line: 680, column: 25)
!2715 = distinct !DILexicalBlock(scope: !2711, file: !206, line: 680, column: 25)
!2716 = !DILocation(line: 680, column: 25, scope: !2714)
!2717 = !DILocation(line: 680, column: 25, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !206, line: 680, column: 25)
!2719 = distinct !DILexicalBlock(scope: !2715, file: !206, line: 680, column: 25)
!2720 = !DILocation(line: 680, column: 25, scope: !2719)
!2721 = !DILocation(line: 680, column: 25, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !206, line: 680, column: 25)
!2723 = distinct !DILexicalBlock(scope: !2715, file: !206, line: 680, column: 25)
!2724 = !DILocation(line: 680, column: 25, scope: !2723)
!2725 = !DILocation(line: 680, column: 25, scope: !2715)
!2726 = !DILocation(line: 680, column: 25, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !206, line: 680, column: 25)
!2728 = distinct !DILexicalBlock(scope: !2708, file: !206, line: 680, column: 25)
!2729 = !DILocation(line: 680, column: 25, scope: !2728)
!2730 = !DILocation(line: 681, column: 25, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !206, line: 681, column: 25)
!2732 = distinct !DILexicalBlock(scope: !2709, file: !206, line: 681, column: 25)
!2733 = !DILocation(line: 681, column: 25, scope: !2732)
!2734 = !DILocation(line: 682, column: 25, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !206, line: 682, column: 25)
!2736 = distinct !DILexicalBlock(scope: !2709, file: !206, line: 682, column: 25)
!2737 = !DILocation(line: 682, column: 25, scope: !2736)
!2738 = !DILocation(line: 683, column: 38, scope: !2709)
!2739 = !DILocation(line: 683, column: 33, scope: !2709)
!2740 = !DILocation(line: 684, column: 23, scope: !2709)
!2741 = !DILocation(line: 685, column: 30, scope: !2703)
!2742 = !DILocation(line: 687, column: 25, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !206, line: 687, column: 25)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !206, line: 687, column: 25)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !206, line: 686, column: 23)
!2746 = distinct !DILexicalBlock(scope: !2703, file: !206, line: 685, column: 30)
!2747 = !DILocation(line: 687, column: 25, scope: !2744)
!2748 = !DILocation(line: 689, column: 23, scope: !2745)
!2749 = !DILocation(line: 690, column: 35, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2704, file: !206, line: 690, column: 25)
!2751 = !DILocation(line: 690, column: 30, scope: !2750)
!2752 = !DILocation(line: 690, column: 25, scope: !2704)
!2753 = !DILocation(line: 692, column: 21, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !206, line: 692, column: 21)
!2755 = distinct !DILexicalBlock(scope: !2704, file: !206, line: 692, column: 21)
!2756 = !DILocation(line: 692, column: 21, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !206, line: 692, column: 21)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !206, line: 692, column: 21)
!2759 = distinct !DILexicalBlock(scope: !2754, file: !206, line: 692, column: 21)
!2760 = !DILocation(line: 692, column: 21, scope: !2758)
!2761 = !DILocation(line: 692, column: 21, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !206, line: 692, column: 21)
!2763 = distinct !DILexicalBlock(scope: !2759, file: !206, line: 692, column: 21)
!2764 = !DILocation(line: 692, column: 21, scope: !2763)
!2765 = !DILocation(line: 692, column: 21, scope: !2759)
!2766 = !DILocation(line: 0, scope: !2704)
!2767 = !DILocation(line: 693, column: 21, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !206, line: 693, column: 21)
!2769 = distinct !DILexicalBlock(scope: !2704, file: !206, line: 693, column: 21)
!2770 = !DILocation(line: 693, column: 21, scope: !2769)
!2771 = !DILocation(line: 694, column: 25, scope: !2704)
!2772 = !DILocation(line: 676, column: 17, scope: !2705)
!2773 = distinct !{!2773, !2774, !2775}
!2774 = !DILocation(line: 676, column: 17, scope: !2706)
!2775 = !DILocation(line: 695, column: 19, scope: !2706)
!2776 = !DILocation(line: 409, column: 30, scope: !2486)
!2777 = !DILocation(line: 702, column: 34, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2348, file: !206, line: 702, column: 11)
!2779 = !DILocation(line: 704, column: 14, scope: !2778)
!2780 = !DILocation(line: 705, column: 14, scope: !2778)
!2781 = !DILocation(line: 705, column: 35, scope: !2778)
!2782 = !DILocation(line: 705, column: 17, scope: !2778)
!2783 = !DILocation(line: 705, column: 47, scope: !2778)
!2784 = !DILocation(line: 705, column: 65, scope: !2778)
!2785 = !DILocation(line: 706, column: 11, scope: !2778)
!2786 = !DILocation(line: 702, column: 11, scope: !2348)
!2787 = !DILocation(line: 395, column: 15, scope: !2346)
!2788 = !DILocation(line: 709, column: 5, scope: !2348)
!2789 = !DILocation(line: 710, column: 7, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2348, file: !206, line: 710, column: 7)
!2791 = !DILocation(line: 710, column: 7, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2790, file: !206, line: 710, column: 7)
!2793 = !DILocation(line: 710, column: 7, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !206, line: 710, column: 7)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !206, line: 710, column: 7)
!2796 = distinct !DILexicalBlock(scope: !2792, file: !206, line: 710, column: 7)
!2797 = !DILocation(line: 710, column: 7, scope: !2795)
!2798 = !DILocation(line: 710, column: 7, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !206, line: 710, column: 7)
!2800 = distinct !DILexicalBlock(scope: !2796, file: !206, line: 710, column: 7)
!2801 = !DILocation(line: 710, column: 7, scope: !2800)
!2802 = !DILocation(line: 710, column: 7, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !206, line: 710, column: 7)
!2804 = distinct !DILexicalBlock(scope: !2796, file: !206, line: 710, column: 7)
!2805 = !DILocation(line: 710, column: 7, scope: !2804)
!2806 = !DILocation(line: 710, column: 7, scope: !2796)
!2807 = !DILocation(line: 710, column: 7, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !206, line: 710, column: 7)
!2809 = distinct !DILexicalBlock(scope: !2790, file: !206, line: 710, column: 7)
!2810 = !DILocation(line: 710, column: 7, scope: !2809)
!2811 = !DILocation(line: 712, column: 5, scope: !2348)
!2812 = !DILocation(line: 713, column: 7, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !206, line: 713, column: 7)
!2814 = distinct !DILexicalBlock(scope: !2348, file: !206, line: 713, column: 7)
!2815 = !DILocation(line: 417, column: 21, scope: !2348)
!2816 = !DILocation(line: 713, column: 7, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !206, line: 713, column: 7)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !206, line: 713, column: 7)
!2819 = distinct !DILexicalBlock(scope: !2813, file: !206, line: 713, column: 7)
!2820 = !DILocation(line: 713, column: 7, scope: !2818)
!2821 = !DILocation(line: 713, column: 7, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !206, line: 713, column: 7)
!2823 = distinct !DILexicalBlock(scope: !2819, file: !206, line: 713, column: 7)
!2824 = !DILocation(line: 713, column: 7, scope: !2823)
!2825 = !DILocation(line: 713, column: 7, scope: !2819)
!2826 = !DILocation(line: 714, column: 7, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !206, line: 714, column: 7)
!2828 = distinct !DILexicalBlock(scope: !2348, file: !206, line: 714, column: 7)
!2829 = !DILocation(line: 714, column: 7, scope: !2828)
!2830 = !DILocation(line: 716, column: 11, scope: !2348)
!2831 = !DILocation(line: 718, column: 5, scope: !2349)
!2832 = !DILocation(line: 395, column: 82, scope: !2349)
!2833 = !DILocation(line: 395, column: 3, scope: !2349)
!2834 = distinct !{!2834, !2482, !2835, !520}
!2835 = !DILocation(line: 718, column: 5, scope: !2346)
!2836 = !DILocation(line: 720, column: 11, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2315, file: !206, line: 720, column: 7)
!2838 = !DILocation(line: 720, column: 16, scope: !2837)
!2839 = !DILocation(line: 728, column: 51, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2315, file: !206, line: 728, column: 7)
!2841 = !DILocation(line: 731, column: 11, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2840, file: !206, line: 730, column: 5)
!2843 = !DILocation(line: 732, column: 16, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2842, file: !206, line: 731, column: 11)
!2845 = !DILocation(line: 732, column: 9, scope: !2844)
!2846 = !DILocation(line: 736, column: 18, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2844, file: !206, line: 736, column: 16)
!2848 = !DILocation(line: 736, column: 29, scope: !2847)
!2849 = !DILocation(line: 745, column: 7, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2315, file: !206, line: 745, column: 7)
!2851 = !DILocation(line: 745, column: 20, scope: !2850)
!2852 = !DILocation(line: 746, column: 12, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !206, line: 746, column: 5)
!2854 = distinct !DILexicalBlock(scope: !2850, file: !206, line: 746, column: 5)
!2855 = !DILocation(line: 746, column: 5, scope: !2854)
!2856 = !DILocation(line: 747, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !206, line: 747, column: 7)
!2858 = distinct !DILexicalBlock(scope: !2853, file: !206, line: 747, column: 7)
!2859 = !DILocation(line: 747, column: 7, scope: !2858)
!2860 = !DILocation(line: 746, column: 39, scope: !2853)
!2861 = distinct !{!2861, !2855, !2862, !520}
!2862 = !DILocation(line: 747, column: 7, scope: !2854)
!2863 = !DILocation(line: 749, column: 11, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2315, file: !206, line: 749, column: 7)
!2865 = !DILocation(line: 749, column: 7, scope: !2315)
!2866 = !DILocation(line: 750, column: 5, scope: !2864)
!2867 = !DILocation(line: 750, column: 17, scope: !2864)
!2868 = !DILocation(line: 756, column: 21, scope: !2695)
!2869 = !DILocation(line: 760, column: 42, scope: !2315)
!2870 = !DILocation(line: 758, column: 10, scope: !2315)
!2871 = !DILocation(line: 758, column: 3, scope: !2315)
!2872 = !DILocation(line: 762, column: 1, scope: !2315)
!2873 = !DISubprogram(name: "iswprint", scope: !2874, file: !2874, line: 120, type: !2683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!2874 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2875 = distinct !DISubprogram(name: "quotearg_alloc", scope: !206, file: !206, line: 788, type: !2876, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2878)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!95, !47, !44, !2207}
!2878 = !{!2879, !2880, !2881}
!2879 = !DILocalVariable(name: "arg", arg: 1, scope: !2875, file: !206, line: 788, type: !47)
!2880 = !DILocalVariable(name: "argsize", arg: 2, scope: !2875, file: !206, line: 788, type: !44)
!2881 = !DILocalVariable(name: "o", arg: 3, scope: !2875, file: !206, line: 789, type: !2207)
!2882 = !DILocation(line: 0, scope: !2875)
!2883 = !DILocalVariable(name: "arg", arg: 1, scope: !2884, file: !206, line: 801, type: !47)
!2884 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !206, file: !206, line: 801, type: !2885, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2887)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!95, !47, !44, !356, !2207}
!2887 = !{!2883, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895}
!2888 = !DILocalVariable(name: "argsize", arg: 2, scope: !2884, file: !206, line: 801, type: !44)
!2889 = !DILocalVariable(name: "size", arg: 3, scope: !2884, file: !206, line: 801, type: !356)
!2890 = !DILocalVariable(name: "o", arg: 4, scope: !2884, file: !206, line: 802, type: !2207)
!2891 = !DILocalVariable(name: "p", scope: !2884, file: !206, line: 804, type: !2207)
!2892 = !DILocalVariable(name: "saved_errno", scope: !2884, file: !206, line: 805, type: !42)
!2893 = !DILocalVariable(name: "flags", scope: !2884, file: !206, line: 807, type: !42)
!2894 = !DILocalVariable(name: "bufsize", scope: !2884, file: !206, line: 808, type: !44)
!2895 = !DILocalVariable(name: "buf", scope: !2884, file: !206, line: 812, type: !95)
!2896 = !DILocation(line: 0, scope: !2884, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 791, column: 10, scope: !2875)
!2898 = !DILocation(line: 804, column: 37, scope: !2884, inlinedAt: !2897)
!2899 = !DILocation(line: 805, column: 21, scope: !2884, inlinedAt: !2897)
!2900 = !DILocation(line: 807, column: 18, scope: !2884, inlinedAt: !2897)
!2901 = !DILocation(line: 807, column: 24, scope: !2884, inlinedAt: !2897)
!2902 = !DILocation(line: 808, column: 72, scope: !2884, inlinedAt: !2897)
!2903 = !DILocation(line: 809, column: 53, scope: !2884, inlinedAt: !2897)
!2904 = !DILocation(line: 810, column: 49, scope: !2884, inlinedAt: !2897)
!2905 = !DILocation(line: 811, column: 49, scope: !2884, inlinedAt: !2897)
!2906 = !DILocation(line: 808, column: 20, scope: !2884, inlinedAt: !2897)
!2907 = !DILocation(line: 811, column: 62, scope: !2884, inlinedAt: !2897)
!2908 = !DILocation(line: 812, column: 15, scope: !2884, inlinedAt: !2897)
!2909 = !DILocation(line: 813, column: 60, scope: !2884, inlinedAt: !2897)
!2910 = !DILocation(line: 815, column: 32, scope: !2884, inlinedAt: !2897)
!2911 = !DILocation(line: 815, column: 47, scope: !2884, inlinedAt: !2897)
!2912 = !DILocation(line: 813, column: 3, scope: !2884, inlinedAt: !2897)
!2913 = !DILocation(line: 816, column: 9, scope: !2884, inlinedAt: !2897)
!2914 = !DILocation(line: 791, column: 3, scope: !2875)
!2915 = !DILocation(line: 0, scope: !2884)
!2916 = !DILocation(line: 804, column: 37, scope: !2884)
!2917 = !DILocation(line: 805, column: 21, scope: !2884)
!2918 = !DILocation(line: 807, column: 18, scope: !2884)
!2919 = !DILocation(line: 807, column: 27, scope: !2884)
!2920 = !DILocation(line: 807, column: 24, scope: !2884)
!2921 = !DILocation(line: 808, column: 72, scope: !2884)
!2922 = !DILocation(line: 809, column: 53, scope: !2884)
!2923 = !DILocation(line: 810, column: 49, scope: !2884)
!2924 = !DILocation(line: 811, column: 49, scope: !2884)
!2925 = !DILocation(line: 808, column: 20, scope: !2884)
!2926 = !DILocation(line: 811, column: 62, scope: !2884)
!2927 = !DILocation(line: 812, column: 15, scope: !2884)
!2928 = !DILocation(line: 813, column: 60, scope: !2884)
!2929 = !DILocation(line: 815, column: 32, scope: !2884)
!2930 = !DILocation(line: 815, column: 47, scope: !2884)
!2931 = !DILocation(line: 813, column: 3, scope: !2884)
!2932 = !DILocation(line: 816, column: 9, scope: !2884)
!2933 = !DILocation(line: 817, column: 7, scope: !2884)
!2934 = !DILocation(line: 818, column: 11, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2884, file: !206, line: 817, column: 7)
!2936 = !{!1060, !1060, i64 0}
!2937 = !DILocation(line: 818, column: 5, scope: !2935)
!2938 = !DILocation(line: 819, column: 3, scope: !2884)
!2939 = distinct !DISubprogram(name: "quotearg_free", scope: !206, file: !206, line: 837, type: !195, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2940)
!2940 = !{!2941, !2942}
!2941 = !DILocalVariable(name: "sv", scope: !2939, file: !206, line: 839, type: !289)
!2942 = !DILocalVariable(name: "i", scope: !2943, file: !206, line: 840, type: !42)
!2943 = distinct !DILexicalBlock(scope: !2939, file: !206, line: 840, column: 3)
!2944 = !DILocation(line: 839, column: 24, scope: !2939)
!2945 = !DILocation(line: 0, scope: !2939)
!2946 = !DILocation(line: 0, scope: !2943)
!2947 = !DILocation(line: 840, column: 21, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2943, file: !206, line: 840, column: 3)
!2949 = !DILocation(line: 840, column: 3, scope: !2943)
!2950 = !DILocation(line: 842, column: 13, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2939, file: !206, line: 842, column: 7)
!2952 = !{!2953, !426, i64 8}
!2953 = !{!"slotvec", !1060, i64 0, !426, i64 8}
!2954 = !DILocation(line: 842, column: 17, scope: !2951)
!2955 = !DILocation(line: 842, column: 7, scope: !2939)
!2956 = !DILocation(line: 841, column: 17, scope: !2948)
!2957 = !DILocation(line: 841, column: 5, scope: !2948)
!2958 = !DILocation(line: 840, column: 32, scope: !2948)
!2959 = distinct !{!2959, !2949, !2960, !520}
!2960 = !DILocation(line: 841, column: 20, scope: !2943)
!2961 = !DILocation(line: 844, column: 7, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2951, file: !206, line: 843, column: 5)
!2963 = !DILocation(line: 845, column: 21, scope: !2962)
!2964 = !{!2953, !1060, i64 0}
!2965 = !DILocation(line: 846, column: 20, scope: !2962)
!2966 = !DILocation(line: 847, column: 5, scope: !2962)
!2967 = !DILocation(line: 848, column: 10, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2939, file: !206, line: 848, column: 7)
!2969 = !DILocation(line: 848, column: 7, scope: !2939)
!2970 = !DILocation(line: 850, column: 13, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2968, file: !206, line: 849, column: 5)
!2972 = !DILocation(line: 850, column: 7, scope: !2971)
!2973 = !DILocation(line: 851, column: 15, scope: !2971)
!2974 = !DILocation(line: 852, column: 5, scope: !2971)
!2975 = !DILocation(line: 853, column: 10, scope: !2939)
!2976 = !DILocation(line: 854, column: 1, scope: !2939)
!2977 = distinct !DISubprogram(name: "quotearg_n", scope: !206, file: !206, line: 919, type: !662, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2978)
!2978 = !{!2979, !2980}
!2979 = !DILocalVariable(name: "n", arg: 1, scope: !2977, file: !206, line: 919, type: !42)
!2980 = !DILocalVariable(name: "arg", arg: 2, scope: !2977, file: !206, line: 919, type: !47)
!2981 = !DILocation(line: 0, scope: !2977)
!2982 = !DILocation(line: 921, column: 10, scope: !2977)
!2983 = !DILocation(line: 921, column: 3, scope: !2977)
!2984 = distinct !DISubprogram(name: "quotearg_n_options", scope: !206, file: !206, line: 866, type: !2985, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!95, !42, !47, !44, !2207}
!2987 = !{!2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2998, !2999, !3001, !3002, !3003}
!2988 = !DILocalVariable(name: "n", arg: 1, scope: !2984, file: !206, line: 866, type: !42)
!2989 = !DILocalVariable(name: "arg", arg: 2, scope: !2984, file: !206, line: 866, type: !47)
!2990 = !DILocalVariable(name: "argsize", arg: 3, scope: !2984, file: !206, line: 866, type: !44)
!2991 = !DILocalVariable(name: "options", arg: 4, scope: !2984, file: !206, line: 867, type: !2207)
!2992 = !DILocalVariable(name: "saved_errno", scope: !2984, file: !206, line: 869, type: !42)
!2993 = !DILocalVariable(name: "sv", scope: !2984, file: !206, line: 871, type: !289)
!2994 = !DILocalVariable(name: "nslots_max", scope: !2984, file: !206, line: 873, type: !42)
!2995 = !DILocalVariable(name: "preallocated", scope: !2996, file: !206, line: 879, type: !74)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !206, line: 878, column: 5)
!2997 = distinct !DILexicalBlock(scope: !2984, file: !206, line: 877, column: 7)
!2998 = !DILocalVariable(name: "new_nslots", scope: !2996, file: !206, line: 880, type: !369)
!2999 = !DILocalVariable(name: "size", scope: !3000, file: !206, line: 891, type: !44)
!3000 = distinct !DILexicalBlock(scope: !2984, file: !206, line: 890, column: 3)
!3001 = !DILocalVariable(name: "val", scope: !3000, file: !206, line: 892, type: !95)
!3002 = !DILocalVariable(name: "flags", scope: !3000, file: !206, line: 894, type: !42)
!3003 = !DILocalVariable(name: "qsize", scope: !3000, file: !206, line: 895, type: !44)
!3004 = !DILocation(line: 0, scope: !2984)
!3005 = !DILocation(line: 869, column: 21, scope: !2984)
!3006 = !DILocation(line: 871, column: 24, scope: !2984)
!3007 = !DILocation(line: 874, column: 17, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2984, file: !206, line: 874, column: 7)
!3009 = !DILocation(line: 875, column: 5, scope: !3008)
!3010 = !DILocation(line: 877, column: 7, scope: !2997)
!3011 = !DILocation(line: 877, column: 14, scope: !2997)
!3012 = !DILocation(line: 877, column: 7, scope: !2984)
!3013 = !DILocation(line: 879, column: 31, scope: !2996)
!3014 = !DILocation(line: 0, scope: !2996)
!3015 = !DILocation(line: 880, column: 7, scope: !2996)
!3016 = !DILocation(line: 880, column: 26, scope: !2996)
!3017 = !DILocation(line: 880, column: 13, scope: !2996)
!3018 = !DILocation(line: 882, column: 31, scope: !2996)
!3019 = !DILocation(line: 883, column: 33, scope: !2996)
!3020 = !DILocation(line: 883, column: 42, scope: !2996)
!3021 = !DILocation(line: 883, column: 31, scope: !2996)
!3022 = !DILocation(line: 882, column: 22, scope: !2996)
!3023 = !DILocation(line: 882, column: 15, scope: !2996)
!3024 = !DILocation(line: 884, column: 11, scope: !2996)
!3025 = !DILocation(line: 885, column: 15, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2996, file: !206, line: 884, column: 11)
!3027 = !{i64 0, i64 8, !2936, i64 8, i64 8, !425}
!3028 = !DILocation(line: 885, column: 9, scope: !3026)
!3029 = !DILocation(line: 886, column: 20, scope: !2996)
!3030 = !DILocation(line: 886, column: 18, scope: !2996)
!3031 = !DILocation(line: 886, column: 15, scope: !2996)
!3032 = !DILocation(line: 886, column: 32, scope: !2996)
!3033 = !DILocation(line: 886, column: 43, scope: !2996)
!3034 = !DILocation(line: 886, column: 53, scope: !2996)
!3035 = !DILocation(line: 0, scope: !2419, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 886, column: 7, scope: !2996)
!3037 = !DILocation(line: 59, column: 10, scope: !2419, inlinedAt: !3036)
!3038 = !DILocation(line: 887, column: 16, scope: !2996)
!3039 = !DILocation(line: 887, column: 14, scope: !2996)
!3040 = !DILocation(line: 888, column: 5, scope: !2997)
!3041 = !DILocation(line: 888, column: 5, scope: !2996)
!3042 = !DILocation(line: 891, column: 19, scope: !3000)
!3043 = !DILocation(line: 891, column: 25, scope: !3000)
!3044 = !DILocation(line: 0, scope: !3000)
!3045 = !DILocation(line: 892, column: 23, scope: !3000)
!3046 = !DILocation(line: 894, column: 26, scope: !3000)
!3047 = !DILocation(line: 894, column: 32, scope: !3000)
!3048 = !DILocation(line: 896, column: 55, scope: !3000)
!3049 = !DILocation(line: 897, column: 46, scope: !3000)
!3050 = !DILocation(line: 898, column: 55, scope: !3000)
!3051 = !DILocation(line: 899, column: 55, scope: !3000)
!3052 = !DILocation(line: 895, column: 20, scope: !3000)
!3053 = !DILocation(line: 901, column: 14, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3000, file: !206, line: 901, column: 9)
!3055 = !DILocation(line: 901, column: 9, scope: !3000)
!3056 = !DILocation(line: 903, column: 35, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3054, file: !206, line: 902, column: 7)
!3058 = !DILocation(line: 903, column: 20, scope: !3057)
!3059 = !DILocation(line: 904, column: 17, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3057, file: !206, line: 904, column: 13)
!3061 = !DILocation(line: 904, column: 13, scope: !3057)
!3062 = !DILocation(line: 905, column: 11, scope: !3060)
!3063 = !DILocation(line: 906, column: 27, scope: !3057)
!3064 = !DILocation(line: 906, column: 19, scope: !3057)
!3065 = !DILocation(line: 907, column: 69, scope: !3057)
!3066 = !DILocation(line: 909, column: 44, scope: !3057)
!3067 = !DILocation(line: 910, column: 44, scope: !3057)
!3068 = !DILocation(line: 907, column: 9, scope: !3057)
!3069 = !DILocation(line: 911, column: 7, scope: !3057)
!3070 = !DILocation(line: 913, column: 11, scope: !3000)
!3071 = !DILocation(line: 914, column: 5, scope: !3000)
!3072 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !206, file: !206, line: 925, type: !3073, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3075)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!95, !42, !47, !44}
!3075 = !{!3076, !3077, !3078}
!3076 = !DILocalVariable(name: "n", arg: 1, scope: !3072, file: !206, line: 925, type: !42)
!3077 = !DILocalVariable(name: "arg", arg: 2, scope: !3072, file: !206, line: 925, type: !47)
!3078 = !DILocalVariable(name: "argsize", arg: 3, scope: !3072, file: !206, line: 925, type: !44)
!3079 = !DILocation(line: 0, scope: !3072)
!3080 = !DILocation(line: 927, column: 10, scope: !3072)
!3081 = !DILocation(line: 927, column: 3, scope: !3072)
!3082 = distinct !DISubprogram(name: "quotearg", scope: !206, file: !206, line: 931, type: !666, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3083)
!3083 = !{!3084}
!3084 = !DILocalVariable(name: "arg", arg: 1, scope: !3082, file: !206, line: 931, type: !47)
!3085 = !DILocation(line: 0, scope: !3082)
!3086 = !DILocation(line: 0, scope: !2977, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 933, column: 10, scope: !3082)
!3088 = !DILocation(line: 921, column: 10, scope: !2977, inlinedAt: !3087)
!3089 = !DILocation(line: 933, column: 3, scope: !3082)
!3090 = distinct !DISubprogram(name: "quotearg_mem", scope: !206, file: !206, line: 937, type: !3091, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3093)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!95, !47, !44}
!3093 = !{!3094, !3095}
!3094 = !DILocalVariable(name: "arg", arg: 1, scope: !3090, file: !206, line: 937, type: !47)
!3095 = !DILocalVariable(name: "argsize", arg: 2, scope: !3090, file: !206, line: 937, type: !44)
!3096 = !DILocation(line: 0, scope: !3090)
!3097 = !DILocation(line: 0, scope: !3072, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 939, column: 10, scope: !3090)
!3099 = !DILocation(line: 927, column: 10, scope: !3072, inlinedAt: !3098)
!3100 = !DILocation(line: 939, column: 3, scope: !3090)
!3101 = distinct !DISubprogram(name: "quotearg_n_style", scope: !206, file: !206, line: 943, type: !3102, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!95, !42, !208, !47}
!3104 = !{!3105, !3106, !3107, !3108}
!3105 = !DILocalVariable(name: "n", arg: 1, scope: !3101, file: !206, line: 943, type: !42)
!3106 = !DILocalVariable(name: "s", arg: 2, scope: !3101, file: !206, line: 943, type: !208)
!3107 = !DILocalVariable(name: "arg", arg: 3, scope: !3101, file: !206, line: 943, type: !47)
!3108 = !DILocalVariable(name: "o", scope: !3101, file: !206, line: 945, type: !2208)
!3109 = !DILocation(line: 0, scope: !3101)
!3110 = !DILocation(line: 945, column: 3, scope: !3101)
!3111 = !DILocation(line: 945, column: 32, scope: !3101)
!3112 = !{!3113}
!3113 = distinct !{!3113, !3114, !"quoting_options_from_style: argument 0"}
!3114 = distinct !{!3114, !"quoting_options_from_style"}
!3115 = !DILocation(line: 945, column: 36, scope: !3101)
!3116 = !DILocalVariable(name: "style", arg: 1, scope: !3117, file: !206, line: 183, type: !208)
!3117 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !206, file: !206, line: 183, type: !3118, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!237, !208}
!3120 = !{!3116, !3121}
!3121 = !DILocalVariable(name: "o", scope: !3117, file: !206, line: 185, type: !237)
!3122 = !DILocation(line: 0, scope: !3117, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 945, column: 36, scope: !3101)
!3124 = !DILocation(line: 185, column: 26, scope: !3117, inlinedAt: !3123)
!3125 = !DILocation(line: 186, column: 13, scope: !3126, inlinedAt: !3123)
!3126 = distinct !DILexicalBlock(scope: !3117, file: !206, line: 186, column: 7)
!3127 = !DILocation(line: 186, column: 7, scope: !3117, inlinedAt: !3123)
!3128 = !DILocation(line: 187, column: 5, scope: !3126, inlinedAt: !3123)
!3129 = !DILocation(line: 188, column: 5, scope: !3117, inlinedAt: !3123)
!3130 = !DILocation(line: 188, column: 11, scope: !3117, inlinedAt: !3123)
!3131 = !DILocation(line: 946, column: 10, scope: !3101)
!3132 = !DILocation(line: 947, column: 1, scope: !3101)
!3133 = !DILocation(line: 946, column: 3, scope: !3101)
!3134 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !206, file: !206, line: 950, type: !3135, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3137)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!95, !42, !208, !47, !44}
!3137 = !{!3138, !3139, !3140, !3141, !3142}
!3138 = !DILocalVariable(name: "n", arg: 1, scope: !3134, file: !206, line: 950, type: !42)
!3139 = !DILocalVariable(name: "s", arg: 2, scope: !3134, file: !206, line: 950, type: !208)
!3140 = !DILocalVariable(name: "arg", arg: 3, scope: !3134, file: !206, line: 951, type: !47)
!3141 = !DILocalVariable(name: "argsize", arg: 4, scope: !3134, file: !206, line: 951, type: !44)
!3142 = !DILocalVariable(name: "o", scope: !3134, file: !206, line: 953, type: !2208)
!3143 = !DILocation(line: 0, scope: !3134)
!3144 = !DILocation(line: 953, column: 3, scope: !3134)
!3145 = !DILocation(line: 953, column: 32, scope: !3134)
!3146 = !{!3147}
!3147 = distinct !{!3147, !3148, !"quoting_options_from_style: argument 0"}
!3148 = distinct !{!3148, !"quoting_options_from_style"}
!3149 = !DILocation(line: 953, column: 36, scope: !3134)
!3150 = !DILocation(line: 0, scope: !3117, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 953, column: 36, scope: !3134)
!3152 = !DILocation(line: 185, column: 26, scope: !3117, inlinedAt: !3151)
!3153 = !DILocation(line: 186, column: 13, scope: !3126, inlinedAt: !3151)
!3154 = !DILocation(line: 186, column: 7, scope: !3117, inlinedAt: !3151)
!3155 = !DILocation(line: 187, column: 5, scope: !3126, inlinedAt: !3151)
!3156 = !DILocation(line: 188, column: 5, scope: !3117, inlinedAt: !3151)
!3157 = !DILocation(line: 188, column: 11, scope: !3117, inlinedAt: !3151)
!3158 = !DILocation(line: 954, column: 10, scope: !3134)
!3159 = !DILocation(line: 955, column: 1, scope: !3134)
!3160 = !DILocation(line: 954, column: 3, scope: !3134)
!3161 = distinct !DISubprogram(name: "quotearg_style", scope: !206, file: !206, line: 958, type: !3162, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3164)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!95, !208, !47}
!3164 = !{!3165, !3166}
!3165 = !DILocalVariable(name: "s", arg: 1, scope: !3161, file: !206, line: 958, type: !208)
!3166 = !DILocalVariable(name: "arg", arg: 2, scope: !3161, file: !206, line: 958, type: !47)
!3167 = !DILocation(line: 0, scope: !3161)
!3168 = !DILocation(line: 0, scope: !3101, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 960, column: 10, scope: !3161)
!3170 = !DILocation(line: 945, column: 3, scope: !3101, inlinedAt: !3169)
!3171 = !DILocation(line: 945, column: 32, scope: !3101, inlinedAt: !3169)
!3172 = !{!3173}
!3173 = distinct !{!3173, !3174, !"quoting_options_from_style: argument 0"}
!3174 = distinct !{!3174, !"quoting_options_from_style"}
!3175 = !DILocation(line: 945, column: 36, scope: !3101, inlinedAt: !3169)
!3176 = !DILocation(line: 0, scope: !3117, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 945, column: 36, scope: !3101, inlinedAt: !3169)
!3178 = !DILocation(line: 185, column: 26, scope: !3117, inlinedAt: !3177)
!3179 = !DILocation(line: 186, column: 13, scope: !3126, inlinedAt: !3177)
!3180 = !DILocation(line: 186, column: 7, scope: !3117, inlinedAt: !3177)
!3181 = !DILocation(line: 187, column: 5, scope: !3126, inlinedAt: !3177)
!3182 = !DILocation(line: 188, column: 5, scope: !3117, inlinedAt: !3177)
!3183 = !DILocation(line: 188, column: 11, scope: !3117, inlinedAt: !3177)
!3184 = !DILocation(line: 946, column: 10, scope: !3101, inlinedAt: !3169)
!3185 = !DILocation(line: 947, column: 1, scope: !3101, inlinedAt: !3169)
!3186 = !DILocation(line: 960, column: 3, scope: !3161)
!3187 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !206, file: !206, line: 964, type: !3188, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3190)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!95, !208, !47, !44}
!3190 = !{!3191, !3192, !3193}
!3191 = !DILocalVariable(name: "s", arg: 1, scope: !3187, file: !206, line: 964, type: !208)
!3192 = !DILocalVariable(name: "arg", arg: 2, scope: !3187, file: !206, line: 964, type: !47)
!3193 = !DILocalVariable(name: "argsize", arg: 3, scope: !3187, file: !206, line: 964, type: !44)
!3194 = !DILocation(line: 0, scope: !3187)
!3195 = !DILocation(line: 0, scope: !3134, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 966, column: 10, scope: !3187)
!3197 = !DILocation(line: 953, column: 3, scope: !3134, inlinedAt: !3196)
!3198 = !DILocation(line: 953, column: 32, scope: !3134, inlinedAt: !3196)
!3199 = !{!3200}
!3200 = distinct !{!3200, !3201, !"quoting_options_from_style: argument 0"}
!3201 = distinct !{!3201, !"quoting_options_from_style"}
!3202 = !DILocation(line: 953, column: 36, scope: !3134, inlinedAt: !3196)
!3203 = !DILocation(line: 0, scope: !3117, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 953, column: 36, scope: !3134, inlinedAt: !3196)
!3205 = !DILocation(line: 185, column: 26, scope: !3117, inlinedAt: !3204)
!3206 = !DILocation(line: 186, column: 13, scope: !3126, inlinedAt: !3204)
!3207 = !DILocation(line: 186, column: 7, scope: !3117, inlinedAt: !3204)
!3208 = !DILocation(line: 187, column: 5, scope: !3126, inlinedAt: !3204)
!3209 = !DILocation(line: 188, column: 5, scope: !3117, inlinedAt: !3204)
!3210 = !DILocation(line: 188, column: 11, scope: !3117, inlinedAt: !3204)
!3211 = !DILocation(line: 954, column: 10, scope: !3134, inlinedAt: !3196)
!3212 = !DILocation(line: 955, column: 1, scope: !3134, inlinedAt: !3196)
!3213 = !DILocation(line: 966, column: 3, scope: !3187)
!3214 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !206, file: !206, line: 970, type: !3215, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!95, !47, !44, !49}
!3217 = !{!3218, !3219, !3220, !3221}
!3218 = !DILocalVariable(name: "arg", arg: 1, scope: !3214, file: !206, line: 970, type: !47)
!3219 = !DILocalVariable(name: "argsize", arg: 2, scope: !3214, file: !206, line: 970, type: !44)
!3220 = !DILocalVariable(name: "ch", arg: 3, scope: !3214, file: !206, line: 970, type: !49)
!3221 = !DILocalVariable(name: "options", scope: !3214, file: !206, line: 972, type: !237)
!3222 = !DILocation(line: 0, scope: !3214)
!3223 = !DILocation(line: 972, column: 3, scope: !3214)
!3224 = !DILocation(line: 972, column: 26, scope: !3214)
!3225 = !DILocation(line: 973, column: 13, scope: !3214)
!3226 = !{i64 0, i64 4, !563, i64 4, i64 4, !554, i64 8, i64 32, !563, i64 40, i64 8, !425, i64 48, i64 8, !425}
!3227 = !DILocation(line: 0, scope: !2228, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 974, column: 3, scope: !3214)
!3229 = !DILocation(line: 147, column: 62, scope: !2228, inlinedAt: !3228)
!3230 = !DILocation(line: 147, column: 57, scope: !2228, inlinedAt: !3228)
!3231 = !DILocation(line: 148, column: 15, scope: !2228, inlinedAt: !3228)
!3232 = !DILocation(line: 149, column: 21, scope: !2228, inlinedAt: !3228)
!3233 = !DILocation(line: 149, column: 24, scope: !2228, inlinedAt: !3228)
!3234 = !DILocation(line: 149, column: 34, scope: !2228, inlinedAt: !3228)
!3235 = !DILocation(line: 150, column: 19, scope: !2228, inlinedAt: !3228)
!3236 = !DILocation(line: 150, column: 24, scope: !2228, inlinedAt: !3228)
!3237 = !DILocation(line: 150, column: 6, scope: !2228, inlinedAt: !3228)
!3238 = !DILocation(line: 975, column: 10, scope: !3214)
!3239 = !DILocation(line: 976, column: 1, scope: !3214)
!3240 = !DILocation(line: 975, column: 3, scope: !3214)
!3241 = distinct !DISubprogram(name: "quotearg_char", scope: !206, file: !206, line: 979, type: !3242, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3244)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!95, !47, !49}
!3244 = !{!3245, !3246}
!3245 = !DILocalVariable(name: "arg", arg: 1, scope: !3241, file: !206, line: 979, type: !47)
!3246 = !DILocalVariable(name: "ch", arg: 2, scope: !3241, file: !206, line: 979, type: !49)
!3247 = !DILocation(line: 0, scope: !3241)
!3248 = !DILocation(line: 0, scope: !3214, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 981, column: 10, scope: !3241)
!3250 = !DILocation(line: 972, column: 3, scope: !3214, inlinedAt: !3249)
!3251 = !DILocation(line: 972, column: 26, scope: !3214, inlinedAt: !3249)
!3252 = !DILocation(line: 973, column: 13, scope: !3214, inlinedAt: !3249)
!3253 = !DILocation(line: 0, scope: !2228, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 974, column: 3, scope: !3214, inlinedAt: !3249)
!3255 = !DILocation(line: 147, column: 62, scope: !2228, inlinedAt: !3254)
!3256 = !DILocation(line: 147, column: 57, scope: !2228, inlinedAt: !3254)
!3257 = !DILocation(line: 148, column: 15, scope: !2228, inlinedAt: !3254)
!3258 = !DILocation(line: 149, column: 21, scope: !2228, inlinedAt: !3254)
!3259 = !DILocation(line: 149, column: 24, scope: !2228, inlinedAt: !3254)
!3260 = !DILocation(line: 149, column: 34, scope: !2228, inlinedAt: !3254)
!3261 = !DILocation(line: 150, column: 19, scope: !2228, inlinedAt: !3254)
!3262 = !DILocation(line: 150, column: 24, scope: !2228, inlinedAt: !3254)
!3263 = !DILocation(line: 150, column: 6, scope: !2228, inlinedAt: !3254)
!3264 = !DILocation(line: 975, column: 10, scope: !3214, inlinedAt: !3249)
!3265 = !DILocation(line: 976, column: 1, scope: !3214, inlinedAt: !3249)
!3266 = !DILocation(line: 981, column: 3, scope: !3241)
!3267 = distinct !DISubprogram(name: "quotearg_colon", scope: !206, file: !206, line: 985, type: !666, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3268)
!3268 = !{!3269}
!3269 = !DILocalVariable(name: "arg", arg: 1, scope: !3267, file: !206, line: 985, type: !47)
!3270 = !DILocation(line: 0, scope: !3267)
!3271 = !DILocation(line: 0, scope: !3241, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 987, column: 10, scope: !3267)
!3273 = !DILocation(line: 0, scope: !3214, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 981, column: 10, scope: !3241, inlinedAt: !3272)
!3275 = !DILocation(line: 972, column: 3, scope: !3214, inlinedAt: !3274)
!3276 = !DILocation(line: 972, column: 26, scope: !3214, inlinedAt: !3274)
!3277 = !DILocation(line: 973, column: 13, scope: !3214, inlinedAt: !3274)
!3278 = !DILocation(line: 0, scope: !2228, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 974, column: 3, scope: !3214, inlinedAt: !3274)
!3280 = !DILocation(line: 147, column: 57, scope: !2228, inlinedAt: !3279)
!3281 = !DILocation(line: 149, column: 21, scope: !2228, inlinedAt: !3279)
!3282 = !DILocation(line: 150, column: 6, scope: !2228, inlinedAt: !3279)
!3283 = !DILocation(line: 975, column: 10, scope: !3214, inlinedAt: !3274)
!3284 = !DILocation(line: 976, column: 1, scope: !3214, inlinedAt: !3274)
!3285 = !DILocation(line: 987, column: 3, scope: !3267)
!3286 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !206, file: !206, line: 991, type: !3091, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3287)
!3287 = !{!3288, !3289}
!3288 = !DILocalVariable(name: "arg", arg: 1, scope: !3286, file: !206, line: 991, type: !47)
!3289 = !DILocalVariable(name: "argsize", arg: 2, scope: !3286, file: !206, line: 991, type: !44)
!3290 = !DILocation(line: 0, scope: !3286)
!3291 = !DILocation(line: 0, scope: !3214, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 993, column: 10, scope: !3286)
!3293 = !DILocation(line: 972, column: 3, scope: !3214, inlinedAt: !3292)
!3294 = !DILocation(line: 972, column: 26, scope: !3214, inlinedAt: !3292)
!3295 = !DILocation(line: 973, column: 13, scope: !3214, inlinedAt: !3292)
!3296 = !DILocation(line: 0, scope: !2228, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 974, column: 3, scope: !3214, inlinedAt: !3292)
!3298 = !DILocation(line: 147, column: 57, scope: !2228, inlinedAt: !3297)
!3299 = !DILocation(line: 149, column: 21, scope: !2228, inlinedAt: !3297)
!3300 = !DILocation(line: 150, column: 6, scope: !2228, inlinedAt: !3297)
!3301 = !DILocation(line: 975, column: 10, scope: !3214, inlinedAt: !3292)
!3302 = !DILocation(line: 976, column: 1, scope: !3214, inlinedAt: !3292)
!3303 = !DILocation(line: 993, column: 3, scope: !3286)
!3304 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !206, file: !206, line: 997, type: !3102, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3305)
!3305 = !{!3306, !3307, !3308, !3309}
!3306 = !DILocalVariable(name: "n", arg: 1, scope: !3304, file: !206, line: 997, type: !42)
!3307 = !DILocalVariable(name: "s", arg: 2, scope: !3304, file: !206, line: 997, type: !208)
!3308 = !DILocalVariable(name: "arg", arg: 3, scope: !3304, file: !206, line: 997, type: !47)
!3309 = !DILocalVariable(name: "options", scope: !3304, file: !206, line: 999, type: !237)
!3310 = !DILocation(line: 0, scope: !3304)
!3311 = !DILocation(line: 999, column: 3, scope: !3304)
!3312 = !DILocation(line: 999, column: 26, scope: !3304)
!3313 = !DILocation(line: 0, scope: !3117, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 1000, column: 13, scope: !3304)
!3315 = !DILocation(line: 186, column: 13, scope: !3126, inlinedAt: !3314)
!3316 = !DILocation(line: 186, column: 7, scope: !3117, inlinedAt: !3314)
!3317 = !DILocation(line: 187, column: 5, scope: !3126, inlinedAt: !3314)
!3318 = !{!3319}
!3319 = distinct !{!3319, !3320, !"quoting_options_from_style: argument 0"}
!3320 = distinct !{!3320, !"quoting_options_from_style"}
!3321 = !DILocation(line: 1000, column: 13, scope: !3304)
!3322 = !DILocation(line: 0, scope: !2228, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 1001, column: 3, scope: !3304)
!3324 = !DILocation(line: 147, column: 57, scope: !2228, inlinedAt: !3323)
!3325 = !DILocation(line: 149, column: 21, scope: !2228, inlinedAt: !3323)
!3326 = !DILocation(line: 150, column: 6, scope: !2228, inlinedAt: !3323)
!3327 = !DILocation(line: 1002, column: 10, scope: !3304)
!3328 = !DILocation(line: 1003, column: 1, scope: !3304)
!3329 = !DILocation(line: 1002, column: 3, scope: !3304)
!3330 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !206, file: !206, line: 1006, type: !3331, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3333)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!95, !42, !47, !47, !47}
!3333 = !{!3334, !3335, !3336, !3337}
!3334 = !DILocalVariable(name: "n", arg: 1, scope: !3330, file: !206, line: 1006, type: !42)
!3335 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3330, file: !206, line: 1006, type: !47)
!3336 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3330, file: !206, line: 1007, type: !47)
!3337 = !DILocalVariable(name: "arg", arg: 4, scope: !3330, file: !206, line: 1007, type: !47)
!3338 = !DILocation(line: 0, scope: !3330)
!3339 = !DILocalVariable(name: "n", arg: 1, scope: !3340, file: !206, line: 1014, type: !42)
!3340 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !206, file: !206, line: 1014, type: !3341, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3343)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!95, !42, !47, !47, !47, !44}
!3343 = !{!3339, !3344, !3345, !3346, !3347, !3348}
!3344 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3340, file: !206, line: 1014, type: !47)
!3345 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3340, file: !206, line: 1015, type: !47)
!3346 = !DILocalVariable(name: "arg", arg: 4, scope: !3340, file: !206, line: 1016, type: !47)
!3347 = !DILocalVariable(name: "argsize", arg: 5, scope: !3340, file: !206, line: 1016, type: !44)
!3348 = !DILocalVariable(name: "o", scope: !3340, file: !206, line: 1018, type: !237)
!3349 = !DILocation(line: 0, scope: !3340, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 1009, column: 10, scope: !3330)
!3351 = !DILocation(line: 1018, column: 3, scope: !3340, inlinedAt: !3350)
!3352 = !DILocation(line: 1018, column: 26, scope: !3340, inlinedAt: !3350)
!3353 = !DILocation(line: 1018, column: 30, scope: !3340, inlinedAt: !3350)
!3354 = !DILocation(line: 0, scope: !2268, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 1019, column: 3, scope: !3340, inlinedAt: !3350)
!3356 = !DILocation(line: 174, column: 6, scope: !2268, inlinedAt: !3355)
!3357 = !DILocation(line: 174, column: 12, scope: !2268, inlinedAt: !3355)
!3358 = !DILocation(line: 175, column: 8, scope: !2282, inlinedAt: !3355)
!3359 = !DILocation(line: 175, column: 19, scope: !2282, inlinedAt: !3355)
!3360 = !DILocation(line: 176, column: 5, scope: !2282, inlinedAt: !3355)
!3361 = !DILocation(line: 177, column: 6, scope: !2268, inlinedAt: !3355)
!3362 = !DILocation(line: 177, column: 17, scope: !2268, inlinedAt: !3355)
!3363 = !DILocation(line: 178, column: 6, scope: !2268, inlinedAt: !3355)
!3364 = !DILocation(line: 178, column: 18, scope: !2268, inlinedAt: !3355)
!3365 = !DILocation(line: 1020, column: 10, scope: !3340, inlinedAt: !3350)
!3366 = !DILocation(line: 1021, column: 1, scope: !3340, inlinedAt: !3350)
!3367 = !DILocation(line: 1009, column: 3, scope: !3330)
!3368 = !DILocation(line: 0, scope: !3340)
!3369 = !DILocation(line: 1018, column: 3, scope: !3340)
!3370 = !DILocation(line: 1018, column: 26, scope: !3340)
!3371 = !DILocation(line: 1018, column: 30, scope: !3340)
!3372 = !DILocation(line: 0, scope: !2268, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 1019, column: 3, scope: !3340)
!3374 = !DILocation(line: 174, column: 6, scope: !2268, inlinedAt: !3373)
!3375 = !DILocation(line: 174, column: 12, scope: !2268, inlinedAt: !3373)
!3376 = !DILocation(line: 175, column: 8, scope: !2282, inlinedAt: !3373)
!3377 = !DILocation(line: 175, column: 19, scope: !2282, inlinedAt: !3373)
!3378 = !DILocation(line: 176, column: 5, scope: !2282, inlinedAt: !3373)
!3379 = !DILocation(line: 177, column: 6, scope: !2268, inlinedAt: !3373)
!3380 = !DILocation(line: 177, column: 17, scope: !2268, inlinedAt: !3373)
!3381 = !DILocation(line: 178, column: 6, scope: !2268, inlinedAt: !3373)
!3382 = !DILocation(line: 178, column: 18, scope: !2268, inlinedAt: !3373)
!3383 = !DILocation(line: 1020, column: 10, scope: !3340)
!3384 = !DILocation(line: 1021, column: 1, scope: !3340)
!3385 = !DILocation(line: 1020, column: 3, scope: !3340)
!3386 = distinct !DISubprogram(name: "quotearg_custom", scope: !206, file: !206, line: 1024, type: !3387, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3389)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!95, !47, !47, !47}
!3389 = !{!3390, !3391, !3392}
!3390 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3386, file: !206, line: 1024, type: !47)
!3391 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3386, file: !206, line: 1024, type: !47)
!3392 = !DILocalVariable(name: "arg", arg: 3, scope: !3386, file: !206, line: 1025, type: !47)
!3393 = !DILocation(line: 0, scope: !3386)
!3394 = !DILocation(line: 0, scope: !3330, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 1027, column: 10, scope: !3386)
!3396 = !DILocation(line: 0, scope: !3340, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 1009, column: 10, scope: !3330, inlinedAt: !3395)
!3398 = !DILocation(line: 1018, column: 3, scope: !3340, inlinedAt: !3397)
!3399 = !DILocation(line: 1018, column: 26, scope: !3340, inlinedAt: !3397)
!3400 = !DILocation(line: 1018, column: 30, scope: !3340, inlinedAt: !3397)
!3401 = !DILocation(line: 0, scope: !2268, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 1019, column: 3, scope: !3340, inlinedAt: !3397)
!3403 = !DILocation(line: 174, column: 6, scope: !2268, inlinedAt: !3402)
!3404 = !DILocation(line: 174, column: 12, scope: !2268, inlinedAt: !3402)
!3405 = !DILocation(line: 175, column: 8, scope: !2282, inlinedAt: !3402)
!3406 = !DILocation(line: 175, column: 19, scope: !2282, inlinedAt: !3402)
!3407 = !DILocation(line: 176, column: 5, scope: !2282, inlinedAt: !3402)
!3408 = !DILocation(line: 177, column: 6, scope: !2268, inlinedAt: !3402)
!3409 = !DILocation(line: 177, column: 17, scope: !2268, inlinedAt: !3402)
!3410 = !DILocation(line: 178, column: 6, scope: !2268, inlinedAt: !3402)
!3411 = !DILocation(line: 178, column: 18, scope: !2268, inlinedAt: !3402)
!3412 = !DILocation(line: 1020, column: 10, scope: !3340, inlinedAt: !3397)
!3413 = !DILocation(line: 1021, column: 1, scope: !3340, inlinedAt: !3397)
!3414 = !DILocation(line: 1027, column: 3, scope: !3386)
!3415 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !206, file: !206, line: 1031, type: !3416, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!95, !47, !47, !47, !44}
!3418 = !{!3419, !3420, !3421, !3422}
!3419 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3415, file: !206, line: 1031, type: !47)
!3420 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3415, file: !206, line: 1031, type: !47)
!3421 = !DILocalVariable(name: "arg", arg: 3, scope: !3415, file: !206, line: 1032, type: !47)
!3422 = !DILocalVariable(name: "argsize", arg: 4, scope: !3415, file: !206, line: 1032, type: !44)
!3423 = !DILocation(line: 0, scope: !3415)
!3424 = !DILocation(line: 0, scope: !3340, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 1034, column: 10, scope: !3415)
!3426 = !DILocation(line: 1018, column: 3, scope: !3340, inlinedAt: !3425)
!3427 = !DILocation(line: 1018, column: 26, scope: !3340, inlinedAt: !3425)
!3428 = !DILocation(line: 1018, column: 30, scope: !3340, inlinedAt: !3425)
!3429 = !DILocation(line: 0, scope: !2268, inlinedAt: !3430)
!3430 = distinct !DILocation(line: 1019, column: 3, scope: !3340, inlinedAt: !3425)
!3431 = !DILocation(line: 174, column: 6, scope: !2268, inlinedAt: !3430)
!3432 = !DILocation(line: 174, column: 12, scope: !2268, inlinedAt: !3430)
!3433 = !DILocation(line: 175, column: 8, scope: !2282, inlinedAt: !3430)
!3434 = !DILocation(line: 175, column: 19, scope: !2282, inlinedAt: !3430)
!3435 = !DILocation(line: 176, column: 5, scope: !2282, inlinedAt: !3430)
!3436 = !DILocation(line: 177, column: 6, scope: !2268, inlinedAt: !3430)
!3437 = !DILocation(line: 177, column: 17, scope: !2268, inlinedAt: !3430)
!3438 = !DILocation(line: 178, column: 6, scope: !2268, inlinedAt: !3430)
!3439 = !DILocation(line: 178, column: 18, scope: !2268, inlinedAt: !3430)
!3440 = !DILocation(line: 1020, column: 10, scope: !3340, inlinedAt: !3425)
!3441 = !DILocation(line: 1021, column: 1, scope: !3340, inlinedAt: !3425)
!3442 = !DILocation(line: 1034, column: 3, scope: !3415)
!3443 = distinct !DISubprogram(name: "quote_n_mem", scope: !206, file: !206, line: 1049, type: !3444, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3446)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!47, !42, !47, !44}
!3446 = !{!3447, !3448, !3449}
!3447 = !DILocalVariable(name: "n", arg: 1, scope: !3443, file: !206, line: 1049, type: !42)
!3448 = !DILocalVariable(name: "arg", arg: 2, scope: !3443, file: !206, line: 1049, type: !47)
!3449 = !DILocalVariable(name: "argsize", arg: 3, scope: !3443, file: !206, line: 1049, type: !44)
!3450 = !DILocation(line: 0, scope: !3443)
!3451 = !DILocation(line: 1051, column: 10, scope: !3443)
!3452 = !DILocation(line: 1051, column: 3, scope: !3443)
!3453 = distinct !DISubprogram(name: "quote_mem", scope: !206, file: !206, line: 1055, type: !3454, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!47, !47, !44}
!3456 = !{!3457, !3458}
!3457 = !DILocalVariable(name: "arg", arg: 1, scope: !3453, file: !206, line: 1055, type: !47)
!3458 = !DILocalVariable(name: "argsize", arg: 2, scope: !3453, file: !206, line: 1055, type: !44)
!3459 = !DILocation(line: 0, scope: !3453)
!3460 = !DILocation(line: 0, scope: !3443, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 1057, column: 10, scope: !3453)
!3462 = !DILocation(line: 1051, column: 10, scope: !3443, inlinedAt: !3461)
!3463 = !DILocation(line: 1057, column: 3, scope: !3453)
!3464 = distinct !DISubprogram(name: "quote_n", scope: !206, file: !206, line: 1061, type: !3465, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3467)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!47, !42, !47}
!3467 = !{!3468, !3469}
!3468 = !DILocalVariable(name: "n", arg: 1, scope: !3464, file: !206, line: 1061, type: !42)
!3469 = !DILocalVariable(name: "arg", arg: 2, scope: !3464, file: !206, line: 1061, type: !47)
!3470 = !DILocation(line: 0, scope: !3464)
!3471 = !DILocation(line: 0, scope: !3443, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 1063, column: 10, scope: !3464)
!3473 = !DILocation(line: 1051, column: 10, scope: !3443, inlinedAt: !3472)
!3474 = !DILocation(line: 1063, column: 3, scope: !3464)
!3475 = distinct !DISubprogram(name: "quote", scope: !206, file: !206, line: 1067, type: !1796, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3476)
!3476 = !{!3477}
!3477 = !DILocalVariable(name: "arg", arg: 1, scope: !3475, file: !206, line: 1067, type: !47)
!3478 = !DILocation(line: 0, scope: !3475)
!3479 = !DILocation(line: 0, scope: !3464, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 1069, column: 10, scope: !3475)
!3481 = !DILocation(line: 0, scope: !3443, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 1063, column: 10, scope: !3464, inlinedAt: !3480)
!3483 = !DILocation(line: 1051, column: 10, scope: !3443, inlinedAt: !3482)
!3484 = !DILocation(line: 1069, column: 3, scope: !3475)
!3485 = distinct !DISubprogram(name: "strintcmp", scope: !341, file: !341, line: 31, type: !1853, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !340, retainedNodes: !3486)
!3486 = !{!3487, !3488}
!3487 = !DILocalVariable(name: "a", arg: 1, scope: !3485, file: !341, line: 31, type: !47)
!3488 = !DILocalVariable(name: "b", arg: 2, scope: !3485, file: !341, line: 31, type: !47)
!3489 = !DILocation(line: 0, scope: !3485)
!3490 = !DILocalVariable(name: "a", arg: 1, scope: !3491, file: !3492, line: 105, type: !47)
!3491 = distinct !DISubprogram(name: "numcompare", scope: !3492, file: !3492, line: 105, type: !3493, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !340, retainedNodes: !3495)
!3492 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f69f23aa922f1f0bf768a1237830bd5f")
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!42, !47, !47, !42, !42}
!3495 = !{!3490, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503}
!3496 = !DILocalVariable(name: "b", arg: 2, scope: !3491, file: !3492, line: 105, type: !47)
!3497 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !3491, file: !3492, line: 106, type: !42)
!3498 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !3491, file: !3492, line: 106, type: !42)
!3499 = !DILocalVariable(name: "tmpa", scope: !3491, file: !3492, line: 108, type: !49)
!3500 = !DILocalVariable(name: "tmpb", scope: !3491, file: !3492, line: 109, type: !49)
!3501 = !DILocalVariable(name: "tmp", scope: !3491, file: !3492, line: 110, type: !42)
!3502 = !DILocalVariable(name: "log_a", scope: !3491, file: !3492, line: 111, type: !44)
!3503 = !DILocalVariable(name: "log_b", scope: !3491, file: !3492, line: 112, type: !44)
!3504 = !DILocation(line: 0, scope: !3491, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 33, column: 10, scope: !3485)
!3506 = !DILocation(line: 108, column: 15, scope: !3491, inlinedAt: !3505)
!3507 = !DILocation(line: 109, column: 15, scope: !3491, inlinedAt: !3505)
!3508 = !DILocation(line: 114, column: 12, scope: !3509, inlinedAt: !3505)
!3509 = distinct !DILexicalBlock(scope: !3491, file: !3492, line: 114, column: 7)
!3510 = !DILocation(line: 114, column: 7, scope: !3491, inlinedAt: !3505)
!3511 = !DILocation(line: 117, column: 17, scope: !3512, inlinedAt: !3505)
!3512 = distinct !DILexicalBlock(scope: !3509, file: !3492, line: 115, column: 5)
!3513 = !DILocation(line: 117, column: 16, scope: !3512, inlinedAt: !3505)
!3514 = !DILocation(line: 118, column: 19, scope: !3512, inlinedAt: !3505)
!3515 = !DILocation(line: 117, column: 9, scope: !3512, inlinedAt: !3505)
!3516 = distinct !{!3516, !3517, !3518, !520}
!3517 = !DILocation(line: 116, column: 7, scope: !3512, inlinedAt: !3505)
!3518 = !DILocation(line: 118, column: 59, scope: !3512, inlinedAt: !3505)
!3519 = !DILocation(line: 119, column: 16, scope: !3520, inlinedAt: !3505)
!3520 = distinct !DILexicalBlock(scope: !3512, file: !3492, line: 119, column: 11)
!3521 = !DILocation(line: 119, column: 11, scope: !3512, inlinedAt: !3505)
!3522 = !DILocation(line: 125, column: 26, scope: !3523, inlinedAt: !3505)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !3492, line: 125, column: 15)
!3524 = distinct !DILexicalBlock(scope: !3520, file: !3492, line: 120, column: 9)
!3525 = !DILocalVariable(name: "c", arg: 1, scope: !3526, file: !1819, line: 233, type: !42)
!3526 = distinct !DISubprogram(name: "c_isdigit", scope: !1819, file: !1819, line: 233, type: !723, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !340, retainedNodes: !3527)
!3527 = !{!3525}
!3528 = !DILocation(line: 0, scope: !3526, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 125, column: 15, scope: !3523, inlinedAt: !3505)
!3530 = !DILocation(line: 235, column: 3, scope: !3526, inlinedAt: !3529)
!3531 = !DILocation(line: 125, column: 15, scope: !3524, inlinedAt: !3505)
!3532 = !DILocation(line: 127, column: 23, scope: !3524, inlinedAt: !3505)
!3533 = !DILocation(line: 127, column: 11, scope: !3524, inlinedAt: !3505)
!3534 = !DILocation(line: 128, column: 21, scope: !3524, inlinedAt: !3505)
!3535 = !DILocation(line: 128, column: 20, scope: !3524, inlinedAt: !3505)
!3536 = distinct !{!3536, !3533, !3537, !520}
!3537 = !DILocation(line: 128, column: 23, scope: !3524, inlinedAt: !3505)
!3538 = !DILocation(line: 133, column: 31, scope: !3524, inlinedAt: !3505)
!3539 = !DILocation(line: 0, scope: !3526, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 133, column: 20, scope: !3524, inlinedAt: !3505)
!3541 = !DILocation(line: 235, column: 3, scope: !3526, inlinedAt: !3540)
!3542 = !DILocation(line: 133, column: 20, scope: !3524, inlinedAt: !3505)
!3543 = !DILocation(line: 133, column: 11, scope: !3524, inlinedAt: !3505)
!3544 = !DILocation(line: 136, column: 17, scope: !3512, inlinedAt: !3505)
!3545 = !DILocation(line: 136, column: 16, scope: !3512, inlinedAt: !3505)
!3546 = !DILocation(line: 137, column: 19, scope: !3512, inlinedAt: !3505)
!3547 = !DILocation(line: 136, column: 9, scope: !3512, inlinedAt: !3505)
!3548 = distinct !{!3548, !3549, !3550, !520}
!3549 = !DILocation(line: 135, column: 7, scope: !3512, inlinedAt: !3505)
!3550 = !DILocation(line: 137, column: 59, scope: !3512, inlinedAt: !3505)
!3551 = !DILocation(line: 139, column: 14, scope: !3512, inlinedAt: !3505)
!3552 = !DILocation(line: 139, column: 19, scope: !3512, inlinedAt: !3505)
!3553 = !DILocation(line: 139, column: 27, scope: !3512, inlinedAt: !3505)
!3554 = !DILocation(line: 0, scope: !3526, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 139, column: 30, scope: !3512, inlinedAt: !3505)
!3556 = !DILocation(line: 142, column: 21, scope: !3557, inlinedAt: !3505)
!3557 = distinct !DILexicalBlock(scope: !3512, file: !3492, line: 140, column: 9)
!3558 = !DILocation(line: 142, column: 20, scope: !3557, inlinedAt: !3505)
!3559 = !DILocation(line: 145, column: 21, scope: !3557, inlinedAt: !3505)
!3560 = !DILocation(line: 145, column: 20, scope: !3557, inlinedAt: !3505)
!3561 = !DILocation(line: 139, column: 22, scope: !3512, inlinedAt: !3505)
!3562 = !DILocation(line: 235, column: 3, scope: !3526, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 155, column: 23, scope: !3564, inlinedAt: !3505)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !3492, line: 155, column: 7)
!3565 = distinct !DILexicalBlock(scope: !3512, file: !3492, line: 155, column: 7)
!3566 = !DILocation(line: 0, scope: !3512, inlinedAt: !3505)
!3567 = !DILocation(line: 153, column: 18, scope: !3512, inlinedAt: !3505)
!3568 = !DILocation(line: 0, scope: !3526, inlinedAt: !3563)
!3569 = !DILocation(line: 155, column: 7, scope: !3565, inlinedAt: !3505)
!3570 = !DILocation(line: 0, scope: !3565, inlinedAt: !3505)
!3571 = !DILocation(line: 0, scope: !3526, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 160, column: 23, scope: !3573, inlinedAt: !3505)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !3492, line: 160, column: 7)
!3574 = distinct !DILexicalBlock(scope: !3512, file: !3492, line: 160, column: 7)
!3575 = !DILocation(line: 235, column: 3, scope: !3526, inlinedAt: !3572)
!3576 = !DILocation(line: 160, column: 7, scope: !3574, inlinedAt: !3505)
!3577 = !DILocation(line: 157, column: 19, scope: !3564, inlinedAt: !3505)
!3578 = !DILocation(line: 157, column: 18, scope: !3564, inlinedAt: !3505)
!3579 = !DILocation(line: 155, column: 41, scope: !3564, inlinedAt: !3505)
!3580 = !DILocation(line: 155, column: 34, scope: !3564, inlinedAt: !3505)
!3581 = distinct !{!3581, !3569, !3582, !520}
!3582 = !DILocation(line: 158, column: 37, scope: !3565, inlinedAt: !3505)
!3583 = !DILocation(line: 162, column: 19, scope: !3573, inlinedAt: !3505)
!3584 = !DILocation(line: 162, column: 18, scope: !3573, inlinedAt: !3505)
!3585 = !DILocation(line: 160, column: 41, scope: !3573, inlinedAt: !3505)
!3586 = !DILocation(line: 160, column: 34, scope: !3573, inlinedAt: !3505)
!3587 = distinct !{!3587, !3576, !3588, !520}
!3588 = !DILocation(line: 163, column: 37, scope: !3574, inlinedAt: !3505)
!3589 = !DILocation(line: 0, scope: !3574, inlinedAt: !3505)
!3590 = !DILocation(line: 165, column: 17, scope: !3591, inlinedAt: !3505)
!3591 = distinct !DILexicalBlock(scope: !3512, file: !3492, line: 165, column: 11)
!3592 = !DILocation(line: 165, column: 11, scope: !3512, inlinedAt: !3505)
!3593 = !DILocation(line: 166, column: 22, scope: !3591, inlinedAt: !3505)
!3594 = !DILocation(line: 166, column: 16, scope: !3591, inlinedAt: !3505)
!3595 = !DILocation(line: 166, column: 9, scope: !3591, inlinedAt: !3505)
!3596 = !DILocation(line: 168, column: 12, scope: !3597, inlinedAt: !3505)
!3597 = distinct !DILexicalBlock(scope: !3512, file: !3492, line: 168, column: 11)
!3598 = !DILocation(line: 173, column: 17, scope: !3599, inlinedAt: !3505)
!3599 = distinct !DILexicalBlock(scope: !3509, file: !3492, line: 173, column: 12)
!3600 = !DILocation(line: 173, column: 12, scope: !3509, inlinedAt: !3505)
!3601 = !DILocation(line: 194, column: 19, scope: !3602, inlinedAt: !3505)
!3602 = distinct !DILexicalBlock(scope: !3599, file: !3492, line: 193, column: 5)
!3603 = !DILocation(line: 194, column: 7, scope: !3602, inlinedAt: !3505)
!3604 = !DILocation(line: 176, column: 17, scope: !3605, inlinedAt: !3505)
!3605 = distinct !DILexicalBlock(scope: !3599, file: !3492, line: 174, column: 5)
!3606 = !DILocation(line: 176, column: 16, scope: !3605, inlinedAt: !3505)
!3607 = !DILocation(line: 177, column: 19, scope: !3605, inlinedAt: !3505)
!3608 = !DILocation(line: 176, column: 9, scope: !3605, inlinedAt: !3505)
!3609 = distinct !{!3609, !3610, !3611, !520}
!3610 = !DILocation(line: 175, column: 7, scope: !3605, inlinedAt: !3505)
!3611 = !DILocation(line: 177, column: 59, scope: !3605, inlinedAt: !3505)
!3612 = !DILocation(line: 182, column: 22, scope: !3613, inlinedAt: !3505)
!3613 = distinct !DILexicalBlock(scope: !3605, file: !3492, line: 182, column: 11)
!3614 = !DILocation(line: 0, scope: !3526, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 182, column: 11, scope: !3613, inlinedAt: !3505)
!3616 = !DILocation(line: 235, column: 3, scope: !3526, inlinedAt: !3615)
!3617 = !DILocation(line: 182, column: 11, scope: !3605, inlinedAt: !3505)
!3618 = !DILocation(line: 184, column: 19, scope: !3605, inlinedAt: !3505)
!3619 = !DILocation(line: 184, column: 7, scope: !3605, inlinedAt: !3505)
!3620 = !DILocation(line: 185, column: 17, scope: !3605, inlinedAt: !3505)
!3621 = !DILocation(line: 185, column: 16, scope: !3605, inlinedAt: !3505)
!3622 = distinct !{!3622, !3619, !3623, !520}
!3623 = !DILocation(line: 185, column: 19, scope: !3605, inlinedAt: !3505)
!3624 = !DILocation(line: 190, column: 25, scope: !3605, inlinedAt: !3505)
!3625 = !DILocation(line: 0, scope: !3526, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 190, column: 14, scope: !3605, inlinedAt: !3505)
!3627 = !DILocation(line: 235, column: 3, scope: !3526, inlinedAt: !3626)
!3628 = !DILocation(line: 190, column: 14, scope: !3605, inlinedAt: !3505)
!3629 = !DILocation(line: 190, column: 7, scope: !3605, inlinedAt: !3505)
!3630 = !DILocation(line: 196, column: 19, scope: !3602, inlinedAt: !3505)
!3631 = !DILocation(line: 196, column: 7, scope: !3602, inlinedAt: !3505)
!3632 = !DILocation(line: 195, column: 17, scope: !3602, inlinedAt: !3505)
!3633 = !DILocation(line: 195, column: 16, scope: !3602, inlinedAt: !3505)
!3634 = distinct !{!3634, !3603, !3635, !520}
!3635 = !DILocation(line: 195, column: 19, scope: !3602, inlinedAt: !3505)
!3636 = !DILocation(line: 199, column: 14, scope: !3602, inlinedAt: !3505)
!3637 = !DILocation(line: 199, column: 19, scope: !3602, inlinedAt: !3505)
!3638 = !DILocation(line: 199, column: 27, scope: !3602, inlinedAt: !3505)
!3639 = !DILocation(line: 0, scope: !3526, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 199, column: 30, scope: !3602, inlinedAt: !3505)
!3641 = !DILocation(line: 197, column: 17, scope: !3602, inlinedAt: !3505)
!3642 = !DILocation(line: 197, column: 16, scope: !3602, inlinedAt: !3505)
!3643 = distinct !{!3643, !3631, !3644, !520}
!3644 = !DILocation(line: 197, column: 19, scope: !3602, inlinedAt: !3505)
!3645 = !DILocation(line: 202, column: 21, scope: !3646, inlinedAt: !3505)
!3646 = distinct !DILexicalBlock(scope: !3602, file: !3492, line: 200, column: 9)
!3647 = !DILocation(line: 202, column: 20, scope: !3646, inlinedAt: !3505)
!3648 = !DILocation(line: 205, column: 21, scope: !3646, inlinedAt: !3505)
!3649 = !DILocation(line: 205, column: 20, scope: !3646, inlinedAt: !3505)
!3650 = !DILocation(line: 199, column: 22, scope: !3602, inlinedAt: !3505)
!3651 = !DILocation(line: 235, column: 3, scope: !3526, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 215, column: 23, scope: !3653, inlinedAt: !3505)
!3653 = distinct !DILexicalBlock(scope: !3654, file: !3492, line: 215, column: 7)
!3654 = distinct !DILexicalBlock(scope: !3602, file: !3492, line: 215, column: 7)
!3655 = !DILocation(line: 213, column: 18, scope: !3602, inlinedAt: !3505)
!3656 = !DILocation(line: 0, scope: !3526, inlinedAt: !3652)
!3657 = !DILocation(line: 215, column: 7, scope: !3654, inlinedAt: !3505)
!3658 = !DILocation(line: 0, scope: !3654, inlinedAt: !3505)
!3659 = !DILocation(line: 0, scope: !3526, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 220, column: 23, scope: !3661, inlinedAt: !3505)
!3661 = distinct !DILexicalBlock(scope: !3662, file: !3492, line: 220, column: 7)
!3662 = distinct !DILexicalBlock(scope: !3602, file: !3492, line: 220, column: 7)
!3663 = !DILocation(line: 235, column: 3, scope: !3526, inlinedAt: !3660)
!3664 = !DILocation(line: 220, column: 7, scope: !3662, inlinedAt: !3505)
!3665 = !DILocation(line: 217, column: 19, scope: !3653, inlinedAt: !3505)
!3666 = !DILocation(line: 217, column: 18, scope: !3653, inlinedAt: !3505)
!3667 = !DILocation(line: 215, column: 41, scope: !3653, inlinedAt: !3505)
!3668 = !DILocation(line: 215, column: 34, scope: !3653, inlinedAt: !3505)
!3669 = distinct !{!3669, !3657, !3670, !520}
!3670 = !DILocation(line: 218, column: 37, scope: !3654, inlinedAt: !3505)
!3671 = !DILocation(line: 222, column: 19, scope: !3661, inlinedAt: !3505)
!3672 = !DILocation(line: 222, column: 18, scope: !3661, inlinedAt: !3505)
!3673 = !DILocation(line: 220, column: 41, scope: !3661, inlinedAt: !3505)
!3674 = !DILocation(line: 220, column: 34, scope: !3661, inlinedAt: !3505)
!3675 = distinct !{!3675, !3664, !3676, !520}
!3676 = !DILocation(line: 223, column: 37, scope: !3662, inlinedAt: !3505)
!3677 = !DILocation(line: 0, scope: !3662, inlinedAt: !3505)
!3678 = !DILocation(line: 225, column: 17, scope: !3679, inlinedAt: !3505)
!3679 = distinct !DILexicalBlock(scope: !3602, file: !3492, line: 225, column: 11)
!3680 = !DILocation(line: 225, column: 11, scope: !3602, inlinedAt: !3505)
!3681 = !DILocation(line: 226, column: 22, scope: !3679, inlinedAt: !3505)
!3682 = !DILocation(line: 226, column: 16, scope: !3679, inlinedAt: !3505)
!3683 = !DILocation(line: 226, column: 9, scope: !3679, inlinedAt: !3505)
!3684 = !DILocation(line: 228, column: 12, scope: !3685, inlinedAt: !3505)
!3685 = distinct !DILexicalBlock(scope: !3602, file: !3492, line: 228, column: 11)
!3686 = !DILocation(line: 0, scope: !3602, inlinedAt: !3505)
!3687 = !DILocation(line: 0, scope: !3509, inlinedAt: !3505)
!3688 = !DILocation(line: 33, column: 3, scope: !3485)
!3689 = distinct !DISubprogram(name: "version_etc_arn", scope: !343, file: !343, line: 61, type: !3690, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !3727)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{null, !3692, !47, !47, !47, !3726, !44}
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !3694)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !3695)
!3695 = !{!3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3694, file: !91, line: 51, baseType: !42, size: 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3694, file: !91, line: 54, baseType: !95, size: 64, offset: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3694, file: !91, line: 55, baseType: !95, size: 64, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3694, file: !91, line: 56, baseType: !95, size: 64, offset: 192)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3694, file: !91, line: 57, baseType: !95, size: 64, offset: 256)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3694, file: !91, line: 58, baseType: !95, size: 64, offset: 320)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3694, file: !91, line: 59, baseType: !95, size: 64, offset: 384)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3694, file: !91, line: 60, baseType: !95, size: 64, offset: 448)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3694, file: !91, line: 61, baseType: !95, size: 64, offset: 512)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3694, file: !91, line: 64, baseType: !95, size: 64, offset: 576)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3694, file: !91, line: 65, baseType: !95, size: 64, offset: 640)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3694, file: !91, line: 66, baseType: !95, size: 64, offset: 704)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3694, file: !91, line: 68, baseType: !107, size: 64, offset: 768)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3694, file: !91, line: 70, baseType: !3710, size: 64, offset: 832)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3694, file: !91, line: 72, baseType: !42, size: 32, offset: 896)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3694, file: !91, line: 73, baseType: !42, size: 32, offset: 928)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3694, file: !91, line: 74, baseType: !114, size: 64, offset: 960)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3694, file: !91, line: 77, baseType: !43, size: 16, offset: 1024)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3694, file: !91, line: 78, baseType: !117, size: 8, offset: 1040)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3694, file: !91, line: 79, baseType: !119, size: 8, offset: 1048)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3694, file: !91, line: 81, baseType: !123, size: 64, offset: 1088)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3694, file: !91, line: 89, baseType: !126, size: 64, offset: 1152)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3694, file: !91, line: 91, baseType: !128, size: 64, offset: 1216)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3694, file: !91, line: 92, baseType: !131, size: 64, offset: 1280)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3694, file: !91, line: 93, baseType: !3710, size: 64, offset: 1344)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3694, file: !91, line: 94, baseType: !135, size: 64, offset: 1408)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3694, file: !91, line: 95, baseType: !44, size: 64, offset: 1472)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3694, file: !91, line: 96, baseType: !42, size: 32, offset: 1536)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3694, file: !91, line: 98, baseType: !139, size: 160, offset: 1568)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!3727 = !{!3728, !3729, !3730, !3731, !3732, !3733}
!3728 = !DILocalVariable(name: "stream", arg: 1, scope: !3689, file: !343, line: 61, type: !3692)
!3729 = !DILocalVariable(name: "command_name", arg: 2, scope: !3689, file: !343, line: 62, type: !47)
!3730 = !DILocalVariable(name: "package", arg: 3, scope: !3689, file: !343, line: 62, type: !47)
!3731 = !DILocalVariable(name: "version", arg: 4, scope: !3689, file: !343, line: 63, type: !47)
!3732 = !DILocalVariable(name: "authors", arg: 5, scope: !3689, file: !343, line: 64, type: !3726)
!3733 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3689, file: !343, line: 64, type: !44)
!3734 = !DILocation(line: 0, scope: !3689)
!3735 = !DILocation(line: 66, column: 7, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3689, file: !343, line: 66, column: 7)
!3737 = !DILocation(line: 66, column: 7, scope: !3689)
!3738 = !DILocation(line: 67, column: 5, scope: !3736)
!3739 = !DILocation(line: 69, column: 5, scope: !3736)
!3740 = !DILocation(line: 83, column: 3, scope: !3689)
!3741 = !DILocation(line: 85, column: 3, scope: !3689)
!3742 = !DILocation(line: 88, column: 3, scope: !3689)
!3743 = !DILocation(line: 95, column: 3, scope: !3689)
!3744 = !DILocation(line: 97, column: 3, scope: !3689)
!3745 = !DILocation(line: 105, column: 7, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3689, file: !343, line: 98, column: 5)
!3747 = !DILocation(line: 106, column: 7, scope: !3746)
!3748 = !DILocation(line: 109, column: 7, scope: !3746)
!3749 = !DILocation(line: 110, column: 7, scope: !3746)
!3750 = !DILocation(line: 113, column: 7, scope: !3746)
!3751 = !DILocation(line: 115, column: 7, scope: !3746)
!3752 = !DILocation(line: 120, column: 7, scope: !3746)
!3753 = !DILocation(line: 122, column: 7, scope: !3746)
!3754 = !DILocation(line: 127, column: 7, scope: !3746)
!3755 = !DILocation(line: 129, column: 7, scope: !3746)
!3756 = !DILocation(line: 134, column: 7, scope: !3746)
!3757 = !DILocation(line: 137, column: 7, scope: !3746)
!3758 = !DILocation(line: 142, column: 7, scope: !3746)
!3759 = !DILocation(line: 145, column: 7, scope: !3746)
!3760 = !DILocation(line: 150, column: 7, scope: !3746)
!3761 = !DILocation(line: 154, column: 7, scope: !3746)
!3762 = !DILocation(line: 159, column: 7, scope: !3746)
!3763 = !DILocation(line: 163, column: 7, scope: !3746)
!3764 = !DILocation(line: 170, column: 7, scope: !3746)
!3765 = !DILocation(line: 174, column: 7, scope: !3746)
!3766 = !DILocation(line: 176, column: 1, scope: !3689)
!3767 = distinct !DISubprogram(name: "version_etc_ar", scope: !343, file: !343, line: 183, type: !3768, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !3770)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{null, !3692, !47, !47, !47, !3726}
!3770 = !{!3771, !3772, !3773, !3774, !3775, !3776}
!3771 = !DILocalVariable(name: "stream", arg: 1, scope: !3767, file: !343, line: 183, type: !3692)
!3772 = !DILocalVariable(name: "command_name", arg: 2, scope: !3767, file: !343, line: 184, type: !47)
!3773 = !DILocalVariable(name: "package", arg: 3, scope: !3767, file: !343, line: 184, type: !47)
!3774 = !DILocalVariable(name: "version", arg: 4, scope: !3767, file: !343, line: 185, type: !47)
!3775 = !DILocalVariable(name: "authors", arg: 5, scope: !3767, file: !343, line: 185, type: !3726)
!3776 = !DILocalVariable(name: "n_authors", scope: !3767, file: !343, line: 187, type: !44)
!3777 = !DILocation(line: 0, scope: !3767)
!3778 = !DILocation(line: 189, column: 8, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3767, file: !343, line: 189, column: 3)
!3780 = !DILocation(line: 0, scope: !3779)
!3781 = !DILocation(line: 189, column: 23, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3779, file: !343, line: 189, column: 3)
!3783 = !DILocation(line: 189, column: 3, scope: !3779)
!3784 = !DILocation(line: 189, column: 52, scope: !3782)
!3785 = distinct !{!3785, !3783, !3786, !520}
!3786 = !DILocation(line: 190, column: 5, scope: !3779)
!3787 = !DILocation(line: 191, column: 3, scope: !3767)
!3788 = !DILocation(line: 192, column: 1, scope: !3767)
!3789 = distinct !DISubprogram(name: "version_etc_va", scope: !343, file: !343, line: 199, type: !3790, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !3803)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{null, !3692, !47, !47, !47, !3792}
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !168, line: 52, baseType: !3793)
!3793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !170, line: 32, baseType: !3794)
!3794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3795, baseType: !3796)
!3795 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !174, size: 256, elements: !3797)
!3797 = !{!3798, !3799, !3800, !3801, !3802}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3796, file: !3795, line: 192, baseType: !135, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3796, file: !3795, line: 192, baseType: !135, size: 64, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3796, file: !3795, line: 192, baseType: !135, size: 64, offset: 128)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3796, file: !3795, line: 192, baseType: !42, size: 32, offset: 192)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3796, file: !3795, line: 192, baseType: !42, size: 32, offset: 224)
!3803 = !{!3804, !3805, !3806, !3807, !3808, !3809, !3810}
!3804 = !DILocalVariable(name: "stream", arg: 1, scope: !3789, file: !343, line: 199, type: !3692)
!3805 = !DILocalVariable(name: "command_name", arg: 2, scope: !3789, file: !343, line: 200, type: !47)
!3806 = !DILocalVariable(name: "package", arg: 3, scope: !3789, file: !343, line: 200, type: !47)
!3807 = !DILocalVariable(name: "version", arg: 4, scope: !3789, file: !343, line: 201, type: !47)
!3808 = !DILocalVariable(name: "authors", arg: 5, scope: !3789, file: !343, line: 201, type: !3792)
!3809 = !DILocalVariable(name: "n_authors", scope: !3789, file: !343, line: 203, type: !44)
!3810 = !DILocalVariable(name: "authtab", scope: !3789, file: !343, line: 204, type: !3811)
!3811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 640, elements: !233)
!3812 = !DILocation(line: 0, scope: !3789)
!3813 = !DILocation(line: 201, column: 46, scope: !3789)
!3814 = !DILocation(line: 204, column: 3, scope: !3789)
!3815 = !DILocation(line: 204, column: 15, scope: !3789)
!3816 = !DILocation(line: 208, column: 35, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !343, line: 206, column: 3)
!3818 = distinct !DILexicalBlock(scope: !3789, file: !343, line: 206, column: 3)
!3819 = !DILocation(line: 208, column: 14, scope: !3817)
!3820 = !DILocation(line: 208, column: 33, scope: !3817)
!3821 = !DILocation(line: 208, column: 67, scope: !3817)
!3822 = !DILocation(line: 206, column: 3, scope: !3818)
!3823 = !DILocation(line: 0, scope: !3818)
!3824 = !DILocation(line: 211, column: 3, scope: !3789)
!3825 = !DILocation(line: 213, column: 1, scope: !3789)
!3826 = distinct !DISubprogram(name: "version_etc", scope: !343, file: !343, line: 230, type: !3827, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !3829)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{null, !3692, !47, !47, !47, null}
!3829 = !{!3830, !3831, !3832, !3833, !3834}
!3830 = !DILocalVariable(name: "stream", arg: 1, scope: !3826, file: !343, line: 230, type: !3692)
!3831 = !DILocalVariable(name: "command_name", arg: 2, scope: !3826, file: !343, line: 231, type: !47)
!3832 = !DILocalVariable(name: "package", arg: 3, scope: !3826, file: !343, line: 231, type: !47)
!3833 = !DILocalVariable(name: "version", arg: 4, scope: !3826, file: !343, line: 232, type: !47)
!3834 = !DILocalVariable(name: "authors", scope: !3826, file: !343, line: 234, type: !3792)
!3835 = !DILocation(line: 0, scope: !3826)
!3836 = !DILocation(line: 234, column: 3, scope: !3826)
!3837 = !DILocation(line: 234, column: 11, scope: !3826)
!3838 = !DILocation(line: 235, column: 3, scope: !3826)
!3839 = !DILocation(line: 236, column: 3, scope: !3826)
!3840 = !DILocation(line: 237, column: 3, scope: !3826)
!3841 = !DILocation(line: 238, column: 1, scope: !3826)
!3842 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !343, file: !343, line: 241, type: !195, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !546)
!3843 = !DILocation(line: 243, column: 3, scope: !3842)
!3844 = !DILocation(line: 248, column: 3, scope: !3842)
!3845 = !DILocation(line: 254, column: 3, scope: !3842)
!3846 = !DILocation(line: 259, column: 3, scope: !3842)
!3847 = !DILocation(line: 261, column: 1, scope: !3842)
!3848 = distinct !DISubprogram(name: "xnrealloc", scope: !3849, file: !3849, line: 147, type: !3850, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !3852)
!3849 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!135, !135, !44, !44}
!3852 = !{!3853, !3854, !3855}
!3853 = !DILocalVariable(name: "p", arg: 1, scope: !3848, file: !3849, line: 147, type: !135)
!3854 = !DILocalVariable(name: "n", arg: 2, scope: !3848, file: !3849, line: 147, type: !44)
!3855 = !DILocalVariable(name: "s", arg: 3, scope: !3848, file: !3849, line: 147, type: !44)
!3856 = !DILocation(line: 0, scope: !3848)
!3857 = !DILocalVariable(name: "p", arg: 1, scope: !3858, file: !350, line: 83, type: !135)
!3858 = distinct !DISubprogram(name: "xreallocarray", scope: !350, file: !350, line: 83, type: !3850, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !3859)
!3859 = !{!3857, !3860, !3861}
!3860 = !DILocalVariable(name: "n", arg: 2, scope: !3858, file: !350, line: 83, type: !44)
!3861 = !DILocalVariable(name: "s", arg: 3, scope: !3858, file: !350, line: 83, type: !44)
!3862 = !DILocation(line: 0, scope: !3858, inlinedAt: !3863)
!3863 = distinct !DILocation(line: 149, column: 10, scope: !3848)
!3864 = !DILocation(line: 85, column: 25, scope: !3858, inlinedAt: !3863)
!3865 = !DILocalVariable(name: "p", arg: 1, scope: !3866, file: !350, line: 37, type: !135)
!3866 = distinct !DISubprogram(name: "check_nonnull", scope: !350, file: !350, line: 37, type: !3867, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !3869)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!135, !135}
!3869 = !{!3865}
!3870 = !DILocation(line: 0, scope: !3866, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 85, column: 10, scope: !3858, inlinedAt: !3863)
!3872 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !3871)
!3873 = distinct !DILexicalBlock(scope: !3866, file: !350, line: 39, column: 7)
!3874 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !3871)
!3875 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !3871)
!3876 = !DILocation(line: 149, column: 3, scope: !3848)
!3877 = !DILocation(line: 0, scope: !3858)
!3878 = !DILocation(line: 85, column: 25, scope: !3858)
!3879 = !DILocation(line: 0, scope: !3866, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 85, column: 10, scope: !3858)
!3881 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !3880)
!3882 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !3880)
!3883 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !3880)
!3884 = !DILocation(line: 85, column: 3, scope: !3858)
!3885 = distinct !DISubprogram(name: "xmalloc", scope: !350, file: !350, line: 47, type: !3886, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !3888)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!135, !44}
!3888 = !{!3889}
!3889 = !DILocalVariable(name: "s", arg: 1, scope: !3885, file: !350, line: 47, type: !44)
!3890 = !DILocation(line: 0, scope: !3885)
!3891 = !DILocation(line: 49, column: 25, scope: !3885)
!3892 = !DILocation(line: 0, scope: !3866, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 49, column: 10, scope: !3885)
!3894 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !3893)
!3895 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !3893)
!3896 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !3893)
!3897 = !DILocation(line: 49, column: 3, scope: !3885)
!3898 = distinct !DISubprogram(name: "ximalloc", scope: !350, file: !350, line: 53, type: !3899, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !3901)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!135, !369}
!3901 = !{!3902}
!3902 = !DILocalVariable(name: "s", arg: 1, scope: !3898, file: !350, line: 53, type: !369)
!3903 = !DILocation(line: 0, scope: !3898)
!3904 = !DILocalVariable(name: "s", arg: 1, scope: !3905, file: !3906, line: 55, type: !369)
!3905 = distinct !DISubprogram(name: "imalloc", scope: !3906, file: !3906, line: 55, type: !3899, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !3907)
!3906 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3907 = !{!3904}
!3908 = !DILocation(line: 0, scope: !3905, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 55, column: 25, scope: !3898)
!3910 = !DILocation(line: 57, column: 26, scope: !3905, inlinedAt: !3909)
!3911 = !DILocation(line: 0, scope: !3866, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 55, column: 10, scope: !3898)
!3913 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !3912)
!3914 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !3912)
!3915 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !3912)
!3916 = !DILocation(line: 55, column: 3, scope: !3898)
!3917 = distinct !DISubprogram(name: "xcharalloc", scope: !350, file: !350, line: 59, type: !3918, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !3920)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!95, !44}
!3920 = !{!3921}
!3921 = !DILocalVariable(name: "n", arg: 1, scope: !3917, file: !350, line: 59, type: !44)
!3922 = !DILocation(line: 0, scope: !3917)
!3923 = !DILocation(line: 0, scope: !3885, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 61, column: 10, scope: !3917)
!3925 = !DILocation(line: 49, column: 25, scope: !3885, inlinedAt: !3924)
!3926 = !DILocation(line: 0, scope: !3866, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 49, column: 10, scope: !3885, inlinedAt: !3924)
!3928 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !3927)
!3929 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !3927)
!3930 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !3927)
!3931 = !DILocation(line: 61, column: 3, scope: !3917)
!3932 = distinct !DISubprogram(name: "xrealloc", scope: !350, file: !350, line: 68, type: !3933, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !3935)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!135, !135, !44}
!3935 = !{!3936, !3937}
!3936 = !DILocalVariable(name: "p", arg: 1, scope: !3932, file: !350, line: 68, type: !135)
!3937 = !DILocalVariable(name: "s", arg: 2, scope: !3932, file: !350, line: 68, type: !44)
!3938 = !DILocation(line: 0, scope: !3932)
!3939 = !DILocalVariable(name: "ptr", arg: 1, scope: !3940, file: !3941, line: 2057, type: !135)
!3940 = distinct !DISubprogram(name: "rpl_realloc", scope: !3941, file: !3941, line: 2057, type: !3933, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !3942)
!3941 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3942 = !{!3939, !3943}
!3943 = !DILocalVariable(name: "size", arg: 2, scope: !3940, file: !3941, line: 2057, type: !44)
!3944 = !DILocation(line: 0, scope: !3940, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 70, column: 25, scope: !3932)
!3946 = !DILocation(line: 2059, column: 24, scope: !3940, inlinedAt: !3945)
!3947 = !DILocation(line: 2059, column: 10, scope: !3940, inlinedAt: !3945)
!3948 = !DILocation(line: 0, scope: !3866, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 70, column: 10, scope: !3932)
!3950 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !3949)
!3951 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !3949)
!3952 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !3949)
!3953 = !DILocation(line: 70, column: 3, scope: !3932)
!3954 = distinct !DISubprogram(name: "xirealloc", scope: !350, file: !350, line: 74, type: !3955, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !3957)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!135, !135, !369}
!3957 = !{!3958, !3959}
!3958 = !DILocalVariable(name: "p", arg: 1, scope: !3954, file: !350, line: 74, type: !135)
!3959 = !DILocalVariable(name: "s", arg: 2, scope: !3954, file: !350, line: 74, type: !369)
!3960 = !DILocation(line: 0, scope: !3954)
!3961 = !DILocalVariable(name: "p", arg: 1, scope: !3962, file: !3906, line: 66, type: !135)
!3962 = distinct !DISubprogram(name: "irealloc", scope: !3906, file: !3906, line: 66, type: !3955, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !3963)
!3963 = !{!3961, !3964}
!3964 = !DILocalVariable(name: "s", arg: 2, scope: !3962, file: !3906, line: 66, type: !369)
!3965 = !DILocation(line: 0, scope: !3962, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 76, column: 25, scope: !3954)
!3967 = !DILocation(line: 0, scope: !3940, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 68, column: 26, scope: !3962, inlinedAt: !3966)
!3969 = !DILocation(line: 2059, column: 24, scope: !3940, inlinedAt: !3968)
!3970 = !DILocation(line: 2059, column: 10, scope: !3940, inlinedAt: !3968)
!3971 = !DILocation(line: 0, scope: !3866, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 76, column: 10, scope: !3954)
!3973 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !3972)
!3974 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !3972)
!3975 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !3972)
!3976 = !DILocation(line: 76, column: 3, scope: !3954)
!3977 = distinct !DISubprogram(name: "xireallocarray", scope: !350, file: !350, line: 89, type: !3978, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !3980)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!135, !135, !369, !369}
!3980 = !{!3981, !3982, !3983}
!3981 = !DILocalVariable(name: "p", arg: 1, scope: !3977, file: !350, line: 89, type: !135)
!3982 = !DILocalVariable(name: "n", arg: 2, scope: !3977, file: !350, line: 89, type: !369)
!3983 = !DILocalVariable(name: "s", arg: 3, scope: !3977, file: !350, line: 89, type: !369)
!3984 = !DILocation(line: 0, scope: !3977)
!3985 = !DILocalVariable(name: "p", arg: 1, scope: !3986, file: !3906, line: 98, type: !135)
!3986 = distinct !DISubprogram(name: "ireallocarray", scope: !3906, file: !3906, line: 98, type: !3978, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !3987)
!3987 = !{!3985, !3988, !3989}
!3988 = !DILocalVariable(name: "n", arg: 2, scope: !3986, file: !3906, line: 98, type: !369)
!3989 = !DILocalVariable(name: "s", arg: 3, scope: !3986, file: !3906, line: 98, type: !369)
!3990 = !DILocation(line: 0, scope: !3986, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 91, column: 25, scope: !3977)
!3992 = !DILocation(line: 101, column: 13, scope: !3986, inlinedAt: !3991)
!3993 = !DILocation(line: 0, scope: !3866, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 91, column: 10, scope: !3977)
!3995 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !3994)
!3996 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !3994)
!3997 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !3994)
!3998 = !DILocation(line: 91, column: 3, scope: !3977)
!3999 = distinct !DISubprogram(name: "xnmalloc", scope: !350, file: !350, line: 98, type: !4000, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !4002)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!135, !44, !44}
!4002 = !{!4003, !4004}
!4003 = !DILocalVariable(name: "n", arg: 1, scope: !3999, file: !350, line: 98, type: !44)
!4004 = !DILocalVariable(name: "s", arg: 2, scope: !3999, file: !350, line: 98, type: !44)
!4005 = !DILocation(line: 0, scope: !3999)
!4006 = !DILocation(line: 0, scope: !3858, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 100, column: 10, scope: !3999)
!4008 = !DILocation(line: 85, column: 25, scope: !3858, inlinedAt: !4007)
!4009 = !DILocation(line: 0, scope: !3866, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 85, column: 10, scope: !3858, inlinedAt: !4007)
!4011 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !4010)
!4012 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !4010)
!4013 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !4010)
!4014 = !DILocation(line: 100, column: 3, scope: !3999)
!4015 = distinct !DISubprogram(name: "xinmalloc", scope: !350, file: !350, line: 104, type: !4016, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !4018)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!135, !369, !369}
!4018 = !{!4019, !4020}
!4019 = !DILocalVariable(name: "n", arg: 1, scope: !4015, file: !350, line: 104, type: !369)
!4020 = !DILocalVariable(name: "s", arg: 2, scope: !4015, file: !350, line: 104, type: !369)
!4021 = !DILocation(line: 0, scope: !4015)
!4022 = !DILocation(line: 0, scope: !3977, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 106, column: 10, scope: !4015)
!4024 = !DILocation(line: 0, scope: !3986, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 91, column: 25, scope: !3977, inlinedAt: !4023)
!4026 = !DILocation(line: 101, column: 13, scope: !3986, inlinedAt: !4025)
!4027 = !DILocation(line: 0, scope: !3866, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 91, column: 10, scope: !3977, inlinedAt: !4023)
!4029 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !4028)
!4030 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !4028)
!4031 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !4028)
!4032 = !DILocation(line: 106, column: 3, scope: !4015)
!4033 = distinct !DISubprogram(name: "x2realloc", scope: !350, file: !350, line: 116, type: !4034, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !4036)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!135, !135, !356}
!4036 = !{!4037, !4038}
!4037 = !DILocalVariable(name: "p", arg: 1, scope: !4033, file: !350, line: 116, type: !135)
!4038 = !DILocalVariable(name: "ps", arg: 2, scope: !4033, file: !350, line: 116, type: !356)
!4039 = !DILocation(line: 0, scope: !4033)
!4040 = !DILocation(line: 0, scope: !353, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 118, column: 10, scope: !4033)
!4042 = !DILocation(line: 178, column: 14, scope: !353, inlinedAt: !4041)
!4043 = !DILocation(line: 180, column: 9, scope: !4044, inlinedAt: !4041)
!4044 = distinct !DILexicalBlock(scope: !353, file: !350, line: 180, column: 7)
!4045 = !DILocation(line: 180, column: 7, scope: !353, inlinedAt: !4041)
!4046 = !DILocation(line: 182, column: 13, scope: !4047, inlinedAt: !4041)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !350, line: 182, column: 11)
!4048 = distinct !DILexicalBlock(scope: !4044, file: !350, line: 181, column: 5)
!4049 = !DILocation(line: 182, column: 11, scope: !4048, inlinedAt: !4041)
!4050 = !DILocation(line: 197, column: 11, scope: !4051, inlinedAt: !4041)
!4051 = distinct !DILexicalBlock(scope: !4052, file: !350, line: 197, column: 11)
!4052 = distinct !DILexicalBlock(scope: !4044, file: !350, line: 195, column: 5)
!4053 = !DILocation(line: 197, column: 11, scope: !4052, inlinedAt: !4041)
!4054 = !DILocation(line: 198, column: 9, scope: !4051, inlinedAt: !4041)
!4055 = !DILocation(line: 0, scope: !3858, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 201, column: 7, scope: !353, inlinedAt: !4041)
!4057 = !DILocation(line: 85, column: 25, scope: !3858, inlinedAt: !4056)
!4058 = !DILocation(line: 0, scope: !3866, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 85, column: 10, scope: !3858, inlinedAt: !4056)
!4060 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !4059)
!4061 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !4059)
!4062 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !4059)
!4063 = !DILocation(line: 202, column: 7, scope: !353, inlinedAt: !4041)
!4064 = !DILocation(line: 118, column: 3, scope: !4033)
!4065 = !DILocation(line: 0, scope: !353)
!4066 = !DILocation(line: 178, column: 14, scope: !353)
!4067 = !DILocation(line: 180, column: 9, scope: !4044)
!4068 = !DILocation(line: 180, column: 7, scope: !353)
!4069 = !DILocation(line: 182, column: 13, scope: !4047)
!4070 = !DILocation(line: 182, column: 11, scope: !4048)
!4071 = !DILocation(line: 190, column: 30, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4047, file: !350, line: 183, column: 9)
!4073 = !DILocation(line: 191, column: 16, scope: !4072)
!4074 = !DILocation(line: 191, column: 13, scope: !4072)
!4075 = !DILocation(line: 192, column: 9, scope: !4072)
!4076 = !DILocation(line: 197, column: 11, scope: !4051)
!4077 = !DILocation(line: 197, column: 11, scope: !4052)
!4078 = !DILocation(line: 198, column: 9, scope: !4051)
!4079 = !DILocation(line: 0, scope: !3858, inlinedAt: !4080)
!4080 = distinct !DILocation(line: 201, column: 7, scope: !353)
!4081 = !DILocation(line: 85, column: 25, scope: !3858, inlinedAt: !4080)
!4082 = !DILocation(line: 0, scope: !3866, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 85, column: 10, scope: !3858, inlinedAt: !4080)
!4084 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !4083)
!4085 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !4083)
!4086 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !4083)
!4087 = !DILocation(line: 202, column: 7, scope: !353)
!4088 = !DILocation(line: 203, column: 3, scope: !353)
!4089 = !DILocation(line: 0, scope: !365)
!4090 = !DILocation(line: 230, column: 14, scope: !365)
!4091 = !DILocation(line: 238, column: 7, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !365, file: !350, line: 238, column: 7)
!4093 = !DILocation(line: 238, column: 7, scope: !365)
!4094 = !DILocation(line: 240, column: 9, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !365, file: !350, line: 240, column: 7)
!4096 = !DILocation(line: 240, column: 18, scope: !4095)
!4097 = !DILocation(line: 253, column: 8, scope: !365)
!4098 = !DILocation(line: 258, column: 27, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4100, file: !350, line: 257, column: 5)
!4100 = distinct !DILexicalBlock(scope: !365, file: !350, line: 256, column: 7)
!4101 = !DILocation(line: 259, column: 32, scope: !4099)
!4102 = !DILocation(line: 260, column: 5, scope: !4099)
!4103 = !DILocation(line: 262, column: 9, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !365, file: !350, line: 262, column: 7)
!4105 = !DILocation(line: 262, column: 7, scope: !365)
!4106 = !DILocation(line: 263, column: 9, scope: !4104)
!4107 = !DILocation(line: 263, column: 5, scope: !4104)
!4108 = !DILocation(line: 264, column: 9, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !365, file: !350, line: 264, column: 7)
!4110 = !DILocation(line: 264, column: 14, scope: !4109)
!4111 = !DILocation(line: 265, column: 7, scope: !4109)
!4112 = !DILocation(line: 265, column: 11, scope: !4109)
!4113 = !DILocation(line: 266, column: 11, scope: !4109)
!4114 = !DILocation(line: 266, column: 26, scope: !4109)
!4115 = !DILocation(line: 267, column: 14, scope: !4109)
!4116 = !DILocation(line: 264, column: 7, scope: !365)
!4117 = !DILocation(line: 268, column: 5, scope: !4109)
!4118 = !DILocation(line: 0, scope: !3932, inlinedAt: !4119)
!4119 = distinct !DILocation(line: 269, column: 8, scope: !365)
!4120 = !DILocation(line: 0, scope: !3940, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 70, column: 25, scope: !3932, inlinedAt: !4119)
!4122 = !DILocation(line: 2059, column: 24, scope: !3940, inlinedAt: !4121)
!4123 = !DILocation(line: 2059, column: 10, scope: !3940, inlinedAt: !4121)
!4124 = !DILocation(line: 0, scope: !3866, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 70, column: 10, scope: !3932, inlinedAt: !4119)
!4126 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !4125)
!4127 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !4125)
!4128 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !4125)
!4129 = !DILocation(line: 270, column: 7, scope: !365)
!4130 = !DILocation(line: 271, column: 3, scope: !365)
!4131 = distinct !DISubprogram(name: "xzalloc", scope: !350, file: !350, line: 279, type: !3886, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !4132)
!4132 = !{!4133}
!4133 = !DILocalVariable(name: "s", arg: 1, scope: !4131, file: !350, line: 279, type: !44)
!4134 = !DILocation(line: 0, scope: !4131)
!4135 = !DILocalVariable(name: "n", arg: 1, scope: !4136, file: !350, line: 294, type: !44)
!4136 = distinct !DISubprogram(name: "xcalloc", scope: !350, file: !350, line: 294, type: !4000, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !4137)
!4137 = !{!4135, !4138}
!4138 = !DILocalVariable(name: "s", arg: 2, scope: !4136, file: !350, line: 294, type: !44)
!4139 = !DILocation(line: 0, scope: !4136, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 281, column: 10, scope: !4131)
!4141 = !DILocation(line: 296, column: 25, scope: !4136, inlinedAt: !4140)
!4142 = !DILocation(line: 0, scope: !3866, inlinedAt: !4143)
!4143 = distinct !DILocation(line: 296, column: 10, scope: !4136, inlinedAt: !4140)
!4144 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !4143)
!4145 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !4143)
!4146 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !4143)
!4147 = !DILocation(line: 281, column: 3, scope: !4131)
!4148 = !DILocation(line: 0, scope: !4136)
!4149 = !DILocation(line: 296, column: 25, scope: !4136)
!4150 = !DILocation(line: 0, scope: !3866, inlinedAt: !4151)
!4151 = distinct !DILocation(line: 296, column: 10, scope: !4136)
!4152 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !4151)
!4153 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !4151)
!4154 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !4151)
!4155 = !DILocation(line: 296, column: 3, scope: !4136)
!4156 = distinct !DISubprogram(name: "xizalloc", scope: !350, file: !350, line: 285, type: !3899, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !4157)
!4157 = !{!4158}
!4158 = !DILocalVariable(name: "s", arg: 1, scope: !4156, file: !350, line: 285, type: !369)
!4159 = !DILocation(line: 0, scope: !4156)
!4160 = !DILocalVariable(name: "n", arg: 1, scope: !4161, file: !350, line: 300, type: !369)
!4161 = distinct !DISubprogram(name: "xicalloc", scope: !350, file: !350, line: 300, type: !4016, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !4162)
!4162 = !{!4160, !4163}
!4163 = !DILocalVariable(name: "s", arg: 2, scope: !4161, file: !350, line: 300, type: !369)
!4164 = !DILocation(line: 0, scope: !4161, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 287, column: 10, scope: !4156)
!4166 = !DILocalVariable(name: "n", arg: 1, scope: !4167, file: !3906, line: 77, type: !369)
!4167 = distinct !DISubprogram(name: "icalloc", scope: !3906, file: !3906, line: 77, type: !4016, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !4168)
!4168 = !{!4166, !4169}
!4169 = !DILocalVariable(name: "s", arg: 2, scope: !4167, file: !3906, line: 77, type: !369)
!4170 = !DILocation(line: 0, scope: !4167, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 302, column: 25, scope: !4161, inlinedAt: !4165)
!4172 = !DILocation(line: 91, column: 10, scope: !4167, inlinedAt: !4171)
!4173 = !DILocation(line: 0, scope: !3866, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 302, column: 10, scope: !4161, inlinedAt: !4165)
!4175 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !4174)
!4176 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !4174)
!4177 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !4174)
!4178 = !DILocation(line: 287, column: 3, scope: !4156)
!4179 = !DILocation(line: 0, scope: !4161)
!4180 = !DILocation(line: 0, scope: !4167, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 302, column: 25, scope: !4161)
!4182 = !DILocation(line: 91, column: 10, scope: !4167, inlinedAt: !4181)
!4183 = !DILocation(line: 0, scope: !3866, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 302, column: 10, scope: !4161)
!4185 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !4184)
!4186 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !4184)
!4187 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !4184)
!4188 = !DILocation(line: 302, column: 3, scope: !4161)
!4189 = distinct !DISubprogram(name: "xmemdup", scope: !350, file: !350, line: 310, type: !4190, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !4192)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!135, !672, !44}
!4192 = !{!4193, !4194}
!4193 = !DILocalVariable(name: "p", arg: 1, scope: !4189, file: !350, line: 310, type: !672)
!4194 = !DILocalVariable(name: "s", arg: 2, scope: !4189, file: !350, line: 310, type: !44)
!4195 = !DILocation(line: 0, scope: !4189)
!4196 = !DILocation(line: 0, scope: !3885, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 312, column: 18, scope: !4189)
!4198 = !DILocation(line: 49, column: 25, scope: !3885, inlinedAt: !4197)
!4199 = !DILocation(line: 0, scope: !3866, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 49, column: 10, scope: !3885, inlinedAt: !4197)
!4201 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !4200)
!4202 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !4200)
!4203 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !4200)
!4204 = !DILocalVariable(name: "__dest", arg: 1, scope: !4205, file: !2420, line: 26, type: !4208)
!4205 = distinct !DISubprogram(name: "memcpy", scope: !2420, file: !2420, line: 26, type: !4206, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !4209)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!135, !4208, !671, !44}
!4208 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !135)
!4209 = !{!4204, !4210, !4211}
!4210 = !DILocalVariable(name: "__src", arg: 2, scope: !4205, file: !2420, line: 26, type: !671)
!4211 = !DILocalVariable(name: "__len", arg: 3, scope: !4205, file: !2420, line: 26, type: !44)
!4212 = !DILocation(line: 0, scope: !4205, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 312, column: 10, scope: !4189)
!4214 = !DILocation(line: 29, column: 10, scope: !4205, inlinedAt: !4213)
!4215 = !DILocation(line: 312, column: 3, scope: !4189)
!4216 = distinct !DISubprogram(name: "ximemdup", scope: !350, file: !350, line: 316, type: !4217, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !4219)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!135, !672, !369}
!4219 = !{!4220, !4221}
!4220 = !DILocalVariable(name: "p", arg: 1, scope: !4216, file: !350, line: 316, type: !672)
!4221 = !DILocalVariable(name: "s", arg: 2, scope: !4216, file: !350, line: 316, type: !369)
!4222 = !DILocation(line: 0, scope: !4216)
!4223 = !DILocation(line: 0, scope: !3898, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 318, column: 18, scope: !4216)
!4225 = !DILocation(line: 0, scope: !3905, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 55, column: 25, scope: !3898, inlinedAt: !4224)
!4227 = !DILocation(line: 57, column: 26, scope: !3905, inlinedAt: !4226)
!4228 = !DILocation(line: 0, scope: !3866, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 55, column: 10, scope: !3898, inlinedAt: !4224)
!4230 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !4229)
!4231 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !4229)
!4232 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !4229)
!4233 = !DILocation(line: 0, scope: !4205, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 318, column: 10, scope: !4216)
!4235 = !DILocation(line: 29, column: 10, scope: !4205, inlinedAt: !4234)
!4236 = !DILocation(line: 318, column: 3, scope: !4216)
!4237 = distinct !DISubprogram(name: "ximemdup0", scope: !350, file: !350, line: 325, type: !4238, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !4240)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!95, !672, !369}
!4240 = !{!4241, !4242, !4243}
!4241 = !DILocalVariable(name: "p", arg: 1, scope: !4237, file: !350, line: 325, type: !672)
!4242 = !DILocalVariable(name: "s", arg: 2, scope: !4237, file: !350, line: 325, type: !369)
!4243 = !DILocalVariable(name: "result", scope: !4237, file: !350, line: 327, type: !95)
!4244 = !DILocation(line: 0, scope: !4237)
!4245 = !DILocation(line: 327, column: 30, scope: !4237)
!4246 = !DILocation(line: 0, scope: !3898, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 327, column: 18, scope: !4237)
!4248 = !DILocation(line: 0, scope: !3905, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 55, column: 25, scope: !3898, inlinedAt: !4247)
!4250 = !DILocation(line: 57, column: 26, scope: !3905, inlinedAt: !4249)
!4251 = !DILocation(line: 0, scope: !3866, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 55, column: 10, scope: !3898, inlinedAt: !4247)
!4253 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !4252)
!4254 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !4252)
!4255 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !4252)
!4256 = !DILocation(line: 328, column: 3, scope: !4237)
!4257 = !DILocation(line: 328, column: 13, scope: !4237)
!4258 = !DILocation(line: 0, scope: !4205, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 329, column: 10, scope: !4237)
!4260 = !DILocation(line: 29, column: 10, scope: !4205, inlinedAt: !4259)
!4261 = !DILocation(line: 329, column: 3, scope: !4237)
!4262 = distinct !DISubprogram(name: "xstrdup", scope: !350, file: !350, line: 335, type: !666, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !4263)
!4263 = !{!4264}
!4264 = !DILocalVariable(name: "string", arg: 1, scope: !4262, file: !350, line: 335, type: !47)
!4265 = !DILocation(line: 0, scope: !4262)
!4266 = !DILocation(line: 337, column: 27, scope: !4262)
!4267 = !DILocation(line: 337, column: 43, scope: !4262)
!4268 = !DILocation(line: 0, scope: !4189, inlinedAt: !4269)
!4269 = distinct !DILocation(line: 337, column: 10, scope: !4262)
!4270 = !DILocation(line: 0, scope: !3885, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 312, column: 18, scope: !4189, inlinedAt: !4269)
!4272 = !DILocation(line: 49, column: 25, scope: !3885, inlinedAt: !4271)
!4273 = !DILocation(line: 0, scope: !3866, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 49, column: 10, scope: !3885, inlinedAt: !4271)
!4275 = !DILocation(line: 39, column: 8, scope: !3873, inlinedAt: !4274)
!4276 = !DILocation(line: 39, column: 7, scope: !3866, inlinedAt: !4274)
!4277 = !DILocation(line: 40, column: 5, scope: !3873, inlinedAt: !4274)
!4278 = !DILocation(line: 0, scope: !4205, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 312, column: 10, scope: !4189, inlinedAt: !4269)
!4280 = !DILocation(line: 29, column: 10, scope: !4205, inlinedAt: !4279)
!4281 = !DILocation(line: 337, column: 3, scope: !4262)
!4282 = distinct !DISubprogram(name: "xalloc_die", scope: !384, file: !384, line: 32, type: !195, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !383, retainedNodes: !4283)
!4283 = !{!4284}
!4284 = !DILocalVariable(name: "__errstatus", scope: !4285, file: !384, line: 34, type: !4286)
!4285 = distinct !DILexicalBlock(scope: !4282, file: !384, line: 34, column: 3)
!4286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!4287 = !DILocation(line: 34, column: 3, scope: !4285)
!4288 = !DILocation(line: 0, scope: !4285)
!4289 = !DILocation(line: 40, column: 3, scope: !4282)
!4290 = distinct !DISubprogram(name: "close_stream", scope: !386, file: !386, line: 55, type: !4291, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !385, retainedNodes: !4327)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!42, !4293}
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !4295)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !4296)
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4295, file: !91, line: 51, baseType: !42, size: 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4295, file: !91, line: 54, baseType: !95, size: 64, offset: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4295, file: !91, line: 55, baseType: !95, size: 64, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4295, file: !91, line: 56, baseType: !95, size: 64, offset: 192)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4295, file: !91, line: 57, baseType: !95, size: 64, offset: 256)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4295, file: !91, line: 58, baseType: !95, size: 64, offset: 320)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4295, file: !91, line: 59, baseType: !95, size: 64, offset: 384)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4295, file: !91, line: 60, baseType: !95, size: 64, offset: 448)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4295, file: !91, line: 61, baseType: !95, size: 64, offset: 512)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4295, file: !91, line: 64, baseType: !95, size: 64, offset: 576)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4295, file: !91, line: 65, baseType: !95, size: 64, offset: 640)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4295, file: !91, line: 66, baseType: !95, size: 64, offset: 704)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4295, file: !91, line: 68, baseType: !107, size: 64, offset: 768)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4295, file: !91, line: 70, baseType: !4311, size: 64, offset: 832)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4295, file: !91, line: 72, baseType: !42, size: 32, offset: 896)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4295, file: !91, line: 73, baseType: !42, size: 32, offset: 928)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4295, file: !91, line: 74, baseType: !114, size: 64, offset: 960)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4295, file: !91, line: 77, baseType: !43, size: 16, offset: 1024)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4295, file: !91, line: 78, baseType: !117, size: 8, offset: 1040)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4295, file: !91, line: 79, baseType: !119, size: 8, offset: 1048)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4295, file: !91, line: 81, baseType: !123, size: 64, offset: 1088)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4295, file: !91, line: 89, baseType: !126, size: 64, offset: 1152)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4295, file: !91, line: 91, baseType: !128, size: 64, offset: 1216)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4295, file: !91, line: 92, baseType: !131, size: 64, offset: 1280)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4295, file: !91, line: 93, baseType: !4311, size: 64, offset: 1344)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4295, file: !91, line: 94, baseType: !135, size: 64, offset: 1408)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4295, file: !91, line: 95, baseType: !44, size: 64, offset: 1472)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4295, file: !91, line: 96, baseType: !42, size: 32, offset: 1536)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4295, file: !91, line: 98, baseType: !139, size: 160, offset: 1568)
!4327 = !{!4328, !4329, !4331, !4332}
!4328 = !DILocalVariable(name: "stream", arg: 1, scope: !4290, file: !386, line: 55, type: !4293)
!4329 = !DILocalVariable(name: "some_pending", scope: !4290, file: !386, line: 57, type: !4330)
!4330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!4331 = !DILocalVariable(name: "prev_fail", scope: !4290, file: !386, line: 58, type: !4330)
!4332 = !DILocalVariable(name: "fclose_fail", scope: !4290, file: !386, line: 59, type: !4330)
!4333 = !DILocation(line: 0, scope: !4290)
!4334 = !DILocation(line: 57, column: 30, scope: !4290)
!4335 = !DILocalVariable(name: "__stream", arg: 1, scope: !4336, file: !2037, line: 135, type: !4293)
!4336 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2037, file: !2037, line: 135, type: !4291, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !385, retainedNodes: !4337)
!4337 = !{!4335}
!4338 = !DILocation(line: 0, scope: !4336, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 58, column: 27, scope: !4290)
!4340 = !DILocation(line: 137, column: 10, scope: !4336, inlinedAt: !4339)
!4341 = !{!2046, !555, i64 0}
!4342 = !DILocation(line: 58, column: 43, scope: !4290)
!4343 = !DILocation(line: 59, column: 29, scope: !4290)
!4344 = !DILocation(line: 59, column: 45, scope: !4290)
!4345 = !DILocation(line: 69, column: 17, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4290, file: !386, line: 69, column: 7)
!4347 = !DILocation(line: 57, column: 50, scope: !4290)
!4348 = !DILocation(line: 69, column: 33, scope: !4346)
!4349 = !DILocation(line: 69, column: 53, scope: !4346)
!4350 = !DILocation(line: 69, column: 59, scope: !4346)
!4351 = !DILocation(line: 69, column: 7, scope: !4290)
!4352 = !DILocation(line: 71, column: 11, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4346, file: !386, line: 70, column: 5)
!4354 = !DILocation(line: 72, column: 9, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4353, file: !386, line: 71, column: 11)
!4356 = !DILocation(line: 72, column: 15, scope: !4355)
!4357 = !DILocation(line: 77, column: 1, scope: !4290)
!4358 = distinct !DISubprogram(name: "rpl_fclose", scope: !388, file: !388, line: 58, type: !4359, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !4395)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!42, !4361}
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !4363)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !4364)
!4364 = !{!4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4363, file: !91, line: 51, baseType: !42, size: 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4363, file: !91, line: 54, baseType: !95, size: 64, offset: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4363, file: !91, line: 55, baseType: !95, size: 64, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4363, file: !91, line: 56, baseType: !95, size: 64, offset: 192)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4363, file: !91, line: 57, baseType: !95, size: 64, offset: 256)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4363, file: !91, line: 58, baseType: !95, size: 64, offset: 320)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4363, file: !91, line: 59, baseType: !95, size: 64, offset: 384)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4363, file: !91, line: 60, baseType: !95, size: 64, offset: 448)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4363, file: !91, line: 61, baseType: !95, size: 64, offset: 512)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4363, file: !91, line: 64, baseType: !95, size: 64, offset: 576)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4363, file: !91, line: 65, baseType: !95, size: 64, offset: 640)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4363, file: !91, line: 66, baseType: !95, size: 64, offset: 704)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4363, file: !91, line: 68, baseType: !107, size: 64, offset: 768)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4363, file: !91, line: 70, baseType: !4379, size: 64, offset: 832)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4363, file: !91, line: 72, baseType: !42, size: 32, offset: 896)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4363, file: !91, line: 73, baseType: !42, size: 32, offset: 928)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4363, file: !91, line: 74, baseType: !114, size: 64, offset: 960)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4363, file: !91, line: 77, baseType: !43, size: 16, offset: 1024)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4363, file: !91, line: 78, baseType: !117, size: 8, offset: 1040)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4363, file: !91, line: 79, baseType: !119, size: 8, offset: 1048)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4363, file: !91, line: 81, baseType: !123, size: 64, offset: 1088)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4363, file: !91, line: 89, baseType: !126, size: 64, offset: 1152)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4363, file: !91, line: 91, baseType: !128, size: 64, offset: 1216)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4363, file: !91, line: 92, baseType: !131, size: 64, offset: 1280)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4363, file: !91, line: 93, baseType: !4379, size: 64, offset: 1344)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4363, file: !91, line: 94, baseType: !135, size: 64, offset: 1408)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4363, file: !91, line: 95, baseType: !44, size: 64, offset: 1472)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4363, file: !91, line: 96, baseType: !42, size: 32, offset: 1536)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4363, file: !91, line: 98, baseType: !139, size: 160, offset: 1568)
!4395 = !{!4396, !4397, !4398, !4399}
!4396 = !DILocalVariable(name: "fp", arg: 1, scope: !4358, file: !388, line: 58, type: !4361)
!4397 = !DILocalVariable(name: "saved_errno", scope: !4358, file: !388, line: 60, type: !42)
!4398 = !DILocalVariable(name: "fd", scope: !4358, file: !388, line: 63, type: !42)
!4399 = !DILocalVariable(name: "result", scope: !4358, file: !388, line: 74, type: !42)
!4400 = !DILocation(line: 0, scope: !4358)
!4401 = !DILocation(line: 63, column: 12, scope: !4358)
!4402 = !DILocation(line: 64, column: 10, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4358, file: !388, line: 64, column: 7)
!4404 = !DILocation(line: 64, column: 7, scope: !4358)
!4405 = !DILocation(line: 65, column: 12, scope: !4403)
!4406 = !DILocation(line: 65, column: 5, scope: !4403)
!4407 = !DILocation(line: 70, column: 9, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4358, file: !388, line: 70, column: 7)
!4409 = !DILocation(line: 70, column: 23, scope: !4408)
!4410 = !DILocation(line: 70, column: 33, scope: !4408)
!4411 = !DILocation(line: 70, column: 26, scope: !4408)
!4412 = !DILocation(line: 70, column: 59, scope: !4408)
!4413 = !DILocation(line: 71, column: 7, scope: !4408)
!4414 = !DILocation(line: 71, column: 10, scope: !4408)
!4415 = !DILocation(line: 70, column: 7, scope: !4358)
!4416 = !DILocation(line: 100, column: 12, scope: !4358)
!4417 = !DILocation(line: 105, column: 7, scope: !4358)
!4418 = !DILocation(line: 72, column: 19, scope: !4408)
!4419 = !DILocation(line: 105, column: 19, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4358, file: !388, line: 105, column: 7)
!4421 = !DILocation(line: 107, column: 13, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4420, file: !388, line: 106, column: 5)
!4423 = !DILocation(line: 109, column: 5, scope: !4422)
!4424 = !DILocation(line: 112, column: 1, scope: !4358)
!4425 = !DISubprogram(name: "fileno", scope: !168, file: !168, line: 809, type: !4359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!4426 = !DISubprogram(name: "fclose", scope: !168, file: !168, line: 178, type: !4359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!4427 = !DISubprogram(name: "lseek", scope: !1856, file: !1856, line: 339, type: !4428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!114, !42, !114, !42}
!4430 = distinct !DISubprogram(name: "rpl_fflush", scope: !390, file: !390, line: 130, type: !4431, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4467)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!42, !4433}
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !4435)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !4436)
!4436 = !{!4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4435, file: !91, line: 51, baseType: !42, size: 32)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4435, file: !91, line: 54, baseType: !95, size: 64, offset: 64)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4435, file: !91, line: 55, baseType: !95, size: 64, offset: 128)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4435, file: !91, line: 56, baseType: !95, size: 64, offset: 192)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4435, file: !91, line: 57, baseType: !95, size: 64, offset: 256)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4435, file: !91, line: 58, baseType: !95, size: 64, offset: 320)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4435, file: !91, line: 59, baseType: !95, size: 64, offset: 384)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4435, file: !91, line: 60, baseType: !95, size: 64, offset: 448)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4435, file: !91, line: 61, baseType: !95, size: 64, offset: 512)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4435, file: !91, line: 64, baseType: !95, size: 64, offset: 576)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4435, file: !91, line: 65, baseType: !95, size: 64, offset: 640)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4435, file: !91, line: 66, baseType: !95, size: 64, offset: 704)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4435, file: !91, line: 68, baseType: !107, size: 64, offset: 768)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4435, file: !91, line: 70, baseType: !4451, size: 64, offset: 832)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4435, file: !91, line: 72, baseType: !42, size: 32, offset: 896)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4435, file: !91, line: 73, baseType: !42, size: 32, offset: 928)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4435, file: !91, line: 74, baseType: !114, size: 64, offset: 960)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4435, file: !91, line: 77, baseType: !43, size: 16, offset: 1024)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4435, file: !91, line: 78, baseType: !117, size: 8, offset: 1040)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4435, file: !91, line: 79, baseType: !119, size: 8, offset: 1048)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4435, file: !91, line: 81, baseType: !123, size: 64, offset: 1088)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4435, file: !91, line: 89, baseType: !126, size: 64, offset: 1152)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4435, file: !91, line: 91, baseType: !128, size: 64, offset: 1216)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4435, file: !91, line: 92, baseType: !131, size: 64, offset: 1280)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4435, file: !91, line: 93, baseType: !4451, size: 64, offset: 1344)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4435, file: !91, line: 94, baseType: !135, size: 64, offset: 1408)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4435, file: !91, line: 95, baseType: !44, size: 64, offset: 1472)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4435, file: !91, line: 96, baseType: !42, size: 32, offset: 1536)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4435, file: !91, line: 98, baseType: !139, size: 160, offset: 1568)
!4467 = !{!4468}
!4468 = !DILocalVariable(name: "stream", arg: 1, scope: !4430, file: !390, line: 130, type: !4433)
!4469 = !DILocation(line: 0, scope: !4430)
!4470 = !DILocation(line: 151, column: 14, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4430, file: !390, line: 151, column: 7)
!4472 = !DILocation(line: 151, column: 22, scope: !4471)
!4473 = !DILocation(line: 151, column: 27, scope: !4471)
!4474 = !DILocation(line: 151, column: 7, scope: !4430)
!4475 = !DILocation(line: 152, column: 12, scope: !4471)
!4476 = !DILocation(line: 152, column: 5, scope: !4471)
!4477 = !DILocalVariable(name: "fp", arg: 1, scope: !4478, file: !390, line: 42, type: !4433)
!4478 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !390, file: !390, line: 42, type: !4479, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4481)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{null, !4433}
!4481 = !{!4477}
!4482 = !DILocation(line: 0, scope: !4478, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 157, column: 3, scope: !4430)
!4484 = !DILocation(line: 44, column: 12, scope: !4485, inlinedAt: !4483)
!4485 = distinct !DILexicalBlock(scope: !4478, file: !390, line: 44, column: 7)
!4486 = !DILocation(line: 44, column: 19, scope: !4485, inlinedAt: !4483)
!4487 = !DILocation(line: 44, column: 7, scope: !4478, inlinedAt: !4483)
!4488 = !DILocation(line: 46, column: 5, scope: !4485, inlinedAt: !4483)
!4489 = !DILocation(line: 159, column: 10, scope: !4430)
!4490 = !DILocation(line: 159, column: 3, scope: !4430)
!4491 = !DILocation(line: 236, column: 1, scope: !4430)
!4492 = !DISubprogram(name: "fflush", scope: !168, file: !168, line: 230, type: !4431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!4493 = distinct !DISubprogram(name: "rpl_fseeko", scope: !392, file: !392, line: 28, type: !4494, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !4531)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!42, !4496, !4530, !42}
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !89, line: 7, baseType: !4498)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !91, line: 49, size: 1728, elements: !4499)
!4499 = !{!4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4498, file: !91, line: 51, baseType: !42, size: 32)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4498, file: !91, line: 54, baseType: !95, size: 64, offset: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4498, file: !91, line: 55, baseType: !95, size: 64, offset: 128)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4498, file: !91, line: 56, baseType: !95, size: 64, offset: 192)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4498, file: !91, line: 57, baseType: !95, size: 64, offset: 256)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4498, file: !91, line: 58, baseType: !95, size: 64, offset: 320)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4498, file: !91, line: 59, baseType: !95, size: 64, offset: 384)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4498, file: !91, line: 60, baseType: !95, size: 64, offset: 448)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4498, file: !91, line: 61, baseType: !95, size: 64, offset: 512)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4498, file: !91, line: 64, baseType: !95, size: 64, offset: 576)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4498, file: !91, line: 65, baseType: !95, size: 64, offset: 640)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4498, file: !91, line: 66, baseType: !95, size: 64, offset: 704)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4498, file: !91, line: 68, baseType: !107, size: 64, offset: 768)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4498, file: !91, line: 70, baseType: !4514, size: 64, offset: 832)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4498, file: !91, line: 72, baseType: !42, size: 32, offset: 896)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4498, file: !91, line: 73, baseType: !42, size: 32, offset: 928)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4498, file: !91, line: 74, baseType: !114, size: 64, offset: 960)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4498, file: !91, line: 77, baseType: !43, size: 16, offset: 1024)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4498, file: !91, line: 78, baseType: !117, size: 8, offset: 1040)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4498, file: !91, line: 79, baseType: !119, size: 8, offset: 1048)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4498, file: !91, line: 81, baseType: !123, size: 64, offset: 1088)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4498, file: !91, line: 89, baseType: !126, size: 64, offset: 1152)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4498, file: !91, line: 91, baseType: !128, size: 64, offset: 1216)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4498, file: !91, line: 92, baseType: !131, size: 64, offset: 1280)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4498, file: !91, line: 93, baseType: !4514, size: 64, offset: 1344)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4498, file: !91, line: 94, baseType: !135, size: 64, offset: 1408)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4498, file: !91, line: 95, baseType: !44, size: 64, offset: 1472)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4498, file: !91, line: 96, baseType: !42, size: 32, offset: 1536)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4498, file: !91, line: 98, baseType: !139, size: 160, offset: 1568)
!4530 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !168, line: 63, baseType: !114)
!4531 = !{!4532, !4533, !4534, !4535}
!4532 = !DILocalVariable(name: "fp", arg: 1, scope: !4493, file: !392, line: 28, type: !4496)
!4533 = !DILocalVariable(name: "offset", arg: 2, scope: !4493, file: !392, line: 28, type: !4530)
!4534 = !DILocalVariable(name: "whence", arg: 3, scope: !4493, file: !392, line: 28, type: !42)
!4535 = !DILocalVariable(name: "pos", scope: !4536, file: !392, line: 123, type: !4530)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !392, line: 119, column: 5)
!4537 = distinct !DILexicalBlock(scope: !4493, file: !392, line: 55, column: 7)
!4538 = !DILocation(line: 0, scope: !4493)
!4539 = !DILocation(line: 55, column: 12, scope: !4537)
!4540 = !{!2046, !426, i64 16}
!4541 = !DILocation(line: 55, column: 33, scope: !4537)
!4542 = !{!2046, !426, i64 8}
!4543 = !DILocation(line: 55, column: 25, scope: !4537)
!4544 = !DILocation(line: 56, column: 7, scope: !4537)
!4545 = !DILocation(line: 56, column: 15, scope: !4537)
!4546 = !DILocation(line: 56, column: 37, scope: !4537)
!4547 = !{!2046, !426, i64 32}
!4548 = !DILocation(line: 56, column: 29, scope: !4537)
!4549 = !DILocation(line: 57, column: 7, scope: !4537)
!4550 = !DILocation(line: 57, column: 15, scope: !4537)
!4551 = !{!2046, !426, i64 72}
!4552 = !DILocation(line: 57, column: 29, scope: !4537)
!4553 = !DILocation(line: 55, column: 7, scope: !4493)
!4554 = !DILocation(line: 123, column: 26, scope: !4536)
!4555 = !DILocation(line: 123, column: 19, scope: !4536)
!4556 = !DILocation(line: 0, scope: !4536)
!4557 = !DILocation(line: 124, column: 15, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4536, file: !392, line: 124, column: 11)
!4559 = !DILocation(line: 124, column: 11, scope: !4536)
!4560 = !DILocation(line: 135, column: 12, scope: !4536)
!4561 = !DILocation(line: 135, column: 19, scope: !4536)
!4562 = !DILocation(line: 136, column: 12, scope: !4536)
!4563 = !DILocation(line: 136, column: 20, scope: !4536)
!4564 = !{!2046, !1060, i64 144}
!4565 = !DILocation(line: 167, column: 7, scope: !4536)
!4566 = !DILocation(line: 169, column: 10, scope: !4493)
!4567 = !DILocation(line: 169, column: 3, scope: !4493)
!4568 = !DILocation(line: 170, column: 1, scope: !4493)
!4569 = !DISubprogram(name: "fseeko", scope: !168, file: !168, line: 736, type: !4570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!42, !4496, !114, !42}
!4572 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !319, file: !319, line: 100, type: !4573, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4577)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!44, !4575, !47, !44, !4576}
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!4577 = !{!4578, !4579, !4580, !4581, !4582}
!4578 = !DILocalVariable(name: "pwc", arg: 1, scope: !4572, file: !319, line: 100, type: !4575)
!4579 = !DILocalVariable(name: "s", arg: 2, scope: !4572, file: !319, line: 100, type: !47)
!4580 = !DILocalVariable(name: "n", arg: 3, scope: !4572, file: !319, line: 100, type: !44)
!4581 = !DILocalVariable(name: "ps", arg: 4, scope: !4572, file: !319, line: 100, type: !4576)
!4582 = !DILocalVariable(name: "ret", scope: !4572, file: !319, line: 130, type: !44)
!4583 = !DILocation(line: 0, scope: !4572)
!4584 = !DILocation(line: 105, column: 9, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4572, file: !319, line: 105, column: 7)
!4586 = !DILocation(line: 105, column: 7, scope: !4572)
!4587 = !DILocation(line: 117, column: 10, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4572, file: !319, line: 117, column: 7)
!4589 = !DILocation(line: 117, column: 7, scope: !4572)
!4590 = !DILocation(line: 130, column: 16, scope: !4572)
!4591 = !DILocation(line: 135, column: 11, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4572, file: !319, line: 135, column: 7)
!4593 = !DILocation(line: 135, column: 25, scope: !4592)
!4594 = !DILocation(line: 135, column: 30, scope: !4592)
!4595 = !DILocation(line: 135, column: 7, scope: !4572)
!4596 = !DILocalVariable(name: "ps", arg: 1, scope: !4597, file: !2411, line: 1135, type: !4576)
!4597 = distinct !DISubprogram(name: "mbszero", scope: !2411, file: !2411, line: 1135, type: !4598, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4600)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{null, !4576}
!4600 = !{!4596}
!4601 = !DILocation(line: 0, scope: !4597, inlinedAt: !4602)
!4602 = distinct !DILocation(line: 137, column: 5, scope: !4592)
!4603 = !DILocalVariable(name: "__dest", arg: 1, scope: !4604, file: !2420, line: 57, type: !135)
!4604 = distinct !DISubprogram(name: "memset", scope: !2420, file: !2420, line: 57, type: !2421, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4605)
!4605 = !{!4603, !4606, !4607}
!4606 = !DILocalVariable(name: "__ch", arg: 2, scope: !4604, file: !2420, line: 57, type: !42)
!4607 = !DILocalVariable(name: "__len", arg: 3, scope: !4604, file: !2420, line: 57, type: !44)
!4608 = !DILocation(line: 0, scope: !4604, inlinedAt: !4609)
!4609 = distinct !DILocation(line: 1137, column: 3, scope: !4597, inlinedAt: !4602)
!4610 = !DILocation(line: 59, column: 10, scope: !4604, inlinedAt: !4609)
!4611 = !DILocation(line: 137, column: 5, scope: !4592)
!4612 = !DILocation(line: 138, column: 11, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4572, file: !319, line: 138, column: 7)
!4614 = !DILocation(line: 138, column: 7, scope: !4572)
!4615 = !DILocation(line: 139, column: 5, scope: !4613)
!4616 = !DILocation(line: 143, column: 26, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4572, file: !319, line: 143, column: 7)
!4618 = !DILocation(line: 143, column: 41, scope: !4617)
!4619 = !DILocation(line: 143, column: 7, scope: !4572)
!4620 = !DILocation(line: 145, column: 15, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4622, file: !319, line: 145, column: 11)
!4622 = distinct !DILexicalBlock(scope: !4617, file: !319, line: 144, column: 5)
!4623 = !DILocation(line: 145, column: 11, scope: !4622)
!4624 = !DILocation(line: 146, column: 32, scope: !4621)
!4625 = !DILocation(line: 146, column: 16, scope: !4621)
!4626 = !DILocation(line: 146, column: 14, scope: !4621)
!4627 = !DILocation(line: 146, column: 9, scope: !4621)
!4628 = !DILocation(line: 286, column: 1, scope: !4572)
!4629 = !DISubprogram(name: "mbrtoc32", scope: !265, file: !265, line: 57, type: !4630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!44, !4632, !550, !44, !4633}
!4632 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4575)
!4633 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4576)
!4634 = !DISubprogram(name: "mbsinit", scope: !4635, file: !4635, line: 293, type: !4636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !546)
!4635 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!42, !4638}
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!4640 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !394, file: !394, line: 27, type: !3850, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4641)
!4641 = !{!4642, !4643, !4644, !4645}
!4642 = !DILocalVariable(name: "ptr", arg: 1, scope: !4640, file: !394, line: 27, type: !135)
!4643 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4640, file: !394, line: 27, type: !44)
!4644 = !DILocalVariable(name: "size", arg: 3, scope: !4640, file: !394, line: 27, type: !44)
!4645 = !DILocalVariable(name: "nbytes", scope: !4640, file: !394, line: 29, type: !44)
!4646 = !DILocation(line: 0, scope: !4640)
!4647 = !DILocation(line: 30, column: 7, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4640, file: !394, line: 30, column: 7)
!4649 = !DILocalVariable(name: "ptr", arg: 1, scope: !4650, file: !3941, line: 2057, type: !135)
!4650 = distinct !DISubprogram(name: "rpl_realloc", scope: !3941, file: !3941, line: 2057, type: !3933, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4651)
!4651 = !{!4649, !4652}
!4652 = !DILocalVariable(name: "size", arg: 2, scope: !4650, file: !3941, line: 2057, type: !44)
!4653 = !DILocation(line: 0, scope: !4650, inlinedAt: !4654)
!4654 = distinct !DILocation(line: 37, column: 10, scope: !4640)
!4655 = !DILocation(line: 2059, column: 24, scope: !4650, inlinedAt: !4654)
!4656 = !DILocation(line: 2059, column: 10, scope: !4650, inlinedAt: !4654)
!4657 = !DILocation(line: 37, column: 3, scope: !4640)
!4658 = !DILocation(line: 32, column: 7, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4648, file: !394, line: 31, column: 5)
!4660 = !DILocation(line: 32, column: 13, scope: !4659)
!4661 = !DILocation(line: 33, column: 7, scope: !4659)
!4662 = !DILocation(line: 38, column: 1, scope: !4640)
!4663 = distinct !DISubprogram(name: "hard_locale", scope: !397, file: !397, line: 28, type: !723, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !4664)
!4664 = !{!4665, !4666}
!4665 = !DILocalVariable(name: "category", arg: 1, scope: !4663, file: !397, line: 28, type: !42)
!4666 = !DILocalVariable(name: "locale", scope: !4663, file: !397, line: 30, type: !4667)
!4667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2056, elements: !4668)
!4668 = !{!4669}
!4669 = !DISubrange(count: 257)
!4670 = !DILocation(line: 0, scope: !4663)
!4671 = !DILocation(line: 30, column: 3, scope: !4663)
!4672 = !DILocation(line: 30, column: 8, scope: !4663)
!4673 = !DILocation(line: 32, column: 7, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4663, file: !397, line: 32, column: 7)
!4675 = !DILocation(line: 32, column: 7, scope: !4663)
!4676 = !DILocalVariable(name: "__s1", arg: 1, scope: !4677, file: !504, line: 1359, type: !47)
!4677 = distinct !DISubprogram(name: "streq", scope: !504, file: !504, line: 1359, type: !505, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !4678)
!4678 = !{!4676, !4679}
!4679 = !DILocalVariable(name: "__s2", arg: 2, scope: !4677, file: !504, line: 1359, type: !47)
!4680 = !DILocation(line: 0, scope: !4677, inlinedAt: !4681)
!4681 = distinct !DILocation(line: 35, column: 9, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4663, file: !397, line: 35, column: 7)
!4683 = !DILocation(line: 1361, column: 11, scope: !4677, inlinedAt: !4681)
!4684 = !DILocation(line: 1361, column: 10, scope: !4677, inlinedAt: !4681)
!4685 = !DILocation(line: 35, column: 29, scope: !4682)
!4686 = !DILocation(line: 0, scope: !4677, inlinedAt: !4687)
!4687 = distinct !DILocation(line: 35, column: 32, scope: !4682)
!4688 = !DILocation(line: 1361, column: 11, scope: !4677, inlinedAt: !4687)
!4689 = !DILocation(line: 1361, column: 10, scope: !4677, inlinedAt: !4687)
!4690 = !DILocation(line: 35, column: 7, scope: !4663)
!4691 = !DILocation(line: 46, column: 3, scope: !4663)
!4692 = !DILocation(line: 47, column: 1, scope: !4663)
!4693 = distinct !DISubprogram(name: "setlocale_null_r", scope: !399, file: !399, line: 154, type: !4694, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !4696)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!42, !42, !95, !44}
!4696 = !{!4697, !4698, !4699}
!4697 = !DILocalVariable(name: "category", arg: 1, scope: !4693, file: !399, line: 154, type: !42)
!4698 = !DILocalVariable(name: "buf", arg: 2, scope: !4693, file: !399, line: 154, type: !95)
!4699 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4693, file: !399, line: 154, type: !44)
!4700 = !DILocation(line: 0, scope: !4693)
!4701 = !DILocation(line: 159, column: 10, scope: !4693)
!4702 = !DILocation(line: 159, column: 3, scope: !4693)
!4703 = distinct !DISubprogram(name: "setlocale_null", scope: !399, file: !399, line: 186, type: !4704, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !4706)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!47, !42}
!4706 = !{!4707}
!4707 = !DILocalVariable(name: "category", arg: 1, scope: !4703, file: !399, line: 186, type: !42)
!4708 = !DILocation(line: 0, scope: !4703)
!4709 = !DILocation(line: 189, column: 10, scope: !4703)
!4710 = !DILocation(line: 189, column: 3, scope: !4703)
!4711 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !401, file: !401, line: 35, type: !4704, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !4712)
!4712 = !{!4713, !4714}
!4713 = !DILocalVariable(name: "category", arg: 1, scope: !4711, file: !401, line: 35, type: !42)
!4714 = !DILocalVariable(name: "result", scope: !4711, file: !401, line: 37, type: !47)
!4715 = !DILocation(line: 0, scope: !4711)
!4716 = !DILocation(line: 37, column: 24, scope: !4711)
!4717 = !DILocation(line: 62, column: 3, scope: !4711)
!4718 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !401, file: !401, line: 66, type: !4694, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !4719)
!4719 = !{!4720, !4721, !4722, !4723, !4724}
!4720 = !DILocalVariable(name: "category", arg: 1, scope: !4718, file: !401, line: 66, type: !42)
!4721 = !DILocalVariable(name: "buf", arg: 2, scope: !4718, file: !401, line: 66, type: !95)
!4722 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4718, file: !401, line: 66, type: !44)
!4723 = !DILocalVariable(name: "result", scope: !4718, file: !401, line: 111, type: !47)
!4724 = !DILocalVariable(name: "length", scope: !4725, file: !401, line: 125, type: !44)
!4725 = distinct !DILexicalBlock(scope: !4726, file: !401, line: 124, column: 5)
!4726 = distinct !DILexicalBlock(scope: !4718, file: !401, line: 113, column: 7)
!4727 = !DILocation(line: 0, scope: !4718)
!4728 = !DILocation(line: 0, scope: !4711, inlinedAt: !4729)
!4729 = distinct !DILocation(line: 111, column: 24, scope: !4718)
!4730 = !DILocation(line: 37, column: 24, scope: !4711, inlinedAt: !4729)
!4731 = !DILocation(line: 113, column: 14, scope: !4726)
!4732 = !DILocation(line: 113, column: 7, scope: !4718)
!4733 = !DILocation(line: 116, column: 19, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4735, file: !401, line: 116, column: 11)
!4735 = distinct !DILexicalBlock(scope: !4726, file: !401, line: 114, column: 5)
!4736 = !DILocation(line: 116, column: 11, scope: !4735)
!4737 = !DILocation(line: 120, column: 16, scope: !4734)
!4738 = !DILocation(line: 120, column: 9, scope: !4734)
!4739 = !DILocation(line: 125, column: 23, scope: !4725)
!4740 = !DILocation(line: 0, scope: !4725)
!4741 = !DILocation(line: 126, column: 18, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4725, file: !401, line: 126, column: 11)
!4743 = !DILocation(line: 126, column: 11, scope: !4725)
!4744 = !DILocation(line: 128, column: 39, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4742, file: !401, line: 127, column: 9)
!4746 = !DILocalVariable(name: "__dest", arg: 1, scope: !4747, file: !2420, line: 26, type: !4208)
!4747 = distinct !DISubprogram(name: "memcpy", scope: !2420, file: !2420, line: 26, type: !4206, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !4748)
!4748 = !{!4746, !4749, !4750}
!4749 = !DILocalVariable(name: "__src", arg: 2, scope: !4747, file: !2420, line: 26, type: !671)
!4750 = !DILocalVariable(name: "__len", arg: 3, scope: !4747, file: !2420, line: 26, type: !44)
!4751 = !DILocation(line: 0, scope: !4747, inlinedAt: !4752)
!4752 = distinct !DILocation(line: 128, column: 11, scope: !4745)
!4753 = !DILocation(line: 29, column: 10, scope: !4747, inlinedAt: !4752)
!4754 = !DILocation(line: 129, column: 11, scope: !4745)
!4755 = !DILocation(line: 133, column: 23, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4757, file: !401, line: 133, column: 15)
!4757 = distinct !DILexicalBlock(scope: !4742, file: !401, line: 132, column: 9)
!4758 = !DILocation(line: 133, column: 15, scope: !4757)
!4759 = !DILocation(line: 138, column: 44, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4756, file: !401, line: 134, column: 13)
!4761 = !DILocation(line: 0, scope: !4747, inlinedAt: !4762)
!4762 = distinct !DILocation(line: 138, column: 15, scope: !4760)
!4763 = !DILocation(line: 29, column: 10, scope: !4747, inlinedAt: !4762)
!4764 = !DILocation(line: 139, column: 15, scope: !4760)
!4765 = !DILocation(line: 139, column: 32, scope: !4760)
!4766 = !DILocation(line: 140, column: 13, scope: !4760)
!4767 = !DILocation(line: 0, scope: !4726)
!4768 = !DILocation(line: 145, column: 1, scope: !4718)
