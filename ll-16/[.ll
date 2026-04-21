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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !638
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !603
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !628
@.str.1.78 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !630
@.str.2.80 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !632
@.str.3.79 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !634
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !636
@.str.4.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !640
@.str.5.74 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !642
@.str.6.75 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !645
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !650
@.str.121 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !656
@.str.1.122 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !658
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !660
@.str.125 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !691
@.str.1.126 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !694
@.str.2.127 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !696
@.str.3.128 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !701
@.str.4.129 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !703
@.str.5.130 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !705
@.str.6.131 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !707
@.str.7.132 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !709
@.str.8.133 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !711
@.str.9.134 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !713
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.125, ptr @.str.1.126, ptr @.str.2.127, ptr @.str.3.128, ptr @.str.4.129, ptr @.str.5.130, ptr @.str.6.131, ptr @.str.7.132, ptr @.str.8.133, ptr @.str.9.134, ptr null], align 8, !dbg !715
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !740
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !754
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !792
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !799
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !756
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !801
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !744
@.str.10.137 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !761
@.str.11.135 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !763
@.str.12.138 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !765
@.str.13.136 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !767
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !769
@.str.147 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !805
@.str.1.148 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !808
@.str.2.149 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !810
@.str.3.150 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !812
@.str.4.151 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !814
@.str.5.152 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !816
@.str.6.153 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !821
@.str.7.154 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !826
@.str.8.155 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !828
@.str.9.156 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !830
@.str.10.157 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !832
@.str.11.158 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !837
@.str.12.159 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !842
@.str.13.160 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !844
@.str.14.161 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !849
@.str.15.162 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !851
@.str.16.163 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !853
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.168 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !855
@.str.18.169 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !857
@.str.19.170 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !859
@.str.20.171 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !861
@.str.21.172 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !863
@.str.22.173 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !865
@.str.23.174 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !867
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !869
@exit_failure = dso_local global i32 1, align 4, !dbg !875
@.str.187 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !881
@.str.1.185 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !884
@.str.2.186 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !886
@.str.198 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !888
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !891
@.str.203 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !906
@.str.1.204 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !909

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !989 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !993, metadata !DIExpression()), !dbg !994
  %2 = icmp eq i32 %0, 0, !dbg !995
  br i1 %2, label %8, label %3, !dbg !997

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !998, !tbaa !1000
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !998
  %6 = load ptr, ptr @program_name, align 8, !dbg !998, !tbaa !1000
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !998
  br label %98, !dbg !998

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !1004
  %10 = load ptr, ptr @stdout, align 8, !dbg !1004, !tbaa !1000
  %11 = tail call i32 @fputs_unlocked(ptr noundef %9, ptr noundef %10), !dbg !1004
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !1006
  %13 = load ptr, ptr @stdout, align 8, !dbg !1006, !tbaa !1000
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1006
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !1007
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !1007
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !1008
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !1008
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !1009
  %18 = load ptr, ptr @stdout, align 8, !dbg !1009, !tbaa !1000
  %19 = tail call i32 @fputs_unlocked(ptr noundef %17, ptr noundef %18), !dbg !1009
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !1010
  %21 = load ptr, ptr @stdout, align 8, !dbg !1010, !tbaa !1000
  %22 = tail call i32 @fputs_unlocked(ptr noundef %20, ptr noundef %21), !dbg !1010
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !1011
  %24 = load ptr, ptr @stdout, align 8, !dbg !1011, !tbaa !1000
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !1011
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !1012
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1012
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #39, !dbg !1013
  %28 = load ptr, ptr @stdout, align 8, !dbg !1013, !tbaa !1000
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !1013
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #39, !dbg !1014
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !1014
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #39, !dbg !1015
  %32 = load ptr, ptr @stdout, align 8, !dbg !1015, !tbaa !1000
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !1015
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !1016
  %35 = load ptr, ptr @stdout, align 8, !dbg !1016, !tbaa !1000
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !1016
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #39, !dbg !1017
  tail call fastcc void @oputs_(ptr noundef %37), !dbg !1017
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #39, !dbg !1018
  tail call fastcc void @oputs_(ptr noundef %38), !dbg !1018
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #39, !dbg !1019
  tail call fastcc void @oputs_(ptr noundef %39), !dbg !1019
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !1020
  tail call fastcc void @oputs_(ptr noundef %40), !dbg !1020
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #39, !dbg !1021
  tail call fastcc void @oputs_(ptr noundef %41), !dbg !1021
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #39, !dbg !1022
  tail call fastcc void @oputs_(ptr noundef %42), !dbg !1022
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !1023
  %44 = load ptr, ptr @stdout, align 8, !dbg !1023, !tbaa !1000
  %45 = tail call i32 @fputs_unlocked(ptr noundef %43, ptr noundef %44), !dbg !1023
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #39, !dbg !1024
  tail call fastcc void @oputs_(ptr noundef %46), !dbg !1024
  %47 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #39, !dbg !1025
  tail call fastcc void @oputs_(ptr noundef %47), !dbg !1025
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #39, !dbg !1026
  tail call fastcc void @oputs_(ptr noundef %48), !dbg !1026
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !1027
  %50 = load ptr, ptr @stdout, align 8, !dbg !1027, !tbaa !1000
  %51 = tail call i32 @fputs_unlocked(ptr noundef %49, ptr noundef %50), !dbg !1027
  %52 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !1028
  tail call fastcc void @oputs_(ptr noundef %52), !dbg !1028
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #39, !dbg !1029
  tail call fastcc void @oputs_(ptr noundef %53), !dbg !1029
  %54 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #39, !dbg !1030
  tail call fastcc void @oputs_(ptr noundef %54), !dbg !1030
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #39, !dbg !1031
  tail call fastcc void @oputs_(ptr noundef %55), !dbg !1031
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #39, !dbg !1032
  tail call fastcc void @oputs_(ptr noundef %56), !dbg !1032
  %57 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #39, !dbg !1033
  tail call fastcc void @oputs_(ptr noundef %57), !dbg !1033
  %58 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #39, !dbg !1034
  tail call fastcc void @oputs_(ptr noundef %58), !dbg !1034
  %59 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #39, !dbg !1035
  tail call fastcc void @oputs_(ptr noundef %59), !dbg !1035
  %60 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #39, !dbg !1036
  tail call fastcc void @oputs_(ptr noundef %60), !dbg !1036
  %61 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #39, !dbg !1037
  tail call fastcc void @oputs_(ptr noundef %61), !dbg !1037
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #39, !dbg !1038
  tail call fastcc void @oputs_(ptr noundef %62), !dbg !1038
  %63 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #39, !dbg !1039
  tail call fastcc void @oputs_(ptr noundef %63), !dbg !1039
  %64 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #39, !dbg !1040
  tail call fastcc void @oputs_(ptr noundef %64), !dbg !1040
  %65 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #39, !dbg !1041
  tail call fastcc void @oputs_(ptr noundef %65), !dbg !1041
  %66 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #39, !dbg !1042
  tail call fastcc void @oputs_(ptr noundef %66), !dbg !1042
  %67 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #39, !dbg !1043
  tail call fastcc void @oputs_(ptr noundef %67), !dbg !1043
  %68 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #39, !dbg !1044
  tail call fastcc void @oputs_(ptr noundef %68), !dbg !1044
  %69 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #39, !dbg !1045
  tail call fastcc void @oputs_(ptr noundef %69), !dbg !1045
  %70 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #39, !dbg !1046
  tail call fastcc void @oputs_(ptr noundef %70), !dbg !1046
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #39, !dbg !1047
  tail call fastcc void @oputs_(ptr noundef %71), !dbg !1047
  %72 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #39, !dbg !1048
  %73 = load ptr, ptr @stdout, align 8, !dbg !1048, !tbaa !1000
  %74 = tail call i32 @fputs_unlocked(ptr noundef %72, ptr noundef %73), !dbg !1048
  %75 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #39, !dbg !1049
  %76 = load ptr, ptr @stdout, align 8, !dbg !1049, !tbaa !1000
  %77 = tail call i32 @fputs_unlocked(ptr noundef %75, ptr noundef %76), !dbg !1049
  %78 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #39, !dbg !1050
  %79 = load ptr, ptr @stdout, align 8, !dbg !1050, !tbaa !1000
  %80 = tail call i32 @fputs_unlocked(ptr noundef %78, ptr noundef %79), !dbg !1050
  %81 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #39, !dbg !1051
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #39, !dbg !1051
  %83 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %81, ptr noundef %82) #39, !dbg !1051
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1052, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1064, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata ptr poison, metadata !1064, metadata !DIExpression()), !dbg !1069
  tail call void @emit_bug_reporting_address() #39, !dbg !1071
  %84 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !1072
  call void @llvm.dbg.value(metadata ptr %84, metadata !1067, metadata !DIExpression()), !dbg !1069
  %85 = icmp eq ptr %84, null, !dbg !1073
  br i1 %85, label %93, label %86, !dbg !1075

86:                                               ; preds = %8
  %87 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(4) @.str.85, i64 noundef 3) #40, !dbg !1076
  %88 = icmp eq i32 %87, 0, !dbg !1076
  br i1 %88, label %93, label %89, !dbg !1077

89:                                               ; preds = %86
  %90 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef 5) #39, !dbg !1078
  %91 = load ptr, ptr @stdout, align 8, !dbg !1078, !tbaa !1000
  %92 = tail call i32 @fputs_unlocked(ptr noundef %90, ptr noundef %91), !dbg !1078
  br label %93, !dbg !1080

93:                                               ; preds = %8, %86, %89
  call void @llvm.dbg.value(metadata ptr @.str.82, metadata !1064, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata ptr @.str.62, metadata !1068, metadata !DIExpression()), !dbg !1069
  %94 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.87, i32 noundef 5) #39, !dbg !1081
  %95 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %94, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.62) #39, !dbg !1081
  %96 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.88, i32 noundef 5) #39, !dbg !1082
  %97 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %96, ptr noundef nonnull @.str.82, ptr noundef nonnull select (i1 icmp eq (ptr @.str.82, ptr @.str.3), ptr @.str.89, ptr @.str.47)) #39, !dbg !1082
  br label %98

98:                                               ; preds = %93, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !1083
  unreachable, !dbg !1083
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1084 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1089 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1095 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !308 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !313, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata ptr %0, metadata !314, metadata !DIExpression()), !dbg !1098
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1099, !tbaa !1100
  %3 = icmp eq i32 %2, -1, !dbg !1102
  br i1 %3, label %4, label %16, !dbg !1103

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.58) #39, !dbg !1104
  call void @llvm.dbg.value(metadata ptr %5, metadata !315, metadata !DIExpression()), !dbg !1105
  %6 = icmp eq ptr %5, null, !dbg !1106
  br i1 %6, label %14, label %7, !dbg !1107

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1108, !tbaa !1109
  %9 = icmp eq i8 %8, 0, !dbg !1108
  br i1 %9, label %14, label %10, !dbg !1110

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1111, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata ptr @.str.59, metadata !1117, metadata !DIExpression()), !dbg !1118
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.59) #40, !dbg !1120
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
  br label %122, !dbg !1129

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !318, metadata !DIExpression()), !dbg !1098
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.60) #40, !dbg !1130
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1131
  call void @llvm.dbg.value(metadata ptr %24, metadata !320, metadata !DIExpression()), !dbg !1098
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !1132
  call void @llvm.dbg.value(metadata ptr %25, metadata !321, metadata !DIExpression()), !dbg !1098
  %26 = icmp eq ptr %25, null, !dbg !1133
  br i1 %26, label %54, label %27, !dbg !1134

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1135
  br i1 %28, label %54, label %29, !dbg !1136

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !322, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.value(metadata i64 0, metadata !326, metadata !DIExpression()), !dbg !1137
  %30 = icmp ult ptr %24, %25, !dbg !1138
  br i1 %30, label %31, label %52, !dbg !1139

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !1098
  %33 = load ptr, ptr %32, align 8, !tbaa !1000
  br label %34, !dbg !1139

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !322, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.value(metadata i64 %36, metadata !326, metadata !DIExpression()), !dbg !1137
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1140
  call void @llvm.dbg.value(metadata ptr %37, metadata !322, metadata !DIExpression()), !dbg !1137
  %38 = load i8, ptr %35, align 1, !dbg !1140, !tbaa !1109
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1140
  %41 = load i16, ptr %40, align 2, !dbg !1140, !tbaa !1141
  %42 = freeze i16 %41, !dbg !1143
  %43 = lshr i16 %42, 13, !dbg !1143
  %44 = and i16 %43, 1, !dbg !1143
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1144
  call void @llvm.dbg.value(metadata i64 %46, metadata !326, metadata !DIExpression()), !dbg !1137
  %47 = icmp ult ptr %37, %25, !dbg !1138
  %48 = icmp ult i64 %46, 2, !dbg !1145
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1145
  br i1 %49, label %34, label %50, !dbg !1139, !llvm.loop !1146

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1148
  br i1 %51, label %52, label %54, !dbg !1150

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1150

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !1098
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !318, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata ptr %55, metadata !321, metadata !DIExpression()), !dbg !1098
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.61) #40, !dbg !1151
  call void @llvm.dbg.value(metadata i64 %57, metadata !327, metadata !DIExpression()), !dbg !1098
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1152
  call void @llvm.dbg.value(metadata ptr %58, metadata !328, metadata !DIExpression()), !dbg !1098
  br label %59, !dbg !1153

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !1098
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !318, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata ptr %60, metadata !328, metadata !DIExpression()), !dbg !1098
  %62 = load i8, ptr %60, align 1, !dbg !1154, !tbaa !1109
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1155

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1156
  %65 = load i8, ptr %64, align 1, !dbg !1159, !tbaa !1109
  %66 = icmp ne i8 %65, 45, !dbg !1160
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1161
  br label %68, !dbg !1161

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !318, metadata !DIExpression()), !dbg !1098
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !1162
  %71 = load ptr, ptr %70, align 8, !dbg !1162, !tbaa !1000
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1162
  %74 = load i16, ptr %73, align 2, !dbg !1162, !tbaa !1141
  %75 = and i16 %74, 8192, !dbg !1162
  %76 = icmp eq i16 %75, 0, !dbg !1162
  br i1 %76, label %90, label %77, !dbg !1164

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1165
  br i1 %78, label %92, label %79, !dbg !1168

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1169
  %81 = load i8, ptr %80, align 1, !dbg !1169, !tbaa !1109
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1169
  %84 = load i16, ptr %83, align 2, !dbg !1169, !tbaa !1141
  %85 = and i16 %84, 8192, !dbg !1169
  %86 = icmp eq i16 %85, 0, !dbg !1169
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1170
  br i1 %89, label %90, label %92, !dbg !1170

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1171
  call void @llvm.dbg.value(metadata ptr %91, metadata !328, metadata !DIExpression()), !dbg !1098
  br label %59, !dbg !1153, !llvm.loop !1172

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1174
  %94 = load ptr, ptr @stdout, align 8, !dbg !1174, !tbaa !1000
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1174
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1111, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1117, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata ptr @.str.62, metadata !383, metadata !DIExpression()), !dbg !1098
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.50, i64 noundef 6) #40, !dbg !1177
  %97 = icmp eq i32 %96, 0, !dbg !1177
  br i1 %97, label %101, label %98, !dbg !1179

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.51, i64 noundef 9) #40, !dbg !1180
  %100 = icmp eq i32 %99, 0, !dbg !1180
  br i1 %100, label %101, label %104, !dbg !1181

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1182
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.62, i32 noundef %102, ptr noundef %55) #39, !dbg !1182
  br label %107, !dbg !1184

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1185
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.62, i32 noundef %105, ptr noundef %55) #39, !dbg !1185
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1187, !tbaa !1000
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.78, ptr noundef %108), !dbg !1187
  %110 = load ptr, ptr @stdout, align 8, !dbg !1188, !tbaa !1000
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.79, ptr noundef %110), !dbg !1188
  %112 = ptrtoint ptr %60 to i64, !dbg !1189
  %113 = sub i64 %112, %93, !dbg !1189
  %114 = load ptr, ptr @stdout, align 8, !dbg !1189, !tbaa !1000
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1189
  %116 = load ptr, ptr @stdout, align 8, !dbg !1190, !tbaa !1000
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.80, ptr noundef %116), !dbg !1190
  %118 = load ptr, ptr @stdout, align 8, !dbg !1191, !tbaa !1000
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.81, ptr noundef %118), !dbg !1191
  %120 = load ptr, ptr @stdout, align 8, !dbg !1192, !tbaa !1000
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1192
  br label %122, !dbg !1193

122:                                              ; preds = %107, %19
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !1236, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata ptr %1, metadata !1237, metadata !DIExpression()), !dbg !1239
  %3 = load ptr, ptr %1, align 8, !dbg !1240, !tbaa !1000
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1241
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.47) #39, !dbg !1242
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #39, !dbg !1243
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.48) #39, !dbg !1244
  call void @llvm.dbg.value(metadata i32 2, metadata !1245, metadata !DIExpression()), !dbg !1248
  store volatile i32 2, ptr @exit_failure, align 4, !dbg !1250, !tbaa !1100
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1252
  store ptr %1, ptr @argv, align 8, !dbg !1253, !tbaa !1000
  %8 = icmp eq i32 %0, 2, !dbg !1254
  br i1 %8, label %9, label %23, !dbg !1258

9:                                                ; preds = %2
  %10 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1259
  %11 = load ptr, ptr %10, align 8, !dbg !1259, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %11, metadata !1111, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata ptr @.str.50, metadata !1117, metadata !DIExpression()), !dbg !1262
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(7) @.str.50) #40, !dbg !1264
  %13 = icmp eq i32 %12, 0, !dbg !1265
  br i1 %13, label %14, label %15, !dbg !1266

14:                                               ; preds = %9
  tail call void @usage(i32 noundef 0) #43, !dbg !1267
  unreachable, !dbg !1267

15:                                               ; preds = %9
  call void @llvm.dbg.value(metadata ptr %11, metadata !1111, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata ptr @.str.51, metadata !1117, metadata !DIExpression()), !dbg !1268
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(10) @.str.51) #40, !dbg !1271
  %17 = icmp eq i32 %16, 0, !dbg !1272
  br i1 %17, label %18, label %25, !dbg !1273

18:                                               ; preds = %15
  %19 = load ptr, ptr @stdout, align 8, !dbg !1274, !tbaa !1000
  %20 = load ptr, ptr @Version, align 8, !dbg !1276, !tbaa !1000
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.53) #39, !dbg !1277
  %22 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.54) #39, !dbg !1277
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef null) #39, !dbg !1278
  br label %54, !dbg !1279

23:                                               ; preds = %2
  %24 = icmp slt i32 %0, 2, !dbg !1280
  br i1 %24, label %32, label %25, !dbg !1282

25:                                               ; preds = %15, %23
  %26 = add nsw i32 %0, -1, !dbg !1283
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %1, i64 %27, !dbg !1284
  %29 = load ptr, ptr %28, align 8, !dbg !1284, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %29, metadata !1111, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata ptr @.str.55, metadata !1117, metadata !DIExpression()), !dbg !1285
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(2) @.str.55) #40, !dbg !1287
  %31 = icmp eq i32 %30, 0, !dbg !1288
  br i1 %31, label %35, label %32, !dbg !1289

32:                                               ; preds = %25, %23
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #39, !dbg !1290
  %34 = tail call ptr @quote(ptr noundef nonnull @.str.55) #39, !dbg !1291
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %33, ptr noundef %34) #43, !dbg !1292
  unreachable, !dbg !1292

35:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 %26, metadata !1236, metadata !DIExpression()), !dbg !1239
  store i32 %26, ptr @argc, align 4, !dbg !1293, !tbaa !1100
  store i32 1, ptr @pos, align 4, !dbg !1294, !tbaa !1100
  %36 = icmp ult i32 %0, 3, !dbg !1295
  br i1 %36, label %54, label %37, !dbg !1297

37:                                               ; preds = %35
  %38 = add nsw i32 %0, -2, !dbg !1298
  %39 = tail call fastcc i1 @posixtest(i32 noundef %38), !dbg !1299
  call void @llvm.dbg.value(metadata i1 %39, metadata !1238, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1239
  %40 = load i32, ptr @pos, align 4, !dbg !1300, !tbaa !1100
  %41 = load i32, ptr @argc, align 4, !dbg !1302, !tbaa !1100
  %42 = icmp eq i32 %40, %41, !dbg !1303
  br i1 %42, label %51, label %43, !dbg !1304

43:                                               ; preds = %37
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #39, !dbg !1305
  %45 = load ptr, ptr @argv, align 8, !dbg !1306, !tbaa !1000
  %46 = load i32, ptr @pos, align 4, !dbg !1307, !tbaa !1100
  %47 = sext i32 %46 to i64, !dbg !1306
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47, !dbg !1306
  %49 = load ptr, ptr %48, align 8, !dbg !1306, !tbaa !1000
  %50 = tail call ptr @quote(ptr noundef %49) #39, !dbg !1308
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %44, ptr noundef %50) #43, !dbg !1309
  unreachable, !dbg !1309

51:                                               ; preds = %37
  %52 = xor i1 %39, true, !dbg !1310
  %53 = zext i1 %52 to i32, !dbg !1310
  br label %54, !dbg !1310

54:                                               ; preds = %35, %51, %18
  %55 = phi i32 [ 0, %18 ], [ %53, %51 ], [ 1, %35 ], !dbg !1239
  ret i32 %55, !dbg !1311
}

; Function Attrs: nounwind
declare !dbg !1312 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1315 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1316 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal void @test_syntax_error(ptr noundef %0, ...) unnamed_addr #0 !dbg !1319 {
  %2 = alloca %struct.__va_list, align 8
  %3 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1323, metadata !DIExpression()), !dbg !1335
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #39, !dbg !1336
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1324, metadata !DIExpression()), !dbg !1337
  call void @llvm.va_start(ptr nonnull %2), !dbg !1338
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39, !dbg !1339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !1339, !tbaa.struct !1340
  call void @verror(i32 noundef 0, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %3) #44, !dbg !1339
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39, !dbg !1339
  call void @exit(i32 noundef 2) #41, !dbg !1341
  unreachable, !dbg !1341
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @posixtest(i32 noundef %0) unnamed_addr #10 !dbg !1342 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1346, metadata !DIExpression()), !dbg !1348
  switch i32 %0, label %102 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %41
    i32 4, label %43
  ], !dbg !1349

2:                                                ; preds = %1
  %3 = load ptr, ptr @argv, align 8, !dbg !1350, !tbaa !1000
  %4 = load i32, ptr @pos, align 4, !dbg !1356, !tbaa !1100
  %5 = add nsw i32 %4, 1, !dbg !1356
  store i32 %5, ptr @pos, align 4, !dbg !1356, !tbaa !1100
  %6 = sext i32 %4 to i64, !dbg !1350
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6, !dbg !1350
  %8 = load ptr, ptr %7, align 8, !dbg !1350, !tbaa !1000
  %9 = load i8, ptr %8, align 1, !dbg !1350, !tbaa !1109
  %10 = icmp ne i8 %9, 0, !dbg !1357
  call void @llvm.dbg.value(metadata i1 %10, metadata !1347, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1348
  br label %114, !dbg !1358

11:                                               ; preds = %1
  %12 = load ptr, ptr @argv, align 8, !dbg !1359, !tbaa !1000
  %13 = load i32, ptr @pos, align 4, !dbg !1365, !tbaa !1100
  %14 = sext i32 %13 to i64, !dbg !1359
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14, !dbg !1359
  %16 = load ptr, ptr %15, align 8, !dbg !1359, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %16, metadata !1111, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1117, metadata !DIExpression()), !dbg !1366
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(2) @.str.90) #40, !dbg !1368
  %18 = icmp eq i32 %17, 0, !dbg !1369
  br i1 %18, label %19, label %27, !dbg !1370

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 false, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1376
  %20 = add nsw i32 %13, 1, !dbg !1379
  %21 = add nsw i32 %13, 2, !dbg !1380
  store i32 %21, ptr @pos, align 4, !dbg !1380, !tbaa !1100
  %22 = sext i32 %20 to i64, !dbg !1382
  %23 = getelementptr inbounds ptr, ptr %12, i64 %22, !dbg !1382
  %24 = load ptr, ptr %23, align 8, !dbg !1382, !tbaa !1000
  %25 = load i8, ptr %24, align 1, !dbg !1382, !tbaa !1109
  %26 = icmp eq i8 %25, 0, !dbg !1383
  call void @llvm.dbg.value(metadata i1 %26, metadata !1363, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1384
  br label %114, !dbg !1385

27:                                               ; preds = %11
  %28 = load i8, ptr %16, align 1, !dbg !1386, !tbaa !1109
  %29 = icmp eq i8 %28, 45, !dbg !1388
  br i1 %29, label %30, label %40, !dbg !1389

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1390
  %32 = load i8, ptr %31, align 1, !dbg !1390, !tbaa !1109
  %33 = icmp eq i8 %32, 0, !dbg !1391
  br i1 %33, label %40, label %34, !dbg !1392

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %16, i64 2, !dbg !1393
  %36 = load i8, ptr %35, align 1, !dbg !1393, !tbaa !1109
  %37 = icmp eq i8 %36, 0, !dbg !1394
  br i1 %37, label %38, label %40, !dbg !1395

38:                                               ; preds = %34
  %39 = tail call fastcc i1 @unary_operator(), !dbg !1396
  call void @llvm.dbg.value(metadata i1 %39, metadata !1363, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1384
  br label %114

40:                                               ; preds = %34, %30, %27
  tail call fastcc void @beyond() #43, !dbg !1398
  unreachable, !dbg !1398

41:                                               ; preds = %1
  %42 = tail call fastcc i1 @three_arguments(), !dbg !1399
  call void @llvm.dbg.value(metadata i1 %42, metadata !1347, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1348
  br label %114, !dbg !1400

43:                                               ; preds = %1
  %44 = load ptr, ptr @argv, align 8, !dbg !1401, !tbaa !1000
  %45 = load i32, ptr @pos, align 4, !dbg !1403, !tbaa !1100
  %46 = sext i32 %45 to i64, !dbg !1401
  %47 = getelementptr inbounds ptr, ptr %44, i64 %46, !dbg !1401
  %48 = load ptr, ptr %47, align 8, !dbg !1401, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %48, metadata !1111, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1117, metadata !DIExpression()), !dbg !1404
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(2) @.str.90) #40, !dbg !1406
  %50 = icmp eq i32 %49, 0, !dbg !1407
  br i1 %50, label %51, label %59, !dbg !1408

51:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1409
  %52 = add nsw i32 %45, 1, !dbg !1412
  store i32 %52, ptr @pos, align 4, !dbg !1412, !tbaa !1100
  %53 = load i32, ptr @argc, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %56, label %55, !dbg !1413

55:                                               ; preds = %51
  tail call fastcc void @beyond(), !dbg !1415
  unreachable, !dbg !1415

56:                                               ; preds = %51
  %57 = tail call fastcc i1 @three_arguments(), !dbg !1416
  %58 = xor i1 %57, true, !dbg !1417
  call void @llvm.dbg.value(metadata i1 %58, metadata !1347, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1348
  br label %114, !dbg !1418

59:                                               ; preds = %43
  call void @llvm.dbg.value(metadata ptr %48, metadata !1111, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata ptr @.str.91, metadata !1117, metadata !DIExpression()), !dbg !1419
  %60 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(2) @.str.91) #40, !dbg !1422
  %61 = icmp eq i32 %60, 0, !dbg !1423
  br i1 %61, label %62, label %107, !dbg !1424

62:                                               ; preds = %59
  %63 = add nsw i32 %45, 3, !dbg !1425
  %64 = sext i32 %63 to i64, !dbg !1426
  %65 = getelementptr inbounds ptr, ptr %44, i64 %64, !dbg !1426
  %66 = load ptr, ptr %65, align 8, !dbg !1426, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %66, metadata !1111, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1117, metadata !DIExpression()), !dbg !1427
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(2) @.str.92) #40, !dbg !1429
  %68 = icmp eq i32 %67, 0, !dbg !1430
  br i1 %68, label %69, label %107, !dbg !1431

69:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i1 false, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1432
  %70 = add nsw i32 %45, 1, !dbg !1435
  store i32 %70, ptr @pos, align 4, !dbg !1435, !tbaa !1100
  %71 = sext i32 %70 to i64, !dbg !1436
  %72 = getelementptr inbounds ptr, ptr %44, i64 %71, !dbg !1436
  %73 = load ptr, ptr %72, align 8, !dbg !1436, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %73, metadata !1111, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1117, metadata !DIExpression()), !dbg !1438
  %74 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(2) @.str.90) #40, !dbg !1440
  %75 = icmp eq i32 %74, 0, !dbg !1441
  br i1 %75, label %76, label %83, !dbg !1442

76:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i1 false, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1443
  %77 = add nsw i32 %45, 2, !dbg !1445
  %78 = sext i32 %77 to i64, !dbg !1446
  %79 = getelementptr inbounds ptr, ptr %44, i64 %78, !dbg !1446
  %80 = load ptr, ptr %79, align 8, !dbg !1446, !tbaa !1000
  %81 = load i8, ptr %80, align 1, !dbg !1446, !tbaa !1109
  %82 = icmp eq i8 %81, 0, !dbg !1448
  call void @llvm.dbg.value(metadata i1 %82, metadata !1363, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1449
  br label %98, !dbg !1450

83:                                               ; preds = %69
  %84 = load i8, ptr %73, align 1, !dbg !1451, !tbaa !1109
  %85 = icmp eq i8 %84, 45, !dbg !1452
  br i1 %85, label %86, label %97, !dbg !1453

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, ptr %73, i64 1, !dbg !1454
  %88 = load i8, ptr %87, align 1, !dbg !1454, !tbaa !1109
  %89 = icmp eq i8 %88, 0, !dbg !1455
  br i1 %89, label %97, label %90, !dbg !1456

90:                                               ; preds = %86
  %91 = getelementptr inbounds i8, ptr %73, i64 2, !dbg !1457
  %92 = load i8, ptr %91, align 1, !dbg !1457, !tbaa !1109
  %93 = icmp eq i8 %92, 0, !dbg !1458
  br i1 %93, label %94, label %97, !dbg !1459

94:                                               ; preds = %90
  %95 = tail call fastcc i1 @unary_operator(), !dbg !1460
  call void @llvm.dbg.value(metadata i1 %95, metadata !1363, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1449
  %96 = load i32, ptr @pos, align 4, !dbg !1461, !tbaa !1100
  br label %98

97:                                               ; preds = %90, %86, %83
  tail call fastcc void @beyond() #43, !dbg !1463
  unreachable, !dbg !1463

98:                                               ; preds = %76, %94
  %99 = phi i32 [ %63, %76 ], [ %96, %94 ], !dbg !1461
  %100 = phi i1 [ %82, %76 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i1 %100, metadata !1363, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1449
  call void @llvm.dbg.value(metadata i1 %100, metadata !1347, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1348
  call void @llvm.dbg.value(metadata i1 false, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1464
  %101 = add nsw i32 %99, 1, !dbg !1461
  store i32 %101, ptr @pos, align 4, !dbg !1461, !tbaa !1100
  br label %114, !dbg !1465

102:                                              ; preds = %1
  %103 = icmp sgt i32 %0, 0, !dbg !1466
  br i1 %103, label %104, label %106, !dbg !1469

104:                                              ; preds = %102
  %105 = load i32, ptr @pos, align 4, !dbg !1470, !tbaa !1100
  br label %107, !dbg !1469

106:                                              ; preds = %102
  tail call void @__assert_fail(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef 651, ptr noundef nonnull @__PRETTY_FUNCTION__.posixtest) #41, !dbg !1466
  unreachable, !dbg !1466

107:                                              ; preds = %104, %59, %62
  %108 = phi i32 [ %105, %104 ], [ %45, %59 ], [ %45, %62 ], !dbg !1470
  %109 = load i32, ptr @argc, align 4, !dbg !1474, !tbaa !1100
  %110 = icmp slt i32 %108, %109, !dbg !1475
  br i1 %110, label %112, label %111, !dbg !1476

111:                                              ; preds = %107
  tail call fastcc void @beyond() #43, !dbg !1477
  unreachable, !dbg !1477

112:                                              ; preds = %107
  %113 = tail call fastcc i1 @or(), !dbg !1478
  call void @llvm.dbg.value(metadata i1 %113, metadata !1347, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1348
  br label %114, !dbg !1479

114:                                              ; preds = %38, %19, %112, %98, %56, %41, %2
  %115 = phi i1 [ %113, %112 ], [ %58, %56 ], [ %100, %98 ], [ %42, %41 ], [ %10, %2 ], [ %26, %19 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i1 %115, metadata !1347, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1348
  ret i1 %115, !dbg !1480
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @unary_operator() unnamed_addr #10 !dbg !1481 {
  %1 = alloca [1 x i8], align 1
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #39, !dbg !1534
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1483, metadata !DIExpression()), !dbg !1535
  %3 = load ptr, ptr @argv, align 8, !dbg !1536, !tbaa !1000
  %4 = load i32, ptr @pos, align 4, !dbg !1537, !tbaa !1100
  %5 = sext i32 %4 to i64, !dbg !1536
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5, !dbg !1536
  %7 = load ptr, ptr %6, align 8, !dbg !1536, !tbaa !1000
  %8 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !1536
  %9 = load i8, ptr %8, align 1, !dbg !1536, !tbaa !1109
  switch i8 %9, label %10 [
    i8 101, label %18
    i8 114, label %30
    i8 119, label %42
    i8 120, label %54
    i8 78, label %66
    i8 79, label %93
    i8 71, label %116
    i8 102, label %139
    i8 100, label %156
    i8 115, label %173
    i8 83, label %189
    i8 99, label %206
    i8 98, label %223
    i8 112, label %240
    i8 76, label %257
    i8 104, label %257
    i8 117, label %269
    i8 103, label %286
    i8 107, label %303
    i8 116, label %320
    i8 110, label %343
    i8 122, label %355
  ], !dbg !1538

10:                                               ; preds = %0
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.95, i32 noundef 5) #39, !dbg !1539
  %12 = load ptr, ptr @argv, align 8, !dbg !1540, !tbaa !1000
  %13 = load i32, ptr @pos, align 4, !dbg !1541, !tbaa !1100
  %14 = sext i32 %13 to i64, !dbg !1540
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14, !dbg !1540
  %16 = load ptr, ptr %15, align 8, !dbg !1540, !tbaa !1000
  %17 = tail call ptr @quote(ptr noundef %16) #39, !dbg !1542
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %11, ptr noundef %17) #43, !dbg !1543
  unreachable, !dbg !1543

18:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1544
  %19 = add nsw i32 %4, 1, !dbg !1548
  store i32 %19, ptr @pos, align 4, !dbg !1548, !tbaa !1100
  %20 = load i32, ptr @argc, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %23, label %22, !dbg !1549

22:                                               ; preds = %18
  tail call fastcc void @beyond(), !dbg !1550
  unreachable, !dbg !1550

23:                                               ; preds = %18
  %24 = add nsw i32 %4, 2, !dbg !1551
  store i32 %24, ptr @pos, align 4, !dbg !1551, !tbaa !1100
  %25 = sext i32 %19 to i64, !dbg !1552
  %26 = getelementptr inbounds ptr, ptr %3, i64 %25, !dbg !1552
  %27 = load ptr, ptr %26, align 8, !dbg !1552, !tbaa !1000
  %28 = call i32 @stat(ptr noundef %27, ptr noundef nonnull %2) #39, !dbg !1553
  %29 = icmp eq i32 %28, 0, !dbg !1554
  br label %367, !dbg !1555

30:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1556
  %31 = add nsw i32 %4, 1, !dbg !1559
  store i32 %31, ptr @pos, align 4, !dbg !1559, !tbaa !1100
  %32 = load i32, ptr @argc, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %35, label %34, !dbg !1560

34:                                               ; preds = %30
  tail call fastcc void @beyond(), !dbg !1561
  unreachable, !dbg !1561

35:                                               ; preds = %30
  %36 = add nsw i32 %4, 2, !dbg !1562
  store i32 %36, ptr @pos, align 4, !dbg !1562, !tbaa !1100
  %37 = sext i32 %31 to i64, !dbg !1563
  %38 = getelementptr inbounds ptr, ptr %3, i64 %37, !dbg !1563
  %39 = load ptr, ptr %38, align 8, !dbg !1563, !tbaa !1000
  %40 = tail call i32 @euidaccess(ptr noundef %39, i32 noundef 4) #39, !dbg !1564
  %41 = icmp eq i32 %40, 0, !dbg !1565
  br label %367, !dbg !1566

42:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1567
  %43 = add nsw i32 %4, 1, !dbg !1570
  store i32 %43, ptr @pos, align 4, !dbg !1570, !tbaa !1100
  %44 = load i32, ptr @argc, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %47, label %46, !dbg !1571

46:                                               ; preds = %42
  tail call fastcc void @beyond(), !dbg !1572
  unreachable, !dbg !1572

47:                                               ; preds = %42
  %48 = add nsw i32 %4, 2, !dbg !1573
  store i32 %48, ptr @pos, align 4, !dbg !1573, !tbaa !1100
  %49 = sext i32 %43 to i64, !dbg !1574
  %50 = getelementptr inbounds ptr, ptr %3, i64 %49, !dbg !1574
  %51 = load ptr, ptr %50, align 8, !dbg !1574, !tbaa !1000
  %52 = tail call i32 @euidaccess(ptr noundef %51, i32 noundef 2) #39, !dbg !1575
  %53 = icmp eq i32 %52, 0, !dbg !1576
  br label %367, !dbg !1577

54:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1578
  %55 = add nsw i32 %4, 1, !dbg !1581
  store i32 %55, ptr @pos, align 4, !dbg !1581, !tbaa !1100
  %56 = load i32, ptr @argc, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %59, label %58, !dbg !1582

58:                                               ; preds = %54
  tail call fastcc void @beyond(), !dbg !1583
  unreachable, !dbg !1583

59:                                               ; preds = %54
  %60 = add nsw i32 %4, 2, !dbg !1584
  store i32 %60, ptr @pos, align 4, !dbg !1584, !tbaa !1100
  %61 = sext i32 %55 to i64, !dbg !1585
  %62 = getelementptr inbounds ptr, ptr %3, i64 %61, !dbg !1585
  %63 = load ptr, ptr %62, align 8, !dbg !1585, !tbaa !1000
  %64 = tail call i32 @euidaccess(ptr noundef %63, i32 noundef 1) #39, !dbg !1586
  %65 = icmp eq i32 %64, 0, !dbg !1587
  br label %367, !dbg !1588

66:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1589
  %67 = add nsw i32 %4, 1, !dbg !1592
  store i32 %67, ptr @pos, align 4, !dbg !1592, !tbaa !1100
  %68 = load i32, ptr @argc, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %71, label %70, !dbg !1593

70:                                               ; preds = %66
  tail call fastcc void @beyond(), !dbg !1594
  unreachable, !dbg !1594

71:                                               ; preds = %66
  %72 = add nsw i32 %4, 2, !dbg !1595
  store i32 %72, ptr @pos, align 4, !dbg !1595, !tbaa !1100
  %73 = sext i32 %67 to i64, !dbg !1596
  %74 = getelementptr inbounds ptr, ptr %3, i64 %73, !dbg !1596
  %75 = load ptr, ptr %74, align 8, !dbg !1596, !tbaa !1000
  %76 = call i32 @stat(ptr noundef %75, ptr noundef nonnull %2) #39, !dbg !1598
  %77 = icmp eq i32 %76, 0, !dbg !1599
  br i1 %77, label %78, label %367, !dbg !1600

78:                                               ; preds = %71
  call void @llvm.dbg.value(metadata ptr %2, metadata !1601, metadata !DIExpression()), !dbg !1609
  %79 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 12, !dbg !1611
  call void @llvm.dbg.value(metadata i64 poison, metadata !1518, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1612
  call void @llvm.dbg.value(metadata i64 poison, metadata !1518, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1612
  call void @llvm.dbg.value(metadata ptr %2, metadata !1613, metadata !DIExpression()), !dbg !1616
  %80 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 13, !dbg !1618
  call void @llvm.dbg.value(metadata i64 poison, metadata !1521, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1612
  call void @llvm.dbg.value(metadata i64 poison, metadata !1521, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1612
  call void @llvm.dbg.value(metadata i64 undef, metadata !1619, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1626
  call void @llvm.dbg.value(metadata i64 undef, metadata !1619, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1626
  call void @llvm.dbg.value(metadata i64 undef, metadata !1625, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1626
  call void @llvm.dbg.value(metadata i64 undef, metadata !1625, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1626
  %81 = load <2 x i64>, ptr %79, align 8, !dbg !1611
  %82 = load <2 x i64>, ptr %80, align 8, !dbg !1618
  %83 = icmp sgt <2 x i64> %82, %81, !dbg !1628
  %84 = zext <2 x i1> %83 to <2 x i32>, !dbg !1628
  %85 = icmp slt <2 x i64> %82, %81, !dbg !1628
  %86 = sext <2 x i1> %85 to <2 x i32>, !dbg !1628
  %87 = add nsw <2 x i32> %86, %84, !dbg !1628
  %88 = extractelement <2 x i32> %87, i64 0, !dbg !1629
  %89 = shl nsw i32 %88, 1, !dbg !1629
  %90 = extractelement <2 x i32> %87, i64 1, !dbg !1630
  %91 = add nsw i32 %90, %89, !dbg !1630
  %92 = icmp sgt i32 %91, 0, !dbg !1631
  br label %367

93:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1632
  %94 = add nsw i32 %4, 1, !dbg !1635
  store i32 %94, ptr @pos, align 4, !dbg !1635, !tbaa !1100
  %95 = load i32, ptr @argc, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %98, label %97, !dbg !1636

97:                                               ; preds = %93
  tail call fastcc void @beyond(), !dbg !1637
  unreachable, !dbg !1637

98:                                               ; preds = %93
  %99 = add nsw i32 %4, 2, !dbg !1638
  store i32 %99, ptr @pos, align 4, !dbg !1638, !tbaa !1100
  %100 = sext i32 %94 to i64, !dbg !1639
  %101 = getelementptr inbounds ptr, ptr %3, i64 %100, !dbg !1639
  %102 = load ptr, ptr %101, align 8, !dbg !1639, !tbaa !1000
  %103 = call i32 @stat(ptr noundef %102, ptr noundef nonnull %2) #39, !dbg !1641
  %104 = icmp eq i32 %103, 0, !dbg !1642
  br i1 %104, label %105, label %367, !dbg !1643

105:                                              ; preds = %98
  %106 = tail call ptr @__errno_location() #42, !dbg !1644
  store i32 0, ptr %106, align 4, !dbg !1645, !tbaa !1100
  %107 = tail call i32 @geteuid() #39, !dbg !1646
  call void @llvm.dbg.value(metadata i32 %107, metadata !1522, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 -1, metadata !1526, metadata !DIExpression()), !dbg !1647
  %108 = icmp eq i32 %107, -1, !dbg !1648
  br i1 %108, label %109, label %112, !dbg !1649

109:                                              ; preds = %105
  %110 = load i32, ptr %106, align 4, !dbg !1650, !tbaa !1100
  %111 = icmp eq i32 %110, 0, !dbg !1650
  br i1 %111, label %112, label %367, !dbg !1651

112:                                              ; preds = %109, %105
  %113 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 4, !dbg !1652
  %114 = load i32, ptr %113, align 8, !dbg !1652, !tbaa !1653
  %115 = icmp eq i32 %107, %114, !dbg !1657
  br label %367

116:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1658
  %117 = add nsw i32 %4, 1, !dbg !1661
  store i32 %117, ptr @pos, align 4, !dbg !1661, !tbaa !1100
  %118 = load i32, ptr @argc, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %121, label %120, !dbg !1662

120:                                              ; preds = %116
  tail call fastcc void @beyond(), !dbg !1663
  unreachable, !dbg !1663

121:                                              ; preds = %116
  %122 = add nsw i32 %4, 2, !dbg !1664
  store i32 %122, ptr @pos, align 4, !dbg !1664, !tbaa !1100
  %123 = sext i32 %117 to i64, !dbg !1665
  %124 = getelementptr inbounds ptr, ptr %3, i64 %123, !dbg !1665
  %125 = load ptr, ptr %124, align 8, !dbg !1665, !tbaa !1000
  %126 = call i32 @stat(ptr noundef %125, ptr noundef nonnull %2) #39, !dbg !1667
  %127 = icmp eq i32 %126, 0, !dbg !1668
  br i1 %127, label %128, label %367, !dbg !1669

128:                                              ; preds = %121
  %129 = tail call ptr @__errno_location() #42, !dbg !1670
  store i32 0, ptr %129, align 4, !dbg !1671, !tbaa !1100
  %130 = tail call i32 @getegid() #39, !dbg !1672
  call void @llvm.dbg.value(metadata i32 %130, metadata !1527, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i32 -1, metadata !1530, metadata !DIExpression()), !dbg !1673
  %131 = icmp eq i32 %130, -1, !dbg !1674
  br i1 %131, label %132, label %135, !dbg !1675

132:                                              ; preds = %128
  %133 = load i32, ptr %129, align 4, !dbg !1676, !tbaa !1100
  %134 = icmp eq i32 %133, 0, !dbg !1676
  br i1 %134, label %135, label %367, !dbg !1677

135:                                              ; preds = %132, %128
  %136 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 5, !dbg !1678
  %137 = load i32, ptr %136, align 4, !dbg !1678, !tbaa !1679
  %138 = icmp eq i32 %130, %137, !dbg !1680
  br label %367

139:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1681
  %140 = add nsw i32 %4, 1, !dbg !1684
  store i32 %140, ptr @pos, align 4, !dbg !1684, !tbaa !1100
  %141 = load i32, ptr @argc, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %144, label %143, !dbg !1685

143:                                              ; preds = %139
  tail call fastcc void @beyond(), !dbg !1686
  unreachable, !dbg !1686

144:                                              ; preds = %139
  %145 = add nsw i32 %4, 2, !dbg !1687
  store i32 %145, ptr @pos, align 4, !dbg !1687, !tbaa !1100
  %146 = sext i32 %140 to i64, !dbg !1688
  %147 = getelementptr inbounds ptr, ptr %3, i64 %146, !dbg !1688
  %148 = load ptr, ptr %147, align 8, !dbg !1688, !tbaa !1000
  %149 = call i32 @stat(ptr noundef %148, ptr noundef nonnull %2) #39, !dbg !1689
  %150 = icmp eq i32 %149, 0, !dbg !1690
  %151 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1691
  %152 = load i32, ptr %151, align 8, !dbg !1691
  %153 = and i32 %152, 61440, !dbg !1691
  %154 = icmp eq i32 %153, 32768, !dbg !1691
  %155 = select i1 %150, i1 %154, i1 false, !dbg !1691
  br label %367, !dbg !1692

156:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1693
  %157 = add nsw i32 %4, 1, !dbg !1696
  store i32 %157, ptr @pos, align 4, !dbg !1696, !tbaa !1100
  %158 = load i32, ptr @argc, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %161, label %160, !dbg !1697

160:                                              ; preds = %156
  tail call fastcc void @beyond(), !dbg !1698
  unreachable, !dbg !1698

161:                                              ; preds = %156
  %162 = add nsw i32 %4, 2, !dbg !1699
  store i32 %162, ptr @pos, align 4, !dbg !1699, !tbaa !1100
  %163 = sext i32 %157 to i64, !dbg !1700
  %164 = getelementptr inbounds ptr, ptr %3, i64 %163, !dbg !1700
  %165 = load ptr, ptr %164, align 8, !dbg !1700, !tbaa !1000
  %166 = call i32 @stat(ptr noundef %165, ptr noundef nonnull %2) #39, !dbg !1701
  %167 = icmp eq i32 %166, 0, !dbg !1702
  %168 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1703
  %169 = load i32, ptr %168, align 8, !dbg !1703
  %170 = and i32 %169, 61440, !dbg !1703
  %171 = icmp eq i32 %170, 16384, !dbg !1703
  %172 = select i1 %167, i1 %171, i1 false, !dbg !1703
  br label %367, !dbg !1704

173:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1705
  %174 = add nsw i32 %4, 1, !dbg !1708
  store i32 %174, ptr @pos, align 4, !dbg !1708, !tbaa !1100
  %175 = load i32, ptr @argc, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %178, label %177, !dbg !1709

177:                                              ; preds = %173
  tail call fastcc void @beyond(), !dbg !1710
  unreachable, !dbg !1710

178:                                              ; preds = %173
  %179 = add nsw i32 %4, 2, !dbg !1711
  store i32 %179, ptr @pos, align 4, !dbg !1711, !tbaa !1100
  %180 = sext i32 %174 to i64, !dbg !1712
  %181 = getelementptr inbounds ptr, ptr %3, i64 %180, !dbg !1712
  %182 = load ptr, ptr %181, align 8, !dbg !1712, !tbaa !1000
  %183 = call i32 @stat(ptr noundef %182, ptr noundef nonnull %2) #39, !dbg !1713
  %184 = icmp eq i32 %183, 0, !dbg !1714
  %185 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8, !dbg !1715
  %186 = load i64, ptr %185, align 8, !dbg !1715
  %187 = icmp sgt i64 %186, 0, !dbg !1715
  %188 = select i1 %184, i1 %187, i1 false, !dbg !1715
  br label %367, !dbg !1716

189:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1717
  %190 = add nsw i32 %4, 1, !dbg !1720
  store i32 %190, ptr @pos, align 4, !dbg !1720, !tbaa !1100
  %191 = load i32, ptr @argc, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %194, label %193, !dbg !1721

193:                                              ; preds = %189
  tail call fastcc void @beyond(), !dbg !1722
  unreachable, !dbg !1722

194:                                              ; preds = %189
  %195 = add nsw i32 %4, 2, !dbg !1723
  store i32 %195, ptr @pos, align 4, !dbg !1723, !tbaa !1100
  %196 = sext i32 %190 to i64, !dbg !1724
  %197 = getelementptr inbounds ptr, ptr %3, i64 %196, !dbg !1724
  %198 = load ptr, ptr %197, align 8, !dbg !1724, !tbaa !1000
  %199 = call i32 @stat(ptr noundef %198, ptr noundef nonnull %2) #39, !dbg !1725
  %200 = icmp eq i32 %199, 0, !dbg !1726
  %201 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1727
  %202 = load i32, ptr %201, align 8, !dbg !1727
  %203 = and i32 %202, 61440, !dbg !1727
  %204 = icmp eq i32 %203, 49152, !dbg !1727
  %205 = select i1 %200, i1 %204, i1 false, !dbg !1727
  br label %367, !dbg !1728

206:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1729
  %207 = add nsw i32 %4, 1, !dbg !1732
  store i32 %207, ptr @pos, align 4, !dbg !1732, !tbaa !1100
  %208 = load i32, ptr @argc, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %211, label %210, !dbg !1733

210:                                              ; preds = %206
  tail call fastcc void @beyond(), !dbg !1734
  unreachable, !dbg !1734

211:                                              ; preds = %206
  %212 = add nsw i32 %4, 2, !dbg !1735
  store i32 %212, ptr @pos, align 4, !dbg !1735, !tbaa !1100
  %213 = sext i32 %207 to i64, !dbg !1736
  %214 = getelementptr inbounds ptr, ptr %3, i64 %213, !dbg !1736
  %215 = load ptr, ptr %214, align 8, !dbg !1736, !tbaa !1000
  %216 = call i32 @stat(ptr noundef %215, ptr noundef nonnull %2) #39, !dbg !1737
  %217 = icmp eq i32 %216, 0, !dbg !1738
  %218 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1739
  %219 = load i32, ptr %218, align 8, !dbg !1739
  %220 = and i32 %219, 61440, !dbg !1739
  %221 = icmp eq i32 %220, 8192, !dbg !1739
  %222 = select i1 %217, i1 %221, i1 false, !dbg !1739
  br label %367, !dbg !1740

223:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1741
  %224 = add nsw i32 %4, 1, !dbg !1744
  store i32 %224, ptr @pos, align 4, !dbg !1744, !tbaa !1100
  %225 = load i32, ptr @argc, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %228, label %227, !dbg !1745

227:                                              ; preds = %223
  tail call fastcc void @beyond(), !dbg !1746
  unreachable, !dbg !1746

228:                                              ; preds = %223
  %229 = add nsw i32 %4, 2, !dbg !1747
  store i32 %229, ptr @pos, align 4, !dbg !1747, !tbaa !1100
  %230 = sext i32 %224 to i64, !dbg !1748
  %231 = getelementptr inbounds ptr, ptr %3, i64 %230, !dbg !1748
  %232 = load ptr, ptr %231, align 8, !dbg !1748, !tbaa !1000
  %233 = call i32 @stat(ptr noundef %232, ptr noundef nonnull %2) #39, !dbg !1749
  %234 = icmp eq i32 %233, 0, !dbg !1750
  %235 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1751
  %236 = load i32, ptr %235, align 8, !dbg !1751
  %237 = and i32 %236, 61440, !dbg !1751
  %238 = icmp eq i32 %237, 24576, !dbg !1751
  %239 = select i1 %234, i1 %238, i1 false, !dbg !1751
  br label %367, !dbg !1752

240:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1753
  %241 = add nsw i32 %4, 1, !dbg !1756
  store i32 %241, ptr @pos, align 4, !dbg !1756, !tbaa !1100
  %242 = load i32, ptr @argc, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %245, label %244, !dbg !1757

244:                                              ; preds = %240
  tail call fastcc void @beyond(), !dbg !1758
  unreachable, !dbg !1758

245:                                              ; preds = %240
  %246 = add nsw i32 %4, 2, !dbg !1759
  store i32 %246, ptr @pos, align 4, !dbg !1759, !tbaa !1100
  %247 = sext i32 %241 to i64, !dbg !1760
  %248 = getelementptr inbounds ptr, ptr %3, i64 %247, !dbg !1760
  %249 = load ptr, ptr %248, align 8, !dbg !1760, !tbaa !1000
  %250 = call i32 @stat(ptr noundef %249, ptr noundef nonnull %2) #39, !dbg !1761
  %251 = icmp eq i32 %250, 0, !dbg !1762
  %252 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1763
  %253 = load i32, ptr %252, align 8, !dbg !1763
  %254 = and i32 %253, 61440, !dbg !1763
  %255 = icmp eq i32 %254, 4096, !dbg !1763
  %256 = select i1 %251, i1 %255, i1 false, !dbg !1763
  br label %367, !dbg !1764

257:                                              ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1765
  %258 = add nsw i32 %4, 1, !dbg !1768
  store i32 %258, ptr @pos, align 4, !dbg !1768, !tbaa !1100
  %259 = load i32, ptr @argc, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %262, label %261, !dbg !1769

261:                                              ; preds = %257
  tail call fastcc void @beyond(), !dbg !1770
  unreachable, !dbg !1770

262:                                              ; preds = %257
  %263 = add nsw i32 %4, 2, !dbg !1771
  store i32 %263, ptr @pos, align 4, !dbg !1771, !tbaa !1100
  %264 = sext i32 %258 to i64, !dbg !1772
  %265 = getelementptr inbounds ptr, ptr %3, i64 %264, !dbg !1772
  %266 = load ptr, ptr %265, align 8, !dbg !1772, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %266, metadata !1773, metadata !DIExpression()), !dbg !1780
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #39, !dbg !1782
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1779, metadata !DIExpression()), !dbg !1783
  %267 = call i64 @readlink(ptr noundef nonnull %266, ptr noundef nonnull %1, i64 noundef 1) #39, !dbg !1784
  %268 = icmp sgt i64 %267, -1, !dbg !1786
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #39, !dbg !1787
  br label %367, !dbg !1788

269:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1789
  %270 = add nsw i32 %4, 1, !dbg !1792
  store i32 %270, ptr @pos, align 4, !dbg !1792, !tbaa !1100
  %271 = load i32, ptr @argc, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %274, label %273, !dbg !1793

273:                                              ; preds = %269
  tail call fastcc void @beyond(), !dbg !1794
  unreachable, !dbg !1794

274:                                              ; preds = %269
  %275 = add nsw i32 %4, 2, !dbg !1795
  store i32 %275, ptr @pos, align 4, !dbg !1795, !tbaa !1100
  %276 = sext i32 %270 to i64, !dbg !1796
  %277 = getelementptr inbounds ptr, ptr %3, i64 %276, !dbg !1796
  %278 = load ptr, ptr %277, align 8, !dbg !1796, !tbaa !1000
  %279 = call i32 @stat(ptr noundef %278, ptr noundef nonnull %2) #39, !dbg !1797
  %280 = icmp eq i32 %279, 0, !dbg !1798
  %281 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1799
  %282 = load i32, ptr %281, align 8, !dbg !1799
  %283 = and i32 %282, 2048, !dbg !1799
  %284 = icmp ne i32 %283, 0, !dbg !1799
  %285 = select i1 %280, i1 %284, i1 false, !dbg !1799
  br label %367, !dbg !1800

286:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1801
  %287 = add nsw i32 %4, 1, !dbg !1804
  store i32 %287, ptr @pos, align 4, !dbg !1804, !tbaa !1100
  %288 = load i32, ptr @argc, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %291, label %290, !dbg !1805

290:                                              ; preds = %286
  tail call fastcc void @beyond(), !dbg !1806
  unreachable, !dbg !1806

291:                                              ; preds = %286
  %292 = add nsw i32 %4, 2, !dbg !1807
  store i32 %292, ptr @pos, align 4, !dbg !1807, !tbaa !1100
  %293 = sext i32 %287 to i64, !dbg !1808
  %294 = getelementptr inbounds ptr, ptr %3, i64 %293, !dbg !1808
  %295 = load ptr, ptr %294, align 8, !dbg !1808, !tbaa !1000
  %296 = call i32 @stat(ptr noundef %295, ptr noundef nonnull %2) #39, !dbg !1809
  %297 = icmp eq i32 %296, 0, !dbg !1810
  %298 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1811
  %299 = load i32, ptr %298, align 8, !dbg !1811
  %300 = and i32 %299, 1024, !dbg !1811
  %301 = icmp ne i32 %300, 0, !dbg !1811
  %302 = select i1 %297, i1 %301, i1 false, !dbg !1811
  br label %367, !dbg !1812

303:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1813
  %304 = add nsw i32 %4, 1, !dbg !1816
  store i32 %304, ptr @pos, align 4, !dbg !1816, !tbaa !1100
  %305 = load i32, ptr @argc, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %308, label %307, !dbg !1817

307:                                              ; preds = %303
  tail call fastcc void @beyond(), !dbg !1818
  unreachable, !dbg !1818

308:                                              ; preds = %303
  %309 = add nsw i32 %4, 2, !dbg !1819
  store i32 %309, ptr @pos, align 4, !dbg !1819, !tbaa !1100
  %310 = sext i32 %304 to i64, !dbg !1820
  %311 = getelementptr inbounds ptr, ptr %3, i64 %310, !dbg !1820
  %312 = load ptr, ptr %311, align 8, !dbg !1820, !tbaa !1000
  %313 = call i32 @stat(ptr noundef %312, ptr noundef nonnull %2) #39, !dbg !1821
  %314 = icmp eq i32 %313, 0, !dbg !1822
  %315 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1823
  %316 = load i32, ptr %315, align 8, !dbg !1823
  %317 = and i32 %316, 512, !dbg !1823
  %318 = icmp ne i32 %317, 0, !dbg !1823
  %319 = select i1 %314, i1 %318, i1 false, !dbg !1823
  br label %367, !dbg !1824

320:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1825
  %321 = add nsw i32 %4, 1, !dbg !1828
  store i32 %321, ptr @pos, align 4, !dbg !1828, !tbaa !1100
  %322 = load i32, ptr @argc, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %325, label %324, !dbg !1829

324:                                              ; preds = %320
  tail call fastcc void @beyond(), !dbg !1830
  unreachable, !dbg !1830

325:                                              ; preds = %320
  %326 = add nsw i32 %4, 2, !dbg !1831
  store i32 %326, ptr @pos, align 4, !dbg !1831, !tbaa !1100
  %327 = sext i32 %321 to i64, !dbg !1832
  %328 = getelementptr inbounds ptr, ptr %3, i64 %327, !dbg !1832
  %329 = load ptr, ptr %328, align 8, !dbg !1832, !tbaa !1000
  %330 = tail call fastcc ptr @find_int(ptr noundef %329), !dbg !1833
  call void @llvm.dbg.value(metadata ptr %330, metadata !1533, metadata !DIExpression()), !dbg !1834
  %331 = tail call ptr @__errno_location() #42, !dbg !1835
  store i32 0, ptr %331, align 4, !dbg !1836, !tbaa !1100
  %332 = tail call i64 @strtol(ptr nocapture noundef %330, ptr noundef null, i32 noundef 10) #39, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %332, metadata !1531, metadata !DIExpression()), !dbg !1834
  %333 = load i32, ptr %331, align 4, !dbg !1838, !tbaa !1100
  %334 = icmp ne i32 %333, 34, !dbg !1839
  %335 = icmp sgt i64 %332, -1
  %336 = select i1 %334, i1 %335, i1 false, !dbg !1840
  %337 = icmp slt i64 %332, 2147483648
  %338 = select i1 %336, i1 %337, i1 false, !dbg !1840
  br i1 %338, label %339, label %367, !dbg !1840

339:                                              ; preds = %325
  %340 = trunc i64 %332 to i32, !dbg !1841
  %341 = tail call i32 @isatty(i32 noundef %340) #39, !dbg !1842
  %342 = icmp ne i32 %341, 0, !dbg !1843
  br label %367

343:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1844
  %344 = add nsw i32 %4, 1, !dbg !1847
  store i32 %344, ptr @pos, align 4, !dbg !1847, !tbaa !1100
  %345 = load i32, ptr @argc, align 4
  %346 = icmp slt i32 %344, %345
  br i1 %346, label %348, label %347, !dbg !1848

347:                                              ; preds = %343
  tail call fastcc void @beyond(), !dbg !1849
  unreachable, !dbg !1849

348:                                              ; preds = %343
  %349 = add nsw i32 %4, 2, !dbg !1850
  store i32 %349, ptr @pos, align 4, !dbg !1850, !tbaa !1100
  %350 = sext i32 %344 to i64, !dbg !1851
  %351 = getelementptr inbounds ptr, ptr %3, i64 %350, !dbg !1851
  %352 = load ptr, ptr %351, align 8, !dbg !1851, !tbaa !1000
  %353 = load i8, ptr %352, align 1, !dbg !1851, !tbaa !1109
  %354 = icmp ne i8 %353, 0, !dbg !1852
  br label %367, !dbg !1853

355:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1854
  %356 = add nsw i32 %4, 1, !dbg !1857
  store i32 %356, ptr @pos, align 4, !dbg !1857, !tbaa !1100
  %357 = load i32, ptr @argc, align 4
  %358 = icmp slt i32 %356, %357
  br i1 %358, label %360, label %359, !dbg !1858

359:                                              ; preds = %355
  tail call fastcc void @beyond(), !dbg !1859
  unreachable, !dbg !1859

360:                                              ; preds = %355
  %361 = add nsw i32 %4, 2, !dbg !1860
  store i32 %361, ptr @pos, align 4, !dbg !1860, !tbaa !1100
  %362 = sext i32 %356 to i64, !dbg !1861
  %363 = getelementptr inbounds ptr, ptr %3, i64 %362, !dbg !1861
  %364 = load ptr, ptr %363, align 8, !dbg !1861, !tbaa !1000
  %365 = load i8, ptr %364, align 1, !dbg !1861, !tbaa !1109
  %366 = icmp eq i8 %365, 0, !dbg !1862
  br label %367, !dbg !1863

367:                                              ; preds = %325, %339, %132, %135, %121, %109, %112, %98, %71, %360, %348, %308, %291, %274, %262, %245, %228, %211, %194, %178, %161, %144, %78, %59, %47, %35, %23
  %368 = phi i1 [ %366, %360 ], [ %354, %348 ], [ %319, %308 ], [ %302, %291 ], [ %285, %274 ], [ %268, %262 ], [ %256, %245 ], [ %239, %228 ], [ %222, %211 ], [ %205, %194 ], [ %188, %178 ], [ %172, %161 ], [ %155, %144 ], [ %92, %78 ], [ %65, %59 ], [ %53, %47 ], [ %41, %35 ], [ %29, %23 ], [ false, %71 ], [ false, %98 ], [ false, %109 ], [ %115, %112 ], [ false, %121 ], [ false, %132 ], [ %138, %135 ], [ false, %325 ], [ %342, %339 ], !dbg !1864
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #39, !dbg !1865
  ret i1 %368, !dbg !1865
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !1866 {
  %1 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.97, i32 noundef 5) #39, !dbg !1867
  %2 = load ptr, ptr @argv, align 8, !dbg !1868, !tbaa !1000
  %3 = load i32, ptr @argc, align 4, !dbg !1869, !tbaa !1100
  %4 = add nsw i32 %3, -1, !dbg !1870
  %5 = sext i32 %4 to i64, !dbg !1868
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5, !dbg !1868
  %7 = load ptr, ptr %6, align 8, !dbg !1868, !tbaa !1000
  %8 = tail call ptr @quote(ptr noundef %7) #39, !dbg !1871
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %1, ptr noundef %8) #43, !dbg !1872
  unreachable, !dbg !1872
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @three_arguments() unnamed_addr #10 !dbg !1873 {
  %1 = load ptr, ptr @argv, align 8, !dbg !1877, !tbaa !1000
  %2 = load i32, ptr @pos, align 4, !dbg !1878, !tbaa !1100
  %3 = add nsw i32 %2, 1, !dbg !1879
  %4 = sext i32 %3 to i64, !dbg !1877
  %5 = getelementptr inbounds ptr, ptr %1, i64 %4, !dbg !1877
  %6 = load ptr, ptr %5, align 8, !dbg !1877, !tbaa !1000
  %7 = tail call fastcc i32 @binop(ptr noundef %6), !dbg !1880
  call void @llvm.dbg.value(metadata i32 %7, metadata !1876, metadata !DIExpression()), !dbg !1881
  %8 = icmp sgt i32 %7, -1, !dbg !1882
  br i1 %8, label %9, label %11, !dbg !1884

9:                                                ; preds = %0
  %10 = tail call fastcc i1 @binary_operator(i1 noundef false, i32 noundef %7), !dbg !1885
  call void @llvm.dbg.value(metadata i1 %10, metadata !1875, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1881
  br label %90, !dbg !1886

11:                                               ; preds = %0
  %12 = sext i32 %2 to i64, !dbg !1887
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12, !dbg !1887
  %14 = load ptr, ptr %13, align 8, !dbg !1887, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %14, metadata !1111, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1117, metadata !DIExpression()), !dbg !1889
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(2) @.str.90) #40, !dbg !1891
  %16 = icmp eq i32 %15, 0, !dbg !1892
  br i1 %16, label %17, label %49, !dbg !1893

17:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1894
  store i32 %3, ptr @pos, align 4, !dbg !1897, !tbaa !1100
  %18 = load i32, ptr @argc, align 4
  %19 = icmp slt i32 %3, %18
  br i1 %19, label %21, label %20, !dbg !1898

20:                                               ; preds = %17
  tail call fastcc void @beyond(), !dbg !1899
  unreachable, !dbg !1899

21:                                               ; preds = %17
  call void @llvm.dbg.value(metadata ptr %6, metadata !1111, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1117, metadata !DIExpression()), !dbg !1900
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.90) #40, !dbg !1903
  %23 = icmp eq i32 %22, 0, !dbg !1904
  br i1 %23, label %24, label %32, !dbg !1905

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i1 false, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1906
  %25 = add nsw i32 %2, 2, !dbg !1908
  %26 = add nsw i32 %2, 3, !dbg !1909
  store i32 %26, ptr @pos, align 4, !dbg !1909, !tbaa !1100
  %27 = sext i32 %25 to i64, !dbg !1911
  %28 = getelementptr inbounds ptr, ptr %1, i64 %27, !dbg !1911
  %29 = load ptr, ptr %28, align 8, !dbg !1911, !tbaa !1000
  %30 = load i8, ptr %29, align 1, !dbg !1911, !tbaa !1109
  %31 = icmp eq i8 %30, 0, !dbg !1912
  call void @llvm.dbg.value(metadata i1 %31, metadata !1363, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1913
  br label %46, !dbg !1914

32:                                               ; preds = %21
  %33 = load i8, ptr %6, align 1, !dbg !1915, !tbaa !1109
  %34 = icmp eq i8 %33, 45, !dbg !1916
  br i1 %34, label %35, label %45, !dbg !1917

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !1918
  %37 = load i8, ptr %36, align 1, !dbg !1918, !tbaa !1109
  %38 = icmp eq i8 %37, 0, !dbg !1919
  br i1 %38, label %45, label %39, !dbg !1920

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %6, i64 2, !dbg !1921
  %41 = load i8, ptr %40, align 1, !dbg !1921, !tbaa !1109
  %42 = icmp eq i8 %41, 0, !dbg !1922
  br i1 %42, label %43, label %45, !dbg !1923

43:                                               ; preds = %39
  %44 = tail call fastcc i1 @unary_operator(), !dbg !1924
  call void @llvm.dbg.value(metadata i1 %44, metadata !1363, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1913
  br label %46

45:                                               ; preds = %39, %35, %32
  tail call fastcc void @beyond() #43, !dbg !1925
  unreachable, !dbg !1925

46:                                               ; preds = %24, %43
  %47 = phi i1 [ %31, %24 ], [ %44, %43 ]
  call void @llvm.dbg.value(metadata i1 %47, metadata !1363, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1913
  %48 = xor i1 %47, true, !dbg !1926
  call void @llvm.dbg.value(metadata i1 %48, metadata !1875, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1881
  br label %90, !dbg !1927

49:                                               ; preds = %11
  call void @llvm.dbg.value(metadata ptr %14, metadata !1111, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata ptr @.str.91, metadata !1117, metadata !DIExpression()), !dbg !1928
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(2) @.str.91) #40, !dbg !1931
  %51 = icmp eq i32 %50, 0, !dbg !1932
  br i1 %51, label %52, label %63, !dbg !1933

52:                                               ; preds = %49
  %53 = add nsw i32 %2, 2, !dbg !1934
  %54 = sext i32 %53 to i64, !dbg !1935
  %55 = getelementptr inbounds ptr, ptr %1, i64 %54, !dbg !1935
  %56 = load ptr, ptr %55, align 8, !dbg !1935, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %56, metadata !1111, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1117, metadata !DIExpression()), !dbg !1936
  %57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(2) @.str.92) #40, !dbg !1938
  %58 = icmp eq i32 %57, 0, !dbg !1939
  br i1 %58, label %59, label %63, !dbg !1940

59:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i1 false, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1941
  %60 = load i8, ptr %6, align 1, !dbg !1944, !tbaa !1109
  %61 = icmp ne i8 %60, 0, !dbg !1946
  call void @llvm.dbg.value(metadata i1 %61, metadata !1875, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1881
  call void @llvm.dbg.value(metadata i1 false, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1947
  %62 = add nsw i32 %2, 3, !dbg !1949
  store i32 %62, ptr @pos, align 4, !dbg !1949, !tbaa !1100
  br label %90, !dbg !1950

63:                                               ; preds = %52, %49
  call void @llvm.dbg.value(metadata ptr %6, metadata !1111, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata ptr @.str.98, metadata !1117, metadata !DIExpression()), !dbg !1951
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(3) @.str.98) #40, !dbg !1954
  %65 = icmp eq i32 %64, 0, !dbg !1955
  br i1 %65, label %75, label %66, !dbg !1956

66:                                               ; preds = %63
  call void @llvm.dbg.value(metadata ptr %6, metadata !1111, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata ptr @.str.99, metadata !1117, metadata !DIExpression()), !dbg !1957
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(3) @.str.99) #40, !dbg !1959
  %68 = icmp eq i32 %67, 0, !dbg !1960
  br i1 %68, label %75, label %69, !dbg !1961

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata ptr %6, metadata !1111, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata ptr @.str.100, metadata !1117, metadata !DIExpression()), !dbg !1962
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.100) #40, !dbg !1964
  %71 = icmp eq i32 %70, 0, !dbg !1965
  br i1 %71, label %75, label %72, !dbg !1966

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata ptr %6, metadata !1111, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata ptr @.str.101, metadata !1117, metadata !DIExpression()), !dbg !1967
  %73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.101) #40, !dbg !1969
  %74 = icmp eq i32 %73, 0, !dbg !1970
  br i1 %74, label %75, label %81, !dbg !1971

75:                                               ; preds = %72, %69, %66, %63
  %76 = load i32, ptr @argc, align 4, !dbg !1972, !tbaa !1100
  %77 = icmp slt i32 %2, %76, !dbg !1974
  br i1 %77, label %79, label %78, !dbg !1975

78:                                               ; preds = %75
  tail call fastcc void @beyond() #43, !dbg !1976
  unreachable, !dbg !1976

79:                                               ; preds = %75
  %80 = tail call fastcc i1 @or(), !dbg !1977
  call void @llvm.dbg.value(metadata i1 %80, metadata !1875, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1881
  br label %90

81:                                               ; preds = %72
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.102, i32 noundef 5) #39, !dbg !1978
  %83 = load ptr, ptr @argv, align 8, !dbg !1979, !tbaa !1000
  %84 = load i32, ptr @pos, align 4, !dbg !1980, !tbaa !1100
  %85 = add nsw i32 %84, 1, !dbg !1981
  %86 = sext i32 %85 to i64, !dbg !1979
  %87 = getelementptr inbounds ptr, ptr %83, i64 %86, !dbg !1979
  %88 = load ptr, ptr %87, align 8, !dbg !1979, !tbaa !1000
  %89 = tail call ptr @quote(ptr noundef %88) #39, !dbg !1982
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %82, ptr noundef %89) #43, !dbg !1983
  unreachable, !dbg !1983

90:                                               ; preds = %46, %79, %59, %9
  %91 = phi i1 [ %10, %9 ], [ %48, %46 ], [ %61, %59 ], [ %80, %79 ]
  call void @llvm.dbg.value(metadata i1 %91, metadata !1875, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1881
  ret i1 %91, !dbg !1984
}

; Function Attrs: noreturn nounwind
declare !dbg !1985 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i1 @or() unnamed_addr #10 !dbg !1989 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1991, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 poison, metadata !1991, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 1, metadata !1993, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 0, metadata !1999, metadata !DIExpression()), !dbg !2007
  %1 = load i32, ptr @argc, align 4, !tbaa !1100
  %2 = load i32, ptr @pos, align 4, !tbaa !1100
  call void @llvm.dbg.value(metadata i8 poison, metadata !1999, metadata !DIExpression()), !dbg !2007
  %3 = icmp sgt i32 %1, %2, !dbg !2010
  br i1 %3, label %4, label %43, !dbg !2011

4:                                                ; preds = %0
  %5 = load ptr, ptr @argv, align 8, !tbaa !1000
  br label %6, !dbg !2012

6:                                                ; preds = %4, %200
  %7 = phi ptr [ %183, %200 ], [ %5, %4 ]
  %8 = phi i32 [ %201, %200 ], [ %2, %4 ]
  %9 = phi i32 [ %180, %200 ], [ %1, %4 ]
  %10 = phi i1 [ %195, %200 ], [ false, %4 ]
  br label %11, !dbg !2011

11:                                               ; preds = %6, %189
  %12 = phi ptr [ %7, %6 ], [ %183, %189 ]
  %13 = phi i32 [ %8, %6 ], [ %190, %189 ]
  %14 = phi i32 [ %9, %6 ], [ %180, %189 ]
  %15 = phi i1 [ true, %6 ], [ %178, %189 ]
  %16 = sext i32 %13 to i64, !dbg !2011
  %17 = sext i32 %14 to i64, !dbg !2011
  %18 = add i32 %13, 2, !dbg !2011
  %19 = getelementptr inbounds ptr, ptr %12, i64 %16, !dbg !2013
  %20 = load ptr, ptr %19, align 8, !dbg !2013, !tbaa !1000
  %21 = load i8, ptr %20, align 1, !dbg !2013, !tbaa !1109
  %22 = icmp eq i8 %21, 33, !dbg !2014
  br i1 %22, label %23, label %44, !dbg !2015

23:                                               ; preds = %11, %36
  %24 = phi ptr [ %40, %36 ], [ %20, %11 ]
  %25 = phi i1 [ %37, %36 ], [ false, %11 ]
  %26 = phi i64 [ %32, %36 ], [ %16, %11 ]
  %27 = phi i32 [ %38, %36 ], [ %18, %11 ]
  %28 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2016
  %29 = load i8, ptr %28, align 1, !dbg !2016, !tbaa !1109
  %30 = icmp eq i8 %29, 0, !dbg !2017
  br i1 %30, label %31, label %44, !dbg !2018

31:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2019
  %32 = add nsw i64 %26, 1, !dbg !2022
  %33 = trunc i64 %32 to i32, !dbg !2022
  store i32 %33, ptr @pos, align 4, !dbg !2022, !tbaa !1100
  %34 = icmp slt i64 %32, %17
  br i1 %34, label %36, label %35, !dbg !2023

35:                                               ; preds = %31
  tail call fastcc void @beyond(), !dbg !2024
  unreachable, !dbg !2024

36:                                               ; preds = %31
  %37 = xor i1 %25, true, !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !1999, metadata !DIExpression()), !dbg !2007
  %38 = add i32 %27, 1, !dbg !2011
  %39 = getelementptr inbounds ptr, ptr %12, i64 %32, !dbg !2013
  %40 = load ptr, ptr %39, align 8, !dbg !2013, !tbaa !1000
  %41 = load i8, ptr %40, align 1, !dbg !2013, !tbaa !1109
  %42 = icmp eq i8 %41, 33, !dbg !2014
  br i1 %42, label %23, label %44, !dbg !2015, !llvm.loop !2026

43:                                               ; preds = %200, %189, %0
  tail call fastcc void @beyond() #43, !dbg !2028
  unreachable, !dbg !2028

44:                                               ; preds = %36, %23, %11
  %45 = phi i32 [ %18, %11 ], [ %38, %36 ], [ %27, %23 ]
  %46 = phi i64 [ %16, %11 ], [ %32, %36 ], [ %26, %23 ]
  %47 = phi i1 [ false, %11 ], [ %37, %36 ], [ %25, %23 ]
  %48 = trunc i64 %46 to i32, !dbg !2015
  %49 = shl i64 %46, 32, !dbg !2030
  %50 = ashr exact i64 %49, 32, !dbg !2030
  %51 = getelementptr inbounds ptr, ptr %12, i64 %50, !dbg !2030
  %52 = load ptr, ptr %51, align 8, !dbg !2030, !tbaa !1000
  %53 = load i8, ptr %52, align 1, !dbg !2030, !tbaa !1109
  %54 = icmp eq i8 %53, 40, !dbg !2031
  br i1 %54, label %55, label %132, !dbg !2032

55:                                               ; preds = %44
  %56 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !2033
  %57 = load i8, ptr %56, align 1, !dbg !2033, !tbaa !1109
  %58 = icmp eq i8 %57, 0, !dbg !2034
  br i1 %58, label %59, label %132, !dbg !2035

59:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i1 true, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2036
  %60 = add nsw i32 %48, 1, !dbg !2038
  store i32 %60, ptr @pos, align 4, !dbg !2038, !tbaa !1100
  %61 = icmp sgt i32 %14, %60
  br i1 %61, label %62, label %72, !dbg !2039

62:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 1, metadata !2004, metadata !DIExpression()), !dbg !2040
  %63 = add nsw i32 %48, 2, !dbg !2041
  %64 = icmp slt i32 %63, %14, !dbg !2044
  br i1 %64, label %65, label %102, !dbg !2045

65:                                               ; preds = %62
  %66 = sext i32 %45 to i64, !dbg !2046
  %67 = sext i32 %60 to i64, !dbg !2046
  call void @llvm.dbg.value(metadata i64 1, metadata !2004, metadata !DIExpression()), !dbg !2040
  %68 = getelementptr inbounds ptr, ptr %12, i64 %66, !dbg !2047
  %69 = load ptr, ptr %68, align 8, !dbg !2047, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %69, metadata !1111, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1117, metadata !DIExpression()), !dbg !2048
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(2) @.str.92) #40, !dbg !2050
  %71 = icmp eq i32 %70, 0, !dbg !2051
  br i1 %71, label %102, label %73, !dbg !2046

72:                                               ; preds = %59
  tail call fastcc void @beyond(), !dbg !2052
  unreachable, !dbg !2052

73:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i64 2, metadata !2004, metadata !DIExpression()), !dbg !2040
  %74 = add nsw i64 %67, 2, !dbg !2041
  %75 = icmp slt i64 %74, %17, !dbg !2044
  br i1 %75, label %76, label %102, !dbg !2045, !llvm.loop !2053

76:                                               ; preds = %73
  %77 = add nsw i64 %66, 1, !dbg !2041
  call void @llvm.dbg.value(metadata i64 2, metadata !2004, metadata !DIExpression()), !dbg !2040
  %78 = getelementptr inbounds ptr, ptr %12, i64 %77, !dbg !2047
  %79 = load ptr, ptr %78, align 8, !dbg !2047, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %79, metadata !1111, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1117, metadata !DIExpression()), !dbg !2048
  %80 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(2) @.str.92) #40, !dbg !2050
  %81 = icmp eq i32 %80, 0, !dbg !2051
  br i1 %81, label %102, label %82, !dbg !2046

82:                                               ; preds = %76
  call void @llvm.dbg.value(metadata i64 3, metadata !2004, metadata !DIExpression()), !dbg !2040
  %83 = add nsw i64 %67, 3, !dbg !2041
  %84 = icmp slt i64 %83, %17, !dbg !2044
  br i1 %84, label %85, label %102, !dbg !2045, !llvm.loop !2053

85:                                               ; preds = %82
  %86 = add nsw i64 %66, 2, !dbg !2041
  call void @llvm.dbg.value(metadata i64 3, metadata !2004, metadata !DIExpression()), !dbg !2040
  %87 = getelementptr inbounds ptr, ptr %12, i64 %86, !dbg !2047
  %88 = load ptr, ptr %87, align 8, !dbg !2047, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %88, metadata !1111, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1117, metadata !DIExpression()), !dbg !2048
  %89 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %88, ptr noundef nonnull dereferenceable(2) @.str.92) #40, !dbg !2050
  %90 = icmp eq i32 %89, 0, !dbg !2051
  br i1 %90, label %102, label %91, !dbg !2046

91:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i64 4, metadata !2004, metadata !DIExpression()), !dbg !2040
  %92 = add nsw i64 %67, 4, !dbg !2041
  %93 = icmp slt i64 %92, %17, !dbg !2044
  br i1 %93, label %94, label %102, !dbg !2045, !llvm.loop !2053

94:                                               ; preds = %91
  %95 = add nsw i64 %66, 3, !dbg !2041
  call void @llvm.dbg.value(metadata i64 4, metadata !2004, metadata !DIExpression()), !dbg !2040
  %96 = getelementptr inbounds ptr, ptr %12, i64 %95, !dbg !2047
  %97 = load ptr, ptr %96, align 8, !dbg !2047, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %97, metadata !1111, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1117, metadata !DIExpression()), !dbg !2048
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %97, ptr noundef nonnull dereferenceable(2) @.str.92) #40, !dbg !2050
  %99 = icmp eq i32 %98, 0, !dbg !2051
  %100 = sub nsw i32 %14, %60
  %101 = select i1 %99, i32 4, i32 %100, !dbg !2046
  br label %102, !dbg !2046

102:                                              ; preds = %94, %73, %65, %76, %82, %85, %91, %62
  %103 = phi i32 [ 1, %62 ], [ 1, %65 ], [ 2, %73 ], [ 2, %76 ], [ 3, %82 ], [ 3, %85 ], [ 4, %91 ], [ %101, %94 ], !dbg !2055
  call void @llvm.dbg.value(metadata i32 %103, metadata !2004, metadata !DIExpression()), !dbg !2040
  %104 = tail call fastcc i1 @posixtest(i32 noundef %103), !dbg !2056
  call void @llvm.dbg.value(metadata i1 %104, metadata !2002, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2007
  %105 = load ptr, ptr @argv, align 8, !dbg !2057, !tbaa !1000
  %106 = load i32, ptr @pos, align 4, !dbg !2059, !tbaa !1100
  %107 = sext i32 %106 to i64, !dbg !2057
  %108 = getelementptr inbounds ptr, ptr %105, i64 %107, !dbg !2057
  %109 = load ptr, ptr %108, align 8, !dbg !2057, !tbaa !1000
  %110 = icmp eq ptr %109, null, !dbg !2057
  br i1 %110, label %111, label %114, !dbg !2060

111:                                              ; preds = %102
  %112 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.119, i32 noundef 5) #39, !dbg !2061
  %113 = tail call ptr @quote(ptr noundef nonnull @.str.92) #39, !dbg !2062
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %112, ptr noundef %113) #43, !dbg !2063
  unreachable, !dbg !2063

114:                                              ; preds = %102
  %115 = load i8, ptr %109, align 1, !dbg !2064, !tbaa !1109
  %116 = icmp eq i8 %115, 41, !dbg !2066
  br i1 %116, label %117, label %121, !dbg !2067

117:                                              ; preds = %114
  %118 = getelementptr inbounds i8, ptr %109, i64 1, !dbg !2068
  %119 = load i8, ptr %118, align 1, !dbg !2068, !tbaa !1109
  %120 = icmp eq i8 %119, 0, !dbg !2068
  br i1 %120, label %130, label %121, !dbg !2069

121:                                              ; preds = %117, %114
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.120, i32 noundef 5) #39, !dbg !2070
  %123 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.92) #39, !dbg !2071
  %124 = load ptr, ptr @argv, align 8, !dbg !2072, !tbaa !1000
  %125 = load i32, ptr @pos, align 4, !dbg !2073, !tbaa !1100
  %126 = sext i32 %125 to i64, !dbg !2072
  %127 = getelementptr inbounds ptr, ptr %124, i64 %126, !dbg !2072
  %128 = load ptr, ptr %127, align 8, !dbg !2072, !tbaa !1000
  %129 = tail call ptr @quote_n(i32 noundef 1, ptr noundef %128) #39, !dbg !2074
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %122, ptr noundef %123, ptr noundef %129) #43, !dbg !2075
  unreachable, !dbg !2075

130:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i1 false, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2076
  %131 = add nsw i32 %106, 1, !dbg !2078
  store i32 %131, ptr @pos, align 4, !dbg !2078, !tbaa !1100
  br label %175, !dbg !2079

132:                                              ; preds = %55, %44
  %133 = sub nsw i32 %14, %48, !dbg !2080
  %134 = icmp sgt i32 %133, 3, !dbg !2082
  br i1 %134, label %135, label %148, !dbg !2083

135:                                              ; preds = %132
  call void @llvm.dbg.value(metadata ptr %52, metadata !1111, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata ptr @.str.115, metadata !1117, metadata !DIExpression()), !dbg !2084
  %136 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(3) @.str.115) #40, !dbg !2086
  %137 = icmp eq i32 %136, 0, !dbg !2087
  br i1 %137, label %138, label %150, !dbg !2088

138:                                              ; preds = %135
  %139 = shl i64 %46, 32, !dbg !2089
  %140 = add i64 %139, 8589934592, !dbg !2089
  %141 = ashr exact i64 %140, 32, !dbg !2089
  %142 = getelementptr inbounds ptr, ptr %12, i64 %141, !dbg !2089
  %143 = load ptr, ptr %142, align 8, !dbg !2089, !tbaa !1000
  %144 = tail call fastcc i32 @binop(ptr noundef %143), !dbg !2090
  call void @llvm.dbg.value(metadata i32 %144, metadata !2003, metadata !DIExpression()), !dbg !2007
  %145 = icmp sgt i32 %144, -1, !dbg !2091
  br i1 %145, label %146, label %150, !dbg !2092

146:                                              ; preds = %138
  %147 = tail call fastcc i1 @binary_operator(i1 noundef true, i32 noundef %144), !dbg !2093
  call void @llvm.dbg.value(metadata i1 %147, metadata !2002, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2007
  br label %175, !dbg !2094

148:                                              ; preds = %132
  %149 = icmp eq i32 %133, 3, !dbg !2095
  br i1 %149, label %150, label %160, !dbg !2097

150:                                              ; preds = %135, %138, %148
  %151 = shl i64 %46, 32, !dbg !2098
  %152 = add i64 %151, 4294967296, !dbg !2098
  %153 = ashr exact i64 %152, 32, !dbg !2098
  %154 = getelementptr inbounds ptr, ptr %12, i64 %153, !dbg !2098
  %155 = load ptr, ptr %154, align 8, !dbg !2098, !tbaa !1000
  %156 = tail call fastcc i32 @binop(ptr noundef %155), !dbg !2099
  call void @llvm.dbg.value(metadata i32 %156, metadata !2003, metadata !DIExpression()), !dbg !2007
  %157 = icmp sgt i32 %156, -1, !dbg !2100
  br i1 %157, label %158, label %160, !dbg !2101

158:                                              ; preds = %150
  %159 = tail call fastcc i1 @binary_operator(i1 noundef false, i32 noundef %156), !dbg !2102
  call void @llvm.dbg.value(metadata i1 %159, metadata !2002, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2007
  br label %175, !dbg !2103

160:                                              ; preds = %150, %148
  %161 = icmp eq i8 %53, 45, !dbg !2104
  br i1 %161, label %162, label %172, !dbg !2106

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !2107
  %164 = load i8, ptr %163, align 1, !dbg !2107, !tbaa !1109
  %165 = icmp eq i8 %164, 0, !dbg !2107
  br i1 %165, label %172, label %166, !dbg !2108

166:                                              ; preds = %162
  %167 = getelementptr inbounds i8, ptr %52, i64 2, !dbg !2109
  %168 = load i8, ptr %167, align 1, !dbg !2109, !tbaa !1109
  %169 = icmp eq i8 %168, 0, !dbg !2110
  br i1 %169, label %170, label %172, !dbg !2111

170:                                              ; preds = %166
  %171 = tail call fastcc i1 @unary_operator(), !dbg !2112
  call void @llvm.dbg.value(metadata i1 %171, metadata !2002, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2007
  br label %175, !dbg !2113

172:                                              ; preds = %166, %162, %160
  %173 = icmp ne i8 %53, 0, !dbg !2114
  call void @llvm.dbg.value(metadata i1 %173, metadata !2002, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2007
  call void @llvm.dbg.value(metadata i1 false, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2116
  %174 = add nsw i32 %48, 1, !dbg !2118
  store i32 %174, ptr @pos, align 4, !dbg !2118, !tbaa !1100
  br label %175

175:                                              ; preds = %130, %146, %158, %170, %172
  %176 = phi i1 [ %104, %130 ], [ %147, %146 ], [ %159, %158 ], [ %171, %170 ], [ %173, %172 ]
  call void @llvm.dbg.value(metadata i1 %176, metadata !2002, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2007
  %177 = xor i1 %47, %176, !dbg !2119
  %178 = and i1 %15, %177, !dbg !2120
  call void @llvm.dbg.value(metadata i1 %178, metadata !1993, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1996
  %179 = load i32, ptr @pos, align 4, !dbg !2121, !tbaa !1100
  %180 = load i32, ptr @argc, align 4, !dbg !2123, !tbaa !1100
  %181 = icmp slt i32 %179, %180, !dbg !2124
  br i1 %181, label %182, label %192, !dbg !2125

182:                                              ; preds = %175
  %183 = load ptr, ptr @argv, align 8, !dbg !2126, !tbaa !1000
  %184 = sext i32 %179 to i64, !dbg !2126
  %185 = getelementptr inbounds ptr, ptr %183, i64 %184, !dbg !2126
  %186 = load ptr, ptr %185, align 8, !dbg !2126, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %186, metadata !1111, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata ptr @.str.98, metadata !1117, metadata !DIExpression()), !dbg !2127
  %187 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %186, ptr noundef nonnull dereferenceable(3) @.str.98) #40, !dbg !2129
  %188 = icmp eq i32 %187, 0, !dbg !2130
  br i1 %188, label %189, label %194, !dbg !2131

189:                                              ; preds = %182
  call void @llvm.dbg.value(metadata i1 false, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2132
  %190 = add nsw i32 %179, 1, !dbg !2134
  store i32 %190, ptr @pos, align 4, !dbg !2134, !tbaa !1100
  call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 poison, metadata !1999, metadata !DIExpression()), !dbg !2007
  %191 = icmp sgt i32 %180, %190, !dbg !2010
  br i1 %191, label %11, label %43, !dbg !2011, !llvm.loop !2135

192:                                              ; preds = %175
  %193 = or i1 %10, %178, !dbg !2138
  call void @llvm.dbg.value(metadata i1 %193, metadata !1991, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1992
  br label %198

194:                                              ; preds = %182
  %195 = or i1 %10, %178, !dbg !2138
  call void @llvm.dbg.value(metadata i1 %195, metadata !1991, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1992
  call void @llvm.dbg.value(metadata ptr %186, metadata !1111, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata ptr @.str.99, metadata !1117, metadata !DIExpression()), !dbg !2139
  %196 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %186, ptr noundef nonnull dereferenceable(3) @.str.99) #40, !dbg !2142
  %197 = icmp eq i32 %196, 0, !dbg !2143
  br i1 %197, label %200, label %198, !dbg !2144

198:                                              ; preds = %194, %192
  %199 = phi i1 [ %193, %192 ], [ %195, %194 ]
  ret i1 %199, !dbg !2145

200:                                              ; preds = %194
  call void @llvm.dbg.value(metadata i1 false, metadata !1371, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2146
  %201 = add nsw i32 %179, 1, !dbg !2148
  store i32 %201, ptr @pos, align 4, !dbg !2148, !tbaa !1100
  call void @llvm.dbg.value(metadata i8 poison, metadata !1991, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 poison, metadata !1999, metadata !DIExpression()), !dbg !2007
  %202 = icmp sgt i32 %180, %201, !dbg !2010
  br i1 %202, label %6, label %43, !dbg !2011, !llvm.loop !2149
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i32 @binop(ptr nocapture noundef readonly %0) unnamed_addr #11 !dbg !2151 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata ptr @.str.103, metadata !1117, metadata !DIExpression()), !dbg !2155
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.103) #40, !dbg !2157
  %3 = icmp eq i32 %2, 0, !dbg !2158
  br i1 %3, label %44, label %4, !dbg !2159

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata ptr @.str.104, metadata !1117, metadata !DIExpression()), !dbg !2160
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.104) #40, !dbg !2162
  %6 = icmp eq i32 %5, 0, !dbg !2163
  br i1 %6, label %44, label %7, !dbg !2164

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata ptr @.str.105, metadata !1117, metadata !DIExpression()), !dbg !2165
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.105) #40, !dbg !2167
  %9 = icmp eq i32 %8, 0, !dbg !2168
  br i1 %9, label %44, label %10, !dbg !2169

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata ptr @.str.100, metadata !1117, metadata !DIExpression()), !dbg !2170
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.100) #40, !dbg !2172
  %12 = icmp eq i32 %11, 0, !dbg !2173
  br i1 %12, label %44, label %13, !dbg !2174

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata ptr @.str.101, metadata !1117, metadata !DIExpression()), !dbg !2175
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.101) #40, !dbg !2177
  %15 = icmp eq i32 %14, 0, !dbg !2178
  br i1 %15, label %44, label %16, !dbg !2179

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata ptr @.str.106, metadata !1117, metadata !DIExpression()), !dbg !2180
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.106) #40, !dbg !2182
  %18 = icmp eq i32 %17, 0, !dbg !2183
  br i1 %18, label %44, label %19, !dbg !2184

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata ptr @.str.107, metadata !1117, metadata !DIExpression()), !dbg !2185
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.107) #40, !dbg !2187
  %21 = icmp eq i32 %20, 0, !dbg !2188
  br i1 %21, label %44, label %22, !dbg !2189

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata ptr @.str.108, metadata !1117, metadata !DIExpression()), !dbg !2190
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.108) #40, !dbg !2192
  %24 = icmp eq i32 %23, 0, !dbg !2193
  br i1 %24, label %44, label %25, !dbg !2194

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata ptr @.str.109, metadata !1117, metadata !DIExpression()), !dbg !2195
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.109) #40, !dbg !2197
  %27 = icmp eq i32 %26, 0, !dbg !2198
  br i1 %27, label %44, label %28, !dbg !2199

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata ptr @.str.110, metadata !1117, metadata !DIExpression()), !dbg !2200
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.110) #40, !dbg !2202
  %30 = icmp eq i32 %29, 0, !dbg !2203
  br i1 %30, label %44, label %31, !dbg !2204

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata ptr @.str.111, metadata !1117, metadata !DIExpression()), !dbg !2205
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.111) #40, !dbg !2207
  %33 = icmp eq i32 %32, 0, !dbg !2208
  br i1 %33, label %44, label %34, !dbg !2209

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata ptr @.str.112, metadata !1117, metadata !DIExpression()), !dbg !2210
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.112) #40, !dbg !2212
  %36 = icmp eq i32 %35, 0, !dbg !2213
  br i1 %36, label %44, label %37, !dbg !2214

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr @.str.113, metadata !1117, metadata !DIExpression()), !dbg !2215
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.113) #40, !dbg !2217
  %39 = icmp eq i32 %38, 0, !dbg !2218
  br i1 %39, label %44, label %40, !dbg !2219

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata ptr %0, metadata !1111, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr @.str.114, metadata !1117, metadata !DIExpression()), !dbg !2220
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.114) #40, !dbg !2222
  %42 = icmp eq i32 %41, 0, !dbg !2223
  %43 = select i1 %42, i32 10, i32 -1, !dbg !2224
  br label %44, !dbg !2219

44:                                               ; preds = %4, %10, %16, %22, %28, %34, %37, %40, %31, %25, %19, %13, %7, %1
  %45 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 3, %7 ], [ 1, %10 ], [ 2, %13 ], [ 4, %16 ], [ 9, %19 ], [ 8, %22 ], [ 7, %25 ], [ 6, %28 ], [ 5, %31 ], [ 12, %34 ], [ %43, %40 ], [ 11, %37 ], !dbg !2159
  ret i32 %45, !dbg !2225
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @binary_operator(i1 noundef %0, i32 noundef %1) unnamed_addr #10 !dbg !2226 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca [21 x i8], align 1
  %6 = alloca [21 x i8], align 1
  %7 = alloca [2 x %struct.stat], align 8
  call void @llvm.dbg.value(metadata i1 %0, metadata !2230, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2249
  call void @llvm.dbg.value(metadata i32 %1, metadata !2231, metadata !DIExpression()), !dbg !2249
  %8 = load i32, ptr @pos, align 4, !dbg !2249, !tbaa !1100
  %9 = zext i1 %0 to i32, !dbg !2250
  %10 = add nsw i32 %8, %9, !dbg !2250
  %11 = add nsw i32 %10, 1, !dbg !2251
  call void @llvm.dbg.value(metadata i32 %11, metadata !2232, metadata !DIExpression()), !dbg !2249
  %12 = load i32, ptr @argc, align 4, !dbg !2252, !tbaa !1100
  %13 = add nsw i32 %12, -2, !dbg !2253
  %14 = icmp slt i32 %11, %13, !dbg !2254
  br i1 %14, label %15, label %24, !dbg !2255

15:                                               ; preds = %2
  %16 = load ptr, ptr @argv, align 8, !dbg !2256, !tbaa !1000
  %17 = add nsw i32 %10, 2, !dbg !2257
  %18 = sext i32 %17 to i64, !dbg !2256
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18, !dbg !2256
  %20 = load ptr, ptr %19, align 8, !dbg !2256, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %20, metadata !1111, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata ptr @.str.115, metadata !1117, metadata !DIExpression()), !dbg !2258
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(3) @.str.115) #40, !dbg !2260
  %22 = icmp eq i32 %21, 0, !dbg !2261
  call void @llvm.dbg.value(metadata i1 %22, metadata !2233, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2249
  %23 = select i1 %22, i32 %11, i32 %10, !dbg !2262
  br label %24, !dbg !2262

24:                                               ; preds = %15, %2
  %25 = phi i32 [ %10, %2 ], [ %23, %15 ], !dbg !2263
  %26 = phi i1 [ false, %2 ], [ %22, %15 ]
  %27 = add nsw i32 %25, 3, !dbg !2263
  store i32 %27, ptr @pos, align 4, !dbg !2263, !tbaa !1100
  switch i32 %1, label %187 [
    i32 4, label %28
    i32 5, label %28
    i32 6, label %28
    i32 7, label %28
    i32 8, label %28
    i32 9, label %28
    i32 11, label %72
    i32 12, label %72
    i32 10, label %128
    i32 0, label %160
    i32 3, label %160
    i32 1, label %173
    i32 2, label %173
  ], !dbg !2264

28:                                               ; preds = %24, %24, %24, %24, %24, %24
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %5) #39, !dbg !2265
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2234, metadata !DIExpression()), !dbg !2266
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %6) #39, !dbg !2267
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2237, metadata !DIExpression()), !dbg !2268
  %29 = load ptr, ptr @argv, align 8, !dbg !2269, !tbaa !1000
  %30 = sext i32 %10 to i64, !dbg !2269
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30, !dbg !2269
  %32 = load ptr, ptr %31, align 8, !dbg !2269, !tbaa !1000
  br i1 %0, label %33, label %36, !dbg !2270

33:                                               ; preds = %28
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #40, !dbg !2271
  %35 = call ptr @umaxtostr(i64 noundef %34, ptr noundef nonnull %5) #39, !dbg !2272
  br label %38, !dbg !2270

36:                                               ; preds = %28
  %37 = tail call fastcc ptr @find_int(ptr noundef %32), !dbg !2273
  br label %38, !dbg !2270

38:                                               ; preds = %36, %33
  %39 = phi ptr [ %35, %33 ], [ %37, %36 ], !dbg !2270
  call void @llvm.dbg.value(metadata ptr %39, metadata !2238, metadata !DIExpression()), !dbg !2269
  %40 = load ptr, ptr @argv, align 8, !dbg !2269, !tbaa !1000
  br i1 %26, label %41, label %48, !dbg !2274

41:                                               ; preds = %38
  %42 = add nsw i32 %10, 3, !dbg !2275
  %43 = sext i32 %42 to i64, !dbg !2276
  %44 = getelementptr inbounds ptr, ptr %40, i64 %43, !dbg !2276
  %45 = load ptr, ptr %44, align 8, !dbg !2276, !tbaa !1000
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #40, !dbg !2277
  %47 = call ptr @umaxtostr(i64 noundef %46, ptr noundef nonnull %6) #39, !dbg !2278
  br label %54, !dbg !2274

48:                                               ; preds = %38
  %49 = add nsw i32 %10, 2, !dbg !2279
  %50 = sext i32 %49 to i64, !dbg !2280
  %51 = getelementptr inbounds ptr, ptr %40, i64 %50, !dbg !2280
  %52 = load ptr, ptr %51, align 8, !dbg !2280, !tbaa !1000
  %53 = call fastcc ptr @find_int(ptr noundef %52), !dbg !2281
  br label %54, !dbg !2274

54:                                               ; preds = %48, %41
  %55 = phi ptr [ %47, %41 ], [ %53, %48 ], !dbg !2274
  call void @llvm.dbg.value(metadata ptr %55, metadata !2239, metadata !DIExpression()), !dbg !2269
  %56 = call i32 @strintcmp(ptr noundef %39, ptr noundef %55) #40, !dbg !2282
  call void @llvm.dbg.value(metadata i32 %56, metadata !2240, metadata !DIExpression()), !dbg !2269
  switch i32 %1, label %69 [
    i32 4, label %57
    i32 5, label %59
    i32 6, label %61
    i32 7, label %63
    i32 8, label %65
    i32 9, label %67
  ], !dbg !2283

57:                                               ; preds = %54
  %58 = icmp eq i32 %56, 0, !dbg !2284
  br label %70, !dbg !2286

59:                                               ; preds = %54
  %60 = icmp sgt i32 %56, -1, !dbg !2287
  br label %70, !dbg !2288

61:                                               ; preds = %54
  %62 = icmp sgt i32 %56, 0, !dbg !2289
  br label %70, !dbg !2290

63:                                               ; preds = %54
  %64 = icmp slt i32 %56, 1, !dbg !2291
  br label %70, !dbg !2292

65:                                               ; preds = %54
  %66 = icmp slt i32 %56, 0, !dbg !2293
  br label %70, !dbg !2294

67:                                               ; preds = %54
  %68 = icmp ne i32 %56, 0, !dbg !2295
  br label %70, !dbg !2296

69:                                               ; preds = %54
  unreachable, !dbg !2297

70:                                               ; preds = %67, %65, %63, %61, %59, %57
  %71 = phi i1 [ %68, %67 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %60, %59 ], [ %58, %57 ], !dbg !2298
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %6) #39, !dbg !2299
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %5) #39, !dbg !2299
  br label %188

72:                                               ; preds = %24, %24
  %73 = or i1 %26, %0, !dbg !2300
  br i1 %73, label %74, label %80, !dbg !2302

74:                                               ; preds = %72
  %75 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.116, i32 noundef 5) #39, !dbg !2303
  %76 = load ptr, ptr @argv, align 8, !dbg !2304, !tbaa !1000
  %77 = sext i32 %11 to i64, !dbg !2304
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77, !dbg !2304
  %79 = load ptr, ptr %78, align 8, !dbg !2304, !tbaa !1000
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %75, ptr noundef %79) #43, !dbg !2305
  unreachable, !dbg !2305

80:                                               ; preds = %72
  %81 = load ptr, ptr @argv, align 8, !dbg !2306, !tbaa !1000
  %82 = sext i32 %10 to i64, !dbg !2306
  %83 = getelementptr inbounds ptr, ptr %81, i64 %82, !dbg !2306
  %84 = load ptr, ptr %83, align 8, !dbg !2306, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %84, metadata !2307, metadata !DIExpression()), !dbg !2313
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #39, !dbg !2315
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2312, metadata !DIExpression()), !dbg !2316
  %85 = call i32 @stat(ptr noundef %84, ptr noundef nonnull %4) #39, !dbg !2317
  %86 = icmp slt i32 %85, 0, !dbg !2318
  %87 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 13, !dbg !2317
  %88 = load i64, ptr %87, align 8, !dbg !2317
  %89 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 13, i32 1, !dbg !2317
  %90 = load i64, ptr %89, align 8, !dbg !2317
  %91 = insertvalue [2 x i64] poison, i64 %88, 0, !dbg !2317
  %92 = insertvalue [2 x i64] %91, i64 %90, 1, !dbg !2317
  %93 = select i1 %86, [2 x i64] [i64 -9223372036854775808, i64 -1], [2 x i64] %92, !dbg !2317
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #39, !dbg !2319
  %94 = load ptr, ptr @argv, align 8, !dbg !2320, !tbaa !1000
  %95 = add nsw i32 %10, 2, !dbg !2321
  %96 = sext i32 %95 to i64, !dbg !2320
  %97 = getelementptr inbounds ptr, ptr %94, i64 %96, !dbg !2320
  %98 = load ptr, ptr %97, align 8, !dbg !2320, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %98, metadata !2307, metadata !DIExpression()), !dbg !2322
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #39, !dbg !2324
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2312, metadata !DIExpression()), !dbg !2325
  %99 = call i32 @stat(ptr noundef %98, ptr noundef nonnull %3) #39, !dbg !2326
  %100 = icmp slt i32 %99, 0, !dbg !2327
  %101 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 13, !dbg !2326
  %102 = load i64, ptr %101, align 8, !dbg !2326
  %103 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 13, i32 1, !dbg !2326
  %104 = load i64, ptr %103, align 8, !dbg !2326
  %105 = insertvalue [2 x i64] poison, i64 %102, 0, !dbg !2326
  %106 = insertvalue [2 x i64] %105, i64 %104, 1, !dbg !2326
  %107 = select i1 %100, [2 x i64] [i64 -9223372036854775808, i64 -1], [2 x i64] %106, !dbg !2326
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #39, !dbg !2328
  %108 = extractvalue [2 x i64] %93, 0
  call void @llvm.dbg.value(metadata i64 %108, metadata !1619, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2329
  %109 = extractvalue [2 x i64] %93, 1
  call void @llvm.dbg.value(metadata i64 %109, metadata !1619, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2329
  %110 = extractvalue [2 x i64] %107, 0
  call void @llvm.dbg.value(metadata i64 %110, metadata !1625, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2329
  %111 = extractvalue [2 x i64] %107, 1
  call void @llvm.dbg.value(metadata i64 %111, metadata !1625, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2329
  %112 = icmp sgt i64 %108, %110, !dbg !2331
  %113 = zext i1 %112 to i32, !dbg !2331
  %114 = icmp slt i64 %108, %110, !dbg !2331
  %115 = sext i1 %114 to i32, !dbg !2331
  %116 = add nsw i32 %115, %113, !dbg !2331
  %117 = shl nsw i32 %116, 1, !dbg !2332
  %118 = icmp sgt i64 %109, %111, !dbg !2333
  %119 = zext i1 %118 to i32, !dbg !2333
  %120 = icmp slt i64 %109, %111, !dbg !2333
  %121 = sext i1 %120 to i32, !dbg !2333
  %122 = add nsw i32 %121, %119, !dbg !2333
  %123 = add nsw i32 %122, %117, !dbg !2334
  call void @llvm.dbg.value(metadata i32 %123, metadata !2241, metadata !DIExpression()), !dbg !2335
  %124 = icmp eq i32 %1, 12, !dbg !2336
  %125 = icmp slt i32 %123, 0, !dbg !2337
  %126 = icmp sgt i32 %123, 0, !dbg !2337
  %127 = select i1 %124, i1 %125, i1 %126, !dbg !2337
  br label %188

128:                                              ; preds = %24
  %129 = or i1 %26, %0, !dbg !2338
  br i1 %129, label %130, label %132, !dbg !2339

130:                                              ; preds = %128
  %131 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.117, i32 noundef 5) #39, !dbg !2340
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %131) #43, !dbg !2341
  unreachable, !dbg !2341

132:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #39, !dbg !2342
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2243, metadata !DIExpression()), !dbg !2343
  %133 = load ptr, ptr @argv, align 8, !dbg !2344, !tbaa !1000
  %134 = sext i32 %10 to i64, !dbg !2344
  %135 = getelementptr inbounds ptr, ptr %133, i64 %134, !dbg !2344
  %136 = load ptr, ptr %135, align 8, !dbg !2344, !tbaa !1000
  %137 = call i32 @stat(ptr noundef %136, ptr noundef nonnull %7) #39, !dbg !2345
  %138 = icmp eq i32 %137, 0, !dbg !2346
  br i1 %138, label %139, label %158, !dbg !2347

139:                                              ; preds = %132
  %140 = load ptr, ptr @argv, align 8, !dbg !2348, !tbaa !1000
  %141 = add nsw i32 %10, 2, !dbg !2349
  %142 = sext i32 %141 to i64, !dbg !2348
  %143 = getelementptr inbounds ptr, ptr %140, i64 %142, !dbg !2348
  %144 = load ptr, ptr %143, align 8, !dbg !2348, !tbaa !1000
  %145 = getelementptr inbounds [2 x %struct.stat], ptr %7, i64 0, i64 1, !dbg !2350
  %146 = call i32 @stat(ptr noundef %144, ptr noundef nonnull %145) #39, !dbg !2351
  %147 = icmp eq i32 %146, 0, !dbg !2352
  br i1 %147, label %148, label %158, !dbg !2353

148:                                              ; preds = %139
  call void @llvm.dbg.value(metadata ptr %7, metadata !2354, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata ptr %145, metadata !2360, metadata !DIExpression()), !dbg !2361
  %149 = load i64, ptr %7, align 8, !dbg !2363, !tbaa !2364
  %150 = load i64, ptr %145, align 8, !dbg !2363, !tbaa !2364
  %151 = icmp eq i64 %149, %150, !dbg !2363
  %152 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 1, !dbg !2363
  %153 = load i64, ptr %152, align 8, !dbg !2363, !tbaa !2365
  %154 = getelementptr inbounds [2 x %struct.stat], ptr %7, i64 0, i64 1, i32 1, !dbg !2363
  %155 = load i64, ptr %154, align 8, !dbg !2363, !tbaa !2365
  %156 = icmp eq i64 %153, %155, !dbg !2363
  %157 = and i1 %151, %156, !dbg !2363
  br label %158

158:                                              ; preds = %148, %139, %132
  %159 = phi i1 [ false, %139 ], [ false, %132 ], [ %157, %148 ], !dbg !2366
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #39, !dbg !2367
  br label %188

160:                                              ; preds = %24, %24
  %161 = load ptr, ptr @argv, align 8, !dbg !2368, !tbaa !1000
  %162 = sext i32 %10 to i64, !dbg !2368
  %163 = getelementptr inbounds ptr, ptr %161, i64 %162, !dbg !2368
  %164 = load ptr, ptr %163, align 8, !dbg !2368, !tbaa !1000
  %165 = add nsw i32 %10, 2, !dbg !2369
  %166 = sext i32 %165 to i64, !dbg !2370
  %167 = getelementptr inbounds ptr, ptr %161, i64 %166, !dbg !2370
  %168 = load ptr, ptr %167, align 8, !dbg !2370, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %164, metadata !1111, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata ptr %168, metadata !1117, metadata !DIExpression()), !dbg !2371
  %169 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %164, ptr noundef nonnull dereferenceable(1) %168) #40, !dbg !2373
  %170 = icmp eq i32 %169, 0, !dbg !2374
  %171 = icmp ne i32 %1, 0, !dbg !2375
  %172 = xor i1 %171, %170, !dbg !2376
  br label %188, !dbg !2377

173:                                              ; preds = %24, %24
  %174 = load ptr, ptr @argv, align 8, !dbg !2378, !tbaa !1000
  %175 = sext i32 %10 to i64, !dbg !2378
  %176 = getelementptr inbounds ptr, ptr %174, i64 %175, !dbg !2378
  %177 = load ptr, ptr %176, align 8, !dbg !2378, !tbaa !1000
  %178 = add nsw i32 %10, 2, !dbg !2379
  %179 = sext i32 %178 to i64, !dbg !2380
  %180 = getelementptr inbounds ptr, ptr %174, i64 %179, !dbg !2380
  %181 = load ptr, ptr %180, align 8, !dbg !2380, !tbaa !1000
  %182 = tail call i32 @strcoll(ptr noundef %177, ptr noundef %181) #40, !dbg !2381
  call void @llvm.dbg.value(metadata i32 %182, metadata !2247, metadata !DIExpression()), !dbg !2382
  %183 = icmp eq i32 %1, 2, !dbg !2383
  %184 = icmp slt i32 %182, 0, !dbg !2384
  %185 = icmp sgt i32 %182, 0, !dbg !2384
  %186 = select i1 %183, i1 %184, i1 %185, !dbg !2384
  br label %188

187:                                              ; preds = %24
  tail call void @__assert_fail(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.94, i32 noundef 362, ptr noundef nonnull @__PRETTY_FUNCTION__.binary_operator) #41, !dbg !2385
  unreachable, !dbg !2385

188:                                              ; preds = %173, %160, %158, %80, %70
  %189 = phi i1 [ %186, %173 ], [ %172, %160 ], [ %159, %158 ], [ %127, %80 ], [ %71, %70 ], !dbg !2388
  ret i1 %189, !dbg !2389
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2390 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_int(ptr noundef %0) unnamed_addr #10 !dbg !2393 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2397, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata ptr %0, metadata !2398, metadata !DIExpression()), !dbg !2400
  %2 = tail call ptr @__ctype_b_loc() #42, !dbg !2400
  %3 = load ptr, ptr %2, align 8, !tbaa !1000
  br label %4, !dbg !2401

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %0, %1 ], [ %12, %4 ], !dbg !2403
  call void @llvm.dbg.value(metadata ptr %5, metadata !2398, metadata !DIExpression()), !dbg !2400
  %6 = load i8, ptr %5, align 1, !dbg !2404, !tbaa !1109
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i16, ptr %3, i64 %7, !dbg !2404
  %9 = load i16, ptr %8, align 2, !dbg !2404, !tbaa !1141
  %10 = and i16 %9, 8192, !dbg !2404
  %11 = icmp eq i16 %10, 0, !dbg !2406
  %12 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !2407
  call void @llvm.dbg.value(metadata ptr %12, metadata !2398, metadata !DIExpression()), !dbg !2400
  br i1 %11, label %13, label %4, !dbg !2406, !llvm.loop !2408

13:                                               ; preds = %4
  %14 = icmp eq i8 %6, 43, !dbg !2410
  %15 = icmp eq i8 %6, 45, !dbg !2412
  %16 = zext i1 %15 to i64, !dbg !2412
  %17 = getelementptr inbounds i8, ptr %5, i64 %16, !dbg !2412
  %18 = select i1 %14, ptr %12, ptr %17, !dbg !2412
  call void @llvm.dbg.value(metadata ptr poison, metadata !2399, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata ptr %18, metadata !2398, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata ptr %18, metadata !2398, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2400
  %19 = load i8, ptr %18, align 1, !dbg !2413, !tbaa !1109
  %20 = zext i8 %19 to i32, !dbg !2413
  call void @llvm.dbg.value(metadata i32 %20, metadata !2415, metadata !DIExpression()), !dbg !2419
  %21 = add nsw i32 %20, -48, !dbg !2421
  %22 = icmp ult i32 %21, 10, !dbg !2421
  br i1 %22, label %23, label %50, !dbg !2422

23:                                               ; preds = %13, %23
  %24 = phi ptr [ %25, %23 ], [ %18, %13 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2423
  call void @llvm.dbg.value(metadata ptr %25, metadata !2398, metadata !DIExpression()), !dbg !2400
  %26 = load i8, ptr %25, align 1, !dbg !2424, !tbaa !1109
  %27 = zext i8 %26 to i32, !dbg !2424
  call void @llvm.dbg.value(metadata i32 %27, metadata !2415, metadata !DIExpression()), !dbg !2426
  %28 = add nsw i32 %27, -48, !dbg !2428
  %29 = icmp ult i32 %28, 10, !dbg !2428
  br i1 %29, label %23, label %30, !dbg !2429, !llvm.loop !2430

30:                                               ; preds = %23
  call void @llvm.dbg.value(metadata ptr %25, metadata !2398, metadata !DIExpression()), !dbg !2400
  %31 = zext i8 %26 to i64
  %32 = getelementptr inbounds i16, ptr %3, i64 %31, !dbg !2432
  %33 = load i16, ptr %32, align 2, !dbg !2432, !tbaa !1141
  %34 = and i16 %33, 8192, !dbg !2432
  %35 = icmp eq i16 %34, 0, !dbg !2433
  br i1 %35, label %45, label %36, !dbg !2433

36:                                               ; preds = %30, %36
  %37 = phi ptr [ %38, %36 ], [ %25, %30 ]
  call void @llvm.dbg.value(metadata ptr %37, metadata !2398, metadata !DIExpression()), !dbg !2400
  %38 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !2434
  call void @llvm.dbg.value(metadata ptr %38, metadata !2398, metadata !DIExpression()), !dbg !2400
  %39 = load i8, ptr %38, align 1, !dbg !2432, !tbaa !1109
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, ptr %3, i64 %40, !dbg !2432
  %42 = load i16, ptr %41, align 2, !dbg !2432, !tbaa !1141
  %43 = and i16 %42, 8192, !dbg !2432
  %44 = icmp eq i16 %43, 0, !dbg !2433
  br i1 %44, label %45, label %36, !dbg !2433, !llvm.loop !2435

45:                                               ; preds = %36, %30
  %46 = phi i8 [ %26, %30 ], [ %39, %36 ], !dbg !2432
  %47 = icmp eq i8 %46, 0, !dbg !2436
  br i1 %47, label %48, label %50, !dbg !2438

48:                                               ; preds = %45
  %49 = select i1 %14, ptr %12, ptr %5, !dbg !2412
  call void @llvm.dbg.value(metadata ptr %49, metadata !2399, metadata !DIExpression()), !dbg !2400
  ret ptr %49, !dbg !2439

50:                                               ; preds = %45, %13
  %51 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #39, !dbg !2440
  %52 = tail call ptr @quote(ptr noundef %0) #39, !dbg !2441
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %51, ptr noundef %52) #43, !dbg !2442
  unreachable, !dbg !2442
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nofree nounwind
declare !dbg !2443 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !2449 i32 @strcoll(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !2450 i32 @euidaccess(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !2454 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2459 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2462 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr nocapture noundef readonly, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2465 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !2469 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #17 !dbg !2472 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2474, metadata !DIExpression()), !dbg !2475
  store ptr %0, ptr @file_name, align 8, !dbg !2476, !tbaa !1000
  ret void, !dbg !2477
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #17 !dbg !2478 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2480, metadata !DIExpression()), !dbg !2481
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !2482, !tbaa !2483
  ret void, !dbg !2485
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2486 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2491, !tbaa !1000
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !2492
  %3 = icmp eq i32 %2, 0, !dbg !2493
  br i1 %3, label %22, label %4, !dbg !2494

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !2495, !tbaa !2483, !range !2496, !noundef !1088
  %6 = icmp eq i8 %5, 0, !dbg !2495
  br i1 %6, label %11, label %7, !dbg !2497

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !2498
  %9 = load i32, ptr %8, align 4, !dbg !2498, !tbaa !1100
  %10 = icmp eq i32 %9, 32, !dbg !2499
  br i1 %10, label %22, label %11, !dbg !2500

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.1.67, i32 noundef 5) #39, !dbg !2501
  call void @llvm.dbg.value(metadata ptr %12, metadata !2488, metadata !DIExpression()), !dbg !2502
  %13 = load ptr, ptr @file_name, align 8, !dbg !2503, !tbaa !1000
  %14 = icmp eq ptr %13, null, !dbg !2503
  %15 = tail call ptr @__errno_location() #42, !dbg !2505
  %16 = load i32, ptr %15, align 4, !dbg !2505, !tbaa !1100
  br i1 %14, label %19, label %17, !dbg !2506

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !2507
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.68, ptr noundef %18, ptr noundef %12) #39, !dbg !2507
  br label %20, !dbg !2507

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.69, ptr noundef %12) #39, !dbg !2508
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2509, !tbaa !1100
  tail call void @_exit(i32 noundef %21) #41, !dbg !2510
  unreachable, !dbg !2510

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2511, !tbaa !1000
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !2513
  %25 = icmp eq i32 %24, 0, !dbg !2514
  br i1 %25, label %28, label %26, !dbg !2515

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2516, !tbaa !1100
  tail call void @_exit(i32 noundef %27) #41, !dbg !2517
  unreachable, !dbg !2517

28:                                               ; preds = %22
  ret void, !dbg !2518
}

; Function Attrs: noreturn
declare !dbg !2519 void @_exit(i32 noundef) local_unnamed_addr #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #19 !dbg !2520 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2524, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 %1, metadata !2525, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata ptr %2, metadata !2526, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2527, metadata !DIExpression()), !dbg !2529
  tail call fastcc void @flush_stdout(), !dbg !2530
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2531, !tbaa !1000
  %7 = icmp eq ptr %6, null, !dbg !2531
  br i1 %7, label %9, label %8, !dbg !2533

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !2534
  br label %13, !dbg !2534

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2535, !tbaa !1000
  %11 = tail call ptr @getprogname() #40, !dbg !2535
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef %11) #39, !dbg !2535
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !2537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2537, !tbaa.struct !1340
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2537
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !2537
  ret void, !dbg !2538
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2539 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2541, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 1, metadata !2543, metadata !DIExpression()), !dbg !2546
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !2549
  %2 = icmp slt i32 %1, 0, !dbg !2550
  br i1 %2, label %6, label %3, !dbg !2551

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2552, !tbaa !1000
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !2552
  br label %6, !dbg !2552

6:                                                ; preds = %3, %0
  ret void, !dbg !2553
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2554 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2556, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 %1, metadata !2557, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %2, metadata !2558, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2559, metadata !DIExpression()), !dbg !2561
  %7 = load ptr, ptr @stderr, align 8, !dbg !2562, !tbaa !1000
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !2563, !noalias !2607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2611
  call void @llvm.dbg.value(metadata ptr %7, metadata !2603, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %2, metadata !2604, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2605, metadata !DIExpression()), !dbg !2613
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !2563
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !2563, !noalias !2607
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2614, !tbaa !1100
  %10 = add i32 %9, 1, !dbg !2614
  store i32 %10, ptr @error_message_count, align 4, !dbg !2614, !tbaa !1100
  %11 = icmp eq i32 %1, 0, !dbg !2615
  br i1 %11, label %21, label %12, !dbg !2617

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2618, metadata !DIExpression()), !dbg !2626
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !2628
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2622, metadata !DIExpression()), !dbg !2629
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !2630
  call void @llvm.dbg.value(metadata ptr %13, metadata !2621, metadata !DIExpression()), !dbg !2626
  %14 = icmp eq ptr %13, null, !dbg !2631
  br i1 %14, label %15, label %17, !dbg !2633

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.73, ptr noundef nonnull @.str.5.74, i32 noundef 5) #39, !dbg !2634
  call void @llvm.dbg.value(metadata ptr %16, metadata !2621, metadata !DIExpression()), !dbg !2626
  br label %17, !dbg !2635

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2626
  call void @llvm.dbg.value(metadata ptr %18, metadata !2621, metadata !DIExpression()), !dbg !2626
  %19 = load ptr, ptr @stderr, align 8, !dbg !2636, !tbaa !1000
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.75, ptr noundef %18) #39, !dbg !2636
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !2637
  br label %21, !dbg !2638

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2639, !tbaa !1000
  call void @llvm.dbg.value(metadata i32 10, metadata !2640, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata ptr %22, metadata !2646, metadata !DIExpression()), !dbg !2647
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2649
  %24 = load ptr, ptr %23, align 8, !dbg !2649, !tbaa !2650
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2649
  %26 = load ptr, ptr %25, align 8, !dbg !2649, !tbaa !2652
  %27 = icmp ult ptr %24, %26, !dbg !2649
  br i1 %27, label %30, label %28, !dbg !2649, !prof !2653

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !2649
  br label %32, !dbg !2649

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2649
  store ptr %31, ptr %23, align 8, !dbg !2649, !tbaa !2650
  store i8 10, ptr %24, align 1, !dbg !2649, !tbaa !1109
  br label %32, !dbg !2649

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2654, !tbaa !1000
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !2654
  %35 = icmp eq i32 %0, 0, !dbg !2655
  br i1 %35, label %37, label %36, !dbg !2657

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !2658
  unreachable, !dbg !2658

37:                                               ; preds = %32
  ret void, !dbg !2659
}

declare !dbg !2660 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2663 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2666 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2669 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2672 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2676 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2680, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 %1, metadata !2681, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %2, metadata !2682, metadata !DIExpression()), !dbg !2684
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !2685
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2683, metadata !DIExpression()), !dbg !2686
  call void @llvm.va_start(ptr nonnull %4), !dbg !2687
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !2688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2688, !tbaa.struct !1340
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #45, !dbg !2688
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !2688
  call void @llvm.va_end(ptr nonnull %4), !dbg !2689
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !2690
  ret void, !dbg !2690
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #19 !dbg !605 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !622, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %1, metadata !623, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %2, metadata !624, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %3, metadata !625, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %4, metadata !626, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.declare(metadata ptr %5, metadata !627, metadata !DIExpression()), !dbg !2692
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2693, !tbaa !1100
  %9 = icmp eq i32 %8, 0, !dbg !2693
  br i1 %9, label %24, label %10, !dbg !2695

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2696, !tbaa !1100
  %12 = icmp eq i32 %11, %3, !dbg !2699
  br i1 %12, label %13, label %23, !dbg !2700

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2701, !tbaa !1000
  %15 = icmp eq ptr %14, %2, !dbg !2702
  br i1 %15, label %37, label %16, !dbg !2703

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2704
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2705
  br i1 %19, label %20, label %23, !dbg !2705

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2706
  %22 = icmp eq i32 %21, 0, !dbg !2707
  br i1 %22, label %37, label %23, !dbg !2708

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2709, !tbaa !1000
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2710, !tbaa !1100
  br label %24, !dbg !2711

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2712
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2713, !tbaa !1000
  %26 = icmp eq ptr %25, null, !dbg !2713
  br i1 %26, label %28, label %27, !dbg !2715

27:                                               ; preds = %24
  tail call void %25() #39, !dbg !2716
  br label %32, !dbg !2716

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2717, !tbaa !1000
  %30 = tail call ptr @getprogname() #40, !dbg !2717
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.78, ptr noundef %30) #39, !dbg !2717
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2719, !tbaa !1000
  %34 = icmp eq ptr %2, null, !dbg !2719
  %35 = select i1 %34, ptr @.str.3.79, ptr @.str.2.80, !dbg !2719
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !2719
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !2720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2720, !tbaa.struct !1340
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2720
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !2720
  br label %37, !dbg !2721

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2721
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2722 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2726, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i32 %1, metadata !2727, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %2, metadata !2728, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i32 %3, metadata !2729, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %4, metadata !2730, metadata !DIExpression()), !dbg !2732
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !2733
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2731, metadata !DIExpression()), !dbg !2734
  call void @llvm.va_start(ptr nonnull %6), !dbg !2735
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !2736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2736, !tbaa.struct !1340
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #45, !dbg !2736
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !2736
  call void @llvm.va_end(ptr nonnull %6), !dbg !2737
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !2738
  ret void, !dbg !2738
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !2739 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2742, !tbaa !1000
  ret ptr %1, !dbg !2743
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @umaxtostr(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #21 !dbg !2744 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2749, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata ptr %1, metadata !2750, metadata !DIExpression()), !dbg !2752
  %3 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !2753
  call void @llvm.dbg.value(metadata ptr %3, metadata !2751, metadata !DIExpression()), !dbg !2752
  store i8 0, ptr %3, align 1, !dbg !2754, !tbaa !1109
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %8, %4 ]
  %6 = phi ptr [ %3, %2 ], [ %13, %4 ], !dbg !2752
  call void @llvm.dbg.value(metadata ptr %6, metadata !2751, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i64 %5, metadata !2749, metadata !DIExpression()), !dbg !2752
  %7 = freeze i64 %5
  %8 = udiv i64 %7, 10, !dbg !2755
  %9 = mul i64 %8, 10
  %10 = sub i64 %7, %9
  %11 = trunc i64 %10 to i8, !dbg !2758
  %12 = or i8 %11, 48, !dbg !2758
  %13 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !2759
  call void @llvm.dbg.value(metadata ptr %13, metadata !2751, metadata !DIExpression()), !dbg !2752
  store i8 %12, ptr %13, align 1, !dbg !2760, !tbaa !1109
  call void @llvm.dbg.value(metadata i64 %8, metadata !2749, metadata !DIExpression()), !dbg !2752
  %14 = icmp ult i64 %5, 10, !dbg !2761
  br i1 %14, label %15, label %4, !dbg !2762, !llvm.loop !2763

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr %13, metadata !2751, metadata !DIExpression()), !dbg !2752
  ret ptr %13, !dbg !2766
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #22 !dbg !2767 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2769, metadata !DIExpression()), !dbg !2772
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !2773
  call void @llvm.dbg.value(metadata ptr %2, metadata !2770, metadata !DIExpression()), !dbg !2772
  %3 = icmp eq ptr %2, null, !dbg !2774
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2774
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2774
  call void @llvm.dbg.value(metadata ptr %5, metadata !2771, metadata !DIExpression()), !dbg !2772
  %6 = ptrtoint ptr %5 to i64, !dbg !2775
  %7 = ptrtoint ptr %0 to i64, !dbg !2775
  %8 = sub i64 %6, %7, !dbg !2775
  %9 = icmp sgt i64 %8, 6, !dbg !2777
  br i1 %9, label %10, label %19, !dbg !2778

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2779
  call void @llvm.dbg.value(metadata ptr %11, metadata !2780, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata ptr @.str.121, metadata !2785, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 7, metadata !2786, metadata !DIExpression()), !dbg !2787
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.121, i64 7), !dbg !2789
  %13 = icmp eq i32 %12, 0, !dbg !2790
  br i1 %13, label %14, label %19, !dbg !2791

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2769, metadata !DIExpression()), !dbg !2772
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.122, i64 noundef 3) #40, !dbg !2792
  %16 = icmp eq i32 %15, 0, !dbg !2795
  %17 = select i1 %16, i64 3, i64 0, !dbg !2796
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2796
  br label %19, !dbg !2796

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2772
  call void @llvm.dbg.value(metadata ptr %21, metadata !2771, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata ptr %20, metadata !2769, metadata !DIExpression()), !dbg !2772
  store ptr %20, ptr @program_name, align 8, !dbg !2797, !tbaa !1000
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2798, !tbaa !1000
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2799, !tbaa !1000
  ret void, !dbg !2800
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2801 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !662 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !669, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata ptr %1, metadata !670, metadata !DIExpression()), !dbg !2802
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !2803
  call void @llvm.dbg.value(metadata ptr %5, metadata !671, metadata !DIExpression()), !dbg !2802
  %6 = icmp eq ptr %5, %0, !dbg !2804
  br i1 %6, label %7, label %14, !dbg !2806

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !2807
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !2808
  call void @llvm.dbg.declare(metadata ptr %4, metadata !677, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata ptr %4, metadata !2810, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata ptr %4, metadata !2819, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i32 0, metadata !2825, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i64 8, metadata !2826, metadata !DIExpression()), !dbg !2827
  store i64 0, ptr %4, align 8, !dbg !2829
  call void @llvm.dbg.value(metadata ptr %3, metadata !672, metadata !DIExpression(DW_OP_deref)), !dbg !2802
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2830
  %9 = icmp eq i64 %8, 2, !dbg !2832
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !672, metadata !DIExpression()), !dbg !2802
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2833
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2802
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !2834
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !2834
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2802
  ret ptr %15, !dbg !2834
}

; Function Attrs: nounwind
declare !dbg !2835 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2841 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2846, metadata !DIExpression()), !dbg !2849
  %2 = tail call ptr @__errno_location() #42, !dbg !2850
  %3 = load i32, ptr %2, align 4, !dbg !2850, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %3, metadata !2847, metadata !DIExpression()), !dbg !2849
  %4 = icmp eq ptr %0, null, !dbg !2851
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2851
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #46, !dbg !2852
  call void @llvm.dbg.value(metadata ptr %6, metadata !2848, metadata !DIExpression()), !dbg !2849
  store i32 %3, ptr %2, align 4, !dbg !2853, !tbaa !1100
  ret ptr %6, !dbg !2854
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !2855 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2861, metadata !DIExpression()), !dbg !2862
  %2 = icmp eq ptr %0, null, !dbg !2863
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2863
  %4 = load i32, ptr %3, align 8, !dbg !2864, !tbaa !2865
  ret i32 %4, !dbg !2867
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2868 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2872, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i32 %1, metadata !2873, metadata !DIExpression()), !dbg !2874
  %3 = icmp eq ptr %0, null, !dbg !2875
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2875
  store i32 %1, ptr %4, align 8, !dbg !2876, !tbaa !2865
  ret void, !dbg !2877
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #26 !dbg !2878 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2882, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8 %1, metadata !2883, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i32 %2, metadata !2884, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8 %1, metadata !2885, metadata !DIExpression()), !dbg !2890
  %4 = icmp eq ptr %0, null, !dbg !2891
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2891
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2892
  %7 = lshr i8 %1, 5, !dbg !2893
  %8 = zext i8 %7 to i64, !dbg !2893
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2894
  call void @llvm.dbg.value(metadata ptr %9, metadata !2886, metadata !DIExpression()), !dbg !2890
  %10 = and i8 %1, 31, !dbg !2895
  %11 = zext i8 %10 to i32, !dbg !2895
  call void @llvm.dbg.value(metadata i32 %11, metadata !2888, metadata !DIExpression()), !dbg !2890
  %12 = load i32, ptr %9, align 4, !dbg !2896, !tbaa !1100
  %13 = lshr i32 %12, %11, !dbg !2897
  %14 = and i32 %13, 1, !dbg !2898
  call void @llvm.dbg.value(metadata i32 %14, metadata !2889, metadata !DIExpression()), !dbg !2890
  %15 = xor i32 %13, %2, !dbg !2899
  %16 = and i32 %15, 1, !dbg !2899
  %17 = shl nuw i32 %16, %11, !dbg !2900
  %18 = xor i32 %17, %12, !dbg !2901
  store i32 %18, ptr %9, align 4, !dbg !2901, !tbaa !1100
  ret i32 %14, !dbg !2902
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2903 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2907, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i32 %1, metadata !2908, metadata !DIExpression()), !dbg !2910
  %3 = icmp eq ptr %0, null, !dbg !2911
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2913
  call void @llvm.dbg.value(metadata ptr %4, metadata !2907, metadata !DIExpression()), !dbg !2910
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2914
  %6 = load i32, ptr %5, align 4, !dbg !2914, !tbaa !2915
  call void @llvm.dbg.value(metadata i32 %6, metadata !2909, metadata !DIExpression()), !dbg !2910
  store i32 %1, ptr %5, align 4, !dbg !2916, !tbaa !2915
  ret i32 %6, !dbg !2917
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2918 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata ptr %1, metadata !2923, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata ptr %2, metadata !2924, metadata !DIExpression()), !dbg !2925
  %4 = icmp eq ptr %0, null, !dbg !2926
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2928
  call void @llvm.dbg.value(metadata ptr %5, metadata !2922, metadata !DIExpression()), !dbg !2925
  store i32 10, ptr %5, align 8, !dbg !2929, !tbaa !2865
  %6 = icmp ne ptr %1, null, !dbg !2930
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2932
  br i1 %8, label %10, label %9, !dbg !2932

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2933
  unreachable, !dbg !2933

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2934
  store ptr %1, ptr %11, align 8, !dbg !2935, !tbaa !2936
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2937
  store ptr %2, ptr %12, align 8, !dbg !2938, !tbaa !2939
  ret void, !dbg !2940
}

; Function Attrs: noreturn nounwind
declare !dbg !2941 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2942 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2946, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i64 %1, metadata !2947, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata ptr %2, metadata !2948, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i64 %3, metadata !2949, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata ptr %4, metadata !2950, metadata !DIExpression()), !dbg !2954
  %6 = icmp eq ptr %4, null, !dbg !2955
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2955
  call void @llvm.dbg.value(metadata ptr %7, metadata !2951, metadata !DIExpression()), !dbg !2954
  %8 = tail call ptr @__errno_location() #42, !dbg !2956
  %9 = load i32, ptr %8, align 4, !dbg !2956, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %9, metadata !2952, metadata !DIExpression()), !dbg !2954
  %10 = load i32, ptr %7, align 8, !dbg !2957, !tbaa !2865
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2958
  %12 = load i32, ptr %11, align 4, !dbg !2958, !tbaa !2915
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2959
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2960
  %15 = load ptr, ptr %14, align 8, !dbg !2960, !tbaa !2936
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2961
  %17 = load ptr, ptr %16, align 8, !dbg !2961, !tbaa !2939
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2962
  call void @llvm.dbg.value(metadata i64 %18, metadata !2953, metadata !DIExpression()), !dbg !2954
  store i32 %9, ptr %8, align 4, !dbg !2963, !tbaa !1100
  ret i64 %18, !dbg !2964
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2965 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2971, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %1, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %2, metadata !2973, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %3, metadata !2974, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 %4, metadata !2975, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 %5, metadata !2976, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %6, metadata !2977, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %7, metadata !2978, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %8, metadata !2979, metadata !DIExpression()), !dbg !3033
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !3034
  %17 = icmp eq i64 %16, 1, !dbg !3035
  call void @llvm.dbg.value(metadata i1 %17, metadata !2980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3033
  call void @llvm.dbg.value(metadata i64 0, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 0, metadata !2982, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr null, metadata !2983, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 0, metadata !2984, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 0, metadata !2985, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 %5, metadata !2986, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3033
  call void @llvm.dbg.value(metadata i8 0, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 1, metadata !2988, metadata !DIExpression()), !dbg !3033
  %18 = and i32 %5, 2, !dbg !3036
  %19 = icmp ne i32 %18, 0, !dbg !3036
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !3036

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !3037
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !3038
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !3039
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2988, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2986, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2985, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %34, metadata !2984, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %33, metadata !2983, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %32, metadata !2982, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 0, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %31, metadata !2974, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %30, metadata !2979, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %29, metadata !2978, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 %28, metadata !2975, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.label(metadata !3026), !dbg !3040
  call void @llvm.dbg.value(metadata i8 0, metadata !2989, metadata !DIExpression()), !dbg !3033
  switch i32 %28, label %101 [
    i32 6, label %40
    i32 5, label %41
    i32 7, label %102
    i32 0, label %100
    i32 2, label %95
    i32 4, label %92
    i32 3, label %91
    i32 1, label %93
    i32 10, label %70
    i32 8, label %45
    i32 9, label %45
  ], !dbg !3041

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2986, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 5, metadata !2975, metadata !DIExpression()), !dbg !3033
  br label %102, !dbg !3042

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2986, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 5, metadata !2975, metadata !DIExpression()), !dbg !3033
  br i1 %36, label %102, label %42, !dbg !3042

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !3043
  br i1 %43, label %102, label %44, !dbg !3047

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !3043, !tbaa !1109
  br label %102, !dbg !3043

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.135, metadata !775, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i32 %28, metadata !776, metadata !DIExpression()), !dbg !3048
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.136, ptr noundef nonnull @.str.11.135, i32 noundef 5) #39, !dbg !3052
  call void @llvm.dbg.value(metadata ptr %46, metadata !777, metadata !DIExpression()), !dbg !3048
  %47 = icmp eq ptr %46, @.str.11.135, !dbg !3053
  br i1 %47, label %48, label %57, !dbg !3055

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !3056
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !3057
  call void @llvm.dbg.declare(metadata ptr %13, metadata !779, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata ptr %13, metadata !3059, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata ptr %13, metadata !3067, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i32 0, metadata !3070, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i64 8, metadata !3071, metadata !DIExpression()), !dbg !3072
  store i64 0, ptr %13, align 8, !dbg !3074
  call void @llvm.dbg.value(metadata ptr %12, metadata !778, metadata !DIExpression(DW_OP_deref)), !dbg !3048
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !3075
  %50 = icmp eq i64 %49, 3, !dbg !3077
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !778, metadata !DIExpression()), !dbg !3048
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !3078
  %54 = icmp eq i32 %28, 9, !dbg !3078
  %55 = select i1 %54, ptr @.str.10.137, ptr @.str.12.138, !dbg !3078
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !3078
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !3079
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !3079
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !3048
  call void @llvm.dbg.value(metadata ptr %58, metadata !2978, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr @.str.12.138, metadata !775, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i32 %28, metadata !776, metadata !DIExpression()), !dbg !3080
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.136, ptr noundef nonnull @.str.12.138, i32 noundef 5) #39, !dbg !3082
  call void @llvm.dbg.value(metadata ptr %59, metadata !777, metadata !DIExpression()), !dbg !3080
  %60 = icmp eq ptr %59, @.str.12.138, !dbg !3083
  br i1 %60, label %61, label %70, !dbg !3084

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !3085
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !3086
  call void @llvm.dbg.declare(metadata ptr %11, metadata !779, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata ptr %11, metadata !3059, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata ptr %11, metadata !3067, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i32 0, metadata !3070, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 8, metadata !3071, metadata !DIExpression()), !dbg !3090
  store i64 0, ptr %11, align 8, !dbg !3092
  call void @llvm.dbg.value(metadata ptr %10, metadata !778, metadata !DIExpression(DW_OP_deref)), !dbg !3080
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !3093
  %63 = icmp eq i64 %62, 3, !dbg !3094
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !778, metadata !DIExpression()), !dbg !3080
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !3095
  %67 = icmp eq i32 %28, 9, !dbg !3095
  %68 = select i1 %67, ptr @.str.10.137, ptr @.str.12.138, !dbg !3095
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !3095
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !3096
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !3096
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2979, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %71, metadata !2978, metadata !DIExpression()), !dbg !3033
  br i1 %36, label %88, label %73, !dbg !3097

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2990, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 0, metadata !2981, metadata !DIExpression()), !dbg !3033
  %74 = load i8, ptr %71, align 1, !dbg !3099, !tbaa !1109
  %75 = icmp eq i8 %74, 0, !dbg !3101
  br i1 %75, label %88, label %76, !dbg !3101

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2990, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %79, metadata !2981, metadata !DIExpression()), !dbg !3033
  %80 = icmp ult i64 %79, %39, !dbg !3102
  br i1 %80, label %81, label %83, !dbg !3105

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !3102
  store i8 %77, ptr %82, align 1, !dbg !3102, !tbaa !1109
  br label %83, !dbg !3102

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !3105
  call void @llvm.dbg.value(metadata i64 %84, metadata !2981, metadata !DIExpression()), !dbg !3033
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !3106
  call void @llvm.dbg.value(metadata ptr %85, metadata !2990, metadata !DIExpression()), !dbg !3098
  %86 = load i8, ptr %85, align 1, !dbg !3099, !tbaa !1109
  %87 = icmp eq i8 %86, 0, !dbg !3101
  br i1 %87, label %88, label %76, !dbg !3101, !llvm.loop !3107

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !3109
  call void @llvm.dbg.value(metadata i64 %89, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 1, metadata !2985, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %72, metadata !2983, metadata !DIExpression()), !dbg !3033
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %90, metadata !2984, metadata !DIExpression()), !dbg !3033
  br label %102, !dbg !3111

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2985, metadata !DIExpression()), !dbg !3033
  br label %93, !dbg !3112

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2986, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2985, metadata !DIExpression()), !dbg !3033
  br i1 %36, label %102, label %96, !dbg !3113

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2986, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2985, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 2, metadata !2975, metadata !DIExpression()), !dbg !3033
  br label %102, !dbg !3114

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2986, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2985, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 2, metadata !2975, metadata !DIExpression()), !dbg !3033
  br i1 %36, label %102, label %96, !dbg !3114

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !3115
  br i1 %98, label %102, label %99, !dbg !3119

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !3115, !tbaa !1109
  br label %102, !dbg !3115

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2986, metadata !DIExpression()), !dbg !3033
  br label %102, !dbg !3120

101:                                              ; preds = %27
  call void @abort() #41, !dbg !3121
  unreachable, !dbg !3121

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !3109
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.137, %42 ], [ @.str.10.137, %44 ], [ @.str.10.137, %41 ], [ %33, %27 ], [ @.str.12.138, %96 ], [ @.str.12.138, %99 ], [ @.str.12.138, %95 ], [ @.str.10.137, %40 ], [ @.str.12.138, %93 ], [ @.str.12.138, %92 ], !dbg !3033
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !3033
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2986, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2985, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %108, metadata !2984, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %107, metadata !2983, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %106, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %105, metadata !2979, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %104, metadata !2978, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 %103, metadata !2975, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 0, metadata !2995, metadata !DIExpression()), !dbg !3122
  %111 = icmp ne i32 %103, 2
  %112 = and i1 %111, %109
  %113 = icmp ne i64 %108, 0
  %114 = select i1 %112, i1 %113, i1 false
  %115 = icmp ugt i64 %108, 1
  %116 = icmp eq i32 %103, 2
  %117 = and i1 %109, %110
  %118 = select i1 %117, i1 %113, i1 false
  %119 = and i1 %116, %110
  %120 = xor i1 %109, true
  %121 = and i1 %25, %110
  br label %122, !dbg !3123

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !3109
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !3037
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !3124
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %129, metadata !2995, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 poison, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2988, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %125, metadata !2982, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %124, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %123, metadata !2974, metadata !DIExpression()), !dbg !3033
  %131 = icmp eq i64 %123, -1, !dbg !3125
  br i1 %131, label %132, label %136, !dbg !3126

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3127
  %134 = load i8, ptr %133, align 1, !dbg !3127, !tbaa !1109
  %135 = icmp eq i8 %134, 0, !dbg !3128
  br i1 %135, label %579, label %138, !dbg !3129

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !3130
  br i1 %137, label %579, label %138, !dbg !3129

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2997, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 0, metadata !3000, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 0, metadata !3001, metadata !DIExpression()), !dbg !3131
  br i1 %114, label %139, label %152, !dbg !3132

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !3134
  %141 = select i1 %131, i1 %115, i1 false, !dbg !3135
  br i1 %141, label %142, label %144, !dbg !3135

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !3136
  call void @llvm.dbg.value(metadata i64 %143, metadata !2974, metadata !DIExpression()), !dbg !3033
  br label %144, !dbg !3137

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !3137
  call void @llvm.dbg.value(metadata i64 %145, metadata !2974, metadata !DIExpression()), !dbg !3033
  %146 = icmp ugt i64 %140, %145, !dbg !3138
  br i1 %146, label %152, label %147, !dbg !3139

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3140
  call void @llvm.dbg.value(metadata ptr %148, metadata !3141, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata ptr %107, metadata !3144, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i64 %108, metadata !3145, metadata !DIExpression()), !dbg !3146
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !3148
  %150 = icmp eq i32 %149, 0, !dbg !3149
  %151 = and i1 %150, %110, !dbg !3150
  br i1 %151, label %630, label %152, !dbg !3150

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2997, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %153, metadata !2974, metadata !DIExpression()), !dbg !3033
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3151
  %156 = load i8, ptr %155, align 1, !dbg !3151, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %156, metadata !3002, metadata !DIExpression()), !dbg !3131
  switch i8 %156, label %286 [
    i8 0, label %157
    i8 63, label %205
    i8 7, label %251
    i8 8, label %241
    i8 12, label %242
    i8 10, label %249
    i8 13, label %243
    i8 9, label %244
    i8 11, label %245
    i8 92, label %246
    i8 123, label %253
    i8 125, label %253
    i8 35, label %257
    i8 126, label %257
    i8 32, label %259
    i8 33, label %260
    i8 34, label %260
    i8 36, label %260
    i8 38, label %260
    i8 40, label %260
    i8 41, label %260
    i8 42, label %260
    i8 59, label %260
    i8 60, label %260
    i8 61, label %260
    i8 62, label %260
    i8 91, label %260
    i8 94, label %260
    i8 96, label %260
    i8 124, label %260
    i8 39, label %263
    i8 37, label %439
    i8 43, label %439
    i8 44, label %439
    i8 45, label %439
    i8 46, label %439
    i8 47, label %439
    i8 48, label %439
    i8 49, label %439
    i8 50, label %439
    i8 51, label %439
    i8 52, label %439
    i8 53, label %439
    i8 54, label %439
    i8 55, label %439
    i8 56, label %439
    i8 57, label %439
    i8 58, label %439
    i8 65, label %439
    i8 66, label %439
    i8 67, label %439
    i8 68, label %439
    i8 69, label %439
    i8 70, label %439
    i8 71, label %439
    i8 72, label %439
    i8 73, label %439
    i8 74, label %439
    i8 75, label %439
    i8 76, label %439
    i8 77, label %439
    i8 78, label %439
    i8 79, label %439
    i8 80, label %439
    i8 81, label %439
    i8 82, label %439
    i8 83, label %439
    i8 84, label %439
    i8 85, label %439
    i8 86, label %439
    i8 87, label %439
    i8 88, label %439
    i8 89, label %439
    i8 90, label %439
    i8 93, label %439
    i8 95, label %439
    i8 97, label %439
    i8 98, label %439
    i8 99, label %439
    i8 100, label %439
    i8 101, label %439
    i8 102, label %439
    i8 103, label %439
    i8 104, label %439
    i8 105, label %439
    i8 106, label %439
    i8 107, label %439
    i8 108, label %439
    i8 109, label %439
    i8 110, label %439
    i8 111, label %439
    i8 112, label %439
    i8 113, label %439
    i8 114, label %439
    i8 115, label %439
    i8 116, label %439
    i8 117, label %439
    i8 118, label %439
    i8 119, label %439
    i8 120, label %439
    i8 121, label %439
    i8 122, label %439
  ], !dbg !3152

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !3153

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !3154

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !3000, metadata !DIExpression()), !dbg !3131
  %160 = select i1 %111, i1 true, i1 %128, !dbg !3158
  br i1 %160, label %177, label %161, !dbg !3158

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !3160
  br i1 %162, label %163, label %165, !dbg !3164

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3160
  store i8 39, ptr %164, align 1, !dbg !3160, !tbaa !1109
  br label %165, !dbg !3160

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %166, metadata !2981, metadata !DIExpression()), !dbg !3033
  %167 = icmp ult i64 %166, %130, !dbg !3165
  br i1 %167, label %168, label %170, !dbg !3168

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !3165
  store i8 36, ptr %169, align 1, !dbg !3165, !tbaa !1109
  br label %170, !dbg !3165

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %171, metadata !2981, metadata !DIExpression()), !dbg !3033
  %172 = icmp ult i64 %171, %130, !dbg !3169
  br i1 %172, label %173, label %175, !dbg !3172

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !3169
  store i8 39, ptr %174, align 1, !dbg !3169, !tbaa !1109
  br label %175, !dbg !3169

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !3172
  call void @llvm.dbg.value(metadata i64 %176, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 1, metadata !2989, metadata !DIExpression()), !dbg !3033
  br label %177, !dbg !3173

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !3033
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %178, metadata !2981, metadata !DIExpression()), !dbg !3033
  %180 = icmp ult i64 %178, %130, !dbg !3174
  br i1 %180, label %181, label %183, !dbg !3177

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !3174
  store i8 92, ptr %182, align 1, !dbg !3174, !tbaa !1109
  br label %183, !dbg !3174

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %184, metadata !2981, metadata !DIExpression()), !dbg !3033
  br i1 %111, label %185, label %482, !dbg !3178

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !3180
  %187 = icmp ult i64 %186, %153, !dbg !3181
  br i1 %187, label %188, label %439, !dbg !3182

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !3183
  %190 = load i8, ptr %189, align 1, !dbg !3183, !tbaa !1109
  %191 = add i8 %190, -48, !dbg !3184
  %192 = icmp ult i8 %191, 10, !dbg !3184
  br i1 %192, label %193, label %439, !dbg !3184

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !3185
  br i1 %194, label %195, label %197, !dbg !3189

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !3185
  store i8 48, ptr %196, align 1, !dbg !3185, !tbaa !1109
  br label %197, !dbg !3185

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !3189
  call void @llvm.dbg.value(metadata i64 %198, metadata !2981, metadata !DIExpression()), !dbg !3033
  %199 = icmp ult i64 %198, %130, !dbg !3190
  br i1 %199, label %200, label %202, !dbg !3193

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !3190
  store i8 48, ptr %201, align 1, !dbg !3190, !tbaa !1109
  br label %202, !dbg !3190

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !3193
  call void @llvm.dbg.value(metadata i64 %203, metadata !2981, metadata !DIExpression()), !dbg !3033
  br label %439, !dbg !3194

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !3195

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !3196

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !3197

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !3199

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !3201
  %210 = icmp ult i64 %209, %153, !dbg !3202
  br i1 %210, label %211, label %439, !dbg !3203

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !3204
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !3205
  %214 = load i8, ptr %213, align 1, !dbg !3205, !tbaa !1109
  %215 = icmp eq i8 %214, 63, !dbg !3206
  br i1 %215, label %216, label %439, !dbg !3207

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !3208
  %218 = load i8, ptr %217, align 1, !dbg !3208, !tbaa !1109
  switch i8 %218, label %439 [
    i8 33, label %219
    i8 39, label %219
    i8 40, label %219
    i8 41, label %219
    i8 45, label %219
    i8 47, label %219
    i8 60, label %219
    i8 61, label %219
    i8 62, label %219
  ], !dbg !3209

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !3210

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !3002, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %209, metadata !2995, metadata !DIExpression()), !dbg !3122
  %221 = icmp ult i64 %124, %130, !dbg !3212
  br i1 %221, label %222, label %224, !dbg !3215

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3212
  store i8 63, ptr %223, align 1, !dbg !3212, !tbaa !1109
  br label %224, !dbg !3212

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !3215
  call void @llvm.dbg.value(metadata i64 %225, metadata !2981, metadata !DIExpression()), !dbg !3033
  %226 = icmp ult i64 %225, %130, !dbg !3216
  br i1 %226, label %227, label %229, !dbg !3219

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !3216
  store i8 34, ptr %228, align 1, !dbg !3216, !tbaa !1109
  br label %229, !dbg !3216

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !3219
  call void @llvm.dbg.value(metadata i64 %230, metadata !2981, metadata !DIExpression()), !dbg !3033
  %231 = icmp ult i64 %230, %130, !dbg !3220
  br i1 %231, label %232, label %234, !dbg !3223

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !3220
  store i8 34, ptr %233, align 1, !dbg !3220, !tbaa !1109
  br label %234, !dbg !3220

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !3223
  call void @llvm.dbg.value(metadata i64 %235, metadata !2981, metadata !DIExpression()), !dbg !3033
  %236 = icmp ult i64 %235, %130, !dbg !3224
  br i1 %236, label %237, label %239, !dbg !3227

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !3224
  store i8 63, ptr %238, align 1, !dbg !3224, !tbaa !1109
  br label %239, !dbg !3224

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %240, metadata !2981, metadata !DIExpression()), !dbg !3033
  br label %439, !dbg !3228

241:                                              ; preds = %152
  br label %251, !dbg !3229

242:                                              ; preds = %152
  br label %251, !dbg !3230

243:                                              ; preds = %152
  br label %249, !dbg !3231

244:                                              ; preds = %152
  br label %249, !dbg !3232

245:                                              ; preds = %152
  br label %251, !dbg !3233

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !3234

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !3235

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !3238

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !3240
  call void @llvm.dbg.label(metadata !3027), !dbg !3241
  br i1 %119, label %621, label %251, !dbg !3242

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !3240
  call void @llvm.dbg.label(metadata !3029), !dbg !3244
  br i1 %109, label %493, label %450, !dbg !3245

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !3246

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !3247, !tbaa !1109
  %256 = icmp eq i8 %255, 0, !dbg !3249
  br i1 %256, label %257, label %439, !dbg !3250

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !3251
  br i1 %258, label %259, label %439, !dbg !3253

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !3001, metadata !DIExpression()), !dbg !3131
  br label %260, !dbg !3254

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3001, metadata !DIExpression()), !dbg !3131
  br i1 %116, label %262, label %439, !dbg !3255

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !3257

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 1, metadata !3001, metadata !DIExpression()), !dbg !3131
  br i1 %116, label %264, label %439, !dbg !3258

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !3259

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !3262
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !3264
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !3264
  %270 = select i1 %268, i64 %130, i64 0, !dbg !3264
  call void @llvm.dbg.value(metadata i64 %270, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %269, metadata !2982, metadata !DIExpression()), !dbg !3033
  %271 = icmp ult i64 %124, %270, !dbg !3265
  br i1 %271, label %272, label %274, !dbg !3268

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3265
  store i8 39, ptr %273, align 1, !dbg !3265, !tbaa !1109
  br label %274, !dbg !3265

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !3268
  call void @llvm.dbg.value(metadata i64 %275, metadata !2981, metadata !DIExpression()), !dbg !3033
  %276 = icmp ult i64 %275, %270, !dbg !3269
  br i1 %276, label %277, label %279, !dbg !3272

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !3269
  store i8 92, ptr %278, align 1, !dbg !3269, !tbaa !1109
  br label %279, !dbg !3269

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !3272
  call void @llvm.dbg.value(metadata i64 %280, metadata !2981, metadata !DIExpression()), !dbg !3033
  %281 = icmp ult i64 %280, %270, !dbg !3273
  br i1 %281, label %282, label %284, !dbg !3276

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !3273
  store i8 39, ptr %283, align 1, !dbg !3273, !tbaa !1109
  br label %284, !dbg !3273

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !3276
  call void @llvm.dbg.value(metadata i64 %285, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 0, metadata !2989, metadata !DIExpression()), !dbg !3033
  br label %439, !dbg !3277

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !3278

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !3003, metadata !DIExpression()), !dbg !3279
  %288 = tail call ptr @__ctype_b_loc() #42, !dbg !3280
  %289 = load ptr, ptr %288, align 8, !dbg !3280, !tbaa !1000
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !3280
  %292 = load i16, ptr %291, align 2, !dbg !3280, !tbaa !1141
  %293 = and i16 %292, 16384, !dbg !3280
  %294 = icmp ne i16 %293, 0, !dbg !3282
  call void @llvm.dbg.value(metadata i1 %294, metadata !3006, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3279
  br label %337, !dbg !3283

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !3284
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3007, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata ptr %14, metadata !3059, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata ptr %14, metadata !3067, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 0, metadata !3070, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 8, metadata !3071, metadata !DIExpression()), !dbg !3288
  store i64 0, ptr %14, align 8, !dbg !3290
  call void @llvm.dbg.value(metadata i64 0, metadata !3003, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i8 1, metadata !3006, metadata !DIExpression()), !dbg !3279
  %296 = icmp eq i64 %153, -1, !dbg !3291
  br i1 %296, label %297, label %299, !dbg !3293

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %298, metadata !2974, metadata !DIExpression()), !dbg !3033
  br label %299, !dbg !3295

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !3131
  call void @llvm.dbg.value(metadata i64 %300, metadata !2974, metadata !DIExpression()), !dbg !3033
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !3296
  %301 = sub i64 %300, %129, !dbg !3297
  call void @llvm.dbg.value(metadata ptr %15, metadata !3010, metadata !DIExpression(DW_OP_deref)), !dbg !3298
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #39, !dbg !3299
  call void @llvm.dbg.value(metadata i64 %302, metadata !3014, metadata !DIExpression()), !dbg !3298
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !3300

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !3003, metadata !DIExpression()), !dbg !3279
  %304 = icmp ugt i64 %300, %129, !dbg !3301
  br i1 %304, label %306, label %332, !dbg !3303

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !3006, metadata !DIExpression()), !dbg !3279
  br label %332, !dbg !3304

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !3003, metadata !DIExpression()), !dbg !3279
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !3306
  %310 = load i8, ptr %309, align 1, !dbg !3306, !tbaa !1109
  %311 = icmp eq i8 %310, 0, !dbg !3303
  br i1 %311, label %332, label %312, !dbg !3307

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %313, metadata !3003, metadata !DIExpression()), !dbg !3279
  %314 = add i64 %313, %129, !dbg !3309
  %315 = icmp eq i64 %313, %301, !dbg !3301
  br i1 %315, label %332, label %306, !dbg !3303, !llvm.loop !3310

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !3311
  %319 = and i1 %318, %110, !dbg !3311
  call void @llvm.dbg.value(metadata i64 1, metadata !3015, metadata !DIExpression()), !dbg !3312
  br i1 %319, label %320, label %328, !dbg !3311

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !3015, metadata !DIExpression()), !dbg !3312
  %322 = add i64 %321, %129, !dbg !3313
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !3315
  %324 = load i8, ptr %323, align 1, !dbg !3315, !tbaa !1109
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !3316

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !3317
  call void @llvm.dbg.value(metadata i64 %326, metadata !3015, metadata !DIExpression()), !dbg !3312
  %327 = icmp eq i64 %326, %302, !dbg !3318
  br i1 %327, label %328, label %320, !dbg !3319, !llvm.loop !3320

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !3322, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %329, metadata !3010, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i32 %329, metadata !3324, metadata !DIExpression()), !dbg !3332
  %330 = call i32 @iswprint(i32 noundef %329) #39, !dbg !3334
  %331 = icmp ne i32 %330, 0, !dbg !3335
  call void @llvm.dbg.value(metadata i8 poison, metadata !3006, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 %302, metadata !3003, metadata !DIExpression()), !dbg !3279
  br label %332, !dbg !3336

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3006, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 %333, metadata !3003, metadata !DIExpression()), !dbg !3279
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !3337
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !3338
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !3006, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 0, metadata !3003, metadata !DIExpression()), !dbg !3279
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !3337
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !3338
  call void @llvm.dbg.label(metadata !3032), !dbg !3339
  %336 = select i1 %109, i32 4, i32 2, !dbg !3340
  br label %626, !dbg !3340

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !3131
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !3342
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3006, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 %339, metadata !3003, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 %338, metadata !2974, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i1 %340, metadata !3001, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3131
  %341 = icmp ult i64 %339, 2, !dbg !3343
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !3344
  br i1 %343, label %439, label %344, !dbg !3344

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %345, metadata !3023, metadata !DIExpression()), !dbg !3346
  br label %346, !dbg !3347

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !3033
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !3122
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !3348
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !3131
  call void @llvm.dbg.value(metadata i8 %352, metadata !3002, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 %351, metadata !3000, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 poison, metadata !2997, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %349, metadata !2995, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 poison, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %347, metadata !2981, metadata !DIExpression()), !dbg !3033
  br i1 %342, label %397, label %353, !dbg !3349

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !3354

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !3000, metadata !DIExpression()), !dbg !3131
  %355 = select i1 %111, i1 true, i1 %348, !dbg !3357
  br i1 %355, label %372, label %356, !dbg !3357

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !3359
  br i1 %357, label %358, label %360, !dbg !3363

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3359
  store i8 39, ptr %359, align 1, !dbg !3359, !tbaa !1109
  br label %360, !dbg !3359

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !3363
  call void @llvm.dbg.value(metadata i64 %361, metadata !2981, metadata !DIExpression()), !dbg !3033
  %362 = icmp ult i64 %361, %130, !dbg !3364
  br i1 %362, label %363, label %365, !dbg !3367

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !3364
  store i8 36, ptr %364, align 1, !dbg !3364, !tbaa !1109
  br label %365, !dbg !3364

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !3367
  call void @llvm.dbg.value(metadata i64 %366, metadata !2981, metadata !DIExpression()), !dbg !3033
  %367 = icmp ult i64 %366, %130, !dbg !3368
  br i1 %367, label %368, label %370, !dbg !3371

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !3368
  store i8 39, ptr %369, align 1, !dbg !3368, !tbaa !1109
  br label %370, !dbg !3368

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !3371
  call void @llvm.dbg.value(metadata i64 %371, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 1, metadata !2989, metadata !DIExpression()), !dbg !3033
  br label %372, !dbg !3372

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !3033
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %373, metadata !2981, metadata !DIExpression()), !dbg !3033
  %375 = icmp ult i64 %373, %130, !dbg !3373
  br i1 %375, label %376, label %378, !dbg !3376

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !3373
  store i8 92, ptr %377, align 1, !dbg !3373, !tbaa !1109
  br label %378, !dbg !3373

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %379, metadata !2981, metadata !DIExpression()), !dbg !3033
  %380 = icmp ult i64 %379, %130, !dbg !3377
  br i1 %380, label %381, label %385, !dbg !3380

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !3377
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !3377
  store i8 %383, ptr %384, align 1, !dbg !3377, !tbaa !1109
  br label %385, !dbg !3377

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %386, metadata !2981, metadata !DIExpression()), !dbg !3033
  %387 = icmp ult i64 %386, %130, !dbg !3381
  br i1 %387, label %388, label %393, !dbg !3384

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !3381
  %391 = or i8 %390, 48, !dbg !3381
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3381
  store i8 %391, ptr %392, align 1, !dbg !3381, !tbaa !1109
  br label %393, !dbg !3381

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !3384
  call void @llvm.dbg.value(metadata i64 %394, metadata !2981, metadata !DIExpression()), !dbg !3033
  %395 = and i8 %352, 7, !dbg !3385
  %396 = or i8 %395, 48, !dbg !3386
  call void @llvm.dbg.value(metadata i8 %396, metadata !3002, metadata !DIExpression()), !dbg !3131
  br label %404, !dbg !3387

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !3388

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !3389
  br i1 %399, label %400, label %402, !dbg !3394

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3389
  store i8 92, ptr %401, align 1, !dbg !3389, !tbaa !1109
  br label %402, !dbg !3389

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !3394
  call void @llvm.dbg.value(metadata i64 %403, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 0, metadata !2997, metadata !DIExpression()), !dbg !3131
  br label %404, !dbg !3395

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !3033
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !3131
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !3131
  call void @llvm.dbg.value(metadata i8 %409, metadata !3002, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 %408, metadata !3000, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 poison, metadata !2997, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 poison, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %405, metadata !2981, metadata !DIExpression()), !dbg !3033
  %410 = add i64 %349, 1, !dbg !3396
  %411 = icmp ugt i64 %345, %410, !dbg !3398
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !3399

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !3400
  %415 = select i1 %406, i1 %414, i1 false, !dbg !3400
  br i1 %415, label %416, label %427, !dbg !3400

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !3403
  br i1 %417, label %418, label %420, !dbg !3407

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !3403
  store i8 39, ptr %419, align 1, !dbg !3403, !tbaa !1109
  br label %420, !dbg !3403

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !3407
  call void @llvm.dbg.value(metadata i64 %421, metadata !2981, metadata !DIExpression()), !dbg !3033
  %422 = icmp ult i64 %421, %130, !dbg !3408
  br i1 %422, label %423, label %425, !dbg !3411

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !3408
  store i8 39, ptr %424, align 1, !dbg !3408, !tbaa !1109
  br label %425, !dbg !3408

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !3411
  call void @llvm.dbg.value(metadata i64 %426, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 0, metadata !2989, metadata !DIExpression()), !dbg !3033
  br label %427, !dbg !3412

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !3413
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %428, metadata !2981, metadata !DIExpression()), !dbg !3033
  %430 = icmp ult i64 %428, %130, !dbg !3414
  br i1 %430, label %431, label %433, !dbg !3417

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !3414
  store i8 %409, ptr %432, align 1, !dbg !3414, !tbaa !1109
  br label %433, !dbg !3414

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !3417
  call void @llvm.dbg.value(metadata i64 %434, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %410, metadata !2995, metadata !DIExpression()), !dbg !3122
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !3418
  %436 = load i8, ptr %435, align 1, !dbg !3418, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %436, metadata !3002, metadata !DIExpression()), !dbg !3131
  br label %346, !dbg !3419, !llvm.loop !3420

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !3002, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i1 %340, metadata !3001, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3131
  call void @llvm.dbg.value(metadata i8 %408, metadata !3000, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 poison, metadata !2997, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %349, metadata !2995, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 poison, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %405, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %338, metadata !2974, metadata !DIExpression()), !dbg !3033
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3423
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !3033
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !3037
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !3122
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !3131
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %448, metadata !3002, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 poison, metadata !3001, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 poison, metadata !3000, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 poison, metadata !2997, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %445, metadata !2995, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 poison, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %442, metadata !2982, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %441, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %440, metadata !2974, metadata !DIExpression()), !dbg !3033
  br i1 %112, label %461, label %450, !dbg !3424

450:                                              ; preds = %204, %251, %439
  %451 = phi i64 [ %449, %439 ], [ %130, %251 ], [ %130, %204 ]
  %452 = phi i8 [ %448, %439 ], [ %156, %251 ], [ 0, %204 ]
  %453 = phi i1 [ %447, %439 ], [ false, %251 ], [ false, %204 ]
  %454 = phi i1 [ %446, %439 ], [ false, %251 ], [ false, %204 ]
  %455 = phi i64 [ %445, %439 ], [ %129, %251 ], [ %129, %204 ]
  %456 = phi i1 [ %444, %439 ], [ %128, %251 ], [ %128, %204 ]
  %457 = phi i1 [ %443, %439 ], [ %126, %251 ], [ %126, %204 ]
  %458 = phi i64 [ %442, %439 ], [ %125, %251 ], [ %125, %204 ]
  %459 = phi i64 [ %441, %439 ], [ %124, %251 ], [ %124, %204 ]
  %460 = phi i64 [ %440, %439 ], [ %153, %251 ], [ %153, %204 ]
  br i1 %121, label %462, label %482, !dbg !3426

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3427

462:                                              ; preds = %450, %461
  %463 = phi i64 [ %451, %450 ], [ %449, %461 ]
  %464 = phi i8 [ %452, %450 ], [ %448, %461 ]
  %465 = phi i1 [ %453, %450 ], [ %447, %461 ]
  %466 = phi i1 [ %454, %450 ], [ %446, %461 ]
  %467 = phi i64 [ %455, %450 ], [ %445, %461 ]
  %468 = phi i1 [ %456, %450 ], [ %444, %461 ]
  %469 = phi i1 [ %457, %450 ], [ %443, %461 ]
  %470 = phi i64 [ %458, %450 ], [ %442, %461 ]
  %471 = phi i64 [ %459, %450 ], [ %441, %461 ]
  %472 = phi i64 [ %460, %450 ], [ %440, %461 ]
  %473 = lshr i8 %464, 5, !dbg !3428
  %474 = zext i8 %473 to i64, !dbg !3428
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3429
  %476 = load i32, ptr %475, align 4, !dbg !3429, !tbaa !1100
  %477 = and i8 %464, 31, !dbg !3430
  %478 = zext i8 %477 to i32, !dbg !3430
  %479 = shl nuw i32 1, %478, !dbg !3431
  %480 = and i32 %476, %479, !dbg !3431
  %481 = icmp eq i32 %480, 0, !dbg !3431
  br i1 %481, label %482, label %493, !dbg !3432

482:                                              ; preds = %183, %462, %461, %450
  %483 = phi i64 [ %463, %462 ], [ %449, %461 ], [ %451, %450 ], [ %130, %183 ]
  %484 = phi i8 [ %464, %462 ], [ %448, %461 ], [ %452, %450 ], [ 48, %183 ]
  %485 = phi i1 [ %465, %462 ], [ %447, %461 ], [ %453, %450 ], [ false, %183 ]
  %486 = phi i1 [ %466, %462 ], [ %446, %461 ], [ %454, %450 ], [ true, %183 ]
  %487 = phi i64 [ %467, %462 ], [ %445, %461 ], [ %455, %450 ], [ %129, %183 ]
  %488 = phi i1 [ %468, %462 ], [ %444, %461 ], [ %456, %450 ], [ %179, %183 ]
  %489 = phi i1 [ %469, %462 ], [ %443, %461 ], [ %457, %450 ], [ %126, %183 ]
  %490 = phi i64 [ %470, %462 ], [ %442, %461 ], [ %458, %450 ], [ %125, %183 ]
  %491 = phi i64 [ %471, %462 ], [ %441, %461 ], [ %459, %450 ], [ %184, %183 ]
  %492 = phi i64 [ %472, %462 ], [ %440, %461 ], [ %460, %450 ], [ %153, %183 ]
  br i1 %154, label %493, label %529, !dbg !3433

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3423
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !3033
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !3037
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3434
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !3131
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %501, metadata !3002, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 poison, metadata !3001, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %499, metadata !2995, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 poison, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %496, metadata !2982, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %495, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %494, metadata !2974, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.label(metadata !3030), !dbg !3435
  br i1 %110, label %621, label %503, !dbg !3436

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !3000, metadata !DIExpression()), !dbg !3131
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3438
  br i1 %504, label %521, label %505, !dbg !3438

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3440
  br i1 %506, label %507, label %509, !dbg !3444

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3440
  store i8 39, ptr %508, align 1, !dbg !3440, !tbaa !1109
  br label %509, !dbg !3440

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3444
  call void @llvm.dbg.value(metadata i64 %510, metadata !2981, metadata !DIExpression()), !dbg !3033
  %511 = icmp ult i64 %510, %502, !dbg !3445
  br i1 %511, label %512, label %514, !dbg !3448

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3445
  store i8 36, ptr %513, align 1, !dbg !3445, !tbaa !1109
  br label %514, !dbg !3445

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3448
  call void @llvm.dbg.value(metadata i64 %515, metadata !2981, metadata !DIExpression()), !dbg !3033
  %516 = icmp ult i64 %515, %502, !dbg !3449
  br i1 %516, label %517, label %519, !dbg !3452

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3449
  store i8 39, ptr %518, align 1, !dbg !3449, !tbaa !1109
  br label %519, !dbg !3449

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3452
  call void @llvm.dbg.value(metadata i64 %520, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 1, metadata !2989, metadata !DIExpression()), !dbg !3033
  br label %521, !dbg !3453

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !3131
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %522, metadata !2981, metadata !DIExpression()), !dbg !3033
  %524 = icmp ult i64 %522, %502, !dbg !3454
  br i1 %524, label %525, label %527, !dbg !3457

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3454
  store i8 92, ptr %526, align 1, !dbg !3454, !tbaa !1109
  br label %527, !dbg !3454

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3457
  call void @llvm.dbg.value(metadata i64 %502, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %501, metadata !3002, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 poison, metadata !3001, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 poison, metadata !3000, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %499, metadata !2995, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 poison, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %496, metadata !2982, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %528, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %494, metadata !2974, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.label(metadata !3031), !dbg !3458
  br label %553, !dbg !3459

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3423
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !3033
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !3037
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3434
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3462
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %538, metadata !3002, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 poison, metadata !3001, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 poison, metadata !3000, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %535, metadata !2995, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 poison, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %532, metadata !2982, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %531, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %530, metadata !2974, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.label(metadata !3031), !dbg !3458
  %540 = xor i1 %534, true, !dbg !3459
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3459
  br i1 %541, label %553, label %542, !dbg !3459

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3463
  br i1 %543, label %544, label %546, !dbg !3467

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3463
  store i8 39, ptr %545, align 1, !dbg !3463, !tbaa !1109
  br label %546, !dbg !3463

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3467
  call void @llvm.dbg.value(metadata i64 %547, metadata !2981, metadata !DIExpression()), !dbg !3033
  %548 = icmp ult i64 %547, %539, !dbg !3468
  br i1 %548, label %549, label %551, !dbg !3471

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3468
  store i8 39, ptr %550, align 1, !dbg !3468, !tbaa !1109
  br label %551, !dbg !3468

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3471
  call void @llvm.dbg.value(metadata i64 %552, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 0, metadata !2989, metadata !DIExpression()), !dbg !3033
  br label %553, !dbg !3472

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !3131
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %561, metadata !2981, metadata !DIExpression()), !dbg !3033
  %563 = icmp ult i64 %561, %554, !dbg !3473
  br i1 %563, label %564, label %566, !dbg !3476

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3473
  store i8 %555, ptr %565, align 1, !dbg !3473, !tbaa !1109
  br label %566, !dbg !3473

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3476
  call void @llvm.dbg.value(metadata i64 %567, metadata !2981, metadata !DIExpression()), !dbg !3033
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3477
  call void @llvm.dbg.value(metadata i8 poison, metadata !2988, metadata !DIExpression()), !dbg !3033
  br label %569, !dbg !3478

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3423
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !3033
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !3037
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3434
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %576, metadata !2995, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 poison, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2988, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %572, metadata !2982, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %571, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %570, metadata !2974, metadata !DIExpression()), !dbg !3033
  %578 = add i64 %576, 1, !dbg !3479
  call void @llvm.dbg.value(metadata i64 %578, metadata !2995, metadata !DIExpression()), !dbg !3122
  br label %122, !dbg !3480, !llvm.loop !3481

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2988, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 poison, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %125, metadata !2982, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %124, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %123, metadata !2974, metadata !DIExpression()), !dbg !3033
  %580 = icmp ne i64 %124, 0, !dbg !3483
  %581 = xor i1 %110, true, !dbg !3485
  %582 = or i1 %580, %581, !dbg !3485
  %583 = or i1 %582, %111, !dbg !3485
  br i1 %583, label %584, label %621, !dbg !3485

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3486
  %586 = xor i1 %126, true, !dbg !3486
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3486
  br i1 %587, label %595, label %588, !dbg !3486

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3488

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3490
  br label %636, !dbg !3492

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3493
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3495
  br i1 %594, label %27, label %595, !dbg !3495

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3496
  %598 = or i1 %597, %596, !dbg !3498
  br i1 %598, label %614, label %599, !dbg !3498

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2983, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %124, metadata !2981, metadata !DIExpression()), !dbg !3033
  %600 = load i8, ptr %107, align 1, !dbg !3499, !tbaa !1109
  %601 = icmp eq i8 %600, 0, !dbg !3502
  br i1 %601, label %614, label %602, !dbg !3502

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2983, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %605, metadata !2981, metadata !DIExpression()), !dbg !3033
  %606 = icmp ult i64 %605, %130, !dbg !3503
  br i1 %606, label %607, label %609, !dbg !3506

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3503
  store i8 %603, ptr %608, align 1, !dbg !3503, !tbaa !1109
  br label %609, !dbg !3503

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3506
  call void @llvm.dbg.value(metadata i64 %610, metadata !2981, metadata !DIExpression()), !dbg !3033
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3507
  call void @llvm.dbg.value(metadata ptr %611, metadata !2983, metadata !DIExpression()), !dbg !3033
  %612 = load i8, ptr %611, align 1, !dbg !3499, !tbaa !1109
  %613 = icmp eq i8 %612, 0, !dbg !3502
  br i1 %613, label %614, label %602, !dbg !3502, !llvm.loop !3508

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !3109
  call void @llvm.dbg.value(metadata i64 %615, metadata !2981, metadata !DIExpression()), !dbg !3033
  %616 = icmp ult i64 %615, %130, !dbg !3510
  br i1 %616, label %617, label %636, !dbg !3512

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3513
  store i8 0, ptr %618, align 1, !dbg !3514, !tbaa !1109
  br label %636, !dbg !3513

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !3032), !dbg !3339
  %620 = icmp eq i32 %103, 2, !dbg !3515
  br i1 %620, label %626, label %630, !dbg !3340

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !3032), !dbg !3339
  %624 = icmp eq i32 %103, 2, !dbg !3515
  %625 = select i1 %109, i32 4, i32 2, !dbg !3340
  br i1 %624, label %626, label %630, !dbg !3340

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !3340

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2975, metadata !DIExpression()), !dbg !3033
  %634 = and i32 %5, -3, !dbg !3516
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3517
  br label %636, !dbg !3518

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3519
}

; Function Attrs: nounwind
declare !dbg !3520 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3523 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3525 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3529, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i64 %1, metadata !3530, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata ptr %2, metadata !3531, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata ptr %0, metadata !3533, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %1, metadata !3538, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata ptr null, metadata !3539, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata ptr %2, metadata !3540, metadata !DIExpression()), !dbg !3546
  %4 = icmp eq ptr %2, null, !dbg !3548
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3548
  call void @llvm.dbg.value(metadata ptr %5, metadata !3541, metadata !DIExpression()), !dbg !3546
  %6 = tail call ptr @__errno_location() #42, !dbg !3549
  %7 = load i32, ptr %6, align 4, !dbg !3549, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %7, metadata !3542, metadata !DIExpression()), !dbg !3546
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3550
  %9 = load i32, ptr %8, align 4, !dbg !3550, !tbaa !2915
  %10 = or i32 %9, 1, !dbg !3551
  call void @llvm.dbg.value(metadata i32 %10, metadata !3543, metadata !DIExpression()), !dbg !3546
  %11 = load i32, ptr %5, align 8, !dbg !3552, !tbaa !2865
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3553
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3554
  %14 = load ptr, ptr %13, align 8, !dbg !3554, !tbaa !2936
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3555
  %16 = load ptr, ptr %15, align 8, !dbg !3555, !tbaa !2939
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3556
  %18 = add i64 %17, 1, !dbg !3557
  call void @llvm.dbg.value(metadata i64 %18, metadata !3544, metadata !DIExpression()), !dbg !3546
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !3558
  call void @llvm.dbg.value(metadata ptr %19, metadata !3545, metadata !DIExpression()), !dbg !3546
  %20 = load i32, ptr %5, align 8, !dbg !3559, !tbaa !2865
  %21 = load ptr, ptr %13, align 8, !dbg !3560, !tbaa !2936
  %22 = load ptr, ptr %15, align 8, !dbg !3561, !tbaa !2939
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3562
  store i32 %7, ptr %6, align 4, !dbg !3563, !tbaa !1100
  ret ptr %19, !dbg !3564
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3534 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3533, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %1, metadata !3538, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata ptr %2, metadata !3539, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata ptr %3, metadata !3540, metadata !DIExpression()), !dbg !3565
  %5 = icmp eq ptr %3, null, !dbg !3566
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3566
  call void @llvm.dbg.value(metadata ptr %6, metadata !3541, metadata !DIExpression()), !dbg !3565
  %7 = tail call ptr @__errno_location() #42, !dbg !3567
  %8 = load i32, ptr %7, align 4, !dbg !3567, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %8, metadata !3542, metadata !DIExpression()), !dbg !3565
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3568
  %10 = load i32, ptr %9, align 4, !dbg !3568, !tbaa !2915
  %11 = icmp eq ptr %2, null, !dbg !3569
  %12 = zext i1 %11 to i32, !dbg !3569
  %13 = or i32 %10, %12, !dbg !3570
  call void @llvm.dbg.value(metadata i32 %13, metadata !3543, metadata !DIExpression()), !dbg !3565
  %14 = load i32, ptr %6, align 8, !dbg !3571, !tbaa !2865
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3572
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3573
  %17 = load ptr, ptr %16, align 8, !dbg !3573, !tbaa !2936
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3574
  %19 = load ptr, ptr %18, align 8, !dbg !3574, !tbaa !2939
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3575
  %21 = add i64 %20, 1, !dbg !3576
  call void @llvm.dbg.value(metadata i64 %21, metadata !3544, metadata !DIExpression()), !dbg !3565
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !3577
  call void @llvm.dbg.value(metadata ptr %22, metadata !3545, metadata !DIExpression()), !dbg !3565
  %23 = load i32, ptr %6, align 8, !dbg !3578, !tbaa !2865
  %24 = load ptr, ptr %16, align 8, !dbg !3579, !tbaa !2936
  %25 = load ptr, ptr %18, align 8, !dbg !3580, !tbaa !2939
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3581
  store i32 %8, ptr %7, align 4, !dbg !3582, !tbaa !1100
  br i1 %11, label %28, label %27, !dbg !3583

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3584, !tbaa !3586
  br label %28, !dbg !3587

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3588
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3589 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3594, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %1, metadata !3591, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i32 1, metadata !3592, metadata !DIExpression()), !dbg !3596
  %2 = load i32, ptr @nslots, align 4, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 1, metadata !3592, metadata !DIExpression()), !dbg !3596
  %3 = icmp sgt i32 %2, 1, !dbg !3597
  br i1 %3, label %4, label %6, !dbg !3599

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3597
  br label %10, !dbg !3599

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3600
  %8 = load ptr, ptr %7, align 8, !dbg !3600, !tbaa !3602
  %9 = icmp eq ptr %8, @slot0, !dbg !3604
  br i1 %9, label %17, label %16, !dbg !3605

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3592, metadata !DIExpression()), !dbg !3596
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3606
  %13 = load ptr, ptr %12, align 8, !dbg !3606, !tbaa !3602
  tail call void @free(ptr noundef %13) #39, !dbg !3607
  %14 = add nuw nsw i64 %11, 1, !dbg !3608
  call void @llvm.dbg.value(metadata i64 %14, metadata !3592, metadata !DIExpression()), !dbg !3596
  %15 = icmp eq i64 %14, %5, !dbg !3597
  br i1 %15, label %6, label %10, !dbg !3599, !llvm.loop !3609

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !3611
  store i64 256, ptr @slotvec0, align 8, !dbg !3613, !tbaa !3614
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3615, !tbaa !3602
  br label %17, !dbg !3616

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3617
  br i1 %18, label %20, label %19, !dbg !3619

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !3620
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3622, !tbaa !1000
  br label %20, !dbg !3623

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3624, !tbaa !1100
  ret void, !dbg !3625
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3626 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3629 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3631, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata ptr %1, metadata !3632, metadata !DIExpression()), !dbg !3633
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3634
  ret ptr %3, !dbg !3635
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3636 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3640, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata ptr %1, metadata !3641, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 %2, metadata !3642, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata ptr %3, metadata !3643, metadata !DIExpression()), !dbg !3656
  %6 = tail call ptr @__errno_location() #42, !dbg !3657
  %7 = load i32, ptr %6, align 4, !dbg !3657, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %7, metadata !3644, metadata !DIExpression()), !dbg !3656
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3658, !tbaa !1000
  call void @llvm.dbg.value(metadata ptr %8, metadata !3645, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3646, metadata !DIExpression()), !dbg !3656
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3659
  br i1 %9, label %10, label %11, !dbg !3659

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !3661
  unreachable, !dbg !3661

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3662, !tbaa !1100
  %13 = icmp sgt i32 %12, %0, !dbg !3663
  br i1 %13, label %32, label %14, !dbg !3664

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3665
  call void @llvm.dbg.value(metadata i1 %15, metadata !3647, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3666
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !3667
  %16 = sext i32 %12 to i64, !dbg !3668
  call void @llvm.dbg.value(metadata i64 %16, metadata !3650, metadata !DIExpression()), !dbg !3666
  store i64 %16, ptr %5, align 8, !dbg !3669, !tbaa !3586
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3670
  %18 = add nuw nsw i32 %0, 1, !dbg !3671
  %19 = sub i32 %18, %12, !dbg !3672
  %20 = sext i32 %19 to i64, !dbg !3673
  call void @llvm.dbg.value(metadata ptr %5, metadata !3650, metadata !DIExpression(DW_OP_deref)), !dbg !3666
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3674
  call void @llvm.dbg.value(metadata ptr %21, metadata !3645, metadata !DIExpression()), !dbg !3656
  store ptr %21, ptr @slotvec, align 8, !dbg !3675, !tbaa !1000
  br i1 %15, label %22, label %23, !dbg !3676

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3677, !tbaa.struct !3679
  br label %23, !dbg !3680

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3681, !tbaa !1100
  %25 = sext i32 %24 to i64, !dbg !3682
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3682
  %27 = load i64, ptr %5, align 8, !dbg !3683, !tbaa !3586
  call void @llvm.dbg.value(metadata i64 %27, metadata !3650, metadata !DIExpression()), !dbg !3666
  %28 = sub nsw i64 %27, %25, !dbg !3684
  %29 = shl i64 %28, 4, !dbg !3685
  call void @llvm.dbg.value(metadata ptr %26, metadata !3067, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 0, metadata !3070, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i64 %29, metadata !3071, metadata !DIExpression()), !dbg !3686
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3688
  %30 = load i64, ptr %5, align 8, !dbg !3689, !tbaa !3586
  call void @llvm.dbg.value(metadata i64 %30, metadata !3650, metadata !DIExpression()), !dbg !3666
  %31 = trunc i64 %30 to i32, !dbg !3689
  store i32 %31, ptr @nslots, align 4, !dbg !3690, !tbaa !1100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3691
  br label %32, !dbg !3692

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3656
  call void @llvm.dbg.value(metadata ptr %33, metadata !3645, metadata !DIExpression()), !dbg !3656
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3693
  %36 = load i64, ptr %35, align 8, !dbg !3694, !tbaa !3614
  call void @llvm.dbg.value(metadata i64 %36, metadata !3651, metadata !DIExpression()), !dbg !3695
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3696
  %38 = load ptr, ptr %37, align 8, !dbg !3696, !tbaa !3602
  call void @llvm.dbg.value(metadata ptr %38, metadata !3653, metadata !DIExpression()), !dbg !3695
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3697
  %40 = load i32, ptr %39, align 4, !dbg !3697, !tbaa !2915
  %41 = or i32 %40, 1, !dbg !3698
  call void @llvm.dbg.value(metadata i32 %41, metadata !3654, metadata !DIExpression()), !dbg !3695
  %42 = load i32, ptr %3, align 8, !dbg !3699, !tbaa !2865
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3700
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3701
  %45 = load ptr, ptr %44, align 8, !dbg !3701, !tbaa !2936
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3702
  %47 = load ptr, ptr %46, align 8, !dbg !3702, !tbaa !2939
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %48, metadata !3655, metadata !DIExpression()), !dbg !3695
  %49 = icmp ugt i64 %36, %48, !dbg !3704
  br i1 %49, label %60, label %50, !dbg !3706

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %51, metadata !3651, metadata !DIExpression()), !dbg !3695
  store i64 %51, ptr %35, align 8, !dbg !3709, !tbaa !3614
  %52 = icmp eq ptr %38, @slot0, !dbg !3710
  br i1 %52, label %54, label %53, !dbg !3712

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3713
  br label %54, !dbg !3713

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !3714
  call void @llvm.dbg.value(metadata ptr %55, metadata !3653, metadata !DIExpression()), !dbg !3695
  store ptr %55, ptr %37, align 8, !dbg !3715, !tbaa !3602
  %56 = load i32, ptr %3, align 8, !dbg !3716, !tbaa !2865
  %57 = load ptr, ptr %44, align 8, !dbg !3717, !tbaa !2936
  %58 = load ptr, ptr %46, align 8, !dbg !3718, !tbaa !2939
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3719
  br label %60, !dbg !3720

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3695
  call void @llvm.dbg.value(metadata ptr %61, metadata !3653, metadata !DIExpression()), !dbg !3695
  store i32 %7, ptr %6, align 4, !dbg !3721, !tbaa !1100
  ret ptr %61, !dbg !3722
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3723 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3727, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %1, metadata !3728, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 %2, metadata !3729, metadata !DIExpression()), !dbg !3730
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3731
  ret ptr %4, !dbg !3732
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3733 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3735, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i32 0, metadata !3631, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata ptr %0, metadata !3632, metadata !DIExpression()), !dbg !3737
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3739
  ret ptr %2, !dbg !3740
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3741 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3745, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %1, metadata !3746, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i32 0, metadata !3727, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata ptr %0, metadata !3728, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i64 %1, metadata !3729, metadata !DIExpression()), !dbg !3748
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3750
  ret ptr %3, !dbg !3751
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3752 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3756, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i32 %1, metadata !3757, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata ptr %2, metadata !3758, metadata !DIExpression()), !dbg !3760
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3761
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3759, metadata !DIExpression()), !dbg !3762
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3763), !dbg !3766
  call void @llvm.dbg.value(metadata i32 %1, metadata !3767, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3772, metadata !DIExpression()), !dbg !3775
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3775, !alias.scope !3763
  %5 = icmp eq i32 %1, 10, !dbg !3776
  br i1 %5, label %6, label %7, !dbg !3778

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3779, !noalias !3763
  unreachable, !dbg !3779

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3780, !tbaa !2865, !alias.scope !3763
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3781
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3782
  ret ptr %8, !dbg !3783
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3784 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3788, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i32 %1, metadata !3789, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata ptr %2, metadata !3790, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i64 %3, metadata !3791, metadata !DIExpression()), !dbg !3793
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3794
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3792, metadata !DIExpression()), !dbg !3795
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3796), !dbg !3799
  call void @llvm.dbg.value(metadata i32 %1, metadata !3767, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3772, metadata !DIExpression()), !dbg !3802
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3802, !alias.scope !3796
  %6 = icmp eq i32 %1, 10, !dbg !3803
  br i1 %6, label %7, label %8, !dbg !3804

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3805, !noalias !3796
  unreachable, !dbg !3805

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3806, !tbaa !2865, !alias.scope !3796
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3807
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3808
  ret ptr %9, !dbg !3809
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3810 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3814, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata ptr %1, metadata !3815, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 0, metadata !3756, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i32 %0, metadata !3757, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata ptr %1, metadata !3758, metadata !DIExpression()), !dbg !3817
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3819
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3759, metadata !DIExpression()), !dbg !3820
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3821), !dbg !3824
  call void @llvm.dbg.value(metadata i32 %0, metadata !3767, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3772, metadata !DIExpression()), !dbg !3827
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3827, !alias.scope !3821
  %4 = icmp eq i32 %0, 10, !dbg !3828
  br i1 %4, label %5, label %6, !dbg !3829

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3830, !noalias !3821
  unreachable, !dbg !3830

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3831, !tbaa !2865, !alias.scope !3821
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3832
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3833
  ret ptr %7, !dbg !3834
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3835 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3839, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata ptr %1, metadata !3840, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i64 %2, metadata !3841, metadata !DIExpression()), !dbg !3842
  call void @llvm.dbg.value(metadata i32 0, metadata !3788, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata i32 %0, metadata !3789, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata ptr %1, metadata !3790, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata i64 %2, metadata !3791, metadata !DIExpression()), !dbg !3843
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3845
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3792, metadata !DIExpression()), !dbg !3846
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3847), !dbg !3850
  call void @llvm.dbg.value(metadata i32 %0, metadata !3767, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3772, metadata !DIExpression()), !dbg !3853
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3853, !alias.scope !3847
  %5 = icmp eq i32 %0, 10, !dbg !3854
  br i1 %5, label %6, label %7, !dbg !3855

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3856, !noalias !3847
  unreachable, !dbg !3856

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3857, !tbaa !2865, !alias.scope !3847
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3858
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3859
  ret ptr %8, !dbg !3860
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3861 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3865, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i64 %1, metadata !3866, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i8 %2, metadata !3867, metadata !DIExpression()), !dbg !3869
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3870
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3868, metadata !DIExpression()), !dbg !3871
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3872, !tbaa.struct !3873
  call void @llvm.dbg.value(metadata ptr %4, metadata !2882, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i8 %2, metadata !2883, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i32 1, metadata !2884, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i8 %2, metadata !2885, metadata !DIExpression()), !dbg !3874
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3876
  %6 = lshr i8 %2, 5, !dbg !3877
  %7 = zext i8 %6 to i64, !dbg !3877
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3878
  call void @llvm.dbg.value(metadata ptr %8, metadata !2886, metadata !DIExpression()), !dbg !3874
  %9 = and i8 %2, 31, !dbg !3879
  %10 = zext i8 %9 to i32, !dbg !3879
  call void @llvm.dbg.value(metadata i32 %10, metadata !2888, metadata !DIExpression()), !dbg !3874
  %11 = load i32, ptr %8, align 4, !dbg !3880, !tbaa !1100
  %12 = lshr i32 %11, %10, !dbg !3881
  call void @llvm.dbg.value(metadata i32 %12, metadata !2889, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3874
  %13 = and i32 %12, 1, !dbg !3882
  %14 = xor i32 %13, 1, !dbg !3882
  %15 = shl nuw i32 %14, %10, !dbg !3883
  %16 = xor i32 %15, %11, !dbg !3884
  store i32 %16, ptr %8, align 4, !dbg !3884, !tbaa !1100
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3885
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3886
  ret ptr %17, !dbg !3887
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3888 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3892, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i8 %1, metadata !3893, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata ptr %0, metadata !3865, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i64 -1, metadata !3866, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i8 %1, metadata !3867, metadata !DIExpression()), !dbg !3895
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3897
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3868, metadata !DIExpression()), !dbg !3898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3899, !tbaa.struct !3873
  call void @llvm.dbg.value(metadata ptr %3, metadata !2882, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i8 %1, metadata !2883, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i32 1, metadata !2884, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i8 %1, metadata !2885, metadata !DIExpression()), !dbg !3900
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3902
  %5 = lshr i8 %1, 5, !dbg !3903
  %6 = zext i8 %5 to i64, !dbg !3903
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3904
  call void @llvm.dbg.value(metadata ptr %7, metadata !2886, metadata !DIExpression()), !dbg !3900
  %8 = and i8 %1, 31, !dbg !3905
  %9 = zext i8 %8 to i32, !dbg !3905
  call void @llvm.dbg.value(metadata i32 %9, metadata !2888, metadata !DIExpression()), !dbg !3900
  %10 = load i32, ptr %7, align 4, !dbg !3906, !tbaa !1100
  %11 = lshr i32 %10, %9, !dbg !3907
  call void @llvm.dbg.value(metadata i32 %11, metadata !2889, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3900
  %12 = and i32 %11, 1, !dbg !3908
  %13 = xor i32 %12, 1, !dbg !3908
  %14 = shl nuw i32 %13, %9, !dbg !3909
  %15 = xor i32 %14, %10, !dbg !3910
  store i32 %15, ptr %7, align 4, !dbg !3910, !tbaa !1100
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3911
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3912
  ret ptr %16, !dbg !3913
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3914 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3916, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata ptr %0, metadata !3892, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i8 58, metadata !3893, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata ptr %0, metadata !3865, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64 -1, metadata !3866, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i8 58, metadata !3867, metadata !DIExpression()), !dbg !3920
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3922
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3868, metadata !DIExpression()), !dbg !3923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3924, !tbaa.struct !3873
  call void @llvm.dbg.value(metadata ptr %2, metadata !2882, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i8 58, metadata !2883, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 1, metadata !2884, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i8 58, metadata !2885, metadata !DIExpression()), !dbg !3925
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3927
  call void @llvm.dbg.value(metadata ptr %3, metadata !2886, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 26, metadata !2888, metadata !DIExpression()), !dbg !3925
  %4 = load i32, ptr %3, align 4, !dbg !3928, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %4, metadata !2889, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3925
  %5 = or i32 %4, 67108864, !dbg !3929
  store i32 %5, ptr %3, align 4, !dbg !3929, !tbaa !1100
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3930
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3931
  ret ptr %6, !dbg !3932
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3933 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3935, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i64 %1, metadata !3936, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata ptr %0, metadata !3865, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i64 %1, metadata !3866, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i8 58, metadata !3867, metadata !DIExpression()), !dbg !3938
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3940
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3868, metadata !DIExpression()), !dbg !3941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3942, !tbaa.struct !3873
  call void @llvm.dbg.value(metadata ptr %3, metadata !2882, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i8 58, metadata !2883, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i32 1, metadata !2884, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i8 58, metadata !2885, metadata !DIExpression()), !dbg !3943
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3945
  call void @llvm.dbg.value(metadata ptr %4, metadata !2886, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i32 26, metadata !2888, metadata !DIExpression()), !dbg !3943
  %5 = load i32, ptr %4, align 4, !dbg !3946, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %5, metadata !2889, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3943
  %6 = or i32 %5, 67108864, !dbg !3947
  store i32 %6, ptr %4, align 4, !dbg !3947, !tbaa !1100
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3948
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3949
  ret ptr %7, !dbg !3950
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3951 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3772, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3957
  call void @llvm.dbg.value(metadata i32 %0, metadata !3953, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i32 %1, metadata !3954, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata ptr %2, metadata !3955, metadata !DIExpression()), !dbg !3959
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3960
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3956, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i32 %1, metadata !3767, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i32 0, metadata !3772, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3962
  %5 = icmp eq i32 %1, 10, !dbg !3963
  br i1 %5, label %6, label %7, !dbg !3964

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3965, !noalias !3966
  unreachable, !dbg !3965

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3772, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3962
  store i32 %1, ptr %4, align 8, !dbg !3969, !tbaa.struct !3873
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3969
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3969
  call void @llvm.dbg.value(metadata ptr %4, metadata !2882, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i8 58, metadata !2883, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 1, metadata !2884, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i8 58, metadata !2885, metadata !DIExpression()), !dbg !3970
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3972
  call void @llvm.dbg.value(metadata ptr %9, metadata !2886, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 26, metadata !2888, metadata !DIExpression()), !dbg !3970
  %10 = load i32, ptr %9, align 4, !dbg !3973, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %10, metadata !2889, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3970
  %11 = or i32 %10, 67108864, !dbg !3974
  store i32 %11, ptr %9, align 4, !dbg !3974, !tbaa !1100
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3975
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3976
  ret ptr %12, !dbg !3977
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3978 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3982, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata ptr %1, metadata !3983, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata ptr %2, metadata !3984, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata ptr %3, metadata !3985, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i32 %0, metadata !3987, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata ptr %1, metadata !3992, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata ptr %2, metadata !3993, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata ptr %3, metadata !3994, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i64 -1, metadata !3995, metadata !DIExpression()), !dbg !3997
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3999
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3996, metadata !DIExpression()), !dbg !4000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4001, !tbaa.struct !3873
  call void @llvm.dbg.value(metadata ptr %5, metadata !2922, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata ptr %1, metadata !2923, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata ptr %2, metadata !2924, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata ptr %5, metadata !2922, metadata !DIExpression()), !dbg !4002
  store i32 10, ptr %5, align 8, !dbg !4004, !tbaa !2865
  %6 = icmp ne ptr %1, null, !dbg !4005
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4006
  br i1 %8, label %10, label %9, !dbg !4006

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !4007
  unreachable, !dbg !4007

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4008
  store ptr %1, ptr %11, align 8, !dbg !4009, !tbaa !2936
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4010
  store ptr %2, ptr %12, align 8, !dbg !4011, !tbaa !2939
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4012
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !4013
  ret ptr %13, !dbg !4014
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3988 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3987, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata ptr %1, metadata !3992, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata ptr %2, metadata !3993, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata ptr %3, metadata !3994, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i64 %4, metadata !3995, metadata !DIExpression()), !dbg !4015
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !4016
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3996, metadata !DIExpression()), !dbg !4017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4018, !tbaa.struct !3873
  call void @llvm.dbg.value(metadata ptr %6, metadata !2922, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata ptr %1, metadata !2923, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata ptr %2, metadata !2924, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata ptr %6, metadata !2922, metadata !DIExpression()), !dbg !4019
  store i32 10, ptr %6, align 8, !dbg !4021, !tbaa !2865
  %7 = icmp ne ptr %1, null, !dbg !4022
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4023
  br i1 %9, label %11, label %10, !dbg !4023

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !4024
  unreachable, !dbg !4024

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4025
  store ptr %1, ptr %12, align 8, !dbg !4026, !tbaa !2936
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4027
  store ptr %2, ptr %13, align 8, !dbg !4028, !tbaa !2939
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4029
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !4030
  ret ptr %14, !dbg !4031
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4032 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4036, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata ptr %1, metadata !4037, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata ptr %2, metadata !4038, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i32 0, metadata !3982, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr %0, metadata !3983, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr %1, metadata !3984, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr %2, metadata !3985, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 0, metadata !3987, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata ptr %0, metadata !3992, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata ptr %1, metadata !3993, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata ptr %2, metadata !3994, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i64 -1, metadata !3995, metadata !DIExpression()), !dbg !4042
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !4044
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3996, metadata !DIExpression()), !dbg !4045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4046, !tbaa.struct !3873
  call void @llvm.dbg.value(metadata ptr %4, metadata !2922, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata ptr %1, metadata !2924, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata ptr %4, metadata !2922, metadata !DIExpression()), !dbg !4047
  store i32 10, ptr %4, align 8, !dbg !4049, !tbaa !2865
  %5 = icmp ne ptr %0, null, !dbg !4050
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4051
  br i1 %7, label %9, label %8, !dbg !4051

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !4052
  unreachable, !dbg !4052

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4053
  store ptr %0, ptr %10, align 8, !dbg !4054, !tbaa !2936
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4055
  store ptr %1, ptr %11, align 8, !dbg !4056, !tbaa !2939
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4057
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !4058
  ret ptr %12, !dbg !4059
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4060 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4064, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata ptr %1, metadata !4065, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata ptr %2, metadata !4066, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i64 %3, metadata !4067, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i32 0, metadata !3987, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata ptr %0, metadata !3992, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata ptr %1, metadata !3993, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata ptr %2, metadata !3994, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i64 %3, metadata !3995, metadata !DIExpression()), !dbg !4069
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !4071
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3996, metadata !DIExpression()), !dbg !4072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4073, !tbaa.struct !3873
  call void @llvm.dbg.value(metadata ptr %5, metadata !2922, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata ptr %1, metadata !2924, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata ptr %5, metadata !2922, metadata !DIExpression()), !dbg !4074
  store i32 10, ptr %5, align 8, !dbg !4076, !tbaa !2865
  %6 = icmp ne ptr %0, null, !dbg !4077
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4078
  br i1 %8, label %10, label %9, !dbg !4078

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !4079
  unreachable, !dbg !4079

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4080
  store ptr %0, ptr %11, align 8, !dbg !4081, !tbaa !2936
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4082
  store ptr %1, ptr %12, align 8, !dbg !4083, !tbaa !2939
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4084
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !4085
  ret ptr %13, !dbg !4086
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4087 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4091, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr %1, metadata !4092, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i64 %2, metadata !4093, metadata !DIExpression()), !dbg !4094
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4095
  ret ptr %4, !dbg !4096
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4097 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4101, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %1, metadata !4102, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 0, metadata !4091, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata ptr %0, metadata !4092, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i64 %1, metadata !4093, metadata !DIExpression()), !dbg !4104
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4106
  ret ptr %3, !dbg !4107
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4108 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4112, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata ptr %1, metadata !4113, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i32 %0, metadata !4091, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata ptr %1, metadata !4092, metadata !DIExpression()), !dbg !4115
  call void @llvm.dbg.value(metadata i64 -1, metadata !4093, metadata !DIExpression()), !dbg !4115
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4117
  ret ptr %3, !dbg !4118
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4119 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4121, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32 0, metadata !4112, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata ptr %0, metadata !4113, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata i32 0, metadata !4091, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata ptr %0, metadata !4092, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i64 -1, metadata !4093, metadata !DIExpression()), !dbg !4125
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4127
  ret ptr %2, !dbg !4128
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @strintcmp(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #24 !dbg !4129 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4131, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %1, metadata !4132, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata ptr %0, metadata !4134, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %1, metadata !4140, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i32 256, metadata !4141, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i32 256, metadata !4142, metadata !DIExpression()), !dbg !4148
  %3 = load i8, ptr %0, align 1, !dbg !4150, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %3, metadata !4143, metadata !DIExpression()), !dbg !4148
  %4 = load i8, ptr %1, align 1, !dbg !4151, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %4, metadata !4144, metadata !DIExpression()), !dbg !4148
  %5 = icmp eq i8 %3, 45, !dbg !4152
  br i1 %5, label %6, label %95, !dbg !4154

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata ptr %7, metadata !4134, metadata !DIExpression()), !dbg !4148
  %8 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !4155
  call void @llvm.dbg.value(metadata ptr %8, metadata !4134, metadata !DIExpression()), !dbg !4148
  %9 = load i8, ptr %8, align 1, !dbg !4157, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %9, metadata !4143, metadata !DIExpression()), !dbg !4148
  %10 = icmp eq i8 %9, 48, !dbg !4158
  br i1 %10, label %6, label %11, !dbg !4159, !llvm.loop !4160

11:                                               ; preds = %6
  %12 = icmp eq i8 %4, 45, !dbg !4163
  br i1 %12, label %30, label %13, !dbg !4165

13:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 %9, metadata !4143, metadata !DIExpression()), !dbg !4148
  %14 = zext i8 %9 to i32, !dbg !4166
  call void @llvm.dbg.value(metadata i32 %14, metadata !4169, metadata !DIExpression()), !dbg !4172
  %15 = add nsw i32 %14, -48, !dbg !4174
  %16 = icmp ult i32 %15, 10, !dbg !4174
  br i1 %16, label %197, label %17, !dbg !4175

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 %4, metadata !4144, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %1, metadata !4140, metadata !DIExpression()), !dbg !4148
  %18 = icmp eq i8 %4, 48, !dbg !4176
  br i1 %18, label %19, label %24, !dbg !4177

19:                                               ; preds = %17, %19
  %20 = phi ptr [ %21, %19 ], [ %1, %17 ]
  call void @llvm.dbg.value(metadata ptr %20, metadata !4140, metadata !DIExpression()), !dbg !4148
  %21 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !4178
  call void @llvm.dbg.value(metadata ptr %21, metadata !4140, metadata !DIExpression()), !dbg !4148
  %22 = load i8, ptr %21, align 1, !dbg !4179, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %22, metadata !4144, metadata !DIExpression()), !dbg !4148
  %23 = icmp eq i8 %22, 48, !dbg !4176
  br i1 %23, label %19, label %24, !dbg !4177, !llvm.loop !4180

24:                                               ; preds = %19, %17
  %25 = phi i8 [ %4, %17 ], [ %22, %19 ], !dbg !4148
  call void @llvm.dbg.value(metadata i8 %25, metadata !4144, metadata !DIExpression()), !dbg !4148
  %26 = zext i8 %25 to i32, !dbg !4182
  call void @llvm.dbg.value(metadata i32 %26, metadata !4169, metadata !DIExpression()), !dbg !4183
  %27 = add nsw i32 %26, -48, !dbg !4185
  %28 = icmp ult i32 %27, 10, !dbg !4185
  %29 = sext i1 %28 to i32, !dbg !4186
  br label %197, !dbg !4187

30:                                               ; preds = %11, %30
  %31 = phi ptr [ %32, %30 ], [ %1, %11 ]
  call void @llvm.dbg.value(metadata ptr %31, metadata !4140, metadata !DIExpression()), !dbg !4148
  %32 = getelementptr inbounds i8, ptr %31, i64 1, !dbg !4188
  call void @llvm.dbg.value(metadata ptr %32, metadata !4140, metadata !DIExpression()), !dbg !4148
  %33 = load i8, ptr %32, align 1, !dbg !4189, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %33, metadata !4144, metadata !DIExpression()), !dbg !4148
  %34 = icmp eq i8 %33, 48, !dbg !4190
  br i1 %34, label %30, label %35, !dbg !4191, !llvm.loop !4192

35:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8 %33, metadata !4144, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i8 %9, metadata !4143, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %8, metadata !4134, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %32, metadata !4140, metadata !DIExpression()), !dbg !4148
  %36 = zext i8 %9 to i32, !dbg !4195
  %37 = icmp eq i8 %33, %9, !dbg !4196
  %38 = add nsw i32 %36, -48
  %39 = icmp ult i32 %38, 10
  %40 = select i1 %37, i1 %39, i1 false, !dbg !4197
  call void @llvm.dbg.value(metadata i32 %36, metadata !4169, metadata !DIExpression()), !dbg !4198
  br i1 %40, label %41, label %55, !dbg !4197

41:                                               ; preds = %35, %41
  %42 = phi ptr [ %44, %41 ], [ %8, %35 ]
  %43 = phi ptr [ %46, %41 ], [ %32, %35 ]
  call void @llvm.dbg.value(metadata ptr %43, metadata !4140, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %42, metadata !4134, metadata !DIExpression()), !dbg !4148
  %44 = getelementptr inbounds i8, ptr %42, i64 1, !dbg !4200
  call void @llvm.dbg.value(metadata ptr %44, metadata !4134, metadata !DIExpression()), !dbg !4148
  %45 = load i8, ptr %44, align 1, !dbg !4202, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %45, metadata !4143, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %43, metadata !4140, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4148
  call void @llvm.dbg.value(metadata i8 poison, metadata !4144, metadata !DIExpression()), !dbg !4148
  %46 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !4203
  call void @llvm.dbg.value(metadata ptr %46, metadata !4140, metadata !DIExpression()), !dbg !4148
  %47 = load i8, ptr %46, align 1, !dbg !4204, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %47, metadata !4144, metadata !DIExpression()), !dbg !4148
  %48 = zext i8 %45 to i32, !dbg !4195
  %49 = icmp eq i8 %47, %45, !dbg !4196
  %50 = add nsw i32 %48, -48
  %51 = icmp ult i32 %50, 10
  %52 = select i1 %49, i1 %51, i1 false, !dbg !4197
  call void @llvm.dbg.value(metadata i32 %48, metadata !4169, metadata !DIExpression()), !dbg !4198
  br i1 %52, label %41, label %53, !dbg !4197, !llvm.loop !4205

53:                                               ; preds = %41
  %54 = zext i8 %45 to i32, !dbg !4195
  br label %55, !dbg !4208

55:                                               ; preds = %53, %35
  %56 = phi i32 [ %38, %35 ], [ %50, %53 ], !dbg !4209
  %57 = phi ptr [ %32, %35 ], [ %46, %53 ], !dbg !4213
  %58 = phi ptr [ %8, %35 ], [ %44, %53 ], !dbg !4213
  %59 = phi i8 [ %33, %35 ], [ %47, %53 ], !dbg !4213
  %60 = phi i32 [ %36, %35 ], [ %54, %53 ], !dbg !4195
  %61 = zext i8 %59 to i32, !dbg !4208
  %62 = sub nsw i32 %61, %60, !dbg !4214
  call void @llvm.dbg.value(metadata i32 %62, metadata !4145, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i64 0, metadata !4146, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i8 poison, metadata !4143, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %58, metadata !4134, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i32 poison, metadata !4169, metadata !DIExpression()), !dbg !4215
  %63 = icmp ult i32 %56, 10, !dbg !4209
  br i1 %63, label %68, label %64, !dbg !4216

64:                                               ; preds = %68, %55
  %65 = phi i64 [ 0, %55 ], [ %73, %68 ], !dbg !4217
  call void @llvm.dbg.value(metadata i64 0, metadata !4147, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i8 %59, metadata !4144, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %57, metadata !4140, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i32 %61, metadata !4169, metadata !DIExpression()), !dbg !4218
  %66 = add nsw i32 %61, -48, !dbg !4222
  %67 = icmp ult i32 %66, 10, !dbg !4222
  br i1 %67, label %77, label %86, !dbg !4223

68:                                               ; preds = %55, %68
  %69 = phi i64 [ %73, %68 ], [ 0, %55 ]
  %70 = phi ptr [ %71, %68 ], [ %58, %55 ]
  call void @llvm.dbg.value(metadata i64 %69, metadata !4146, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %70, metadata !4134, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4148
  call void @llvm.dbg.value(metadata i8 poison, metadata !4143, metadata !DIExpression()), !dbg !4148
  %71 = getelementptr inbounds i8, ptr %70, i64 1, !dbg !4224
  call void @llvm.dbg.value(metadata ptr %71, metadata !4134, metadata !DIExpression()), !dbg !4148
  %72 = load i8, ptr %71, align 1, !dbg !4225, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %72, metadata !4143, metadata !DIExpression()), !dbg !4148
  %73 = add i64 %69, 1, !dbg !4226
  call void @llvm.dbg.value(metadata i64 %73, metadata !4146, metadata !DIExpression()), !dbg !4148
  %74 = zext i8 %72 to i32, !dbg !4227
  call void @llvm.dbg.value(metadata i32 %74, metadata !4169, metadata !DIExpression()), !dbg !4215
  %75 = add nsw i32 %74, -48, !dbg !4209
  %76 = icmp ult i32 %75, 10, !dbg !4209
  br i1 %76, label %68, label %64, !dbg !4216, !llvm.loop !4228

77:                                               ; preds = %64, %77
  %78 = phi i64 [ %82, %77 ], [ 0, %64 ]
  %79 = phi ptr [ %80, %77 ], [ %57, %64 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !4147, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %79, metadata !4140, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4148
  call void @llvm.dbg.value(metadata i8 poison, metadata !4144, metadata !DIExpression()), !dbg !4148
  %80 = getelementptr inbounds i8, ptr %79, i64 1, !dbg !4230
  call void @llvm.dbg.value(metadata ptr %80, metadata !4140, metadata !DIExpression()), !dbg !4148
  %81 = load i8, ptr %80, align 1, !dbg !4231, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %81, metadata !4144, metadata !DIExpression()), !dbg !4148
  %82 = add i64 %78, 1, !dbg !4232
  call void @llvm.dbg.value(metadata i64 %82, metadata !4147, metadata !DIExpression()), !dbg !4148
  %83 = zext i8 %81 to i32, !dbg !4233
  call void @llvm.dbg.value(metadata i32 %83, metadata !4169, metadata !DIExpression()), !dbg !4218
  %84 = add nsw i32 %83, -48, !dbg !4222
  %85 = icmp ult i32 %84, 10, !dbg !4222
  br i1 %85, label %77, label %86, !dbg !4223, !llvm.loop !4234

86:                                               ; preds = %77, %64
  %87 = phi i64 [ 0, %64 ], [ %82, %77 ], !dbg !4236
  %88 = icmp eq i64 %65, %87, !dbg !4237
  br i1 %88, label %92, label %89, !dbg !4239

89:                                               ; preds = %86
  %90 = icmp ult i64 %65, %87, !dbg !4240
  %91 = select i1 %90, i32 1, i32 -1, !dbg !4241
  br label %197, !dbg !4242

92:                                               ; preds = %86
  %93 = icmp eq i64 %65, 0, !dbg !4243
  %94 = select i1 %93, i32 0, i32 %62, !dbg !4213
  br label %197, !dbg !4213

95:                                               ; preds = %2
  %96 = icmp eq i8 %4, 45, !dbg !4245
  br i1 %96, label %99, label %97, !dbg !4247

97:                                               ; preds = %95
  call void @llvm.dbg.value(metadata i8 %3, metadata !4143, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %0, metadata !4134, metadata !DIExpression()), !dbg !4148
  %98 = icmp eq i8 %3, 48, !dbg !4248
  br i1 %98, label %125, label %121, !dbg !4250

99:                                               ; preds = %95, %99
  %100 = phi ptr [ %101, %99 ], [ %1, %95 ]
  call void @llvm.dbg.value(metadata ptr %100, metadata !4140, metadata !DIExpression()), !dbg !4148
  %101 = getelementptr inbounds i8, ptr %100, i64 1, !dbg !4251
  call void @llvm.dbg.value(metadata ptr %101, metadata !4140, metadata !DIExpression()), !dbg !4148
  %102 = load i8, ptr %101, align 1, !dbg !4253, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %102, metadata !4144, metadata !DIExpression()), !dbg !4148
  %103 = icmp eq i8 %102, 48, !dbg !4254
  br i1 %103, label %99, label %104, !dbg !4255, !llvm.loop !4256

104:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i8 %102, metadata !4144, metadata !DIExpression()), !dbg !4148
  %105 = zext i8 %102 to i32, !dbg !4259
  call void @llvm.dbg.value(metadata i32 %105, metadata !4169, metadata !DIExpression()), !dbg !4261
  %106 = add nsw i32 %105, -48, !dbg !4263
  %107 = icmp ult i32 %106, 10, !dbg !4263
  br i1 %107, label %197, label %108, !dbg !4264

108:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i8 %3, metadata !4143, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %0, metadata !4134, metadata !DIExpression()), !dbg !4148
  %109 = icmp eq i8 %3, 48, !dbg !4265
  br i1 %109, label %110, label %115, !dbg !4266

110:                                              ; preds = %108, %110
  %111 = phi ptr [ %112, %110 ], [ %0, %108 ]
  call void @llvm.dbg.value(metadata ptr %111, metadata !4134, metadata !DIExpression()), !dbg !4148
  %112 = getelementptr inbounds i8, ptr %111, i64 1, !dbg !4267
  call void @llvm.dbg.value(metadata ptr %112, metadata !4134, metadata !DIExpression()), !dbg !4148
  %113 = load i8, ptr %112, align 1, !dbg !4268, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %113, metadata !4143, metadata !DIExpression()), !dbg !4148
  %114 = icmp eq i8 %113, 48, !dbg !4265
  br i1 %114, label %110, label %115, !dbg !4266, !llvm.loop !4269

115:                                              ; preds = %110, %108
  %116 = phi i8 [ %3, %108 ], [ %113, %110 ], !dbg !4148
  call void @llvm.dbg.value(metadata i8 %116, metadata !4143, metadata !DIExpression()), !dbg !4148
  %117 = zext i8 %116 to i32, !dbg !4271
  call void @llvm.dbg.value(metadata i32 %117, metadata !4169, metadata !DIExpression()), !dbg !4272
  %118 = add nsw i32 %117, -48, !dbg !4274
  %119 = icmp ult i32 %118, 10, !dbg !4274
  %120 = zext i1 %119 to i32, !dbg !4275
  br label %197, !dbg !4276

121:                                              ; preds = %125, %97
  %122 = phi ptr [ %0, %97 ], [ %127, %125 ]
  %123 = phi i8 [ %3, %97 ], [ %128, %125 ], !dbg !4148
  call void @llvm.dbg.value(metadata i8 %4, metadata !4144, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %1, metadata !4140, metadata !DIExpression()), !dbg !4148
  %124 = icmp eq i8 %4, 48, !dbg !4277
  br i1 %124, label %138, label %130, !dbg !4278

125:                                              ; preds = %97, %125
  %126 = phi ptr [ %127, %125 ], [ %0, %97 ]
  call void @llvm.dbg.value(metadata ptr %126, metadata !4134, metadata !DIExpression()), !dbg !4148
  %127 = getelementptr inbounds i8, ptr %126, i64 1, !dbg !4279
  call void @llvm.dbg.value(metadata ptr %127, metadata !4134, metadata !DIExpression()), !dbg !4148
  %128 = load i8, ptr %127, align 1, !dbg !4280, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %128, metadata !4143, metadata !DIExpression()), !dbg !4148
  %129 = icmp eq i8 %128, 48, !dbg !4248
  br i1 %129, label %125, label %121, !dbg !4250, !llvm.loop !4281

130:                                              ; preds = %138, %121
  %131 = phi ptr [ %1, %121 ], [ %140, %138 ]
  %132 = phi i8 [ %4, %121 ], [ %141, %138 ], !dbg !4148
  call void @llvm.dbg.value(metadata i8 %132, metadata !4144, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i8 %123, metadata !4143, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %122, metadata !4134, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %131, metadata !4140, metadata !DIExpression()), !dbg !4148
  %133 = zext i8 %123 to i32, !dbg !4283
  %134 = icmp eq i8 %123, %132, !dbg !4284
  %135 = add nsw i32 %133, -48
  %136 = icmp ult i32 %135, 10
  %137 = select i1 %134, i1 %136, i1 false, !dbg !4285
  call void @llvm.dbg.value(metadata i32 %133, metadata !4169, metadata !DIExpression()), !dbg !4286
  br i1 %137, label %143, label %157, !dbg !4285

138:                                              ; preds = %121, %138
  %139 = phi ptr [ %140, %138 ], [ %1, %121 ]
  call void @llvm.dbg.value(metadata ptr %139, metadata !4140, metadata !DIExpression()), !dbg !4148
  %140 = getelementptr inbounds i8, ptr %139, i64 1, !dbg !4288
  call void @llvm.dbg.value(metadata ptr %140, metadata !4140, metadata !DIExpression()), !dbg !4148
  %141 = load i8, ptr %140, align 1, !dbg !4289, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %141, metadata !4144, metadata !DIExpression()), !dbg !4148
  %142 = icmp eq i8 %141, 48, !dbg !4277
  br i1 %142, label %138, label %130, !dbg !4278, !llvm.loop !4290

143:                                              ; preds = %130, %143
  %144 = phi ptr [ %146, %143 ], [ %122, %130 ]
  %145 = phi ptr [ %148, %143 ], [ %131, %130 ]
  call void @llvm.dbg.value(metadata ptr %145, metadata !4140, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %144, metadata !4134, metadata !DIExpression()), !dbg !4148
  %146 = getelementptr inbounds i8, ptr %144, i64 1, !dbg !4292
  call void @llvm.dbg.value(metadata ptr %146, metadata !4134, metadata !DIExpression()), !dbg !4148
  %147 = load i8, ptr %146, align 1, !dbg !4294, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %147, metadata !4143, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %145, metadata !4140, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4148
  call void @llvm.dbg.value(metadata i8 poison, metadata !4144, metadata !DIExpression()), !dbg !4148
  %148 = getelementptr inbounds i8, ptr %145, i64 1, !dbg !4295
  call void @llvm.dbg.value(metadata ptr %148, metadata !4140, metadata !DIExpression()), !dbg !4148
  %149 = load i8, ptr %148, align 1, !dbg !4296, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %149, metadata !4144, metadata !DIExpression()), !dbg !4148
  %150 = zext i8 %147 to i32, !dbg !4283
  %151 = icmp eq i8 %147, %149, !dbg !4284
  %152 = add nsw i32 %150, -48
  %153 = icmp ult i32 %152, 10
  %154 = select i1 %151, i1 %153, i1 false, !dbg !4285
  call void @llvm.dbg.value(metadata i32 %150, metadata !4169, metadata !DIExpression()), !dbg !4286
  br i1 %154, label %143, label %155, !dbg !4285, !llvm.loop !4297

155:                                              ; preds = %143
  %156 = zext i8 %147 to i32, !dbg !4283
  br label %157, !dbg !4300

157:                                              ; preds = %155, %130
  %158 = phi i32 [ %135, %130 ], [ %152, %155 ], !dbg !4301
  %159 = phi ptr [ %131, %130 ], [ %148, %155 ]
  %160 = phi ptr [ %122, %130 ], [ %146, %155 ]
  %161 = phi i8 [ %132, %130 ], [ %149, %155 ], !dbg !4148
  %162 = phi i32 [ %133, %130 ], [ %156, %155 ], !dbg !4283
  %163 = zext i8 %161 to i32, !dbg !4300
  %164 = sub nsw i32 %162, %163, !dbg !4305
  call void @llvm.dbg.value(metadata i32 %164, metadata !4145, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i64 0, metadata !4146, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i8 poison, metadata !4143, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %160, metadata !4134, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i32 poison, metadata !4169, metadata !DIExpression()), !dbg !4306
  %165 = icmp ult i32 %158, 10, !dbg !4301
  br i1 %165, label %170, label %166, !dbg !4307

166:                                              ; preds = %170, %157
  %167 = phi i64 [ 0, %157 ], [ %175, %170 ], !dbg !4308
  call void @llvm.dbg.value(metadata i64 0, metadata !4147, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i8 %161, metadata !4144, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %159, metadata !4140, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i32 %163, metadata !4169, metadata !DIExpression()), !dbg !4309
  %168 = add nsw i32 %163, -48, !dbg !4313
  %169 = icmp ult i32 %168, 10, !dbg !4313
  br i1 %169, label %179, label %188, !dbg !4314

170:                                              ; preds = %157, %170
  %171 = phi i64 [ %175, %170 ], [ 0, %157 ]
  %172 = phi ptr [ %173, %170 ], [ %160, %157 ]
  call void @llvm.dbg.value(metadata i64 %171, metadata !4146, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %172, metadata !4134, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4148
  call void @llvm.dbg.value(metadata i8 poison, metadata !4143, metadata !DIExpression()), !dbg !4148
  %173 = getelementptr inbounds i8, ptr %172, i64 1, !dbg !4315
  call void @llvm.dbg.value(metadata ptr %173, metadata !4134, metadata !DIExpression()), !dbg !4148
  %174 = load i8, ptr %173, align 1, !dbg !4316, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %174, metadata !4143, metadata !DIExpression()), !dbg !4148
  %175 = add i64 %171, 1, !dbg !4317
  call void @llvm.dbg.value(metadata i64 %175, metadata !4146, metadata !DIExpression()), !dbg !4148
  %176 = zext i8 %174 to i32, !dbg !4318
  call void @llvm.dbg.value(metadata i32 %176, metadata !4169, metadata !DIExpression()), !dbg !4306
  %177 = add nsw i32 %176, -48, !dbg !4301
  %178 = icmp ult i32 %177, 10, !dbg !4301
  br i1 %178, label %170, label %166, !dbg !4307, !llvm.loop !4319

179:                                              ; preds = %166, %179
  %180 = phi i64 [ %184, %179 ], [ 0, %166 ]
  %181 = phi ptr [ %182, %179 ], [ %159, %166 ]
  call void @llvm.dbg.value(metadata i64 %180, metadata !4147, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %181, metadata !4140, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4148
  call void @llvm.dbg.value(metadata i8 poison, metadata !4144, metadata !DIExpression()), !dbg !4148
  %182 = getelementptr inbounds i8, ptr %181, i64 1, !dbg !4321
  call void @llvm.dbg.value(metadata ptr %182, metadata !4140, metadata !DIExpression()), !dbg !4148
  %183 = load i8, ptr %182, align 1, !dbg !4322, !tbaa !1109
  call void @llvm.dbg.value(metadata i8 %183, metadata !4144, metadata !DIExpression()), !dbg !4148
  %184 = add i64 %180, 1, !dbg !4323
  call void @llvm.dbg.value(metadata i64 %184, metadata !4147, metadata !DIExpression()), !dbg !4148
  %185 = zext i8 %183 to i32, !dbg !4324
  call void @llvm.dbg.value(metadata i32 %185, metadata !4169, metadata !DIExpression()), !dbg !4309
  %186 = add nsw i32 %185, -48, !dbg !4313
  %187 = icmp ult i32 %186, 10, !dbg !4313
  br i1 %187, label %179, label %188, !dbg !4314, !llvm.loop !4325

188:                                              ; preds = %179, %166
  %189 = phi i64 [ 0, %166 ], [ %184, %179 ], !dbg !4327
  %190 = icmp eq i64 %167, %189, !dbg !4328
  br i1 %190, label %194, label %191, !dbg !4330

191:                                              ; preds = %188
  %192 = icmp ult i64 %167, %189, !dbg !4331
  %193 = select i1 %192, i32 -1, i32 1, !dbg !4332
  br label %197, !dbg !4333

194:                                              ; preds = %188
  %195 = icmp eq i64 %167, 0, !dbg !4334
  %196 = select i1 %195, i32 0, i32 %164, !dbg !4336
  br label %197, !dbg !4336

197:                                              ; preds = %13, %24, %89, %92, %104, %115, %191, %194
  %198 = phi i32 [ %29, %24 ], [ %91, %89 ], [ %120, %115 ], [ %193, %191 ], [ -1, %13 ], [ %94, %92 ], [ 1, %104 ], [ %196, %194 ], !dbg !4337
  ret i32 %198, !dbg !4338
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4339 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4378, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata ptr %1, metadata !4379, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata ptr %2, metadata !4380, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata ptr %3, metadata !4381, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata ptr %4, metadata !4382, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i64 %5, metadata !4383, metadata !DIExpression()), !dbg !4384
  %7 = icmp eq ptr %1, null, !dbg !4385
  br i1 %7, label %10, label %8, !dbg !4387

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.147, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !4388
  br label %12, !dbg !4388

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.148, ptr noundef %2, ptr noundef %3) #39, !dbg !4389
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.3.150, i32 noundef 5) #39, !dbg !4390
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !4390
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.151, ptr noundef %0), !dbg !4391
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.5.152, i32 noundef 5) #39, !dbg !4392
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.153) #39, !dbg !4392
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.151, ptr noundef %0), !dbg !4393
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
  ], !dbg !4394

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.7.154, i32 noundef 5) #39, !dbg !4395
  %21 = load ptr, ptr %4, align 8, !dbg !4395, !tbaa !1000
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !4395
  br label %147, !dbg !4397

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.8.155, i32 noundef 5) #39, !dbg !4398
  %25 = load ptr, ptr %4, align 8, !dbg !4398, !tbaa !1000
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4398
  %27 = load ptr, ptr %26, align 8, !dbg !4398, !tbaa !1000
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !4398
  br label %147, !dbg !4399

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.9.156, i32 noundef 5) #39, !dbg !4400
  %31 = load ptr, ptr %4, align 8, !dbg !4400, !tbaa !1000
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4400
  %33 = load ptr, ptr %32, align 8, !dbg !4400, !tbaa !1000
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4400
  %35 = load ptr, ptr %34, align 8, !dbg !4400, !tbaa !1000
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !4400
  br label %147, !dbg !4401

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.10.157, i32 noundef 5) #39, !dbg !4402
  %39 = load ptr, ptr %4, align 8, !dbg !4402, !tbaa !1000
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4402
  %41 = load ptr, ptr %40, align 8, !dbg !4402, !tbaa !1000
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4402
  %43 = load ptr, ptr %42, align 8, !dbg !4402, !tbaa !1000
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4402
  %45 = load ptr, ptr %44, align 8, !dbg !4402, !tbaa !1000
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !4402
  br label %147, !dbg !4403

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.11.158, i32 noundef 5) #39, !dbg !4404
  %49 = load ptr, ptr %4, align 8, !dbg !4404, !tbaa !1000
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4404
  %51 = load ptr, ptr %50, align 8, !dbg !4404, !tbaa !1000
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4404
  %53 = load ptr, ptr %52, align 8, !dbg !4404, !tbaa !1000
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4404
  %55 = load ptr, ptr %54, align 8, !dbg !4404, !tbaa !1000
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4404
  %57 = load ptr, ptr %56, align 8, !dbg !4404, !tbaa !1000
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !4404
  br label %147, !dbg !4405

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.12.159, i32 noundef 5) #39, !dbg !4406
  %61 = load ptr, ptr %4, align 8, !dbg !4406, !tbaa !1000
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4406
  %63 = load ptr, ptr %62, align 8, !dbg !4406, !tbaa !1000
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4406
  %65 = load ptr, ptr %64, align 8, !dbg !4406, !tbaa !1000
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4406
  %67 = load ptr, ptr %66, align 8, !dbg !4406, !tbaa !1000
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4406
  %69 = load ptr, ptr %68, align 8, !dbg !4406, !tbaa !1000
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4406
  %71 = load ptr, ptr %70, align 8, !dbg !4406, !tbaa !1000
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !4406
  br label %147, !dbg !4407

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.13.160, i32 noundef 5) #39, !dbg !4408
  %75 = load ptr, ptr %4, align 8, !dbg !4408, !tbaa !1000
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4408
  %77 = load ptr, ptr %76, align 8, !dbg !4408, !tbaa !1000
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4408
  %79 = load ptr, ptr %78, align 8, !dbg !4408, !tbaa !1000
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4408
  %81 = load ptr, ptr %80, align 8, !dbg !4408, !tbaa !1000
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4408
  %83 = load ptr, ptr %82, align 8, !dbg !4408, !tbaa !1000
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4408
  %85 = load ptr, ptr %84, align 8, !dbg !4408, !tbaa !1000
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4408
  %87 = load ptr, ptr %86, align 8, !dbg !4408, !tbaa !1000
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !4408
  br label %147, !dbg !4409

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.14.161, i32 noundef 5) #39, !dbg !4410
  %91 = load ptr, ptr %4, align 8, !dbg !4410, !tbaa !1000
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4410
  %93 = load ptr, ptr %92, align 8, !dbg !4410, !tbaa !1000
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4410
  %95 = load ptr, ptr %94, align 8, !dbg !4410, !tbaa !1000
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4410
  %97 = load ptr, ptr %96, align 8, !dbg !4410, !tbaa !1000
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4410
  %99 = load ptr, ptr %98, align 8, !dbg !4410, !tbaa !1000
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4410
  %101 = load ptr, ptr %100, align 8, !dbg !4410, !tbaa !1000
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4410
  %103 = load ptr, ptr %102, align 8, !dbg !4410, !tbaa !1000
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4410
  %105 = load ptr, ptr %104, align 8, !dbg !4410, !tbaa !1000
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !4410
  br label %147, !dbg !4411

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.15.162, i32 noundef 5) #39, !dbg !4412
  %109 = load ptr, ptr %4, align 8, !dbg !4412, !tbaa !1000
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4412
  %111 = load ptr, ptr %110, align 8, !dbg !4412, !tbaa !1000
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4412
  %113 = load ptr, ptr %112, align 8, !dbg !4412, !tbaa !1000
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4412
  %115 = load ptr, ptr %114, align 8, !dbg !4412, !tbaa !1000
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4412
  %117 = load ptr, ptr %116, align 8, !dbg !4412, !tbaa !1000
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4412
  %119 = load ptr, ptr %118, align 8, !dbg !4412, !tbaa !1000
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4412
  %121 = load ptr, ptr %120, align 8, !dbg !4412, !tbaa !1000
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4412
  %123 = load ptr, ptr %122, align 8, !dbg !4412, !tbaa !1000
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4412
  %125 = load ptr, ptr %124, align 8, !dbg !4412, !tbaa !1000
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !4412
  br label %147, !dbg !4413

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.16.163, i32 noundef 5) #39, !dbg !4414
  %129 = load ptr, ptr %4, align 8, !dbg !4414, !tbaa !1000
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4414
  %131 = load ptr, ptr %130, align 8, !dbg !4414, !tbaa !1000
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4414
  %133 = load ptr, ptr %132, align 8, !dbg !4414, !tbaa !1000
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4414
  %135 = load ptr, ptr %134, align 8, !dbg !4414, !tbaa !1000
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4414
  %137 = load ptr, ptr %136, align 8, !dbg !4414, !tbaa !1000
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4414
  %139 = load ptr, ptr %138, align 8, !dbg !4414, !tbaa !1000
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4414
  %141 = load ptr, ptr %140, align 8, !dbg !4414, !tbaa !1000
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4414
  %143 = load ptr, ptr %142, align 8, !dbg !4414, !tbaa !1000
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4414
  %145 = load ptr, ptr %144, align 8, !dbg !4414, !tbaa !1000
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !4414
  br label %147, !dbg !4415

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4416
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4417 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4421, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata ptr %1, metadata !4422, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata ptr %2, metadata !4423, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata ptr %3, metadata !4424, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata ptr %4, metadata !4425, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64 0, metadata !4426, metadata !DIExpression()), !dbg !4427
  br label %6, !dbg !4428

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4430
  call void @llvm.dbg.value(metadata i64 %7, metadata !4426, metadata !DIExpression()), !dbg !4427
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4431
  %9 = load ptr, ptr %8, align 8, !dbg !4431, !tbaa !1000
  %10 = icmp eq ptr %9, null, !dbg !4433
  %11 = add i64 %7, 1, !dbg !4434
  call void @llvm.dbg.value(metadata i64 %11, metadata !4426, metadata !DIExpression()), !dbg !4427
  br i1 %10, label %12, label %6, !dbg !4433, !llvm.loop !4435

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4437
  ret void, !dbg !4438
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4439 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4454, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata ptr %1, metadata !4455, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata ptr %2, metadata !4456, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata ptr %3, metadata !4457, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4458, metadata !DIExpression()), !dbg !4463
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !4464
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4460, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i64 0, metadata !4459, metadata !DIExpression()), !dbg !4462
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4459, metadata !DIExpression()), !dbg !4462
  %10 = icmp sgt i32 %9, -1, !dbg !4466
  br i1 %10, label %18, label %11, !dbg !4466

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4466
  store i32 %12, ptr %7, align 8, !dbg !4466
  %13 = icmp ult i32 %9, -7, !dbg !4466
  br i1 %13, label %14, label %18, !dbg !4466

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4466
  %16 = sext i32 %9 to i64, !dbg !4466
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4466
  br label %22, !dbg !4466

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4466
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4466
  store ptr %21, ptr %4, align 8, !dbg !4466
  br label %22, !dbg !4466

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4466
  %25 = load ptr, ptr %24, align 8, !dbg !4466
  store ptr %25, ptr %6, align 8, !dbg !4469, !tbaa !1000
  %26 = icmp eq ptr %25, null, !dbg !4470
  br i1 %26, label %197, label %27, !dbg !4471

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !4459, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 1, metadata !4459, metadata !DIExpression()), !dbg !4462
  %28 = icmp sgt i32 %23, -1, !dbg !4466
  br i1 %28, label %36, label %29, !dbg !4466

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4466
  store i32 %30, ptr %7, align 8, !dbg !4466
  %31 = icmp ult i32 %23, -7, !dbg !4466
  br i1 %31, label %32, label %36, !dbg !4466

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4466
  %34 = sext i32 %23 to i64, !dbg !4466
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4466
  br label %40, !dbg !4466

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4466
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4466
  store ptr %39, ptr %4, align 8, !dbg !4466
  br label %40, !dbg !4466

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4466
  %43 = load ptr, ptr %42, align 8, !dbg !4466
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4472
  store ptr %43, ptr %44, align 8, !dbg !4469, !tbaa !1000
  %45 = icmp eq ptr %43, null, !dbg !4470
  br i1 %45, label %197, label %46, !dbg !4471

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4459, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 2, metadata !4459, metadata !DIExpression()), !dbg !4462
  %47 = icmp sgt i32 %41, -1, !dbg !4466
  br i1 %47, label %55, label %48, !dbg !4466

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4466
  store i32 %49, ptr %7, align 8, !dbg !4466
  %50 = icmp ult i32 %41, -7, !dbg !4466
  br i1 %50, label %51, label %55, !dbg !4466

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4466
  %53 = sext i32 %41 to i64, !dbg !4466
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4466
  br label %59, !dbg !4466

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4466
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4466
  store ptr %58, ptr %4, align 8, !dbg !4466
  br label %59, !dbg !4466

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4466
  %62 = load ptr, ptr %61, align 8, !dbg !4466
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4472
  store ptr %62, ptr %63, align 8, !dbg !4469, !tbaa !1000
  %64 = icmp eq ptr %62, null, !dbg !4470
  br i1 %64, label %197, label %65, !dbg !4471

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !4459, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 3, metadata !4459, metadata !DIExpression()), !dbg !4462
  %66 = icmp sgt i32 %60, -1, !dbg !4466
  br i1 %66, label %74, label %67, !dbg !4466

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4466
  store i32 %68, ptr %7, align 8, !dbg !4466
  %69 = icmp ult i32 %60, -7, !dbg !4466
  br i1 %69, label %70, label %74, !dbg !4466

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4466
  %72 = sext i32 %60 to i64, !dbg !4466
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4466
  br label %78, !dbg !4466

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4466
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4466
  store ptr %77, ptr %4, align 8, !dbg !4466
  br label %78, !dbg !4466

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4466
  %81 = load ptr, ptr %80, align 8, !dbg !4466
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4472
  store ptr %81, ptr %82, align 8, !dbg !4469, !tbaa !1000
  %83 = icmp eq ptr %81, null, !dbg !4470
  br i1 %83, label %197, label %84, !dbg !4471

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !4459, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 4, metadata !4459, metadata !DIExpression()), !dbg !4462
  %85 = icmp sgt i32 %79, -1, !dbg !4466
  br i1 %85, label %93, label %86, !dbg !4466

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4466
  store i32 %87, ptr %7, align 8, !dbg !4466
  %88 = icmp ult i32 %79, -7, !dbg !4466
  br i1 %88, label %89, label %93, !dbg !4466

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4466
  %91 = sext i32 %79 to i64, !dbg !4466
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4466
  br label %97, !dbg !4466

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4466
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4466
  store ptr %96, ptr %4, align 8, !dbg !4466
  br label %97, !dbg !4466

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4466
  %100 = load ptr, ptr %99, align 8, !dbg !4466
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4472
  store ptr %100, ptr %101, align 8, !dbg !4469, !tbaa !1000
  %102 = icmp eq ptr %100, null, !dbg !4470
  br i1 %102, label %197, label %103, !dbg !4471

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !4459, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 5, metadata !4459, metadata !DIExpression()), !dbg !4462
  %104 = icmp sgt i32 %98, -1, !dbg !4466
  br i1 %104, label %112, label %105, !dbg !4466

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4466
  store i32 %106, ptr %7, align 8, !dbg !4466
  %107 = icmp ult i32 %98, -7, !dbg !4466
  br i1 %107, label %108, label %112, !dbg !4466

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4466
  %110 = sext i32 %98 to i64, !dbg !4466
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4466
  br label %116, !dbg !4466

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4466
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4466
  store ptr %115, ptr %4, align 8, !dbg !4466
  br label %116, !dbg !4466

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4466
  %119 = load ptr, ptr %118, align 8, !dbg !4466
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4472
  store ptr %119, ptr %120, align 8, !dbg !4469, !tbaa !1000
  %121 = icmp eq ptr %119, null, !dbg !4470
  br i1 %121, label %197, label %122, !dbg !4471

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !4459, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 6, metadata !4459, metadata !DIExpression()), !dbg !4462
  %123 = icmp sgt i32 %117, -1, !dbg !4466
  br i1 %123, label %131, label %124, !dbg !4466

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4466
  store i32 %125, ptr %7, align 8, !dbg !4466
  %126 = icmp ult i32 %117, -7, !dbg !4466
  br i1 %126, label %127, label %131, !dbg !4466

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4466
  %129 = sext i32 %117 to i64, !dbg !4466
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4466
  br label %135, !dbg !4466

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4466
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4466
  store ptr %134, ptr %4, align 8, !dbg !4466
  br label %135, !dbg !4466

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4466
  %138 = load ptr, ptr %137, align 8, !dbg !4466
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4472
  store ptr %138, ptr %139, align 8, !dbg !4469, !tbaa !1000
  %140 = icmp eq ptr %138, null, !dbg !4470
  br i1 %140, label %197, label %141, !dbg !4471

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !4459, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 7, metadata !4459, metadata !DIExpression()), !dbg !4462
  %142 = icmp sgt i32 %136, -1, !dbg !4466
  br i1 %142, label %150, label %143, !dbg !4466

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4466
  store i32 %144, ptr %7, align 8, !dbg !4466
  %145 = icmp ult i32 %136, -7, !dbg !4466
  br i1 %145, label %146, label %150, !dbg !4466

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4466
  %148 = sext i32 %136 to i64, !dbg !4466
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4466
  br label %154, !dbg !4466

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4466
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4466
  store ptr %153, ptr %4, align 8, !dbg !4466
  br label %154, !dbg !4466

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4466
  %157 = load ptr, ptr %156, align 8, !dbg !4466
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4472
  store ptr %157, ptr %158, align 8, !dbg !4469, !tbaa !1000
  %159 = icmp eq ptr %157, null, !dbg !4470
  br i1 %159, label %197, label %160, !dbg !4471

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !4459, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 8, metadata !4459, metadata !DIExpression()), !dbg !4462
  %161 = icmp sgt i32 %155, -1, !dbg !4466
  br i1 %161, label %169, label %162, !dbg !4466

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4466
  store i32 %163, ptr %7, align 8, !dbg !4466
  %164 = icmp ult i32 %155, -7, !dbg !4466
  br i1 %164, label %165, label %169, !dbg !4466

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4466
  %167 = sext i32 %155 to i64, !dbg !4466
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4466
  br label %173, !dbg !4466

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4466
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4466
  store ptr %172, ptr %4, align 8, !dbg !4466
  br label %173, !dbg !4466

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4466
  %176 = load ptr, ptr %175, align 8, !dbg !4466
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4472
  store ptr %176, ptr %177, align 8, !dbg !4469, !tbaa !1000
  %178 = icmp eq ptr %176, null, !dbg !4470
  br i1 %178, label %197, label %179, !dbg !4471

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !4459, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 9, metadata !4459, metadata !DIExpression()), !dbg !4462
  %180 = icmp sgt i32 %174, -1, !dbg !4466
  br i1 %180, label %188, label %181, !dbg !4466

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4466
  store i32 %182, ptr %7, align 8, !dbg !4466
  %183 = icmp ult i32 %174, -7, !dbg !4466
  br i1 %183, label %184, label %188, !dbg !4466

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4466
  %186 = sext i32 %174 to i64, !dbg !4466
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4466
  br label %191, !dbg !4466

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4466
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4466
  store ptr %190, ptr %4, align 8, !dbg !4466
  br label %191, !dbg !4466

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4466
  %193 = load ptr, ptr %192, align 8, !dbg !4466
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4472
  store ptr %193, ptr %194, align 8, !dbg !4469, !tbaa !1000
  %195 = icmp eq ptr %193, null, !dbg !4470
  %196 = select i1 %195, i64 9, i64 10, !dbg !4471
  br label %197, !dbg !4471

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4473
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4474
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !4475
  ret void, !dbg !4475
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4476 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4480, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata ptr %1, metadata !4481, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata ptr %2, metadata !4482, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata ptr %3, metadata !4483, metadata !DIExpression()), !dbg !4485
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !4486
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4484, metadata !DIExpression()), !dbg !4487
  call void @llvm.va_start(ptr nonnull %5), !dbg !4488
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !4489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4489, !tbaa.struct !1340
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4489
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !4489
  call void @llvm.va_end(ptr nonnull %5), !dbg !4490
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !4491
  ret void, !dbg !4491
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4492 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4493, !tbaa !1000
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.151, ptr noundef %1), !dbg !4493
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.17.168, i32 noundef 5) #39, !dbg !4494
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.169) #39, !dbg !4494
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.19.170, i32 noundef 5) #39, !dbg !4495
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.171, ptr noundef nonnull @.str.21.172) #39, !dbg !4495
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.22.173, i32 noundef 5) #39, !dbg !4496
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.174) #39, !dbg !4496
  ret void, !dbg !4497
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4498 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4503, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i64 %1, metadata !4504, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i64 %2, metadata !4505, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata ptr %0, metadata !4507, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i64 %1, metadata !4510, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i64 %2, metadata !4511, metadata !DIExpression()), !dbg !4512
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4514
  call void @llvm.dbg.value(metadata ptr %4, metadata !4515, metadata !DIExpression()), !dbg !4520
  %5 = icmp eq ptr %4, null, !dbg !4522
  br i1 %5, label %6, label %7, !dbg !4524

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4525
  unreachable, !dbg !4525

7:                                                ; preds = %3
  ret ptr %4, !dbg !4526
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4508 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4507, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.value(metadata i64 %1, metadata !4510, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.value(metadata i64 %2, metadata !4511, metadata !DIExpression()), !dbg !4527
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4528
  call void @llvm.dbg.value(metadata ptr %4, metadata !4515, metadata !DIExpression()), !dbg !4529
  %5 = icmp eq ptr %4, null, !dbg !4531
  br i1 %5, label %6, label %7, !dbg !4532

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4533
  unreachable, !dbg !4533

7:                                                ; preds = %3
  ret ptr %4, !dbg !4534
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4535 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4539, metadata !DIExpression()), !dbg !4540
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4541
  call void @llvm.dbg.value(metadata ptr %2, metadata !4515, metadata !DIExpression()), !dbg !4542
  %3 = icmp eq ptr %2, null, !dbg !4544
  br i1 %3, label %4, label %5, !dbg !4545

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4546
  unreachable, !dbg !4546

5:                                                ; preds = %1
  ret ptr %2, !dbg !4547
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4548 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4549 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4553, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.value(metadata i64 %0, metadata !4555, metadata !DIExpression()), !dbg !4559
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4561
  call void @llvm.dbg.value(metadata ptr %2, metadata !4515, metadata !DIExpression()), !dbg !4562
  %3 = icmp eq ptr %2, null, !dbg !4564
  br i1 %3, label %4, label %5, !dbg !4565

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4566
  unreachable, !dbg !4566

5:                                                ; preds = %1
  ret ptr %2, !dbg !4567
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4568 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4572, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i64 %0, metadata !4539, metadata !DIExpression()), !dbg !4574
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4576
  call void @llvm.dbg.value(metadata ptr %2, metadata !4515, metadata !DIExpression()), !dbg !4577
  %3 = icmp eq ptr %2, null, !dbg !4579
  br i1 %3, label %4, label %5, !dbg !4580

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4581
  unreachable, !dbg !4581

5:                                                ; preds = %1
  ret ptr %2, !dbg !4582
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4583 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4587, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i64 %1, metadata !4588, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata ptr %0, metadata !4590, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 %1, metadata !4594, metadata !DIExpression()), !dbg !4595
  %3 = icmp eq i64 %1, 0, !dbg !4597
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4597
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4598
  call void @llvm.dbg.value(metadata ptr %5, metadata !4515, metadata !DIExpression()), !dbg !4599
  %6 = icmp eq ptr %5, null, !dbg !4601
  br i1 %6, label %7, label %8, !dbg !4602

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4603
  unreachable, !dbg !4603

8:                                                ; preds = %2
  ret ptr %5, !dbg !4604
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4605 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4606 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4610, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata i64 %1, metadata !4611, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata ptr %0, metadata !4613, metadata !DIExpression()), !dbg !4617
  call void @llvm.dbg.value(metadata i64 %1, metadata !4616, metadata !DIExpression()), !dbg !4617
  call void @llvm.dbg.value(metadata ptr %0, metadata !4590, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata i64 %1, metadata !4594, metadata !DIExpression()), !dbg !4619
  %3 = icmp eq i64 %1, 0, !dbg !4621
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4621
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4622
  call void @llvm.dbg.value(metadata ptr %5, metadata !4515, metadata !DIExpression()), !dbg !4623
  %6 = icmp eq ptr %5, null, !dbg !4625
  br i1 %6, label %7, label %8, !dbg !4626

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4627
  unreachable, !dbg !4627

8:                                                ; preds = %2
  ret ptr %5, !dbg !4628
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4629 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4633, metadata !DIExpression()), !dbg !4636
  call void @llvm.dbg.value(metadata i64 %1, metadata !4634, metadata !DIExpression()), !dbg !4636
  call void @llvm.dbg.value(metadata i64 %2, metadata !4635, metadata !DIExpression()), !dbg !4636
  call void @llvm.dbg.value(metadata ptr %0, metadata !4637, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i64 %1, metadata !4640, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i64 %2, metadata !4641, metadata !DIExpression()), !dbg !4642
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4644
  call void @llvm.dbg.value(metadata ptr %4, metadata !4515, metadata !DIExpression()), !dbg !4645
  %5 = icmp eq ptr %4, null, !dbg !4647
  br i1 %5, label %6, label %7, !dbg !4648

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4649
  unreachable, !dbg !4649

7:                                                ; preds = %3
  ret ptr %4, !dbg !4650
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4651 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4655, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i64 %1, metadata !4656, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata ptr null, metadata !4507, metadata !DIExpression()), !dbg !4658
  call void @llvm.dbg.value(metadata i64 %0, metadata !4510, metadata !DIExpression()), !dbg !4658
  call void @llvm.dbg.value(metadata i64 %1, metadata !4511, metadata !DIExpression()), !dbg !4658
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4660
  call void @llvm.dbg.value(metadata ptr %3, metadata !4515, metadata !DIExpression()), !dbg !4661
  %4 = icmp eq ptr %3, null, !dbg !4663
  br i1 %4, label %5, label %6, !dbg !4664

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4665
  unreachable, !dbg !4665

6:                                                ; preds = %2
  ret ptr %3, !dbg !4666
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4667 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4671, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.value(metadata i64 %1, metadata !4672, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.value(metadata ptr null, metadata !4633, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i64 %0, metadata !4634, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i64 %1, metadata !4635, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata ptr null, metadata !4637, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.value(metadata i64 %0, metadata !4640, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.value(metadata i64 %1, metadata !4641, metadata !DIExpression()), !dbg !4676
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4678
  call void @llvm.dbg.value(metadata ptr %3, metadata !4515, metadata !DIExpression()), !dbg !4679
  %4 = icmp eq ptr %3, null, !dbg !4681
  br i1 %4, label %5, label %6, !dbg !4682

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4683
  unreachable, !dbg !4683

6:                                                ; preds = %2
  ret ptr %3, !dbg !4684
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4685 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4689, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata ptr %1, metadata !4690, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata ptr %0, metadata !937, metadata !DIExpression()), !dbg !4692
  call void @llvm.dbg.value(metadata ptr %1, metadata !938, metadata !DIExpression()), !dbg !4692
  call void @llvm.dbg.value(metadata i64 1, metadata !939, metadata !DIExpression()), !dbg !4692
  %3 = load i64, ptr %1, align 8, !dbg !4694, !tbaa !3586
  call void @llvm.dbg.value(metadata i64 %3, metadata !940, metadata !DIExpression()), !dbg !4692
  %4 = icmp eq ptr %0, null, !dbg !4695
  br i1 %4, label %5, label %8, !dbg !4697

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4698
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4701
  br label %15, !dbg !4701

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4702
  %10 = add nuw i64 %9, 1, !dbg !4702
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4702
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4702
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4702
  call void @llvm.dbg.value(metadata i64 %13, metadata !940, metadata !DIExpression()), !dbg !4692
  br i1 %12, label %14, label %15, !dbg !4705

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4706
  unreachable, !dbg !4706

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4692
  call void @llvm.dbg.value(metadata i64 %16, metadata !940, metadata !DIExpression()), !dbg !4692
  call void @llvm.dbg.value(metadata ptr %0, metadata !4507, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata i64 %16, metadata !4510, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata i64 1, metadata !4511, metadata !DIExpression()), !dbg !4707
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4709
  call void @llvm.dbg.value(metadata ptr %17, metadata !4515, metadata !DIExpression()), !dbg !4710
  %18 = icmp eq ptr %17, null, !dbg !4712
  br i1 %18, label %19, label %20, !dbg !4713

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4714
  unreachable, !dbg !4714

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !937, metadata !DIExpression()), !dbg !4692
  store i64 %16, ptr %1, align 8, !dbg !4715, !tbaa !3586
  ret ptr %17, !dbg !4716
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !932 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !937, metadata !DIExpression()), !dbg !4717
  call void @llvm.dbg.value(metadata ptr %1, metadata !938, metadata !DIExpression()), !dbg !4717
  call void @llvm.dbg.value(metadata i64 %2, metadata !939, metadata !DIExpression()), !dbg !4717
  %4 = load i64, ptr %1, align 8, !dbg !4718, !tbaa !3586
  call void @llvm.dbg.value(metadata i64 %4, metadata !940, metadata !DIExpression()), !dbg !4717
  %5 = icmp eq ptr %0, null, !dbg !4719
  br i1 %5, label %6, label %13, !dbg !4720

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4721
  br i1 %7, label %8, label %20, !dbg !4722

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4723
  call void @llvm.dbg.value(metadata i64 %9, metadata !940, metadata !DIExpression()), !dbg !4717
  %10 = icmp ugt i64 %2, 128, !dbg !4725
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4726
  call void @llvm.dbg.value(metadata i64 %12, metadata !940, metadata !DIExpression()), !dbg !4717
  br label %20, !dbg !4727

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4728
  %15 = add nuw i64 %14, 1, !dbg !4728
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4728
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4728
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4728
  call void @llvm.dbg.value(metadata i64 %18, metadata !940, metadata !DIExpression()), !dbg !4717
  br i1 %17, label %19, label %20, !dbg !4729

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4730
  unreachable, !dbg !4730

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4717
  call void @llvm.dbg.value(metadata i64 %21, metadata !940, metadata !DIExpression()), !dbg !4717
  call void @llvm.dbg.value(metadata ptr %0, metadata !4507, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i64 %21, metadata !4510, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i64 %2, metadata !4511, metadata !DIExpression()), !dbg !4731
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4733
  call void @llvm.dbg.value(metadata ptr %22, metadata !4515, metadata !DIExpression()), !dbg !4734
  %23 = icmp eq ptr %22, null, !dbg !4736
  br i1 %23, label %24, label %25, !dbg !4737

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4738
  unreachable, !dbg !4738

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !937, metadata !DIExpression()), !dbg !4717
  store i64 %21, ptr %1, align 8, !dbg !4739, !tbaa !3586
  ret ptr %22, !dbg !4740
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !944 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !952, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata ptr %1, metadata !953, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i64 %2, metadata !954, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i64 %3, metadata !955, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i64 %4, metadata !956, metadata !DIExpression()), !dbg !4741
  %6 = load i64, ptr %1, align 8, !dbg !4742, !tbaa !3586
  call void @llvm.dbg.value(metadata i64 %6, metadata !957, metadata !DIExpression()), !dbg !4741
  %7 = ashr i64 %6, 1, !dbg !4743
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4743
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4743
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4743
  call void @llvm.dbg.value(metadata i64 %10, metadata !958, metadata !DIExpression()), !dbg !4741
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4745
  call void @llvm.dbg.value(metadata i64 %11, metadata !958, metadata !DIExpression()), !dbg !4741
  %12 = icmp sgt i64 %3, -1, !dbg !4746
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4748
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4748
  call void @llvm.dbg.value(metadata i64 %15, metadata !958, metadata !DIExpression()), !dbg !4741
  %16 = icmp slt i64 %4, 0, !dbg !4749
  br i1 %16, label %17, label %30, !dbg !4749

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4749
  br i1 %18, label %19, label %24, !dbg !4749

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4749
  %21 = udiv i64 9223372036854775807, %20, !dbg !4749
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4749
  br i1 %23, label %46, label %43, !dbg !4749

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4749
  br i1 %25, label %43, label %26, !dbg !4749

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4749
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4749
  %29 = icmp ult i64 %28, %15, !dbg !4749
  br i1 %29, label %46, label %43, !dbg !4749

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4749
  br i1 %31, label %43, label %32, !dbg !4749

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4749
  br i1 %33, label %34, label %40, !dbg !4749

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4749
  br i1 %35, label %43, label %36, !dbg !4749

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4749
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4749
  %39 = icmp ult i64 %38, %4, !dbg !4749
  br i1 %39, label %46, label %43, !dbg !4749

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4749
  br i1 %42, label %46, label %43, !dbg !4749

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !959, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4741
  %44 = mul i64 %15, %4, !dbg !4749
  call void @llvm.dbg.value(metadata i64 %44, metadata !959, metadata !DIExpression()), !dbg !4741
  %45 = icmp slt i64 %44, 128, !dbg !4749
  br i1 %45, label %46, label %52, !dbg !4749

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !960, metadata !DIExpression()), !dbg !4741
  %48 = sdiv i64 %47, %4, !dbg !4750
  call void @llvm.dbg.value(metadata i64 %48, metadata !958, metadata !DIExpression()), !dbg !4741
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4753
  call void @llvm.dbg.value(metadata i64 %51, metadata !959, metadata !DIExpression()), !dbg !4741
  br label %52, !dbg !4754

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4741
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4741
  call void @llvm.dbg.value(metadata i64 %54, metadata !959, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i64 %53, metadata !958, metadata !DIExpression()), !dbg !4741
  %55 = icmp eq ptr %0, null, !dbg !4755
  br i1 %55, label %56, label %57, !dbg !4757

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4758, !tbaa !3586
  br label %57, !dbg !4759

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4760
  %59 = icmp slt i64 %58, %2, !dbg !4762
  br i1 %59, label %60, label %97, !dbg !4763

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4764
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4764
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4764
  call void @llvm.dbg.value(metadata i64 %63, metadata !958, metadata !DIExpression()), !dbg !4741
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4765
  br i1 %66, label %96, label %67, !dbg !4765

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4766

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4766
  br i1 %69, label %70, label %75, !dbg !4766

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4766
  %72 = udiv i64 9223372036854775807, %71, !dbg !4766
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4766
  br i1 %74, label %96, label %94, !dbg !4766

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4766
  br i1 %76, label %94, label %77, !dbg !4766

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4766
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4766
  %80 = icmp ult i64 %79, %63, !dbg !4766
  br i1 %80, label %96, label %94, !dbg !4766

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4766
  br i1 %82, label %94, label %83, !dbg !4766

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4766
  br i1 %84, label %85, label %91, !dbg !4766

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4766
  br i1 %86, label %94, label %87, !dbg !4766

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4766
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4766
  %90 = icmp ult i64 %89, %4, !dbg !4766
  br i1 %90, label %96, label %94, !dbg !4766

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4766
  br i1 %93, label %96, label %94, !dbg !4766

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !959, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4741
  %95 = mul i64 %63, %4, !dbg !4766
  call void @llvm.dbg.value(metadata i64 %95, metadata !959, metadata !DIExpression()), !dbg !4741
  br label %97, !dbg !4767

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #41, !dbg !4768
  unreachable, !dbg !4768

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4741
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4741
  call void @llvm.dbg.value(metadata i64 %99, metadata !959, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i64 %98, metadata !958, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata ptr %0, metadata !4587, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata i64 %99, metadata !4588, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata ptr %0, metadata !4590, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i64 %99, metadata !4594, metadata !DIExpression()), !dbg !4771
  %100 = icmp eq i64 %99, 0, !dbg !4773
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4773
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #46, !dbg !4774
  call void @llvm.dbg.value(metadata ptr %102, metadata !4515, metadata !DIExpression()), !dbg !4775
  %103 = icmp eq ptr %102, null, !dbg !4777
  br i1 %103, label %104, label %105, !dbg !4778

104:                                              ; preds = %97
  tail call void @xalloc_die() #41, !dbg !4779
  unreachable, !dbg !4779

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !952, metadata !DIExpression()), !dbg !4741
  store i64 %98, ptr %1, align 8, !dbg !4780, !tbaa !3586
  ret ptr %102, !dbg !4781
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4782 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4784, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i64 %0, metadata !4786, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i64 1, metadata !4789, metadata !DIExpression()), !dbg !4790
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4792
  call void @llvm.dbg.value(metadata ptr %2, metadata !4515, metadata !DIExpression()), !dbg !4793
  %3 = icmp eq ptr %2, null, !dbg !4795
  br i1 %3, label %4, label %5, !dbg !4796

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4797
  unreachable, !dbg !4797

5:                                                ; preds = %1
  ret ptr %2, !dbg !4798
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4799 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4787 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4786, metadata !DIExpression()), !dbg !4800
  call void @llvm.dbg.value(metadata i64 %1, metadata !4789, metadata !DIExpression()), !dbg !4800
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4801
  call void @llvm.dbg.value(metadata ptr %3, metadata !4515, metadata !DIExpression()), !dbg !4802
  %4 = icmp eq ptr %3, null, !dbg !4804
  br i1 %4, label %5, label %6, !dbg !4805

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4806
  unreachable, !dbg !4806

6:                                                ; preds = %2
  ret ptr %3, !dbg !4807
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4808 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4810, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %0, metadata !4812, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i64 1, metadata !4815, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i64 %0, metadata !4818, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata i64 1, metadata !4821, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata i64 %0, metadata !4818, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata i64 1, metadata !4821, metadata !DIExpression()), !dbg !4822
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4824
  call void @llvm.dbg.value(metadata ptr %2, metadata !4515, metadata !DIExpression()), !dbg !4825
  %3 = icmp eq ptr %2, null, !dbg !4827
  br i1 %3, label %4, label %5, !dbg !4828

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4829
  unreachable, !dbg !4829

5:                                                ; preds = %1
  ret ptr %2, !dbg !4830
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4813 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4812, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i64 %1, metadata !4815, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i64 %0, metadata !4818, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata i64 %1, metadata !4821, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata i64 %0, metadata !4818, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata i64 %1, metadata !4821, metadata !DIExpression()), !dbg !4832
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4834
  call void @llvm.dbg.value(metadata ptr %3, metadata !4515, metadata !DIExpression()), !dbg !4835
  %4 = icmp eq ptr %3, null, !dbg !4837
  br i1 %4, label %5, label %6, !dbg !4838

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4839
  unreachable, !dbg !4839

6:                                                ; preds = %2
  ret ptr %3, !dbg !4840
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4841 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4845, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i64 %1, metadata !4846, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i64 %1, metadata !4539, metadata !DIExpression()), !dbg !4848
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4850
  call void @llvm.dbg.value(metadata ptr %3, metadata !4515, metadata !DIExpression()), !dbg !4851
  %4 = icmp eq ptr %3, null, !dbg !4853
  br i1 %4, label %5, label %6, !dbg !4854

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4855
  unreachable, !dbg !4855

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4856, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata ptr %0, metadata !4862, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i64 %1, metadata !4863, metadata !DIExpression()), !dbg !4864
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4866
  ret ptr %3, !dbg !4867
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4868 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4872, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i64 %1, metadata !4873, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i64 %1, metadata !4553, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i64 %1, metadata !4555, metadata !DIExpression()), !dbg !4877
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4879
  call void @llvm.dbg.value(metadata ptr %3, metadata !4515, metadata !DIExpression()), !dbg !4880
  %4 = icmp eq ptr %3, null, !dbg !4882
  br i1 %4, label %5, label %6, !dbg !4883

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4884
  unreachable, !dbg !4884

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4856, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata ptr %0, metadata !4862, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i64 %1, metadata !4863, metadata !DIExpression()), !dbg !4885
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4887
  ret ptr %3, !dbg !4888
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4889 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4893, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i64 %1, metadata !4894, metadata !DIExpression()), !dbg !4896
  %3 = add nsw i64 %1, 1, !dbg !4897
  call void @llvm.dbg.value(metadata i64 %3, metadata !4553, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i64 %3, metadata !4555, metadata !DIExpression()), !dbg !4900
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4902
  call void @llvm.dbg.value(metadata ptr %4, metadata !4515, metadata !DIExpression()), !dbg !4903
  %5 = icmp eq ptr %4, null, !dbg !4905
  br i1 %5, label %6, label %7, !dbg !4906

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4907
  unreachable, !dbg !4907

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4895, metadata !DIExpression()), !dbg !4896
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4908
  store i8 0, ptr %8, align 1, !dbg !4909, !tbaa !1109
  call void @llvm.dbg.value(metadata ptr %4, metadata !4856, metadata !DIExpression()), !dbg !4910
  call void @llvm.dbg.value(metadata ptr %0, metadata !4862, metadata !DIExpression()), !dbg !4910
  call void @llvm.dbg.value(metadata i64 %1, metadata !4863, metadata !DIExpression()), !dbg !4910
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4912
  ret ptr %4, !dbg !4913
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4914 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4916, metadata !DIExpression()), !dbg !4917
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4918
  %3 = add i64 %2, 1, !dbg !4919
  call void @llvm.dbg.value(metadata ptr %0, metadata !4845, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata i64 %3, metadata !4846, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.value(metadata i64 %3, metadata !4539, metadata !DIExpression()), !dbg !4922
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4924
  call void @llvm.dbg.value(metadata ptr %4, metadata !4515, metadata !DIExpression()), !dbg !4925
  %5 = icmp eq ptr %4, null, !dbg !4927
  br i1 %5, label %6, label %7, !dbg !4928

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4929
  unreachable, !dbg !4929

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4856, metadata !DIExpression()), !dbg !4930
  call void @llvm.dbg.value(metadata ptr %0, metadata !4862, metadata !DIExpression()), !dbg !4930
  call void @llvm.dbg.value(metadata i64 %3, metadata !4863, metadata !DIExpression()), !dbg !4930
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4932
  ret ptr %4, !dbg !4933
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4934 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4939, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %1, metadata !4936, metadata !DIExpression()), !dbg !4940
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.185, ptr noundef nonnull @.str.2.186, i32 noundef 5) #39, !dbg !4939
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.187, ptr noundef %2) #39, !dbg !4939
  %3 = icmp eq i32 %1, 0, !dbg !4939
  tail call void @llvm.assume(i1 %3), !dbg !4939
  tail call void @abort() #41, !dbg !4941
  unreachable, !dbg !4941
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4942 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4980, metadata !DIExpression()), !dbg !4985
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4986
  call void @llvm.dbg.value(metadata i1 poison, metadata !4981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4985
  call void @llvm.dbg.value(metadata ptr %0, metadata !4987, metadata !DIExpression()), !dbg !4990
  %3 = load i32, ptr %0, align 8, !dbg !4992, !tbaa !4993
  %4 = and i32 %3, 32, !dbg !4994
  %5 = icmp eq i32 %4, 0, !dbg !4994
  call void @llvm.dbg.value(metadata i1 %5, metadata !4983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4985
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4995
  %7 = icmp eq i32 %6, 0, !dbg !4996
  call void @llvm.dbg.value(metadata i1 %7, metadata !4984, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4985
  br i1 %5, label %8, label %18, !dbg !4997

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4999
  call void @llvm.dbg.value(metadata i1 %9, metadata !4981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4985
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5000
  %11 = xor i1 %7, true, !dbg !5000
  %12 = sext i1 %11 to i32, !dbg !5000
  br i1 %10, label %21, label %13, !dbg !5000

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !5001
  %15 = load i32, ptr %14, align 4, !dbg !5001, !tbaa !1100
  %16 = icmp ne i32 %15, 9, !dbg !5002
  %17 = sext i1 %16 to i32, !dbg !5003
  br label %21, !dbg !5003

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5004

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !5006
  store i32 0, ptr %20, align 4, !dbg !5008, !tbaa !1100
  br label %21, !dbg !5006

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4985
  ret i32 %22, !dbg !5009
}

; Function Attrs: nounwind
declare !dbg !5010 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !5014 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5052, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i32 0, metadata !5053, metadata !DIExpression()), !dbg !5056
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !5057
  call void @llvm.dbg.value(metadata i32 %2, metadata !5054, metadata !DIExpression()), !dbg !5056
  %3 = icmp slt i32 %2, 0, !dbg !5058
  br i1 %3, label %4, label %6, !dbg !5060

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5061
  br label %24, !dbg !5062

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !5063
  %8 = icmp eq i32 %7, 0, !dbg !5063
  br i1 %8, label %13, label %9, !dbg !5065

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !5066
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !5067
  %12 = icmp eq i64 %11, -1, !dbg !5068
  br i1 %12, label %16, label %13, !dbg !5069

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !5070
  %15 = icmp eq i32 %14, 0, !dbg !5070
  br i1 %15, label %16, label %18, !dbg !5071

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !5053, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i32 0, metadata !5055, metadata !DIExpression()), !dbg !5056
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5072
  call void @llvm.dbg.value(metadata i32 %17, metadata !5055, metadata !DIExpression()), !dbg !5056
  br label %24, !dbg !5073

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !5074
  %20 = load i32, ptr %19, align 4, !dbg !5074, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 %20, metadata !5053, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i32 0, metadata !5055, metadata !DIExpression()), !dbg !5056
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5072
  call void @llvm.dbg.value(metadata i32 %21, metadata !5055, metadata !DIExpression()), !dbg !5056
  %22 = icmp eq i32 %20, 0, !dbg !5075
  br i1 %22, label %24, label %23, !dbg !5073

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !5077, !tbaa !1100
  call void @llvm.dbg.value(metadata i32 -1, metadata !5055, metadata !DIExpression()), !dbg !5056
  br label %24, !dbg !5079

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !5056
  ret i32 %25, !dbg !5080
}

; Function Attrs: nofree nounwind
declare !dbg !5081 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !5082 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5083 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !5084 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !5087 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5125, metadata !DIExpression()), !dbg !5126
  %2 = icmp eq ptr %0, null, !dbg !5127
  br i1 %2, label %6, label %3, !dbg !5129

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !5130
  %5 = icmp eq i32 %4, 0, !dbg !5130
  br i1 %5, label %6, label %8, !dbg !5131

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !5132
  br label %16, !dbg !5133

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !5134, metadata !DIExpression()), !dbg !5139
  %9 = load i32, ptr %0, align 8, !dbg !5141, !tbaa !4993
  %10 = and i32 %9, 256, !dbg !5143
  %11 = icmp eq i32 %10, 0, !dbg !5143
  br i1 %11, label %14, label %12, !dbg !5144

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !5145
  br label %14, !dbg !5145

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !5146
  br label %16, !dbg !5147

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !5126
  ret i32 %17, !dbg !5148
}

; Function Attrs: nofree nounwind
declare !dbg !5149 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5150 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5189, metadata !DIExpression()), !dbg !5195
  call void @llvm.dbg.value(metadata i64 %1, metadata !5190, metadata !DIExpression()), !dbg !5195
  call void @llvm.dbg.value(metadata i32 %2, metadata !5191, metadata !DIExpression()), !dbg !5195
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5196
  %5 = load ptr, ptr %4, align 8, !dbg !5196, !tbaa !5197
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5198
  %7 = load ptr, ptr %6, align 8, !dbg !5198, !tbaa !5199
  %8 = icmp eq ptr %5, %7, !dbg !5200
  br i1 %8, label %9, label %27, !dbg !5201

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5202
  %11 = load ptr, ptr %10, align 8, !dbg !5202, !tbaa !2650
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5203
  %13 = load ptr, ptr %12, align 8, !dbg !5203, !tbaa !5204
  %14 = icmp eq ptr %11, %13, !dbg !5205
  br i1 %14, label %15, label %27, !dbg !5206

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !5207
  %17 = load ptr, ptr %16, align 8, !dbg !5207, !tbaa !5208
  %18 = icmp eq ptr %17, null, !dbg !5209
  br i1 %18, label %19, label %27, !dbg !5210

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !5211
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !5212
  call void @llvm.dbg.value(metadata i64 %21, metadata !5192, metadata !DIExpression()), !dbg !5213
  %22 = icmp eq i64 %21, -1, !dbg !5214
  br i1 %22, label %29, label %23, !dbg !5216

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !5217, !tbaa !4993
  %25 = and i32 %24, -17, !dbg !5217
  store i32 %25, ptr %0, align 8, !dbg !5217, !tbaa !4993
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !5218
  store i64 %21, ptr %26, align 8, !dbg !5219, !tbaa !5220
  br label %29, !dbg !5221

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !5222
  br label %29, !dbg !5223

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !5195
  ret i32 %30, !dbg !5224
}

; Function Attrs: nofree nounwind
declare !dbg !5225 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5228 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5233, metadata !DIExpression()), !dbg !5238
  call void @llvm.dbg.value(metadata ptr %1, metadata !5234, metadata !DIExpression()), !dbg !5238
  call void @llvm.dbg.value(metadata i64 %2, metadata !5235, metadata !DIExpression()), !dbg !5238
  call void @llvm.dbg.value(metadata ptr %3, metadata !5236, metadata !DIExpression()), !dbg !5238
  %5 = icmp eq ptr %1, null, !dbg !5239
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5241
  %7 = select i1 %5, ptr @.str.198, ptr %1, !dbg !5241
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5241
  call void @llvm.dbg.value(metadata i64 %8, metadata !5235, metadata !DIExpression()), !dbg !5238
  call void @llvm.dbg.value(metadata ptr %7, metadata !5234, metadata !DIExpression()), !dbg !5238
  call void @llvm.dbg.value(metadata ptr %6, metadata !5233, metadata !DIExpression()), !dbg !5238
  %9 = icmp eq ptr %3, null, !dbg !5242
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5244
  call void @llvm.dbg.value(metadata ptr %10, metadata !5236, metadata !DIExpression()), !dbg !5238
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !5245
  call void @llvm.dbg.value(metadata i64 %11, metadata !5237, metadata !DIExpression()), !dbg !5238
  %12 = icmp ult i64 %11, -3, !dbg !5246
  br i1 %12, label %13, label %17, !dbg !5248

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !5249
  %15 = icmp eq i32 %14, 0, !dbg !5249
  br i1 %15, label %16, label %29, !dbg !5250

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5251, metadata !DIExpression()), !dbg !5256
  call void @llvm.dbg.value(metadata ptr %10, metadata !5258, metadata !DIExpression()), !dbg !5263
  call void @llvm.dbg.value(metadata i32 0, metadata !5261, metadata !DIExpression()), !dbg !5263
  call void @llvm.dbg.value(metadata i64 8, metadata !5262, metadata !DIExpression()), !dbg !5263
  store i64 0, ptr %10, align 1, !dbg !5265
  br label %29, !dbg !5266

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5267
  br i1 %18, label %19, label %20, !dbg !5269

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !5270
  unreachable, !dbg !5270

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5271

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !5273
  br i1 %23, label %29, label %24, !dbg !5274

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5275
  br i1 %25, label %29, label %26, !dbg !5278

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5279, !tbaa !1109
  %28 = zext i8 %27 to i32, !dbg !5280
  store i32 %28, ptr %6, align 4, !dbg !5281, !tbaa !1100
  br label %29, !dbg !5282

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5238
  ret i64 %30, !dbg !5283
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5284 i32 @mbsinit(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !5290 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5292, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.value(metadata i64 %1, metadata !5293, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.value(metadata i64 %2, metadata !5294, metadata !DIExpression()), !dbg !5296
  %4 = icmp eq i64 %2, 0, !dbg !5297
  br i1 %4, label %8, label %5, !dbg !5297

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5297
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5297
  br i1 %7, label %13, label %8, !dbg !5297

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5295, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5296
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5295, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5296
  %9 = mul i64 %2, %1, !dbg !5297
  call void @llvm.dbg.value(metadata i64 %9, metadata !5295, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.value(metadata ptr %0, metadata !5299, metadata !DIExpression()), !dbg !5303
  call void @llvm.dbg.value(metadata i64 %9, metadata !5302, metadata !DIExpression()), !dbg !5303
  %10 = icmp eq i64 %9, 0, !dbg !5305
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5305
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #46, !dbg !5306
  br label %15, !dbg !5307

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5295, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5296
  %14 = tail call ptr @__errno_location() #42, !dbg !5308
  store i32 12, ptr %14, align 4, !dbg !5310, !tbaa !1100
  br label %15, !dbg !5311

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5296
  ret ptr %16, !dbg !5312
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5313 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5315, metadata !DIExpression()), !dbg !5320
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !5321
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5316, metadata !DIExpression()), !dbg !5322
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !5323
  %4 = icmp eq i32 %3, 0, !dbg !5323
  br i1 %4, label %5, label %12, !dbg !5325

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5326, metadata !DIExpression()), !dbg !5330
  call void @llvm.dbg.value(metadata ptr @.str.203, metadata !5329, metadata !DIExpression()), !dbg !5330
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.203, i64 2), !dbg !5333
  %7 = icmp eq i32 %6, 0, !dbg !5334
  br i1 %7, label %11, label %8, !dbg !5335

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5326, metadata !DIExpression()), !dbg !5336
  call void @llvm.dbg.value(metadata ptr @.str.1.204, metadata !5329, metadata !DIExpression()), !dbg !5336
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.204, i64 6), !dbg !5338
  %10 = icmp eq i32 %9, 0, !dbg !5339
  br i1 %10, label %11, label %12, !dbg !5340

11:                                               ; preds = %8, %5
  br label %12, !dbg !5341

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5320
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !5342
  ret i1 %13, !dbg !5342
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5343 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5347, metadata !DIExpression()), !dbg !5350
  call void @llvm.dbg.value(metadata ptr %1, metadata !5348, metadata !DIExpression()), !dbg !5350
  call void @llvm.dbg.value(metadata i64 %2, metadata !5349, metadata !DIExpression()), !dbg !5350
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !5351
  ret i32 %4, !dbg !5352
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5353 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5357, metadata !DIExpression()), !dbg !5358
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !5359
  ret ptr %2, !dbg !5360
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5361 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5363, metadata !DIExpression()), !dbg !5365
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5366
  call void @llvm.dbg.value(metadata ptr %2, metadata !5364, metadata !DIExpression()), !dbg !5365
  ret ptr %2, !dbg !5367
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5368 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5370, metadata !DIExpression()), !dbg !5377
  call void @llvm.dbg.value(metadata ptr %1, metadata !5371, metadata !DIExpression()), !dbg !5377
  call void @llvm.dbg.value(metadata i64 %2, metadata !5372, metadata !DIExpression()), !dbg !5377
  call void @llvm.dbg.value(metadata i32 %0, metadata !5363, metadata !DIExpression()), !dbg !5378
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5380
  call void @llvm.dbg.value(metadata ptr %4, metadata !5364, metadata !DIExpression()), !dbg !5378
  call void @llvm.dbg.value(metadata ptr %4, metadata !5373, metadata !DIExpression()), !dbg !5377
  %5 = icmp eq ptr %4, null, !dbg !5381
  br i1 %5, label %6, label %9, !dbg !5382

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5383
  br i1 %7, label %19, label %8, !dbg !5386

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5387, !tbaa !1109
  br label %19, !dbg !5388

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !5389
  call void @llvm.dbg.value(metadata i64 %10, metadata !5374, metadata !DIExpression()), !dbg !5390
  %11 = icmp ult i64 %10, %2, !dbg !5391
  br i1 %11, label %12, label %14, !dbg !5393

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5394
  call void @llvm.dbg.value(metadata ptr %1, metadata !5396, metadata !DIExpression()), !dbg !5401
  call void @llvm.dbg.value(metadata ptr %4, metadata !5399, metadata !DIExpression()), !dbg !5401
  call void @llvm.dbg.value(metadata i64 %13, metadata !5400, metadata !DIExpression()), !dbg !5401
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !5403
  br label %19, !dbg !5404

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5405
  br i1 %15, label %19, label %16, !dbg !5408

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5409
  call void @llvm.dbg.value(metadata ptr %1, metadata !5396, metadata !DIExpression()), !dbg !5411
  call void @llvm.dbg.value(metadata ptr %4, metadata !5399, metadata !DIExpression()), !dbg !5411
  call void @llvm.dbg.value(metadata i64 %17, metadata !5400, metadata !DIExpression()), !dbg !5411
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !5413
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5414
  store i8 0, ptr %18, align 1, !dbg !5415, !tbaa !1109
  br label %19, !dbg !5416

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5417
  ret i32 %20, !dbg !5418
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
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { cold nounwind }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0) }
attributes #48 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!218, !578, !582, !597, !877, !911, !913, !652, !666, !717, !919, !921, !871, !928, !962, !964, !966, !968, !970, !893, !972, !975, !977, !979}
!llvm.ident = !{!981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981, !981}
!llvm.module.flags = !{!982, !983, !984, !985, !986, !987, !988}

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
!218 = distinct !DICompileUnit(language: DW_LANG_C11, file: !219, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !220, retainedTypes: !257, globals: !273, splitDebugInlining: false, nameTableKind: None)
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
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !263, line: 46, baseType: !264)
!263 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!578 = distinct !DICompileUnit(language: DW_LANG_C11, file: !575, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !579, splitDebugInlining: false, nameTableKind: None)
!579 = !{!573, !576}
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "file_name", scope: !582, file: !583, line: 45, type: !265, isLocal: true, isDefinition: true)
!582 = distinct !DICompileUnit(language: DW_LANG_C11, file: !583, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !584, splitDebugInlining: false, nameTableKind: None)
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
!596 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !597, file: !598, line: 66, type: !647, isLocal: false, isDefinition: true)
!597 = distinct !DICompileUnit(language: DW_LANG_C11, file: !598, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !599, globals: !600, splitDebugInlining: false, nameTableKind: None)
!598 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!599 = !{!259, !267}
!600 = !{!601, !603, !628, !630, !632, !634, !595, !636, !638, !640, !642, !645}
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !598, line: 272, type: !390, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(name: "old_file_name", scope: !605, file: !598, line: 304, type: !265, isLocal: true, isDefinition: true)
!605 = distinct !DISubprogram(name: "verror_at_line", scope: !598, file: !598, line: 298, type: !606, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !621)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !260, !260, !265, !222, !265, !608}
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !609, line: 52, baseType: !610)
!609 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !611, line: 14, baseType: !612)
!611 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !613, baseType: !614)
!613 = !DIFile(filename: "lib/error.c", directory: "/src")
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !615)
!615 = !{!616, !617, !618, !619, !620}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !614, file: !613, baseType: !259, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !614, file: !613, baseType: !259, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !614, file: !613, baseType: !259, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !614, file: !613, baseType: !260, size: 32, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !614, file: !613, baseType: !260, size: 32, offset: 224)
!621 = !{!622, !623, !624, !625, !626, !627}
!622 = !DILocalVariable(name: "status", arg: 1, scope: !605, file: !598, line: 298, type: !260)
!623 = !DILocalVariable(name: "errnum", arg: 2, scope: !605, file: !598, line: 298, type: !260)
!624 = !DILocalVariable(name: "file_name", arg: 3, scope: !605, file: !598, line: 298, type: !265)
!625 = !DILocalVariable(name: "line_number", arg: 4, scope: !605, file: !598, line: 298, type: !222)
!626 = !DILocalVariable(name: "message", arg: 5, scope: !605, file: !598, line: 298, type: !265)
!627 = !DILocalVariable(name: "args", arg: 6, scope: !605, file: !598, line: 298, type: !608)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(name: "old_line_number", scope: !605, file: !598, line: 305, type: !222, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !598, line: 338, type: !397, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !598, line: 346, type: !424, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !598, line: 346, type: !19, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "error_message_count", scope: !597, file: !598, line: 69, type: !222, isLocal: false, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !597, file: !598, line: 295, type: !260, isLocal: false, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !598, line: 208, type: !276, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !598, line: 208, type: !644, isLocal: true, isDefinition: true)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !498)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !598, line: 214, type: !390, isLocal: true, isDefinition: true)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null}
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(name: "program_name", scope: !652, file: !653, line: 31, type: !265, isLocal: false, isDefinition: true)
!652 = distinct !DICompileUnit(language: DW_LANG_C11, file: !653, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !654, globals: !655, splitDebugInlining: false, nameTableKind: None)
!653 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!654 = !{!258}
!655 = !{!650, !656, !658}
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !653, line: 46, type: !424, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !653, line: 49, type: !397, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(name: "utf07FF", scope: !662, file: !663, line: 46, type: !690, isLocal: true, isDefinition: true)
!662 = distinct !DISubprogram(name: "proper_name_lite", scope: !663, file: !663, line: 38, type: !664, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !666, retainedNodes: !668)
!663 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!664 = !DISubroutineType(types: !665)
!665 = !{!265, !265, !265}
!666 = distinct !DICompileUnit(language: DW_LANG_C11, file: !663, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !667, splitDebugInlining: false, nameTableKind: None)
!667 = !{!660}
!668 = !{!669, !670, !671, !672, !677}
!669 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !662, file: !663, line: 38, type: !265)
!670 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !662, file: !663, line: 38, type: !265)
!671 = !DILocalVariable(name: "translation", scope: !662, file: !663, line: 40, type: !265)
!672 = !DILocalVariable(name: "w", scope: !662, file: !663, line: 47, type: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !674, line: 37, baseType: !675)
!674 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !271, line: 57, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !271, line: 42, baseType: !222)
!677 = !DILocalVariable(name: "mbs", scope: !662, file: !663, line: 48, type: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !679, line: 6, baseType: !680)
!679 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !681, line: 21, baseType: !682)
!681 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !681, line: 13, size: 64, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !682, file: !681, line: 15, baseType: !260, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !682, file: !681, line: 20, baseType: !686, size: 32, offset: 32)
!686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !682, file: !681, line: 16, size: 32, elements: !687)
!687 = !{!688, !689}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !686, file: !681, line: 18, baseType: !222, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !686, file: !681, line: 19, baseType: !397, size: 32)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 16, elements: !20)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !693, line: 78, type: !424, isLocal: true, isDefinition: true)
!693 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !693, line: 79, type: !402, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !693, line: 80, type: !698, isLocal: true, isDefinition: true)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !699)
!699 = !{!700}
!700 = !DISubrange(count: 13)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !693, line: 81, type: !698, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !693, line: 82, type: !379, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !693, line: 83, type: !19, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !693, line: 84, type: !424, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !693, line: 85, type: !276, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !693, line: 86, type: !276, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !693, line: 87, type: !424, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !717, file: !693, line: 76, type: !803, isLocal: false, isDefinition: true)
!717 = distinct !DICompileUnit(language: DW_LANG_C11, file: !693, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !718, retainedTypes: !738, globals: !739, splitDebugInlining: false, nameTableKind: None)
!718 = !{!719, !733, !227}
!719 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !720, line: 42, baseType: !222, size: 32, elements: !721)
!720 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!721 = !{!722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!722 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!723 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!724 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!725 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!726 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!727 = !DIEnumerator(name: "c_quoting_style", value: 5)
!728 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!729 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!730 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!731 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!732 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!733 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !720, line: 254, baseType: !222, size: 32, elements: !734)
!734 = !{!735, !736, !737}
!735 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!736 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!737 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!738 = !{!260, !261, !262}
!739 = !{!691, !694, !696, !701, !703, !705, !707, !709, !711, !713, !715, !740, !744, !754, !756, !761, !763, !765, !767, !769, !792, !799, !801}
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !717, file: !693, line: 92, type: !742, isLocal: false, isDefinition: true)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 320, elements: !209)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !717, file: !693, line: 1040, type: !746, isLocal: false, isDefinition: true)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !693, line: 56, size: 448, elements: !747)
!747 = !{!748, !749, !750, !752, !753}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !746, file: !693, line: 59, baseType: !719, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !693, line: 62, baseType: !260, size: 32, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !746, file: !693, line: 66, baseType: !751, size: 256, offset: 64)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 256, elements: !425)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !746, file: !693, line: 69, baseType: !265, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !746, file: !693, line: 72, baseType: !265, size: 64, offset: 384)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !717, file: !693, line: 107, type: !746, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(name: "slot0", scope: !717, file: !693, line: 831, type: !758, isLocal: true, isDefinition: true)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 256)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !693, line: 321, type: !19, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !693, line: 357, type: !19, isLocal: true, isDefinition: true)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !693, line: 358, type: !19, isLocal: true, isDefinition: true)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !693, line: 199, type: !276, isLocal: true, isDefinition: true)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(name: "quote", scope: !771, file: !693, line: 228, type: !790, isLocal: true, isDefinition: true)
!771 = distinct !DISubprogram(name: "gettext_quote", scope: !693, file: !693, line: 197, type: !772, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !774)
!772 = !DISubroutineType(types: !773)
!773 = !{!265, !265, !719}
!774 = !{!775, !776, !777, !778, !779}
!775 = !DILocalVariable(name: "msgid", arg: 1, scope: !771, file: !693, line: 197, type: !265)
!776 = !DILocalVariable(name: "s", arg: 2, scope: !771, file: !693, line: 197, type: !719)
!777 = !DILocalVariable(name: "translation", scope: !771, file: !693, line: 199, type: !265)
!778 = !DILocalVariable(name: "w", scope: !771, file: !693, line: 229, type: !673)
!779 = !DILocalVariable(name: "mbs", scope: !771, file: !693, line: 230, type: !780)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !679, line: 6, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !681, line: 21, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !681, line: 13, size: 64, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !782, file: !681, line: 15, baseType: !260, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !782, file: !681, line: 20, baseType: !786, size: 32, offset: 32)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !681, line: 16, size: 32, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !786, file: !681, line: 18, baseType: !222, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !786, file: !681, line: 19, baseType: !397, size: 32)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 64, elements: !791)
!791 = !{!21, !399}
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(name: "slotvec", scope: !717, file: !693, line: 834, type: !794, isLocal: true, isDefinition: true)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !693, line: 823, size: 128, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !795, file: !693, line: 825, baseType: !262, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !795, file: !693, line: 826, baseType: !258, size: 64, offset: 64)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(name: "nslots", scope: !717, file: !693, line: 832, type: !260, isLocal: true, isDefinition: true)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(name: "slotvec0", scope: !717, file: !693, line: 833, type: !795, isLocal: true, isDefinition: true)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 704, elements: !295)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !807, line: 67, type: !482, isLocal: true, isDefinition: true)
!807 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !807, line: 69, type: !276, isLocal: true, isDefinition: true)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !807, line: 83, type: !276, isLocal: true, isDefinition: true)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(scope: null, file: !807, line: 83, type: !397, isLocal: true, isDefinition: true)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !807, line: 85, type: !19, isLocal: true, isDefinition: true)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !807, line: 88, type: !818, isLocal: true, isDefinition: true)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 171)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !807, line: 88, type: !823, isLocal: true, isDefinition: true)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !824)
!824 = !{!825}
!825 = !DISubrange(count: 34)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(scope: null, file: !807, line: 105, type: !459, isLocal: true, isDefinition: true)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(scope: null, file: !807, line: 109, type: !558, isLocal: true, isDefinition: true)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(scope: null, file: !807, line: 113, type: !502, isLocal: true, isDefinition: true)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(scope: null, file: !807, line: 120, type: !834, isLocal: true, isDefinition: true)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !835)
!835 = !{!836}
!836 = !DISubrange(count: 32)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(scope: null, file: !807, line: 127, type: !839, isLocal: true, isDefinition: true)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !840)
!840 = !{!841}
!841 = !DISubrange(count: 36)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(scope: null, file: !807, line: 134, type: !439, isLocal: true, isDefinition: true)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !807, line: 142, type: !846, isLocal: true, isDefinition: true)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 44)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(scope: null, file: !807, line: 150, type: !51, isLocal: true, isDefinition: true)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(scope: null, file: !807, line: 159, type: !110, isLocal: true, isDefinition: true)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(scope: null, file: !807, line: 170, type: !160, isLocal: true, isDefinition: true)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(scope: null, file: !807, line: 248, type: !379, isLocal: true, isDefinition: true)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(scope: null, file: !807, line: 248, type: !464, isLocal: true, isDefinition: true)
!859 = !DIGlobalVariableExpression(var: !860, expr: !DIExpression())
!860 = distinct !DIGlobalVariable(scope: null, file: !807, line: 254, type: !379, isLocal: true, isDefinition: true)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(scope: null, file: !807, line: 254, type: !198, isLocal: true, isDefinition: true)
!863 = !DIGlobalVariableExpression(var: !864, expr: !DIExpression())
!864 = distinct !DIGlobalVariable(scope: null, file: !807, line: 254, type: !439, isLocal: true, isDefinition: true)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(scope: null, file: !807, line: 259, type: !3, isLocal: true, isDefinition: true)
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression())
!868 = distinct !DIGlobalVariable(scope: null, file: !807, line: 259, type: !525, isLocal: true, isDefinition: true)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression())
!870 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !871, file: !872, line: 26, type: !874, isLocal: false, isDefinition: true)
!871 = distinct !DICompileUnit(language: DW_LANG_C11, file: !872, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !873, splitDebugInlining: false, nameTableKind: None)
!872 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!873 = !{!869}
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 376, elements: !104)
!875 = !DIGlobalVariableExpression(var: !876, expr: !DIExpression())
!876 = distinct !DIGlobalVariable(name: "exit_failure", scope: !877, file: !878, line: 24, type: !880, isLocal: false, isDefinition: true)
!877 = distinct !DICompileUnit(language: DW_LANG_C11, file: !878, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !879, splitDebugInlining: false, nameTableKind: None)
!878 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!879 = !{!875}
!880 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !260)
!881 = !DIGlobalVariableExpression(var: !882, expr: !DIExpression())
!882 = distinct !DIGlobalVariable(scope: null, file: !883, line: 34, type: !411, isLocal: true, isDefinition: true)
!883 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!884 = !DIGlobalVariableExpression(var: !885, expr: !DIExpression())
!885 = distinct !DIGlobalVariable(scope: null, file: !883, line: 34, type: !276, isLocal: true, isDefinition: true)
!886 = !DIGlobalVariableExpression(var: !887, expr: !DIExpression())
!887 = distinct !DIGlobalVariable(scope: null, file: !883, line: 34, type: !285, isLocal: true, isDefinition: true)
!888 = !DIGlobalVariableExpression(var: !889, expr: !DIExpression())
!889 = distinct !DIGlobalVariable(scope: null, file: !890, line: 108, type: !203, isLocal: true, isDefinition: true)
!890 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!891 = !DIGlobalVariableExpression(var: !892, expr: !DIExpression())
!892 = distinct !DIGlobalVariable(name: "internal_state", scope: !893, file: !890, line: 97, type: !896, isLocal: true, isDefinition: true)
!893 = distinct !DICompileUnit(language: DW_LANG_C11, file: !890, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !894, globals: !895, splitDebugInlining: false, nameTableKind: None)
!894 = !{!259, !262, !267}
!895 = !{!888, !891}
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !679, line: 6, baseType: !897)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !681, line: 21, baseType: !898)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !681, line: 13, size: 64, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !898, file: !681, line: 15, baseType: !260, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !898, file: !681, line: 20, baseType: !902, size: 32, offset: 32)
!902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !681, line: 16, size: 32, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !902, file: !681, line: 18, baseType: !222, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !902, file: !681, line: 19, baseType: !397, size: 32)
!906 = !DIGlobalVariableExpression(var: !907, expr: !DIExpression())
!907 = distinct !DIGlobalVariable(scope: null, file: !908, line: 35, type: !19, isLocal: true, isDefinition: true)
!908 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!909 = !DIGlobalVariableExpression(var: !910, expr: !DIExpression())
!910 = distinct !DIGlobalVariable(scope: null, file: !908, line: 35, type: !402, isLocal: true, isDefinition: true)
!911 = distinct !DICompileUnit(language: DW_LANG_C11, file: !912, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!912 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!913 = distinct !DICompileUnit(language: DW_LANG_C11, file: !914, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !915, splitDebugInlining: false, nameTableKind: None)
!914 = !DIFile(filename: "lib/umaxtostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa759af6e92fed26f32f683da6c23a8")
!915 = !{!916}
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !917, line: 102, baseType: !918)
!917 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !271, line: 73, baseType: !264)
!919 = distinct !DICompileUnit(language: DW_LANG_C11, file: !920, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!920 = !DIFile(filename: "lib/strintcmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cbb3801b0b03f23f2fd643484b645368")
!921 = distinct !DICompileUnit(language: DW_LANG_C11, file: !807, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !922, retainedTypes: !926, globals: !927, splitDebugInlining: false, nameTableKind: None)
!922 = !{!923}
!923 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !807, line: 40, baseType: !222, size: 32, elements: !924)
!924 = !{!925}
!925 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!926 = !{!259}
!927 = !{!805, !808, !810, !812, !814, !816, !821, !826, !828, !830, !832, !837, !842, !844, !849, !851, !853, !855, !857, !859, !861, !863, !865, !867}
!928 = distinct !DICompileUnit(language: DW_LANG_C11, file: !929, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !930, retainedTypes: !961, splitDebugInlining: false, nameTableKind: None)
!929 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!930 = !{!931, !943}
!931 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !932, file: !929, line: 188, baseType: !222, size: 32, elements: !941)
!932 = distinct !DISubprogram(name: "x2nrealloc", scope: !929, file: !929, line: 176, type: !933, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !936)
!933 = !DISubroutineType(types: !934)
!934 = !{!259, !259, !935, !262}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!936 = !{!937, !938, !939, !940}
!937 = !DILocalVariable(name: "p", arg: 1, scope: !932, file: !929, line: 176, type: !259)
!938 = !DILocalVariable(name: "pn", arg: 2, scope: !932, file: !929, line: 176, type: !935)
!939 = !DILocalVariable(name: "s", arg: 3, scope: !932, file: !929, line: 176, type: !262)
!940 = !DILocalVariable(name: "n", scope: !932, file: !929, line: 178, type: !262)
!941 = !{!942}
!942 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!943 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !944, file: !929, line: 228, baseType: !222, size: 32, elements: !941)
!944 = distinct !DISubprogram(name: "xpalloc", scope: !929, file: !929, line: 223, type: !945, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !951)
!945 = !DISubroutineType(types: !946)
!946 = !{!259, !259, !947, !948, !950, !948}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !949, line: 130, baseType: !950)
!949 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !263, line: 35, baseType: !272)
!951 = !{!952, !953, !954, !955, !956, !957, !958, !959, !960}
!952 = !DILocalVariable(name: "pa", arg: 1, scope: !944, file: !929, line: 223, type: !259)
!953 = !DILocalVariable(name: "pn", arg: 2, scope: !944, file: !929, line: 223, type: !947)
!954 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !944, file: !929, line: 223, type: !948)
!955 = !DILocalVariable(name: "n_max", arg: 4, scope: !944, file: !929, line: 223, type: !950)
!956 = !DILocalVariable(name: "s", arg: 5, scope: !944, file: !929, line: 223, type: !948)
!957 = !DILocalVariable(name: "n0", scope: !944, file: !929, line: 230, type: !948)
!958 = !DILocalVariable(name: "n", scope: !944, file: !929, line: 237, type: !948)
!959 = !DILocalVariable(name: "nbytes", scope: !944, file: !929, line: 248, type: !948)
!960 = !DILocalVariable(name: "adjusted_nbytes", scope: !944, file: !929, line: 252, type: !948)
!961 = !{!258, !259, !319, !272, !264}
!962 = distinct !DICompileUnit(language: DW_LANG_C11, file: !883, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !963, splitDebugInlining: false, nameTableKind: None)
!963 = !{!881, !884, !886}
!964 = distinct !DICompileUnit(language: DW_LANG_C11, file: !965, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!965 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!966 = distinct !DICompileUnit(language: DW_LANG_C11, file: !967, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!967 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!968 = distinct !DICompileUnit(language: DW_LANG_C11, file: !969, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !926, splitDebugInlining: false, nameTableKind: None)
!969 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!970 = distinct !DICompileUnit(language: DW_LANG_C11, file: !971, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !926, splitDebugInlining: false, nameTableKind: None)
!971 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!972 = distinct !DICompileUnit(language: DW_LANG_C11, file: !973, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !974, splitDebugInlining: false, nameTableKind: None)
!973 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!974 = !{!319, !264, !259}
!975 = distinct !DICompileUnit(language: DW_LANG_C11, file: !908, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !976, splitDebugInlining: false, nameTableKind: None)
!976 = !{!906, !909}
!977 = distinct !DICompileUnit(language: DW_LANG_C11, file: !978, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!978 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!979 = distinct !DICompileUnit(language: DW_LANG_C11, file: !980, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !926, splitDebugInlining: false, nameTableKind: None)
!980 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!981 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!982 = !{i32 7, !"Dwarf Version", i32 5}
!983 = !{i32 2, !"Debug Info Version", i32 3}
!984 = !{i32 1, !"wchar_size", i32 4}
!985 = !{i32 8, !"PIC Level", i32 2}
!986 = !{i32 7, !"PIE Level", i32 2}
!987 = !{i32 7, !"uwtable", i32 2}
!988 = !{i32 7, !"frame-pointer", i32 1}
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
!1071 = !DILocation(line: 857, column: 3, scope: !1053, inlinedAt: !1070)
!1072 = !DILocation(line: 861, column: 29, scope: !1053, inlinedAt: !1070)
!1073 = !DILocation(line: 862, column: 7, scope: !1074, inlinedAt: !1070)
!1074 = distinct !DILexicalBlock(scope: !1053, file: !309, line: 862, column: 7)
!1075 = !DILocation(line: 862, column: 19, scope: !1074, inlinedAt: !1070)
!1076 = !DILocation(line: 862, column: 22, scope: !1074, inlinedAt: !1070)
!1077 = !DILocation(line: 862, column: 7, scope: !1053, inlinedAt: !1070)
!1078 = !DILocation(line: 868, column: 7, scope: !1079, inlinedAt: !1070)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !309, line: 863, column: 5)
!1080 = !DILocation(line: 870, column: 5, scope: !1079, inlinedAt: !1070)
!1081 = !DILocation(line: 875, column: 3, scope: !1053, inlinedAt: !1070)
!1082 = !DILocation(line: 877, column: 3, scope: !1053, inlinedAt: !1070)
!1083 = !DILocation(line: 824, column: 3, scope: !989)
!1084 = !DISubprogram(name: "dcgettext", scope: !1085, file: !1085, line: 51, type: !1086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!1085 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!258, !265, !265, !260}
!1088 = !{}
!1089 = !DISubprogram(name: "__fprintf_chk", scope: !1090, file: !1090, line: 93, type: !1091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!1090 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!260, !1093, !260, !1094, null}
!1093 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !332)
!1094 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !265)
!1095 = !DISubprogram(name: "fputs_unlocked", scope: !609, file: !609, line: 691, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
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
!1194 = !DISubprogram(name: "__printf_chk", scope: !1090, file: !1090, line: 95, type: !1195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!260, !260, !1094, null}
!1197 = !DISubprogram(name: "setlocale", scope: !1198, file: !1198, line: 122, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!1198 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!258, !260, !265}
!1201 = !DISubprogram(name: "strncmp", scope: !1202, file: !1202, line: 159, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!1202 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!260, !265, !265, !262}
!1205 = !DISubprogram(name: "exit", scope: !1206, file: !1206, line: 624, type: !990, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!1206 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1207 = !DISubprogram(name: "getenv", scope: !1206, file: !1206, line: 641, type: !1208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!258, !265}
!1210 = !DISubprogram(name: "strcmp", scope: !1202, file: !1202, line: 156, type: !1211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!260, !265, !265}
!1213 = !DISubprogram(name: "strspn", scope: !1202, file: !1202, line: 297, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!264, !265, !265}
!1216 = !DISubprogram(name: "strchr", scope: !1202, file: !1202, line: 246, type: !1217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!258, !265, !260}
!1219 = !DISubprogram(name: "__ctype_b_loc", scope: !228, file: !228, line: 79, type: !1220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!1222}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!1225 = !DISubprogram(name: "strcspn", scope: !1202, file: !1202, line: 293, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!1226 = !DISubprogram(name: "fwrite_unlocked", scope: !609, file: !609, line: 704, type: !1227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
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
!1283 = !DILocation(line: 887, column: 44, scope: !1281)
!1284 = !DILocation(line: 887, column: 32, scope: !1281)
!1285 = !DILocation(line: 0, scope: !1112, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 887, column: 25, scope: !1281)
!1287 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1286)
!1288 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1286)
!1289 = !DILocation(line: 887, column: 11, scope: !1256)
!1290 = !DILocation(line: 888, column: 28, scope: !1281)
!1291 = !DILocation(line: 888, column: 45, scope: !1281)
!1292 = !DILocation(line: 888, column: 9, scope: !1281)
!1293 = !DILocation(line: 893, column: 8, scope: !1232)
!1294 = !DILocation(line: 894, column: 7, scope: !1232)
!1295 = !DILocation(line: 896, column: 11, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 896, column: 7)
!1297 = !DILocation(line: 896, column: 7, scope: !1232)
!1298 = !DILocation(line: 899, column: 27, scope: !1232)
!1299 = !DILocation(line: 899, column: 11, scope: !1232)
!1300 = !DILocation(line: 901, column: 7, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 901, column: 7)
!1302 = !DILocation(line: 901, column: 14, scope: !1301)
!1303 = !DILocation(line: 901, column: 11, scope: !1301)
!1304 = !DILocation(line: 901, column: 7, scope: !1232)
!1305 = !DILocation(line: 902, column: 24, scope: !1301)
!1306 = !DILocation(line: 902, column: 55, scope: !1301)
!1307 = !DILocation(line: 902, column: 60, scope: !1301)
!1308 = !DILocation(line: 902, column: 48, scope: !1301)
!1309 = !DILocation(line: 902, column: 5, scope: !1301)
!1310 = !DILocation(line: 904, column: 3, scope: !1232)
!1311 = !DILocation(line: 905, column: 1, scope: !1232)
!1312 = !DISubprogram(name: "bindtextdomain", scope: !1085, file: !1085, line: 86, type: !1313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!258, !265, !265}
!1315 = !DISubprogram(name: "textdomain", scope: !1085, file: !1085, line: 82, type: !1208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!1316 = !DISubprogram(name: "atexit", scope: !1206, file: !1206, line: 602, type: !1317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!260, !647}
!1319 = distinct !DISubprogram(name: "test_syntax_error", scope: !2, file: !2, line: 97, type: !1320, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1322)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{null, !265, null}
!1322 = !{!1323, !1324}
!1323 = !DILocalVariable(name: "format", arg: 1, scope: !1319, file: !2, line: 97, type: !265)
!1324 = !DILocalVariable(name: "ap", scope: !1319, file: !2, line: 99, type: !1325)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !611, line: 22, baseType: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1327, baseType: !1328)
!1327 = !DIFile(filename: "src/lbracket.c", directory: "/src")
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1329)
!1329 = !{!1330, !1331, !1332, !1333, !1334}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1328, file: !1327, line: 99, baseType: !259, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1328, file: !1327, line: 99, baseType: !259, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1328, file: !1327, line: 99, baseType: !259, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1328, file: !1327, line: 99, baseType: !260, size: 32, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1328, file: !1327, line: 99, baseType: !260, size: 32, offset: 224)
!1335 = !DILocation(line: 0, scope: !1319)
!1336 = !DILocation(line: 99, column: 3, scope: !1319)
!1337 = !DILocation(line: 99, column: 11, scope: !1319)
!1338 = !DILocation(line: 100, column: 3, scope: !1319)
!1339 = !DILocation(line: 101, column: 3, scope: !1319)
!1340 = !{i64 0, i64 8, !1000, i64 8, i64 8, !1000, i64 16, i64 8, !1000, i64 24, i64 4, !1100, i64 28, i64 4, !1100}
!1341 = !DILocation(line: 102, column: 3, scope: !1319)
!1342 = distinct !DISubprogram(name: "posixtest", scope: !2, file: !2, line: 616, type: !1343, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1345)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!319, !260}
!1345 = !{!1346, !1347}
!1346 = !DILocalVariable(name: "nargs", arg: 1, scope: !1342, file: !2, line: 616, type: !260)
!1347 = !DILocalVariable(name: "value", scope: !1342, file: !2, line: 618, type: !319)
!1348 = !DILocation(line: 0, scope: !1342)
!1349 = !DILocation(line: 620, column: 3, scope: !1342)
!1350 = !DILocation(line: 562, column: 10, scope: !1351, inlinedAt: !1354)
!1351 = distinct !DISubprogram(name: "one_argument", scope: !2, file: !2, line: 560, type: !1352, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1088)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!319}
!1354 = distinct !DILocation(line: 623, column: 17, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 621, column: 5)
!1356 = !DILocation(line: 562, column: 18, scope: !1351, inlinedAt: !1354)
!1357 = !DILocation(line: 562, column: 25, scope: !1351, inlinedAt: !1354)
!1358 = !DILocation(line: 624, column: 9, scope: !1355)
!1359 = !DILocation(line: 570, column: 14, scope: !1360, inlinedAt: !1364)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 570, column: 7)
!1361 = distinct !DISubprogram(name: "two_arguments", scope: !2, file: !2, line: 566, type: !1352, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1362)
!1362 = !{!1363}
!1363 = !DILocalVariable(name: "value", scope: !1361, file: !2, line: 568, type: !319)
!1364 = distinct !DILocation(line: 627, column: 17, scope: !1355)
!1365 = !DILocation(line: 570, column: 19, scope: !1360, inlinedAt: !1364)
!1366 = !DILocation(line: 0, scope: !1112, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 570, column: 7, scope: !1360, inlinedAt: !1364)
!1368 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1367)
!1369 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1367)
!1370 = !DILocation(line: 570, column: 7, scope: !1361, inlinedAt: !1364)
!1371 = !DILocalVariable(name: "f", arg: 1, scope: !1372, file: !2, line: 110, type: !319)
!1372 = distinct !DISubprogram(name: "advance", scope: !2, file: !2, line: 110, type: !1373, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1375)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{null, !319}
!1375 = !{!1371}
!1376 = !DILocation(line: 0, scope: !1372, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 572, column: 7, scope: !1378, inlinedAt: !1364)
!1378 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 571, column: 5)
!1379 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1377)
!1380 = !DILocation(line: 562, column: 18, scope: !1351, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 573, column: 17, scope: !1378, inlinedAt: !1364)
!1382 = !DILocation(line: 562, column: 10, scope: !1351, inlinedAt: !1381)
!1383 = !DILocation(line: 562, column: 25, scope: !1351, inlinedAt: !1381)
!1384 = !DILocation(line: 0, scope: !1361, inlinedAt: !1364)
!1385 = !DILocation(line: 574, column: 5, scope: !1378, inlinedAt: !1364)
!1386 = !DILocation(line: 575, column: 12, scope: !1387, inlinedAt: !1364)
!1387 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 575, column: 12)
!1388 = !DILocation(line: 575, column: 25, scope: !1387, inlinedAt: !1364)
!1389 = !DILocation(line: 576, column: 12, scope: !1387, inlinedAt: !1364)
!1390 = !DILocation(line: 576, column: 15, scope: !1387, inlinedAt: !1364)
!1391 = !DILocation(line: 576, column: 28, scope: !1387, inlinedAt: !1364)
!1392 = !DILocation(line: 577, column: 12, scope: !1387, inlinedAt: !1364)
!1393 = !DILocation(line: 577, column: 15, scope: !1387, inlinedAt: !1364)
!1394 = !DILocation(line: 577, column: 28, scope: !1387, inlinedAt: !1364)
!1395 = !DILocation(line: 575, column: 12, scope: !1360, inlinedAt: !1364)
!1396 = !DILocation(line: 579, column: 15, scope: !1397, inlinedAt: !1364)
!1397 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 578, column: 5)
!1398 = !DILocation(line: 582, column: 5, scope: !1387, inlinedAt: !1364)
!1399 = !DILocation(line: 631, column: 17, scope: !1355)
!1400 = !DILocation(line: 632, column: 9, scope: !1355)
!1401 = !DILocation(line: 635, column: 20, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1355, file: !2, line: 635, column: 13)
!1403 = !DILocation(line: 635, column: 25, scope: !1402)
!1404 = !DILocation(line: 0, scope: !1112, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 635, column: 13, scope: !1402)
!1406 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1405)
!1407 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1405)
!1408 = !DILocation(line: 635, column: 13, scope: !1355)
!1409 = !DILocation(line: 0, scope: !1372, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 637, column: 13, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 636, column: 11)
!1412 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1410)
!1413 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1410)
!1414 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 114, column: 7)
!1415 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1410)
!1416 = !DILocation(line: 638, column: 22, scope: !1411)
!1417 = !DILocation(line: 638, column: 21, scope: !1411)
!1418 = !DILocation(line: 639, column: 13, scope: !1411)
!1419 = !DILocation(line: 0, scope: !1112, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 641, column: 13, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1355, file: !2, line: 641, column: 13)
!1422 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1420)
!1423 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1420)
!1424 = !DILocation(line: 641, column: 36, scope: !1421)
!1425 = !DILocation(line: 641, column: 55, scope: !1421)
!1426 = !DILocation(line: 641, column: 46, scope: !1421)
!1427 = !DILocation(line: 0, scope: !1112, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 641, column: 39, scope: !1421)
!1429 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1428)
!1430 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1428)
!1431 = !DILocation(line: 641, column: 13, scope: !1355)
!1432 = !DILocation(line: 0, scope: !1372, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 643, column: 13, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1421, file: !2, line: 642, column: 11)
!1435 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1433)
!1436 = !DILocation(line: 570, column: 14, scope: !1360, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 644, column: 21, scope: !1434)
!1438 = !DILocation(line: 0, scope: !1112, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 570, column: 7, scope: !1360, inlinedAt: !1437)
!1440 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1439)
!1441 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1439)
!1442 = !DILocation(line: 570, column: 7, scope: !1361, inlinedAt: !1437)
!1443 = !DILocation(line: 0, scope: !1372, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 572, column: 7, scope: !1378, inlinedAt: !1437)
!1445 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1444)
!1446 = !DILocation(line: 562, column: 10, scope: !1351, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 573, column: 17, scope: !1378, inlinedAt: !1437)
!1448 = !DILocation(line: 562, column: 25, scope: !1351, inlinedAt: !1447)
!1449 = !DILocation(line: 0, scope: !1361, inlinedAt: !1437)
!1450 = !DILocation(line: 574, column: 5, scope: !1378, inlinedAt: !1437)
!1451 = !DILocation(line: 575, column: 12, scope: !1387, inlinedAt: !1437)
!1452 = !DILocation(line: 575, column: 25, scope: !1387, inlinedAt: !1437)
!1453 = !DILocation(line: 576, column: 12, scope: !1387, inlinedAt: !1437)
!1454 = !DILocation(line: 576, column: 15, scope: !1387, inlinedAt: !1437)
!1455 = !DILocation(line: 576, column: 28, scope: !1387, inlinedAt: !1437)
!1456 = !DILocation(line: 577, column: 12, scope: !1387, inlinedAt: !1437)
!1457 = !DILocation(line: 577, column: 15, scope: !1387, inlinedAt: !1437)
!1458 = !DILocation(line: 577, column: 28, scope: !1387, inlinedAt: !1437)
!1459 = !DILocation(line: 575, column: 12, scope: !1360, inlinedAt: !1437)
!1460 = !DILocation(line: 579, column: 15, scope: !1397, inlinedAt: !1437)
!1461 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 645, column: 13, scope: !1434)
!1463 = !DILocation(line: 582, column: 5, scope: !1387, inlinedAt: !1437)
!1464 = !DILocation(line: 0, scope: !1372, inlinedAt: !1462)
!1465 = !DILocation(line: 646, column: 13, scope: !1434)
!1466 = !DILocation(line: 651, column: 9, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 651, column: 9)
!1468 = distinct !DILexicalBlock(scope: !1355, file: !2, line: 651, column: 9)
!1469 = !DILocation(line: 651, column: 9, scope: !1468)
!1470 = !DILocation(line: 553, column: 7, scope: !1471, inlinedAt: !1473)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 553, column: 7)
!1472 = distinct !DISubprogram(name: "expr", scope: !2, file: !2, line: 551, type: !1352, scopeLine: 552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1088)
!1473 = distinct !DILocation(line: 652, column: 17, scope: !1355)
!1474 = !DILocation(line: 553, column: 14, scope: !1471, inlinedAt: !1473)
!1475 = !DILocation(line: 553, column: 11, scope: !1471, inlinedAt: !1473)
!1476 = !DILocation(line: 553, column: 7, scope: !1472, inlinedAt: !1473)
!1477 = !DILocation(line: 554, column: 5, scope: !1471, inlinedAt: !1473)
!1478 = !DILocation(line: 556, column: 10, scope: !1472, inlinedAt: !1473)
!1479 = !DILocation(line: 653, column: 5, scope: !1355)
!1480 = !DILocation(line: 655, column: 3, scope: !1342)
!1481 = distinct !DISubprogram(name: "unary_operator", scope: !2, file: !2, line: 366, type: !1352, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1482)
!1482 = !{!1483, !1518, !1521, !1522, !1526, !1527, !1530, !1531, !1533}
!1483 = !DILocalVariable(name: "stat_buf", scope: !1481, file: !2, line: 368, type: !1484)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1485, line: 44, size: 1024, elements: !1486)
!1485 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1486 = !{!1487, !1489, !1491, !1493, !1495, !1497, !1499, !1500, !1501, !1502, !1504, !1505, !1507, !1514, !1515, !1516}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1484, file: !1485, line: 46, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !271, line: 145, baseType: !264)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1484, file: !1485, line: 47, baseType: !1490, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !271, line: 148, baseType: !264)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1484, file: !1485, line: 48, baseType: !1492, size: 32, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !271, line: 150, baseType: !222)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1484, file: !1485, line: 49, baseType: !1494, size: 32, offset: 160)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !271, line: 151, baseType: !222)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1484, file: !1485, line: 50, baseType: !1496, size: 32, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !271, line: 146, baseType: !222)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1484, file: !1485, line: 51, baseType: !1498, size: 32, offset: 224)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !271, line: 147, baseType: !222)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1484, file: !1485, line: 52, baseType: !1488, size: 64, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1484, file: !1485, line: 53, baseType: !1488, size: 64, offset: 320)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1484, file: !1485, line: 54, baseType: !358, size: 64, offset: 384)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1484, file: !1485, line: 55, baseType: !1503, size: 32, offset: 448)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !271, line: 175, baseType: !260)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1484, file: !1485, line: 56, baseType: !260, size: 32, offset: 480)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1484, file: !1485, line: 57, baseType: !1506, size: 64, offset: 512)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !271, line: 180, baseType: !272)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1484, file: !1485, line: 65, baseType: !1508, size: 128, offset: 576)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1509, line: 11, size: 128, elements: !1510)
!1509 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1508, file: !1509, line: 16, baseType: !270, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1508, file: !1509, line: 21, baseType: !1513, size: 64, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !271, line: 197, baseType: !272)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1484, file: !1485, line: 66, baseType: !1508, size: 128, offset: 704)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1484, file: !1485, line: 67, baseType: !1508, size: 128, offset: 832)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1484, file: !1485, line: 79, baseType: !1517, size: 64, offset: 960)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 64, elements: !20)
!1518 = !DILocalVariable(name: "atime", scope: !1519, file: !2, line: 401, type: !1508)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !2, line: 397, column: 7)
!1520 = distinct !DILexicalBlock(scope: !1481, file: !2, line: 371, column: 5)
!1521 = !DILocalVariable(name: "mtime", scope: !1519, file: !2, line: 402, type: !1508)
!1522 = !DILocalVariable(name: "euid", scope: !1523, file: !2, line: 412, type: !1524)
!1523 = distinct !DILexicalBlock(scope: !1520, file: !2, line: 407, column: 7)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1525, line: 79, baseType: !1496)
!1525 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1526 = !DILocalVariable(name: "NO_UID", scope: !1523, file: !2, line: 413, type: !1524)
!1527 = !DILocalVariable(name: "egid", scope: !1528, file: !2, line: 423, type: !1529)
!1528 = distinct !DILexicalBlock(scope: !1520, file: !2, line: 418, column: 7)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1525, line: 64, baseType: !1498)
!1530 = !DILocalVariable(name: "NO_GID", scope: !1528, file: !2, line: 424, type: !1529)
!1531 = !DILocalVariable(name: "fd", scope: !1532, file: !2, line: 489, type: !272)
!1532 = distinct !DILexicalBlock(scope: !1520, file: !2, line: 488, column: 7)
!1533 = !DILocalVariable(name: "arg", scope: !1532, file: !2, line: 490, type: !265)
!1534 = !DILocation(line: 368, column: 3, scope: !1481)
!1535 = !DILocation(line: 368, column: 15, scope: !1481)
!1536 = !DILocation(line: 370, column: 11, scope: !1481)
!1537 = !DILocation(line: 370, column: 16, scope: !1481)
!1538 = !DILocation(line: 370, column: 3, scope: !1481)
!1539 = !DILocation(line: 373, column: 26, scope: !1520)
!1540 = !DILocation(line: 373, column: 67, scope: !1520)
!1541 = !DILocation(line: 373, column: 72, scope: !1520)
!1542 = !DILocation(line: 373, column: 60, scope: !1520)
!1543 = !DILocation(line: 373, column: 7, scope: !1520)
!1544 = !DILocation(line: 0, scope: !1372, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1547)
!1546 = distinct !DISubprogram(name: "unary_advance", scope: !2, file: !2, line: 119, type: !648, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1088)
!1547 = distinct !DILocation(line: 381, column: 7, scope: !1520)
!1548 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1545)
!1549 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1545)
!1550 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1545)
!1551 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1547)
!1552 = !DILocation(line: 382, column: 20, scope: !1520)
!1553 = !DILocation(line: 382, column: 14, scope: !1520)
!1554 = !DILocation(line: 382, column: 46, scope: !1520)
!1555 = !DILocation(line: 382, column: 7, scope: !1520)
!1556 = !DILocation(line: 0, scope: !1372, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 385, column: 7, scope: !1520)
!1559 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1557)
!1560 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1557)
!1561 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1557)
!1562 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1558)
!1563 = !DILocation(line: 386, column: 26, scope: !1520)
!1564 = !DILocation(line: 386, column: 14, scope: !1520)
!1565 = !DILocation(line: 386, column: 47, scope: !1520)
!1566 = !DILocation(line: 386, column: 7, scope: !1520)
!1567 = !DILocation(line: 0, scope: !1372, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 389, column: 7, scope: !1520)
!1570 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1568)
!1571 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1568)
!1572 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1568)
!1573 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1569)
!1574 = !DILocation(line: 390, column: 26, scope: !1520)
!1575 = !DILocation(line: 390, column: 14, scope: !1520)
!1576 = !DILocation(line: 390, column: 47, scope: !1520)
!1577 = !DILocation(line: 390, column: 7, scope: !1520)
!1578 = !DILocation(line: 0, scope: !1372, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 393, column: 7, scope: !1520)
!1581 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1579)
!1582 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1579)
!1583 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1579)
!1584 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1580)
!1585 = !DILocation(line: 394, column: 26, scope: !1520)
!1586 = !DILocation(line: 394, column: 14, scope: !1520)
!1587 = !DILocation(line: 394, column: 47, scope: !1520)
!1588 = !DILocation(line: 394, column: 7, scope: !1520)
!1589 = !DILocation(line: 0, scope: !1372, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 398, column: 9, scope: !1519)
!1592 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1590)
!1593 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1590)
!1594 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1590)
!1595 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1591)
!1596 = !DILocation(line: 399, column: 19, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 399, column: 13)
!1598 = !DILocation(line: 399, column: 13, scope: !1597)
!1599 = !DILocation(line: 399, column: 45, scope: !1597)
!1600 = !DILocation(line: 399, column: 13, scope: !1519)
!1601 = !DILocalVariable(name: "st", arg: 1, scope: !1602, file: !1603, line: 147, type: !1606)
!1602 = distinct !DISubprogram(name: "get_stat_atime", scope: !1603, file: !1603, line: 147, type: !1604, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1608)
!1603 = !DIFile(filename: "./lib/stat-time.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f4edb1fd4cb81bf2ea0eec563958d759")
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!1508, !1606}
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1484)
!1608 = !{!1601}
!1609 = !DILocation(line: 0, scope: !1602, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 401, column: 33, scope: !1519)
!1611 = !DILocation(line: 150, column: 10, scope: !1602, inlinedAt: !1610)
!1612 = !DILocation(line: 0, scope: !1519)
!1613 = !DILocalVariable(name: "st", arg: 1, scope: !1614, file: !1603, line: 169, type: !1606)
!1614 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1603, file: !1603, line: 169, type: !1604, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1615)
!1615 = !{!1613}
!1616 = !DILocation(line: 0, scope: !1614, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 402, column: 33, scope: !1519)
!1618 = !DILocation(line: 172, column: 10, scope: !1614, inlinedAt: !1617)
!1619 = !DILocalVariable(name: "a", arg: 1, scope: !1620, file: !1621, line: 64, type: !1508)
!1620 = distinct !DISubprogram(name: "timespec_cmp", scope: !1621, file: !1621, line: 64, type: !1622, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1624)
!1621 = !DIFile(filename: "./lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!260, !1508, !1508}
!1624 = !{!1619, !1625}
!1625 = !DILocalVariable(name: "b", arg: 2, scope: !1620, file: !1621, line: 64, type: !1508)
!1626 = !DILocation(line: 0, scope: !1620, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 403, column: 17, scope: !1519)
!1628 = !DILocation(line: 66, column: 45, scope: !1620, inlinedAt: !1627)
!1629 = !DILocation(line: 66, column: 12, scope: !1620, inlinedAt: !1627)
!1630 = !DILocation(line: 66, column: 43, scope: !1620, inlinedAt: !1627)
!1631 = !DILocation(line: 403, column: 45, scope: !1519)
!1632 = !DILocation(line: 0, scope: !1372, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 408, column: 9, scope: !1523)
!1635 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1633)
!1636 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1633)
!1637 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1633)
!1638 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1634)
!1639 = !DILocation(line: 409, column: 19, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 409, column: 13)
!1641 = !DILocation(line: 409, column: 13, scope: !1640)
!1642 = !DILocation(line: 409, column: 45, scope: !1640)
!1643 = !DILocation(line: 409, column: 13, scope: !1523)
!1644 = !DILocation(line: 411, column: 9, scope: !1523)
!1645 = !DILocation(line: 411, column: 15, scope: !1523)
!1646 = !DILocation(line: 412, column: 22, scope: !1523)
!1647 = !DILocation(line: 0, scope: !1523)
!1648 = !DILocation(line: 414, column: 24, scope: !1523)
!1649 = !DILocation(line: 414, column: 34, scope: !1523)
!1650 = !DILocation(line: 414, column: 37, scope: !1523)
!1651 = !DILocation(line: 414, column: 44, scope: !1523)
!1652 = !DILocation(line: 414, column: 64, scope: !1523)
!1653 = !{!1654, !1101, i64 24}
!1654 = !{!"stat", !1655, i64 0, !1655, i64 8, !1101, i64 16, !1101, i64 20, !1101, i64 24, !1101, i64 28, !1655, i64 32, !1655, i64 40, !1655, i64 48, !1101, i64 56, !1101, i64 60, !1655, i64 64, !1656, i64 72, !1656, i64 88, !1656, i64 104, !1002, i64 120}
!1655 = !{!"long", !1002, i64 0}
!1656 = !{!"timespec", !1655, i64 0, !1655, i64 8}
!1657 = !DILocation(line: 414, column: 52, scope: !1523)
!1658 = !DILocation(line: 0, scope: !1372, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 419, column: 9, scope: !1528)
!1661 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1659)
!1662 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1659)
!1663 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1659)
!1664 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1660)
!1665 = !DILocation(line: 420, column: 19, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1528, file: !2, line: 420, column: 13)
!1667 = !DILocation(line: 420, column: 13, scope: !1666)
!1668 = !DILocation(line: 420, column: 45, scope: !1666)
!1669 = !DILocation(line: 420, column: 13, scope: !1528)
!1670 = !DILocation(line: 422, column: 9, scope: !1528)
!1671 = !DILocation(line: 422, column: 15, scope: !1528)
!1672 = !DILocation(line: 423, column: 22, scope: !1528)
!1673 = !DILocation(line: 0, scope: !1528)
!1674 = !DILocation(line: 425, column: 24, scope: !1528)
!1675 = !DILocation(line: 425, column: 34, scope: !1528)
!1676 = !DILocation(line: 425, column: 37, scope: !1528)
!1677 = !DILocation(line: 425, column: 44, scope: !1528)
!1678 = !DILocation(line: 425, column: 64, scope: !1528)
!1679 = !{!1654, !1101, i64 28}
!1680 = !DILocation(line: 425, column: 52, scope: !1528)
!1681 = !DILocation(line: 0, scope: !1372, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 429, column: 7, scope: !1520)
!1684 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1682)
!1685 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1682)
!1686 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1682)
!1687 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1683)
!1688 = !DILocation(line: 432, column: 21, scope: !1520)
!1689 = !DILocation(line: 432, column: 15, scope: !1520)
!1690 = !DILocation(line: 432, column: 47, scope: !1520)
!1691 = !DILocation(line: 433, column: 15, scope: !1520)
!1692 = !DILocation(line: 432, column: 7, scope: !1520)
!1693 = !DILocation(line: 0, scope: !1372, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 436, column: 7, scope: !1520)
!1696 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1694)
!1697 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1694)
!1698 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1694)
!1699 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1695)
!1700 = !DILocation(line: 437, column: 21, scope: !1520)
!1701 = !DILocation(line: 437, column: 15, scope: !1520)
!1702 = !DILocation(line: 437, column: 47, scope: !1520)
!1703 = !DILocation(line: 438, column: 15, scope: !1520)
!1704 = !DILocation(line: 437, column: 7, scope: !1520)
!1705 = !DILocation(line: 0, scope: !1372, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 441, column: 7, scope: !1520)
!1708 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1706)
!1709 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1706)
!1710 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1706)
!1711 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1707)
!1712 = !DILocation(line: 442, column: 21, scope: !1520)
!1713 = !DILocation(line: 442, column: 15, scope: !1520)
!1714 = !DILocation(line: 442, column: 47, scope: !1520)
!1715 = !DILocation(line: 443, column: 15, scope: !1520)
!1716 = !DILocation(line: 442, column: 7, scope: !1520)
!1717 = !DILocation(line: 0, scope: !1372, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 446, column: 7, scope: !1520)
!1720 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1718)
!1721 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1718)
!1722 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1718)
!1723 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1719)
!1724 = !DILocation(line: 447, column: 21, scope: !1520)
!1725 = !DILocation(line: 447, column: 15, scope: !1520)
!1726 = !DILocation(line: 447, column: 47, scope: !1520)
!1727 = !DILocation(line: 448, column: 15, scope: !1520)
!1728 = !DILocation(line: 447, column: 7, scope: !1520)
!1729 = !DILocation(line: 0, scope: !1372, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 451, column: 7, scope: !1520)
!1732 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1730)
!1733 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1730)
!1734 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1730)
!1735 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1731)
!1736 = !DILocation(line: 452, column: 21, scope: !1520)
!1737 = !DILocation(line: 452, column: 15, scope: !1520)
!1738 = !DILocation(line: 452, column: 47, scope: !1520)
!1739 = !DILocation(line: 453, column: 15, scope: !1520)
!1740 = !DILocation(line: 452, column: 7, scope: !1520)
!1741 = !DILocation(line: 0, scope: !1372, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 456, column: 7, scope: !1520)
!1744 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1742)
!1745 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1742)
!1746 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1742)
!1747 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1743)
!1748 = !DILocation(line: 457, column: 21, scope: !1520)
!1749 = !DILocation(line: 457, column: 15, scope: !1520)
!1750 = !DILocation(line: 457, column: 47, scope: !1520)
!1751 = !DILocation(line: 458, column: 15, scope: !1520)
!1752 = !DILocation(line: 457, column: 7, scope: !1520)
!1753 = !DILocation(line: 0, scope: !1372, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 461, column: 7, scope: !1520)
!1756 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1754)
!1757 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1754)
!1758 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1754)
!1759 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1755)
!1760 = !DILocation(line: 462, column: 21, scope: !1520)
!1761 = !DILocation(line: 462, column: 15, scope: !1520)
!1762 = !DILocation(line: 462, column: 47, scope: !1520)
!1763 = !DILocation(line: 463, column: 15, scope: !1520)
!1764 = !DILocation(line: 462, column: 7, scope: !1520)
!1765 = !DILocation(line: 0, scope: !1372, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 469, column: 7, scope: !1520)
!1768 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1766)
!1769 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1766)
!1770 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1766)
!1771 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1767)
!1772 = !DILocation(line: 470, column: 25, scope: !1520)
!1773 = !DILocalVariable(name: "filename", arg: 1, scope: !1774, file: !1775, line: 49, type: !265)
!1774 = distinct !DISubprogram(name: "issymlink", scope: !1775, file: !1775, line: 49, type: !1776, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1778)
!1775 = !DIFile(filename: "./lib/issymlink.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3ed5fe5c76158b7c9a68dd013fb9e151")
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!260, !265}
!1778 = !{!1773, !1779}
!1779 = !DILocalVariable(name: "linkbuf", scope: !1774, file: !1775, line: 51, type: !203)
!1780 = !DILocation(line: 0, scope: !1774, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 470, column: 14, scope: !1520)
!1782 = !DILocation(line: 51, column: 3, scope: !1774, inlinedAt: !1781)
!1783 = !DILocation(line: 51, column: 8, scope: !1774, inlinedAt: !1781)
!1784 = !DILocation(line: 52, column: 7, scope: !1785, inlinedAt: !1781)
!1785 = distinct !DILexicalBlock(scope: !1774, file: !1775, line: 52, column: 7)
!1786 = !DILocation(line: 52, column: 54, scope: !1785, inlinedAt: !1781)
!1787 = !DILocation(line: 58, column: 1, scope: !1774, inlinedAt: !1781)
!1788 = !DILocation(line: 470, column: 7, scope: !1520)
!1789 = !DILocation(line: 0, scope: !1372, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 473, column: 7, scope: !1520)
!1792 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1790)
!1793 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1790)
!1794 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1790)
!1795 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1791)
!1796 = !DILocation(line: 474, column: 21, scope: !1520)
!1797 = !DILocation(line: 474, column: 15, scope: !1520)
!1798 = !DILocation(line: 474, column: 47, scope: !1520)
!1799 = !DILocation(line: 475, column: 15, scope: !1520)
!1800 = !DILocation(line: 474, column: 7, scope: !1520)
!1801 = !DILocation(line: 0, scope: !1372, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1803)
!1803 = distinct !DILocation(line: 478, column: 7, scope: !1520)
!1804 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1802)
!1805 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1802)
!1806 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1802)
!1807 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1803)
!1808 = !DILocation(line: 479, column: 21, scope: !1520)
!1809 = !DILocation(line: 479, column: 15, scope: !1520)
!1810 = !DILocation(line: 479, column: 47, scope: !1520)
!1811 = !DILocation(line: 480, column: 15, scope: !1520)
!1812 = !DILocation(line: 479, column: 7, scope: !1520)
!1813 = !DILocation(line: 0, scope: !1372, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 483, column: 7, scope: !1520)
!1816 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1814)
!1817 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1814)
!1818 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1814)
!1819 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1815)
!1820 = !DILocation(line: 484, column: 21, scope: !1520)
!1821 = !DILocation(line: 484, column: 15, scope: !1520)
!1822 = !DILocation(line: 484, column: 47, scope: !1520)
!1823 = !DILocation(line: 485, column: 15, scope: !1520)
!1824 = !DILocation(line: 484, column: 7, scope: !1520)
!1825 = !DILocation(line: 0, scope: !1372, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 491, column: 9, scope: !1532)
!1828 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1826)
!1829 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1826)
!1830 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1826)
!1831 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1827)
!1832 = !DILocation(line: 492, column: 25, scope: !1532)
!1833 = !DILocation(line: 492, column: 15, scope: !1532)
!1834 = !DILocation(line: 0, scope: !1532)
!1835 = !DILocation(line: 493, column: 9, scope: !1532)
!1836 = !DILocation(line: 493, column: 15, scope: !1532)
!1837 = !DILocation(line: 494, column: 14, scope: !1532)
!1838 = !DILocation(line: 495, column: 17, scope: !1532)
!1839 = !DILocation(line: 495, column: 23, scope: !1532)
!1840 = !DILocation(line: 495, column: 33, scope: !1532)
!1841 = !DILocation(line: 495, column: 72, scope: !1532)
!1842 = !DILocation(line: 495, column: 64, scope: !1532)
!1843 = !DILocation(line: 495, column: 61, scope: !1532)
!1844 = !DILocation(line: 0, scope: !1372, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 499, column: 7, scope: !1520)
!1847 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1845)
!1848 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1845)
!1849 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1845)
!1850 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1846)
!1851 = !DILocation(line: 500, column: 14, scope: !1520)
!1852 = !DILocation(line: 500, column: 31, scope: !1520)
!1853 = !DILocation(line: 500, column: 7, scope: !1520)
!1854 = !DILocation(line: 0, scope: !1372, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 121, column: 3, scope: !1546, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 503, column: 7, scope: !1520)
!1857 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1855)
!1858 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1855)
!1859 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1855)
!1860 = !DILocation(line: 122, column: 3, scope: !1546, inlinedAt: !1856)
!1861 = !DILocation(line: 504, column: 14, scope: !1520)
!1862 = !DILocation(line: 504, column: 31, scope: !1520)
!1863 = !DILocation(line: 504, column: 7, scope: !1520)
!1864 = !DILocation(line: 0, scope: !1520)
!1865 = !DILocation(line: 506, column: 1, scope: !1481)
!1866 = distinct !DISubprogram(name: "beyond", scope: !2, file: !2, line: 130, type: !648, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1088)
!1867 = !DILocation(line: 132, column: 22, scope: !1866)
!1868 = !DILocation(line: 132, column: 61, scope: !1866)
!1869 = !DILocation(line: 132, column: 66, scope: !1866)
!1870 = !DILocation(line: 132, column: 71, scope: !1866)
!1871 = !DILocation(line: 132, column: 54, scope: !1866)
!1872 = !DILocation(line: 132, column: 3, scope: !1866)
!1873 = distinct !DISubprogram(name: "three_arguments", scope: !2, file: !2, line: 587, type: !1352, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1874)
!1874 = !{!1875, !1876}
!1875 = !DILocalVariable(name: "value", scope: !1873, file: !2, line: 589, type: !319)
!1876 = !DILocalVariable(name: "bop", scope: !1873, file: !2, line: 590, type: !260)
!1877 = !DILocation(line: 590, column: 20, scope: !1873)
!1878 = !DILocation(line: 590, column: 25, scope: !1873)
!1879 = !DILocation(line: 590, column: 29, scope: !1873)
!1880 = !DILocation(line: 590, column: 13, scope: !1873)
!1881 = !DILocation(line: 0, scope: !1873)
!1882 = !DILocation(line: 592, column: 9, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1873, file: !2, line: 592, column: 7)
!1884 = !DILocation(line: 592, column: 7, scope: !1873)
!1885 = !DILocation(line: 593, column: 13, scope: !1883)
!1886 = !DILocation(line: 593, column: 5, scope: !1883)
!1887 = !DILocation(line: 594, column: 19, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1883, file: !2, line: 594, column: 12)
!1889 = !DILocation(line: 0, scope: !1112, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 594, column: 12, scope: !1888)
!1891 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1890)
!1892 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1890)
!1893 = !DILocation(line: 594, column: 12, scope: !1883)
!1894 = !DILocation(line: 0, scope: !1372, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 596, column: 7, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 595, column: 5)
!1897 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1895)
!1898 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !1895)
!1899 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !1895)
!1900 = !DILocation(line: 0, scope: !1112, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 570, column: 7, scope: !1360, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 597, column: 16, scope: !1896)
!1903 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1901)
!1904 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1901)
!1905 = !DILocation(line: 570, column: 7, scope: !1361, inlinedAt: !1902)
!1906 = !DILocation(line: 0, scope: !1372, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 572, column: 7, scope: !1378, inlinedAt: !1902)
!1908 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1907)
!1909 = !DILocation(line: 562, column: 18, scope: !1351, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 573, column: 17, scope: !1378, inlinedAt: !1902)
!1911 = !DILocation(line: 562, column: 10, scope: !1351, inlinedAt: !1910)
!1912 = !DILocation(line: 562, column: 25, scope: !1351, inlinedAt: !1910)
!1913 = !DILocation(line: 0, scope: !1361, inlinedAt: !1902)
!1914 = !DILocation(line: 574, column: 5, scope: !1378, inlinedAt: !1902)
!1915 = !DILocation(line: 575, column: 12, scope: !1387, inlinedAt: !1902)
!1916 = !DILocation(line: 575, column: 25, scope: !1387, inlinedAt: !1902)
!1917 = !DILocation(line: 576, column: 12, scope: !1387, inlinedAt: !1902)
!1918 = !DILocation(line: 576, column: 15, scope: !1387, inlinedAt: !1902)
!1919 = !DILocation(line: 576, column: 28, scope: !1387, inlinedAt: !1902)
!1920 = !DILocation(line: 577, column: 12, scope: !1387, inlinedAt: !1902)
!1921 = !DILocation(line: 577, column: 15, scope: !1387, inlinedAt: !1902)
!1922 = !DILocation(line: 577, column: 28, scope: !1387, inlinedAt: !1902)
!1923 = !DILocation(line: 575, column: 12, scope: !1360, inlinedAt: !1902)
!1924 = !DILocation(line: 579, column: 15, scope: !1397, inlinedAt: !1902)
!1925 = !DILocation(line: 582, column: 5, scope: !1387, inlinedAt: !1902)
!1926 = !DILocation(line: 597, column: 15, scope: !1896)
!1927 = !DILocation(line: 598, column: 5, scope: !1896)
!1928 = !DILocation(line: 0, scope: !1112, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 599, column: 12, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 599, column: 12)
!1931 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1929)
!1932 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1929)
!1933 = !DILocation(line: 599, column: 35, scope: !1930)
!1934 = !DILocation(line: 599, column: 54, scope: !1930)
!1935 = !DILocation(line: 599, column: 45, scope: !1930)
!1936 = !DILocation(line: 0, scope: !1112, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 599, column: 38, scope: !1930)
!1938 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1937)
!1939 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1937)
!1940 = !DILocation(line: 599, column: 12, scope: !1888)
!1941 = !DILocation(line: 0, scope: !1372, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 601, column: 7, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1930, file: !2, line: 600, column: 5)
!1944 = !DILocation(line: 562, column: 10, scope: !1351, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 602, column: 15, scope: !1943)
!1946 = !DILocation(line: 562, column: 25, scope: !1351, inlinedAt: !1945)
!1947 = !DILocation(line: 0, scope: !1372, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 603, column: 7, scope: !1943)
!1949 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !1948)
!1950 = !DILocation(line: 604, column: 5, scope: !1943)
!1951 = !DILocation(line: 0, scope: !1112, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 605, column: 12, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1930, file: !2, line: 605, column: 12)
!1954 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1952)
!1955 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1952)
!1956 = !DILocation(line: 605, column: 40, scope: !1953)
!1957 = !DILocation(line: 0, scope: !1112, inlinedAt: !1958)
!1958 = distinct !DILocation(line: 605, column: 43, scope: !1953)
!1959 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1958)
!1960 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1958)
!1961 = !DILocation(line: 606, column: 12, scope: !1953)
!1962 = !DILocation(line: 0, scope: !1112, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 606, column: 15, scope: !1953)
!1964 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1963)
!1965 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1963)
!1966 = !DILocation(line: 606, column: 42, scope: !1953)
!1967 = !DILocation(line: 0, scope: !1112, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 606, column: 45, scope: !1953)
!1969 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !1968)
!1970 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !1968)
!1971 = !DILocation(line: 605, column: 12, scope: !1930)
!1972 = !DILocation(line: 553, column: 14, scope: !1471, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 607, column: 13, scope: !1953)
!1974 = !DILocation(line: 553, column: 11, scope: !1471, inlinedAt: !1973)
!1975 = !DILocation(line: 553, column: 7, scope: !1472, inlinedAt: !1973)
!1976 = !DILocation(line: 554, column: 5, scope: !1471, inlinedAt: !1973)
!1977 = !DILocation(line: 556, column: 10, scope: !1472, inlinedAt: !1973)
!1978 = !DILocation(line: 609, column: 24, scope: !1953)
!1979 = !DILocation(line: 610, column: 31, scope: !1953)
!1980 = !DILocation(line: 610, column: 36, scope: !1953)
!1981 = !DILocation(line: 610, column: 40, scope: !1953)
!1982 = !DILocation(line: 610, column: 24, scope: !1953)
!1983 = !DILocation(line: 609, column: 5, scope: !1953)
!1984 = !DILocation(line: 611, column: 3, scope: !1873)
!1985 = !DISubprogram(name: "__assert_fail", scope: !1986, file: !1986, line: 69, type: !1987, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!1986 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !265, !265, !222, !265}
!1989 = distinct !DISubprogram(name: "or", scope: !2, file: !2, line: 533, type: !1352, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1990)
!1990 = !{!1991}
!1991 = !DILocalVariable(name: "value", scope: !1989, file: !2, line: 535, type: !319)
!1992 = !DILocation(line: 0, scope: !1989)
!1993 = !DILocalVariable(name: "value", scope: !1994, file: !2, line: 516, type: !319)
!1994 = distinct !DISubprogram(name: "and", scope: !2, file: !2, line: 514, type: !1352, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1995)
!1995 = !{!1993}
!1996 = !DILocation(line: 0, scope: !1994, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 539, column: 16, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1989, file: !2, line: 538, column: 5)
!1999 = !DILocalVariable(name: "negated", scope: !2000, file: !2, line: 227, type: !319)
!2000 = distinct !DISubprogram(name: "term", scope: !2, file: !2, line: 224, type: !1352, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2001)
!2001 = !{!2002, !1999, !2003, !2004}
!2002 = !DILocalVariable(name: "value", scope: !2000, file: !2, line: 226, type: !319)
!2003 = !DILocalVariable(name: "bop", scope: !2000, file: !2, line: 228, type: !260)
!2004 = !DILocalVariable(name: "nargs", scope: !2005, file: !2, line: 243, type: !260)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !2, line: 242, column: 5)
!2006 = distinct !DILexicalBlock(scope: !2000, file: !2, line: 241, column: 7)
!2007 = !DILocation(line: 0, scope: !2000, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 520, column: 16, scope: !2009, inlinedAt: !1997)
!2009 = distinct !DILexicalBlock(scope: !1994, file: !2, line: 519, column: 5)
!2010 = !DILocation(line: 231, column: 14, scope: !2000, inlinedAt: !2008)
!2011 = !DILocation(line: 231, column: 21, scope: !2000, inlinedAt: !2008)
!2012 = !DILocation(line: 537, column: 3, scope: !1989)
!2013 = !DILocation(line: 231, column: 24, scope: !2000, inlinedAt: !2008)
!2014 = !DILocation(line: 231, column: 37, scope: !2000, inlinedAt: !2008)
!2015 = !DILocation(line: 231, column: 44, scope: !2000, inlinedAt: !2008)
!2016 = !DILocation(line: 231, column: 47, scope: !2000, inlinedAt: !2008)
!2017 = !DILocation(line: 231, column: 60, scope: !2000, inlinedAt: !2008)
!2018 = !DILocation(line: 231, column: 3, scope: !2000, inlinedAt: !2008)
!2019 = !DILocation(line: 0, scope: !1372, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 233, column: 7, scope: !2021, inlinedAt: !2008)
!2021 = distinct !DILexicalBlock(scope: !2000, file: !2, line: 232, column: 5)
!2022 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !2020)
!2023 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !2020)
!2024 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !2020)
!2025 = !DILocation(line: 234, column: 17, scope: !2021, inlinedAt: !2008)
!2026 = distinct !{!2026, !2018, !2027, !1147}
!2027 = !DILocation(line: 235, column: 5, scope: !2000, inlinedAt: !2008)
!2028 = !DILocation(line: 238, column: 5, scope: !2029, inlinedAt: !2008)
!2029 = distinct !DILexicalBlock(scope: !2000, file: !2, line: 237, column: 7)
!2030 = !DILocation(line: 241, column: 7, scope: !2006, inlinedAt: !2008)
!2031 = !DILocation(line: 241, column: 20, scope: !2006, inlinedAt: !2008)
!2032 = !DILocation(line: 241, column: 27, scope: !2006, inlinedAt: !2008)
!2033 = !DILocation(line: 241, column: 30, scope: !2006, inlinedAt: !2008)
!2034 = !DILocation(line: 241, column: 43, scope: !2006, inlinedAt: !2008)
!2035 = !DILocation(line: 241, column: 7, scope: !2000, inlinedAt: !2008)
!2036 = !DILocation(line: 0, scope: !1372, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 245, column: 7, scope: !2005, inlinedAt: !2008)
!2038 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !2037)
!2039 = !DILocation(line: 114, column: 9, scope: !1414, inlinedAt: !2037)
!2040 = !DILocation(line: 0, scope: !2005, inlinedAt: !2008)
!2041 = !DILocation(line: 248, column: 16, scope: !2042, inlinedAt: !2008)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !2, line: 247, column: 7)
!2043 = distinct !DILexicalBlock(scope: !2005, file: !2, line: 247, column: 7)
!2044 = !DILocation(line: 248, column: 24, scope: !2042, inlinedAt: !2008)
!2045 = !DILocation(line: 248, column: 31, scope: !2042, inlinedAt: !2008)
!2046 = !DILocation(line: 247, column: 7, scope: !2043, inlinedAt: !2008)
!2047 = !DILocation(line: 248, column: 43, scope: !2042, inlinedAt: !2008)
!2048 = !DILocation(line: 0, scope: !1112, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 248, column: 36, scope: !2042, inlinedAt: !2008)
!2050 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2049)
!2051 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2049)
!2052 = !DILocation(line: 115, column: 5, scope: !1414, inlinedAt: !2037)
!2053 = distinct !{!2053, !2046, !2054, !1147}
!2054 = !DILocation(line: 254, column: 11, scope: !2043, inlinedAt: !2008)
!2055 = !DILocation(line: 0, scope: !2043, inlinedAt: !2008)
!2056 = !DILocation(line: 256, column: 15, scope: !2005, inlinedAt: !2008)
!2057 = !DILocation(line: 257, column: 12, scope: !2058, inlinedAt: !2008)
!2058 = distinct !DILexicalBlock(scope: !2005, file: !2, line: 257, column: 11)
!2059 = !DILocation(line: 257, column: 17, scope: !2058, inlinedAt: !2008)
!2060 = !DILocation(line: 257, column: 11, scope: !2005, inlinedAt: !2008)
!2061 = !DILocation(line: 258, column: 28, scope: !2058, inlinedAt: !2008)
!2062 = !DILocation(line: 258, column: 46, scope: !2058, inlinedAt: !2008)
!2063 = !DILocation(line: 258, column: 9, scope: !2058, inlinedAt: !2008)
!2064 = !DILocation(line: 260, column: 13, scope: !2065, inlinedAt: !2008)
!2065 = distinct !DILexicalBlock(scope: !2058, file: !2, line: 260, column: 13)
!2066 = !DILocation(line: 260, column: 26, scope: !2065, inlinedAt: !2008)
!2067 = !DILocation(line: 260, column: 33, scope: !2065, inlinedAt: !2008)
!2068 = !DILocation(line: 260, column: 36, scope: !2065, inlinedAt: !2008)
!2069 = !DILocation(line: 260, column: 13, scope: !2058, inlinedAt: !2008)
!2070 = !DILocation(line: 261, column: 30, scope: !2065, inlinedAt: !2008)
!2071 = !DILocation(line: 262, column: 30, scope: !2065, inlinedAt: !2008)
!2072 = !DILocation(line: 262, column: 60, scope: !2065, inlinedAt: !2008)
!2073 = !DILocation(line: 262, column: 65, scope: !2065, inlinedAt: !2008)
!2074 = !DILocation(line: 262, column: 48, scope: !2065, inlinedAt: !2008)
!2075 = !DILocation(line: 261, column: 11, scope: !2065, inlinedAt: !2008)
!2076 = !DILocation(line: 0, scope: !1372, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 263, column: 7, scope: !2005, inlinedAt: !2008)
!2078 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !2077)
!2079 = !DILocation(line: 264, column: 5, scope: !2005, inlinedAt: !2008)
!2080 = !DILocation(line: 267, column: 22, scope: !2081, inlinedAt: !2008)
!2081 = distinct !DILexicalBlock(scope: !2006, file: !2, line: 267, column: 12)
!2082 = !DILocation(line: 267, column: 14, scope: !2081, inlinedAt: !2008)
!2083 = !DILocation(line: 267, column: 28, scope: !2081, inlinedAt: !2008)
!2084 = !DILocation(line: 0, scope: !1112, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 267, column: 31, scope: !2081, inlinedAt: !2008)
!2086 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2085)
!2087 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2085)
!2088 = !DILocation(line: 268, column: 12, scope: !2081, inlinedAt: !2008)
!2089 = !DILocation(line: 268, column: 34, scope: !2081, inlinedAt: !2008)
!2090 = !DILocation(line: 268, column: 27, scope: !2081, inlinedAt: !2008)
!2091 = !DILocation(line: 268, column: 17, scope: !2081, inlinedAt: !2008)
!2092 = !DILocation(line: 267, column: 12, scope: !2006, inlinedAt: !2008)
!2093 = !DILocation(line: 269, column: 13, scope: !2081, inlinedAt: !2008)
!2094 = !DILocation(line: 269, column: 5, scope: !2081, inlinedAt: !2008)
!2095 = !DILocation(line: 270, column: 14, scope: !2096, inlinedAt: !2008)
!2096 = distinct !DILexicalBlock(scope: !2081, file: !2, line: 270, column: 12)
!2097 = !DILocation(line: 271, column: 12, scope: !2096, inlinedAt: !2008)
!2098 = !DILocation(line: 271, column: 34, scope: !2096, inlinedAt: !2008)
!2099 = !DILocation(line: 271, column: 27, scope: !2096, inlinedAt: !2008)
!2100 = !DILocation(line: 271, column: 17, scope: !2096, inlinedAt: !2008)
!2101 = !DILocation(line: 270, column: 12, scope: !2081, inlinedAt: !2008)
!2102 = !DILocation(line: 272, column: 13, scope: !2096, inlinedAt: !2008)
!2103 = !DILocation(line: 272, column: 5, scope: !2096, inlinedAt: !2008)
!2104 = !DILocation(line: 275, column: 25, scope: !2105, inlinedAt: !2008)
!2105 = distinct !DILexicalBlock(scope: !2096, file: !2, line: 275, column: 12)
!2106 = !DILocation(line: 275, column: 32, scope: !2105, inlinedAt: !2008)
!2107 = !DILocation(line: 275, column: 35, scope: !2105, inlinedAt: !2008)
!2108 = !DILocation(line: 275, column: 48, scope: !2105, inlinedAt: !2008)
!2109 = !DILocation(line: 275, column: 51, scope: !2105, inlinedAt: !2008)
!2110 = !DILocation(line: 275, column: 64, scope: !2105, inlinedAt: !2008)
!2111 = !DILocation(line: 275, column: 12, scope: !2096, inlinedAt: !2008)
!2112 = !DILocation(line: 276, column: 13, scope: !2105, inlinedAt: !2008)
!2113 = !DILocation(line: 276, column: 5, scope: !2105, inlinedAt: !2008)
!2114 = !DILocation(line: 279, column: 29, scope: !2115, inlinedAt: !2008)
!2115 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 278, column: 5)
!2116 = !DILocation(line: 0, scope: !1372, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 280, column: 7, scope: !2115, inlinedAt: !2008)
!2118 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !2117)
!2119 = !DILocation(line: 283, column: 18, scope: !2000, inlinedAt: !2008)
!2120 = !DILocation(line: 520, column: 13, scope: !2009, inlinedAt: !1997)
!2121 = !DILocation(line: 521, column: 14, scope: !2122, inlinedAt: !1997)
!2122 = distinct !DILexicalBlock(scope: !2009, file: !2, line: 521, column: 11)
!2123 = !DILocation(line: 521, column: 20, scope: !2122, inlinedAt: !1997)
!2124 = !DILocation(line: 521, column: 18, scope: !2122, inlinedAt: !1997)
!2125 = !DILocation(line: 521, column: 25, scope: !2122, inlinedAt: !1997)
!2126 = !DILocation(line: 521, column: 35, scope: !2122, inlinedAt: !1997)
!2127 = !DILocation(line: 0, scope: !1112, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 521, column: 28, scope: !2122, inlinedAt: !1997)
!2129 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2128)
!2130 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2128)
!2131 = !DILocation(line: 521, column: 11, scope: !2009, inlinedAt: !1997)
!2132 = !DILocation(line: 0, scope: !1372, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 523, column: 7, scope: !2009, inlinedAt: !1997)
!2134 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !2133)
!2135 = distinct !{!2135, !2136, !2137}
!2136 = !DILocation(line: 518, column: 3, scope: !1994, inlinedAt: !1997)
!2137 = !DILocation(line: 524, column: 5, scope: !1994, inlinedAt: !1997)
!2138 = !DILocation(line: 539, column: 13, scope: !1998)
!2139 = !DILocation(line: 0, scope: !1112, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 540, column: 28, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !1998, file: !2, line: 540, column: 11)
!2142 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2140)
!2143 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2140)
!2144 = !DILocation(line: 540, column: 11, scope: !1998)
!2145 = !DILocation(line: 541, column: 9, scope: !2141)
!2146 = !DILocation(line: 0, scope: !1372, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 542, column: 7, scope: !1998)
!2148 = !DILocation(line: 112, column: 3, scope: !1372, inlinedAt: !2147)
!2149 = distinct !{!2149, !2012, !2150}
!2150 = !DILocation(line: 543, column: 5, scope: !1989)
!2151 = distinct !DISubprogram(name: "binop", scope: !2, file: !2, line: 186, type: !1776, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2152)
!2152 = !{!2153}
!2153 = !DILocalVariable(name: "s", arg: 1, scope: !2151, file: !2, line: 186, type: !265)
!2154 = !DILocation(line: 0, scope: !2151)
!2155 = !DILocation(line: 0, scope: !1112, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 188, column: 13, scope: !2151)
!2157 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2156)
!2158 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2156)
!2159 = !DILocation(line: 188, column: 13, scope: !2151)
!2160 = !DILocation(line: 0, scope: !1112, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 189, column: 13, scope: !2151)
!2162 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2161)
!2163 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2161)
!2164 = !DILocation(line: 189, column: 13, scope: !2151)
!2165 = !DILocation(line: 0, scope: !1112, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 190, column: 13, scope: !2151)
!2167 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2166)
!2168 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2166)
!2169 = !DILocation(line: 190, column: 13, scope: !2151)
!2170 = !DILocation(line: 0, scope: !1112, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 191, column: 13, scope: !2151)
!2172 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2171)
!2173 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2171)
!2174 = !DILocation(line: 191, column: 13, scope: !2151)
!2175 = !DILocation(line: 0, scope: !1112, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 192, column: 13, scope: !2151)
!2177 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2176)
!2178 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2176)
!2179 = !DILocation(line: 192, column: 13, scope: !2151)
!2180 = !DILocation(line: 0, scope: !1112, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 193, column: 13, scope: !2151)
!2182 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2181)
!2183 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2181)
!2184 = !DILocation(line: 193, column: 13, scope: !2151)
!2185 = !DILocation(line: 0, scope: !1112, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 194, column: 13, scope: !2151)
!2187 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2186)
!2188 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2186)
!2189 = !DILocation(line: 194, column: 13, scope: !2151)
!2190 = !DILocation(line: 0, scope: !1112, inlinedAt: !2191)
!2191 = distinct !DILocation(line: 195, column: 13, scope: !2151)
!2192 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2191)
!2193 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2191)
!2194 = !DILocation(line: 195, column: 13, scope: !2151)
!2195 = !DILocation(line: 0, scope: !1112, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 196, column: 13, scope: !2151)
!2197 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2196)
!2198 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2196)
!2199 = !DILocation(line: 196, column: 13, scope: !2151)
!2200 = !DILocation(line: 0, scope: !1112, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 197, column: 13, scope: !2151)
!2202 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2201)
!2203 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2201)
!2204 = !DILocation(line: 197, column: 13, scope: !2151)
!2205 = !DILocation(line: 0, scope: !1112, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 198, column: 13, scope: !2151)
!2207 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2206)
!2208 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2206)
!2209 = !DILocation(line: 198, column: 13, scope: !2151)
!2210 = !DILocation(line: 0, scope: !1112, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 199, column: 13, scope: !2151)
!2212 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2211)
!2213 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2211)
!2214 = !DILocation(line: 199, column: 13, scope: !2151)
!2215 = !DILocation(line: 0, scope: !1112, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 200, column: 13, scope: !2151)
!2217 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2216)
!2218 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2216)
!2219 = !DILocation(line: 200, column: 13, scope: !2151)
!2220 = !DILocation(line: 0, scope: !1112, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 201, column: 13, scope: !2151)
!2222 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2221)
!2223 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2221)
!2224 = !DILocation(line: 201, column: 13, scope: !2151)
!2225 = !DILocation(line: 188, column: 3, scope: !2151)
!2226 = distinct !DISubprogram(name: "binary_operator", scope: !2, file: !2, line: 287, type: !2227, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2229)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!319, !319, !242}
!2229 = !{!2230, !2231, !2232, !2233, !2234, !2237, !2238, !2239, !2240, !2241, !2243, !2247}
!2230 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !2226, file: !2, line: 287, type: !319)
!2231 = !DILocalVariable(name: "bop", arg: 2, scope: !2226, file: !2, line: 287, type: !242)
!2232 = !DILocalVariable(name: "op", scope: !2226, file: !2, line: 289, type: !260)
!2233 = !DILocalVariable(name: "r_is_l", scope: !2226, file: !2, line: 296, type: !319)
!2234 = !DILocalVariable(name: "lbuf", scope: !2235, file: !2, line: 307, type: !644)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !2, line: 306, column: 7)
!2236 = distinct !DILexicalBlock(scope: !2226, file: !2, line: 303, column: 5)
!2237 = !DILocalVariable(name: "rbuf", scope: !2235, file: !2, line: 308, type: !644)
!2238 = !DILocalVariable(name: "l", scope: !2235, file: !2, line: 309, type: !265)
!2239 = !DILocalVariable(name: "r", scope: !2235, file: !2, line: 312, type: !265)
!2240 = !DILocalVariable(name: "cmp", scope: !2235, file: !2, line: 315, type: !260)
!2241 = !DILocalVariable(name: "cmp", scope: !2242, file: !2, line: 333, type: !260)
!2242 = distinct !DILexicalBlock(scope: !2236, file: !2, line: 329, column: 7)
!2243 = !DILocalVariable(name: "st", scope: !2244, file: !2, line: 343, type: !2246)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !2, line: 342, column: 9)
!2245 = distinct !DILexicalBlock(scope: !2236, file: !2, line: 339, column: 11)
!2246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1484, size: 2048, elements: !20)
!2247 = !DILocalVariable(name: "cmp", scope: !2248, file: !2, line: 356, type: !260)
!2248 = distinct !DILexicalBlock(scope: !2236, file: !2, line: 355, column: 7)
!2249 = !DILocation(line: 0, scope: !2226)
!2250 = !DILocation(line: 291, column: 7, scope: !2226)
!2251 = !DILocation(line: 293, column: 12, scope: !2226)
!2252 = !DILocation(line: 296, column: 22, scope: !2226)
!2253 = !DILocation(line: 296, column: 27, scope: !2226)
!2254 = !DILocation(line: 296, column: 20, scope: !2226)
!2255 = !DILocation(line: 296, column: 31, scope: !2226)
!2256 = !DILocation(line: 296, column: 41, scope: !2226)
!2257 = !DILocation(line: 296, column: 49, scope: !2226)
!2258 = !DILocation(line: 0, scope: !1112, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 296, column: 34, scope: !2226)
!2260 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2259)
!2261 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2259)
!2262 = !DILocation(line: 297, column: 7, scope: !2226)
!2263 = !DILocation(line: 300, column: 7, scope: !2226)
!2264 = !DILocation(line: 302, column: 3, scope: !2226)
!2265 = !DILocation(line: 307, column: 9, scope: !2235)
!2266 = !DILocation(line: 307, column: 14, scope: !2235)
!2267 = !DILocation(line: 308, column: 9, scope: !2235)
!2268 = !DILocation(line: 308, column: 14, scope: !2235)
!2269 = !DILocation(line: 0, scope: !2235)
!2270 = !DILocation(line: 309, column: 26, scope: !2235)
!2271 = !DILocation(line: 310, column: 39, scope: !2235)
!2272 = !DILocation(line: 310, column: 28, scope: !2235)
!2273 = !DILocation(line: 311, column: 28, scope: !2235)
!2274 = !DILocation(line: 312, column: 26, scope: !2235)
!2275 = !DILocation(line: 313, column: 55, scope: !2235)
!2276 = !DILocation(line: 313, column: 47, scope: !2235)
!2277 = !DILocation(line: 313, column: 39, scope: !2235)
!2278 = !DILocation(line: 313, column: 28, scope: !2235)
!2279 = !DILocation(line: 314, column: 46, scope: !2235)
!2280 = !DILocation(line: 314, column: 38, scope: !2235)
!2281 = !DILocation(line: 314, column: 28, scope: !2235)
!2282 = !DILocation(line: 315, column: 19, scope: !2235)
!2283 = !DILocation(line: 316, column: 9, scope: !2235)
!2284 = !DILocation(line: 318, column: 37, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2235, file: !2, line: 317, column: 11)
!2286 = !DILocation(line: 318, column: 26, scope: !2285)
!2287 = !DILocation(line: 319, column: 37, scope: !2285)
!2288 = !DILocation(line: 319, column: 26, scope: !2285)
!2289 = !DILocation(line: 320, column: 37, scope: !2285)
!2290 = !DILocation(line: 320, column: 26, scope: !2285)
!2291 = !DILocation(line: 321, column: 37, scope: !2285)
!2292 = !DILocation(line: 321, column: 26, scope: !2285)
!2293 = !DILocation(line: 322, column: 37, scope: !2285)
!2294 = !DILocation(line: 322, column: 26, scope: !2285)
!2295 = !DILocation(line: 323, column: 37, scope: !2285)
!2296 = !DILocation(line: 323, column: 26, scope: !2285)
!2297 = !DILocation(line: 325, column: 9, scope: !2235)
!2298 = !DILocation(line: 0, scope: !2285)
!2299 = !DILocation(line: 326, column: 7, scope: !2236)
!2300 = !DILocation(line: 330, column: 20, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2242, file: !2, line: 330, column: 13)
!2302 = !DILocation(line: 330, column: 13, scope: !2242)
!2303 = !DILocation(line: 331, column: 30, scope: !2301)
!2304 = !DILocation(line: 332, column: 30, scope: !2301)
!2305 = !DILocation(line: 331, column: 11, scope: !2301)
!2306 = !DILocation(line: 333, column: 44, scope: !2242)
!2307 = !DILocalVariable(name: "filename", arg: 1, scope: !2308, file: !2, line: 175, type: !265)
!2308 = distinct !DISubprogram(name: "get_mtime", scope: !2, file: !2, line: 175, type: !2309, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2311)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!1508, !265}
!2311 = !{!2307, !2312}
!2312 = !DILocalVariable(name: "finfo", scope: !2308, file: !2, line: 177, type: !1484)
!2313 = !DILocation(line: 0, scope: !2308, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 333, column: 33, scope: !2242)
!2315 = !DILocation(line: 177, column: 3, scope: !2308, inlinedAt: !2314)
!2316 = !DILocation(line: 177, column: 15, scope: !2308, inlinedAt: !2314)
!2317 = !DILocation(line: 178, column: 11, scope: !2308, inlinedAt: !2314)
!2318 = !DILocation(line: 178, column: 35, scope: !2308, inlinedAt: !2314)
!2319 = !DILocation(line: 181, column: 1, scope: !2308, inlinedAt: !2314)
!2320 = !DILocation(line: 334, column: 44, scope: !2242)
!2321 = !DILocation(line: 334, column: 52, scope: !2242)
!2322 = !DILocation(line: 0, scope: !2308, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 334, column: 33, scope: !2242)
!2324 = !DILocation(line: 177, column: 3, scope: !2308, inlinedAt: !2323)
!2325 = !DILocation(line: 177, column: 15, scope: !2308, inlinedAt: !2323)
!2326 = !DILocation(line: 178, column: 11, scope: !2308, inlinedAt: !2323)
!2327 = !DILocation(line: 178, column: 35, scope: !2308, inlinedAt: !2323)
!2328 = !DILocation(line: 181, column: 1, scope: !2308, inlinedAt: !2323)
!2329 = !DILocation(line: 0, scope: !1620, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 333, column: 19, scope: !2242)
!2331 = !DILocation(line: 66, column: 14, scope: !1620, inlinedAt: !2330)
!2332 = !DILocation(line: 66, column: 12, scope: !1620, inlinedAt: !2330)
!2333 = !DILocation(line: 66, column: 45, scope: !1620, inlinedAt: !2330)
!2334 = !DILocation(line: 66, column: 43, scope: !1620, inlinedAt: !2330)
!2335 = !DILocation(line: 0, scope: !2242)
!2336 = !DILocation(line: 335, column: 20, scope: !2242)
!2337 = !DILocation(line: 335, column: 16, scope: !2242)
!2338 = !DILocation(line: 339, column: 18, scope: !2245)
!2339 = !DILocation(line: 339, column: 11, scope: !2236)
!2340 = !DILocation(line: 340, column: 28, scope: !2245)
!2341 = !DILocation(line: 340, column: 9, scope: !2245)
!2342 = !DILocation(line: 343, column: 11, scope: !2244)
!2343 = !DILocation(line: 343, column: 23, scope: !2244)
!2344 = !DILocation(line: 344, column: 25, scope: !2244)
!2345 = !DILocation(line: 344, column: 19, scope: !2244)
!2346 = !DILocation(line: 344, column: 47, scope: !2244)
!2347 = !DILocation(line: 345, column: 19, scope: !2244)
!2348 = !DILocation(line: 345, column: 28, scope: !2244)
!2349 = !DILocation(line: 345, column: 36, scope: !2244)
!2350 = !DILocation(line: 345, column: 43, scope: !2244)
!2351 = !DILocation(line: 345, column: 22, scope: !2244)
!2352 = !DILocation(line: 345, column: 50, scope: !2244)
!2353 = !DILocation(line: 346, column: 19, scope: !2244)
!2354 = !DILocalVariable(name: "a", arg: 1, scope: !2355, file: !2356, line: 86, type: !1606)
!2355 = distinct !DISubprogram(name: "psame_inode", scope: !2356, file: !2356, line: 86, type: !2357, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2359)
!2356 = !DIFile(filename: "./lib/same-inode.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6a49db1c884e7bc93549038e7fb28788")
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!319, !1606, !1606}
!2359 = !{!2354, !2360}
!2360 = !DILocalVariable(name: "b", arg: 2, scope: !2355, file: !2356, line: 86, type: !1606)
!2361 = !DILocation(line: 0, scope: !2355, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 346, column: 22, scope: !2244)
!2363 = !DILocation(line: 90, column: 14, scope: !2355, inlinedAt: !2362)
!2364 = !{!1654, !1655, i64 0}
!2365 = !{!1654, !1655, i64 8}
!2366 = !DILocation(line: 0, scope: !2244)
!2367 = !DILocation(line: 347, column: 9, scope: !2245)
!2368 = !DILocation(line: 351, column: 21, scope: !2236)
!2369 = !DILocation(line: 351, column: 43, scope: !2236)
!2370 = !DILocation(line: 351, column: 35, scope: !2236)
!2371 = !DILocation(line: 0, scope: !1112, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 351, column: 14, scope: !2236)
!2373 = !DILocation(line: 1361, column: 11, scope: !1112, inlinedAt: !2372)
!2374 = !DILocation(line: 1361, column: 10, scope: !1112, inlinedAt: !2372)
!2375 = !DILocation(line: 351, column: 57, scope: !2236)
!2376 = !DILocation(line: 351, column: 49, scope: !2236)
!2377 = !DILocation(line: 351, column: 7, scope: !2236)
!2378 = !DILocation(line: 356, column: 28, scope: !2248)
!2379 = !DILocation(line: 356, column: 50, scope: !2248)
!2380 = !DILocation(line: 356, column: 42, scope: !2248)
!2381 = !DILocation(line: 356, column: 19, scope: !2248)
!2382 = !DILocation(line: 0, scope: !2248)
!2383 = !DILocation(line: 357, column: 20, scope: !2248)
!2384 = !DILocation(line: 357, column: 16, scope: !2248)
!2385 = !DILocation(line: 362, column: 3, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !2, line: 362, column: 3)
!2387 = distinct !DILexicalBlock(scope: !2226, file: !2, line: 362, column: 3)
!2388 = !DILocation(line: 0, scope: !2236)
!2389 = !DILocation(line: 363, column: 1, scope: !2226)
!2390 = !DISubprogram(name: "strlen", scope: !1202, file: !1202, line: 407, type: !2391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!264, !265}
!2393 = distinct !DISubprogram(name: "find_int", scope: !2, file: !2, line: 139, type: !2394, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!265, !265}
!2396 = !{!2397, !2398, !2399}
!2397 = !DILocalVariable(name: "string", arg: 1, scope: !2393, file: !2, line: 139, type: !265)
!2398 = !DILocalVariable(name: "p", scope: !2393, file: !2, line: 141, type: !265)
!2399 = !DILocalVariable(name: "number_start", scope: !2393, file: !2, line: 142, type: !265)
!2400 = !DILocation(line: 0, scope: !2393)
!2401 = !DILocation(line: 144, column: 8, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2393, file: !2, line: 144, column: 3)
!2403 = !DILocation(line: 144, scope: !2402)
!2404 = !DILocation(line: 144, column: 20, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2402, file: !2, line: 144, column: 3)
!2406 = !DILocation(line: 144, column: 3, scope: !2402)
!2407 = !DILocation(line: 144, column: 46, scope: !2405)
!2408 = distinct !{!2408, !2406, !2409, !1147}
!2409 = !DILocation(line: 145, column: 5, scope: !2402)
!2410 = !DILocation(line: 147, column: 10, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2393, file: !2, line: 147, column: 7)
!2412 = !DILocation(line: 147, column: 7, scope: !2393)
!2413 = !DILocation(line: 158, column: 18, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2393, file: !2, line: 158, column: 7)
!2415 = !DILocalVariable(name: "c", arg: 1, scope: !2416, file: !2417, line: 233, type: !260)
!2416 = distinct !DISubprogram(name: "c_isdigit", scope: !2417, file: !2417, line: 233, type: !1343, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2418)
!2417 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!2418 = !{!2415}
!2419 = !DILocation(line: 0, scope: !2416, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 158, column: 7, scope: !2414)
!2421 = !DILocation(line: 235, column: 3, scope: !2416, inlinedAt: !2420)
!2422 = !DILocation(line: 158, column: 7, scope: !2393)
!2423 = !DILocation(line: 0, scope: !2414)
!2424 = !DILocation(line: 160, column: 25, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2414, file: !2, line: 159, column: 5)
!2426 = !DILocation(line: 0, scope: !2416, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 160, column: 14, scope: !2425)
!2428 = !DILocation(line: 235, column: 3, scope: !2416, inlinedAt: !2427)
!2429 = !DILocation(line: 160, column: 7, scope: !2425)
!2430 = distinct !{!2430, !2429, !2431, !1147}
!2431 = !DILocation(line: 161, column: 10, scope: !2425)
!2432 = !DILocation(line: 162, column: 14, scope: !2425)
!2433 = !DILocation(line: 162, column: 7, scope: !2425)
!2434 = !DILocation(line: 163, column: 10, scope: !2425)
!2435 = distinct !{!2435, !2433, !2434, !1147}
!2436 = !DILocation(line: 164, column: 12, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2425, file: !2, line: 164, column: 11)
!2438 = !DILocation(line: 164, column: 11, scope: !2425)
!2439 = !DILocation(line: 165, column: 9, scope: !2437)
!2440 = !DILocation(line: 168, column: 22, scope: !2393)
!2441 = !DILocation(line: 168, column: 47, scope: !2393)
!2442 = !DILocation(line: 168, column: 3, scope: !2393)
!2443 = !DISubprogram(name: "stat", scope: !2444, file: !2444, line: 205, type: !2445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2444 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!260, !1094, !2447}
!2447 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2448)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!2449 = !DISubprogram(name: "strcoll", scope: !1202, file: !1202, line: 163, type: !1211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2450 = !DISubprogram(name: "euidaccess", scope: !2451, file: !2451, line: 292, type: !2452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2451 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!260, !265, !260}
!2454 = !DISubprogram(name: "__errno_location", scope: !2455, file: !2455, line: 37, type: !2456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2455 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!2458}
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!2459 = !DISubprogram(name: "geteuid", scope: !2451, file: !2451, line: 700, type: !2460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!1496}
!2462 = !DISubprogram(name: "getegid", scope: !2451, file: !2451, line: 706, type: !2463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!1498}
!2465 = !DISubprogram(name: "strtol", scope: !1206, file: !1206, line: 177, type: !2466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!272, !1094, !2468, !260}
!2468 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !572)
!2469 = !DISubprogram(name: "isatty", scope: !2451, file: !2451, line: 809, type: !2470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!260, !260}
!2472 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !583, file: !583, line: 50, type: !1054, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2473)
!2473 = !{!2474}
!2474 = !DILocalVariable(name: "file", arg: 1, scope: !2472, file: !583, line: 50, type: !265)
!2475 = !DILocation(line: 0, scope: !2472)
!2476 = !DILocation(line: 52, column: 13, scope: !2472)
!2477 = !DILocation(line: 53, column: 1, scope: !2472)
!2478 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !583, file: !583, line: 87, type: !1373, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2479)
!2479 = !{!2480}
!2480 = !DILocalVariable(name: "ignore", arg: 1, scope: !2478, file: !583, line: 87, type: !319)
!2481 = !DILocation(line: 0, scope: !2478)
!2482 = !DILocation(line: 89, column: 16, scope: !2478)
!2483 = !{!2484, !2484, i64 0}
!2484 = !{!"_Bool", !1002, i64 0}
!2485 = !DILocation(line: 90, column: 1, scope: !2478)
!2486 = distinct !DISubprogram(name: "close_stdout", scope: !583, file: !583, line: 116, type: !648, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2487)
!2487 = !{!2488}
!2488 = !DILocalVariable(name: "write_error", scope: !2489, file: !583, line: 121, type: !265)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !583, line: 120, column: 5)
!2490 = distinct !DILexicalBlock(scope: !2486, file: !583, line: 118, column: 7)
!2491 = !DILocation(line: 118, column: 21, scope: !2490)
!2492 = !DILocation(line: 118, column: 7, scope: !2490)
!2493 = !DILocation(line: 118, column: 29, scope: !2490)
!2494 = !DILocation(line: 119, column: 7, scope: !2490)
!2495 = !DILocation(line: 119, column: 12, scope: !2490)
!2496 = !{i8 0, i8 2}
!2497 = !DILocation(line: 119, column: 25, scope: !2490)
!2498 = !DILocation(line: 119, column: 28, scope: !2490)
!2499 = !DILocation(line: 119, column: 34, scope: !2490)
!2500 = !DILocation(line: 118, column: 7, scope: !2486)
!2501 = !DILocation(line: 121, column: 33, scope: !2489)
!2502 = !DILocation(line: 0, scope: !2489)
!2503 = !DILocation(line: 122, column: 11, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2489, file: !583, line: 122, column: 11)
!2505 = !DILocation(line: 0, scope: !2504)
!2506 = !DILocation(line: 122, column: 11, scope: !2489)
!2507 = !DILocation(line: 123, column: 9, scope: !2504)
!2508 = !DILocation(line: 126, column: 9, scope: !2504)
!2509 = !DILocation(line: 128, column: 14, scope: !2489)
!2510 = !DILocation(line: 128, column: 7, scope: !2489)
!2511 = !DILocation(line: 133, column: 42, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2486, file: !583, line: 133, column: 7)
!2513 = !DILocation(line: 133, column: 28, scope: !2512)
!2514 = !DILocation(line: 133, column: 50, scope: !2512)
!2515 = !DILocation(line: 133, column: 7, scope: !2486)
!2516 = !DILocation(line: 134, column: 12, scope: !2512)
!2517 = !DILocation(line: 134, column: 5, scope: !2512)
!2518 = !DILocation(line: 135, column: 1, scope: !2486)
!2519 = !DISubprogram(name: "_exit", scope: !2451, file: !2451, line: 624, type: !990, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2520 = distinct !DISubprogram(name: "verror", scope: !598, file: !598, line: 251, type: !2521, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{null, !260, !260, !265, !608}
!2523 = !{!2524, !2525, !2526, !2527}
!2524 = !DILocalVariable(name: "status", arg: 1, scope: !2520, file: !598, line: 251, type: !260)
!2525 = !DILocalVariable(name: "errnum", arg: 2, scope: !2520, file: !598, line: 251, type: !260)
!2526 = !DILocalVariable(name: "message", arg: 3, scope: !2520, file: !598, line: 251, type: !265)
!2527 = !DILocalVariable(name: "args", arg: 4, scope: !2520, file: !598, line: 251, type: !608)
!2528 = !DILocation(line: 0, scope: !2520)
!2529 = !DILocation(line: 251, column: 1, scope: !2520)
!2530 = !DILocation(line: 261, column: 3, scope: !2520)
!2531 = !DILocation(line: 265, column: 7, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2520, file: !598, line: 265, column: 7)
!2533 = !DILocation(line: 265, column: 7, scope: !2520)
!2534 = !DILocation(line: 266, column: 5, scope: !2532)
!2535 = !DILocation(line: 272, column: 7, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2532, file: !598, line: 268, column: 5)
!2537 = !DILocation(line: 276, column: 3, scope: !2520)
!2538 = !DILocation(line: 282, column: 1, scope: !2520)
!2539 = distinct !DISubprogram(name: "flush_stdout", scope: !598, file: !598, line: 163, type: !648, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2540)
!2540 = !{!2541}
!2541 = !DILocalVariable(name: "stdout_fd", scope: !2539, file: !598, line: 166, type: !260)
!2542 = !DILocation(line: 0, scope: !2539)
!2543 = !DILocalVariable(name: "fd", arg: 1, scope: !2544, file: !598, line: 145, type: !260)
!2544 = distinct !DISubprogram(name: "is_open", scope: !598, file: !598, line: 145, type: !2470, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2545)
!2545 = !{!2543}
!2546 = !DILocation(line: 0, scope: !2544, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 182, column: 25, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2539, file: !598, line: 182, column: 7)
!2549 = !DILocation(line: 157, column: 15, scope: !2544, inlinedAt: !2547)
!2550 = !DILocation(line: 157, column: 12, scope: !2544, inlinedAt: !2547)
!2551 = !DILocation(line: 182, column: 7, scope: !2539)
!2552 = !DILocation(line: 184, column: 5, scope: !2548)
!2553 = !DILocation(line: 185, column: 1, scope: !2539)
!2554 = distinct !DISubprogram(name: "error_tail", scope: !598, file: !598, line: 219, type: !2521, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2555)
!2555 = !{!2556, !2557, !2558, !2559}
!2556 = !DILocalVariable(name: "status", arg: 1, scope: !2554, file: !598, line: 219, type: !260)
!2557 = !DILocalVariable(name: "errnum", arg: 2, scope: !2554, file: !598, line: 219, type: !260)
!2558 = !DILocalVariable(name: "message", arg: 3, scope: !2554, file: !598, line: 219, type: !265)
!2559 = !DILocalVariable(name: "args", arg: 4, scope: !2554, file: !598, line: 219, type: !608)
!2560 = !DILocation(line: 0, scope: !2554)
!2561 = !DILocation(line: 219, column: 1, scope: !2554)
!2562 = !DILocation(line: 229, column: 13, scope: !2554)
!2563 = !DILocation(line: 135, column: 10, scope: !2564, inlinedAt: !2606)
!2564 = distinct !DISubprogram(name: "vfprintf", scope: !1090, file: !1090, line: 132, type: !2565, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2602)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!260, !2567, !1094, !610}
!2567 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2568)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !2570)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !2571)
!2571 = !{!2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2570, file: !336, line: 51, baseType: !260, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2570, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2570, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2570, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2570, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2570, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2570, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2570, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2570, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2570, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2570, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2570, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2570, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2570, file: !336, line: 70, baseType: !2586, size: 64, offset: 832)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2570, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2570, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2570, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2570, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2570, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2570, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2570, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2570, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2570, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2570, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2570, file: !336, line: 93, baseType: !2586, size: 64, offset: 1344)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2570, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2570, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2570, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2570, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!2602 = !{!2603, !2604, !2605}
!2603 = !DILocalVariable(name: "__stream", arg: 1, scope: !2564, file: !1090, line: 132, type: !2567)
!2604 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2564, file: !1090, line: 133, type: !1094)
!2605 = !DILocalVariable(name: "__ap", arg: 3, scope: !2564, file: !1090, line: 133, type: !610)
!2606 = distinct !DILocation(line: 229, column: 3, scope: !2554)
!2607 = !{!2608, !2610}
!2608 = distinct !{!2608, !2609, !"vfprintf.inline: argument 0"}
!2609 = distinct !{!2609, !"vfprintf.inline"}
!2610 = distinct !{!2610, !2609, !"vfprintf.inline: argument 1"}
!2611 = !DILocation(line: 229, column: 3, scope: !2554)
!2612 = !DILocation(line: 0, scope: !2564, inlinedAt: !2606)
!2613 = !DILocation(line: 133, column: 49, scope: !2564, inlinedAt: !2606)
!2614 = !DILocation(line: 232, column: 3, scope: !2554)
!2615 = !DILocation(line: 233, column: 7, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2554, file: !598, line: 233, column: 7)
!2617 = !DILocation(line: 233, column: 7, scope: !2554)
!2618 = !DILocalVariable(name: "errnum", arg: 1, scope: !2619, file: !598, line: 188, type: !260)
!2619 = distinct !DISubprogram(name: "print_errno_message", scope: !598, file: !598, line: 188, type: !990, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2620)
!2620 = !{!2618, !2621, !2622}
!2621 = !DILocalVariable(name: "s", scope: !2619, file: !598, line: 190, type: !265)
!2622 = !DILocalVariable(name: "errbuf", scope: !2619, file: !598, line: 193, type: !2623)
!2623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2624)
!2624 = !{!2625}
!2625 = !DISubrange(count: 1024)
!2626 = !DILocation(line: 0, scope: !2619, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 234, column: 5, scope: !2616)
!2628 = !DILocation(line: 193, column: 3, scope: !2619, inlinedAt: !2627)
!2629 = !DILocation(line: 193, column: 8, scope: !2619, inlinedAt: !2627)
!2630 = !DILocation(line: 195, column: 7, scope: !2619, inlinedAt: !2627)
!2631 = !DILocation(line: 207, column: 9, scope: !2632, inlinedAt: !2627)
!2632 = distinct !DILexicalBlock(scope: !2619, file: !598, line: 207, column: 7)
!2633 = !DILocation(line: 207, column: 7, scope: !2619, inlinedAt: !2627)
!2634 = !DILocation(line: 208, column: 9, scope: !2632, inlinedAt: !2627)
!2635 = !DILocation(line: 208, column: 5, scope: !2632, inlinedAt: !2627)
!2636 = !DILocation(line: 214, column: 3, scope: !2619, inlinedAt: !2627)
!2637 = !DILocation(line: 216, column: 1, scope: !2619, inlinedAt: !2627)
!2638 = !DILocation(line: 234, column: 5, scope: !2616)
!2639 = !DILocation(line: 238, column: 3, scope: !2554)
!2640 = !DILocalVariable(name: "__c", arg: 1, scope: !2641, file: !2642, line: 101, type: !260)
!2641 = distinct !DISubprogram(name: "putc_unlocked", scope: !2642, file: !2642, line: 101, type: !2643, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2645)
!2642 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!260, !260, !2568}
!2645 = !{!2640, !2646}
!2646 = !DILocalVariable(name: "__stream", arg: 2, scope: !2641, file: !2642, line: 101, type: !2568)
!2647 = !DILocation(line: 0, scope: !2641, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 238, column: 3, scope: !2554)
!2649 = !DILocation(line: 103, column: 10, scope: !2641, inlinedAt: !2648)
!2650 = !{!2651, !1001, i64 40}
!2651 = !{!"_IO_FILE", !1101, i64 0, !1001, i64 8, !1001, i64 16, !1001, i64 24, !1001, i64 32, !1001, i64 40, !1001, i64 48, !1001, i64 56, !1001, i64 64, !1001, i64 72, !1001, i64 80, !1001, i64 88, !1001, i64 96, !1001, i64 104, !1101, i64 112, !1101, i64 116, !1655, i64 120, !1142, i64 128, !1002, i64 130, !1002, i64 131, !1001, i64 136, !1655, i64 144, !1001, i64 152, !1001, i64 160, !1001, i64 168, !1001, i64 176, !1655, i64 184, !1101, i64 192, !1002, i64 196}
!2652 = !{!2651, !1001, i64 48}
!2653 = !{!"branch_weights", i32 2000, i32 1}
!2654 = !DILocation(line: 240, column: 3, scope: !2554)
!2655 = !DILocation(line: 241, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2554, file: !598, line: 241, column: 7)
!2657 = !DILocation(line: 241, column: 7, scope: !2554)
!2658 = !DILocation(line: 242, column: 5, scope: !2656)
!2659 = !DILocation(line: 243, column: 1, scope: !2554)
!2660 = !DISubprogram(name: "__vfprintf_chk", scope: !1090, file: !1090, line: 96, type: !2661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!260, !2567, !260, !1094, !610}
!2663 = !DISubprogram(name: "strerror_r", scope: !1202, file: !1202, line: 444, type: !2664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!258, !260, !258, !262}
!2666 = !DISubprogram(name: "__overflow", scope: !609, file: !609, line: 886, type: !2667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!260, !2568, !260}
!2669 = !DISubprogram(name: "fflush_unlocked", scope: !609, file: !609, line: 239, type: !2670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!260, !2568}
!2672 = !DISubprogram(name: "fcntl", scope: !2673, file: !2673, line: 149, type: !2674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2673 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!260, !260, !260, null}
!2676 = distinct !DISubprogram(name: "error", scope: !598, file: !598, line: 285, type: !2677, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2679)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{null, !260, !260, !265, null}
!2679 = !{!2680, !2681, !2682, !2683}
!2680 = !DILocalVariable(name: "status", arg: 1, scope: !2676, file: !598, line: 285, type: !260)
!2681 = !DILocalVariable(name: "errnum", arg: 2, scope: !2676, file: !598, line: 285, type: !260)
!2682 = !DILocalVariable(name: "message", arg: 3, scope: !2676, file: !598, line: 285, type: !265)
!2683 = !DILocalVariable(name: "ap", scope: !2676, file: !598, line: 287, type: !608)
!2684 = !DILocation(line: 0, scope: !2676)
!2685 = !DILocation(line: 287, column: 3, scope: !2676)
!2686 = !DILocation(line: 287, column: 11, scope: !2676)
!2687 = !DILocation(line: 288, column: 3, scope: !2676)
!2688 = !DILocation(line: 289, column: 3, scope: !2676)
!2689 = !DILocation(line: 290, column: 3, scope: !2676)
!2690 = !DILocation(line: 291, column: 1, scope: !2676)
!2691 = !DILocation(line: 0, scope: !605)
!2692 = !DILocation(line: 298, column: 1, scope: !605)
!2693 = !DILocation(line: 302, column: 7, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !605, file: !598, line: 302, column: 7)
!2695 = !DILocation(line: 302, column: 7, scope: !605)
!2696 = !DILocation(line: 307, column: 11, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !598, line: 307, column: 11)
!2698 = distinct !DILexicalBlock(scope: !2694, file: !598, line: 303, column: 5)
!2699 = !DILocation(line: 307, column: 27, scope: !2697)
!2700 = !DILocation(line: 308, column: 11, scope: !2697)
!2701 = !DILocation(line: 308, column: 28, scope: !2697)
!2702 = !DILocation(line: 308, column: 25, scope: !2697)
!2703 = !DILocation(line: 309, column: 15, scope: !2697)
!2704 = !DILocation(line: 309, column: 33, scope: !2697)
!2705 = !DILocation(line: 310, column: 19, scope: !2697)
!2706 = !DILocation(line: 311, column: 22, scope: !2697)
!2707 = !DILocation(line: 311, column: 56, scope: !2697)
!2708 = !DILocation(line: 307, column: 11, scope: !2698)
!2709 = !DILocation(line: 316, column: 21, scope: !2698)
!2710 = !DILocation(line: 317, column: 23, scope: !2698)
!2711 = !DILocation(line: 318, column: 5, scope: !2698)
!2712 = !DILocation(line: 327, column: 3, scope: !605)
!2713 = !DILocation(line: 331, column: 7, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !605, file: !598, line: 331, column: 7)
!2715 = !DILocation(line: 331, column: 7, scope: !605)
!2716 = !DILocation(line: 332, column: 5, scope: !2714)
!2717 = !DILocation(line: 338, column: 7, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2714, file: !598, line: 334, column: 5)
!2719 = !DILocation(line: 346, column: 3, scope: !605)
!2720 = !DILocation(line: 350, column: 3, scope: !605)
!2721 = !DILocation(line: 356, column: 1, scope: !605)
!2722 = distinct !DISubprogram(name: "error_at_line", scope: !598, file: !598, line: 359, type: !2723, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2725)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !260, !260, !265, !222, !265, null}
!2725 = !{!2726, !2727, !2728, !2729, !2730, !2731}
!2726 = !DILocalVariable(name: "status", arg: 1, scope: !2722, file: !598, line: 359, type: !260)
!2727 = !DILocalVariable(name: "errnum", arg: 2, scope: !2722, file: !598, line: 359, type: !260)
!2728 = !DILocalVariable(name: "file_name", arg: 3, scope: !2722, file: !598, line: 359, type: !265)
!2729 = !DILocalVariable(name: "line_number", arg: 4, scope: !2722, file: !598, line: 360, type: !222)
!2730 = !DILocalVariable(name: "message", arg: 5, scope: !2722, file: !598, line: 360, type: !265)
!2731 = !DILocalVariable(name: "ap", scope: !2722, file: !598, line: 362, type: !608)
!2732 = !DILocation(line: 0, scope: !2722)
!2733 = !DILocation(line: 362, column: 3, scope: !2722)
!2734 = !DILocation(line: 362, column: 11, scope: !2722)
!2735 = !DILocation(line: 363, column: 3, scope: !2722)
!2736 = !DILocation(line: 364, column: 3, scope: !2722)
!2737 = !DILocation(line: 366, column: 3, scope: !2722)
!2738 = !DILocation(line: 367, column: 1, scope: !2722)
!2739 = distinct !DISubprogram(name: "getprogname", scope: !912, file: !912, line: 54, type: !2740, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !1088)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!265}
!2742 = !DILocation(line: 58, column: 10, scope: !2739)
!2743 = !DILocation(line: 58, column: 3, scope: !2739)
!2744 = distinct !DISubprogram(name: "umaxtostr", scope: !2745, file: !2745, line: 29, type: !2746, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !2748)
!2745 = !DIFile(filename: "./lib/anytostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e5b8bc0749223f86edfe264a04f25de0")
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!258, !916, !258}
!2748 = !{!2749, !2750, !2751}
!2749 = !DILocalVariable(name: "i", arg: 1, scope: !2744, file: !2745, line: 29, type: !916)
!2750 = !DILocalVariable(name: "buf", arg: 2, scope: !2744, file: !2745, line: 29, type: !258)
!2751 = !DILocalVariable(name: "p", scope: !2744, file: !2745, line: 31, type: !258)
!2752 = !DILocation(line: 0, scope: !2744)
!2753 = !DILocation(line: 31, column: 17, scope: !2744)
!2754 = !DILocation(line: 32, column: 6, scope: !2744)
!2755 = !DILocation(line: 46, column: 17, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !2745, line: 43, column: 5)
!2757 = distinct !DILexicalBlock(scope: !2744, file: !2745, line: 34, column: 7)
!2758 = !DILocation(line: 45, column: 16, scope: !2756)
!2759 = !DILocation(line: 45, column: 10, scope: !2756)
!2760 = !DILocation(line: 45, column: 14, scope: !2756)
!2761 = !DILocation(line: 46, column: 24, scope: !2756)
!2762 = !DILocation(line: 45, column: 9, scope: !2756)
!2763 = distinct !{!2763, !2764, !2765, !1147}
!2764 = !DILocation(line: 44, column: 7, scope: !2756)
!2765 = !DILocation(line: 46, column: 28, scope: !2756)
!2766 = !DILocation(line: 49, column: 3, scope: !2744)
!2767 = distinct !DISubprogram(name: "set_program_name", scope: !653, file: !653, line: 37, type: !1054, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !2768)
!2768 = !{!2769, !2770, !2771}
!2769 = !DILocalVariable(name: "argv0", arg: 1, scope: !2767, file: !653, line: 37, type: !265)
!2770 = !DILocalVariable(name: "slash", scope: !2767, file: !653, line: 44, type: !265)
!2771 = !DILocalVariable(name: "base", scope: !2767, file: !653, line: 45, type: !265)
!2772 = !DILocation(line: 0, scope: !2767)
!2773 = !DILocation(line: 44, column: 23, scope: !2767)
!2774 = !DILocation(line: 45, column: 22, scope: !2767)
!2775 = !DILocation(line: 46, column: 17, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2767, file: !653, line: 46, column: 7)
!2777 = !DILocation(line: 46, column: 9, scope: !2776)
!2778 = !DILocation(line: 46, column: 25, scope: !2776)
!2779 = !DILocation(line: 46, column: 40, scope: !2776)
!2780 = !DILocalVariable(name: "__s1", arg: 1, scope: !2781, file: !1113, line: 974, type: !1230)
!2781 = distinct !DISubprogram(name: "memeq", scope: !1113, file: !1113, line: 974, type: !2782, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!319, !1230, !1230, !262}
!2784 = !{!2780, !2785, !2786}
!2785 = !DILocalVariable(name: "__s2", arg: 2, scope: !2781, file: !1113, line: 974, type: !1230)
!2786 = !DILocalVariable(name: "__n", arg: 3, scope: !2781, file: !1113, line: 974, type: !262)
!2787 = !DILocation(line: 0, scope: !2781, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 46, column: 28, scope: !2776)
!2789 = !DILocation(line: 976, column: 11, scope: !2781, inlinedAt: !2788)
!2790 = !DILocation(line: 976, column: 10, scope: !2781, inlinedAt: !2788)
!2791 = !DILocation(line: 46, column: 7, scope: !2767)
!2792 = !DILocation(line: 49, column: 11, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !653, line: 49, column: 11)
!2794 = distinct !DILexicalBlock(scope: !2776, file: !653, line: 47, column: 5)
!2795 = !DILocation(line: 49, column: 36, scope: !2793)
!2796 = !DILocation(line: 49, column: 11, scope: !2794)
!2797 = !DILocation(line: 65, column: 16, scope: !2767)
!2798 = !DILocation(line: 71, column: 27, scope: !2767)
!2799 = !DILocation(line: 74, column: 33, scope: !2767)
!2800 = !DILocation(line: 76, column: 1, scope: !2767)
!2801 = !DISubprogram(name: "strrchr", scope: !1202, file: !1202, line: 273, type: !1217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2802 = !DILocation(line: 0, scope: !662)
!2803 = !DILocation(line: 40, column: 29, scope: !662)
!2804 = !DILocation(line: 41, column: 19, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !662, file: !663, line: 41, column: 7)
!2806 = !DILocation(line: 41, column: 7, scope: !662)
!2807 = !DILocation(line: 47, column: 3, scope: !662)
!2808 = !DILocation(line: 48, column: 3, scope: !662)
!2809 = !DILocation(line: 48, column: 13, scope: !662)
!2810 = !DILocalVariable(name: "ps", arg: 1, scope: !2811, file: !2812, line: 1135, type: !2815)
!2811 = distinct !DISubprogram(name: "mbszero", scope: !2812, file: !2812, line: 1135, type: !2813, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !666, retainedNodes: !2816)
!2812 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2813 = !DISubroutineType(types: !2814)
!2814 = !{null, !2815}
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!2816 = !{!2810}
!2817 = !DILocation(line: 0, scope: !2811, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 48, column: 18, scope: !662)
!2819 = !DILocalVariable(name: "__dest", arg: 1, scope: !2820, file: !2821, line: 57, type: !259)
!2820 = distinct !DISubprogram(name: "memset", scope: !2821, file: !2821, line: 57, type: !2822, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !666, retainedNodes: !2824)
!2821 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!259, !259, !260, !262}
!2824 = !{!2819, !2825, !2826}
!2825 = !DILocalVariable(name: "__ch", arg: 2, scope: !2820, file: !2821, line: 57, type: !260)
!2826 = !DILocalVariable(name: "__len", arg: 3, scope: !2820, file: !2821, line: 57, type: !262)
!2827 = !DILocation(line: 0, scope: !2820, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 1137, column: 3, scope: !2811, inlinedAt: !2818)
!2829 = !DILocation(line: 59, column: 10, scope: !2820, inlinedAt: !2828)
!2830 = !DILocation(line: 49, column: 7, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !662, file: !663, line: 49, column: 7)
!2832 = !DILocation(line: 49, column: 39, scope: !2831)
!2833 = !DILocation(line: 49, column: 44, scope: !2831)
!2834 = !DILocation(line: 54, column: 1, scope: !662)
!2835 = !DISubprogram(name: "mbrtoc32", scope: !674, file: !674, line: 57, type: !2836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!262, !2838, !1094, !262, !2840}
!2838 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2839)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2815)
!2841 = distinct !DISubprogram(name: "clone_quoting_options", scope: !693, file: !693, line: 113, type: !2842, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !2845)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!2844, !2844}
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!2845 = !{!2846, !2847, !2848}
!2846 = !DILocalVariable(name: "o", arg: 1, scope: !2841, file: !693, line: 113, type: !2844)
!2847 = !DILocalVariable(name: "saved_errno", scope: !2841, file: !693, line: 115, type: !260)
!2848 = !DILocalVariable(name: "p", scope: !2841, file: !693, line: 116, type: !2844)
!2849 = !DILocation(line: 0, scope: !2841)
!2850 = !DILocation(line: 115, column: 21, scope: !2841)
!2851 = !DILocation(line: 116, column: 40, scope: !2841)
!2852 = !DILocation(line: 116, column: 31, scope: !2841)
!2853 = !DILocation(line: 118, column: 9, scope: !2841)
!2854 = !DILocation(line: 119, column: 3, scope: !2841)
!2855 = distinct !DISubprogram(name: "get_quoting_style", scope: !693, file: !693, line: 124, type: !2856, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !2860)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!719, !2858}
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!2860 = !{!2861}
!2861 = !DILocalVariable(name: "o", arg: 1, scope: !2855, file: !693, line: 124, type: !2858)
!2862 = !DILocation(line: 0, scope: !2855)
!2863 = !DILocation(line: 126, column: 11, scope: !2855)
!2864 = !DILocation(line: 126, column: 46, scope: !2855)
!2865 = !{!2866, !1002, i64 0}
!2866 = !{!"quoting_options", !1002, i64 0, !1101, i64 4, !1002, i64 8, !1001, i64 40, !1001, i64 48}
!2867 = !DILocation(line: 126, column: 3, scope: !2855)
!2868 = distinct !DISubprogram(name: "set_quoting_style", scope: !693, file: !693, line: 132, type: !2869, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !2871)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{null, !2844, !719}
!2871 = !{!2872, !2873}
!2872 = !DILocalVariable(name: "o", arg: 1, scope: !2868, file: !693, line: 132, type: !2844)
!2873 = !DILocalVariable(name: "s", arg: 2, scope: !2868, file: !693, line: 132, type: !719)
!2874 = !DILocation(line: 0, scope: !2868)
!2875 = !DILocation(line: 134, column: 4, scope: !2868)
!2876 = !DILocation(line: 134, column: 45, scope: !2868)
!2877 = !DILocation(line: 135, column: 1, scope: !2868)
!2878 = distinct !DISubprogram(name: "set_char_quoting", scope: !693, file: !693, line: 143, type: !2879, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !2881)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!260, !2844, !4, !260}
!2881 = !{!2882, !2883, !2884, !2885, !2886, !2888, !2889}
!2882 = !DILocalVariable(name: "o", arg: 1, scope: !2878, file: !693, line: 143, type: !2844)
!2883 = !DILocalVariable(name: "c", arg: 2, scope: !2878, file: !693, line: 143, type: !4)
!2884 = !DILocalVariable(name: "i", arg: 3, scope: !2878, file: !693, line: 143, type: !260)
!2885 = !DILocalVariable(name: "uc", scope: !2878, file: !693, line: 145, type: !267)
!2886 = !DILocalVariable(name: "p", scope: !2878, file: !693, line: 146, type: !2887)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!2888 = !DILocalVariable(name: "shift", scope: !2878, file: !693, line: 148, type: !260)
!2889 = !DILocalVariable(name: "r", scope: !2878, file: !693, line: 149, type: !222)
!2890 = !DILocation(line: 0, scope: !2878)
!2891 = !DILocation(line: 147, column: 6, scope: !2878)
!2892 = !DILocation(line: 147, column: 41, scope: !2878)
!2893 = !DILocation(line: 147, column: 62, scope: !2878)
!2894 = !DILocation(line: 147, column: 57, scope: !2878)
!2895 = !DILocation(line: 148, column: 15, scope: !2878)
!2896 = !DILocation(line: 149, column: 21, scope: !2878)
!2897 = !DILocation(line: 149, column: 24, scope: !2878)
!2898 = !DILocation(line: 149, column: 34, scope: !2878)
!2899 = !DILocation(line: 150, column: 19, scope: !2878)
!2900 = !DILocation(line: 150, column: 24, scope: !2878)
!2901 = !DILocation(line: 150, column: 6, scope: !2878)
!2902 = !DILocation(line: 151, column: 3, scope: !2878)
!2903 = distinct !DISubprogram(name: "set_quoting_flags", scope: !693, file: !693, line: 159, type: !2904, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !2906)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!260, !2844, !260}
!2906 = !{!2907, !2908, !2909}
!2907 = !DILocalVariable(name: "o", arg: 1, scope: !2903, file: !693, line: 159, type: !2844)
!2908 = !DILocalVariable(name: "i", arg: 2, scope: !2903, file: !693, line: 159, type: !260)
!2909 = !DILocalVariable(name: "r", scope: !2903, file: !693, line: 163, type: !260)
!2910 = !DILocation(line: 0, scope: !2903)
!2911 = !DILocation(line: 161, column: 8, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2903, file: !693, line: 161, column: 7)
!2913 = !DILocation(line: 161, column: 7, scope: !2903)
!2914 = !DILocation(line: 163, column: 14, scope: !2903)
!2915 = !{!2866, !1101, i64 4}
!2916 = !DILocation(line: 164, column: 12, scope: !2903)
!2917 = !DILocation(line: 165, column: 3, scope: !2903)
!2918 = distinct !DISubprogram(name: "set_custom_quoting", scope: !693, file: !693, line: 169, type: !2919, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{null, !2844, !265, !265}
!2921 = !{!2922, !2923, !2924}
!2922 = !DILocalVariable(name: "o", arg: 1, scope: !2918, file: !693, line: 169, type: !2844)
!2923 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2918, file: !693, line: 170, type: !265)
!2924 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2918, file: !693, line: 170, type: !265)
!2925 = !DILocation(line: 0, scope: !2918)
!2926 = !DILocation(line: 172, column: 8, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2918, file: !693, line: 172, column: 7)
!2928 = !DILocation(line: 172, column: 7, scope: !2918)
!2929 = !DILocation(line: 174, column: 12, scope: !2918)
!2930 = !DILocation(line: 175, column: 8, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2918, file: !693, line: 175, column: 7)
!2932 = !DILocation(line: 175, column: 19, scope: !2931)
!2933 = !DILocation(line: 176, column: 5, scope: !2931)
!2934 = !DILocation(line: 177, column: 6, scope: !2918)
!2935 = !DILocation(line: 177, column: 17, scope: !2918)
!2936 = !{!2866, !1001, i64 40}
!2937 = !DILocation(line: 178, column: 6, scope: !2918)
!2938 = !DILocation(line: 178, column: 18, scope: !2918)
!2939 = !{!2866, !1001, i64 48}
!2940 = !DILocation(line: 179, column: 1, scope: !2918)
!2941 = !DISubprogram(name: "abort", scope: !1206, file: !1206, line: 598, type: !648, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!2942 = distinct !DISubprogram(name: "quotearg_buffer", scope: !693, file: !693, line: 774, type: !2943, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!262, !258, !262, !265, !262, !2858}
!2945 = !{!2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953}
!2946 = !DILocalVariable(name: "buffer", arg: 1, scope: !2942, file: !693, line: 774, type: !258)
!2947 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2942, file: !693, line: 774, type: !262)
!2948 = !DILocalVariable(name: "arg", arg: 3, scope: !2942, file: !693, line: 775, type: !265)
!2949 = !DILocalVariable(name: "argsize", arg: 4, scope: !2942, file: !693, line: 775, type: !262)
!2950 = !DILocalVariable(name: "o", arg: 5, scope: !2942, file: !693, line: 776, type: !2858)
!2951 = !DILocalVariable(name: "p", scope: !2942, file: !693, line: 778, type: !2858)
!2952 = !DILocalVariable(name: "saved_errno", scope: !2942, file: !693, line: 779, type: !260)
!2953 = !DILocalVariable(name: "r", scope: !2942, file: !693, line: 780, type: !262)
!2954 = !DILocation(line: 0, scope: !2942)
!2955 = !DILocation(line: 778, column: 37, scope: !2942)
!2956 = !DILocation(line: 779, column: 21, scope: !2942)
!2957 = !DILocation(line: 781, column: 43, scope: !2942)
!2958 = !DILocation(line: 781, column: 53, scope: !2942)
!2959 = !DILocation(line: 781, column: 63, scope: !2942)
!2960 = !DILocation(line: 782, column: 43, scope: !2942)
!2961 = !DILocation(line: 782, column: 58, scope: !2942)
!2962 = !DILocation(line: 780, column: 14, scope: !2942)
!2963 = !DILocation(line: 783, column: 9, scope: !2942)
!2964 = !DILocation(line: 784, column: 3, scope: !2942)
!2965 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !693, file: !693, line: 251, type: !2966, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !2970)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!262, !258, !262, !265, !262, !719, !260, !2968, !265, !265}
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!2970 = !{!2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2995, !2997, !3000, !3001, !3002, !3003, !3006, !3007, !3010, !3014, !3015, !3023, !3026, !3027, !3029, !3030, !3031, !3032}
!2971 = !DILocalVariable(name: "buffer", arg: 1, scope: !2965, file: !693, line: 251, type: !258)
!2972 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2965, file: !693, line: 251, type: !262)
!2973 = !DILocalVariable(name: "arg", arg: 3, scope: !2965, file: !693, line: 252, type: !265)
!2974 = !DILocalVariable(name: "argsize", arg: 4, scope: !2965, file: !693, line: 252, type: !262)
!2975 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2965, file: !693, line: 253, type: !719)
!2976 = !DILocalVariable(name: "flags", arg: 6, scope: !2965, file: !693, line: 253, type: !260)
!2977 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2965, file: !693, line: 254, type: !2968)
!2978 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2965, file: !693, line: 255, type: !265)
!2979 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2965, file: !693, line: 256, type: !265)
!2980 = !DILocalVariable(name: "unibyte_locale", scope: !2965, file: !693, line: 258, type: !319)
!2981 = !DILocalVariable(name: "len", scope: !2965, file: !693, line: 260, type: !262)
!2982 = !DILocalVariable(name: "orig_buffersize", scope: !2965, file: !693, line: 261, type: !262)
!2983 = !DILocalVariable(name: "quote_string", scope: !2965, file: !693, line: 262, type: !265)
!2984 = !DILocalVariable(name: "quote_string_len", scope: !2965, file: !693, line: 263, type: !262)
!2985 = !DILocalVariable(name: "backslash_escapes", scope: !2965, file: !693, line: 264, type: !319)
!2986 = !DILocalVariable(name: "elide_outer_quotes", scope: !2965, file: !693, line: 265, type: !319)
!2987 = !DILocalVariable(name: "encountered_single_quote", scope: !2965, file: !693, line: 266, type: !319)
!2988 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2965, file: !693, line: 267, type: !319)
!2989 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2965, file: !693, line: 309, type: !319)
!2990 = !DILocalVariable(name: "lq", scope: !2991, file: !693, line: 361, type: !265)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !693, line: 361, column: 11)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !693, line: 360, column: 13)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !693, line: 333, column: 7)
!2994 = distinct !DILexicalBlock(scope: !2965, file: !693, line: 312, column: 5)
!2995 = !DILocalVariable(name: "i", scope: !2996, file: !693, line: 395, type: !262)
!2996 = distinct !DILexicalBlock(scope: !2965, file: !693, line: 395, column: 3)
!2997 = !DILocalVariable(name: "is_right_quote", scope: !2998, file: !693, line: 397, type: !319)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !693, line: 396, column: 5)
!2999 = distinct !DILexicalBlock(scope: !2996, file: !693, line: 395, column: 3)
!3000 = !DILocalVariable(name: "escaping", scope: !2998, file: !693, line: 398, type: !319)
!3001 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2998, file: !693, line: 399, type: !319)
!3002 = !DILocalVariable(name: "c", scope: !2998, file: !693, line: 417, type: !267)
!3003 = !DILocalVariable(name: "m", scope: !3004, file: !693, line: 598, type: !262)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !693, line: 596, column: 11)
!3005 = distinct !DILexicalBlock(scope: !2998, file: !693, line: 419, column: 9)
!3006 = !DILocalVariable(name: "printable", scope: !3004, file: !693, line: 600, type: !319)
!3007 = !DILocalVariable(name: "mbs", scope: !3008, file: !693, line: 609, type: !780)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !693, line: 608, column: 15)
!3009 = distinct !DILexicalBlock(scope: !3004, file: !693, line: 602, column: 17)
!3010 = !DILocalVariable(name: "w", scope: !3011, file: !693, line: 618, type: !673)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !693, line: 617, column: 19)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !693, line: 616, column: 17)
!3013 = distinct !DILexicalBlock(scope: !3008, file: !693, line: 616, column: 17)
!3014 = !DILocalVariable(name: "bytes", scope: !3011, file: !693, line: 619, type: !262)
!3015 = !DILocalVariable(name: "j", scope: !3016, file: !693, line: 648, type: !262)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !693, line: 648, column: 29)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !693, line: 647, column: 27)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !693, line: 645, column: 29)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !693, line: 636, column: 23)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !693, line: 628, column: 30)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !693, line: 623, column: 30)
!3022 = distinct !DILexicalBlock(scope: !3011, file: !693, line: 621, column: 25)
!3023 = !DILocalVariable(name: "ilim", scope: !3024, file: !693, line: 674, type: !262)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !693, line: 671, column: 15)
!3025 = distinct !DILexicalBlock(scope: !3004, file: !693, line: 670, column: 17)
!3026 = !DILabel(scope: !2965, name: "process_input", file: !693, line: 308)
!3027 = !DILabel(scope: !3028, name: "c_and_shell_escape", file: !693, line: 502)
!3028 = distinct !DILexicalBlock(scope: !3005, file: !693, line: 478, column: 9)
!3029 = !DILabel(scope: !3028, name: "c_escape", file: !693, line: 507)
!3030 = !DILabel(scope: !2998, name: "store_escape", file: !693, line: 709)
!3031 = !DILabel(scope: !2998, name: "store_c", file: !693, line: 712)
!3032 = !DILabel(scope: !2965, name: "force_outer_quoting_style", file: !693, line: 753)
!3033 = !DILocation(line: 0, scope: !2965)
!3034 = !DILocation(line: 258, column: 25, scope: !2965)
!3035 = !DILocation(line: 258, column: 36, scope: !2965)
!3036 = !DILocation(line: 267, column: 3, scope: !2965)
!3037 = !DILocation(line: 261, column: 10, scope: !2965)
!3038 = !DILocation(line: 262, column: 15, scope: !2965)
!3039 = !DILocation(line: 263, column: 10, scope: !2965)
!3040 = !DILocation(line: 308, column: 2, scope: !2965)
!3041 = !DILocation(line: 311, column: 3, scope: !2965)
!3042 = !DILocation(line: 318, column: 11, scope: !2994)
!3043 = !DILocation(line: 319, column: 9, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !693, line: 319, column: 9)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !693, line: 319, column: 9)
!3046 = distinct !DILexicalBlock(scope: !2994, file: !693, line: 318, column: 11)
!3047 = !DILocation(line: 319, column: 9, scope: !3045)
!3048 = !DILocation(line: 0, scope: !771, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 357, column: 26, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !693, line: 335, column: 11)
!3051 = distinct !DILexicalBlock(scope: !2993, file: !693, line: 334, column: 13)
!3052 = !DILocation(line: 199, column: 29, scope: !771, inlinedAt: !3049)
!3053 = !DILocation(line: 201, column: 19, scope: !3054, inlinedAt: !3049)
!3054 = distinct !DILexicalBlock(scope: !771, file: !693, line: 201, column: 7)
!3055 = !DILocation(line: 201, column: 7, scope: !771, inlinedAt: !3049)
!3056 = !DILocation(line: 229, column: 3, scope: !771, inlinedAt: !3049)
!3057 = !DILocation(line: 230, column: 3, scope: !771, inlinedAt: !3049)
!3058 = !DILocation(line: 230, column: 13, scope: !771, inlinedAt: !3049)
!3059 = !DILocalVariable(name: "ps", arg: 1, scope: !3060, file: !2812, line: 1135, type: !3063)
!3060 = distinct !DISubprogram(name: "mbszero", scope: !2812, file: !2812, line: 1135, type: !3061, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3064)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{null, !3063}
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!3064 = !{!3059}
!3065 = !DILocation(line: 0, scope: !3060, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 230, column: 18, scope: !771, inlinedAt: !3049)
!3067 = !DILocalVariable(name: "__dest", arg: 1, scope: !3068, file: !2821, line: 57, type: !259)
!3068 = distinct !DISubprogram(name: "memset", scope: !2821, file: !2821, line: 57, type: !2822, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3069)
!3069 = !{!3067, !3070, !3071}
!3070 = !DILocalVariable(name: "__ch", arg: 2, scope: !3068, file: !2821, line: 57, type: !260)
!3071 = !DILocalVariable(name: "__len", arg: 3, scope: !3068, file: !2821, line: 57, type: !262)
!3072 = !DILocation(line: 0, scope: !3068, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 1137, column: 3, scope: !3060, inlinedAt: !3066)
!3074 = !DILocation(line: 59, column: 10, scope: !3068, inlinedAt: !3073)
!3075 = !DILocation(line: 231, column: 7, scope: !3076, inlinedAt: !3049)
!3076 = distinct !DILexicalBlock(scope: !771, file: !693, line: 231, column: 7)
!3077 = !DILocation(line: 231, column: 40, scope: !3076, inlinedAt: !3049)
!3078 = !DILocation(line: 231, column: 45, scope: !3076, inlinedAt: !3049)
!3079 = !DILocation(line: 235, column: 1, scope: !771, inlinedAt: !3049)
!3080 = !DILocation(line: 0, scope: !771, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 358, column: 27, scope: !3050)
!3082 = !DILocation(line: 199, column: 29, scope: !771, inlinedAt: !3081)
!3083 = !DILocation(line: 201, column: 19, scope: !3054, inlinedAt: !3081)
!3084 = !DILocation(line: 201, column: 7, scope: !771, inlinedAt: !3081)
!3085 = !DILocation(line: 229, column: 3, scope: !771, inlinedAt: !3081)
!3086 = !DILocation(line: 230, column: 3, scope: !771, inlinedAt: !3081)
!3087 = !DILocation(line: 230, column: 13, scope: !771, inlinedAt: !3081)
!3088 = !DILocation(line: 0, scope: !3060, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 230, column: 18, scope: !771, inlinedAt: !3081)
!3090 = !DILocation(line: 0, scope: !3068, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 1137, column: 3, scope: !3060, inlinedAt: !3089)
!3092 = !DILocation(line: 59, column: 10, scope: !3068, inlinedAt: !3091)
!3093 = !DILocation(line: 231, column: 7, scope: !3076, inlinedAt: !3081)
!3094 = !DILocation(line: 231, column: 40, scope: !3076, inlinedAt: !3081)
!3095 = !DILocation(line: 231, column: 45, scope: !3076, inlinedAt: !3081)
!3096 = !DILocation(line: 235, column: 1, scope: !771, inlinedAt: !3081)
!3097 = !DILocation(line: 360, column: 13, scope: !2993)
!3098 = !DILocation(line: 0, scope: !2991)
!3099 = !DILocation(line: 361, column: 45, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !2991, file: !693, line: 361, column: 11)
!3101 = !DILocation(line: 361, column: 11, scope: !2991)
!3102 = !DILocation(line: 362, column: 13, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !693, line: 362, column: 13)
!3104 = distinct !DILexicalBlock(scope: !3100, file: !693, line: 362, column: 13)
!3105 = !DILocation(line: 362, column: 13, scope: !3104)
!3106 = !DILocation(line: 361, column: 52, scope: !3100)
!3107 = distinct !{!3107, !3101, !3108, !1147}
!3108 = !DILocation(line: 362, column: 13, scope: !2991)
!3109 = !DILocation(line: 260, column: 10, scope: !2965)
!3110 = !DILocation(line: 365, column: 28, scope: !2993)
!3111 = !DILocation(line: 367, column: 7, scope: !2994)
!3112 = !DILocation(line: 370, column: 7, scope: !2994)
!3113 = !DILocation(line: 376, column: 11, scope: !2994)
!3114 = !DILocation(line: 381, column: 11, scope: !2994)
!3115 = !DILocation(line: 382, column: 9, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !693, line: 382, column: 9)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !693, line: 382, column: 9)
!3118 = distinct !DILexicalBlock(scope: !2994, file: !693, line: 381, column: 11)
!3119 = !DILocation(line: 382, column: 9, scope: !3117)
!3120 = !DILocation(line: 389, column: 7, scope: !2994)
!3121 = !DILocation(line: 392, column: 7, scope: !2994)
!3122 = !DILocation(line: 0, scope: !2996)
!3123 = !DILocation(line: 395, column: 8, scope: !2996)
!3124 = !DILocation(line: 395, scope: !2996)
!3125 = !DILocation(line: 395, column: 34, scope: !2999)
!3126 = !DILocation(line: 395, column: 26, scope: !2999)
!3127 = !DILocation(line: 395, column: 48, scope: !2999)
!3128 = !DILocation(line: 395, column: 55, scope: !2999)
!3129 = !DILocation(line: 395, column: 3, scope: !2996)
!3130 = !DILocation(line: 395, column: 67, scope: !2999)
!3131 = !DILocation(line: 0, scope: !2998)
!3132 = !DILocation(line: 402, column: 11, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !2998, file: !693, line: 401, column: 11)
!3134 = !DILocation(line: 404, column: 17, scope: !3133)
!3135 = !DILocation(line: 405, column: 39, scope: !3133)
!3136 = !DILocation(line: 409, column: 32, scope: !3133)
!3137 = !DILocation(line: 405, column: 19, scope: !3133)
!3138 = !DILocation(line: 405, column: 15, scope: !3133)
!3139 = !DILocation(line: 410, column: 11, scope: !3133)
!3140 = !DILocation(line: 410, column: 25, scope: !3133)
!3141 = !DILocalVariable(name: "__s1", arg: 1, scope: !3142, file: !1113, line: 974, type: !1230)
!3142 = distinct !DISubprogram(name: "memeq", scope: !1113, file: !1113, line: 974, type: !2782, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3143)
!3143 = !{!3141, !3144, !3145}
!3144 = !DILocalVariable(name: "__s2", arg: 2, scope: !3142, file: !1113, line: 974, type: !1230)
!3145 = !DILocalVariable(name: "__n", arg: 3, scope: !3142, file: !1113, line: 974, type: !262)
!3146 = !DILocation(line: 0, scope: !3142, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 410, column: 14, scope: !3133)
!3148 = !DILocation(line: 976, column: 11, scope: !3142, inlinedAt: !3147)
!3149 = !DILocation(line: 976, column: 10, scope: !3142, inlinedAt: !3147)
!3150 = !DILocation(line: 401, column: 11, scope: !2998)
!3151 = !DILocation(line: 417, column: 25, scope: !2998)
!3152 = !DILocation(line: 418, column: 7, scope: !2998)
!3153 = !DILocation(line: 421, column: 15, scope: !3005)
!3154 = !DILocation(line: 423, column: 15, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !693, line: 423, column: 15)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !693, line: 422, column: 13)
!3157 = distinct !DILexicalBlock(scope: !3005, file: !693, line: 421, column: 15)
!3158 = !DILocation(line: 423, column: 15, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3155, file: !693, line: 423, column: 15)
!3160 = !DILocation(line: 423, column: 15, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !693, line: 423, column: 15)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !693, line: 423, column: 15)
!3163 = distinct !DILexicalBlock(scope: !3159, file: !693, line: 423, column: 15)
!3164 = !DILocation(line: 423, column: 15, scope: !3162)
!3165 = !DILocation(line: 423, column: 15, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !693, line: 423, column: 15)
!3167 = distinct !DILexicalBlock(scope: !3163, file: !693, line: 423, column: 15)
!3168 = !DILocation(line: 423, column: 15, scope: !3167)
!3169 = !DILocation(line: 423, column: 15, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !693, line: 423, column: 15)
!3171 = distinct !DILexicalBlock(scope: !3163, file: !693, line: 423, column: 15)
!3172 = !DILocation(line: 423, column: 15, scope: !3171)
!3173 = !DILocation(line: 423, column: 15, scope: !3163)
!3174 = !DILocation(line: 423, column: 15, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !693, line: 423, column: 15)
!3176 = distinct !DILexicalBlock(scope: !3155, file: !693, line: 423, column: 15)
!3177 = !DILocation(line: 423, column: 15, scope: !3176)
!3178 = !DILocation(line: 431, column: 19, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3156, file: !693, line: 430, column: 19)
!3180 = !DILocation(line: 431, column: 24, scope: !3179)
!3181 = !DILocation(line: 431, column: 28, scope: !3179)
!3182 = !DILocation(line: 431, column: 38, scope: !3179)
!3183 = !DILocation(line: 431, column: 48, scope: !3179)
!3184 = !DILocation(line: 431, column: 59, scope: !3179)
!3185 = !DILocation(line: 433, column: 19, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !693, line: 433, column: 19)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !693, line: 433, column: 19)
!3188 = distinct !DILexicalBlock(scope: !3179, file: !693, line: 432, column: 17)
!3189 = !DILocation(line: 433, column: 19, scope: !3187)
!3190 = !DILocation(line: 434, column: 19, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !693, line: 434, column: 19)
!3192 = distinct !DILexicalBlock(scope: !3188, file: !693, line: 434, column: 19)
!3193 = !DILocation(line: 434, column: 19, scope: !3192)
!3194 = !DILocation(line: 435, column: 17, scope: !3188)
!3195 = !DILocation(line: 442, column: 20, scope: !3157)
!3196 = !DILocation(line: 447, column: 11, scope: !3005)
!3197 = !DILocation(line: 450, column: 19, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3005, file: !693, line: 448, column: 13)
!3199 = !DILocation(line: 456, column: 19, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3198, file: !693, line: 455, column: 19)
!3201 = !DILocation(line: 456, column: 24, scope: !3200)
!3202 = !DILocation(line: 456, column: 28, scope: !3200)
!3203 = !DILocation(line: 456, column: 38, scope: !3200)
!3204 = !DILocation(line: 456, column: 47, scope: !3200)
!3205 = !DILocation(line: 456, column: 41, scope: !3200)
!3206 = !DILocation(line: 456, column: 52, scope: !3200)
!3207 = !DILocation(line: 455, column: 19, scope: !3198)
!3208 = !DILocation(line: 457, column: 25, scope: !3200)
!3209 = !DILocation(line: 457, column: 17, scope: !3200)
!3210 = !DILocation(line: 464, column: 25, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3200, file: !693, line: 458, column: 19)
!3212 = !DILocation(line: 468, column: 21, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !693, line: 468, column: 21)
!3214 = distinct !DILexicalBlock(scope: !3211, file: !693, line: 468, column: 21)
!3215 = !DILocation(line: 468, column: 21, scope: !3214)
!3216 = !DILocation(line: 469, column: 21, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !693, line: 469, column: 21)
!3218 = distinct !DILexicalBlock(scope: !3211, file: !693, line: 469, column: 21)
!3219 = !DILocation(line: 469, column: 21, scope: !3218)
!3220 = !DILocation(line: 470, column: 21, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !693, line: 470, column: 21)
!3222 = distinct !DILexicalBlock(scope: !3211, file: !693, line: 470, column: 21)
!3223 = !DILocation(line: 470, column: 21, scope: !3222)
!3224 = !DILocation(line: 471, column: 21, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !693, line: 471, column: 21)
!3226 = distinct !DILexicalBlock(scope: !3211, file: !693, line: 471, column: 21)
!3227 = !DILocation(line: 471, column: 21, scope: !3226)
!3228 = !DILocation(line: 472, column: 21, scope: !3211)
!3229 = !DILocation(line: 482, column: 33, scope: !3028)
!3230 = !DILocation(line: 483, column: 33, scope: !3028)
!3231 = !DILocation(line: 485, column: 33, scope: !3028)
!3232 = !DILocation(line: 486, column: 33, scope: !3028)
!3233 = !DILocation(line: 487, column: 33, scope: !3028)
!3234 = !DILocation(line: 490, column: 17, scope: !3028)
!3235 = !DILocation(line: 492, column: 21, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !693, line: 491, column: 15)
!3237 = distinct !DILexicalBlock(scope: !3028, file: !693, line: 490, column: 17)
!3238 = !DILocation(line: 499, column: 35, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3028, file: !693, line: 499, column: 17)
!3240 = !DILocation(line: 0, scope: !3028)
!3241 = !DILocation(line: 502, column: 11, scope: !3028)
!3242 = !DILocation(line: 504, column: 17, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3028, file: !693, line: 503, column: 17)
!3244 = !DILocation(line: 507, column: 11, scope: !3028)
!3245 = !DILocation(line: 508, column: 17, scope: !3028)
!3246 = !DILocation(line: 517, column: 15, scope: !3005)
!3247 = !DILocation(line: 517, column: 40, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3005, file: !693, line: 517, column: 15)
!3249 = !DILocation(line: 517, column: 47, scope: !3248)
!3250 = !DILocation(line: 517, column: 18, scope: !3248)
!3251 = !DILocation(line: 521, column: 17, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3005, file: !693, line: 521, column: 15)
!3253 = !DILocation(line: 521, column: 15, scope: !3005)
!3254 = !DILocation(line: 525, column: 11, scope: !3005)
!3255 = !DILocation(line: 537, column: 15, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3005, file: !693, line: 536, column: 15)
!3257 = !DILocation(line: 536, column: 15, scope: !3005)
!3258 = !DILocation(line: 544, column: 15, scope: !3005)
!3259 = !DILocation(line: 546, column: 19, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !693, line: 545, column: 13)
!3261 = distinct !DILexicalBlock(scope: !3005, file: !693, line: 544, column: 15)
!3262 = !DILocation(line: 549, column: 19, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3260, file: !693, line: 549, column: 19)
!3264 = !DILocation(line: 549, column: 30, scope: !3263)
!3265 = !DILocation(line: 558, column: 15, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !693, line: 558, column: 15)
!3267 = distinct !DILexicalBlock(scope: !3260, file: !693, line: 558, column: 15)
!3268 = !DILocation(line: 558, column: 15, scope: !3267)
!3269 = !DILocation(line: 559, column: 15, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !693, line: 559, column: 15)
!3271 = distinct !DILexicalBlock(scope: !3260, file: !693, line: 559, column: 15)
!3272 = !DILocation(line: 559, column: 15, scope: !3271)
!3273 = !DILocation(line: 560, column: 15, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !693, line: 560, column: 15)
!3275 = distinct !DILexicalBlock(scope: !3260, file: !693, line: 560, column: 15)
!3276 = !DILocation(line: 560, column: 15, scope: !3275)
!3277 = !DILocation(line: 562, column: 13, scope: !3260)
!3278 = !DILocation(line: 602, column: 17, scope: !3004)
!3279 = !DILocation(line: 0, scope: !3004)
!3280 = !DILocation(line: 605, column: 29, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3009, file: !693, line: 603, column: 15)
!3282 = !DILocation(line: 605, column: 41, scope: !3281)
!3283 = !DILocation(line: 606, column: 15, scope: !3281)
!3284 = !DILocation(line: 609, column: 17, scope: !3008)
!3285 = !DILocation(line: 609, column: 27, scope: !3008)
!3286 = !DILocation(line: 0, scope: !3060, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 609, column: 32, scope: !3008)
!3288 = !DILocation(line: 0, scope: !3068, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 1137, column: 3, scope: !3060, inlinedAt: !3287)
!3290 = !DILocation(line: 59, column: 10, scope: !3068, inlinedAt: !3289)
!3291 = !DILocation(line: 613, column: 29, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3008, file: !693, line: 613, column: 21)
!3293 = !DILocation(line: 613, column: 21, scope: !3008)
!3294 = !DILocation(line: 614, column: 29, scope: !3292)
!3295 = !DILocation(line: 614, column: 19, scope: !3292)
!3296 = !DILocation(line: 618, column: 21, scope: !3011)
!3297 = !DILocation(line: 620, column: 54, scope: !3011)
!3298 = !DILocation(line: 0, scope: !3011)
!3299 = !DILocation(line: 619, column: 36, scope: !3011)
!3300 = !DILocation(line: 621, column: 25, scope: !3011)
!3301 = !DILocation(line: 631, column: 38, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3020, file: !693, line: 629, column: 23)
!3303 = !DILocation(line: 631, column: 48, scope: !3302)
!3304 = !DILocation(line: 626, column: 25, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3021, file: !693, line: 624, column: 23)
!3306 = !DILocation(line: 631, column: 51, scope: !3302)
!3307 = !DILocation(line: 631, column: 25, scope: !3302)
!3308 = !DILocation(line: 632, column: 28, scope: !3302)
!3309 = !DILocation(line: 631, column: 34, scope: !3302)
!3310 = distinct !{!3310, !3307, !3308, !1147}
!3311 = !DILocation(line: 646, column: 29, scope: !3018)
!3312 = !DILocation(line: 0, scope: !3016)
!3313 = !DILocation(line: 649, column: 49, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3016, file: !693, line: 648, column: 29)
!3315 = !DILocation(line: 649, column: 39, scope: !3314)
!3316 = !DILocation(line: 649, column: 31, scope: !3314)
!3317 = !DILocation(line: 648, column: 60, scope: !3314)
!3318 = !DILocation(line: 648, column: 50, scope: !3314)
!3319 = !DILocation(line: 648, column: 29, scope: !3016)
!3320 = distinct !{!3320, !3319, !3321, !1147}
!3321 = !DILocation(line: 654, column: 33, scope: !3016)
!3322 = !DILocation(line: 657, column: 43, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3019, file: !693, line: 657, column: 29)
!3324 = !DILocalVariable(name: "wc", arg: 1, scope: !3325, file: !3326, line: 865, type: !3329)
!3325 = distinct !DISubprogram(name: "c32isprint", scope: !3326, file: !3326, line: 865, type: !3327, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3331)
!3326 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!260, !3329}
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3330, line: 20, baseType: !222)
!3330 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3331 = !{!3324}
!3332 = !DILocation(line: 0, scope: !3325, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 657, column: 31, scope: !3323)
!3334 = !DILocation(line: 871, column: 10, scope: !3325, inlinedAt: !3333)
!3335 = !DILocation(line: 657, column: 31, scope: !3323)
!3336 = !DILocation(line: 664, column: 23, scope: !3011)
!3337 = !DILocation(line: 665, column: 19, scope: !3012)
!3338 = !DILocation(line: 666, column: 15, scope: !3009)
!3339 = !DILocation(line: 753, column: 2, scope: !2965)
!3340 = !DILocation(line: 756, column: 51, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !2965, file: !693, line: 756, column: 7)
!3342 = !DILocation(line: 0, scope: !3009)
!3343 = !DILocation(line: 670, column: 19, scope: !3025)
!3344 = !DILocation(line: 670, column: 23, scope: !3025)
!3345 = !DILocation(line: 674, column: 33, scope: !3024)
!3346 = !DILocation(line: 0, scope: !3024)
!3347 = !DILocation(line: 676, column: 17, scope: !3024)
!3348 = !DILocation(line: 398, column: 12, scope: !2998)
!3349 = !DILocation(line: 678, column: 43, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !693, line: 678, column: 25)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !693, line: 677, column: 19)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !693, line: 676, column: 17)
!3353 = distinct !DILexicalBlock(scope: !3024, file: !693, line: 676, column: 17)
!3354 = !DILocation(line: 680, column: 25, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !693, line: 680, column: 25)
!3356 = distinct !DILexicalBlock(scope: !3350, file: !693, line: 679, column: 23)
!3357 = !DILocation(line: 680, column: 25, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3355, file: !693, line: 680, column: 25)
!3359 = !DILocation(line: 680, column: 25, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !693, line: 680, column: 25)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !693, line: 680, column: 25)
!3362 = distinct !DILexicalBlock(scope: !3358, file: !693, line: 680, column: 25)
!3363 = !DILocation(line: 680, column: 25, scope: !3361)
!3364 = !DILocation(line: 680, column: 25, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !693, line: 680, column: 25)
!3366 = distinct !DILexicalBlock(scope: !3362, file: !693, line: 680, column: 25)
!3367 = !DILocation(line: 680, column: 25, scope: !3366)
!3368 = !DILocation(line: 680, column: 25, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !693, line: 680, column: 25)
!3370 = distinct !DILexicalBlock(scope: !3362, file: !693, line: 680, column: 25)
!3371 = !DILocation(line: 680, column: 25, scope: !3370)
!3372 = !DILocation(line: 680, column: 25, scope: !3362)
!3373 = !DILocation(line: 680, column: 25, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !693, line: 680, column: 25)
!3375 = distinct !DILexicalBlock(scope: !3355, file: !693, line: 680, column: 25)
!3376 = !DILocation(line: 680, column: 25, scope: !3375)
!3377 = !DILocation(line: 681, column: 25, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !693, line: 681, column: 25)
!3379 = distinct !DILexicalBlock(scope: !3356, file: !693, line: 681, column: 25)
!3380 = !DILocation(line: 681, column: 25, scope: !3379)
!3381 = !DILocation(line: 682, column: 25, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !693, line: 682, column: 25)
!3383 = distinct !DILexicalBlock(scope: !3356, file: !693, line: 682, column: 25)
!3384 = !DILocation(line: 682, column: 25, scope: !3383)
!3385 = !DILocation(line: 683, column: 38, scope: !3356)
!3386 = !DILocation(line: 683, column: 33, scope: !3356)
!3387 = !DILocation(line: 684, column: 23, scope: !3356)
!3388 = !DILocation(line: 685, column: 30, scope: !3350)
!3389 = !DILocation(line: 687, column: 25, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !693, line: 687, column: 25)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !693, line: 687, column: 25)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !693, line: 686, column: 23)
!3393 = distinct !DILexicalBlock(scope: !3350, file: !693, line: 685, column: 30)
!3394 = !DILocation(line: 687, column: 25, scope: !3391)
!3395 = !DILocation(line: 689, column: 23, scope: !3392)
!3396 = !DILocation(line: 690, column: 35, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3351, file: !693, line: 690, column: 25)
!3398 = !DILocation(line: 690, column: 30, scope: !3397)
!3399 = !DILocation(line: 690, column: 25, scope: !3351)
!3400 = !DILocation(line: 692, column: 21, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !693, line: 692, column: 21)
!3402 = distinct !DILexicalBlock(scope: !3351, file: !693, line: 692, column: 21)
!3403 = !DILocation(line: 692, column: 21, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !693, line: 692, column: 21)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !693, line: 692, column: 21)
!3406 = distinct !DILexicalBlock(scope: !3401, file: !693, line: 692, column: 21)
!3407 = !DILocation(line: 692, column: 21, scope: !3405)
!3408 = !DILocation(line: 692, column: 21, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !693, line: 692, column: 21)
!3410 = distinct !DILexicalBlock(scope: !3406, file: !693, line: 692, column: 21)
!3411 = !DILocation(line: 692, column: 21, scope: !3410)
!3412 = !DILocation(line: 692, column: 21, scope: !3406)
!3413 = !DILocation(line: 0, scope: !3351)
!3414 = !DILocation(line: 693, column: 21, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !693, line: 693, column: 21)
!3416 = distinct !DILexicalBlock(scope: !3351, file: !693, line: 693, column: 21)
!3417 = !DILocation(line: 693, column: 21, scope: !3416)
!3418 = !DILocation(line: 694, column: 25, scope: !3351)
!3419 = !DILocation(line: 676, column: 17, scope: !3352)
!3420 = distinct !{!3420, !3421, !3422}
!3421 = !DILocation(line: 676, column: 17, scope: !3353)
!3422 = !DILocation(line: 695, column: 19, scope: !3353)
!3423 = !DILocation(line: 409, column: 30, scope: !3133)
!3424 = !DILocation(line: 702, column: 34, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !2998, file: !693, line: 702, column: 11)
!3426 = !DILocation(line: 704, column: 14, scope: !3425)
!3427 = !DILocation(line: 705, column: 14, scope: !3425)
!3428 = !DILocation(line: 705, column: 35, scope: !3425)
!3429 = !DILocation(line: 705, column: 17, scope: !3425)
!3430 = !DILocation(line: 705, column: 47, scope: !3425)
!3431 = !DILocation(line: 705, column: 65, scope: !3425)
!3432 = !DILocation(line: 706, column: 11, scope: !3425)
!3433 = !DILocation(line: 702, column: 11, scope: !2998)
!3434 = !DILocation(line: 395, column: 15, scope: !2996)
!3435 = !DILocation(line: 709, column: 5, scope: !2998)
!3436 = !DILocation(line: 710, column: 7, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !2998, file: !693, line: 710, column: 7)
!3438 = !DILocation(line: 710, column: 7, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3437, file: !693, line: 710, column: 7)
!3440 = !DILocation(line: 710, column: 7, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !693, line: 710, column: 7)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !693, line: 710, column: 7)
!3443 = distinct !DILexicalBlock(scope: !3439, file: !693, line: 710, column: 7)
!3444 = !DILocation(line: 710, column: 7, scope: !3442)
!3445 = !DILocation(line: 710, column: 7, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !693, line: 710, column: 7)
!3447 = distinct !DILexicalBlock(scope: !3443, file: !693, line: 710, column: 7)
!3448 = !DILocation(line: 710, column: 7, scope: !3447)
!3449 = !DILocation(line: 710, column: 7, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !693, line: 710, column: 7)
!3451 = distinct !DILexicalBlock(scope: !3443, file: !693, line: 710, column: 7)
!3452 = !DILocation(line: 710, column: 7, scope: !3451)
!3453 = !DILocation(line: 710, column: 7, scope: !3443)
!3454 = !DILocation(line: 710, column: 7, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3456, file: !693, line: 710, column: 7)
!3456 = distinct !DILexicalBlock(scope: !3437, file: !693, line: 710, column: 7)
!3457 = !DILocation(line: 710, column: 7, scope: !3456)
!3458 = !DILocation(line: 712, column: 5, scope: !2998)
!3459 = !DILocation(line: 713, column: 7, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !693, line: 713, column: 7)
!3461 = distinct !DILexicalBlock(scope: !2998, file: !693, line: 713, column: 7)
!3462 = !DILocation(line: 417, column: 21, scope: !2998)
!3463 = !DILocation(line: 713, column: 7, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !693, line: 713, column: 7)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !693, line: 713, column: 7)
!3466 = distinct !DILexicalBlock(scope: !3460, file: !693, line: 713, column: 7)
!3467 = !DILocation(line: 713, column: 7, scope: !3465)
!3468 = !DILocation(line: 713, column: 7, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !693, line: 713, column: 7)
!3470 = distinct !DILexicalBlock(scope: !3466, file: !693, line: 713, column: 7)
!3471 = !DILocation(line: 713, column: 7, scope: !3470)
!3472 = !DILocation(line: 713, column: 7, scope: !3466)
!3473 = !DILocation(line: 714, column: 7, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !693, line: 714, column: 7)
!3475 = distinct !DILexicalBlock(scope: !2998, file: !693, line: 714, column: 7)
!3476 = !DILocation(line: 714, column: 7, scope: !3475)
!3477 = !DILocation(line: 716, column: 11, scope: !2998)
!3478 = !DILocation(line: 718, column: 5, scope: !2999)
!3479 = !DILocation(line: 395, column: 82, scope: !2999)
!3480 = !DILocation(line: 395, column: 3, scope: !2999)
!3481 = distinct !{!3481, !3129, !3482, !1147}
!3482 = !DILocation(line: 718, column: 5, scope: !2996)
!3483 = !DILocation(line: 720, column: 11, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !2965, file: !693, line: 720, column: 7)
!3485 = !DILocation(line: 720, column: 16, scope: !3484)
!3486 = !DILocation(line: 728, column: 51, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !2965, file: !693, line: 728, column: 7)
!3488 = !DILocation(line: 731, column: 11, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3487, file: !693, line: 730, column: 5)
!3490 = !DILocation(line: 732, column: 16, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3489, file: !693, line: 731, column: 11)
!3492 = !DILocation(line: 732, column: 9, scope: !3491)
!3493 = !DILocation(line: 736, column: 18, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3491, file: !693, line: 736, column: 16)
!3495 = !DILocation(line: 736, column: 29, scope: !3494)
!3496 = !DILocation(line: 745, column: 7, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !2965, file: !693, line: 745, column: 7)
!3498 = !DILocation(line: 745, column: 20, scope: !3497)
!3499 = !DILocation(line: 746, column: 12, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3501, file: !693, line: 746, column: 5)
!3501 = distinct !DILexicalBlock(scope: !3497, file: !693, line: 746, column: 5)
!3502 = !DILocation(line: 746, column: 5, scope: !3501)
!3503 = !DILocation(line: 747, column: 7, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !693, line: 747, column: 7)
!3505 = distinct !DILexicalBlock(scope: !3500, file: !693, line: 747, column: 7)
!3506 = !DILocation(line: 747, column: 7, scope: !3505)
!3507 = !DILocation(line: 746, column: 39, scope: !3500)
!3508 = distinct !{!3508, !3502, !3509, !1147}
!3509 = !DILocation(line: 747, column: 7, scope: !3501)
!3510 = !DILocation(line: 749, column: 11, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !2965, file: !693, line: 749, column: 7)
!3512 = !DILocation(line: 749, column: 7, scope: !2965)
!3513 = !DILocation(line: 750, column: 5, scope: !3511)
!3514 = !DILocation(line: 750, column: 17, scope: !3511)
!3515 = !DILocation(line: 756, column: 21, scope: !3341)
!3516 = !DILocation(line: 760, column: 42, scope: !2965)
!3517 = !DILocation(line: 758, column: 10, scope: !2965)
!3518 = !DILocation(line: 758, column: 3, scope: !2965)
!3519 = !DILocation(line: 762, column: 1, scope: !2965)
!3520 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1206, file: !1206, line: 98, type: !3521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!262}
!3523 = !DISubprogram(name: "iswprint", scope: !3524, file: !3524, line: 120, type: !3327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!3524 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3525 = distinct !DISubprogram(name: "quotearg_alloc", scope: !693, file: !693, line: 788, type: !3526, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3528)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!258, !265, !262, !2858}
!3528 = !{!3529, !3530, !3531}
!3529 = !DILocalVariable(name: "arg", arg: 1, scope: !3525, file: !693, line: 788, type: !265)
!3530 = !DILocalVariable(name: "argsize", arg: 2, scope: !3525, file: !693, line: 788, type: !262)
!3531 = !DILocalVariable(name: "o", arg: 3, scope: !3525, file: !693, line: 789, type: !2858)
!3532 = !DILocation(line: 0, scope: !3525)
!3533 = !DILocalVariable(name: "arg", arg: 1, scope: !3534, file: !693, line: 801, type: !265)
!3534 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !693, file: !693, line: 801, type: !3535, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3537)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!258, !265, !262, !935, !2858}
!3537 = !{!3533, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545}
!3538 = !DILocalVariable(name: "argsize", arg: 2, scope: !3534, file: !693, line: 801, type: !262)
!3539 = !DILocalVariable(name: "size", arg: 3, scope: !3534, file: !693, line: 801, type: !935)
!3540 = !DILocalVariable(name: "o", arg: 4, scope: !3534, file: !693, line: 802, type: !2858)
!3541 = !DILocalVariable(name: "p", scope: !3534, file: !693, line: 804, type: !2858)
!3542 = !DILocalVariable(name: "saved_errno", scope: !3534, file: !693, line: 805, type: !260)
!3543 = !DILocalVariable(name: "flags", scope: !3534, file: !693, line: 807, type: !260)
!3544 = !DILocalVariable(name: "bufsize", scope: !3534, file: !693, line: 808, type: !262)
!3545 = !DILocalVariable(name: "buf", scope: !3534, file: !693, line: 812, type: !258)
!3546 = !DILocation(line: 0, scope: !3534, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 791, column: 10, scope: !3525)
!3548 = !DILocation(line: 804, column: 37, scope: !3534, inlinedAt: !3547)
!3549 = !DILocation(line: 805, column: 21, scope: !3534, inlinedAt: !3547)
!3550 = !DILocation(line: 807, column: 18, scope: !3534, inlinedAt: !3547)
!3551 = !DILocation(line: 807, column: 24, scope: !3534, inlinedAt: !3547)
!3552 = !DILocation(line: 808, column: 72, scope: !3534, inlinedAt: !3547)
!3553 = !DILocation(line: 809, column: 56, scope: !3534, inlinedAt: !3547)
!3554 = !DILocation(line: 810, column: 49, scope: !3534, inlinedAt: !3547)
!3555 = !DILocation(line: 811, column: 49, scope: !3534, inlinedAt: !3547)
!3556 = !DILocation(line: 808, column: 20, scope: !3534, inlinedAt: !3547)
!3557 = !DILocation(line: 811, column: 62, scope: !3534, inlinedAt: !3547)
!3558 = !DILocation(line: 812, column: 15, scope: !3534, inlinedAt: !3547)
!3559 = !DILocation(line: 813, column: 60, scope: !3534, inlinedAt: !3547)
!3560 = !DILocation(line: 815, column: 32, scope: !3534, inlinedAt: !3547)
!3561 = !DILocation(line: 815, column: 47, scope: !3534, inlinedAt: !3547)
!3562 = !DILocation(line: 813, column: 3, scope: !3534, inlinedAt: !3547)
!3563 = !DILocation(line: 816, column: 9, scope: !3534, inlinedAt: !3547)
!3564 = !DILocation(line: 791, column: 3, scope: !3525)
!3565 = !DILocation(line: 0, scope: !3534)
!3566 = !DILocation(line: 804, column: 37, scope: !3534)
!3567 = !DILocation(line: 805, column: 21, scope: !3534)
!3568 = !DILocation(line: 807, column: 18, scope: !3534)
!3569 = !DILocation(line: 807, column: 27, scope: !3534)
!3570 = !DILocation(line: 807, column: 24, scope: !3534)
!3571 = !DILocation(line: 808, column: 72, scope: !3534)
!3572 = !DILocation(line: 809, column: 56, scope: !3534)
!3573 = !DILocation(line: 810, column: 49, scope: !3534)
!3574 = !DILocation(line: 811, column: 49, scope: !3534)
!3575 = !DILocation(line: 808, column: 20, scope: !3534)
!3576 = !DILocation(line: 811, column: 62, scope: !3534)
!3577 = !DILocation(line: 812, column: 15, scope: !3534)
!3578 = !DILocation(line: 813, column: 60, scope: !3534)
!3579 = !DILocation(line: 815, column: 32, scope: !3534)
!3580 = !DILocation(line: 815, column: 47, scope: !3534)
!3581 = !DILocation(line: 813, column: 3, scope: !3534)
!3582 = !DILocation(line: 816, column: 9, scope: !3534)
!3583 = !DILocation(line: 817, column: 7, scope: !3534)
!3584 = !DILocation(line: 818, column: 11, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3534, file: !693, line: 817, column: 7)
!3586 = !{!1655, !1655, i64 0}
!3587 = !DILocation(line: 818, column: 5, scope: !3585)
!3588 = !DILocation(line: 819, column: 3, scope: !3534)
!3589 = distinct !DISubprogram(name: "quotearg_free", scope: !693, file: !693, line: 837, type: !648, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3590)
!3590 = !{!3591, !3592}
!3591 = !DILocalVariable(name: "sv", scope: !3589, file: !693, line: 839, type: !794)
!3592 = !DILocalVariable(name: "i", scope: !3593, file: !693, line: 840, type: !260)
!3593 = distinct !DILexicalBlock(scope: !3589, file: !693, line: 840, column: 3)
!3594 = !DILocation(line: 839, column: 24, scope: !3589)
!3595 = !DILocation(line: 0, scope: !3589)
!3596 = !DILocation(line: 0, scope: !3593)
!3597 = !DILocation(line: 840, column: 21, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3593, file: !693, line: 840, column: 3)
!3599 = !DILocation(line: 840, column: 3, scope: !3593)
!3600 = !DILocation(line: 842, column: 13, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3589, file: !693, line: 842, column: 7)
!3602 = !{!3603, !1001, i64 8}
!3603 = !{!"slotvec", !1655, i64 0, !1001, i64 8}
!3604 = !DILocation(line: 842, column: 17, scope: !3601)
!3605 = !DILocation(line: 842, column: 7, scope: !3589)
!3606 = !DILocation(line: 841, column: 17, scope: !3598)
!3607 = !DILocation(line: 841, column: 5, scope: !3598)
!3608 = !DILocation(line: 840, column: 32, scope: !3598)
!3609 = distinct !{!3609, !3599, !3610, !1147}
!3610 = !DILocation(line: 841, column: 20, scope: !3593)
!3611 = !DILocation(line: 844, column: 7, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3601, file: !693, line: 843, column: 5)
!3613 = !DILocation(line: 845, column: 21, scope: !3612)
!3614 = !{!3603, !1655, i64 0}
!3615 = !DILocation(line: 846, column: 20, scope: !3612)
!3616 = !DILocation(line: 847, column: 5, scope: !3612)
!3617 = !DILocation(line: 848, column: 10, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3589, file: !693, line: 848, column: 7)
!3619 = !DILocation(line: 848, column: 7, scope: !3589)
!3620 = !DILocation(line: 850, column: 7, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3618, file: !693, line: 849, column: 5)
!3622 = !DILocation(line: 851, column: 15, scope: !3621)
!3623 = !DILocation(line: 852, column: 5, scope: !3621)
!3624 = !DILocation(line: 853, column: 10, scope: !3589)
!3625 = !DILocation(line: 854, column: 1, scope: !3589)
!3626 = !DISubprogram(name: "free", scope: !2812, file: !2812, line: 786, type: !3627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{null, !259}
!3629 = distinct !DISubprogram(name: "quotearg_n", scope: !693, file: !693, line: 919, type: !1199, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3630)
!3630 = !{!3631, !3632}
!3631 = !DILocalVariable(name: "n", arg: 1, scope: !3629, file: !693, line: 919, type: !260)
!3632 = !DILocalVariable(name: "arg", arg: 2, scope: !3629, file: !693, line: 919, type: !265)
!3633 = !DILocation(line: 0, scope: !3629)
!3634 = !DILocation(line: 921, column: 10, scope: !3629)
!3635 = !DILocation(line: 921, column: 3, scope: !3629)
!3636 = distinct !DISubprogram(name: "quotearg_n_options", scope: !693, file: !693, line: 866, type: !3637, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3639)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!258, !260, !265, !262, !2858}
!3639 = !{!3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3650, !3651, !3653, !3654, !3655}
!3640 = !DILocalVariable(name: "n", arg: 1, scope: !3636, file: !693, line: 866, type: !260)
!3641 = !DILocalVariable(name: "arg", arg: 2, scope: !3636, file: !693, line: 866, type: !265)
!3642 = !DILocalVariable(name: "argsize", arg: 3, scope: !3636, file: !693, line: 866, type: !262)
!3643 = !DILocalVariable(name: "options", arg: 4, scope: !3636, file: !693, line: 867, type: !2858)
!3644 = !DILocalVariable(name: "saved_errno", scope: !3636, file: !693, line: 869, type: !260)
!3645 = !DILocalVariable(name: "sv", scope: !3636, file: !693, line: 871, type: !794)
!3646 = !DILocalVariable(name: "nslots_max", scope: !3636, file: !693, line: 873, type: !260)
!3647 = !DILocalVariable(name: "preallocated", scope: !3648, file: !693, line: 879, type: !319)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !693, line: 878, column: 5)
!3649 = distinct !DILexicalBlock(scope: !3636, file: !693, line: 877, column: 7)
!3650 = !DILocalVariable(name: "new_nslots", scope: !3648, file: !693, line: 880, type: !948)
!3651 = !DILocalVariable(name: "size", scope: !3652, file: !693, line: 891, type: !262)
!3652 = distinct !DILexicalBlock(scope: !3636, file: !693, line: 890, column: 3)
!3653 = !DILocalVariable(name: "val", scope: !3652, file: !693, line: 892, type: !258)
!3654 = !DILocalVariable(name: "flags", scope: !3652, file: !693, line: 894, type: !260)
!3655 = !DILocalVariable(name: "qsize", scope: !3652, file: !693, line: 895, type: !262)
!3656 = !DILocation(line: 0, scope: !3636)
!3657 = !DILocation(line: 869, column: 21, scope: !3636)
!3658 = !DILocation(line: 871, column: 24, scope: !3636)
!3659 = !DILocation(line: 874, column: 17, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3636, file: !693, line: 874, column: 7)
!3661 = !DILocation(line: 875, column: 5, scope: !3660)
!3662 = !DILocation(line: 877, column: 7, scope: !3649)
!3663 = !DILocation(line: 877, column: 14, scope: !3649)
!3664 = !DILocation(line: 877, column: 7, scope: !3636)
!3665 = !DILocation(line: 879, column: 31, scope: !3648)
!3666 = !DILocation(line: 0, scope: !3648)
!3667 = !DILocation(line: 880, column: 7, scope: !3648)
!3668 = !DILocation(line: 880, column: 26, scope: !3648)
!3669 = !DILocation(line: 880, column: 13, scope: !3648)
!3670 = !DILocation(line: 882, column: 31, scope: !3648)
!3671 = !DILocation(line: 883, column: 33, scope: !3648)
!3672 = !DILocation(line: 883, column: 42, scope: !3648)
!3673 = !DILocation(line: 883, column: 31, scope: !3648)
!3674 = !DILocation(line: 882, column: 22, scope: !3648)
!3675 = !DILocation(line: 882, column: 15, scope: !3648)
!3676 = !DILocation(line: 884, column: 11, scope: !3648)
!3677 = !DILocation(line: 885, column: 15, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3648, file: !693, line: 884, column: 11)
!3679 = !{i64 0, i64 8, !3586, i64 8, i64 8, !1000}
!3680 = !DILocation(line: 885, column: 9, scope: !3678)
!3681 = !DILocation(line: 886, column: 20, scope: !3648)
!3682 = !DILocation(line: 886, column: 18, scope: !3648)
!3683 = !DILocation(line: 886, column: 32, scope: !3648)
!3684 = !DILocation(line: 886, column: 43, scope: !3648)
!3685 = !DILocation(line: 886, column: 53, scope: !3648)
!3686 = !DILocation(line: 0, scope: !3068, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 886, column: 7, scope: !3648)
!3688 = !DILocation(line: 59, column: 10, scope: !3068, inlinedAt: !3687)
!3689 = !DILocation(line: 887, column: 16, scope: !3648)
!3690 = !DILocation(line: 887, column: 14, scope: !3648)
!3691 = !DILocation(line: 888, column: 5, scope: !3649)
!3692 = !DILocation(line: 888, column: 5, scope: !3648)
!3693 = !DILocation(line: 891, column: 19, scope: !3652)
!3694 = !DILocation(line: 891, column: 25, scope: !3652)
!3695 = !DILocation(line: 0, scope: !3652)
!3696 = !DILocation(line: 892, column: 23, scope: !3652)
!3697 = !DILocation(line: 894, column: 26, scope: !3652)
!3698 = !DILocation(line: 894, column: 32, scope: !3652)
!3699 = !DILocation(line: 896, column: 55, scope: !3652)
!3700 = !DILocation(line: 897, column: 55, scope: !3652)
!3701 = !DILocation(line: 898, column: 55, scope: !3652)
!3702 = !DILocation(line: 899, column: 55, scope: !3652)
!3703 = !DILocation(line: 895, column: 20, scope: !3652)
!3704 = !DILocation(line: 901, column: 14, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3652, file: !693, line: 901, column: 9)
!3706 = !DILocation(line: 901, column: 9, scope: !3652)
!3707 = !DILocation(line: 903, column: 35, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3705, file: !693, line: 902, column: 7)
!3709 = !DILocation(line: 903, column: 20, scope: !3708)
!3710 = !DILocation(line: 904, column: 17, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3708, file: !693, line: 904, column: 13)
!3712 = !DILocation(line: 904, column: 13, scope: !3708)
!3713 = !DILocation(line: 905, column: 11, scope: !3711)
!3714 = !DILocation(line: 906, column: 27, scope: !3708)
!3715 = !DILocation(line: 906, column: 19, scope: !3708)
!3716 = !DILocation(line: 907, column: 69, scope: !3708)
!3717 = !DILocation(line: 909, column: 44, scope: !3708)
!3718 = !DILocation(line: 910, column: 44, scope: !3708)
!3719 = !DILocation(line: 907, column: 9, scope: !3708)
!3720 = !DILocation(line: 911, column: 7, scope: !3708)
!3721 = !DILocation(line: 913, column: 11, scope: !3652)
!3722 = !DILocation(line: 914, column: 5, scope: !3652)
!3723 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !693, file: !693, line: 925, type: !3724, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3726)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!258, !260, !265, !262}
!3726 = !{!3727, !3728, !3729}
!3727 = !DILocalVariable(name: "n", arg: 1, scope: !3723, file: !693, line: 925, type: !260)
!3728 = !DILocalVariable(name: "arg", arg: 2, scope: !3723, file: !693, line: 925, type: !265)
!3729 = !DILocalVariable(name: "argsize", arg: 3, scope: !3723, file: !693, line: 925, type: !262)
!3730 = !DILocation(line: 0, scope: !3723)
!3731 = !DILocation(line: 927, column: 10, scope: !3723)
!3732 = !DILocation(line: 927, column: 3, scope: !3723)
!3733 = distinct !DISubprogram(name: "quotearg", scope: !693, file: !693, line: 931, type: !1208, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3734)
!3734 = !{!3735}
!3735 = !DILocalVariable(name: "arg", arg: 1, scope: !3733, file: !693, line: 931, type: !265)
!3736 = !DILocation(line: 0, scope: !3733)
!3737 = !DILocation(line: 0, scope: !3629, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 933, column: 10, scope: !3733)
!3739 = !DILocation(line: 921, column: 10, scope: !3629, inlinedAt: !3738)
!3740 = !DILocation(line: 933, column: 3, scope: !3733)
!3741 = distinct !DISubprogram(name: "quotearg_mem", scope: !693, file: !693, line: 937, type: !3742, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3744)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!258, !265, !262}
!3744 = !{!3745, !3746}
!3745 = !DILocalVariable(name: "arg", arg: 1, scope: !3741, file: !693, line: 937, type: !265)
!3746 = !DILocalVariable(name: "argsize", arg: 2, scope: !3741, file: !693, line: 937, type: !262)
!3747 = !DILocation(line: 0, scope: !3741)
!3748 = !DILocation(line: 0, scope: !3723, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 939, column: 10, scope: !3741)
!3750 = !DILocation(line: 927, column: 10, scope: !3723, inlinedAt: !3749)
!3751 = !DILocation(line: 939, column: 3, scope: !3741)
!3752 = distinct !DISubprogram(name: "quotearg_n_style", scope: !693, file: !693, line: 943, type: !3753, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3755)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!258, !260, !719, !265}
!3755 = !{!3756, !3757, !3758, !3759}
!3756 = !DILocalVariable(name: "n", arg: 1, scope: !3752, file: !693, line: 943, type: !260)
!3757 = !DILocalVariable(name: "s", arg: 2, scope: !3752, file: !693, line: 943, type: !719)
!3758 = !DILocalVariable(name: "arg", arg: 3, scope: !3752, file: !693, line: 943, type: !265)
!3759 = !DILocalVariable(name: "o", scope: !3752, file: !693, line: 945, type: !2859)
!3760 = !DILocation(line: 0, scope: !3752)
!3761 = !DILocation(line: 945, column: 3, scope: !3752)
!3762 = !DILocation(line: 945, column: 32, scope: !3752)
!3763 = !{!3764}
!3764 = distinct !{!3764, !3765, !"quoting_options_from_style: argument 0"}
!3765 = distinct !{!3765, !"quoting_options_from_style"}
!3766 = !DILocation(line: 945, column: 36, scope: !3752)
!3767 = !DILocalVariable(name: "style", arg: 1, scope: !3768, file: !693, line: 183, type: !719)
!3768 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !693, file: !693, line: 183, type: !3769, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!746, !719}
!3771 = !{!3767, !3772}
!3772 = !DILocalVariable(name: "o", scope: !3768, file: !693, line: 185, type: !746)
!3773 = !DILocation(line: 0, scope: !3768, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 945, column: 36, scope: !3752)
!3775 = !DILocation(line: 185, column: 26, scope: !3768, inlinedAt: !3774)
!3776 = !DILocation(line: 186, column: 13, scope: !3777, inlinedAt: !3774)
!3777 = distinct !DILexicalBlock(scope: !3768, file: !693, line: 186, column: 7)
!3778 = !DILocation(line: 186, column: 7, scope: !3768, inlinedAt: !3774)
!3779 = !DILocation(line: 187, column: 5, scope: !3777, inlinedAt: !3774)
!3780 = !DILocation(line: 188, column: 11, scope: !3768, inlinedAt: !3774)
!3781 = !DILocation(line: 946, column: 10, scope: !3752)
!3782 = !DILocation(line: 947, column: 1, scope: !3752)
!3783 = !DILocation(line: 946, column: 3, scope: !3752)
!3784 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !693, file: !693, line: 950, type: !3785, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3787)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!258, !260, !719, !265, !262}
!3787 = !{!3788, !3789, !3790, !3791, !3792}
!3788 = !DILocalVariable(name: "n", arg: 1, scope: !3784, file: !693, line: 950, type: !260)
!3789 = !DILocalVariable(name: "s", arg: 2, scope: !3784, file: !693, line: 950, type: !719)
!3790 = !DILocalVariable(name: "arg", arg: 3, scope: !3784, file: !693, line: 951, type: !265)
!3791 = !DILocalVariable(name: "argsize", arg: 4, scope: !3784, file: !693, line: 951, type: !262)
!3792 = !DILocalVariable(name: "o", scope: !3784, file: !693, line: 953, type: !2859)
!3793 = !DILocation(line: 0, scope: !3784)
!3794 = !DILocation(line: 953, column: 3, scope: !3784)
!3795 = !DILocation(line: 953, column: 32, scope: !3784)
!3796 = !{!3797}
!3797 = distinct !{!3797, !3798, !"quoting_options_from_style: argument 0"}
!3798 = distinct !{!3798, !"quoting_options_from_style"}
!3799 = !DILocation(line: 953, column: 36, scope: !3784)
!3800 = !DILocation(line: 0, scope: !3768, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 953, column: 36, scope: !3784)
!3802 = !DILocation(line: 185, column: 26, scope: !3768, inlinedAt: !3801)
!3803 = !DILocation(line: 186, column: 13, scope: !3777, inlinedAt: !3801)
!3804 = !DILocation(line: 186, column: 7, scope: !3768, inlinedAt: !3801)
!3805 = !DILocation(line: 187, column: 5, scope: !3777, inlinedAt: !3801)
!3806 = !DILocation(line: 188, column: 11, scope: !3768, inlinedAt: !3801)
!3807 = !DILocation(line: 954, column: 10, scope: !3784)
!3808 = !DILocation(line: 955, column: 1, scope: !3784)
!3809 = !DILocation(line: 954, column: 3, scope: !3784)
!3810 = distinct !DISubprogram(name: "quotearg_style", scope: !693, file: !693, line: 958, type: !3811, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3813)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!258, !719, !265}
!3813 = !{!3814, !3815}
!3814 = !DILocalVariable(name: "s", arg: 1, scope: !3810, file: !693, line: 958, type: !719)
!3815 = !DILocalVariable(name: "arg", arg: 2, scope: !3810, file: !693, line: 958, type: !265)
!3816 = !DILocation(line: 0, scope: !3810)
!3817 = !DILocation(line: 0, scope: !3752, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 960, column: 10, scope: !3810)
!3819 = !DILocation(line: 945, column: 3, scope: !3752, inlinedAt: !3818)
!3820 = !DILocation(line: 945, column: 32, scope: !3752, inlinedAt: !3818)
!3821 = !{!3822}
!3822 = distinct !{!3822, !3823, !"quoting_options_from_style: argument 0"}
!3823 = distinct !{!3823, !"quoting_options_from_style"}
!3824 = !DILocation(line: 945, column: 36, scope: !3752, inlinedAt: !3818)
!3825 = !DILocation(line: 0, scope: !3768, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 945, column: 36, scope: !3752, inlinedAt: !3818)
!3827 = !DILocation(line: 185, column: 26, scope: !3768, inlinedAt: !3826)
!3828 = !DILocation(line: 186, column: 13, scope: !3777, inlinedAt: !3826)
!3829 = !DILocation(line: 186, column: 7, scope: !3768, inlinedAt: !3826)
!3830 = !DILocation(line: 187, column: 5, scope: !3777, inlinedAt: !3826)
!3831 = !DILocation(line: 188, column: 11, scope: !3768, inlinedAt: !3826)
!3832 = !DILocation(line: 946, column: 10, scope: !3752, inlinedAt: !3818)
!3833 = !DILocation(line: 947, column: 1, scope: !3752, inlinedAt: !3818)
!3834 = !DILocation(line: 960, column: 3, scope: !3810)
!3835 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !693, file: !693, line: 964, type: !3836, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3838)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!258, !719, !265, !262}
!3838 = !{!3839, !3840, !3841}
!3839 = !DILocalVariable(name: "s", arg: 1, scope: !3835, file: !693, line: 964, type: !719)
!3840 = !DILocalVariable(name: "arg", arg: 2, scope: !3835, file: !693, line: 964, type: !265)
!3841 = !DILocalVariable(name: "argsize", arg: 3, scope: !3835, file: !693, line: 964, type: !262)
!3842 = !DILocation(line: 0, scope: !3835)
!3843 = !DILocation(line: 0, scope: !3784, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 966, column: 10, scope: !3835)
!3845 = !DILocation(line: 953, column: 3, scope: !3784, inlinedAt: !3844)
!3846 = !DILocation(line: 953, column: 32, scope: !3784, inlinedAt: !3844)
!3847 = !{!3848}
!3848 = distinct !{!3848, !3849, !"quoting_options_from_style: argument 0"}
!3849 = distinct !{!3849, !"quoting_options_from_style"}
!3850 = !DILocation(line: 953, column: 36, scope: !3784, inlinedAt: !3844)
!3851 = !DILocation(line: 0, scope: !3768, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 953, column: 36, scope: !3784, inlinedAt: !3844)
!3853 = !DILocation(line: 185, column: 26, scope: !3768, inlinedAt: !3852)
!3854 = !DILocation(line: 186, column: 13, scope: !3777, inlinedAt: !3852)
!3855 = !DILocation(line: 186, column: 7, scope: !3768, inlinedAt: !3852)
!3856 = !DILocation(line: 187, column: 5, scope: !3777, inlinedAt: !3852)
!3857 = !DILocation(line: 188, column: 11, scope: !3768, inlinedAt: !3852)
!3858 = !DILocation(line: 954, column: 10, scope: !3784, inlinedAt: !3844)
!3859 = !DILocation(line: 955, column: 1, scope: !3784, inlinedAt: !3844)
!3860 = !DILocation(line: 966, column: 3, scope: !3835)
!3861 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !693, file: !693, line: 970, type: !3862, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3864)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!258, !265, !262, !4}
!3864 = !{!3865, !3866, !3867, !3868}
!3865 = !DILocalVariable(name: "arg", arg: 1, scope: !3861, file: !693, line: 970, type: !265)
!3866 = !DILocalVariable(name: "argsize", arg: 2, scope: !3861, file: !693, line: 970, type: !262)
!3867 = !DILocalVariable(name: "ch", arg: 3, scope: !3861, file: !693, line: 970, type: !4)
!3868 = !DILocalVariable(name: "options", scope: !3861, file: !693, line: 972, type: !746)
!3869 = !DILocation(line: 0, scope: !3861)
!3870 = !DILocation(line: 972, column: 3, scope: !3861)
!3871 = !DILocation(line: 972, column: 26, scope: !3861)
!3872 = !DILocation(line: 973, column: 13, scope: !3861)
!3873 = !{i64 0, i64 4, !1109, i64 4, i64 4, !1100, i64 8, i64 32, !1109, i64 40, i64 8, !1000, i64 48, i64 8, !1000}
!3874 = !DILocation(line: 0, scope: !2878, inlinedAt: !3875)
!3875 = distinct !DILocation(line: 974, column: 3, scope: !3861)
!3876 = !DILocation(line: 147, column: 41, scope: !2878, inlinedAt: !3875)
!3877 = !DILocation(line: 147, column: 62, scope: !2878, inlinedAt: !3875)
!3878 = !DILocation(line: 147, column: 57, scope: !2878, inlinedAt: !3875)
!3879 = !DILocation(line: 148, column: 15, scope: !2878, inlinedAt: !3875)
!3880 = !DILocation(line: 149, column: 21, scope: !2878, inlinedAt: !3875)
!3881 = !DILocation(line: 149, column: 24, scope: !2878, inlinedAt: !3875)
!3882 = !DILocation(line: 150, column: 19, scope: !2878, inlinedAt: !3875)
!3883 = !DILocation(line: 150, column: 24, scope: !2878, inlinedAt: !3875)
!3884 = !DILocation(line: 150, column: 6, scope: !2878, inlinedAt: !3875)
!3885 = !DILocation(line: 975, column: 10, scope: !3861)
!3886 = !DILocation(line: 976, column: 1, scope: !3861)
!3887 = !DILocation(line: 975, column: 3, scope: !3861)
!3888 = distinct !DISubprogram(name: "quotearg_char", scope: !693, file: !693, line: 979, type: !3889, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3891)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!258, !265, !4}
!3891 = !{!3892, !3893}
!3892 = !DILocalVariable(name: "arg", arg: 1, scope: !3888, file: !693, line: 979, type: !265)
!3893 = !DILocalVariable(name: "ch", arg: 2, scope: !3888, file: !693, line: 979, type: !4)
!3894 = !DILocation(line: 0, scope: !3888)
!3895 = !DILocation(line: 0, scope: !3861, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 981, column: 10, scope: !3888)
!3897 = !DILocation(line: 972, column: 3, scope: !3861, inlinedAt: !3896)
!3898 = !DILocation(line: 972, column: 26, scope: !3861, inlinedAt: !3896)
!3899 = !DILocation(line: 973, column: 13, scope: !3861, inlinedAt: !3896)
!3900 = !DILocation(line: 0, scope: !2878, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 974, column: 3, scope: !3861, inlinedAt: !3896)
!3902 = !DILocation(line: 147, column: 41, scope: !2878, inlinedAt: !3901)
!3903 = !DILocation(line: 147, column: 62, scope: !2878, inlinedAt: !3901)
!3904 = !DILocation(line: 147, column: 57, scope: !2878, inlinedAt: !3901)
!3905 = !DILocation(line: 148, column: 15, scope: !2878, inlinedAt: !3901)
!3906 = !DILocation(line: 149, column: 21, scope: !2878, inlinedAt: !3901)
!3907 = !DILocation(line: 149, column: 24, scope: !2878, inlinedAt: !3901)
!3908 = !DILocation(line: 150, column: 19, scope: !2878, inlinedAt: !3901)
!3909 = !DILocation(line: 150, column: 24, scope: !2878, inlinedAt: !3901)
!3910 = !DILocation(line: 150, column: 6, scope: !2878, inlinedAt: !3901)
!3911 = !DILocation(line: 975, column: 10, scope: !3861, inlinedAt: !3896)
!3912 = !DILocation(line: 976, column: 1, scope: !3861, inlinedAt: !3896)
!3913 = !DILocation(line: 981, column: 3, scope: !3888)
!3914 = distinct !DISubprogram(name: "quotearg_colon", scope: !693, file: !693, line: 985, type: !1208, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3915)
!3915 = !{!3916}
!3916 = !DILocalVariable(name: "arg", arg: 1, scope: !3914, file: !693, line: 985, type: !265)
!3917 = !DILocation(line: 0, scope: !3914)
!3918 = !DILocation(line: 0, scope: !3888, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 987, column: 10, scope: !3914)
!3920 = !DILocation(line: 0, scope: !3861, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 981, column: 10, scope: !3888, inlinedAt: !3919)
!3922 = !DILocation(line: 972, column: 3, scope: !3861, inlinedAt: !3921)
!3923 = !DILocation(line: 972, column: 26, scope: !3861, inlinedAt: !3921)
!3924 = !DILocation(line: 973, column: 13, scope: !3861, inlinedAt: !3921)
!3925 = !DILocation(line: 0, scope: !2878, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 974, column: 3, scope: !3861, inlinedAt: !3921)
!3927 = !DILocation(line: 147, column: 57, scope: !2878, inlinedAt: !3926)
!3928 = !DILocation(line: 149, column: 21, scope: !2878, inlinedAt: !3926)
!3929 = !DILocation(line: 150, column: 6, scope: !2878, inlinedAt: !3926)
!3930 = !DILocation(line: 975, column: 10, scope: !3861, inlinedAt: !3921)
!3931 = !DILocation(line: 976, column: 1, scope: !3861, inlinedAt: !3921)
!3932 = !DILocation(line: 987, column: 3, scope: !3914)
!3933 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !693, file: !693, line: 991, type: !3742, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3934)
!3934 = !{!3935, !3936}
!3935 = !DILocalVariable(name: "arg", arg: 1, scope: !3933, file: !693, line: 991, type: !265)
!3936 = !DILocalVariable(name: "argsize", arg: 2, scope: !3933, file: !693, line: 991, type: !262)
!3937 = !DILocation(line: 0, scope: !3933)
!3938 = !DILocation(line: 0, scope: !3861, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 993, column: 10, scope: !3933)
!3940 = !DILocation(line: 972, column: 3, scope: !3861, inlinedAt: !3939)
!3941 = !DILocation(line: 972, column: 26, scope: !3861, inlinedAt: !3939)
!3942 = !DILocation(line: 973, column: 13, scope: !3861, inlinedAt: !3939)
!3943 = !DILocation(line: 0, scope: !2878, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 974, column: 3, scope: !3861, inlinedAt: !3939)
!3945 = !DILocation(line: 147, column: 57, scope: !2878, inlinedAt: !3944)
!3946 = !DILocation(line: 149, column: 21, scope: !2878, inlinedAt: !3944)
!3947 = !DILocation(line: 150, column: 6, scope: !2878, inlinedAt: !3944)
!3948 = !DILocation(line: 975, column: 10, scope: !3861, inlinedAt: !3939)
!3949 = !DILocation(line: 976, column: 1, scope: !3861, inlinedAt: !3939)
!3950 = !DILocation(line: 993, column: 3, scope: !3933)
!3951 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !693, file: !693, line: 997, type: !3753, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3952)
!3952 = !{!3953, !3954, !3955, !3956}
!3953 = !DILocalVariable(name: "n", arg: 1, scope: !3951, file: !693, line: 997, type: !260)
!3954 = !DILocalVariable(name: "s", arg: 2, scope: !3951, file: !693, line: 997, type: !719)
!3955 = !DILocalVariable(name: "arg", arg: 3, scope: !3951, file: !693, line: 997, type: !265)
!3956 = !DILocalVariable(name: "options", scope: !3951, file: !693, line: 999, type: !746)
!3957 = !DILocation(line: 185, column: 26, scope: !3768, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 1000, column: 13, scope: !3951)
!3959 = !DILocation(line: 0, scope: !3951)
!3960 = !DILocation(line: 999, column: 3, scope: !3951)
!3961 = !DILocation(line: 999, column: 26, scope: !3951)
!3962 = !DILocation(line: 0, scope: !3768, inlinedAt: !3958)
!3963 = !DILocation(line: 186, column: 13, scope: !3777, inlinedAt: !3958)
!3964 = !DILocation(line: 186, column: 7, scope: !3768, inlinedAt: !3958)
!3965 = !DILocation(line: 187, column: 5, scope: !3777, inlinedAt: !3958)
!3966 = !{!3967}
!3967 = distinct !{!3967, !3968, !"quoting_options_from_style: argument 0"}
!3968 = distinct !{!3968, !"quoting_options_from_style"}
!3969 = !DILocation(line: 1000, column: 13, scope: !3951)
!3970 = !DILocation(line: 0, scope: !2878, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 1001, column: 3, scope: !3951)
!3972 = !DILocation(line: 147, column: 57, scope: !2878, inlinedAt: !3971)
!3973 = !DILocation(line: 149, column: 21, scope: !2878, inlinedAt: !3971)
!3974 = !DILocation(line: 150, column: 6, scope: !2878, inlinedAt: !3971)
!3975 = !DILocation(line: 1002, column: 10, scope: !3951)
!3976 = !DILocation(line: 1003, column: 1, scope: !3951)
!3977 = !DILocation(line: 1002, column: 3, scope: !3951)
!3978 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !693, file: !693, line: 1006, type: !3979, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3981)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!258, !260, !265, !265, !265}
!3981 = !{!3982, !3983, !3984, !3985}
!3982 = !DILocalVariable(name: "n", arg: 1, scope: !3978, file: !693, line: 1006, type: !260)
!3983 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3978, file: !693, line: 1006, type: !265)
!3984 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3978, file: !693, line: 1007, type: !265)
!3985 = !DILocalVariable(name: "arg", arg: 4, scope: !3978, file: !693, line: 1007, type: !265)
!3986 = !DILocation(line: 0, scope: !3978)
!3987 = !DILocalVariable(name: "n", arg: 1, scope: !3988, file: !693, line: 1014, type: !260)
!3988 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !693, file: !693, line: 1014, type: !3989, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3991)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!258, !260, !265, !265, !265, !262}
!3991 = !{!3987, !3992, !3993, !3994, !3995, !3996}
!3992 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3988, file: !693, line: 1014, type: !265)
!3993 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3988, file: !693, line: 1015, type: !265)
!3994 = !DILocalVariable(name: "arg", arg: 4, scope: !3988, file: !693, line: 1016, type: !265)
!3995 = !DILocalVariable(name: "argsize", arg: 5, scope: !3988, file: !693, line: 1016, type: !262)
!3996 = !DILocalVariable(name: "o", scope: !3988, file: !693, line: 1018, type: !746)
!3997 = !DILocation(line: 0, scope: !3988, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 1009, column: 10, scope: !3978)
!3999 = !DILocation(line: 1018, column: 3, scope: !3988, inlinedAt: !3998)
!4000 = !DILocation(line: 1018, column: 26, scope: !3988, inlinedAt: !3998)
!4001 = !DILocation(line: 1018, column: 30, scope: !3988, inlinedAt: !3998)
!4002 = !DILocation(line: 0, scope: !2918, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 1019, column: 3, scope: !3988, inlinedAt: !3998)
!4004 = !DILocation(line: 174, column: 12, scope: !2918, inlinedAt: !4003)
!4005 = !DILocation(line: 175, column: 8, scope: !2931, inlinedAt: !4003)
!4006 = !DILocation(line: 175, column: 19, scope: !2931, inlinedAt: !4003)
!4007 = !DILocation(line: 176, column: 5, scope: !2931, inlinedAt: !4003)
!4008 = !DILocation(line: 177, column: 6, scope: !2918, inlinedAt: !4003)
!4009 = !DILocation(line: 177, column: 17, scope: !2918, inlinedAt: !4003)
!4010 = !DILocation(line: 178, column: 6, scope: !2918, inlinedAt: !4003)
!4011 = !DILocation(line: 178, column: 18, scope: !2918, inlinedAt: !4003)
!4012 = !DILocation(line: 1020, column: 10, scope: !3988, inlinedAt: !3998)
!4013 = !DILocation(line: 1021, column: 1, scope: !3988, inlinedAt: !3998)
!4014 = !DILocation(line: 1009, column: 3, scope: !3978)
!4015 = !DILocation(line: 0, scope: !3988)
!4016 = !DILocation(line: 1018, column: 3, scope: !3988)
!4017 = !DILocation(line: 1018, column: 26, scope: !3988)
!4018 = !DILocation(line: 1018, column: 30, scope: !3988)
!4019 = !DILocation(line: 0, scope: !2918, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 1019, column: 3, scope: !3988)
!4021 = !DILocation(line: 174, column: 12, scope: !2918, inlinedAt: !4020)
!4022 = !DILocation(line: 175, column: 8, scope: !2931, inlinedAt: !4020)
!4023 = !DILocation(line: 175, column: 19, scope: !2931, inlinedAt: !4020)
!4024 = !DILocation(line: 176, column: 5, scope: !2931, inlinedAt: !4020)
!4025 = !DILocation(line: 177, column: 6, scope: !2918, inlinedAt: !4020)
!4026 = !DILocation(line: 177, column: 17, scope: !2918, inlinedAt: !4020)
!4027 = !DILocation(line: 178, column: 6, scope: !2918, inlinedAt: !4020)
!4028 = !DILocation(line: 178, column: 18, scope: !2918, inlinedAt: !4020)
!4029 = !DILocation(line: 1020, column: 10, scope: !3988)
!4030 = !DILocation(line: 1021, column: 1, scope: !3988)
!4031 = !DILocation(line: 1020, column: 3, scope: !3988)
!4032 = distinct !DISubprogram(name: "quotearg_custom", scope: !693, file: !693, line: 1024, type: !4033, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !4035)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!258, !265, !265, !265}
!4035 = !{!4036, !4037, !4038}
!4036 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4032, file: !693, line: 1024, type: !265)
!4037 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4032, file: !693, line: 1024, type: !265)
!4038 = !DILocalVariable(name: "arg", arg: 3, scope: !4032, file: !693, line: 1025, type: !265)
!4039 = !DILocation(line: 0, scope: !4032)
!4040 = !DILocation(line: 0, scope: !3978, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 1027, column: 10, scope: !4032)
!4042 = !DILocation(line: 0, scope: !3988, inlinedAt: !4043)
!4043 = distinct !DILocation(line: 1009, column: 10, scope: !3978, inlinedAt: !4041)
!4044 = !DILocation(line: 1018, column: 3, scope: !3988, inlinedAt: !4043)
!4045 = !DILocation(line: 1018, column: 26, scope: !3988, inlinedAt: !4043)
!4046 = !DILocation(line: 1018, column: 30, scope: !3988, inlinedAt: !4043)
!4047 = !DILocation(line: 0, scope: !2918, inlinedAt: !4048)
!4048 = distinct !DILocation(line: 1019, column: 3, scope: !3988, inlinedAt: !4043)
!4049 = !DILocation(line: 174, column: 12, scope: !2918, inlinedAt: !4048)
!4050 = !DILocation(line: 175, column: 8, scope: !2931, inlinedAt: !4048)
!4051 = !DILocation(line: 175, column: 19, scope: !2931, inlinedAt: !4048)
!4052 = !DILocation(line: 176, column: 5, scope: !2931, inlinedAt: !4048)
!4053 = !DILocation(line: 177, column: 6, scope: !2918, inlinedAt: !4048)
!4054 = !DILocation(line: 177, column: 17, scope: !2918, inlinedAt: !4048)
!4055 = !DILocation(line: 178, column: 6, scope: !2918, inlinedAt: !4048)
!4056 = !DILocation(line: 178, column: 18, scope: !2918, inlinedAt: !4048)
!4057 = !DILocation(line: 1020, column: 10, scope: !3988, inlinedAt: !4043)
!4058 = !DILocation(line: 1021, column: 1, scope: !3988, inlinedAt: !4043)
!4059 = !DILocation(line: 1027, column: 3, scope: !4032)
!4060 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !693, file: !693, line: 1031, type: !4061, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !4063)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!258, !265, !265, !265, !262}
!4063 = !{!4064, !4065, !4066, !4067}
!4064 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4060, file: !693, line: 1031, type: !265)
!4065 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4060, file: !693, line: 1031, type: !265)
!4066 = !DILocalVariable(name: "arg", arg: 3, scope: !4060, file: !693, line: 1032, type: !265)
!4067 = !DILocalVariable(name: "argsize", arg: 4, scope: !4060, file: !693, line: 1032, type: !262)
!4068 = !DILocation(line: 0, scope: !4060)
!4069 = !DILocation(line: 0, scope: !3988, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 1034, column: 10, scope: !4060)
!4071 = !DILocation(line: 1018, column: 3, scope: !3988, inlinedAt: !4070)
!4072 = !DILocation(line: 1018, column: 26, scope: !3988, inlinedAt: !4070)
!4073 = !DILocation(line: 1018, column: 30, scope: !3988, inlinedAt: !4070)
!4074 = !DILocation(line: 0, scope: !2918, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 1019, column: 3, scope: !3988, inlinedAt: !4070)
!4076 = !DILocation(line: 174, column: 12, scope: !2918, inlinedAt: !4075)
!4077 = !DILocation(line: 175, column: 8, scope: !2931, inlinedAt: !4075)
!4078 = !DILocation(line: 175, column: 19, scope: !2931, inlinedAt: !4075)
!4079 = !DILocation(line: 176, column: 5, scope: !2931, inlinedAt: !4075)
!4080 = !DILocation(line: 177, column: 6, scope: !2918, inlinedAt: !4075)
!4081 = !DILocation(line: 177, column: 17, scope: !2918, inlinedAt: !4075)
!4082 = !DILocation(line: 178, column: 6, scope: !2918, inlinedAt: !4075)
!4083 = !DILocation(line: 178, column: 18, scope: !2918, inlinedAt: !4075)
!4084 = !DILocation(line: 1020, column: 10, scope: !3988, inlinedAt: !4070)
!4085 = !DILocation(line: 1021, column: 1, scope: !3988, inlinedAt: !4070)
!4086 = !DILocation(line: 1034, column: 3, scope: !4060)
!4087 = distinct !DISubprogram(name: "quote_n_mem", scope: !693, file: !693, line: 1049, type: !4088, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !4090)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!265, !260, !265, !262}
!4090 = !{!4091, !4092, !4093}
!4091 = !DILocalVariable(name: "n", arg: 1, scope: !4087, file: !693, line: 1049, type: !260)
!4092 = !DILocalVariable(name: "arg", arg: 2, scope: !4087, file: !693, line: 1049, type: !265)
!4093 = !DILocalVariable(name: "argsize", arg: 3, scope: !4087, file: !693, line: 1049, type: !262)
!4094 = !DILocation(line: 0, scope: !4087)
!4095 = !DILocation(line: 1051, column: 10, scope: !4087)
!4096 = !DILocation(line: 1051, column: 3, scope: !4087)
!4097 = distinct !DISubprogram(name: "quote_mem", scope: !693, file: !693, line: 1055, type: !4098, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !4100)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!265, !265, !262}
!4100 = !{!4101, !4102}
!4101 = !DILocalVariable(name: "arg", arg: 1, scope: !4097, file: !693, line: 1055, type: !265)
!4102 = !DILocalVariable(name: "argsize", arg: 2, scope: !4097, file: !693, line: 1055, type: !262)
!4103 = !DILocation(line: 0, scope: !4097)
!4104 = !DILocation(line: 0, scope: !4087, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 1057, column: 10, scope: !4097)
!4106 = !DILocation(line: 1051, column: 10, scope: !4087, inlinedAt: !4105)
!4107 = !DILocation(line: 1057, column: 3, scope: !4097)
!4108 = distinct !DISubprogram(name: "quote_n", scope: !693, file: !693, line: 1061, type: !4109, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !4111)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!265, !260, !265}
!4111 = !{!4112, !4113}
!4112 = !DILocalVariable(name: "n", arg: 1, scope: !4108, file: !693, line: 1061, type: !260)
!4113 = !DILocalVariable(name: "arg", arg: 2, scope: !4108, file: !693, line: 1061, type: !265)
!4114 = !DILocation(line: 0, scope: !4108)
!4115 = !DILocation(line: 0, scope: !4087, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 1063, column: 10, scope: !4108)
!4117 = !DILocation(line: 1051, column: 10, scope: !4087, inlinedAt: !4116)
!4118 = !DILocation(line: 1063, column: 3, scope: !4108)
!4119 = distinct !DISubprogram(name: "quote", scope: !693, file: !693, line: 1067, type: !2394, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !4120)
!4120 = !{!4121}
!4121 = !DILocalVariable(name: "arg", arg: 1, scope: !4119, file: !693, line: 1067, type: !265)
!4122 = !DILocation(line: 0, scope: !4119)
!4123 = !DILocation(line: 0, scope: !4108, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 1069, column: 10, scope: !4119)
!4125 = !DILocation(line: 0, scope: !4087, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 1063, column: 10, scope: !4108, inlinedAt: !4124)
!4127 = !DILocation(line: 1051, column: 10, scope: !4087, inlinedAt: !4126)
!4128 = !DILocation(line: 1069, column: 3, scope: !4119)
!4129 = distinct !DISubprogram(name: "strintcmp", scope: !920, file: !920, line: 31, type: !1211, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4130)
!4130 = !{!4131, !4132}
!4131 = !DILocalVariable(name: "a", arg: 1, scope: !4129, file: !920, line: 31, type: !265)
!4132 = !DILocalVariable(name: "b", arg: 2, scope: !4129, file: !920, line: 31, type: !265)
!4133 = !DILocation(line: 0, scope: !4129)
!4134 = !DILocalVariable(name: "a", arg: 1, scope: !4135, file: !4136, line: 105, type: !265)
!4135 = distinct !DISubprogram(name: "numcompare", scope: !4136, file: !4136, line: 105, type: !4137, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4139)
!4136 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f69f23aa922f1f0bf768a1237830bd5f")
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!260, !265, !265, !260, !260}
!4139 = !{!4134, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147}
!4140 = !DILocalVariable(name: "b", arg: 2, scope: !4135, file: !4136, line: 105, type: !265)
!4141 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !4135, file: !4136, line: 106, type: !260)
!4142 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !4135, file: !4136, line: 106, type: !260)
!4143 = !DILocalVariable(name: "tmpa", scope: !4135, file: !4136, line: 108, type: !4)
!4144 = !DILocalVariable(name: "tmpb", scope: !4135, file: !4136, line: 109, type: !4)
!4145 = !DILocalVariable(name: "tmp", scope: !4135, file: !4136, line: 110, type: !260)
!4146 = !DILocalVariable(name: "log_a", scope: !4135, file: !4136, line: 111, type: !262)
!4147 = !DILocalVariable(name: "log_b", scope: !4135, file: !4136, line: 112, type: !262)
!4148 = !DILocation(line: 0, scope: !4135, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 33, column: 10, scope: !4129)
!4150 = !DILocation(line: 108, column: 15, scope: !4135, inlinedAt: !4149)
!4151 = !DILocation(line: 109, column: 15, scope: !4135, inlinedAt: !4149)
!4152 = !DILocation(line: 114, column: 12, scope: !4153, inlinedAt: !4149)
!4153 = distinct !DILexicalBlock(scope: !4135, file: !4136, line: 114, column: 7)
!4154 = !DILocation(line: 114, column: 7, scope: !4135, inlinedAt: !4149)
!4155 = !DILocation(line: 117, column: 17, scope: !4156, inlinedAt: !4149)
!4156 = distinct !DILexicalBlock(scope: !4153, file: !4136, line: 115, column: 5)
!4157 = !DILocation(line: 117, column: 16, scope: !4156, inlinedAt: !4149)
!4158 = !DILocation(line: 118, column: 19, scope: !4156, inlinedAt: !4149)
!4159 = !DILocation(line: 117, column: 9, scope: !4156, inlinedAt: !4149)
!4160 = distinct !{!4160, !4161, !4162, !1147}
!4161 = !DILocation(line: 116, column: 7, scope: !4156, inlinedAt: !4149)
!4162 = !DILocation(line: 118, column: 59, scope: !4156, inlinedAt: !4149)
!4163 = !DILocation(line: 119, column: 16, scope: !4164, inlinedAt: !4149)
!4164 = distinct !DILexicalBlock(scope: !4156, file: !4136, line: 119, column: 11)
!4165 = !DILocation(line: 119, column: 11, scope: !4156, inlinedAt: !4149)
!4166 = !DILocation(line: 125, column: 26, scope: !4167, inlinedAt: !4149)
!4167 = distinct !DILexicalBlock(scope: !4168, file: !4136, line: 125, column: 15)
!4168 = distinct !DILexicalBlock(scope: !4164, file: !4136, line: 120, column: 9)
!4169 = !DILocalVariable(name: "c", arg: 1, scope: !4170, file: !2417, line: 233, type: !260)
!4170 = distinct !DISubprogram(name: "c_isdigit", scope: !2417, file: !2417, line: 233, type: !1343, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4171)
!4171 = !{!4169}
!4172 = !DILocation(line: 0, scope: !4170, inlinedAt: !4173)
!4173 = distinct !DILocation(line: 125, column: 15, scope: !4167, inlinedAt: !4149)
!4174 = !DILocation(line: 235, column: 3, scope: !4170, inlinedAt: !4173)
!4175 = !DILocation(line: 125, column: 15, scope: !4168, inlinedAt: !4149)
!4176 = !DILocation(line: 127, column: 23, scope: !4168, inlinedAt: !4149)
!4177 = !DILocation(line: 127, column: 11, scope: !4168, inlinedAt: !4149)
!4178 = !DILocation(line: 128, column: 21, scope: !4168, inlinedAt: !4149)
!4179 = !DILocation(line: 128, column: 20, scope: !4168, inlinedAt: !4149)
!4180 = distinct !{!4180, !4177, !4181, !1147}
!4181 = !DILocation(line: 128, column: 23, scope: !4168, inlinedAt: !4149)
!4182 = !DILocation(line: 133, column: 31, scope: !4168, inlinedAt: !4149)
!4183 = !DILocation(line: 0, scope: !4170, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 133, column: 20, scope: !4168, inlinedAt: !4149)
!4185 = !DILocation(line: 235, column: 3, scope: !4170, inlinedAt: !4184)
!4186 = !DILocation(line: 133, column: 20, scope: !4168, inlinedAt: !4149)
!4187 = !DILocation(line: 133, column: 11, scope: !4168, inlinedAt: !4149)
!4188 = !DILocation(line: 136, column: 17, scope: !4156, inlinedAt: !4149)
!4189 = !DILocation(line: 136, column: 16, scope: !4156, inlinedAt: !4149)
!4190 = !DILocation(line: 137, column: 19, scope: !4156, inlinedAt: !4149)
!4191 = !DILocation(line: 136, column: 9, scope: !4156, inlinedAt: !4149)
!4192 = distinct !{!4192, !4193, !4194, !1147}
!4193 = !DILocation(line: 135, column: 7, scope: !4156, inlinedAt: !4149)
!4194 = !DILocation(line: 137, column: 59, scope: !4156, inlinedAt: !4149)
!4195 = !DILocation(line: 139, column: 14, scope: !4156, inlinedAt: !4149)
!4196 = !DILocation(line: 139, column: 19, scope: !4156, inlinedAt: !4149)
!4197 = !DILocation(line: 139, column: 27, scope: !4156, inlinedAt: !4149)
!4198 = !DILocation(line: 0, scope: !4170, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 139, column: 30, scope: !4156, inlinedAt: !4149)
!4200 = !DILocation(line: 142, column: 21, scope: !4201, inlinedAt: !4149)
!4201 = distinct !DILexicalBlock(scope: !4156, file: !4136, line: 140, column: 9)
!4202 = !DILocation(line: 142, column: 20, scope: !4201, inlinedAt: !4149)
!4203 = !DILocation(line: 145, column: 21, scope: !4201, inlinedAt: !4149)
!4204 = !DILocation(line: 145, column: 20, scope: !4201, inlinedAt: !4149)
!4205 = distinct !{!4205, !4206, !4207, !1147}
!4206 = !DILocation(line: 139, column: 7, scope: !4156, inlinedAt: !4149)
!4207 = !DILocation(line: 147, column: 9, scope: !4156, inlinedAt: !4149)
!4208 = !DILocation(line: 139, column: 22, scope: !4156, inlinedAt: !4149)
!4209 = !DILocation(line: 235, column: 3, scope: !4170, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 155, column: 23, scope: !4211, inlinedAt: !4149)
!4211 = distinct !DILexicalBlock(scope: !4212, file: !4136, line: 155, column: 7)
!4212 = distinct !DILexicalBlock(scope: !4156, file: !4136, line: 155, column: 7)
!4213 = !DILocation(line: 0, scope: !4156, inlinedAt: !4149)
!4214 = !DILocation(line: 153, column: 18, scope: !4156, inlinedAt: !4149)
!4215 = !DILocation(line: 0, scope: !4170, inlinedAt: !4210)
!4216 = !DILocation(line: 155, column: 7, scope: !4212, inlinedAt: !4149)
!4217 = !DILocation(line: 155, scope: !4212, inlinedAt: !4149)
!4218 = !DILocation(line: 0, scope: !4170, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 160, column: 23, scope: !4220, inlinedAt: !4149)
!4220 = distinct !DILexicalBlock(scope: !4221, file: !4136, line: 160, column: 7)
!4221 = distinct !DILexicalBlock(scope: !4156, file: !4136, line: 160, column: 7)
!4222 = !DILocation(line: 235, column: 3, scope: !4170, inlinedAt: !4219)
!4223 = !DILocation(line: 160, column: 7, scope: !4221, inlinedAt: !4149)
!4224 = !DILocation(line: 157, column: 19, scope: !4211, inlinedAt: !4149)
!4225 = !DILocation(line: 157, column: 18, scope: !4211, inlinedAt: !4149)
!4226 = !DILocation(line: 155, column: 41, scope: !4211, inlinedAt: !4149)
!4227 = !DILocation(line: 155, column: 34, scope: !4211, inlinedAt: !4149)
!4228 = distinct !{!4228, !4216, !4229, !1147}
!4229 = !DILocation(line: 158, column: 37, scope: !4212, inlinedAt: !4149)
!4230 = !DILocation(line: 162, column: 19, scope: !4220, inlinedAt: !4149)
!4231 = !DILocation(line: 162, column: 18, scope: !4220, inlinedAt: !4149)
!4232 = !DILocation(line: 160, column: 41, scope: !4220, inlinedAt: !4149)
!4233 = !DILocation(line: 160, column: 34, scope: !4220, inlinedAt: !4149)
!4234 = distinct !{!4234, !4223, !4235, !1147}
!4235 = !DILocation(line: 163, column: 37, scope: !4221, inlinedAt: !4149)
!4236 = !DILocation(line: 160, scope: !4221, inlinedAt: !4149)
!4237 = !DILocation(line: 165, column: 17, scope: !4238, inlinedAt: !4149)
!4238 = distinct !DILexicalBlock(scope: !4156, file: !4136, line: 165, column: 11)
!4239 = !DILocation(line: 165, column: 11, scope: !4156, inlinedAt: !4149)
!4240 = !DILocation(line: 166, column: 22, scope: !4238, inlinedAt: !4149)
!4241 = !DILocation(line: 166, column: 16, scope: !4238, inlinedAt: !4149)
!4242 = !DILocation(line: 166, column: 9, scope: !4238, inlinedAt: !4149)
!4243 = !DILocation(line: 168, column: 12, scope: !4244, inlinedAt: !4149)
!4244 = distinct !DILexicalBlock(scope: !4156, file: !4136, line: 168, column: 11)
!4245 = !DILocation(line: 173, column: 17, scope: !4246, inlinedAt: !4149)
!4246 = distinct !DILexicalBlock(scope: !4153, file: !4136, line: 173, column: 12)
!4247 = !DILocation(line: 173, column: 12, scope: !4153, inlinedAt: !4149)
!4248 = !DILocation(line: 194, column: 19, scope: !4249, inlinedAt: !4149)
!4249 = distinct !DILexicalBlock(scope: !4246, file: !4136, line: 193, column: 5)
!4250 = !DILocation(line: 194, column: 7, scope: !4249, inlinedAt: !4149)
!4251 = !DILocation(line: 176, column: 17, scope: !4252, inlinedAt: !4149)
!4252 = distinct !DILexicalBlock(scope: !4246, file: !4136, line: 174, column: 5)
!4253 = !DILocation(line: 176, column: 16, scope: !4252, inlinedAt: !4149)
!4254 = !DILocation(line: 177, column: 19, scope: !4252, inlinedAt: !4149)
!4255 = !DILocation(line: 176, column: 9, scope: !4252, inlinedAt: !4149)
!4256 = distinct !{!4256, !4257, !4258, !1147}
!4257 = !DILocation(line: 175, column: 7, scope: !4252, inlinedAt: !4149)
!4258 = !DILocation(line: 177, column: 59, scope: !4252, inlinedAt: !4149)
!4259 = !DILocation(line: 182, column: 22, scope: !4260, inlinedAt: !4149)
!4260 = distinct !DILexicalBlock(scope: !4252, file: !4136, line: 182, column: 11)
!4261 = !DILocation(line: 0, scope: !4170, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 182, column: 11, scope: !4260, inlinedAt: !4149)
!4263 = !DILocation(line: 235, column: 3, scope: !4170, inlinedAt: !4262)
!4264 = !DILocation(line: 182, column: 11, scope: !4252, inlinedAt: !4149)
!4265 = !DILocation(line: 184, column: 19, scope: !4252, inlinedAt: !4149)
!4266 = !DILocation(line: 184, column: 7, scope: !4252, inlinedAt: !4149)
!4267 = !DILocation(line: 185, column: 17, scope: !4252, inlinedAt: !4149)
!4268 = !DILocation(line: 185, column: 16, scope: !4252, inlinedAt: !4149)
!4269 = distinct !{!4269, !4266, !4270, !1147}
!4270 = !DILocation(line: 185, column: 19, scope: !4252, inlinedAt: !4149)
!4271 = !DILocation(line: 190, column: 25, scope: !4252, inlinedAt: !4149)
!4272 = !DILocation(line: 0, scope: !4170, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 190, column: 14, scope: !4252, inlinedAt: !4149)
!4274 = !DILocation(line: 235, column: 3, scope: !4170, inlinedAt: !4273)
!4275 = !DILocation(line: 190, column: 14, scope: !4252, inlinedAt: !4149)
!4276 = !DILocation(line: 190, column: 7, scope: !4252, inlinedAt: !4149)
!4277 = !DILocation(line: 196, column: 19, scope: !4249, inlinedAt: !4149)
!4278 = !DILocation(line: 196, column: 7, scope: !4249, inlinedAt: !4149)
!4279 = !DILocation(line: 195, column: 17, scope: !4249, inlinedAt: !4149)
!4280 = !DILocation(line: 195, column: 16, scope: !4249, inlinedAt: !4149)
!4281 = distinct !{!4281, !4250, !4282, !1147}
!4282 = !DILocation(line: 195, column: 19, scope: !4249, inlinedAt: !4149)
!4283 = !DILocation(line: 199, column: 14, scope: !4249, inlinedAt: !4149)
!4284 = !DILocation(line: 199, column: 19, scope: !4249, inlinedAt: !4149)
!4285 = !DILocation(line: 199, column: 27, scope: !4249, inlinedAt: !4149)
!4286 = !DILocation(line: 0, scope: !4170, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 199, column: 30, scope: !4249, inlinedAt: !4149)
!4288 = !DILocation(line: 197, column: 17, scope: !4249, inlinedAt: !4149)
!4289 = !DILocation(line: 197, column: 16, scope: !4249, inlinedAt: !4149)
!4290 = distinct !{!4290, !4278, !4291, !1147}
!4291 = !DILocation(line: 197, column: 19, scope: !4249, inlinedAt: !4149)
!4292 = !DILocation(line: 202, column: 21, scope: !4293, inlinedAt: !4149)
!4293 = distinct !DILexicalBlock(scope: !4249, file: !4136, line: 200, column: 9)
!4294 = !DILocation(line: 202, column: 20, scope: !4293, inlinedAt: !4149)
!4295 = !DILocation(line: 205, column: 21, scope: !4293, inlinedAt: !4149)
!4296 = !DILocation(line: 205, column: 20, scope: !4293, inlinedAt: !4149)
!4297 = distinct !{!4297, !4298, !4299, !1147}
!4298 = !DILocation(line: 199, column: 7, scope: !4249, inlinedAt: !4149)
!4299 = !DILocation(line: 207, column: 9, scope: !4249, inlinedAt: !4149)
!4300 = !DILocation(line: 199, column: 22, scope: !4249, inlinedAt: !4149)
!4301 = !DILocation(line: 235, column: 3, scope: !4170, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 215, column: 23, scope: !4303, inlinedAt: !4149)
!4303 = distinct !DILexicalBlock(scope: !4304, file: !4136, line: 215, column: 7)
!4304 = distinct !DILexicalBlock(scope: !4249, file: !4136, line: 215, column: 7)
!4305 = !DILocation(line: 213, column: 18, scope: !4249, inlinedAt: !4149)
!4306 = !DILocation(line: 0, scope: !4170, inlinedAt: !4302)
!4307 = !DILocation(line: 215, column: 7, scope: !4304, inlinedAt: !4149)
!4308 = !DILocation(line: 215, scope: !4304, inlinedAt: !4149)
!4309 = !DILocation(line: 0, scope: !4170, inlinedAt: !4310)
!4310 = distinct !DILocation(line: 220, column: 23, scope: !4311, inlinedAt: !4149)
!4311 = distinct !DILexicalBlock(scope: !4312, file: !4136, line: 220, column: 7)
!4312 = distinct !DILexicalBlock(scope: !4249, file: !4136, line: 220, column: 7)
!4313 = !DILocation(line: 235, column: 3, scope: !4170, inlinedAt: !4310)
!4314 = !DILocation(line: 220, column: 7, scope: !4312, inlinedAt: !4149)
!4315 = !DILocation(line: 217, column: 19, scope: !4303, inlinedAt: !4149)
!4316 = !DILocation(line: 217, column: 18, scope: !4303, inlinedAt: !4149)
!4317 = !DILocation(line: 215, column: 41, scope: !4303, inlinedAt: !4149)
!4318 = !DILocation(line: 215, column: 34, scope: !4303, inlinedAt: !4149)
!4319 = distinct !{!4319, !4307, !4320, !1147}
!4320 = !DILocation(line: 218, column: 37, scope: !4304, inlinedAt: !4149)
!4321 = !DILocation(line: 222, column: 19, scope: !4311, inlinedAt: !4149)
!4322 = !DILocation(line: 222, column: 18, scope: !4311, inlinedAt: !4149)
!4323 = !DILocation(line: 220, column: 41, scope: !4311, inlinedAt: !4149)
!4324 = !DILocation(line: 220, column: 34, scope: !4311, inlinedAt: !4149)
!4325 = distinct !{!4325, !4314, !4326, !1147}
!4326 = !DILocation(line: 223, column: 37, scope: !4312, inlinedAt: !4149)
!4327 = !DILocation(line: 220, scope: !4312, inlinedAt: !4149)
!4328 = !DILocation(line: 225, column: 17, scope: !4329, inlinedAt: !4149)
!4329 = distinct !DILexicalBlock(scope: !4249, file: !4136, line: 225, column: 11)
!4330 = !DILocation(line: 225, column: 11, scope: !4249, inlinedAt: !4149)
!4331 = !DILocation(line: 226, column: 22, scope: !4329, inlinedAt: !4149)
!4332 = !DILocation(line: 226, column: 16, scope: !4329, inlinedAt: !4149)
!4333 = !DILocation(line: 226, column: 9, scope: !4329, inlinedAt: !4149)
!4334 = !DILocation(line: 228, column: 12, scope: !4335, inlinedAt: !4149)
!4335 = distinct !DILexicalBlock(scope: !4249, file: !4136, line: 228, column: 11)
!4336 = !DILocation(line: 0, scope: !4249, inlinedAt: !4149)
!4337 = !DILocation(line: 0, scope: !4153, inlinedAt: !4149)
!4338 = !DILocation(line: 33, column: 3, scope: !4129)
!4339 = distinct !DISubprogram(name: "version_etc_arn", scope: !807, file: !807, line: 61, type: !4340, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4377)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{null, !4342, !265, !265, !265, !4376, !262}
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !4344)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !4345)
!4345 = !{!4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4344, file: !336, line: 51, baseType: !260, size: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4344, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4344, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4344, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4344, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4344, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4344, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4344, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4344, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4344, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4344, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4344, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4344, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4344, file: !336, line: 70, baseType: !4360, size: 64, offset: 832)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4344, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4344, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4344, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4344, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4344, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4344, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4344, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4344, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4344, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4344, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4344, file: !336, line: 93, baseType: !4360, size: 64, offset: 1344)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4344, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4344, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4344, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4344, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!4377 = !{!4378, !4379, !4380, !4381, !4382, !4383}
!4378 = !DILocalVariable(name: "stream", arg: 1, scope: !4339, file: !807, line: 61, type: !4342)
!4379 = !DILocalVariable(name: "command_name", arg: 2, scope: !4339, file: !807, line: 62, type: !265)
!4380 = !DILocalVariable(name: "package", arg: 3, scope: !4339, file: !807, line: 62, type: !265)
!4381 = !DILocalVariable(name: "version", arg: 4, scope: !4339, file: !807, line: 63, type: !265)
!4382 = !DILocalVariable(name: "authors", arg: 5, scope: !4339, file: !807, line: 64, type: !4376)
!4383 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4339, file: !807, line: 64, type: !262)
!4384 = !DILocation(line: 0, scope: !4339)
!4385 = !DILocation(line: 66, column: 7, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4339, file: !807, line: 66, column: 7)
!4387 = !DILocation(line: 66, column: 7, scope: !4339)
!4388 = !DILocation(line: 67, column: 5, scope: !4386)
!4389 = !DILocation(line: 69, column: 5, scope: !4386)
!4390 = !DILocation(line: 83, column: 3, scope: !4339)
!4391 = !DILocation(line: 85, column: 3, scope: !4339)
!4392 = !DILocation(line: 88, column: 3, scope: !4339)
!4393 = !DILocation(line: 95, column: 3, scope: !4339)
!4394 = !DILocation(line: 97, column: 3, scope: !4339)
!4395 = !DILocation(line: 105, column: 7, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4339, file: !807, line: 98, column: 5)
!4397 = !DILocation(line: 106, column: 7, scope: !4396)
!4398 = !DILocation(line: 109, column: 7, scope: !4396)
!4399 = !DILocation(line: 110, column: 7, scope: !4396)
!4400 = !DILocation(line: 113, column: 7, scope: !4396)
!4401 = !DILocation(line: 115, column: 7, scope: !4396)
!4402 = !DILocation(line: 120, column: 7, scope: !4396)
!4403 = !DILocation(line: 122, column: 7, scope: !4396)
!4404 = !DILocation(line: 127, column: 7, scope: !4396)
!4405 = !DILocation(line: 129, column: 7, scope: !4396)
!4406 = !DILocation(line: 134, column: 7, scope: !4396)
!4407 = !DILocation(line: 137, column: 7, scope: !4396)
!4408 = !DILocation(line: 142, column: 7, scope: !4396)
!4409 = !DILocation(line: 145, column: 7, scope: !4396)
!4410 = !DILocation(line: 150, column: 7, scope: !4396)
!4411 = !DILocation(line: 154, column: 7, scope: !4396)
!4412 = !DILocation(line: 159, column: 7, scope: !4396)
!4413 = !DILocation(line: 163, column: 7, scope: !4396)
!4414 = !DILocation(line: 170, column: 7, scope: !4396)
!4415 = !DILocation(line: 174, column: 7, scope: !4396)
!4416 = !DILocation(line: 176, column: 1, scope: !4339)
!4417 = distinct !DISubprogram(name: "version_etc_ar", scope: !807, file: !807, line: 183, type: !4418, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4420)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{null, !4342, !265, !265, !265, !4376}
!4420 = !{!4421, !4422, !4423, !4424, !4425, !4426}
!4421 = !DILocalVariable(name: "stream", arg: 1, scope: !4417, file: !807, line: 183, type: !4342)
!4422 = !DILocalVariable(name: "command_name", arg: 2, scope: !4417, file: !807, line: 184, type: !265)
!4423 = !DILocalVariable(name: "package", arg: 3, scope: !4417, file: !807, line: 184, type: !265)
!4424 = !DILocalVariable(name: "version", arg: 4, scope: !4417, file: !807, line: 185, type: !265)
!4425 = !DILocalVariable(name: "authors", arg: 5, scope: !4417, file: !807, line: 185, type: !4376)
!4426 = !DILocalVariable(name: "n_authors", scope: !4417, file: !807, line: 187, type: !262)
!4427 = !DILocation(line: 0, scope: !4417)
!4428 = !DILocation(line: 189, column: 8, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4417, file: !807, line: 189, column: 3)
!4430 = !DILocation(line: 189, scope: !4429)
!4431 = !DILocation(line: 189, column: 23, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4429, file: !807, line: 189, column: 3)
!4433 = !DILocation(line: 189, column: 3, scope: !4429)
!4434 = !DILocation(line: 189, column: 52, scope: !4432)
!4435 = distinct !{!4435, !4433, !4436, !1147}
!4436 = !DILocation(line: 190, column: 5, scope: !4429)
!4437 = !DILocation(line: 191, column: 3, scope: !4417)
!4438 = !DILocation(line: 192, column: 1, scope: !4417)
!4439 = distinct !DISubprogram(name: "version_etc_va", scope: !807, file: !807, line: 199, type: !4440, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4453)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{null, !4342, !265, !265, !265, !4442}
!4442 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !609, line: 52, baseType: !4443)
!4443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !611, line: 14, baseType: !4444)
!4444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4445, baseType: !4446)
!4445 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4447)
!4447 = !{!4448, !4449, !4450, !4451, !4452}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4446, file: !4445, line: 192, baseType: !259, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4446, file: !4445, line: 192, baseType: !259, size: 64, offset: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4446, file: !4445, line: 192, baseType: !259, size: 64, offset: 128)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4446, file: !4445, line: 192, baseType: !260, size: 32, offset: 192)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4446, file: !4445, line: 192, baseType: !260, size: 32, offset: 224)
!4453 = !{!4454, !4455, !4456, !4457, !4458, !4459, !4460}
!4454 = !DILocalVariable(name: "stream", arg: 1, scope: !4439, file: !807, line: 199, type: !4342)
!4455 = !DILocalVariable(name: "command_name", arg: 2, scope: !4439, file: !807, line: 200, type: !265)
!4456 = !DILocalVariable(name: "package", arg: 3, scope: !4439, file: !807, line: 200, type: !265)
!4457 = !DILocalVariable(name: "version", arg: 4, scope: !4439, file: !807, line: 201, type: !265)
!4458 = !DILocalVariable(name: "authors", arg: 5, scope: !4439, file: !807, line: 201, type: !4442)
!4459 = !DILocalVariable(name: "n_authors", scope: !4439, file: !807, line: 203, type: !262)
!4460 = !DILocalVariable(name: "authtab", scope: !4439, file: !807, line: 204, type: !4461)
!4461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 640, elements: !209)
!4462 = !DILocation(line: 0, scope: !4439)
!4463 = !DILocation(line: 201, column: 46, scope: !4439)
!4464 = !DILocation(line: 204, column: 3, scope: !4439)
!4465 = !DILocation(line: 204, column: 15, scope: !4439)
!4466 = !DILocation(line: 208, column: 35, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4468, file: !807, line: 206, column: 3)
!4468 = distinct !DILexicalBlock(scope: !4439, file: !807, line: 206, column: 3)
!4469 = !DILocation(line: 208, column: 33, scope: !4467)
!4470 = !DILocation(line: 208, column: 67, scope: !4467)
!4471 = !DILocation(line: 206, column: 3, scope: !4468)
!4472 = !DILocation(line: 208, column: 14, scope: !4467)
!4473 = !DILocation(line: 0, scope: !4468)
!4474 = !DILocation(line: 211, column: 3, scope: !4439)
!4475 = !DILocation(line: 213, column: 1, scope: !4439)
!4476 = distinct !DISubprogram(name: "version_etc", scope: !807, file: !807, line: 230, type: !4477, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4479)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{null, !4342, !265, !265, !265, null}
!4479 = !{!4480, !4481, !4482, !4483, !4484}
!4480 = !DILocalVariable(name: "stream", arg: 1, scope: !4476, file: !807, line: 230, type: !4342)
!4481 = !DILocalVariable(name: "command_name", arg: 2, scope: !4476, file: !807, line: 231, type: !265)
!4482 = !DILocalVariable(name: "package", arg: 3, scope: !4476, file: !807, line: 231, type: !265)
!4483 = !DILocalVariable(name: "version", arg: 4, scope: !4476, file: !807, line: 232, type: !265)
!4484 = !DILocalVariable(name: "authors", scope: !4476, file: !807, line: 234, type: !4442)
!4485 = !DILocation(line: 0, scope: !4476)
!4486 = !DILocation(line: 234, column: 3, scope: !4476)
!4487 = !DILocation(line: 234, column: 11, scope: !4476)
!4488 = !DILocation(line: 235, column: 3, scope: !4476)
!4489 = !DILocation(line: 236, column: 3, scope: !4476)
!4490 = !DILocation(line: 237, column: 3, scope: !4476)
!4491 = !DILocation(line: 238, column: 1, scope: !4476)
!4492 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !807, file: !807, line: 241, type: !648, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !1088)
!4493 = !DILocation(line: 243, column: 3, scope: !4492)
!4494 = !DILocation(line: 248, column: 3, scope: !4492)
!4495 = !DILocation(line: 254, column: 3, scope: !4492)
!4496 = !DILocation(line: 259, column: 3, scope: !4492)
!4497 = !DILocation(line: 261, column: 1, scope: !4492)
!4498 = distinct !DISubprogram(name: "xnrealloc", scope: !4499, file: !4499, line: 147, type: !4500, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4502)
!4499 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!259, !259, !262, !262}
!4502 = !{!4503, !4504, !4505}
!4503 = !DILocalVariable(name: "p", arg: 1, scope: !4498, file: !4499, line: 147, type: !259)
!4504 = !DILocalVariable(name: "n", arg: 2, scope: !4498, file: !4499, line: 147, type: !262)
!4505 = !DILocalVariable(name: "s", arg: 3, scope: !4498, file: !4499, line: 147, type: !262)
!4506 = !DILocation(line: 0, scope: !4498)
!4507 = !DILocalVariable(name: "p", arg: 1, scope: !4508, file: !929, line: 83, type: !259)
!4508 = distinct !DISubprogram(name: "xreallocarray", scope: !929, file: !929, line: 83, type: !4500, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4509)
!4509 = !{!4507, !4510, !4511}
!4510 = !DILocalVariable(name: "n", arg: 2, scope: !4508, file: !929, line: 83, type: !262)
!4511 = !DILocalVariable(name: "s", arg: 3, scope: !4508, file: !929, line: 83, type: !262)
!4512 = !DILocation(line: 0, scope: !4508, inlinedAt: !4513)
!4513 = distinct !DILocation(line: 149, column: 10, scope: !4498)
!4514 = !DILocation(line: 85, column: 25, scope: !4508, inlinedAt: !4513)
!4515 = !DILocalVariable(name: "p", arg: 1, scope: !4516, file: !929, line: 37, type: !259)
!4516 = distinct !DISubprogram(name: "check_nonnull", scope: !929, file: !929, line: 37, type: !4517, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4519)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!259, !259}
!4519 = !{!4515}
!4520 = !DILocation(line: 0, scope: !4516, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 85, column: 10, scope: !4508, inlinedAt: !4513)
!4522 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4521)
!4523 = distinct !DILexicalBlock(scope: !4516, file: !929, line: 39, column: 7)
!4524 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4521)
!4525 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4521)
!4526 = !DILocation(line: 149, column: 3, scope: !4498)
!4527 = !DILocation(line: 0, scope: !4508)
!4528 = !DILocation(line: 85, column: 25, scope: !4508)
!4529 = !DILocation(line: 0, scope: !4516, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 85, column: 10, scope: !4508)
!4531 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4530)
!4532 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4530)
!4533 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4530)
!4534 = !DILocation(line: 85, column: 3, scope: !4508)
!4535 = distinct !DISubprogram(name: "xmalloc", scope: !929, file: !929, line: 47, type: !4536, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4538)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!259, !262}
!4538 = !{!4539}
!4539 = !DILocalVariable(name: "s", arg: 1, scope: !4535, file: !929, line: 47, type: !262)
!4540 = !DILocation(line: 0, scope: !4535)
!4541 = !DILocation(line: 49, column: 25, scope: !4535)
!4542 = !DILocation(line: 0, scope: !4516, inlinedAt: !4543)
!4543 = distinct !DILocation(line: 49, column: 10, scope: !4535)
!4544 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4543)
!4545 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4543)
!4546 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4543)
!4547 = !DILocation(line: 49, column: 3, scope: !4535)
!4548 = !DISubprogram(name: "malloc", scope: !1206, file: !1206, line: 540, type: !4536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!4549 = distinct !DISubprogram(name: "ximalloc", scope: !929, file: !929, line: 53, type: !4550, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4552)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!259, !948}
!4552 = !{!4553}
!4553 = !DILocalVariable(name: "s", arg: 1, scope: !4549, file: !929, line: 53, type: !948)
!4554 = !DILocation(line: 0, scope: !4549)
!4555 = !DILocalVariable(name: "s", arg: 1, scope: !4556, file: !4557, line: 55, type: !948)
!4556 = distinct !DISubprogram(name: "imalloc", scope: !4557, file: !4557, line: 55, type: !4550, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4558)
!4557 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4558 = !{!4555}
!4559 = !DILocation(line: 0, scope: !4556, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 55, column: 25, scope: !4549)
!4561 = !DILocation(line: 57, column: 26, scope: !4556, inlinedAt: !4560)
!4562 = !DILocation(line: 0, scope: !4516, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 55, column: 10, scope: !4549)
!4564 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4563)
!4565 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4563)
!4566 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4563)
!4567 = !DILocation(line: 55, column: 3, scope: !4549)
!4568 = distinct !DISubprogram(name: "xcharalloc", scope: !929, file: !929, line: 59, type: !4569, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4571)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!258, !262}
!4571 = !{!4572}
!4572 = !DILocalVariable(name: "n", arg: 1, scope: !4568, file: !929, line: 59, type: !262)
!4573 = !DILocation(line: 0, scope: !4568)
!4574 = !DILocation(line: 0, scope: !4535, inlinedAt: !4575)
!4575 = distinct !DILocation(line: 61, column: 10, scope: !4568)
!4576 = !DILocation(line: 49, column: 25, scope: !4535, inlinedAt: !4575)
!4577 = !DILocation(line: 0, scope: !4516, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 49, column: 10, scope: !4535, inlinedAt: !4575)
!4579 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4578)
!4580 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4578)
!4581 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4578)
!4582 = !DILocation(line: 61, column: 3, scope: !4568)
!4583 = distinct !DISubprogram(name: "xrealloc", scope: !929, file: !929, line: 68, type: !4584, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4586)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!259, !259, !262}
!4586 = !{!4587, !4588}
!4587 = !DILocalVariable(name: "p", arg: 1, scope: !4583, file: !929, line: 68, type: !259)
!4588 = !DILocalVariable(name: "s", arg: 2, scope: !4583, file: !929, line: 68, type: !262)
!4589 = !DILocation(line: 0, scope: !4583)
!4590 = !DILocalVariable(name: "ptr", arg: 1, scope: !4591, file: !4592, line: 2057, type: !259)
!4591 = distinct !DISubprogram(name: "rpl_realloc", scope: !4592, file: !4592, line: 2057, type: !4584, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4593)
!4592 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4593 = !{!4590, !4594}
!4594 = !DILocalVariable(name: "size", arg: 2, scope: !4591, file: !4592, line: 2057, type: !262)
!4595 = !DILocation(line: 0, scope: !4591, inlinedAt: !4596)
!4596 = distinct !DILocation(line: 70, column: 25, scope: !4583)
!4597 = !DILocation(line: 2059, column: 24, scope: !4591, inlinedAt: !4596)
!4598 = !DILocation(line: 2059, column: 10, scope: !4591, inlinedAt: !4596)
!4599 = !DILocation(line: 0, scope: !4516, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 70, column: 10, scope: !4583)
!4601 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4600)
!4602 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4600)
!4603 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4600)
!4604 = !DILocation(line: 70, column: 3, scope: !4583)
!4605 = !DISubprogram(name: "realloc", scope: !1206, file: !1206, line: 551, type: !4584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!4606 = distinct !DISubprogram(name: "xirealloc", scope: !929, file: !929, line: 74, type: !4607, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4609)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!259, !259, !948}
!4609 = !{!4610, !4611}
!4610 = !DILocalVariable(name: "p", arg: 1, scope: !4606, file: !929, line: 74, type: !259)
!4611 = !DILocalVariable(name: "s", arg: 2, scope: !4606, file: !929, line: 74, type: !948)
!4612 = !DILocation(line: 0, scope: !4606)
!4613 = !DILocalVariable(name: "p", arg: 1, scope: !4614, file: !4557, line: 66, type: !259)
!4614 = distinct !DISubprogram(name: "irealloc", scope: !4557, file: !4557, line: 66, type: !4607, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4615)
!4615 = !{!4613, !4616}
!4616 = !DILocalVariable(name: "s", arg: 2, scope: !4614, file: !4557, line: 66, type: !948)
!4617 = !DILocation(line: 0, scope: !4614, inlinedAt: !4618)
!4618 = distinct !DILocation(line: 76, column: 25, scope: !4606)
!4619 = !DILocation(line: 0, scope: !4591, inlinedAt: !4620)
!4620 = distinct !DILocation(line: 68, column: 26, scope: !4614, inlinedAt: !4618)
!4621 = !DILocation(line: 2059, column: 24, scope: !4591, inlinedAt: !4620)
!4622 = !DILocation(line: 2059, column: 10, scope: !4591, inlinedAt: !4620)
!4623 = !DILocation(line: 0, scope: !4516, inlinedAt: !4624)
!4624 = distinct !DILocation(line: 76, column: 10, scope: !4606)
!4625 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4624)
!4626 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4624)
!4627 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4624)
!4628 = !DILocation(line: 76, column: 3, scope: !4606)
!4629 = distinct !DISubprogram(name: "xireallocarray", scope: !929, file: !929, line: 89, type: !4630, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4632)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!259, !259, !948, !948}
!4632 = !{!4633, !4634, !4635}
!4633 = !DILocalVariable(name: "p", arg: 1, scope: !4629, file: !929, line: 89, type: !259)
!4634 = !DILocalVariable(name: "n", arg: 2, scope: !4629, file: !929, line: 89, type: !948)
!4635 = !DILocalVariable(name: "s", arg: 3, scope: !4629, file: !929, line: 89, type: !948)
!4636 = !DILocation(line: 0, scope: !4629)
!4637 = !DILocalVariable(name: "p", arg: 1, scope: !4638, file: !4557, line: 98, type: !259)
!4638 = distinct !DISubprogram(name: "ireallocarray", scope: !4557, file: !4557, line: 98, type: !4630, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4639)
!4639 = !{!4637, !4640, !4641}
!4640 = !DILocalVariable(name: "n", arg: 2, scope: !4638, file: !4557, line: 98, type: !948)
!4641 = !DILocalVariable(name: "s", arg: 3, scope: !4638, file: !4557, line: 98, type: !948)
!4642 = !DILocation(line: 0, scope: !4638, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 91, column: 25, scope: !4629)
!4644 = !DILocation(line: 101, column: 13, scope: !4638, inlinedAt: !4643)
!4645 = !DILocation(line: 0, scope: !4516, inlinedAt: !4646)
!4646 = distinct !DILocation(line: 91, column: 10, scope: !4629)
!4647 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4646)
!4648 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4646)
!4649 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4646)
!4650 = !DILocation(line: 91, column: 3, scope: !4629)
!4651 = distinct !DISubprogram(name: "xnmalloc", scope: !929, file: !929, line: 98, type: !4652, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4654)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!259, !262, !262}
!4654 = !{!4655, !4656}
!4655 = !DILocalVariable(name: "n", arg: 1, scope: !4651, file: !929, line: 98, type: !262)
!4656 = !DILocalVariable(name: "s", arg: 2, scope: !4651, file: !929, line: 98, type: !262)
!4657 = !DILocation(line: 0, scope: !4651)
!4658 = !DILocation(line: 0, scope: !4508, inlinedAt: !4659)
!4659 = distinct !DILocation(line: 100, column: 10, scope: !4651)
!4660 = !DILocation(line: 85, column: 25, scope: !4508, inlinedAt: !4659)
!4661 = !DILocation(line: 0, scope: !4516, inlinedAt: !4662)
!4662 = distinct !DILocation(line: 85, column: 10, scope: !4508, inlinedAt: !4659)
!4663 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4662)
!4664 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4662)
!4665 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4662)
!4666 = !DILocation(line: 100, column: 3, scope: !4651)
!4667 = distinct !DISubprogram(name: "xinmalloc", scope: !929, file: !929, line: 104, type: !4668, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4670)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!259, !948, !948}
!4670 = !{!4671, !4672}
!4671 = !DILocalVariable(name: "n", arg: 1, scope: !4667, file: !929, line: 104, type: !948)
!4672 = !DILocalVariable(name: "s", arg: 2, scope: !4667, file: !929, line: 104, type: !948)
!4673 = !DILocation(line: 0, scope: !4667)
!4674 = !DILocation(line: 0, scope: !4629, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 106, column: 10, scope: !4667)
!4676 = !DILocation(line: 0, scope: !4638, inlinedAt: !4677)
!4677 = distinct !DILocation(line: 91, column: 25, scope: !4629, inlinedAt: !4675)
!4678 = !DILocation(line: 101, column: 13, scope: !4638, inlinedAt: !4677)
!4679 = !DILocation(line: 0, scope: !4516, inlinedAt: !4680)
!4680 = distinct !DILocation(line: 91, column: 10, scope: !4629, inlinedAt: !4675)
!4681 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4680)
!4682 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4680)
!4683 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4680)
!4684 = !DILocation(line: 106, column: 3, scope: !4667)
!4685 = distinct !DISubprogram(name: "x2realloc", scope: !929, file: !929, line: 116, type: !4686, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4688)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!259, !259, !935}
!4688 = !{!4689, !4690}
!4689 = !DILocalVariable(name: "p", arg: 1, scope: !4685, file: !929, line: 116, type: !259)
!4690 = !DILocalVariable(name: "ps", arg: 2, scope: !4685, file: !929, line: 116, type: !935)
!4691 = !DILocation(line: 0, scope: !4685)
!4692 = !DILocation(line: 0, scope: !932, inlinedAt: !4693)
!4693 = distinct !DILocation(line: 118, column: 10, scope: !4685)
!4694 = !DILocation(line: 178, column: 14, scope: !932, inlinedAt: !4693)
!4695 = !DILocation(line: 180, column: 9, scope: !4696, inlinedAt: !4693)
!4696 = distinct !DILexicalBlock(scope: !932, file: !929, line: 180, column: 7)
!4697 = !DILocation(line: 180, column: 7, scope: !932, inlinedAt: !4693)
!4698 = !DILocation(line: 182, column: 13, scope: !4699, inlinedAt: !4693)
!4699 = distinct !DILexicalBlock(scope: !4700, file: !929, line: 182, column: 11)
!4700 = distinct !DILexicalBlock(scope: !4696, file: !929, line: 181, column: 5)
!4701 = !DILocation(line: 182, column: 11, scope: !4700, inlinedAt: !4693)
!4702 = !DILocation(line: 197, column: 11, scope: !4703, inlinedAt: !4693)
!4703 = distinct !DILexicalBlock(scope: !4704, file: !929, line: 197, column: 11)
!4704 = distinct !DILexicalBlock(scope: !4696, file: !929, line: 195, column: 5)
!4705 = !DILocation(line: 197, column: 11, scope: !4704, inlinedAt: !4693)
!4706 = !DILocation(line: 198, column: 9, scope: !4703, inlinedAt: !4693)
!4707 = !DILocation(line: 0, scope: !4508, inlinedAt: !4708)
!4708 = distinct !DILocation(line: 201, column: 7, scope: !932, inlinedAt: !4693)
!4709 = !DILocation(line: 85, column: 25, scope: !4508, inlinedAt: !4708)
!4710 = !DILocation(line: 0, scope: !4516, inlinedAt: !4711)
!4711 = distinct !DILocation(line: 85, column: 10, scope: !4508, inlinedAt: !4708)
!4712 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4711)
!4713 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4711)
!4714 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4711)
!4715 = !DILocation(line: 202, column: 7, scope: !932, inlinedAt: !4693)
!4716 = !DILocation(line: 118, column: 3, scope: !4685)
!4717 = !DILocation(line: 0, scope: !932)
!4718 = !DILocation(line: 178, column: 14, scope: !932)
!4719 = !DILocation(line: 180, column: 9, scope: !4696)
!4720 = !DILocation(line: 180, column: 7, scope: !932)
!4721 = !DILocation(line: 182, column: 13, scope: !4699)
!4722 = !DILocation(line: 182, column: 11, scope: !4700)
!4723 = !DILocation(line: 190, column: 30, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4699, file: !929, line: 183, column: 9)
!4725 = !DILocation(line: 191, column: 16, scope: !4724)
!4726 = !DILocation(line: 191, column: 13, scope: !4724)
!4727 = !DILocation(line: 192, column: 9, scope: !4724)
!4728 = !DILocation(line: 197, column: 11, scope: !4703)
!4729 = !DILocation(line: 197, column: 11, scope: !4704)
!4730 = !DILocation(line: 198, column: 9, scope: !4703)
!4731 = !DILocation(line: 0, scope: !4508, inlinedAt: !4732)
!4732 = distinct !DILocation(line: 201, column: 7, scope: !932)
!4733 = !DILocation(line: 85, column: 25, scope: !4508, inlinedAt: !4732)
!4734 = !DILocation(line: 0, scope: !4516, inlinedAt: !4735)
!4735 = distinct !DILocation(line: 85, column: 10, scope: !4508, inlinedAt: !4732)
!4736 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4735)
!4737 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4735)
!4738 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4735)
!4739 = !DILocation(line: 202, column: 7, scope: !932)
!4740 = !DILocation(line: 203, column: 3, scope: !932)
!4741 = !DILocation(line: 0, scope: !944)
!4742 = !DILocation(line: 230, column: 14, scope: !944)
!4743 = !DILocation(line: 238, column: 7, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !944, file: !929, line: 238, column: 7)
!4745 = !DILocation(line: 238, column: 7, scope: !944)
!4746 = !DILocation(line: 240, column: 9, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !944, file: !929, line: 240, column: 7)
!4748 = !DILocation(line: 240, column: 18, scope: !4747)
!4749 = !DILocation(line: 253, column: 8, scope: !944)
!4750 = !DILocation(line: 258, column: 27, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4752, file: !929, line: 257, column: 5)
!4752 = distinct !DILexicalBlock(scope: !944, file: !929, line: 256, column: 7)
!4753 = !DILocation(line: 259, column: 32, scope: !4751)
!4754 = !DILocation(line: 260, column: 5, scope: !4751)
!4755 = !DILocation(line: 262, column: 9, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !944, file: !929, line: 262, column: 7)
!4757 = !DILocation(line: 262, column: 7, scope: !944)
!4758 = !DILocation(line: 263, column: 9, scope: !4756)
!4759 = !DILocation(line: 263, column: 5, scope: !4756)
!4760 = !DILocation(line: 264, column: 9, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !944, file: !929, line: 264, column: 7)
!4762 = !DILocation(line: 264, column: 14, scope: !4761)
!4763 = !DILocation(line: 265, column: 7, scope: !4761)
!4764 = !DILocation(line: 265, column: 11, scope: !4761)
!4765 = !DILocation(line: 266, column: 11, scope: !4761)
!4766 = !DILocation(line: 267, column: 14, scope: !4761)
!4767 = !DILocation(line: 264, column: 7, scope: !944)
!4768 = !DILocation(line: 268, column: 5, scope: !4761)
!4769 = !DILocation(line: 0, scope: !4583, inlinedAt: !4770)
!4770 = distinct !DILocation(line: 269, column: 8, scope: !944)
!4771 = !DILocation(line: 0, scope: !4591, inlinedAt: !4772)
!4772 = distinct !DILocation(line: 70, column: 25, scope: !4583, inlinedAt: !4770)
!4773 = !DILocation(line: 2059, column: 24, scope: !4591, inlinedAt: !4772)
!4774 = !DILocation(line: 2059, column: 10, scope: !4591, inlinedAt: !4772)
!4775 = !DILocation(line: 0, scope: !4516, inlinedAt: !4776)
!4776 = distinct !DILocation(line: 70, column: 10, scope: !4583, inlinedAt: !4770)
!4777 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4776)
!4778 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4776)
!4779 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4776)
!4780 = !DILocation(line: 270, column: 7, scope: !944)
!4781 = !DILocation(line: 271, column: 3, scope: !944)
!4782 = distinct !DISubprogram(name: "xzalloc", scope: !929, file: !929, line: 279, type: !4536, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4783)
!4783 = !{!4784}
!4784 = !DILocalVariable(name: "s", arg: 1, scope: !4782, file: !929, line: 279, type: !262)
!4785 = !DILocation(line: 0, scope: !4782)
!4786 = !DILocalVariable(name: "n", arg: 1, scope: !4787, file: !929, line: 294, type: !262)
!4787 = distinct !DISubprogram(name: "xcalloc", scope: !929, file: !929, line: 294, type: !4652, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4788)
!4788 = !{!4786, !4789}
!4789 = !DILocalVariable(name: "s", arg: 2, scope: !4787, file: !929, line: 294, type: !262)
!4790 = !DILocation(line: 0, scope: !4787, inlinedAt: !4791)
!4791 = distinct !DILocation(line: 281, column: 10, scope: !4782)
!4792 = !DILocation(line: 296, column: 25, scope: !4787, inlinedAt: !4791)
!4793 = !DILocation(line: 0, scope: !4516, inlinedAt: !4794)
!4794 = distinct !DILocation(line: 296, column: 10, scope: !4787, inlinedAt: !4791)
!4795 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4794)
!4796 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4794)
!4797 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4794)
!4798 = !DILocation(line: 281, column: 3, scope: !4782)
!4799 = !DISubprogram(name: "calloc", scope: !1206, file: !1206, line: 543, type: !4652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!4800 = !DILocation(line: 0, scope: !4787)
!4801 = !DILocation(line: 296, column: 25, scope: !4787)
!4802 = !DILocation(line: 0, scope: !4516, inlinedAt: !4803)
!4803 = distinct !DILocation(line: 296, column: 10, scope: !4787)
!4804 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4803)
!4805 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4803)
!4806 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4803)
!4807 = !DILocation(line: 296, column: 3, scope: !4787)
!4808 = distinct !DISubprogram(name: "xizalloc", scope: !929, file: !929, line: 285, type: !4550, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4809)
!4809 = !{!4810}
!4810 = !DILocalVariable(name: "s", arg: 1, scope: !4808, file: !929, line: 285, type: !948)
!4811 = !DILocation(line: 0, scope: !4808)
!4812 = !DILocalVariable(name: "n", arg: 1, scope: !4813, file: !929, line: 300, type: !948)
!4813 = distinct !DISubprogram(name: "xicalloc", scope: !929, file: !929, line: 300, type: !4668, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4814)
!4814 = !{!4812, !4815}
!4815 = !DILocalVariable(name: "s", arg: 2, scope: !4813, file: !929, line: 300, type: !948)
!4816 = !DILocation(line: 0, scope: !4813, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 287, column: 10, scope: !4808)
!4818 = !DILocalVariable(name: "n", arg: 1, scope: !4819, file: !4557, line: 77, type: !948)
!4819 = distinct !DISubprogram(name: "icalloc", scope: !4557, file: !4557, line: 77, type: !4668, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4820)
!4820 = !{!4818, !4821}
!4821 = !DILocalVariable(name: "s", arg: 2, scope: !4819, file: !4557, line: 77, type: !948)
!4822 = !DILocation(line: 0, scope: !4819, inlinedAt: !4823)
!4823 = distinct !DILocation(line: 302, column: 25, scope: !4813, inlinedAt: !4817)
!4824 = !DILocation(line: 91, column: 10, scope: !4819, inlinedAt: !4823)
!4825 = !DILocation(line: 0, scope: !4516, inlinedAt: !4826)
!4826 = distinct !DILocation(line: 302, column: 10, scope: !4813, inlinedAt: !4817)
!4827 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4826)
!4828 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4826)
!4829 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4826)
!4830 = !DILocation(line: 287, column: 3, scope: !4808)
!4831 = !DILocation(line: 0, scope: !4813)
!4832 = !DILocation(line: 0, scope: !4819, inlinedAt: !4833)
!4833 = distinct !DILocation(line: 302, column: 25, scope: !4813)
!4834 = !DILocation(line: 91, column: 10, scope: !4819, inlinedAt: !4833)
!4835 = !DILocation(line: 0, scope: !4516, inlinedAt: !4836)
!4836 = distinct !DILocation(line: 302, column: 10, scope: !4813)
!4837 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4836)
!4838 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4836)
!4839 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4836)
!4840 = !DILocation(line: 302, column: 3, scope: !4813)
!4841 = distinct !DISubprogram(name: "xmemdup", scope: !929, file: !929, line: 310, type: !4842, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4844)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!259, !1230, !262}
!4844 = !{!4845, !4846}
!4845 = !DILocalVariable(name: "p", arg: 1, scope: !4841, file: !929, line: 310, type: !1230)
!4846 = !DILocalVariable(name: "s", arg: 2, scope: !4841, file: !929, line: 310, type: !262)
!4847 = !DILocation(line: 0, scope: !4841)
!4848 = !DILocation(line: 0, scope: !4535, inlinedAt: !4849)
!4849 = distinct !DILocation(line: 312, column: 18, scope: !4841)
!4850 = !DILocation(line: 49, column: 25, scope: !4535, inlinedAt: !4849)
!4851 = !DILocation(line: 0, scope: !4516, inlinedAt: !4852)
!4852 = distinct !DILocation(line: 49, column: 10, scope: !4535, inlinedAt: !4849)
!4853 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4852)
!4854 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4852)
!4855 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4852)
!4856 = !DILocalVariable(name: "__dest", arg: 1, scope: !4857, file: !2821, line: 26, type: !4860)
!4857 = distinct !DISubprogram(name: "memcpy", scope: !2821, file: !2821, line: 26, type: !4858, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4861)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!259, !4860, !1229, !262}
!4860 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !259)
!4861 = !{!4856, !4862, !4863}
!4862 = !DILocalVariable(name: "__src", arg: 2, scope: !4857, file: !2821, line: 26, type: !1229)
!4863 = !DILocalVariable(name: "__len", arg: 3, scope: !4857, file: !2821, line: 26, type: !262)
!4864 = !DILocation(line: 0, scope: !4857, inlinedAt: !4865)
!4865 = distinct !DILocation(line: 312, column: 10, scope: !4841)
!4866 = !DILocation(line: 29, column: 10, scope: !4857, inlinedAt: !4865)
!4867 = !DILocation(line: 312, column: 3, scope: !4841)
!4868 = distinct !DISubprogram(name: "ximemdup", scope: !929, file: !929, line: 316, type: !4869, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4871)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!259, !1230, !948}
!4871 = !{!4872, !4873}
!4872 = !DILocalVariable(name: "p", arg: 1, scope: !4868, file: !929, line: 316, type: !1230)
!4873 = !DILocalVariable(name: "s", arg: 2, scope: !4868, file: !929, line: 316, type: !948)
!4874 = !DILocation(line: 0, scope: !4868)
!4875 = !DILocation(line: 0, scope: !4549, inlinedAt: !4876)
!4876 = distinct !DILocation(line: 318, column: 18, scope: !4868)
!4877 = !DILocation(line: 0, scope: !4556, inlinedAt: !4878)
!4878 = distinct !DILocation(line: 55, column: 25, scope: !4549, inlinedAt: !4876)
!4879 = !DILocation(line: 57, column: 26, scope: !4556, inlinedAt: !4878)
!4880 = !DILocation(line: 0, scope: !4516, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 55, column: 10, scope: !4549, inlinedAt: !4876)
!4882 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4881)
!4883 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4881)
!4884 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4881)
!4885 = !DILocation(line: 0, scope: !4857, inlinedAt: !4886)
!4886 = distinct !DILocation(line: 318, column: 10, scope: !4868)
!4887 = !DILocation(line: 29, column: 10, scope: !4857, inlinedAt: !4886)
!4888 = !DILocation(line: 318, column: 3, scope: !4868)
!4889 = distinct !DISubprogram(name: "ximemdup0", scope: !929, file: !929, line: 325, type: !4890, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4892)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!258, !1230, !948}
!4892 = !{!4893, !4894, !4895}
!4893 = !DILocalVariable(name: "p", arg: 1, scope: !4889, file: !929, line: 325, type: !1230)
!4894 = !DILocalVariable(name: "s", arg: 2, scope: !4889, file: !929, line: 325, type: !948)
!4895 = !DILocalVariable(name: "result", scope: !4889, file: !929, line: 327, type: !258)
!4896 = !DILocation(line: 0, scope: !4889)
!4897 = !DILocation(line: 327, column: 30, scope: !4889)
!4898 = !DILocation(line: 0, scope: !4549, inlinedAt: !4899)
!4899 = distinct !DILocation(line: 327, column: 18, scope: !4889)
!4900 = !DILocation(line: 0, scope: !4556, inlinedAt: !4901)
!4901 = distinct !DILocation(line: 55, column: 25, scope: !4549, inlinedAt: !4899)
!4902 = !DILocation(line: 57, column: 26, scope: !4556, inlinedAt: !4901)
!4903 = !DILocation(line: 0, scope: !4516, inlinedAt: !4904)
!4904 = distinct !DILocation(line: 55, column: 10, scope: !4549, inlinedAt: !4899)
!4905 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4904)
!4906 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4904)
!4907 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4904)
!4908 = !DILocation(line: 328, column: 3, scope: !4889)
!4909 = !DILocation(line: 328, column: 13, scope: !4889)
!4910 = !DILocation(line: 0, scope: !4857, inlinedAt: !4911)
!4911 = distinct !DILocation(line: 329, column: 10, scope: !4889)
!4912 = !DILocation(line: 29, column: 10, scope: !4857, inlinedAt: !4911)
!4913 = !DILocation(line: 329, column: 3, scope: !4889)
!4914 = distinct !DISubprogram(name: "xstrdup", scope: !929, file: !929, line: 335, type: !1208, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !4915)
!4915 = !{!4916}
!4916 = !DILocalVariable(name: "string", arg: 1, scope: !4914, file: !929, line: 335, type: !265)
!4917 = !DILocation(line: 0, scope: !4914)
!4918 = !DILocation(line: 337, column: 27, scope: !4914)
!4919 = !DILocation(line: 337, column: 43, scope: !4914)
!4920 = !DILocation(line: 0, scope: !4841, inlinedAt: !4921)
!4921 = distinct !DILocation(line: 337, column: 10, scope: !4914)
!4922 = !DILocation(line: 0, scope: !4535, inlinedAt: !4923)
!4923 = distinct !DILocation(line: 312, column: 18, scope: !4841, inlinedAt: !4921)
!4924 = !DILocation(line: 49, column: 25, scope: !4535, inlinedAt: !4923)
!4925 = !DILocation(line: 0, scope: !4516, inlinedAt: !4926)
!4926 = distinct !DILocation(line: 49, column: 10, scope: !4535, inlinedAt: !4923)
!4927 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4926)
!4928 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4926)
!4929 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4926)
!4930 = !DILocation(line: 0, scope: !4857, inlinedAt: !4931)
!4931 = distinct !DILocation(line: 312, column: 10, scope: !4841, inlinedAt: !4921)
!4932 = !DILocation(line: 29, column: 10, scope: !4857, inlinedAt: !4931)
!4933 = !DILocation(line: 337, column: 3, scope: !4914)
!4934 = distinct !DISubprogram(name: "xalloc_die", scope: !883, file: !883, line: 32, type: !648, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !962, retainedNodes: !4935)
!4935 = !{!4936}
!4936 = !DILocalVariable(name: "__errstatus", scope: !4937, file: !883, line: 34, type: !4938)
!4937 = distinct !DILexicalBlock(scope: !4934, file: !883, line: 34, column: 3)
!4938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!4939 = !DILocation(line: 34, column: 3, scope: !4937)
!4940 = !DILocation(line: 0, scope: !4937)
!4941 = !DILocation(line: 40, column: 3, scope: !4934)
!4942 = distinct !DISubprogram(name: "close_stream", scope: !965, file: !965, line: 55, type: !4943, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !4979)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!260, !4945}
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !4947)
!4947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !4948)
!4948 = !{!4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4947, file: !336, line: 51, baseType: !260, size: 32)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4947, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4947, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4947, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4947, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4947, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4947, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4947, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4947, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4947, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4947, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4947, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4947, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4947, file: !336, line: 70, baseType: !4963, size: 64, offset: 832)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4947, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4947, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4947, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4947, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4947, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4947, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4947, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4947, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4947, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4947, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4947, file: !336, line: 93, baseType: !4963, size: 64, offset: 1344)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4947, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4947, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4947, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4947, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!4979 = !{!4980, !4981, !4983, !4984}
!4980 = !DILocalVariable(name: "stream", arg: 1, scope: !4942, file: !965, line: 55, type: !4945)
!4981 = !DILocalVariable(name: "some_pending", scope: !4942, file: !965, line: 57, type: !4982)
!4982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!4983 = !DILocalVariable(name: "prev_fail", scope: !4942, file: !965, line: 58, type: !4982)
!4984 = !DILocalVariable(name: "fclose_fail", scope: !4942, file: !965, line: 59, type: !4982)
!4985 = !DILocation(line: 0, scope: !4942)
!4986 = !DILocation(line: 57, column: 30, scope: !4942)
!4987 = !DILocalVariable(name: "__stream", arg: 1, scope: !4988, file: !2642, line: 135, type: !4945)
!4988 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2642, file: !2642, line: 135, type: !4943, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !4989)
!4989 = !{!4987}
!4990 = !DILocation(line: 0, scope: !4988, inlinedAt: !4991)
!4991 = distinct !DILocation(line: 58, column: 27, scope: !4942)
!4992 = !DILocation(line: 137, column: 10, scope: !4988, inlinedAt: !4991)
!4993 = !{!2651, !1101, i64 0}
!4994 = !DILocation(line: 58, column: 43, scope: !4942)
!4995 = !DILocation(line: 59, column: 29, scope: !4942)
!4996 = !DILocation(line: 59, column: 45, scope: !4942)
!4997 = !DILocation(line: 69, column: 17, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4942, file: !965, line: 69, column: 7)
!4999 = !DILocation(line: 57, column: 50, scope: !4942)
!5000 = !DILocation(line: 69, column: 33, scope: !4998)
!5001 = !DILocation(line: 69, column: 53, scope: !4998)
!5002 = !DILocation(line: 69, column: 59, scope: !4998)
!5003 = !DILocation(line: 69, column: 7, scope: !4942)
!5004 = !DILocation(line: 71, column: 11, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4998, file: !965, line: 70, column: 5)
!5006 = !DILocation(line: 72, column: 9, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !5005, file: !965, line: 71, column: 11)
!5008 = !DILocation(line: 72, column: 15, scope: !5007)
!5009 = !DILocation(line: 77, column: 1, scope: !4942)
!5010 = !DISubprogram(name: "__fpending", scope: !5011, file: !5011, line: 75, type: !5012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!5011 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!262, !4945}
!5014 = distinct !DISubprogram(name: "rpl_fclose", scope: !967, file: !967, line: 58, type: !5015, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !5051)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!260, !5017}
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !5019)
!5019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !5020)
!5020 = !{!5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5019, file: !336, line: 51, baseType: !260, size: 32)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5019, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5019, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5019, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5019, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5019, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5019, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5019, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5019, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5019, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5019, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5019, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5019, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5019, file: !336, line: 70, baseType: !5035, size: 64, offset: 832)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5019, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5019, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5019, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5019, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5019, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5019, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5019, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5019, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5019, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5019, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5019, file: !336, line: 93, baseType: !5035, size: 64, offset: 1344)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5019, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5019, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5019, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5019, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!5051 = !{!5052, !5053, !5054, !5055}
!5052 = !DILocalVariable(name: "fp", arg: 1, scope: !5014, file: !967, line: 58, type: !5017)
!5053 = !DILocalVariable(name: "saved_errno", scope: !5014, file: !967, line: 60, type: !260)
!5054 = !DILocalVariable(name: "fd", scope: !5014, file: !967, line: 63, type: !260)
!5055 = !DILocalVariable(name: "result", scope: !5014, file: !967, line: 74, type: !260)
!5056 = !DILocation(line: 0, scope: !5014)
!5057 = !DILocation(line: 63, column: 12, scope: !5014)
!5058 = !DILocation(line: 64, column: 10, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5014, file: !967, line: 64, column: 7)
!5060 = !DILocation(line: 64, column: 7, scope: !5014)
!5061 = !DILocation(line: 65, column: 12, scope: !5059)
!5062 = !DILocation(line: 65, column: 5, scope: !5059)
!5063 = !DILocation(line: 70, column: 9, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5014, file: !967, line: 70, column: 7)
!5065 = !DILocation(line: 70, column: 23, scope: !5064)
!5066 = !DILocation(line: 70, column: 33, scope: !5064)
!5067 = !DILocation(line: 70, column: 26, scope: !5064)
!5068 = !DILocation(line: 70, column: 59, scope: !5064)
!5069 = !DILocation(line: 71, column: 7, scope: !5064)
!5070 = !DILocation(line: 71, column: 10, scope: !5064)
!5071 = !DILocation(line: 70, column: 7, scope: !5014)
!5072 = !DILocation(line: 100, column: 12, scope: !5014)
!5073 = !DILocation(line: 105, column: 7, scope: !5014)
!5074 = !DILocation(line: 72, column: 19, scope: !5064)
!5075 = !DILocation(line: 105, column: 19, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5014, file: !967, line: 105, column: 7)
!5077 = !DILocation(line: 107, column: 13, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5076, file: !967, line: 106, column: 5)
!5079 = !DILocation(line: 109, column: 5, scope: !5078)
!5080 = !DILocation(line: 112, column: 1, scope: !5014)
!5081 = !DISubprogram(name: "fileno", scope: !609, file: !609, line: 809, type: !5015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!5082 = !DISubprogram(name: "fclose", scope: !609, file: !609, line: 178, type: !5015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!5083 = !DISubprogram(name: "__freading", scope: !5011, file: !5011, line: 51, type: !5015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!5084 = !DISubprogram(name: "lseek", scope: !2451, file: !2451, line: 339, type: !5085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!358, !260, !358, !260}
!5087 = distinct !DISubprogram(name: "rpl_fflush", scope: !969, file: !969, line: 130, type: !5088, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !5124)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{!260, !5090}
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !5092)
!5092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !5093)
!5093 = !{!5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5092, file: !336, line: 51, baseType: !260, size: 32)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5092, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5092, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5092, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5092, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5092, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5092, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5092, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5092, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5092, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5092, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5092, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5092, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5092, file: !336, line: 70, baseType: !5108, size: 64, offset: 832)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5092, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5092, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5092, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5092, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5092, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5092, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5092, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5092, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5092, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5092, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5092, file: !336, line: 93, baseType: !5108, size: 64, offset: 1344)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5092, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5092, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5092, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5092, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!5124 = !{!5125}
!5125 = !DILocalVariable(name: "stream", arg: 1, scope: !5087, file: !969, line: 130, type: !5090)
!5126 = !DILocation(line: 0, scope: !5087)
!5127 = !DILocation(line: 151, column: 14, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5087, file: !969, line: 151, column: 7)
!5129 = !DILocation(line: 151, column: 22, scope: !5128)
!5130 = !DILocation(line: 151, column: 27, scope: !5128)
!5131 = !DILocation(line: 151, column: 7, scope: !5087)
!5132 = !DILocation(line: 152, column: 12, scope: !5128)
!5133 = !DILocation(line: 152, column: 5, scope: !5128)
!5134 = !DILocalVariable(name: "fp", arg: 1, scope: !5135, file: !969, line: 42, type: !5090)
!5135 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !969, file: !969, line: 42, type: !5136, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !5138)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{null, !5090}
!5138 = !{!5134}
!5139 = !DILocation(line: 0, scope: !5135, inlinedAt: !5140)
!5140 = distinct !DILocation(line: 157, column: 3, scope: !5087)
!5141 = !DILocation(line: 44, column: 12, scope: !5142, inlinedAt: !5140)
!5142 = distinct !DILexicalBlock(scope: !5135, file: !969, line: 44, column: 7)
!5143 = !DILocation(line: 44, column: 19, scope: !5142, inlinedAt: !5140)
!5144 = !DILocation(line: 44, column: 7, scope: !5135, inlinedAt: !5140)
!5145 = !DILocation(line: 46, column: 5, scope: !5142, inlinedAt: !5140)
!5146 = !DILocation(line: 159, column: 10, scope: !5087)
!5147 = !DILocation(line: 159, column: 3, scope: !5087)
!5148 = !DILocation(line: 236, column: 1, scope: !5087)
!5149 = !DISubprogram(name: "fflush", scope: !609, file: !609, line: 230, type: !5088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!5150 = distinct !DISubprogram(name: "rpl_fseeko", scope: !971, file: !971, line: 28, type: !5151, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !970, retainedNodes: !5188)
!5151 = !DISubroutineType(types: !5152)
!5152 = !{!260, !5153, !5187, !260}
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !5155)
!5155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !5156)
!5156 = !{!5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186}
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5155, file: !336, line: 51, baseType: !260, size: 32)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5155, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5155, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5155, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5155, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5155, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5155, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5155, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5155, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5155, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5155, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5155, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5155, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5155, file: !336, line: 70, baseType: !5171, size: 64, offset: 832)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5155, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5155, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5155, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5155, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5155, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5155, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5155, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5155, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5155, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5155, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5155, file: !336, line: 93, baseType: !5171, size: 64, offset: 1344)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5155, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5155, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5155, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5155, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!5187 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !609, line: 63, baseType: !358)
!5188 = !{!5189, !5190, !5191, !5192}
!5189 = !DILocalVariable(name: "fp", arg: 1, scope: !5150, file: !971, line: 28, type: !5153)
!5190 = !DILocalVariable(name: "offset", arg: 2, scope: !5150, file: !971, line: 28, type: !5187)
!5191 = !DILocalVariable(name: "whence", arg: 3, scope: !5150, file: !971, line: 28, type: !260)
!5192 = !DILocalVariable(name: "pos", scope: !5193, file: !971, line: 123, type: !5187)
!5193 = distinct !DILexicalBlock(scope: !5194, file: !971, line: 119, column: 5)
!5194 = distinct !DILexicalBlock(scope: !5150, file: !971, line: 55, column: 7)
!5195 = !DILocation(line: 0, scope: !5150)
!5196 = !DILocation(line: 55, column: 12, scope: !5194)
!5197 = !{!2651, !1001, i64 16}
!5198 = !DILocation(line: 55, column: 33, scope: !5194)
!5199 = !{!2651, !1001, i64 8}
!5200 = !DILocation(line: 55, column: 25, scope: !5194)
!5201 = !DILocation(line: 56, column: 7, scope: !5194)
!5202 = !DILocation(line: 56, column: 15, scope: !5194)
!5203 = !DILocation(line: 56, column: 37, scope: !5194)
!5204 = !{!2651, !1001, i64 32}
!5205 = !DILocation(line: 56, column: 29, scope: !5194)
!5206 = !DILocation(line: 57, column: 7, scope: !5194)
!5207 = !DILocation(line: 57, column: 15, scope: !5194)
!5208 = !{!2651, !1001, i64 72}
!5209 = !DILocation(line: 57, column: 29, scope: !5194)
!5210 = !DILocation(line: 55, column: 7, scope: !5150)
!5211 = !DILocation(line: 123, column: 26, scope: !5193)
!5212 = !DILocation(line: 123, column: 19, scope: !5193)
!5213 = !DILocation(line: 0, scope: !5193)
!5214 = !DILocation(line: 124, column: 15, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5193, file: !971, line: 124, column: 11)
!5216 = !DILocation(line: 124, column: 11, scope: !5193)
!5217 = !DILocation(line: 135, column: 19, scope: !5193)
!5218 = !DILocation(line: 136, column: 12, scope: !5193)
!5219 = !DILocation(line: 136, column: 20, scope: !5193)
!5220 = !{!2651, !1655, i64 144}
!5221 = !DILocation(line: 167, column: 7, scope: !5193)
!5222 = !DILocation(line: 169, column: 10, scope: !5150)
!5223 = !DILocation(line: 169, column: 3, scope: !5150)
!5224 = !DILocation(line: 170, column: 1, scope: !5150)
!5225 = !DISubprogram(name: "fseeko", scope: !609, file: !609, line: 736, type: !5226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!260, !5153, !358, !260}
!5228 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !890, file: !890, line: 100, type: !5229, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !893, retainedNodes: !5232)
!5229 = !DISubroutineType(types: !5230)
!5230 = !{!262, !2839, !265, !262, !5231}
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!5232 = !{!5233, !5234, !5235, !5236, !5237}
!5233 = !DILocalVariable(name: "pwc", arg: 1, scope: !5228, file: !890, line: 100, type: !2839)
!5234 = !DILocalVariable(name: "s", arg: 2, scope: !5228, file: !890, line: 100, type: !265)
!5235 = !DILocalVariable(name: "n", arg: 3, scope: !5228, file: !890, line: 100, type: !262)
!5236 = !DILocalVariable(name: "ps", arg: 4, scope: !5228, file: !890, line: 100, type: !5231)
!5237 = !DILocalVariable(name: "ret", scope: !5228, file: !890, line: 130, type: !262)
!5238 = !DILocation(line: 0, scope: !5228)
!5239 = !DILocation(line: 105, column: 9, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5228, file: !890, line: 105, column: 7)
!5241 = !DILocation(line: 105, column: 7, scope: !5228)
!5242 = !DILocation(line: 117, column: 10, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5228, file: !890, line: 117, column: 7)
!5244 = !DILocation(line: 117, column: 7, scope: !5228)
!5245 = !DILocation(line: 130, column: 16, scope: !5228)
!5246 = !DILocation(line: 135, column: 11, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5228, file: !890, line: 135, column: 7)
!5248 = !DILocation(line: 135, column: 25, scope: !5247)
!5249 = !DILocation(line: 135, column: 30, scope: !5247)
!5250 = !DILocation(line: 135, column: 7, scope: !5228)
!5251 = !DILocalVariable(name: "ps", arg: 1, scope: !5252, file: !2812, line: 1135, type: !5231)
!5252 = distinct !DISubprogram(name: "mbszero", scope: !2812, file: !2812, line: 1135, type: !5253, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !893, retainedNodes: !5255)
!5253 = !DISubroutineType(types: !5254)
!5254 = !{null, !5231}
!5255 = !{!5251}
!5256 = !DILocation(line: 0, scope: !5252, inlinedAt: !5257)
!5257 = distinct !DILocation(line: 137, column: 5, scope: !5247)
!5258 = !DILocalVariable(name: "__dest", arg: 1, scope: !5259, file: !2821, line: 57, type: !259)
!5259 = distinct !DISubprogram(name: "memset", scope: !2821, file: !2821, line: 57, type: !2822, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !893, retainedNodes: !5260)
!5260 = !{!5258, !5261, !5262}
!5261 = !DILocalVariable(name: "__ch", arg: 2, scope: !5259, file: !2821, line: 57, type: !260)
!5262 = !DILocalVariable(name: "__len", arg: 3, scope: !5259, file: !2821, line: 57, type: !262)
!5263 = !DILocation(line: 0, scope: !5259, inlinedAt: !5264)
!5264 = distinct !DILocation(line: 1137, column: 3, scope: !5252, inlinedAt: !5257)
!5265 = !DILocation(line: 59, column: 10, scope: !5259, inlinedAt: !5264)
!5266 = !DILocation(line: 137, column: 5, scope: !5247)
!5267 = !DILocation(line: 138, column: 11, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5228, file: !890, line: 138, column: 7)
!5269 = !DILocation(line: 138, column: 7, scope: !5228)
!5270 = !DILocation(line: 139, column: 5, scope: !5268)
!5271 = !DILocation(line: 143, column: 26, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5228, file: !890, line: 143, column: 7)
!5273 = !DILocation(line: 143, column: 41, scope: !5272)
!5274 = !DILocation(line: 143, column: 7, scope: !5228)
!5275 = !DILocation(line: 145, column: 15, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5277, file: !890, line: 145, column: 11)
!5277 = distinct !DILexicalBlock(scope: !5272, file: !890, line: 144, column: 5)
!5278 = !DILocation(line: 145, column: 11, scope: !5277)
!5279 = !DILocation(line: 146, column: 32, scope: !5276)
!5280 = !DILocation(line: 146, column: 16, scope: !5276)
!5281 = !DILocation(line: 146, column: 14, scope: !5276)
!5282 = !DILocation(line: 146, column: 9, scope: !5276)
!5283 = !DILocation(line: 286, column: 1, scope: !5228)
!5284 = !DISubprogram(name: "mbsinit", scope: !5285, file: !5285, line: 293, type: !5286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1088)
!5285 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5286 = !DISubroutineType(types: !5287)
!5287 = !{!260, !5288}
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!5290 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !973, file: !973, line: 27, type: !4500, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !5291)
!5291 = !{!5292, !5293, !5294, !5295}
!5292 = !DILocalVariable(name: "ptr", arg: 1, scope: !5290, file: !973, line: 27, type: !259)
!5293 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5290, file: !973, line: 27, type: !262)
!5294 = !DILocalVariable(name: "size", arg: 3, scope: !5290, file: !973, line: 27, type: !262)
!5295 = !DILocalVariable(name: "nbytes", scope: !5290, file: !973, line: 29, type: !262)
!5296 = !DILocation(line: 0, scope: !5290)
!5297 = !DILocation(line: 30, column: 7, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5290, file: !973, line: 30, column: 7)
!5299 = !DILocalVariable(name: "ptr", arg: 1, scope: !5300, file: !4592, line: 2057, type: !259)
!5300 = distinct !DISubprogram(name: "rpl_realloc", scope: !4592, file: !4592, line: 2057, type: !4584, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !5301)
!5301 = !{!5299, !5302}
!5302 = !DILocalVariable(name: "size", arg: 2, scope: !5300, file: !4592, line: 2057, type: !262)
!5303 = !DILocation(line: 0, scope: !5300, inlinedAt: !5304)
!5304 = distinct !DILocation(line: 37, column: 10, scope: !5290)
!5305 = !DILocation(line: 2059, column: 24, scope: !5300, inlinedAt: !5304)
!5306 = !DILocation(line: 2059, column: 10, scope: !5300, inlinedAt: !5304)
!5307 = !DILocation(line: 37, column: 3, scope: !5290)
!5308 = !DILocation(line: 32, column: 7, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5298, file: !973, line: 31, column: 5)
!5310 = !DILocation(line: 32, column: 13, scope: !5309)
!5311 = !DILocation(line: 33, column: 7, scope: !5309)
!5312 = !DILocation(line: 38, column: 1, scope: !5290)
!5313 = distinct !DISubprogram(name: "hard_locale", scope: !908, file: !908, line: 28, type: !1343, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !975, retainedNodes: !5314)
!5314 = !{!5315, !5316}
!5315 = !DILocalVariable(name: "category", arg: 1, scope: !5313, file: !908, line: 28, type: !260)
!5316 = !DILocalVariable(name: "locale", scope: !5313, file: !908, line: 30, type: !5317)
!5317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5318)
!5318 = !{!5319}
!5319 = !DISubrange(count: 257)
!5320 = !DILocation(line: 0, scope: !5313)
!5321 = !DILocation(line: 30, column: 3, scope: !5313)
!5322 = !DILocation(line: 30, column: 8, scope: !5313)
!5323 = !DILocation(line: 32, column: 7, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5313, file: !908, line: 32, column: 7)
!5325 = !DILocation(line: 32, column: 7, scope: !5313)
!5326 = !DILocalVariable(name: "__s1", arg: 1, scope: !5327, file: !1113, line: 1359, type: !265)
!5327 = distinct !DISubprogram(name: "streq", scope: !1113, file: !1113, line: 1359, type: !1114, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !975, retainedNodes: !5328)
!5328 = !{!5326, !5329}
!5329 = !DILocalVariable(name: "__s2", arg: 2, scope: !5327, file: !1113, line: 1359, type: !265)
!5330 = !DILocation(line: 0, scope: !5327, inlinedAt: !5331)
!5331 = distinct !DILocation(line: 35, column: 9, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5313, file: !908, line: 35, column: 7)
!5333 = !DILocation(line: 1361, column: 11, scope: !5327, inlinedAt: !5331)
!5334 = !DILocation(line: 1361, column: 10, scope: !5327, inlinedAt: !5331)
!5335 = !DILocation(line: 35, column: 29, scope: !5332)
!5336 = !DILocation(line: 0, scope: !5327, inlinedAt: !5337)
!5337 = distinct !DILocation(line: 35, column: 32, scope: !5332)
!5338 = !DILocation(line: 1361, column: 11, scope: !5327, inlinedAt: !5337)
!5339 = !DILocation(line: 1361, column: 10, scope: !5327, inlinedAt: !5337)
!5340 = !DILocation(line: 35, column: 7, scope: !5313)
!5341 = !DILocation(line: 46, column: 3, scope: !5313)
!5342 = !DILocation(line: 47, column: 1, scope: !5313)
!5343 = distinct !DISubprogram(name: "setlocale_null_r", scope: !978, file: !978, line: 154, type: !5344, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !5346)
!5344 = !DISubroutineType(types: !5345)
!5345 = !{!260, !260, !258, !262}
!5346 = !{!5347, !5348, !5349}
!5347 = !DILocalVariable(name: "category", arg: 1, scope: !5343, file: !978, line: 154, type: !260)
!5348 = !DILocalVariable(name: "buf", arg: 2, scope: !5343, file: !978, line: 154, type: !258)
!5349 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5343, file: !978, line: 154, type: !262)
!5350 = !DILocation(line: 0, scope: !5343)
!5351 = !DILocation(line: 159, column: 10, scope: !5343)
!5352 = !DILocation(line: 159, column: 3, scope: !5343)
!5353 = distinct !DISubprogram(name: "setlocale_null", scope: !978, file: !978, line: 186, type: !5354, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !977, retainedNodes: !5356)
!5354 = !DISubroutineType(types: !5355)
!5355 = !{!265, !260}
!5356 = !{!5357}
!5357 = !DILocalVariable(name: "category", arg: 1, scope: !5353, file: !978, line: 186, type: !260)
!5358 = !DILocation(line: 0, scope: !5353)
!5359 = !DILocation(line: 189, column: 10, scope: !5353)
!5360 = !DILocation(line: 189, column: 3, scope: !5353)
!5361 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !980, file: !980, line: 35, type: !5354, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !979, retainedNodes: !5362)
!5362 = !{!5363, !5364}
!5363 = !DILocalVariable(name: "category", arg: 1, scope: !5361, file: !980, line: 35, type: !260)
!5364 = !DILocalVariable(name: "result", scope: !5361, file: !980, line: 37, type: !265)
!5365 = !DILocation(line: 0, scope: !5361)
!5366 = !DILocation(line: 37, column: 24, scope: !5361)
!5367 = !DILocation(line: 62, column: 3, scope: !5361)
!5368 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !980, file: !980, line: 66, type: !5344, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !979, retainedNodes: !5369)
!5369 = !{!5370, !5371, !5372, !5373, !5374}
!5370 = !DILocalVariable(name: "category", arg: 1, scope: !5368, file: !980, line: 66, type: !260)
!5371 = !DILocalVariable(name: "buf", arg: 2, scope: !5368, file: !980, line: 66, type: !258)
!5372 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5368, file: !980, line: 66, type: !262)
!5373 = !DILocalVariable(name: "result", scope: !5368, file: !980, line: 111, type: !265)
!5374 = !DILocalVariable(name: "length", scope: !5375, file: !980, line: 125, type: !262)
!5375 = distinct !DILexicalBlock(scope: !5376, file: !980, line: 124, column: 5)
!5376 = distinct !DILexicalBlock(scope: !5368, file: !980, line: 113, column: 7)
!5377 = !DILocation(line: 0, scope: !5368)
!5378 = !DILocation(line: 0, scope: !5361, inlinedAt: !5379)
!5379 = distinct !DILocation(line: 111, column: 24, scope: !5368)
!5380 = !DILocation(line: 37, column: 24, scope: !5361, inlinedAt: !5379)
!5381 = !DILocation(line: 113, column: 14, scope: !5376)
!5382 = !DILocation(line: 113, column: 7, scope: !5368)
!5383 = !DILocation(line: 116, column: 19, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5385, file: !980, line: 116, column: 11)
!5385 = distinct !DILexicalBlock(scope: !5376, file: !980, line: 114, column: 5)
!5386 = !DILocation(line: 116, column: 11, scope: !5385)
!5387 = !DILocation(line: 120, column: 16, scope: !5384)
!5388 = !DILocation(line: 120, column: 9, scope: !5384)
!5389 = !DILocation(line: 125, column: 23, scope: !5375)
!5390 = !DILocation(line: 0, scope: !5375)
!5391 = !DILocation(line: 126, column: 18, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5375, file: !980, line: 126, column: 11)
!5393 = !DILocation(line: 126, column: 11, scope: !5375)
!5394 = !DILocation(line: 128, column: 39, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5392, file: !980, line: 127, column: 9)
!5396 = !DILocalVariable(name: "__dest", arg: 1, scope: !5397, file: !2821, line: 26, type: !4860)
!5397 = distinct !DISubprogram(name: "memcpy", scope: !2821, file: !2821, line: 26, type: !4858, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !979, retainedNodes: !5398)
!5398 = !{!5396, !5399, !5400}
!5399 = !DILocalVariable(name: "__src", arg: 2, scope: !5397, file: !2821, line: 26, type: !1229)
!5400 = !DILocalVariable(name: "__len", arg: 3, scope: !5397, file: !2821, line: 26, type: !262)
!5401 = !DILocation(line: 0, scope: !5397, inlinedAt: !5402)
!5402 = distinct !DILocation(line: 128, column: 11, scope: !5395)
!5403 = !DILocation(line: 29, column: 10, scope: !5397, inlinedAt: !5402)
!5404 = !DILocation(line: 129, column: 11, scope: !5395)
!5405 = !DILocation(line: 133, column: 23, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5407, file: !980, line: 133, column: 15)
!5407 = distinct !DILexicalBlock(scope: !5392, file: !980, line: 132, column: 9)
!5408 = !DILocation(line: 133, column: 15, scope: !5407)
!5409 = !DILocation(line: 138, column: 44, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5406, file: !980, line: 134, column: 13)
!5411 = !DILocation(line: 0, scope: !5397, inlinedAt: !5412)
!5412 = distinct !DILocation(line: 138, column: 15, scope: !5410)
!5413 = !DILocation(line: 29, column: 10, scope: !5397, inlinedAt: !5412)
!5414 = !DILocation(line: 139, column: 15, scope: !5410)
!5415 = !DILocation(line: 139, column: 32, scope: !5410)
!5416 = !DILocation(line: 140, column: 13, scope: !5410)
!5417 = !DILocation(line: 0, scope: !5376)
!5418 = !DILocation(line: 145, column: 1, scope: !5368)
