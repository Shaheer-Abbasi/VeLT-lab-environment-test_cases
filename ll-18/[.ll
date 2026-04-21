; ModuleID = 'src/[.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [85 x i8] c"Usage: test EXPRESSION\0A  or:  test\0A  or:  [ EXPRESSION ]\0A  or:  [ ]\0A  or:  [ OPTION\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [49 x i8] c"Exit with the status determined by EXPRESSION.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [120 x i8] c"\0AAn omitted EXPRESSION defaults to false.  Otherwise,\0AEXPRESSION is true or false and sets exit status.  It is one of:\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [249 x i8] c"\0A  ( EXPRESSION )               EXPRESSION is true\0A  ! EXPRESSION                 EXPRESSION is false\0A  EXPRESSION1 -a EXPRESSION2   both EXPRESSION1 and EXPRESSION2 are true\0A  EXPRESSION1 -o EXPRESSION2   either EXPRESSION1 or EXPRESSION2 is true\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [56 x i8] c"  -n STRING            the length of STRING is nonzero\0A\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [48 x i8] c"  STRING               equivalent to -n STRING\0A\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [53 x i8] c"  -z STRING            the length of STRING is zero\0A\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [246 x i8] c"  STRING1 = STRING2    the strings are equal\0A  STRING1 != STRING2   the strings are not equal\0A  STRING1 > STRING2    STRING1 is greater than STRING2 in the current locale\0A  STRING1 < STRING2    STRING1 is less than STRING2 in the current locale\0A\00", align 1, !dbg !59
@.str.13 = private unnamed_addr constant [57 x i8] c"  INTEGER1 -eq INTEGER2   INTEGER1 is equal to INTEGER2\0A\00", align 1, !dbg !64
@.str.14 = private unnamed_addr constant [73 x i8] c"  INTEGER1 -ge INTEGER2   INTEGER1 is greater than or equal to INTEGER2\0A\00", align 1, !dbg !69
@.str.15 = private unnamed_addr constant [61 x i8] c"  INTEGER1 -gt INTEGER2   INTEGER1 is greater than INTEGER2\0A\00", align 1, !dbg !74
@.str.16 = private unnamed_addr constant [70 x i8] c"  INTEGER1 -le INTEGER2   INTEGER1 is less than or equal to INTEGER2\0A\00", align 1, !dbg !79
@.str.17 = private unnamed_addr constant [58 x i8] c"  INTEGER1 -lt INTEGER2   INTEGER1 is less than INTEGER2\0A\00", align 1, !dbg !84
@.str.18 = private unnamed_addr constant [61 x i8] c"  INTEGER1 -ne INTEGER2   INTEGER1 is not equal to INTEGER2\0A\00", align 1, !dbg !89
@.str.19 = private unnamed_addr constant [76 x i8] c"  FILE1 -ef FILE2   FILE1 and FILE2 have the same device and inode numbers\0A\00", align 1, !dbg !91
@.str.20 = private unnamed_addr constant [67 x i8] c"  FILE1 -nt FILE2   FILE1 is newer (modification date) than FILE2\0A\00", align 1, !dbg !96
@.str.21 = private unnamed_addr constant [47 x i8] c"  FILE1 -ot FILE2   FILE1 is older than FILE2\0A\00", align 1, !dbg !101
@.str.22 = private unnamed_addr constant [48 x i8] c"  -b FILE     FILE exists and is block special\0A\00", align 1, !dbg !106
@.str.23 = private unnamed_addr constant [52 x i8] c"  -c FILE     FILE exists and is character special\0A\00", align 1, !dbg !108
@.str.24 = private unnamed_addr constant [46 x i8] c"  -d FILE     FILE exists and is a directory\0A\00", align 1, !dbg !113
@.str.25 = private unnamed_addr constant [27 x i8] c"  -e FILE     FILE exists\0A\00", align 1, !dbg !118
@.str.26 = private unnamed_addr constant [49 x i8] c"  -f FILE     FILE exists and is a regular file\0A\00", align 1, !dbg !123
@.str.27 = private unnamed_addr constant [47 x i8] c"  -g FILE     FILE exists and is set-group-ID\0A\00", align 1, !dbg !125
@.str.28 = private unnamed_addr constant [66 x i8] c"  -G FILE     FILE exists and is owned by the effective group ID\0A\00", align 1, !dbg !127
@.str.29 = private unnamed_addr constant [63 x i8] c"  -h FILE     FILE exists and is a symbolic link (same as -L)\0A\00", align 1, !dbg !132
@.str.30 = private unnamed_addr constant [54 x i8] c"  -k FILE     FILE exists and has its sticky bit set\0A\00", align 1, !dbg !137
@.str.31 = private unnamed_addr constant [63 x i8] c"  -L FILE     FILE exists and is a symbolic link (same as -h)\0A\00", align 1, !dbg !142
@.str.32 = private unnamed_addr constant [72 x i8] c"  -N FILE     FILE exists and has been modified since it was last read\0A\00", align 1, !dbg !144
@.str.33 = private unnamed_addr constant [65 x i8] c"  -O FILE     FILE exists and is owned by the effective user ID\0A\00", align 1, !dbg !149
@.str.34 = private unnamed_addr constant [47 x i8] c"  -p FILE     FILE exists and is a named pipe\0A\00", align 1, !dbg !154
@.str.35 = private unnamed_addr constant [56 x i8] c"  -r FILE     FILE exists and the user has read access\0A\00", align 1, !dbg !156
@.str.36 = private unnamed_addr constant [60 x i8] c"  -s FILE     FILE exists and has a size greater than zero\0A\00", align 1, !dbg !158
@.str.37 = private unnamed_addr constant [43 x i8] c"  -S FILE     FILE exists and is a socket\0A\00", align 1, !dbg !163
@.str.38 = private unnamed_addr constant [58 x i8] c"  -t FD       file descriptor FD is opened on a terminal\0A\00", align 1, !dbg !168
@.str.39 = private unnamed_addr constant [58 x i8] c"  -u FILE     FILE exists and its set-user-ID bit is set\0A\00", align 1, !dbg !170
@.str.40 = private unnamed_addr constant [57 x i8] c"  -w FILE     FILE exists and the user has write access\0A\00", align 1, !dbg !172
@.str.41 = private unnamed_addr constant [71 x i8] c"  -x FILE     FILE exists and the user has execute (or search) access\0A\00", align 1, !dbg !174
@.str.42 = private unnamed_addr constant [225 x i8] c"\0AExcept for -h and -L, all FILE-related tests dereference symbolic links.\0ABeware that parentheses need to be escaped (e.g., by backslashes) for shells.\0AINTEGER may also be -l STRING, which evaluates to the length of STRING.\0A\00", align 1, !dbg !179
@.str.43 = private unnamed_addr constant [105 x i8] c"\0ABinary -a and -o are ambiguous.  Use 'test EXPR1 && test EXPR2'\0Aor 'test EXPR1 || test EXPR2' instead.\0A\00", align 1, !dbg !184
@.str.44 = private unnamed_addr constant [70 x i8] c"\0A'[' honors --help and --version, but 'test' treats them as STRINGs.\0A\00", align 1, !dbg !189
@.str.45 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !191
@.str.46 = private unnamed_addr constant [14 x i8] c"test and/or [\00", align 1, !dbg !196
@.str.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !201
@.str.48 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !206
@.str.49 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !211
@argv = internal unnamed_addr global ptr null, align 8, !dbg !216
@.str.50 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !274
@.str.51 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !279
@.str.52 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !281
@.str.53 = private unnamed_addr constant [17 x i8] c"Kevin Braunsdorf\00", align 1, !dbg !283
@.str.54 = private unnamed_addr constant [17 x i8] c"Matthew Bradburn\00", align 1, !dbg !288
@.str.55 = private unnamed_addr constant [2 x i8] c"]\00", align 1, !dbg !290
@.str.56 = private unnamed_addr constant [11 x i8] c"missing %s\00", align 1, !dbg !292
@argc = internal unnamed_addr global i32 0, align 4, !dbg !304
@pos = internal unnamed_addr global i32 0, align 4, !dbg !302
@.str.57 = private unnamed_addr constant [18 x i8] c"extra argument %s\00", align 1, !dbg !297
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !306
@.str.58 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !388
@.str.59 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !393
@.str.60 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !395
@.str.61 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !400
@.str.62 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !405
@.str.74 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !435
@.str.75 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !437
@.str.76 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !442
@.str.77 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !447
@.str.78 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !449
@.str.79 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !451
@.str.80 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !453
@.str.81 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !455
@.str.82 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1, !dbg !457
@.str.85 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !469
@.str.86 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !471
@.str.87 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !473
@.str.88 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !475
@.str.89 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !480
@.str.90 = private unnamed_addr constant [2 x i8] c"!\00", align 1, !dbg !485
@.str.91 = private unnamed_addr constant [2 x i8] c"(\00", align 1, !dbg !487
@.str.92 = private unnamed_addr constant [2 x i8] c")\00", align 1, !dbg !489
@.str.93 = private unnamed_addr constant [10 x i8] c"0 < nargs\00", align 1, !dbg !491
@.str.94 = private unnamed_addr constant [11 x i8] c"src/test.c\00", align 1, !dbg !493
@__PRETTY_FUNCTION__.posixtest = private unnamed_addr constant [21 x i8] c"_Bool posixtest(int)\00", align 1, !dbg !495
@.str.95 = private unnamed_addr constant [28 x i8] c"%s: unary operator expected\00", align 1, !dbg !500
@.str.96 = private unnamed_addr constant [19 x i8] c"invalid integer %s\00", align 1, !dbg !505
@.str.97 = private unnamed_addr constant [26 x i8] c"missing argument after %s\00", align 1, !dbg !510
@.str.98 = private unnamed_addr constant [3 x i8] c"-a\00", align 1, !dbg !515
@.str.99 = private unnamed_addr constant [3 x i8] c"-o\00", align 1, !dbg !517
@.str.100 = private unnamed_addr constant [2 x i8] c">\00", align 1, !dbg !519
@.str.101 = private unnamed_addr constant [2 x i8] c"<\00", align 1, !dbg !521
@.str.102 = private unnamed_addr constant [29 x i8] c"%s: binary operator expected\00", align 1, !dbg !523
@.str.103 = private unnamed_addr constant [2 x i8] c"=\00", align 1, !dbg !528
@.str.104 = private unnamed_addr constant [3 x i8] c"==\00", align 1, !dbg !530
@.str.105 = private unnamed_addr constant [3 x i8] c"!=\00", align 1, !dbg !532
@.str.106 = private unnamed_addr constant [4 x i8] c"-eq\00", align 1, !dbg !534
@.str.107 = private unnamed_addr constant [4 x i8] c"-ne\00", align 1, !dbg !536
@.str.108 = private unnamed_addr constant [4 x i8] c"-lt\00", align 1, !dbg !538
@.str.109 = private unnamed_addr constant [4 x i8] c"-le\00", align 1, !dbg !540
@.str.110 = private unnamed_addr constant [4 x i8] c"-gt\00", align 1, !dbg !542
@.str.111 = private unnamed_addr constant [4 x i8] c"-ge\00", align 1, !dbg !544
@.str.112 = private unnamed_addr constant [4 x i8] c"-ot\00", align 1, !dbg !546
@.str.113 = private unnamed_addr constant [4 x i8] c"-nt\00", align 1, !dbg !548
@.str.114 = private unnamed_addr constant [4 x i8] c"-ef\00", align 1, !dbg !550
@.str.115 = private unnamed_addr constant [3 x i8] c"-l\00", align 1, !dbg !552
@.str.116 = private unnamed_addr constant [22 x i8] c"%s does not accept -l\00", align 1, !dbg !554
@.str.117 = private unnamed_addr constant [23 x i8] c"-ef does not accept -l\00", align 1, !dbg !556
@.str.118 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !561
@__PRETTY_FUNCTION__.binary_operator = private unnamed_addr constant [41 x i8] c"_Bool binary_operator(_Bool, enum binop)\00", align 1, !dbg !563
@.str.119 = private unnamed_addr constant [12 x i8] c"%s expected\00", align 1, !dbg !568
@.str.120 = private unnamed_addr constant [22 x i8] c"%s expected, found %s\00", align 1, !dbg !570
@.str.63 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !573
@Version = dso_local local_unnamed_addr global ptr @.str.63, align 8, !dbg !576
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !580
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !593
@.str.66 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !585
@.str.1.67 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !587
@.str.2.68 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !589
@.str.3.69 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !591
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !595
@stderr = external local_unnamed_addr global ptr, align 8
@.str.72 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !601
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !637
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !603
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !627
@.str.1.78 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !629
@.str.2.80 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !631
@.str.3.79 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !633
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !635
@.str.4.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !639
@.str.5.74 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !641
@.str.6.75 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !644
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !649
@.str.121 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !655
@.str.1.122 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !657
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !659
@.str.125 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !690
@.str.1.126 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !693
@.str.2.127 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !695
@.str.3.128 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !700
@.str.4.129 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !702
@.str.5.130 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !704
@.str.6.131 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !706
@.str.7.132 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !708
@.str.8.133 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !710
@.str.9.134 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !712
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.125, ptr @.str.1.126, ptr @.str.2.127, ptr @.str.3.128, ptr @.str.4.129, ptr @.str.5.130, ptr @.str.6.131, ptr @.str.7.132, ptr @.str.8.133, ptr @.str.9.134, ptr null], align 8, !dbg !714
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !739
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !753
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !791
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !798
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !755
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !800
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !743
@.str.10.137 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !760
@.str.11.135 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !762
@.str.12.138 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !764
@.str.13.136 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !766
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !768
@.str.147 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !804
@.str.1.148 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !807
@.str.2.149 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !809
@.str.3.150 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !811
@.str.4.151 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !813
@.str.5.152 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !815
@.str.6.153 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !820
@.str.7.154 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !825
@.str.8.155 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !827
@.str.9.156 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !829
@.str.10.157 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !831
@.str.11.158 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !836
@.str.12.159 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !841
@.str.13.160 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !843
@.str.14.161 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !848
@.str.15.162 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !850
@.str.16.163 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !852
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.168 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !854
@.str.18.169 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !856
@.str.19.170 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !858
@.str.20.171 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !860
@.str.21.172 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !862
@.str.22.173 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !864
@.str.23.174 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !866
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !868
@exit_failure = dso_local global i32 1, align 4, !dbg !874
@.str.187 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !880
@.str.1.185 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !883
@.str.2.186 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !885
@.str.198 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !887
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !890
@.str.203 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !905
@.str.1.204 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !908

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !989 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !993, metadata !DIExpression()), !dbg !994
  %2 = icmp eq i32 %0, 0, !dbg !995
  br i1 %2, label %8, label %3, !dbg !997

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !998, !tbaa !1000
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !998
  %6 = load ptr, ptr @program_name, align 8, !dbg !998, !tbaa !1000
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !998
  br label %99, !dbg !998

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !1004
  %10 = load ptr, ptr @stdout, align 8, !dbg !1004, !tbaa !1000
  %11 = tail call i32 @fputs_unlocked(ptr noundef %9, ptr noundef %10), !dbg !1004
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !1006
  %13 = load ptr, ptr @stdout, align 8, !dbg !1006, !tbaa !1000
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1006
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !1007
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !1007
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !1008
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !1008
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !1009
  %18 = load ptr, ptr @stdout, align 8, !dbg !1009, !tbaa !1000
  %19 = tail call i32 @fputs_unlocked(ptr noundef %17, ptr noundef %18), !dbg !1009
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !1010
  %21 = load ptr, ptr @stdout, align 8, !dbg !1010, !tbaa !1000
  %22 = tail call i32 @fputs_unlocked(ptr noundef %20, ptr noundef %21), !dbg !1010
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !1011
  %24 = load ptr, ptr @stdout, align 8, !dbg !1011, !tbaa !1000
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !1011
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !1012
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1012
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !1013
  %28 = load ptr, ptr @stdout, align 8, !dbg !1013, !tbaa !1000
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !1013
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #40, !dbg !1014
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !1014
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !1015
  %32 = load ptr, ptr @stdout, align 8, !dbg !1015, !tbaa !1000
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !1015
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !1016
  %35 = load ptr, ptr @stdout, align 8, !dbg !1016, !tbaa !1000
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !1016
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !1017
  tail call fastcc void @oputs_(ptr noundef %37), !dbg !1017
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !1018
  tail call fastcc void @oputs_(ptr noundef %38), !dbg !1018
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #40, !dbg !1019
  tail call fastcc void @oputs_(ptr noundef %39), !dbg !1019
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #40, !dbg !1020
  tail call fastcc void @oputs_(ptr noundef %40), !dbg !1020
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #40, !dbg !1021
  tail call fastcc void @oputs_(ptr noundef %41), !dbg !1021
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #40, !dbg !1022
  tail call fastcc void @oputs_(ptr noundef %42), !dbg !1022
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !1023
  %44 = load ptr, ptr @stdout, align 8, !dbg !1023, !tbaa !1000
  %45 = tail call i32 @fputs_unlocked(ptr noundef %43, ptr noundef %44), !dbg !1023
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #40, !dbg !1024
  tail call fastcc void @oputs_(ptr noundef %46), !dbg !1024
  %47 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #40, !dbg !1025
  tail call fastcc void @oputs_(ptr noundef %47), !dbg !1025
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #40, !dbg !1026
  tail call fastcc void @oputs_(ptr noundef %48), !dbg !1026
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !1027
  %50 = load ptr, ptr @stdout, align 8, !dbg !1027, !tbaa !1000
  %51 = tail call i32 @fputs_unlocked(ptr noundef %49, ptr noundef %50), !dbg !1027
  %52 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !1028
  tail call fastcc void @oputs_(ptr noundef %52), !dbg !1028
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #40, !dbg !1029
  tail call fastcc void @oputs_(ptr noundef %53), !dbg !1029
  %54 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #40, !dbg !1030
  tail call fastcc void @oputs_(ptr noundef %54), !dbg !1030
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #40, !dbg !1031
  tail call fastcc void @oputs_(ptr noundef %55), !dbg !1031
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #40, !dbg !1032
  tail call fastcc void @oputs_(ptr noundef %56), !dbg !1032
  %57 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #40, !dbg !1033
  tail call fastcc void @oputs_(ptr noundef %57), !dbg !1033
  %58 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #40, !dbg !1034
  tail call fastcc void @oputs_(ptr noundef %58), !dbg !1034
  %59 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #40, !dbg !1035
  tail call fastcc void @oputs_(ptr noundef %59), !dbg !1035
  %60 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #40, !dbg !1036
  tail call fastcc void @oputs_(ptr noundef %60), !dbg !1036
  %61 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #40, !dbg !1037
  tail call fastcc void @oputs_(ptr noundef %61), !dbg !1037
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #40, !dbg !1038
  tail call fastcc void @oputs_(ptr noundef %62), !dbg !1038
  %63 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #40, !dbg !1039
  tail call fastcc void @oputs_(ptr noundef %63), !dbg !1039
  %64 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #40, !dbg !1040
  tail call fastcc void @oputs_(ptr noundef %64), !dbg !1040
  %65 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #40, !dbg !1041
  tail call fastcc void @oputs_(ptr noundef %65), !dbg !1041
  %66 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #40, !dbg !1042
  tail call fastcc void @oputs_(ptr noundef %66), !dbg !1042
  %67 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #40, !dbg !1043
  tail call fastcc void @oputs_(ptr noundef %67), !dbg !1043
  %68 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #40, !dbg !1044
  tail call fastcc void @oputs_(ptr noundef %68), !dbg !1044
  %69 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #40, !dbg !1045
  tail call fastcc void @oputs_(ptr noundef %69), !dbg !1045
  %70 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #40, !dbg !1046
  tail call fastcc void @oputs_(ptr noundef %70), !dbg !1046
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #40, !dbg !1047
  tail call fastcc void @oputs_(ptr noundef %71), !dbg !1047
  %72 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #40, !dbg !1048
  %73 = load ptr, ptr @stdout, align 8, !dbg !1048, !tbaa !1000
  %74 = tail call i32 @fputs_unlocked(ptr noundef %72, ptr noundef %73), !dbg !1048
  %75 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #40, !dbg !1049
  %76 = load ptr, ptr @stdout, align 8, !dbg !1049, !tbaa !1000
  %77 = tail call i32 @fputs_unlocked(ptr noundef %75, ptr noundef %76), !dbg !1049
  %78 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #40, !dbg !1050
  %79 = load ptr, ptr @stdout, align 8, !dbg !1050, !tbaa !1000
  %80 = tail call i32 @fputs_unlocked(ptr noundef %78, ptr noundef %79), !dbg !1050
  %81 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #40, !dbg !1051
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #40, !dbg !1051
  %83 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %81, ptr noundef %82) #40, !dbg !1051
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1052, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata !1071, metadata !1065, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata ptr poison, metadata !1064, metadata !DIExpression()), !dbg !1069
  tail call void @emit_bug_reporting_address() #40, !dbg !1072
  %84 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !1073
  call void @llvm.dbg.value(metadata ptr %84, metadata !1067, metadata !DIExpression()), !dbg !1069
  %85 = icmp eq ptr %84, null, !dbg !1074
  br i1 %85, label %93, label %86, !dbg !1076

86:                                               ; preds = %8
  %87 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(4) @.str.85, i64 noundef 3) #41, !dbg !1077
  %88 = icmp eq i32 %87, 0, !dbg !1077
  br i1 %88, label %93, label %89, !dbg !1078

89:                                               ; preds = %86
  %90 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef 5) #40, !dbg !1079
  %91 = load ptr, ptr @stdout, align 8, !dbg !1079, !tbaa !1000
  %92 = tail call i32 @fputs_unlocked(ptr noundef %90, ptr noundef %91), !dbg !1079
  br label %93, !dbg !1081

93:                                               ; preds = %8, %86, %89
  call void @llvm.dbg.value(metadata ptr @.str.82, metadata !1064, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata ptr @.str.62, metadata !1068, metadata !DIExpression()), !dbg !1069
  %94 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.87, i32 noundef 5) #40, !dbg !1082
  %95 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %94, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.62) #40, !dbg !1082
  %96 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.88, i32 noundef 5) #40, !dbg !1083
  %97 = select i1 icmp eq (ptr @.str.82, ptr @.str.3), ptr @.str.89, ptr @.str.47, !dbg !1083
  %98 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %96, ptr noundef nonnull @.str.82, ptr noundef nonnull %97) #40, !dbg !1083
  br label %99

99:                                               ; preds = %93, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1084
  unreachable, !dbg !1084
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1085 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1089 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1095 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !308 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !313, metadata !DIExpression()), !dbg !1098
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !314, metadata !DIExpression()), !dbg !1098
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1099, !tbaa !1100
  %3 = icmp eq i32 %2, -1, !dbg !1102
  br i1 %3, label %4, label %16, !dbg !1103

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.58) #40, !dbg !1104
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !315, metadata !DIExpression()), !dbg !1105
  %6 = icmp eq ptr %5, null, !dbg !1106
  br i1 %6, label %14, label %7, !dbg !1107

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1108, !tbaa !1109
  %9 = icmp eq i8 %8, 0, !dbg !1108
  br i1 %9, label %14, label %10, !dbg !1110

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1111, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata ptr @.str.59, metadata !1117, metadata !DIExpression()), !dbg !1118
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.59) #41, !dbg !1120
  %12 = icmp eq i32 %11, 0, !dbg !1121
  %13 = zext i1 %12 to i32, !dbg !1110
  br label %14, !dbg !1110

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1122, !tbaa !1100
  br label %16, !dbg !1123

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1124
  %18 = icmp eq i32 %17, 0, !dbg !1124
  br i1 %18, label %22, label %19, !dbg !1126

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1127, !tbaa !1000
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1127
  br label %121, !dbg !1129

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !318, metadata !DIExpression()), !dbg !1098
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.60) #41, !dbg !1130
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1131
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !320, metadata !DIExpression()), !dbg !1098
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1132
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !321, metadata !DIExpression()), !dbg !1098
  %26 = icmp eq ptr %25, null, !dbg !1133
  br i1 %26, label %53, label %27, !dbg !1134

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1135
  br i1 %28, label %53, label %29, !dbg !1136

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !322, metadata !DIExpression()), !dbg !1137
  tail call void @llvm.dbg.value(metadata i64 0, metadata !326, metadata !DIExpression()), !dbg !1137
  %30 = icmp ult ptr %24, %25, !dbg !1138
  br i1 %30, label %31, label %53, !dbg !1139

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1098
  %33 = load ptr, ptr %32, align 8, !tbaa !1000
  br label %34, !dbg !1139

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !322, metadata !DIExpression()), !dbg !1137
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !326, metadata !DIExpression()), !dbg !1137
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1140
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !322, metadata !DIExpression()), !dbg !1137
  %38 = load i8, ptr %35, align 1, !dbg !1140, !tbaa !1109
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1140
  %41 = load i16, ptr %40, align 2, !dbg !1140, !tbaa !1141
  %42 = freeze i16 %41, !dbg !1143
  %43 = lshr i16 %42, 13, !dbg !1143
  %44 = and i16 %43, 1, !dbg !1143
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1144
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !326, metadata !DIExpression()), !dbg !1137
  %47 = icmp ult ptr %37, %25, !dbg !1138
  %48 = icmp ult i64 %46, 2, !dbg !1145
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1145
  br i1 %49, label %34, label %50, !dbg !1139, !llvm.loop !1146

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !1144
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !1148
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1150
  br label %53, !dbg !1150

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1098
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !318, metadata !DIExpression()), !dbg !1098
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !321, metadata !DIExpression()), !dbg !1098
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.61) #41, !dbg !1151
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !327, metadata !DIExpression()), !dbg !1098
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !1152
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !328, metadata !DIExpression()), !dbg !1098
  br label %58, !dbg !1153

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !1098
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !318, metadata !DIExpression()), !dbg !1098
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !328, metadata !DIExpression()), !dbg !1098
  %61 = load i8, ptr %59, align 1, !dbg !1154, !tbaa !1109
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !1155

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1156
  %64 = load i8, ptr %63, align 1, !dbg !1159, !tbaa !1109
  %65 = icmp ne i8 %64, 45, !dbg !1160
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1161
  br label %67, !dbg !1161

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !318, metadata !DIExpression()), !dbg !1098
  %69 = tail call ptr @__ctype_b_loc() #43, !dbg !1162
  %70 = load ptr, ptr %69, align 8, !dbg !1162, !tbaa !1000
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1162
  %73 = load i16, ptr %72, align 2, !dbg !1162, !tbaa !1141
  %74 = and i16 %73, 8192, !dbg !1162
  %75 = icmp eq i16 %74, 0, !dbg !1162
  br i1 %75, label %89, label %76, !dbg !1164

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1165
  br i1 %77, label %91, label %78, !dbg !1168

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1169
  %80 = load i8, ptr %79, align 1, !dbg !1169, !tbaa !1109
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1169
  %83 = load i16, ptr %82, align 2, !dbg !1169, !tbaa !1141
  %84 = and i16 %83, 8192, !dbg !1169
  %85 = icmp eq i16 %84, 0, !dbg !1169
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1170
  br i1 %88, label %89, label %91, !dbg !1170

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1171
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !328, metadata !DIExpression()), !dbg !1098
  br label %58, !dbg !1153, !llvm.loop !1172

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !1098
  %92 = ptrtoint ptr %24 to i64, !dbg !1174
  %93 = load ptr, ptr @stdout, align 8, !dbg !1174, !tbaa !1000
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1174
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1111, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1117, metadata !DIExpression()), !dbg !1175
  tail call void @llvm.dbg.value(metadata ptr @.str.62, metadata !383, metadata !DIExpression()), !dbg !1098
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.50, i64 noundef 6) #41, !dbg !1177
  %96 = icmp eq i32 %95, 0, !dbg !1177
  br i1 %96, label %100, label %97, !dbg !1179

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.51, i64 noundef 9) #41, !dbg !1180
  %99 = icmp eq i32 %98, 0, !dbg !1180
  br i1 %99, label %100, label %103, !dbg !1181

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1182
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.62, i32 noundef %101, ptr noundef %54) #40, !dbg !1182
  br label %106, !dbg !1184

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1185
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.62, i32 noundef %104, ptr noundef %54) #40, !dbg !1185
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1187, !tbaa !1000
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.78, ptr noundef %107), !dbg !1187
  %109 = load ptr, ptr @stdout, align 8, !dbg !1188, !tbaa !1000
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.79, ptr noundef %109), !dbg !1188
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1189
  %112 = sub i64 %111, %92, !dbg !1189
  %113 = load ptr, ptr @stdout, align 8, !dbg !1189, !tbaa !1000
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1189
  %115 = load ptr, ptr @stdout, align 8, !dbg !1190, !tbaa !1000
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.80, ptr noundef %115), !dbg !1190
  %117 = load ptr, ptr @stdout, align 8, !dbg !1191, !tbaa !1000
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.81, ptr noundef %117), !dbg !1191
  %119 = load ptr, ptr @stdout, align 8, !dbg !1192, !tbaa !1000
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1192
  br label %121, !dbg !1193

121:                                              ; preds = %106, %19
  ret void, !dbg !1193
}

declare !dbg !1194 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1197 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1201 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1205 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1207 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1210 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1213 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1216 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1219 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1225 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1226 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1232 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1236, metadata !DIExpression()), !dbg !1239
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1237, metadata !DIExpression()), !dbg !1239
  %3 = load ptr, ptr %1, align 8, !dbg !1240, !tbaa !1000
  tail call void @set_program_name(ptr noundef %3) #40, !dbg !1241
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.47) #40, !dbg !1242
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #40, !dbg !1243
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.48) #40, !dbg !1244
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1245, metadata !DIExpression()), !dbg !1248
  store volatile i32 2, ptr @exit_failure, align 4, !dbg !1250, !tbaa !1100
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1252
  store ptr %1, ptr @argv, align 8, !dbg !1253, !tbaa !1000
  %8 = icmp eq i32 %0, 2, !dbg !1254
  br i1 %8, label %9, label %23, !dbg !1258

9:                                                ; preds = %2
  %10 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1259
  %11 = load ptr, ptr %10, align 8, !dbg !1259, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %11, metadata !1111, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata ptr @.str.50, metadata !1117, metadata !DIExpression()), !dbg !1262
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(7) @.str.50) #41, !dbg !1264
  %13 = icmp eq i32 %12, 0, !dbg !1265
  br i1 %13, label %14, label %15, !dbg !1266

14:                                               ; preds = %9
  tail call void @usage(i32 noundef 0) #44, !dbg !1267
  unreachable, !dbg !1267

15:                                               ; preds = %9
  call void @llvm.dbg.value(metadata ptr %11, metadata !1111, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata ptr @.str.51, metadata !1117, metadata !DIExpression()), !dbg !1268
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(10) @.str.51) #41, !dbg !1271
  %17 = icmp eq i32 %16, 0, !dbg !1272
  br i1 %17, label %18, label %25, !dbg !1273

18:                                               ; preds = %15
  %19 = load ptr, ptr @stdout, align 8, !dbg !1274, !tbaa !1000
  %20 = load ptr, ptr @Version, align 8, !dbg !1276, !tbaa !1000
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.53) #40, !dbg !1277
  %22 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.54) #40, !dbg !1277
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef null) #40, !dbg !1278
  br label %54, !dbg !1279

23:                                               ; preds = %2
  %24 = icmp slt i32 %0, 2, !dbg !1280
  br i1 %24, label %32, label %25, !dbg !1282

25:                                               ; preds = %15, %23
  %26 = zext nneg i32 %0 to i64, !dbg !1283
  %27 = getelementptr ptr, ptr %1, i64 %26, !dbg !1283
  %28 = getelementptr ptr, ptr %27, i64 -1, !dbg !1283
  %29 = load ptr, ptr %28, align 8, !dbg !1283, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %29, metadata !1111, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata ptr @.str.55, metadata !1117, metadata !DIExpression()), !dbg !1284
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(2) @.str.55) #41, !dbg !1286
  %31 = icmp eq i32 %30, 0, !dbg !1287
  br i1 %31, label %35, label %32, !dbg !1288

32:                                               ; preds = %25, %23
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #40, !dbg !1289
  %34 = tail call ptr @quote(ptr noundef nonnull @.str.55) #40, !dbg !1290
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %33, ptr noundef %34) #44, !dbg !1291
  unreachable, !dbg !1291

35:                                               ; preds = %25
  %36 = add nsw i32 %0, -1, !dbg !1292
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !1236, metadata !DIExpression()), !dbg !1239
  store i32 %36, ptr @argc, align 4, !dbg !1293, !tbaa !1100
  store i32 1, ptr @pos, align 4, !dbg !1294, !tbaa !1100
  br i1 %8, label %54, label %37, !dbg !1295

37:                                               ; preds = %35
  %38 = add nsw i32 %0, -2, !dbg !1296
  %39 = tail call fastcc i1 @posixtest(i32 noundef %38), !dbg !1297
  tail call void @llvm.dbg.value(metadata i1 %39, metadata !1238, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1239
  %40 = load i32, ptr @pos, align 4, !dbg !1298, !tbaa !1100
  %41 = load i32, ptr @argc, align 4, !dbg !1300, !tbaa !1100
  %42 = icmp eq i32 %40, %41, !dbg !1301
  br i1 %42, label %51, label %43, !dbg !1302

43:                                               ; preds = %37
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #40, !dbg !1303
  %45 = load ptr, ptr @argv, align 8, !dbg !1304, !tbaa !1000
  %46 = load i32, ptr @pos, align 4, !dbg !1305, !tbaa !1100
  %47 = sext i32 %46 to i64, !dbg !1304
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47, !dbg !1304
  %49 = load ptr, ptr %48, align 8, !dbg !1304, !tbaa !1000
  %50 = tail call ptr @quote(ptr noundef %49) #40, !dbg !1306
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %44, ptr noundef %50) #44, !dbg !1307
  unreachable, !dbg !1307

51:                                               ; preds = %37
  %52 = xor i1 %39, true, !dbg !1308
  %53 = zext i1 %52 to i32, !dbg !1308
  br label %54, !dbg !1308

54:                                               ; preds = %35, %51, %18
  %55 = phi i32 [ 0, %18 ], [ %53, %51 ], [ 1, %35 ], !dbg !1239
  ret i32 %55, !dbg !1309
}

; Function Attrs: nounwind
declare !dbg !1310 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1313 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1314 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal void @test_syntax_error(ptr noundef %0, ...) unnamed_addr #0 !dbg !1317 {
  %2 = alloca %struct.__va_list, align 8, !DIAssignID !1333
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1322, metadata !DIExpression(), metadata !1333, metadata ptr %2, metadata !DIExpression()), !dbg !1334
  %3 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1321, metadata !DIExpression()), !dbg !1334
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #40, !dbg !1335
  call void @llvm.va_start(ptr nonnull %2), !dbg !1336
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #40, !dbg !1337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !1337, !tbaa.struct !1338
  call void @verror(i32 noundef 0, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %3) #45, !dbg !1337
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #40, !dbg !1337
  call void @exit(i32 noundef 2) #42, !dbg !1339
  unreachable, !dbg !1339
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @posixtest(i32 noundef %0) unnamed_addr #10 !dbg !1340 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1344, metadata !DIExpression()), !dbg !1346
  switch i32 %0, label %97 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %39
    i32 4, label %41
  ], !dbg !1347

2:                                                ; preds = %1
  %3 = load ptr, ptr @argv, align 8, !dbg !1348, !tbaa !1000
  %4 = load i32, ptr @pos, align 4, !dbg !1354, !tbaa !1100
  %5 = add nsw i32 %4, 1, !dbg !1354
  store i32 %5, ptr @pos, align 4, !dbg !1354, !tbaa !1100
  %6 = sext i32 %4 to i64, !dbg !1348
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6, !dbg !1348
  %8 = load ptr, ptr %7, align 8, !dbg !1348, !tbaa !1000
  %9 = load i8, ptr %8, align 1, !dbg !1348, !tbaa !1109
  %10 = icmp ne i8 %9, 0, !dbg !1355
  tail call void @llvm.dbg.value(metadata i1 %10, metadata !1345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1346
  br label %109, !dbg !1356

11:                                               ; preds = %1
  %12 = load ptr, ptr @argv, align 8, !dbg !1357, !tbaa !1000
  %13 = load i32, ptr @pos, align 4, !dbg !1363, !tbaa !1100
  %14 = sext i32 %13 to i64, !dbg !1357
  %15 = getelementptr ptr, ptr %12, i64 %14, !dbg !1357
  %16 = load ptr, ptr %15, align 8, !dbg !1357, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %16, metadata !1111, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1117, metadata !DIExpression()), !dbg !1364
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(2) @.str.90) #41, !dbg !1366
  %18 = icmp eq i32 %17, 0, !dbg !1367
  br i1 %18, label %19, label %25, !dbg !1368

19:                                               ; preds = %11
  %20 = add nsw i32 %13, 2, !dbg !1369
  store i32 %20, ptr @pos, align 4, !dbg !1369, !tbaa !1100
  %21 = getelementptr ptr, ptr %15, i64 1, !dbg !1372
  %22 = load ptr, ptr %21, align 8, !dbg !1372, !tbaa !1000
  %23 = load i8, ptr %22, align 1, !dbg !1372, !tbaa !1109
  %24 = icmp eq i8 %23, 0, !dbg !1373
  call void @llvm.dbg.value(metadata i1 %24, metadata !1361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1374
  br label %109, !dbg !1375

25:                                               ; preds = %11
  %26 = load i8, ptr %16, align 1, !dbg !1376, !tbaa !1109
  %27 = icmp eq i8 %26, 45, !dbg !1378
  br i1 %27, label %28, label %38, !dbg !1379

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1380
  %30 = load i8, ptr %29, align 1, !dbg !1380, !tbaa !1109
  %31 = icmp eq i8 %30, 0, !dbg !1381
  br i1 %31, label %38, label %32, !dbg !1382

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %16, i64 2, !dbg !1383
  %34 = load i8, ptr %33, align 1, !dbg !1383, !tbaa !1109
  %35 = icmp eq i8 %34, 0, !dbg !1384
  br i1 %35, label %36, label %38, !dbg !1385

36:                                               ; preds = %32
  %37 = tail call fastcc i1 @unary_operator(), !dbg !1386
  call void @llvm.dbg.value(metadata i1 %37, metadata !1361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1374
  br label %109

38:                                               ; preds = %32, %28, %25
  tail call fastcc void @beyond() #44, !dbg !1388
  unreachable, !dbg !1388

39:                                               ; preds = %1
  %40 = tail call fastcc i1 @three_arguments(), !dbg !1389
  tail call void @llvm.dbg.value(metadata i1 %40, metadata !1345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1346
  br label %109, !dbg !1390

41:                                               ; preds = %1
  %42 = load ptr, ptr @argv, align 8, !dbg !1391, !tbaa !1000
  %43 = load i32, ptr @pos, align 4, !dbg !1393, !tbaa !1100
  %44 = sext i32 %43 to i64, !dbg !1391
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44, !dbg !1391
  %46 = load ptr, ptr %45, align 8, !dbg !1391, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %46, metadata !1111, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1117, metadata !DIExpression()), !dbg !1394
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(2) @.str.90) #41, !dbg !1396
  %48 = icmp eq i32 %47, 0, !dbg !1397
  br i1 %48, label %49, label %57, !dbg !1398

49:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1404
  %50 = add nsw i32 %43, 1, !dbg !1407
  store i32 %50, ptr @pos, align 4, !dbg !1407, !tbaa !1100
  %51 = load i32, ptr @argc, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %54, label %53, !dbg !1408

53:                                               ; preds = %49
  tail call fastcc void @beyond(), !dbg !1410
  unreachable, !dbg !1410

54:                                               ; preds = %49
  %55 = tail call fastcc i1 @three_arguments(), !dbg !1411
  %56 = xor i1 %55, true, !dbg !1412
  tail call void @llvm.dbg.value(metadata i1 %56, metadata !1345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1346
  br label %109, !dbg !1413

57:                                               ; preds = %41
  call void @llvm.dbg.value(metadata ptr %46, metadata !1111, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata ptr @.str.91, metadata !1117, metadata !DIExpression()), !dbg !1414
  %58 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(2) @.str.91) #41, !dbg !1417
  %59 = icmp eq i32 %58, 0, !dbg !1418
  br i1 %59, label %60, label %102, !dbg !1419

60:                                               ; preds = %57
  %61 = getelementptr ptr, ptr %45, i64 3, !dbg !1420
  %62 = load ptr, ptr %61, align 8, !dbg !1420, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %62, metadata !1111, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1117, metadata !DIExpression()), !dbg !1421
  %63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(2) @.str.92) #41, !dbg !1423
  %64 = icmp eq i32 %63, 0, !dbg !1424
  br i1 %64, label %65, label %102, !dbg !1425

65:                                               ; preds = %60
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1426
  %66 = add nsw i32 %43, 1, !dbg !1429
  store i32 %66, ptr @pos, align 4, !dbg !1429, !tbaa !1100
  %67 = sext i32 %66 to i64, !dbg !1430
  %68 = getelementptr ptr, ptr %42, i64 %67, !dbg !1430
  %69 = load ptr, ptr %68, align 8, !dbg !1430, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %69, metadata !1111, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1117, metadata !DIExpression()), !dbg !1432
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(2) @.str.90) #41, !dbg !1434
  %71 = icmp eq i32 %70, 0, !dbg !1435
  br i1 %71, label %72, label %78, !dbg !1436

72:                                               ; preds = %65
  %73 = add nsw i32 %43, 3, !dbg !1437
  %74 = getelementptr ptr, ptr %68, i64 1, !dbg !1439
  %75 = load ptr, ptr %74, align 8, !dbg !1439, !tbaa !1000
  %76 = load i8, ptr %75, align 1, !dbg !1439, !tbaa !1109
  %77 = icmp eq i8 %76, 0, !dbg !1440
  call void @llvm.dbg.value(metadata i1 %77, metadata !1361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1441
  br label %93, !dbg !1442

78:                                               ; preds = %65
  %79 = load i8, ptr %69, align 1, !dbg !1443, !tbaa !1109
  %80 = icmp eq i8 %79, 45, !dbg !1444
  br i1 %80, label %81, label %92, !dbg !1445

81:                                               ; preds = %78
  %82 = getelementptr inbounds i8, ptr %69, i64 1, !dbg !1446
  %83 = load i8, ptr %82, align 1, !dbg !1446, !tbaa !1109
  %84 = icmp eq i8 %83, 0, !dbg !1447
  br i1 %84, label %92, label %85, !dbg !1448

85:                                               ; preds = %81
  %86 = getelementptr inbounds i8, ptr %69, i64 2, !dbg !1449
  %87 = load i8, ptr %86, align 1, !dbg !1449, !tbaa !1109
  %88 = icmp eq i8 %87, 0, !dbg !1450
  br i1 %88, label %89, label %92, !dbg !1451

89:                                               ; preds = %85
  %90 = tail call fastcc i1 @unary_operator(), !dbg !1452
  call void @llvm.dbg.value(metadata i1 %90, metadata !1361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1441
  %91 = load i32, ptr @pos, align 4, !dbg !1453, !tbaa !1100
  br label %93

92:                                               ; preds = %85, %81, %78
  tail call fastcc void @beyond() #44, !dbg !1455
  unreachable, !dbg !1455

93:                                               ; preds = %72, %89
  %94 = phi i32 [ %73, %72 ], [ %91, %89 ], !dbg !1453
  %95 = phi i1 [ %77, %72 ], [ %90, %89 ]
  call void @llvm.dbg.value(metadata i1 %95, metadata !1361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1441
  tail call void @llvm.dbg.value(metadata i1 %95, metadata !1345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1346
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1456
  %96 = add nsw i32 %94, 1, !dbg !1453
  store i32 %96, ptr @pos, align 4, !dbg !1453, !tbaa !1100
  br label %109, !dbg !1457

97:                                               ; preds = %1
  %98 = icmp sgt i32 %0, 0, !dbg !1458
  br i1 %98, label %99, label %101, !dbg !1461

99:                                               ; preds = %97
  %100 = load i32, ptr @pos, align 4, !dbg !1462, !tbaa !1100
  br label %102, !dbg !1461

101:                                              ; preds = %97
  tail call void @__assert_fail(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef 651, ptr noundef nonnull @__PRETTY_FUNCTION__.posixtest) #42, !dbg !1458
  unreachable, !dbg !1458

102:                                              ; preds = %99, %57, %60
  %103 = phi i32 [ %100, %99 ], [ %43, %57 ], [ %43, %60 ], !dbg !1462
  %104 = load i32, ptr @argc, align 4, !dbg !1466, !tbaa !1100
  %105 = icmp slt i32 %103, %104, !dbg !1467
  br i1 %105, label %107, label %106, !dbg !1468

106:                                              ; preds = %102
  tail call fastcc void @beyond() #44, !dbg !1469
  unreachable, !dbg !1469

107:                                              ; preds = %102
  %108 = tail call fastcc i1 @or(), !dbg !1470
  tail call void @llvm.dbg.value(metadata i1 %108, metadata !1345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1346
  br label %109, !dbg !1471

109:                                              ; preds = %36, %19, %107, %93, %54, %39, %2
  %110 = phi i1 [ %108, %107 ], [ %56, %54 ], [ %95, %93 ], [ %40, %39 ], [ %10, %2 ], [ %24, %19 ], [ %37, %36 ]
  tail call void @llvm.dbg.value(metadata i1 %110, metadata !1345, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1346
  ret i1 %110, !dbg !1472
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @unary_operator() unnamed_addr #10 !dbg !1473 {
  %1 = alloca [1 x i8], align 1, !DIAssignID !1526
  %2 = alloca %struct.stat, align 8, !DIAssignID !1527
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1475, metadata !DIExpression(), metadata !1527, metadata ptr %2, metadata !DIExpression()), !dbg !1528
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #40, !dbg !1529
  %3 = load ptr, ptr @argv, align 8, !dbg !1530, !tbaa !1000
  %4 = load i32, ptr @pos, align 4, !dbg !1531, !tbaa !1100
  %5 = sext i32 %4 to i64, !dbg !1530
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5, !dbg !1530
  %7 = load ptr, ptr %6, align 8, !dbg !1530, !tbaa !1000
  %8 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !1530
  %9 = load i8, ptr %8, align 1, !dbg !1530, !tbaa !1109
  switch i8 %9, label %10 [
    i8 101, label %18
    i8 114, label %31
    i8 119, label %44
    i8 120, label %57
    i8 78, label %70
    i8 79, label %98
    i8 71, label %122
    i8 102, label %146
    i8 100, label %164
    i8 115, label %182
    i8 83, label %199
    i8 99, label %217
    i8 98, label %235
    i8 112, label %253
    i8 76, label %271
    i8 104, label %271
    i8 117, label %284
    i8 103, label %302
    i8 107, label %320
    i8 116, label %338
    i8 110, label %362
    i8 122, label %375
  ], !dbg !1532

10:                                               ; preds = %0
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.95, i32 noundef 5) #40, !dbg !1533
  %12 = load ptr, ptr @argv, align 8, !dbg !1534, !tbaa !1000
  %13 = load i32, ptr @pos, align 4, !dbg !1535, !tbaa !1100
  %14 = sext i32 %13 to i64, !dbg !1534
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14, !dbg !1534
  %16 = load ptr, ptr %15, align 8, !dbg !1534, !tbaa !1000
  %17 = tail call ptr @quote(ptr noundef %16) #40, !dbg !1536
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %11, ptr noundef %17) #44, !dbg !1537
  unreachable, !dbg !1537

18:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1538
  %19 = add nsw i32 %4, 1, !dbg !1542
  store i32 %19, ptr @pos, align 4, !dbg !1542, !tbaa !1100
  %20 = load i32, ptr @argc, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %23, label %22, !dbg !1543

22:                                               ; preds = %18
  tail call fastcc void @beyond(), !dbg !1544
  unreachable, !dbg !1544

23:                                               ; preds = %18
  %24 = add nsw i32 %4, 2, !dbg !1545
  store i32 %24, ptr @pos, align 4, !dbg !1545, !tbaa !1100
  %25 = sext i32 %24 to i64, !dbg !1546
  %26 = getelementptr ptr, ptr %3, i64 %25, !dbg !1546
  %27 = getelementptr ptr, ptr %26, i64 -1, !dbg !1546
  %28 = load ptr, ptr %27, align 8, !dbg !1546, !tbaa !1000
  %29 = call i32 @stat(ptr noundef %28, ptr noundef nonnull %2) #40, !dbg !1547
  %30 = icmp eq i32 %29, 0, !dbg !1548
  br label %388, !dbg !1549

31:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1550
  %32 = add nsw i32 %4, 1, !dbg !1553
  store i32 %32, ptr @pos, align 4, !dbg !1553, !tbaa !1100
  %33 = load i32, ptr @argc, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %36, label %35, !dbg !1554

35:                                               ; preds = %31
  tail call fastcc void @beyond(), !dbg !1555
  unreachable, !dbg !1555

36:                                               ; preds = %31
  %37 = add nsw i32 %4, 2, !dbg !1556
  store i32 %37, ptr @pos, align 4, !dbg !1556, !tbaa !1100
  %38 = sext i32 %37 to i64, !dbg !1557
  %39 = getelementptr ptr, ptr %3, i64 %38, !dbg !1557
  %40 = getelementptr ptr, ptr %39, i64 -1, !dbg !1557
  %41 = load ptr, ptr %40, align 8, !dbg !1557, !tbaa !1000
  %42 = tail call i32 @euidaccess(ptr noundef %41, i32 noundef 4) #40, !dbg !1558
  %43 = icmp eq i32 %42, 0, !dbg !1559
  br label %388, !dbg !1560

44:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1561
  %45 = add nsw i32 %4, 1, !dbg !1564
  store i32 %45, ptr @pos, align 4, !dbg !1564, !tbaa !1100
  %46 = load i32, ptr @argc, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %49, label %48, !dbg !1565

48:                                               ; preds = %44
  tail call fastcc void @beyond(), !dbg !1566
  unreachable, !dbg !1566

49:                                               ; preds = %44
  %50 = add nsw i32 %4, 2, !dbg !1567
  store i32 %50, ptr @pos, align 4, !dbg !1567, !tbaa !1100
  %51 = sext i32 %50 to i64, !dbg !1568
  %52 = getelementptr ptr, ptr %3, i64 %51, !dbg !1568
  %53 = getelementptr ptr, ptr %52, i64 -1, !dbg !1568
  %54 = load ptr, ptr %53, align 8, !dbg !1568, !tbaa !1000
  %55 = tail call i32 @euidaccess(ptr noundef %54, i32 noundef 2) #40, !dbg !1569
  %56 = icmp eq i32 %55, 0, !dbg !1570
  br label %388, !dbg !1571

57:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1572
  %58 = add nsw i32 %4, 1, !dbg !1575
  store i32 %58, ptr @pos, align 4, !dbg !1575, !tbaa !1100
  %59 = load i32, ptr @argc, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %62, label %61, !dbg !1576

61:                                               ; preds = %57
  tail call fastcc void @beyond(), !dbg !1577
  unreachable, !dbg !1577

62:                                               ; preds = %57
  %63 = add nsw i32 %4, 2, !dbg !1578
  store i32 %63, ptr @pos, align 4, !dbg !1578, !tbaa !1100
  %64 = sext i32 %63 to i64, !dbg !1579
  %65 = getelementptr ptr, ptr %3, i64 %64, !dbg !1579
  %66 = getelementptr ptr, ptr %65, i64 -1, !dbg !1579
  %67 = load ptr, ptr %66, align 8, !dbg !1579, !tbaa !1000
  %68 = tail call i32 @euidaccess(ptr noundef %67, i32 noundef 1) #40, !dbg !1580
  %69 = icmp eq i32 %68, 0, !dbg !1581
  br label %388, !dbg !1582

70:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1583
  %71 = add nsw i32 %4, 1, !dbg !1586
  store i32 %71, ptr @pos, align 4, !dbg !1586, !tbaa !1100
  %72 = load i32, ptr @argc, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %75, label %74, !dbg !1587

74:                                               ; preds = %70
  tail call fastcc void @beyond(), !dbg !1588
  unreachable, !dbg !1588

75:                                               ; preds = %70
  %76 = add nsw i32 %4, 2, !dbg !1589
  store i32 %76, ptr @pos, align 4, !dbg !1589, !tbaa !1100
  %77 = sext i32 %76 to i64, !dbg !1590
  %78 = getelementptr ptr, ptr %3, i64 %77, !dbg !1590
  %79 = getelementptr ptr, ptr %78, i64 -1, !dbg !1590
  %80 = load ptr, ptr %79, align 8, !dbg !1590, !tbaa !1000
  %81 = call i32 @stat(ptr noundef %80, ptr noundef nonnull %2) #40, !dbg !1592
  %82 = icmp eq i32 %81, 0, !dbg !1593
  br i1 %82, label %83, label %388, !dbg !1594

83:                                               ; preds = %75
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1595, metadata !DIExpression()), !dbg !1603
  %84 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 12, !dbg !1605
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1510, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1606
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1510, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1606
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1607, metadata !DIExpression()), !dbg !1610
  %85 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 13, !dbg !1612
  %86 = load <2 x i64>, ptr %84, align 8, !dbg !1605
  %87 = load <2 x i64>, ptr %85, align 8, !dbg !1612
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1513, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1606
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1513, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1606
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !1613, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1620
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !1613, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1620
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !1619, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1620
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !1619, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1620
  %88 = icmp sgt <2 x i64> %87, %86, !dbg !1622
  %89 = zext <2 x i1> %88 to <2 x i32>, !dbg !1622
  %90 = icmp slt <2 x i64> %87, %86, !dbg !1622
  %91 = sext <2 x i1> %90 to <2 x i32>, !dbg !1622
  %92 = add nsw <2 x i32> %91, %89, !dbg !1622
  %93 = extractelement <2 x i32> %92, i64 0, !dbg !1623
  %94 = shl nsw i32 %93, 1, !dbg !1623
  %95 = extractelement <2 x i32> %92, i64 1, !dbg !1624
  %96 = add nsw i32 %95, %94, !dbg !1624
  %97 = icmp sgt i32 %96, 0, !dbg !1625
  br label %388

98:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1626
  %99 = add nsw i32 %4, 1, !dbg !1629
  store i32 %99, ptr @pos, align 4, !dbg !1629, !tbaa !1100
  %100 = load i32, ptr @argc, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %103, label %102, !dbg !1630

102:                                              ; preds = %98
  tail call fastcc void @beyond(), !dbg !1631
  unreachable, !dbg !1631

103:                                              ; preds = %98
  %104 = add nsw i32 %4, 2, !dbg !1632
  store i32 %104, ptr @pos, align 4, !dbg !1632, !tbaa !1100
  %105 = sext i32 %104 to i64, !dbg !1633
  %106 = getelementptr ptr, ptr %3, i64 %105, !dbg !1633
  %107 = getelementptr ptr, ptr %106, i64 -1, !dbg !1633
  %108 = load ptr, ptr %107, align 8, !dbg !1633, !tbaa !1000
  %109 = call i32 @stat(ptr noundef %108, ptr noundef nonnull %2) #40, !dbg !1635
  %110 = icmp eq i32 %109, 0, !dbg !1636
  br i1 %110, label %111, label %388, !dbg !1637

111:                                              ; preds = %103
  %112 = tail call ptr @__errno_location() #43, !dbg !1638
  store i32 0, ptr %112, align 4, !dbg !1639, !tbaa !1100
  %113 = tail call i32 @geteuid() #40, !dbg !1640
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !1514, metadata !DIExpression()), !dbg !1641
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1518, metadata !DIExpression()), !dbg !1641
  %114 = icmp eq i32 %113, -1, !dbg !1642
  br i1 %114, label %115, label %118, !dbg !1643

115:                                              ; preds = %111
  %116 = load i32, ptr %112, align 4, !dbg !1644, !tbaa !1100
  %117 = icmp eq i32 %116, 0, !dbg !1644
  br i1 %117, label %118, label %388, !dbg !1645

118:                                              ; preds = %115, %111
  %119 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 4, !dbg !1646
  %120 = load i32, ptr %119, align 8, !dbg !1646, !tbaa !1647
  %121 = icmp eq i32 %113, %120, !dbg !1651
  br label %388

122:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1652
  %123 = add nsw i32 %4, 1, !dbg !1655
  store i32 %123, ptr @pos, align 4, !dbg !1655, !tbaa !1100
  %124 = load i32, ptr @argc, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %127, label %126, !dbg !1656

126:                                              ; preds = %122
  tail call fastcc void @beyond(), !dbg !1657
  unreachable, !dbg !1657

127:                                              ; preds = %122
  %128 = add nsw i32 %4, 2, !dbg !1658
  store i32 %128, ptr @pos, align 4, !dbg !1658, !tbaa !1100
  %129 = sext i32 %128 to i64, !dbg !1659
  %130 = getelementptr ptr, ptr %3, i64 %129, !dbg !1659
  %131 = getelementptr ptr, ptr %130, i64 -1, !dbg !1659
  %132 = load ptr, ptr %131, align 8, !dbg !1659, !tbaa !1000
  %133 = call i32 @stat(ptr noundef %132, ptr noundef nonnull %2) #40, !dbg !1661
  %134 = icmp eq i32 %133, 0, !dbg !1662
  br i1 %134, label %135, label %388, !dbg !1663

135:                                              ; preds = %127
  %136 = tail call ptr @__errno_location() #43, !dbg !1664
  store i32 0, ptr %136, align 4, !dbg !1665, !tbaa !1100
  %137 = tail call i32 @getegid() #40, !dbg !1666
  tail call void @llvm.dbg.value(metadata i32 %137, metadata !1519, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1522, metadata !DIExpression()), !dbg !1667
  %138 = icmp eq i32 %137, -1, !dbg !1668
  br i1 %138, label %139, label %142, !dbg !1669

139:                                              ; preds = %135
  %140 = load i32, ptr %136, align 4, !dbg !1670, !tbaa !1100
  %141 = icmp eq i32 %140, 0, !dbg !1670
  br i1 %141, label %142, label %388, !dbg !1671

142:                                              ; preds = %139, %135
  %143 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 5, !dbg !1672
  %144 = load i32, ptr %143, align 4, !dbg !1672, !tbaa !1673
  %145 = icmp eq i32 %137, %144, !dbg !1674
  br label %388

146:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1675
  %147 = add nsw i32 %4, 1, !dbg !1678
  store i32 %147, ptr @pos, align 4, !dbg !1678, !tbaa !1100
  %148 = load i32, ptr @argc, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %151, label %150, !dbg !1679

150:                                              ; preds = %146
  tail call fastcc void @beyond(), !dbg !1680
  unreachable, !dbg !1680

151:                                              ; preds = %146
  %152 = add nsw i32 %4, 2, !dbg !1681
  store i32 %152, ptr @pos, align 4, !dbg !1681, !tbaa !1100
  %153 = sext i32 %152 to i64, !dbg !1682
  %154 = getelementptr ptr, ptr %3, i64 %153, !dbg !1682
  %155 = getelementptr ptr, ptr %154, i64 -1, !dbg !1682
  %156 = load ptr, ptr %155, align 8, !dbg !1682, !tbaa !1000
  %157 = call i32 @stat(ptr noundef %156, ptr noundef nonnull %2) #40, !dbg !1683
  %158 = icmp eq i32 %157, 0, !dbg !1684
  %159 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1685
  %160 = load i32, ptr %159, align 8, !dbg !1685
  %161 = and i32 %160, 61440, !dbg !1685
  %162 = icmp eq i32 %161, 32768, !dbg !1685
  %163 = select i1 %158, i1 %162, i1 false, !dbg !1685
  br label %388, !dbg !1686

164:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1687
  %165 = add nsw i32 %4, 1, !dbg !1690
  store i32 %165, ptr @pos, align 4, !dbg !1690, !tbaa !1100
  %166 = load i32, ptr @argc, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %169, label %168, !dbg !1691

168:                                              ; preds = %164
  tail call fastcc void @beyond(), !dbg !1692
  unreachable, !dbg !1692

169:                                              ; preds = %164
  %170 = add nsw i32 %4, 2, !dbg !1693
  store i32 %170, ptr @pos, align 4, !dbg !1693, !tbaa !1100
  %171 = sext i32 %170 to i64, !dbg !1694
  %172 = getelementptr ptr, ptr %3, i64 %171, !dbg !1694
  %173 = getelementptr ptr, ptr %172, i64 -1, !dbg !1694
  %174 = load ptr, ptr %173, align 8, !dbg !1694, !tbaa !1000
  %175 = call i32 @stat(ptr noundef %174, ptr noundef nonnull %2) #40, !dbg !1695
  %176 = icmp eq i32 %175, 0, !dbg !1696
  %177 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1697
  %178 = load i32, ptr %177, align 8, !dbg !1697
  %179 = and i32 %178, 61440, !dbg !1697
  %180 = icmp eq i32 %179, 16384, !dbg !1697
  %181 = select i1 %176, i1 %180, i1 false, !dbg !1697
  br label %388, !dbg !1698

182:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1699
  %183 = add nsw i32 %4, 1, !dbg !1702
  store i32 %183, ptr @pos, align 4, !dbg !1702, !tbaa !1100
  %184 = load i32, ptr @argc, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %187, label %186, !dbg !1703

186:                                              ; preds = %182
  tail call fastcc void @beyond(), !dbg !1704
  unreachable, !dbg !1704

187:                                              ; preds = %182
  %188 = add nsw i32 %4, 2, !dbg !1705
  store i32 %188, ptr @pos, align 4, !dbg !1705, !tbaa !1100
  %189 = sext i32 %188 to i64, !dbg !1706
  %190 = getelementptr ptr, ptr %3, i64 %189, !dbg !1706
  %191 = getelementptr ptr, ptr %190, i64 -1, !dbg !1706
  %192 = load ptr, ptr %191, align 8, !dbg !1706, !tbaa !1000
  %193 = call i32 @stat(ptr noundef %192, ptr noundef nonnull %2) #40, !dbg !1707
  %194 = icmp eq i32 %193, 0, !dbg !1708
  %195 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8, !dbg !1709
  %196 = load i64, ptr %195, align 8, !dbg !1709
  %197 = icmp sgt i64 %196, 0, !dbg !1709
  %198 = select i1 %194, i1 %197, i1 false, !dbg !1709
  br label %388, !dbg !1710

199:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1711
  %200 = add nsw i32 %4, 1, !dbg !1714
  store i32 %200, ptr @pos, align 4, !dbg !1714, !tbaa !1100
  %201 = load i32, ptr @argc, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %204, label %203, !dbg !1715

203:                                              ; preds = %199
  tail call fastcc void @beyond(), !dbg !1716
  unreachable, !dbg !1716

204:                                              ; preds = %199
  %205 = add nsw i32 %4, 2, !dbg !1717
  store i32 %205, ptr @pos, align 4, !dbg !1717, !tbaa !1100
  %206 = sext i32 %205 to i64, !dbg !1718
  %207 = getelementptr ptr, ptr %3, i64 %206, !dbg !1718
  %208 = getelementptr ptr, ptr %207, i64 -1, !dbg !1718
  %209 = load ptr, ptr %208, align 8, !dbg !1718, !tbaa !1000
  %210 = call i32 @stat(ptr noundef %209, ptr noundef nonnull %2) #40, !dbg !1719
  %211 = icmp eq i32 %210, 0, !dbg !1720
  %212 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1721
  %213 = load i32, ptr %212, align 8, !dbg !1721
  %214 = and i32 %213, 61440, !dbg !1721
  %215 = icmp eq i32 %214, 49152, !dbg !1721
  %216 = select i1 %211, i1 %215, i1 false, !dbg !1721
  br label %388, !dbg !1722

217:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1723
  %218 = add nsw i32 %4, 1, !dbg !1726
  store i32 %218, ptr @pos, align 4, !dbg !1726, !tbaa !1100
  %219 = load i32, ptr @argc, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %222, label %221, !dbg !1727

221:                                              ; preds = %217
  tail call fastcc void @beyond(), !dbg !1728
  unreachable, !dbg !1728

222:                                              ; preds = %217
  %223 = add nsw i32 %4, 2, !dbg !1729
  store i32 %223, ptr @pos, align 4, !dbg !1729, !tbaa !1100
  %224 = sext i32 %223 to i64, !dbg !1730
  %225 = getelementptr ptr, ptr %3, i64 %224, !dbg !1730
  %226 = getelementptr ptr, ptr %225, i64 -1, !dbg !1730
  %227 = load ptr, ptr %226, align 8, !dbg !1730, !tbaa !1000
  %228 = call i32 @stat(ptr noundef %227, ptr noundef nonnull %2) #40, !dbg !1731
  %229 = icmp eq i32 %228, 0, !dbg !1732
  %230 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1733
  %231 = load i32, ptr %230, align 8, !dbg !1733
  %232 = and i32 %231, 61440, !dbg !1733
  %233 = icmp eq i32 %232, 8192, !dbg !1733
  %234 = select i1 %229, i1 %233, i1 false, !dbg !1733
  br label %388, !dbg !1734

235:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1735
  %236 = add nsw i32 %4, 1, !dbg !1738
  store i32 %236, ptr @pos, align 4, !dbg !1738, !tbaa !1100
  %237 = load i32, ptr @argc, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %240, label %239, !dbg !1739

239:                                              ; preds = %235
  tail call fastcc void @beyond(), !dbg !1740
  unreachable, !dbg !1740

240:                                              ; preds = %235
  %241 = add nsw i32 %4, 2, !dbg !1741
  store i32 %241, ptr @pos, align 4, !dbg !1741, !tbaa !1100
  %242 = sext i32 %241 to i64, !dbg !1742
  %243 = getelementptr ptr, ptr %3, i64 %242, !dbg !1742
  %244 = getelementptr ptr, ptr %243, i64 -1, !dbg !1742
  %245 = load ptr, ptr %244, align 8, !dbg !1742, !tbaa !1000
  %246 = call i32 @stat(ptr noundef %245, ptr noundef nonnull %2) #40, !dbg !1743
  %247 = icmp eq i32 %246, 0, !dbg !1744
  %248 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1745
  %249 = load i32, ptr %248, align 8, !dbg !1745
  %250 = and i32 %249, 61440, !dbg !1745
  %251 = icmp eq i32 %250, 24576, !dbg !1745
  %252 = select i1 %247, i1 %251, i1 false, !dbg !1745
  br label %388, !dbg !1746

253:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1747
  %254 = add nsw i32 %4, 1, !dbg !1750
  store i32 %254, ptr @pos, align 4, !dbg !1750, !tbaa !1100
  %255 = load i32, ptr @argc, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %258, label %257, !dbg !1751

257:                                              ; preds = %253
  tail call fastcc void @beyond(), !dbg !1752
  unreachable, !dbg !1752

258:                                              ; preds = %253
  %259 = add nsw i32 %4, 2, !dbg !1753
  store i32 %259, ptr @pos, align 4, !dbg !1753, !tbaa !1100
  %260 = sext i32 %259 to i64, !dbg !1754
  %261 = getelementptr ptr, ptr %3, i64 %260, !dbg !1754
  %262 = getelementptr ptr, ptr %261, i64 -1, !dbg !1754
  %263 = load ptr, ptr %262, align 8, !dbg !1754, !tbaa !1000
  %264 = call i32 @stat(ptr noundef %263, ptr noundef nonnull %2) #40, !dbg !1755
  %265 = icmp eq i32 %264, 0, !dbg !1756
  %266 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1757
  %267 = load i32, ptr %266, align 8, !dbg !1757
  %268 = and i32 %267, 61440, !dbg !1757
  %269 = icmp eq i32 %268, 4096, !dbg !1757
  %270 = select i1 %265, i1 %269, i1 false, !dbg !1757
  br label %388, !dbg !1758

271:                                              ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1759
  %272 = add nsw i32 %4, 1, !dbg !1762
  store i32 %272, ptr @pos, align 4, !dbg !1762, !tbaa !1100
  %273 = load i32, ptr @argc, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %276, label %275, !dbg !1763

275:                                              ; preds = %271
  tail call fastcc void @beyond(), !dbg !1764
  unreachable, !dbg !1764

276:                                              ; preds = %271
  %277 = add nsw i32 %4, 2, !dbg !1765
  store i32 %277, ptr @pos, align 4, !dbg !1765, !tbaa !1100
  %278 = sext i32 %277 to i64, !dbg !1766
  %279 = getelementptr ptr, ptr %3, i64 %278, !dbg !1766
  %280 = getelementptr ptr, ptr %279, i64 -1, !dbg !1766
  %281 = load ptr, ptr %280, align 8, !dbg !1766, !tbaa !1000
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1767, metadata !DIExpression(), metadata !1526, metadata ptr %1, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata ptr %281, metadata !1773, metadata !DIExpression()), !dbg !1774
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #40, !dbg !1776
  %282 = call i64 @readlink(ptr noundef nonnull %281, ptr noundef nonnull %1, i64 noundef 1) #40, !dbg !1777
  %283 = icmp sgt i64 %282, -1, !dbg !1779
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #40, !dbg !1780
  br label %388, !dbg !1781

284:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1782
  %285 = add nsw i32 %4, 1, !dbg !1785
  store i32 %285, ptr @pos, align 4, !dbg !1785, !tbaa !1100
  %286 = load i32, ptr @argc, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %289, label %288, !dbg !1786

288:                                              ; preds = %284
  tail call fastcc void @beyond(), !dbg !1787
  unreachable, !dbg !1787

289:                                              ; preds = %284
  %290 = add nsw i32 %4, 2, !dbg !1788
  store i32 %290, ptr @pos, align 4, !dbg !1788, !tbaa !1100
  %291 = sext i32 %290 to i64, !dbg !1789
  %292 = getelementptr ptr, ptr %3, i64 %291, !dbg !1789
  %293 = getelementptr ptr, ptr %292, i64 -1, !dbg !1789
  %294 = load ptr, ptr %293, align 8, !dbg !1789, !tbaa !1000
  %295 = call i32 @stat(ptr noundef %294, ptr noundef nonnull %2) #40, !dbg !1790
  %296 = icmp eq i32 %295, 0, !dbg !1791
  %297 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1792
  %298 = load i32, ptr %297, align 8, !dbg !1792
  %299 = and i32 %298, 2048, !dbg !1792
  %300 = icmp ne i32 %299, 0, !dbg !1792
  %301 = select i1 %296, i1 %300, i1 false, !dbg !1792
  br label %388, !dbg !1793

302:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1794
  %303 = add nsw i32 %4, 1, !dbg !1797
  store i32 %303, ptr @pos, align 4, !dbg !1797, !tbaa !1100
  %304 = load i32, ptr @argc, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %307, label %306, !dbg !1798

306:                                              ; preds = %302
  tail call fastcc void @beyond(), !dbg !1799
  unreachable, !dbg !1799

307:                                              ; preds = %302
  %308 = add nsw i32 %4, 2, !dbg !1800
  store i32 %308, ptr @pos, align 4, !dbg !1800, !tbaa !1100
  %309 = sext i32 %308 to i64, !dbg !1801
  %310 = getelementptr ptr, ptr %3, i64 %309, !dbg !1801
  %311 = getelementptr ptr, ptr %310, i64 -1, !dbg !1801
  %312 = load ptr, ptr %311, align 8, !dbg !1801, !tbaa !1000
  %313 = call i32 @stat(ptr noundef %312, ptr noundef nonnull %2) #40, !dbg !1802
  %314 = icmp eq i32 %313, 0, !dbg !1803
  %315 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1804
  %316 = load i32, ptr %315, align 8, !dbg !1804
  %317 = and i32 %316, 1024, !dbg !1804
  %318 = icmp ne i32 %317, 0, !dbg !1804
  %319 = select i1 %314, i1 %318, i1 false, !dbg !1804
  br label %388, !dbg !1805

320:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1806
  %321 = add nsw i32 %4, 1, !dbg !1809
  store i32 %321, ptr @pos, align 4, !dbg !1809, !tbaa !1100
  %322 = load i32, ptr @argc, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %325, label %324, !dbg !1810

324:                                              ; preds = %320
  tail call fastcc void @beyond(), !dbg !1811
  unreachable, !dbg !1811

325:                                              ; preds = %320
  %326 = add nsw i32 %4, 2, !dbg !1812
  store i32 %326, ptr @pos, align 4, !dbg !1812, !tbaa !1100
  %327 = sext i32 %326 to i64, !dbg !1813
  %328 = getelementptr ptr, ptr %3, i64 %327, !dbg !1813
  %329 = getelementptr ptr, ptr %328, i64 -1, !dbg !1813
  %330 = load ptr, ptr %329, align 8, !dbg !1813, !tbaa !1000
  %331 = call i32 @stat(ptr noundef %330, ptr noundef nonnull %2) #40, !dbg !1814
  %332 = icmp eq i32 %331, 0, !dbg !1815
  %333 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1816
  %334 = load i32, ptr %333, align 8, !dbg !1816
  %335 = and i32 %334, 512, !dbg !1816
  %336 = icmp ne i32 %335, 0, !dbg !1816
  %337 = select i1 %332, i1 %336, i1 false, !dbg !1816
  br label %388, !dbg !1817

338:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1818
  %339 = add nsw i32 %4, 1, !dbg !1821
  store i32 %339, ptr @pos, align 4, !dbg !1821, !tbaa !1100
  %340 = load i32, ptr @argc, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %343, label %342, !dbg !1822

342:                                              ; preds = %338
  tail call fastcc void @beyond(), !dbg !1823
  unreachable, !dbg !1823

343:                                              ; preds = %338
  %344 = add nsw i32 %4, 2, !dbg !1824
  store i32 %344, ptr @pos, align 4, !dbg !1824, !tbaa !1100
  %345 = sext i32 %344 to i64, !dbg !1825
  %346 = getelementptr ptr, ptr %3, i64 %345, !dbg !1825
  %347 = getelementptr ptr, ptr %346, i64 -1, !dbg !1825
  %348 = load ptr, ptr %347, align 8, !dbg !1825, !tbaa !1000
  %349 = tail call fastcc ptr @find_int(ptr noundef %348), !dbg !1826
  tail call void @llvm.dbg.value(metadata ptr %349, metadata !1525, metadata !DIExpression()), !dbg !1827
  %350 = tail call ptr @__errno_location() #43, !dbg !1828
  store i32 0, ptr %350, align 4, !dbg !1829, !tbaa !1100
  %351 = tail call i64 @strtol(ptr nocapture noundef %349, ptr noundef null, i32 noundef 10) #40, !dbg !1830
  tail call void @llvm.dbg.value(metadata i64 %351, metadata !1523, metadata !DIExpression()), !dbg !1827
  %352 = load i32, ptr %350, align 4, !dbg !1831, !tbaa !1100
  %353 = icmp ne i32 %352, 34, !dbg !1832
  %354 = icmp sgt i64 %351, -1
  %355 = select i1 %353, i1 %354, i1 false, !dbg !1833
  %356 = icmp slt i64 %351, 2147483648
  %357 = select i1 %355, i1 %356, i1 false, !dbg !1833
  br i1 %357, label %358, label %388, !dbg !1833

358:                                              ; preds = %343
  %359 = trunc i64 %351 to i32, !dbg !1834
  %360 = tail call i32 @isatty(i32 noundef %359) #40, !dbg !1835
  %361 = icmp ne i32 %360, 0, !dbg !1836
  br label %388

362:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1837
  %363 = add nsw i32 %4, 1, !dbg !1840
  store i32 %363, ptr @pos, align 4, !dbg !1840, !tbaa !1100
  %364 = load i32, ptr @argc, align 4
  %365 = icmp slt i32 %363, %364
  br i1 %365, label %367, label %366, !dbg !1841

366:                                              ; preds = %362
  tail call fastcc void @beyond(), !dbg !1842
  unreachable, !dbg !1842

367:                                              ; preds = %362
  %368 = add nsw i32 %4, 2, !dbg !1843
  store i32 %368, ptr @pos, align 4, !dbg !1843, !tbaa !1100
  %369 = sext i32 %368 to i64, !dbg !1844
  %370 = getelementptr ptr, ptr %3, i64 %369, !dbg !1844
  %371 = getelementptr ptr, ptr %370, i64 -1, !dbg !1844
  %372 = load ptr, ptr %371, align 8, !dbg !1844, !tbaa !1000
  %373 = load i8, ptr %372, align 1, !dbg !1844, !tbaa !1109
  %374 = icmp ne i8 %373, 0, !dbg !1845
  br label %388, !dbg !1846

375:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1847
  %376 = add nsw i32 %4, 1, !dbg !1850
  store i32 %376, ptr @pos, align 4, !dbg !1850, !tbaa !1100
  %377 = load i32, ptr @argc, align 4
  %378 = icmp slt i32 %376, %377
  br i1 %378, label %380, label %379, !dbg !1851

379:                                              ; preds = %375
  tail call fastcc void @beyond(), !dbg !1852
  unreachable, !dbg !1852

380:                                              ; preds = %375
  %381 = add nsw i32 %4, 2, !dbg !1853
  store i32 %381, ptr @pos, align 4, !dbg !1853, !tbaa !1100
  %382 = sext i32 %381 to i64, !dbg !1854
  %383 = getelementptr ptr, ptr %3, i64 %382, !dbg !1854
  %384 = getelementptr ptr, ptr %383, i64 -1, !dbg !1854
  %385 = load ptr, ptr %384, align 8, !dbg !1854, !tbaa !1000
  %386 = load i8, ptr %385, align 1, !dbg !1854, !tbaa !1109
  %387 = icmp eq i8 %386, 0, !dbg !1855
  br label %388, !dbg !1856

388:                                              ; preds = %343, %358, %139, %142, %127, %115, %118, %103, %75, %380, %367, %325, %307, %289, %276, %258, %240, %222, %204, %187, %169, %151, %83, %62, %49, %36, %23
  %389 = phi i1 [ %387, %380 ], [ %374, %367 ], [ %337, %325 ], [ %319, %307 ], [ %301, %289 ], [ %283, %276 ], [ %270, %258 ], [ %252, %240 ], [ %234, %222 ], [ %216, %204 ], [ %198, %187 ], [ %181, %169 ], [ %163, %151 ], [ %97, %83 ], [ %69, %62 ], [ %56, %49 ], [ %43, %36 ], [ %30, %23 ], [ false, %75 ], [ false, %103 ], [ false, %115 ], [ %121, %118 ], [ false, %127 ], [ false, %139 ], [ %145, %142 ], [ false, %343 ], [ %361, %358 ], !dbg !1857
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #40, !dbg !1858
  ret i1 %389, !dbg !1858
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !1859 {
  %1 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.97, i32 noundef 5) #40, !dbg !1860
  %2 = load ptr, ptr @argv, align 8, !dbg !1861, !tbaa !1000
  %3 = load i32, ptr @argc, align 4, !dbg !1862, !tbaa !1100
  %4 = sext i32 %3 to i64, !dbg !1861
  %5 = getelementptr ptr, ptr %2, i64 %4, !dbg !1861
  %6 = getelementptr ptr, ptr %5, i64 -1, !dbg !1861
  %7 = load ptr, ptr %6, align 8, !dbg !1861, !tbaa !1000
  %8 = tail call ptr @quote(ptr noundef %7) #40, !dbg !1863
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %1, ptr noundef %8) #44, !dbg !1864
  unreachable, !dbg !1864
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @three_arguments() unnamed_addr #10 !dbg !1865 {
  %1 = load ptr, ptr @argv, align 8, !dbg !1869, !tbaa !1000
  %2 = load i32, ptr @pos, align 4, !dbg !1870, !tbaa !1100
  %3 = sext i32 %2 to i64, !dbg !1869
  %4 = getelementptr ptr, ptr %1, i64 %3, !dbg !1869
  %5 = getelementptr ptr, ptr %4, i64 1, !dbg !1869
  %6 = load ptr, ptr %5, align 8, !dbg !1869, !tbaa !1000
  %7 = tail call fastcc i32 @binop(ptr noundef %6), !dbg !1871, !range !1872
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1868, metadata !DIExpression()), !dbg !1873
  %8 = icmp sgt i32 %7, -1, !dbg !1874
  br i1 %8, label %9, label %11, !dbg !1876

9:                                                ; preds = %0
  %10 = tail call fastcc i1 @binary_operator(i1 noundef false, i32 noundef %7), !dbg !1877
  tail call void @llvm.dbg.value(metadata i1 %10, metadata !1867, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1873
  br label %87, !dbg !1878

11:                                               ; preds = %0
  %12 = load ptr, ptr %4, align 8, !dbg !1879, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %12, metadata !1111, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1117, metadata !DIExpression()), !dbg !1881
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(2) @.str.90) #41, !dbg !1883
  %14 = icmp eq i32 %13, 0, !dbg !1884
  br i1 %14, label %15, label %48, !dbg !1885

15:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1886
  %16 = add nsw i32 %2, 1, !dbg !1889
  store i32 %16, ptr @pos, align 4, !dbg !1889, !tbaa !1100
  %17 = load i32, ptr @argc, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %20, label %19, !dbg !1890

19:                                               ; preds = %15
  tail call fastcc void @beyond(), !dbg !1891
  unreachable, !dbg !1891

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %6, metadata !1111, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1117, metadata !DIExpression()), !dbg !1892
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.90) #41, !dbg !1895
  %22 = icmp eq i32 %21, 0, !dbg !1896
  br i1 %22, label %23, label %31, !dbg !1897

23:                                               ; preds = %20
  %24 = sext i32 %16 to i64, !dbg !1898
  %25 = getelementptr ptr, ptr %1, i64 %24, !dbg !1898
  %26 = add nsw i32 %2, 3, !dbg !1899
  store i32 %26, ptr @pos, align 4, !dbg !1899, !tbaa !1100
  %27 = getelementptr ptr, ptr %25, i64 1, !dbg !1901
  %28 = load ptr, ptr %27, align 8, !dbg !1901, !tbaa !1000
  %29 = load i8, ptr %28, align 1, !dbg !1901, !tbaa !1109
  %30 = icmp eq i8 %29, 0, !dbg !1902
  call void @llvm.dbg.value(metadata i1 %30, metadata !1361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1903
  br label %45, !dbg !1904

31:                                               ; preds = %20
  %32 = load i8, ptr %6, align 1, !dbg !1905, !tbaa !1109
  %33 = icmp eq i8 %32, 45, !dbg !1906
  br i1 %33, label %34, label %44, !dbg !1907

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !1908
  %36 = load i8, ptr %35, align 1, !dbg !1908, !tbaa !1109
  %37 = icmp eq i8 %36, 0, !dbg !1909
  br i1 %37, label %44, label %38, !dbg !1910

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %6, i64 2, !dbg !1911
  %40 = load i8, ptr %39, align 1, !dbg !1911, !tbaa !1109
  %41 = icmp eq i8 %40, 0, !dbg !1912
  br i1 %41, label %42, label %44, !dbg !1913

42:                                               ; preds = %38
  %43 = tail call fastcc i1 @unary_operator(), !dbg !1914
  call void @llvm.dbg.value(metadata i1 %43, metadata !1361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1903
  br label %45

44:                                               ; preds = %38, %34, %31
  tail call fastcc void @beyond() #44, !dbg !1915
  unreachable, !dbg !1915

45:                                               ; preds = %23, %42
  %46 = phi i1 [ %30, %23 ], [ %43, %42 ]
  call void @llvm.dbg.value(metadata i1 %46, metadata !1361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1903
  %47 = xor i1 %46, true, !dbg !1916
  tail call void @llvm.dbg.value(metadata i1 %47, metadata !1867, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1873
  br label %87, !dbg !1917

48:                                               ; preds = %11
  call void @llvm.dbg.value(metadata ptr %12, metadata !1111, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata ptr @.str.91, metadata !1117, metadata !DIExpression()), !dbg !1918
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(2) @.str.91) #41, !dbg !1921
  %50 = icmp eq i32 %49, 0, !dbg !1922
  br i1 %50, label %51, label %60, !dbg !1923

51:                                               ; preds = %48
  %52 = getelementptr ptr, ptr %4, i64 2, !dbg !1924
  %53 = load ptr, ptr %52, align 8, !dbg !1924, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %53, metadata !1111, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1117, metadata !DIExpression()), !dbg !1925
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull dereferenceable(2) @.str.92) #41, !dbg !1927
  %55 = icmp eq i32 %54, 0, !dbg !1928
  br i1 %55, label %56, label %60, !dbg !1929

56:                                               ; preds = %51
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1930
  %57 = load i8, ptr %6, align 1, !dbg !1933, !tbaa !1109
  %58 = icmp ne i8 %57, 0, !dbg !1935
  tail call void @llvm.dbg.value(metadata i1 %58, metadata !1867, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1873
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1936
  %59 = add nsw i32 %2, 3, !dbg !1938
  store i32 %59, ptr @pos, align 4, !dbg !1938, !tbaa !1100
  br label %87, !dbg !1939

60:                                               ; preds = %51, %48
  call void @llvm.dbg.value(metadata ptr %6, metadata !1111, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata ptr @.str.98, metadata !1117, metadata !DIExpression()), !dbg !1940
  %61 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(3) @.str.98) #41, !dbg !1943
  %62 = icmp eq i32 %61, 0, !dbg !1944
  br i1 %62, label %72, label %63, !dbg !1945

63:                                               ; preds = %60
  call void @llvm.dbg.value(metadata ptr %6, metadata !1111, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata ptr @.str.99, metadata !1117, metadata !DIExpression()), !dbg !1946
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(3) @.str.99) #41, !dbg !1948
  %65 = icmp eq i32 %64, 0, !dbg !1949
  br i1 %65, label %72, label %66, !dbg !1950

66:                                               ; preds = %63
  call void @llvm.dbg.value(metadata ptr %6, metadata !1111, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata ptr @.str.100, metadata !1117, metadata !DIExpression()), !dbg !1951
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.100) #41, !dbg !1953
  %68 = icmp eq i32 %67, 0, !dbg !1954
  br i1 %68, label %72, label %69, !dbg !1955

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata ptr %6, metadata !1111, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata ptr @.str.101, metadata !1117, metadata !DIExpression()), !dbg !1956
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.101) #41, !dbg !1958
  %71 = icmp eq i32 %70, 0, !dbg !1959
  br i1 %71, label %72, label %78, !dbg !1960

72:                                               ; preds = %69, %66, %63, %60
  %73 = load i32, ptr @argc, align 4, !dbg !1961, !tbaa !1100
  %74 = icmp slt i32 %2, %73, !dbg !1963
  br i1 %74, label %76, label %75, !dbg !1964

75:                                               ; preds = %72
  tail call fastcc void @beyond() #44, !dbg !1965
  unreachable, !dbg !1965

76:                                               ; preds = %72
  %77 = tail call fastcc i1 @or(), !dbg !1966
  tail call void @llvm.dbg.value(metadata i1 %77, metadata !1867, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1873
  br label %87

78:                                               ; preds = %69
  %79 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.102, i32 noundef 5) #40, !dbg !1967
  %80 = load ptr, ptr @argv, align 8, !dbg !1968, !tbaa !1000
  %81 = load i32, ptr @pos, align 4, !dbg !1969, !tbaa !1100
  %82 = sext i32 %81 to i64, !dbg !1968
  %83 = getelementptr ptr, ptr %80, i64 %82, !dbg !1968
  %84 = getelementptr ptr, ptr %83, i64 1, !dbg !1968
  %85 = load ptr, ptr %84, align 8, !dbg !1968, !tbaa !1000
  %86 = tail call ptr @quote(ptr noundef %85) #40, !dbg !1970
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %79, ptr noundef %86) #44, !dbg !1971
  unreachable, !dbg !1971

87:                                               ; preds = %45, %76, %56, %9
  %88 = phi i1 [ %10, %9 ], [ %47, %45 ], [ %58, %56 ], [ %77, %76 ]
  tail call void @llvm.dbg.value(metadata i1 %88, metadata !1867, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1873
  ret i1 %88, !dbg !1972
}

; Function Attrs: noreturn nounwind
declare !dbg !1973 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i1 @or() unnamed_addr #10 !dbg !1977 {
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1979, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 1, metadata !1981, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 0, metadata !1987, metadata !DIExpression()), !dbg !1995
  %1 = load i32, ptr @argc, align 4
  %2 = load i32, ptr @pos, align 4, !tbaa !1100
  call void @llvm.dbg.value(metadata i8 poison, metadata !1987, metadata !DIExpression()), !dbg !1995
  %3 = icmp slt i32 %2, %1, !dbg !1998
  br i1 %3, label %4, label %43, !dbg !1999

4:                                                ; preds = %0
  %5 = load ptr, ptr @argv, align 8, !tbaa !1000
  br label %6, !dbg !2000

6:                                                ; preds = %4, %194
  %7 = phi ptr [ %.lcssa16, %194 ], [ %5, %4 ]
  %8 = phi i32 [ %195, %194 ], [ %2, %4 ]
  %9 = phi i32 [ %.lcssa6, %194 ], [ %1, %4 ]
  %10 = phi i1 [ %189, %194 ], [ false, %4 ]
  br label %11, !dbg !1999

11:                                               ; preds = %6, %183
  %12 = phi ptr [ %7, %6 ], [ %177, %183 ]
  %13 = phi i32 [ %8, %6 ], [ %184, %183 ]
  %14 = phi i32 [ %9, %6 ], [ %174, %183 ]
  %15 = phi i1 [ true, %6 ], [ %172, %183 ]
  %16 = sext i32 %13 to i64, !dbg !1999
  %17 = sext i32 %14 to i64, !dbg !1999
  %18 = add i32 %13, 2, !dbg !1999
  %19 = getelementptr inbounds ptr, ptr %12, i64 %16, !dbg !2001
  %20 = load ptr, ptr %19, align 8, !dbg !2001, !tbaa !1000
  %21 = load i8, ptr %20, align 1, !dbg !2001, !tbaa !1109
  %22 = icmp eq i8 %21, 33, !dbg !2002
  br i1 %22, label %.preheader, label %44, !dbg !2003

.preheader:                                       ; preds = %11
  br label %23, !dbg !2004

23:                                               ; preds = %.preheader, %36
  %24 = phi ptr [ %40, %36 ], [ %20, %.preheader ]
  %25 = phi i1 [ %37, %36 ], [ false, %.preheader ]
  %26 = phi i64 [ %32, %36 ], [ %16, %.preheader ]
  %27 = phi i32 [ %38, %36 ], [ %18, %.preheader ]
  %28 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2005
  %29 = load i8, ptr %28, align 1, !dbg !2005, !tbaa !1109
  %30 = icmp eq i8 %29, 0, !dbg !2006
  br i1 %30, label %31, label %.loopexit, !dbg !2004

31:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2007
  %32 = add nsw i64 %26, 1, !dbg !2010
  %33 = trunc i64 %32 to i32, !dbg !2010
  store i32 %33, ptr @pos, align 4, !dbg !2010, !tbaa !1100
  %34 = icmp slt i64 %32, %17
  br i1 %34, label %36, label %35, !dbg !2011

35:                                               ; preds = %31
  tail call fastcc void @beyond(), !dbg !2012
  unreachable, !dbg !2012

36:                                               ; preds = %31
  %37 = xor i1 %25, true, !dbg !2013
  call void @llvm.dbg.value(metadata i8 poison, metadata !1987, metadata !DIExpression()), !dbg !1995
  %38 = add i32 %27, 1, !dbg !1999
  %39 = getelementptr inbounds ptr, ptr %12, i64 %32, !dbg !2001
  %40 = load ptr, ptr %39, align 8, !dbg !2001, !tbaa !1000
  %41 = load i8, ptr %40, align 1, !dbg !2001, !tbaa !1109
  %42 = icmp eq i8 %41, 33, !dbg !2002
  br i1 %42, label %23, label %.loopexit, !dbg !2003, !llvm.loop !2014

.loopexit3:                                       ; preds = %183
  br label %43, !dbg !2016

.loopexit5:                                       ; preds = %194
  br label %43, !dbg !2016

43:                                               ; preds = %.loopexit5, %.loopexit3, %0
  tail call fastcc void @beyond() #44, !dbg !2016
  unreachable, !dbg !2016

.loopexit:                                        ; preds = %23, %36
  %.ph = phi i32 [ %27, %23 ], [ %38, %36 ]
  %.ph1 = phi i64 [ %26, %23 ], [ %32, %36 ]
  %.ph2 = phi i1 [ %25, %23 ], [ %37, %36 ]
  br label %44

44:                                               ; preds = %.loopexit, %11
  %45 = phi i32 [ %18, %11 ], [ %.ph, %.loopexit ]
  %46 = phi i64 [ %16, %11 ], [ %.ph1, %.loopexit ]
  %47 = phi i1 [ false, %11 ], [ %.ph2, %.loopexit ]
  %48 = trunc i64 %46 to i32
  %49 = shl i64 %46, 32, !dbg !2018
  %50 = ashr exact i64 %49, 32, !dbg !2018
  %51 = getelementptr inbounds ptr, ptr %12, i64 %50, !dbg !2018
  %52 = load ptr, ptr %51, align 8, !dbg !2018, !tbaa !1000
  %53 = load i8, ptr %52, align 1, !dbg !2018, !tbaa !1109
  %54 = icmp eq i8 %53, 40, !dbg !2019
  br i1 %54, label %55, label %132, !dbg !2020

55:                                               ; preds = %44
  %56 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !2021
  %57 = load i8, ptr %56, align 1, !dbg !2021, !tbaa !1109
  %58 = icmp eq i8 %57, 0, !dbg !2022
  br i1 %58, label %59, label %132, !dbg !2023

59:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i1 true, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2024
  %60 = add nsw i32 %48, 1, !dbg !2026
  store i32 %60, ptr @pos, align 4, !dbg !2026, !tbaa !1100
  %61 = icmp slt i32 %60, %14
  br i1 %61, label %62, label %72, !dbg !2027

62:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 1, metadata !1992, metadata !DIExpression()), !dbg !2028
  %63 = add nsw i32 %48, 2, !dbg !2029
  %64 = icmp slt i32 %63, %14, !dbg !2032
  br i1 %64, label %65, label %102, !dbg !2033

65:                                               ; preds = %62
  %66 = sext i32 %45 to i64, !dbg !2034
  %67 = sext i32 %60 to i64, !dbg !2034
  call void @llvm.dbg.value(metadata i64 1, metadata !1992, metadata !DIExpression()), !dbg !2028
  %68 = getelementptr inbounds ptr, ptr %12, i64 %66, !dbg !2035
  %69 = load ptr, ptr %68, align 8, !dbg !2035, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %69, metadata !1111, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1117, metadata !DIExpression()), !dbg !2036
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(2) @.str.92) #41, !dbg !2038
  %71 = icmp eq i32 %70, 0, !dbg !2039
  br i1 %71, label %102, label %73, !dbg !2034

72:                                               ; preds = %59
  tail call fastcc void @beyond(), !dbg !2040
  unreachable, !dbg !2040

73:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i64 2, metadata !1992, metadata !DIExpression()), !dbg !2028
  %74 = add nsw i64 %67, 2, !dbg !2029
  %75 = icmp slt i64 %74, %17, !dbg !2032
  br i1 %75, label %76, label %102, !dbg !2033, !llvm.loop !2041

76:                                               ; preds = %73
  %77 = add nsw i64 %66, 1, !dbg !2029
  call void @llvm.dbg.value(metadata i64 2, metadata !1992, metadata !DIExpression()), !dbg !2028
  %78 = getelementptr inbounds ptr, ptr %12, i64 %77, !dbg !2035
  %79 = load ptr, ptr %78, align 8, !dbg !2035, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %79, metadata !1111, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1117, metadata !DIExpression()), !dbg !2036
  %80 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(2) @.str.92) #41, !dbg !2038
  %81 = icmp eq i32 %80, 0, !dbg !2039
  br i1 %81, label %102, label %82, !dbg !2034

82:                                               ; preds = %76
  call void @llvm.dbg.value(metadata i64 3, metadata !1992, metadata !DIExpression()), !dbg !2028
  %83 = add nsw i64 %67, 3, !dbg !2029
  %84 = icmp slt i64 %83, %17, !dbg !2032
  br i1 %84, label %85, label %102, !dbg !2033, !llvm.loop !2041

85:                                               ; preds = %82
  %86 = add nsw i64 %66, 2, !dbg !2029
  call void @llvm.dbg.value(metadata i64 3, metadata !1992, metadata !DIExpression()), !dbg !2028
  %87 = getelementptr inbounds ptr, ptr %12, i64 %86, !dbg !2035
  %88 = load ptr, ptr %87, align 8, !dbg !2035, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %88, metadata !1111, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1117, metadata !DIExpression()), !dbg !2036
  %89 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %88, ptr noundef nonnull dereferenceable(2) @.str.92) #41, !dbg !2038
  %90 = icmp eq i32 %89, 0, !dbg !2039
  br i1 %90, label %102, label %91, !dbg !2034

91:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i64 4, metadata !1992, metadata !DIExpression()), !dbg !2028
  %92 = add nsw i64 %67, 4, !dbg !2029
  %93 = icmp slt i64 %92, %17, !dbg !2032
  br i1 %93, label %94, label %102, !dbg !2033, !llvm.loop !2041

94:                                               ; preds = %91
  %95 = add nsw i64 %66, 3, !dbg !2029
  call void @llvm.dbg.value(metadata i64 4, metadata !1992, metadata !DIExpression()), !dbg !2028
  %96 = getelementptr inbounds ptr, ptr %12, i64 %95, !dbg !2035
  %97 = load ptr, ptr %96, align 8, !dbg !2035, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %97, metadata !1111, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1117, metadata !DIExpression()), !dbg !2036
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %97, ptr noundef nonnull dereferenceable(2) @.str.92) #41, !dbg !2038
  %99 = icmp eq i32 %98, 0, !dbg !2039
  %100 = sub nsw i32 %14, %60
  %101 = select i1 %99, i32 4, i32 %100, !dbg !2034
  br label %102, !dbg !2034

102:                                              ; preds = %94, %73, %65, %76, %82, %85, %91, %62
  %103 = phi i32 [ 1, %62 ], [ 1, %65 ], [ 2, %73 ], [ 2, %76 ], [ 3, %82 ], [ 3, %85 ], [ 4, %91 ], [ %101, %94 ], !dbg !2043
  call void @llvm.dbg.value(metadata i32 %103, metadata !1992, metadata !DIExpression()), !dbg !2028
  %104 = tail call fastcc i1 @posixtest(i32 noundef %103), !dbg !2044
  call void @llvm.dbg.value(metadata i1 %104, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1995
  %105 = load ptr, ptr @argv, align 8, !dbg !2045, !tbaa !1000
  %106 = load i32, ptr @pos, align 4, !dbg !2047, !tbaa !1100
  %107 = sext i32 %106 to i64, !dbg !2045
  %108 = getelementptr inbounds ptr, ptr %105, i64 %107, !dbg !2045
  %109 = load ptr, ptr %108, align 8, !dbg !2045, !tbaa !1000
  %110 = icmp eq ptr %109, null, !dbg !2045
  br i1 %110, label %111, label %114, !dbg !2048

111:                                              ; preds = %102
  %112 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.119, i32 noundef 5) #40, !dbg !2049
  %113 = tail call ptr @quote(ptr noundef nonnull @.str.92) #40, !dbg !2050
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %112, ptr noundef %113) #44, !dbg !2051
  unreachable, !dbg !2051

114:                                              ; preds = %102
  %115 = load i8, ptr %109, align 1, !dbg !2052, !tbaa !1109
  %116 = icmp eq i8 %115, 41, !dbg !2054
  br i1 %116, label %117, label %121, !dbg !2055

117:                                              ; preds = %114
  %118 = getelementptr inbounds i8, ptr %109, i64 1, !dbg !2056
  %119 = load i8, ptr %118, align 1, !dbg !2056, !tbaa !1109
  %120 = icmp eq i8 %119, 0, !dbg !2056
  br i1 %120, label %130, label %121, !dbg !2057

121:                                              ; preds = %117, %114
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.120, i32 noundef 5) #40, !dbg !2058
  %123 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.92) #40, !dbg !2059
  %124 = load ptr, ptr @argv, align 8, !dbg !2060, !tbaa !1000
  %125 = load i32, ptr @pos, align 4, !dbg !2061, !tbaa !1100
  %126 = sext i32 %125 to i64, !dbg !2060
  %127 = getelementptr inbounds ptr, ptr %124, i64 %126, !dbg !2060
  %128 = load ptr, ptr %127, align 8, !dbg !2060, !tbaa !1000
  %129 = tail call ptr @quote_n(i32 noundef 1, ptr noundef %128) #40, !dbg !2062
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %122, ptr noundef %123, ptr noundef %129) #44, !dbg !2063
  unreachable, !dbg !2063

130:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i1 false, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2064
  %131 = add nsw i32 %106, 1, !dbg !2066
  store i32 %131, ptr @pos, align 4, !dbg !2066, !tbaa !1100
  br label %169, !dbg !2067

132:                                              ; preds = %55, %44
  %133 = sub nsw i32 %14, %48, !dbg !2068
  %134 = icmp sgt i32 %133, 3, !dbg !2070
  br i1 %134, label %135, label %145, !dbg !2071

135:                                              ; preds = %132
  call void @llvm.dbg.value(metadata ptr %52, metadata !1111, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata ptr @.str.115, metadata !1117, metadata !DIExpression()), !dbg !2072
  %136 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(3) @.str.115) #41, !dbg !2074
  %137 = icmp eq i32 %136, 0, !dbg !2075
  br i1 %137, label %138, label %147, !dbg !2076

138:                                              ; preds = %135
  %139 = getelementptr ptr, ptr %51, i64 2, !dbg !2077
  %140 = load ptr, ptr %139, align 8, !dbg !2077, !tbaa !1000
  %141 = tail call fastcc i32 @binop(ptr noundef %140), !dbg !2078, !range !1872
  call void @llvm.dbg.value(metadata i32 %141, metadata !1991, metadata !DIExpression()), !dbg !1995
  %142 = icmp sgt i32 %141, -1, !dbg !2079
  br i1 %142, label %143, label %147, !dbg !2080

143:                                              ; preds = %138
  %144 = tail call fastcc i1 @binary_operator(i1 noundef true, i32 noundef %141), !dbg !2081
  call void @llvm.dbg.value(metadata i1 %144, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1995
  br label %169, !dbg !2082

145:                                              ; preds = %132
  %146 = icmp eq i32 %133, 3, !dbg !2083
  br i1 %146, label %147, label %154, !dbg !2085

147:                                              ; preds = %135, %138, %145
  %148 = getelementptr ptr, ptr %51, i64 1, !dbg !2086
  %149 = load ptr, ptr %148, align 8, !dbg !2086, !tbaa !1000
  %150 = tail call fastcc i32 @binop(ptr noundef %149), !dbg !2087, !range !1872
  call void @llvm.dbg.value(metadata i32 %150, metadata !1991, metadata !DIExpression()), !dbg !1995
  %151 = icmp sgt i32 %150, -1, !dbg !2088
  br i1 %151, label %152, label %154, !dbg !2089

152:                                              ; preds = %147
  %153 = tail call fastcc i1 @binary_operator(i1 noundef false, i32 noundef %150), !dbg !2090
  call void @llvm.dbg.value(metadata i1 %153, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1995
  br label %169, !dbg !2091

154:                                              ; preds = %147, %145
  %155 = icmp eq i8 %53, 45, !dbg !2092
  br i1 %155, label %156, label %166, !dbg !2094

156:                                              ; preds = %154
  %157 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !2095
  %158 = load i8, ptr %157, align 1, !dbg !2095, !tbaa !1109
  %159 = icmp eq i8 %158, 0, !dbg !2095
  br i1 %159, label %166, label %160, !dbg !2096

160:                                              ; preds = %156
  %161 = getelementptr inbounds i8, ptr %52, i64 2, !dbg !2097
  %162 = load i8, ptr %161, align 1, !dbg !2097, !tbaa !1109
  %163 = icmp eq i8 %162, 0, !dbg !2098
  br i1 %163, label %164, label %166, !dbg !2099

164:                                              ; preds = %160
  %165 = tail call fastcc i1 @unary_operator(), !dbg !2100
  call void @llvm.dbg.value(metadata i1 %165, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1995
  br label %169, !dbg !2101

166:                                              ; preds = %160, %156, %154
  %167 = icmp ne i8 %53, 0, !dbg !2102
  call void @llvm.dbg.value(metadata i1 %167, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1995
  call void @llvm.dbg.value(metadata i1 false, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2104
  %168 = add nsw i32 %48, 1, !dbg !2106
  store i32 %168, ptr @pos, align 4, !dbg !2106, !tbaa !1100
  br label %169

169:                                              ; preds = %130, %143, %152, %164, %166
  %170 = phi i1 [ %104, %130 ], [ %144, %143 ], [ %153, %152 ], [ %165, %164 ], [ %167, %166 ]
  call void @llvm.dbg.value(metadata i1 %170, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1995
  %171 = xor i1 %47, %170, !dbg !2107
  %172 = and i1 %15, %171, !dbg !2108
  call void @llvm.dbg.value(metadata i1 %172, metadata !1981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1984
  %173 = load i32, ptr @pos, align 4, !dbg !2109, !tbaa !1100
  %174 = load i32, ptr @argc, align 4, !dbg !2111
  %175 = icmp slt i32 %173, %174, !dbg !2112
  br i1 %175, label %176, label %186, !dbg !2113

176:                                              ; preds = %169
  %177 = load ptr, ptr @argv, align 8, !dbg !2114, !tbaa !1000
  %178 = sext i32 %173 to i64, !dbg !2114
  %179 = getelementptr inbounds ptr, ptr %177, i64 %178, !dbg !2114
  %180 = load ptr, ptr %179, align 8, !dbg !2114, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %180, metadata !1111, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata ptr @.str.98, metadata !1117, metadata !DIExpression()), !dbg !2115
  %181 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %180, ptr noundef nonnull dereferenceable(3) @.str.98) #41, !dbg !2117
  %182 = icmp eq i32 %181, 0, !dbg !2118
  br i1 %182, label %183, label %188, !dbg !2119

183:                                              ; preds = %176
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2120
  %184 = add nsw i32 %173, 1, !dbg !2122
  store i32 %184, ptr @pos, align 4, !dbg !2122, !tbaa !1100
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 poison, metadata !1987, metadata !DIExpression()), !dbg !1995
  %185 = icmp slt i32 %184, %174, !dbg !1998
  br i1 %185, label %11, label %.loopexit3, !dbg !1999, !llvm.loop !2123

186:                                              ; preds = %169
  %.lcssa23 = phi i1 [ %10, %169 ]
  %.lcssa11 = phi i1 [ %172, %169 ], !dbg !2108
  %187 = or i1 %.lcssa23, %.lcssa11, !dbg !2126
  tail call void @llvm.dbg.value(metadata i1 %187, metadata !1979, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1980
  br label %192

188:                                              ; preds = %176
  %.lcssa16 = phi ptr [ %177, %176 ], !dbg !2114
  %.lcssa14 = phi ptr [ %180, %176 ], !dbg !2114
  %.lcssa12 = phi i1 [ %172, %176 ], !dbg !2108
  %.lcssa9 = phi i32 [ %173, %176 ], !dbg !2109
  %.lcssa6 = phi i32 [ %174, %176 ], !dbg !2111
  %189 = or i1 %10, %.lcssa12, !dbg !2126
  tail call void @llvm.dbg.value(metadata i1 %189, metadata !1979, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1980
  call void @llvm.dbg.value(metadata ptr %.lcssa14, metadata !1111, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata ptr @.str.99, metadata !1117, metadata !DIExpression()), !dbg !2127
  %190 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa14, ptr noundef nonnull dereferenceable(3) @.str.99) #41, !dbg !2130
  %191 = icmp eq i32 %190, 0, !dbg !2131
  br i1 %191, label %194, label %.loopexit4, !dbg !2132

.loopexit4:                                       ; preds = %188
  %.lcssa = phi i1 [ %189, %188 ], !dbg !2126
  br label %192, !dbg !2133

192:                                              ; preds = %.loopexit4, %186
  %193 = phi i1 [ %187, %186 ], [ %.lcssa, %.loopexit4 ]
  ret i1 %193, !dbg !2133

194:                                              ; preds = %188
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2134
  %195 = add nsw i32 %.lcssa9, 1, !dbg !2136
  store i32 %195, ptr @pos, align 4, !dbg !2136, !tbaa !1100
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 poison, metadata !1987, metadata !DIExpression()), !dbg !1995
  %196 = icmp slt i32 %195, %.lcssa6, !dbg !1998
  br i1 %196, label %6, label %.loopexit5, !dbg !1999, !llvm.loop !2137
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i32 @binop(ptr nocapture noundef readonly %0) unnamed_addr #11 !dbg !2139 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2141, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata ptr @.str.103, metadata !1117, metadata !DIExpression()), !dbg !2143
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.103) #41, !dbg !2145
  %3 = icmp eq i32 %2, 0, !dbg !2146
  br i1 %3, label %44, label %4, !dbg !2147

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata ptr @.str.104, metadata !1117, metadata !DIExpression()), !dbg !2148
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.104) #41, !dbg !2150
  %6 = icmp eq i32 %5, 0, !dbg !2151
  br i1 %6, label %44, label %7, !dbg !2152

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata ptr @.str.105, metadata !1117, metadata !DIExpression()), !dbg !2153
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.105) #41, !dbg !2155
  %9 = icmp eq i32 %8, 0, !dbg !2156
  br i1 %9, label %44, label %10, !dbg !2157

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata ptr @.str.100, metadata !1117, metadata !DIExpression()), !dbg !2158
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.100) #41, !dbg !2160
  %12 = icmp eq i32 %11, 0, !dbg !2161
  br i1 %12, label %44, label %13, !dbg !2162

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata ptr @.str.101, metadata !1117, metadata !DIExpression()), !dbg !2163
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.101) #41, !dbg !2165
  %15 = icmp eq i32 %14, 0, !dbg !2166
  br i1 %15, label %44, label %16, !dbg !2167

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata ptr @.str.106, metadata !1117, metadata !DIExpression()), !dbg !2168
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.106) #41, !dbg !2170
  %18 = icmp eq i32 %17, 0, !dbg !2171
  br i1 %18, label %44, label %19, !dbg !2172

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata ptr @.str.107, metadata !1117, metadata !DIExpression()), !dbg !2173
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.107) #41, !dbg !2175
  %21 = icmp eq i32 %20, 0, !dbg !2176
  br i1 %21, label %44, label %22, !dbg !2177

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata ptr @.str.108, metadata !1117, metadata !DIExpression()), !dbg !2178
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.108) #41, !dbg !2180
  %24 = icmp eq i32 %23, 0, !dbg !2181
  br i1 %24, label %44, label %25, !dbg !2182

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata ptr @.str.109, metadata !1117, metadata !DIExpression()), !dbg !2183
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.109) #41, !dbg !2185
  %27 = icmp eq i32 %26, 0, !dbg !2186
  br i1 %27, label %44, label %28, !dbg !2187

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata ptr @.str.110, metadata !1117, metadata !DIExpression()), !dbg !2188
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.110) #41, !dbg !2190
  %30 = icmp eq i32 %29, 0, !dbg !2191
  br i1 %30, label %44, label %31, !dbg !2192

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata ptr @.str.111, metadata !1117, metadata !DIExpression()), !dbg !2193
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.111) #41, !dbg !2195
  %33 = icmp eq i32 %32, 0, !dbg !2196
  br i1 %33, label %44, label %34, !dbg !2197

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata ptr @.str.112, metadata !1117, metadata !DIExpression()), !dbg !2198
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.112) #41, !dbg !2200
  %36 = icmp eq i32 %35, 0, !dbg !2201
  br i1 %36, label %44, label %37, !dbg !2202

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata ptr @.str.113, metadata !1117, metadata !DIExpression()), !dbg !2203
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.113) #41, !dbg !2205
  %39 = icmp eq i32 %38, 0, !dbg !2206
  br i1 %39, label %44, label %40, !dbg !2207

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata ptr @.str.114, metadata !1117, metadata !DIExpression()), !dbg !2208
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.114) #41, !dbg !2210
  %42 = icmp eq i32 %41, 0, !dbg !2211
  %43 = select i1 %42, i32 10, i32 -1, !dbg !2212
  br label %44, !dbg !2207

44:                                               ; preds = %4, %10, %16, %22, %28, %34, %37, %40, %31, %25, %19, %13, %7, %1
  %45 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 3, %7 ], [ 1, %10 ], [ 2, %13 ], [ 4, %16 ], [ 9, %19 ], [ 8, %22 ], [ 7, %25 ], [ 6, %28 ], [ 5, %31 ], [ 12, %34 ], [ %43, %40 ], [ 11, %37 ], !dbg !2147
  ret i32 %45, !dbg !2213
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @binary_operator(i1 noundef %0, i32 noundef %1) unnamed_addr #10 !dbg !2214 {
  %3 = alloca %struct.stat, align 8, !DIAssignID !2237
  %4 = alloca %struct.stat, align 8, !DIAssignID !2238
  %5 = alloca [21 x i8], align 1, !DIAssignID !2239
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2222, metadata !DIExpression(), metadata !2239, metadata ptr %5, metadata !DIExpression()), !dbg !2240
  %6 = alloca [21 x i8], align 1, !DIAssignID !2241
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2225, metadata !DIExpression(), metadata !2241, metadata ptr %6, metadata !DIExpression()), !dbg !2240
  %7 = alloca [2 x %struct.stat], align 8, !DIAssignID !2242
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2231, metadata !DIExpression(), metadata !2242, metadata ptr %7, metadata !DIExpression()), !dbg !2243
  tail call void @llvm.dbg.value(metadata i1 %0, metadata !2218, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2244
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2219, metadata !DIExpression()), !dbg !2244
  %8 = load i32, ptr @pos, align 4, !dbg !2245, !tbaa !1100
  %9 = zext i1 %0 to i32, !dbg !2246
  %10 = add nsw i32 %8, %9, !dbg !2246
  %11 = add nsw i32 %10, 1, !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2220, metadata !DIExpression()), !dbg !2244
  %12 = load i32, ptr @argc, align 4, !dbg !2248
  %13 = add nsw i32 %12, -2, !dbg !2249
  %14 = icmp slt i32 %11, %13, !dbg !2250
  br i1 %14, label %15, label %24, !dbg !2251

15:                                               ; preds = %2
  %16 = load ptr, ptr @argv, align 8, !dbg !2252, !tbaa !1000
  %17 = sext i32 %10 to i64, !dbg !2252
  %18 = getelementptr ptr, ptr %16, i64 %17, !dbg !2252
  %19 = getelementptr ptr, ptr %18, i64 2, !dbg !2252
  %20 = load ptr, ptr %19, align 8, !dbg !2252, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %20, metadata !1111, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata ptr @.str.115, metadata !1117, metadata !DIExpression()), !dbg !2253
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(3) @.str.115) #41, !dbg !2255
  %22 = icmp eq i32 %21, 0, !dbg !2256
  tail call void @llvm.dbg.value(metadata i1 %22, metadata !2221, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2244
  %23 = select i1 %22, i32 %11, i32 %10, !dbg !2257
  br label %24, !dbg !2257

24:                                               ; preds = %15, %2
  %25 = phi i32 [ %10, %2 ], [ %23, %15 ], !dbg !2258
  %26 = phi i1 [ false, %2 ], [ %22, %15 ]
  %27 = add nsw i32 %25, 3, !dbg !2258
  store i32 %27, ptr @pos, align 4, !dbg !2258, !tbaa !1100
  switch i32 %1, label %179 [
    i32 4, label %28
    i32 5, label %28
    i32 6, label %28
    i32 7, label %28
    i32 8, label %28
    i32 9, label %28
    i32 11, label %70
    i32 12, label %70
    i32 10, label %125
    i32 0, label %156
    i32 3, label %156
    i32 1, label %167
    i32 2, label %167
  ], !dbg !2259

28:                                               ; preds = %24, %24, %24, %24, %24, %24
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %5) #40, !dbg !2260
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %6) #40, !dbg !2261
  %29 = load ptr, ptr @argv, align 8, !dbg !2240, !tbaa !1000
  %30 = sext i32 %10 to i64, !dbg !2240
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30, !dbg !2240
  %32 = load ptr, ptr %31, align 8, !dbg !2240, !tbaa !1000
  br i1 %0, label %33, label %36, !dbg !2262

33:                                               ; preds = %28
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #41, !dbg !2263
  %35 = call ptr @umaxtostr(i64 noundef %34, ptr noundef nonnull %5) #40, !dbg !2264
  br label %38, !dbg !2262

36:                                               ; preds = %28
  %37 = tail call fastcc ptr @find_int(ptr noundef %32), !dbg !2265
  br label %38, !dbg !2262

38:                                               ; preds = %36, %33
  %39 = phi ptr [ %35, %33 ], [ %37, %36 ], !dbg !2262
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !2226, metadata !DIExpression()), !dbg !2240
  %40 = load ptr, ptr @argv, align 8, !dbg !2240, !tbaa !1000
  %41 = sext i32 %10 to i64, !dbg !2240
  %42 = getelementptr ptr, ptr %40, i64 %41, !dbg !2240
  br i1 %26, label %43, label %48, !dbg !2266

43:                                               ; preds = %38
  %44 = getelementptr ptr, ptr %42, i64 3, !dbg !2267
  %45 = load ptr, ptr %44, align 8, !dbg !2267, !tbaa !1000
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #41, !dbg !2268
  %47 = call ptr @umaxtostr(i64 noundef %46, ptr noundef nonnull %6) #40, !dbg !2269
  br label %52, !dbg !2266

48:                                               ; preds = %38
  %49 = getelementptr ptr, ptr %42, i64 2, !dbg !2270
  %50 = load ptr, ptr %49, align 8, !dbg !2270, !tbaa !1000
  %51 = call fastcc ptr @find_int(ptr noundef %50), !dbg !2271
  br label %52, !dbg !2266

52:                                               ; preds = %48, %43
  %53 = phi ptr [ %47, %43 ], [ %51, %48 ], !dbg !2266
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !2227, metadata !DIExpression()), !dbg !2240
  %54 = call i32 @strintcmp(ptr noundef %39, ptr noundef %53) #41, !dbg !2272
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !2228, metadata !DIExpression()), !dbg !2240
  switch i32 %1, label %67 [
    i32 4, label %55
    i32 5, label %57
    i32 6, label %59
    i32 7, label %61
    i32 8, label %63
    i32 9, label %65
  ], !dbg !2273

55:                                               ; preds = %52
  %56 = icmp eq i32 %54, 0, !dbg !2274
  br label %68, !dbg !2276

57:                                               ; preds = %52
  %58 = icmp sgt i32 %54, -1, !dbg !2277
  br label %68, !dbg !2278

59:                                               ; preds = %52
  %60 = icmp sgt i32 %54, 0, !dbg !2279
  br label %68, !dbg !2280

61:                                               ; preds = %52
  %62 = icmp slt i32 %54, 1, !dbg !2281
  br label %68, !dbg !2282

63:                                               ; preds = %52
  %64 = icmp slt i32 %54, 0, !dbg !2283
  br label %68, !dbg !2284

65:                                               ; preds = %52
  %66 = icmp ne i32 %54, 0, !dbg !2285
  br label %68, !dbg !2286

67:                                               ; preds = %52
  unreachable, !dbg !2287

68:                                               ; preds = %65, %63, %61, %59, %57, %55
  %69 = phi i1 [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %60, %59 ], [ %58, %57 ], [ %56, %55 ], !dbg !2288
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %6) #40, !dbg !2289
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %5) #40, !dbg !2289
  br label %180

70:                                               ; preds = %24, %24
  %71 = or i1 %26, %0, !dbg !2290
  br i1 %71, label %72, label %78, !dbg !2292

72:                                               ; preds = %70
  %73 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.116, i32 noundef 5) #40, !dbg !2293
  %74 = load ptr, ptr @argv, align 8, !dbg !2294, !tbaa !1000
  %75 = sext i32 %11 to i64, !dbg !2294
  %76 = getelementptr inbounds ptr, ptr %74, i64 %75, !dbg !2294
  %77 = load ptr, ptr %76, align 8, !dbg !2294, !tbaa !1000
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %73, ptr noundef %77) #44, !dbg !2295
  unreachable, !dbg !2295

78:                                               ; preds = %70
  %79 = load ptr, ptr @argv, align 8, !dbg !2296, !tbaa !1000
  %80 = sext i32 %10 to i64, !dbg !2296
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80, !dbg !2296
  %82 = load ptr, ptr %81, align 8, !dbg !2296, !tbaa !1000
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2297, metadata !DIExpression(), metadata !2238, metadata ptr %4, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata ptr %82, metadata !2302, metadata !DIExpression()), !dbg !2303
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #40, !dbg !2305
  %83 = call i32 @stat(ptr noundef %82, ptr noundef nonnull %4) #40, !dbg !2306
  %84 = icmp slt i32 %83, 0, !dbg !2307
  %85 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 13, !dbg !2306
  %86 = load i64, ptr %85, align 8, !dbg !2306
  %87 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 13, i32 1, !dbg !2306
  %88 = load i64, ptr %87, align 8, !dbg !2306
  %89 = insertvalue [2 x i64] poison, i64 %86, 0, !dbg !2306
  %90 = insertvalue [2 x i64] %89, i64 %88, 1, !dbg !2306
  %91 = select i1 %84, [2 x i64] [i64 -9223372036854775808, i64 -1], [2 x i64] %90, !dbg !2306
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #40, !dbg !2308
  %92 = load ptr, ptr @argv, align 8, !dbg !2309, !tbaa !1000
  %93 = getelementptr ptr, ptr %92, i64 %80, !dbg !2309
  %94 = getelementptr ptr, ptr %93, i64 2, !dbg !2309
  %95 = load ptr, ptr %94, align 8, !dbg !2309, !tbaa !1000
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2297, metadata !DIExpression(), metadata !2237, metadata ptr %3, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata ptr %95, metadata !2302, metadata !DIExpression()), !dbg !2310
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #40, !dbg !2312
  %96 = call i32 @stat(ptr noundef %95, ptr noundef nonnull %3) #40, !dbg !2313
  %97 = icmp slt i32 %96, 0, !dbg !2314
  %98 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 13, !dbg !2313
  %99 = load i64, ptr %98, align 8, !dbg !2313
  %100 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 13, i32 1, !dbg !2313
  %101 = load i64, ptr %100, align 8, !dbg !2313
  %102 = insertvalue [2 x i64] poison, i64 %99, 0, !dbg !2313
  %103 = insertvalue [2 x i64] %102, i64 %101, 1, !dbg !2313
  %104 = select i1 %97, [2 x i64] [i64 -9223372036854775808, i64 -1], [2 x i64] %103, !dbg !2313
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #40, !dbg !2315
  %105 = extractvalue [2 x i64] %91, 0
  %106 = extractvalue [2 x i64] %91, 1
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1613, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2316
  tail call void @llvm.dbg.value(metadata i64 %106, metadata !1613, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2316
  %107 = extractvalue [2 x i64] %104, 0
  %108 = extractvalue [2 x i64] %104, 1
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1619, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2316
  tail call void @llvm.dbg.value(metadata i64 %108, metadata !1619, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2316
  %109 = icmp sgt i64 %105, %107, !dbg !2318
  %110 = zext i1 %109 to i32, !dbg !2318
  %111 = icmp slt i64 %105, %107, !dbg !2318
  %112 = sext i1 %111 to i32, !dbg !2318
  %113 = add nsw i32 %112, %110, !dbg !2318
  %114 = shl nsw i32 %113, 1, !dbg !2319
  %115 = icmp sgt i64 %106, %108, !dbg !2320
  %116 = zext i1 %115 to i32, !dbg !2320
  %117 = icmp slt i64 %106, %108, !dbg !2320
  %118 = sext i1 %117 to i32, !dbg !2320
  %119 = add nsw i32 %118, %116, !dbg !2320
  %120 = add nsw i32 %119, %114, !dbg !2321
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !2229, metadata !DIExpression()), !dbg !2322
  %121 = icmp eq i32 %1, 12, !dbg !2323
  %122 = icmp slt i32 %120, 0, !dbg !2324
  %123 = icmp sgt i32 %120, 0, !dbg !2324
  %124 = select i1 %121, i1 %122, i1 %123, !dbg !2324
  br label %180

125:                                              ; preds = %24
  %126 = or i1 %26, %0, !dbg !2325
  br i1 %126, label %127, label %129, !dbg !2326

127:                                              ; preds = %125
  %128 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.117, i32 noundef 5) #40, !dbg !2327
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %128) #44, !dbg !2328
  unreachable, !dbg !2328

129:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #40, !dbg !2329
  %130 = load ptr, ptr @argv, align 8, !dbg !2330, !tbaa !1000
  %131 = sext i32 %10 to i64, !dbg !2330
  %132 = getelementptr inbounds ptr, ptr %130, i64 %131, !dbg !2330
  %133 = load ptr, ptr %132, align 8, !dbg !2330, !tbaa !1000
  %134 = call i32 @stat(ptr noundef %133, ptr noundef nonnull %7) #40, !dbg !2331
  %135 = icmp eq i32 %134, 0, !dbg !2332
  br i1 %135, label %136, label %154, !dbg !2333

136:                                              ; preds = %129
  %137 = load ptr, ptr @argv, align 8, !dbg !2334, !tbaa !1000
  %138 = getelementptr ptr, ptr %137, i64 %131, !dbg !2334
  %139 = getelementptr ptr, ptr %138, i64 2, !dbg !2334
  %140 = load ptr, ptr %139, align 8, !dbg !2334, !tbaa !1000
  %141 = getelementptr inbounds [2 x %struct.stat], ptr %7, i64 0, i64 1, !dbg !2335
  %142 = call i32 @stat(ptr noundef %140, ptr noundef nonnull %141) #40, !dbg !2336
  %143 = icmp eq i32 %142, 0, !dbg !2337
  br i1 %143, label %144, label %154, !dbg !2338

144:                                              ; preds = %136
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2339, metadata !DIExpression()), !dbg !2346
  tail call void @llvm.dbg.value(metadata ptr %141, metadata !2345, metadata !DIExpression()), !dbg !2346
  %145 = load i64, ptr %7, align 8, !dbg !2348, !tbaa !2349
  %146 = load i64, ptr %141, align 8, !dbg !2348, !tbaa !2349
  %147 = icmp eq i64 %145, %146, !dbg !2348
  %148 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 1, !dbg !2348
  %149 = load i64, ptr %148, align 8, !dbg !2348, !tbaa !2350
  %150 = getelementptr inbounds [2 x %struct.stat], ptr %7, i64 0, i64 1, i32 1, !dbg !2348
  %151 = load i64, ptr %150, align 8, !dbg !2348, !tbaa !2350
  %152 = icmp eq i64 %149, %151, !dbg !2348
  %153 = and i1 %147, %152, !dbg !2348
  br label %154

154:                                              ; preds = %144, %136, %129
  %155 = phi i1 [ false, %136 ], [ false, %129 ], [ %153, %144 ], !dbg !2243
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #40, !dbg !2351
  br label %180

156:                                              ; preds = %24, %24
  %157 = load ptr, ptr @argv, align 8, !dbg !2352, !tbaa !1000
  %158 = sext i32 %10 to i64, !dbg !2352
  %159 = getelementptr inbounds ptr, ptr %157, i64 %158, !dbg !2352
  %160 = load ptr, ptr %159, align 8, !dbg !2352, !tbaa !1000
  %161 = getelementptr ptr, ptr %159, i64 2, !dbg !2353
  %162 = load ptr, ptr %161, align 8, !dbg !2353, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %160, metadata !1111, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata ptr %162, metadata !1117, metadata !DIExpression()), !dbg !2354
  %163 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %160, ptr noundef nonnull dereferenceable(1) %162) #41, !dbg !2356
  %164 = icmp eq i32 %163, 0, !dbg !2357
  %165 = icmp ne i32 %1, 0, !dbg !2358
  %166 = xor i1 %165, %164, !dbg !2358
  br label %180, !dbg !2359

167:                                              ; preds = %24, %24
  %168 = load ptr, ptr @argv, align 8, !dbg !2360, !tbaa !1000
  %169 = sext i32 %10 to i64, !dbg !2360
  %170 = getelementptr inbounds ptr, ptr %168, i64 %169, !dbg !2360
  %171 = load ptr, ptr %170, align 8, !dbg !2360, !tbaa !1000
  %172 = getelementptr ptr, ptr %170, i64 2, !dbg !2361
  %173 = load ptr, ptr %172, align 8, !dbg !2361, !tbaa !1000
  %174 = tail call i32 @strcoll(ptr noundef %171, ptr noundef %173) #41, !dbg !2362
  tail call void @llvm.dbg.value(metadata i32 %174, metadata !2235, metadata !DIExpression()), !dbg !2363
  %175 = icmp eq i32 %1, 2, !dbg !2364
  %176 = icmp slt i32 %174, 0, !dbg !2365
  %177 = icmp sgt i32 %174, 0, !dbg !2365
  %178 = select i1 %175, i1 %176, i1 %177, !dbg !2365
  br label %180

179:                                              ; preds = %24
  tail call void @__assert_fail(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.94, i32 noundef 362, ptr noundef nonnull @__PRETTY_FUNCTION__.binary_operator) #42, !dbg !2366
  unreachable, !dbg !2366

180:                                              ; preds = %167, %156, %154, %78, %68
  %181 = phi i1 [ %178, %167 ], [ %166, %156 ], [ %155, %154 ], [ %124, %78 ], [ %69, %68 ], !dbg !2369
  ret i1 %181, !dbg !2370
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2371 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_int(ptr noundef %0) unnamed_addr #10 !dbg !2374 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2378, metadata !DIExpression()), !dbg !2381
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2379, metadata !DIExpression()), !dbg !2381
  %2 = tail call ptr @__ctype_b_loc() #43, !dbg !2381
  %3 = load ptr, ptr %2, align 8, !tbaa !1000
  br label %4, !dbg !2382

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %0, %1 ], [ %12, %4 ], !dbg !2384
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2379, metadata !DIExpression()), !dbg !2381
  %6 = load i8, ptr %5, align 1, !dbg !2385, !tbaa !1109
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i16, ptr %3, i64 %7, !dbg !2385
  %9 = load i16, ptr %8, align 2, !dbg !2385, !tbaa !1141
  %10 = and i16 %9, 8192, !dbg !2385
  %11 = icmp eq i16 %10, 0, !dbg !2387
  %12 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !2388
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2379, metadata !DIExpression()), !dbg !2381
  br i1 %11, label %13, label %4, !dbg !2387, !llvm.loop !2389

13:                                               ; preds = %4
  %.lcssa6 = phi ptr [ %5, %4 ], !dbg !2384
  %.lcssa5 = phi i8 [ %6, %4 ], !dbg !2385
  %.lcssa4 = phi ptr [ %12, %4 ], !dbg !2388
  %14 = icmp eq i8 %.lcssa5, 43, !dbg !2391
  %15 = icmp eq i8 %.lcssa5, 45, !dbg !2393
  %16 = zext i1 %15 to i64, !dbg !2393
  %17 = getelementptr inbounds i8, ptr %.lcssa6, i64 %16, !dbg !2393
  %18 = select i1 %14, ptr %.lcssa4, ptr %17, !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !2380, metadata !DIExpression()), !dbg !2381
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !2379, metadata !DIExpression()), !dbg !2381
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !2379, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2381
  %19 = load i8, ptr %18, align 1, !dbg !2394, !tbaa !1109
  %20 = zext i8 %19 to i32, !dbg !2394
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2396, metadata !DIExpression()), !dbg !2400
  %21 = add nsw i32 %20, -48, !dbg !2402
  %22 = icmp ult i32 %21, 10, !dbg !2402
  br i1 %22, label %.preheader1, label %50, !dbg !2403

.preheader1:                                      ; preds = %13
  br label %23, !dbg !2404

23:                                               ; preds = %.preheader1, %23
  %24 = phi ptr [ %25, %23 ], [ %18, %.preheader1 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2406
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !2379, metadata !DIExpression()), !dbg !2381
  %26 = load i8, ptr %25, align 1, !dbg !2407, !tbaa !1109
  %27 = zext i8 %26 to i32, !dbg !2407
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !2396, metadata !DIExpression()), !dbg !2408
  %28 = add nsw i32 %27, -48, !dbg !2410
  %29 = icmp ult i32 %28, 10, !dbg !2410
  br i1 %29, label %23, label %30, !dbg !2404, !llvm.loop !2411

30:                                               ; preds = %23
  %.lcssa3 = phi ptr [ %25, %23 ], !dbg !2406
  %.lcssa2 = phi i8 [ %26, %23 ], !dbg !2407
  tail call void @llvm.dbg.value(metadata ptr %.lcssa3, metadata !2379, metadata !DIExpression()), !dbg !2381
  %31 = zext i8 %.lcssa2 to i64
  %32 = getelementptr inbounds i16, ptr %3, i64 %31, !dbg !2413
  %33 = load i16, ptr %32, align 2, !dbg !2413, !tbaa !1141
  %34 = and i16 %33, 8192, !dbg !2413
  %35 = icmp eq i16 %34, 0, !dbg !2414
  br i1 %35, label %45, label %.preheader, !dbg !2414

.preheader:                                       ; preds = %30
  br label %36, !dbg !2414

36:                                               ; preds = %.preheader, %36
  %37 = phi ptr [ %38, %36 ], [ %.lcssa3, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !2379, metadata !DIExpression()), !dbg !2381
  %38 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !2415
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2379, metadata !DIExpression()), !dbg !2381
  %39 = load i8, ptr %38, align 1, !dbg !2413, !tbaa !1109
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, ptr %3, i64 %40, !dbg !2413
  %42 = load i16, ptr %41, align 2, !dbg !2413, !tbaa !1141
  %43 = and i16 %42, 8192, !dbg !2413
  %44 = icmp eq i16 %43, 0, !dbg !2414
  br i1 %44, label %.loopexit, label %36, !dbg !2414, !llvm.loop !2416

.loopexit:                                        ; preds = %36
  %.lcssa = phi i8 [ %39, %36 ], !dbg !2413
  br label %45, !dbg !2417

45:                                               ; preds = %.loopexit, %30
  %46 = phi i8 [ %.lcssa2, %30 ], [ %.lcssa, %.loopexit ], !dbg !2413
  %47 = icmp eq i8 %46, 0, !dbg !2417
  br i1 %47, label %48, label %50, !dbg !2419

48:                                               ; preds = %45
  %49 = select i1 %14, ptr %.lcssa4, ptr %.lcssa6, !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !2380, metadata !DIExpression()), !dbg !2381
  ret ptr %49, !dbg !2420

50:                                               ; preds = %45, %13
  %51 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #40, !dbg !2421
  %52 = tail call ptr @quote(ptr noundef %0) #40, !dbg !2422
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %51, ptr noundef %52) #44, !dbg !2423
  unreachable, !dbg !2423
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nofree nounwind
declare !dbg !2424 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !2430 i32 @strcoll(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !2431 i32 @euidaccess(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !2435 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2440 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2443 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr nocapture noundef readonly, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2446 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !2450 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #17 !dbg !2453 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2455, metadata !DIExpression()), !dbg !2456
  store ptr %0, ptr @file_name, align 8, !dbg !2457, !tbaa !1000
  ret void, !dbg !2458
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #17 !dbg !2459 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2461, metadata !DIExpression()), !dbg !2462
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !2463, !tbaa !2464
  ret void, !dbg !2466
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2467 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2472, !tbaa !1000
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !2473
  %3 = icmp eq i32 %2, 0, !dbg !2474
  br i1 %3, label %22, label %4, !dbg !2475

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !2476, !tbaa !2464, !range !2477, !noundef !1071
  %6 = icmp eq i8 %5, 0, !dbg !2476
  br i1 %6, label %11, label %7, !dbg !2478

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !2479
  %9 = load i32, ptr %8, align 4, !dbg !2479, !tbaa !1100
  %10 = icmp eq i32 %9, 32, !dbg !2480
  br i1 %10, label %22, label %11, !dbg !2481

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.1.67, i32 noundef 5) #40, !dbg !2482
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2469, metadata !DIExpression()), !dbg !2483
  %13 = load ptr, ptr @file_name, align 8, !dbg !2484, !tbaa !1000
  %14 = icmp eq ptr %13, null, !dbg !2484
  %15 = tail call ptr @__errno_location() #43, !dbg !2486
  %16 = load i32, ptr %15, align 4, !dbg !2486, !tbaa !1100
  br i1 %14, label %19, label %17, !dbg !2487

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !2488
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.68, ptr noundef %18, ptr noundef %12) #40, !dbg !2488
  br label %20, !dbg !2488

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.69, ptr noundef %12) #40, !dbg !2489
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2490, !tbaa !1100
  tail call void @_exit(i32 noundef %21) #42, !dbg !2491
  unreachable, !dbg !2491

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2492, !tbaa !1000
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !2494
  %25 = icmp eq i32 %24, 0, !dbg !2495
  br i1 %25, label %28, label %26, !dbg !2496

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2497, !tbaa !1100
  tail call void @_exit(i32 noundef %27) #42, !dbg !2498
  unreachable, !dbg !2498

28:                                               ; preds = %22
  ret void, !dbg !2499
}

; Function Attrs: noreturn
declare !dbg !2500 void @_exit(i32 noundef) local_unnamed_addr #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #19 !dbg !2501 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2505, metadata !DIExpression()), !dbg !2509
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2506, metadata !DIExpression()), !dbg !2509
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2507, metadata !DIExpression()), !dbg !2509
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2508, metadata !DIExpression(DW_OP_deref)), !dbg !2509
  tail call fastcc void @flush_stdout(), !dbg !2510
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2511, !tbaa !1000
  %7 = icmp eq ptr %6, null, !dbg !2511
  br i1 %7, label %9, label %8, !dbg !2513

8:                                                ; preds = %4
  tail call void %6() #40, !dbg !2514
  br label %13, !dbg !2514

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2515, !tbaa !1000
  %11 = tail call ptr @getprogname() #41, !dbg !2515
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef %11) #40, !dbg !2515
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !2517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2517, !tbaa.struct !1338
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2517
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !2517
  ret void, !dbg !2518
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2519 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2521, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i32 1, metadata !2523, metadata !DIExpression()), !dbg !2526
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !2529
  %2 = icmp slt i32 %1, 0, !dbg !2530
  br i1 %2, label %6, label %3, !dbg !2531

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2532, !tbaa !1000
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !2532
  br label %6, !dbg !2532

6:                                                ; preds = %3, %0
  ret void, !dbg !2533
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2534 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !2540
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2536, metadata !DIExpression()), !dbg !2541
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2537, metadata !DIExpression()), !dbg !2541
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2538, metadata !DIExpression()), !dbg !2541
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2539, metadata !DIExpression(DW_OP_deref)), !dbg !2541
  %7 = load ptr, ptr @stderr, align 8, !dbg !2542, !tbaa !1000
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !2543, !noalias !2587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2591
  call void @llvm.dbg.value(metadata ptr %7, metadata !2583, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata ptr %2, metadata !2584, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata ptr poison, metadata !2585, metadata !DIExpression(DW_OP_deref)), !dbg !2592
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #40, !dbg !2543
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !2543, !noalias !2587
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2593, !tbaa !1100
  %10 = add i32 %9, 1, !dbg !2593
  store i32 %10, ptr @error_message_count, align 4, !dbg !2593, !tbaa !1100
  %11 = icmp eq i32 %1, 0, !dbg !2594
  br i1 %11, label %21, label %12, !dbg !2596

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2597, metadata !DIExpression(), metadata !2540, metadata ptr %5, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i32 %1, metadata !2600, metadata !DIExpression()), !dbg !2605
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !2607
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !2608
  call void @llvm.dbg.value(metadata ptr %13, metadata !2601, metadata !DIExpression()), !dbg !2605
  %14 = icmp eq ptr %13, null, !dbg !2609
  br i1 %14, label %15, label %17, !dbg !2611

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.73, ptr noundef nonnull @.str.5.74, i32 noundef 5) #40, !dbg !2612
  call void @llvm.dbg.value(metadata ptr %16, metadata !2601, metadata !DIExpression()), !dbg !2605
  br label %17, !dbg !2613

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2605
  call void @llvm.dbg.value(metadata ptr %18, metadata !2601, metadata !DIExpression()), !dbg !2605
  %19 = load ptr, ptr @stderr, align 8, !dbg !2614, !tbaa !1000
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.75, ptr noundef %18) #40, !dbg !2614
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !2615
  br label %21, !dbg !2616

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2617, !tbaa !1000
  call void @llvm.dbg.value(metadata i32 10, metadata !2618, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata ptr %22, metadata !2624, metadata !DIExpression()), !dbg !2625
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2627
  %24 = load ptr, ptr %23, align 8, !dbg !2627, !tbaa !2628
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2627
  %26 = load ptr, ptr %25, align 8, !dbg !2627, !tbaa !2630
  %27 = icmp ult ptr %24, %26, !dbg !2627
  br i1 %27, label %30, label %28, !dbg !2627, !prof !2631

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #40, !dbg !2627
  br label %32, !dbg !2627

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2627
  store ptr %31, ptr %23, align 8, !dbg !2627, !tbaa !2628
  store i8 10, ptr %24, align 1, !dbg !2627, !tbaa !1109
  br label %32, !dbg !2627

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2632, !tbaa !1000
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #40, !dbg !2632
  %35 = icmp eq i32 %0, 0, !dbg !2633
  br i1 %35, label %37, label %36, !dbg !2635

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #42, !dbg !2636
  unreachable, !dbg !2636

37:                                               ; preds = %32
  ret void, !dbg !2637
}

declare !dbg !2638 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2641 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2644 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2647 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2650 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2654 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !2662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2661, metadata !DIExpression(), metadata !2662, metadata ptr %4, metadata !DIExpression()), !dbg !2663
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2658, metadata !DIExpression()), !dbg !2663
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2659, metadata !DIExpression()), !dbg !2663
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2660, metadata !DIExpression()), !dbg !2663
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #40, !dbg !2664
  call void @llvm.va_start(ptr nonnull %4), !dbg !2665
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !2666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2666, !tbaa.struct !1338
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #46, !dbg !2666
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !2666
  call void @llvm.va_end(ptr nonnull %4), !dbg !2667
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #40, !dbg !2668
  ret void, !dbg !2668
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #19 !dbg !605 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !621, metadata !DIExpression()), !dbg !2669
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !622, metadata !DIExpression()), !dbg !2669
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !623, metadata !DIExpression()), !dbg !2669
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !624, metadata !DIExpression()), !dbg !2669
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !625, metadata !DIExpression()), !dbg !2669
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !626, metadata !DIExpression(DW_OP_deref)), !dbg !2669
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2670, !tbaa !1100
  %9 = icmp eq i32 %8, 0, !dbg !2670
  br i1 %9, label %24, label %10, !dbg !2672

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2673, !tbaa !1100
  %12 = icmp eq i32 %11, %3, !dbg !2676
  br i1 %12, label %13, label %23, !dbg !2677

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2678, !tbaa !1000
  %15 = icmp eq ptr %14, %2, !dbg !2679
  br i1 %15, label %37, label %16, !dbg !2680

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2681
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2682
  br i1 %19, label %20, label %23, !dbg !2682

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2683
  %22 = icmp eq i32 %21, 0, !dbg !2684
  br i1 %22, label %37, label %23, !dbg !2685

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2686, !tbaa !1000
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2687, !tbaa !1100
  br label %24, !dbg !2688

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2689
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2690, !tbaa !1000
  %26 = icmp eq ptr %25, null, !dbg !2690
  br i1 %26, label %28, label %27, !dbg !2692

27:                                               ; preds = %24
  tail call void %25() #40, !dbg !2693
  br label %32, !dbg !2693

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2694, !tbaa !1000
  %30 = tail call ptr @getprogname() #41, !dbg !2694
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.78, ptr noundef %30) #40, !dbg !2694
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2696, !tbaa !1000
  %34 = icmp eq ptr %2, null, !dbg !2696
  %35 = select i1 %34, ptr @.str.3.79, ptr @.str.2.80, !dbg !2696
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #40, !dbg !2696
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !2697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2697, !tbaa.struct !1338
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2697
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !2697
  br label %37, !dbg !2698

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2698
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2699 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !2709
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2708, metadata !DIExpression(), metadata !2709, metadata ptr %6, metadata !DIExpression()), !dbg !2710
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2703, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2704, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2705, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2706, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2707, metadata !DIExpression()), !dbg !2710
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !2711
  call void @llvm.va_start(ptr nonnull %6), !dbg !2712
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !2713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2713, !tbaa.struct !1338
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #46, !dbg !2713
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !2713
  call void @llvm.va_end(ptr nonnull %6), !dbg !2714
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !2715
  ret void, !dbg !2715
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !2716 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2719, !tbaa !1000
  ret ptr %1, !dbg !2720
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @umaxtostr(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #21 !dbg !2721 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2726, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2727, metadata !DIExpression()), !dbg !2729
  %3 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !2730
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2728, metadata !DIExpression()), !dbg !2729
  store i8 0, ptr %3, align 1, !dbg !2731, !tbaa !1109
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %8, %4 ]
  %6 = phi ptr [ %3, %2 ], [ %13, %4 ], !dbg !2729
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2728, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2726, metadata !DIExpression()), !dbg !2729
  %7 = freeze i64 %5
  %8 = udiv i64 %7, 10, !dbg !2732
  %9 = mul i64 %8, 10
  %10 = sub i64 %7, %9
  %11 = trunc i64 %10 to i8, !dbg !2735
  %12 = or disjoint i8 %11, 48, !dbg !2735
  %13 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !2736
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !2728, metadata !DIExpression()), !dbg !2729
  store i8 %12, ptr %13, align 1, !dbg !2737, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !2726, metadata !DIExpression()), !dbg !2729
  %14 = icmp ult i64 %5, 10, !dbg !2738
  br i1 %14, label %15, label %4, !dbg !2739, !llvm.loop !2740

15:                                               ; preds = %4
  %.lcssa = phi ptr [ %13, %4 ], !dbg !2736
  tail call void @llvm.dbg.value(metadata ptr %.lcssa, metadata !2728, metadata !DIExpression()), !dbg !2729
  ret ptr %.lcssa, !dbg !2743
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #22 !dbg !2744 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2746, metadata !DIExpression()), !dbg !2749
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2750
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2747, metadata !DIExpression()), !dbg !2749
  %3 = icmp eq ptr %2, null, !dbg !2751
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2751
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2751
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2748, metadata !DIExpression()), !dbg !2749
  %6 = ptrtoint ptr %5 to i64, !dbg !2752
  %7 = ptrtoint ptr %0 to i64, !dbg !2752
  %8 = sub i64 %6, %7, !dbg !2752
  %9 = icmp sgt i64 %8, 6, !dbg !2754
  br i1 %9, label %10, label %19, !dbg !2755

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2756
  call void @llvm.dbg.value(metadata ptr %11, metadata !2757, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr @.str.121, metadata !2762, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 7, metadata !2763, metadata !DIExpression()), !dbg !2764
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.121, i64 7), !dbg !2766
  %13 = icmp eq i32 %12, 0, !dbg !2767
  br i1 %13, label %14, label %19, !dbg !2768

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2746, metadata !DIExpression()), !dbg !2749
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.122, i64 noundef 3) #41, !dbg !2769
  %16 = icmp eq i32 %15, 0, !dbg !2772
  %17 = select i1 %16, i64 3, i64 0, !dbg !2773
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2773
  br label %19, !dbg !2773

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2749
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2748, metadata !DIExpression()), !dbg !2749
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2746, metadata !DIExpression()), !dbg !2749
  store ptr %20, ptr @program_name, align 8, !dbg !2774, !tbaa !1000
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2775, !tbaa !1000
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2776, !tbaa !1000
  ret void, !dbg !2777
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2778 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !661 {
  %3 = alloca i32, align 4, !DIAssignID !2779
  call void @llvm.dbg.assign(metadata i1 undef, metadata !671, metadata !DIExpression(), metadata !2779, metadata ptr %3, metadata !DIExpression()), !dbg !2780
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2781
  call void @llvm.dbg.assign(metadata i1 undef, metadata !676, metadata !DIExpression(), metadata !2781, metadata ptr %4, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !668, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !669, metadata !DIExpression()), !dbg !2780
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2782
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !670, metadata !DIExpression()), !dbg !2780
  %6 = icmp eq ptr %5, %0, !dbg !2783
  br i1 %6, label %7, label %14, !dbg !2785

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2786
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2787
  call void @llvm.dbg.value(metadata ptr %4, metadata !2788, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata ptr %4, metadata !2797, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i32 0, metadata !2803, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i64 8, metadata !2804, metadata !DIExpression()), !dbg !2805
  store i64 0, ptr %4, align 8, !dbg !2807
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2808
  %9 = icmp eq i64 %8, 2, !dbg !2810
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2811
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2780
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2812
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2812
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2780
  ret ptr %15, !dbg !2812
}

; Function Attrs: nounwind
declare !dbg !2813 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2819 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2824, metadata !DIExpression()), !dbg !2827
  %2 = tail call ptr @__errno_location() #43, !dbg !2828
  %3 = load i32, ptr %2, align 4, !dbg !2828, !tbaa !1100
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2825, metadata !DIExpression()), !dbg !2827
  %4 = icmp eq ptr %0, null, !dbg !2829
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2829
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #47, !dbg !2830
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2826, metadata !DIExpression()), !dbg !2827
  store i32 %3, ptr %2, align 4, !dbg !2831, !tbaa !1100
  ret ptr %6, !dbg !2832
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !2833 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2839, metadata !DIExpression()), !dbg !2840
  %2 = icmp eq ptr %0, null, !dbg !2841
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2841
  %4 = load i32, ptr %3, align 8, !dbg !2842, !tbaa !2843
  ret i32 %4, !dbg !2845
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2846 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2850, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2851, metadata !DIExpression()), !dbg !2852
  %3 = icmp eq ptr %0, null, !dbg !2853
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2853
  store i32 %1, ptr %4, align 8, !dbg !2854, !tbaa !2843
  ret void, !dbg !2855
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #26 !dbg !2856 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2860, metadata !DIExpression()), !dbg !2868
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2861, metadata !DIExpression()), !dbg !2868
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2862, metadata !DIExpression()), !dbg !2868
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2863, metadata !DIExpression()), !dbg !2868
  %4 = icmp eq ptr %0, null, !dbg !2869
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2869
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2870
  %7 = lshr i8 %1, 5, !dbg !2871
  %8 = zext nneg i8 %7 to i64, !dbg !2871
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2872
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2864, metadata !DIExpression()), !dbg !2868
  %10 = and i8 %1, 31, !dbg !2873
  %11 = zext nneg i8 %10 to i32, !dbg !2873
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2866, metadata !DIExpression()), !dbg !2868
  %12 = load i32, ptr %9, align 4, !dbg !2874, !tbaa !1100
  %13 = lshr i32 %12, %11, !dbg !2875
  %14 = and i32 %13, 1, !dbg !2876
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2867, metadata !DIExpression()), !dbg !2868
  %15 = xor i32 %13, %2, !dbg !2877
  %16 = and i32 %15, 1, !dbg !2877
  %17 = shl nuw i32 %16, %11, !dbg !2878
  %18 = xor i32 %17, %12, !dbg !2879
  store i32 %18, ptr %9, align 4, !dbg !2879, !tbaa !1100
  ret i32 %14, !dbg !2880
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2881 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2885, metadata !DIExpression()), !dbg !2888
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2886, metadata !DIExpression()), !dbg !2888
  %3 = icmp eq ptr %0, null, !dbg !2889
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2891
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2885, metadata !DIExpression()), !dbg !2888
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2892
  %6 = load i32, ptr %5, align 4, !dbg !2892, !tbaa !2893
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2887, metadata !DIExpression()), !dbg !2888
  store i32 %1, ptr %5, align 4, !dbg !2894, !tbaa !2893
  ret i32 %6, !dbg !2895
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2896 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2900, metadata !DIExpression()), !dbg !2903
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2901, metadata !DIExpression()), !dbg !2903
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2902, metadata !DIExpression()), !dbg !2903
  %4 = icmp eq ptr %0, null, !dbg !2904
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2900, metadata !DIExpression()), !dbg !2903
  store i32 10, ptr %5, align 8, !dbg !2907, !tbaa !2843
  %6 = icmp ne ptr %1, null, !dbg !2908
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2910
  br i1 %8, label %10, label %9, !dbg !2910

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2911
  unreachable, !dbg !2911

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2912
  store ptr %1, ptr %11, align 8, !dbg !2913, !tbaa !2914
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2915
  store ptr %2, ptr %12, align 8, !dbg !2916, !tbaa !2917
  ret void, !dbg !2918
}

; Function Attrs: noreturn nounwind
declare !dbg !2919 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2920 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2924, metadata !DIExpression()), !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2925, metadata !DIExpression()), !dbg !2932
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2926, metadata !DIExpression()), !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2927, metadata !DIExpression()), !dbg !2932
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2928, metadata !DIExpression()), !dbg !2932
  %6 = icmp eq ptr %4, null, !dbg !2933
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2933
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2929, metadata !DIExpression()), !dbg !2932
  %8 = tail call ptr @__errno_location() #43, !dbg !2934
  %9 = load i32, ptr %8, align 4, !dbg !2934, !tbaa !1100
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2930, metadata !DIExpression()), !dbg !2932
  %10 = load i32, ptr %7, align 8, !dbg !2935, !tbaa !2843
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2936
  %12 = load i32, ptr %11, align 4, !dbg !2936, !tbaa !2893
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2937
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2938
  %15 = load ptr, ptr %14, align 8, !dbg !2938, !tbaa !2914
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2939
  %17 = load ptr, ptr %16, align 8, !dbg !2939, !tbaa !2917
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2940
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2931, metadata !DIExpression()), !dbg !2932
  store i32 %9, ptr %8, align 4, !dbg !2941, !tbaa !1100
  ret i64 %18, !dbg !2942
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2943 {
  %10 = alloca i32, align 4, !DIAssignID !3011
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3012
  %12 = alloca i32, align 4, !DIAssignID !3013
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3014
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3015
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2989, metadata !DIExpression(), metadata !3015, metadata ptr %14, metadata !DIExpression()), !dbg !3016
  %15 = alloca i32, align 4, !DIAssignID !3017
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2992, metadata !DIExpression(), metadata !3017, metadata ptr %15, metadata !DIExpression()), !dbg !3018
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2949, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2950, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2951, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2952, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2953, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2954, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2955, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2956, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2957, metadata !DIExpression()), !dbg !3019
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !3020
  %17 = icmp eq i64 %16, 1, !dbg !3021
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2958, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2960, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2961, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2962, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2963, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2964, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2965, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2966, metadata !DIExpression()), !dbg !3019
  %18 = and i32 %5, 2, !dbg !3022
  %19 = icmp ne i32 %18, 0, !dbg !3022
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !3022

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !3023
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !3024
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !3025
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2950, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2966, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2965, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2964, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2963, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2962, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2961, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2960, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2952, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2957, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2956, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2953, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.label(metadata !2967), !dbg !3026
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2968, metadata !DIExpression()), !dbg !3019
  switch i32 %28, label %100 [
    i32 6, label %40
    i32 5, label %41
    i32 7, label %101
    i32 0, label %99
    i32 2, label %94
    i32 4, label %93
    i32 3, label %92
    i32 1, label %91
    i32 10, label %70
    i32 8, label %45
    i32 9, label %45
  ], !dbg !3027

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2964, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2953, metadata !DIExpression()), !dbg !3019
  br label %101, !dbg !3028

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2964, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2953, metadata !DIExpression()), !dbg !3019
  br i1 %36, label %101, label %42, !dbg !3028

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !3029
  br i1 %43, label %101, label %44, !dbg !3033

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !3029, !tbaa !1109
  br label %101, !dbg !3029

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !777, metadata !DIExpression(), metadata !3013, metadata ptr %12, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.assign(metadata i1 undef, metadata !778, metadata !DIExpression(), metadata !3014, metadata ptr %13, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata ptr @.str.11.135, metadata !774, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i32 %28, metadata !775, metadata !DIExpression()), !dbg !3034
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.136, ptr noundef nonnull @.str.11.135, i32 noundef 5) #40, !dbg !3038
  call void @llvm.dbg.value(metadata ptr %46, metadata !776, metadata !DIExpression()), !dbg !3034
  %47 = icmp eq ptr %46, @.str.11.135, !dbg !3039
  br i1 %47, label %48, label %57, !dbg !3041

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !3042
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !3043
  call void @llvm.dbg.value(metadata ptr %13, metadata !3044, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata ptr %13, metadata !3052, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i32 0, metadata !3055, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i64 8, metadata !3056, metadata !DIExpression()), !dbg !3057
  store i64 0, ptr %13, align 8, !dbg !3059
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !3060
  %50 = icmp eq i64 %49, 3, !dbg !3062
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !3063
  %54 = icmp eq i32 %28, 9, !dbg !3063
  %55 = select i1 %54, ptr @.str.10.137, ptr @.str.12.138, !dbg !3063
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !3063
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !3064
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !3064
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !3034
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2956, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.assign(metadata i1 undef, metadata !777, metadata !DIExpression(), metadata !3011, metadata ptr %10, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.assign(metadata i1 undef, metadata !778, metadata !DIExpression(), metadata !3012, metadata ptr %11, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata ptr @.str.12.138, metadata !774, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i32 %28, metadata !775, metadata !DIExpression()), !dbg !3065
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.136, ptr noundef nonnull @.str.12.138, i32 noundef 5) #40, !dbg !3067
  call void @llvm.dbg.value(metadata ptr %59, metadata !776, metadata !DIExpression()), !dbg !3065
  %60 = icmp eq ptr %59, @.str.12.138, !dbg !3068
  br i1 %60, label %61, label %70, !dbg !3069

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !3070
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !3071
  call void @llvm.dbg.value(metadata ptr %11, metadata !3044, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata ptr %11, metadata !3052, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i32 0, metadata !3055, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 8, metadata !3056, metadata !DIExpression()), !dbg !3074
  store i64 0, ptr %11, align 8, !dbg !3076
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !3077
  %63 = icmp eq i64 %62, 3, !dbg !3078
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !3079
  %67 = icmp eq i32 %28, 9, !dbg !3079
  %68 = select i1 %67, ptr @.str.10.137, ptr @.str.12.138, !dbg !3079
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !3079
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !3080
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !3080
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2957, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2956, metadata !DIExpression()), !dbg !3019
  br i1 %36, label %88, label %73, !dbg !3081

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2969, metadata !DIExpression()), !dbg !3082
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2959, metadata !DIExpression()), !dbg !3019
  %74 = load i8, ptr %71, align 1, !dbg !3083, !tbaa !1109
  %75 = icmp eq i8 %74, 0, !dbg !3085
  br i1 %75, label %88, label %.preheader11, !dbg !3085

.preheader11:                                     ; preds = %73
  br label %76, !dbg !3085

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2969, metadata !DIExpression()), !dbg !3082
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2959, metadata !DIExpression()), !dbg !3019
  %80 = icmp ult i64 %79, %39, !dbg !3086
  br i1 %80, label %81, label %83, !dbg !3089

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !3086
  store i8 %77, ptr %82, align 1, !dbg !3086, !tbaa !1109
  br label %83, !dbg !3086

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !3089
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2959, metadata !DIExpression()), !dbg !3019
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !3090
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2969, metadata !DIExpression()), !dbg !3082
  %86 = load i8, ptr %85, align 1, !dbg !3083, !tbaa !1109
  %87 = icmp eq i8 %86, 0, !dbg !3085
  br i1 %87, label %.loopexit12, label %76, !dbg !3085, !llvm.loop !3091

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !3089
  br label %88, !dbg !3093

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !3094
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2963, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2961, metadata !DIExpression()), !dbg !3019
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #41, !dbg !3093
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2962, metadata !DIExpression()), !dbg !3019
  br label %101, !dbg !3095

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2963, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2964, metadata !DIExpression()), !dbg !3019
  br label %101, !dbg !3096

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2964, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2963, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2953, metadata !DIExpression()), !dbg !3019
  br label %101, !dbg !3097

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2964, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2963, metadata !DIExpression()), !dbg !3019
  br i1 %36, label %101, label %95, !dbg !3098

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2964, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2963, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2953, metadata !DIExpression()), !dbg !3019
  br i1 %36, label %101, label %95, !dbg !3097

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !3099
  br i1 %97, label %101, label %98, !dbg !3103

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !3099, !tbaa !1109
  br label %101, !dbg !3099

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2964, metadata !DIExpression()), !dbg !3019
  br label %101, !dbg !3104

100:                                              ; preds = %27
  call void @abort() #42, !dbg !3105
  unreachable, !dbg !3105

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !3094
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.137, %42 ], [ @.str.10.137, %44 ], [ @.str.10.137, %41 ], [ %33, %27 ], [ @.str.12.138, %95 ], [ @.str.12.138, %98 ], [ @.str.12.138, %94 ], [ @.str.10.137, %40 ], [ @.str.12.138, %91 ], [ @.str.12.138, %92 ], [ @.str.12.138, %93 ], !dbg !3019
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !3019
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2964, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2963, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2962, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2961, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2957, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2956, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2953, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2974, metadata !DIExpression()), !dbg !3106
  %110 = icmp ne i32 %102, 2
  %111 = and i1 %110, %108
  %112 = icmp ne i64 %107, 0
  %113 = select i1 %111, i1 %112, i1 false
  %114 = icmp ugt i64 %107, 1
  %115 = icmp eq i32 %102, 2
  %116 = and i1 %108, %109
  %117 = select i1 %116, i1 %112, i1 false
  %118 = and i1 %115, %109
  %119 = xor i1 %108, true
  %120 = and i1 %25, %109
  br label %121, !dbg !3107

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !3094
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !3023
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !3108
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2950, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2974, metadata !DIExpression()), !dbg !3106
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2968, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2966, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2965, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2960, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2952, metadata !DIExpression()), !dbg !3019
  %130 = icmp eq i64 %122, -1, !dbg !3109
  br i1 %130, label %131, label %135, !dbg !3110

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3111
  %133 = load i8, ptr %132, align 1, !dbg !3111, !tbaa !1109
  %134 = icmp eq i8 %133, 0, !dbg !3112
  br i1 %134, label %573, label %137, !dbg !3113

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !3114
  br i1 %136, label %573, label %137, !dbg !3113

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2976, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2979, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2980, metadata !DIExpression()), !dbg !3115
  br i1 %113, label %138, label %151, !dbg !3116

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !3118
  %140 = select i1 %130, i1 %114, i1 false, !dbg !3119
  br i1 %140, label %141, label %143, !dbg !3119

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3120
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2952, metadata !DIExpression()), !dbg !3019
  br label %143, !dbg !3121

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !3121
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2952, metadata !DIExpression()), !dbg !3019
  %145 = icmp ugt i64 %139, %144, !dbg !3122
  br i1 %145, label %151, label %146, !dbg !3123

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3124
  call void @llvm.dbg.value(metadata ptr %147, metadata !3125, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata ptr %106, metadata !3128, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i64 %107, metadata !3129, metadata !DIExpression()), !dbg !3130
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !3132
  %149 = icmp eq i32 %148, 0, !dbg !3133
  %150 = and i1 %149, %109, !dbg !3134
  br i1 %150, label %.loopexit7, label %151, !dbg !3134

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2976, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2952, metadata !DIExpression()), !dbg !3019
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3135
  %155 = load i8, ptr %154, align 1, !dbg !3135, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2981, metadata !DIExpression()), !dbg !3115
  switch i8 %155, label %284 [
    i8 0, label %156
    i8 63, label %204
    i8 7, label %249
    i8 8, label %239
    i8 12, label %240
    i8 10, label %247
    i8 13, label %241
    i8 9, label %242
    i8 11, label %243
    i8 92, label %244
    i8 123, label %251
    i8 125, label %251
    i8 35, label %255
    i8 126, label %255
    i8 32, label %257
    i8 33, label %258
    i8 34, label %258
    i8 36, label %258
    i8 38, label %258
    i8 40, label %258
    i8 41, label %258
    i8 42, label %258
    i8 59, label %258
    i8 60, label %258
    i8 61, label %258
    i8 62, label %258
    i8 91, label %258
    i8 94, label %258
    i8 96, label %258
    i8 124, label %258
    i8 39, label %261
    i8 37, label %433
    i8 43, label %433
    i8 44, label %433
    i8 45, label %433
    i8 46, label %433
    i8 47, label %433
    i8 48, label %433
    i8 49, label %433
    i8 50, label %433
    i8 51, label %433
    i8 52, label %433
    i8 53, label %433
    i8 54, label %433
    i8 55, label %433
    i8 56, label %433
    i8 57, label %433
    i8 58, label %433
    i8 65, label %433
    i8 66, label %433
    i8 67, label %433
    i8 68, label %433
    i8 69, label %433
    i8 70, label %433
    i8 71, label %433
    i8 72, label %433
    i8 73, label %433
    i8 74, label %433
    i8 75, label %433
    i8 76, label %433
    i8 77, label %433
    i8 78, label %433
    i8 79, label %433
    i8 80, label %433
    i8 81, label %433
    i8 82, label %433
    i8 83, label %433
    i8 84, label %433
    i8 85, label %433
    i8 86, label %433
    i8 87, label %433
    i8 88, label %433
    i8 89, label %433
    i8 90, label %433
    i8 93, label %433
    i8 95, label %433
    i8 97, label %433
    i8 98, label %433
    i8 99, label %433
    i8 100, label %433
    i8 101, label %433
    i8 102, label %433
    i8 103, label %433
    i8 104, label %433
    i8 105, label %433
    i8 106, label %433
    i8 107, label %433
    i8 108, label %433
    i8 109, label %433
    i8 110, label %433
    i8 111, label %433
    i8 112, label %433
    i8 113, label %433
    i8 114, label %433
    i8 115, label %433
    i8 116, label %433
    i8 117, label %433
    i8 118, label %433
    i8 119, label %433
    i8 120, label %433
    i8 121, label %433
    i8 122, label %433
  ], !dbg !3136

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !3137

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !3138

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2979, metadata !DIExpression()), !dbg !3115
  %159 = select i1 %110, i1 true, i1 %127, !dbg !3142
  br i1 %159, label %176, label %160, !dbg !3142

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !3144
  br i1 %161, label %162, label %164, !dbg !3148

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3144
  store i8 39, ptr %163, align 1, !dbg !3144, !tbaa !1109
  br label %164, !dbg !3144

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !3148
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2959, metadata !DIExpression()), !dbg !3019
  %166 = icmp ult i64 %165, %129, !dbg !3149
  br i1 %166, label %167, label %169, !dbg !3152

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !3149
  store i8 36, ptr %168, align 1, !dbg !3149, !tbaa !1109
  br label %169, !dbg !3149

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !3152
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2959, metadata !DIExpression()), !dbg !3019
  %171 = icmp ult i64 %170, %129, !dbg !3153
  br i1 %171, label %172, label %174, !dbg !3156

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !3153
  store i8 39, ptr %173, align 1, !dbg !3153, !tbaa !1109
  br label %174, !dbg !3153

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !3156
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2968, metadata !DIExpression()), !dbg !3019
  br label %176, !dbg !3157

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !3019
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2968, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2959, metadata !DIExpression()), !dbg !3019
  %179 = icmp ult i64 %177, %129, !dbg !3158
  br i1 %179, label %180, label %182, !dbg !3161

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !3158
  store i8 92, ptr %181, align 1, !dbg !3158, !tbaa !1109
  br label %182, !dbg !3158

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2959, metadata !DIExpression()), !dbg !3019
  br i1 %110, label %184, label %476, !dbg !3162

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !3164
  %186 = icmp ult i64 %185, %152, !dbg !3165
  br i1 %186, label %187, label %433, !dbg !3166

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !3167
  %189 = load i8, ptr %188, align 1, !dbg !3167, !tbaa !1109
  %190 = add i8 %189, -48, !dbg !3168
  %191 = icmp ult i8 %190, 10, !dbg !3168
  br i1 %191, label %192, label %433, !dbg !3168

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !3169
  br i1 %193, label %194, label %196, !dbg !3173

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !3169
  store i8 48, ptr %195, align 1, !dbg !3169, !tbaa !1109
  br label %196, !dbg !3169

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2959, metadata !DIExpression()), !dbg !3019
  %198 = icmp ult i64 %197, %129, !dbg !3174
  br i1 %198, label %199, label %201, !dbg !3177

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !3174
  store i8 48, ptr %200, align 1, !dbg !3174, !tbaa !1109
  br label %201, !dbg !3174

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !3177
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2959, metadata !DIExpression()), !dbg !3019
  br label %433, !dbg !3178

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !3179

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !3180

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !3181

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !3183

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !3185
  %209 = icmp ult i64 %208, %152, !dbg !3186
  br i1 %209, label %210, label %433, !dbg !3187

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !3188
  %212 = load i8, ptr %211, align 1, !dbg !3188, !tbaa !1109
  %213 = icmp eq i8 %212, 63, !dbg !3189
  br i1 %213, label %214, label %433, !dbg !3190

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !3191
  %216 = load i8, ptr %215, align 1, !dbg !3191, !tbaa !1109
  switch i8 %216, label %433 [
    i8 33, label %217
    i8 39, label %217
    i8 40, label %217
    i8 41, label %217
    i8 45, label %217
    i8 47, label %217
    i8 60, label %217
    i8 61, label %217
    i8 62, label %217
  ], !dbg !3192

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !3193

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2981, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2974, metadata !DIExpression()), !dbg !3106
  %219 = icmp ult i64 %123, %129, !dbg !3195
  br i1 %219, label %220, label %222, !dbg !3198

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3195
  store i8 63, ptr %221, align 1, !dbg !3195, !tbaa !1109
  br label %222, !dbg !3195

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !3198
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2959, metadata !DIExpression()), !dbg !3019
  %224 = icmp ult i64 %223, %129, !dbg !3199
  br i1 %224, label %225, label %227, !dbg !3202

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !3199
  store i8 34, ptr %226, align 1, !dbg !3199, !tbaa !1109
  br label %227, !dbg !3199

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !3202
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2959, metadata !DIExpression()), !dbg !3019
  %229 = icmp ult i64 %228, %129, !dbg !3203
  br i1 %229, label %230, label %232, !dbg !3206

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !3203
  store i8 34, ptr %231, align 1, !dbg !3203, !tbaa !1109
  br label %232, !dbg !3203

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !3206
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2959, metadata !DIExpression()), !dbg !3019
  %234 = icmp ult i64 %233, %129, !dbg !3207
  br i1 %234, label %235, label %237, !dbg !3210

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !3207
  store i8 63, ptr %236, align 1, !dbg !3207, !tbaa !1109
  br label %237, !dbg !3207

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2959, metadata !DIExpression()), !dbg !3019
  br label %433, !dbg !3211

239:                                              ; preds = %151
  br label %249, !dbg !3212

240:                                              ; preds = %151
  br label %249, !dbg !3213

241:                                              ; preds = %151
  br label %247, !dbg !3214

242:                                              ; preds = %151
  br label %247, !dbg !3215

243:                                              ; preds = %151
  br label %249, !dbg !3216

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !3217

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !3218

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !3221

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !3223
  call void @llvm.dbg.label(metadata !2982), !dbg !3224
  br i1 %118, label %.loopexit8, label %249, !dbg !3225

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !3223
  call void @llvm.dbg.label(metadata !2985), !dbg !3227
  br i1 %108, label %487, label %444, !dbg !3228

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !3229

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !3230, !tbaa !1109
  %254 = icmp eq i8 %253, 0, !dbg !3232
  br i1 %254, label %255, label %433, !dbg !3233

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !3234
  br i1 %256, label %257, label %433, !dbg !3236

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2980, metadata !DIExpression()), !dbg !3115
  br label %258, !dbg !3237

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2980, metadata !DIExpression()), !dbg !3115
  br i1 %115, label %260, label %433, !dbg !3238

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !3240

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2965, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2980, metadata !DIExpression()), !dbg !3115
  br i1 %115, label %262, label %433, !dbg !3241

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !3242

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !3245
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !3247
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !3247
  %268 = select i1 %266, i64 %129, i64 0, !dbg !3247
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2950, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2960, metadata !DIExpression()), !dbg !3019
  %269 = icmp ult i64 %123, %268, !dbg !3248
  br i1 %269, label %270, label %272, !dbg !3251

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3248
  store i8 39, ptr %271, align 1, !dbg !3248, !tbaa !1109
  br label %272, !dbg !3248

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !3251
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2959, metadata !DIExpression()), !dbg !3019
  %274 = icmp ult i64 %273, %268, !dbg !3252
  br i1 %274, label %275, label %277, !dbg !3255

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !3252
  store i8 92, ptr %276, align 1, !dbg !3252, !tbaa !1109
  br label %277, !dbg !3252

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !3255
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2959, metadata !DIExpression()), !dbg !3019
  %279 = icmp ult i64 %278, %268, !dbg !3256
  br i1 %279, label %280, label %282, !dbg !3259

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !3256
  store i8 39, ptr %281, align 1, !dbg !3256, !tbaa !1109
  br label %282, !dbg !3256

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !3259
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2968, metadata !DIExpression()), !dbg !3019
  br label %433, !dbg !3260

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !3261

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2986, metadata !DIExpression()), !dbg !3262
  %286 = tail call ptr @__ctype_b_loc() #43, !dbg !3263
  %287 = load ptr, ptr %286, align 8, !dbg !3263, !tbaa !1000
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !3263
  %290 = load i16, ptr %289, align 2, !dbg !3263, !tbaa !1141
  %291 = and i16 %290, 16384, !dbg !3263
  %292 = icmp ne i16 %291, 0, !dbg !3265
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2988, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3262
  br label %334, !dbg !3266

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !3267
  call void @llvm.dbg.value(metadata ptr %14, metadata !3044, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata ptr %14, metadata !3052, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i32 0, metadata !3055, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 8, metadata !3056, metadata !DIExpression()), !dbg !3270
  store i64 0, ptr %14, align 8, !dbg !3272
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2986, metadata !DIExpression()), !dbg !3262
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2988, metadata !DIExpression()), !dbg !3262
  %294 = icmp eq i64 %152, -1, !dbg !3273
  br i1 %294, label %295, label %297, !dbg !3275

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3276
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2952, metadata !DIExpression()), !dbg !3019
  br label %297, !dbg !3277

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2952, metadata !DIExpression()), !dbg !3019
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !3278
  %299 = sub i64 %298, %128, !dbg !3279
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #40, !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2996, metadata !DIExpression()), !dbg !3018
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !3281

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2986, metadata !DIExpression()), !dbg !3262
  %302 = icmp ult i64 %128, %298, !dbg !3282
  br i1 %302, label %.preheader5, label %329, !dbg !3284

.preheader5:                                      ; preds = %301
  br label %304, !dbg !3285

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2988, metadata !DIExpression()), !dbg !3262
  br label %329, !dbg !3286

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2986, metadata !DIExpression()), !dbg !3262
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !3288
  %308 = load i8, ptr %307, align 1, !dbg !3288, !tbaa !1109
  %309 = icmp eq i8 %308, 0, !dbg !3284
  br i1 %309, label %.loopexit6, label %310, !dbg !3285

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !3289
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2986, metadata !DIExpression()), !dbg !3262
  %312 = add i64 %311, %128, !dbg !3290
  %313 = icmp eq i64 %311, %299, !dbg !3282
  br i1 %313, label %.loopexit6, label %304, !dbg !3284, !llvm.loop !3291

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2997, metadata !DIExpression()), !dbg !3292
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !3293
  %317 = and i1 %316, %109, !dbg !3293
  br i1 %317, label %.preheader3, label %325, !dbg !3293

.preheader3:                                      ; preds = %314
  br label %318, !dbg !3294

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2997, metadata !DIExpression()), !dbg !3292
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !3295
  %321 = load i8, ptr %320, align 1, !dbg !3295, !tbaa !1109
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !3297

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !3298
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2997, metadata !DIExpression()), !dbg !3292
  %324 = icmp eq i64 %323, %300, !dbg !3299
  br i1 %324, label %.loopexit4, label %318, !dbg !3294, !llvm.loop !3300

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !3302

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !3302, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %326, metadata !3304, metadata !DIExpression()), !dbg !3312
  %327 = call i32 @iswprint(i32 noundef %326) #40, !dbg !3314
  %328 = icmp ne i32 %327, 0, !dbg !3315
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2988, metadata !DIExpression()), !dbg !3262
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2986, metadata !DIExpression()), !dbg !3262
  br label %329, !dbg !3316

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !3317

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2988, metadata !DIExpression()), !dbg !3262
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2986, metadata !DIExpression()), !dbg !3262
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3317
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3318
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2988, metadata !DIExpression()), !dbg !3262
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2986, metadata !DIExpression()), !dbg !3262
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3317
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3318
  call void @llvm.dbg.label(metadata !3010), !dbg !3319
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !3320
  br label %624, !dbg !3320

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !3115
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !3322
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2988, metadata !DIExpression()), !dbg !3262
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2986, metadata !DIExpression()), !dbg !3262
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2952, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3115
  %338 = icmp ult i64 %336, 2, !dbg !3323
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !3324
  br i1 %340, label %433, label %341, !dbg !3324

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !3325
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !3005, metadata !DIExpression()), !dbg !3326
  br label %343, !dbg !3327

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !3019
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !3106
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2981, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2979, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2976, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2974, metadata !DIExpression()), !dbg !3106
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2968, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2959, metadata !DIExpression()), !dbg !3019
  br i1 %339, label %394, label %350, !dbg !3328

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !3333

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2979, metadata !DIExpression()), !dbg !3115
  %352 = select i1 %110, i1 true, i1 %345, !dbg !3336
  br i1 %352, label %369, label %353, !dbg !3336

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !3338
  br i1 %354, label %355, label %357, !dbg !3342

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3338
  store i8 39, ptr %356, align 1, !dbg !3338, !tbaa !1109
  br label %357, !dbg !3338

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2959, metadata !DIExpression()), !dbg !3019
  %359 = icmp ult i64 %358, %129, !dbg !3343
  br i1 %359, label %360, label %362, !dbg !3346

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !3343
  store i8 36, ptr %361, align 1, !dbg !3343, !tbaa !1109
  br label %362, !dbg !3343

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !3346
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2959, metadata !DIExpression()), !dbg !3019
  %364 = icmp ult i64 %363, %129, !dbg !3347
  br i1 %364, label %365, label %367, !dbg !3350

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !3347
  store i8 39, ptr %366, align 1, !dbg !3347, !tbaa !1109
  br label %367, !dbg !3347

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2968, metadata !DIExpression()), !dbg !3019
  br label %369, !dbg !3351

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !3019
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2968, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2959, metadata !DIExpression()), !dbg !3019
  %372 = icmp ult i64 %370, %129, !dbg !3352
  br i1 %372, label %373, label %375, !dbg !3355

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !3352
  store i8 92, ptr %374, align 1, !dbg !3352, !tbaa !1109
  br label %375, !dbg !3352

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !3355
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2959, metadata !DIExpression()), !dbg !3019
  %377 = icmp ult i64 %376, %129, !dbg !3356
  br i1 %377, label %378, label %382, !dbg !3359

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !3356
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !3356
  store i8 %380, ptr %381, align 1, !dbg !3356, !tbaa !1109
  br label %382, !dbg !3356

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !3359
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2959, metadata !DIExpression()), !dbg !3019
  %384 = icmp ult i64 %383, %129, !dbg !3360
  br i1 %384, label %385, label %390, !dbg !3363

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !3360
  %388 = or disjoint i8 %387, 48, !dbg !3360
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !3360
  store i8 %388, ptr %389, align 1, !dbg !3360, !tbaa !1109
  br label %390, !dbg !3360

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !3363
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2959, metadata !DIExpression()), !dbg !3019
  %392 = and i8 %349, 7, !dbg !3364
  %393 = or disjoint i8 %392, 48, !dbg !3365
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2981, metadata !DIExpression()), !dbg !3115
  br label %401, !dbg !3366

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !3367

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !3368
  br i1 %396, label %397, label %399, !dbg !3373

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3368
  store i8 92, ptr %398, align 1, !dbg !3368, !tbaa !1109
  br label %399, !dbg !3368

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2976, metadata !DIExpression()), !dbg !3115
  br label %401, !dbg !3374

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !3019
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2981, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2979, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2976, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2968, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2959, metadata !DIExpression()), !dbg !3019
  %407 = add i64 %346, 1, !dbg !3375
  %408 = icmp ugt i64 %342, %407, !dbg !3377
  br i1 %408, label %409, label %.loopexit2, !dbg !3378

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !3379
  %411 = select i1 %410, i1 true, i1 %405, !dbg !3379
  br i1 %411, label %423, label %412, !dbg !3379

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !3382
  br i1 %413, label %414, label %416, !dbg !3386

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !3382
  store i8 39, ptr %415, align 1, !dbg !3382, !tbaa !1109
  br label %416, !dbg !3382

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !3386
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2959, metadata !DIExpression()), !dbg !3019
  %418 = icmp ult i64 %417, %129, !dbg !3387
  br i1 %418, label %419, label %421, !dbg !3390

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !3387
  store i8 39, ptr %420, align 1, !dbg !3387, !tbaa !1109
  br label %421, !dbg !3387

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !3390
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2968, metadata !DIExpression()), !dbg !3019
  br label %423, !dbg !3391

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !3392
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2968, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2959, metadata !DIExpression()), !dbg !3019
  %426 = icmp ult i64 %424, %129, !dbg !3393
  br i1 %426, label %427, label %429, !dbg !3396

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !3393
  store i8 %406, ptr %428, align 1, !dbg !3393, !tbaa !1109
  br label %429, !dbg !3393

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !3396
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2974, metadata !DIExpression()), !dbg !3106
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !3397
  %432 = load i8, ptr %431, align 1, !dbg !3397, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2981, metadata !DIExpression()), !dbg !3115
  br label %343, !dbg !3398, !llvm.loop !3399

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !3402
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !3019
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !3023
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !3106
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !3115
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2950, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2981, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2980, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2979, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2976, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2974, metadata !DIExpression()), !dbg !3106
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2968, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2965, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2960, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2952, metadata !DIExpression()), !dbg !3019
  br i1 %111, label %455, label %444, !dbg !3403

444:                                              ; preds = %203, %249, %433
  %445 = phi i64 [ %443, %433 ], [ %129, %249 ], [ %129, %203 ]
  %446 = phi i8 [ %442, %433 ], [ %155, %249 ], [ 0, %203 ]
  %447 = phi i1 [ %441, %433 ], [ false, %249 ], [ false, %203 ]
  %448 = phi i1 [ %440, %433 ], [ false, %249 ], [ false, %203 ]
  %449 = phi i64 [ %439, %433 ], [ %128, %249 ], [ %128, %203 ]
  %450 = phi i1 [ %438, %433 ], [ %127, %249 ], [ %127, %203 ]
  %451 = phi i1 [ %437, %433 ], [ %125, %249 ], [ %125, %203 ]
  %452 = phi i64 [ %436, %433 ], [ %124, %249 ], [ %124, %203 ]
  %453 = phi i64 [ %435, %433 ], [ %123, %249 ], [ %123, %203 ]
  %454 = phi i64 [ %434, %433 ], [ %152, %249 ], [ %152, %203 ]
  br i1 %120, label %456, label %476, !dbg !3405

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !3406

456:                                              ; preds = %444, %455
  %457 = phi i64 [ %445, %444 ], [ %443, %455 ]
  %458 = phi i8 [ %446, %444 ], [ %442, %455 ]
  %459 = phi i1 [ %447, %444 ], [ %441, %455 ]
  %460 = phi i1 [ %448, %444 ], [ %440, %455 ]
  %461 = phi i64 [ %449, %444 ], [ %439, %455 ]
  %462 = phi i1 [ %450, %444 ], [ %438, %455 ]
  %463 = phi i1 [ %451, %444 ], [ %437, %455 ]
  %464 = phi i64 [ %452, %444 ], [ %436, %455 ]
  %465 = phi i64 [ %453, %444 ], [ %435, %455 ]
  %466 = phi i64 [ %454, %444 ], [ %434, %455 ]
  %467 = lshr i8 %458, 5, !dbg !3407
  %468 = zext nneg i8 %467 to i64, !dbg !3407
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !3408
  %470 = load i32, ptr %469, align 4, !dbg !3408, !tbaa !1100
  %471 = and i8 %458, 31, !dbg !3409
  %472 = zext nneg i8 %471 to i32, !dbg !3409
  %473 = shl nuw i32 1, %472, !dbg !3410
  %474 = and i32 %470, %473, !dbg !3410
  %475 = icmp eq i32 %474, 0, !dbg !3410
  br i1 %475, label %476, label %487, !dbg !3411

476:                                              ; preds = %182, %456, %455, %444
  %477 = phi i64 [ %457, %456 ], [ %443, %455 ], [ %445, %444 ], [ %129, %182 ]
  %478 = phi i8 [ %458, %456 ], [ %442, %455 ], [ %446, %444 ], [ 48, %182 ]
  %479 = phi i1 [ %459, %456 ], [ %441, %455 ], [ %447, %444 ], [ false, %182 ]
  %480 = phi i1 [ %460, %456 ], [ %440, %455 ], [ %448, %444 ], [ true, %182 ]
  %481 = phi i64 [ %461, %456 ], [ %439, %455 ], [ %449, %444 ], [ %128, %182 ]
  %482 = phi i1 [ %462, %456 ], [ %438, %455 ], [ %450, %444 ], [ %178, %182 ]
  %483 = phi i1 [ %463, %456 ], [ %437, %455 ], [ %451, %444 ], [ %125, %182 ]
  %484 = phi i64 [ %464, %456 ], [ %436, %455 ], [ %452, %444 ], [ %124, %182 ]
  %485 = phi i64 [ %465, %456 ], [ %435, %455 ], [ %453, %444 ], [ %183, %182 ]
  %486 = phi i64 [ %466, %456 ], [ %434, %455 ], [ %454, %444 ], [ %152, %182 ]
  br i1 %153, label %487, label %523, !dbg !3412

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !3402
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !3019
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !3023
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !3413
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !3115
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2950, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2981, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2980, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2974, metadata !DIExpression()), !dbg !3106
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2968, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2965, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2960, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2952, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.label(metadata !3008), !dbg !3414
  br i1 %109, label %.loopexit8, label %497, !dbg !3415

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2979, metadata !DIExpression()), !dbg !3115
  %498 = select i1 %110, i1 true, i1 %492, !dbg !3417
  br i1 %498, label %515, label %499, !dbg !3417

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !3419
  br i1 %500, label %501, label %503, !dbg !3423

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !3419
  store i8 39, ptr %502, align 1, !dbg !3419, !tbaa !1109
  br label %503, !dbg !3419

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !3423
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2959, metadata !DIExpression()), !dbg !3019
  %505 = icmp ult i64 %504, %496, !dbg !3424
  br i1 %505, label %506, label %508, !dbg !3427

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !3424
  store i8 36, ptr %507, align 1, !dbg !3424, !tbaa !1109
  br label %508, !dbg !3424

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !3427
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2959, metadata !DIExpression()), !dbg !3019
  %510 = icmp ult i64 %509, %496, !dbg !3428
  br i1 %510, label %511, label %513, !dbg !3431

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !3428
  store i8 39, ptr %512, align 1, !dbg !3428, !tbaa !1109
  br label %513, !dbg !3428

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !3431
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2968, metadata !DIExpression()), !dbg !3019
  br label %515, !dbg !3432

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !3115
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2968, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2959, metadata !DIExpression()), !dbg !3019
  %518 = icmp ult i64 %516, %496, !dbg !3433
  br i1 %518, label %519, label %521, !dbg !3436

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !3433
  store i8 92, ptr %520, align 1, !dbg !3433, !tbaa !1109
  br label %521, !dbg !3433

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !3436
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2950, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2981, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2980, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2979, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2974, metadata !DIExpression()), !dbg !3106
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2968, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2965, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2960, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2952, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.label(metadata !3009), !dbg !3437
  br label %547, !dbg !3438

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !3019
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !3115
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !3106
  br label %523, !dbg !3438

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !3402
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !3019
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !3023
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !3413
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !3441
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2950, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2981, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2980, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2979, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2974, metadata !DIExpression()), !dbg !3106
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2968, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2965, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2960, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2952, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.label(metadata !3009), !dbg !3437
  %534 = xor i1 %528, true, !dbg !3438
  %535 = select i1 %534, i1 true, i1 %530, !dbg !3438
  br i1 %535, label %547, label %536, !dbg !3438

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !3442
  br i1 %537, label %538, label %540, !dbg !3446

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !3442
  store i8 39, ptr %539, align 1, !dbg !3442, !tbaa !1109
  br label %540, !dbg !3442

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !3446
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2959, metadata !DIExpression()), !dbg !3019
  %542 = icmp ult i64 %541, %533, !dbg !3447
  br i1 %542, label %543, label %545, !dbg !3450

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !3447
  store i8 39, ptr %544, align 1, !dbg !3447, !tbaa !1109
  br label %545, !dbg !3447

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !3450
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2968, metadata !DIExpression()), !dbg !3019
  br label %547, !dbg !3451

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !3115
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2968, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2959, metadata !DIExpression()), !dbg !3019
  %557 = icmp ult i64 %555, %548, !dbg !3452
  br i1 %557, label %558, label %560, !dbg !3455

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !3452
  store i8 %549, ptr %559, align 1, !dbg !3452, !tbaa !1109
  br label %560, !dbg !3452

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !3455
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2959, metadata !DIExpression()), !dbg !3019
  %562 = select i1 %550, i1 %126, i1 false, !dbg !3456
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2966, metadata !DIExpression()), !dbg !3019
  br label %563, !dbg !3457

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !3402
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !3019
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !3023
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !3413
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2950, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2974, metadata !DIExpression()), !dbg !3106
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2968, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2966, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2965, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2960, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2952, metadata !DIExpression()), !dbg !3019
  %572 = add i64 %570, 1, !dbg !3458
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2974, metadata !DIExpression()), !dbg !3106
  br label %121, !dbg !3459, !llvm.loop !3460

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !3094
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !3023
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2950, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2966, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2965, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2960, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2959, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2952, metadata !DIExpression()), !dbg !3019
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !3462
  %575 = xor i1 %109, true, !dbg !3464
  %576 = or i1 %574, %575, !dbg !3464
  %577 = or i1 %576, %110, !dbg !3464
  br i1 %577, label %578, label %.loopexit13, !dbg !3464

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !3465
  %580 = xor i1 %.lcssa38, true, !dbg !3465
  %581 = select i1 %579, i1 true, i1 %580, !dbg !3465
  br i1 %581, label %589, label %582, !dbg !3465

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !3467

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !3023
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !3469
  br label %638, !dbg !3471

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !3472
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !3474
  br i1 %588, label %27, label %589, !dbg !3474

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !3019
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !3094
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !3475
  %592 = or i1 %591, %590, !dbg !3477
  br i1 %592, label %608, label %593, !dbg !3477

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2961, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2959, metadata !DIExpression()), !dbg !3019
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !3478, !tbaa !1109
  %595 = icmp eq i8 %594, 0, !dbg !3481
  br i1 %595, label %608, label %.preheader, !dbg !3481

.preheader:                                       ; preds = %593
  br label %596, !dbg !3481

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2961, metadata !DIExpression()), !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2959, metadata !DIExpression()), !dbg !3019
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !3482
  br i1 %600, label %601, label %603, !dbg !3485

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !3482
  store i8 %597, ptr %602, align 1, !dbg !3482, !tbaa !1109
  br label %603, !dbg !3482

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !3485
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2959, metadata !DIExpression()), !dbg !3019
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !3486
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2961, metadata !DIExpression()), !dbg !3019
  %606 = load i8, ptr %605, align 1, !dbg !3478, !tbaa !1109
  %607 = icmp eq i8 %606, 0, !dbg !3481
  br i1 %607, label %.loopexit, label %596, !dbg !3481, !llvm.loop !3487

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !3485
  br label %608, !dbg !3489

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !3094
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2959, metadata !DIExpression()), !dbg !3019
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !3489
  br i1 %610, label %611, label %638, !dbg !3491

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !3492
  store i8 0, ptr %612, align 1, !dbg !3493, !tbaa !1109
  br label %638, !dbg !3492

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !3010), !dbg !3319
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !3494
  br i1 %614, label %624, label %630, !dbg !3320

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !3115
  br label %615, !dbg !3494

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !3494

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !3494

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !3010), !dbg !3319
  %622 = icmp eq i32 %616, 2, !dbg !3494
  %623 = select i1 %619, i32 4, i32 2, !dbg !3320
  br i1 %622, label %624, label %630, !dbg !3320

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !3320

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !3121
  br label %630, !dbg !3495

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2953, metadata !DIExpression()), !dbg !3019
  %636 = and i32 %5, -3, !dbg !3495
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !3496
  br label %638, !dbg !3497

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !3498
}

; Function Attrs: nounwind
declare !dbg !3499 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3502 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3504 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3508, metadata !DIExpression()), !dbg !3511
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3509, metadata !DIExpression()), !dbg !3511
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3510, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata ptr %0, metadata !3512, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i64 %1, metadata !3517, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata ptr null, metadata !3518, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata ptr %2, metadata !3519, metadata !DIExpression()), !dbg !3525
  %4 = icmp eq ptr %2, null, !dbg !3527
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3527
  call void @llvm.dbg.value(metadata ptr %5, metadata !3520, metadata !DIExpression()), !dbg !3525
  %6 = tail call ptr @__errno_location() #43, !dbg !3528
  %7 = load i32, ptr %6, align 4, !dbg !3528, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %7, metadata !3521, metadata !DIExpression()), !dbg !3525
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3529
  %9 = load i32, ptr %8, align 4, !dbg !3529, !tbaa !2893
  %10 = or i32 %9, 1, !dbg !3530
  call void @llvm.dbg.value(metadata i32 %10, metadata !3522, metadata !DIExpression()), !dbg !3525
  %11 = load i32, ptr %5, align 8, !dbg !3531, !tbaa !2843
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3532
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3533
  %14 = load ptr, ptr %13, align 8, !dbg !3533, !tbaa !2914
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3534
  %16 = load ptr, ptr %15, align 8, !dbg !3534, !tbaa !2917
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3535
  %18 = add i64 %17, 1, !dbg !3536
  call void @llvm.dbg.value(metadata i64 %18, metadata !3523, metadata !DIExpression()), !dbg !3525
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #48, !dbg !3537
  call void @llvm.dbg.value(metadata ptr %19, metadata !3524, metadata !DIExpression()), !dbg !3525
  %20 = load i32, ptr %5, align 8, !dbg !3538, !tbaa !2843
  %21 = load ptr, ptr %13, align 8, !dbg !3539, !tbaa !2914
  %22 = load ptr, ptr %15, align 8, !dbg !3540, !tbaa !2917
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3541
  store i32 %7, ptr %6, align 4, !dbg !3542, !tbaa !1100
  ret ptr %19, !dbg !3543
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3513 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3512, metadata !DIExpression()), !dbg !3544
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3517, metadata !DIExpression()), !dbg !3544
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3518, metadata !DIExpression()), !dbg !3544
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3519, metadata !DIExpression()), !dbg !3544
  %5 = icmp eq ptr %3, null, !dbg !3545
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3545
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3520, metadata !DIExpression()), !dbg !3544
  %7 = tail call ptr @__errno_location() #43, !dbg !3546
  %8 = load i32, ptr %7, align 4, !dbg !3546, !tbaa !1100
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3521, metadata !DIExpression()), !dbg !3544
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3547
  %10 = load i32, ptr %9, align 4, !dbg !3547, !tbaa !2893
  %11 = icmp eq ptr %2, null, !dbg !3548
  %12 = zext i1 %11 to i32, !dbg !3548
  %13 = or i32 %10, %12, !dbg !3549
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3522, metadata !DIExpression()), !dbg !3544
  %14 = load i32, ptr %6, align 8, !dbg !3550, !tbaa !2843
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3551
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3552
  %17 = load ptr, ptr %16, align 8, !dbg !3552, !tbaa !2914
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3553
  %19 = load ptr, ptr %18, align 8, !dbg !3553, !tbaa !2917
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3554
  %21 = add i64 %20, 1, !dbg !3555
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3523, metadata !DIExpression()), !dbg !3544
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #48, !dbg !3556
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3524, metadata !DIExpression()), !dbg !3544
  %23 = load i32, ptr %6, align 8, !dbg !3557, !tbaa !2843
  %24 = load ptr, ptr %16, align 8, !dbg !3558, !tbaa !2914
  %25 = load ptr, ptr %18, align 8, !dbg !3559, !tbaa !2917
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3560
  store i32 %8, ptr %7, align 4, !dbg !3561, !tbaa !1100
  br i1 %11, label %28, label %27, !dbg !3562

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3563, !tbaa !3565
  br label %28, !dbg !3566

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3567
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3568 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3573, !tbaa !1000
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3570, metadata !DIExpression()), !dbg !3574
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3571, metadata !DIExpression()), !dbg !3575
  %2 = load i32, ptr @nslots, align 4, !tbaa !1100
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3571, metadata !DIExpression()), !dbg !3575
  %3 = icmp sgt i32 %2, 1, !dbg !3576
  br i1 %3, label %4, label %6, !dbg !3578

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3576
  br label %10, !dbg !3578

.loopexit:                                        ; preds = %10
  br label %6, !dbg !3579

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3579
  %8 = load ptr, ptr %7, align 8, !dbg !3579, !tbaa !3581
  %9 = icmp eq ptr %8, @slot0, !dbg !3583
  br i1 %9, label %17, label %16, !dbg !3584

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3571, metadata !DIExpression()), !dbg !3575
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3585
  %13 = load ptr, ptr %12, align 8, !dbg !3585, !tbaa !3581
  tail call void @free(ptr noundef %13) #40, !dbg !3586
  %14 = add nuw nsw i64 %11, 1, !dbg !3587
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3571, metadata !DIExpression()), !dbg !3575
  %15 = icmp eq i64 %14, %5, !dbg !3576
  br i1 %15, label %.loopexit, label %10, !dbg !3578, !llvm.loop !3588

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3590
  store i64 256, ptr @slotvec0, align 8, !dbg !3592, !tbaa !3593
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3594, !tbaa !3581
  br label %17, !dbg !3595

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3596
  br i1 %18, label %20, label %19, !dbg !3598

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3599
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3601, !tbaa !1000
  br label %20, !dbg !3602

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3603, !tbaa !1100
  ret void, !dbg !3604
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3605 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3608 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3610, metadata !DIExpression()), !dbg !3612
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3611, metadata !DIExpression()), !dbg !3612
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3613
  ret ptr %3, !dbg !3614
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3615 {
  %5 = alloca i64, align 8, !DIAssignID !3635
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3629, metadata !DIExpression(), metadata !3635, metadata ptr %5, metadata !DIExpression()), !dbg !3636
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3619, metadata !DIExpression()), !dbg !3637
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3620, metadata !DIExpression()), !dbg !3637
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3621, metadata !DIExpression()), !dbg !3637
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3622, metadata !DIExpression()), !dbg !3637
  %6 = tail call ptr @__errno_location() #43, !dbg !3638
  %7 = load i32, ptr %6, align 4, !dbg !3638, !tbaa !1100
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3623, metadata !DIExpression()), !dbg !3637
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3639, !tbaa !1000
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3624, metadata !DIExpression()), !dbg !3637
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3625, metadata !DIExpression()), !dbg !3637
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3640
  br i1 %9, label %10, label %11, !dbg !3640

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3642
  unreachable, !dbg !3642

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3643, !tbaa !1100
  %13 = icmp sgt i32 %12, %0, !dbg !3644
  br i1 %13, label %32, label %14, !dbg !3645

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3646
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3626, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3636
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3647
  %16 = sext i32 %12 to i64, !dbg !3648
  store i64 %16, ptr %5, align 8, !dbg !3649, !tbaa !3565, !DIAssignID !3650
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3629, metadata !DIExpression(), metadata !3650, metadata ptr %5, metadata !DIExpression()), !dbg !3636
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3651
  %18 = add nuw nsw i32 %0, 1, !dbg !3652
  %19 = sub i32 %18, %12, !dbg !3653
  %20 = sext i32 %19 to i64, !dbg !3654
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3655
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3624, metadata !DIExpression()), !dbg !3637
  store ptr %21, ptr @slotvec, align 8, !dbg !3656, !tbaa !1000
  br i1 %15, label %22, label %23, !dbg !3657

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3658, !tbaa.struct !3660
  br label %23, !dbg !3661

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3662, !tbaa !1100
  %25 = sext i32 %24 to i64, !dbg !3663
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3663
  %27 = load i64, ptr %5, align 8, !dbg !3664, !tbaa !3565
  %28 = sub nsw i64 %27, %25, !dbg !3665
  %29 = shl i64 %28, 4, !dbg !3666
  call void @llvm.dbg.value(metadata ptr %26, metadata !3052, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i32 0, metadata !3055, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 %29, metadata !3056, metadata !DIExpression()), !dbg !3667
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3669
  %30 = load i64, ptr %5, align 8, !dbg !3670, !tbaa !3565
  %31 = trunc i64 %30 to i32, !dbg !3670
  store i32 %31, ptr @nslots, align 4, !dbg !3671, !tbaa !1100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3672
  br label %32, !dbg !3673

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3637
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3624, metadata !DIExpression()), !dbg !3637
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3674
  %36 = load i64, ptr %35, align 8, !dbg !3675, !tbaa !3593
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3630, metadata !DIExpression()), !dbg !3676
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3677
  %38 = load ptr, ptr %37, align 8, !dbg !3677, !tbaa !3581
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3632, metadata !DIExpression()), !dbg !3676
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3678
  %40 = load i32, ptr %39, align 4, !dbg !3678, !tbaa !2893
  %41 = or i32 %40, 1, !dbg !3679
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3633, metadata !DIExpression()), !dbg !3676
  %42 = load i32, ptr %3, align 8, !dbg !3680, !tbaa !2843
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3681
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3682
  %45 = load ptr, ptr %44, align 8, !dbg !3682, !tbaa !2914
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3683
  %47 = load ptr, ptr %46, align 8, !dbg !3683, !tbaa !2917
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3684
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3634, metadata !DIExpression()), !dbg !3676
  %49 = icmp ugt i64 %36, %48, !dbg !3685
  br i1 %49, label %60, label %50, !dbg !3687

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3688
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3630, metadata !DIExpression()), !dbg !3676
  store i64 %51, ptr %35, align 8, !dbg !3690, !tbaa !3593
  %52 = icmp eq ptr %38, @slot0, !dbg !3691
  br i1 %52, label %54, label %53, !dbg !3693

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3694
  br label %54, !dbg !3694

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #48, !dbg !3695
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3632, metadata !DIExpression()), !dbg !3676
  store ptr %55, ptr %37, align 8, !dbg !3696, !tbaa !3581
  %56 = load i32, ptr %3, align 8, !dbg !3697, !tbaa !2843
  %57 = load ptr, ptr %44, align 8, !dbg !3698, !tbaa !2914
  %58 = load ptr, ptr %46, align 8, !dbg !3699, !tbaa !2917
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3700
  br label %60, !dbg !3701

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3676
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3632, metadata !DIExpression()), !dbg !3676
  store i32 %7, ptr %6, align 4, !dbg !3702, !tbaa !1100
  ret ptr %61, !dbg !3703
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #28

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3704 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3708, metadata !DIExpression()), !dbg !3711
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3709, metadata !DIExpression()), !dbg !3711
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3710, metadata !DIExpression()), !dbg !3711
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3712
  ret ptr %4, !dbg !3713
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3714 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3716, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i32 0, metadata !3610, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata ptr %0, metadata !3611, metadata !DIExpression()), !dbg !3718
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3720
  ret ptr %2, !dbg !3721
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3722 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3726, metadata !DIExpression()), !dbg !3728
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3727, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata i32 0, metadata !3708, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata ptr %0, metadata !3709, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %1, metadata !3710, metadata !DIExpression()), !dbg !3729
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3731
  ret ptr %3, !dbg !3732
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3733 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3741
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3740, metadata !DIExpression(), metadata !3741, metadata ptr %4, metadata !DIExpression()), !dbg !3742
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3737, metadata !DIExpression()), !dbg !3742
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3738, metadata !DIExpression()), !dbg !3742
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3739, metadata !DIExpression()), !dbg !3742
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3743
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3744), !dbg !3747
  call void @llvm.dbg.value(metadata i32 %1, metadata !3748, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3753, metadata !DIExpression()), !dbg !3756
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3756, !alias.scope !3744, !DIAssignID !3757
  call void @llvm.dbg.assign(metadata i8 0, metadata !3740, metadata !DIExpression(), metadata !3757, metadata ptr %4, metadata !DIExpression()), !dbg !3742
  %5 = icmp eq i32 %1, 10, !dbg !3758
  br i1 %5, label %6, label %7, !dbg !3760

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3761, !noalias !3744
  unreachable, !dbg !3761

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3762, !tbaa !2843, !alias.scope !3744, !DIAssignID !3763
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3740, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3763, metadata ptr %4, metadata !DIExpression()), !dbg !3742
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3764
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3765
  ret ptr %8, !dbg !3766
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3767 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3776
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3775, metadata !DIExpression(), metadata !3776, metadata ptr %5, metadata !DIExpression()), !dbg !3777
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3771, metadata !DIExpression()), !dbg !3777
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3772, metadata !DIExpression()), !dbg !3777
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3773, metadata !DIExpression()), !dbg !3777
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3774, metadata !DIExpression()), !dbg !3777
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3778
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3779), !dbg !3782
  call void @llvm.dbg.value(metadata i32 %1, metadata !3748, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3753, metadata !DIExpression()), !dbg !3785
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3785, !alias.scope !3779, !DIAssignID !3786
  call void @llvm.dbg.assign(metadata i8 0, metadata !3775, metadata !DIExpression(), metadata !3786, metadata ptr %5, metadata !DIExpression()), !dbg !3777
  %6 = icmp eq i32 %1, 10, !dbg !3787
  br i1 %6, label %7, label %8, !dbg !3788

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3789, !noalias !3779
  unreachable, !dbg !3789

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3790, !tbaa !2843, !alias.scope !3779, !DIAssignID !3791
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3775, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3791, metadata ptr %5, metadata !DIExpression()), !dbg !3777
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3792
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3793
  ret ptr %9, !dbg !3794
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3795 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3801
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3799, metadata !DIExpression()), !dbg !3802
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3800, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3740, metadata !DIExpression(), metadata !3801, metadata ptr %3, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i32 0, metadata !3737, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata i32 %0, metadata !3738, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata ptr %1, metadata !3739, metadata !DIExpression()), !dbg !3803
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3805
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3806), !dbg !3809
  call void @llvm.dbg.value(metadata i32 %0, metadata !3748, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3753, metadata !DIExpression()), !dbg !3812
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3812, !alias.scope !3806, !DIAssignID !3813
  call void @llvm.dbg.assign(metadata i8 0, metadata !3740, metadata !DIExpression(), metadata !3813, metadata ptr %3, metadata !DIExpression()), !dbg !3803
  %4 = icmp eq i32 %0, 10, !dbg !3814
  br i1 %4, label %5, label %6, !dbg !3815

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3816, !noalias !3806
  unreachable, !dbg !3816

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3817, !tbaa !2843, !alias.scope !3806, !DIAssignID !3818
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3740, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3818, metadata ptr %3, metadata !DIExpression()), !dbg !3803
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3819
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3820
  ret ptr %7, !dbg !3821
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3822 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3829
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3826, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3827, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3828, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3775, metadata !DIExpression(), metadata !3829, metadata ptr %4, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i32 0, metadata !3771, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i32 %0, metadata !3772, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata ptr %1, metadata !3773, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i64 %2, metadata !3774, metadata !DIExpression()), !dbg !3831
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3833
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3834), !dbg !3837
  call void @llvm.dbg.value(metadata i32 %0, metadata !3748, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3753, metadata !DIExpression()), !dbg !3840
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3840, !alias.scope !3834, !DIAssignID !3841
  call void @llvm.dbg.assign(metadata i8 0, metadata !3775, metadata !DIExpression(), metadata !3841, metadata ptr %4, metadata !DIExpression()), !dbg !3831
  %5 = icmp eq i32 %0, 10, !dbg !3842
  br i1 %5, label %6, label %7, !dbg !3843

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3844, !noalias !3834
  unreachable, !dbg !3844

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3845, !tbaa !2843, !alias.scope !3834, !DIAssignID !3846
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3775, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3846, metadata ptr %4, metadata !DIExpression()), !dbg !3831
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3847
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3848
  ret ptr %8, !dbg !3849
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3850 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3858
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3857, metadata !DIExpression(), metadata !3858, metadata ptr %4, metadata !DIExpression()), !dbg !3859
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3854, metadata !DIExpression()), !dbg !3859
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3855, metadata !DIExpression()), !dbg !3859
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3856, metadata !DIExpression()), !dbg !3859
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3861, !tbaa.struct !3862, !DIAssignID !3863
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3857, metadata !DIExpression(), metadata !3863, metadata ptr %4, metadata !DIExpression()), !dbg !3859
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2860, metadata !DIExpression()), !dbg !3864
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2861, metadata !DIExpression()), !dbg !3864
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2862, metadata !DIExpression()), !dbg !3864
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2863, metadata !DIExpression()), !dbg !3864
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3866
  %6 = lshr i8 %2, 5, !dbg !3867
  %7 = zext nneg i8 %6 to i64, !dbg !3867
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3868
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2864, metadata !DIExpression()), !dbg !3864
  %9 = and i8 %2, 31, !dbg !3869
  %10 = zext nneg i8 %9 to i32, !dbg !3869
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2866, metadata !DIExpression()), !dbg !3864
  %11 = load i32, ptr %8, align 4, !dbg !3870, !tbaa !1100
  %12 = lshr i32 %11, %10, !dbg !3871
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2867, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3864
  %13 = and i32 %12, 1, !dbg !3872
  %14 = xor i32 %13, 1, !dbg !3872
  %15 = shl nuw i32 %14, %10, !dbg !3873
  %16 = xor i32 %15, %11, !dbg !3874
  store i32 %16, ptr %8, align 4, !dbg !3874, !tbaa !1100
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3875
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3876
  ret ptr %17, !dbg !3877
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3878 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3884
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3882, metadata !DIExpression()), !dbg !3885
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3883, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3857, metadata !DIExpression(), metadata !3884, metadata ptr %3, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata ptr %0, metadata !3854, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64 -1, metadata !3855, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i8 %1, metadata !3856, metadata !DIExpression()), !dbg !3886
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3889, !tbaa.struct !3862, !DIAssignID !3890
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3857, metadata !DIExpression(), metadata !3890, metadata ptr %3, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata ptr %3, metadata !2860, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i8 %1, metadata !2861, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i32 1, metadata !2862, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i8 %1, metadata !2863, metadata !DIExpression()), !dbg !3891
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3893
  %5 = lshr i8 %1, 5, !dbg !3894
  %6 = zext nneg i8 %5 to i64, !dbg !3894
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3895
  call void @llvm.dbg.value(metadata ptr %7, metadata !2864, metadata !DIExpression()), !dbg !3891
  %8 = and i8 %1, 31, !dbg !3896
  %9 = zext nneg i8 %8 to i32, !dbg !3896
  call void @llvm.dbg.value(metadata i32 %9, metadata !2866, metadata !DIExpression()), !dbg !3891
  %10 = load i32, ptr %7, align 4, !dbg !3897, !tbaa !1100
  %11 = lshr i32 %10, %9, !dbg !3898
  call void @llvm.dbg.value(metadata i32 %11, metadata !2867, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3891
  %12 = and i32 %11, 1, !dbg !3899
  %13 = xor i32 %12, 1, !dbg !3899
  %14 = shl nuw i32 %13, %9, !dbg !3900
  %15 = xor i32 %14, %10, !dbg !3901
  store i32 %15, ptr %7, align 4, !dbg !3901, !tbaa !1100
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3902
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3903
  ret ptr %16, !dbg !3904
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3905 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3908
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3907, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata ptr %0, metadata !3882, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i8 58, metadata !3883, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3857, metadata !DIExpression(), metadata !3908, metadata ptr %2, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata ptr %0, metadata !3854, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i64 -1, metadata !3855, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i8 58, metadata !3856, metadata !DIExpression()), !dbg !3912
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3915, !tbaa.struct !3862, !DIAssignID !3916
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3857, metadata !DIExpression(), metadata !3916, metadata ptr %2, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata ptr %2, metadata !2860, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i8 58, metadata !2861, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i32 1, metadata !2862, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i8 58, metadata !2863, metadata !DIExpression()), !dbg !3917
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3919
  call void @llvm.dbg.value(metadata ptr %3, metadata !2864, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i32 26, metadata !2866, metadata !DIExpression()), !dbg !3917
  %4 = load i32, ptr %3, align 4, !dbg !3920, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %4, metadata !2867, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3917
  %5 = or i32 %4, 67108864, !dbg !3921
  store i32 %5, ptr %3, align 4, !dbg !3921, !tbaa !1100
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3922
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3923
  ret ptr %6, !dbg !3924
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3925 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3929
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3927, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3928, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3857, metadata !DIExpression(), metadata !3929, metadata ptr %3, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata ptr %0, metadata !3854, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i64 %1, metadata !3855, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i8 58, metadata !3856, metadata !DIExpression()), !dbg !3931
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3934, !tbaa.struct !3862, !DIAssignID !3935
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3857, metadata !DIExpression(), metadata !3935, metadata ptr %3, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata ptr %3, metadata !2860, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i8 58, metadata !2861, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i32 1, metadata !2862, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i8 58, metadata !2863, metadata !DIExpression()), !dbg !3936
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3938
  call void @llvm.dbg.value(metadata ptr %4, metadata !2864, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i32 26, metadata !2866, metadata !DIExpression()), !dbg !3936
  %5 = load i32, ptr %4, align 4, !dbg !3939, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %5, metadata !2867, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3936
  %6 = or i32 %5, 67108864, !dbg !3940
  store i32 %6, ptr %4, align 4, !dbg !3940, !tbaa !1100
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3941
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3942
  ret ptr %7, !dbg !3943
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3944 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3950
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3949, metadata !DIExpression(), metadata !3950, metadata ptr %4, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3753, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3952
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3946, metadata !DIExpression()), !dbg !3951
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3947, metadata !DIExpression()), !dbg !3951
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3948, metadata !DIExpression()), !dbg !3951
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3954
  call void @llvm.dbg.value(metadata i32 %1, metadata !3748, metadata !DIExpression()), !dbg !3955
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3753, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3955
  %5 = icmp eq i32 %1, 10, !dbg !3956
  br i1 %5, label %6, label %7, !dbg !3957

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3958, !noalias !3959
  unreachable, !dbg !3958

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3753, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3955
  store i32 %1, ptr %4, align 8, !dbg !3962, !tbaa.struct !3862, !DIAssignID !3963
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3962
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3962
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3949, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3963, metadata ptr %4, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3949, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3964, metadata ptr %8, metadata !DIExpression()), !dbg !3951
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2860, metadata !DIExpression()), !dbg !3965
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2861, metadata !DIExpression()), !dbg !3965
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2862, metadata !DIExpression()), !dbg !3965
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2863, metadata !DIExpression()), !dbg !3965
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3967
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2864, metadata !DIExpression()), !dbg !3965
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2866, metadata !DIExpression()), !dbg !3965
  %10 = load i32, ptr %9, align 4, !dbg !3968, !tbaa !1100
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2867, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3965
  %11 = or i32 %10, 67108864, !dbg !3969
  store i32 %11, ptr %9, align 4, !dbg !3969, !tbaa !1100, !DIAssignID !3970
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3949, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3970, metadata ptr %9, metadata !DIExpression()), !dbg !3951
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3971
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3972
  ret ptr %12, !dbg !3973
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3974 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3982
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3978, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3979, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3980, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3981, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3984, metadata !DIExpression(), metadata !3982, metadata ptr %5, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32 %0, metadata !3989, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata ptr %1, metadata !3990, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata ptr %2, metadata !3991, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata ptr %3, metadata !3992, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i64 -1, metadata !3993, metadata !DIExpression()), !dbg !3994
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3997, !tbaa.struct !3862, !DIAssignID !3998
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3984, metadata !DIExpression(), metadata !3998, metadata ptr %5, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3984, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3999, metadata ptr undef, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata ptr %5, metadata !2900, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata ptr %1, metadata !2901, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata ptr %2, metadata !2902, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata ptr %5, metadata !2900, metadata !DIExpression()), !dbg !4000
  store i32 10, ptr %5, align 8, !dbg !4002, !tbaa !2843, !DIAssignID !4003
  call void @llvm.dbg.assign(metadata i32 10, metadata !3984, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4003, metadata ptr %5, metadata !DIExpression()), !dbg !3994
  %6 = icmp ne ptr %1, null, !dbg !4004
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4005
  br i1 %8, label %10, label %9, !dbg !4005

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !4006
  unreachable, !dbg !4006

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4007
  store ptr %1, ptr %11, align 8, !dbg !4008, !tbaa !2914, !DIAssignID !4009
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3984, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4009, metadata ptr %11, metadata !DIExpression()), !dbg !3994
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4010
  store ptr %2, ptr %12, align 8, !dbg !4011, !tbaa !2917, !DIAssignID !4012
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3984, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4012, metadata ptr %12, metadata !DIExpression()), !dbg !3994
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4013
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !4014
  ret ptr %13, !dbg !4015
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3985 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !4016
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3984, metadata !DIExpression(), metadata !4016, metadata ptr %6, metadata !DIExpression()), !dbg !4017
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3989, metadata !DIExpression()), !dbg !4017
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3990, metadata !DIExpression()), !dbg !4017
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3991, metadata !DIExpression()), !dbg !4017
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3992, metadata !DIExpression()), !dbg !4017
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3993, metadata !DIExpression()), !dbg !4017
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !4018
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4019, !tbaa.struct !3862, !DIAssignID !4020
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3984, metadata !DIExpression(), metadata !4020, metadata ptr %6, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3984, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4021, metadata ptr undef, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata ptr %6, metadata !2900, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata ptr %1, metadata !2901, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata ptr %2, metadata !2902, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata ptr %6, metadata !2900, metadata !DIExpression()), !dbg !4022
  store i32 10, ptr %6, align 8, !dbg !4024, !tbaa !2843, !DIAssignID !4025
  call void @llvm.dbg.assign(metadata i32 10, metadata !3984, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4025, metadata ptr %6, metadata !DIExpression()), !dbg !4017
  %7 = icmp ne ptr %1, null, !dbg !4026
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4027
  br i1 %9, label %11, label %10, !dbg !4027

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !4028
  unreachable, !dbg !4028

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4029
  store ptr %1, ptr %12, align 8, !dbg !4030, !tbaa !2914, !DIAssignID !4031
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3984, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4031, metadata ptr %12, metadata !DIExpression()), !dbg !4017
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4032
  store ptr %2, ptr %13, align 8, !dbg !4033, !tbaa !2917, !DIAssignID !4034
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3984, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4034, metadata ptr %13, metadata !DIExpression()), !dbg !4017
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4035
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !4036
  ret ptr %14, !dbg !4037
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4038 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4045
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4042, metadata !DIExpression()), !dbg !4046
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4043, metadata !DIExpression()), !dbg !4046
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4044, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i32 0, metadata !3978, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata ptr %0, metadata !3979, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata ptr %1, metadata !3980, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata ptr %2, metadata !3981, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3984, metadata !DIExpression(), metadata !4045, metadata ptr %4, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i32 0, metadata !3989, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %0, metadata !3990, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %1, metadata !3991, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %2, metadata !3992, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 -1, metadata !3993, metadata !DIExpression()), !dbg !4049
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !4051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4052, !tbaa.struct !3862, !DIAssignID !4053
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3984, metadata !DIExpression(), metadata !4053, metadata ptr %4, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3984, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4054, metadata ptr undef, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %4, metadata !2900, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata ptr %0, metadata !2901, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata ptr %1, metadata !2902, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata ptr %4, metadata !2900, metadata !DIExpression()), !dbg !4055
  store i32 10, ptr %4, align 8, !dbg !4057, !tbaa !2843, !DIAssignID !4058
  call void @llvm.dbg.assign(metadata i32 10, metadata !3984, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4058, metadata ptr %4, metadata !DIExpression()), !dbg !4049
  %5 = icmp ne ptr %0, null, !dbg !4059
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4060
  br i1 %7, label %9, label %8, !dbg !4060

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !4061
  unreachable, !dbg !4061

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4062
  store ptr %0, ptr %10, align 8, !dbg !4063, !tbaa !2914, !DIAssignID !4064
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3984, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4064, metadata ptr %10, metadata !DIExpression()), !dbg !4049
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4065
  store ptr %1, ptr %11, align 8, !dbg !4066, !tbaa !2917, !DIAssignID !4067
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3984, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4067, metadata ptr %11, metadata !DIExpression()), !dbg !4049
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4068
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !4069
  ret ptr %12, !dbg !4070
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4071 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4079
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4075, metadata !DIExpression()), !dbg !4080
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4076, metadata !DIExpression()), !dbg !4080
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4077, metadata !DIExpression()), !dbg !4080
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4078, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3984, metadata !DIExpression(), metadata !4079, metadata ptr %5, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i32 0, metadata !3989, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata ptr %0, metadata !3990, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata ptr %1, metadata !3991, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata ptr %2, metadata !3992, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i64 %3, metadata !3993, metadata !DIExpression()), !dbg !4081
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !4083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4084, !tbaa.struct !3862, !DIAssignID !4085
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3984, metadata !DIExpression(), metadata !4085, metadata ptr %5, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3984, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4086, metadata ptr undef, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata ptr %5, metadata !2900, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr %0, metadata !2901, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr %1, metadata !2902, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr %5, metadata !2900, metadata !DIExpression()), !dbg !4087
  store i32 10, ptr %5, align 8, !dbg !4089, !tbaa !2843, !DIAssignID !4090
  call void @llvm.dbg.assign(metadata i32 10, metadata !3984, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4090, metadata ptr %5, metadata !DIExpression()), !dbg !4081
  %6 = icmp ne ptr %0, null, !dbg !4091
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4092
  br i1 %8, label %10, label %9, !dbg !4092

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !4093
  unreachable, !dbg !4093

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4094
  store ptr %0, ptr %11, align 8, !dbg !4095, !tbaa !2914, !DIAssignID !4096
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3984, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4096, metadata ptr %11, metadata !DIExpression()), !dbg !4081
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4097
  store ptr %1, ptr %12, align 8, !dbg !4098, !tbaa !2917, !DIAssignID !4099
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3984, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4099, metadata ptr %12, metadata !DIExpression()), !dbg !4081
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4100
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !4101
  ret ptr %13, !dbg !4102
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4103 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4107, metadata !DIExpression()), !dbg !4110
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4108, metadata !DIExpression()), !dbg !4110
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4109, metadata !DIExpression()), !dbg !4110
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4111
  ret ptr %4, !dbg !4112
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4113 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4117, metadata !DIExpression()), !dbg !4119
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4118, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i32 0, metadata !4107, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata ptr %0, metadata !4108, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata i64 %1, metadata !4109, metadata !DIExpression()), !dbg !4120
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4122
  ret ptr %3, !dbg !4123
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4124 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4128, metadata !DIExpression()), !dbg !4130
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4129, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i32 %0, metadata !4107, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata ptr %1, metadata !4108, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i64 -1, metadata !4109, metadata !DIExpression()), !dbg !4131
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4133
  ret ptr %3, !dbg !4134
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4135 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4137, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 0, metadata !4128, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata ptr %0, metadata !4129, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i32 0, metadata !4107, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr %0, metadata !4108, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata i64 -1, metadata !4109, metadata !DIExpression()), !dbg !4141
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4143
  ret ptr %2, !dbg !4144
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @strintcmp(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #24 !dbg !4145 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4147, metadata !DIExpression()), !dbg !4149
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4148, metadata !DIExpression()), !dbg !4149
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4150, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4156, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata i32 256, metadata !4157, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata i32 256, metadata !4158, metadata !DIExpression()), !dbg !4164
  %3 = load i8, ptr %0, align 1, !dbg !4166, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %3, metadata !4159, metadata !DIExpression()), !dbg !4164
  %4 = load i8, ptr %1, align 1, !dbg !4167, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %4, metadata !4160, metadata !DIExpression()), !dbg !4164
  %5 = icmp eq i8 %3, 45, !dbg !4168
  br i1 %5, label %.preheader8, label %93, !dbg !4170

.preheader8:                                      ; preds = %2
  br label %6, !dbg !4171

6:                                                ; preds = %.preheader8, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %.preheader8 ]
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4150, metadata !DIExpression()), !dbg !4164
  %8 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !4173
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !4150, metadata !DIExpression()), !dbg !4164
  %9 = load i8, ptr %8, align 1, !dbg !4174, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %9, metadata !4159, metadata !DIExpression()), !dbg !4164
  %10 = icmp eq i8 %9, 48, !dbg !4175
  br i1 %10, label %6, label %11, !dbg !4176, !llvm.loop !4177

11:                                               ; preds = %6
  %.lcssa32 = phi ptr [ %8, %6 ], !dbg !4173
  %.lcssa31 = phi i8 [ %9, %6 ], !dbg !4174
  %12 = icmp eq i8 %4, 45, !dbg !4179
  br i1 %12, label %.preheader5, label %13, !dbg !4181

.preheader5:                                      ; preds = %11
  br label %30, !dbg !4182

13:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 %.lcssa31, metadata !4159, metadata !DIExpression()), !dbg !4164
  %14 = zext i8 %.lcssa31 to i32, !dbg !4183
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !4186, metadata !DIExpression()), !dbg !4190
  %15 = add nsw i32 %14, -48, !dbg !4192
  %16 = icmp ult i32 %15, 10, !dbg !4192
  br i1 %16, label %193, label %17, !dbg !4193

17:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 %4, metadata !4160, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4156, metadata !DIExpression()), !dbg !4164
  %18 = icmp eq i8 %4, 48, !dbg !4194
  br i1 %18, label %.preheader6, label %24, !dbg !4195

.preheader6:                                      ; preds = %17
  br label %19, !dbg !4195

19:                                               ; preds = %.preheader6, %19
  %20 = phi ptr [ %21, %19 ], [ %1, %.preheader6 ]
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !4156, metadata !DIExpression()), !dbg !4164
  %21 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !4196
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !4156, metadata !DIExpression()), !dbg !4164
  %22 = load i8, ptr %21, align 1, !dbg !4197, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %22, metadata !4160, metadata !DIExpression()), !dbg !4164
  %23 = icmp eq i8 %22, 48, !dbg !4194
  br i1 %23, label %19, label %.loopexit7, !dbg !4195, !llvm.loop !4198

.loopexit7:                                       ; preds = %19
  %.lcssa30 = phi i8 [ %22, %19 ], !dbg !4197
  br label %24, !dbg !4200

24:                                               ; preds = %.loopexit7, %17
  %25 = phi i8 [ %4, %17 ], [ %.lcssa30, %.loopexit7 ], !dbg !4164
  tail call void @llvm.dbg.value(metadata i8 %25, metadata !4160, metadata !DIExpression()), !dbg !4164
  %26 = zext i8 %25 to i32, !dbg !4200
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !4186, metadata !DIExpression()), !dbg !4201
  %27 = add nsw i32 %26, -48, !dbg !4203
  %28 = icmp ult i32 %27, 10, !dbg !4203
  %29 = sext i1 %28 to i32, !dbg !4204
  br label %193, !dbg !4205

30:                                               ; preds = %.preheader5, %30
  %31 = phi ptr [ %32, %30 ], [ %1, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !4156, metadata !DIExpression()), !dbg !4164
  %32 = getelementptr inbounds i8, ptr %31, i64 1, !dbg !4206
  tail call void @llvm.dbg.value(metadata ptr %32, metadata !4156, metadata !DIExpression()), !dbg !4164
  %33 = load i8, ptr %32, align 1, !dbg !4207, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %33, metadata !4160, metadata !DIExpression()), !dbg !4164
  %34 = icmp eq i8 %33, 48, !dbg !4208
  br i1 %34, label %30, label %35, !dbg !4209, !llvm.loop !4210

35:                                               ; preds = %30
  %.lcssa29 = phi ptr [ %32, %30 ], !dbg !4206
  %.lcssa28 = phi i8 [ %33, %30 ], !dbg !4207
  tail call void @llvm.dbg.value(metadata i8 %.lcssa28, metadata !4160, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata i8 %.lcssa31, metadata !4159, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %.lcssa32, metadata !4150, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %.lcssa29, metadata !4156, metadata !DIExpression()), !dbg !4164
  %36 = zext i8 %.lcssa31 to i32, !dbg !4212
  %37 = icmp eq i8 %.lcssa31, %.lcssa28, !dbg !4213
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !4186, metadata !DIExpression()), !dbg !4214
  %38 = add nsw i32 %36, -48
  %39 = icmp ult i32 %38, 10
  %40 = select i1 %37, i1 %39, i1 false, !dbg !4216
  br i1 %40, label %.preheader3, label %53, !dbg !4216

.preheader3:                                      ; preds = %35
  br label %41, !dbg !4217

41:                                               ; preds = %.preheader3, %41
  %42 = phi ptr [ %44, %41 ], [ %.lcssa32, %.preheader3 ]
  %43 = phi ptr [ %46, %41 ], [ %.lcssa29, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata ptr %43, metadata !4156, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4150, metadata !DIExpression()), !dbg !4164
  %44 = getelementptr inbounds i8, ptr %42, i64 1, !dbg !4218
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !4150, metadata !DIExpression()), !dbg !4164
  %45 = load i8, ptr %44, align 1, !dbg !4220, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %45, metadata !4159, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %43, metadata !4156, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4164
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4160, metadata !DIExpression()), !dbg !4164
  %46 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !4221
  tail call void @llvm.dbg.value(metadata ptr %46, metadata !4156, metadata !DIExpression()), !dbg !4164
  %47 = load i8, ptr %46, align 1, !dbg !4222, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %47, metadata !4160, metadata !DIExpression()), !dbg !4164
  %48 = zext i8 %45 to i32, !dbg !4212
  %49 = icmp eq i8 %45, %47, !dbg !4213
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !4186, metadata !DIExpression()), !dbg !4214
  %50 = add nsw i32 %48, -48
  %51 = icmp ult i32 %50, 10
  %52 = select i1 %49, i1 %51, i1 false, !dbg !4216
  br i1 %52, label %41, label %.loopexit4, !dbg !4216, !llvm.loop !4223

.loopexit4:                                       ; preds = %41
  %.lcssa27 = phi ptr [ %44, %41 ], !dbg !4218
  %.lcssa26 = phi ptr [ %46, %41 ], !dbg !4221
  %.lcssa25 = phi i8 [ %47, %41 ], !dbg !4222
  %.lcssa24 = phi i32 [ %48, %41 ], !dbg !4212
  %.lcssa23 = phi i32 [ %50, %41 ]
  br label %53, !dbg !4225

53:                                               ; preds = %.loopexit4, %35
  %54 = phi i32 [ %38, %35 ], [ %.lcssa23, %.loopexit4 ], !dbg !4226
  %55 = phi ptr [ %.lcssa29, %35 ], [ %.lcssa26, %.loopexit4 ], !dbg !4230
  %56 = phi ptr [ %.lcssa32, %35 ], [ %.lcssa27, %.loopexit4 ], !dbg !4230
  %57 = phi i8 [ %.lcssa28, %35 ], [ %.lcssa25, %.loopexit4 ], !dbg !4230
  %58 = phi i32 [ %36, %35 ], [ %.lcssa24, %.loopexit4 ], !dbg !4212
  %59 = zext i8 %57 to i32, !dbg !4225
  %60 = sub nsw i32 %59, %58, !dbg !4231
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !4161, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4162, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4159, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %56, metadata !4150, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !4186, metadata !DIExpression()), !dbg !4232
  %61 = icmp ult i32 %54, 10, !dbg !4226
  br i1 %61, label %.preheader1, label %62, !dbg !4233

.preheader1:                                      ; preds = %53
  br label %66, !dbg !4233

.loopexit2:                                       ; preds = %66
  %.lcssa22 = phi i64 [ %71, %66 ], !dbg !4234
  br label %62, !dbg !4235

62:                                               ; preds = %.loopexit2, %53
  %63 = phi i64 [ 0, %53 ], [ %.lcssa22, %.loopexit2 ], !dbg !4239
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4163, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata i8 %57, metadata !4160, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !4156, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !4186, metadata !DIExpression()), !dbg !4240
  %64 = add nsw i32 %59, -48, !dbg !4235
  %65 = icmp ult i32 %64, 10, !dbg !4235
  br i1 %65, label %.preheader, label %84, !dbg !4241

.preheader:                                       ; preds = %62
  br label %75, !dbg !4241

66:                                               ; preds = %.preheader1, %66
  %67 = phi i64 [ %71, %66 ], [ 0, %.preheader1 ]
  %68 = phi ptr [ %69, %66 ], [ %56, %.preheader1 ]
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !4162, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %68, metadata !4150, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4164
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4159, metadata !DIExpression()), !dbg !4164
  %69 = getelementptr inbounds i8, ptr %68, i64 1, !dbg !4242
  tail call void @llvm.dbg.value(metadata ptr %69, metadata !4150, metadata !DIExpression()), !dbg !4164
  %70 = load i8, ptr %69, align 1, !dbg !4243, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %70, metadata !4159, metadata !DIExpression()), !dbg !4164
  %71 = add i64 %67, 1, !dbg !4234
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !4162, metadata !DIExpression()), !dbg !4164
  %72 = zext i8 %70 to i32, !dbg !4244
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !4186, metadata !DIExpression()), !dbg !4232
  %73 = add nsw i32 %72, -48, !dbg !4226
  %74 = icmp ult i32 %73, 10, !dbg !4226
  br i1 %74, label %66, label %.loopexit2, !dbg !4233, !llvm.loop !4245

75:                                               ; preds = %.preheader, %75
  %76 = phi i64 [ %80, %75 ], [ 0, %.preheader ]
  %77 = phi ptr [ %78, %75 ], [ %55, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %76, metadata !4163, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %77, metadata !4156, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4164
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4160, metadata !DIExpression()), !dbg !4164
  %78 = getelementptr inbounds i8, ptr %77, i64 1, !dbg !4247
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !4156, metadata !DIExpression()), !dbg !4164
  %79 = load i8, ptr %78, align 1, !dbg !4248, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %79, metadata !4160, metadata !DIExpression()), !dbg !4164
  %80 = add i64 %76, 1, !dbg !4249
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !4163, metadata !DIExpression()), !dbg !4164
  %81 = zext i8 %79 to i32, !dbg !4250
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !4186, metadata !DIExpression()), !dbg !4240
  %82 = add nsw i32 %81, -48, !dbg !4235
  %83 = icmp ult i32 %82, 10, !dbg !4235
  br i1 %83, label %75, label %.loopexit, !dbg !4241, !llvm.loop !4251

.loopexit:                                        ; preds = %75
  %.lcssa = phi i64 [ %80, %75 ], !dbg !4249
  br label %84, !dbg !4253

84:                                               ; preds = %.loopexit, %62
  %85 = phi i64 [ 0, %62 ], [ %.lcssa, %.loopexit ], !dbg !4255
  %86 = icmp eq i64 %63, %85, !dbg !4253
  br i1 %86, label %90, label %87, !dbg !4256

87:                                               ; preds = %84
  %88 = icmp ult i64 %63, %85, !dbg !4257
  %89 = select i1 %88, i32 1, i32 -1, !dbg !4258
  br label %193, !dbg !4259

90:                                               ; preds = %84
  %91 = icmp eq i64 %63, 0, !dbg !4260
  %92 = select i1 %91, i32 0, i32 %60, !dbg !4230
  br label %193, !dbg !4230

93:                                               ; preds = %2
  %94 = icmp eq i8 %4, 45, !dbg !4262
  br i1 %94, label %.preheader11, label %95, !dbg !4264

.preheader11:                                     ; preds = %93
  br label %97, !dbg !4265

95:                                               ; preds = %93
  tail call void @llvm.dbg.value(metadata i8 %3, metadata !4159, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4150, metadata !DIExpression()), !dbg !4164
  %96 = icmp eq i8 %3, 48, !dbg !4267
  br i1 %96, label %.preheader20, label %119, !dbg !4269

.preheader20:                                     ; preds = %95
  br label %123, !dbg !4269

97:                                               ; preds = %.preheader11, %97
  %98 = phi ptr [ %99, %97 ], [ %1, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %98, metadata !4156, metadata !DIExpression()), !dbg !4164
  %99 = getelementptr inbounds i8, ptr %98, i64 1, !dbg !4270
  tail call void @llvm.dbg.value(metadata ptr %99, metadata !4156, metadata !DIExpression()), !dbg !4164
  %100 = load i8, ptr %99, align 1, !dbg !4271, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !4160, metadata !DIExpression()), !dbg !4164
  %101 = icmp eq i8 %100, 48, !dbg !4272
  br i1 %101, label %97, label %102, !dbg !4273, !llvm.loop !4274

102:                                              ; preds = %97
  %.lcssa34 = phi i8 [ %100, %97 ], !dbg !4271
  tail call void @llvm.dbg.value(metadata i8 %.lcssa34, metadata !4160, metadata !DIExpression()), !dbg !4164
  %103 = zext i8 %.lcssa34 to i32, !dbg !4276
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !4186, metadata !DIExpression()), !dbg !4278
  %104 = add nsw i32 %103, -48, !dbg !4280
  %105 = icmp ult i32 %104, 10, !dbg !4280
  br i1 %105, label %193, label %106, !dbg !4281

106:                                              ; preds = %102
  tail call void @llvm.dbg.value(metadata i8 %3, metadata !4159, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4150, metadata !DIExpression()), !dbg !4164
  %107 = icmp eq i8 %3, 48, !dbg !4282
  br i1 %107, label %.preheader9, label %113, !dbg !4283

.preheader9:                                      ; preds = %106
  br label %108, !dbg !4283

108:                                              ; preds = %.preheader9, %108
  %109 = phi ptr [ %110, %108 ], [ %0, %.preheader9 ]
  tail call void @llvm.dbg.value(metadata ptr %109, metadata !4150, metadata !DIExpression()), !dbg !4164
  %110 = getelementptr inbounds i8, ptr %109, i64 1, !dbg !4284
  tail call void @llvm.dbg.value(metadata ptr %110, metadata !4150, metadata !DIExpression()), !dbg !4164
  %111 = load i8, ptr %110, align 1, !dbg !4285, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %111, metadata !4159, metadata !DIExpression()), !dbg !4164
  %112 = icmp eq i8 %111, 48, !dbg !4282
  br i1 %112, label %108, label %.loopexit10, !dbg !4283, !llvm.loop !4286

.loopexit10:                                      ; preds = %108
  %.lcssa33 = phi i8 [ %111, %108 ], !dbg !4285
  br label %113, !dbg !4288

113:                                              ; preds = %.loopexit10, %106
  %114 = phi i8 [ %3, %106 ], [ %.lcssa33, %.loopexit10 ], !dbg !4164
  tail call void @llvm.dbg.value(metadata i8 %114, metadata !4159, metadata !DIExpression()), !dbg !4164
  %115 = zext i8 %114 to i32, !dbg !4288
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !4186, metadata !DIExpression()), !dbg !4289
  %116 = add nsw i32 %115, -48, !dbg !4291
  %117 = icmp ult i32 %116, 10, !dbg !4291
  %118 = zext i1 %117 to i32, !dbg !4292
  br label %193, !dbg !4293

.loopexit21:                                      ; preds = %123
  %.lcssa45 = phi ptr [ %125, %123 ], !dbg !4294
  %.lcssa44 = phi i8 [ %126, %123 ], !dbg !4295
  br label %119, !dbg !4296

119:                                              ; preds = %.loopexit21, %95
  %120 = phi ptr [ %0, %95 ], [ %.lcssa45, %.loopexit21 ]
  %121 = phi i8 [ %3, %95 ], [ %.lcssa44, %.loopexit21 ], !dbg !4164
  tail call void @llvm.dbg.value(metadata i8 %4, metadata !4160, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4156, metadata !DIExpression()), !dbg !4164
  %122 = icmp eq i8 %4, 48, !dbg !4296
  br i1 %122, label %.preheader18, label %128, !dbg !4297

.preheader18:                                     ; preds = %119
  br label %136, !dbg !4297

123:                                              ; preds = %.preheader20, %123
  %124 = phi ptr [ %125, %123 ], [ %0, %.preheader20 ]
  tail call void @llvm.dbg.value(metadata ptr %124, metadata !4150, metadata !DIExpression()), !dbg !4164
  %125 = getelementptr inbounds i8, ptr %124, i64 1, !dbg !4294
  tail call void @llvm.dbg.value(metadata ptr %125, metadata !4150, metadata !DIExpression()), !dbg !4164
  %126 = load i8, ptr %125, align 1, !dbg !4295, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %126, metadata !4159, metadata !DIExpression()), !dbg !4164
  %127 = icmp eq i8 %126, 48, !dbg !4267
  br i1 %127, label %123, label %.loopexit21, !dbg !4269, !llvm.loop !4298

.loopexit19:                                      ; preds = %136
  %.lcssa43 = phi ptr [ %138, %136 ], !dbg !4300
  %.lcssa42 = phi i8 [ %139, %136 ], !dbg !4301
  br label %128, !dbg !4302

128:                                              ; preds = %.loopexit19, %119
  %129 = phi ptr [ %1, %119 ], [ %.lcssa43, %.loopexit19 ]
  %130 = phi i8 [ %4, %119 ], [ %.lcssa42, %.loopexit19 ], !dbg !4164
  tail call void @llvm.dbg.value(metadata i8 %130, metadata !4160, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !4159, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %120, metadata !4150, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %129, metadata !4156, metadata !DIExpression()), !dbg !4164
  %131 = zext i8 %121 to i32, !dbg !4302
  %132 = icmp eq i8 %121, %130, !dbg !4303
  tail call void @llvm.dbg.value(metadata i32 %131, metadata !4186, metadata !DIExpression()), !dbg !4304
  %133 = add nsw i32 %131, -48
  %134 = icmp ult i32 %133, 10
  %135 = select i1 %132, i1 %134, i1 false, !dbg !4306
  br i1 %135, label %.preheader16, label %153, !dbg !4306

.preheader16:                                     ; preds = %128
  br label %141, !dbg !4307

136:                                              ; preds = %.preheader18, %136
  %137 = phi ptr [ %138, %136 ], [ %1, %.preheader18 ]
  tail call void @llvm.dbg.value(metadata ptr %137, metadata !4156, metadata !DIExpression()), !dbg !4164
  %138 = getelementptr inbounds i8, ptr %137, i64 1, !dbg !4300
  tail call void @llvm.dbg.value(metadata ptr %138, metadata !4156, metadata !DIExpression()), !dbg !4164
  %139 = load i8, ptr %138, align 1, !dbg !4301, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %139, metadata !4160, metadata !DIExpression()), !dbg !4164
  %140 = icmp eq i8 %139, 48, !dbg !4296
  br i1 %140, label %136, label %.loopexit19, !dbg !4297, !llvm.loop !4308

141:                                              ; preds = %.preheader16, %141
  %142 = phi ptr [ %144, %141 ], [ %120, %.preheader16 ]
  %143 = phi ptr [ %146, %141 ], [ %129, %.preheader16 ]
  tail call void @llvm.dbg.value(metadata ptr %143, metadata !4156, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %142, metadata !4150, metadata !DIExpression()), !dbg !4164
  %144 = getelementptr inbounds i8, ptr %142, i64 1, !dbg !4310
  tail call void @llvm.dbg.value(metadata ptr %144, metadata !4150, metadata !DIExpression()), !dbg !4164
  %145 = load i8, ptr %144, align 1, !dbg !4312, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %145, metadata !4159, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %143, metadata !4156, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4164
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4160, metadata !DIExpression()), !dbg !4164
  %146 = getelementptr inbounds i8, ptr %143, i64 1, !dbg !4313
  tail call void @llvm.dbg.value(metadata ptr %146, metadata !4156, metadata !DIExpression()), !dbg !4164
  %147 = load i8, ptr %146, align 1, !dbg !4314, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %147, metadata !4160, metadata !DIExpression()), !dbg !4164
  %148 = zext i8 %145 to i32, !dbg !4302
  %149 = icmp eq i8 %145, %147, !dbg !4303
  tail call void @llvm.dbg.value(metadata i32 %148, metadata !4186, metadata !DIExpression()), !dbg !4304
  %150 = add nsw i32 %148, -48
  %151 = icmp ult i32 %150, 10
  %152 = select i1 %149, i1 %151, i1 false, !dbg !4306
  br i1 %152, label %141, label %.loopexit17, !dbg !4306, !llvm.loop !4315

.loopexit17:                                      ; preds = %141
  %.lcssa41 = phi ptr [ %144, %141 ], !dbg !4310
  %.lcssa40 = phi ptr [ %146, %141 ], !dbg !4313
  %.lcssa39 = phi i8 [ %147, %141 ], !dbg !4314
  %.lcssa38 = phi i32 [ %148, %141 ], !dbg !4302
  %.lcssa37 = phi i32 [ %150, %141 ]
  br label %153, !dbg !4317

153:                                              ; preds = %.loopexit17, %128
  %154 = phi i32 [ %133, %128 ], [ %.lcssa37, %.loopexit17 ], !dbg !4318
  %155 = phi ptr [ %129, %128 ], [ %.lcssa40, %.loopexit17 ]
  %156 = phi ptr [ %120, %128 ], [ %.lcssa41, %.loopexit17 ]
  %157 = phi i8 [ %130, %128 ], [ %.lcssa39, %.loopexit17 ], !dbg !4164
  %158 = phi i32 [ %131, %128 ], [ %.lcssa38, %.loopexit17 ], !dbg !4302
  %159 = zext i8 %157 to i32, !dbg !4317
  %160 = sub nsw i32 %158, %159, !dbg !4322
  tail call void @llvm.dbg.value(metadata i32 %160, metadata !4161, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4162, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4159, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %156, metadata !4150, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !4186, metadata !DIExpression()), !dbg !4323
  %161 = icmp ult i32 %154, 10, !dbg !4318
  br i1 %161, label %.preheader14, label %162, !dbg !4324

.preheader14:                                     ; preds = %153
  br label %166, !dbg !4324

.loopexit15:                                      ; preds = %166
  %.lcssa36 = phi i64 [ %171, %166 ], !dbg !4325
  br label %162, !dbg !4326

162:                                              ; preds = %.loopexit15, %153
  %163 = phi i64 [ 0, %153 ], [ %.lcssa36, %.loopexit15 ], !dbg !4330
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4163, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata i8 %157, metadata !4160, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %155, metadata !4156, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata i32 %159, metadata !4186, metadata !DIExpression()), !dbg !4331
  %164 = add nsw i32 %159, -48, !dbg !4326
  %165 = icmp ult i32 %164, 10, !dbg !4326
  br i1 %165, label %.preheader12, label %184, !dbg !4332

.preheader12:                                     ; preds = %162
  br label %175, !dbg !4332

166:                                              ; preds = %.preheader14, %166
  %167 = phi i64 [ %171, %166 ], [ 0, %.preheader14 ]
  %168 = phi ptr [ %169, %166 ], [ %156, %.preheader14 ]
  tail call void @llvm.dbg.value(metadata i64 %167, metadata !4162, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %168, metadata !4150, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4164
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4159, metadata !DIExpression()), !dbg !4164
  %169 = getelementptr inbounds i8, ptr %168, i64 1, !dbg !4333
  tail call void @llvm.dbg.value(metadata ptr %169, metadata !4150, metadata !DIExpression()), !dbg !4164
  %170 = load i8, ptr %169, align 1, !dbg !4334, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %170, metadata !4159, metadata !DIExpression()), !dbg !4164
  %171 = add i64 %167, 1, !dbg !4325
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !4162, metadata !DIExpression()), !dbg !4164
  %172 = zext i8 %170 to i32, !dbg !4335
  tail call void @llvm.dbg.value(metadata i32 %172, metadata !4186, metadata !DIExpression()), !dbg !4323
  %173 = add nsw i32 %172, -48, !dbg !4318
  %174 = icmp ult i32 %173, 10, !dbg !4318
  br i1 %174, label %166, label %.loopexit15, !dbg !4324, !llvm.loop !4336

175:                                              ; preds = %.preheader12, %175
  %176 = phi i64 [ %180, %175 ], [ 0, %.preheader12 ]
  %177 = phi ptr [ %178, %175 ], [ %155, %.preheader12 ]
  tail call void @llvm.dbg.value(metadata i64 %176, metadata !4163, metadata !DIExpression()), !dbg !4164
  tail call void @llvm.dbg.value(metadata ptr %177, metadata !4156, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4164
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4160, metadata !DIExpression()), !dbg !4164
  %178 = getelementptr inbounds i8, ptr %177, i64 1, !dbg !4338
  tail call void @llvm.dbg.value(metadata ptr %178, metadata !4156, metadata !DIExpression()), !dbg !4164
  %179 = load i8, ptr %178, align 1, !dbg !4339, !tbaa !1109
  tail call void @llvm.dbg.value(metadata i8 %179, metadata !4160, metadata !DIExpression()), !dbg !4164
  %180 = add i64 %176, 1, !dbg !4340
  tail call void @llvm.dbg.value(metadata i64 %180, metadata !4163, metadata !DIExpression()), !dbg !4164
  %181 = zext i8 %179 to i32, !dbg !4341
  tail call void @llvm.dbg.value(metadata i32 %181, metadata !4186, metadata !DIExpression()), !dbg !4331
  %182 = add nsw i32 %181, -48, !dbg !4326
  %183 = icmp ult i32 %182, 10, !dbg !4326
  br i1 %183, label %175, label %.loopexit13, !dbg !4332, !llvm.loop !4342

.loopexit13:                                      ; preds = %175
  %.lcssa35 = phi i64 [ %180, %175 ], !dbg !4340
  br label %184, !dbg !4344

184:                                              ; preds = %.loopexit13, %162
  %185 = phi i64 [ 0, %162 ], [ %.lcssa35, %.loopexit13 ], !dbg !4346
  %186 = icmp eq i64 %163, %185, !dbg !4344
  br i1 %186, label %190, label %187, !dbg !4347

187:                                              ; preds = %184
  %188 = icmp ult i64 %163, %185, !dbg !4348
  %189 = select i1 %188, i32 -1, i32 1, !dbg !4349
  br label %193, !dbg !4350

190:                                              ; preds = %184
  %191 = icmp eq i64 %163, 0, !dbg !4351
  %192 = select i1 %191, i32 0, i32 %160, !dbg !4353
  br label %193, !dbg !4353

193:                                              ; preds = %13, %24, %87, %90, %102, %113, %187, %190
  %194 = phi i32 [ %29, %24 ], [ %89, %87 ], [ %118, %113 ], [ %189, %187 ], [ -1, %13 ], [ %92, %90 ], [ 1, %102 ], [ %192, %190 ], !dbg !4354
  ret i32 %194, !dbg !4355
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4356 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4395, metadata !DIExpression()), !dbg !4401
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4396, metadata !DIExpression()), !dbg !4401
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4397, metadata !DIExpression()), !dbg !4401
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4398, metadata !DIExpression()), !dbg !4401
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4399, metadata !DIExpression()), !dbg !4401
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4400, metadata !DIExpression()), !dbg !4401
  %7 = icmp eq ptr %1, null, !dbg !4402
  br i1 %7, label %10, label %8, !dbg !4404

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.147, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !4405
  br label %12, !dbg !4405

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.148, ptr noundef %2, ptr noundef %3) #40, !dbg !4406
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.3.150, i32 noundef 5) #40, !dbg !4407
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !4407
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.151, ptr noundef %0), !dbg !4408
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.5.152, i32 noundef 5) #40, !dbg !4409
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.153) #40, !dbg !4409
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.151, ptr noundef %0), !dbg !4410
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
  ], !dbg !4411

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.7.154, i32 noundef 5) #40, !dbg !4412
  %21 = load ptr, ptr %4, align 8, !dbg !4412, !tbaa !1000
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !4412
  br label %147, !dbg !4414

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.8.155, i32 noundef 5) #40, !dbg !4415
  %25 = load ptr, ptr %4, align 8, !dbg !4415, !tbaa !1000
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4415
  %27 = load ptr, ptr %26, align 8, !dbg !4415, !tbaa !1000
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !4415
  br label %147, !dbg !4416

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.9.156, i32 noundef 5) #40, !dbg !4417
  %31 = load ptr, ptr %4, align 8, !dbg !4417, !tbaa !1000
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4417
  %33 = load ptr, ptr %32, align 8, !dbg !4417, !tbaa !1000
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4417
  %35 = load ptr, ptr %34, align 8, !dbg !4417, !tbaa !1000
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !4417
  br label %147, !dbg !4418

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.10.157, i32 noundef 5) #40, !dbg !4419
  %39 = load ptr, ptr %4, align 8, !dbg !4419, !tbaa !1000
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4419
  %41 = load ptr, ptr %40, align 8, !dbg !4419, !tbaa !1000
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4419
  %43 = load ptr, ptr %42, align 8, !dbg !4419, !tbaa !1000
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4419
  %45 = load ptr, ptr %44, align 8, !dbg !4419, !tbaa !1000
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !4419
  br label %147, !dbg !4420

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.11.158, i32 noundef 5) #40, !dbg !4421
  %49 = load ptr, ptr %4, align 8, !dbg !4421, !tbaa !1000
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4421
  %51 = load ptr, ptr %50, align 8, !dbg !4421, !tbaa !1000
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4421
  %53 = load ptr, ptr %52, align 8, !dbg !4421, !tbaa !1000
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4421
  %55 = load ptr, ptr %54, align 8, !dbg !4421, !tbaa !1000
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4421
  %57 = load ptr, ptr %56, align 8, !dbg !4421, !tbaa !1000
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !4421
  br label %147, !dbg !4422

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.12.159, i32 noundef 5) #40, !dbg !4423
  %61 = load ptr, ptr %4, align 8, !dbg !4423, !tbaa !1000
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4423
  %63 = load ptr, ptr %62, align 8, !dbg !4423, !tbaa !1000
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4423
  %65 = load ptr, ptr %64, align 8, !dbg !4423, !tbaa !1000
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4423
  %67 = load ptr, ptr %66, align 8, !dbg !4423, !tbaa !1000
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4423
  %69 = load ptr, ptr %68, align 8, !dbg !4423, !tbaa !1000
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4423
  %71 = load ptr, ptr %70, align 8, !dbg !4423, !tbaa !1000
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !4423
  br label %147, !dbg !4424

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.13.160, i32 noundef 5) #40, !dbg !4425
  %75 = load ptr, ptr %4, align 8, !dbg !4425, !tbaa !1000
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4425
  %77 = load ptr, ptr %76, align 8, !dbg !4425, !tbaa !1000
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4425
  %79 = load ptr, ptr %78, align 8, !dbg !4425, !tbaa !1000
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4425
  %81 = load ptr, ptr %80, align 8, !dbg !4425, !tbaa !1000
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4425
  %83 = load ptr, ptr %82, align 8, !dbg !4425, !tbaa !1000
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4425
  %85 = load ptr, ptr %84, align 8, !dbg !4425, !tbaa !1000
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4425
  %87 = load ptr, ptr %86, align 8, !dbg !4425, !tbaa !1000
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !4425
  br label %147, !dbg !4426

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.14.161, i32 noundef 5) #40, !dbg !4427
  %91 = load ptr, ptr %4, align 8, !dbg !4427, !tbaa !1000
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4427
  %93 = load ptr, ptr %92, align 8, !dbg !4427, !tbaa !1000
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4427
  %95 = load ptr, ptr %94, align 8, !dbg !4427, !tbaa !1000
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4427
  %97 = load ptr, ptr %96, align 8, !dbg !4427, !tbaa !1000
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4427
  %99 = load ptr, ptr %98, align 8, !dbg !4427, !tbaa !1000
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4427
  %101 = load ptr, ptr %100, align 8, !dbg !4427, !tbaa !1000
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4427
  %103 = load ptr, ptr %102, align 8, !dbg !4427, !tbaa !1000
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4427
  %105 = load ptr, ptr %104, align 8, !dbg !4427, !tbaa !1000
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !4427
  br label %147, !dbg !4428

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.15.162, i32 noundef 5) #40, !dbg !4429
  %109 = load ptr, ptr %4, align 8, !dbg !4429, !tbaa !1000
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4429
  %111 = load ptr, ptr %110, align 8, !dbg !4429, !tbaa !1000
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4429
  %113 = load ptr, ptr %112, align 8, !dbg !4429, !tbaa !1000
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4429
  %115 = load ptr, ptr %114, align 8, !dbg !4429, !tbaa !1000
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4429
  %117 = load ptr, ptr %116, align 8, !dbg !4429, !tbaa !1000
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4429
  %119 = load ptr, ptr %118, align 8, !dbg !4429, !tbaa !1000
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4429
  %121 = load ptr, ptr %120, align 8, !dbg !4429, !tbaa !1000
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4429
  %123 = load ptr, ptr %122, align 8, !dbg !4429, !tbaa !1000
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4429
  %125 = load ptr, ptr %124, align 8, !dbg !4429, !tbaa !1000
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !4429
  br label %147, !dbg !4430

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.16.163, i32 noundef 5) #40, !dbg !4431
  %129 = load ptr, ptr %4, align 8, !dbg !4431, !tbaa !1000
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4431
  %131 = load ptr, ptr %130, align 8, !dbg !4431, !tbaa !1000
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4431
  %133 = load ptr, ptr %132, align 8, !dbg !4431, !tbaa !1000
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4431
  %135 = load ptr, ptr %134, align 8, !dbg !4431, !tbaa !1000
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4431
  %137 = load ptr, ptr %136, align 8, !dbg !4431, !tbaa !1000
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4431
  %139 = load ptr, ptr %138, align 8, !dbg !4431, !tbaa !1000
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4431
  %141 = load ptr, ptr %140, align 8, !dbg !4431, !tbaa !1000
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4431
  %143 = load ptr, ptr %142, align 8, !dbg !4431, !tbaa !1000
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4431
  %145 = load ptr, ptr %144, align 8, !dbg !4431, !tbaa !1000
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !4431
  br label %147, !dbg !4432

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4433
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4434 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4438, metadata !DIExpression()), !dbg !4444
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4439, metadata !DIExpression()), !dbg !4444
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4440, metadata !DIExpression()), !dbg !4444
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4441, metadata !DIExpression()), !dbg !4444
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4442, metadata !DIExpression()), !dbg !4444
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4443, metadata !DIExpression()), !dbg !4444
  br label %6, !dbg !4445

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4447
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4443, metadata !DIExpression()), !dbg !4444
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4448
  %9 = load ptr, ptr %8, align 8, !dbg !4448, !tbaa !1000
  %10 = icmp eq ptr %9, null, !dbg !4450
  %11 = add i64 %7, 1, !dbg !4451
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4443, metadata !DIExpression()), !dbg !4444
  br i1 %10, label %12, label %6, !dbg !4450, !llvm.loop !4452

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !4447
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !4454
  ret void, !dbg !4455
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4456 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !4478
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4476, metadata !DIExpression(), metadata !4478, metadata ptr %6, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4470, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4471, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4472, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4473, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4474, metadata !DIExpression(DW_OP_deref)), !dbg !4479
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !4480
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4475, metadata !DIExpression()), !dbg !4479
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4475, metadata !DIExpression()), !dbg !4479
  %10 = icmp sgt i32 %9, -1, !dbg !4481
  br i1 %10, label %18, label %11, !dbg !4481

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4481
  store i32 %12, ptr %7, align 8, !dbg !4481
  %13 = icmp ult i32 %9, -7, !dbg !4481
  br i1 %13, label %14, label %18, !dbg !4481

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4481
  %16 = sext i32 %9 to i64, !dbg !4481
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4481
  br label %22, !dbg !4481

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4481
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4481
  store ptr %21, ptr %4, align 8, !dbg !4481
  br label %22, !dbg !4481

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4481
  %25 = load ptr, ptr %24, align 8, !dbg !4481
  store ptr %25, ptr %6, align 8, !dbg !4484, !tbaa !1000
  %26 = icmp eq ptr %25, null, !dbg !4485
  br i1 %26, label %197, label %27, !dbg !4486

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4475, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4475, metadata !DIExpression()), !dbg !4479
  %28 = icmp sgt i32 %23, -1, !dbg !4481
  br i1 %28, label %36, label %29, !dbg !4481

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4481
  store i32 %30, ptr %7, align 8, !dbg !4481
  %31 = icmp ult i32 %23, -7, !dbg !4481
  br i1 %31, label %32, label %36, !dbg !4481

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4481
  %34 = sext i32 %23 to i64, !dbg !4481
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4481
  br label %40, !dbg !4481

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4481
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4481
  store ptr %39, ptr %4, align 8, !dbg !4481
  br label %40, !dbg !4481

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4481
  %43 = load ptr, ptr %42, align 8, !dbg !4481
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4487
  store ptr %43, ptr %44, align 8, !dbg !4484, !tbaa !1000
  %45 = icmp eq ptr %43, null, !dbg !4485
  br i1 %45, label %197, label %46, !dbg !4486

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4475, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4475, metadata !DIExpression()), !dbg !4479
  %47 = icmp sgt i32 %41, -1, !dbg !4481
  br i1 %47, label %55, label %48, !dbg !4481

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4481
  store i32 %49, ptr %7, align 8, !dbg !4481
  %50 = icmp ult i32 %41, -7, !dbg !4481
  br i1 %50, label %51, label %55, !dbg !4481

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4481
  %53 = sext i32 %41 to i64, !dbg !4481
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4481
  br label %59, !dbg !4481

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4481
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4481
  store ptr %58, ptr %4, align 8, !dbg !4481
  br label %59, !dbg !4481

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4481
  %62 = load ptr, ptr %61, align 8, !dbg !4481
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4487
  store ptr %62, ptr %63, align 8, !dbg !4484, !tbaa !1000
  %64 = icmp eq ptr %62, null, !dbg !4485
  br i1 %64, label %197, label %65, !dbg !4486

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4475, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4475, metadata !DIExpression()), !dbg !4479
  %66 = icmp sgt i32 %60, -1, !dbg !4481
  br i1 %66, label %74, label %67, !dbg !4481

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4481
  store i32 %68, ptr %7, align 8, !dbg !4481
  %69 = icmp ult i32 %60, -7, !dbg !4481
  br i1 %69, label %70, label %74, !dbg !4481

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4481
  %72 = sext i32 %60 to i64, !dbg !4481
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4481
  br label %78, !dbg !4481

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4481
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4481
  store ptr %77, ptr %4, align 8, !dbg !4481
  br label %78, !dbg !4481

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4481
  %81 = load ptr, ptr %80, align 8, !dbg !4481
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4487
  store ptr %81, ptr %82, align 8, !dbg !4484, !tbaa !1000
  %83 = icmp eq ptr %81, null, !dbg !4485
  br i1 %83, label %197, label %84, !dbg !4486

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4475, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4475, metadata !DIExpression()), !dbg !4479
  %85 = icmp sgt i32 %79, -1, !dbg !4481
  br i1 %85, label %93, label %86, !dbg !4481

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4481
  store i32 %87, ptr %7, align 8, !dbg !4481
  %88 = icmp ult i32 %79, -7, !dbg !4481
  br i1 %88, label %89, label %93, !dbg !4481

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4481
  %91 = sext i32 %79 to i64, !dbg !4481
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4481
  br label %97, !dbg !4481

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4481
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4481
  store ptr %96, ptr %4, align 8, !dbg !4481
  br label %97, !dbg !4481

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4481
  %100 = load ptr, ptr %99, align 8, !dbg !4481
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4487
  store ptr %100, ptr %101, align 8, !dbg !4484, !tbaa !1000
  %102 = icmp eq ptr %100, null, !dbg !4485
  br i1 %102, label %197, label %103, !dbg !4486

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4475, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4475, metadata !DIExpression()), !dbg !4479
  %104 = icmp sgt i32 %98, -1, !dbg !4481
  br i1 %104, label %112, label %105, !dbg !4481

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4481
  store i32 %106, ptr %7, align 8, !dbg !4481
  %107 = icmp ult i32 %98, -7, !dbg !4481
  br i1 %107, label %108, label %112, !dbg !4481

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4481
  %110 = sext i32 %98 to i64, !dbg !4481
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4481
  br label %116, !dbg !4481

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4481
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4481
  store ptr %115, ptr %4, align 8, !dbg !4481
  br label %116, !dbg !4481

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4481
  %119 = load ptr, ptr %118, align 8, !dbg !4481
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4487
  store ptr %119, ptr %120, align 8, !dbg !4484, !tbaa !1000
  %121 = icmp eq ptr %119, null, !dbg !4485
  br i1 %121, label %197, label %122, !dbg !4486

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4475, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4475, metadata !DIExpression()), !dbg !4479
  %123 = icmp sgt i32 %117, -1, !dbg !4481
  br i1 %123, label %131, label %124, !dbg !4481

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4481
  store i32 %125, ptr %7, align 8, !dbg !4481
  %126 = icmp ult i32 %117, -7, !dbg !4481
  br i1 %126, label %127, label %131, !dbg !4481

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4481
  %129 = sext i32 %117 to i64, !dbg !4481
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4481
  br label %135, !dbg !4481

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4481
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4481
  store ptr %134, ptr %4, align 8, !dbg !4481
  br label %135, !dbg !4481

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4481
  %138 = load ptr, ptr %137, align 8, !dbg !4481
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4487
  store ptr %138, ptr %139, align 8, !dbg !4484, !tbaa !1000
  %140 = icmp eq ptr %138, null, !dbg !4485
  br i1 %140, label %197, label %141, !dbg !4486

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4475, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4475, metadata !DIExpression()), !dbg !4479
  %142 = icmp sgt i32 %136, -1, !dbg !4481
  br i1 %142, label %150, label %143, !dbg !4481

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4481
  store i32 %144, ptr %7, align 8, !dbg !4481
  %145 = icmp ult i32 %136, -7, !dbg !4481
  br i1 %145, label %146, label %150, !dbg !4481

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4481
  %148 = sext i32 %136 to i64, !dbg !4481
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4481
  br label %154, !dbg !4481

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4481
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4481
  store ptr %153, ptr %4, align 8, !dbg !4481
  br label %154, !dbg !4481

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4481
  %157 = load ptr, ptr %156, align 8, !dbg !4481
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4487
  store ptr %157, ptr %158, align 8, !dbg !4484, !tbaa !1000
  %159 = icmp eq ptr %157, null, !dbg !4485
  br i1 %159, label %197, label %160, !dbg !4486

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4475, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4475, metadata !DIExpression()), !dbg !4479
  %161 = icmp sgt i32 %155, -1, !dbg !4481
  br i1 %161, label %169, label %162, !dbg !4481

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4481
  store i32 %163, ptr %7, align 8, !dbg !4481
  %164 = icmp ult i32 %155, -7, !dbg !4481
  br i1 %164, label %165, label %169, !dbg !4481

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4481
  %167 = sext i32 %155 to i64, !dbg !4481
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4481
  br label %173, !dbg !4481

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4481
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4481
  store ptr %172, ptr %4, align 8, !dbg !4481
  br label %173, !dbg !4481

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4481
  %176 = load ptr, ptr %175, align 8, !dbg !4481
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4487
  store ptr %176, ptr %177, align 8, !dbg !4484, !tbaa !1000
  %178 = icmp eq ptr %176, null, !dbg !4485
  br i1 %178, label %197, label %179, !dbg !4486

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4475, metadata !DIExpression()), !dbg !4479
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4475, metadata !DIExpression()), !dbg !4479
  %180 = icmp sgt i32 %174, -1, !dbg !4481
  br i1 %180, label %188, label %181, !dbg !4481

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4481
  store i32 %182, ptr %7, align 8, !dbg !4481
  %183 = icmp ult i32 %174, -7, !dbg !4481
  br i1 %183, label %184, label %188, !dbg !4481

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4481
  %186 = sext i32 %174 to i64, !dbg !4481
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4481
  br label %191, !dbg !4481

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4481
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4481
  store ptr %190, ptr %4, align 8, !dbg !4481
  br label %191, !dbg !4481

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4481
  %193 = load ptr, ptr %192, align 8, !dbg !4481
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4487
  store ptr %193, ptr %194, align 8, !dbg !4484, !tbaa !1000
  %195 = icmp eq ptr %193, null, !dbg !4485
  %196 = select i1 %195, i64 9, i64 10, !dbg !4486
  br label %197, !dbg !4486

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4488
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4489
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !4490
  ret void, !dbg !4490
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4491 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !4500
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4499, metadata !DIExpression(), metadata !4500, metadata ptr %5, metadata !DIExpression()), !dbg !4501
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4495, metadata !DIExpression()), !dbg !4501
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4496, metadata !DIExpression()), !dbg !4501
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4497, metadata !DIExpression()), !dbg !4501
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4498, metadata !DIExpression()), !dbg !4501
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !4502
  call void @llvm.va_start(ptr nonnull %5), !dbg !4503
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !4504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4504, !tbaa.struct !1338
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4504
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !4504
  call void @llvm.va_end(ptr nonnull %5), !dbg !4505
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !4506
  ret void, !dbg !4506
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4507 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4508, !tbaa !1000
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.151, ptr noundef %1), !dbg !4508
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.17.168, i32 noundef 5) #40, !dbg !4509
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.169) #40, !dbg !4509
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.19.170, i32 noundef 5) #40, !dbg !4510
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.171, ptr noundef nonnull @.str.21.172) #40, !dbg !4510
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.22.173, i32 noundef 5) #40, !dbg !4511
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.174) #40, !dbg !4511
  ret void, !dbg !4512
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4513 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4518, metadata !DIExpression()), !dbg !4521
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4519, metadata !DIExpression()), !dbg !4521
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4520, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.value(metadata i64 %1, metadata !4525, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.value(metadata i64 %2, metadata !4526, metadata !DIExpression()), !dbg !4527
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4529
  call void @llvm.dbg.value(metadata ptr %4, metadata !4530, metadata !DIExpression()), !dbg !4535
  %5 = icmp eq ptr %4, null, !dbg !4537
  br i1 %5, label %6, label %7, !dbg !4539

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4540
  unreachable, !dbg !4540

7:                                                ; preds = %3
  ret ptr %4, !dbg !4541
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4523 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4542
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4525, metadata !DIExpression()), !dbg !4542
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4526, metadata !DIExpression()), !dbg !4542
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4543
  call void @llvm.dbg.value(metadata ptr %4, metadata !4530, metadata !DIExpression()), !dbg !4544
  %5 = icmp eq ptr %4, null, !dbg !4546
  br i1 %5, label %6, label %7, !dbg !4547

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4548
  unreachable, !dbg !4548

7:                                                ; preds = %3
  ret ptr %4, !dbg !4549
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4550 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4554, metadata !DIExpression()), !dbg !4555
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4556
  call void @llvm.dbg.value(metadata ptr %2, metadata !4530, metadata !DIExpression()), !dbg !4557
  %3 = icmp eq ptr %2, null, !dbg !4559
  br i1 %3, label %4, label %5, !dbg !4560

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4561
  unreachable, !dbg !4561

5:                                                ; preds = %1
  ret ptr %2, !dbg !4562
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4563 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4564 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4568, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i64 %0, metadata !4570, metadata !DIExpression()), !dbg !4574
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4576
  call void @llvm.dbg.value(metadata ptr %2, metadata !4530, metadata !DIExpression()), !dbg !4577
  %3 = icmp eq ptr %2, null, !dbg !4579
  br i1 %3, label %4, label %5, !dbg !4580

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4581
  unreachable, !dbg !4581

5:                                                ; preds = %1
  ret ptr %2, !dbg !4582
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4583 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4587, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata i64 %0, metadata !4554, metadata !DIExpression()), !dbg !4589
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4591
  call void @llvm.dbg.value(metadata ptr %2, metadata !4530, metadata !DIExpression()), !dbg !4592
  %3 = icmp eq ptr %2, null, !dbg !4594
  br i1 %3, label %4, label %5, !dbg !4595

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4596
  unreachable, !dbg !4596

5:                                                ; preds = %1
  ret ptr %2, !dbg !4597
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4598 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4602, metadata !DIExpression()), !dbg !4604
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4603, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata ptr %0, metadata !4605, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata i64 %1, metadata !4609, metadata !DIExpression()), !dbg !4610
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4612
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4613
  call void @llvm.dbg.value(metadata ptr %4, metadata !4530, metadata !DIExpression()), !dbg !4614
  %5 = icmp eq ptr %4, null, !dbg !4616
  br i1 %5, label %6, label %7, !dbg !4617

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4618
  unreachable, !dbg !4618

7:                                                ; preds = %2
  ret ptr %4, !dbg !4619
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4620 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4621 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4625, metadata !DIExpression()), !dbg !4627
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4626, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata ptr %0, metadata !4628, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i64 %1, metadata !4631, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata ptr %0, metadata !4605, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata i64 %1, metadata !4609, metadata !DIExpression()), !dbg !4634
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4636
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4637
  call void @llvm.dbg.value(metadata ptr %4, metadata !4530, metadata !DIExpression()), !dbg !4638
  %5 = icmp eq ptr %4, null, !dbg !4640
  br i1 %5, label %6, label %7, !dbg !4641

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4642
  unreachable, !dbg !4642

7:                                                ; preds = %2
  ret ptr %4, !dbg !4643
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4644 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4648, metadata !DIExpression()), !dbg !4651
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4649, metadata !DIExpression()), !dbg !4651
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4650, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.value(metadata ptr %0, metadata !4652, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i64 %1, metadata !4655, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i64 %2, metadata !4656, metadata !DIExpression()), !dbg !4657
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4659
  call void @llvm.dbg.value(metadata ptr %4, metadata !4530, metadata !DIExpression()), !dbg !4660
  %5 = icmp eq ptr %4, null, !dbg !4662
  br i1 %5, label %6, label %7, !dbg !4663

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4664
  unreachable, !dbg !4664

7:                                                ; preds = %3
  ret ptr %4, !dbg !4665
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4666 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4670, metadata !DIExpression()), !dbg !4672
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4671, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata ptr null, metadata !4522, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.value(metadata i64 %0, metadata !4525, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.value(metadata i64 %1, metadata !4526, metadata !DIExpression()), !dbg !4673
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4675
  call void @llvm.dbg.value(metadata ptr %3, metadata !4530, metadata !DIExpression()), !dbg !4676
  %4 = icmp eq ptr %3, null, !dbg !4678
  br i1 %4, label %5, label %6, !dbg !4679

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4680
  unreachable, !dbg !4680

6:                                                ; preds = %2
  ret ptr %3, !dbg !4681
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4682 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4686, metadata !DIExpression()), !dbg !4688
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4687, metadata !DIExpression()), !dbg !4688
  call void @llvm.dbg.value(metadata ptr null, metadata !4648, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata i64 %0, metadata !4649, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata i64 %1, metadata !4650, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata ptr null, metadata !4652, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i64 %0, metadata !4655, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i64 %1, metadata !4656, metadata !DIExpression()), !dbg !4691
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4693
  call void @llvm.dbg.value(metadata ptr %3, metadata !4530, metadata !DIExpression()), !dbg !4694
  %4 = icmp eq ptr %3, null, !dbg !4696
  br i1 %4, label %5, label %6, !dbg !4697

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4698
  unreachable, !dbg !4698

6:                                                ; preds = %2
  ret ptr %3, !dbg !4699
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4700 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4704, metadata !DIExpression()), !dbg !4706
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4705, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.value(metadata ptr %0, metadata !936, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata ptr %1, metadata !937, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata i64 1, metadata !938, metadata !DIExpression()), !dbg !4707
  %3 = load i64, ptr %1, align 8, !dbg !4709, !tbaa !3565
  call void @llvm.dbg.value(metadata i64 %3, metadata !939, metadata !DIExpression()), !dbg !4707
  %4 = icmp eq ptr %0, null, !dbg !4710
  br i1 %4, label %5, label %8, !dbg !4712

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4713
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4716
  br label %15, !dbg !4716

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4717
  %10 = add nuw i64 %9, 1, !dbg !4717
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4717
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4717
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4717
  call void @llvm.dbg.value(metadata i64 %13, metadata !939, metadata !DIExpression()), !dbg !4707
  br i1 %12, label %14, label %15, !dbg !4720

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4721
  unreachable, !dbg !4721

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4707
  call void @llvm.dbg.value(metadata i64 %16, metadata !939, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i64 %16, metadata !4525, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i64 1, metadata !4526, metadata !DIExpression()), !dbg !4722
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4724
  call void @llvm.dbg.value(metadata ptr %17, metadata !4530, metadata !DIExpression()), !dbg !4725
  %18 = icmp eq ptr %17, null, !dbg !4727
  br i1 %18, label %19, label %20, !dbg !4728

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4729
  unreachable, !dbg !4729

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !936, metadata !DIExpression()), !dbg !4707
  store i64 %16, ptr %1, align 8, !dbg !4730, !tbaa !3565
  ret ptr %17, !dbg !4731
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !931 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !936, metadata !DIExpression()), !dbg !4732
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !937, metadata !DIExpression()), !dbg !4732
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !938, metadata !DIExpression()), !dbg !4732
  %4 = load i64, ptr %1, align 8, !dbg !4733, !tbaa !3565
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !939, metadata !DIExpression()), !dbg !4732
  %5 = icmp eq ptr %0, null, !dbg !4734
  br i1 %5, label %6, label %13, !dbg !4735

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4736
  br i1 %7, label %8, label %20, !dbg !4737

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4738
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !939, metadata !DIExpression()), !dbg !4732
  %10 = icmp ugt i64 %2, 128, !dbg !4740
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4741
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !939, metadata !DIExpression()), !dbg !4732
  br label %20, !dbg !4742

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4743
  %15 = add nuw i64 %14, 1, !dbg !4743
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4743
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4743
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4743
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !939, metadata !DIExpression()), !dbg !4732
  br i1 %17, label %19, label %20, !dbg !4744

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4745
  unreachable, !dbg !4745

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4732
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !939, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i64 %21, metadata !4525, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i64 %2, metadata !4526, metadata !DIExpression()), !dbg !4746
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4748
  call void @llvm.dbg.value(metadata ptr %22, metadata !4530, metadata !DIExpression()), !dbg !4749
  %23 = icmp eq ptr %22, null, !dbg !4751
  br i1 %23, label %24, label %25, !dbg !4752

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4753
  unreachable, !dbg !4753

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !936, metadata !DIExpression()), !dbg !4732
  store i64 %21, ptr %1, align 8, !dbg !4754, !tbaa !3565
  ret ptr %22, !dbg !4755
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !943 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !952, metadata !DIExpression()), !dbg !4756
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !953, metadata !DIExpression()), !dbg !4756
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !954, metadata !DIExpression()), !dbg !4756
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !955, metadata !DIExpression()), !dbg !4756
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !956, metadata !DIExpression()), !dbg !4756
  %6 = load i64, ptr %1, align 8, !dbg !4757, !tbaa !3565
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !957, metadata !DIExpression()), !dbg !4756
  %7 = ashr i64 %6, 1, !dbg !4758
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4758
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4758
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4758
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !958, metadata !DIExpression()), !dbg !4756
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4760
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !958, metadata !DIExpression()), !dbg !4756
  %12 = icmp sgt i64 %3, -1, !dbg !4761
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4763
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4763
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !958, metadata !DIExpression()), !dbg !4756
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4764
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4764
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4764
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !959, metadata !DIExpression()), !dbg !4756
  %18 = icmp slt i64 %17, 128, !dbg !4764
  %19 = select i1 %18, i64 128, i64 0, !dbg !4764
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4764
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !960, metadata !DIExpression()), !dbg !4756
  %21 = icmp eq i64 %20, 0, !dbg !4765
  br i1 %21, label %28, label %22, !dbg !4767

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4768
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !958, metadata !DIExpression()), !dbg !4756
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4770
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !959, metadata !DIExpression()), !dbg !4756
  br label %28, !dbg !4771

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4756
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4756
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !959, metadata !DIExpression()), !dbg !4756
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !958, metadata !DIExpression()), !dbg !4756
  %31 = icmp eq ptr %0, null, !dbg !4772
  br i1 %31, label %32, label %33, !dbg !4774

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4775, !tbaa !3565
  br label %33, !dbg !4776

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4777
  %35 = icmp slt i64 %34, %2, !dbg !4779
  br i1 %35, label %36, label %48, !dbg !4780

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4781
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4781
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4781
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !958, metadata !DIExpression()), !dbg !4756
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4782
  br i1 %42, label %47, label %43, !dbg !4782

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4783
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4783
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4783
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !959, metadata !DIExpression()), !dbg !4756
  br i1 %45, label %47, label %48, !dbg !4784

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #42, !dbg !4785
  unreachable, !dbg !4785

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4756
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4756
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !959, metadata !DIExpression()), !dbg !4756
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !958, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata ptr %0, metadata !4602, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata i64 %50, metadata !4603, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata ptr %0, metadata !4605, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i64 %50, metadata !4609, metadata !DIExpression()), !dbg !4788
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4790
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #47, !dbg !4791
  call void @llvm.dbg.value(metadata ptr %52, metadata !4530, metadata !DIExpression()), !dbg !4792
  %53 = icmp eq ptr %52, null, !dbg !4794
  br i1 %53, label %54, label %55, !dbg !4795

54:                                               ; preds = %48
  tail call void @xalloc_die() #42, !dbg !4796
  unreachable, !dbg !4796

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !952, metadata !DIExpression()), !dbg !4756
  store i64 %49, ptr %1, align 8, !dbg !4797, !tbaa !3565
  ret ptr %52, !dbg !4798
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4799 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4801, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 %0, metadata !4803, metadata !DIExpression()), !dbg !4807
  call void @llvm.dbg.value(metadata i64 1, metadata !4806, metadata !DIExpression()), !dbg !4807
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4809
  call void @llvm.dbg.value(metadata ptr %2, metadata !4530, metadata !DIExpression()), !dbg !4810
  %3 = icmp eq ptr %2, null, !dbg !4812
  br i1 %3, label %4, label %5, !dbg !4813

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4814
  unreachable, !dbg !4814

5:                                                ; preds = %1
  ret ptr %2, !dbg !4815
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4816 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4804 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4803, metadata !DIExpression()), !dbg !4817
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4806, metadata !DIExpression()), !dbg !4817
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4818
  call void @llvm.dbg.value(metadata ptr %3, metadata !4530, metadata !DIExpression()), !dbg !4819
  %4 = icmp eq ptr %3, null, !dbg !4821
  br i1 %4, label %5, label %6, !dbg !4822

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4823
  unreachable, !dbg !4823

6:                                                ; preds = %2
  ret ptr %3, !dbg !4824
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4825 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4827, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %0, metadata !4829, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i64 1, metadata !4832, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i64 %0, metadata !4835, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata i64 1, metadata !4838, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata i64 %0, metadata !4835, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata i64 1, metadata !4838, metadata !DIExpression()), !dbg !4839
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4841
  call void @llvm.dbg.value(metadata ptr %2, metadata !4530, metadata !DIExpression()), !dbg !4842
  %3 = icmp eq ptr %2, null, !dbg !4844
  br i1 %3, label %4, label %5, !dbg !4845

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4846
  unreachable, !dbg !4846

5:                                                ; preds = %1
  ret ptr %2, !dbg !4847
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4830 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4829, metadata !DIExpression()), !dbg !4848
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4832, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i64 %0, metadata !4835, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata i64 %1, metadata !4838, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata i64 %0, metadata !4835, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata i64 %1, metadata !4838, metadata !DIExpression()), !dbg !4849
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4851
  call void @llvm.dbg.value(metadata ptr %3, metadata !4530, metadata !DIExpression()), !dbg !4852
  %4 = icmp eq ptr %3, null, !dbg !4854
  br i1 %4, label %5, label %6, !dbg !4855

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4856
  unreachable, !dbg !4856

6:                                                ; preds = %2
  ret ptr %3, !dbg !4857
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4858 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4862, metadata !DIExpression()), !dbg !4864
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4863, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i64 %1, metadata !4554, metadata !DIExpression()), !dbg !4865
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4867
  call void @llvm.dbg.value(metadata ptr %3, metadata !4530, metadata !DIExpression()), !dbg !4868
  %4 = icmp eq ptr %3, null, !dbg !4870
  br i1 %4, label %5, label %6, !dbg !4871

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4872
  unreachable, !dbg !4872

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4873, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata ptr %0, metadata !4879, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata i64 %1, metadata !4880, metadata !DIExpression()), !dbg !4881
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4883
  ret ptr %3, !dbg !4884
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4885 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4889, metadata !DIExpression()), !dbg !4891
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4890, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i64 %1, metadata !4568, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.value(metadata i64 %1, metadata !4570, metadata !DIExpression()), !dbg !4894
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4896
  call void @llvm.dbg.value(metadata ptr %3, metadata !4530, metadata !DIExpression()), !dbg !4897
  %4 = icmp eq ptr %3, null, !dbg !4899
  br i1 %4, label %5, label %6, !dbg !4900

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4901
  unreachable, !dbg !4901

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4873, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata ptr %0, metadata !4879, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata i64 %1, metadata !4880, metadata !DIExpression()), !dbg !4902
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4904
  ret ptr %3, !dbg !4905
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4906 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4910, metadata !DIExpression()), !dbg !4913
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4911, metadata !DIExpression()), !dbg !4913
  %3 = add nsw i64 %1, 1, !dbg !4914
  call void @llvm.dbg.value(metadata i64 %3, metadata !4568, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.value(metadata i64 %3, metadata !4570, metadata !DIExpression()), !dbg !4917
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4919
  call void @llvm.dbg.value(metadata ptr %4, metadata !4530, metadata !DIExpression()), !dbg !4920
  %5 = icmp eq ptr %4, null, !dbg !4922
  br i1 %5, label %6, label %7, !dbg !4923

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4924
  unreachable, !dbg !4924

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4912, metadata !DIExpression()), !dbg !4913
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4925
  store i8 0, ptr %8, align 1, !dbg !4926, !tbaa !1109
  call void @llvm.dbg.value(metadata ptr %4, metadata !4873, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata ptr %0, metadata !4879, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i64 %1, metadata !4880, metadata !DIExpression()), !dbg !4927
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4929
  ret ptr %4, !dbg !4930
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4931 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4933, metadata !DIExpression()), !dbg !4934
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4935
  %3 = add i64 %2, 1, !dbg !4936
  call void @llvm.dbg.value(metadata ptr %0, metadata !4862, metadata !DIExpression()), !dbg !4937
  call void @llvm.dbg.value(metadata i64 %3, metadata !4863, metadata !DIExpression()), !dbg !4937
  call void @llvm.dbg.value(metadata i64 %3, metadata !4554, metadata !DIExpression()), !dbg !4939
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4941
  call void @llvm.dbg.value(metadata ptr %4, metadata !4530, metadata !DIExpression()), !dbg !4942
  %5 = icmp eq ptr %4, null, !dbg !4944
  br i1 %5, label %6, label %7, !dbg !4945

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4946
  unreachable, !dbg !4946

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4873, metadata !DIExpression()), !dbg !4947
  call void @llvm.dbg.value(metadata ptr %0, metadata !4879, metadata !DIExpression()), !dbg !4947
  call void @llvm.dbg.value(metadata i64 %3, metadata !4880, metadata !DIExpression()), !dbg !4947
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4949
  ret ptr %4, !dbg !4950
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4951 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4956, !tbaa !1100
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4953, metadata !DIExpression()), !dbg !4957
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.185, ptr noundef nonnull @.str.2.186, i32 noundef 5) #40, !dbg !4956
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.187, ptr noundef %2) #40, !dbg !4956
  %3 = icmp eq i32 %1, 0, !dbg !4956
  tail call void @llvm.assume(i1 %3), !dbg !4956
  tail call void @abort() #42, !dbg !4958
  unreachable, !dbg !4958
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #38

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4959 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4997, metadata !DIExpression()), !dbg !5002
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !5003
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4998, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5002
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5004, metadata !DIExpression()), !dbg !5007
  %3 = load i32, ptr %0, align 8, !dbg !5009, !tbaa !5010
  %4 = and i32 %3, 32, !dbg !5011
  %5 = icmp eq i32 %4, 0, !dbg !5011
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !5000, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5002
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !5012
  %7 = icmp eq i32 %6, 0, !dbg !5013
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !5001, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5002
  br i1 %5, label %8, label %18, !dbg !5014

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5016
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4998, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5002
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5017
  %11 = xor i1 %7, true, !dbg !5017
  %12 = sext i1 %11 to i32, !dbg !5017
  br i1 %10, label %21, label %13, !dbg !5017

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !5018
  %15 = load i32, ptr %14, align 4, !dbg !5018, !tbaa !1100
  %16 = icmp ne i32 %15, 9, !dbg !5019
  %17 = sext i1 %16 to i32, !dbg !5020
  br label %21, !dbg !5020

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5021

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !5023
  store i32 0, ptr %20, align 4, !dbg !5025, !tbaa !1100
  br label %21, !dbg !5023

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5002
  ret i32 %22, !dbg !5026
}

; Function Attrs: nounwind
declare !dbg !5027 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !5031 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5069, metadata !DIExpression()), !dbg !5073
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5070, metadata !DIExpression()), !dbg !5073
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !5074
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !5071, metadata !DIExpression()), !dbg !5073
  %3 = icmp slt i32 %2, 0, !dbg !5075
  br i1 %3, label %4, label %6, !dbg !5077

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5078
  br label %24, !dbg !5079

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !5080
  %8 = icmp eq i32 %7, 0, !dbg !5080
  br i1 %8, label %13, label %9, !dbg !5082

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !5083
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !5084
  %12 = icmp eq i64 %11, -1, !dbg !5085
  br i1 %12, label %16, label %13, !dbg !5086

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !5087
  %15 = icmp eq i32 %14, 0, !dbg !5087
  br i1 %15, label %16, label %18, !dbg !5088

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5070, metadata !DIExpression()), !dbg !5073
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5072, metadata !DIExpression()), !dbg !5073
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5089
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !5072, metadata !DIExpression()), !dbg !5073
  br label %24, !dbg !5090

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !5091
  %20 = load i32, ptr %19, align 4, !dbg !5091, !tbaa !1100
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !5070, metadata !DIExpression()), !dbg !5073
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5072, metadata !DIExpression()), !dbg !5073
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5089
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !5072, metadata !DIExpression()), !dbg !5073
  %22 = icmp eq i32 %20, 0, !dbg !5092
  br i1 %22, label %24, label %23, !dbg !5090

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !5094, !tbaa !1100
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !5072, metadata !DIExpression()), !dbg !5073
  br label %24, !dbg !5096

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !5073
  ret i32 %25, !dbg !5097
}

; Function Attrs: nofree nounwind
declare !dbg !5098 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !5099 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5100 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !5101 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !5104 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5142, metadata !DIExpression()), !dbg !5143
  %2 = icmp eq ptr %0, null, !dbg !5144
  br i1 %2, label %6, label %3, !dbg !5146

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !5147
  %5 = icmp eq i32 %4, 0, !dbg !5147
  br i1 %5, label %6, label %8, !dbg !5148

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !5149
  br label %16, !dbg !5150

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !5151, metadata !DIExpression()), !dbg !5156
  %9 = load i32, ptr %0, align 8, !dbg !5158, !tbaa !5010
  %10 = and i32 %9, 256, !dbg !5160
  %11 = icmp eq i32 %10, 0, !dbg !5160
  br i1 %11, label %14, label %12, !dbg !5161

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !5162
  br label %14, !dbg !5162

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !5163
  br label %16, !dbg !5164

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !5143
  ret i32 %17, !dbg !5165
}

; Function Attrs: nofree nounwind
declare !dbg !5166 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5167 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5206, metadata !DIExpression()), !dbg !5212
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5207, metadata !DIExpression()), !dbg !5212
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !5208, metadata !DIExpression()), !dbg !5212
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5213
  %5 = load ptr, ptr %4, align 8, !dbg !5213, !tbaa !5214
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5215
  %7 = load ptr, ptr %6, align 8, !dbg !5215, !tbaa !5216
  %8 = icmp eq ptr %5, %7, !dbg !5217
  br i1 %8, label %9, label %27, !dbg !5218

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5219
  %11 = load ptr, ptr %10, align 8, !dbg !5219, !tbaa !2628
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5220
  %13 = load ptr, ptr %12, align 8, !dbg !5220, !tbaa !5221
  %14 = icmp eq ptr %11, %13, !dbg !5222
  br i1 %14, label %15, label %27, !dbg !5223

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !5224
  %17 = load ptr, ptr %16, align 8, !dbg !5224, !tbaa !5225
  %18 = icmp eq ptr %17, null, !dbg !5226
  br i1 %18, label %19, label %27, !dbg !5227

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !5228
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !5229
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !5209, metadata !DIExpression()), !dbg !5230
  %22 = icmp eq i64 %21, -1, !dbg !5231
  br i1 %22, label %29, label %23, !dbg !5233

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !5234, !tbaa !5010
  %25 = and i32 %24, -17, !dbg !5234
  store i32 %25, ptr %0, align 8, !dbg !5234, !tbaa !5010
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !5235
  store i64 %21, ptr %26, align 8, !dbg !5236, !tbaa !5237
  br label %29, !dbg !5238

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !5239
  br label %29, !dbg !5240

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !5212
  ret i32 %30, !dbg !5241
}

; Function Attrs: nofree nounwind
declare !dbg !5242 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5245 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5250, metadata !DIExpression()), !dbg !5255
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5251, metadata !DIExpression()), !dbg !5255
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5252, metadata !DIExpression()), !dbg !5255
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5253, metadata !DIExpression()), !dbg !5255
  %5 = icmp eq ptr %1, null, !dbg !5256
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5258
  %7 = select i1 %5, ptr @.str.198, ptr %1, !dbg !5258
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5258
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5252, metadata !DIExpression()), !dbg !5255
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5251, metadata !DIExpression()), !dbg !5255
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5250, metadata !DIExpression()), !dbg !5255
  %9 = icmp eq ptr %3, null, !dbg !5259
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5261
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5253, metadata !DIExpression()), !dbg !5255
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !5262
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5254, metadata !DIExpression()), !dbg !5255
  %12 = icmp ult i64 %11, -3, !dbg !5263
  br i1 %12, label %13, label %17, !dbg !5265

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !5266
  %15 = icmp eq i32 %14, 0, !dbg !5266
  br i1 %15, label %16, label %29, !dbg !5267

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5268, metadata !DIExpression()), !dbg !5273
  call void @llvm.dbg.value(metadata ptr %10, metadata !5275, metadata !DIExpression()), !dbg !5280
  call void @llvm.dbg.value(metadata i32 0, metadata !5278, metadata !DIExpression()), !dbg !5280
  call void @llvm.dbg.value(metadata i64 8, metadata !5279, metadata !DIExpression()), !dbg !5280
  store i64 0, ptr %10, align 1, !dbg !5282
  br label %29, !dbg !5283

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5284
  br i1 %18, label %19, label %20, !dbg !5286

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !5287
  unreachable, !dbg !5287

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5288

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #40, !dbg !5290
  br i1 %23, label %29, label %24, !dbg !5291

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5292
  br i1 %25, label %29, label %26, !dbg !5295

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5296, !tbaa !1109
  %28 = zext i8 %27 to i32, !dbg !5297
  store i32 %28, ptr %6, align 4, !dbg !5298, !tbaa !1100
  br label %29, !dbg !5299

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5255
  ret i64 %30, !dbg !5300
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5301 i32 @mbsinit(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !5307 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5309, metadata !DIExpression()), !dbg !5313
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5310, metadata !DIExpression()), !dbg !5313
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5311, metadata !DIExpression()), !dbg !5313
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5314
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5314
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5312, metadata !DIExpression()), !dbg !5313
  br i1 %5, label %6, label %8, !dbg !5316

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !5317
  store i32 12, ptr %7, align 4, !dbg !5319, !tbaa !1100
  br label %12, !dbg !5320

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5314
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5312, metadata !DIExpression()), !dbg !5313
  call void @llvm.dbg.value(metadata ptr %0, metadata !5321, metadata !DIExpression()), !dbg !5325
  call void @llvm.dbg.value(metadata i64 %9, metadata !5324, metadata !DIExpression()), !dbg !5325
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5327
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #47, !dbg !5328
  br label %12, !dbg !5329

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5313
  ret ptr %13, !dbg !5330
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5331 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !5338
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5334, metadata !DIExpression(), metadata !5338, metadata ptr %2, metadata !DIExpression()), !dbg !5339
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5333, metadata !DIExpression()), !dbg !5339
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !5340
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !5341
  %4 = icmp eq i32 %3, 0, !dbg !5341
  br i1 %4, label %5, label %12, !dbg !5343

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5344, metadata !DIExpression()), !dbg !5348
  call void @llvm.dbg.value(metadata ptr @.str.203, metadata !5347, metadata !DIExpression()), !dbg !5348
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.203, i64 2), !dbg !5351
  %7 = icmp eq i32 %6, 0, !dbg !5352
  br i1 %7, label %11, label %8, !dbg !5353

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5344, metadata !DIExpression()), !dbg !5354
  call void @llvm.dbg.value(metadata ptr @.str.1.204, metadata !5347, metadata !DIExpression()), !dbg !5354
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.204, i64 6), !dbg !5356
  %10 = icmp eq i32 %9, 0, !dbg !5357
  br i1 %10, label %11, label %12, !dbg !5358

11:                                               ; preds = %8, %5
  br label %12, !dbg !5359

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5339
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !5360
  ret i1 %13, !dbg !5360
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5361 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5365, metadata !DIExpression()), !dbg !5368
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5366, metadata !DIExpression()), !dbg !5368
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5367, metadata !DIExpression()), !dbg !5368
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !5369
  ret i32 %4, !dbg !5370
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5371 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5375, metadata !DIExpression()), !dbg !5376
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !5377
  ret ptr %2, !dbg !5378
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5379 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5381, metadata !DIExpression()), !dbg !5383
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5384
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5382, metadata !DIExpression()), !dbg !5383
  ret ptr %2, !dbg !5385
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5386 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5388, metadata !DIExpression()), !dbg !5395
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5389, metadata !DIExpression()), !dbg !5395
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5390, metadata !DIExpression()), !dbg !5395
  call void @llvm.dbg.value(metadata i32 %0, metadata !5381, metadata !DIExpression()), !dbg !5396
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5398
  call void @llvm.dbg.value(metadata ptr %4, metadata !5382, metadata !DIExpression()), !dbg !5396
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5391, metadata !DIExpression()), !dbg !5395
  %5 = icmp eq ptr %4, null, !dbg !5399
  br i1 %5, label %6, label %9, !dbg !5400

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5401
  br i1 %7, label %19, label %8, !dbg !5404

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5405, !tbaa !1109
  br label %19, !dbg !5406

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !5407
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5392, metadata !DIExpression()), !dbg !5408
  %11 = icmp ult i64 %10, %2, !dbg !5409
  br i1 %11, label %12, label %14, !dbg !5411

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5412
  call void @llvm.dbg.value(metadata ptr %1, metadata !5414, metadata !DIExpression()), !dbg !5419
  call void @llvm.dbg.value(metadata ptr %4, metadata !5417, metadata !DIExpression()), !dbg !5419
  call void @llvm.dbg.value(metadata i64 %13, metadata !5418, metadata !DIExpression()), !dbg !5419
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !5421
  br label %19, !dbg !5422

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5423
  br i1 %15, label %19, label %16, !dbg !5426

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5427
  call void @llvm.dbg.value(metadata ptr %1, metadata !5414, metadata !DIExpression()), !dbg !5429
  call void @llvm.dbg.value(metadata ptr %4, metadata !5417, metadata !DIExpression()), !dbg !5429
  call void @llvm.dbg.value(metadata i64 %17, metadata !5418, metadata !DIExpression()), !dbg !5429
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !5431
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5432
  store i8 0, ptr %18, align 1, !dbg !5433, !tbaa !1109
  br label %19, !dbg !5434

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5435
  ret i32 %20, !dbg !5436
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #7 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { nofree nounwind memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #10 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { cold nounwind }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { nounwind allocsize(0) }
attributes #49 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!218, !578, !582, !597, !876, !910, !912, !651, !665, !716, !918, !920, !870, !927, !962, !964, !966, !968, !970, !892, !972, !974, !976, !978}
!llvm.ident = !{!980, !980, !980, !980, !980, !980, !980, !980, !980, !980, !980, !980, !980, !980, !980, !980, !980, !980, !980, !980, !980, !980, !980, !980}
!llvm.module.flags = !{!981, !982, !983, !984, !985, !986, !987, !988}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 664, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/test.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7583f30ebbd536ebc500e5a99f7dfb08")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 667, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 680, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 85)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 674, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 49)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 678, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 2)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 678, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 50)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 679, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 62)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 680, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 960, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 120)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 685, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1992, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 249)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 692, type: !19, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 695, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 56)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 698, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 48)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 701, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 53)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 704, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1968, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 246)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 713, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 57)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 716, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 73)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 719, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 61)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 722, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 70)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 725, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 58)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 728, type: !76, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 734, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 76)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 737, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 67)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 740, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 47)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 746, type: !51, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 749, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 52)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 752, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 46)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 755, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 27)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 758, type: !14, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !2, line: 761, type: !103, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !2, line: 764, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 66)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !2, line: 767, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 63)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !2, line: 770, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 54)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 773, type: !134, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 776, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 576, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 72)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 779, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 65)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 782, type: !103, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 785, type: !46, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 788, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 60)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 791, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 43)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !2, line: 794, type: !86, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 797, type: !86, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 800, type: !66, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 803, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 71)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 806, type: !181, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1800, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 225)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !2, line: 812, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 840, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 105)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !2, line: 817, type: !81, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !2, line: 821, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1480, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 185)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 821, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 14)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !2, line: 857, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 1)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 858, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 10)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !2, line: 858, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 24)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "argv", scope: !218, file: !2, line: 80, type: !572, isLocal: true, isDefinition: true)
!218 = distinct !DICompileUnit(language: DW_LANG_C11, file: !219, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/lbracket.o -MD -MP -MF src/.deps/lbracket.Tpo -c src/lbracket.c -o src/.lbracket.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !220, retainedTypes: !257, globals: !273, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "src/lbracket.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7f5314e6a85a0cd1a7b9f272709c5c74")
!220 = !{!221, !227, !242}
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 55, baseType: !222, size: 32, elements: !223)
!222 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!223 = !{!224, !225, !226}
!224 = !DIEnumerator(name: "TEST_TRUE", value: 0)
!225 = !DIEnumerator(name: "TEST_FALSE", value: 1)
!226 = !DIEnumerator(name: "TEST_FAILURE", value: 2)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !228, line: 46, baseType: !222, size: 32, elements: !229)
!228 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241}
!230 = !DIEnumerator(name: "_ISupper", value: 256)
!231 = !DIEnumerator(name: "_ISlower", value: 512)
!232 = !DIEnumerator(name: "_ISalpha", value: 1024)
!233 = !DIEnumerator(name: "_ISdigit", value: 2048)
!234 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!235 = !DIEnumerator(name: "_ISspace", value: 8192)
!236 = !DIEnumerator(name: "_ISprint", value: 16384)
!237 = !DIEnumerator(name: "_ISgraph", value: 32768)
!238 = !DIEnumerator(name: "_ISblank", value: 1)
!239 = !DIEnumerator(name: "_IScntrl", value: 2)
!240 = !DIEnumerator(name: "_ISpunct", value: 4)
!241 = !DIEnumerator(name: "_ISalnum", value: 8)
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "binop", file: !2, line: 58, baseType: !222, size: 32, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256}
!244 = !DIEnumerator(name: "EQ_STRING_BINOP", value: 0)
!245 = !DIEnumerator(name: "GT_STRING_BINOP", value: 1)
!246 = !DIEnumerator(name: "LT_STRING_BINOP", value: 2)
!247 = !DIEnumerator(name: "NE_STRING_BINOP", value: 3)
!248 = !DIEnumerator(name: "EQ_BINOP", value: 4)
!249 = !DIEnumerator(name: "GE_BINOP", value: 5)
!250 = !DIEnumerator(name: "GT_BINOP", value: 6)
!251 = !DIEnumerator(name: "LE_BINOP", value: 7)
!252 = !DIEnumerator(name: "LT_BINOP", value: 8)
!253 = !DIEnumerator(name: "NE_BINOP", value: 9)
!254 = !DIEnumerator(name: "EF_BINOP", value: 10)
!255 = !DIEnumerator(name: "NT_BINOP", value: 11)
!256 = !DIEnumerator(name: "OT_BINOP", value: 12)
!257 = !{!258, !259, !260, !261, !262, !265, !267, !268}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!260 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!261 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !263, line: 18, baseType: !264)
!263 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!264 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!267 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !269, line: 10, baseType: !270)
!269 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !271, line: 160, baseType: !272)
!271 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!272 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!273 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !44, !49, !54, !59, !64, !69, !74, !79, !84, !89, !91, !96, !101, !106, !108, !113, !118, !123, !125, !127, !132, !137, !142, !144, !149, !154, !156, !158, !163, !168, !170, !172, !174, !179, !184, !189, !191, !196, !201, !206, !211, !274, !279, !281, !283, !288, !290, !292, !297, !302, !304, !216, !306, !388, !393, !395, !400, !405, !407, !409, !414, !416, !418, !420, !422, !427, !429, !431, !433, !435, !437, !442, !447, !449, !451, !453, !455, !457, !462, !467, !469, !471, !473, !475, !480, !485, !487, !489, !491, !493, !495, !500, !505, !510, !515, !517, !519, !521, !523, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !561, !563, !568, !570}
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !2, line: 877, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 7)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !2, line: 880, type: !208, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !2, line: 882, type: !198, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !2, line: 882, type: !285, isLocal: true, isDefinition: true)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 17)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !2, line: 882, type: !285, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !2, line: 887, type: !19, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !2, line: 888, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 11)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !2, line: 902, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 18)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "pos", scope: !218, file: !2, line: 78, type: !260, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(name: "argc", scope: !218, file: !2, line: 79, type: !260, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !308, file: !309, line: 575, type: !260, isLocal: true, isDefinition: true)
!308 = distinct !DISubprogram(name: "oputs_", scope: !309, file: !309, line: 573, type: !310, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !312)
!309 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!310 = !DISubroutineType(cc: DW_CC_nocall, types: !311)
!311 = !{null, !265, !265}
!312 = !{!313, !314, !315, !318, !320, !321, !322, !326, !327, !328, !329, !331, !382, !383, !384, !386, !387}
!313 = !DILocalVariable(name: "program", arg: 1, scope: !308, file: !309, line: 573, type: !265)
!314 = !DILocalVariable(name: "option", arg: 2, scope: !308, file: !309, line: 573, type: !265)
!315 = !DILocalVariable(name: "term", scope: !316, file: !309, line: 585, type: !265)
!316 = distinct !DILexicalBlock(scope: !317, file: !309, line: 582, column: 5)
!317 = distinct !DILexicalBlock(scope: !308, file: !309, line: 581, column: 7)
!318 = !DILocalVariable(name: "double_space", scope: !308, file: !309, line: 594, type: !319)
!319 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!320 = !DILocalVariable(name: "first_word", scope: !308, file: !309, line: 595, type: !265)
!321 = !DILocalVariable(name: "option_text", scope: !308, file: !309, line: 596, type: !265)
!322 = !DILocalVariable(name: "s", scope: !323, file: !309, line: 608, type: !265)
!323 = distinct !DILexicalBlock(scope: !324, file: !309, line: 605, column: 5)
!324 = distinct !DILexicalBlock(scope: !325, file: !309, line: 604, column: 12)
!325 = distinct !DILexicalBlock(scope: !308, file: !309, line: 597, column: 7)
!326 = !DILocalVariable(name: "spaces", scope: !323, file: !309, line: 609, type: !262)
!327 = !DILocalVariable(name: "anchor_len", scope: !308, file: !309, line: 620, type: !262)
!328 = !DILocalVariable(name: "desc_text", scope: !308, file: !309, line: 625, type: !265)
!329 = !DILocalVariable(name: "__ptr", scope: !330, file: !309, line: 644, type: !265)
!330 = distinct !DILexicalBlock(scope: !308, file: !309, line: 644, column: 3)
!331 = !DILocalVariable(name: "__stream", scope: !330, file: !309, line: 644, type: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !335)
!334 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !337)
!336 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !353, !355, !356, !357, !359, !360, !362, !363, !366, !368, !371, !374, !375, !376, !377, !378}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !335, file: !336, line: 51, baseType: !260, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !335, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !335, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !335, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !335, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !335, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !335, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !335, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !335, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !335, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !335, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !335, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !335, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !336, line: 36, flags: DIFlagFwdDecl)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !335, file: !336, line: 70, baseType: !354, size: 64, offset: 832)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !335, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !335, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !335, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !271, line: 152, baseType: !272)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !335, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !335, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!361 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !335, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !335, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !336, line: 43, baseType: null)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !335, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !271, line: 153, baseType: !272)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !335, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !336, line: 37, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !335, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !336, line: 38, flags: DIFlagFwdDecl)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !335, file: !336, line: 93, baseType: !354, size: 64, offset: 1344)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !335, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !335, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !335, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !335, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 20)
!382 = !DILocalVariable(name: "__cnt", scope: !330, file: !309, line: 644, type: !262)
!383 = !DILocalVariable(name: "url_program", scope: !308, file: !309, line: 648, type: !265)
!384 = !DILocalVariable(name: "__ptr", scope: !385, file: !309, line: 686, type: !265)
!385 = distinct !DILexicalBlock(scope: !308, file: !309, line: 686, column: 3)
!386 = !DILocalVariable(name: "__stream", scope: !385, file: !309, line: 686, type: !332)
!387 = !DILocalVariable(name: "__cnt", scope: !385, file: !309, line: 686, type: !262)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !309, line: 585, type: !390, isLocal: true, isDefinition: true)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 5)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !309, line: 586, type: !390, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !309, line: 595, type: !397, isLocal: true, isDefinition: true)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 4)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !309, line: 620, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 6)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !309, line: 648, type: !390, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !309, line: 649, type: !397, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !309, line: 649, type: !411, isLocal: true, isDefinition: true)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 3)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !309, line: 650, type: !390, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !309, line: 651, type: !402, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !309, line: 651, type: !402, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !309, line: 652, type: !276, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !309, line: 653, type: !424, isLocal: true, isDefinition: true)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 8)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !309, line: 654, type: !208, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !309, line: 655, type: !208, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !309, line: 656, type: !208, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !309, line: 657, type: !208, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !309, line: 669, type: !285, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !309, line: 669, type: !439, isLocal: true, isDefinition: true)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 40)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !309, line: 676, type: !444, isLocal: true, isDefinition: true)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 15)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !309, line: 676, type: !76, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !309, line: 679, type: !411, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !309, line: 683, type: !390, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !309, line: 688, type: !390, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !309, line: 691, type: !424, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !309, line: 839, type: !459, isLocal: true, isDefinition: true)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 16)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !309, line: 840, type: !464, isLocal: true, isDefinition: true)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 22)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !309, line: 841, type: !444, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !309, line: 862, type: !397, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !309, line: 868, type: !176, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !309, line: 875, type: !120, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !309, line: 877, type: !477, isLocal: true, isDefinition: true)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 51)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !309, line: 877, type: !482, isLocal: true, isDefinition: true)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 12)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !2, line: 635, type: !19, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !2, line: 641, type: !19, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !2, line: 641, type: !19, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !2, line: 651, type: !208, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !2, line: 651, type: !294, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !2, line: 651, type: !497, isLocal: true, isDefinition: true)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 168, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 21)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !2, line: 373, type: !502, isLocal: true, isDefinition: true)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 28)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !507, isLocal: true, isDefinition: true)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 19)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !512, isLocal: true, isDefinition: true)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 26)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !2, line: 605, type: !411, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !2, line: 605, type: !411, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !2, line: 606, type: !19, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !2, line: 606, type: !19, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !2, line: 609, type: !525, isLocal: true, isDefinition: true)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 29)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !19, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !2, line: 189, type: !411, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !2, line: 190, type: !411, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !2, line: 193, type: !397, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !2, line: 194, type: !397, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !397, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !2, line: 196, type: !397, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !2, line: 197, type: !397, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !397, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !2, line: 199, type: !397, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !397, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !397, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !2, line: 296, type: !411, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !2, line: 331, type: !464, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !2, line: 340, type: !558, isLocal: true, isDefinition: true)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !559)
!559 = !{!560}
!560 = !DISubrange(count: 23)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !2, line: 362, type: !19, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !2, line: 362, type: !565, isLocal: true, isDefinition: true)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 328, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 41)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !482, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !2, line: 261, type: !464, isLocal: true, isDefinition: true)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !575, line: 3, type: !444, isLocal: true, isDefinition: true)
!575 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "Version", scope: !578, file: !575, line: 3, type: !265, isLocal: false, isDefinition: true)
!578 = distinct !DICompileUnit(language: DW_LANG_C11, file: !575, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !579, splitDebugInlining: false, nameTableKind: None)
!579 = !{!573, !576}
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "file_name", scope: !582, file: !583, line: 45, type: !265, isLocal: true, isDefinition: true)
!582 = distinct !DICompileUnit(language: DW_LANG_C11, file: !583, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !584, splitDebugInlining: false, nameTableKind: None)
!583 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!584 = !{!585, !587, !589, !591, !580, !593}
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !583, line: 121, type: !276, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !583, line: 121, type: !482, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !583, line: 123, type: !276, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !583, line: 126, type: !411, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !582, file: !583, line: 55, type: !319, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !597, file: !598, line: 66, type: !646, isLocal: false, isDefinition: true)
!597 = distinct !DICompileUnit(language: DW_LANG_C11, file: !598, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !599, globals: !600, splitDebugInlining: false, nameTableKind: None)
!598 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!599 = !{!259, !267}
!600 = !{!601, !603, !627, !629, !631, !633, !595, !635, !637, !639, !641, !644}
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !598, line: 272, type: !390, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(name: "old_file_name", scope: !605, file: !598, line: 304, type: !265, isLocal: true, isDefinition: true)
!605 = distinct !DISubprogram(name: "verror_at_line", scope: !598, file: !598, line: 298, type: !606, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !620)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !260, !260, !265, !222, !265, !608}
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !609, line: 52, baseType: !610)
!609 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !611, line: 12, baseType: !612)
!611 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !598, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !614)
!614 = !{!615, !616, !617, !618, !619}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !613, file: !598, baseType: !259, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !613, file: !598, baseType: !259, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !613, file: !598, baseType: !259, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !613, file: !598, baseType: !260, size: 32, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !613, file: !598, baseType: !260, size: 32, offset: 224)
!620 = !{!621, !622, !623, !624, !625, !626}
!621 = !DILocalVariable(name: "status", arg: 1, scope: !605, file: !598, line: 298, type: !260)
!622 = !DILocalVariable(name: "errnum", arg: 2, scope: !605, file: !598, line: 298, type: !260)
!623 = !DILocalVariable(name: "file_name", arg: 3, scope: !605, file: !598, line: 298, type: !265)
!624 = !DILocalVariable(name: "line_number", arg: 4, scope: !605, file: !598, line: 298, type: !222)
!625 = !DILocalVariable(name: "message", arg: 5, scope: !605, file: !598, line: 298, type: !265)
!626 = !DILocalVariable(name: "args", arg: 6, scope: !605, file: !598, line: 298, type: !608)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(name: "old_line_number", scope: !605, file: !598, line: 305, type: !222, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !598, line: 338, type: !397, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !598, line: 346, type: !424, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !598, line: 346, type: !19, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "error_message_count", scope: !597, file: !598, line: 69, type: !222, isLocal: false, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !597, file: !598, line: 295, type: !260, isLocal: false, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !598, line: 208, type: !276, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !598, line: 208, type: !643, isLocal: true, isDefinition: true)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !498)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !598, line: 214, type: !390, isLocal: true, isDefinition: true)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{null}
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(name: "program_name", scope: !651, file: !652, line: 31, type: !265, isLocal: false, isDefinition: true)
!651 = distinct !DICompileUnit(language: DW_LANG_C11, file: !652, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !653, globals: !654, splitDebugInlining: false, nameTableKind: None)
!652 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!653 = !{!259, !258}
!654 = !{!649, !655, !657}
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !652, line: 46, type: !424, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !652, line: 49, type: !397, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(name: "utf07FF", scope: !661, file: !662, line: 46, type: !689, isLocal: true, isDefinition: true)
!661 = distinct !DISubprogram(name: "proper_name_lite", scope: !662, file: !662, line: 38, type: !663, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !667)
!662 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!663 = !DISubroutineType(types: !664)
!664 = !{!265, !265, !265}
!665 = distinct !DICompileUnit(language: DW_LANG_C11, file: !662, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !666, splitDebugInlining: false, nameTableKind: None)
!666 = !{!659}
!667 = !{!668, !669, !670, !671, !676}
!668 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !661, file: !662, line: 38, type: !265)
!669 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !661, file: !662, line: 38, type: !265)
!670 = !DILocalVariable(name: "translation", scope: !661, file: !662, line: 40, type: !265)
!671 = !DILocalVariable(name: "w", scope: !661, file: !662, line: 47, type: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !673, line: 37, baseType: !674)
!673 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !271, line: 57, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !271, line: 42, baseType: !222)
!676 = !DILocalVariable(name: "mbs", scope: !661, file: !662, line: 48, type: !677)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !678, line: 6, baseType: !679)
!678 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !680, line: 21, baseType: !681)
!680 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !680, line: 13, size: 64, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !681, file: !680, line: 15, baseType: !260, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !681, file: !680, line: 20, baseType: !685, size: 32, offset: 32)
!685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !681, file: !680, line: 16, size: 32, elements: !686)
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !685, file: !680, line: 18, baseType: !222, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !685, file: !680, line: 19, baseType: !397, size: 32)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 16, elements: !20)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !692, line: 78, type: !424, isLocal: true, isDefinition: true)
!692 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !692, line: 79, type: !402, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !692, line: 80, type: !697, isLocal: true, isDefinition: true)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !698)
!698 = !{!699}
!699 = !DISubrange(count: 13)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !692, line: 81, type: !697, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !692, line: 82, type: !379, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !692, line: 83, type: !19, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !692, line: 84, type: !424, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !692, line: 85, type: !276, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !692, line: 86, type: !276, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !692, line: 87, type: !424, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !716, file: !692, line: 76, type: !802, isLocal: false, isDefinition: true)
!716 = distinct !DICompileUnit(language: DW_LANG_C11, file: !692, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !717, retainedTypes: !737, globals: !738, splitDebugInlining: false, nameTableKind: None)
!717 = !{!718, !732, !227}
!718 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !719, line: 42, baseType: !222, size: 32, elements: !720)
!719 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!720 = !{!721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731}
!721 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!722 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!723 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!724 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!725 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!726 = !DIEnumerator(name: "c_quoting_style", value: 5)
!727 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!728 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!729 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!730 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!731 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!732 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !719, line: 254, baseType: !222, size: 32, elements: !733)
!733 = !{!734, !735, !736}
!734 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!735 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!736 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!737 = !{!259, !260, !261, !262}
!738 = !{!690, !693, !695, !700, !702, !704, !706, !708, !710, !712, !714, !739, !743, !753, !755, !760, !762, !764, !766, !768, !791, !798, !800}
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !716, file: !692, line: 92, type: !741, isLocal: false, isDefinition: true)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 320, elements: !209)
!742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !716, file: !692, line: 1040, type: !745, isLocal: false, isDefinition: true)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !692, line: 56, size: 448, elements: !746)
!746 = !{!747, !748, !749, !751, !752}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !745, file: !692, line: 59, baseType: !718, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !692, line: 62, baseType: !260, size: 32, offset: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !745, file: !692, line: 66, baseType: !750, size: 256, offset: 64)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 256, elements: !425)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !745, file: !692, line: 69, baseType: !265, size: 64, offset: 320)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !745, file: !692, line: 72, baseType: !265, size: 64, offset: 384)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !716, file: !692, line: 107, type: !745, isLocal: true, isDefinition: true)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(name: "slot0", scope: !716, file: !692, line: 831, type: !757, isLocal: true, isDefinition: true)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 256)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !692, line: 321, type: !19, isLocal: true, isDefinition: true)
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(scope: null, file: !692, line: 357, type: !19, isLocal: true, isDefinition: true)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !692, line: 358, type: !19, isLocal: true, isDefinition: true)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !692, line: 199, type: !276, isLocal: true, isDefinition: true)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(name: "quote", scope: !770, file: !692, line: 228, type: !789, isLocal: true, isDefinition: true)
!770 = distinct !DISubprogram(name: "gettext_quote", scope: !692, file: !692, line: 197, type: !771, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{!265, !265, !718}
!773 = !{!774, !775, !776, !777, !778}
!774 = !DILocalVariable(name: "msgid", arg: 1, scope: !770, file: !692, line: 197, type: !265)
!775 = !DILocalVariable(name: "s", arg: 2, scope: !770, file: !692, line: 197, type: !718)
!776 = !DILocalVariable(name: "translation", scope: !770, file: !692, line: 199, type: !265)
!777 = !DILocalVariable(name: "w", scope: !770, file: !692, line: 229, type: !672)
!778 = !DILocalVariable(name: "mbs", scope: !770, file: !692, line: 230, type: !779)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !678, line: 6, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !680, line: 21, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !680, line: 13, size: 64, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !781, file: !680, line: 15, baseType: !260, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !781, file: !680, line: 20, baseType: !785, size: 32, offset: 32)
!785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !781, file: !680, line: 16, size: 32, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !785, file: !680, line: 18, baseType: !222, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !785, file: !680, line: 19, baseType: !397, size: 32)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 64, elements: !790)
!790 = !{!21, !399}
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(name: "slotvec", scope: !716, file: !692, line: 834, type: !793, isLocal: true, isDefinition: true)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !692, line: 823, size: 128, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !794, file: !692, line: 825, baseType: !262, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !794, file: !692, line: 826, baseType: !258, size: 64, offset: 64)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(name: "nslots", scope: !716, file: !692, line: 832, type: !260, isLocal: true, isDefinition: true)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(name: "slotvec0", scope: !716, file: !692, line: 833, type: !794, isLocal: true, isDefinition: true)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 704, elements: !295)
!803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !806, line: 67, type: !482, isLocal: true, isDefinition: true)
!806 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(scope: null, file: !806, line: 69, type: !276, isLocal: true, isDefinition: true)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !806, line: 83, type: !276, isLocal: true, isDefinition: true)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !806, line: 83, type: !397, isLocal: true, isDefinition: true)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !806, line: 85, type: !19, isLocal: true, isDefinition: true)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !806, line: 88, type: !817, isLocal: true, isDefinition: true)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 171)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !806, line: 88, type: !822, isLocal: true, isDefinition: true)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 34)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(scope: null, file: !806, line: 105, type: !459, isLocal: true, isDefinition: true)
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression())
!828 = distinct !DIGlobalVariable(scope: null, file: !806, line: 109, type: !558, isLocal: true, isDefinition: true)
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression())
!830 = distinct !DIGlobalVariable(scope: null, file: !806, line: 113, type: !502, isLocal: true, isDefinition: true)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(scope: null, file: !806, line: 120, type: !833, isLocal: true, isDefinition: true)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !834)
!834 = !{!835}
!835 = !DISubrange(count: 32)
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(scope: null, file: !806, line: 127, type: !838, isLocal: true, isDefinition: true)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !839)
!839 = !{!840}
!840 = !DISubrange(count: 36)
!841 = !DIGlobalVariableExpression(var: !842, expr: !DIExpression())
!842 = distinct !DIGlobalVariable(scope: null, file: !806, line: 134, type: !439, isLocal: true, isDefinition: true)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(scope: null, file: !806, line: 142, type: !845, isLocal: true, isDefinition: true)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !846)
!846 = !{!847}
!847 = !DISubrange(count: 44)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(scope: null, file: !806, line: 150, type: !51, isLocal: true, isDefinition: true)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(scope: null, file: !806, line: 159, type: !110, isLocal: true, isDefinition: true)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(scope: null, file: !806, line: 170, type: !160, isLocal: true, isDefinition: true)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(scope: null, file: !806, line: 248, type: !379, isLocal: true, isDefinition: true)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(scope: null, file: !806, line: 248, type: !464, isLocal: true, isDefinition: true)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(scope: null, file: !806, line: 254, type: !379, isLocal: true, isDefinition: true)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(scope: null, file: !806, line: 254, type: !198, isLocal: true, isDefinition: true)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(scope: null, file: !806, line: 254, type: !439, isLocal: true, isDefinition: true)
!864 = !DIGlobalVariableExpression(var: !865, expr: !DIExpression())
!865 = distinct !DIGlobalVariable(scope: null, file: !806, line: 259, type: !3, isLocal: true, isDefinition: true)
!866 = !DIGlobalVariableExpression(var: !867, expr: !DIExpression())
!867 = distinct !DIGlobalVariable(scope: null, file: !806, line: 259, type: !525, isLocal: true, isDefinition: true)
!868 = !DIGlobalVariableExpression(var: !869, expr: !DIExpression())
!869 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !870, file: !871, line: 26, type: !873, isLocal: false, isDefinition: true)
!870 = distinct !DICompileUnit(language: DW_LANG_C11, file: !871, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !872, splitDebugInlining: false, nameTableKind: None)
!871 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!872 = !{!868}
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 376, elements: !104)
!874 = !DIGlobalVariableExpression(var: !875, expr: !DIExpression())
!875 = distinct !DIGlobalVariable(name: "exit_failure", scope: !876, file: !877, line: 24, type: !879, isLocal: false, isDefinition: true)
!876 = distinct !DICompileUnit(language: DW_LANG_C11, file: !877, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !878, splitDebugInlining: false, nameTableKind: None)
!877 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!878 = !{!874}
!879 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !260)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(scope: null, file: !882, line: 34, type: !411, isLocal: true, isDefinition: true)
!882 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!883 = !DIGlobalVariableExpression(var: !884, expr: !DIExpression())
!884 = distinct !DIGlobalVariable(scope: null, file: !882, line: 34, type: !276, isLocal: true, isDefinition: true)
!885 = !DIGlobalVariableExpression(var: !886, expr: !DIExpression())
!886 = distinct !DIGlobalVariable(scope: null, file: !882, line: 34, type: !285, isLocal: true, isDefinition: true)
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(scope: null, file: !889, line: 108, type: !203, isLocal: true, isDefinition: true)
!889 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!890 = !DIGlobalVariableExpression(var: !891, expr: !DIExpression())
!891 = distinct !DIGlobalVariable(name: "internal_state", scope: !892, file: !889, line: 97, type: !895, isLocal: true, isDefinition: true)
!892 = distinct !DICompileUnit(language: DW_LANG_C11, file: !889, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !893, globals: !894, splitDebugInlining: false, nameTableKind: None)
!893 = !{!259, !262, !267}
!894 = !{!887, !890}
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !678, line: 6, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !680, line: 21, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !680, line: 13, size: 64, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !897, file: !680, line: 15, baseType: !260, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !897, file: !680, line: 20, baseType: !901, size: 32, offset: 32)
!901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !897, file: !680, line: 16, size: 32, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !901, file: !680, line: 18, baseType: !222, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !901, file: !680, line: 19, baseType: !397, size: 32)
!905 = !DIGlobalVariableExpression(var: !906, expr: !DIExpression())
!906 = distinct !DIGlobalVariable(scope: null, file: !907, line: 35, type: !19, isLocal: true, isDefinition: true)
!907 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!908 = !DIGlobalVariableExpression(var: !909, expr: !DIExpression())
!909 = distinct !DIGlobalVariable(scope: null, file: !907, line: 35, type: !402, isLocal: true, isDefinition: true)
!910 = distinct !DICompileUnit(language: DW_LANG_C11, file: !911, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!911 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!912 = distinct !DICompileUnit(language: DW_LANG_C11, file: !913, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-umaxtostr.o -MD -MP -MF lib/.deps/libcoreutils_a-umaxtostr.Tpo -c lib/umaxtostr.c -o lib/.libcoreutils_a-umaxtostr.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !914, splitDebugInlining: false, nameTableKind: None)
!913 = !DIFile(filename: "lib/umaxtostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa759af6e92fed26f32f683da6c23a8")
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !916, line: 102, baseType: !917)
!916 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !271, line: 73, baseType: !264)
!918 = distinct !DICompileUnit(language: DW_LANG_C11, file: !919, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-strintcmp.o -MD -MP -MF lib/.deps/libcoreutils_a-strintcmp.Tpo -c lib/strintcmp.c -o lib/.libcoreutils_a-strintcmp.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!919 = !DIFile(filename: "lib/strintcmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cbb3801b0b03f23f2fd643484b645368")
!920 = distinct !DICompileUnit(language: DW_LANG_C11, file: !806, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !921, retainedTypes: !925, globals: !926, splitDebugInlining: false, nameTableKind: None)
!921 = !{!922}
!922 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !806, line: 40, baseType: !222, size: 32, elements: !923)
!923 = !{!924}
!924 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!925 = !{!259}
!926 = !{!804, !807, !809, !811, !813, !815, !820, !825, !827, !829, !831, !836, !841, !843, !848, !850, !852, !854, !856, !858, !860, !862, !864, !866}
!927 = distinct !DICompileUnit(language: DW_LANG_C11, file: !928, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !929, retainedTypes: !961, splitDebugInlining: false, nameTableKind: None)
!928 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!929 = !{!930, !942}
!930 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !931, file: !928, line: 188, baseType: !222, size: 32, elements: !940)
!931 = distinct !DISubprogram(name: "x2nrealloc", scope: !928, file: !928, line: 176, type: !932, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !935)
!932 = !DISubroutineType(types: !933)
!933 = !{!259, !259, !934, !262}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!935 = !{!936, !937, !938, !939}
!936 = !DILocalVariable(name: "p", arg: 1, scope: !931, file: !928, line: 176, type: !259)
!937 = !DILocalVariable(name: "pn", arg: 2, scope: !931, file: !928, line: 176, type: !934)
!938 = !DILocalVariable(name: "s", arg: 3, scope: !931, file: !928, line: 176, type: !262)
!939 = !DILocalVariable(name: "n", scope: !931, file: !928, line: 178, type: !262)
!940 = !{!941}
!941 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!942 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !943, file: !928, line: 228, baseType: !222, size: 32, elements: !940)
!943 = distinct !DISubprogram(name: "xpalloc", scope: !928, file: !928, line: 223, type: !944, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !951)
!944 = !DISubroutineType(types: !945)
!945 = !{!259, !259, !946, !947, !949, !947}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !948, line: 130, baseType: !949)
!948 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !950, line: 18, baseType: !272)
!950 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!951 = !{!952, !953, !954, !955, !956, !957, !958, !959, !960}
!952 = !DILocalVariable(name: "pa", arg: 1, scope: !943, file: !928, line: 223, type: !259)
!953 = !DILocalVariable(name: "pn", arg: 2, scope: !943, file: !928, line: 223, type: !946)
!954 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !943, file: !928, line: 223, type: !947)
!955 = !DILocalVariable(name: "n_max", arg: 4, scope: !943, file: !928, line: 223, type: !949)
!956 = !DILocalVariable(name: "s", arg: 5, scope: !943, file: !928, line: 223, type: !947)
!957 = !DILocalVariable(name: "n0", scope: !943, file: !928, line: 230, type: !947)
!958 = !DILocalVariable(name: "n", scope: !943, file: !928, line: 237, type: !947)
!959 = !DILocalVariable(name: "nbytes", scope: !943, file: !928, line: 248, type: !947)
!960 = !DILocalVariable(name: "adjusted_nbytes", scope: !943, file: !928, line: 252, type: !947)
!961 = !{!258, !259}
!962 = distinct !DICompileUnit(language: DW_LANG_C11, file: !882, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !963, splitDebugInlining: false, nameTableKind: None)
!963 = !{!880, !883, !885}
!964 = distinct !DICompileUnit(language: DW_LANG_C11, file: !965, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!965 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!966 = distinct !DICompileUnit(language: DW_LANG_C11, file: !967, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!967 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!968 = distinct !DICompileUnit(language: DW_LANG_C11, file: !969, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !925, splitDebugInlining: false, nameTableKind: None)
!969 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!970 = distinct !DICompileUnit(language: DW_LANG_C11, file: !971, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !925, splitDebugInlining: false, nameTableKind: None)
!971 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!972 = distinct !DICompileUnit(language: DW_LANG_C11, file: !973, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !925, splitDebugInlining: false, nameTableKind: None)
!973 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!974 = distinct !DICompileUnit(language: DW_LANG_C11, file: !907, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !975, splitDebugInlining: false, nameTableKind: None)
!975 = !{!905, !908}
!976 = distinct !DICompileUnit(language: DW_LANG_C11, file: !977, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!977 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!978 = distinct !DICompileUnit(language: DW_LANG_C11, file: !979, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !925, splitDebugInlining: false, nameTableKind: None)
!979 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!980 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!981 = !{i32 7, !"Dwarf Version", i32 5}
!982 = !{i32 2, !"Debug Info Version", i32 3}
!983 = !{i32 1, !"wchar_size", i32 4}
!984 = !{i32 8, !"PIC Level", i32 2}
!985 = !{i32 7, !"PIE Level", i32 2}
!986 = !{i32 7, !"uwtable", i32 2}
!987 = !{i32 7, !"frame-pointer", i32 1}
!988 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!989 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 661, type: !990, scopeLine: 662, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !992)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !260}
!992 = !{!993}
!993 = !DILocalVariable(name: "status", arg: 1, scope: !989, file: !2, line: 661, type: !260)
!994 = !DILocation(line: 0, scope: !989)
!995 = !DILocation(line: 663, column: 14, scope: !996)
!996 = distinct !DILexicalBlock(scope: !989, file: !2, line: 663, column: 7)
!997 = !DILocation(line: 663, column: 7, scope: !989)
!998 = !DILocation(line: 664, column: 5, scope: !999)
!999 = distinct !DILexicalBlock(scope: !996, file: !2, line: 664, column: 5)
!1000 = !{!1001, !1001, i64 0}
!1001 = !{!"any pointer", !1002, i64 0}
!1002 = !{!"omnipotent char", !1003, i64 0}
!1003 = !{!"Simple C/C++ TBAA"}
!1004 = !DILocation(line: 667, column: 7, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !996, file: !2, line: 666, column: 5)
!1006 = !DILocation(line: 674, column: 7, scope: !1005)
!1007 = !DILocation(line: 678, column: 7, scope: !1005)
!1008 = !DILocation(line: 679, column: 7, scope: !1005)
!1009 = !DILocation(line: 680, column: 7, scope: !1005)
!1010 = !DILocation(line: 685, column: 7, scope: !1005)
!1011 = !DILocation(line: 692, column: 7, scope: !1005)
!1012 = !DILocation(line: 695, column: 7, scope: !1005)
!1013 = !DILocation(line: 698, column: 7, scope: !1005)
!1014 = !DILocation(line: 701, column: 7, scope: !1005)
!1015 = !DILocation(line: 704, column: 7, scope: !1005)
!1016 = !DILocation(line: 710, column: 7, scope: !1005)
!1017 = !DILocation(line: 713, column: 7, scope: !1005)
!1018 = !DILocation(line: 716, column: 7, scope: !1005)
!1019 = !DILocation(line: 719, column: 7, scope: !1005)
!1020 = !DILocation(line: 722, column: 7, scope: !1005)
!1021 = !DILocation(line: 725, column: 7, scope: !1005)
!1022 = !DILocation(line: 728, column: 7, scope: !1005)
!1023 = !DILocation(line: 731, column: 7, scope: !1005)
!1024 = !DILocation(line: 734, column: 7, scope: !1005)
!1025 = !DILocation(line: 737, column: 7, scope: !1005)
!1026 = !DILocation(line: 740, column: 7, scope: !1005)
!1027 = !DILocation(line: 743, column: 7, scope: !1005)
!1028 = !DILocation(line: 746, column: 7, scope: !1005)
!1029 = !DILocation(line: 749, column: 7, scope: !1005)
!1030 = !DILocation(line: 752, column: 7, scope: !1005)
!1031 = !DILocation(line: 755, column: 7, scope: !1005)
!1032 = !DILocation(line: 758, column: 7, scope: !1005)
!1033 = !DILocation(line: 761, column: 7, scope: !1005)
!1034 = !DILocation(line: 764, column: 7, scope: !1005)
!1035 = !DILocation(line: 767, column: 7, scope: !1005)
!1036 = !DILocation(line: 770, column: 7, scope: !1005)
!1037 = !DILocation(line: 773, column: 7, scope: !1005)
!1038 = !DILocation(line: 776, column: 7, scope: !1005)
!1039 = !DILocation(line: 779, column: 7, scope: !1005)
!1040 = !DILocation(line: 782, column: 7, scope: !1005)
!1041 = !DILocation(line: 785, column: 7, scope: !1005)
!1042 = !DILocation(line: 788, column: 7, scope: !1005)
!1043 = !DILocation(line: 791, column: 7, scope: !1005)
!1044 = !DILocation(line: 794, column: 7, scope: !1005)
!1045 = !DILocation(line: 797, column: 7, scope: !1005)
!1046 = !DILocation(line: 800, column: 7, scope: !1005)
!1047 = !DILocation(line: 803, column: 7, scope: !1005)
!1048 = !DILocation(line: 806, column: 7, scope: !1005)
!1049 = !DILocation(line: 812, column: 7, scope: !1005)
!1050 = !DILocation(line: 817, column: 7, scope: !1005)
!1051 = !DILocation(line: 821, column: 7, scope: !1005)
!1052 = !DILocalVariable(name: "program", arg: 1, scope: !1053, file: !309, line: 836, type: !265)
!1053 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !309, file: !309, line: 836, type: !1054, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1056)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !265}
!1056 = !{!1052, !1057, !1064, !1065, !1067, !1068}
!1057 = !DILocalVariable(name: "infomap", scope: !1053, file: !309, line: 838, type: !1058)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1059, size: 896, elements: !277)
!1059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1060)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1053, file: !309, line: 838, size: 128, elements: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1060, file: !309, line: 838, baseType: !265, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1060, file: !309, line: 838, baseType: !265, size: 64, offset: 64)
!1064 = !DILocalVariable(name: "node", scope: !1053, file: !309, line: 848, type: !265)
!1065 = !DILocalVariable(name: "map_prog", scope: !1053, file: !309, line: 849, type: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1067 = !DILocalVariable(name: "lc_messages", scope: !1053, file: !309, line: 861, type: !265)
!1068 = !DILocalVariable(name: "url_program", scope: !1053, file: !309, line: 874, type: !265)
!1069 = !DILocation(line: 0, scope: !1053, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 822, column: 7, scope: !1005)
!1071 = !{}
!1072 = !DILocation(line: 857, column: 3, scope: !1053, inlinedAt: !1070)
!1073 = !DILocation(line: 861, column: 29, scope: !1053, inlinedAt: !1070)
!1074 = !DILocation(line: 862, column: 7, scope: !1075, inlinedAt: !1070)
!1075 = distinct !DILexicalBlock(scope: !1053, file: !309, line: 862, column: 7)
!1076 = !DILocation(line: 862, column: 19, scope: !1075, inlinedAt: !1070)
!1077 = !DILocation(line: 862, column: 22, scope: !1075, inlinedAt: !1070)
!1078 = !DILocation(line: 862, column: 7, scope: !1053, inlinedAt: !1070)
!1079 = !DILocation(line: 868, column: 7, scope: !1080, inlinedAt: !1070)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !309, line: 863, column: 5)
!1081 = !DILocation(line: 870, column: 5, scope: !1080, inlinedAt: !1070)
!1082 = !DILocation(line: 875, column: 3, scope: !1053, inlinedAt: !1070)
!1083 = !DILocation(line: 877, column: 3, scope: !1053, inlinedAt: !1070)
!1084 = !DILocation(line: 824, column: 3, scope: !989)
!1085 = !DISubprogram(name: "dcgettext", scope: !1086, file: !1086, line: 51, type: !1087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1086 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!258, !265, !265, !260}
!1089 = !DISubprogram(name: "__fprintf_chk", scope: !1090, file: !1090, line: 93, type: !1091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1090 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!260, !1093, !260, !1094, null}
!1093 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !332)
!1094 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !265)
!1095 = !DISubprogram(name: "fputs_unlocked", scope: !609, file: !609, line: 691, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!260, !1094, !1093}
!1098 = !DILocation(line: 0, scope: !308)
!1099 = !DILocation(line: 581, column: 7, scope: !317)
!1100 = !{!1101, !1101, i64 0}
!1101 = !{!"int", !1002, i64 0}
!1102 = !DILocation(line: 581, column: 19, scope: !317)
!1103 = !DILocation(line: 581, column: 7, scope: !308)
!1104 = !DILocation(line: 585, column: 26, scope: !316)
!1105 = !DILocation(line: 0, scope: !316)
!1106 = !DILocation(line: 586, column: 23, scope: !316)
!1107 = !DILocation(line: 586, column: 28, scope: !316)
!1108 = !DILocation(line: 586, column: 32, scope: !316)
!1109 = !{!1002, !1002, i64 0}
!1110 = !DILocation(line: 586, column: 38, scope: !316)
!1111 = !DILocalVariable(name: "__s1", arg: 1, scope: !1112, file: !1113, line: 1359, type: !265)
!1112 = distinct !DISubprogram(name: "streq", scope: !1113, file: !1113, line: 1359, type: !1114, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1116)
!1113 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!319, !265, !265}
!1116 = !{!1111, !1117}
!1117 = !DILocalVariable(name: "__s2", arg: 2, scope: !1112, file: !1113, line: 1359, type: !265)
!1118 = !DILocation(line: 0, scope: !1112, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 586, column: 41, scope: !316)
!1120 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1119)
!1121 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1119)
!1122 = !DILocation(line: 586, column: 19, scope: !316)
!1123 = !DILocation(line: 587, column: 5, scope: !316)
!1124 = !DILocation(line: 588, column: 7, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !308, file: !309, line: 588, column: 7)
!1126 = !DILocation(line: 588, column: 7, scope: !308)
!1127 = !DILocation(line: 590, column: 7, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !309, line: 589, column: 5)
!1129 = !DILocation(line: 591, column: 7, scope: !1128)
!1130 = !DILocation(line: 595, column: 37, scope: !308)
!1131 = !DILocation(line: 595, column: 35, scope: !308)
!1132 = !DILocation(line: 596, column: 29, scope: !308)
!1133 = !DILocation(line: 597, column: 8, scope: !325)
!1134 = !DILocation(line: 597, column: 7, scope: !308)
!1135 = !DILocation(line: 604, column: 24, scope: !324)
!1136 = !DILocation(line: 604, column: 12, scope: !325)
!1137 = !DILocation(line: 0, scope: !323)
!1138 = !DILocation(line: 610, column: 16, scope: !323)
!1139 = !DILocation(line: 610, column: 7, scope: !323)
!1140 = !DILocation(line: 611, column: 21, scope: !323)
!1141 = !{!1142, !1142, i64 0}
!1142 = !{!"short", !1002, i64 0}
!1143 = !DILocation(line: 611, column: 19, scope: !323)
!1144 = !DILocation(line: 611, column: 16, scope: !323)
!1145 = !DILocation(line: 610, column: 30, scope: !323)
!1146 = distinct !{!1146, !1139, !1140, !1147}
!1147 = !{!"llvm.loop.mustprogress"}
!1148 = !DILocation(line: 612, column: 18, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !323, file: !309, line: 612, column: 11)
!1150 = !DILocation(line: 612, column: 11, scope: !323)
!1151 = !DILocation(line: 620, column: 23, scope: !308)
!1152 = !DILocation(line: 625, column: 39, scope: !308)
!1153 = !DILocation(line: 626, column: 3, scope: !308)
!1154 = !DILocation(line: 626, column: 10, scope: !308)
!1155 = !DILocation(line: 626, column: 21, scope: !308)
!1156 = !DILocation(line: 628, column: 44, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !309, line: 628, column: 11)
!1158 = distinct !DILexicalBlock(scope: !308, file: !309, line: 627, column: 5)
!1159 = !DILocation(line: 628, column: 32, scope: !1157)
!1160 = !DILocation(line: 628, column: 49, scope: !1157)
!1161 = !DILocation(line: 628, column: 11, scope: !1158)
!1162 = !DILocation(line: 630, column: 11, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !309, line: 630, column: 11)
!1164 = !DILocation(line: 630, column: 11, scope: !1158)
!1165 = !DILocation(line: 632, column: 26, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !309, line: 632, column: 15)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !309, line: 631, column: 9)
!1168 = !DILocation(line: 632, column: 34, scope: !1166)
!1169 = !DILocation(line: 632, column: 37, scope: !1166)
!1170 = !DILocation(line: 632, column: 15, scope: !1167)
!1171 = !DILocation(line: 640, column: 16, scope: !1158)
!1172 = distinct !{!1172, !1153, !1173, !1147}
!1173 = !DILocation(line: 641, column: 5, scope: !308)
!1174 = !DILocation(line: 644, column: 3, scope: !308)
!1175 = !DILocation(line: 0, scope: !1112, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 648, column: 31, scope: !308)
!1177 = !DILocation(line: 663, column: 7, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !308, file: !309, line: 663, column: 7)
!1179 = !DILocation(line: 664, column: 7, scope: !1178)
!1180 = !DILocation(line: 664, column: 10, scope: !1178)
!1181 = !DILocation(line: 663, column: 7, scope: !308)
!1182 = !DILocation(line: 669, column: 7, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1178, file: !309, line: 665, column: 5)
!1184 = !DILocation(line: 671, column: 5, scope: !1183)
!1185 = !DILocation(line: 676, column: 7, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1178, file: !309, line: 673, column: 5)
!1187 = !DILocation(line: 679, column: 3, scope: !308)
!1188 = !DILocation(line: 683, column: 3, scope: !308)
!1189 = !DILocation(line: 686, column: 3, scope: !308)
!1190 = !DILocation(line: 688, column: 3, scope: !308)
!1191 = !DILocation(line: 691, column: 3, scope: !308)
!1192 = !DILocation(line: 695, column: 3, scope: !308)
!1193 = !DILocation(line: 696, column: 1, scope: !308)
!1194 = !DISubprogram(name: "__printf_chk", scope: !1090, file: !1090, line: 95, type: !1195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!260, !260, !1094, null}
!1197 = !DISubprogram(name: "setlocale", scope: !1198, file: !1198, line: 122, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1198 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!258, !260, !265}
!1201 = !DISubprogram(name: "strncmp", scope: !1202, file: !1202, line: 159, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1202 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!260, !265, !265, !262}
!1205 = !DISubprogram(name: "exit", scope: !1206, file: !1206, line: 624, type: !990, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1206 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1207 = !DISubprogram(name: "getenv", scope: !1206, file: !1206, line: 641, type: !1208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!258, !265}
!1210 = !DISubprogram(name: "strcmp", scope: !1202, file: !1202, line: 156, type: !1211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!260, !265, !265}
!1213 = !DISubprogram(name: "strspn", scope: !1202, file: !1202, line: 297, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!264, !265, !265}
!1216 = !DISubprogram(name: "strchr", scope: !1202, file: !1202, line: 246, type: !1217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!258, !265, !260}
!1219 = !DISubprogram(name: "__ctype_b_loc", scope: !228, file: !228, line: 79, type: !1220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!1222}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!1225 = !DISubprogram(name: "strcspn", scope: !1202, file: !1202, line: 293, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1226 = !DISubprogram(name: "fwrite_unlocked", scope: !609, file: !609, line: 704, type: !1227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!262, !1229, !262, !262, !1093}
!1229 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1230)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1232 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 843, type: !1233, scopeLine: 844, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1235)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!260, !260, !572}
!1235 = !{!1236, !1237, !1238}
!1236 = !DILocalVariable(name: "margc", arg: 1, scope: !1232, file: !2, line: 843, type: !260)
!1237 = !DILocalVariable(name: "margv", arg: 2, scope: !1232, file: !2, line: 843, type: !572)
!1238 = !DILocalVariable(name: "value", scope: !1232, file: !2, line: 845, type: !319)
!1239 = !DILocation(line: 0, scope: !1232)
!1240 = !DILocation(line: 856, column: 21, scope: !1232)
!1241 = !DILocation(line: 856, column: 3, scope: !1232)
!1242 = !DILocation(line: 857, column: 3, scope: !1232)
!1243 = !DILocation(line: 858, column: 3, scope: !1232)
!1244 = !DILocation(line: 859, column: 3, scope: !1232)
!1245 = !DILocalVariable(name: "status", arg: 1, scope: !1246, file: !309, line: 102, type: !260)
!1246 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !309, file: !309, line: 102, type: !990, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1247)
!1247 = !{!1245}
!1248 = !DILocation(line: 0, scope: !1246, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 861, column: 3, scope: !1232)
!1250 = !DILocation(line: 105, column: 18, scope: !1251, inlinedAt: !1249)
!1251 = distinct !DILexicalBlock(scope: !1246, file: !309, line: 104, column: 7)
!1252 = !DILocation(line: 862, column: 3, scope: !1232)
!1253 = !DILocation(line: 865, column: 8, scope: !1232)
!1254 = !DILocation(line: 875, column: 17, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 875, column: 11)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 868, column: 5)
!1257 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 867, column: 7)
!1258 = !DILocation(line: 875, column: 11, scope: !1256)
!1259 = !DILocation(line: 877, column: 22, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !2, line: 877, column: 15)
!1261 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 876, column: 9)
!1262 = !DILocation(line: 0, scope: !1112, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 877, column: 15, scope: !1260)
!1264 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1263)
!1265 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1263)
!1266 = !DILocation(line: 877, column: 15, scope: !1261)
!1267 = !DILocation(line: 878, column: 13, scope: !1260)
!1268 = !DILocation(line: 0, scope: !1112, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 880, column: 15, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1261, file: !2, line: 880, column: 15)
!1271 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1269)
!1272 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1269)
!1273 = !DILocation(line: 880, column: 15, scope: !1261)
!1274 = !DILocation(line: 882, column: 28, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 881, column: 13)
!1276 = !DILocation(line: 882, column: 64, scope: !1275)
!1277 = !DILocation(line: 882, column: 73, scope: !1275)
!1278 = !DILocation(line: 882, column: 15, scope: !1275)
!1279 = !DILocation(line: 884, column: 15, scope: !1275)
!1280 = !DILocation(line: 887, column: 17, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 887, column: 11)
!1282 = !DILocation(line: 887, column: 21, scope: !1281)
!1283 = !DILocation(line: 887, column: 32, scope: !1281)
!1284 = !DILocation(line: 0, scope: !1112, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 887, column: 25, scope: !1281)
!1286 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1285)
!1287 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1285)
!1288 = !DILocation(line: 887, column: 11, scope: !1256)
!1289 = !DILocation(line: 888, column: 28, scope: !1281)
!1290 = !DILocation(line: 888, column: 45, scope: !1281)
!1291 = !DILocation(line: 888, column: 9, scope: !1281)
!1292 = !DILocation(line: 890, column: 7, scope: !1256)
!1293 = !DILocation(line: 893, column: 8, scope: !1232)
!1294 = !DILocation(line: 894, column: 7, scope: !1232)
!1295 = !DILocation(line: 896, column: 7, scope: !1232)
!1296 = !DILocation(line: 899, column: 27, scope: !1232)
!1297 = !DILocation(line: 899, column: 11, scope: !1232)
!1298 = !DILocation(line: 901, column: 7, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 901, column: 7)
!1300 = !DILocation(line: 901, column: 14, scope: !1299)
!1301 = !DILocation(line: 901, column: 11, scope: !1299)
!1302 = !DILocation(line: 901, column: 7, scope: !1232)
!1303 = !DILocation(line: 902, column: 24, scope: !1299)
!1304 = !DILocation(line: 902, column: 55, scope: !1299)
!1305 = !DILocation(line: 902, column: 60, scope: !1299)
!1306 = !DILocation(line: 902, column: 48, scope: !1299)
!1307 = !DILocation(line: 902, column: 5, scope: !1299)
!1308 = !DILocation(line: 904, column: 3, scope: !1232)
!1309 = !DILocation(line: 905, column: 1, scope: !1232)
!1310 = !DISubprogram(name: "bindtextdomain", scope: !1086, file: !1086, line: 86, type: !1311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!258, !265, !265}
!1313 = !DISubprogram(name: "textdomain", scope: !1086, file: !1086, line: 82, type: !1208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1314 = !DISubprogram(name: "atexit", scope: !1206, file: !1206, line: 602, type: !1315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!260, !646}
!1317 = distinct !DISubprogram(name: "test_syntax_error", scope: !2, file: !2, line: 97, type: !1318, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1320)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{null, !265, null}
!1320 = !{!1321, !1322}
!1321 = !DILocalVariable(name: "format", arg: 1, scope: !1317, file: !2, line: 97, type: !265)
!1322 = !DILocalVariable(name: "ap", scope: !1317, file: !2, line: 99, type: !1323)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1324, line: 12, baseType: !1325)
!1324 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !219, baseType: !1326)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1331, !1332}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1326, file: !219, line: 99, baseType: !259, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1326, file: !219, line: 99, baseType: !259, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1326, file: !219, line: 99, baseType: !259, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1326, file: !219, line: 99, baseType: !260, size: 32, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1326, file: !219, line: 99, baseType: !260, size: 32, offset: 224)
!1333 = distinct !DIAssignID()
!1334 = !DILocation(line: 0, scope: !1317)
!1335 = !DILocation(line: 99, column: 3, scope: !1317)
!1336 = !DILocation(line: 100, column: 3, scope: !1317)
!1337 = !DILocation(line: 101, column: 3, scope: !1317)
!1338 = !{i64 0, i64 8, !1000, i64 8, i64 8, !1000, i64 16, i64 8, !1000, i64 24, i64 4, !1100, i64 28, i64 4, !1100}
!1339 = !DILocation(line: 102, column: 3, scope: !1317)
!1340 = distinct !DISubprogram(name: "posixtest", scope: !2, file: !2, line: 616, type: !1341, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1343)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!319, !260}
!1343 = !{!1344, !1345}
!1344 = !DILocalVariable(name: "nargs", arg: 1, scope: !1340, file: !2, line: 616, type: !260)
!1345 = !DILocalVariable(name: "value", scope: !1340, file: !2, line: 618, type: !319)
!1346 = !DILocation(line: 0, scope: !1340)
!1347 = !DILocation(line: 620, column: 3, scope: !1340)
!1348 = !DILocation(line: 562, column: 10, scope: !1349, inlinedAt: !1352)
!1349 = distinct !DISubprogram(name: "one_argument", scope: !2, file: !2, line: 560, type: !1350, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!319}
!1352 = distinct !DILocation(line: 623, column: 17, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1340, file: !2, line: 621, column: 5)
!1354 = !DILocation(line: 562, column: 18, scope: !1349, inlinedAt: !1352)
!1355 = !DILocation(line: 562, column: 25, scope: !1349, inlinedAt: !1352)
!1356 = !DILocation(line: 624, column: 9, scope: !1353)
!1357 = !DILocation(line: 570, column: 14, scope: !1358, inlinedAt: !1362)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 570, column: 7)
!1359 = distinct !DISubprogram(name: "two_arguments", scope: !2, file: !2, line: 566, type: !1350, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1360)
!1360 = !{!1361}
!1361 = !DILocalVariable(name: "value", scope: !1359, file: !2, line: 568, type: !319)
!1362 = distinct !DILocation(line: 627, column: 17, scope: !1353)
!1363 = !DILocation(line: 570, column: 19, scope: !1358, inlinedAt: !1362)
!1364 = !DILocation(line: 0, scope: !1112, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 570, column: 7, scope: !1358, inlinedAt: !1362)
!1366 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1365)
!1367 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1365)
!1368 = !DILocation(line: 570, column: 7, scope: !1359, inlinedAt: !1362)
!1369 = !DILocation(line: 562, column: 18, scope: !1349, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 573, column: 17, scope: !1371, inlinedAt: !1362)
!1371 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 571, column: 5)
!1372 = !DILocation(line: 562, column: 10, scope: !1349, inlinedAt: !1370)
!1373 = !DILocation(line: 562, column: 25, scope: !1349, inlinedAt: !1370)
!1374 = !DILocation(line: 0, scope: !1359, inlinedAt: !1362)
!1375 = !DILocation(line: 574, column: 5, scope: !1371, inlinedAt: !1362)
!1376 = !DILocation(line: 575, column: 12, scope: !1377, inlinedAt: !1362)
!1377 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 575, column: 12)
!1378 = !DILocation(line: 575, column: 25, scope: !1377, inlinedAt: !1362)
!1379 = !DILocation(line: 576, column: 12, scope: !1377, inlinedAt: !1362)
!1380 = !DILocation(line: 576, column: 15, scope: !1377, inlinedAt: !1362)
!1381 = !DILocation(line: 576, column: 28, scope: !1377, inlinedAt: !1362)
!1382 = !DILocation(line: 577, column: 12, scope: !1377, inlinedAt: !1362)
!1383 = !DILocation(line: 577, column: 15, scope: !1377, inlinedAt: !1362)
!1384 = !DILocation(line: 577, column: 28, scope: !1377, inlinedAt: !1362)
!1385 = !DILocation(line: 575, column: 12, scope: !1358, inlinedAt: !1362)
!1386 = !DILocation(line: 579, column: 15, scope: !1387, inlinedAt: !1362)
!1387 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 578, column: 5)
!1388 = !DILocation(line: 582, column: 5, scope: !1377, inlinedAt: !1362)
!1389 = !DILocation(line: 631, column: 17, scope: !1353)
!1390 = !DILocation(line: 632, column: 9, scope: !1353)
!1391 = !DILocation(line: 635, column: 20, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 635, column: 13)
!1393 = !DILocation(line: 635, column: 25, scope: !1392)
!1394 = !DILocation(line: 0, scope: !1112, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 635, column: 13, scope: !1392)
!1396 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1395)
!1397 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1395)
!1398 = !DILocation(line: 635, column: 13, scope: !1353)
!1399 = !DILocalVariable(name: "f", arg: 1, scope: !1400, file: !2, line: 110, type: !319)
!1400 = distinct !DISubprogram(name: "advance", scope: !2, file: !2, line: 110, type: !1401, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{null, !319}
!1403 = !{!1399}
!1404 = !DILocation(line: 0, scope: !1400, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 637, column: 13, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 636, column: 11)
!1407 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1405)
!1408 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1405)
!1409 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 114, column: 7)
!1410 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1405)
!1411 = !DILocation(line: 638, column: 22, scope: !1406)
!1412 = !DILocation(line: 638, column: 21, scope: !1406)
!1413 = !DILocation(line: 639, column: 13, scope: !1406)
!1414 = !DILocation(line: 0, scope: !1112, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 641, column: 13, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 641, column: 13)
!1417 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1415)
!1418 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1415)
!1419 = !DILocation(line: 641, column: 36, scope: !1416)
!1420 = !DILocation(line: 641, column: 46, scope: !1416)
!1421 = !DILocation(line: 0, scope: !1112, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 641, column: 39, scope: !1416)
!1423 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1422)
!1424 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1422)
!1425 = !DILocation(line: 641, column: 13, scope: !1353)
!1426 = !DILocation(line: 0, scope: !1400, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 643, column: 13, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 642, column: 11)
!1429 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1427)
!1430 = !DILocation(line: 570, column: 14, scope: !1358, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 644, column: 21, scope: !1428)
!1432 = !DILocation(line: 0, scope: !1112, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 570, column: 7, scope: !1358, inlinedAt: !1431)
!1434 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1433)
!1435 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1433)
!1436 = !DILocation(line: 570, column: 7, scope: !1359, inlinedAt: !1431)
!1437 = !DILocation(line: 562, column: 18, scope: !1349, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 573, column: 17, scope: !1371, inlinedAt: !1431)
!1439 = !DILocation(line: 562, column: 10, scope: !1349, inlinedAt: !1438)
!1440 = !DILocation(line: 562, column: 25, scope: !1349, inlinedAt: !1438)
!1441 = !DILocation(line: 0, scope: !1359, inlinedAt: !1431)
!1442 = !DILocation(line: 574, column: 5, scope: !1371, inlinedAt: !1431)
!1443 = !DILocation(line: 575, column: 12, scope: !1377, inlinedAt: !1431)
!1444 = !DILocation(line: 575, column: 25, scope: !1377, inlinedAt: !1431)
!1445 = !DILocation(line: 576, column: 12, scope: !1377, inlinedAt: !1431)
!1446 = !DILocation(line: 576, column: 15, scope: !1377, inlinedAt: !1431)
!1447 = !DILocation(line: 576, column: 28, scope: !1377, inlinedAt: !1431)
!1448 = !DILocation(line: 577, column: 12, scope: !1377, inlinedAt: !1431)
!1449 = !DILocation(line: 577, column: 15, scope: !1377, inlinedAt: !1431)
!1450 = !DILocation(line: 577, column: 28, scope: !1377, inlinedAt: !1431)
!1451 = !DILocation(line: 575, column: 12, scope: !1358, inlinedAt: !1431)
!1452 = !DILocation(line: 579, column: 15, scope: !1387, inlinedAt: !1431)
!1453 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 645, column: 13, scope: !1428)
!1455 = !DILocation(line: 582, column: 5, scope: !1377, inlinedAt: !1431)
!1456 = !DILocation(line: 0, scope: !1400, inlinedAt: !1454)
!1457 = !DILocation(line: 646, column: 13, scope: !1428)
!1458 = !DILocation(line: 651, column: 9, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !2, line: 651, column: 9)
!1460 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 651, column: 9)
!1461 = !DILocation(line: 651, column: 9, scope: !1460)
!1462 = !DILocation(line: 553, column: 7, scope: !1463, inlinedAt: !1465)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 553, column: 7)
!1464 = distinct !DISubprogram(name: "expr", scope: !2, file: !2, line: 551, type: !1350, scopeLine: 552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218)
!1465 = distinct !DILocation(line: 652, column: 17, scope: !1353)
!1466 = !DILocation(line: 553, column: 14, scope: !1463, inlinedAt: !1465)
!1467 = !DILocation(line: 553, column: 11, scope: !1463, inlinedAt: !1465)
!1468 = !DILocation(line: 553, column: 7, scope: !1464, inlinedAt: !1465)
!1469 = !DILocation(line: 554, column: 5, scope: !1463, inlinedAt: !1465)
!1470 = !DILocation(line: 556, column: 10, scope: !1464, inlinedAt: !1465)
!1471 = !DILocation(line: 653, column: 5, scope: !1353)
!1472 = !DILocation(line: 655, column: 3, scope: !1340)
!1473 = distinct !DISubprogram(name: "unary_operator", scope: !2, file: !2, line: 366, type: !1350, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1474)
!1474 = !{!1475, !1510, !1513, !1514, !1518, !1519, !1522, !1523, !1525}
!1475 = !DILocalVariable(name: "stat_buf", scope: !1473, file: !2, line: 368, type: !1476)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1477, line: 44, size: 1024, elements: !1478)
!1477 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1478 = !{!1479, !1481, !1483, !1485, !1487, !1489, !1491, !1492, !1493, !1494, !1496, !1497, !1499, !1506, !1507, !1508}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1476, file: !1477, line: 46, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !271, line: 145, baseType: !264)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1476, file: !1477, line: 47, baseType: !1482, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !271, line: 148, baseType: !264)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1476, file: !1477, line: 48, baseType: !1484, size: 32, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !271, line: 150, baseType: !222)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1476, file: !1477, line: 49, baseType: !1486, size: 32, offset: 160)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !271, line: 151, baseType: !222)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1476, file: !1477, line: 50, baseType: !1488, size: 32, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !271, line: 146, baseType: !222)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1476, file: !1477, line: 51, baseType: !1490, size: 32, offset: 224)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !271, line: 147, baseType: !222)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1476, file: !1477, line: 52, baseType: !1480, size: 64, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1476, file: !1477, line: 53, baseType: !1480, size: 64, offset: 320)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1476, file: !1477, line: 54, baseType: !358, size: 64, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1476, file: !1477, line: 55, baseType: !1495, size: 32, offset: 448)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !271, line: 175, baseType: !260)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1476, file: !1477, line: 56, baseType: !260, size: 32, offset: 480)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1476, file: !1477, line: 57, baseType: !1498, size: 64, offset: 512)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !271, line: 180, baseType: !272)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1476, file: !1477, line: 65, baseType: !1500, size: 128, offset: 576)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1501, line: 11, size: 128, elements: !1502)
!1501 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1500, file: !1501, line: 16, baseType: !270, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1500, file: !1501, line: 21, baseType: !1505, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !271, line: 197, baseType: !272)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1476, file: !1477, line: 66, baseType: !1500, size: 128, offset: 704)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1476, file: !1477, line: 67, baseType: !1500, size: 128, offset: 832)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1476, file: !1477, line: 79, baseType: !1509, size: 64, offset: 960)
!1509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 64, elements: !20)
!1510 = !DILocalVariable(name: "atime", scope: !1511, file: !2, line: 401, type: !1500)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 397, column: 7)
!1512 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 371, column: 5)
!1513 = !DILocalVariable(name: "mtime", scope: !1511, file: !2, line: 402, type: !1500)
!1514 = !DILocalVariable(name: "euid", scope: !1515, file: !2, line: 412, type: !1516)
!1515 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 407, column: 7)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1517, line: 79, baseType: !1488)
!1517 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1518 = !DILocalVariable(name: "NO_UID", scope: !1515, file: !2, line: 413, type: !1516)
!1519 = !DILocalVariable(name: "egid", scope: !1520, file: !2, line: 423, type: !1521)
!1520 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 418, column: 7)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1517, line: 64, baseType: !1490)
!1522 = !DILocalVariable(name: "NO_GID", scope: !1520, file: !2, line: 424, type: !1521)
!1523 = !DILocalVariable(name: "fd", scope: !1524, file: !2, line: 489, type: !272)
!1524 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 488, column: 7)
!1525 = !DILocalVariable(name: "arg", scope: !1524, file: !2, line: 490, type: !265)
!1526 = distinct !DIAssignID()
!1527 = distinct !DIAssignID()
!1528 = !DILocation(line: 0, scope: !1473)
!1529 = !DILocation(line: 368, column: 3, scope: !1473)
!1530 = !DILocation(line: 370, column: 11, scope: !1473)
!1531 = !DILocation(line: 370, column: 16, scope: !1473)
!1532 = !DILocation(line: 370, column: 3, scope: !1473)
!1533 = !DILocation(line: 373, column: 26, scope: !1512)
!1534 = !DILocation(line: 373, column: 67, scope: !1512)
!1535 = !DILocation(line: 373, column: 72, scope: !1512)
!1536 = !DILocation(line: 373, column: 60, scope: !1512)
!1537 = !DILocation(line: 373, column: 7, scope: !1512)
!1538 = !DILocation(line: 0, scope: !1400, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1541)
!1540 = distinct !DISubprogram(name: "unary_advance", scope: !2, file: !2, line: 119, type: !647, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218)
!1541 = distinct !DILocation(line: 381, column: 7, scope: !1512)
!1542 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1539)
!1543 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1539)
!1544 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1539)
!1545 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1541)
!1546 = !DILocation(line: 382, column: 20, scope: !1512)
!1547 = !DILocation(line: 382, column: 14, scope: !1512)
!1548 = !DILocation(line: 382, column: 46, scope: !1512)
!1549 = !DILocation(line: 382, column: 7, scope: !1512)
!1550 = !DILocation(line: 0, scope: !1400, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 385, column: 7, scope: !1512)
!1553 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1551)
!1554 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1551)
!1555 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1551)
!1556 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1552)
!1557 = !DILocation(line: 386, column: 26, scope: !1512)
!1558 = !DILocation(line: 386, column: 14, scope: !1512)
!1559 = !DILocation(line: 386, column: 47, scope: !1512)
!1560 = !DILocation(line: 386, column: 7, scope: !1512)
!1561 = !DILocation(line: 0, scope: !1400, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 389, column: 7, scope: !1512)
!1564 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1562)
!1565 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1562)
!1566 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1562)
!1567 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1563)
!1568 = !DILocation(line: 390, column: 26, scope: !1512)
!1569 = !DILocation(line: 390, column: 14, scope: !1512)
!1570 = !DILocation(line: 390, column: 47, scope: !1512)
!1571 = !DILocation(line: 390, column: 7, scope: !1512)
!1572 = !DILocation(line: 0, scope: !1400, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 393, column: 7, scope: !1512)
!1575 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1573)
!1576 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1573)
!1577 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1573)
!1578 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1574)
!1579 = !DILocation(line: 394, column: 26, scope: !1512)
!1580 = !DILocation(line: 394, column: 14, scope: !1512)
!1581 = !DILocation(line: 394, column: 47, scope: !1512)
!1582 = !DILocation(line: 394, column: 7, scope: !1512)
!1583 = !DILocation(line: 0, scope: !1400, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 398, column: 9, scope: !1511)
!1586 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1584)
!1587 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1584)
!1588 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1584)
!1589 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1585)
!1590 = !DILocation(line: 399, column: 19, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 399, column: 13)
!1592 = !DILocation(line: 399, column: 13, scope: !1591)
!1593 = !DILocation(line: 399, column: 45, scope: !1591)
!1594 = !DILocation(line: 399, column: 13, scope: !1511)
!1595 = !DILocalVariable(name: "st", arg: 1, scope: !1596, file: !1597, line: 147, type: !1600)
!1596 = distinct !DISubprogram(name: "get_stat_atime", scope: !1597, file: !1597, line: 147, type: !1598, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1602)
!1597 = !DIFile(filename: "./lib/stat-time.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f4edb1fd4cb81bf2ea0eec563958d759")
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!1500, !1600}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1476)
!1602 = !{!1595}
!1603 = !DILocation(line: 0, scope: !1596, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 401, column: 33, scope: !1511)
!1605 = !DILocation(line: 150, column: 10, scope: !1596, inlinedAt: !1604)
!1606 = !DILocation(line: 0, scope: !1511)
!1607 = !DILocalVariable(name: "st", arg: 1, scope: !1608, file: !1597, line: 169, type: !1600)
!1608 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1597, file: !1597, line: 169, type: !1598, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1609)
!1609 = !{!1607}
!1610 = !DILocation(line: 0, scope: !1608, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 402, column: 33, scope: !1511)
!1612 = !DILocation(line: 172, column: 10, scope: !1608, inlinedAt: !1611)
!1613 = !DILocalVariable(name: "a", arg: 1, scope: !1614, file: !1615, line: 64, type: !1500)
!1614 = distinct !DISubprogram(name: "timespec_cmp", scope: !1615, file: !1615, line: 64, type: !1616, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1618)
!1615 = !DIFile(filename: "./lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!260, !1500, !1500}
!1618 = !{!1613, !1619}
!1619 = !DILocalVariable(name: "b", arg: 2, scope: !1614, file: !1615, line: 64, type: !1500)
!1620 = !DILocation(line: 0, scope: !1614, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 403, column: 17, scope: !1511)
!1622 = !DILocation(line: 66, column: 45, scope: !1614, inlinedAt: !1621)
!1623 = !DILocation(line: 66, column: 12, scope: !1614, inlinedAt: !1621)
!1624 = !DILocation(line: 66, column: 43, scope: !1614, inlinedAt: !1621)
!1625 = !DILocation(line: 403, column: 45, scope: !1511)
!1626 = !DILocation(line: 0, scope: !1400, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 408, column: 9, scope: !1515)
!1629 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1627)
!1630 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1627)
!1631 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1627)
!1632 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1628)
!1633 = !DILocation(line: 409, column: 19, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 409, column: 13)
!1635 = !DILocation(line: 409, column: 13, scope: !1634)
!1636 = !DILocation(line: 409, column: 45, scope: !1634)
!1637 = !DILocation(line: 409, column: 13, scope: !1515)
!1638 = !DILocation(line: 411, column: 9, scope: !1515)
!1639 = !DILocation(line: 411, column: 15, scope: !1515)
!1640 = !DILocation(line: 412, column: 22, scope: !1515)
!1641 = !DILocation(line: 0, scope: !1515)
!1642 = !DILocation(line: 414, column: 24, scope: !1515)
!1643 = !DILocation(line: 414, column: 34, scope: !1515)
!1644 = !DILocation(line: 414, column: 37, scope: !1515)
!1645 = !DILocation(line: 414, column: 44, scope: !1515)
!1646 = !DILocation(line: 414, column: 64, scope: !1515)
!1647 = !{!1648, !1101, i64 24}
!1648 = !{!"stat", !1649, i64 0, !1649, i64 8, !1101, i64 16, !1101, i64 20, !1101, i64 24, !1101, i64 28, !1649, i64 32, !1649, i64 40, !1649, i64 48, !1101, i64 56, !1101, i64 60, !1649, i64 64, !1650, i64 72, !1650, i64 88, !1650, i64 104, !1002, i64 120}
!1649 = !{!"long", !1002, i64 0}
!1650 = !{!"timespec", !1649, i64 0, !1649, i64 8}
!1651 = !DILocation(line: 414, column: 52, scope: !1515)
!1652 = !DILocation(line: 0, scope: !1400, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 419, column: 9, scope: !1520)
!1655 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1653)
!1656 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1653)
!1657 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1653)
!1658 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1654)
!1659 = !DILocation(line: 420, column: 19, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1520, file: !2, line: 420, column: 13)
!1661 = !DILocation(line: 420, column: 13, scope: !1660)
!1662 = !DILocation(line: 420, column: 45, scope: !1660)
!1663 = !DILocation(line: 420, column: 13, scope: !1520)
!1664 = !DILocation(line: 422, column: 9, scope: !1520)
!1665 = !DILocation(line: 422, column: 15, scope: !1520)
!1666 = !DILocation(line: 423, column: 22, scope: !1520)
!1667 = !DILocation(line: 0, scope: !1520)
!1668 = !DILocation(line: 425, column: 24, scope: !1520)
!1669 = !DILocation(line: 425, column: 34, scope: !1520)
!1670 = !DILocation(line: 425, column: 37, scope: !1520)
!1671 = !DILocation(line: 425, column: 44, scope: !1520)
!1672 = !DILocation(line: 425, column: 64, scope: !1520)
!1673 = !{!1648, !1101, i64 28}
!1674 = !DILocation(line: 425, column: 52, scope: !1520)
!1675 = !DILocation(line: 0, scope: !1400, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 429, column: 7, scope: !1512)
!1678 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1676)
!1679 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1676)
!1680 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1676)
!1681 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1677)
!1682 = !DILocation(line: 432, column: 21, scope: !1512)
!1683 = !DILocation(line: 432, column: 15, scope: !1512)
!1684 = !DILocation(line: 432, column: 47, scope: !1512)
!1685 = !DILocation(line: 433, column: 15, scope: !1512)
!1686 = !DILocation(line: 432, column: 7, scope: !1512)
!1687 = !DILocation(line: 0, scope: !1400, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 436, column: 7, scope: !1512)
!1690 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1688)
!1691 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1688)
!1692 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1688)
!1693 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1689)
!1694 = !DILocation(line: 437, column: 21, scope: !1512)
!1695 = !DILocation(line: 437, column: 15, scope: !1512)
!1696 = !DILocation(line: 437, column: 47, scope: !1512)
!1697 = !DILocation(line: 438, column: 15, scope: !1512)
!1698 = !DILocation(line: 437, column: 7, scope: !1512)
!1699 = !DILocation(line: 0, scope: !1400, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 441, column: 7, scope: !1512)
!1702 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1700)
!1703 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1700)
!1704 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1700)
!1705 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1701)
!1706 = !DILocation(line: 442, column: 21, scope: !1512)
!1707 = !DILocation(line: 442, column: 15, scope: !1512)
!1708 = !DILocation(line: 442, column: 47, scope: !1512)
!1709 = !DILocation(line: 443, column: 15, scope: !1512)
!1710 = !DILocation(line: 442, column: 7, scope: !1512)
!1711 = !DILocation(line: 0, scope: !1400, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 446, column: 7, scope: !1512)
!1714 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1712)
!1715 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1712)
!1716 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1712)
!1717 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1713)
!1718 = !DILocation(line: 447, column: 21, scope: !1512)
!1719 = !DILocation(line: 447, column: 15, scope: !1512)
!1720 = !DILocation(line: 447, column: 47, scope: !1512)
!1721 = !DILocation(line: 448, column: 15, scope: !1512)
!1722 = !DILocation(line: 447, column: 7, scope: !1512)
!1723 = !DILocation(line: 0, scope: !1400, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 451, column: 7, scope: !1512)
!1726 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1724)
!1727 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1724)
!1728 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1724)
!1729 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1725)
!1730 = !DILocation(line: 452, column: 21, scope: !1512)
!1731 = !DILocation(line: 452, column: 15, scope: !1512)
!1732 = !DILocation(line: 452, column: 47, scope: !1512)
!1733 = !DILocation(line: 453, column: 15, scope: !1512)
!1734 = !DILocation(line: 452, column: 7, scope: !1512)
!1735 = !DILocation(line: 0, scope: !1400, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 456, column: 7, scope: !1512)
!1738 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1736)
!1739 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1736)
!1740 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1736)
!1741 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1737)
!1742 = !DILocation(line: 457, column: 21, scope: !1512)
!1743 = !DILocation(line: 457, column: 15, scope: !1512)
!1744 = !DILocation(line: 457, column: 47, scope: !1512)
!1745 = !DILocation(line: 458, column: 15, scope: !1512)
!1746 = !DILocation(line: 457, column: 7, scope: !1512)
!1747 = !DILocation(line: 0, scope: !1400, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 461, column: 7, scope: !1512)
!1750 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1748)
!1751 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1748)
!1752 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1748)
!1753 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1749)
!1754 = !DILocation(line: 462, column: 21, scope: !1512)
!1755 = !DILocation(line: 462, column: 15, scope: !1512)
!1756 = !DILocation(line: 462, column: 47, scope: !1512)
!1757 = !DILocation(line: 463, column: 15, scope: !1512)
!1758 = !DILocation(line: 462, column: 7, scope: !1512)
!1759 = !DILocation(line: 0, scope: !1400, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 469, column: 7, scope: !1512)
!1762 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1760)
!1763 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1760)
!1764 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1760)
!1765 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1761)
!1766 = !DILocation(line: 470, column: 25, scope: !1512)
!1767 = !DILocalVariable(name: "linkbuf", scope: !1768, file: !1769, line: 51, type: !203)
!1768 = distinct !DISubprogram(name: "issymlink", scope: !1769, file: !1769, line: 49, type: !1770, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1772)
!1769 = !DIFile(filename: "./lib/issymlink.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3ed5fe5c76158b7c9a68dd013fb9e151")
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!260, !265}
!1772 = !{!1773, !1767}
!1773 = !DILocalVariable(name: "filename", arg: 1, scope: !1768, file: !1769, line: 49, type: !265)
!1774 = !DILocation(line: 0, scope: !1768, inlinedAt: !1775)
!1775 = distinct !DILocation(line: 470, column: 14, scope: !1512)
!1776 = !DILocation(line: 51, column: 3, scope: !1768, inlinedAt: !1775)
!1777 = !DILocation(line: 52, column: 7, scope: !1778, inlinedAt: !1775)
!1778 = distinct !DILexicalBlock(scope: !1768, file: !1769, line: 52, column: 7)
!1779 = !DILocation(line: 52, column: 54, scope: !1778, inlinedAt: !1775)
!1780 = !DILocation(line: 58, column: 1, scope: !1768, inlinedAt: !1775)
!1781 = !DILocation(line: 470, column: 7, scope: !1512)
!1782 = !DILocation(line: 0, scope: !1400, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 473, column: 7, scope: !1512)
!1785 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1783)
!1786 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1783)
!1787 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1783)
!1788 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1784)
!1789 = !DILocation(line: 474, column: 21, scope: !1512)
!1790 = !DILocation(line: 474, column: 15, scope: !1512)
!1791 = !DILocation(line: 474, column: 47, scope: !1512)
!1792 = !DILocation(line: 475, column: 15, scope: !1512)
!1793 = !DILocation(line: 474, column: 7, scope: !1512)
!1794 = !DILocation(line: 0, scope: !1400, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 478, column: 7, scope: !1512)
!1797 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1795)
!1798 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1795)
!1799 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1795)
!1800 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1796)
!1801 = !DILocation(line: 479, column: 21, scope: !1512)
!1802 = !DILocation(line: 479, column: 15, scope: !1512)
!1803 = !DILocation(line: 479, column: 47, scope: !1512)
!1804 = !DILocation(line: 480, column: 15, scope: !1512)
!1805 = !DILocation(line: 479, column: 7, scope: !1512)
!1806 = !DILocation(line: 0, scope: !1400, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 483, column: 7, scope: !1512)
!1809 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1807)
!1810 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1807)
!1811 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1807)
!1812 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1808)
!1813 = !DILocation(line: 484, column: 21, scope: !1512)
!1814 = !DILocation(line: 484, column: 15, scope: !1512)
!1815 = !DILocation(line: 484, column: 47, scope: !1512)
!1816 = !DILocation(line: 485, column: 15, scope: !1512)
!1817 = !DILocation(line: 484, column: 7, scope: !1512)
!1818 = !DILocation(line: 0, scope: !1400, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 491, column: 9, scope: !1524)
!1821 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1819)
!1822 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1819)
!1823 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1819)
!1824 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1820)
!1825 = !DILocation(line: 492, column: 25, scope: !1524)
!1826 = !DILocation(line: 492, column: 15, scope: !1524)
!1827 = !DILocation(line: 0, scope: !1524)
!1828 = !DILocation(line: 493, column: 9, scope: !1524)
!1829 = !DILocation(line: 493, column: 15, scope: !1524)
!1830 = !DILocation(line: 494, column: 14, scope: !1524)
!1831 = !DILocation(line: 495, column: 17, scope: !1524)
!1832 = !DILocation(line: 495, column: 23, scope: !1524)
!1833 = !DILocation(line: 495, column: 33, scope: !1524)
!1834 = !DILocation(line: 495, column: 72, scope: !1524)
!1835 = !DILocation(line: 495, column: 64, scope: !1524)
!1836 = !DILocation(line: 495, column: 61, scope: !1524)
!1837 = !DILocation(line: 0, scope: !1400, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 499, column: 7, scope: !1512)
!1840 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1838)
!1841 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1838)
!1842 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1838)
!1843 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1839)
!1844 = !DILocation(line: 500, column: 14, scope: !1512)
!1845 = !DILocation(line: 500, column: 31, scope: !1512)
!1846 = !DILocation(line: 500, column: 7, scope: !1512)
!1847 = !DILocation(line: 0, scope: !1400, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 121, column: 3, scope: !1540, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 503, column: 7, scope: !1512)
!1850 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1848)
!1851 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1848)
!1852 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1848)
!1853 = !DILocation(line: 122, column: 3, scope: !1540, inlinedAt: !1849)
!1854 = !DILocation(line: 504, column: 14, scope: !1512)
!1855 = !DILocation(line: 504, column: 31, scope: !1512)
!1856 = !DILocation(line: 504, column: 7, scope: !1512)
!1857 = !DILocation(line: 0, scope: !1512)
!1858 = !DILocation(line: 506, column: 1, scope: !1473)
!1859 = distinct !DISubprogram(name: "beyond", scope: !2, file: !2, line: 130, type: !647, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218)
!1860 = !DILocation(line: 132, column: 22, scope: !1859)
!1861 = !DILocation(line: 132, column: 61, scope: !1859)
!1862 = !DILocation(line: 132, column: 66, scope: !1859)
!1863 = !DILocation(line: 132, column: 54, scope: !1859)
!1864 = !DILocation(line: 132, column: 3, scope: !1859)
!1865 = distinct !DISubprogram(name: "three_arguments", scope: !2, file: !2, line: 587, type: !1350, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1866)
!1866 = !{!1867, !1868}
!1867 = !DILocalVariable(name: "value", scope: !1865, file: !2, line: 589, type: !319)
!1868 = !DILocalVariable(name: "bop", scope: !1865, file: !2, line: 590, type: !260)
!1869 = !DILocation(line: 590, column: 20, scope: !1865)
!1870 = !DILocation(line: 590, column: 25, scope: !1865)
!1871 = !DILocation(line: 590, column: 13, scope: !1865)
!1872 = !{i32 -1, i32 13}
!1873 = !DILocation(line: 0, scope: !1865)
!1874 = !DILocation(line: 592, column: 9, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1865, file: !2, line: 592, column: 7)
!1876 = !DILocation(line: 592, column: 7, scope: !1865)
!1877 = !DILocation(line: 593, column: 13, scope: !1875)
!1878 = !DILocation(line: 593, column: 5, scope: !1875)
!1879 = !DILocation(line: 594, column: 19, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1875, file: !2, line: 594, column: 12)
!1881 = !DILocation(line: 0, scope: !1112, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 594, column: 12, scope: !1880)
!1883 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1882)
!1884 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1882)
!1885 = !DILocation(line: 594, column: 12, scope: !1875)
!1886 = !DILocation(line: 0, scope: !1400, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 596, column: 7, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 595, column: 5)
!1889 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1887)
!1890 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !1887)
!1891 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !1887)
!1892 = !DILocation(line: 0, scope: !1112, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 570, column: 7, scope: !1358, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 597, column: 16, scope: !1888)
!1895 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1893)
!1896 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1893)
!1897 = !DILocation(line: 570, column: 7, scope: !1359, inlinedAt: !1894)
!1898 = !DILocation(line: 570, column: 14, scope: !1358, inlinedAt: !1894)
!1899 = !DILocation(line: 562, column: 18, scope: !1349, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 573, column: 17, scope: !1371, inlinedAt: !1894)
!1901 = !DILocation(line: 562, column: 10, scope: !1349, inlinedAt: !1900)
!1902 = !DILocation(line: 562, column: 25, scope: !1349, inlinedAt: !1900)
!1903 = !DILocation(line: 0, scope: !1359, inlinedAt: !1894)
!1904 = !DILocation(line: 574, column: 5, scope: !1371, inlinedAt: !1894)
!1905 = !DILocation(line: 575, column: 12, scope: !1377, inlinedAt: !1894)
!1906 = !DILocation(line: 575, column: 25, scope: !1377, inlinedAt: !1894)
!1907 = !DILocation(line: 576, column: 12, scope: !1377, inlinedAt: !1894)
!1908 = !DILocation(line: 576, column: 15, scope: !1377, inlinedAt: !1894)
!1909 = !DILocation(line: 576, column: 28, scope: !1377, inlinedAt: !1894)
!1910 = !DILocation(line: 577, column: 12, scope: !1377, inlinedAt: !1894)
!1911 = !DILocation(line: 577, column: 15, scope: !1377, inlinedAt: !1894)
!1912 = !DILocation(line: 577, column: 28, scope: !1377, inlinedAt: !1894)
!1913 = !DILocation(line: 575, column: 12, scope: !1358, inlinedAt: !1894)
!1914 = !DILocation(line: 579, column: 15, scope: !1387, inlinedAt: !1894)
!1915 = !DILocation(line: 582, column: 5, scope: !1377, inlinedAt: !1894)
!1916 = !DILocation(line: 597, column: 15, scope: !1888)
!1917 = !DILocation(line: 598, column: 5, scope: !1888)
!1918 = !DILocation(line: 0, scope: !1112, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 599, column: 12, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 599, column: 12)
!1921 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1919)
!1922 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1919)
!1923 = !DILocation(line: 599, column: 35, scope: !1920)
!1924 = !DILocation(line: 599, column: 45, scope: !1920)
!1925 = !DILocation(line: 0, scope: !1112, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 599, column: 38, scope: !1920)
!1927 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1926)
!1928 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1926)
!1929 = !DILocation(line: 599, column: 12, scope: !1880)
!1930 = !DILocation(line: 0, scope: !1400, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 601, column: 7, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1920, file: !2, line: 600, column: 5)
!1933 = !DILocation(line: 562, column: 10, scope: !1349, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 602, column: 15, scope: !1932)
!1935 = !DILocation(line: 562, column: 25, scope: !1349, inlinedAt: !1934)
!1936 = !DILocation(line: 0, scope: !1400, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 603, column: 7, scope: !1932)
!1938 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !1937)
!1939 = !DILocation(line: 604, column: 5, scope: !1932)
!1940 = !DILocation(line: 0, scope: !1112, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 605, column: 12, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1920, file: !2, line: 605, column: 12)
!1943 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1941)
!1944 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1941)
!1945 = !DILocation(line: 605, column: 40, scope: !1942)
!1946 = !DILocation(line: 0, scope: !1112, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 605, column: 43, scope: !1942)
!1948 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1947)
!1949 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1947)
!1950 = !DILocation(line: 606, column: 12, scope: !1942)
!1951 = !DILocation(line: 0, scope: !1112, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 606, column: 15, scope: !1942)
!1953 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1952)
!1954 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1952)
!1955 = !DILocation(line: 606, column: 42, scope: !1942)
!1956 = !DILocation(line: 0, scope: !1112, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 606, column: 45, scope: !1942)
!1958 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1957)
!1959 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1957)
!1960 = !DILocation(line: 605, column: 12, scope: !1920)
!1961 = !DILocation(line: 553, column: 14, scope: !1463, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 607, column: 13, scope: !1942)
!1963 = !DILocation(line: 553, column: 11, scope: !1463, inlinedAt: !1962)
!1964 = !DILocation(line: 553, column: 7, scope: !1464, inlinedAt: !1962)
!1965 = !DILocation(line: 554, column: 5, scope: !1463, inlinedAt: !1962)
!1966 = !DILocation(line: 556, column: 10, scope: !1464, inlinedAt: !1962)
!1967 = !DILocation(line: 609, column: 24, scope: !1942)
!1968 = !DILocation(line: 610, column: 31, scope: !1942)
!1969 = !DILocation(line: 610, column: 36, scope: !1942)
!1970 = !DILocation(line: 610, column: 24, scope: !1942)
!1971 = !DILocation(line: 609, column: 5, scope: !1942)
!1972 = !DILocation(line: 611, column: 3, scope: !1865)
!1973 = !DISubprogram(name: "__assert_fail", scope: !1974, file: !1974, line: 69, type: !1975, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1974 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !265, !265, !222, !265}
!1977 = distinct !DISubprogram(name: "or", scope: !2, file: !2, line: 533, type: !1350, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1978)
!1978 = !{!1979}
!1979 = !DILocalVariable(name: "value", scope: !1977, file: !2, line: 535, type: !319)
!1980 = !DILocation(line: 0, scope: !1977)
!1981 = !DILocalVariable(name: "value", scope: !1982, file: !2, line: 516, type: !319)
!1982 = distinct !DISubprogram(name: "and", scope: !2, file: !2, line: 514, type: !1350, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1983)
!1983 = !{!1981}
!1984 = !DILocation(line: 0, scope: !1982, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 539, column: 16, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 538, column: 5)
!1987 = !DILocalVariable(name: "negated", scope: !1988, file: !2, line: 227, type: !319)
!1988 = distinct !DISubprogram(name: "term", scope: !2, file: !2, line: 224, type: !1350, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1989)
!1989 = !{!1990, !1987, !1991, !1992}
!1990 = !DILocalVariable(name: "value", scope: !1988, file: !2, line: 226, type: !319)
!1991 = !DILocalVariable(name: "bop", scope: !1988, file: !2, line: 228, type: !260)
!1992 = !DILocalVariable(name: "nargs", scope: !1993, file: !2, line: 243, type: !260)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !2, line: 242, column: 5)
!1994 = distinct !DILexicalBlock(scope: !1988, file: !2, line: 241, column: 7)
!1995 = !DILocation(line: 0, scope: !1988, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 520, column: 16, scope: !1997, inlinedAt: !1985)
!1997 = distinct !DILexicalBlock(scope: !1982, file: !2, line: 519, column: 5)
!1998 = !DILocation(line: 231, column: 14, scope: !1988, inlinedAt: !1996)
!1999 = !DILocation(line: 231, column: 21, scope: !1988, inlinedAt: !1996)
!2000 = !DILocation(line: 537, column: 3, scope: !1977)
!2001 = !DILocation(line: 231, column: 24, scope: !1988, inlinedAt: !1996)
!2002 = !DILocation(line: 231, column: 37, scope: !1988, inlinedAt: !1996)
!2003 = !DILocation(line: 231, column: 44, scope: !1988, inlinedAt: !1996)
!2004 = !DILocation(line: 231, column: 3, scope: !1988, inlinedAt: !1996)
!2005 = !DILocation(line: 231, column: 47, scope: !1988, inlinedAt: !1996)
!2006 = !DILocation(line: 231, column: 60, scope: !1988, inlinedAt: !1996)
!2007 = !DILocation(line: 0, scope: !1400, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 233, column: 7, scope: !2009, inlinedAt: !1996)
!2009 = distinct !DILexicalBlock(scope: !1988, file: !2, line: 232, column: 5)
!2010 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !2008)
!2011 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !2008)
!2012 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !2008)
!2013 = !DILocation(line: 234, column: 17, scope: !2009, inlinedAt: !1996)
!2014 = distinct !{!2014, !2004, !2015, !1147}
!2015 = !DILocation(line: 235, column: 5, scope: !1988, inlinedAt: !1996)
!2016 = !DILocation(line: 238, column: 5, scope: !2017, inlinedAt: !1996)
!2017 = distinct !DILexicalBlock(scope: !1988, file: !2, line: 237, column: 7)
!2018 = !DILocation(line: 241, column: 7, scope: !1994, inlinedAt: !1996)
!2019 = !DILocation(line: 241, column: 20, scope: !1994, inlinedAt: !1996)
!2020 = !DILocation(line: 241, column: 27, scope: !1994, inlinedAt: !1996)
!2021 = !DILocation(line: 241, column: 30, scope: !1994, inlinedAt: !1996)
!2022 = !DILocation(line: 241, column: 43, scope: !1994, inlinedAt: !1996)
!2023 = !DILocation(line: 241, column: 7, scope: !1988, inlinedAt: !1996)
!2024 = !DILocation(line: 0, scope: !1400, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 245, column: 7, scope: !1993, inlinedAt: !1996)
!2026 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !2025)
!2027 = !DILocation(line: 114, column: 9, scope: !1409, inlinedAt: !2025)
!2028 = !DILocation(line: 0, scope: !1993, inlinedAt: !1996)
!2029 = !DILocation(line: 248, column: 16, scope: !2030, inlinedAt: !1996)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !2, line: 247, column: 7)
!2031 = distinct !DILexicalBlock(scope: !1993, file: !2, line: 247, column: 7)
!2032 = !DILocation(line: 248, column: 24, scope: !2030, inlinedAt: !1996)
!2033 = !DILocation(line: 248, column: 31, scope: !2030, inlinedAt: !1996)
!2034 = !DILocation(line: 247, column: 7, scope: !2031, inlinedAt: !1996)
!2035 = !DILocation(line: 248, column: 43, scope: !2030, inlinedAt: !1996)
!2036 = !DILocation(line: 0, scope: !1112, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 248, column: 36, scope: !2030, inlinedAt: !1996)
!2038 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2037)
!2039 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2037)
!2040 = !DILocation(line: 115, column: 5, scope: !1409, inlinedAt: !2025)
!2041 = distinct !{!2041, !2034, !2042, !1147}
!2042 = !DILocation(line: 254, column: 11, scope: !2031, inlinedAt: !1996)
!2043 = !DILocation(line: 0, scope: !2031, inlinedAt: !1996)
!2044 = !DILocation(line: 256, column: 15, scope: !1993, inlinedAt: !1996)
!2045 = !DILocation(line: 257, column: 12, scope: !2046, inlinedAt: !1996)
!2046 = distinct !DILexicalBlock(scope: !1993, file: !2, line: 257, column: 11)
!2047 = !DILocation(line: 257, column: 17, scope: !2046, inlinedAt: !1996)
!2048 = !DILocation(line: 257, column: 11, scope: !1993, inlinedAt: !1996)
!2049 = !DILocation(line: 258, column: 28, scope: !2046, inlinedAt: !1996)
!2050 = !DILocation(line: 258, column: 46, scope: !2046, inlinedAt: !1996)
!2051 = !DILocation(line: 258, column: 9, scope: !2046, inlinedAt: !1996)
!2052 = !DILocation(line: 260, column: 13, scope: !2053, inlinedAt: !1996)
!2053 = distinct !DILexicalBlock(scope: !2046, file: !2, line: 260, column: 13)
!2054 = !DILocation(line: 260, column: 26, scope: !2053, inlinedAt: !1996)
!2055 = !DILocation(line: 260, column: 33, scope: !2053, inlinedAt: !1996)
!2056 = !DILocation(line: 260, column: 36, scope: !2053, inlinedAt: !1996)
!2057 = !DILocation(line: 260, column: 13, scope: !2046, inlinedAt: !1996)
!2058 = !DILocation(line: 261, column: 30, scope: !2053, inlinedAt: !1996)
!2059 = !DILocation(line: 262, column: 30, scope: !2053, inlinedAt: !1996)
!2060 = !DILocation(line: 262, column: 60, scope: !2053, inlinedAt: !1996)
!2061 = !DILocation(line: 262, column: 65, scope: !2053, inlinedAt: !1996)
!2062 = !DILocation(line: 262, column: 48, scope: !2053, inlinedAt: !1996)
!2063 = !DILocation(line: 261, column: 11, scope: !2053, inlinedAt: !1996)
!2064 = !DILocation(line: 0, scope: !1400, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 263, column: 7, scope: !1993, inlinedAt: !1996)
!2066 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !2065)
!2067 = !DILocation(line: 264, column: 5, scope: !1993, inlinedAt: !1996)
!2068 = !DILocation(line: 267, column: 22, scope: !2069, inlinedAt: !1996)
!2069 = distinct !DILexicalBlock(scope: !1994, file: !2, line: 267, column: 12)
!2070 = !DILocation(line: 267, column: 14, scope: !2069, inlinedAt: !1996)
!2071 = !DILocation(line: 267, column: 28, scope: !2069, inlinedAt: !1996)
!2072 = !DILocation(line: 0, scope: !1112, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 267, column: 31, scope: !2069, inlinedAt: !1996)
!2074 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2073)
!2075 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2073)
!2076 = !DILocation(line: 268, column: 12, scope: !2069, inlinedAt: !1996)
!2077 = !DILocation(line: 268, column: 34, scope: !2069, inlinedAt: !1996)
!2078 = !DILocation(line: 268, column: 27, scope: !2069, inlinedAt: !1996)
!2079 = !DILocation(line: 268, column: 17, scope: !2069, inlinedAt: !1996)
!2080 = !DILocation(line: 267, column: 12, scope: !1994, inlinedAt: !1996)
!2081 = !DILocation(line: 269, column: 13, scope: !2069, inlinedAt: !1996)
!2082 = !DILocation(line: 269, column: 5, scope: !2069, inlinedAt: !1996)
!2083 = !DILocation(line: 270, column: 14, scope: !2084, inlinedAt: !1996)
!2084 = distinct !DILexicalBlock(scope: !2069, file: !2, line: 270, column: 12)
!2085 = !DILocation(line: 271, column: 12, scope: !2084, inlinedAt: !1996)
!2086 = !DILocation(line: 271, column: 34, scope: !2084, inlinedAt: !1996)
!2087 = !DILocation(line: 271, column: 27, scope: !2084, inlinedAt: !1996)
!2088 = !DILocation(line: 271, column: 17, scope: !2084, inlinedAt: !1996)
!2089 = !DILocation(line: 270, column: 12, scope: !2069, inlinedAt: !1996)
!2090 = !DILocation(line: 272, column: 13, scope: !2084, inlinedAt: !1996)
!2091 = !DILocation(line: 272, column: 5, scope: !2084, inlinedAt: !1996)
!2092 = !DILocation(line: 275, column: 25, scope: !2093, inlinedAt: !1996)
!2093 = distinct !DILexicalBlock(scope: !2084, file: !2, line: 275, column: 12)
!2094 = !DILocation(line: 275, column: 32, scope: !2093, inlinedAt: !1996)
!2095 = !DILocation(line: 275, column: 35, scope: !2093, inlinedAt: !1996)
!2096 = !DILocation(line: 275, column: 48, scope: !2093, inlinedAt: !1996)
!2097 = !DILocation(line: 275, column: 51, scope: !2093, inlinedAt: !1996)
!2098 = !DILocation(line: 275, column: 64, scope: !2093, inlinedAt: !1996)
!2099 = !DILocation(line: 275, column: 12, scope: !2084, inlinedAt: !1996)
!2100 = !DILocation(line: 276, column: 13, scope: !2093, inlinedAt: !1996)
!2101 = !DILocation(line: 276, column: 5, scope: !2093, inlinedAt: !1996)
!2102 = !DILocation(line: 279, column: 29, scope: !2103, inlinedAt: !1996)
!2103 = distinct !DILexicalBlock(scope: !2093, file: !2, line: 278, column: 5)
!2104 = !DILocation(line: 0, scope: !1400, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 280, column: 7, scope: !2103, inlinedAt: !1996)
!2106 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !2105)
!2107 = !DILocation(line: 283, column: 18, scope: !1988, inlinedAt: !1996)
!2108 = !DILocation(line: 520, column: 13, scope: !1997, inlinedAt: !1985)
!2109 = !DILocation(line: 521, column: 14, scope: !2110, inlinedAt: !1985)
!2110 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 521, column: 11)
!2111 = !DILocation(line: 521, column: 20, scope: !2110, inlinedAt: !1985)
!2112 = !DILocation(line: 521, column: 18, scope: !2110, inlinedAt: !1985)
!2113 = !DILocation(line: 521, column: 25, scope: !2110, inlinedAt: !1985)
!2114 = !DILocation(line: 521, column: 35, scope: !2110, inlinedAt: !1985)
!2115 = !DILocation(line: 0, scope: !1112, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 521, column: 28, scope: !2110, inlinedAt: !1985)
!2117 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2116)
!2118 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2116)
!2119 = !DILocation(line: 521, column: 11, scope: !1997, inlinedAt: !1985)
!2120 = !DILocation(line: 0, scope: !1400, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 523, column: 7, scope: !1997, inlinedAt: !1985)
!2122 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !2121)
!2123 = distinct !{!2123, !2124, !2125}
!2124 = !DILocation(line: 518, column: 3, scope: !1982, inlinedAt: !1985)
!2125 = !DILocation(line: 524, column: 5, scope: !1982, inlinedAt: !1985)
!2126 = !DILocation(line: 539, column: 13, scope: !1986)
!2127 = !DILocation(line: 0, scope: !1112, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 540, column: 28, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !1986, file: !2, line: 540, column: 11)
!2130 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2128)
!2131 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2128)
!2132 = !DILocation(line: 540, column: 11, scope: !1986)
!2133 = !DILocation(line: 541, column: 9, scope: !2129)
!2134 = !DILocation(line: 0, scope: !1400, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 542, column: 7, scope: !1986)
!2136 = !DILocation(line: 112, column: 3, scope: !1400, inlinedAt: !2135)
!2137 = distinct !{!2137, !2000, !2138}
!2138 = !DILocation(line: 543, column: 5, scope: !1977)
!2139 = distinct !DISubprogram(name: "binop", scope: !2, file: !2, line: 186, type: !1770, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2140)
!2140 = !{!2141}
!2141 = !DILocalVariable(name: "s", arg: 1, scope: !2139, file: !2, line: 186, type: !265)
!2142 = !DILocation(line: 0, scope: !2139)
!2143 = !DILocation(line: 0, scope: !1112, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 188, column: 13, scope: !2139)
!2145 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2144)
!2146 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2144)
!2147 = !DILocation(line: 188, column: 13, scope: !2139)
!2148 = !DILocation(line: 0, scope: !1112, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 189, column: 13, scope: !2139)
!2150 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2149)
!2151 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2149)
!2152 = !DILocation(line: 189, column: 13, scope: !2139)
!2153 = !DILocation(line: 0, scope: !1112, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 190, column: 13, scope: !2139)
!2155 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2154)
!2156 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2154)
!2157 = !DILocation(line: 190, column: 13, scope: !2139)
!2158 = !DILocation(line: 0, scope: !1112, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 191, column: 13, scope: !2139)
!2160 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2159)
!2161 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2159)
!2162 = !DILocation(line: 191, column: 13, scope: !2139)
!2163 = !DILocation(line: 0, scope: !1112, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 192, column: 13, scope: !2139)
!2165 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2164)
!2166 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2164)
!2167 = !DILocation(line: 192, column: 13, scope: !2139)
!2168 = !DILocation(line: 0, scope: !1112, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 193, column: 13, scope: !2139)
!2170 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2169)
!2171 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2169)
!2172 = !DILocation(line: 193, column: 13, scope: !2139)
!2173 = !DILocation(line: 0, scope: !1112, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 194, column: 13, scope: !2139)
!2175 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2174)
!2176 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2174)
!2177 = !DILocation(line: 194, column: 13, scope: !2139)
!2178 = !DILocation(line: 0, scope: !1112, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 195, column: 13, scope: !2139)
!2180 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2179)
!2181 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2179)
!2182 = !DILocation(line: 195, column: 13, scope: !2139)
!2183 = !DILocation(line: 0, scope: !1112, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 196, column: 13, scope: !2139)
!2185 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2184)
!2186 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2184)
!2187 = !DILocation(line: 196, column: 13, scope: !2139)
!2188 = !DILocation(line: 0, scope: !1112, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 197, column: 13, scope: !2139)
!2190 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2189)
!2191 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2189)
!2192 = !DILocation(line: 197, column: 13, scope: !2139)
!2193 = !DILocation(line: 0, scope: !1112, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 198, column: 13, scope: !2139)
!2195 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2194)
!2196 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2194)
!2197 = !DILocation(line: 198, column: 13, scope: !2139)
!2198 = !DILocation(line: 0, scope: !1112, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 199, column: 13, scope: !2139)
!2200 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2199)
!2201 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2199)
!2202 = !DILocation(line: 199, column: 13, scope: !2139)
!2203 = !DILocation(line: 0, scope: !1112, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 200, column: 13, scope: !2139)
!2205 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2204)
!2206 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2204)
!2207 = !DILocation(line: 200, column: 13, scope: !2139)
!2208 = !DILocation(line: 0, scope: !1112, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 201, column: 13, scope: !2139)
!2210 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2209)
!2211 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2209)
!2212 = !DILocation(line: 201, column: 13, scope: !2139)
!2213 = !DILocation(line: 188, column: 3, scope: !2139)
!2214 = distinct !DISubprogram(name: "binary_operator", scope: !2, file: !2, line: 287, type: !2215, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2217)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!319, !319, !242}
!2217 = !{!2218, !2219, !2220, !2221, !2222, !2225, !2226, !2227, !2228, !2229, !2231, !2235}
!2218 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !2214, file: !2, line: 287, type: !319)
!2219 = !DILocalVariable(name: "bop", arg: 2, scope: !2214, file: !2, line: 287, type: !242)
!2220 = !DILocalVariable(name: "op", scope: !2214, file: !2, line: 289, type: !260)
!2221 = !DILocalVariable(name: "r_is_l", scope: !2214, file: !2, line: 296, type: !319)
!2222 = !DILocalVariable(name: "lbuf", scope: !2223, file: !2, line: 307, type: !643)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !2, line: 306, column: 7)
!2224 = distinct !DILexicalBlock(scope: !2214, file: !2, line: 303, column: 5)
!2225 = !DILocalVariable(name: "rbuf", scope: !2223, file: !2, line: 308, type: !643)
!2226 = !DILocalVariable(name: "l", scope: !2223, file: !2, line: 309, type: !265)
!2227 = !DILocalVariable(name: "r", scope: !2223, file: !2, line: 312, type: !265)
!2228 = !DILocalVariable(name: "cmp", scope: !2223, file: !2, line: 315, type: !260)
!2229 = !DILocalVariable(name: "cmp", scope: !2230, file: !2, line: 333, type: !260)
!2230 = distinct !DILexicalBlock(scope: !2224, file: !2, line: 329, column: 7)
!2231 = !DILocalVariable(name: "st", scope: !2232, file: !2, line: 343, type: !2234)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !2, line: 342, column: 9)
!2233 = distinct !DILexicalBlock(scope: !2224, file: !2, line: 339, column: 11)
!2234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1476, size: 2048, elements: !20)
!2235 = !DILocalVariable(name: "cmp", scope: !2236, file: !2, line: 356, type: !260)
!2236 = distinct !DILexicalBlock(scope: !2224, file: !2, line: 355, column: 7)
!2237 = distinct !DIAssignID()
!2238 = distinct !DIAssignID()
!2239 = distinct !DIAssignID()
!2240 = !DILocation(line: 0, scope: !2223)
!2241 = distinct !DIAssignID()
!2242 = distinct !DIAssignID()
!2243 = !DILocation(line: 0, scope: !2232)
!2244 = !DILocation(line: 0, scope: !2214)
!2245 = !DILocation(line: 293, column: 8, scope: !2214)
!2246 = !DILocation(line: 291, column: 7, scope: !2214)
!2247 = !DILocation(line: 293, column: 12, scope: !2214)
!2248 = !DILocation(line: 296, column: 22, scope: !2214)
!2249 = !DILocation(line: 296, column: 27, scope: !2214)
!2250 = !DILocation(line: 296, column: 20, scope: !2214)
!2251 = !DILocation(line: 296, column: 31, scope: !2214)
!2252 = !DILocation(line: 296, column: 41, scope: !2214)
!2253 = !DILocation(line: 0, scope: !1112, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 296, column: 34, scope: !2214)
!2255 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2254)
!2256 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2254)
!2257 = !DILocation(line: 297, column: 7, scope: !2214)
!2258 = !DILocation(line: 300, column: 7, scope: !2214)
!2259 = !DILocation(line: 302, column: 3, scope: !2214)
!2260 = !DILocation(line: 307, column: 9, scope: !2223)
!2261 = !DILocation(line: 308, column: 9, scope: !2223)
!2262 = !DILocation(line: 309, column: 26, scope: !2223)
!2263 = !DILocation(line: 310, column: 39, scope: !2223)
!2264 = !DILocation(line: 310, column: 28, scope: !2223)
!2265 = !DILocation(line: 311, column: 28, scope: !2223)
!2266 = !DILocation(line: 312, column: 26, scope: !2223)
!2267 = !DILocation(line: 313, column: 47, scope: !2223)
!2268 = !DILocation(line: 313, column: 39, scope: !2223)
!2269 = !DILocation(line: 313, column: 28, scope: !2223)
!2270 = !DILocation(line: 314, column: 38, scope: !2223)
!2271 = !DILocation(line: 314, column: 28, scope: !2223)
!2272 = !DILocation(line: 315, column: 19, scope: !2223)
!2273 = !DILocation(line: 316, column: 9, scope: !2223)
!2274 = !DILocation(line: 318, column: 37, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2223, file: !2, line: 317, column: 11)
!2276 = !DILocation(line: 318, column: 26, scope: !2275)
!2277 = !DILocation(line: 319, column: 37, scope: !2275)
!2278 = !DILocation(line: 319, column: 26, scope: !2275)
!2279 = !DILocation(line: 320, column: 37, scope: !2275)
!2280 = !DILocation(line: 320, column: 26, scope: !2275)
!2281 = !DILocation(line: 321, column: 37, scope: !2275)
!2282 = !DILocation(line: 321, column: 26, scope: !2275)
!2283 = !DILocation(line: 322, column: 37, scope: !2275)
!2284 = !DILocation(line: 322, column: 26, scope: !2275)
!2285 = !DILocation(line: 323, column: 37, scope: !2275)
!2286 = !DILocation(line: 323, column: 26, scope: !2275)
!2287 = !DILocation(line: 325, column: 9, scope: !2223)
!2288 = !DILocation(line: 0, scope: !2275)
!2289 = !DILocation(line: 326, column: 7, scope: !2224)
!2290 = !DILocation(line: 330, column: 20, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2230, file: !2, line: 330, column: 13)
!2292 = !DILocation(line: 330, column: 13, scope: !2230)
!2293 = !DILocation(line: 331, column: 30, scope: !2291)
!2294 = !DILocation(line: 332, column: 30, scope: !2291)
!2295 = !DILocation(line: 331, column: 11, scope: !2291)
!2296 = !DILocation(line: 333, column: 44, scope: !2230)
!2297 = !DILocalVariable(name: "finfo", scope: !2298, file: !2, line: 177, type: !1476)
!2298 = distinct !DISubprogram(name: "get_mtime", scope: !2, file: !2, line: 175, type: !2299, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2301)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!1500, !265}
!2301 = !{!2302, !2297}
!2302 = !DILocalVariable(name: "filename", arg: 1, scope: !2298, file: !2, line: 175, type: !265)
!2303 = !DILocation(line: 0, scope: !2298, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 333, column: 33, scope: !2230)
!2305 = !DILocation(line: 177, column: 3, scope: !2298, inlinedAt: !2304)
!2306 = !DILocation(line: 178, column: 11, scope: !2298, inlinedAt: !2304)
!2307 = !DILocation(line: 178, column: 35, scope: !2298, inlinedAt: !2304)
!2308 = !DILocation(line: 181, column: 1, scope: !2298, inlinedAt: !2304)
!2309 = !DILocation(line: 334, column: 44, scope: !2230)
!2310 = !DILocation(line: 0, scope: !2298, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 334, column: 33, scope: !2230)
!2312 = !DILocation(line: 177, column: 3, scope: !2298, inlinedAt: !2311)
!2313 = !DILocation(line: 178, column: 11, scope: !2298, inlinedAt: !2311)
!2314 = !DILocation(line: 178, column: 35, scope: !2298, inlinedAt: !2311)
!2315 = !DILocation(line: 181, column: 1, scope: !2298, inlinedAt: !2311)
!2316 = !DILocation(line: 0, scope: !1614, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 333, column: 19, scope: !2230)
!2318 = !DILocation(line: 66, column: 14, scope: !1614, inlinedAt: !2317)
!2319 = !DILocation(line: 66, column: 12, scope: !1614, inlinedAt: !2317)
!2320 = !DILocation(line: 66, column: 45, scope: !1614, inlinedAt: !2317)
!2321 = !DILocation(line: 66, column: 43, scope: !1614, inlinedAt: !2317)
!2322 = !DILocation(line: 0, scope: !2230)
!2323 = !DILocation(line: 335, column: 20, scope: !2230)
!2324 = !DILocation(line: 335, column: 16, scope: !2230)
!2325 = !DILocation(line: 339, column: 18, scope: !2233)
!2326 = !DILocation(line: 339, column: 11, scope: !2224)
!2327 = !DILocation(line: 340, column: 28, scope: !2233)
!2328 = !DILocation(line: 340, column: 9, scope: !2233)
!2329 = !DILocation(line: 343, column: 11, scope: !2232)
!2330 = !DILocation(line: 344, column: 25, scope: !2232)
!2331 = !DILocation(line: 344, column: 19, scope: !2232)
!2332 = !DILocation(line: 344, column: 47, scope: !2232)
!2333 = !DILocation(line: 345, column: 19, scope: !2232)
!2334 = !DILocation(line: 345, column: 28, scope: !2232)
!2335 = !DILocation(line: 345, column: 43, scope: !2232)
!2336 = !DILocation(line: 345, column: 22, scope: !2232)
!2337 = !DILocation(line: 345, column: 50, scope: !2232)
!2338 = !DILocation(line: 346, column: 19, scope: !2232)
!2339 = !DILocalVariable(name: "a", arg: 1, scope: !2340, file: !2341, line: 86, type: !1600)
!2340 = distinct !DISubprogram(name: "psame_inode", scope: !2341, file: !2341, line: 86, type: !2342, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2344)
!2341 = !DIFile(filename: "./lib/same-inode.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6a49db1c884e7bc93549038e7fb28788")
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!319, !1600, !1600}
!2344 = !{!2339, !2345}
!2345 = !DILocalVariable(name: "b", arg: 2, scope: !2340, file: !2341, line: 86, type: !1600)
!2346 = !DILocation(line: 0, scope: !2340, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 346, column: 22, scope: !2232)
!2348 = !DILocation(line: 90, column: 14, scope: !2340, inlinedAt: !2347)
!2349 = !{!1648, !1649, i64 0}
!2350 = !{!1648, !1649, i64 8}
!2351 = !DILocation(line: 347, column: 9, scope: !2233)
!2352 = !DILocation(line: 351, column: 21, scope: !2224)
!2353 = !DILocation(line: 351, column: 35, scope: !2224)
!2354 = !DILocation(line: 0, scope: !1112, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 351, column: 14, scope: !2224)
!2356 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2355)
!2357 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2355)
!2358 = !DILocation(line: 351, column: 49, scope: !2224)
!2359 = !DILocation(line: 351, column: 7, scope: !2224)
!2360 = !DILocation(line: 356, column: 28, scope: !2236)
!2361 = !DILocation(line: 356, column: 42, scope: !2236)
!2362 = !DILocation(line: 356, column: 19, scope: !2236)
!2363 = !DILocation(line: 0, scope: !2236)
!2364 = !DILocation(line: 357, column: 20, scope: !2236)
!2365 = !DILocation(line: 357, column: 16, scope: !2236)
!2366 = !DILocation(line: 362, column: 3, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !2, line: 362, column: 3)
!2368 = distinct !DILexicalBlock(scope: !2214, file: !2, line: 362, column: 3)
!2369 = !DILocation(line: 0, scope: !2224)
!2370 = !DILocation(line: 363, column: 1, scope: !2214)
!2371 = !DISubprogram(name: "strlen", scope: !1202, file: !1202, line: 407, type: !2372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!264, !265}
!2374 = distinct !DISubprogram(name: "find_int", scope: !2, file: !2, line: 139, type: !2375, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2377)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!265, !265}
!2377 = !{!2378, !2379, !2380}
!2378 = !DILocalVariable(name: "string", arg: 1, scope: !2374, file: !2, line: 139, type: !265)
!2379 = !DILocalVariable(name: "p", scope: !2374, file: !2, line: 141, type: !265)
!2380 = !DILocalVariable(name: "number_start", scope: !2374, file: !2, line: 142, type: !265)
!2381 = !DILocation(line: 0, scope: !2374)
!2382 = !DILocation(line: 144, column: 8, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2374, file: !2, line: 144, column: 3)
!2384 = !DILocation(line: 144, scope: !2383)
!2385 = !DILocation(line: 144, column: 20, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2383, file: !2, line: 144, column: 3)
!2387 = !DILocation(line: 144, column: 3, scope: !2383)
!2388 = !DILocation(line: 144, column: 46, scope: !2386)
!2389 = distinct !{!2389, !2387, !2390, !1147}
!2390 = !DILocation(line: 145, column: 5, scope: !2383)
!2391 = !DILocation(line: 147, column: 10, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2374, file: !2, line: 147, column: 7)
!2393 = !DILocation(line: 147, column: 7, scope: !2374)
!2394 = !DILocation(line: 158, column: 18, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2374, file: !2, line: 158, column: 7)
!2396 = !DILocalVariable(name: "c", arg: 1, scope: !2397, file: !2398, line: 233, type: !260)
!2397 = distinct !DISubprogram(name: "c_isdigit", scope: !2398, file: !2398, line: 233, type: !1341, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2399)
!2398 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!2399 = !{!2396}
!2400 = !DILocation(line: 0, scope: !2397, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 158, column: 7, scope: !2395)
!2402 = !DILocation(line: 235, column: 3, scope: !2397, inlinedAt: !2401)
!2403 = !DILocation(line: 158, column: 7, scope: !2374)
!2404 = !DILocation(line: 160, column: 7, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2395, file: !2, line: 159, column: 5)
!2406 = !DILocation(line: 0, scope: !2395)
!2407 = !DILocation(line: 160, column: 25, scope: !2405)
!2408 = !DILocation(line: 0, scope: !2397, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 160, column: 14, scope: !2405)
!2410 = !DILocation(line: 235, column: 3, scope: !2397, inlinedAt: !2409)
!2411 = distinct !{!2411, !2404, !2412, !1147}
!2412 = !DILocation(line: 161, column: 10, scope: !2405)
!2413 = !DILocation(line: 162, column: 14, scope: !2405)
!2414 = !DILocation(line: 162, column: 7, scope: !2405)
!2415 = !DILocation(line: 163, column: 10, scope: !2405)
!2416 = distinct !{!2416, !2414, !2415, !1147}
!2417 = !DILocation(line: 164, column: 12, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2405, file: !2, line: 164, column: 11)
!2419 = !DILocation(line: 164, column: 11, scope: !2405)
!2420 = !DILocation(line: 165, column: 9, scope: !2418)
!2421 = !DILocation(line: 168, column: 22, scope: !2374)
!2422 = !DILocation(line: 168, column: 47, scope: !2374)
!2423 = !DILocation(line: 168, column: 3, scope: !2374)
!2424 = !DISubprogram(name: "stat", scope: !2425, file: !2425, line: 205, type: !2426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2425 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!260, !1094, !2428}
!2428 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2429)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!2430 = !DISubprogram(name: "strcoll", scope: !1202, file: !1202, line: 163, type: !1211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2431 = !DISubprogram(name: "euidaccess", scope: !2432, file: !2432, line: 292, type: !2433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2432 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!260, !265, !260}
!2435 = !DISubprogram(name: "__errno_location", scope: !2436, file: !2436, line: 37, type: !2437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2436 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!2439}
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!2440 = !DISubprogram(name: "geteuid", scope: !2432, file: !2432, line: 700, type: !2441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!1488}
!2443 = !DISubprogram(name: "getegid", scope: !2432, file: !2432, line: 706, type: !2444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!1490}
!2446 = !DISubprogram(name: "strtol", scope: !1206, file: !1206, line: 177, type: !2447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!272, !1094, !2449, !260}
!2449 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !572)
!2450 = !DISubprogram(name: "isatty", scope: !2432, file: !2432, line: 809, type: !2451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!260, !260}
!2453 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !583, file: !583, line: 50, type: !1054, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2454)
!2454 = !{!2455}
!2455 = !DILocalVariable(name: "file", arg: 1, scope: !2453, file: !583, line: 50, type: !265)
!2456 = !DILocation(line: 0, scope: !2453)
!2457 = !DILocation(line: 52, column: 13, scope: !2453)
!2458 = !DILocation(line: 53, column: 1, scope: !2453)
!2459 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !583, file: !583, line: 87, type: !1401, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2460)
!2460 = !{!2461}
!2461 = !DILocalVariable(name: "ignore", arg: 1, scope: !2459, file: !583, line: 87, type: !319)
!2462 = !DILocation(line: 0, scope: !2459)
!2463 = !DILocation(line: 89, column: 16, scope: !2459)
!2464 = !{!2465, !2465, i64 0}
!2465 = !{!"_Bool", !1002, i64 0}
!2466 = !DILocation(line: 90, column: 1, scope: !2459)
!2467 = distinct !DISubprogram(name: "close_stdout", scope: !583, file: !583, line: 116, type: !647, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2468)
!2468 = !{!2469}
!2469 = !DILocalVariable(name: "write_error", scope: !2470, file: !583, line: 121, type: !265)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !583, line: 120, column: 5)
!2471 = distinct !DILexicalBlock(scope: !2467, file: !583, line: 118, column: 7)
!2472 = !DILocation(line: 118, column: 21, scope: !2471)
!2473 = !DILocation(line: 118, column: 7, scope: !2471)
!2474 = !DILocation(line: 118, column: 29, scope: !2471)
!2475 = !DILocation(line: 119, column: 7, scope: !2471)
!2476 = !DILocation(line: 119, column: 12, scope: !2471)
!2477 = !{i8 0, i8 2}
!2478 = !DILocation(line: 119, column: 25, scope: !2471)
!2479 = !DILocation(line: 119, column: 28, scope: !2471)
!2480 = !DILocation(line: 119, column: 34, scope: !2471)
!2481 = !DILocation(line: 118, column: 7, scope: !2467)
!2482 = !DILocation(line: 121, column: 33, scope: !2470)
!2483 = !DILocation(line: 0, scope: !2470)
!2484 = !DILocation(line: 122, column: 11, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2470, file: !583, line: 122, column: 11)
!2486 = !DILocation(line: 0, scope: !2485)
!2487 = !DILocation(line: 122, column: 11, scope: !2470)
!2488 = !DILocation(line: 123, column: 9, scope: !2485)
!2489 = !DILocation(line: 126, column: 9, scope: !2485)
!2490 = !DILocation(line: 128, column: 14, scope: !2470)
!2491 = !DILocation(line: 128, column: 7, scope: !2470)
!2492 = !DILocation(line: 133, column: 42, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2467, file: !583, line: 133, column: 7)
!2494 = !DILocation(line: 133, column: 28, scope: !2493)
!2495 = !DILocation(line: 133, column: 50, scope: !2493)
!2496 = !DILocation(line: 133, column: 7, scope: !2467)
!2497 = !DILocation(line: 134, column: 12, scope: !2493)
!2498 = !DILocation(line: 134, column: 5, scope: !2493)
!2499 = !DILocation(line: 135, column: 1, scope: !2467)
!2500 = !DISubprogram(name: "_exit", scope: !2432, file: !2432, line: 624, type: !990, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2501 = distinct !DISubprogram(name: "verror", scope: !598, file: !598, line: 251, type: !2502, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{null, !260, !260, !265, !608}
!2504 = !{!2505, !2506, !2507, !2508}
!2505 = !DILocalVariable(name: "status", arg: 1, scope: !2501, file: !598, line: 251, type: !260)
!2506 = !DILocalVariable(name: "errnum", arg: 2, scope: !2501, file: !598, line: 251, type: !260)
!2507 = !DILocalVariable(name: "message", arg: 3, scope: !2501, file: !598, line: 251, type: !265)
!2508 = !DILocalVariable(name: "args", arg: 4, scope: !2501, file: !598, line: 251, type: !608)
!2509 = !DILocation(line: 0, scope: !2501)
!2510 = !DILocation(line: 261, column: 3, scope: !2501)
!2511 = !DILocation(line: 265, column: 7, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2501, file: !598, line: 265, column: 7)
!2513 = !DILocation(line: 265, column: 7, scope: !2501)
!2514 = !DILocation(line: 266, column: 5, scope: !2512)
!2515 = !DILocation(line: 272, column: 7, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2512, file: !598, line: 268, column: 5)
!2517 = !DILocation(line: 276, column: 3, scope: !2501)
!2518 = !DILocation(line: 282, column: 1, scope: !2501)
!2519 = distinct !DISubprogram(name: "flush_stdout", scope: !598, file: !598, line: 163, type: !647, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2520)
!2520 = !{!2521}
!2521 = !DILocalVariable(name: "stdout_fd", scope: !2519, file: !598, line: 166, type: !260)
!2522 = !DILocation(line: 0, scope: !2519)
!2523 = !DILocalVariable(name: "fd", arg: 1, scope: !2524, file: !598, line: 145, type: !260)
!2524 = distinct !DISubprogram(name: "is_open", scope: !598, file: !598, line: 145, type: !2451, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2525)
!2525 = !{!2523}
!2526 = !DILocation(line: 0, scope: !2524, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 182, column: 25, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2519, file: !598, line: 182, column: 7)
!2529 = !DILocation(line: 157, column: 15, scope: !2524, inlinedAt: !2527)
!2530 = !DILocation(line: 157, column: 12, scope: !2524, inlinedAt: !2527)
!2531 = !DILocation(line: 182, column: 7, scope: !2519)
!2532 = !DILocation(line: 184, column: 5, scope: !2528)
!2533 = !DILocation(line: 185, column: 1, scope: !2519)
!2534 = distinct !DISubprogram(name: "error_tail", scope: !598, file: !598, line: 219, type: !2502, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2535)
!2535 = !{!2536, !2537, !2538, !2539}
!2536 = !DILocalVariable(name: "status", arg: 1, scope: !2534, file: !598, line: 219, type: !260)
!2537 = !DILocalVariable(name: "errnum", arg: 2, scope: !2534, file: !598, line: 219, type: !260)
!2538 = !DILocalVariable(name: "message", arg: 3, scope: !2534, file: !598, line: 219, type: !265)
!2539 = !DILocalVariable(name: "args", arg: 4, scope: !2534, file: !598, line: 219, type: !608)
!2540 = distinct !DIAssignID()
!2541 = !DILocation(line: 0, scope: !2534)
!2542 = !DILocation(line: 229, column: 13, scope: !2534)
!2543 = !DILocation(line: 135, column: 10, scope: !2544, inlinedAt: !2586)
!2544 = distinct !DISubprogram(name: "vfprintf", scope: !1090, file: !1090, line: 132, type: !2545, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2582)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!260, !2547, !1094, !610}
!2547 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2548)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !2550)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !2551)
!2551 = !{!2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2550, file: !336, line: 51, baseType: !260, size: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2550, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2550, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2550, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2550, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2550, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2550, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2550, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2550, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2550, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2550, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2550, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2550, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2550, file: !336, line: 70, baseType: !2566, size: 64, offset: 832)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2550, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2550, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2550, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2550, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2550, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2550, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2550, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2550, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2550, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2550, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2550, file: !336, line: 93, baseType: !2566, size: 64, offset: 1344)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2550, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2550, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2550, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2550, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!2582 = !{!2583, !2584, !2585}
!2583 = !DILocalVariable(name: "__stream", arg: 1, scope: !2544, file: !1090, line: 132, type: !2547)
!2584 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2544, file: !1090, line: 133, type: !1094)
!2585 = !DILocalVariable(name: "__ap", arg: 3, scope: !2544, file: !1090, line: 133, type: !610)
!2586 = distinct !DILocation(line: 229, column: 3, scope: !2534)
!2587 = !{!2588, !2590}
!2588 = distinct !{!2588, !2589, !"vfprintf.inline: argument 0"}
!2589 = distinct !{!2589, !"vfprintf.inline"}
!2590 = distinct !{!2590, !2589, !"vfprintf.inline: argument 1"}
!2591 = !DILocation(line: 229, column: 3, scope: !2534)
!2592 = !DILocation(line: 0, scope: !2544, inlinedAt: !2586)
!2593 = !DILocation(line: 232, column: 3, scope: !2534)
!2594 = !DILocation(line: 233, column: 7, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2534, file: !598, line: 233, column: 7)
!2596 = !DILocation(line: 233, column: 7, scope: !2534)
!2597 = !DILocalVariable(name: "errbuf", scope: !2598, file: !598, line: 193, type: !2602)
!2598 = distinct !DISubprogram(name: "print_errno_message", scope: !598, file: !598, line: 188, type: !990, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2599)
!2599 = !{!2600, !2601, !2597}
!2600 = !DILocalVariable(name: "errnum", arg: 1, scope: !2598, file: !598, line: 188, type: !260)
!2601 = !DILocalVariable(name: "s", scope: !2598, file: !598, line: 190, type: !265)
!2602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2603)
!2603 = !{!2604}
!2604 = !DISubrange(count: 1024)
!2605 = !DILocation(line: 0, scope: !2598, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 234, column: 5, scope: !2595)
!2607 = !DILocation(line: 193, column: 3, scope: !2598, inlinedAt: !2606)
!2608 = !DILocation(line: 195, column: 7, scope: !2598, inlinedAt: !2606)
!2609 = !DILocation(line: 207, column: 9, scope: !2610, inlinedAt: !2606)
!2610 = distinct !DILexicalBlock(scope: !2598, file: !598, line: 207, column: 7)
!2611 = !DILocation(line: 207, column: 7, scope: !2598, inlinedAt: !2606)
!2612 = !DILocation(line: 208, column: 9, scope: !2610, inlinedAt: !2606)
!2613 = !DILocation(line: 208, column: 5, scope: !2610, inlinedAt: !2606)
!2614 = !DILocation(line: 214, column: 3, scope: !2598, inlinedAt: !2606)
!2615 = !DILocation(line: 216, column: 1, scope: !2598, inlinedAt: !2606)
!2616 = !DILocation(line: 234, column: 5, scope: !2595)
!2617 = !DILocation(line: 238, column: 3, scope: !2534)
!2618 = !DILocalVariable(name: "__c", arg: 1, scope: !2619, file: !2620, line: 101, type: !260)
!2619 = distinct !DISubprogram(name: "putc_unlocked", scope: !2620, file: !2620, line: 101, type: !2621, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2623)
!2620 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!260, !260, !2548}
!2623 = !{!2618, !2624}
!2624 = !DILocalVariable(name: "__stream", arg: 2, scope: !2619, file: !2620, line: 101, type: !2548)
!2625 = !DILocation(line: 0, scope: !2619, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 238, column: 3, scope: !2534)
!2627 = !DILocation(line: 103, column: 10, scope: !2619, inlinedAt: !2626)
!2628 = !{!2629, !1001, i64 40}
!2629 = !{!"_IO_FILE", !1101, i64 0, !1001, i64 8, !1001, i64 16, !1001, i64 24, !1001, i64 32, !1001, i64 40, !1001, i64 48, !1001, i64 56, !1001, i64 64, !1001, i64 72, !1001, i64 80, !1001, i64 88, !1001, i64 96, !1001, i64 104, !1101, i64 112, !1101, i64 116, !1649, i64 120, !1142, i64 128, !1002, i64 130, !1002, i64 131, !1001, i64 136, !1649, i64 144, !1001, i64 152, !1001, i64 160, !1001, i64 168, !1001, i64 176, !1649, i64 184, !1101, i64 192, !1002, i64 196}
!2630 = !{!2629, !1001, i64 48}
!2631 = !{!"branch_weights", i32 2000, i32 1}
!2632 = !DILocation(line: 240, column: 3, scope: !2534)
!2633 = !DILocation(line: 241, column: 7, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2534, file: !598, line: 241, column: 7)
!2635 = !DILocation(line: 241, column: 7, scope: !2534)
!2636 = !DILocation(line: 242, column: 5, scope: !2634)
!2637 = !DILocation(line: 243, column: 1, scope: !2534)
!2638 = !DISubprogram(name: "__vfprintf_chk", scope: !1090, file: !1090, line: 96, type: !2639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!260, !2547, !260, !1094, !610}
!2641 = !DISubprogram(name: "strerror_r", scope: !1202, file: !1202, line: 444, type: !2642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!258, !260, !258, !262}
!2644 = !DISubprogram(name: "__overflow", scope: !609, file: !609, line: 886, type: !2645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!260, !2548, !260}
!2647 = !DISubprogram(name: "fflush_unlocked", scope: !609, file: !609, line: 239, type: !2648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!260, !2548}
!2650 = !DISubprogram(name: "fcntl", scope: !2651, file: !2651, line: 149, type: !2652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2651 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!260, !260, !260, null}
!2654 = distinct !DISubprogram(name: "error", scope: !598, file: !598, line: 285, type: !2655, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2657)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{null, !260, !260, !265, null}
!2657 = !{!2658, !2659, !2660, !2661}
!2658 = !DILocalVariable(name: "status", arg: 1, scope: !2654, file: !598, line: 285, type: !260)
!2659 = !DILocalVariable(name: "errnum", arg: 2, scope: !2654, file: !598, line: 285, type: !260)
!2660 = !DILocalVariable(name: "message", arg: 3, scope: !2654, file: !598, line: 285, type: !265)
!2661 = !DILocalVariable(name: "ap", scope: !2654, file: !598, line: 287, type: !608)
!2662 = distinct !DIAssignID()
!2663 = !DILocation(line: 0, scope: !2654)
!2664 = !DILocation(line: 287, column: 3, scope: !2654)
!2665 = !DILocation(line: 288, column: 3, scope: !2654)
!2666 = !DILocation(line: 289, column: 3, scope: !2654)
!2667 = !DILocation(line: 290, column: 3, scope: !2654)
!2668 = !DILocation(line: 291, column: 1, scope: !2654)
!2669 = !DILocation(line: 0, scope: !605)
!2670 = !DILocation(line: 302, column: 7, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !605, file: !598, line: 302, column: 7)
!2672 = !DILocation(line: 302, column: 7, scope: !605)
!2673 = !DILocation(line: 307, column: 11, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !598, line: 307, column: 11)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !598, line: 303, column: 5)
!2676 = !DILocation(line: 307, column: 27, scope: !2674)
!2677 = !DILocation(line: 308, column: 11, scope: !2674)
!2678 = !DILocation(line: 308, column: 28, scope: !2674)
!2679 = !DILocation(line: 308, column: 25, scope: !2674)
!2680 = !DILocation(line: 309, column: 15, scope: !2674)
!2681 = !DILocation(line: 309, column: 33, scope: !2674)
!2682 = !DILocation(line: 310, column: 19, scope: !2674)
!2683 = !DILocation(line: 311, column: 22, scope: !2674)
!2684 = !DILocation(line: 311, column: 56, scope: !2674)
!2685 = !DILocation(line: 307, column: 11, scope: !2675)
!2686 = !DILocation(line: 316, column: 21, scope: !2675)
!2687 = !DILocation(line: 317, column: 23, scope: !2675)
!2688 = !DILocation(line: 318, column: 5, scope: !2675)
!2689 = !DILocation(line: 327, column: 3, scope: !605)
!2690 = !DILocation(line: 331, column: 7, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !605, file: !598, line: 331, column: 7)
!2692 = !DILocation(line: 331, column: 7, scope: !605)
!2693 = !DILocation(line: 332, column: 5, scope: !2691)
!2694 = !DILocation(line: 338, column: 7, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2691, file: !598, line: 334, column: 5)
!2696 = !DILocation(line: 346, column: 3, scope: !605)
!2697 = !DILocation(line: 350, column: 3, scope: !605)
!2698 = !DILocation(line: 356, column: 1, scope: !605)
!2699 = distinct !DISubprogram(name: "error_at_line", scope: !598, file: !598, line: 359, type: !2700, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{null, !260, !260, !265, !222, !265, null}
!2702 = !{!2703, !2704, !2705, !2706, !2707, !2708}
!2703 = !DILocalVariable(name: "status", arg: 1, scope: !2699, file: !598, line: 359, type: !260)
!2704 = !DILocalVariable(name: "errnum", arg: 2, scope: !2699, file: !598, line: 359, type: !260)
!2705 = !DILocalVariable(name: "file_name", arg: 3, scope: !2699, file: !598, line: 359, type: !265)
!2706 = !DILocalVariable(name: "line_number", arg: 4, scope: !2699, file: !598, line: 360, type: !222)
!2707 = !DILocalVariable(name: "message", arg: 5, scope: !2699, file: !598, line: 360, type: !265)
!2708 = !DILocalVariable(name: "ap", scope: !2699, file: !598, line: 362, type: !608)
!2709 = distinct !DIAssignID()
!2710 = !DILocation(line: 0, scope: !2699)
!2711 = !DILocation(line: 362, column: 3, scope: !2699)
!2712 = !DILocation(line: 363, column: 3, scope: !2699)
!2713 = !DILocation(line: 364, column: 3, scope: !2699)
!2714 = !DILocation(line: 366, column: 3, scope: !2699)
!2715 = !DILocation(line: 367, column: 1, scope: !2699)
!2716 = distinct !DISubprogram(name: "getprogname", scope: !911, file: !911, line: 54, type: !2717, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!265}
!2719 = !DILocation(line: 58, column: 10, scope: !2716)
!2720 = !DILocation(line: 58, column: 3, scope: !2716)
!2721 = distinct !DISubprogram(name: "umaxtostr", scope: !2722, file: !2722, line: 29, type: !2723, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !912, retainedNodes: !2725)
!2722 = !DIFile(filename: "lib/anytostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e5b8bc0749223f86edfe264a04f25de0")
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!258, !915, !258}
!2725 = !{!2726, !2727, !2728}
!2726 = !DILocalVariable(name: "i", arg: 1, scope: !2721, file: !2722, line: 29, type: !915)
!2727 = !DILocalVariable(name: "buf", arg: 2, scope: !2721, file: !2722, line: 29, type: !258)
!2728 = !DILocalVariable(name: "p", scope: !2721, file: !2722, line: 31, type: !258)
!2729 = !DILocation(line: 0, scope: !2721)
!2730 = !DILocation(line: 31, column: 17, scope: !2721)
!2731 = !DILocation(line: 32, column: 6, scope: !2721)
!2732 = !DILocation(line: 46, column: 17, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !2722, line: 43, column: 5)
!2734 = distinct !DILexicalBlock(scope: !2721, file: !2722, line: 34, column: 7)
!2735 = !DILocation(line: 45, column: 16, scope: !2733)
!2736 = !DILocation(line: 45, column: 10, scope: !2733)
!2737 = !DILocation(line: 45, column: 14, scope: !2733)
!2738 = !DILocation(line: 46, column: 24, scope: !2733)
!2739 = !DILocation(line: 45, column: 9, scope: !2733)
!2740 = distinct !{!2740, !2741, !2742, !1147}
!2741 = !DILocation(line: 44, column: 7, scope: !2733)
!2742 = !DILocation(line: 46, column: 28, scope: !2733)
!2743 = !DILocation(line: 49, column: 3, scope: !2721)
!2744 = distinct !DISubprogram(name: "set_program_name", scope: !652, file: !652, line: 37, type: !1054, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2745)
!2745 = !{!2746, !2747, !2748}
!2746 = !DILocalVariable(name: "argv0", arg: 1, scope: !2744, file: !652, line: 37, type: !265)
!2747 = !DILocalVariable(name: "slash", scope: !2744, file: !652, line: 44, type: !265)
!2748 = !DILocalVariable(name: "base", scope: !2744, file: !652, line: 45, type: !265)
!2749 = !DILocation(line: 0, scope: !2744)
!2750 = !DILocation(line: 44, column: 23, scope: !2744)
!2751 = !DILocation(line: 45, column: 22, scope: !2744)
!2752 = !DILocation(line: 46, column: 17, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2744, file: !652, line: 46, column: 7)
!2754 = !DILocation(line: 46, column: 9, scope: !2753)
!2755 = !DILocation(line: 46, column: 25, scope: !2753)
!2756 = !DILocation(line: 46, column: 40, scope: !2753)
!2757 = !DILocalVariable(name: "__s1", arg: 1, scope: !2758, file: !1113, line: 974, type: !1230)
!2758 = distinct !DISubprogram(name: "memeq", scope: !1113, file: !1113, line: 974, type: !2759, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2761)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!319, !1230, !1230, !262}
!2761 = !{!2757, !2762, !2763}
!2762 = !DILocalVariable(name: "__s2", arg: 2, scope: !2758, file: !1113, line: 974, type: !1230)
!2763 = !DILocalVariable(name: "__n", arg: 3, scope: !2758, file: !1113, line: 974, type: !262)
!2764 = !DILocation(line: 0, scope: !2758, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 46, column: 28, scope: !2753)
!2766 = !DILocation(line: 976, column: 11, scope: !2758, inlinedAt: !2765)
!2767 = !DILocation(line: 976, column: 10, scope: !2758, inlinedAt: !2765)
!2768 = !DILocation(line: 46, column: 7, scope: !2744)
!2769 = !DILocation(line: 49, column: 11, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !652, line: 49, column: 11)
!2771 = distinct !DILexicalBlock(scope: !2753, file: !652, line: 47, column: 5)
!2772 = !DILocation(line: 49, column: 36, scope: !2770)
!2773 = !DILocation(line: 49, column: 11, scope: !2771)
!2774 = !DILocation(line: 65, column: 16, scope: !2744)
!2775 = !DILocation(line: 71, column: 27, scope: !2744)
!2776 = !DILocation(line: 74, column: 33, scope: !2744)
!2777 = !DILocation(line: 76, column: 1, scope: !2744)
!2778 = !DISubprogram(name: "strrchr", scope: !1202, file: !1202, line: 273, type: !1217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2779 = distinct !DIAssignID()
!2780 = !DILocation(line: 0, scope: !661)
!2781 = distinct !DIAssignID()
!2782 = !DILocation(line: 40, column: 29, scope: !661)
!2783 = !DILocation(line: 41, column: 19, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !661, file: !662, line: 41, column: 7)
!2785 = !DILocation(line: 41, column: 7, scope: !661)
!2786 = !DILocation(line: 47, column: 3, scope: !661)
!2787 = !DILocation(line: 48, column: 3, scope: !661)
!2788 = !DILocalVariable(name: "ps", arg: 1, scope: !2789, file: !2790, line: 1135, type: !2793)
!2789 = distinct !DISubprogram(name: "mbszero", scope: !2790, file: !2790, line: 1135, type: !2791, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !2794)
!2790 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2791 = !DISubroutineType(types: !2792)
!2792 = !{null, !2793}
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!2794 = !{!2788}
!2795 = !DILocation(line: 0, scope: !2789, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 48, column: 18, scope: !661)
!2797 = !DILocalVariable(name: "__dest", arg: 1, scope: !2798, file: !2799, line: 57, type: !259)
!2798 = distinct !DISubprogram(name: "memset", scope: !2799, file: !2799, line: 57, type: !2800, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !2802)
!2799 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!259, !259, !260, !262}
!2802 = !{!2797, !2803, !2804}
!2803 = !DILocalVariable(name: "__ch", arg: 2, scope: !2798, file: !2799, line: 57, type: !260)
!2804 = !DILocalVariable(name: "__len", arg: 3, scope: !2798, file: !2799, line: 57, type: !262)
!2805 = !DILocation(line: 0, scope: !2798, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 1137, column: 3, scope: !2789, inlinedAt: !2796)
!2807 = !DILocation(line: 59, column: 10, scope: !2798, inlinedAt: !2806)
!2808 = !DILocation(line: 49, column: 7, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !661, file: !662, line: 49, column: 7)
!2810 = !DILocation(line: 49, column: 39, scope: !2809)
!2811 = !DILocation(line: 49, column: 44, scope: !2809)
!2812 = !DILocation(line: 54, column: 1, scope: !661)
!2813 = !DISubprogram(name: "mbrtoc32", scope: !673, file: !673, line: 57, type: !2814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!262, !2816, !1094, !262, !2818}
!2816 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2817)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2793)
!2819 = distinct !DISubprogram(name: "clone_quoting_options", scope: !692, file: !692, line: 113, type: !2820, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !2823)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!2822, !2822}
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!2823 = !{!2824, !2825, !2826}
!2824 = !DILocalVariable(name: "o", arg: 1, scope: !2819, file: !692, line: 113, type: !2822)
!2825 = !DILocalVariable(name: "saved_errno", scope: !2819, file: !692, line: 115, type: !260)
!2826 = !DILocalVariable(name: "p", scope: !2819, file: !692, line: 116, type: !2822)
!2827 = !DILocation(line: 0, scope: !2819)
!2828 = !DILocation(line: 115, column: 21, scope: !2819)
!2829 = !DILocation(line: 116, column: 40, scope: !2819)
!2830 = !DILocation(line: 116, column: 31, scope: !2819)
!2831 = !DILocation(line: 118, column: 9, scope: !2819)
!2832 = !DILocation(line: 119, column: 3, scope: !2819)
!2833 = distinct !DISubprogram(name: "get_quoting_style", scope: !692, file: !692, line: 124, type: !2834, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !2838)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!718, !2836}
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !745)
!2838 = !{!2839}
!2839 = !DILocalVariable(name: "o", arg: 1, scope: !2833, file: !692, line: 124, type: !2836)
!2840 = !DILocation(line: 0, scope: !2833)
!2841 = !DILocation(line: 126, column: 11, scope: !2833)
!2842 = !DILocation(line: 126, column: 46, scope: !2833)
!2843 = !{!2844, !1101, i64 0}
!2844 = !{!"quoting_options", !1101, i64 0, !1101, i64 4, !1002, i64 8, !1001, i64 40, !1001, i64 48}
!2845 = !DILocation(line: 126, column: 3, scope: !2833)
!2846 = distinct !DISubprogram(name: "set_quoting_style", scope: !692, file: !692, line: 132, type: !2847, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !2849)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{null, !2822, !718}
!2849 = !{!2850, !2851}
!2850 = !DILocalVariable(name: "o", arg: 1, scope: !2846, file: !692, line: 132, type: !2822)
!2851 = !DILocalVariable(name: "s", arg: 2, scope: !2846, file: !692, line: 132, type: !718)
!2852 = !DILocation(line: 0, scope: !2846)
!2853 = !DILocation(line: 134, column: 4, scope: !2846)
!2854 = !DILocation(line: 134, column: 45, scope: !2846)
!2855 = !DILocation(line: 135, column: 1, scope: !2846)
!2856 = distinct !DISubprogram(name: "set_char_quoting", scope: !692, file: !692, line: 143, type: !2857, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!260, !2822, !4, !260}
!2859 = !{!2860, !2861, !2862, !2863, !2864, !2866, !2867}
!2860 = !DILocalVariable(name: "o", arg: 1, scope: !2856, file: !692, line: 143, type: !2822)
!2861 = !DILocalVariable(name: "c", arg: 2, scope: !2856, file: !692, line: 143, type: !4)
!2862 = !DILocalVariable(name: "i", arg: 3, scope: !2856, file: !692, line: 143, type: !260)
!2863 = !DILocalVariable(name: "uc", scope: !2856, file: !692, line: 145, type: !267)
!2864 = !DILocalVariable(name: "p", scope: !2856, file: !692, line: 146, type: !2865)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!2866 = !DILocalVariable(name: "shift", scope: !2856, file: !692, line: 148, type: !260)
!2867 = !DILocalVariable(name: "r", scope: !2856, file: !692, line: 149, type: !222)
!2868 = !DILocation(line: 0, scope: !2856)
!2869 = !DILocation(line: 147, column: 6, scope: !2856)
!2870 = !DILocation(line: 147, column: 41, scope: !2856)
!2871 = !DILocation(line: 147, column: 62, scope: !2856)
!2872 = !DILocation(line: 147, column: 57, scope: !2856)
!2873 = !DILocation(line: 148, column: 15, scope: !2856)
!2874 = !DILocation(line: 149, column: 21, scope: !2856)
!2875 = !DILocation(line: 149, column: 24, scope: !2856)
!2876 = !DILocation(line: 149, column: 34, scope: !2856)
!2877 = !DILocation(line: 150, column: 19, scope: !2856)
!2878 = !DILocation(line: 150, column: 24, scope: !2856)
!2879 = !DILocation(line: 150, column: 6, scope: !2856)
!2880 = !DILocation(line: 151, column: 3, scope: !2856)
!2881 = distinct !DISubprogram(name: "set_quoting_flags", scope: !692, file: !692, line: 159, type: !2882, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!260, !2822, !260}
!2884 = !{!2885, !2886, !2887}
!2885 = !DILocalVariable(name: "o", arg: 1, scope: !2881, file: !692, line: 159, type: !2822)
!2886 = !DILocalVariable(name: "i", arg: 2, scope: !2881, file: !692, line: 159, type: !260)
!2887 = !DILocalVariable(name: "r", scope: !2881, file: !692, line: 163, type: !260)
!2888 = !DILocation(line: 0, scope: !2881)
!2889 = !DILocation(line: 161, column: 8, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2881, file: !692, line: 161, column: 7)
!2891 = !DILocation(line: 161, column: 7, scope: !2881)
!2892 = !DILocation(line: 163, column: 14, scope: !2881)
!2893 = !{!2844, !1101, i64 4}
!2894 = !DILocation(line: 164, column: 12, scope: !2881)
!2895 = !DILocation(line: 165, column: 3, scope: !2881)
!2896 = distinct !DISubprogram(name: "set_custom_quoting", scope: !692, file: !692, line: 169, type: !2897, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{null, !2822, !265, !265}
!2899 = !{!2900, !2901, !2902}
!2900 = !DILocalVariable(name: "o", arg: 1, scope: !2896, file: !692, line: 169, type: !2822)
!2901 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2896, file: !692, line: 170, type: !265)
!2902 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2896, file: !692, line: 170, type: !265)
!2903 = !DILocation(line: 0, scope: !2896)
!2904 = !DILocation(line: 172, column: 8, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2896, file: !692, line: 172, column: 7)
!2906 = !DILocation(line: 172, column: 7, scope: !2896)
!2907 = !DILocation(line: 174, column: 12, scope: !2896)
!2908 = !DILocation(line: 175, column: 8, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2896, file: !692, line: 175, column: 7)
!2910 = !DILocation(line: 175, column: 19, scope: !2909)
!2911 = !DILocation(line: 176, column: 5, scope: !2909)
!2912 = !DILocation(line: 177, column: 6, scope: !2896)
!2913 = !DILocation(line: 177, column: 17, scope: !2896)
!2914 = !{!2844, !1001, i64 40}
!2915 = !DILocation(line: 178, column: 6, scope: !2896)
!2916 = !DILocation(line: 178, column: 18, scope: !2896)
!2917 = !{!2844, !1001, i64 48}
!2918 = !DILocation(line: 179, column: 1, scope: !2896)
!2919 = !DISubprogram(name: "abort", scope: !1206, file: !1206, line: 598, type: !647, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2920 = distinct !DISubprogram(name: "quotearg_buffer", scope: !692, file: !692, line: 774, type: !2921, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!262, !258, !262, !265, !262, !2836}
!2923 = !{!2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931}
!2924 = !DILocalVariable(name: "buffer", arg: 1, scope: !2920, file: !692, line: 774, type: !258)
!2925 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2920, file: !692, line: 774, type: !262)
!2926 = !DILocalVariable(name: "arg", arg: 3, scope: !2920, file: !692, line: 775, type: !265)
!2927 = !DILocalVariable(name: "argsize", arg: 4, scope: !2920, file: !692, line: 775, type: !262)
!2928 = !DILocalVariable(name: "o", arg: 5, scope: !2920, file: !692, line: 776, type: !2836)
!2929 = !DILocalVariable(name: "p", scope: !2920, file: !692, line: 778, type: !2836)
!2930 = !DILocalVariable(name: "saved_errno", scope: !2920, file: !692, line: 779, type: !260)
!2931 = !DILocalVariable(name: "r", scope: !2920, file: !692, line: 780, type: !262)
!2932 = !DILocation(line: 0, scope: !2920)
!2933 = !DILocation(line: 778, column: 37, scope: !2920)
!2934 = !DILocation(line: 779, column: 21, scope: !2920)
!2935 = !DILocation(line: 781, column: 43, scope: !2920)
!2936 = !DILocation(line: 781, column: 53, scope: !2920)
!2937 = !DILocation(line: 781, column: 63, scope: !2920)
!2938 = !DILocation(line: 782, column: 43, scope: !2920)
!2939 = !DILocation(line: 782, column: 58, scope: !2920)
!2940 = !DILocation(line: 780, column: 14, scope: !2920)
!2941 = !DILocation(line: 783, column: 9, scope: !2920)
!2942 = !DILocation(line: 784, column: 3, scope: !2920)
!2943 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !692, file: !692, line: 251, type: !2944, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !2948)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!262, !258, !262, !265, !262, !718, !260, !2946, !265, !265}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!2948 = !{!2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2974, !2976, !2979, !2980, !2981, !2982, !2985, !2986, !2988, !2989, !2992, !2996, !2997, !3005, !3008, !3009, !3010}
!2949 = !DILocalVariable(name: "buffer", arg: 1, scope: !2943, file: !692, line: 251, type: !258)
!2950 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2943, file: !692, line: 251, type: !262)
!2951 = !DILocalVariable(name: "arg", arg: 3, scope: !2943, file: !692, line: 252, type: !265)
!2952 = !DILocalVariable(name: "argsize", arg: 4, scope: !2943, file: !692, line: 252, type: !262)
!2953 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2943, file: !692, line: 253, type: !718)
!2954 = !DILocalVariable(name: "flags", arg: 6, scope: !2943, file: !692, line: 253, type: !260)
!2955 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2943, file: !692, line: 254, type: !2946)
!2956 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2943, file: !692, line: 255, type: !265)
!2957 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2943, file: !692, line: 256, type: !265)
!2958 = !DILocalVariable(name: "unibyte_locale", scope: !2943, file: !692, line: 258, type: !319)
!2959 = !DILocalVariable(name: "len", scope: !2943, file: !692, line: 260, type: !262)
!2960 = !DILocalVariable(name: "orig_buffersize", scope: !2943, file: !692, line: 261, type: !262)
!2961 = !DILocalVariable(name: "quote_string", scope: !2943, file: !692, line: 262, type: !265)
!2962 = !DILocalVariable(name: "quote_string_len", scope: !2943, file: !692, line: 263, type: !262)
!2963 = !DILocalVariable(name: "backslash_escapes", scope: !2943, file: !692, line: 264, type: !319)
!2964 = !DILocalVariable(name: "elide_outer_quotes", scope: !2943, file: !692, line: 265, type: !319)
!2965 = !DILocalVariable(name: "encountered_single_quote", scope: !2943, file: !692, line: 266, type: !319)
!2966 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2943, file: !692, line: 267, type: !319)
!2967 = !DILabel(scope: !2943, name: "process_input", file: !692, line: 308)
!2968 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2943, file: !692, line: 309, type: !319)
!2969 = !DILocalVariable(name: "lq", scope: !2970, file: !692, line: 361, type: !265)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !692, line: 361, column: 11)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !692, line: 360, column: 13)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !692, line: 333, column: 7)
!2973 = distinct !DILexicalBlock(scope: !2943, file: !692, line: 312, column: 5)
!2974 = !DILocalVariable(name: "i", scope: !2975, file: !692, line: 395, type: !262)
!2975 = distinct !DILexicalBlock(scope: !2943, file: !692, line: 395, column: 3)
!2976 = !DILocalVariable(name: "is_right_quote", scope: !2977, file: !692, line: 397, type: !319)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !692, line: 396, column: 5)
!2978 = distinct !DILexicalBlock(scope: !2975, file: !692, line: 395, column: 3)
!2979 = !DILocalVariable(name: "escaping", scope: !2977, file: !692, line: 398, type: !319)
!2980 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2977, file: !692, line: 399, type: !319)
!2981 = !DILocalVariable(name: "c", scope: !2977, file: !692, line: 417, type: !267)
!2982 = !DILabel(scope: !2983, name: "c_and_shell_escape", file: !692, line: 502)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !692, line: 478, column: 9)
!2984 = distinct !DILexicalBlock(scope: !2977, file: !692, line: 419, column: 9)
!2985 = !DILabel(scope: !2983, name: "c_escape", file: !692, line: 507)
!2986 = !DILocalVariable(name: "m", scope: !2987, file: !692, line: 598, type: !262)
!2987 = distinct !DILexicalBlock(scope: !2984, file: !692, line: 596, column: 11)
!2988 = !DILocalVariable(name: "printable", scope: !2987, file: !692, line: 600, type: !319)
!2989 = !DILocalVariable(name: "mbs", scope: !2990, file: !692, line: 609, type: !779)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !692, line: 608, column: 15)
!2991 = distinct !DILexicalBlock(scope: !2987, file: !692, line: 602, column: 17)
!2992 = !DILocalVariable(name: "w", scope: !2993, file: !692, line: 618, type: !672)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !692, line: 617, column: 19)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !692, line: 616, column: 17)
!2995 = distinct !DILexicalBlock(scope: !2990, file: !692, line: 616, column: 17)
!2996 = !DILocalVariable(name: "bytes", scope: !2993, file: !692, line: 619, type: !262)
!2997 = !DILocalVariable(name: "j", scope: !2998, file: !692, line: 648, type: !262)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !692, line: 648, column: 29)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !692, line: 647, column: 27)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !692, line: 645, column: 29)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !692, line: 636, column: 23)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !692, line: 628, column: 30)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !692, line: 623, column: 30)
!3004 = distinct !DILexicalBlock(scope: !2993, file: !692, line: 621, column: 25)
!3005 = !DILocalVariable(name: "ilim", scope: !3006, file: !692, line: 674, type: !262)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !692, line: 671, column: 15)
!3007 = distinct !DILexicalBlock(scope: !2987, file: !692, line: 670, column: 17)
!3008 = !DILabel(scope: !2977, name: "store_escape", file: !692, line: 709)
!3009 = !DILabel(scope: !2977, name: "store_c", file: !692, line: 712)
!3010 = !DILabel(scope: !2943, name: "force_outer_quoting_style", file: !692, line: 753)
!3011 = distinct !DIAssignID()
!3012 = distinct !DIAssignID()
!3013 = distinct !DIAssignID()
!3014 = distinct !DIAssignID()
!3015 = distinct !DIAssignID()
!3016 = !DILocation(line: 0, scope: !2990)
!3017 = distinct !DIAssignID()
!3018 = !DILocation(line: 0, scope: !2993)
!3019 = !DILocation(line: 0, scope: !2943)
!3020 = !DILocation(line: 258, column: 25, scope: !2943)
!3021 = !DILocation(line: 258, column: 36, scope: !2943)
!3022 = !DILocation(line: 267, column: 3, scope: !2943)
!3023 = !DILocation(line: 261, column: 10, scope: !2943)
!3024 = !DILocation(line: 262, column: 15, scope: !2943)
!3025 = !DILocation(line: 263, column: 10, scope: !2943)
!3026 = !DILocation(line: 308, column: 2, scope: !2943)
!3027 = !DILocation(line: 311, column: 3, scope: !2943)
!3028 = !DILocation(line: 318, column: 11, scope: !2973)
!3029 = !DILocation(line: 319, column: 9, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !692, line: 319, column: 9)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !692, line: 319, column: 9)
!3032 = distinct !DILexicalBlock(scope: !2973, file: !692, line: 318, column: 11)
!3033 = !DILocation(line: 319, column: 9, scope: !3031)
!3034 = !DILocation(line: 0, scope: !770, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 357, column: 26, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !692, line: 335, column: 11)
!3037 = distinct !DILexicalBlock(scope: !2972, file: !692, line: 334, column: 13)
!3038 = !DILocation(line: 199, column: 29, scope: !770, inlinedAt: !3035)
!3039 = !DILocation(line: 201, column: 19, scope: !3040, inlinedAt: !3035)
!3040 = distinct !DILexicalBlock(scope: !770, file: !692, line: 201, column: 7)
!3041 = !DILocation(line: 201, column: 7, scope: !770, inlinedAt: !3035)
!3042 = !DILocation(line: 229, column: 3, scope: !770, inlinedAt: !3035)
!3043 = !DILocation(line: 230, column: 3, scope: !770, inlinedAt: !3035)
!3044 = !DILocalVariable(name: "ps", arg: 1, scope: !3045, file: !2790, line: 1135, type: !3048)
!3045 = distinct !DISubprogram(name: "mbszero", scope: !2790, file: !2790, line: 1135, type: !3046, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3049)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{null, !3048}
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!3049 = !{!3044}
!3050 = !DILocation(line: 0, scope: !3045, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 230, column: 18, scope: !770, inlinedAt: !3035)
!3052 = !DILocalVariable(name: "__dest", arg: 1, scope: !3053, file: !2799, line: 57, type: !259)
!3053 = distinct !DISubprogram(name: "memset", scope: !2799, file: !2799, line: 57, type: !2800, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3054)
!3054 = !{!3052, !3055, !3056}
!3055 = !DILocalVariable(name: "__ch", arg: 2, scope: !3053, file: !2799, line: 57, type: !260)
!3056 = !DILocalVariable(name: "__len", arg: 3, scope: !3053, file: !2799, line: 57, type: !262)
!3057 = !DILocation(line: 0, scope: !3053, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 1137, column: 3, scope: !3045, inlinedAt: !3051)
!3059 = !DILocation(line: 59, column: 10, scope: !3053, inlinedAt: !3058)
!3060 = !DILocation(line: 231, column: 7, scope: !3061, inlinedAt: !3035)
!3061 = distinct !DILexicalBlock(scope: !770, file: !692, line: 231, column: 7)
!3062 = !DILocation(line: 231, column: 40, scope: !3061, inlinedAt: !3035)
!3063 = !DILocation(line: 231, column: 45, scope: !3061, inlinedAt: !3035)
!3064 = !DILocation(line: 235, column: 1, scope: !770, inlinedAt: !3035)
!3065 = !DILocation(line: 0, scope: !770, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 358, column: 27, scope: !3036)
!3067 = !DILocation(line: 199, column: 29, scope: !770, inlinedAt: !3066)
!3068 = !DILocation(line: 201, column: 19, scope: !3040, inlinedAt: !3066)
!3069 = !DILocation(line: 201, column: 7, scope: !770, inlinedAt: !3066)
!3070 = !DILocation(line: 229, column: 3, scope: !770, inlinedAt: !3066)
!3071 = !DILocation(line: 230, column: 3, scope: !770, inlinedAt: !3066)
!3072 = !DILocation(line: 0, scope: !3045, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 230, column: 18, scope: !770, inlinedAt: !3066)
!3074 = !DILocation(line: 0, scope: !3053, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 1137, column: 3, scope: !3045, inlinedAt: !3073)
!3076 = !DILocation(line: 59, column: 10, scope: !3053, inlinedAt: !3075)
!3077 = !DILocation(line: 231, column: 7, scope: !3061, inlinedAt: !3066)
!3078 = !DILocation(line: 231, column: 40, scope: !3061, inlinedAt: !3066)
!3079 = !DILocation(line: 231, column: 45, scope: !3061, inlinedAt: !3066)
!3080 = !DILocation(line: 235, column: 1, scope: !770, inlinedAt: !3066)
!3081 = !DILocation(line: 360, column: 13, scope: !2972)
!3082 = !DILocation(line: 0, scope: !2970)
!3083 = !DILocation(line: 361, column: 45, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !2970, file: !692, line: 361, column: 11)
!3085 = !DILocation(line: 361, column: 11, scope: !2970)
!3086 = !DILocation(line: 362, column: 13, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !692, line: 362, column: 13)
!3088 = distinct !DILexicalBlock(scope: !3084, file: !692, line: 362, column: 13)
!3089 = !DILocation(line: 362, column: 13, scope: !3088)
!3090 = !DILocation(line: 361, column: 52, scope: !3084)
!3091 = distinct !{!3091, !3085, !3092, !1147}
!3092 = !DILocation(line: 362, column: 13, scope: !2970)
!3093 = !DILocation(line: 365, column: 28, scope: !2972)
!3094 = !DILocation(line: 260, column: 10, scope: !2943)
!3095 = !DILocation(line: 367, column: 7, scope: !2973)
!3096 = !DILocation(line: 373, column: 7, scope: !2973)
!3097 = !DILocation(line: 381, column: 11, scope: !2973)
!3098 = !DILocation(line: 376, column: 11, scope: !2973)
!3099 = !DILocation(line: 382, column: 9, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !692, line: 382, column: 9)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !692, line: 382, column: 9)
!3102 = distinct !DILexicalBlock(scope: !2973, file: !692, line: 381, column: 11)
!3103 = !DILocation(line: 382, column: 9, scope: !3101)
!3104 = !DILocation(line: 389, column: 7, scope: !2973)
!3105 = !DILocation(line: 392, column: 7, scope: !2973)
!3106 = !DILocation(line: 0, scope: !2975)
!3107 = !DILocation(line: 395, column: 8, scope: !2975)
!3108 = !DILocation(line: 395, scope: !2975)
!3109 = !DILocation(line: 395, column: 34, scope: !2978)
!3110 = !DILocation(line: 395, column: 26, scope: !2978)
!3111 = !DILocation(line: 395, column: 48, scope: !2978)
!3112 = !DILocation(line: 395, column: 55, scope: !2978)
!3113 = !DILocation(line: 395, column: 3, scope: !2975)
!3114 = !DILocation(line: 395, column: 67, scope: !2978)
!3115 = !DILocation(line: 0, scope: !2977)
!3116 = !DILocation(line: 402, column: 11, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !2977, file: !692, line: 401, column: 11)
!3118 = !DILocation(line: 404, column: 17, scope: !3117)
!3119 = !DILocation(line: 405, column: 39, scope: !3117)
!3120 = !DILocation(line: 409, column: 32, scope: !3117)
!3121 = !DILocation(line: 405, column: 19, scope: !3117)
!3122 = !DILocation(line: 405, column: 15, scope: !3117)
!3123 = !DILocation(line: 410, column: 11, scope: !3117)
!3124 = !DILocation(line: 410, column: 25, scope: !3117)
!3125 = !DILocalVariable(name: "__s1", arg: 1, scope: !3126, file: !1113, line: 974, type: !1230)
!3126 = distinct !DISubprogram(name: "memeq", scope: !1113, file: !1113, line: 974, type: !2759, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3127)
!3127 = !{!3125, !3128, !3129}
!3128 = !DILocalVariable(name: "__s2", arg: 2, scope: !3126, file: !1113, line: 974, type: !1230)
!3129 = !DILocalVariable(name: "__n", arg: 3, scope: !3126, file: !1113, line: 974, type: !262)
!3130 = !DILocation(line: 0, scope: !3126, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 410, column: 14, scope: !3117)
!3132 = !DILocation(line: 976, column: 11, scope: !3126, inlinedAt: !3131)
!3133 = !DILocation(line: 976, column: 10, scope: !3126, inlinedAt: !3131)
!3134 = !DILocation(line: 401, column: 11, scope: !2977)
!3135 = !DILocation(line: 417, column: 25, scope: !2977)
!3136 = !DILocation(line: 418, column: 7, scope: !2977)
!3137 = !DILocation(line: 421, column: 15, scope: !2984)
!3138 = !DILocation(line: 423, column: 15, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !692, line: 423, column: 15)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !692, line: 422, column: 13)
!3141 = distinct !DILexicalBlock(scope: !2984, file: !692, line: 421, column: 15)
!3142 = !DILocation(line: 423, column: 15, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3139, file: !692, line: 423, column: 15)
!3144 = !DILocation(line: 423, column: 15, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !692, line: 423, column: 15)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !692, line: 423, column: 15)
!3147 = distinct !DILexicalBlock(scope: !3143, file: !692, line: 423, column: 15)
!3148 = !DILocation(line: 423, column: 15, scope: !3146)
!3149 = !DILocation(line: 423, column: 15, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !692, line: 423, column: 15)
!3151 = distinct !DILexicalBlock(scope: !3147, file: !692, line: 423, column: 15)
!3152 = !DILocation(line: 423, column: 15, scope: !3151)
!3153 = !DILocation(line: 423, column: 15, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !692, line: 423, column: 15)
!3155 = distinct !DILexicalBlock(scope: !3147, file: !692, line: 423, column: 15)
!3156 = !DILocation(line: 423, column: 15, scope: !3155)
!3157 = !DILocation(line: 423, column: 15, scope: !3147)
!3158 = !DILocation(line: 423, column: 15, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !692, line: 423, column: 15)
!3160 = distinct !DILexicalBlock(scope: !3139, file: !692, line: 423, column: 15)
!3161 = !DILocation(line: 423, column: 15, scope: !3160)
!3162 = !DILocation(line: 431, column: 19, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3140, file: !692, line: 430, column: 19)
!3164 = !DILocation(line: 431, column: 24, scope: !3163)
!3165 = !DILocation(line: 431, column: 28, scope: !3163)
!3166 = !DILocation(line: 431, column: 38, scope: !3163)
!3167 = !DILocation(line: 431, column: 48, scope: !3163)
!3168 = !DILocation(line: 431, column: 59, scope: !3163)
!3169 = !DILocation(line: 433, column: 19, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !692, line: 433, column: 19)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !692, line: 433, column: 19)
!3172 = distinct !DILexicalBlock(scope: !3163, file: !692, line: 432, column: 17)
!3173 = !DILocation(line: 433, column: 19, scope: !3171)
!3174 = !DILocation(line: 434, column: 19, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !692, line: 434, column: 19)
!3176 = distinct !DILexicalBlock(scope: !3172, file: !692, line: 434, column: 19)
!3177 = !DILocation(line: 434, column: 19, scope: !3176)
!3178 = !DILocation(line: 435, column: 17, scope: !3172)
!3179 = !DILocation(line: 442, column: 20, scope: !3141)
!3180 = !DILocation(line: 447, column: 11, scope: !2984)
!3181 = !DILocation(line: 450, column: 19, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !2984, file: !692, line: 448, column: 13)
!3183 = !DILocation(line: 456, column: 19, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3182, file: !692, line: 455, column: 19)
!3185 = !DILocation(line: 456, column: 24, scope: !3184)
!3186 = !DILocation(line: 456, column: 28, scope: !3184)
!3187 = !DILocation(line: 456, column: 38, scope: !3184)
!3188 = !DILocation(line: 456, column: 41, scope: !3184)
!3189 = !DILocation(line: 456, column: 52, scope: !3184)
!3190 = !DILocation(line: 455, column: 19, scope: !3182)
!3191 = !DILocation(line: 457, column: 25, scope: !3184)
!3192 = !DILocation(line: 457, column: 17, scope: !3184)
!3193 = !DILocation(line: 464, column: 25, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3184, file: !692, line: 458, column: 19)
!3195 = !DILocation(line: 468, column: 21, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !692, line: 468, column: 21)
!3197 = distinct !DILexicalBlock(scope: !3194, file: !692, line: 468, column: 21)
!3198 = !DILocation(line: 468, column: 21, scope: !3197)
!3199 = !DILocation(line: 469, column: 21, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !692, line: 469, column: 21)
!3201 = distinct !DILexicalBlock(scope: !3194, file: !692, line: 469, column: 21)
!3202 = !DILocation(line: 469, column: 21, scope: !3201)
!3203 = !DILocation(line: 470, column: 21, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !692, line: 470, column: 21)
!3205 = distinct !DILexicalBlock(scope: !3194, file: !692, line: 470, column: 21)
!3206 = !DILocation(line: 470, column: 21, scope: !3205)
!3207 = !DILocation(line: 471, column: 21, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !692, line: 471, column: 21)
!3209 = distinct !DILexicalBlock(scope: !3194, file: !692, line: 471, column: 21)
!3210 = !DILocation(line: 471, column: 21, scope: !3209)
!3211 = !DILocation(line: 472, column: 21, scope: !3194)
!3212 = !DILocation(line: 482, column: 33, scope: !2983)
!3213 = !DILocation(line: 483, column: 33, scope: !2983)
!3214 = !DILocation(line: 485, column: 33, scope: !2983)
!3215 = !DILocation(line: 486, column: 33, scope: !2983)
!3216 = !DILocation(line: 487, column: 33, scope: !2983)
!3217 = !DILocation(line: 490, column: 17, scope: !2983)
!3218 = !DILocation(line: 492, column: 21, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !692, line: 491, column: 15)
!3220 = distinct !DILexicalBlock(scope: !2983, file: !692, line: 490, column: 17)
!3221 = !DILocation(line: 499, column: 35, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !2983, file: !692, line: 499, column: 17)
!3223 = !DILocation(line: 0, scope: !2983)
!3224 = !DILocation(line: 502, column: 11, scope: !2983)
!3225 = !DILocation(line: 504, column: 17, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !2983, file: !692, line: 503, column: 17)
!3227 = !DILocation(line: 507, column: 11, scope: !2983)
!3228 = !DILocation(line: 508, column: 17, scope: !2983)
!3229 = !DILocation(line: 517, column: 15, scope: !2984)
!3230 = !DILocation(line: 517, column: 40, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !2984, file: !692, line: 517, column: 15)
!3232 = !DILocation(line: 517, column: 47, scope: !3231)
!3233 = !DILocation(line: 517, column: 18, scope: !3231)
!3234 = !DILocation(line: 521, column: 17, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !2984, file: !692, line: 521, column: 15)
!3236 = !DILocation(line: 521, column: 15, scope: !2984)
!3237 = !DILocation(line: 525, column: 11, scope: !2984)
!3238 = !DILocation(line: 537, column: 15, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !2984, file: !692, line: 536, column: 15)
!3240 = !DILocation(line: 536, column: 15, scope: !2984)
!3241 = !DILocation(line: 544, column: 15, scope: !2984)
!3242 = !DILocation(line: 546, column: 19, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !692, line: 545, column: 13)
!3244 = distinct !DILexicalBlock(scope: !2984, file: !692, line: 544, column: 15)
!3245 = !DILocation(line: 549, column: 19, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3243, file: !692, line: 549, column: 19)
!3247 = !DILocation(line: 549, column: 30, scope: !3246)
!3248 = !DILocation(line: 558, column: 15, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !692, line: 558, column: 15)
!3250 = distinct !DILexicalBlock(scope: !3243, file: !692, line: 558, column: 15)
!3251 = !DILocation(line: 558, column: 15, scope: !3250)
!3252 = !DILocation(line: 559, column: 15, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !692, line: 559, column: 15)
!3254 = distinct !DILexicalBlock(scope: !3243, file: !692, line: 559, column: 15)
!3255 = !DILocation(line: 559, column: 15, scope: !3254)
!3256 = !DILocation(line: 560, column: 15, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !692, line: 560, column: 15)
!3258 = distinct !DILexicalBlock(scope: !3243, file: !692, line: 560, column: 15)
!3259 = !DILocation(line: 560, column: 15, scope: !3258)
!3260 = !DILocation(line: 562, column: 13, scope: !3243)
!3261 = !DILocation(line: 602, column: 17, scope: !2987)
!3262 = !DILocation(line: 0, scope: !2987)
!3263 = !DILocation(line: 605, column: 29, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !2991, file: !692, line: 603, column: 15)
!3265 = !DILocation(line: 605, column: 41, scope: !3264)
!3266 = !DILocation(line: 606, column: 15, scope: !3264)
!3267 = !DILocation(line: 609, column: 17, scope: !2990)
!3268 = !DILocation(line: 0, scope: !3045, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 609, column: 32, scope: !2990)
!3270 = !DILocation(line: 0, scope: !3053, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 1137, column: 3, scope: !3045, inlinedAt: !3269)
!3272 = !DILocation(line: 59, column: 10, scope: !3053, inlinedAt: !3271)
!3273 = !DILocation(line: 613, column: 29, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !2990, file: !692, line: 613, column: 21)
!3275 = !DILocation(line: 613, column: 21, scope: !2990)
!3276 = !DILocation(line: 614, column: 29, scope: !3274)
!3277 = !DILocation(line: 614, column: 19, scope: !3274)
!3278 = !DILocation(line: 618, column: 21, scope: !2993)
!3279 = !DILocation(line: 620, column: 54, scope: !2993)
!3280 = !DILocation(line: 619, column: 36, scope: !2993)
!3281 = !DILocation(line: 621, column: 25, scope: !2993)
!3282 = !DILocation(line: 631, column: 38, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3002, file: !692, line: 629, column: 23)
!3284 = !DILocation(line: 631, column: 48, scope: !3283)
!3285 = !DILocation(line: 631, column: 25, scope: !3283)
!3286 = !DILocation(line: 626, column: 25, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3003, file: !692, line: 624, column: 23)
!3288 = !DILocation(line: 631, column: 51, scope: !3283)
!3289 = !DILocation(line: 632, column: 28, scope: !3283)
!3290 = !DILocation(line: 631, column: 34, scope: !3283)
!3291 = distinct !{!3291, !3285, !3289, !1147}
!3292 = !DILocation(line: 0, scope: !2998)
!3293 = !DILocation(line: 646, column: 29, scope: !3000)
!3294 = !DILocation(line: 648, column: 29, scope: !2998)
!3295 = !DILocation(line: 649, column: 39, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !2998, file: !692, line: 648, column: 29)
!3297 = !DILocation(line: 649, column: 31, scope: !3296)
!3298 = !DILocation(line: 648, column: 60, scope: !3296)
!3299 = !DILocation(line: 648, column: 50, scope: !3296)
!3300 = distinct !{!3300, !3294, !3301, !1147}
!3301 = !DILocation(line: 654, column: 33, scope: !2998)
!3302 = !DILocation(line: 657, column: 43, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3001, file: !692, line: 657, column: 29)
!3304 = !DILocalVariable(name: "wc", arg: 1, scope: !3305, file: !3306, line: 865, type: !3309)
!3305 = distinct !DISubprogram(name: "c32isprint", scope: !3306, file: !3306, line: 865, type: !3307, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3311)
!3306 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!260, !3309}
!3309 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3310, line: 20, baseType: !222)
!3310 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3311 = !{!3304}
!3312 = !DILocation(line: 0, scope: !3305, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 657, column: 31, scope: !3303)
!3314 = !DILocation(line: 871, column: 10, scope: !3305, inlinedAt: !3313)
!3315 = !DILocation(line: 657, column: 31, scope: !3303)
!3316 = !DILocation(line: 664, column: 23, scope: !2993)
!3317 = !DILocation(line: 665, column: 19, scope: !2994)
!3318 = !DILocation(line: 666, column: 15, scope: !2991)
!3319 = !DILocation(line: 753, column: 2, scope: !2943)
!3320 = !DILocation(line: 756, column: 51, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !2943, file: !692, line: 756, column: 7)
!3322 = !DILocation(line: 0, scope: !2991)
!3323 = !DILocation(line: 670, column: 19, scope: !3007)
!3324 = !DILocation(line: 670, column: 23, scope: !3007)
!3325 = !DILocation(line: 674, column: 33, scope: !3006)
!3326 = !DILocation(line: 0, scope: !3006)
!3327 = !DILocation(line: 676, column: 17, scope: !3006)
!3328 = !DILocation(line: 678, column: 43, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !692, line: 678, column: 25)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !692, line: 677, column: 19)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !692, line: 676, column: 17)
!3332 = distinct !DILexicalBlock(scope: !3006, file: !692, line: 676, column: 17)
!3333 = !DILocation(line: 680, column: 25, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !692, line: 680, column: 25)
!3335 = distinct !DILexicalBlock(scope: !3329, file: !692, line: 679, column: 23)
!3336 = !DILocation(line: 680, column: 25, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3334, file: !692, line: 680, column: 25)
!3338 = !DILocation(line: 680, column: 25, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !692, line: 680, column: 25)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !692, line: 680, column: 25)
!3341 = distinct !DILexicalBlock(scope: !3337, file: !692, line: 680, column: 25)
!3342 = !DILocation(line: 680, column: 25, scope: !3340)
!3343 = !DILocation(line: 680, column: 25, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !692, line: 680, column: 25)
!3345 = distinct !DILexicalBlock(scope: !3341, file: !692, line: 680, column: 25)
!3346 = !DILocation(line: 680, column: 25, scope: !3345)
!3347 = !DILocation(line: 680, column: 25, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !692, line: 680, column: 25)
!3349 = distinct !DILexicalBlock(scope: !3341, file: !692, line: 680, column: 25)
!3350 = !DILocation(line: 680, column: 25, scope: !3349)
!3351 = !DILocation(line: 680, column: 25, scope: !3341)
!3352 = !DILocation(line: 680, column: 25, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !692, line: 680, column: 25)
!3354 = distinct !DILexicalBlock(scope: !3334, file: !692, line: 680, column: 25)
!3355 = !DILocation(line: 680, column: 25, scope: !3354)
!3356 = !DILocation(line: 681, column: 25, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3358, file: !692, line: 681, column: 25)
!3358 = distinct !DILexicalBlock(scope: !3335, file: !692, line: 681, column: 25)
!3359 = !DILocation(line: 681, column: 25, scope: !3358)
!3360 = !DILocation(line: 682, column: 25, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !692, line: 682, column: 25)
!3362 = distinct !DILexicalBlock(scope: !3335, file: !692, line: 682, column: 25)
!3363 = !DILocation(line: 682, column: 25, scope: !3362)
!3364 = !DILocation(line: 683, column: 38, scope: !3335)
!3365 = !DILocation(line: 683, column: 33, scope: !3335)
!3366 = !DILocation(line: 684, column: 23, scope: !3335)
!3367 = !DILocation(line: 685, column: 30, scope: !3329)
!3368 = !DILocation(line: 687, column: 25, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !692, line: 687, column: 25)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !692, line: 687, column: 25)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !692, line: 686, column: 23)
!3372 = distinct !DILexicalBlock(scope: !3329, file: !692, line: 685, column: 30)
!3373 = !DILocation(line: 687, column: 25, scope: !3370)
!3374 = !DILocation(line: 689, column: 23, scope: !3371)
!3375 = !DILocation(line: 690, column: 35, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3330, file: !692, line: 690, column: 25)
!3377 = !DILocation(line: 690, column: 30, scope: !3376)
!3378 = !DILocation(line: 690, column: 25, scope: !3330)
!3379 = !DILocation(line: 692, column: 21, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !692, line: 692, column: 21)
!3381 = distinct !DILexicalBlock(scope: !3330, file: !692, line: 692, column: 21)
!3382 = !DILocation(line: 692, column: 21, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !692, line: 692, column: 21)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !692, line: 692, column: 21)
!3385 = distinct !DILexicalBlock(scope: !3380, file: !692, line: 692, column: 21)
!3386 = !DILocation(line: 692, column: 21, scope: !3384)
!3387 = !DILocation(line: 692, column: 21, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !692, line: 692, column: 21)
!3389 = distinct !DILexicalBlock(scope: !3385, file: !692, line: 692, column: 21)
!3390 = !DILocation(line: 692, column: 21, scope: !3389)
!3391 = !DILocation(line: 692, column: 21, scope: !3385)
!3392 = !DILocation(line: 0, scope: !3330)
!3393 = !DILocation(line: 693, column: 21, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !692, line: 693, column: 21)
!3395 = distinct !DILexicalBlock(scope: !3330, file: !692, line: 693, column: 21)
!3396 = !DILocation(line: 693, column: 21, scope: !3395)
!3397 = !DILocation(line: 694, column: 25, scope: !3330)
!3398 = !DILocation(line: 676, column: 17, scope: !3331)
!3399 = distinct !{!3399, !3400, !3401}
!3400 = !DILocation(line: 676, column: 17, scope: !3332)
!3401 = !DILocation(line: 695, column: 19, scope: !3332)
!3402 = !DILocation(line: 409, column: 30, scope: !3117)
!3403 = !DILocation(line: 702, column: 34, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !2977, file: !692, line: 702, column: 11)
!3405 = !DILocation(line: 704, column: 14, scope: !3404)
!3406 = !DILocation(line: 705, column: 14, scope: !3404)
!3407 = !DILocation(line: 705, column: 35, scope: !3404)
!3408 = !DILocation(line: 705, column: 17, scope: !3404)
!3409 = !DILocation(line: 705, column: 47, scope: !3404)
!3410 = !DILocation(line: 705, column: 65, scope: !3404)
!3411 = !DILocation(line: 706, column: 11, scope: !3404)
!3412 = !DILocation(line: 702, column: 11, scope: !2977)
!3413 = !DILocation(line: 395, column: 15, scope: !2975)
!3414 = !DILocation(line: 709, column: 5, scope: !2977)
!3415 = !DILocation(line: 710, column: 7, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !2977, file: !692, line: 710, column: 7)
!3417 = !DILocation(line: 710, column: 7, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3416, file: !692, line: 710, column: 7)
!3419 = !DILocation(line: 710, column: 7, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !692, line: 710, column: 7)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !692, line: 710, column: 7)
!3422 = distinct !DILexicalBlock(scope: !3418, file: !692, line: 710, column: 7)
!3423 = !DILocation(line: 710, column: 7, scope: !3421)
!3424 = !DILocation(line: 710, column: 7, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !692, line: 710, column: 7)
!3426 = distinct !DILexicalBlock(scope: !3422, file: !692, line: 710, column: 7)
!3427 = !DILocation(line: 710, column: 7, scope: !3426)
!3428 = !DILocation(line: 710, column: 7, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !692, line: 710, column: 7)
!3430 = distinct !DILexicalBlock(scope: !3422, file: !692, line: 710, column: 7)
!3431 = !DILocation(line: 710, column: 7, scope: !3430)
!3432 = !DILocation(line: 710, column: 7, scope: !3422)
!3433 = !DILocation(line: 710, column: 7, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !692, line: 710, column: 7)
!3435 = distinct !DILexicalBlock(scope: !3416, file: !692, line: 710, column: 7)
!3436 = !DILocation(line: 710, column: 7, scope: !3435)
!3437 = !DILocation(line: 712, column: 5, scope: !2977)
!3438 = !DILocation(line: 713, column: 7, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !692, line: 713, column: 7)
!3440 = distinct !DILexicalBlock(scope: !2977, file: !692, line: 713, column: 7)
!3441 = !DILocation(line: 417, column: 21, scope: !2977)
!3442 = !DILocation(line: 713, column: 7, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !692, line: 713, column: 7)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !692, line: 713, column: 7)
!3445 = distinct !DILexicalBlock(scope: !3439, file: !692, line: 713, column: 7)
!3446 = !DILocation(line: 713, column: 7, scope: !3444)
!3447 = !DILocation(line: 713, column: 7, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !692, line: 713, column: 7)
!3449 = distinct !DILexicalBlock(scope: !3445, file: !692, line: 713, column: 7)
!3450 = !DILocation(line: 713, column: 7, scope: !3449)
!3451 = !DILocation(line: 713, column: 7, scope: !3445)
!3452 = !DILocation(line: 714, column: 7, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3454, file: !692, line: 714, column: 7)
!3454 = distinct !DILexicalBlock(scope: !2977, file: !692, line: 714, column: 7)
!3455 = !DILocation(line: 714, column: 7, scope: !3454)
!3456 = !DILocation(line: 716, column: 11, scope: !2977)
!3457 = !DILocation(line: 718, column: 5, scope: !2978)
!3458 = !DILocation(line: 395, column: 82, scope: !2978)
!3459 = !DILocation(line: 395, column: 3, scope: !2978)
!3460 = distinct !{!3460, !3113, !3461, !1147}
!3461 = !DILocation(line: 718, column: 5, scope: !2975)
!3462 = !DILocation(line: 720, column: 11, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !2943, file: !692, line: 720, column: 7)
!3464 = !DILocation(line: 720, column: 16, scope: !3463)
!3465 = !DILocation(line: 728, column: 51, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !2943, file: !692, line: 728, column: 7)
!3467 = !DILocation(line: 731, column: 11, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3466, file: !692, line: 730, column: 5)
!3469 = !DILocation(line: 732, column: 16, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3468, file: !692, line: 731, column: 11)
!3471 = !DILocation(line: 732, column: 9, scope: !3470)
!3472 = !DILocation(line: 736, column: 18, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3470, file: !692, line: 736, column: 16)
!3474 = !DILocation(line: 736, column: 29, scope: !3473)
!3475 = !DILocation(line: 745, column: 7, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !2943, file: !692, line: 745, column: 7)
!3477 = !DILocation(line: 745, column: 20, scope: !3476)
!3478 = !DILocation(line: 746, column: 12, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !692, line: 746, column: 5)
!3480 = distinct !DILexicalBlock(scope: !3476, file: !692, line: 746, column: 5)
!3481 = !DILocation(line: 746, column: 5, scope: !3480)
!3482 = !DILocation(line: 747, column: 7, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !692, line: 747, column: 7)
!3484 = distinct !DILexicalBlock(scope: !3479, file: !692, line: 747, column: 7)
!3485 = !DILocation(line: 747, column: 7, scope: !3484)
!3486 = !DILocation(line: 746, column: 39, scope: !3479)
!3487 = distinct !{!3487, !3481, !3488, !1147}
!3488 = !DILocation(line: 747, column: 7, scope: !3480)
!3489 = !DILocation(line: 749, column: 11, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !2943, file: !692, line: 749, column: 7)
!3491 = !DILocation(line: 749, column: 7, scope: !2943)
!3492 = !DILocation(line: 750, column: 5, scope: !3490)
!3493 = !DILocation(line: 750, column: 17, scope: !3490)
!3494 = !DILocation(line: 756, column: 21, scope: !3321)
!3495 = !DILocation(line: 760, column: 42, scope: !2943)
!3496 = !DILocation(line: 758, column: 10, scope: !2943)
!3497 = !DILocation(line: 758, column: 3, scope: !2943)
!3498 = !DILocation(line: 762, column: 1, scope: !2943)
!3499 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1206, file: !1206, line: 98, type: !3500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!262}
!3502 = !DISubprogram(name: "iswprint", scope: !3503, file: !3503, line: 120, type: !3307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3503 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3504 = distinct !DISubprogram(name: "quotearg_alloc", scope: !692, file: !692, line: 788, type: !3505, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3507)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!258, !265, !262, !2836}
!3507 = !{!3508, !3509, !3510}
!3508 = !DILocalVariable(name: "arg", arg: 1, scope: !3504, file: !692, line: 788, type: !265)
!3509 = !DILocalVariable(name: "argsize", arg: 2, scope: !3504, file: !692, line: 788, type: !262)
!3510 = !DILocalVariable(name: "o", arg: 3, scope: !3504, file: !692, line: 789, type: !2836)
!3511 = !DILocation(line: 0, scope: !3504)
!3512 = !DILocalVariable(name: "arg", arg: 1, scope: !3513, file: !692, line: 801, type: !265)
!3513 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !692, file: !692, line: 801, type: !3514, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3516)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!258, !265, !262, !934, !2836}
!3516 = !{!3512, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524}
!3517 = !DILocalVariable(name: "argsize", arg: 2, scope: !3513, file: !692, line: 801, type: !262)
!3518 = !DILocalVariable(name: "size", arg: 3, scope: !3513, file: !692, line: 801, type: !934)
!3519 = !DILocalVariable(name: "o", arg: 4, scope: !3513, file: !692, line: 802, type: !2836)
!3520 = !DILocalVariable(name: "p", scope: !3513, file: !692, line: 804, type: !2836)
!3521 = !DILocalVariable(name: "saved_errno", scope: !3513, file: !692, line: 805, type: !260)
!3522 = !DILocalVariable(name: "flags", scope: !3513, file: !692, line: 807, type: !260)
!3523 = !DILocalVariable(name: "bufsize", scope: !3513, file: !692, line: 808, type: !262)
!3524 = !DILocalVariable(name: "buf", scope: !3513, file: !692, line: 812, type: !258)
!3525 = !DILocation(line: 0, scope: !3513, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 791, column: 10, scope: !3504)
!3527 = !DILocation(line: 804, column: 37, scope: !3513, inlinedAt: !3526)
!3528 = !DILocation(line: 805, column: 21, scope: !3513, inlinedAt: !3526)
!3529 = !DILocation(line: 807, column: 18, scope: !3513, inlinedAt: !3526)
!3530 = !DILocation(line: 807, column: 24, scope: !3513, inlinedAt: !3526)
!3531 = !DILocation(line: 808, column: 72, scope: !3513, inlinedAt: !3526)
!3532 = !DILocation(line: 809, column: 56, scope: !3513, inlinedAt: !3526)
!3533 = !DILocation(line: 810, column: 49, scope: !3513, inlinedAt: !3526)
!3534 = !DILocation(line: 811, column: 49, scope: !3513, inlinedAt: !3526)
!3535 = !DILocation(line: 808, column: 20, scope: !3513, inlinedAt: !3526)
!3536 = !DILocation(line: 811, column: 62, scope: !3513, inlinedAt: !3526)
!3537 = !DILocation(line: 812, column: 15, scope: !3513, inlinedAt: !3526)
!3538 = !DILocation(line: 813, column: 60, scope: !3513, inlinedAt: !3526)
!3539 = !DILocation(line: 815, column: 32, scope: !3513, inlinedAt: !3526)
!3540 = !DILocation(line: 815, column: 47, scope: !3513, inlinedAt: !3526)
!3541 = !DILocation(line: 813, column: 3, scope: !3513, inlinedAt: !3526)
!3542 = !DILocation(line: 816, column: 9, scope: !3513, inlinedAt: !3526)
!3543 = !DILocation(line: 791, column: 3, scope: !3504)
!3544 = !DILocation(line: 0, scope: !3513)
!3545 = !DILocation(line: 804, column: 37, scope: !3513)
!3546 = !DILocation(line: 805, column: 21, scope: !3513)
!3547 = !DILocation(line: 807, column: 18, scope: !3513)
!3548 = !DILocation(line: 807, column: 27, scope: !3513)
!3549 = !DILocation(line: 807, column: 24, scope: !3513)
!3550 = !DILocation(line: 808, column: 72, scope: !3513)
!3551 = !DILocation(line: 809, column: 56, scope: !3513)
!3552 = !DILocation(line: 810, column: 49, scope: !3513)
!3553 = !DILocation(line: 811, column: 49, scope: !3513)
!3554 = !DILocation(line: 808, column: 20, scope: !3513)
!3555 = !DILocation(line: 811, column: 62, scope: !3513)
!3556 = !DILocation(line: 812, column: 15, scope: !3513)
!3557 = !DILocation(line: 813, column: 60, scope: !3513)
!3558 = !DILocation(line: 815, column: 32, scope: !3513)
!3559 = !DILocation(line: 815, column: 47, scope: !3513)
!3560 = !DILocation(line: 813, column: 3, scope: !3513)
!3561 = !DILocation(line: 816, column: 9, scope: !3513)
!3562 = !DILocation(line: 817, column: 7, scope: !3513)
!3563 = !DILocation(line: 818, column: 11, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3513, file: !692, line: 817, column: 7)
!3565 = !{!1649, !1649, i64 0}
!3566 = !DILocation(line: 818, column: 5, scope: !3564)
!3567 = !DILocation(line: 819, column: 3, scope: !3513)
!3568 = distinct !DISubprogram(name: "quotearg_free", scope: !692, file: !692, line: 837, type: !647, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3569)
!3569 = !{!3570, !3571}
!3570 = !DILocalVariable(name: "sv", scope: !3568, file: !692, line: 839, type: !793)
!3571 = !DILocalVariable(name: "i", scope: !3572, file: !692, line: 840, type: !260)
!3572 = distinct !DILexicalBlock(scope: !3568, file: !692, line: 840, column: 3)
!3573 = !DILocation(line: 839, column: 24, scope: !3568)
!3574 = !DILocation(line: 0, scope: !3568)
!3575 = !DILocation(line: 0, scope: !3572)
!3576 = !DILocation(line: 840, column: 21, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3572, file: !692, line: 840, column: 3)
!3578 = !DILocation(line: 840, column: 3, scope: !3572)
!3579 = !DILocation(line: 842, column: 13, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3568, file: !692, line: 842, column: 7)
!3581 = !{!3582, !1001, i64 8}
!3582 = !{!"slotvec", !1649, i64 0, !1001, i64 8}
!3583 = !DILocation(line: 842, column: 17, scope: !3580)
!3584 = !DILocation(line: 842, column: 7, scope: !3568)
!3585 = !DILocation(line: 841, column: 17, scope: !3577)
!3586 = !DILocation(line: 841, column: 5, scope: !3577)
!3587 = !DILocation(line: 840, column: 32, scope: !3577)
!3588 = distinct !{!3588, !3578, !3589, !1147}
!3589 = !DILocation(line: 841, column: 20, scope: !3572)
!3590 = !DILocation(line: 844, column: 7, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3580, file: !692, line: 843, column: 5)
!3592 = !DILocation(line: 845, column: 21, scope: !3591)
!3593 = !{!3582, !1649, i64 0}
!3594 = !DILocation(line: 846, column: 20, scope: !3591)
!3595 = !DILocation(line: 847, column: 5, scope: !3591)
!3596 = !DILocation(line: 848, column: 10, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3568, file: !692, line: 848, column: 7)
!3598 = !DILocation(line: 848, column: 7, scope: !3568)
!3599 = !DILocation(line: 850, column: 7, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3597, file: !692, line: 849, column: 5)
!3601 = !DILocation(line: 851, column: 15, scope: !3600)
!3602 = !DILocation(line: 852, column: 5, scope: !3600)
!3603 = !DILocation(line: 853, column: 10, scope: !3568)
!3604 = !DILocation(line: 854, column: 1, scope: !3568)
!3605 = !DISubprogram(name: "free", scope: !2790, file: !2790, line: 786, type: !3606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{null, !259}
!3608 = distinct !DISubprogram(name: "quotearg_n", scope: !692, file: !692, line: 919, type: !1199, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3609)
!3609 = !{!3610, !3611}
!3610 = !DILocalVariable(name: "n", arg: 1, scope: !3608, file: !692, line: 919, type: !260)
!3611 = !DILocalVariable(name: "arg", arg: 2, scope: !3608, file: !692, line: 919, type: !265)
!3612 = !DILocation(line: 0, scope: !3608)
!3613 = !DILocation(line: 921, column: 10, scope: !3608)
!3614 = !DILocation(line: 921, column: 3, scope: !3608)
!3615 = distinct !DISubprogram(name: "quotearg_n_options", scope: !692, file: !692, line: 866, type: !3616, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3618)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!258, !260, !265, !262, !2836}
!3618 = !{!3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3629, !3630, !3632, !3633, !3634}
!3619 = !DILocalVariable(name: "n", arg: 1, scope: !3615, file: !692, line: 866, type: !260)
!3620 = !DILocalVariable(name: "arg", arg: 2, scope: !3615, file: !692, line: 866, type: !265)
!3621 = !DILocalVariable(name: "argsize", arg: 3, scope: !3615, file: !692, line: 866, type: !262)
!3622 = !DILocalVariable(name: "options", arg: 4, scope: !3615, file: !692, line: 867, type: !2836)
!3623 = !DILocalVariable(name: "saved_errno", scope: !3615, file: !692, line: 869, type: !260)
!3624 = !DILocalVariable(name: "sv", scope: !3615, file: !692, line: 871, type: !793)
!3625 = !DILocalVariable(name: "nslots_max", scope: !3615, file: !692, line: 873, type: !260)
!3626 = !DILocalVariable(name: "preallocated", scope: !3627, file: !692, line: 879, type: !319)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !692, line: 878, column: 5)
!3628 = distinct !DILexicalBlock(scope: !3615, file: !692, line: 877, column: 7)
!3629 = !DILocalVariable(name: "new_nslots", scope: !3627, file: !692, line: 880, type: !947)
!3630 = !DILocalVariable(name: "size", scope: !3631, file: !692, line: 891, type: !262)
!3631 = distinct !DILexicalBlock(scope: !3615, file: !692, line: 890, column: 3)
!3632 = !DILocalVariable(name: "val", scope: !3631, file: !692, line: 892, type: !258)
!3633 = !DILocalVariable(name: "flags", scope: !3631, file: !692, line: 894, type: !260)
!3634 = !DILocalVariable(name: "qsize", scope: !3631, file: !692, line: 895, type: !262)
!3635 = distinct !DIAssignID()
!3636 = !DILocation(line: 0, scope: !3627)
!3637 = !DILocation(line: 0, scope: !3615)
!3638 = !DILocation(line: 869, column: 21, scope: !3615)
!3639 = !DILocation(line: 871, column: 24, scope: !3615)
!3640 = !DILocation(line: 874, column: 17, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3615, file: !692, line: 874, column: 7)
!3642 = !DILocation(line: 875, column: 5, scope: !3641)
!3643 = !DILocation(line: 877, column: 7, scope: !3628)
!3644 = !DILocation(line: 877, column: 14, scope: !3628)
!3645 = !DILocation(line: 877, column: 7, scope: !3615)
!3646 = !DILocation(line: 879, column: 31, scope: !3627)
!3647 = !DILocation(line: 880, column: 7, scope: !3627)
!3648 = !DILocation(line: 880, column: 26, scope: !3627)
!3649 = !DILocation(line: 880, column: 13, scope: !3627)
!3650 = distinct !DIAssignID()
!3651 = !DILocation(line: 882, column: 31, scope: !3627)
!3652 = !DILocation(line: 883, column: 33, scope: !3627)
!3653 = !DILocation(line: 883, column: 42, scope: !3627)
!3654 = !DILocation(line: 883, column: 31, scope: !3627)
!3655 = !DILocation(line: 882, column: 22, scope: !3627)
!3656 = !DILocation(line: 882, column: 15, scope: !3627)
!3657 = !DILocation(line: 884, column: 11, scope: !3627)
!3658 = !DILocation(line: 885, column: 15, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3627, file: !692, line: 884, column: 11)
!3660 = !{i64 0, i64 8, !3565, i64 8, i64 8, !1000}
!3661 = !DILocation(line: 885, column: 9, scope: !3659)
!3662 = !DILocation(line: 886, column: 20, scope: !3627)
!3663 = !DILocation(line: 886, column: 18, scope: !3627)
!3664 = !DILocation(line: 886, column: 32, scope: !3627)
!3665 = !DILocation(line: 886, column: 43, scope: !3627)
!3666 = !DILocation(line: 886, column: 53, scope: !3627)
!3667 = !DILocation(line: 0, scope: !3053, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 886, column: 7, scope: !3627)
!3669 = !DILocation(line: 59, column: 10, scope: !3053, inlinedAt: !3668)
!3670 = !DILocation(line: 887, column: 16, scope: !3627)
!3671 = !DILocation(line: 887, column: 14, scope: !3627)
!3672 = !DILocation(line: 888, column: 5, scope: !3628)
!3673 = !DILocation(line: 888, column: 5, scope: !3627)
!3674 = !DILocation(line: 891, column: 19, scope: !3631)
!3675 = !DILocation(line: 891, column: 25, scope: !3631)
!3676 = !DILocation(line: 0, scope: !3631)
!3677 = !DILocation(line: 892, column: 23, scope: !3631)
!3678 = !DILocation(line: 894, column: 26, scope: !3631)
!3679 = !DILocation(line: 894, column: 32, scope: !3631)
!3680 = !DILocation(line: 896, column: 55, scope: !3631)
!3681 = !DILocation(line: 897, column: 55, scope: !3631)
!3682 = !DILocation(line: 898, column: 55, scope: !3631)
!3683 = !DILocation(line: 899, column: 55, scope: !3631)
!3684 = !DILocation(line: 895, column: 20, scope: !3631)
!3685 = !DILocation(line: 901, column: 14, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3631, file: !692, line: 901, column: 9)
!3687 = !DILocation(line: 901, column: 9, scope: !3631)
!3688 = !DILocation(line: 903, column: 35, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3686, file: !692, line: 902, column: 7)
!3690 = !DILocation(line: 903, column: 20, scope: !3689)
!3691 = !DILocation(line: 904, column: 17, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3689, file: !692, line: 904, column: 13)
!3693 = !DILocation(line: 904, column: 13, scope: !3689)
!3694 = !DILocation(line: 905, column: 11, scope: !3692)
!3695 = !DILocation(line: 906, column: 27, scope: !3689)
!3696 = !DILocation(line: 906, column: 19, scope: !3689)
!3697 = !DILocation(line: 907, column: 69, scope: !3689)
!3698 = !DILocation(line: 909, column: 44, scope: !3689)
!3699 = !DILocation(line: 910, column: 44, scope: !3689)
!3700 = !DILocation(line: 907, column: 9, scope: !3689)
!3701 = !DILocation(line: 911, column: 7, scope: !3689)
!3702 = !DILocation(line: 913, column: 11, scope: !3631)
!3703 = !DILocation(line: 914, column: 5, scope: !3631)
!3704 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !692, file: !692, line: 925, type: !3705, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3707)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!258, !260, !265, !262}
!3707 = !{!3708, !3709, !3710}
!3708 = !DILocalVariable(name: "n", arg: 1, scope: !3704, file: !692, line: 925, type: !260)
!3709 = !DILocalVariable(name: "arg", arg: 2, scope: !3704, file: !692, line: 925, type: !265)
!3710 = !DILocalVariable(name: "argsize", arg: 3, scope: !3704, file: !692, line: 925, type: !262)
!3711 = !DILocation(line: 0, scope: !3704)
!3712 = !DILocation(line: 927, column: 10, scope: !3704)
!3713 = !DILocation(line: 927, column: 3, scope: !3704)
!3714 = distinct !DISubprogram(name: "quotearg", scope: !692, file: !692, line: 931, type: !1208, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3715)
!3715 = !{!3716}
!3716 = !DILocalVariable(name: "arg", arg: 1, scope: !3714, file: !692, line: 931, type: !265)
!3717 = !DILocation(line: 0, scope: !3714)
!3718 = !DILocation(line: 0, scope: !3608, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 933, column: 10, scope: !3714)
!3720 = !DILocation(line: 921, column: 10, scope: !3608, inlinedAt: !3719)
!3721 = !DILocation(line: 933, column: 3, scope: !3714)
!3722 = distinct !DISubprogram(name: "quotearg_mem", scope: !692, file: !692, line: 937, type: !3723, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3725)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!258, !265, !262}
!3725 = !{!3726, !3727}
!3726 = !DILocalVariable(name: "arg", arg: 1, scope: !3722, file: !692, line: 937, type: !265)
!3727 = !DILocalVariable(name: "argsize", arg: 2, scope: !3722, file: !692, line: 937, type: !262)
!3728 = !DILocation(line: 0, scope: !3722)
!3729 = !DILocation(line: 0, scope: !3704, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 939, column: 10, scope: !3722)
!3731 = !DILocation(line: 927, column: 10, scope: !3704, inlinedAt: !3730)
!3732 = !DILocation(line: 939, column: 3, scope: !3722)
!3733 = distinct !DISubprogram(name: "quotearg_n_style", scope: !692, file: !692, line: 943, type: !3734, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3736)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!258, !260, !718, !265}
!3736 = !{!3737, !3738, !3739, !3740}
!3737 = !DILocalVariable(name: "n", arg: 1, scope: !3733, file: !692, line: 943, type: !260)
!3738 = !DILocalVariable(name: "s", arg: 2, scope: !3733, file: !692, line: 943, type: !718)
!3739 = !DILocalVariable(name: "arg", arg: 3, scope: !3733, file: !692, line: 943, type: !265)
!3740 = !DILocalVariable(name: "o", scope: !3733, file: !692, line: 945, type: !2837)
!3741 = distinct !DIAssignID()
!3742 = !DILocation(line: 0, scope: !3733)
!3743 = !DILocation(line: 945, column: 3, scope: !3733)
!3744 = !{!3745}
!3745 = distinct !{!3745, !3746, !"quoting_options_from_style: argument 0"}
!3746 = distinct !{!3746, !"quoting_options_from_style"}
!3747 = !DILocation(line: 945, column: 36, scope: !3733)
!3748 = !DILocalVariable(name: "style", arg: 1, scope: !3749, file: !692, line: 183, type: !718)
!3749 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !692, file: !692, line: 183, type: !3750, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3752)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!745, !718}
!3752 = !{!3748, !3753}
!3753 = !DILocalVariable(name: "o", scope: !3749, file: !692, line: 185, type: !745)
!3754 = !DILocation(line: 0, scope: !3749, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 945, column: 36, scope: !3733)
!3756 = !DILocation(line: 185, column: 26, scope: !3749, inlinedAt: !3755)
!3757 = distinct !DIAssignID()
!3758 = !DILocation(line: 186, column: 13, scope: !3759, inlinedAt: !3755)
!3759 = distinct !DILexicalBlock(scope: !3749, file: !692, line: 186, column: 7)
!3760 = !DILocation(line: 186, column: 7, scope: !3749, inlinedAt: !3755)
!3761 = !DILocation(line: 187, column: 5, scope: !3759, inlinedAt: !3755)
!3762 = !DILocation(line: 188, column: 11, scope: !3749, inlinedAt: !3755)
!3763 = distinct !DIAssignID()
!3764 = !DILocation(line: 946, column: 10, scope: !3733)
!3765 = !DILocation(line: 947, column: 1, scope: !3733)
!3766 = !DILocation(line: 946, column: 3, scope: !3733)
!3767 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !692, file: !692, line: 950, type: !3768, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3770)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!258, !260, !718, !265, !262}
!3770 = !{!3771, !3772, !3773, !3774, !3775}
!3771 = !DILocalVariable(name: "n", arg: 1, scope: !3767, file: !692, line: 950, type: !260)
!3772 = !DILocalVariable(name: "s", arg: 2, scope: !3767, file: !692, line: 950, type: !718)
!3773 = !DILocalVariable(name: "arg", arg: 3, scope: !3767, file: !692, line: 951, type: !265)
!3774 = !DILocalVariable(name: "argsize", arg: 4, scope: !3767, file: !692, line: 951, type: !262)
!3775 = !DILocalVariable(name: "o", scope: !3767, file: !692, line: 953, type: !2837)
!3776 = distinct !DIAssignID()
!3777 = !DILocation(line: 0, scope: !3767)
!3778 = !DILocation(line: 953, column: 3, scope: !3767)
!3779 = !{!3780}
!3780 = distinct !{!3780, !3781, !"quoting_options_from_style: argument 0"}
!3781 = distinct !{!3781, !"quoting_options_from_style"}
!3782 = !DILocation(line: 953, column: 36, scope: !3767)
!3783 = !DILocation(line: 0, scope: !3749, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 953, column: 36, scope: !3767)
!3785 = !DILocation(line: 185, column: 26, scope: !3749, inlinedAt: !3784)
!3786 = distinct !DIAssignID()
!3787 = !DILocation(line: 186, column: 13, scope: !3759, inlinedAt: !3784)
!3788 = !DILocation(line: 186, column: 7, scope: !3749, inlinedAt: !3784)
!3789 = !DILocation(line: 187, column: 5, scope: !3759, inlinedAt: !3784)
!3790 = !DILocation(line: 188, column: 11, scope: !3749, inlinedAt: !3784)
!3791 = distinct !DIAssignID()
!3792 = !DILocation(line: 954, column: 10, scope: !3767)
!3793 = !DILocation(line: 955, column: 1, scope: !3767)
!3794 = !DILocation(line: 954, column: 3, scope: !3767)
!3795 = distinct !DISubprogram(name: "quotearg_style", scope: !692, file: !692, line: 958, type: !3796, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3798)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!258, !718, !265}
!3798 = !{!3799, !3800}
!3799 = !DILocalVariable(name: "s", arg: 1, scope: !3795, file: !692, line: 958, type: !718)
!3800 = !DILocalVariable(name: "arg", arg: 2, scope: !3795, file: !692, line: 958, type: !265)
!3801 = distinct !DIAssignID()
!3802 = !DILocation(line: 0, scope: !3795)
!3803 = !DILocation(line: 0, scope: !3733, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 960, column: 10, scope: !3795)
!3805 = !DILocation(line: 945, column: 3, scope: !3733, inlinedAt: !3804)
!3806 = !{!3807}
!3807 = distinct !{!3807, !3808, !"quoting_options_from_style: argument 0"}
!3808 = distinct !{!3808, !"quoting_options_from_style"}
!3809 = !DILocation(line: 945, column: 36, scope: !3733, inlinedAt: !3804)
!3810 = !DILocation(line: 0, scope: !3749, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 945, column: 36, scope: !3733, inlinedAt: !3804)
!3812 = !DILocation(line: 185, column: 26, scope: !3749, inlinedAt: !3811)
!3813 = distinct !DIAssignID()
!3814 = !DILocation(line: 186, column: 13, scope: !3759, inlinedAt: !3811)
!3815 = !DILocation(line: 186, column: 7, scope: !3749, inlinedAt: !3811)
!3816 = !DILocation(line: 187, column: 5, scope: !3759, inlinedAt: !3811)
!3817 = !DILocation(line: 188, column: 11, scope: !3749, inlinedAt: !3811)
!3818 = distinct !DIAssignID()
!3819 = !DILocation(line: 946, column: 10, scope: !3733, inlinedAt: !3804)
!3820 = !DILocation(line: 947, column: 1, scope: !3733, inlinedAt: !3804)
!3821 = !DILocation(line: 960, column: 3, scope: !3795)
!3822 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !692, file: !692, line: 964, type: !3823, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3825)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!258, !718, !265, !262}
!3825 = !{!3826, !3827, !3828}
!3826 = !DILocalVariable(name: "s", arg: 1, scope: !3822, file: !692, line: 964, type: !718)
!3827 = !DILocalVariable(name: "arg", arg: 2, scope: !3822, file: !692, line: 964, type: !265)
!3828 = !DILocalVariable(name: "argsize", arg: 3, scope: !3822, file: !692, line: 964, type: !262)
!3829 = distinct !DIAssignID()
!3830 = !DILocation(line: 0, scope: !3822)
!3831 = !DILocation(line: 0, scope: !3767, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 966, column: 10, scope: !3822)
!3833 = !DILocation(line: 953, column: 3, scope: !3767, inlinedAt: !3832)
!3834 = !{!3835}
!3835 = distinct !{!3835, !3836, !"quoting_options_from_style: argument 0"}
!3836 = distinct !{!3836, !"quoting_options_from_style"}
!3837 = !DILocation(line: 953, column: 36, scope: !3767, inlinedAt: !3832)
!3838 = !DILocation(line: 0, scope: !3749, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 953, column: 36, scope: !3767, inlinedAt: !3832)
!3840 = !DILocation(line: 185, column: 26, scope: !3749, inlinedAt: !3839)
!3841 = distinct !DIAssignID()
!3842 = !DILocation(line: 186, column: 13, scope: !3759, inlinedAt: !3839)
!3843 = !DILocation(line: 186, column: 7, scope: !3749, inlinedAt: !3839)
!3844 = !DILocation(line: 187, column: 5, scope: !3759, inlinedAt: !3839)
!3845 = !DILocation(line: 188, column: 11, scope: !3749, inlinedAt: !3839)
!3846 = distinct !DIAssignID()
!3847 = !DILocation(line: 954, column: 10, scope: !3767, inlinedAt: !3832)
!3848 = !DILocation(line: 955, column: 1, scope: !3767, inlinedAt: !3832)
!3849 = !DILocation(line: 966, column: 3, scope: !3822)
!3850 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !692, file: !692, line: 970, type: !3851, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3853)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!258, !265, !262, !4}
!3853 = !{!3854, !3855, !3856, !3857}
!3854 = !DILocalVariable(name: "arg", arg: 1, scope: !3850, file: !692, line: 970, type: !265)
!3855 = !DILocalVariable(name: "argsize", arg: 2, scope: !3850, file: !692, line: 970, type: !262)
!3856 = !DILocalVariable(name: "ch", arg: 3, scope: !3850, file: !692, line: 970, type: !4)
!3857 = !DILocalVariable(name: "options", scope: !3850, file: !692, line: 972, type: !745)
!3858 = distinct !DIAssignID()
!3859 = !DILocation(line: 0, scope: !3850)
!3860 = !DILocation(line: 972, column: 3, scope: !3850)
!3861 = !DILocation(line: 973, column: 13, scope: !3850)
!3862 = !{i64 0, i64 4, !1100, i64 4, i64 4, !1100, i64 8, i64 32, !1109, i64 40, i64 8, !1000, i64 48, i64 8, !1000}
!3863 = distinct !DIAssignID()
!3864 = !DILocation(line: 0, scope: !2856, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 974, column: 3, scope: !3850)
!3866 = !DILocation(line: 147, column: 41, scope: !2856, inlinedAt: !3865)
!3867 = !DILocation(line: 147, column: 62, scope: !2856, inlinedAt: !3865)
!3868 = !DILocation(line: 147, column: 57, scope: !2856, inlinedAt: !3865)
!3869 = !DILocation(line: 148, column: 15, scope: !2856, inlinedAt: !3865)
!3870 = !DILocation(line: 149, column: 21, scope: !2856, inlinedAt: !3865)
!3871 = !DILocation(line: 149, column: 24, scope: !2856, inlinedAt: !3865)
!3872 = !DILocation(line: 150, column: 19, scope: !2856, inlinedAt: !3865)
!3873 = !DILocation(line: 150, column: 24, scope: !2856, inlinedAt: !3865)
!3874 = !DILocation(line: 150, column: 6, scope: !2856, inlinedAt: !3865)
!3875 = !DILocation(line: 975, column: 10, scope: !3850)
!3876 = !DILocation(line: 976, column: 1, scope: !3850)
!3877 = !DILocation(line: 975, column: 3, scope: !3850)
!3878 = distinct !DISubprogram(name: "quotearg_char", scope: !692, file: !692, line: 979, type: !3879, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3881)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!258, !265, !4}
!3881 = !{!3882, !3883}
!3882 = !DILocalVariable(name: "arg", arg: 1, scope: !3878, file: !692, line: 979, type: !265)
!3883 = !DILocalVariable(name: "ch", arg: 2, scope: !3878, file: !692, line: 979, type: !4)
!3884 = distinct !DIAssignID()
!3885 = !DILocation(line: 0, scope: !3878)
!3886 = !DILocation(line: 0, scope: !3850, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 981, column: 10, scope: !3878)
!3888 = !DILocation(line: 972, column: 3, scope: !3850, inlinedAt: !3887)
!3889 = !DILocation(line: 973, column: 13, scope: !3850, inlinedAt: !3887)
!3890 = distinct !DIAssignID()
!3891 = !DILocation(line: 0, scope: !2856, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 974, column: 3, scope: !3850, inlinedAt: !3887)
!3893 = !DILocation(line: 147, column: 41, scope: !2856, inlinedAt: !3892)
!3894 = !DILocation(line: 147, column: 62, scope: !2856, inlinedAt: !3892)
!3895 = !DILocation(line: 147, column: 57, scope: !2856, inlinedAt: !3892)
!3896 = !DILocation(line: 148, column: 15, scope: !2856, inlinedAt: !3892)
!3897 = !DILocation(line: 149, column: 21, scope: !2856, inlinedAt: !3892)
!3898 = !DILocation(line: 149, column: 24, scope: !2856, inlinedAt: !3892)
!3899 = !DILocation(line: 150, column: 19, scope: !2856, inlinedAt: !3892)
!3900 = !DILocation(line: 150, column: 24, scope: !2856, inlinedAt: !3892)
!3901 = !DILocation(line: 150, column: 6, scope: !2856, inlinedAt: !3892)
!3902 = !DILocation(line: 975, column: 10, scope: !3850, inlinedAt: !3887)
!3903 = !DILocation(line: 976, column: 1, scope: !3850, inlinedAt: !3887)
!3904 = !DILocation(line: 981, column: 3, scope: !3878)
!3905 = distinct !DISubprogram(name: "quotearg_colon", scope: !692, file: !692, line: 985, type: !1208, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3906)
!3906 = !{!3907}
!3907 = !DILocalVariable(name: "arg", arg: 1, scope: !3905, file: !692, line: 985, type: !265)
!3908 = distinct !DIAssignID()
!3909 = !DILocation(line: 0, scope: !3905)
!3910 = !DILocation(line: 0, scope: !3878, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 987, column: 10, scope: !3905)
!3912 = !DILocation(line: 0, scope: !3850, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 981, column: 10, scope: !3878, inlinedAt: !3911)
!3914 = !DILocation(line: 972, column: 3, scope: !3850, inlinedAt: !3913)
!3915 = !DILocation(line: 973, column: 13, scope: !3850, inlinedAt: !3913)
!3916 = distinct !DIAssignID()
!3917 = !DILocation(line: 0, scope: !2856, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 974, column: 3, scope: !3850, inlinedAt: !3913)
!3919 = !DILocation(line: 147, column: 57, scope: !2856, inlinedAt: !3918)
!3920 = !DILocation(line: 149, column: 21, scope: !2856, inlinedAt: !3918)
!3921 = !DILocation(line: 150, column: 6, scope: !2856, inlinedAt: !3918)
!3922 = !DILocation(line: 975, column: 10, scope: !3850, inlinedAt: !3913)
!3923 = !DILocation(line: 976, column: 1, scope: !3850, inlinedAt: !3913)
!3924 = !DILocation(line: 987, column: 3, scope: !3905)
!3925 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !692, file: !692, line: 991, type: !3723, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3926)
!3926 = !{!3927, !3928}
!3927 = !DILocalVariable(name: "arg", arg: 1, scope: !3925, file: !692, line: 991, type: !265)
!3928 = !DILocalVariable(name: "argsize", arg: 2, scope: !3925, file: !692, line: 991, type: !262)
!3929 = distinct !DIAssignID()
!3930 = !DILocation(line: 0, scope: !3925)
!3931 = !DILocation(line: 0, scope: !3850, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 993, column: 10, scope: !3925)
!3933 = !DILocation(line: 972, column: 3, scope: !3850, inlinedAt: !3932)
!3934 = !DILocation(line: 973, column: 13, scope: !3850, inlinedAt: !3932)
!3935 = distinct !DIAssignID()
!3936 = !DILocation(line: 0, scope: !2856, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 974, column: 3, scope: !3850, inlinedAt: !3932)
!3938 = !DILocation(line: 147, column: 57, scope: !2856, inlinedAt: !3937)
!3939 = !DILocation(line: 149, column: 21, scope: !2856, inlinedAt: !3937)
!3940 = !DILocation(line: 150, column: 6, scope: !2856, inlinedAt: !3937)
!3941 = !DILocation(line: 975, column: 10, scope: !3850, inlinedAt: !3932)
!3942 = !DILocation(line: 976, column: 1, scope: !3850, inlinedAt: !3932)
!3943 = !DILocation(line: 993, column: 3, scope: !3925)
!3944 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !692, file: !692, line: 997, type: !3734, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3945)
!3945 = !{!3946, !3947, !3948, !3949}
!3946 = !DILocalVariable(name: "n", arg: 1, scope: !3944, file: !692, line: 997, type: !260)
!3947 = !DILocalVariable(name: "s", arg: 2, scope: !3944, file: !692, line: 997, type: !718)
!3948 = !DILocalVariable(name: "arg", arg: 3, scope: !3944, file: !692, line: 997, type: !265)
!3949 = !DILocalVariable(name: "options", scope: !3944, file: !692, line: 999, type: !745)
!3950 = distinct !DIAssignID()
!3951 = !DILocation(line: 0, scope: !3944)
!3952 = !DILocation(line: 185, column: 26, scope: !3749, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 1000, column: 13, scope: !3944)
!3954 = !DILocation(line: 999, column: 3, scope: !3944)
!3955 = !DILocation(line: 0, scope: !3749, inlinedAt: !3953)
!3956 = !DILocation(line: 186, column: 13, scope: !3759, inlinedAt: !3953)
!3957 = !DILocation(line: 186, column: 7, scope: !3749, inlinedAt: !3953)
!3958 = !DILocation(line: 187, column: 5, scope: !3759, inlinedAt: !3953)
!3959 = !{!3960}
!3960 = distinct !{!3960, !3961, !"quoting_options_from_style: argument 0"}
!3961 = distinct !{!3961, !"quoting_options_from_style"}
!3962 = !DILocation(line: 1000, column: 13, scope: !3944)
!3963 = distinct !DIAssignID()
!3964 = distinct !DIAssignID()
!3965 = !DILocation(line: 0, scope: !2856, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 1001, column: 3, scope: !3944)
!3967 = !DILocation(line: 147, column: 57, scope: !2856, inlinedAt: !3966)
!3968 = !DILocation(line: 149, column: 21, scope: !2856, inlinedAt: !3966)
!3969 = !DILocation(line: 150, column: 6, scope: !2856, inlinedAt: !3966)
!3970 = distinct !DIAssignID()
!3971 = !DILocation(line: 1002, column: 10, scope: !3944)
!3972 = !DILocation(line: 1003, column: 1, scope: !3944)
!3973 = !DILocation(line: 1002, column: 3, scope: !3944)
!3974 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !692, file: !692, line: 1006, type: !3975, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3977)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!258, !260, !265, !265, !265}
!3977 = !{!3978, !3979, !3980, !3981}
!3978 = !DILocalVariable(name: "n", arg: 1, scope: !3974, file: !692, line: 1006, type: !260)
!3979 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3974, file: !692, line: 1006, type: !265)
!3980 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3974, file: !692, line: 1007, type: !265)
!3981 = !DILocalVariable(name: "arg", arg: 4, scope: !3974, file: !692, line: 1007, type: !265)
!3982 = distinct !DIAssignID()
!3983 = !DILocation(line: 0, scope: !3974)
!3984 = !DILocalVariable(name: "o", scope: !3985, file: !692, line: 1018, type: !745)
!3985 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !692, file: !692, line: 1014, type: !3986, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3988)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!258, !260, !265, !265, !265, !262}
!3988 = !{!3989, !3990, !3991, !3992, !3993, !3984}
!3989 = !DILocalVariable(name: "n", arg: 1, scope: !3985, file: !692, line: 1014, type: !260)
!3990 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3985, file: !692, line: 1014, type: !265)
!3991 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3985, file: !692, line: 1015, type: !265)
!3992 = !DILocalVariable(name: "arg", arg: 4, scope: !3985, file: !692, line: 1016, type: !265)
!3993 = !DILocalVariable(name: "argsize", arg: 5, scope: !3985, file: !692, line: 1016, type: !262)
!3994 = !DILocation(line: 0, scope: !3985, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 1009, column: 10, scope: !3974)
!3996 = !DILocation(line: 1018, column: 3, scope: !3985, inlinedAt: !3995)
!3997 = !DILocation(line: 1018, column: 30, scope: !3985, inlinedAt: !3995)
!3998 = distinct !DIAssignID()
!3999 = distinct !DIAssignID()
!4000 = !DILocation(line: 0, scope: !2896, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 1019, column: 3, scope: !3985, inlinedAt: !3995)
!4002 = !DILocation(line: 174, column: 12, scope: !2896, inlinedAt: !4001)
!4003 = distinct !DIAssignID()
!4004 = !DILocation(line: 175, column: 8, scope: !2909, inlinedAt: !4001)
!4005 = !DILocation(line: 175, column: 19, scope: !2909, inlinedAt: !4001)
!4006 = !DILocation(line: 176, column: 5, scope: !2909, inlinedAt: !4001)
!4007 = !DILocation(line: 177, column: 6, scope: !2896, inlinedAt: !4001)
!4008 = !DILocation(line: 177, column: 17, scope: !2896, inlinedAt: !4001)
!4009 = distinct !DIAssignID()
!4010 = !DILocation(line: 178, column: 6, scope: !2896, inlinedAt: !4001)
!4011 = !DILocation(line: 178, column: 18, scope: !2896, inlinedAt: !4001)
!4012 = distinct !DIAssignID()
!4013 = !DILocation(line: 1020, column: 10, scope: !3985, inlinedAt: !3995)
!4014 = !DILocation(line: 1021, column: 1, scope: !3985, inlinedAt: !3995)
!4015 = !DILocation(line: 1009, column: 3, scope: !3974)
!4016 = distinct !DIAssignID()
!4017 = !DILocation(line: 0, scope: !3985)
!4018 = !DILocation(line: 1018, column: 3, scope: !3985)
!4019 = !DILocation(line: 1018, column: 30, scope: !3985)
!4020 = distinct !DIAssignID()
!4021 = distinct !DIAssignID()
!4022 = !DILocation(line: 0, scope: !2896, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 1019, column: 3, scope: !3985)
!4024 = !DILocation(line: 174, column: 12, scope: !2896, inlinedAt: !4023)
!4025 = distinct !DIAssignID()
!4026 = !DILocation(line: 175, column: 8, scope: !2909, inlinedAt: !4023)
!4027 = !DILocation(line: 175, column: 19, scope: !2909, inlinedAt: !4023)
!4028 = !DILocation(line: 176, column: 5, scope: !2909, inlinedAt: !4023)
!4029 = !DILocation(line: 177, column: 6, scope: !2896, inlinedAt: !4023)
!4030 = !DILocation(line: 177, column: 17, scope: !2896, inlinedAt: !4023)
!4031 = distinct !DIAssignID()
!4032 = !DILocation(line: 178, column: 6, scope: !2896, inlinedAt: !4023)
!4033 = !DILocation(line: 178, column: 18, scope: !2896, inlinedAt: !4023)
!4034 = distinct !DIAssignID()
!4035 = !DILocation(line: 1020, column: 10, scope: !3985)
!4036 = !DILocation(line: 1021, column: 1, scope: !3985)
!4037 = !DILocation(line: 1020, column: 3, scope: !3985)
!4038 = distinct !DISubprogram(name: "quotearg_custom", scope: !692, file: !692, line: 1024, type: !4039, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !4041)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!258, !265, !265, !265}
!4041 = !{!4042, !4043, !4044}
!4042 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4038, file: !692, line: 1024, type: !265)
!4043 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4038, file: !692, line: 1024, type: !265)
!4044 = !DILocalVariable(name: "arg", arg: 3, scope: !4038, file: !692, line: 1025, type: !265)
!4045 = distinct !DIAssignID()
!4046 = !DILocation(line: 0, scope: !4038)
!4047 = !DILocation(line: 0, scope: !3974, inlinedAt: !4048)
!4048 = distinct !DILocation(line: 1027, column: 10, scope: !4038)
!4049 = !DILocation(line: 0, scope: !3985, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 1009, column: 10, scope: !3974, inlinedAt: !4048)
!4051 = !DILocation(line: 1018, column: 3, scope: !3985, inlinedAt: !4050)
!4052 = !DILocation(line: 1018, column: 30, scope: !3985, inlinedAt: !4050)
!4053 = distinct !DIAssignID()
!4054 = distinct !DIAssignID()
!4055 = !DILocation(line: 0, scope: !2896, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 1019, column: 3, scope: !3985, inlinedAt: !4050)
!4057 = !DILocation(line: 174, column: 12, scope: !2896, inlinedAt: !4056)
!4058 = distinct !DIAssignID()
!4059 = !DILocation(line: 175, column: 8, scope: !2909, inlinedAt: !4056)
!4060 = !DILocation(line: 175, column: 19, scope: !2909, inlinedAt: !4056)
!4061 = !DILocation(line: 176, column: 5, scope: !2909, inlinedAt: !4056)
!4062 = !DILocation(line: 177, column: 6, scope: !2896, inlinedAt: !4056)
!4063 = !DILocation(line: 177, column: 17, scope: !2896, inlinedAt: !4056)
!4064 = distinct !DIAssignID()
!4065 = !DILocation(line: 178, column: 6, scope: !2896, inlinedAt: !4056)
!4066 = !DILocation(line: 178, column: 18, scope: !2896, inlinedAt: !4056)
!4067 = distinct !DIAssignID()
!4068 = !DILocation(line: 1020, column: 10, scope: !3985, inlinedAt: !4050)
!4069 = !DILocation(line: 1021, column: 1, scope: !3985, inlinedAt: !4050)
!4070 = !DILocation(line: 1027, column: 3, scope: !4038)
!4071 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !692, file: !692, line: 1031, type: !4072, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !4074)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!258, !265, !265, !265, !262}
!4074 = !{!4075, !4076, !4077, !4078}
!4075 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4071, file: !692, line: 1031, type: !265)
!4076 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4071, file: !692, line: 1031, type: !265)
!4077 = !DILocalVariable(name: "arg", arg: 3, scope: !4071, file: !692, line: 1032, type: !265)
!4078 = !DILocalVariable(name: "argsize", arg: 4, scope: !4071, file: !692, line: 1032, type: !262)
!4079 = distinct !DIAssignID()
!4080 = !DILocation(line: 0, scope: !4071)
!4081 = !DILocation(line: 0, scope: !3985, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 1034, column: 10, scope: !4071)
!4083 = !DILocation(line: 1018, column: 3, scope: !3985, inlinedAt: !4082)
!4084 = !DILocation(line: 1018, column: 30, scope: !3985, inlinedAt: !4082)
!4085 = distinct !DIAssignID()
!4086 = distinct !DIAssignID()
!4087 = !DILocation(line: 0, scope: !2896, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 1019, column: 3, scope: !3985, inlinedAt: !4082)
!4089 = !DILocation(line: 174, column: 12, scope: !2896, inlinedAt: !4088)
!4090 = distinct !DIAssignID()
!4091 = !DILocation(line: 175, column: 8, scope: !2909, inlinedAt: !4088)
!4092 = !DILocation(line: 175, column: 19, scope: !2909, inlinedAt: !4088)
!4093 = !DILocation(line: 176, column: 5, scope: !2909, inlinedAt: !4088)
!4094 = !DILocation(line: 177, column: 6, scope: !2896, inlinedAt: !4088)
!4095 = !DILocation(line: 177, column: 17, scope: !2896, inlinedAt: !4088)
!4096 = distinct !DIAssignID()
!4097 = !DILocation(line: 178, column: 6, scope: !2896, inlinedAt: !4088)
!4098 = !DILocation(line: 178, column: 18, scope: !2896, inlinedAt: !4088)
!4099 = distinct !DIAssignID()
!4100 = !DILocation(line: 1020, column: 10, scope: !3985, inlinedAt: !4082)
!4101 = !DILocation(line: 1021, column: 1, scope: !3985, inlinedAt: !4082)
!4102 = !DILocation(line: 1034, column: 3, scope: !4071)
!4103 = distinct !DISubprogram(name: "quote_n_mem", scope: !692, file: !692, line: 1049, type: !4104, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !4106)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!265, !260, !265, !262}
!4106 = !{!4107, !4108, !4109}
!4107 = !DILocalVariable(name: "n", arg: 1, scope: !4103, file: !692, line: 1049, type: !260)
!4108 = !DILocalVariable(name: "arg", arg: 2, scope: !4103, file: !692, line: 1049, type: !265)
!4109 = !DILocalVariable(name: "argsize", arg: 3, scope: !4103, file: !692, line: 1049, type: !262)
!4110 = !DILocation(line: 0, scope: !4103)
!4111 = !DILocation(line: 1051, column: 10, scope: !4103)
!4112 = !DILocation(line: 1051, column: 3, scope: !4103)
!4113 = distinct !DISubprogram(name: "quote_mem", scope: !692, file: !692, line: 1055, type: !4114, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !4116)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!265, !265, !262}
!4116 = !{!4117, !4118}
!4117 = !DILocalVariable(name: "arg", arg: 1, scope: !4113, file: !692, line: 1055, type: !265)
!4118 = !DILocalVariable(name: "argsize", arg: 2, scope: !4113, file: !692, line: 1055, type: !262)
!4119 = !DILocation(line: 0, scope: !4113)
!4120 = !DILocation(line: 0, scope: !4103, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 1057, column: 10, scope: !4113)
!4122 = !DILocation(line: 1051, column: 10, scope: !4103, inlinedAt: !4121)
!4123 = !DILocation(line: 1057, column: 3, scope: !4113)
!4124 = distinct !DISubprogram(name: "quote_n", scope: !692, file: !692, line: 1061, type: !4125, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !4127)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!265, !260, !265}
!4127 = !{!4128, !4129}
!4128 = !DILocalVariable(name: "n", arg: 1, scope: !4124, file: !692, line: 1061, type: !260)
!4129 = !DILocalVariable(name: "arg", arg: 2, scope: !4124, file: !692, line: 1061, type: !265)
!4130 = !DILocation(line: 0, scope: !4124)
!4131 = !DILocation(line: 0, scope: !4103, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 1063, column: 10, scope: !4124)
!4133 = !DILocation(line: 1051, column: 10, scope: !4103, inlinedAt: !4132)
!4134 = !DILocation(line: 1063, column: 3, scope: !4124)
!4135 = distinct !DISubprogram(name: "quote", scope: !692, file: !692, line: 1067, type: !2375, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !4136)
!4136 = !{!4137}
!4137 = !DILocalVariable(name: "arg", arg: 1, scope: !4135, file: !692, line: 1067, type: !265)
!4138 = !DILocation(line: 0, scope: !4135)
!4139 = !DILocation(line: 0, scope: !4124, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 1069, column: 10, scope: !4135)
!4141 = !DILocation(line: 0, scope: !4103, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 1063, column: 10, scope: !4124, inlinedAt: !4140)
!4143 = !DILocation(line: 1051, column: 10, scope: !4103, inlinedAt: !4142)
!4144 = !DILocation(line: 1069, column: 3, scope: !4135)
!4145 = distinct !DISubprogram(name: "strintcmp", scope: !919, file: !919, line: 31, type: !1211, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !4146)
!4146 = !{!4147, !4148}
!4147 = !DILocalVariable(name: "a", arg: 1, scope: !4145, file: !919, line: 31, type: !265)
!4148 = !DILocalVariable(name: "b", arg: 2, scope: !4145, file: !919, line: 31, type: !265)
!4149 = !DILocation(line: 0, scope: !4145)
!4150 = !DILocalVariable(name: "a", arg: 1, scope: !4151, file: !4152, line: 105, type: !265)
!4151 = distinct !DISubprogram(name: "numcompare", scope: !4152, file: !4152, line: 105, type: !4153, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !4155)
!4152 = !DIFile(filename: "lib/strnumcmp-in.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f69f23aa922f1f0bf768a1237830bd5f")
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!260, !265, !265, !260, !260}
!4155 = !{!4150, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163}
!4156 = !DILocalVariable(name: "b", arg: 2, scope: !4151, file: !4152, line: 105, type: !265)
!4157 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !4151, file: !4152, line: 106, type: !260)
!4158 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !4151, file: !4152, line: 106, type: !260)
!4159 = !DILocalVariable(name: "tmpa", scope: !4151, file: !4152, line: 108, type: !4)
!4160 = !DILocalVariable(name: "tmpb", scope: !4151, file: !4152, line: 109, type: !4)
!4161 = !DILocalVariable(name: "tmp", scope: !4151, file: !4152, line: 110, type: !260)
!4162 = !DILocalVariable(name: "log_a", scope: !4151, file: !4152, line: 111, type: !262)
!4163 = !DILocalVariable(name: "log_b", scope: !4151, file: !4152, line: 112, type: !262)
!4164 = !DILocation(line: 0, scope: !4151, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 33, column: 10, scope: !4145)
!4166 = !DILocation(line: 108, column: 15, scope: !4151, inlinedAt: !4165)
!4167 = !DILocation(line: 109, column: 15, scope: !4151, inlinedAt: !4165)
!4168 = !DILocation(line: 114, column: 12, scope: !4169, inlinedAt: !4165)
!4169 = distinct !DILexicalBlock(scope: !4151, file: !4152, line: 114, column: 7)
!4170 = !DILocation(line: 114, column: 7, scope: !4151, inlinedAt: !4165)
!4171 = !DILocation(line: 116, column: 7, scope: !4172, inlinedAt: !4165)
!4172 = distinct !DILexicalBlock(scope: !4169, file: !4152, line: 115, column: 5)
!4173 = !DILocation(line: 117, column: 17, scope: !4172, inlinedAt: !4165)
!4174 = !DILocation(line: 117, column: 16, scope: !4172, inlinedAt: !4165)
!4175 = !DILocation(line: 118, column: 19, scope: !4172, inlinedAt: !4165)
!4176 = !DILocation(line: 117, column: 9, scope: !4172, inlinedAt: !4165)
!4177 = distinct !{!4177, !4171, !4178, !1147}
!4178 = !DILocation(line: 118, column: 59, scope: !4172, inlinedAt: !4165)
!4179 = !DILocation(line: 119, column: 16, scope: !4180, inlinedAt: !4165)
!4180 = distinct !DILexicalBlock(scope: !4172, file: !4152, line: 119, column: 11)
!4181 = !DILocation(line: 119, column: 11, scope: !4172, inlinedAt: !4165)
!4182 = !DILocation(line: 135, column: 7, scope: !4172, inlinedAt: !4165)
!4183 = !DILocation(line: 125, column: 26, scope: !4184, inlinedAt: !4165)
!4184 = distinct !DILexicalBlock(scope: !4185, file: !4152, line: 125, column: 15)
!4185 = distinct !DILexicalBlock(scope: !4180, file: !4152, line: 120, column: 9)
!4186 = !DILocalVariable(name: "c", arg: 1, scope: !4187, file: !4188, line: 233, type: !260)
!4187 = distinct !DISubprogram(name: "c_isdigit", scope: !4188, file: !4188, line: 233, type: !1341, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !4189)
!4188 = !DIFile(filename: "lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!4189 = !{!4186}
!4190 = !DILocation(line: 0, scope: !4187, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 125, column: 15, scope: !4184, inlinedAt: !4165)
!4192 = !DILocation(line: 235, column: 3, scope: !4187, inlinedAt: !4191)
!4193 = !DILocation(line: 125, column: 15, scope: !4185, inlinedAt: !4165)
!4194 = !DILocation(line: 127, column: 23, scope: !4185, inlinedAt: !4165)
!4195 = !DILocation(line: 127, column: 11, scope: !4185, inlinedAt: !4165)
!4196 = !DILocation(line: 128, column: 21, scope: !4185, inlinedAt: !4165)
!4197 = !DILocation(line: 128, column: 20, scope: !4185, inlinedAt: !4165)
!4198 = distinct !{!4198, !4195, !4199, !1147}
!4199 = !DILocation(line: 128, column: 23, scope: !4185, inlinedAt: !4165)
!4200 = !DILocation(line: 133, column: 31, scope: !4185, inlinedAt: !4165)
!4201 = !DILocation(line: 0, scope: !4187, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 133, column: 20, scope: !4185, inlinedAt: !4165)
!4203 = !DILocation(line: 235, column: 3, scope: !4187, inlinedAt: !4202)
!4204 = !DILocation(line: 133, column: 20, scope: !4185, inlinedAt: !4165)
!4205 = !DILocation(line: 133, column: 11, scope: !4185, inlinedAt: !4165)
!4206 = !DILocation(line: 136, column: 17, scope: !4172, inlinedAt: !4165)
!4207 = !DILocation(line: 136, column: 16, scope: !4172, inlinedAt: !4165)
!4208 = !DILocation(line: 137, column: 19, scope: !4172, inlinedAt: !4165)
!4209 = !DILocation(line: 136, column: 9, scope: !4172, inlinedAt: !4165)
!4210 = distinct !{!4210, !4182, !4211, !1147}
!4211 = !DILocation(line: 137, column: 59, scope: !4172, inlinedAt: !4165)
!4212 = !DILocation(line: 139, column: 14, scope: !4172, inlinedAt: !4165)
!4213 = !DILocation(line: 139, column: 19, scope: !4172, inlinedAt: !4165)
!4214 = !DILocation(line: 0, scope: !4187, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 139, column: 30, scope: !4172, inlinedAt: !4165)
!4216 = !DILocation(line: 139, column: 27, scope: !4172, inlinedAt: !4165)
!4217 = !DILocation(line: 139, column: 7, scope: !4172, inlinedAt: !4165)
!4218 = !DILocation(line: 142, column: 21, scope: !4219, inlinedAt: !4165)
!4219 = distinct !DILexicalBlock(scope: !4172, file: !4152, line: 140, column: 9)
!4220 = !DILocation(line: 142, column: 20, scope: !4219, inlinedAt: !4165)
!4221 = !DILocation(line: 145, column: 21, scope: !4219, inlinedAt: !4165)
!4222 = !DILocation(line: 145, column: 20, scope: !4219, inlinedAt: !4165)
!4223 = distinct !{!4223, !4217, !4224, !1147}
!4224 = !DILocation(line: 147, column: 9, scope: !4172, inlinedAt: !4165)
!4225 = !DILocation(line: 139, column: 22, scope: !4172, inlinedAt: !4165)
!4226 = !DILocation(line: 235, column: 3, scope: !4187, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 155, column: 23, scope: !4228, inlinedAt: !4165)
!4228 = distinct !DILexicalBlock(scope: !4229, file: !4152, line: 155, column: 7)
!4229 = distinct !DILexicalBlock(scope: !4172, file: !4152, line: 155, column: 7)
!4230 = !DILocation(line: 0, scope: !4172, inlinedAt: !4165)
!4231 = !DILocation(line: 153, column: 18, scope: !4172, inlinedAt: !4165)
!4232 = !DILocation(line: 0, scope: !4187, inlinedAt: !4227)
!4233 = !DILocation(line: 155, column: 7, scope: !4229, inlinedAt: !4165)
!4234 = !DILocation(line: 155, column: 41, scope: !4228, inlinedAt: !4165)
!4235 = !DILocation(line: 235, column: 3, scope: !4187, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 160, column: 23, scope: !4237, inlinedAt: !4165)
!4237 = distinct !DILexicalBlock(scope: !4238, file: !4152, line: 160, column: 7)
!4238 = distinct !DILexicalBlock(scope: !4172, file: !4152, line: 160, column: 7)
!4239 = !DILocation(line: 155, scope: !4229, inlinedAt: !4165)
!4240 = !DILocation(line: 0, scope: !4187, inlinedAt: !4236)
!4241 = !DILocation(line: 160, column: 7, scope: !4238, inlinedAt: !4165)
!4242 = !DILocation(line: 157, column: 19, scope: !4228, inlinedAt: !4165)
!4243 = !DILocation(line: 157, column: 18, scope: !4228, inlinedAt: !4165)
!4244 = !DILocation(line: 155, column: 34, scope: !4228, inlinedAt: !4165)
!4245 = distinct !{!4245, !4233, !4246, !1147}
!4246 = !DILocation(line: 158, column: 37, scope: !4229, inlinedAt: !4165)
!4247 = !DILocation(line: 162, column: 19, scope: !4237, inlinedAt: !4165)
!4248 = !DILocation(line: 162, column: 18, scope: !4237, inlinedAt: !4165)
!4249 = !DILocation(line: 160, column: 41, scope: !4237, inlinedAt: !4165)
!4250 = !DILocation(line: 160, column: 34, scope: !4237, inlinedAt: !4165)
!4251 = distinct !{!4251, !4241, !4252, !1147}
!4252 = !DILocation(line: 163, column: 37, scope: !4238, inlinedAt: !4165)
!4253 = !DILocation(line: 165, column: 17, scope: !4254, inlinedAt: !4165)
!4254 = distinct !DILexicalBlock(scope: !4172, file: !4152, line: 165, column: 11)
!4255 = !DILocation(line: 160, scope: !4238, inlinedAt: !4165)
!4256 = !DILocation(line: 165, column: 11, scope: !4172, inlinedAt: !4165)
!4257 = !DILocation(line: 166, column: 22, scope: !4254, inlinedAt: !4165)
!4258 = !DILocation(line: 166, column: 16, scope: !4254, inlinedAt: !4165)
!4259 = !DILocation(line: 166, column: 9, scope: !4254, inlinedAt: !4165)
!4260 = !DILocation(line: 168, column: 12, scope: !4261, inlinedAt: !4165)
!4261 = distinct !DILexicalBlock(scope: !4172, file: !4152, line: 168, column: 11)
!4262 = !DILocation(line: 173, column: 17, scope: !4263, inlinedAt: !4165)
!4263 = distinct !DILexicalBlock(scope: !4169, file: !4152, line: 173, column: 12)
!4264 = !DILocation(line: 173, column: 12, scope: !4169, inlinedAt: !4165)
!4265 = !DILocation(line: 175, column: 7, scope: !4266, inlinedAt: !4165)
!4266 = distinct !DILexicalBlock(scope: !4263, file: !4152, line: 174, column: 5)
!4267 = !DILocation(line: 194, column: 19, scope: !4268, inlinedAt: !4165)
!4268 = distinct !DILexicalBlock(scope: !4263, file: !4152, line: 193, column: 5)
!4269 = !DILocation(line: 194, column: 7, scope: !4268, inlinedAt: !4165)
!4270 = !DILocation(line: 176, column: 17, scope: !4266, inlinedAt: !4165)
!4271 = !DILocation(line: 176, column: 16, scope: !4266, inlinedAt: !4165)
!4272 = !DILocation(line: 177, column: 19, scope: !4266, inlinedAt: !4165)
!4273 = !DILocation(line: 176, column: 9, scope: !4266, inlinedAt: !4165)
!4274 = distinct !{!4274, !4265, !4275, !1147}
!4275 = !DILocation(line: 177, column: 59, scope: !4266, inlinedAt: !4165)
!4276 = !DILocation(line: 182, column: 22, scope: !4277, inlinedAt: !4165)
!4277 = distinct !DILexicalBlock(scope: !4266, file: !4152, line: 182, column: 11)
!4278 = !DILocation(line: 0, scope: !4187, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 182, column: 11, scope: !4277, inlinedAt: !4165)
!4280 = !DILocation(line: 235, column: 3, scope: !4187, inlinedAt: !4279)
!4281 = !DILocation(line: 182, column: 11, scope: !4266, inlinedAt: !4165)
!4282 = !DILocation(line: 184, column: 19, scope: !4266, inlinedAt: !4165)
!4283 = !DILocation(line: 184, column: 7, scope: !4266, inlinedAt: !4165)
!4284 = !DILocation(line: 185, column: 17, scope: !4266, inlinedAt: !4165)
!4285 = !DILocation(line: 185, column: 16, scope: !4266, inlinedAt: !4165)
!4286 = distinct !{!4286, !4283, !4287, !1147}
!4287 = !DILocation(line: 185, column: 19, scope: !4266, inlinedAt: !4165)
!4288 = !DILocation(line: 190, column: 25, scope: !4266, inlinedAt: !4165)
!4289 = !DILocation(line: 0, scope: !4187, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 190, column: 14, scope: !4266, inlinedAt: !4165)
!4291 = !DILocation(line: 235, column: 3, scope: !4187, inlinedAt: !4290)
!4292 = !DILocation(line: 190, column: 14, scope: !4266, inlinedAt: !4165)
!4293 = !DILocation(line: 190, column: 7, scope: !4266, inlinedAt: !4165)
!4294 = !DILocation(line: 195, column: 17, scope: !4268, inlinedAt: !4165)
!4295 = !DILocation(line: 195, column: 16, scope: !4268, inlinedAt: !4165)
!4296 = !DILocation(line: 196, column: 19, scope: !4268, inlinedAt: !4165)
!4297 = !DILocation(line: 196, column: 7, scope: !4268, inlinedAt: !4165)
!4298 = distinct !{!4298, !4269, !4299, !1147}
!4299 = !DILocation(line: 195, column: 19, scope: !4268, inlinedAt: !4165)
!4300 = !DILocation(line: 197, column: 17, scope: !4268, inlinedAt: !4165)
!4301 = !DILocation(line: 197, column: 16, scope: !4268, inlinedAt: !4165)
!4302 = !DILocation(line: 199, column: 14, scope: !4268, inlinedAt: !4165)
!4303 = !DILocation(line: 199, column: 19, scope: !4268, inlinedAt: !4165)
!4304 = !DILocation(line: 0, scope: !4187, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 199, column: 30, scope: !4268, inlinedAt: !4165)
!4306 = !DILocation(line: 199, column: 27, scope: !4268, inlinedAt: !4165)
!4307 = !DILocation(line: 199, column: 7, scope: !4268, inlinedAt: !4165)
!4308 = distinct !{!4308, !4297, !4309, !1147}
!4309 = !DILocation(line: 197, column: 19, scope: !4268, inlinedAt: !4165)
!4310 = !DILocation(line: 202, column: 21, scope: !4311, inlinedAt: !4165)
!4311 = distinct !DILexicalBlock(scope: !4268, file: !4152, line: 200, column: 9)
!4312 = !DILocation(line: 202, column: 20, scope: !4311, inlinedAt: !4165)
!4313 = !DILocation(line: 205, column: 21, scope: !4311, inlinedAt: !4165)
!4314 = !DILocation(line: 205, column: 20, scope: !4311, inlinedAt: !4165)
!4315 = distinct !{!4315, !4307, !4316, !1147}
!4316 = !DILocation(line: 207, column: 9, scope: !4268, inlinedAt: !4165)
!4317 = !DILocation(line: 199, column: 22, scope: !4268, inlinedAt: !4165)
!4318 = !DILocation(line: 235, column: 3, scope: !4187, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 215, column: 23, scope: !4320, inlinedAt: !4165)
!4320 = distinct !DILexicalBlock(scope: !4321, file: !4152, line: 215, column: 7)
!4321 = distinct !DILexicalBlock(scope: !4268, file: !4152, line: 215, column: 7)
!4322 = !DILocation(line: 213, column: 18, scope: !4268, inlinedAt: !4165)
!4323 = !DILocation(line: 0, scope: !4187, inlinedAt: !4319)
!4324 = !DILocation(line: 215, column: 7, scope: !4321, inlinedAt: !4165)
!4325 = !DILocation(line: 215, column: 41, scope: !4320, inlinedAt: !4165)
!4326 = !DILocation(line: 235, column: 3, scope: !4187, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 220, column: 23, scope: !4328, inlinedAt: !4165)
!4328 = distinct !DILexicalBlock(scope: !4329, file: !4152, line: 220, column: 7)
!4329 = distinct !DILexicalBlock(scope: !4268, file: !4152, line: 220, column: 7)
!4330 = !DILocation(line: 215, scope: !4321, inlinedAt: !4165)
!4331 = !DILocation(line: 0, scope: !4187, inlinedAt: !4327)
!4332 = !DILocation(line: 220, column: 7, scope: !4329, inlinedAt: !4165)
!4333 = !DILocation(line: 217, column: 19, scope: !4320, inlinedAt: !4165)
!4334 = !DILocation(line: 217, column: 18, scope: !4320, inlinedAt: !4165)
!4335 = !DILocation(line: 215, column: 34, scope: !4320, inlinedAt: !4165)
!4336 = distinct !{!4336, !4324, !4337, !1147}
!4337 = !DILocation(line: 218, column: 37, scope: !4321, inlinedAt: !4165)
!4338 = !DILocation(line: 222, column: 19, scope: !4328, inlinedAt: !4165)
!4339 = !DILocation(line: 222, column: 18, scope: !4328, inlinedAt: !4165)
!4340 = !DILocation(line: 220, column: 41, scope: !4328, inlinedAt: !4165)
!4341 = !DILocation(line: 220, column: 34, scope: !4328, inlinedAt: !4165)
!4342 = distinct !{!4342, !4332, !4343, !1147}
!4343 = !DILocation(line: 223, column: 37, scope: !4329, inlinedAt: !4165)
!4344 = !DILocation(line: 225, column: 17, scope: !4345, inlinedAt: !4165)
!4345 = distinct !DILexicalBlock(scope: !4268, file: !4152, line: 225, column: 11)
!4346 = !DILocation(line: 220, scope: !4329, inlinedAt: !4165)
!4347 = !DILocation(line: 225, column: 11, scope: !4268, inlinedAt: !4165)
!4348 = !DILocation(line: 226, column: 22, scope: !4345, inlinedAt: !4165)
!4349 = !DILocation(line: 226, column: 16, scope: !4345, inlinedAt: !4165)
!4350 = !DILocation(line: 226, column: 9, scope: !4345, inlinedAt: !4165)
!4351 = !DILocation(line: 228, column: 12, scope: !4352, inlinedAt: !4165)
!4352 = distinct !DILexicalBlock(scope: !4268, file: !4152, line: 228, column: 11)
!4353 = !DILocation(line: 0, scope: !4268, inlinedAt: !4165)
!4354 = !DILocation(line: 0, scope: !4169, inlinedAt: !4165)
!4355 = !DILocation(line: 33, column: 3, scope: !4145)
!4356 = distinct !DISubprogram(name: "version_etc_arn", scope: !806, file: !806, line: 61, type: !4357, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4394)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{null, !4359, !265, !265, !265, !4393, !262}
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !4361)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !4362)
!4362 = !{!4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4361, file: !336, line: 51, baseType: !260, size: 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4361, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4361, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4361, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4361, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4361, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4361, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4361, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4361, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4361, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4361, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4361, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4361, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4361, file: !336, line: 70, baseType: !4377, size: 64, offset: 832)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4361, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4361, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4361, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4361, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4361, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4361, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4361, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4361, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4361, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4361, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4361, file: !336, line: 93, baseType: !4377, size: 64, offset: 1344)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4361, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4361, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4361, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4361, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!4394 = !{!4395, !4396, !4397, !4398, !4399, !4400}
!4395 = !DILocalVariable(name: "stream", arg: 1, scope: !4356, file: !806, line: 61, type: !4359)
!4396 = !DILocalVariable(name: "command_name", arg: 2, scope: !4356, file: !806, line: 62, type: !265)
!4397 = !DILocalVariable(name: "package", arg: 3, scope: !4356, file: !806, line: 62, type: !265)
!4398 = !DILocalVariable(name: "version", arg: 4, scope: !4356, file: !806, line: 63, type: !265)
!4399 = !DILocalVariable(name: "authors", arg: 5, scope: !4356, file: !806, line: 64, type: !4393)
!4400 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4356, file: !806, line: 64, type: !262)
!4401 = !DILocation(line: 0, scope: !4356)
!4402 = !DILocation(line: 66, column: 7, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4356, file: !806, line: 66, column: 7)
!4404 = !DILocation(line: 66, column: 7, scope: !4356)
!4405 = !DILocation(line: 67, column: 5, scope: !4403)
!4406 = !DILocation(line: 69, column: 5, scope: !4403)
!4407 = !DILocation(line: 83, column: 3, scope: !4356)
!4408 = !DILocation(line: 85, column: 3, scope: !4356)
!4409 = !DILocation(line: 88, column: 3, scope: !4356)
!4410 = !DILocation(line: 95, column: 3, scope: !4356)
!4411 = !DILocation(line: 97, column: 3, scope: !4356)
!4412 = !DILocation(line: 105, column: 7, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4356, file: !806, line: 98, column: 5)
!4414 = !DILocation(line: 106, column: 7, scope: !4413)
!4415 = !DILocation(line: 109, column: 7, scope: !4413)
!4416 = !DILocation(line: 110, column: 7, scope: !4413)
!4417 = !DILocation(line: 113, column: 7, scope: !4413)
!4418 = !DILocation(line: 115, column: 7, scope: !4413)
!4419 = !DILocation(line: 120, column: 7, scope: !4413)
!4420 = !DILocation(line: 122, column: 7, scope: !4413)
!4421 = !DILocation(line: 127, column: 7, scope: !4413)
!4422 = !DILocation(line: 129, column: 7, scope: !4413)
!4423 = !DILocation(line: 134, column: 7, scope: !4413)
!4424 = !DILocation(line: 137, column: 7, scope: !4413)
!4425 = !DILocation(line: 142, column: 7, scope: !4413)
!4426 = !DILocation(line: 145, column: 7, scope: !4413)
!4427 = !DILocation(line: 150, column: 7, scope: !4413)
!4428 = !DILocation(line: 154, column: 7, scope: !4413)
!4429 = !DILocation(line: 159, column: 7, scope: !4413)
!4430 = !DILocation(line: 163, column: 7, scope: !4413)
!4431 = !DILocation(line: 170, column: 7, scope: !4413)
!4432 = !DILocation(line: 174, column: 7, scope: !4413)
!4433 = !DILocation(line: 176, column: 1, scope: !4356)
!4434 = distinct !DISubprogram(name: "version_etc_ar", scope: !806, file: !806, line: 183, type: !4435, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4437)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{null, !4359, !265, !265, !265, !4393}
!4437 = !{!4438, !4439, !4440, !4441, !4442, !4443}
!4438 = !DILocalVariable(name: "stream", arg: 1, scope: !4434, file: !806, line: 183, type: !4359)
!4439 = !DILocalVariable(name: "command_name", arg: 2, scope: !4434, file: !806, line: 184, type: !265)
!4440 = !DILocalVariable(name: "package", arg: 3, scope: !4434, file: !806, line: 184, type: !265)
!4441 = !DILocalVariable(name: "version", arg: 4, scope: !4434, file: !806, line: 185, type: !265)
!4442 = !DILocalVariable(name: "authors", arg: 5, scope: !4434, file: !806, line: 185, type: !4393)
!4443 = !DILocalVariable(name: "n_authors", scope: !4434, file: !806, line: 187, type: !262)
!4444 = !DILocation(line: 0, scope: !4434)
!4445 = !DILocation(line: 189, column: 8, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4434, file: !806, line: 189, column: 3)
!4447 = !DILocation(line: 189, scope: !4446)
!4448 = !DILocation(line: 189, column: 23, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4446, file: !806, line: 189, column: 3)
!4450 = !DILocation(line: 189, column: 3, scope: !4446)
!4451 = !DILocation(line: 189, column: 52, scope: !4449)
!4452 = distinct !{!4452, !4450, !4453, !1147}
!4453 = !DILocation(line: 190, column: 5, scope: !4446)
!4454 = !DILocation(line: 191, column: 3, scope: !4434)
!4455 = !DILocation(line: 192, column: 1, scope: !4434)
!4456 = distinct !DISubprogram(name: "version_etc_va", scope: !806, file: !806, line: 199, type: !4457, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4469)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{null, !4359, !265, !265, !265, !4459}
!4459 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !609, line: 52, baseType: !4460)
!4460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !611, line: 12, baseType: !4461)
!4461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !806, baseType: !4462)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4463)
!4463 = !{!4464, !4465, !4466, !4467, !4468}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4462, file: !806, line: 192, baseType: !259, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4462, file: !806, line: 192, baseType: !259, size: 64, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4462, file: !806, line: 192, baseType: !259, size: 64, offset: 128)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4462, file: !806, line: 192, baseType: !260, size: 32, offset: 192)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4462, file: !806, line: 192, baseType: !260, size: 32, offset: 224)
!4469 = !{!4470, !4471, !4472, !4473, !4474, !4475, !4476}
!4470 = !DILocalVariable(name: "stream", arg: 1, scope: !4456, file: !806, line: 199, type: !4359)
!4471 = !DILocalVariable(name: "command_name", arg: 2, scope: !4456, file: !806, line: 200, type: !265)
!4472 = !DILocalVariable(name: "package", arg: 3, scope: !4456, file: !806, line: 200, type: !265)
!4473 = !DILocalVariable(name: "version", arg: 4, scope: !4456, file: !806, line: 201, type: !265)
!4474 = !DILocalVariable(name: "authors", arg: 5, scope: !4456, file: !806, line: 201, type: !4459)
!4475 = !DILocalVariable(name: "n_authors", scope: !4456, file: !806, line: 203, type: !262)
!4476 = !DILocalVariable(name: "authtab", scope: !4456, file: !806, line: 204, type: !4477)
!4477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 640, elements: !209)
!4478 = distinct !DIAssignID()
!4479 = !DILocation(line: 0, scope: !4456)
!4480 = !DILocation(line: 204, column: 3, scope: !4456)
!4481 = !DILocation(line: 208, column: 35, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4483, file: !806, line: 206, column: 3)
!4483 = distinct !DILexicalBlock(scope: !4456, file: !806, line: 206, column: 3)
!4484 = !DILocation(line: 208, column: 33, scope: !4482)
!4485 = !DILocation(line: 208, column: 67, scope: !4482)
!4486 = !DILocation(line: 206, column: 3, scope: !4483)
!4487 = !DILocation(line: 208, column: 14, scope: !4482)
!4488 = !DILocation(line: 0, scope: !4483)
!4489 = !DILocation(line: 211, column: 3, scope: !4456)
!4490 = !DILocation(line: 213, column: 1, scope: !4456)
!4491 = distinct !DISubprogram(name: "version_etc", scope: !806, file: !806, line: 230, type: !4492, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4494)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{null, !4359, !265, !265, !265, null}
!4494 = !{!4495, !4496, !4497, !4498, !4499}
!4495 = !DILocalVariable(name: "stream", arg: 1, scope: !4491, file: !806, line: 230, type: !4359)
!4496 = !DILocalVariable(name: "command_name", arg: 2, scope: !4491, file: !806, line: 231, type: !265)
!4497 = !DILocalVariable(name: "package", arg: 3, scope: !4491, file: !806, line: 231, type: !265)
!4498 = !DILocalVariable(name: "version", arg: 4, scope: !4491, file: !806, line: 232, type: !265)
!4499 = !DILocalVariable(name: "authors", scope: !4491, file: !806, line: 234, type: !4459)
!4500 = distinct !DIAssignID()
!4501 = !DILocation(line: 0, scope: !4491)
!4502 = !DILocation(line: 234, column: 3, scope: !4491)
!4503 = !DILocation(line: 235, column: 3, scope: !4491)
!4504 = !DILocation(line: 236, column: 3, scope: !4491)
!4505 = !DILocation(line: 237, column: 3, scope: !4491)
!4506 = !DILocation(line: 238, column: 1, scope: !4491)
!4507 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !806, file: !806, line: 241, type: !647, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920)
!4508 = !DILocation(line: 243, column: 3, scope: !4507)
!4509 = !DILocation(line: 248, column: 3, scope: !4507)
!4510 = !DILocation(line: 254, column: 3, scope: !4507)
!4511 = !DILocation(line: 259, column: 3, scope: !4507)
!4512 = !DILocation(line: 261, column: 1, scope: !4507)
!4513 = distinct !DISubprogram(name: "xnrealloc", scope: !4514, file: !4514, line: 147, type: !4515, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4517)
!4514 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!259, !259, !262, !262}
!4517 = !{!4518, !4519, !4520}
!4518 = !DILocalVariable(name: "p", arg: 1, scope: !4513, file: !4514, line: 147, type: !259)
!4519 = !DILocalVariable(name: "n", arg: 2, scope: !4513, file: !4514, line: 147, type: !262)
!4520 = !DILocalVariable(name: "s", arg: 3, scope: !4513, file: !4514, line: 147, type: !262)
!4521 = !DILocation(line: 0, scope: !4513)
!4522 = !DILocalVariable(name: "p", arg: 1, scope: !4523, file: !928, line: 83, type: !259)
!4523 = distinct !DISubprogram(name: "xreallocarray", scope: !928, file: !928, line: 83, type: !4515, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4524)
!4524 = !{!4522, !4525, !4526}
!4525 = !DILocalVariable(name: "n", arg: 2, scope: !4523, file: !928, line: 83, type: !262)
!4526 = !DILocalVariable(name: "s", arg: 3, scope: !4523, file: !928, line: 83, type: !262)
!4527 = !DILocation(line: 0, scope: !4523, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 149, column: 10, scope: !4513)
!4529 = !DILocation(line: 85, column: 25, scope: !4523, inlinedAt: !4528)
!4530 = !DILocalVariable(name: "p", arg: 1, scope: !4531, file: !928, line: 37, type: !259)
!4531 = distinct !DISubprogram(name: "check_nonnull", scope: !928, file: !928, line: 37, type: !4532, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4534)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!259, !259}
!4534 = !{!4530}
!4535 = !DILocation(line: 0, scope: !4531, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 85, column: 10, scope: !4523, inlinedAt: !4528)
!4537 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4536)
!4538 = distinct !DILexicalBlock(scope: !4531, file: !928, line: 39, column: 7)
!4539 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4536)
!4540 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4536)
!4541 = !DILocation(line: 149, column: 3, scope: !4513)
!4542 = !DILocation(line: 0, scope: !4523)
!4543 = !DILocation(line: 85, column: 25, scope: !4523)
!4544 = !DILocation(line: 0, scope: !4531, inlinedAt: !4545)
!4545 = distinct !DILocation(line: 85, column: 10, scope: !4523)
!4546 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4545)
!4547 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4545)
!4548 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4545)
!4549 = !DILocation(line: 85, column: 3, scope: !4523)
!4550 = distinct !DISubprogram(name: "xmalloc", scope: !928, file: !928, line: 47, type: !4551, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4553)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!259, !262}
!4553 = !{!4554}
!4554 = !DILocalVariable(name: "s", arg: 1, scope: !4550, file: !928, line: 47, type: !262)
!4555 = !DILocation(line: 0, scope: !4550)
!4556 = !DILocation(line: 49, column: 25, scope: !4550)
!4557 = !DILocation(line: 0, scope: !4531, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 49, column: 10, scope: !4550)
!4559 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4558)
!4560 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4558)
!4561 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4558)
!4562 = !DILocation(line: 49, column: 3, scope: !4550)
!4563 = !DISubprogram(name: "malloc", scope: !1206, file: !1206, line: 540, type: !4551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4564 = distinct !DISubprogram(name: "ximalloc", scope: !928, file: !928, line: 53, type: !4565, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4567)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!259, !947}
!4567 = !{!4568}
!4568 = !DILocalVariable(name: "s", arg: 1, scope: !4564, file: !928, line: 53, type: !947)
!4569 = !DILocation(line: 0, scope: !4564)
!4570 = !DILocalVariable(name: "s", arg: 1, scope: !4571, file: !4572, line: 55, type: !947)
!4571 = distinct !DISubprogram(name: "imalloc", scope: !4572, file: !4572, line: 55, type: !4565, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4573)
!4572 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4573 = !{!4570}
!4574 = !DILocation(line: 0, scope: !4571, inlinedAt: !4575)
!4575 = distinct !DILocation(line: 55, column: 25, scope: !4564)
!4576 = !DILocation(line: 57, column: 26, scope: !4571, inlinedAt: !4575)
!4577 = !DILocation(line: 0, scope: !4531, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 55, column: 10, scope: !4564)
!4579 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4578)
!4580 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4578)
!4581 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4578)
!4582 = !DILocation(line: 55, column: 3, scope: !4564)
!4583 = distinct !DISubprogram(name: "xcharalloc", scope: !928, file: !928, line: 59, type: !4584, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4586)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!258, !262}
!4586 = !{!4587}
!4587 = !DILocalVariable(name: "n", arg: 1, scope: !4583, file: !928, line: 59, type: !262)
!4588 = !DILocation(line: 0, scope: !4583)
!4589 = !DILocation(line: 0, scope: !4550, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 61, column: 10, scope: !4583)
!4591 = !DILocation(line: 49, column: 25, scope: !4550, inlinedAt: !4590)
!4592 = !DILocation(line: 0, scope: !4531, inlinedAt: !4593)
!4593 = distinct !DILocation(line: 49, column: 10, scope: !4550, inlinedAt: !4590)
!4594 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4593)
!4595 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4593)
!4596 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4593)
!4597 = !DILocation(line: 61, column: 3, scope: !4583)
!4598 = distinct !DISubprogram(name: "xrealloc", scope: !928, file: !928, line: 68, type: !4599, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4601)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!259, !259, !262}
!4601 = !{!4602, !4603}
!4602 = !DILocalVariable(name: "p", arg: 1, scope: !4598, file: !928, line: 68, type: !259)
!4603 = !DILocalVariable(name: "s", arg: 2, scope: !4598, file: !928, line: 68, type: !262)
!4604 = !DILocation(line: 0, scope: !4598)
!4605 = !DILocalVariable(name: "ptr", arg: 1, scope: !4606, file: !4607, line: 2057, type: !259)
!4606 = distinct !DISubprogram(name: "rpl_realloc", scope: !4607, file: !4607, line: 2057, type: !4599, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4608)
!4607 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4608 = !{!4605, !4609}
!4609 = !DILocalVariable(name: "size", arg: 2, scope: !4606, file: !4607, line: 2057, type: !262)
!4610 = !DILocation(line: 0, scope: !4606, inlinedAt: !4611)
!4611 = distinct !DILocation(line: 70, column: 25, scope: !4598)
!4612 = !DILocation(line: 2059, column: 24, scope: !4606, inlinedAt: !4611)
!4613 = !DILocation(line: 2059, column: 10, scope: !4606, inlinedAt: !4611)
!4614 = !DILocation(line: 0, scope: !4531, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 70, column: 10, scope: !4598)
!4616 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4615)
!4617 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4615)
!4618 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4615)
!4619 = !DILocation(line: 70, column: 3, scope: !4598)
!4620 = !DISubprogram(name: "realloc", scope: !1206, file: !1206, line: 551, type: !4599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4621 = distinct !DISubprogram(name: "xirealloc", scope: !928, file: !928, line: 74, type: !4622, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4624)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!259, !259, !947}
!4624 = !{!4625, !4626}
!4625 = !DILocalVariable(name: "p", arg: 1, scope: !4621, file: !928, line: 74, type: !259)
!4626 = !DILocalVariable(name: "s", arg: 2, scope: !4621, file: !928, line: 74, type: !947)
!4627 = !DILocation(line: 0, scope: !4621)
!4628 = !DILocalVariable(name: "p", arg: 1, scope: !4629, file: !4572, line: 66, type: !259)
!4629 = distinct !DISubprogram(name: "irealloc", scope: !4572, file: !4572, line: 66, type: !4622, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4630)
!4630 = !{!4628, !4631}
!4631 = !DILocalVariable(name: "s", arg: 2, scope: !4629, file: !4572, line: 66, type: !947)
!4632 = !DILocation(line: 0, scope: !4629, inlinedAt: !4633)
!4633 = distinct !DILocation(line: 76, column: 25, scope: !4621)
!4634 = !DILocation(line: 0, scope: !4606, inlinedAt: !4635)
!4635 = distinct !DILocation(line: 68, column: 26, scope: !4629, inlinedAt: !4633)
!4636 = !DILocation(line: 2059, column: 24, scope: !4606, inlinedAt: !4635)
!4637 = !DILocation(line: 2059, column: 10, scope: !4606, inlinedAt: !4635)
!4638 = !DILocation(line: 0, scope: !4531, inlinedAt: !4639)
!4639 = distinct !DILocation(line: 76, column: 10, scope: !4621)
!4640 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4639)
!4641 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4639)
!4642 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4639)
!4643 = !DILocation(line: 76, column: 3, scope: !4621)
!4644 = distinct !DISubprogram(name: "xireallocarray", scope: !928, file: !928, line: 89, type: !4645, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4647)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!259, !259, !947, !947}
!4647 = !{!4648, !4649, !4650}
!4648 = !DILocalVariable(name: "p", arg: 1, scope: !4644, file: !928, line: 89, type: !259)
!4649 = !DILocalVariable(name: "n", arg: 2, scope: !4644, file: !928, line: 89, type: !947)
!4650 = !DILocalVariable(name: "s", arg: 3, scope: !4644, file: !928, line: 89, type: !947)
!4651 = !DILocation(line: 0, scope: !4644)
!4652 = !DILocalVariable(name: "p", arg: 1, scope: !4653, file: !4572, line: 98, type: !259)
!4653 = distinct !DISubprogram(name: "ireallocarray", scope: !4572, file: !4572, line: 98, type: !4645, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4654)
!4654 = !{!4652, !4655, !4656}
!4655 = !DILocalVariable(name: "n", arg: 2, scope: !4653, file: !4572, line: 98, type: !947)
!4656 = !DILocalVariable(name: "s", arg: 3, scope: !4653, file: !4572, line: 98, type: !947)
!4657 = !DILocation(line: 0, scope: !4653, inlinedAt: !4658)
!4658 = distinct !DILocation(line: 91, column: 25, scope: !4644)
!4659 = !DILocation(line: 101, column: 13, scope: !4653, inlinedAt: !4658)
!4660 = !DILocation(line: 0, scope: !4531, inlinedAt: !4661)
!4661 = distinct !DILocation(line: 91, column: 10, scope: !4644)
!4662 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4661)
!4663 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4661)
!4664 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4661)
!4665 = !DILocation(line: 91, column: 3, scope: !4644)
!4666 = distinct !DISubprogram(name: "xnmalloc", scope: !928, file: !928, line: 98, type: !4667, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4669)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!259, !262, !262}
!4669 = !{!4670, !4671}
!4670 = !DILocalVariable(name: "n", arg: 1, scope: !4666, file: !928, line: 98, type: !262)
!4671 = !DILocalVariable(name: "s", arg: 2, scope: !4666, file: !928, line: 98, type: !262)
!4672 = !DILocation(line: 0, scope: !4666)
!4673 = !DILocation(line: 0, scope: !4523, inlinedAt: !4674)
!4674 = distinct !DILocation(line: 100, column: 10, scope: !4666)
!4675 = !DILocation(line: 85, column: 25, scope: !4523, inlinedAt: !4674)
!4676 = !DILocation(line: 0, scope: !4531, inlinedAt: !4677)
!4677 = distinct !DILocation(line: 85, column: 10, scope: !4523, inlinedAt: !4674)
!4678 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4677)
!4679 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4677)
!4680 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4677)
!4681 = !DILocation(line: 100, column: 3, scope: !4666)
!4682 = distinct !DISubprogram(name: "xinmalloc", scope: !928, file: !928, line: 104, type: !4683, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4685)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!259, !947, !947}
!4685 = !{!4686, !4687}
!4686 = !DILocalVariable(name: "n", arg: 1, scope: !4682, file: !928, line: 104, type: !947)
!4687 = !DILocalVariable(name: "s", arg: 2, scope: !4682, file: !928, line: 104, type: !947)
!4688 = !DILocation(line: 0, scope: !4682)
!4689 = !DILocation(line: 0, scope: !4644, inlinedAt: !4690)
!4690 = distinct !DILocation(line: 106, column: 10, scope: !4682)
!4691 = !DILocation(line: 0, scope: !4653, inlinedAt: !4692)
!4692 = distinct !DILocation(line: 91, column: 25, scope: !4644, inlinedAt: !4690)
!4693 = !DILocation(line: 101, column: 13, scope: !4653, inlinedAt: !4692)
!4694 = !DILocation(line: 0, scope: !4531, inlinedAt: !4695)
!4695 = distinct !DILocation(line: 91, column: 10, scope: !4644, inlinedAt: !4690)
!4696 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4695)
!4697 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4695)
!4698 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4695)
!4699 = !DILocation(line: 106, column: 3, scope: !4682)
!4700 = distinct !DISubprogram(name: "x2realloc", scope: !928, file: !928, line: 116, type: !4701, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4703)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!259, !259, !934}
!4703 = !{!4704, !4705}
!4704 = !DILocalVariable(name: "p", arg: 1, scope: !4700, file: !928, line: 116, type: !259)
!4705 = !DILocalVariable(name: "ps", arg: 2, scope: !4700, file: !928, line: 116, type: !934)
!4706 = !DILocation(line: 0, scope: !4700)
!4707 = !DILocation(line: 0, scope: !931, inlinedAt: !4708)
!4708 = distinct !DILocation(line: 118, column: 10, scope: !4700)
!4709 = !DILocation(line: 178, column: 14, scope: !931, inlinedAt: !4708)
!4710 = !DILocation(line: 180, column: 9, scope: !4711, inlinedAt: !4708)
!4711 = distinct !DILexicalBlock(scope: !931, file: !928, line: 180, column: 7)
!4712 = !DILocation(line: 180, column: 7, scope: !931, inlinedAt: !4708)
!4713 = !DILocation(line: 182, column: 13, scope: !4714, inlinedAt: !4708)
!4714 = distinct !DILexicalBlock(scope: !4715, file: !928, line: 182, column: 11)
!4715 = distinct !DILexicalBlock(scope: !4711, file: !928, line: 181, column: 5)
!4716 = !DILocation(line: 182, column: 11, scope: !4715, inlinedAt: !4708)
!4717 = !DILocation(line: 197, column: 11, scope: !4718, inlinedAt: !4708)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !928, line: 197, column: 11)
!4719 = distinct !DILexicalBlock(scope: !4711, file: !928, line: 195, column: 5)
!4720 = !DILocation(line: 197, column: 11, scope: !4719, inlinedAt: !4708)
!4721 = !DILocation(line: 198, column: 9, scope: !4718, inlinedAt: !4708)
!4722 = !DILocation(line: 0, scope: !4523, inlinedAt: !4723)
!4723 = distinct !DILocation(line: 201, column: 7, scope: !931, inlinedAt: !4708)
!4724 = !DILocation(line: 85, column: 25, scope: !4523, inlinedAt: !4723)
!4725 = !DILocation(line: 0, scope: !4531, inlinedAt: !4726)
!4726 = distinct !DILocation(line: 85, column: 10, scope: !4523, inlinedAt: !4723)
!4727 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4726)
!4728 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4726)
!4729 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4726)
!4730 = !DILocation(line: 202, column: 7, scope: !931, inlinedAt: !4708)
!4731 = !DILocation(line: 118, column: 3, scope: !4700)
!4732 = !DILocation(line: 0, scope: !931)
!4733 = !DILocation(line: 178, column: 14, scope: !931)
!4734 = !DILocation(line: 180, column: 9, scope: !4711)
!4735 = !DILocation(line: 180, column: 7, scope: !931)
!4736 = !DILocation(line: 182, column: 13, scope: !4714)
!4737 = !DILocation(line: 182, column: 11, scope: !4715)
!4738 = !DILocation(line: 190, column: 30, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4714, file: !928, line: 183, column: 9)
!4740 = !DILocation(line: 191, column: 16, scope: !4739)
!4741 = !DILocation(line: 191, column: 13, scope: !4739)
!4742 = !DILocation(line: 192, column: 9, scope: !4739)
!4743 = !DILocation(line: 197, column: 11, scope: !4718)
!4744 = !DILocation(line: 197, column: 11, scope: !4719)
!4745 = !DILocation(line: 198, column: 9, scope: !4718)
!4746 = !DILocation(line: 0, scope: !4523, inlinedAt: !4747)
!4747 = distinct !DILocation(line: 201, column: 7, scope: !931)
!4748 = !DILocation(line: 85, column: 25, scope: !4523, inlinedAt: !4747)
!4749 = !DILocation(line: 0, scope: !4531, inlinedAt: !4750)
!4750 = distinct !DILocation(line: 85, column: 10, scope: !4523, inlinedAt: !4747)
!4751 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4750)
!4752 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4750)
!4753 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4750)
!4754 = !DILocation(line: 202, column: 7, scope: !931)
!4755 = !DILocation(line: 203, column: 3, scope: !931)
!4756 = !DILocation(line: 0, scope: !943)
!4757 = !DILocation(line: 230, column: 14, scope: !943)
!4758 = !DILocation(line: 238, column: 7, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !943, file: !928, line: 238, column: 7)
!4760 = !DILocation(line: 238, column: 7, scope: !943)
!4761 = !DILocation(line: 240, column: 9, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !943, file: !928, line: 240, column: 7)
!4763 = !DILocation(line: 240, column: 18, scope: !4762)
!4764 = !DILocation(line: 253, column: 8, scope: !943)
!4765 = !DILocation(line: 256, column: 7, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !943, file: !928, line: 256, column: 7)
!4767 = !DILocation(line: 256, column: 7, scope: !943)
!4768 = !DILocation(line: 258, column: 27, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4766, file: !928, line: 257, column: 5)
!4770 = !DILocation(line: 259, column: 32, scope: !4769)
!4771 = !DILocation(line: 260, column: 5, scope: !4769)
!4772 = !DILocation(line: 262, column: 9, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !943, file: !928, line: 262, column: 7)
!4774 = !DILocation(line: 262, column: 7, scope: !943)
!4775 = !DILocation(line: 263, column: 9, scope: !4773)
!4776 = !DILocation(line: 263, column: 5, scope: !4773)
!4777 = !DILocation(line: 264, column: 9, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !943, file: !928, line: 264, column: 7)
!4779 = !DILocation(line: 264, column: 14, scope: !4778)
!4780 = !DILocation(line: 265, column: 7, scope: !4778)
!4781 = !DILocation(line: 265, column: 11, scope: !4778)
!4782 = !DILocation(line: 266, column: 11, scope: !4778)
!4783 = !DILocation(line: 267, column: 14, scope: !4778)
!4784 = !DILocation(line: 264, column: 7, scope: !943)
!4785 = !DILocation(line: 268, column: 5, scope: !4778)
!4786 = !DILocation(line: 0, scope: !4598, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 269, column: 8, scope: !943)
!4788 = !DILocation(line: 0, scope: !4606, inlinedAt: !4789)
!4789 = distinct !DILocation(line: 70, column: 25, scope: !4598, inlinedAt: !4787)
!4790 = !DILocation(line: 2059, column: 24, scope: !4606, inlinedAt: !4789)
!4791 = !DILocation(line: 2059, column: 10, scope: !4606, inlinedAt: !4789)
!4792 = !DILocation(line: 0, scope: !4531, inlinedAt: !4793)
!4793 = distinct !DILocation(line: 70, column: 10, scope: !4598, inlinedAt: !4787)
!4794 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4793)
!4795 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4793)
!4796 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4793)
!4797 = !DILocation(line: 270, column: 7, scope: !943)
!4798 = !DILocation(line: 271, column: 3, scope: !943)
!4799 = distinct !DISubprogram(name: "xzalloc", scope: !928, file: !928, line: 279, type: !4551, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4800)
!4800 = !{!4801}
!4801 = !DILocalVariable(name: "s", arg: 1, scope: !4799, file: !928, line: 279, type: !262)
!4802 = !DILocation(line: 0, scope: !4799)
!4803 = !DILocalVariable(name: "n", arg: 1, scope: !4804, file: !928, line: 294, type: !262)
!4804 = distinct !DISubprogram(name: "xcalloc", scope: !928, file: !928, line: 294, type: !4667, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4805)
!4805 = !{!4803, !4806}
!4806 = !DILocalVariable(name: "s", arg: 2, scope: !4804, file: !928, line: 294, type: !262)
!4807 = !DILocation(line: 0, scope: !4804, inlinedAt: !4808)
!4808 = distinct !DILocation(line: 281, column: 10, scope: !4799)
!4809 = !DILocation(line: 296, column: 25, scope: !4804, inlinedAt: !4808)
!4810 = !DILocation(line: 0, scope: !4531, inlinedAt: !4811)
!4811 = distinct !DILocation(line: 296, column: 10, scope: !4804, inlinedAt: !4808)
!4812 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4811)
!4813 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4811)
!4814 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4811)
!4815 = !DILocation(line: 281, column: 3, scope: !4799)
!4816 = !DISubprogram(name: "calloc", scope: !1206, file: !1206, line: 543, type: !4667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4817 = !DILocation(line: 0, scope: !4804)
!4818 = !DILocation(line: 296, column: 25, scope: !4804)
!4819 = !DILocation(line: 0, scope: !4531, inlinedAt: !4820)
!4820 = distinct !DILocation(line: 296, column: 10, scope: !4804)
!4821 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4820)
!4822 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4820)
!4823 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4820)
!4824 = !DILocation(line: 296, column: 3, scope: !4804)
!4825 = distinct !DISubprogram(name: "xizalloc", scope: !928, file: !928, line: 285, type: !4565, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4826)
!4826 = !{!4827}
!4827 = !DILocalVariable(name: "s", arg: 1, scope: !4825, file: !928, line: 285, type: !947)
!4828 = !DILocation(line: 0, scope: !4825)
!4829 = !DILocalVariable(name: "n", arg: 1, scope: !4830, file: !928, line: 300, type: !947)
!4830 = distinct !DISubprogram(name: "xicalloc", scope: !928, file: !928, line: 300, type: !4683, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4831)
!4831 = !{!4829, !4832}
!4832 = !DILocalVariable(name: "s", arg: 2, scope: !4830, file: !928, line: 300, type: !947)
!4833 = !DILocation(line: 0, scope: !4830, inlinedAt: !4834)
!4834 = distinct !DILocation(line: 287, column: 10, scope: !4825)
!4835 = !DILocalVariable(name: "n", arg: 1, scope: !4836, file: !4572, line: 77, type: !947)
!4836 = distinct !DISubprogram(name: "icalloc", scope: !4572, file: !4572, line: 77, type: !4683, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4837)
!4837 = !{!4835, !4838}
!4838 = !DILocalVariable(name: "s", arg: 2, scope: !4836, file: !4572, line: 77, type: !947)
!4839 = !DILocation(line: 0, scope: !4836, inlinedAt: !4840)
!4840 = distinct !DILocation(line: 302, column: 25, scope: !4830, inlinedAt: !4834)
!4841 = !DILocation(line: 91, column: 10, scope: !4836, inlinedAt: !4840)
!4842 = !DILocation(line: 0, scope: !4531, inlinedAt: !4843)
!4843 = distinct !DILocation(line: 302, column: 10, scope: !4830, inlinedAt: !4834)
!4844 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4843)
!4845 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4843)
!4846 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4843)
!4847 = !DILocation(line: 287, column: 3, scope: !4825)
!4848 = !DILocation(line: 0, scope: !4830)
!4849 = !DILocation(line: 0, scope: !4836, inlinedAt: !4850)
!4850 = distinct !DILocation(line: 302, column: 25, scope: !4830)
!4851 = !DILocation(line: 91, column: 10, scope: !4836, inlinedAt: !4850)
!4852 = !DILocation(line: 0, scope: !4531, inlinedAt: !4853)
!4853 = distinct !DILocation(line: 302, column: 10, scope: !4830)
!4854 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4853)
!4855 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4853)
!4856 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4853)
!4857 = !DILocation(line: 302, column: 3, scope: !4830)
!4858 = distinct !DISubprogram(name: "xmemdup", scope: !928, file: !928, line: 310, type: !4859, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4861)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!259, !1230, !262}
!4861 = !{!4862, !4863}
!4862 = !DILocalVariable(name: "p", arg: 1, scope: !4858, file: !928, line: 310, type: !1230)
!4863 = !DILocalVariable(name: "s", arg: 2, scope: !4858, file: !928, line: 310, type: !262)
!4864 = !DILocation(line: 0, scope: !4858)
!4865 = !DILocation(line: 0, scope: !4550, inlinedAt: !4866)
!4866 = distinct !DILocation(line: 312, column: 18, scope: !4858)
!4867 = !DILocation(line: 49, column: 25, scope: !4550, inlinedAt: !4866)
!4868 = !DILocation(line: 0, scope: !4531, inlinedAt: !4869)
!4869 = distinct !DILocation(line: 49, column: 10, scope: !4550, inlinedAt: !4866)
!4870 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4869)
!4871 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4869)
!4872 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4869)
!4873 = !DILocalVariable(name: "__dest", arg: 1, scope: !4874, file: !2799, line: 26, type: !4877)
!4874 = distinct !DISubprogram(name: "memcpy", scope: !2799, file: !2799, line: 26, type: !4875, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4878)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{!259, !4877, !1229, !262}
!4877 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !259)
!4878 = !{!4873, !4879, !4880}
!4879 = !DILocalVariable(name: "__src", arg: 2, scope: !4874, file: !2799, line: 26, type: !1229)
!4880 = !DILocalVariable(name: "__len", arg: 3, scope: !4874, file: !2799, line: 26, type: !262)
!4881 = !DILocation(line: 0, scope: !4874, inlinedAt: !4882)
!4882 = distinct !DILocation(line: 312, column: 10, scope: !4858)
!4883 = !DILocation(line: 29, column: 10, scope: !4874, inlinedAt: !4882)
!4884 = !DILocation(line: 312, column: 3, scope: !4858)
!4885 = distinct !DISubprogram(name: "ximemdup", scope: !928, file: !928, line: 316, type: !4886, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4888)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!259, !1230, !947}
!4888 = !{!4889, !4890}
!4889 = !DILocalVariable(name: "p", arg: 1, scope: !4885, file: !928, line: 316, type: !1230)
!4890 = !DILocalVariable(name: "s", arg: 2, scope: !4885, file: !928, line: 316, type: !947)
!4891 = !DILocation(line: 0, scope: !4885)
!4892 = !DILocation(line: 0, scope: !4564, inlinedAt: !4893)
!4893 = distinct !DILocation(line: 318, column: 18, scope: !4885)
!4894 = !DILocation(line: 0, scope: !4571, inlinedAt: !4895)
!4895 = distinct !DILocation(line: 55, column: 25, scope: !4564, inlinedAt: !4893)
!4896 = !DILocation(line: 57, column: 26, scope: !4571, inlinedAt: !4895)
!4897 = !DILocation(line: 0, scope: !4531, inlinedAt: !4898)
!4898 = distinct !DILocation(line: 55, column: 10, scope: !4564, inlinedAt: !4893)
!4899 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4898)
!4900 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4898)
!4901 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4898)
!4902 = !DILocation(line: 0, scope: !4874, inlinedAt: !4903)
!4903 = distinct !DILocation(line: 318, column: 10, scope: !4885)
!4904 = !DILocation(line: 29, column: 10, scope: !4874, inlinedAt: !4903)
!4905 = !DILocation(line: 318, column: 3, scope: !4885)
!4906 = distinct !DISubprogram(name: "ximemdup0", scope: !928, file: !928, line: 325, type: !4907, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4909)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!258, !1230, !947}
!4909 = !{!4910, !4911, !4912}
!4910 = !DILocalVariable(name: "p", arg: 1, scope: !4906, file: !928, line: 325, type: !1230)
!4911 = !DILocalVariable(name: "s", arg: 2, scope: !4906, file: !928, line: 325, type: !947)
!4912 = !DILocalVariable(name: "result", scope: !4906, file: !928, line: 327, type: !258)
!4913 = !DILocation(line: 0, scope: !4906)
!4914 = !DILocation(line: 327, column: 30, scope: !4906)
!4915 = !DILocation(line: 0, scope: !4564, inlinedAt: !4916)
!4916 = distinct !DILocation(line: 327, column: 18, scope: !4906)
!4917 = !DILocation(line: 0, scope: !4571, inlinedAt: !4918)
!4918 = distinct !DILocation(line: 55, column: 25, scope: !4564, inlinedAt: !4916)
!4919 = !DILocation(line: 57, column: 26, scope: !4571, inlinedAt: !4918)
!4920 = !DILocation(line: 0, scope: !4531, inlinedAt: !4921)
!4921 = distinct !DILocation(line: 55, column: 10, scope: !4564, inlinedAt: !4916)
!4922 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4921)
!4923 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4921)
!4924 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4921)
!4925 = !DILocation(line: 328, column: 3, scope: !4906)
!4926 = !DILocation(line: 328, column: 13, scope: !4906)
!4927 = !DILocation(line: 0, scope: !4874, inlinedAt: !4928)
!4928 = distinct !DILocation(line: 329, column: 10, scope: !4906)
!4929 = !DILocation(line: 29, column: 10, scope: !4874, inlinedAt: !4928)
!4930 = !DILocation(line: 329, column: 3, scope: !4906)
!4931 = distinct !DISubprogram(name: "xstrdup", scope: !928, file: !928, line: 335, type: !1208, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !4932)
!4932 = !{!4933}
!4933 = !DILocalVariable(name: "string", arg: 1, scope: !4931, file: !928, line: 335, type: !265)
!4934 = !DILocation(line: 0, scope: !4931)
!4935 = !DILocation(line: 337, column: 27, scope: !4931)
!4936 = !DILocation(line: 337, column: 43, scope: !4931)
!4937 = !DILocation(line: 0, scope: !4858, inlinedAt: !4938)
!4938 = distinct !DILocation(line: 337, column: 10, scope: !4931)
!4939 = !DILocation(line: 0, scope: !4550, inlinedAt: !4940)
!4940 = distinct !DILocation(line: 312, column: 18, scope: !4858, inlinedAt: !4938)
!4941 = !DILocation(line: 49, column: 25, scope: !4550, inlinedAt: !4940)
!4942 = !DILocation(line: 0, scope: !4531, inlinedAt: !4943)
!4943 = distinct !DILocation(line: 49, column: 10, scope: !4550, inlinedAt: !4940)
!4944 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4943)
!4945 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4943)
!4946 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4943)
!4947 = !DILocation(line: 0, scope: !4874, inlinedAt: !4948)
!4948 = distinct !DILocation(line: 312, column: 10, scope: !4858, inlinedAt: !4938)
!4949 = !DILocation(line: 29, column: 10, scope: !4874, inlinedAt: !4948)
!4950 = !DILocation(line: 337, column: 3, scope: !4931)
!4951 = distinct !DISubprogram(name: "xalloc_die", scope: !882, file: !882, line: 32, type: !647, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !962, retainedNodes: !4952)
!4952 = !{!4953}
!4953 = !DILocalVariable(name: "__errstatus", scope: !4954, file: !882, line: 34, type: !4955)
!4954 = distinct !DILexicalBlock(scope: !4951, file: !882, line: 34, column: 3)
!4955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!4956 = !DILocation(line: 34, column: 3, scope: !4954)
!4957 = !DILocation(line: 0, scope: !4954)
!4958 = !DILocation(line: 40, column: 3, scope: !4951)
!4959 = distinct !DISubprogram(name: "close_stream", scope: !965, file: !965, line: 55, type: !4960, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !4996)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!260, !4962}
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !4964)
!4964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !4965)
!4965 = !{!4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4964, file: !336, line: 51, baseType: !260, size: 32)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4964, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4964, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4964, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4964, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4964, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4964, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4964, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4964, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4964, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4964, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4964, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4964, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4964, file: !336, line: 70, baseType: !4980, size: 64, offset: 832)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4964, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4964, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4964, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4964, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4964, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4964, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4964, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4964, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4964, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4964, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4964, file: !336, line: 93, baseType: !4980, size: 64, offset: 1344)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4964, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4964, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4964, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4964, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!4996 = !{!4997, !4998, !5000, !5001}
!4997 = !DILocalVariable(name: "stream", arg: 1, scope: !4959, file: !965, line: 55, type: !4962)
!4998 = !DILocalVariable(name: "some_pending", scope: !4959, file: !965, line: 57, type: !4999)
!4999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!5000 = !DILocalVariable(name: "prev_fail", scope: !4959, file: !965, line: 58, type: !4999)
!5001 = !DILocalVariable(name: "fclose_fail", scope: !4959, file: !965, line: 59, type: !4999)
!5002 = !DILocation(line: 0, scope: !4959)
!5003 = !DILocation(line: 57, column: 30, scope: !4959)
!5004 = !DILocalVariable(name: "__stream", arg: 1, scope: !5005, file: !2620, line: 135, type: !4962)
!5005 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2620, file: !2620, line: 135, type: !4960, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !5006)
!5006 = !{!5004}
!5007 = !DILocation(line: 0, scope: !5005, inlinedAt: !5008)
!5008 = distinct !DILocation(line: 58, column: 27, scope: !4959)
!5009 = !DILocation(line: 137, column: 10, scope: !5005, inlinedAt: !5008)
!5010 = !{!2629, !1101, i64 0}
!5011 = !DILocation(line: 58, column: 43, scope: !4959)
!5012 = !DILocation(line: 59, column: 29, scope: !4959)
!5013 = !DILocation(line: 59, column: 45, scope: !4959)
!5014 = !DILocation(line: 69, column: 17, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !4959, file: !965, line: 69, column: 7)
!5016 = !DILocation(line: 57, column: 50, scope: !4959)
!5017 = !DILocation(line: 69, column: 33, scope: !5015)
!5018 = !DILocation(line: 69, column: 53, scope: !5015)
!5019 = !DILocation(line: 69, column: 59, scope: !5015)
!5020 = !DILocation(line: 69, column: 7, scope: !4959)
!5021 = !DILocation(line: 71, column: 11, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5015, file: !965, line: 70, column: 5)
!5023 = !DILocation(line: 72, column: 9, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5022, file: !965, line: 71, column: 11)
!5025 = !DILocation(line: 72, column: 15, scope: !5024)
!5026 = !DILocation(line: 77, column: 1, scope: !4959)
!5027 = !DISubprogram(name: "__fpending", scope: !5028, file: !5028, line: 75, type: !5029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5028 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!262, !4962}
!5031 = distinct !DISubprogram(name: "rpl_fclose", scope: !967, file: !967, line: 58, type: !5032, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !5068)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{!260, !5034}
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !5036)
!5036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !5037)
!5037 = !{!5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5036, file: !336, line: 51, baseType: !260, size: 32)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5036, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5036, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5036, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5036, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5036, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5036, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5036, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5036, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5036, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5036, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5036, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5036, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5036, file: !336, line: 70, baseType: !5052, size: 64, offset: 832)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5036, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5036, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5036, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5036, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5036, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5036, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5036, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5036, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5036, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5036, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5036, file: !336, line: 93, baseType: !5052, size: 64, offset: 1344)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5036, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5036, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5036, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5036, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!5068 = !{!5069, !5070, !5071, !5072}
!5069 = !DILocalVariable(name: "fp", arg: 1, scope: !5031, file: !967, line: 58, type: !5034)
!5070 = !DILocalVariable(name: "saved_errno", scope: !5031, file: !967, line: 60, type: !260)
!5071 = !DILocalVariable(name: "fd", scope: !5031, file: !967, line: 63, type: !260)
!5072 = !DILocalVariable(name: "result", scope: !5031, file: !967, line: 74, type: !260)
!5073 = !DILocation(line: 0, scope: !5031)
!5074 = !DILocation(line: 63, column: 12, scope: !5031)
!5075 = !DILocation(line: 64, column: 10, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5031, file: !967, line: 64, column: 7)
!5077 = !DILocation(line: 64, column: 7, scope: !5031)
!5078 = !DILocation(line: 65, column: 12, scope: !5076)
!5079 = !DILocation(line: 65, column: 5, scope: !5076)
!5080 = !DILocation(line: 70, column: 9, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5031, file: !967, line: 70, column: 7)
!5082 = !DILocation(line: 70, column: 23, scope: !5081)
!5083 = !DILocation(line: 70, column: 33, scope: !5081)
!5084 = !DILocation(line: 70, column: 26, scope: !5081)
!5085 = !DILocation(line: 70, column: 59, scope: !5081)
!5086 = !DILocation(line: 71, column: 7, scope: !5081)
!5087 = !DILocation(line: 71, column: 10, scope: !5081)
!5088 = !DILocation(line: 70, column: 7, scope: !5031)
!5089 = !DILocation(line: 100, column: 12, scope: !5031)
!5090 = !DILocation(line: 105, column: 7, scope: !5031)
!5091 = !DILocation(line: 72, column: 19, scope: !5081)
!5092 = !DILocation(line: 105, column: 19, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5031, file: !967, line: 105, column: 7)
!5094 = !DILocation(line: 107, column: 13, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5093, file: !967, line: 106, column: 5)
!5096 = !DILocation(line: 109, column: 5, scope: !5095)
!5097 = !DILocation(line: 112, column: 1, scope: !5031)
!5098 = !DISubprogram(name: "fileno", scope: !609, file: !609, line: 809, type: !5032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5099 = !DISubprogram(name: "fclose", scope: !609, file: !609, line: 178, type: !5032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5100 = !DISubprogram(name: "__freading", scope: !5028, file: !5028, line: 51, type: !5032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5101 = !DISubprogram(name: "lseek", scope: !2432, file: !2432, line: 339, type: !5102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!358, !260, !358, !260}
!5104 = distinct !DISubprogram(name: "rpl_fflush", scope: !969, file: !969, line: 130, type: !5105, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !5141)
!5105 = !DISubroutineType(types: !5106)
!5106 = !{!260, !5107}
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5108 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !5109)
!5109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !5110)
!5110 = !{!5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5109, file: !336, line: 51, baseType: !260, size: 32)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5109, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5109, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5109, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5109, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5109, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5109, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5109, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5109, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5109, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5109, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5109, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5109, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5109, file: !336, line: 70, baseType: !5125, size: 64, offset: 832)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5109, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5109, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5109, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5109, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5109, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5109, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5109, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5109, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5109, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5109, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5109, file: !336, line: 93, baseType: !5125, size: 64, offset: 1344)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5109, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5109, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5109, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5109, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!5141 = !{!5142}
!5142 = !DILocalVariable(name: "stream", arg: 1, scope: !5104, file: !969, line: 130, type: !5107)
!5143 = !DILocation(line: 0, scope: !5104)
!5144 = !DILocation(line: 151, column: 14, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5104, file: !969, line: 151, column: 7)
!5146 = !DILocation(line: 151, column: 22, scope: !5145)
!5147 = !DILocation(line: 151, column: 27, scope: !5145)
!5148 = !DILocation(line: 151, column: 7, scope: !5104)
!5149 = !DILocation(line: 152, column: 12, scope: !5145)
!5150 = !DILocation(line: 152, column: 5, scope: !5145)
!5151 = !DILocalVariable(name: "fp", arg: 1, scope: !5152, file: !969, line: 42, type: !5107)
!5152 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !969, file: !969, line: 42, type: !5153, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !5155)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{null, !5107}
!5155 = !{!5151}
!5156 = !DILocation(line: 0, scope: !5152, inlinedAt: !5157)
!5157 = distinct !DILocation(line: 157, column: 3, scope: !5104)
!5158 = !DILocation(line: 44, column: 12, scope: !5159, inlinedAt: !5157)
!5159 = distinct !DILexicalBlock(scope: !5152, file: !969, line: 44, column: 7)
!5160 = !DILocation(line: 44, column: 19, scope: !5159, inlinedAt: !5157)
!5161 = !DILocation(line: 44, column: 7, scope: !5152, inlinedAt: !5157)
!5162 = !DILocation(line: 46, column: 5, scope: !5159, inlinedAt: !5157)
!5163 = !DILocation(line: 159, column: 10, scope: !5104)
!5164 = !DILocation(line: 159, column: 3, scope: !5104)
!5165 = !DILocation(line: 236, column: 1, scope: !5104)
!5166 = !DISubprogram(name: "fflush", scope: !609, file: !609, line: 230, type: !5105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5167 = distinct !DISubprogram(name: "rpl_fseeko", scope: !971, file: !971, line: 28, type: !5168, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !970, retainedNodes: !5205)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!260, !5170, !5204, !260}
!5170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5171, size: 64)
!5171 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !5172)
!5172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !5173)
!5173 = !{!5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5172, file: !336, line: 51, baseType: !260, size: 32)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5172, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5172, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5172, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5172, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5172, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5172, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5172, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5172, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5172, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5172, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5172, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5172, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5172, file: !336, line: 70, baseType: !5188, size: 64, offset: 832)
!5188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5172, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5172, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5172, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5172, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5172, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5172, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5172, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5172, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5172, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5172, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5172, file: !336, line: 93, baseType: !5188, size: 64, offset: 1344)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5172, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5172, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5172, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5172, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!5204 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !609, line: 63, baseType: !358)
!5205 = !{!5206, !5207, !5208, !5209}
!5206 = !DILocalVariable(name: "fp", arg: 1, scope: !5167, file: !971, line: 28, type: !5170)
!5207 = !DILocalVariable(name: "offset", arg: 2, scope: !5167, file: !971, line: 28, type: !5204)
!5208 = !DILocalVariable(name: "whence", arg: 3, scope: !5167, file: !971, line: 28, type: !260)
!5209 = !DILocalVariable(name: "pos", scope: !5210, file: !971, line: 123, type: !5204)
!5210 = distinct !DILexicalBlock(scope: !5211, file: !971, line: 119, column: 5)
!5211 = distinct !DILexicalBlock(scope: !5167, file: !971, line: 55, column: 7)
!5212 = !DILocation(line: 0, scope: !5167)
!5213 = !DILocation(line: 55, column: 12, scope: !5211)
!5214 = !{!2629, !1001, i64 16}
!5215 = !DILocation(line: 55, column: 33, scope: !5211)
!5216 = !{!2629, !1001, i64 8}
!5217 = !DILocation(line: 55, column: 25, scope: !5211)
!5218 = !DILocation(line: 56, column: 7, scope: !5211)
!5219 = !DILocation(line: 56, column: 15, scope: !5211)
!5220 = !DILocation(line: 56, column: 37, scope: !5211)
!5221 = !{!2629, !1001, i64 32}
!5222 = !DILocation(line: 56, column: 29, scope: !5211)
!5223 = !DILocation(line: 57, column: 7, scope: !5211)
!5224 = !DILocation(line: 57, column: 15, scope: !5211)
!5225 = !{!2629, !1001, i64 72}
!5226 = !DILocation(line: 57, column: 29, scope: !5211)
!5227 = !DILocation(line: 55, column: 7, scope: !5167)
!5228 = !DILocation(line: 123, column: 26, scope: !5210)
!5229 = !DILocation(line: 123, column: 19, scope: !5210)
!5230 = !DILocation(line: 0, scope: !5210)
!5231 = !DILocation(line: 124, column: 15, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5210, file: !971, line: 124, column: 11)
!5233 = !DILocation(line: 124, column: 11, scope: !5210)
!5234 = !DILocation(line: 135, column: 19, scope: !5210)
!5235 = !DILocation(line: 136, column: 12, scope: !5210)
!5236 = !DILocation(line: 136, column: 20, scope: !5210)
!5237 = !{!2629, !1649, i64 144}
!5238 = !DILocation(line: 167, column: 7, scope: !5210)
!5239 = !DILocation(line: 169, column: 10, scope: !5167)
!5240 = !DILocation(line: 169, column: 3, scope: !5167)
!5241 = !DILocation(line: 170, column: 1, scope: !5167)
!5242 = !DISubprogram(name: "fseeko", scope: !609, file: !609, line: 736, type: !5243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5243 = !DISubroutineType(types: !5244)
!5244 = !{!260, !5170, !358, !260}
!5245 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !889, file: !889, line: 100, type: !5246, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !892, retainedNodes: !5249)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!262, !2817, !265, !262, !5248}
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!5249 = !{!5250, !5251, !5252, !5253, !5254}
!5250 = !DILocalVariable(name: "pwc", arg: 1, scope: !5245, file: !889, line: 100, type: !2817)
!5251 = !DILocalVariable(name: "s", arg: 2, scope: !5245, file: !889, line: 100, type: !265)
!5252 = !DILocalVariable(name: "n", arg: 3, scope: !5245, file: !889, line: 100, type: !262)
!5253 = !DILocalVariable(name: "ps", arg: 4, scope: !5245, file: !889, line: 100, type: !5248)
!5254 = !DILocalVariable(name: "ret", scope: !5245, file: !889, line: 130, type: !262)
!5255 = !DILocation(line: 0, scope: !5245)
!5256 = !DILocation(line: 105, column: 9, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5245, file: !889, line: 105, column: 7)
!5258 = !DILocation(line: 105, column: 7, scope: !5245)
!5259 = !DILocation(line: 117, column: 10, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5245, file: !889, line: 117, column: 7)
!5261 = !DILocation(line: 117, column: 7, scope: !5245)
!5262 = !DILocation(line: 130, column: 16, scope: !5245)
!5263 = !DILocation(line: 135, column: 11, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5245, file: !889, line: 135, column: 7)
!5265 = !DILocation(line: 135, column: 25, scope: !5264)
!5266 = !DILocation(line: 135, column: 30, scope: !5264)
!5267 = !DILocation(line: 135, column: 7, scope: !5245)
!5268 = !DILocalVariable(name: "ps", arg: 1, scope: !5269, file: !2790, line: 1135, type: !5248)
!5269 = distinct !DISubprogram(name: "mbszero", scope: !2790, file: !2790, line: 1135, type: !5270, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !892, retainedNodes: !5272)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{null, !5248}
!5272 = !{!5268}
!5273 = !DILocation(line: 0, scope: !5269, inlinedAt: !5274)
!5274 = distinct !DILocation(line: 137, column: 5, scope: !5264)
!5275 = !DILocalVariable(name: "__dest", arg: 1, scope: !5276, file: !2799, line: 57, type: !259)
!5276 = distinct !DISubprogram(name: "memset", scope: !2799, file: !2799, line: 57, type: !2800, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !892, retainedNodes: !5277)
!5277 = !{!5275, !5278, !5279}
!5278 = !DILocalVariable(name: "__ch", arg: 2, scope: !5276, file: !2799, line: 57, type: !260)
!5279 = !DILocalVariable(name: "__len", arg: 3, scope: !5276, file: !2799, line: 57, type: !262)
!5280 = !DILocation(line: 0, scope: !5276, inlinedAt: !5281)
!5281 = distinct !DILocation(line: 1137, column: 3, scope: !5269, inlinedAt: !5274)
!5282 = !DILocation(line: 59, column: 10, scope: !5276, inlinedAt: !5281)
!5283 = !DILocation(line: 137, column: 5, scope: !5264)
!5284 = !DILocation(line: 138, column: 11, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5245, file: !889, line: 138, column: 7)
!5286 = !DILocation(line: 138, column: 7, scope: !5245)
!5287 = !DILocation(line: 139, column: 5, scope: !5285)
!5288 = !DILocation(line: 143, column: 26, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5245, file: !889, line: 143, column: 7)
!5290 = !DILocation(line: 143, column: 41, scope: !5289)
!5291 = !DILocation(line: 143, column: 7, scope: !5245)
!5292 = !DILocation(line: 145, column: 15, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5294, file: !889, line: 145, column: 11)
!5294 = distinct !DILexicalBlock(scope: !5289, file: !889, line: 144, column: 5)
!5295 = !DILocation(line: 145, column: 11, scope: !5294)
!5296 = !DILocation(line: 146, column: 32, scope: !5293)
!5297 = !DILocation(line: 146, column: 16, scope: !5293)
!5298 = !DILocation(line: 146, column: 14, scope: !5293)
!5299 = !DILocation(line: 146, column: 9, scope: !5293)
!5300 = !DILocation(line: 286, column: 1, scope: !5245)
!5301 = !DISubprogram(name: "mbsinit", scope: !5302, file: !5302, line: 293, type: !5303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5302 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5303 = !DISubroutineType(types: !5304)
!5304 = !{!260, !5305}
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!5307 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !973, file: !973, line: 27, type: !4515, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !5308)
!5308 = !{!5309, !5310, !5311, !5312}
!5309 = !DILocalVariable(name: "ptr", arg: 1, scope: !5307, file: !973, line: 27, type: !259)
!5310 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5307, file: !973, line: 27, type: !262)
!5311 = !DILocalVariable(name: "size", arg: 3, scope: !5307, file: !973, line: 27, type: !262)
!5312 = !DILocalVariable(name: "nbytes", scope: !5307, file: !973, line: 29, type: !262)
!5313 = !DILocation(line: 0, scope: !5307)
!5314 = !DILocation(line: 30, column: 7, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5307, file: !973, line: 30, column: 7)
!5316 = !DILocation(line: 30, column: 7, scope: !5307)
!5317 = !DILocation(line: 32, column: 7, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5315, file: !973, line: 31, column: 5)
!5319 = !DILocation(line: 32, column: 13, scope: !5318)
!5320 = !DILocation(line: 33, column: 7, scope: !5318)
!5321 = !DILocalVariable(name: "ptr", arg: 1, scope: !5322, file: !4607, line: 2057, type: !259)
!5322 = distinct !DISubprogram(name: "rpl_realloc", scope: !4607, file: !4607, line: 2057, type: !4599, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !5323)
!5323 = !{!5321, !5324}
!5324 = !DILocalVariable(name: "size", arg: 2, scope: !5322, file: !4607, line: 2057, type: !262)
!5325 = !DILocation(line: 0, scope: !5322, inlinedAt: !5326)
!5326 = distinct !DILocation(line: 37, column: 10, scope: !5307)
!5327 = !DILocation(line: 2059, column: 24, scope: !5322, inlinedAt: !5326)
!5328 = !DILocation(line: 2059, column: 10, scope: !5322, inlinedAt: !5326)
!5329 = !DILocation(line: 37, column: 3, scope: !5307)
!5330 = !DILocation(line: 38, column: 1, scope: !5307)
!5331 = distinct !DISubprogram(name: "hard_locale", scope: !907, file: !907, line: 28, type: !1341, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !974, retainedNodes: !5332)
!5332 = !{!5333, !5334}
!5333 = !DILocalVariable(name: "category", arg: 1, scope: !5331, file: !907, line: 28, type: !260)
!5334 = !DILocalVariable(name: "locale", scope: !5331, file: !907, line: 30, type: !5335)
!5335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5336)
!5336 = !{!5337}
!5337 = !DISubrange(count: 257)
!5338 = distinct !DIAssignID()
!5339 = !DILocation(line: 0, scope: !5331)
!5340 = !DILocation(line: 30, column: 3, scope: !5331)
!5341 = !DILocation(line: 32, column: 7, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5331, file: !907, line: 32, column: 7)
!5343 = !DILocation(line: 32, column: 7, scope: !5331)
!5344 = !DILocalVariable(name: "__s1", arg: 1, scope: !5345, file: !1113, line: 1359, type: !265)
!5345 = distinct !DISubprogram(name: "streq", scope: !1113, file: !1113, line: 1359, type: !1114, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !974, retainedNodes: !5346)
!5346 = !{!5344, !5347}
!5347 = !DILocalVariable(name: "__s2", arg: 2, scope: !5345, file: !1113, line: 1359, type: !265)
!5348 = !DILocation(line: 0, scope: !5345, inlinedAt: !5349)
!5349 = distinct !DILocation(line: 35, column: 9, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5331, file: !907, line: 35, column: 7)
!5351 = !DILocation(line: 1361, column: 11, scope: !5345, inlinedAt: !5349)
!5352 = !DILocation(line: 1361, column: 10, scope: !5345, inlinedAt: !5349)
!5353 = !DILocation(line: 35, column: 29, scope: !5350)
!5354 = !DILocation(line: 0, scope: !5345, inlinedAt: !5355)
!5355 = distinct !DILocation(line: 35, column: 32, scope: !5350)
!5356 = !DILocation(line: 1361, column: 11, scope: !5345, inlinedAt: !5355)
!5357 = !DILocation(line: 1361, column: 10, scope: !5345, inlinedAt: !5355)
!5358 = !DILocation(line: 35, column: 7, scope: !5331)
!5359 = !DILocation(line: 46, column: 3, scope: !5331)
!5360 = !DILocation(line: 47, column: 1, scope: !5331)
!5361 = distinct !DISubprogram(name: "setlocale_null_r", scope: !977, file: !977, line: 154, type: !5362, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !5364)
!5362 = !DISubroutineType(types: !5363)
!5363 = !{!260, !260, !258, !262}
!5364 = !{!5365, !5366, !5367}
!5365 = !DILocalVariable(name: "category", arg: 1, scope: !5361, file: !977, line: 154, type: !260)
!5366 = !DILocalVariable(name: "buf", arg: 2, scope: !5361, file: !977, line: 154, type: !258)
!5367 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5361, file: !977, line: 154, type: !262)
!5368 = !DILocation(line: 0, scope: !5361)
!5369 = !DILocation(line: 159, column: 10, scope: !5361)
!5370 = !DILocation(line: 159, column: 3, scope: !5361)
!5371 = distinct !DISubprogram(name: "setlocale_null", scope: !977, file: !977, line: 186, type: !5372, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !5374)
!5372 = !DISubroutineType(types: !5373)
!5373 = !{!265, !260}
!5374 = !{!5375}
!5375 = !DILocalVariable(name: "category", arg: 1, scope: !5371, file: !977, line: 186, type: !260)
!5376 = !DILocation(line: 0, scope: !5371)
!5377 = !DILocation(line: 189, column: 10, scope: !5371)
!5378 = !DILocation(line: 189, column: 3, scope: !5371)
!5379 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !979, file: !979, line: 35, type: !5372, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !5380)
!5380 = !{!5381, !5382}
!5381 = !DILocalVariable(name: "category", arg: 1, scope: !5379, file: !979, line: 35, type: !260)
!5382 = !DILocalVariable(name: "result", scope: !5379, file: !979, line: 37, type: !265)
!5383 = !DILocation(line: 0, scope: !5379)
!5384 = !DILocation(line: 37, column: 24, scope: !5379)
!5385 = !DILocation(line: 62, column: 3, scope: !5379)
!5386 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !979, file: !979, line: 66, type: !5362, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !5387)
!5387 = !{!5388, !5389, !5390, !5391, !5392}
!5388 = !DILocalVariable(name: "category", arg: 1, scope: !5386, file: !979, line: 66, type: !260)
!5389 = !DILocalVariable(name: "buf", arg: 2, scope: !5386, file: !979, line: 66, type: !258)
!5390 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5386, file: !979, line: 66, type: !262)
!5391 = !DILocalVariable(name: "result", scope: !5386, file: !979, line: 111, type: !265)
!5392 = !DILocalVariable(name: "length", scope: !5393, file: !979, line: 125, type: !262)
!5393 = distinct !DILexicalBlock(scope: !5394, file: !979, line: 124, column: 5)
!5394 = distinct !DILexicalBlock(scope: !5386, file: !979, line: 113, column: 7)
!5395 = !DILocation(line: 0, scope: !5386)
!5396 = !DILocation(line: 0, scope: !5379, inlinedAt: !5397)
!5397 = distinct !DILocation(line: 111, column: 24, scope: !5386)
!5398 = !DILocation(line: 37, column: 24, scope: !5379, inlinedAt: !5397)
!5399 = !DILocation(line: 113, column: 14, scope: !5394)
!5400 = !DILocation(line: 113, column: 7, scope: !5386)
!5401 = !DILocation(line: 116, column: 19, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5403, file: !979, line: 116, column: 11)
!5403 = distinct !DILexicalBlock(scope: !5394, file: !979, line: 114, column: 5)
!5404 = !DILocation(line: 116, column: 11, scope: !5403)
!5405 = !DILocation(line: 120, column: 16, scope: !5402)
!5406 = !DILocation(line: 120, column: 9, scope: !5402)
!5407 = !DILocation(line: 125, column: 23, scope: !5393)
!5408 = !DILocation(line: 0, scope: !5393)
!5409 = !DILocation(line: 126, column: 18, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5393, file: !979, line: 126, column: 11)
!5411 = !DILocation(line: 126, column: 11, scope: !5393)
!5412 = !DILocation(line: 128, column: 39, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5410, file: !979, line: 127, column: 9)
!5414 = !DILocalVariable(name: "__dest", arg: 1, scope: !5415, file: !2799, line: 26, type: !4877)
!5415 = distinct !DISubprogram(name: "memcpy", scope: !2799, file: !2799, line: 26, type: !4875, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !5416)
!5416 = !{!5414, !5417, !5418}
!5417 = !DILocalVariable(name: "__src", arg: 2, scope: !5415, file: !2799, line: 26, type: !1229)
!5418 = !DILocalVariable(name: "__len", arg: 3, scope: !5415, file: !2799, line: 26, type: !262)
!5419 = !DILocation(line: 0, scope: !5415, inlinedAt: !5420)
!5420 = distinct !DILocation(line: 128, column: 11, scope: !5413)
!5421 = !DILocation(line: 29, column: 10, scope: !5415, inlinedAt: !5420)
!5422 = !DILocation(line: 129, column: 11, scope: !5413)
!5423 = !DILocation(line: 133, column: 23, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5425, file: !979, line: 133, column: 15)
!5425 = distinct !DILexicalBlock(scope: !5410, file: !979, line: 132, column: 9)
!5426 = !DILocation(line: 133, column: 15, scope: !5425)
!5427 = !DILocation(line: 138, column: 44, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5424, file: !979, line: 134, column: 13)
!5429 = !DILocation(line: 0, scope: !5415, inlinedAt: !5430)
!5430 = distinct !DILocation(line: 138, column: 15, scope: !5428)
!5431 = !DILocation(line: 29, column: 10, scope: !5415, inlinedAt: !5430)
!5432 = !DILocation(line: 139, column: 15, scope: !5428)
!5433 = !DILocation(line: 139, column: 32, scope: !5428)
!5434 = !DILocation(line: 140, column: 13, scope: !5428)
!5435 = !DILocation(line: 0, scope: !5394)
!5436 = !DILocation(line: 145, column: 1, scope: !5386)
