; ModuleID = 'src/[.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !593
@.str.66 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !585
@.str.1.67 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !587
@.str.2.68 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !589
@.str.3.69 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !591
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !595
@stderr = external local_unnamed_addr global ptr, align 8
@.str.72 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !601
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !633
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !603
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !623
@.str.1.78 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !625
@.str.2.80 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !627
@.str.3.79 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !629
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !631
@.str.4.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !635
@.str.5.74 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !637
@.str.6.75 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !640
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !645
@.str.121 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !651
@.str.1.122 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !653
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !655
@.str.125 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !686
@.str.1.126 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !689
@.str.2.127 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !691
@.str.3.128 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !696
@.str.4.129 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !698
@.str.5.130 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !700
@.str.6.131 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !702
@.str.7.132 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !704
@.str.8.133 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !706
@.str.9.134 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !708
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.125, ptr @.str.1.126, ptr @.str.2.127, ptr @.str.3.128, ptr @.str.4.129, ptr @.str.5.130, ptr @.str.6.131, ptr @.str.7.132, ptr @.str.8.133, ptr @.str.9.134, ptr null], align 16, !dbg !710
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !735
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !749
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !787
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !794
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !751
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !796
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !739
@.str.10.137 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !756
@.str.11.135 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !758
@.str.12.138 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !760
@.str.13.136 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !762
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !764
@.str.147 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !800
@.str.1.148 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !803
@.str.2.149 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !805
@.str.3.150 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !807
@.str.4.151 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !809
@.str.5.152 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !811
@.str.6.153 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !816
@.str.7.154 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !821
@.str.8.155 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !823
@.str.9.156 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !825
@.str.10.157 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !827
@.str.11.158 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !832
@.str.12.159 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !837
@.str.13.160 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !839
@.str.14.161 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !844
@.str.15.162 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !846
@.str.16.163 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !848
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.168 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !850
@.str.18.169 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !852
@.str.19.170 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !854
@.str.20.171 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !856
@.str.21.172 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !858
@.str.22.173 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !860
@.str.23.174 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !862
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !864
@exit_failure = dso_local global i32 1, align 4, !dbg !870
@.str.187 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !876
@.str.1.185 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !879
@.str.2.186 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !881
@.str.198 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !883
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !886
@.str.1.203 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !901

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !983 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !987, metadata !DIExpression()), !dbg !988
  %2 = icmp eq i32 %0, 0, !dbg !989
  br i1 %2, label %8, label %3, !dbg !991

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !992, !tbaa !994
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !992
  %6 = load ptr, ptr @program_name, align 8, !dbg !992, !tbaa !994
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !992
  br label %98, !dbg !992

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !998
  %10 = load ptr, ptr @stdout, align 8, !dbg !998, !tbaa !994
  %11 = tail call i32 @fputs_unlocked(ptr noundef %9, ptr noundef %10), !dbg !998
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !1000
  %13 = load ptr, ptr @stdout, align 8, !dbg !1000, !tbaa !994
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1000
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !1001
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !1001
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !1002
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !1002
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !1003
  %18 = load ptr, ptr @stdout, align 8, !dbg !1003, !tbaa !994
  %19 = tail call i32 @fputs_unlocked(ptr noundef %17, ptr noundef %18), !dbg !1003
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !1004
  %21 = load ptr, ptr @stdout, align 8, !dbg !1004, !tbaa !994
  %22 = tail call i32 @fputs_unlocked(ptr noundef %20, ptr noundef %21), !dbg !1004
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !1005
  %24 = load ptr, ptr @stdout, align 8, !dbg !1005, !tbaa !994
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !1005
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !1006
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1006
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #39, !dbg !1007
  %28 = load ptr, ptr @stdout, align 8, !dbg !1007, !tbaa !994
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !1007
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #39, !dbg !1008
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !1008
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #39, !dbg !1009
  %32 = load ptr, ptr @stdout, align 8, !dbg !1009, !tbaa !994
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !1009
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !1010
  %35 = load ptr, ptr @stdout, align 8, !dbg !1010, !tbaa !994
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !1010
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #39, !dbg !1011
  tail call fastcc void @oputs_(ptr noundef %37), !dbg !1011
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #39, !dbg !1012
  tail call fastcc void @oputs_(ptr noundef %38), !dbg !1012
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #39, !dbg !1013
  tail call fastcc void @oputs_(ptr noundef %39), !dbg !1013
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !1014
  tail call fastcc void @oputs_(ptr noundef %40), !dbg !1014
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #39, !dbg !1015
  tail call fastcc void @oputs_(ptr noundef %41), !dbg !1015
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #39, !dbg !1016
  tail call fastcc void @oputs_(ptr noundef %42), !dbg !1016
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !1017
  %44 = load ptr, ptr @stdout, align 8, !dbg !1017, !tbaa !994
  %45 = tail call i32 @fputs_unlocked(ptr noundef %43, ptr noundef %44), !dbg !1017
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #39, !dbg !1018
  tail call fastcc void @oputs_(ptr noundef %46), !dbg !1018
  %47 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #39, !dbg !1019
  tail call fastcc void @oputs_(ptr noundef %47), !dbg !1019
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #39, !dbg !1020
  tail call fastcc void @oputs_(ptr noundef %48), !dbg !1020
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !1021
  %50 = load ptr, ptr @stdout, align 8, !dbg !1021, !tbaa !994
  %51 = tail call i32 @fputs_unlocked(ptr noundef %49, ptr noundef %50), !dbg !1021
  %52 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !1022
  tail call fastcc void @oputs_(ptr noundef %52), !dbg !1022
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #39, !dbg !1023
  tail call fastcc void @oputs_(ptr noundef %53), !dbg !1023
  %54 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #39, !dbg !1024
  tail call fastcc void @oputs_(ptr noundef %54), !dbg !1024
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #39, !dbg !1025
  tail call fastcc void @oputs_(ptr noundef %55), !dbg !1025
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #39, !dbg !1026
  tail call fastcc void @oputs_(ptr noundef %56), !dbg !1026
  %57 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #39, !dbg !1027
  tail call fastcc void @oputs_(ptr noundef %57), !dbg !1027
  %58 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #39, !dbg !1028
  tail call fastcc void @oputs_(ptr noundef %58), !dbg !1028
  %59 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #39, !dbg !1029
  tail call fastcc void @oputs_(ptr noundef %59), !dbg !1029
  %60 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #39, !dbg !1030
  tail call fastcc void @oputs_(ptr noundef %60), !dbg !1030
  %61 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #39, !dbg !1031
  tail call fastcc void @oputs_(ptr noundef %61), !dbg !1031
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #39, !dbg !1032
  tail call fastcc void @oputs_(ptr noundef %62), !dbg !1032
  %63 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #39, !dbg !1033
  tail call fastcc void @oputs_(ptr noundef %63), !dbg !1033
  %64 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #39, !dbg !1034
  tail call fastcc void @oputs_(ptr noundef %64), !dbg !1034
  %65 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #39, !dbg !1035
  tail call fastcc void @oputs_(ptr noundef %65), !dbg !1035
  %66 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #39, !dbg !1036
  tail call fastcc void @oputs_(ptr noundef %66), !dbg !1036
  %67 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #39, !dbg !1037
  tail call fastcc void @oputs_(ptr noundef %67), !dbg !1037
  %68 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #39, !dbg !1038
  tail call fastcc void @oputs_(ptr noundef %68), !dbg !1038
  %69 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #39, !dbg !1039
  tail call fastcc void @oputs_(ptr noundef %69), !dbg !1039
  %70 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #39, !dbg !1040
  tail call fastcc void @oputs_(ptr noundef %70), !dbg !1040
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #39, !dbg !1041
  tail call fastcc void @oputs_(ptr noundef %71), !dbg !1041
  %72 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #39, !dbg !1042
  %73 = load ptr, ptr @stdout, align 8, !dbg !1042, !tbaa !994
  %74 = tail call i32 @fputs_unlocked(ptr noundef %72, ptr noundef %73), !dbg !1042
  %75 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #39, !dbg !1043
  %76 = load ptr, ptr @stdout, align 8, !dbg !1043, !tbaa !994
  %77 = tail call i32 @fputs_unlocked(ptr noundef %75, ptr noundef %76), !dbg !1043
  %78 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #39, !dbg !1044
  %79 = load ptr, ptr @stdout, align 8, !dbg !1044, !tbaa !994
  %80 = tail call i32 @fputs_unlocked(ptr noundef %78, ptr noundef %79), !dbg !1044
  %81 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #39, !dbg !1045
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #39, !dbg !1045
  %83 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %81, ptr noundef %82) #39, !dbg !1045
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1046, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1058, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata ptr poison, metadata !1058, metadata !DIExpression()), !dbg !1063
  tail call void @emit_bug_reporting_address() #39, !dbg !1065
  %84 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !1066
  call void @llvm.dbg.value(metadata ptr %84, metadata !1061, metadata !DIExpression()), !dbg !1063
  %85 = icmp eq ptr %84, null, !dbg !1067
  br i1 %85, label %93, label %86, !dbg !1069

86:                                               ; preds = %8
  %87 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(4) @.str.85, i64 noundef 3) #40, !dbg !1070
  %88 = icmp eq i32 %87, 0, !dbg !1070
  br i1 %88, label %93, label %89, !dbg !1071

89:                                               ; preds = %86
  %90 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef 5) #39, !dbg !1072
  %91 = load ptr, ptr @stdout, align 8, !dbg !1072, !tbaa !994
  %92 = tail call i32 @fputs_unlocked(ptr noundef %90, ptr noundef %91), !dbg !1072
  br label %93, !dbg !1074

93:                                               ; preds = %8, %86, %89
  call void @llvm.dbg.value(metadata ptr @.str.82, metadata !1058, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata ptr @.str.62, metadata !1062, metadata !DIExpression()), !dbg !1063
  %94 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.87, i32 noundef 5) #39, !dbg !1075
  %95 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %94, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.62) #39, !dbg !1075
  %96 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.88, i32 noundef 5) #39, !dbg !1076
  %97 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %96, ptr noundef nonnull @.str.82, ptr noundef nonnull select (i1 icmp eq (ptr @.str.82, ptr @.str.3), ptr @.str.89, ptr @.str.47)) #39, !dbg !1076
  br label %98

98:                                               ; preds = %93, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !1077
  unreachable, !dbg !1077
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1078 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1083 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1089 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !308 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !313, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata ptr %0, metadata !314, metadata !DIExpression()), !dbg !1093
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1094, !tbaa !1095
  %3 = icmp eq i32 %2, -1, !dbg !1097
  br i1 %3, label %4, label %16, !dbg !1098

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.58) #39, !dbg !1099
  call void @llvm.dbg.value(metadata ptr %5, metadata !315, metadata !DIExpression()), !dbg !1100
  %6 = icmp eq ptr %5, null, !dbg !1101
  br i1 %6, label %14, label %7, !dbg !1102

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1103, !tbaa !1104
  %9 = icmp eq i8 %8, 0, !dbg !1103
  br i1 %9, label %14, label %10, !dbg !1105

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1106, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata ptr @.str.59, metadata !1112, metadata !DIExpression()), !dbg !1113
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.59) #40, !dbg !1115
  %12 = icmp eq i32 %11, 0, !dbg !1116
  %13 = zext i1 %12 to i32, !dbg !1105
  br label %14, !dbg !1105

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1117, !tbaa !1095
  br label %16, !dbg !1118

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1119
  %18 = icmp eq i32 %17, 0, !dbg !1119
  br i1 %18, label %22, label %19, !dbg !1121

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1122, !tbaa !994
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1122
  br label %128, !dbg !1124

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !318, metadata !DIExpression()), !dbg !1093
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.60) #40, !dbg !1125
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1126
  call void @llvm.dbg.value(metadata ptr %24, metadata !320, metadata !DIExpression()), !dbg !1093
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !1127
  call void @llvm.dbg.value(metadata ptr %25, metadata !321, metadata !DIExpression()), !dbg !1093
  %26 = icmp eq ptr %25, null, !dbg !1128
  br i1 %26, label %58, label %27, !dbg !1129

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1130
  br i1 %28, label %58, label %29, !dbg !1131

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !322, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 0, metadata !326, metadata !DIExpression()), !dbg !1132
  %30 = icmp ult ptr %24, %25, !dbg !1133
  br i1 %30, label %31, label %52, !dbg !1134

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !1093
  %33 = load ptr, ptr %32, align 8, !tbaa !994
  br label %34, !dbg !1134

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !322, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %36, metadata !326, metadata !DIExpression()), !dbg !1132
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1135
  call void @llvm.dbg.value(metadata ptr %37, metadata !322, metadata !DIExpression()), !dbg !1132
  %38 = load i8, ptr %35, align 1, !dbg !1135, !tbaa !1104
  %39 = sext i8 %38 to i64, !dbg !1135
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1135
  %41 = load i16, ptr %40, align 2, !dbg !1135, !tbaa !1136
  %42 = freeze i16 %41, !dbg !1138
  %43 = lshr i16 %42, 13, !dbg !1138
  %44 = and i16 %43, 1, !dbg !1138
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1139
  call void @llvm.dbg.value(metadata i64 %46, metadata !326, metadata !DIExpression()), !dbg !1132
  %47 = icmp ult ptr %37, %25, !dbg !1133
  %48 = icmp ult i64 %46, 2, !dbg !1140
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1140
  br i1 %49, label %34, label %50, !dbg !1134, !llvm.loop !1141

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1143
  br i1 %51, label %52, label %54, !dbg !1145

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1145

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1145
  call void @llvm.dbg.value(metadata i8 %57, metadata !318, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata ptr %56, metadata !321, metadata !DIExpression()), !dbg !1093
  br label %58, !dbg !1146

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !1093
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !1093
  call void @llvm.dbg.value(metadata i8 %60, metadata !318, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata ptr %59, metadata !321, metadata !DIExpression()), !dbg !1093
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.61) #40, !dbg !1147
  call void @llvm.dbg.value(metadata i64 %61, metadata !327, metadata !DIExpression()), !dbg !1093
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1148
  call void @llvm.dbg.value(metadata ptr %62, metadata !328, metadata !DIExpression()), !dbg !1093
  br label %63, !dbg !1149

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !1093
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !1093
  call void @llvm.dbg.value(metadata i8 %65, metadata !318, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata ptr %64, metadata !328, metadata !DIExpression()), !dbg !1093
  %66 = load i8, ptr %64, align 1, !dbg !1150, !tbaa !1104
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1151

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1152
  %69 = load i8, ptr %68, align 1, !dbg !1155, !tbaa !1104
  %70 = icmp eq i8 %69, 45, !dbg !1156
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1157
  br label %72, !dbg !1157

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !1093
  call void @llvm.dbg.value(metadata i8 %73, metadata !318, metadata !DIExpression()), !dbg !1093
  %74 = tail call ptr @__ctype_b_loc() #42, !dbg !1158
  %75 = load ptr, ptr %74, align 8, !dbg !1158, !tbaa !994
  %76 = sext i8 %66 to i64, !dbg !1158
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1158
  %78 = load i16, ptr %77, align 2, !dbg !1158, !tbaa !1136
  %79 = and i16 %78, 8192, !dbg !1158
  %80 = icmp eq i16 %79, 0, !dbg !1158
  br i1 %80, label %96, label %81, !dbg !1160

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1161
  br i1 %82, label %98, label %83, !dbg !1164

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1165
  %85 = load i8, ptr %84, align 1, !dbg !1165, !tbaa !1104
  %86 = sext i8 %85 to i64, !dbg !1165
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1165
  %88 = load i16, ptr %87, align 2, !dbg !1165, !tbaa !1136
  %89 = and i16 %88, 8192, !dbg !1165
  %90 = icmp eq i16 %89, 0, !dbg !1165
  br i1 %90, label %91, label %98, !dbg !1166

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1167
  %93 = icmp ne i8 %92, 0, !dbg !1167
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1169
  br i1 %95, label %96, label %98, !dbg !1169

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1170
  call void @llvm.dbg.value(metadata ptr %97, metadata !328, metadata !DIExpression()), !dbg !1093
  br label %63, !dbg !1149, !llvm.loop !1171

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1173
  %100 = load ptr, ptr @stdout, align 8, !dbg !1173, !tbaa !994
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1173
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1106, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata ptr @.str.62, metadata !383, metadata !DIExpression()), !dbg !1093
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.50, i64 noundef 6) #40, !dbg !1176
  %103 = icmp eq i32 %102, 0, !dbg !1176
  br i1 %103, label %107, label %104, !dbg !1178

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.51, i64 noundef 9) #40, !dbg !1179
  %106 = icmp eq i32 %105, 0, !dbg !1179
  br i1 %106, label %107, label %110, !dbg !1180

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1181
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.62, i32 noundef %108, ptr noundef %59) #39, !dbg !1181
  br label %113, !dbg !1183

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1184
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.62, i32 noundef %111, ptr noundef %59) #39, !dbg !1184
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1186, !tbaa !994
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.78, ptr noundef %114), !dbg !1186
  %116 = load ptr, ptr @stdout, align 8, !dbg !1187, !tbaa !994
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.79, ptr noundef %116), !dbg !1187
  %118 = ptrtoint ptr %64 to i64, !dbg !1188
  %119 = sub i64 %118, %99, !dbg !1188
  %120 = load ptr, ptr @stdout, align 8, !dbg !1188, !tbaa !994
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1188
  %122 = load ptr, ptr @stdout, align 8, !dbg !1189, !tbaa !994
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.80, ptr noundef %122), !dbg !1189
  %124 = load ptr, ptr @stdout, align 8, !dbg !1190, !tbaa !994
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.81, ptr noundef %124), !dbg !1190
  %126 = load ptr, ptr @stdout, align 8, !dbg !1191, !tbaa !994
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1191
  br label %128, !dbg !1192

128:                                              ; preds = %113, %19
  ret void, !dbg !1192
}

declare !dbg !1193 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1196 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1200 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1204 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1206 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1209 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1212 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1215 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1218 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1224 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1225 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1235, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata ptr %1, metadata !1236, metadata !DIExpression()), !dbg !1238
  %3 = load ptr, ptr %1, align 8, !dbg !1239, !tbaa !994
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1240
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.47) #39, !dbg !1241
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #39, !dbg !1242
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.48) #39, !dbg !1243
  call void @llvm.dbg.value(metadata i32 2, metadata !1244, metadata !DIExpression()), !dbg !1247
  store volatile i32 2, ptr @exit_failure, align 4, !dbg !1249, !tbaa !1095
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1251
  store ptr %1, ptr @argv, align 8, !dbg !1252, !tbaa !994
  %8 = icmp eq i32 %0, 2, !dbg !1253
  br i1 %8, label %9, label %23, !dbg !1257

9:                                                ; preds = %2
  %10 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1258
  %11 = load ptr, ptr %10, align 8, !dbg !1258, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %11, metadata !1106, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata ptr @.str.50, metadata !1112, metadata !DIExpression()), !dbg !1261
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(7) @.str.50) #40, !dbg !1263
  %13 = icmp eq i32 %12, 0, !dbg !1264
  br i1 %13, label %14, label %15, !dbg !1265

14:                                               ; preds = %9
  tail call void @usage(i32 noundef 0) #43, !dbg !1266
  unreachable, !dbg !1266

15:                                               ; preds = %9
  call void @llvm.dbg.value(metadata ptr %11, metadata !1106, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata ptr @.str.51, metadata !1112, metadata !DIExpression()), !dbg !1267
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(10) @.str.51) #40, !dbg !1270
  %17 = icmp eq i32 %16, 0, !dbg !1271
  br i1 %17, label %18, label %25, !dbg !1272

18:                                               ; preds = %15
  %19 = load ptr, ptr @stdout, align 8, !dbg !1273, !tbaa !994
  %20 = load ptr, ptr @Version, align 8, !dbg !1275, !tbaa !994
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.53) #39, !dbg !1276
  %22 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.54) #39, !dbg !1276
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef null) #39, !dbg !1277
  br label %54, !dbg !1278

23:                                               ; preds = %2
  %24 = icmp slt i32 %0, 2, !dbg !1279
  br i1 %24, label %32, label %25, !dbg !1281

25:                                               ; preds = %15, %23
  %26 = add nsw i32 %0, -1, !dbg !1282
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %1, i64 %27, !dbg !1283
  %29 = load ptr, ptr %28, align 8, !dbg !1283, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %29, metadata !1106, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata ptr @.str.55, metadata !1112, metadata !DIExpression()), !dbg !1284
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(2) @.str.55) #40, !dbg !1286
  %31 = icmp eq i32 %30, 0, !dbg !1287
  br i1 %31, label %35, label %32, !dbg !1288

32:                                               ; preds = %25, %23
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #39, !dbg !1289
  %34 = tail call ptr @quote(ptr noundef nonnull @.str.55) #39, !dbg !1290
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %33, ptr noundef %34) #43, !dbg !1291
  unreachable, !dbg !1291

35:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 %26, metadata !1235, metadata !DIExpression()), !dbg !1238
  store i32 %26, ptr @argc, align 4, !dbg !1292, !tbaa !1095
  store i32 1, ptr @pos, align 4, !dbg !1293, !tbaa !1095
  %36 = icmp ult i32 %0, 3, !dbg !1294
  br i1 %36, label %54, label %37, !dbg !1296

37:                                               ; preds = %35
  %38 = add nsw i32 %0, -2, !dbg !1297
  %39 = tail call fastcc zeroext i1 @posixtest(i32 noundef %38), !dbg !1298
  call void @llvm.dbg.value(metadata i1 %39, metadata !1237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1238
  %40 = load i32, ptr @pos, align 4, !dbg !1299, !tbaa !1095
  %41 = load i32, ptr @argc, align 4, !dbg !1301, !tbaa !1095
  %42 = icmp eq i32 %40, %41, !dbg !1302
  br i1 %42, label %51, label %43, !dbg !1303

43:                                               ; preds = %37
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #39, !dbg !1304
  %45 = load ptr, ptr @argv, align 8, !dbg !1305, !tbaa !994
  %46 = load i32, ptr @pos, align 4, !dbg !1306, !tbaa !1095
  %47 = sext i32 %46 to i64, !dbg !1305
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47, !dbg !1305
  %49 = load ptr, ptr %48, align 8, !dbg !1305, !tbaa !994
  %50 = tail call ptr @quote(ptr noundef %49) #39, !dbg !1307
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %44, ptr noundef %50) #43, !dbg !1308
  unreachable, !dbg !1308

51:                                               ; preds = %37
  %52 = xor i1 %39, true, !dbg !1309
  %53 = zext i1 %52 to i32, !dbg !1309
  br label %54, !dbg !1309

54:                                               ; preds = %35, %51, %18
  %55 = phi i32 [ 0, %18 ], [ %53, %51 ], [ 1, %35 ], !dbg !1238
  ret i32 %55, !dbg !1310
}

; Function Attrs: nounwind
declare !dbg !1311 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1314 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1315 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal void @test_syntax_error(ptr noundef %0, ...) unnamed_addr #0 !dbg !1318 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1322, metadata !DIExpression()), !dbg !1335
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #39, !dbg !1336
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1323, metadata !DIExpression()), !dbg !1337
  call void @llvm.va_start(ptr nonnull %2), !dbg !1338
  call void @verror(i32 noundef 0, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %2) #44, !dbg !1339
  call void @exit(i32 noundef 2) #41, !dbg !1340
  unreachable, !dbg !1340
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @posixtest(i32 noundef %0) unnamed_addr #10 !dbg !1341 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1345, metadata !DIExpression()), !dbg !1347
  switch i32 %0, label %102 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %41
    i32 4, label %43
  ], !dbg !1348

2:                                                ; preds = %1
  %3 = load ptr, ptr @argv, align 8, !dbg !1349, !tbaa !994
  %4 = load i32, ptr @pos, align 4, !dbg !1355, !tbaa !1095
  %5 = add nsw i32 %4, 1, !dbg !1355
  store i32 %5, ptr @pos, align 4, !dbg !1355, !tbaa !1095
  %6 = sext i32 %4 to i64, !dbg !1349
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6, !dbg !1349
  %8 = load ptr, ptr %7, align 8, !dbg !1349, !tbaa !994
  %9 = load i8, ptr %8, align 1, !dbg !1349, !tbaa !1104
  %10 = icmp ne i8 %9, 0, !dbg !1356
  call void @llvm.dbg.value(metadata i1 %10, metadata !1346, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1347
  br label %114, !dbg !1357

11:                                               ; preds = %1
  %12 = load ptr, ptr @argv, align 8, !dbg !1358, !tbaa !994
  %13 = load i32, ptr @pos, align 4, !dbg !1364, !tbaa !1095
  %14 = sext i32 %13 to i64, !dbg !1358
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14, !dbg !1358
  %16 = load ptr, ptr %15, align 8, !dbg !1358, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %16, metadata !1106, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1112, metadata !DIExpression()), !dbg !1365
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(2) @.str.90) #40, !dbg !1367
  %18 = icmp eq i32 %17, 0, !dbg !1368
  br i1 %18, label %19, label %27, !dbg !1369

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 false, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1375
  %20 = add nsw i32 %13, 1, !dbg !1378
  %21 = add nsw i32 %13, 2, !dbg !1379
  store i32 %21, ptr @pos, align 4, !dbg !1379, !tbaa !1095
  %22 = sext i32 %20 to i64, !dbg !1381
  %23 = getelementptr inbounds ptr, ptr %12, i64 %22, !dbg !1381
  %24 = load ptr, ptr %23, align 8, !dbg !1381, !tbaa !994
  %25 = load i8, ptr %24, align 1, !dbg !1381, !tbaa !1104
  %26 = icmp eq i8 %25, 0, !dbg !1382
  call void @llvm.dbg.value(metadata i1 %26, metadata !1362, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1383
  br label %114, !dbg !1384

27:                                               ; preds = %11
  %28 = load i8, ptr %16, align 1, !dbg !1385, !tbaa !1104
  %29 = icmp eq i8 %28, 45, !dbg !1387
  br i1 %29, label %30, label %40, !dbg !1388

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1389
  %32 = load i8, ptr %31, align 1, !dbg !1389, !tbaa !1104
  %33 = icmp eq i8 %32, 0, !dbg !1390
  br i1 %33, label %40, label %34, !dbg !1391

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %16, i64 2, !dbg !1392
  %36 = load i8, ptr %35, align 1, !dbg !1392, !tbaa !1104
  %37 = icmp eq i8 %36, 0, !dbg !1393
  br i1 %37, label %38, label %40, !dbg !1394

38:                                               ; preds = %34
  %39 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1395
  call void @llvm.dbg.value(metadata i1 %39, metadata !1362, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1383
  br label %114

40:                                               ; preds = %34, %30, %27
  tail call fastcc void @beyond() #43, !dbg !1397
  unreachable, !dbg !1397

41:                                               ; preds = %1
  %42 = tail call fastcc zeroext i1 @three_arguments(), !dbg !1398
  call void @llvm.dbg.value(metadata i1 %42, metadata !1346, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1347
  br label %114, !dbg !1399

43:                                               ; preds = %1
  %44 = load ptr, ptr @argv, align 8, !dbg !1400, !tbaa !994
  %45 = load i32, ptr @pos, align 4, !dbg !1402, !tbaa !1095
  %46 = sext i32 %45 to i64, !dbg !1400
  %47 = getelementptr inbounds ptr, ptr %44, i64 %46, !dbg !1400
  %48 = load ptr, ptr %47, align 8, !dbg !1400, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %48, metadata !1106, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1112, metadata !DIExpression()), !dbg !1403
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(2) @.str.90) #40, !dbg !1405
  %50 = icmp eq i32 %49, 0, !dbg !1406
  br i1 %50, label %51, label %59, !dbg !1407

51:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1408
  %52 = add nsw i32 %45, 1, !dbg !1411
  store i32 %52, ptr @pos, align 4, !dbg !1411, !tbaa !1095
  %53 = load i32, ptr @argc, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %56, label %55, !dbg !1412

55:                                               ; preds = %51
  tail call fastcc void @beyond(), !dbg !1414
  unreachable, !dbg !1414

56:                                               ; preds = %51
  %57 = tail call fastcc zeroext i1 @three_arguments(), !dbg !1415
  %58 = xor i1 %57, true, !dbg !1416
  call void @llvm.dbg.value(metadata i1 %58, metadata !1346, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1347
  br label %114, !dbg !1417

59:                                               ; preds = %43
  call void @llvm.dbg.value(metadata ptr %48, metadata !1106, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata ptr @.str.91, metadata !1112, metadata !DIExpression()), !dbg !1418
  %60 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(2) @.str.91) #40, !dbg !1421
  %61 = icmp eq i32 %60, 0, !dbg !1422
  br i1 %61, label %62, label %107, !dbg !1423

62:                                               ; preds = %59
  %63 = add nsw i32 %45, 3, !dbg !1424
  %64 = sext i32 %63 to i64, !dbg !1425
  %65 = getelementptr inbounds ptr, ptr %44, i64 %64, !dbg !1425
  %66 = load ptr, ptr %65, align 8, !dbg !1425, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %66, metadata !1106, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1112, metadata !DIExpression()), !dbg !1426
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(2) @.str.92) #40, !dbg !1428
  %68 = icmp eq i32 %67, 0, !dbg !1429
  br i1 %68, label %69, label %107, !dbg !1430

69:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i1 false, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1431
  %70 = add nsw i32 %45, 1, !dbg !1434
  store i32 %70, ptr @pos, align 4, !dbg !1434, !tbaa !1095
  %71 = sext i32 %70 to i64, !dbg !1435
  %72 = getelementptr inbounds ptr, ptr %44, i64 %71, !dbg !1435
  %73 = load ptr, ptr %72, align 8, !dbg !1435, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %73, metadata !1106, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1112, metadata !DIExpression()), !dbg !1437
  %74 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(2) @.str.90) #40, !dbg !1439
  %75 = icmp eq i32 %74, 0, !dbg !1440
  br i1 %75, label %76, label %83, !dbg !1441

76:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i1 false, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1442
  %77 = add nsw i32 %45, 2, !dbg !1444
  %78 = sext i32 %77 to i64, !dbg !1445
  %79 = getelementptr inbounds ptr, ptr %44, i64 %78, !dbg !1445
  %80 = load ptr, ptr %79, align 8, !dbg !1445, !tbaa !994
  %81 = load i8, ptr %80, align 1, !dbg !1445, !tbaa !1104
  %82 = icmp eq i8 %81, 0, !dbg !1447
  call void @llvm.dbg.value(metadata i1 %82, metadata !1362, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1448
  br label %98, !dbg !1449

83:                                               ; preds = %69
  %84 = load i8, ptr %73, align 1, !dbg !1450, !tbaa !1104
  %85 = icmp eq i8 %84, 45, !dbg !1451
  br i1 %85, label %86, label %97, !dbg !1452

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, ptr %73, i64 1, !dbg !1453
  %88 = load i8, ptr %87, align 1, !dbg !1453, !tbaa !1104
  %89 = icmp eq i8 %88, 0, !dbg !1454
  br i1 %89, label %97, label %90, !dbg !1455

90:                                               ; preds = %86
  %91 = getelementptr inbounds i8, ptr %73, i64 2, !dbg !1456
  %92 = load i8, ptr %91, align 1, !dbg !1456, !tbaa !1104
  %93 = icmp eq i8 %92, 0, !dbg !1457
  br i1 %93, label %94, label %97, !dbg !1458

94:                                               ; preds = %90
  %95 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1459
  call void @llvm.dbg.value(metadata i1 %95, metadata !1362, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1448
  %96 = load i32, ptr @pos, align 4, !dbg !1460, !tbaa !1095
  br label %98

97:                                               ; preds = %90, %86, %83
  tail call fastcc void @beyond() #43, !dbg !1462
  unreachable, !dbg !1462

98:                                               ; preds = %76, %94
  %99 = phi i32 [ %63, %76 ], [ %96, %94 ], !dbg !1460
  %100 = phi i1 [ %82, %76 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i1 %100, metadata !1362, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1448
  call void @llvm.dbg.value(metadata i1 %100, metadata !1346, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1347
  call void @llvm.dbg.value(metadata i1 false, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1463
  %101 = add nsw i32 %99, 1, !dbg !1460
  store i32 %101, ptr @pos, align 4, !dbg !1460, !tbaa !1095
  br label %114, !dbg !1464

102:                                              ; preds = %1
  %103 = icmp sgt i32 %0, 0, !dbg !1465
  br i1 %103, label %104, label %106, !dbg !1468

104:                                              ; preds = %102
  %105 = load i32, ptr @pos, align 4, !dbg !1469, !tbaa !1095
  br label %107, !dbg !1468

106:                                              ; preds = %102
  tail call void @__assert_fail(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef 651, ptr noundef nonnull @__PRETTY_FUNCTION__.posixtest) #41, !dbg !1465
  unreachable, !dbg !1465

107:                                              ; preds = %104, %59, %62
  %108 = phi i32 [ %105, %104 ], [ %45, %59 ], [ %45, %62 ], !dbg !1469
  %109 = load i32, ptr @argc, align 4, !dbg !1473, !tbaa !1095
  %110 = icmp slt i32 %108, %109, !dbg !1474
  br i1 %110, label %112, label %111, !dbg !1475

111:                                              ; preds = %107
  tail call fastcc void @beyond() #43, !dbg !1476
  unreachable, !dbg !1476

112:                                              ; preds = %107
  %113 = tail call fastcc zeroext i1 @or(), !dbg !1477
  call void @llvm.dbg.value(metadata i1 %113, metadata !1346, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1347
  br label %114, !dbg !1478

114:                                              ; preds = %38, %19, %112, %98, %56, %41, %2
  %115 = phi i1 [ %113, %112 ], [ %58, %56 ], [ %100, %98 ], [ %42, %41 ], [ %10, %2 ], [ %26, %19 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i1 %115, metadata !1346, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1347
  ret i1 %115, !dbg !1479
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @unary_operator() unnamed_addr #10 !dbg !1480 {
  %1 = alloca [1 x i8], align 1
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #39, !dbg !1532
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1482, metadata !DIExpression()), !dbg !1533
  %3 = load ptr, ptr @argv, align 8, !dbg !1534, !tbaa !994
  %4 = load i32, ptr @pos, align 4, !dbg !1535, !tbaa !1095
  %5 = sext i32 %4 to i64, !dbg !1534
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5, !dbg !1534
  %7 = load ptr, ptr %6, align 8, !dbg !1534, !tbaa !994
  %8 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !1534
  %9 = load i8, ptr %8, align 1, !dbg !1534, !tbaa !1104
  %10 = sext i8 %9 to i32, !dbg !1534
  switch i32 %10, label %11 [
    i32 101, label %19
    i32 114, label %31
    i32 119, label %43
    i32 120, label %55
    i32 78, label %67
    i32 79, label %101
    i32 71, label %124
    i32 102, label %147
    i32 100, label %164
    i32 115, label %181
    i32 83, label %197
    i32 99, label %214
    i32 98, label %231
    i32 112, label %248
    i32 76, label %265
    i32 104, label %265
    i32 117, label %277
    i32 103, label %294
    i32 107, label %311
    i32 116, label %328
    i32 110, label %351
    i32 122, label %363
  ], !dbg !1536

11:                                               ; preds = %0
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.95, i32 noundef 5) #39, !dbg !1537
  %13 = load ptr, ptr @argv, align 8, !dbg !1538, !tbaa !994
  %14 = load i32, ptr @pos, align 4, !dbg !1539, !tbaa !1095
  %15 = sext i32 %14 to i64, !dbg !1538
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15, !dbg !1538
  %17 = load ptr, ptr %16, align 8, !dbg !1538, !tbaa !994
  %18 = tail call ptr @quote(ptr noundef %17) #39, !dbg !1540
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %12, ptr noundef %18) #43, !dbg !1541
  unreachable, !dbg !1541

19:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1542
  %20 = add nsw i32 %4, 1, !dbg !1546
  store i32 %20, ptr @pos, align 4, !dbg !1546, !tbaa !1095
  %21 = load i32, ptr @argc, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %24, label %23, !dbg !1547

23:                                               ; preds = %19
  tail call fastcc void @beyond(), !dbg !1548
  unreachable, !dbg !1548

24:                                               ; preds = %19
  %25 = add nsw i32 %4, 2, !dbg !1549
  store i32 %25, ptr @pos, align 4, !dbg !1549, !tbaa !1095
  %26 = sext i32 %20 to i64, !dbg !1550
  %27 = getelementptr inbounds ptr, ptr %3, i64 %26, !dbg !1550
  %28 = load ptr, ptr %27, align 8, !dbg !1550, !tbaa !994
  %29 = call i32 @stat(ptr noundef %28, ptr noundef nonnull %2) #39, !dbg !1551
  %30 = icmp eq i32 %29, 0, !dbg !1552
  br label %375, !dbg !1553

31:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1554
  %32 = add nsw i32 %4, 1, !dbg !1557
  store i32 %32, ptr @pos, align 4, !dbg !1557, !tbaa !1095
  %33 = load i32, ptr @argc, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %36, label %35, !dbg !1558

35:                                               ; preds = %31
  tail call fastcc void @beyond(), !dbg !1559
  unreachable, !dbg !1559

36:                                               ; preds = %31
  %37 = add nsw i32 %4, 2, !dbg !1560
  store i32 %37, ptr @pos, align 4, !dbg !1560, !tbaa !1095
  %38 = sext i32 %32 to i64, !dbg !1561
  %39 = getelementptr inbounds ptr, ptr %3, i64 %38, !dbg !1561
  %40 = load ptr, ptr %39, align 8, !dbg !1561, !tbaa !994
  %41 = tail call i32 @euidaccess(ptr noundef %40, i32 noundef 4) #39, !dbg !1562
  %42 = icmp eq i32 %41, 0, !dbg !1563
  br label %375, !dbg !1564

43:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1565
  %44 = add nsw i32 %4, 1, !dbg !1568
  store i32 %44, ptr @pos, align 4, !dbg !1568, !tbaa !1095
  %45 = load i32, ptr @argc, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %48, label %47, !dbg !1569

47:                                               ; preds = %43
  tail call fastcc void @beyond(), !dbg !1570
  unreachable, !dbg !1570

48:                                               ; preds = %43
  %49 = add nsw i32 %4, 2, !dbg !1571
  store i32 %49, ptr @pos, align 4, !dbg !1571, !tbaa !1095
  %50 = sext i32 %44 to i64, !dbg !1572
  %51 = getelementptr inbounds ptr, ptr %3, i64 %50, !dbg !1572
  %52 = load ptr, ptr %51, align 8, !dbg !1572, !tbaa !994
  %53 = tail call i32 @euidaccess(ptr noundef %52, i32 noundef 2) #39, !dbg !1573
  %54 = icmp eq i32 %53, 0, !dbg !1574
  br label %375, !dbg !1575

55:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1576
  %56 = add nsw i32 %4, 1, !dbg !1579
  store i32 %56, ptr @pos, align 4, !dbg !1579, !tbaa !1095
  %57 = load i32, ptr @argc, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %60, label %59, !dbg !1580

59:                                               ; preds = %55
  tail call fastcc void @beyond(), !dbg !1581
  unreachable, !dbg !1581

60:                                               ; preds = %55
  %61 = add nsw i32 %4, 2, !dbg !1582
  store i32 %61, ptr @pos, align 4, !dbg !1582, !tbaa !1095
  %62 = sext i32 %56 to i64, !dbg !1583
  %63 = getelementptr inbounds ptr, ptr %3, i64 %62, !dbg !1583
  %64 = load ptr, ptr %63, align 8, !dbg !1583, !tbaa !994
  %65 = tail call i32 @euidaccess(ptr noundef %64, i32 noundef 1) #39, !dbg !1584
  %66 = icmp eq i32 %65, 0, !dbg !1585
  br label %375, !dbg !1586

67:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1587
  %68 = add nsw i32 %4, 1, !dbg !1590
  store i32 %68, ptr @pos, align 4, !dbg !1590, !tbaa !1095
  %69 = load i32, ptr @argc, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %72, label %71, !dbg !1591

71:                                               ; preds = %67
  tail call fastcc void @beyond(), !dbg !1592
  unreachable, !dbg !1592

72:                                               ; preds = %67
  %73 = add nsw i32 %4, 2, !dbg !1593
  store i32 %73, ptr @pos, align 4, !dbg !1593, !tbaa !1095
  %74 = sext i32 %68 to i64, !dbg !1594
  %75 = getelementptr inbounds ptr, ptr %3, i64 %74, !dbg !1594
  %76 = load ptr, ptr %75, align 8, !dbg !1594, !tbaa !994
  %77 = call i32 @stat(ptr noundef %76, ptr noundef nonnull %2) #39, !dbg !1596
  %78 = icmp eq i32 %77, 0, !dbg !1597
  br i1 %78, label %79, label %375, !dbg !1598

79:                                               ; preds = %72
  call void @llvm.dbg.value(metadata ptr %2, metadata !1599, metadata !DIExpression()), !dbg !1607
  %80 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 11, !dbg !1609
  %81 = load i64, ptr %80, align 8, !dbg !1609, !tbaa.struct !1610
  %82 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 11, i32 1, !dbg !1609
  %83 = load i64, ptr %82, align 8, !dbg !1609, !tbaa.struct !1613
  call void @llvm.dbg.value(metadata i64 %81, metadata !1516, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %83, metadata !1516, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1614
  call void @llvm.dbg.value(metadata ptr %2, metadata !1615, metadata !DIExpression()), !dbg !1618
  %84 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 12, !dbg !1620
  %85 = load i64, ptr %84, align 8, !dbg !1620, !tbaa.struct !1610
  %86 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 12, i32 1, !dbg !1620
  %87 = load i64, ptr %86, align 8, !dbg !1620, !tbaa.struct !1613
  call void @llvm.dbg.value(metadata i64 %85, metadata !1519, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %87, metadata !1519, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %85, metadata !1621, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %87, metadata !1621, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %81, metadata !1627, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1628
  call void @llvm.dbg.value(metadata i64 %83, metadata !1627, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1628
  %88 = icmp sgt i64 %85, %81, !dbg !1630
  %89 = zext i1 %88 to i32, !dbg !1630
  %90 = icmp slt i64 %85, %81, !dbg !1630
  %91 = sext i1 %90 to i32, !dbg !1630
  %92 = add nsw i32 %91, %89, !dbg !1630
  %93 = shl nsw i32 %92, 1, !dbg !1631
  %94 = icmp sgt i64 %87, %83, !dbg !1632
  %95 = zext i1 %94 to i32, !dbg !1632
  %96 = icmp slt i64 %87, %83, !dbg !1632
  %97 = sext i1 %96 to i32, !dbg !1632
  %98 = add nsw i32 %97, %95, !dbg !1632
  %99 = add nsw i32 %98, %93, !dbg !1633
  %100 = icmp sgt i32 %99, 0, !dbg !1634
  br label %375

101:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1635
  %102 = add nsw i32 %4, 1, !dbg !1638
  store i32 %102, ptr @pos, align 4, !dbg !1638, !tbaa !1095
  %103 = load i32, ptr @argc, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %106, label %105, !dbg !1639

105:                                              ; preds = %101
  tail call fastcc void @beyond(), !dbg !1640
  unreachable, !dbg !1640

106:                                              ; preds = %101
  %107 = add nsw i32 %4, 2, !dbg !1641
  store i32 %107, ptr @pos, align 4, !dbg !1641, !tbaa !1095
  %108 = sext i32 %102 to i64, !dbg !1642
  %109 = getelementptr inbounds ptr, ptr %3, i64 %108, !dbg !1642
  %110 = load ptr, ptr %109, align 8, !dbg !1642, !tbaa !994
  %111 = call i32 @stat(ptr noundef %110, ptr noundef nonnull %2) #39, !dbg !1644
  %112 = icmp eq i32 %111, 0, !dbg !1645
  br i1 %112, label %113, label %375, !dbg !1646

113:                                              ; preds = %106
  %114 = tail call ptr @__errno_location() #42, !dbg !1647
  store i32 0, ptr %114, align 4, !dbg !1648, !tbaa !1095
  %115 = tail call i32 @geteuid() #39, !dbg !1649
  call void @llvm.dbg.value(metadata i32 %115, metadata !1520, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i32 -1, metadata !1524, metadata !DIExpression()), !dbg !1650
  %116 = icmp eq i32 %115, -1, !dbg !1651
  br i1 %116, label %117, label %120, !dbg !1652

117:                                              ; preds = %113
  %118 = load i32, ptr %114, align 4, !dbg !1653, !tbaa !1095
  %119 = icmp eq i32 %118, 0, !dbg !1653
  br i1 %119, label %120, label %375, !dbg !1654

120:                                              ; preds = %117, %113
  %121 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 4, !dbg !1655
  %122 = load i32, ptr %121, align 4, !dbg !1655, !tbaa !1656
  %123 = icmp eq i32 %115, %122, !dbg !1659
  br label %375

124:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1660
  %125 = add nsw i32 %4, 1, !dbg !1663
  store i32 %125, ptr @pos, align 4, !dbg !1663, !tbaa !1095
  %126 = load i32, ptr @argc, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %129, label %128, !dbg !1664

128:                                              ; preds = %124
  tail call fastcc void @beyond(), !dbg !1665
  unreachable, !dbg !1665

129:                                              ; preds = %124
  %130 = add nsw i32 %4, 2, !dbg !1666
  store i32 %130, ptr @pos, align 4, !dbg !1666, !tbaa !1095
  %131 = sext i32 %125 to i64, !dbg !1667
  %132 = getelementptr inbounds ptr, ptr %3, i64 %131, !dbg !1667
  %133 = load ptr, ptr %132, align 8, !dbg !1667, !tbaa !994
  %134 = call i32 @stat(ptr noundef %133, ptr noundef nonnull %2) #39, !dbg !1669
  %135 = icmp eq i32 %134, 0, !dbg !1670
  br i1 %135, label %136, label %375, !dbg !1671

136:                                              ; preds = %129
  %137 = tail call ptr @__errno_location() #42, !dbg !1672
  store i32 0, ptr %137, align 4, !dbg !1673, !tbaa !1095
  %138 = tail call i32 @getegid() #39, !dbg !1674
  call void @llvm.dbg.value(metadata i32 %138, metadata !1525, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 -1, metadata !1528, metadata !DIExpression()), !dbg !1675
  %139 = icmp eq i32 %138, -1, !dbg !1676
  br i1 %139, label %140, label %143, !dbg !1677

140:                                              ; preds = %136
  %141 = load i32, ptr %137, align 4, !dbg !1678, !tbaa !1095
  %142 = icmp eq i32 %141, 0, !dbg !1678
  br i1 %142, label %143, label %375, !dbg !1679

143:                                              ; preds = %140, %136
  %144 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 5, !dbg !1680
  %145 = load i32, ptr %144, align 8, !dbg !1680, !tbaa !1681
  %146 = icmp eq i32 %138, %145, !dbg !1682
  br label %375

147:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1683
  %148 = add nsw i32 %4, 1, !dbg !1686
  store i32 %148, ptr @pos, align 4, !dbg !1686, !tbaa !1095
  %149 = load i32, ptr @argc, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %152, label %151, !dbg !1687

151:                                              ; preds = %147
  tail call fastcc void @beyond(), !dbg !1688
  unreachable, !dbg !1688

152:                                              ; preds = %147
  %153 = add nsw i32 %4, 2, !dbg !1689
  store i32 %153, ptr @pos, align 4, !dbg !1689, !tbaa !1095
  %154 = sext i32 %148 to i64, !dbg !1690
  %155 = getelementptr inbounds ptr, ptr %3, i64 %154, !dbg !1690
  %156 = load ptr, ptr %155, align 8, !dbg !1690, !tbaa !994
  %157 = call i32 @stat(ptr noundef %156, ptr noundef nonnull %2) #39, !dbg !1691
  %158 = icmp eq i32 %157, 0, !dbg !1692
  %159 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1693
  %160 = load i32, ptr %159, align 8, !dbg !1693
  %161 = and i32 %160, 61440, !dbg !1693
  %162 = icmp eq i32 %161, 32768, !dbg !1693
  %163 = select i1 %158, i1 %162, i1 false, !dbg !1693
  br label %375, !dbg !1694

164:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1695
  %165 = add nsw i32 %4, 1, !dbg !1698
  store i32 %165, ptr @pos, align 4, !dbg !1698, !tbaa !1095
  %166 = load i32, ptr @argc, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %169, label %168, !dbg !1699

168:                                              ; preds = %164
  tail call fastcc void @beyond(), !dbg !1700
  unreachable, !dbg !1700

169:                                              ; preds = %164
  %170 = add nsw i32 %4, 2, !dbg !1701
  store i32 %170, ptr @pos, align 4, !dbg !1701, !tbaa !1095
  %171 = sext i32 %165 to i64, !dbg !1702
  %172 = getelementptr inbounds ptr, ptr %3, i64 %171, !dbg !1702
  %173 = load ptr, ptr %172, align 8, !dbg !1702, !tbaa !994
  %174 = call i32 @stat(ptr noundef %173, ptr noundef nonnull %2) #39, !dbg !1703
  %175 = icmp eq i32 %174, 0, !dbg !1704
  %176 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1705
  %177 = load i32, ptr %176, align 8, !dbg !1705
  %178 = and i32 %177, 61440, !dbg !1705
  %179 = icmp eq i32 %178, 16384, !dbg !1705
  %180 = select i1 %175, i1 %179, i1 false, !dbg !1705
  br label %375, !dbg !1706

181:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1707
  %182 = add nsw i32 %4, 1, !dbg !1710
  store i32 %182, ptr @pos, align 4, !dbg !1710, !tbaa !1095
  %183 = load i32, ptr @argc, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %186, label %185, !dbg !1711

185:                                              ; preds = %181
  tail call fastcc void @beyond(), !dbg !1712
  unreachable, !dbg !1712

186:                                              ; preds = %181
  %187 = add nsw i32 %4, 2, !dbg !1713
  store i32 %187, ptr @pos, align 4, !dbg !1713, !tbaa !1095
  %188 = sext i32 %182 to i64, !dbg !1714
  %189 = getelementptr inbounds ptr, ptr %3, i64 %188, !dbg !1714
  %190 = load ptr, ptr %189, align 8, !dbg !1714, !tbaa !994
  %191 = call i32 @stat(ptr noundef %190, ptr noundef nonnull %2) #39, !dbg !1715
  %192 = icmp eq i32 %191, 0, !dbg !1716
  %193 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8, !dbg !1717
  %194 = load i64, ptr %193, align 8, !dbg !1717
  %195 = icmp sgt i64 %194, 0, !dbg !1717
  %196 = select i1 %192, i1 %195, i1 false, !dbg !1717
  br label %375, !dbg !1718

197:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1719
  %198 = add nsw i32 %4, 1, !dbg !1722
  store i32 %198, ptr @pos, align 4, !dbg !1722, !tbaa !1095
  %199 = load i32, ptr @argc, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %202, label %201, !dbg !1723

201:                                              ; preds = %197
  tail call fastcc void @beyond(), !dbg !1724
  unreachable, !dbg !1724

202:                                              ; preds = %197
  %203 = add nsw i32 %4, 2, !dbg !1725
  store i32 %203, ptr @pos, align 4, !dbg !1725, !tbaa !1095
  %204 = sext i32 %198 to i64, !dbg !1726
  %205 = getelementptr inbounds ptr, ptr %3, i64 %204, !dbg !1726
  %206 = load ptr, ptr %205, align 8, !dbg !1726, !tbaa !994
  %207 = call i32 @stat(ptr noundef %206, ptr noundef nonnull %2) #39, !dbg !1727
  %208 = icmp eq i32 %207, 0, !dbg !1728
  %209 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1729
  %210 = load i32, ptr %209, align 8, !dbg !1729
  %211 = and i32 %210, 61440, !dbg !1729
  %212 = icmp eq i32 %211, 49152, !dbg !1729
  %213 = select i1 %208, i1 %212, i1 false, !dbg !1729
  br label %375, !dbg !1730

214:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1731
  %215 = add nsw i32 %4, 1, !dbg !1734
  store i32 %215, ptr @pos, align 4, !dbg !1734, !tbaa !1095
  %216 = load i32, ptr @argc, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %219, label %218, !dbg !1735

218:                                              ; preds = %214
  tail call fastcc void @beyond(), !dbg !1736
  unreachable, !dbg !1736

219:                                              ; preds = %214
  %220 = add nsw i32 %4, 2, !dbg !1737
  store i32 %220, ptr @pos, align 4, !dbg !1737, !tbaa !1095
  %221 = sext i32 %215 to i64, !dbg !1738
  %222 = getelementptr inbounds ptr, ptr %3, i64 %221, !dbg !1738
  %223 = load ptr, ptr %222, align 8, !dbg !1738, !tbaa !994
  %224 = call i32 @stat(ptr noundef %223, ptr noundef nonnull %2) #39, !dbg !1739
  %225 = icmp eq i32 %224, 0, !dbg !1740
  %226 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1741
  %227 = load i32, ptr %226, align 8, !dbg !1741
  %228 = and i32 %227, 61440, !dbg !1741
  %229 = icmp eq i32 %228, 8192, !dbg !1741
  %230 = select i1 %225, i1 %229, i1 false, !dbg !1741
  br label %375, !dbg !1742

231:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1743
  %232 = add nsw i32 %4, 1, !dbg !1746
  store i32 %232, ptr @pos, align 4, !dbg !1746, !tbaa !1095
  %233 = load i32, ptr @argc, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %236, label %235, !dbg !1747

235:                                              ; preds = %231
  tail call fastcc void @beyond(), !dbg !1748
  unreachable, !dbg !1748

236:                                              ; preds = %231
  %237 = add nsw i32 %4, 2, !dbg !1749
  store i32 %237, ptr @pos, align 4, !dbg !1749, !tbaa !1095
  %238 = sext i32 %232 to i64, !dbg !1750
  %239 = getelementptr inbounds ptr, ptr %3, i64 %238, !dbg !1750
  %240 = load ptr, ptr %239, align 8, !dbg !1750, !tbaa !994
  %241 = call i32 @stat(ptr noundef %240, ptr noundef nonnull %2) #39, !dbg !1751
  %242 = icmp eq i32 %241, 0, !dbg !1752
  %243 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1753
  %244 = load i32, ptr %243, align 8, !dbg !1753
  %245 = and i32 %244, 61440, !dbg !1753
  %246 = icmp eq i32 %245, 24576, !dbg !1753
  %247 = select i1 %242, i1 %246, i1 false, !dbg !1753
  br label %375, !dbg !1754

248:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1755
  %249 = add nsw i32 %4, 1, !dbg !1758
  store i32 %249, ptr @pos, align 4, !dbg !1758, !tbaa !1095
  %250 = load i32, ptr @argc, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %253, label %252, !dbg !1759

252:                                              ; preds = %248
  tail call fastcc void @beyond(), !dbg !1760
  unreachable, !dbg !1760

253:                                              ; preds = %248
  %254 = add nsw i32 %4, 2, !dbg !1761
  store i32 %254, ptr @pos, align 4, !dbg !1761, !tbaa !1095
  %255 = sext i32 %249 to i64, !dbg !1762
  %256 = getelementptr inbounds ptr, ptr %3, i64 %255, !dbg !1762
  %257 = load ptr, ptr %256, align 8, !dbg !1762, !tbaa !994
  %258 = call i32 @stat(ptr noundef %257, ptr noundef nonnull %2) #39, !dbg !1763
  %259 = icmp eq i32 %258, 0, !dbg !1764
  %260 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1765
  %261 = load i32, ptr %260, align 8, !dbg !1765
  %262 = and i32 %261, 61440, !dbg !1765
  %263 = icmp eq i32 %262, 4096, !dbg !1765
  %264 = select i1 %259, i1 %263, i1 false, !dbg !1765
  br label %375, !dbg !1766

265:                                              ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1767
  %266 = add nsw i32 %4, 1, !dbg !1770
  store i32 %266, ptr @pos, align 4, !dbg !1770, !tbaa !1095
  %267 = load i32, ptr @argc, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %270, label %269, !dbg !1771

269:                                              ; preds = %265
  tail call fastcc void @beyond(), !dbg !1772
  unreachable, !dbg !1772

270:                                              ; preds = %265
  %271 = add nsw i32 %4, 2, !dbg !1773
  store i32 %271, ptr @pos, align 4, !dbg !1773, !tbaa !1095
  %272 = sext i32 %266 to i64, !dbg !1774
  %273 = getelementptr inbounds ptr, ptr %3, i64 %272, !dbg !1774
  %274 = load ptr, ptr %273, align 8, !dbg !1774, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %274, metadata !1775, metadata !DIExpression()), !dbg !1782
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #39, !dbg !1784
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1781, metadata !DIExpression()), !dbg !1785
  %275 = call i64 @readlink(ptr noundef nonnull %274, ptr noundef nonnull %1, i64 noundef 1) #39, !dbg !1786
  %276 = icmp sgt i64 %275, -1, !dbg !1788
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #39, !dbg !1789
  br label %375, !dbg !1790

277:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1791
  %278 = add nsw i32 %4, 1, !dbg !1794
  store i32 %278, ptr @pos, align 4, !dbg !1794, !tbaa !1095
  %279 = load i32, ptr @argc, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %282, label %281, !dbg !1795

281:                                              ; preds = %277
  tail call fastcc void @beyond(), !dbg !1796
  unreachable, !dbg !1796

282:                                              ; preds = %277
  %283 = add nsw i32 %4, 2, !dbg !1797
  store i32 %283, ptr @pos, align 4, !dbg !1797, !tbaa !1095
  %284 = sext i32 %278 to i64, !dbg !1798
  %285 = getelementptr inbounds ptr, ptr %3, i64 %284, !dbg !1798
  %286 = load ptr, ptr %285, align 8, !dbg !1798, !tbaa !994
  %287 = call i32 @stat(ptr noundef %286, ptr noundef nonnull %2) #39, !dbg !1799
  %288 = icmp eq i32 %287, 0, !dbg !1800
  %289 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1801
  %290 = load i32, ptr %289, align 8, !dbg !1801
  %291 = and i32 %290, 2048, !dbg !1801
  %292 = icmp ne i32 %291, 0, !dbg !1801
  %293 = select i1 %288, i1 %292, i1 false, !dbg !1801
  br label %375, !dbg !1802

294:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1803
  %295 = add nsw i32 %4, 1, !dbg !1806
  store i32 %295, ptr @pos, align 4, !dbg !1806, !tbaa !1095
  %296 = load i32, ptr @argc, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %299, label %298, !dbg !1807

298:                                              ; preds = %294
  tail call fastcc void @beyond(), !dbg !1808
  unreachable, !dbg !1808

299:                                              ; preds = %294
  %300 = add nsw i32 %4, 2, !dbg !1809
  store i32 %300, ptr @pos, align 4, !dbg !1809, !tbaa !1095
  %301 = sext i32 %295 to i64, !dbg !1810
  %302 = getelementptr inbounds ptr, ptr %3, i64 %301, !dbg !1810
  %303 = load ptr, ptr %302, align 8, !dbg !1810, !tbaa !994
  %304 = call i32 @stat(ptr noundef %303, ptr noundef nonnull %2) #39, !dbg !1811
  %305 = icmp eq i32 %304, 0, !dbg !1812
  %306 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1813
  %307 = load i32, ptr %306, align 8, !dbg !1813
  %308 = and i32 %307, 1024, !dbg !1813
  %309 = icmp ne i32 %308, 0, !dbg !1813
  %310 = select i1 %305, i1 %309, i1 false, !dbg !1813
  br label %375, !dbg !1814

311:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1815
  %312 = add nsw i32 %4, 1, !dbg !1818
  store i32 %312, ptr @pos, align 4, !dbg !1818, !tbaa !1095
  %313 = load i32, ptr @argc, align 4
  %314 = icmp slt i32 %312, %313
  br i1 %314, label %316, label %315, !dbg !1819

315:                                              ; preds = %311
  tail call fastcc void @beyond(), !dbg !1820
  unreachable, !dbg !1820

316:                                              ; preds = %311
  %317 = add nsw i32 %4, 2, !dbg !1821
  store i32 %317, ptr @pos, align 4, !dbg !1821, !tbaa !1095
  %318 = sext i32 %312 to i64, !dbg !1822
  %319 = getelementptr inbounds ptr, ptr %3, i64 %318, !dbg !1822
  %320 = load ptr, ptr %319, align 8, !dbg !1822, !tbaa !994
  %321 = call i32 @stat(ptr noundef %320, ptr noundef nonnull %2) #39, !dbg !1823
  %322 = icmp eq i32 %321, 0, !dbg !1824
  %323 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1825
  %324 = load i32, ptr %323, align 8, !dbg !1825
  %325 = and i32 %324, 512, !dbg !1825
  %326 = icmp ne i32 %325, 0, !dbg !1825
  %327 = select i1 %322, i1 %326, i1 false, !dbg !1825
  br label %375, !dbg !1826

328:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1827
  %329 = add nsw i32 %4, 1, !dbg !1830
  store i32 %329, ptr @pos, align 4, !dbg !1830, !tbaa !1095
  %330 = load i32, ptr @argc, align 4
  %331 = icmp slt i32 %329, %330
  br i1 %331, label %333, label %332, !dbg !1831

332:                                              ; preds = %328
  tail call fastcc void @beyond(), !dbg !1832
  unreachable, !dbg !1832

333:                                              ; preds = %328
  %334 = add nsw i32 %4, 2, !dbg !1833
  store i32 %334, ptr @pos, align 4, !dbg !1833, !tbaa !1095
  %335 = sext i32 %329 to i64, !dbg !1834
  %336 = getelementptr inbounds ptr, ptr %3, i64 %335, !dbg !1834
  %337 = load ptr, ptr %336, align 8, !dbg !1834, !tbaa !994
  %338 = tail call fastcc ptr @find_int(ptr noundef %337), !dbg !1835
  call void @llvm.dbg.value(metadata ptr %338, metadata !1531, metadata !DIExpression()), !dbg !1836
  %339 = tail call ptr @__errno_location() #42, !dbg !1837
  store i32 0, ptr %339, align 4, !dbg !1838, !tbaa !1095
  %340 = tail call i64 @strtol(ptr nocapture noundef %338, ptr noundef null, i32 noundef 10) #39, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %340, metadata !1529, metadata !DIExpression()), !dbg !1836
  %341 = load i32, ptr %339, align 4, !dbg !1840, !tbaa !1095
  %342 = icmp ne i32 %341, 34, !dbg !1841
  %343 = icmp sgt i64 %340, -1
  %344 = select i1 %342, i1 %343, i1 false, !dbg !1842
  %345 = icmp slt i64 %340, 2147483648
  %346 = select i1 %344, i1 %345, i1 false, !dbg !1842
  br i1 %346, label %347, label %375, !dbg !1842

347:                                              ; preds = %333
  %348 = trunc i64 %340 to i32, !dbg !1843
  %349 = tail call i32 @isatty(i32 noundef %348) #39, !dbg !1844
  %350 = icmp ne i32 %349, 0, !dbg !1845
  br label %375

351:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1846
  %352 = add nsw i32 %4, 1, !dbg !1849
  store i32 %352, ptr @pos, align 4, !dbg !1849, !tbaa !1095
  %353 = load i32, ptr @argc, align 4
  %354 = icmp slt i32 %352, %353
  br i1 %354, label %356, label %355, !dbg !1850

355:                                              ; preds = %351
  tail call fastcc void @beyond(), !dbg !1851
  unreachable, !dbg !1851

356:                                              ; preds = %351
  %357 = add nsw i32 %4, 2, !dbg !1852
  store i32 %357, ptr @pos, align 4, !dbg !1852, !tbaa !1095
  %358 = sext i32 %352 to i64, !dbg !1853
  %359 = getelementptr inbounds ptr, ptr %3, i64 %358, !dbg !1853
  %360 = load ptr, ptr %359, align 8, !dbg !1853, !tbaa !994
  %361 = load i8, ptr %360, align 1, !dbg !1853, !tbaa !1104
  %362 = icmp ne i8 %361, 0, !dbg !1854
  br label %375, !dbg !1855

363:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1856
  %364 = add nsw i32 %4, 1, !dbg !1859
  store i32 %364, ptr @pos, align 4, !dbg !1859, !tbaa !1095
  %365 = load i32, ptr @argc, align 4
  %366 = icmp slt i32 %364, %365
  br i1 %366, label %368, label %367, !dbg !1860

367:                                              ; preds = %363
  tail call fastcc void @beyond(), !dbg !1861
  unreachable, !dbg !1861

368:                                              ; preds = %363
  %369 = add nsw i32 %4, 2, !dbg !1862
  store i32 %369, ptr @pos, align 4, !dbg !1862, !tbaa !1095
  %370 = sext i32 %364 to i64, !dbg !1863
  %371 = getelementptr inbounds ptr, ptr %3, i64 %370, !dbg !1863
  %372 = load ptr, ptr %371, align 8, !dbg !1863, !tbaa !994
  %373 = load i8, ptr %372, align 1, !dbg !1863, !tbaa !1104
  %374 = icmp eq i8 %373, 0, !dbg !1864
  br label %375, !dbg !1865

375:                                              ; preds = %333, %347, %140, %143, %129, %117, %120, %106, %72, %368, %356, %316, %299, %282, %270, %253, %236, %219, %202, %186, %169, %152, %79, %60, %48, %36, %24
  %376 = phi i1 [ %374, %368 ], [ %362, %356 ], [ %327, %316 ], [ %310, %299 ], [ %293, %282 ], [ %276, %270 ], [ %264, %253 ], [ %247, %236 ], [ %230, %219 ], [ %213, %202 ], [ %196, %186 ], [ %180, %169 ], [ %163, %152 ], [ %100, %79 ], [ %66, %60 ], [ %54, %48 ], [ %42, %36 ], [ %30, %24 ], [ false, %72 ], [ false, %106 ], [ false, %117 ], [ %123, %120 ], [ false, %129 ], [ false, %140 ], [ %146, %143 ], [ false, %333 ], [ %350, %347 ], !dbg !1866
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #39, !dbg !1867
  ret i1 %376, !dbg !1867
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !1868 {
  %1 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.97, i32 noundef 5) #39, !dbg !1869
  %2 = load ptr, ptr @argv, align 8, !dbg !1870, !tbaa !994
  %3 = load i32, ptr @argc, align 4, !dbg !1871, !tbaa !1095
  %4 = add nsw i32 %3, -1, !dbg !1872
  %5 = sext i32 %4 to i64, !dbg !1870
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5, !dbg !1870
  %7 = load ptr, ptr %6, align 8, !dbg !1870, !tbaa !994
  %8 = tail call ptr @quote(ptr noundef %7) #39, !dbg !1873
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %1, ptr noundef %8) #43, !dbg !1874
  unreachable, !dbg !1874
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @three_arguments() unnamed_addr #10 !dbg !1875 {
  %1 = load ptr, ptr @argv, align 8, !dbg !1879, !tbaa !994
  %2 = load i32, ptr @pos, align 4, !dbg !1880, !tbaa !1095
  %3 = add nsw i32 %2, 1, !dbg !1881
  %4 = sext i32 %3 to i64, !dbg !1879
  %5 = getelementptr inbounds ptr, ptr %1, i64 %4, !dbg !1879
  %6 = load ptr, ptr %5, align 8, !dbg !1879, !tbaa !994
  %7 = tail call fastcc i32 @binop(ptr noundef %6), !dbg !1882
  call void @llvm.dbg.value(metadata i32 %7, metadata !1878, metadata !DIExpression()), !dbg !1883
  %8 = icmp sgt i32 %7, -1, !dbg !1884
  br i1 %8, label %9, label %11, !dbg !1886

9:                                                ; preds = %0
  %10 = tail call fastcc zeroext i1 @binary_operator(i1 noundef zeroext false, i32 noundef %7), !dbg !1887
  call void @llvm.dbg.value(metadata i1 %10, metadata !1877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1883
  br label %90, !dbg !1888

11:                                               ; preds = %0
  %12 = sext i32 %2 to i64, !dbg !1889
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12, !dbg !1889
  %14 = load ptr, ptr %13, align 8, !dbg !1889, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %14, metadata !1106, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1112, metadata !DIExpression()), !dbg !1891
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(2) @.str.90) #40, !dbg !1893
  %16 = icmp eq i32 %15, 0, !dbg !1894
  br i1 %16, label %17, label %49, !dbg !1895

17:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1896
  store i32 %3, ptr @pos, align 4, !dbg !1899, !tbaa !1095
  %18 = load i32, ptr @argc, align 4
  %19 = icmp slt i32 %3, %18
  br i1 %19, label %21, label %20, !dbg !1900

20:                                               ; preds = %17
  tail call fastcc void @beyond(), !dbg !1901
  unreachable, !dbg !1901

21:                                               ; preds = %17
  call void @llvm.dbg.value(metadata ptr %6, metadata !1106, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1112, metadata !DIExpression()), !dbg !1902
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.90) #40, !dbg !1905
  %23 = icmp eq i32 %22, 0, !dbg !1906
  br i1 %23, label %24, label %32, !dbg !1907

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i1 false, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1908
  %25 = add nsw i32 %2, 2, !dbg !1910
  %26 = add nsw i32 %2, 3, !dbg !1911
  store i32 %26, ptr @pos, align 4, !dbg !1911, !tbaa !1095
  %27 = sext i32 %25 to i64, !dbg !1913
  %28 = getelementptr inbounds ptr, ptr %1, i64 %27, !dbg !1913
  %29 = load ptr, ptr %28, align 8, !dbg !1913, !tbaa !994
  %30 = load i8, ptr %29, align 1, !dbg !1913, !tbaa !1104
  %31 = icmp eq i8 %30, 0, !dbg !1914
  call void @llvm.dbg.value(metadata i1 %31, metadata !1362, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1915
  br label %46, !dbg !1916

32:                                               ; preds = %21
  %33 = load i8, ptr %6, align 1, !dbg !1917, !tbaa !1104
  %34 = icmp eq i8 %33, 45, !dbg !1918
  br i1 %34, label %35, label %45, !dbg !1919

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !1920
  %37 = load i8, ptr %36, align 1, !dbg !1920, !tbaa !1104
  %38 = icmp eq i8 %37, 0, !dbg !1921
  br i1 %38, label %45, label %39, !dbg !1922

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %6, i64 2, !dbg !1923
  %41 = load i8, ptr %40, align 1, !dbg !1923, !tbaa !1104
  %42 = icmp eq i8 %41, 0, !dbg !1924
  br i1 %42, label %43, label %45, !dbg !1925

43:                                               ; preds = %39
  %44 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1926
  call void @llvm.dbg.value(metadata i1 %44, metadata !1362, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1915
  br label %46

45:                                               ; preds = %39, %35, %32
  tail call fastcc void @beyond() #43, !dbg !1927
  unreachable, !dbg !1927

46:                                               ; preds = %24, %43
  %47 = phi i1 [ %31, %24 ], [ %44, %43 ]
  call void @llvm.dbg.value(metadata i1 %47, metadata !1362, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1915
  %48 = xor i1 %47, true, !dbg !1928
  call void @llvm.dbg.value(metadata i1 %48, metadata !1877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1883
  br label %90, !dbg !1929

49:                                               ; preds = %11
  call void @llvm.dbg.value(metadata ptr %14, metadata !1106, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata ptr @.str.91, metadata !1112, metadata !DIExpression()), !dbg !1930
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(2) @.str.91) #40, !dbg !1933
  %51 = icmp eq i32 %50, 0, !dbg !1934
  br i1 %51, label %52, label %63, !dbg !1935

52:                                               ; preds = %49
  %53 = add nsw i32 %2, 2, !dbg !1936
  %54 = sext i32 %53 to i64, !dbg !1937
  %55 = getelementptr inbounds ptr, ptr %1, i64 %54, !dbg !1937
  %56 = load ptr, ptr %55, align 8, !dbg !1937, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %56, metadata !1106, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1112, metadata !DIExpression()), !dbg !1938
  %57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(2) @.str.92) #40, !dbg !1940
  %58 = icmp eq i32 %57, 0, !dbg !1941
  br i1 %58, label %59, label %63, !dbg !1942

59:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i1 false, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1943
  %60 = load i8, ptr %6, align 1, !dbg !1946, !tbaa !1104
  %61 = icmp ne i8 %60, 0, !dbg !1948
  call void @llvm.dbg.value(metadata i1 %61, metadata !1877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1883
  call void @llvm.dbg.value(metadata i1 false, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1949
  %62 = add nsw i32 %2, 3, !dbg !1951
  store i32 %62, ptr @pos, align 4, !dbg !1951, !tbaa !1095
  br label %90, !dbg !1952

63:                                               ; preds = %52, %49
  call void @llvm.dbg.value(metadata ptr %6, metadata !1106, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata ptr @.str.98, metadata !1112, metadata !DIExpression()), !dbg !1953
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(3) @.str.98) #40, !dbg !1956
  %65 = icmp eq i32 %64, 0, !dbg !1957
  br i1 %65, label %75, label %66, !dbg !1958

66:                                               ; preds = %63
  call void @llvm.dbg.value(metadata ptr %6, metadata !1106, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata ptr @.str.99, metadata !1112, metadata !DIExpression()), !dbg !1959
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(3) @.str.99) #40, !dbg !1961
  %68 = icmp eq i32 %67, 0, !dbg !1962
  br i1 %68, label %75, label %69, !dbg !1963

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata ptr %6, metadata !1106, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata ptr @.str.100, metadata !1112, metadata !DIExpression()), !dbg !1964
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.100) #40, !dbg !1966
  %71 = icmp eq i32 %70, 0, !dbg !1967
  br i1 %71, label %75, label %72, !dbg !1968

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata ptr %6, metadata !1106, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata ptr @.str.101, metadata !1112, metadata !DIExpression()), !dbg !1969
  %73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.101) #40, !dbg !1971
  %74 = icmp eq i32 %73, 0, !dbg !1972
  br i1 %74, label %75, label %81, !dbg !1973

75:                                               ; preds = %72, %69, %66, %63
  %76 = load i32, ptr @argc, align 4, !dbg !1974, !tbaa !1095
  %77 = icmp slt i32 %2, %76, !dbg !1976
  br i1 %77, label %79, label %78, !dbg !1977

78:                                               ; preds = %75
  tail call fastcc void @beyond() #43, !dbg !1978
  unreachable, !dbg !1978

79:                                               ; preds = %75
  %80 = tail call fastcc zeroext i1 @or(), !dbg !1979
  call void @llvm.dbg.value(metadata i1 %80, metadata !1877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1883
  br label %90

81:                                               ; preds = %72
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.102, i32 noundef 5) #39, !dbg !1980
  %83 = load ptr, ptr @argv, align 8, !dbg !1981, !tbaa !994
  %84 = load i32, ptr @pos, align 4, !dbg !1982, !tbaa !1095
  %85 = add nsw i32 %84, 1, !dbg !1983
  %86 = sext i32 %85 to i64, !dbg !1981
  %87 = getelementptr inbounds ptr, ptr %83, i64 %86, !dbg !1981
  %88 = load ptr, ptr %87, align 8, !dbg !1981, !tbaa !994
  %89 = tail call ptr @quote(ptr noundef %88) #39, !dbg !1984
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %82, ptr noundef %89) #43, !dbg !1985
  unreachable, !dbg !1985

90:                                               ; preds = %46, %79, %59, %9
  %91 = phi i1 [ %10, %9 ], [ %48, %46 ], [ %61, %59 ], [ %80, %79 ]
  call void @llvm.dbg.value(metadata i1 %91, metadata !1877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1883
  ret i1 %91, !dbg !1986
}

; Function Attrs: noreturn nounwind
declare !dbg !1987 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @or() unnamed_addr #10 !dbg !1991 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1993, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i8 1, metadata !1995, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8 poison, metadata !1995, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8 0, metadata !2001, metadata !DIExpression()), !dbg !2009
  %1 = load i32, ptr @argc, align 4, !tbaa !1095
  %2 = load i32, ptr @pos, align 4, !tbaa !1095
  call void @llvm.dbg.value(metadata i8 poison, metadata !2001, metadata !DIExpression()), !dbg !2009
  %3 = icmp sgt i32 %1, %2, !dbg !2012
  br i1 %3, label %4, label %43, !dbg !2013

4:                                                ; preds = %0
  %5 = load ptr, ptr @argv, align 8, !tbaa !994
  br label %6, !dbg !2014

6:                                                ; preds = %4, %200
  %7 = phi ptr [ %183, %200 ], [ %5, %4 ]
  %8 = phi i32 [ %201, %200 ], [ %2, %4 ]
  %9 = phi i32 [ %180, %200 ], [ %1, %4 ]
  %10 = phi i1 [ %195, %200 ], [ false, %4 ]
  br label %11, !dbg !2013

11:                                               ; preds = %6, %189
  %12 = phi ptr [ %7, %6 ], [ %183, %189 ]
  %13 = phi i32 [ %8, %6 ], [ %190, %189 ]
  %14 = phi i32 [ %9, %6 ], [ %180, %189 ]
  %15 = phi i1 [ true, %6 ], [ %178, %189 ]
  %16 = sext i32 %13 to i64, !dbg !2013
  %17 = sext i32 %14 to i64, !dbg !2013
  %18 = add i32 %13, 2, !dbg !2013
  %19 = getelementptr inbounds ptr, ptr %12, i64 %16, !dbg !2015
  %20 = load ptr, ptr %19, align 8, !dbg !2015, !tbaa !994
  %21 = load i8, ptr %20, align 1, !dbg !2015, !tbaa !1104
  %22 = icmp eq i8 %21, 33, !dbg !2016
  br i1 %22, label %23, label %44, !dbg !2017

23:                                               ; preds = %11, %36
  %24 = phi ptr [ %40, %36 ], [ %20, %11 ]
  %25 = phi i1 [ %37, %36 ], [ false, %11 ]
  %26 = phi i64 [ %32, %36 ], [ %16, %11 ]
  %27 = phi i32 [ %38, %36 ], [ %18, %11 ]
  %28 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2018
  %29 = load i8, ptr %28, align 1, !dbg !2018, !tbaa !1104
  %30 = icmp eq i8 %29, 0, !dbg !2019
  br i1 %30, label %31, label %44, !dbg !2020

31:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2021
  %32 = add nsw i64 %26, 1, !dbg !2024
  %33 = trunc i64 %32 to i32, !dbg !2024
  store i32 %33, ptr @pos, align 4, !dbg !2024, !tbaa !1095
  %34 = icmp slt i64 %32, %17
  br i1 %34, label %36, label %35, !dbg !2025

35:                                               ; preds = %31
  tail call fastcc void @beyond(), !dbg !2026
  unreachable, !dbg !2026

36:                                               ; preds = %31
  %37 = xor i1 %25, true, !dbg !2027
  call void @llvm.dbg.value(metadata i8 poison, metadata !2001, metadata !DIExpression()), !dbg !2009
  %38 = add i32 %27, 1, !dbg !2013
  %39 = getelementptr inbounds ptr, ptr %12, i64 %32, !dbg !2015
  %40 = load ptr, ptr %39, align 8, !dbg !2015, !tbaa !994
  %41 = load i8, ptr %40, align 1, !dbg !2015, !tbaa !1104
  %42 = icmp eq i8 %41, 33, !dbg !2016
  br i1 %42, label %23, label %44, !dbg !2017, !llvm.loop !2028

43:                                               ; preds = %200, %189, %0
  tail call fastcc void @beyond() #43, !dbg !2030
  unreachable, !dbg !2030

44:                                               ; preds = %36, %23, %11
  %45 = phi i32 [ %18, %11 ], [ %38, %36 ], [ %27, %23 ]
  %46 = phi i64 [ %16, %11 ], [ %32, %36 ], [ %26, %23 ]
  %47 = phi i1 [ false, %11 ], [ %37, %36 ], [ %25, %23 ]
  %48 = trunc i64 %46 to i32, !dbg !2017
  %49 = shl i64 %46, 32, !dbg !2032
  %50 = ashr exact i64 %49, 32, !dbg !2032
  %51 = getelementptr inbounds ptr, ptr %12, i64 %50, !dbg !2032
  %52 = load ptr, ptr %51, align 8, !dbg !2032, !tbaa !994
  %53 = load i8, ptr %52, align 1, !dbg !2032, !tbaa !1104
  %54 = icmp eq i8 %53, 40, !dbg !2033
  br i1 %54, label %55, label %132, !dbg !2034

55:                                               ; preds = %44
  %56 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !2035
  %57 = load i8, ptr %56, align 1, !dbg !2035, !tbaa !1104
  %58 = icmp eq i8 %57, 0, !dbg !2036
  br i1 %58, label %59, label %132, !dbg !2037

59:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i1 true, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2038
  %60 = add nsw i32 %48, 1, !dbg !2040
  store i32 %60, ptr @pos, align 4, !dbg !2040, !tbaa !1095
  %61 = icmp sgt i32 %14, %60
  br i1 %61, label %62, label %72, !dbg !2041

62:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 1, metadata !2006, metadata !DIExpression()), !dbg !2042
  %63 = add nsw i32 %48, 2, !dbg !2043
  %64 = icmp slt i32 %63, %14, !dbg !2046
  br i1 %64, label %65, label %102, !dbg !2047

65:                                               ; preds = %62
  %66 = sext i32 %45 to i64, !dbg !2048
  %67 = sext i32 %60 to i64, !dbg !2048
  call void @llvm.dbg.value(metadata i64 1, metadata !2006, metadata !DIExpression()), !dbg !2042
  %68 = getelementptr inbounds ptr, ptr %12, i64 %66, !dbg !2049
  %69 = load ptr, ptr %68, align 8, !dbg !2049, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %69, metadata !1106, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1112, metadata !DIExpression()), !dbg !2050
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(2) @.str.92) #40, !dbg !2052
  %71 = icmp eq i32 %70, 0, !dbg !2053
  br i1 %71, label %102, label %73, !dbg !2048

72:                                               ; preds = %59
  tail call fastcc void @beyond(), !dbg !2054
  unreachable, !dbg !2054

73:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i64 2, metadata !2006, metadata !DIExpression()), !dbg !2042
  %74 = add nsw i64 %67, 2, !dbg !2043
  %75 = icmp slt i64 %74, %17, !dbg !2046
  br i1 %75, label %76, label %102, !dbg !2047, !llvm.loop !2055

76:                                               ; preds = %73
  %77 = add nsw i64 %66, 1, !dbg !2043
  call void @llvm.dbg.value(metadata i64 2, metadata !2006, metadata !DIExpression()), !dbg !2042
  %78 = getelementptr inbounds ptr, ptr %12, i64 %77, !dbg !2049
  %79 = load ptr, ptr %78, align 8, !dbg !2049, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %79, metadata !1106, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1112, metadata !DIExpression()), !dbg !2050
  %80 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(2) @.str.92) #40, !dbg !2052
  %81 = icmp eq i32 %80, 0, !dbg !2053
  br i1 %81, label %102, label %82, !dbg !2048

82:                                               ; preds = %76
  call void @llvm.dbg.value(metadata i64 3, metadata !2006, metadata !DIExpression()), !dbg !2042
  %83 = add nsw i64 %67, 3, !dbg !2043
  %84 = icmp slt i64 %83, %17, !dbg !2046
  br i1 %84, label %85, label %102, !dbg !2047, !llvm.loop !2055

85:                                               ; preds = %82
  %86 = add nsw i64 %66, 2, !dbg !2043
  call void @llvm.dbg.value(metadata i64 3, metadata !2006, metadata !DIExpression()), !dbg !2042
  %87 = getelementptr inbounds ptr, ptr %12, i64 %86, !dbg !2049
  %88 = load ptr, ptr %87, align 8, !dbg !2049, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %88, metadata !1106, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1112, metadata !DIExpression()), !dbg !2050
  %89 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %88, ptr noundef nonnull dereferenceable(2) @.str.92) #40, !dbg !2052
  %90 = icmp eq i32 %89, 0, !dbg !2053
  br i1 %90, label %102, label %91, !dbg !2048

91:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i64 4, metadata !2006, metadata !DIExpression()), !dbg !2042
  %92 = add nsw i64 %67, 4, !dbg !2043
  %93 = icmp slt i64 %92, %17, !dbg !2046
  br i1 %93, label %94, label %102, !dbg !2047, !llvm.loop !2055

94:                                               ; preds = %91
  %95 = add nsw i64 %66, 3, !dbg !2043
  call void @llvm.dbg.value(metadata i64 4, metadata !2006, metadata !DIExpression()), !dbg !2042
  %96 = getelementptr inbounds ptr, ptr %12, i64 %95, !dbg !2049
  %97 = load ptr, ptr %96, align 8, !dbg !2049, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %97, metadata !1106, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1112, metadata !DIExpression()), !dbg !2050
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %97, ptr noundef nonnull dereferenceable(2) @.str.92) #40, !dbg !2052
  %99 = icmp eq i32 %98, 0, !dbg !2053
  %100 = sub nsw i32 %14, %60
  %101 = select i1 %99, i32 4, i32 %100, !dbg !2048
  br label %102, !dbg !2048

102:                                              ; preds = %94, %73, %65, %76, %82, %85, %91, %62
  %103 = phi i32 [ 1, %62 ], [ 1, %65 ], [ 2, %73 ], [ 2, %76 ], [ 3, %82 ], [ 3, %85 ], [ 4, %91 ], [ %101, %94 ], !dbg !2057
  call void @llvm.dbg.value(metadata i32 %103, metadata !2006, metadata !DIExpression()), !dbg !2042
  %104 = tail call fastcc zeroext i1 @posixtest(i32 noundef %103), !dbg !2058
  call void @llvm.dbg.value(metadata i1 %104, metadata !2004, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2009
  %105 = load ptr, ptr @argv, align 8, !dbg !2059, !tbaa !994
  %106 = load i32, ptr @pos, align 4, !dbg !2061, !tbaa !1095
  %107 = sext i32 %106 to i64, !dbg !2059
  %108 = getelementptr inbounds ptr, ptr %105, i64 %107, !dbg !2059
  %109 = load ptr, ptr %108, align 8, !dbg !2059, !tbaa !994
  %110 = icmp eq ptr %109, null, !dbg !2059
  br i1 %110, label %111, label %114, !dbg !2062

111:                                              ; preds = %102
  %112 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.119, i32 noundef 5) #39, !dbg !2063
  %113 = tail call ptr @quote(ptr noundef nonnull @.str.92) #39, !dbg !2064
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %112, ptr noundef %113) #43, !dbg !2065
  unreachable, !dbg !2065

114:                                              ; preds = %102
  %115 = load i8, ptr %109, align 1, !dbg !2066, !tbaa !1104
  %116 = icmp eq i8 %115, 41, !dbg !2068
  br i1 %116, label %117, label %121, !dbg !2069

117:                                              ; preds = %114
  %118 = getelementptr inbounds i8, ptr %109, i64 1, !dbg !2070
  %119 = load i8, ptr %118, align 1, !dbg !2070, !tbaa !1104
  %120 = icmp eq i8 %119, 0, !dbg !2070
  br i1 %120, label %130, label %121, !dbg !2071

121:                                              ; preds = %117, %114
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.120, i32 noundef 5) #39, !dbg !2072
  %123 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.92) #39, !dbg !2073
  %124 = load ptr, ptr @argv, align 8, !dbg !2074, !tbaa !994
  %125 = load i32, ptr @pos, align 4, !dbg !2075, !tbaa !1095
  %126 = sext i32 %125 to i64, !dbg !2074
  %127 = getelementptr inbounds ptr, ptr %124, i64 %126, !dbg !2074
  %128 = load ptr, ptr %127, align 8, !dbg !2074, !tbaa !994
  %129 = tail call ptr @quote_n(i32 noundef 1, ptr noundef %128) #39, !dbg !2076
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %122, ptr noundef %123, ptr noundef %129) #43, !dbg !2077
  unreachable, !dbg !2077

130:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i1 false, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2078
  %131 = add nsw i32 %106, 1, !dbg !2080
  store i32 %131, ptr @pos, align 4, !dbg !2080, !tbaa !1095
  br label %175, !dbg !2081

132:                                              ; preds = %55, %44
  %133 = sub nsw i32 %14, %48, !dbg !2082
  %134 = icmp sgt i32 %133, 3, !dbg !2084
  br i1 %134, label %135, label %148, !dbg !2085

135:                                              ; preds = %132
  call void @llvm.dbg.value(metadata ptr %52, metadata !1106, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr @.str.115, metadata !1112, metadata !DIExpression()), !dbg !2086
  %136 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(3) @.str.115) #40, !dbg !2088
  %137 = icmp eq i32 %136, 0, !dbg !2089
  br i1 %137, label %138, label %150, !dbg !2090

138:                                              ; preds = %135
  %139 = shl i64 %46, 32, !dbg !2091
  %140 = add i64 %139, 8589934592, !dbg !2091
  %141 = ashr exact i64 %140, 32, !dbg !2091
  %142 = getelementptr inbounds ptr, ptr %12, i64 %141, !dbg !2091
  %143 = load ptr, ptr %142, align 8, !dbg !2091, !tbaa !994
  %144 = tail call fastcc i32 @binop(ptr noundef %143), !dbg !2092
  call void @llvm.dbg.value(metadata i32 %144, metadata !2005, metadata !DIExpression()), !dbg !2009
  %145 = icmp sgt i32 %144, -1, !dbg !2093
  br i1 %145, label %146, label %150, !dbg !2094

146:                                              ; preds = %138
  %147 = tail call fastcc zeroext i1 @binary_operator(i1 noundef zeroext true, i32 noundef %144), !dbg !2095
  call void @llvm.dbg.value(metadata i1 %147, metadata !2004, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2009
  br label %175, !dbg !2096

148:                                              ; preds = %132
  %149 = icmp eq i32 %133, 3, !dbg !2097
  br i1 %149, label %150, label %160, !dbg !2099

150:                                              ; preds = %135, %138, %148
  %151 = shl i64 %46, 32, !dbg !2100
  %152 = add i64 %151, 4294967296, !dbg !2100
  %153 = ashr exact i64 %152, 32, !dbg !2100
  %154 = getelementptr inbounds ptr, ptr %12, i64 %153, !dbg !2100
  %155 = load ptr, ptr %154, align 8, !dbg !2100, !tbaa !994
  %156 = tail call fastcc i32 @binop(ptr noundef %155), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %156, metadata !2005, metadata !DIExpression()), !dbg !2009
  %157 = icmp sgt i32 %156, -1, !dbg !2102
  br i1 %157, label %158, label %160, !dbg !2103

158:                                              ; preds = %150
  %159 = tail call fastcc zeroext i1 @binary_operator(i1 noundef zeroext false, i32 noundef %156), !dbg !2104
  call void @llvm.dbg.value(metadata i1 %159, metadata !2004, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2009
  br label %175, !dbg !2105

160:                                              ; preds = %150, %148
  %161 = icmp eq i8 %53, 45, !dbg !2106
  br i1 %161, label %162, label %172, !dbg !2108

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !2109
  %164 = load i8, ptr %163, align 1, !dbg !2109, !tbaa !1104
  %165 = icmp eq i8 %164, 0, !dbg !2109
  br i1 %165, label %172, label %166, !dbg !2110

166:                                              ; preds = %162
  %167 = getelementptr inbounds i8, ptr %52, i64 2, !dbg !2111
  %168 = load i8, ptr %167, align 1, !dbg !2111, !tbaa !1104
  %169 = icmp eq i8 %168, 0, !dbg !2112
  br i1 %169, label %170, label %172, !dbg !2113

170:                                              ; preds = %166
  %171 = tail call fastcc zeroext i1 @unary_operator(), !dbg !2114
  call void @llvm.dbg.value(metadata i1 %171, metadata !2004, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2009
  br label %175, !dbg !2115

172:                                              ; preds = %166, %162, %160
  %173 = icmp ne i8 %53, 0, !dbg !2116
  call void @llvm.dbg.value(metadata i1 %173, metadata !2004, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2009
  call void @llvm.dbg.value(metadata i1 false, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2118
  %174 = add nsw i32 %48, 1, !dbg !2120
  store i32 %174, ptr @pos, align 4, !dbg !2120, !tbaa !1095
  br label %175

175:                                              ; preds = %130, %146, %158, %170, %172
  %176 = phi i1 [ %104, %130 ], [ %147, %146 ], [ %159, %158 ], [ %171, %170 ], [ %173, %172 ]
  call void @llvm.dbg.value(metadata i1 %176, metadata !2004, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2009
  %177 = xor i1 %47, %176, !dbg !2121
  %178 = and i1 %15, %177, !dbg !2122
  call void @llvm.dbg.value(metadata i1 %178, metadata !1995, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1998
  %179 = load i32, ptr @pos, align 4, !dbg !2123, !tbaa !1095
  %180 = load i32, ptr @argc, align 4, !dbg !2125, !tbaa !1095
  %181 = icmp slt i32 %179, %180, !dbg !2126
  br i1 %181, label %182, label %192, !dbg !2127

182:                                              ; preds = %175
  %183 = load ptr, ptr @argv, align 8, !dbg !2128, !tbaa !994
  %184 = sext i32 %179 to i64, !dbg !2128
  %185 = getelementptr inbounds ptr, ptr %183, i64 %184, !dbg !2128
  %186 = load ptr, ptr %185, align 8, !dbg !2128, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %186, metadata !1106, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata ptr @.str.98, metadata !1112, metadata !DIExpression()), !dbg !2129
  %187 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %186, ptr noundef nonnull dereferenceable(3) @.str.98) #40, !dbg !2131
  %188 = icmp eq i32 %187, 0, !dbg !2132
  br i1 %188, label %189, label %194, !dbg !2133

189:                                              ; preds = %182
  call void @llvm.dbg.value(metadata i1 false, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2134
  %190 = add nsw i32 %179, 1, !dbg !2136
  store i32 %190, ptr @pos, align 4, !dbg !2136, !tbaa !1095
  call void @llvm.dbg.value(metadata i8 poison, metadata !1995, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2001, metadata !DIExpression()), !dbg !2009
  %191 = icmp sgt i32 %180, %190, !dbg !2012
  br i1 %191, label %11, label %43, !dbg !2013, !llvm.loop !2137

192:                                              ; preds = %175
  %193 = or i1 %10, %178, !dbg !2140
  call void @llvm.dbg.value(metadata i1 %193, metadata !1993, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1994
  br label %198

194:                                              ; preds = %182
  %195 = or i1 %10, %178, !dbg !2140
  call void @llvm.dbg.value(metadata i1 %195, metadata !1993, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1994
  call void @llvm.dbg.value(metadata ptr %186, metadata !1106, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr @.str.99, metadata !1112, metadata !DIExpression()), !dbg !2141
  %196 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %186, ptr noundef nonnull dereferenceable(3) @.str.99) #40, !dbg !2144
  %197 = icmp eq i32 %196, 0, !dbg !2145
  br i1 %197, label %200, label %198, !dbg !2146

198:                                              ; preds = %194, %192
  %199 = phi i1 [ %193, %192 ], [ %195, %194 ]
  ret i1 %199, !dbg !2147

200:                                              ; preds = %194
  call void @llvm.dbg.value(metadata i1 false, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2148
  %201 = add nsw i32 %179, 1, !dbg !2150
  store i32 %201, ptr @pos, align 4, !dbg !2150, !tbaa !1095
  call void @llvm.dbg.value(metadata i8 poison, metadata !1993, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i8 poison, metadata !1995, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8 poison, metadata !2001, metadata !DIExpression()), !dbg !2009
  %202 = icmp sgt i32 %180, %201, !dbg !2012
  br i1 %202, label %6, label %43, !dbg !2013, !llvm.loop !2151
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i32 @binop(ptr nocapture noundef readonly %0) unnamed_addr #11 !dbg !2153 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2155, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata ptr @.str.103, metadata !1112, metadata !DIExpression()), !dbg !2157
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.103) #40, !dbg !2159
  %3 = icmp eq i32 %2, 0, !dbg !2160
  br i1 %3, label %44, label %4, !dbg !2161

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata ptr @.str.104, metadata !1112, metadata !DIExpression()), !dbg !2162
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.104) #40, !dbg !2164
  %6 = icmp eq i32 %5, 0, !dbg !2165
  br i1 %6, label %44, label %7, !dbg !2166

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata ptr @.str.105, metadata !1112, metadata !DIExpression()), !dbg !2167
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.105) #40, !dbg !2169
  %9 = icmp eq i32 %8, 0, !dbg !2170
  br i1 %9, label %44, label %10, !dbg !2171

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata ptr @.str.100, metadata !1112, metadata !DIExpression()), !dbg !2172
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.100) #40, !dbg !2174
  %12 = icmp eq i32 %11, 0, !dbg !2175
  br i1 %12, label %44, label %13, !dbg !2176

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata ptr @.str.101, metadata !1112, metadata !DIExpression()), !dbg !2177
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.101) #40, !dbg !2179
  %15 = icmp eq i32 %14, 0, !dbg !2180
  br i1 %15, label %44, label %16, !dbg !2181

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata ptr @.str.106, metadata !1112, metadata !DIExpression()), !dbg !2182
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.106) #40, !dbg !2184
  %18 = icmp eq i32 %17, 0, !dbg !2185
  br i1 %18, label %44, label %19, !dbg !2186

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata ptr @.str.107, metadata !1112, metadata !DIExpression()), !dbg !2187
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.107) #40, !dbg !2189
  %21 = icmp eq i32 %20, 0, !dbg !2190
  br i1 %21, label %44, label %22, !dbg !2191

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata ptr @.str.108, metadata !1112, metadata !DIExpression()), !dbg !2192
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.108) #40, !dbg !2194
  %24 = icmp eq i32 %23, 0, !dbg !2195
  br i1 %24, label %44, label %25, !dbg !2196

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata ptr @.str.109, metadata !1112, metadata !DIExpression()), !dbg !2197
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.109) #40, !dbg !2199
  %27 = icmp eq i32 %26, 0, !dbg !2200
  br i1 %27, label %44, label %28, !dbg !2201

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata ptr @.str.110, metadata !1112, metadata !DIExpression()), !dbg !2202
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.110) #40, !dbg !2204
  %30 = icmp eq i32 %29, 0, !dbg !2205
  br i1 %30, label %44, label %31, !dbg !2206

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata ptr @.str.111, metadata !1112, metadata !DIExpression()), !dbg !2207
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.111) #40, !dbg !2209
  %33 = icmp eq i32 %32, 0, !dbg !2210
  br i1 %33, label %44, label %34, !dbg !2211

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata ptr @.str.112, metadata !1112, metadata !DIExpression()), !dbg !2212
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.112) #40, !dbg !2214
  %36 = icmp eq i32 %35, 0, !dbg !2215
  br i1 %36, label %44, label %37, !dbg !2216

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr @.str.113, metadata !1112, metadata !DIExpression()), !dbg !2217
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.113) #40, !dbg !2219
  %39 = icmp eq i32 %38, 0, !dbg !2220
  br i1 %39, label %44, label %40, !dbg !2221

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata ptr @.str.114, metadata !1112, metadata !DIExpression()), !dbg !2222
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.114) #40, !dbg !2224
  %42 = icmp eq i32 %41, 0, !dbg !2225
  %43 = select i1 %42, i32 10, i32 -1, !dbg !2226
  br label %44, !dbg !2221

44:                                               ; preds = %4, %10, %16, %22, %28, %34, %37, %40, %31, %25, %19, %13, %7, %1
  %45 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 3, %7 ], [ 1, %10 ], [ 2, %13 ], [ 4, %16 ], [ 9, %19 ], [ 8, %22 ], [ 7, %25 ], [ 6, %28 ], [ 5, %31 ], [ 12, %34 ], [ %43, %40 ], [ 11, %37 ], !dbg !2161
  ret i32 %45, !dbg !2227
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @binary_operator(i1 noundef zeroext %0, i32 noundef %1) unnamed_addr #10 !dbg !2228 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca [21 x i8], align 16
  %6 = alloca [21 x i8], align 16
  %7 = alloca [2 x %struct.stat], align 16
  call void @llvm.dbg.value(metadata i1 %0, metadata !2232, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2251
  call void @llvm.dbg.value(metadata i32 %1, metadata !2233, metadata !DIExpression()), !dbg !2251
  %8 = load i32, ptr @pos, align 4, !dbg !2251, !tbaa !1095
  %9 = zext i1 %0 to i32, !dbg !2252
  %10 = add nsw i32 %8, %9, !dbg !2252
  %11 = add nsw i32 %10, 1, !dbg !2253
  call void @llvm.dbg.value(metadata i32 %11, metadata !2234, metadata !DIExpression()), !dbg !2251
  %12 = load i32, ptr @argc, align 4, !dbg !2254, !tbaa !1095
  %13 = add nsw i32 %12, -2, !dbg !2255
  %14 = icmp slt i32 %11, %13, !dbg !2256
  br i1 %14, label %15, label %24, !dbg !2257

15:                                               ; preds = %2
  %16 = load ptr, ptr @argv, align 8, !dbg !2258, !tbaa !994
  %17 = add nsw i32 %10, 2, !dbg !2259
  %18 = sext i32 %17 to i64, !dbg !2258
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18, !dbg !2258
  %20 = load ptr, ptr %19, align 8, !dbg !2258, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %20, metadata !1106, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata ptr @.str.115, metadata !1112, metadata !DIExpression()), !dbg !2260
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(3) @.str.115) #40, !dbg !2262
  %22 = icmp eq i32 %21, 0, !dbg !2263
  call void @llvm.dbg.value(metadata i1 %22, metadata !2235, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2251
  %23 = select i1 %22, i32 %11, i32 %10, !dbg !2264
  br label %24, !dbg !2264

24:                                               ; preds = %15, %2
  %25 = phi i32 [ %10, %2 ], [ %23, %15 ], !dbg !2265
  %26 = phi i1 [ false, %2 ], [ %22, %15 ]
  %27 = add nsw i32 %25, 3, !dbg !2265
  store i32 %27, ptr @pos, align 4, !dbg !2265, !tbaa !1095
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
  ], !dbg !2266

28:                                               ; preds = %24, %24, %24, %24, %24, %24
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %5) #39, !dbg !2267
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2236, metadata !DIExpression()), !dbg !2268
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %6) #39, !dbg !2269
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2239, metadata !DIExpression()), !dbg !2270
  %29 = load ptr, ptr @argv, align 8, !dbg !2271, !tbaa !994
  %30 = sext i32 %10 to i64, !dbg !2271
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30, !dbg !2271
  %32 = load ptr, ptr %31, align 8, !dbg !2271, !tbaa !994
  br i1 %0, label %33, label %36, !dbg !2272

33:                                               ; preds = %28
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #40, !dbg !2273
  %35 = call ptr @umaxtostr(i64 noundef %34, ptr noundef nonnull %5) #39, !dbg !2274
  br label %38, !dbg !2272

36:                                               ; preds = %28
  %37 = tail call fastcc ptr @find_int(ptr noundef %32), !dbg !2275
  br label %38, !dbg !2272

38:                                               ; preds = %36, %33
  %39 = phi ptr [ %35, %33 ], [ %37, %36 ], !dbg !2272
  call void @llvm.dbg.value(metadata ptr %39, metadata !2240, metadata !DIExpression()), !dbg !2271
  %40 = load ptr, ptr @argv, align 8, !dbg !2271, !tbaa !994
  br i1 %26, label %41, label %48, !dbg !2276

41:                                               ; preds = %38
  %42 = add nsw i32 %10, 3, !dbg !2277
  %43 = sext i32 %42 to i64, !dbg !2278
  %44 = getelementptr inbounds ptr, ptr %40, i64 %43, !dbg !2278
  %45 = load ptr, ptr %44, align 8, !dbg !2278, !tbaa !994
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #40, !dbg !2279
  %47 = call ptr @umaxtostr(i64 noundef %46, ptr noundef nonnull %6) #39, !dbg !2280
  br label %54, !dbg !2276

48:                                               ; preds = %38
  %49 = add nsw i32 %10, 2, !dbg !2281
  %50 = sext i32 %49 to i64, !dbg !2282
  %51 = getelementptr inbounds ptr, ptr %40, i64 %50, !dbg !2282
  %52 = load ptr, ptr %51, align 8, !dbg !2282, !tbaa !994
  %53 = call fastcc ptr @find_int(ptr noundef %52), !dbg !2283
  br label %54, !dbg !2276

54:                                               ; preds = %48, %41
  %55 = phi ptr [ %47, %41 ], [ %53, %48 ], !dbg !2276
  call void @llvm.dbg.value(metadata ptr %55, metadata !2241, metadata !DIExpression()), !dbg !2271
  %56 = call i32 @strintcmp(ptr noundef %39, ptr noundef %55) #40, !dbg !2284
  call void @llvm.dbg.value(metadata i32 %56, metadata !2242, metadata !DIExpression()), !dbg !2271
  switch i32 %1, label %69 [
    i32 4, label %57
    i32 5, label %59
    i32 6, label %61
    i32 7, label %63
    i32 8, label %65
    i32 9, label %67
  ], !dbg !2285

57:                                               ; preds = %54
  %58 = icmp eq i32 %56, 0, !dbg !2286
  br label %70, !dbg !2288

59:                                               ; preds = %54
  %60 = icmp sgt i32 %56, -1, !dbg !2289
  br label %70, !dbg !2290

61:                                               ; preds = %54
  %62 = icmp sgt i32 %56, 0, !dbg !2291
  br label %70, !dbg !2292

63:                                               ; preds = %54
  %64 = icmp slt i32 %56, 1, !dbg !2293
  br label %70, !dbg !2294

65:                                               ; preds = %54
  %66 = icmp slt i32 %56, 0, !dbg !2295
  br label %70, !dbg !2296

67:                                               ; preds = %54
  %68 = icmp ne i32 %56, 0, !dbg !2297
  br label %70, !dbg !2298

69:                                               ; preds = %54
  unreachable, !dbg !2299

70:                                               ; preds = %67, %65, %63, %61, %59, %57
  %71 = phi i1 [ %68, %67 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %60, %59 ], [ %58, %57 ], !dbg !2300
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %6) #39, !dbg !2301
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %5) #39, !dbg !2301
  br label %188

72:                                               ; preds = %24, %24
  %73 = or i1 %26, %0, !dbg !2302
  br i1 %73, label %74, label %80, !dbg !2304

74:                                               ; preds = %72
  %75 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.116, i32 noundef 5) #39, !dbg !2305
  %76 = load ptr, ptr @argv, align 8, !dbg !2306, !tbaa !994
  %77 = sext i32 %11 to i64, !dbg !2306
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77, !dbg !2306
  %79 = load ptr, ptr %78, align 8, !dbg !2306, !tbaa !994
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %75, ptr noundef %79) #43, !dbg !2307
  unreachable, !dbg !2307

80:                                               ; preds = %72
  %81 = load ptr, ptr @argv, align 8, !dbg !2308, !tbaa !994
  %82 = sext i32 %10 to i64, !dbg !2308
  %83 = getelementptr inbounds ptr, ptr %81, i64 %82, !dbg !2308
  %84 = load ptr, ptr %83, align 8, !dbg !2308, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %84, metadata !2309, metadata !DIExpression()), !dbg !2315
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #39, !dbg !2317
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2314, metadata !DIExpression()), !dbg !2318
  %85 = call i32 @stat(ptr noundef %84, ptr noundef nonnull %4) #39, !dbg !2319
  %86 = icmp slt i32 %85, 0, !dbg !2320
  %87 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 12, !dbg !2319
  %88 = load i64, ptr %87, align 8, !dbg !2319
  %89 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 12, i32 1, !dbg !2319
  %90 = load i64, ptr %89, align 8, !dbg !2319
  %91 = insertvalue { i64, i64 } poison, i64 %88, 0, !dbg !2319
  %92 = insertvalue { i64, i64 } %91, i64 %90, 1, !dbg !2319
  %93 = select i1 %86, { i64, i64 } { i64 -9223372036854775808, i64 -1 }, { i64, i64 } %92, !dbg !2319
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #39, !dbg !2321
  %94 = extractvalue { i64, i64 } %93, 0, !dbg !2322
  %95 = extractvalue { i64, i64 } %93, 1, !dbg !2322
  %96 = load ptr, ptr @argv, align 8, !dbg !2323, !tbaa !994
  %97 = add nsw i32 %10, 2, !dbg !2324
  %98 = sext i32 %97 to i64, !dbg !2323
  %99 = getelementptr inbounds ptr, ptr %96, i64 %98, !dbg !2323
  %100 = load ptr, ptr %99, align 8, !dbg !2323, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %100, metadata !2309, metadata !DIExpression()), !dbg !2325
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #39, !dbg !2327
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2314, metadata !DIExpression()), !dbg !2328
  %101 = call i32 @stat(ptr noundef %100, ptr noundef nonnull %3) #39, !dbg !2329
  %102 = icmp slt i32 %101, 0, !dbg !2330
  %103 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 12, !dbg !2329
  %104 = load i64, ptr %103, align 8, !dbg !2329
  %105 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 12, i32 1, !dbg !2329
  %106 = load i64, ptr %105, align 8, !dbg !2329
  %107 = insertvalue { i64, i64 } poison, i64 %104, 0, !dbg !2329
  %108 = insertvalue { i64, i64 } %107, i64 %106, 1, !dbg !2329
  %109 = select i1 %102, { i64, i64 } { i64 -9223372036854775808, i64 -1 }, { i64, i64 } %108, !dbg !2329
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #39, !dbg !2331
  %110 = extractvalue { i64, i64 } %109, 0, !dbg !2332
  %111 = extractvalue { i64, i64 } %109, 1, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %94, metadata !1621, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2333
  call void @llvm.dbg.value(metadata i64 %95, metadata !1621, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2333
  call void @llvm.dbg.value(metadata i64 %110, metadata !1627, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2333
  call void @llvm.dbg.value(metadata i64 %111, metadata !1627, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2333
  %112 = icmp sgt i64 %94, %110, !dbg !2335
  %113 = zext i1 %112 to i32, !dbg !2335
  %114 = icmp slt i64 %94, %110, !dbg !2335
  %115 = sext i1 %114 to i32, !dbg !2335
  %116 = add nsw i32 %115, %113, !dbg !2335
  %117 = shl nsw i32 %116, 1, !dbg !2336
  %118 = icmp sgt i64 %95, %111, !dbg !2337
  %119 = zext i1 %118 to i32, !dbg !2337
  %120 = icmp slt i64 %95, %111, !dbg !2337
  %121 = sext i1 %120 to i32, !dbg !2337
  %122 = add nsw i32 %121, %119, !dbg !2337
  %123 = add nsw i32 %122, %117, !dbg !2338
  call void @llvm.dbg.value(metadata i32 %123, metadata !2243, metadata !DIExpression()), !dbg !2339
  %124 = icmp eq i32 %1, 12, !dbg !2340
  %125 = icmp slt i32 %123, 0, !dbg !2341
  %126 = icmp sgt i32 %123, 0, !dbg !2341
  %127 = select i1 %124, i1 %125, i1 %126, !dbg !2341
  br label %188

128:                                              ; preds = %24
  %129 = or i1 %26, %0, !dbg !2342
  br i1 %129, label %130, label %132, !dbg !2343

130:                                              ; preds = %128
  %131 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.117, i32 noundef 5) #39, !dbg !2344
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %131) #43, !dbg !2345
  unreachable, !dbg !2345

132:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %7) #39, !dbg !2346
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2245, metadata !DIExpression()), !dbg !2347
  %133 = load ptr, ptr @argv, align 8, !dbg !2348, !tbaa !994
  %134 = sext i32 %10 to i64, !dbg !2348
  %135 = getelementptr inbounds ptr, ptr %133, i64 %134, !dbg !2348
  %136 = load ptr, ptr %135, align 8, !dbg !2348, !tbaa !994
  %137 = call i32 @stat(ptr noundef %136, ptr noundef nonnull %7) #39, !dbg !2349
  %138 = icmp eq i32 %137, 0, !dbg !2350
  br i1 %138, label %139, label %158, !dbg !2351

139:                                              ; preds = %132
  %140 = load ptr, ptr @argv, align 8, !dbg !2352, !tbaa !994
  %141 = add nsw i32 %10, 2, !dbg !2353
  %142 = sext i32 %141 to i64, !dbg !2352
  %143 = getelementptr inbounds ptr, ptr %140, i64 %142, !dbg !2352
  %144 = load ptr, ptr %143, align 8, !dbg !2352, !tbaa !994
  %145 = getelementptr inbounds [2 x %struct.stat], ptr %7, i64 0, i64 1, !dbg !2354
  %146 = call i32 @stat(ptr noundef %144, ptr noundef nonnull %145) #39, !dbg !2355
  %147 = icmp eq i32 %146, 0, !dbg !2356
  br i1 %147, label %148, label %158, !dbg !2357

148:                                              ; preds = %139
  call void @llvm.dbg.value(metadata ptr %7, metadata !2358, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr %145, metadata !2364, metadata !DIExpression()), !dbg !2365
  %149 = load i64, ptr %7, align 16, !dbg !2367, !tbaa !2368
  %150 = load i64, ptr %145, align 16, !dbg !2367, !tbaa !2368
  %151 = icmp eq i64 %149, %150, !dbg !2367
  %152 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 1, !dbg !2367
  %153 = load i64, ptr %152, align 8, !dbg !2367, !tbaa !2369
  %154 = getelementptr inbounds [2 x %struct.stat], ptr %7, i64 0, i64 1, i32 1, !dbg !2367
  %155 = load i64, ptr %154, align 8, !dbg !2367, !tbaa !2369
  %156 = icmp eq i64 %153, %155, !dbg !2367
  %157 = and i1 %151, %156, !dbg !2367
  br label %158

158:                                              ; preds = %148, %139, %132
  %159 = phi i1 [ false, %139 ], [ false, %132 ], [ %157, %148 ], !dbg !2370
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %7) #39, !dbg !2371
  br label %188

160:                                              ; preds = %24, %24
  %161 = load ptr, ptr @argv, align 8, !dbg !2372, !tbaa !994
  %162 = sext i32 %10 to i64, !dbg !2372
  %163 = getelementptr inbounds ptr, ptr %161, i64 %162, !dbg !2372
  %164 = load ptr, ptr %163, align 8, !dbg !2372, !tbaa !994
  %165 = add nsw i32 %10, 2, !dbg !2373
  %166 = sext i32 %165 to i64, !dbg !2374
  %167 = getelementptr inbounds ptr, ptr %161, i64 %166, !dbg !2374
  %168 = load ptr, ptr %167, align 8, !dbg !2374, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %164, metadata !1106, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata ptr %168, metadata !1112, metadata !DIExpression()), !dbg !2375
  %169 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %164, ptr noundef nonnull dereferenceable(1) %168) #40, !dbg !2377
  %170 = icmp eq i32 %169, 0, !dbg !2378
  %171 = icmp ne i32 %1, 0, !dbg !2379
  %172 = xor i1 %171, %170, !dbg !2380
  br label %188, !dbg !2381

173:                                              ; preds = %24, %24
  %174 = load ptr, ptr @argv, align 8, !dbg !2382, !tbaa !994
  %175 = sext i32 %10 to i64, !dbg !2382
  %176 = getelementptr inbounds ptr, ptr %174, i64 %175, !dbg !2382
  %177 = load ptr, ptr %176, align 8, !dbg !2382, !tbaa !994
  %178 = add nsw i32 %10, 2, !dbg !2383
  %179 = sext i32 %178 to i64, !dbg !2384
  %180 = getelementptr inbounds ptr, ptr %174, i64 %179, !dbg !2384
  %181 = load ptr, ptr %180, align 8, !dbg !2384, !tbaa !994
  %182 = tail call i32 @strcoll(ptr noundef %177, ptr noundef %181) #40, !dbg !2385
  call void @llvm.dbg.value(metadata i32 %182, metadata !2249, metadata !DIExpression()), !dbg !2386
  %183 = icmp eq i32 %1, 2, !dbg !2387
  %184 = icmp slt i32 %182, 0, !dbg !2388
  %185 = icmp sgt i32 %182, 0, !dbg !2388
  %186 = select i1 %183, i1 %184, i1 %185, !dbg !2388
  br label %188

187:                                              ; preds = %24
  tail call void @__assert_fail(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.94, i32 noundef 362, ptr noundef nonnull @__PRETTY_FUNCTION__.binary_operator) #41, !dbg !2389
  unreachable, !dbg !2389

188:                                              ; preds = %173, %160, %158, %80, %70
  %189 = phi i1 [ %186, %173 ], [ %172, %160 ], [ %159, %158 ], [ %127, %80 ], [ %71, %70 ], !dbg !2392
  ret i1 %189, !dbg !2393
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2394 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_int(ptr noundef %0) unnamed_addr #10 !dbg !2397 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2401, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata ptr %0, metadata !2402, metadata !DIExpression()), !dbg !2404
  %2 = tail call ptr @__ctype_b_loc() #42, !dbg !2404
  %3 = load ptr, ptr %2, align 8, !tbaa !994
  br label %4, !dbg !2405

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %0, %1 ], [ %12, %4 ], !dbg !2407
  call void @llvm.dbg.value(metadata ptr %5, metadata !2402, metadata !DIExpression()), !dbg !2404
  %6 = load i8, ptr %5, align 1, !dbg !2408, !tbaa !1104
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i16, ptr %3, i64 %7, !dbg !2408
  %9 = load i16, ptr %8, align 2, !dbg !2408, !tbaa !1136
  %10 = and i16 %9, 8192, !dbg !2408
  %11 = icmp eq i16 %10, 0, !dbg !2410
  %12 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !2411
  call void @llvm.dbg.value(metadata ptr %12, metadata !2402, metadata !DIExpression()), !dbg !2404
  br i1 %11, label %13, label %4, !dbg !2410, !llvm.loop !2412

13:                                               ; preds = %4
  %14 = icmp eq i8 %6, 43, !dbg !2414
  %15 = icmp eq i8 %6, 45, !dbg !2416
  %16 = zext i1 %15 to i64, !dbg !2416
  %17 = getelementptr inbounds i8, ptr %5, i64 %16, !dbg !2416
  %18 = select i1 %14, ptr %12, ptr %17, !dbg !2416
  call void @llvm.dbg.value(metadata ptr poison, metadata !2403, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata ptr %18, metadata !2402, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata ptr %18, metadata !2402, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2404
  %19 = load i8, ptr %18, align 1, !dbg !2417, !tbaa !1104
  %20 = sext i8 %19 to i32, !dbg !2417
  call void @llvm.dbg.value(metadata i32 %20, metadata !2419, metadata !DIExpression()), !dbg !2423
  %21 = add nsw i32 %20, -48, !dbg !2425
  %22 = icmp ult i32 %21, 10, !dbg !2425
  br i1 %22, label %23, label %50, !dbg !2426

23:                                               ; preds = %13, %23
  %24 = phi ptr [ %25, %23 ], [ %18, %13 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2427
  call void @llvm.dbg.value(metadata ptr %25, metadata !2402, metadata !DIExpression()), !dbg !2404
  %26 = load i8, ptr %25, align 1, !dbg !2428, !tbaa !1104
  %27 = sext i8 %26 to i32, !dbg !2428
  call void @llvm.dbg.value(metadata i32 %27, metadata !2419, metadata !DIExpression()), !dbg !2430
  %28 = add nsw i32 %27, -48, !dbg !2432
  %29 = icmp ult i32 %28, 10, !dbg !2432
  br i1 %29, label %23, label %30, !dbg !2433, !llvm.loop !2434

30:                                               ; preds = %23
  call void @llvm.dbg.value(metadata ptr %25, metadata !2402, metadata !DIExpression()), !dbg !2404
  %31 = zext i8 %26 to i64
  %32 = getelementptr inbounds i16, ptr %3, i64 %31, !dbg !2436
  %33 = load i16, ptr %32, align 2, !dbg !2436, !tbaa !1136
  %34 = and i16 %33, 8192, !dbg !2436
  %35 = icmp eq i16 %34, 0, !dbg !2437
  br i1 %35, label %45, label %36, !dbg !2437

36:                                               ; preds = %30, %36
  %37 = phi ptr [ %38, %36 ], [ %25, %30 ]
  call void @llvm.dbg.value(metadata ptr %37, metadata !2402, metadata !DIExpression()), !dbg !2404
  %38 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !2438
  call void @llvm.dbg.value(metadata ptr %38, metadata !2402, metadata !DIExpression()), !dbg !2404
  %39 = load i8, ptr %38, align 1, !dbg !2436, !tbaa !1104
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, ptr %3, i64 %40, !dbg !2436
  %42 = load i16, ptr %41, align 2, !dbg !2436, !tbaa !1136
  %43 = and i16 %42, 8192, !dbg !2436
  %44 = icmp eq i16 %43, 0, !dbg !2437
  br i1 %44, label %45, label %36, !dbg !2437, !llvm.loop !2439

45:                                               ; preds = %36, %30
  %46 = phi i8 [ %26, %30 ], [ %39, %36 ], !dbg !2436
  %47 = icmp eq i8 %46, 0, !dbg !2440
  br i1 %47, label %48, label %50, !dbg !2442

48:                                               ; preds = %45
  %49 = select i1 %14, ptr %12, ptr %5, !dbg !2416
  call void @llvm.dbg.value(metadata ptr %49, metadata !2403, metadata !DIExpression()), !dbg !2404
  ret ptr %49, !dbg !2443

50:                                               ; preds = %45, %13
  %51 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #39, !dbg !2444
  %52 = tail call ptr @quote(ptr noundef %0) #39, !dbg !2445
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %51, ptr noundef %52) #43, !dbg !2446
  unreachable, !dbg !2446
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nofree nounwind
declare !dbg !2447 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !2453 i32 @strcoll(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !2454 i32 @euidaccess(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !2458 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2463 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2466 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr nocapture noundef readonly, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2469 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !2473 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !2476 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2478, metadata !DIExpression()), !dbg !2479
  store ptr %0, ptr @file_name, align 8, !dbg !2480, !tbaa !994
  ret void, !dbg !2481
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #16 !dbg !2482 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2484, metadata !DIExpression()), !dbg !2485
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2486, !tbaa !2487
  ret void, !dbg !2489
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2490 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2495, !tbaa !994
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !2496
  %3 = icmp eq i32 %2, 0, !dbg !2497
  br i1 %3, label %22, label %4, !dbg !2498

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2499, !tbaa !2487, !range !2500, !noundef !1082
  %6 = icmp eq i8 %5, 0, !dbg !2499
  br i1 %6, label %11, label %7, !dbg !2501

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !2502
  %9 = load i32, ptr %8, align 4, !dbg !2502, !tbaa !1095
  %10 = icmp eq i32 %9, 32, !dbg !2503
  br i1 %10, label %22, label %11, !dbg !2504

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.1.67, i32 noundef 5) #39, !dbg !2505
  call void @llvm.dbg.value(metadata ptr %12, metadata !2492, metadata !DIExpression()), !dbg !2506
  %13 = load ptr, ptr @file_name, align 8, !dbg !2507, !tbaa !994
  %14 = icmp eq ptr %13, null, !dbg !2507
  %15 = tail call ptr @__errno_location() #42, !dbg !2509
  %16 = load i32, ptr %15, align 4, !dbg !2509, !tbaa !1095
  br i1 %14, label %19, label %17, !dbg !2510

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !2511
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.68, ptr noundef %18, ptr noundef %12) #39, !dbg !2511
  br label %20, !dbg !2511

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.69, ptr noundef %12) #39, !dbg !2512
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2513, !tbaa !1095
  tail call void @_exit(i32 noundef %21) #41, !dbg !2514
  unreachable, !dbg !2514

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2515, !tbaa !994
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !2517
  %25 = icmp eq i32 %24, 0, !dbg !2518
  br i1 %25, label %28, label %26, !dbg !2519

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2520, !tbaa !1095
  tail call void @_exit(i32 noundef %27) #41, !dbg !2521
  unreachable, !dbg !2521

28:                                               ; preds = %22
  ret void, !dbg !2522
}

; Function Attrs: noreturn
declare !dbg !2523 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #18 !dbg !2524 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2528, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32 %1, metadata !2529, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata ptr %2, metadata !2530, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata ptr %3, metadata !2531, metadata !DIExpression()), !dbg !2532
  tail call fastcc void @flush_stdout(), !dbg !2533
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2534, !tbaa !994
  %6 = icmp eq ptr %5, null, !dbg !2534
  br i1 %6, label %8, label %7, !dbg !2536

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !2537
  br label %12, !dbg !2537

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2538, !tbaa !994
  %10 = tail call ptr @getprogname() #40, !dbg !2538
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef %10) #39, !dbg !2538
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2540
  ret void, !dbg !2541
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2542 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2544, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i32 1, metadata !2546, metadata !DIExpression()), !dbg !2549
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !2552
  %2 = icmp slt i32 %1, 0, !dbg !2553
  br i1 %2, label %6, label %3, !dbg !2554

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2555, !tbaa !994
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !2555
  br label %6, !dbg !2555

6:                                                ; preds = %3, %0
  ret void, !dbg !2556
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2557 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2559, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32 %1, metadata !2560, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata ptr %2, metadata !2561, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata ptr %3, metadata !2562, metadata !DIExpression()), !dbg !2563
  %6 = load ptr, ptr @stderr, align 8, !dbg !2564, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %6, metadata !2565, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %2, metadata !2605, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %3, metadata !2606, metadata !DIExpression()), !dbg !2607
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !2609
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2610, !tbaa !1095
  %9 = add i32 %8, 1, !dbg !2610
  store i32 %9, ptr @error_message_count, align 4, !dbg !2610, !tbaa !1095
  %10 = icmp eq i32 %1, 0, !dbg !2611
  br i1 %10, label %20, label %11, !dbg !2613

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2614, metadata !DIExpression()), !dbg !2622
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !2624
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2618, metadata !DIExpression()), !dbg !2625
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !2626
  call void @llvm.dbg.value(metadata ptr %12, metadata !2617, metadata !DIExpression()), !dbg !2622
  %13 = icmp eq ptr %12, null, !dbg !2627
  br i1 %13, label %14, label %16, !dbg !2629

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.73, ptr noundef nonnull @.str.5.74, i32 noundef 5) #39, !dbg !2630
  call void @llvm.dbg.value(metadata ptr %15, metadata !2617, metadata !DIExpression()), !dbg !2622
  br label %16, !dbg !2631

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2622
  call void @llvm.dbg.value(metadata ptr %17, metadata !2617, metadata !DIExpression()), !dbg !2622
  %18 = load ptr, ptr @stderr, align 8, !dbg !2632, !tbaa !994
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.75, ptr noundef %17) #39, !dbg !2632
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !2633
  br label %20, !dbg !2634

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2635, !tbaa !994
  call void @llvm.dbg.value(metadata i32 10, metadata !2636, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata ptr %21, metadata !2642, metadata !DIExpression()), !dbg !2643
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2645
  %23 = load ptr, ptr %22, align 8, !dbg !2645, !tbaa !2646
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2645
  %25 = load ptr, ptr %24, align 8, !dbg !2645, !tbaa !2648
  %26 = icmp ult ptr %23, %25, !dbg !2645
  br i1 %26, label %29, label %27, !dbg !2645, !prof !2649

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !2645
  br label %31, !dbg !2645

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2645
  store ptr %30, ptr %22, align 8, !dbg !2645, !tbaa !2646
  store i8 10, ptr %23, align 1, !dbg !2645, !tbaa !1104
  br label %31, !dbg !2645

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2650, !tbaa !994
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !2650
  %34 = icmp eq i32 %0, 0, !dbg !2651
  br i1 %34, label %36, label %35, !dbg !2653

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !2654
  unreachable, !dbg !2654

36:                                               ; preds = %31
  ret void, !dbg !2655
}

declare !dbg !2656 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2659 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2662 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2665 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2668 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2672 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2676, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 %1, metadata !2677, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %2, metadata !2678, metadata !DIExpression()), !dbg !2684
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !2685
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2679, metadata !DIExpression()), !dbg !2686
  call void @llvm.va_start(ptr nonnull %4), !dbg !2687
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #45, !dbg !2688
  call void @llvm.va_end(ptr nonnull %4), !dbg !2689
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !2690
  ret void, !dbg !2690
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #18 !dbg !605 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !617, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %1, metadata !618, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %2, metadata !619, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %3, metadata !620, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %4, metadata !621, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %5, metadata !622, metadata !DIExpression()), !dbg !2691
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2692, !tbaa !1095
  %8 = icmp eq i32 %7, 0, !dbg !2692
  br i1 %8, label %23, label %9, !dbg !2694

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2695, !tbaa !1095
  %11 = icmp eq i32 %10, %3, !dbg !2698
  br i1 %11, label %12, label %22, !dbg !2699

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2700, !tbaa !994
  %14 = icmp eq ptr %13, %2, !dbg !2701
  br i1 %14, label %36, label %15, !dbg !2702

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2703
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2704
  br i1 %18, label %19, label %22, !dbg !2704

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2705
  %21 = icmp eq i32 %20, 0, !dbg !2706
  br i1 %21, label %36, label %22, !dbg !2707

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2708, !tbaa !994
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2709, !tbaa !1095
  br label %23, !dbg !2710

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2711
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2712, !tbaa !994
  %25 = icmp eq ptr %24, null, !dbg !2712
  br i1 %25, label %27, label %26, !dbg !2714

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !2715
  br label %31, !dbg !2715

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2716, !tbaa !994
  %29 = tail call ptr @getprogname() #40, !dbg !2716
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.78, ptr noundef %29) #39, !dbg !2716
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2718, !tbaa !994
  %33 = icmp eq ptr %2, null, !dbg !2718
  %34 = select i1 %33, ptr @.str.3.79, ptr @.str.2.80, !dbg !2718
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !2718
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2719
  br label %36, !dbg !2720

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2720
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2721 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2725, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i32 %1, metadata !2726, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata ptr %2, metadata !2727, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i32 %3, metadata !2728, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata ptr %4, metadata !2729, metadata !DIExpression()), !dbg !2731
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !2732
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2730, metadata !DIExpression()), !dbg !2733
  call void @llvm.va_start(ptr nonnull %6), !dbg !2734
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #45, !dbg !2735
  call void @llvm.va_end(ptr nonnull %6), !dbg !2736
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !2737
  ret void, !dbg !2737
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !2738 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2741, !tbaa !994
  ret ptr %1, !dbg !2742
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @umaxtostr(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #20 !dbg !2743 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata ptr %1, metadata !2749, metadata !DIExpression()), !dbg !2751
  %3 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !2752
  call void @llvm.dbg.value(metadata ptr %3, metadata !2750, metadata !DIExpression()), !dbg !2751
  store i8 0, ptr %3, align 1, !dbg !2753, !tbaa !1104
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi ptr [ %3, %2 ], [ %10, %4 ], !dbg !2751
  call void @llvm.dbg.value(metadata ptr %6, metadata !2750, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 %5, metadata !2748, metadata !DIExpression()), !dbg !2751
  %7 = urem i64 %5, 10, !dbg !2754
  %8 = trunc i64 %7 to i8, !dbg !2757
  %9 = or i8 %8, 48, !dbg !2757
  %10 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !2758
  call void @llvm.dbg.value(metadata ptr %10, metadata !2750, metadata !DIExpression()), !dbg !2751
  store i8 %9, ptr %10, align 1, !dbg !2759, !tbaa !1104
  %11 = udiv i64 %5, 10, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %11, metadata !2748, metadata !DIExpression()), !dbg !2751
  %12 = icmp ult i64 %5, 10, !dbg !2761
  br i1 %12, label %13, label %4, !dbg !2762, !llvm.loop !2763

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr %10, metadata !2750, metadata !DIExpression()), !dbg !2751
  ret ptr %10, !dbg !2766
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !2767 {
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
  store ptr %20, ptr @program_name, align 8, !dbg !2797, !tbaa !994
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2798, !tbaa !994
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2799, !tbaa !994
  ret void, !dbg !2800
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2801 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !657 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !664, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata ptr %1, metadata !665, metadata !DIExpression()), !dbg !2802
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !2803
  call void @llvm.dbg.value(metadata ptr %5, metadata !666, metadata !DIExpression()), !dbg !2802
  %6 = icmp eq ptr %5, %0, !dbg !2804
  br i1 %6, label %7, label %14, !dbg !2806

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !2807
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !2808
  call void @llvm.dbg.declare(metadata ptr %4, metadata !672, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata ptr %4, metadata !2810, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata ptr %4, metadata !2819, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i32 0, metadata !2825, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i64 8, metadata !2826, metadata !DIExpression()), !dbg !2827
  store i64 0, ptr %4, align 8, !dbg !2829
  call void @llvm.dbg.value(metadata ptr %3, metadata !667, metadata !DIExpression(DW_OP_deref)), !dbg !2802
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2830
  %9 = icmp eq i64 %8, 2, !dbg !2832
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !667, metadata !DIExpression()), !dbg !2802
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
  %3 = load i32, ptr %2, align 4, !dbg !2850, !tbaa !1095
  call void @llvm.dbg.value(metadata i32 %3, metadata !2847, metadata !DIExpression()), !dbg !2849
  %4 = icmp eq ptr %0, null, !dbg !2851
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2851
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #46, !dbg !2852
  call void @llvm.dbg.value(metadata ptr %6, metadata !2848, metadata !DIExpression()), !dbg !2849
  store i32 %3, ptr %2, align 4, !dbg !2853, !tbaa !1095
  ret ptr %6, !dbg !2854
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !2855 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2861, metadata !DIExpression()), !dbg !2862
  %2 = icmp eq ptr %0, null, !dbg !2863
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2863
  %4 = load i32, ptr %3, align 8, !dbg !2864, !tbaa !2865
  ret i32 %4, !dbg !2867
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2868 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2872, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i32 %1, metadata !2873, metadata !DIExpression()), !dbg !2874
  %3 = icmp eq ptr %0, null, !dbg !2875
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2875
  store i32 %1, ptr %4, align 8, !dbg !2876, !tbaa !2865
  ret void, !dbg !2877
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #25 !dbg !2878 {
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
  %12 = load i32, ptr %9, align 4, !dbg !2896, !tbaa !1095
  %13 = lshr i32 %12, %11, !dbg !2897
  %14 = and i32 %13, 1, !dbg !2898
  call void @llvm.dbg.value(metadata i32 %14, metadata !2889, metadata !DIExpression()), !dbg !2890
  %15 = xor i32 %13, %2, !dbg !2899
  %16 = and i32 %15, 1, !dbg !2899
  %17 = shl nuw i32 %16, %11, !dbg !2900
  %18 = xor i32 %17, %12, !dbg !2901
  store i32 %18, ptr %9, align 4, !dbg !2901, !tbaa !1095
  ret i32 %14, !dbg !2902
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2903 {
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
  %9 = load i32, ptr %8, align 4, !dbg !2956, !tbaa !1095
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
  store i32 %9, ptr %8, align 4, !dbg !2963, !tbaa !1095
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
  %18 = trunc i32 %5 to i8, !dbg !3036
  %19 = lshr i8 %18, 1, !dbg !3036
  %20 = and i8 %19, 1, !dbg !3036
  call void @llvm.dbg.value(metadata i8 %20, metadata !2986, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 0, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 1, metadata !2988, metadata !DIExpression()), !dbg !3033
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !3037

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !3038
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !3039
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !3040
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !3041
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !3033
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !3042
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !3043
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %39, metadata !2988, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %38, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %37, metadata !2986, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %36, metadata !2985, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %35, metadata !2984, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %34, metadata !2983, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %33, metadata !2982, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 0, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %32, metadata !2974, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %31, metadata !2979, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %30, metadata !2978, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 %29, metadata !2975, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.label(metadata !3026), !dbg !3044
  call void @llvm.dbg.value(metadata i8 0, metadata !2989, metadata !DIExpression()), !dbg !3033
  switch i32 %29, label %114 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %115
    i32 0, label %113
    i32 2, label %105
    i32 4, label %99
    i32 3, label %96
    i32 1, label %97
    i32 10, label %73
    i32 8, label %48
    i32 9, label %48
  ], !dbg !3045

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2986, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 5, metadata !2975, metadata !DIExpression()), !dbg !3033
  br label %115, !dbg !3046

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2986, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 5, metadata !2975, metadata !DIExpression()), !dbg !3033
  %43 = and i8 %37, 1, !dbg !3047
  %44 = icmp eq i8 %43, 0, !dbg !3047
  br i1 %44, label %45, label %115, !dbg !3046

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3049
  br i1 %46, label %115, label %47, !dbg !3052

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !3049, !tbaa !1104
  br label %115, !dbg !3049

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.135, metadata !770, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 %29, metadata !771, metadata !DIExpression()), !dbg !3053
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.136, ptr noundef nonnull @.str.11.135, i32 noundef 5) #39, !dbg !3057
  call void @llvm.dbg.value(metadata ptr %49, metadata !772, metadata !DIExpression()), !dbg !3053
  %50 = icmp eq ptr %49, @.str.11.135, !dbg !3058
  br i1 %50, label %51, label %60, !dbg !3060

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !3061
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !3062
  call void @llvm.dbg.declare(metadata ptr %13, metadata !774, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %13, metadata !3064, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata ptr %13, metadata !3072, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i32 0, metadata !3075, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i64 8, metadata !3076, metadata !DIExpression()), !dbg !3077
  store i64 0, ptr %13, align 8, !dbg !3079
  call void @llvm.dbg.value(metadata ptr %12, metadata !773, metadata !DIExpression(DW_OP_deref)), !dbg !3053
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !3080
  %53 = icmp eq i64 %52, 3, !dbg !3082
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !773, metadata !DIExpression()), !dbg !3053
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3083
  %57 = icmp eq i32 %29, 9, !dbg !3083
  %58 = select i1 %57, ptr @.str.10.137, ptr @.str.12.138, !dbg !3083
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3083
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !3084
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !3084
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !3053
  call void @llvm.dbg.value(metadata ptr %61, metadata !2978, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr @.str.12.138, metadata !770, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i32 %29, metadata !771, metadata !DIExpression()), !dbg !3085
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.136, ptr noundef nonnull @.str.12.138, i32 noundef 5) #39, !dbg !3087
  call void @llvm.dbg.value(metadata ptr %62, metadata !772, metadata !DIExpression()), !dbg !3085
  %63 = icmp eq ptr %62, @.str.12.138, !dbg !3088
  br i1 %63, label %64, label %73, !dbg !3089

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !3090
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !3091
  call void @llvm.dbg.declare(metadata ptr %11, metadata !774, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata ptr %11, metadata !3064, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %11, metadata !3072, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i32 0, metadata !3075, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 8, metadata !3076, metadata !DIExpression()), !dbg !3095
  store i64 0, ptr %11, align 8, !dbg !3097
  call void @llvm.dbg.value(metadata ptr %10, metadata !773, metadata !DIExpression(DW_OP_deref)), !dbg !3085
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !3098
  %66 = icmp eq i64 %65, 3, !dbg !3099
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !773, metadata !DIExpression()), !dbg !3085
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3100
  %70 = icmp eq i32 %29, 9, !dbg !3100
  %71 = select i1 %70, ptr @.str.10.137, ptr @.str.12.138, !dbg !3100
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !3101
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !3101
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2979, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %74, metadata !2978, metadata !DIExpression()), !dbg !3033
  %76 = and i8 %37, 1, !dbg !3102
  %77 = icmp eq i8 %76, 0, !dbg !3102
  br i1 %77, label %78, label %93, !dbg !3103

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2990, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 0, metadata !2981, metadata !DIExpression()), !dbg !3033
  %79 = load i8, ptr %74, align 1, !dbg !3105, !tbaa !1104
  %80 = icmp eq i8 %79, 0, !dbg !3107
  br i1 %80, label %93, label %81, !dbg !3107

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2990, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 %84, metadata !2981, metadata !DIExpression()), !dbg !3033
  %85 = icmp ult i64 %84, %40, !dbg !3108
  br i1 %85, label %86, label %88, !dbg !3111

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3108
  store i8 %82, ptr %87, align 1, !dbg !3108, !tbaa !1104
  br label %88, !dbg !3108

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3111
  call void @llvm.dbg.value(metadata i64 %89, metadata !2981, metadata !DIExpression()), !dbg !3033
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %90, metadata !2990, metadata !DIExpression()), !dbg !3104
  %91 = load i8, ptr %90, align 1, !dbg !3105, !tbaa !1104
  %92 = icmp eq i8 %91, 0, !dbg !3107
  br i1 %92, label %93, label %81, !dbg !3107, !llvm.loop !3113

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3115
  call void @llvm.dbg.value(metadata i64 %94, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 1, metadata !2985, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %75, metadata !2983, metadata !DIExpression()), !dbg !3033
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %95, metadata !2984, metadata !DIExpression()), !dbg !3033
  br label %115, !dbg !3117

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2985, metadata !DIExpression()), !dbg !3033
  br label %97, !dbg !3118

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !3033
  call void @llvm.dbg.value(metadata i8 %98, metadata !2985, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 1, metadata !2986, metadata !DIExpression()), !dbg !3033
  br label %99, !dbg !3119

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !3041
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !3033
  call void @llvm.dbg.value(metadata i8 %101, metadata !2986, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %100, metadata !2985, metadata !DIExpression()), !dbg !3033
  %102 = and i8 %101, 1, !dbg !3120
  %103 = icmp eq i8 %102, 0, !dbg !3120
  %104 = select i1 %103, i8 1, i8 %100, !dbg !3122
  br label %105, !dbg !3122

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !3033
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !3036
  call void @llvm.dbg.value(metadata i8 %107, metadata !2986, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %106, metadata !2985, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 2, metadata !2975, metadata !DIExpression()), !dbg !3033
  %108 = and i8 %107, 1, !dbg !3123
  %109 = icmp eq i8 %108, 0, !dbg !3123
  br i1 %109, label %110, label %115, !dbg !3125

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !3126
  br i1 %111, label %115, label %112, !dbg !3129

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !3126, !tbaa !1104
  br label %115, !dbg !3126

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2986, metadata !DIExpression()), !dbg !3033
  br label %115, !dbg !3130

114:                                              ; preds = %28
  call void @abort() #41, !dbg !3131
  unreachable, !dbg !3131

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !3115
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.137, %45 ], [ @.str.10.137, %47 ], [ @.str.10.137, %42 ], [ %34, %28 ], [ @.str.12.138, %110 ], [ @.str.12.138, %112 ], [ @.str.12.138, %105 ], [ @.str.10.137, %41 ], !dbg !3033
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !3033
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !3033
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !3033
  call void @llvm.dbg.value(metadata i8 %123, metadata !2986, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %122, metadata !2985, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %121, metadata !2984, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %120, metadata !2983, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %119, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %118, metadata !2979, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %117, metadata !2978, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 %116, metadata !2975, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 0, metadata !2995, metadata !DIExpression()), !dbg !3132
  %124 = and i8 %122, 1
  %125 = icmp ne i8 %124, 0
  %126 = icmp ne i32 %116, 2
  %127 = and i1 %126, %125
  %128 = icmp ne i64 %121, 0
  %129 = select i1 %127, i1 %128, i1 false
  %130 = icmp ugt i64 %121, 1
  %131 = and i8 %123, 1
  %132 = icmp eq i8 %131, 0
  %133 = icmp eq i32 %116, 2
  %134 = select i1 %126, i1 true, i1 %132
  %135 = icmp ne i8 %131, 0
  %136 = select i1 %135, i1 %128, i1 false
  %137 = and i1 %26, %135
  br label %138, !dbg !3133

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !3115
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !3038
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !3042
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !3043
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !3134
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !3135
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %145, metadata !2995, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8 %144, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %143, metadata !2988, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %142, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %141, metadata !2982, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %140, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %139, metadata !2974, metadata !DIExpression()), !dbg !3033
  %147 = icmp eq i64 %139, -1, !dbg !3136
  br i1 %147, label %148, label %152, !dbg !3137

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3138
  %150 = load i8, ptr %149, align 1, !dbg !3138, !tbaa !1104
  %151 = icmp eq i8 %150, 0, !dbg !3139
  br i1 %151, label %627, label %154, !dbg !3140

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3141
  br i1 %153, label %627, label %154, !dbg !3140

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2997, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 0, metadata !3000, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 0, metadata !3001, metadata !DIExpression()), !dbg !3142
  br i1 %129, label %155, label %170, !dbg !3143

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !3145
  %157 = select i1 %147, i1 %130, i1 false, !dbg !3146
  br i1 %157, label %158, label %160, !dbg !3146

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !3147
  call void @llvm.dbg.value(metadata i64 %159, metadata !2974, metadata !DIExpression()), !dbg !3033
  br label %160, !dbg !3148

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3148
  call void @llvm.dbg.value(metadata i64 %161, metadata !2974, metadata !DIExpression()), !dbg !3033
  %162 = icmp ugt i64 %156, %161, !dbg !3149
  br i1 %162, label %170, label %163, !dbg !3150

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3151
  call void @llvm.dbg.value(metadata ptr %164, metadata !3152, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata ptr %120, metadata !3155, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i64 %121, metadata !3156, metadata !DIExpression()), !dbg !3157
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !3159
  %166 = icmp ne i32 %165, 0, !dbg !3160
  %167 = select i1 %166, i1 true, i1 %132, !dbg !3161
  %168 = xor i1 %166, true, !dbg !3161
  %169 = zext i1 %168 to i8, !dbg !3161
  br i1 %167, label %170, label %688, !dbg !3161

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3142
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3142
  call void @llvm.dbg.value(metadata i8 %173, metadata !2997, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %171, metadata !2974, metadata !DIExpression()), !dbg !3033
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3162
  %175 = load i8, ptr %174, align 1, !dbg !3162, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %175, metadata !3002, metadata !DIExpression()), !dbg !3142
  switch i8 %175, label %308 [
    i8 0, label %176
    i8 63, label %226
    i8 7, label %274
    i8 8, label %263
    i8 12, label %264
    i8 10, label %272
    i8 13, label %265
    i8 9, label %266
    i8 11, label %267
    i8 92, label %268
    i8 123, label %276
    i8 125, label %276
    i8 35, label %280
    i8 126, label %280
    i8 32, label %282
    i8 33, label %283
    i8 34, label %283
    i8 36, label %283
    i8 38, label %283
    i8 40, label %283
    i8 41, label %283
    i8 42, label %283
    i8 59, label %283
    i8 60, label %283
    i8 61, label %283
    i8 62, label %283
    i8 91, label %283
    i8 94, label %283
    i8 96, label %283
    i8 124, label %283
    i8 39, label %285
    i8 37, label %480
    i8 43, label %480
    i8 44, label %480
    i8 45, label %480
    i8 46, label %480
    i8 47, label %480
    i8 48, label %480
    i8 49, label %480
    i8 50, label %480
    i8 51, label %480
    i8 52, label %480
    i8 53, label %480
    i8 54, label %480
    i8 55, label %480
    i8 56, label %480
    i8 57, label %480
    i8 58, label %480
    i8 65, label %480
    i8 66, label %480
    i8 67, label %480
    i8 68, label %480
    i8 69, label %480
    i8 70, label %480
    i8 71, label %480
    i8 72, label %480
    i8 73, label %480
    i8 74, label %480
    i8 75, label %480
    i8 76, label %480
    i8 77, label %480
    i8 78, label %480
    i8 79, label %480
    i8 80, label %480
    i8 81, label %480
    i8 82, label %480
    i8 83, label %480
    i8 84, label %480
    i8 85, label %480
    i8 86, label %480
    i8 87, label %480
    i8 88, label %480
    i8 89, label %480
    i8 90, label %480
    i8 93, label %480
    i8 95, label %480
    i8 97, label %480
    i8 98, label %480
    i8 99, label %480
    i8 100, label %480
    i8 101, label %480
    i8 102, label %480
    i8 103, label %480
    i8 104, label %480
    i8 105, label %480
    i8 106, label %480
    i8 107, label %480
    i8 108, label %480
    i8 109, label %480
    i8 110, label %480
    i8 111, label %480
    i8 112, label %480
    i8 113, label %480
    i8 114, label %480
    i8 115, label %480
    i8 116, label %480
    i8 117, label %480
    i8 118, label %480
    i8 119, label %480
    i8 120, label %480
    i8 121, label %480
    i8 122, label %480
  ], !dbg !3163

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !3164

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !3165

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !3000, metadata !DIExpression()), !dbg !3142
  %179 = and i8 %144, 1, !dbg !3169
  %180 = icmp eq i8 %179, 0, !dbg !3169
  %181 = select i1 %133, i1 %180, i1 false, !dbg !3169
  br i1 %181, label %182, label %198, !dbg !3169

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3171
  br i1 %183, label %184, label %186, !dbg !3175

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3171
  store i8 39, ptr %185, align 1, !dbg !3171, !tbaa !1104
  br label %186, !dbg !3171

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3175
  call void @llvm.dbg.value(metadata i64 %187, metadata !2981, metadata !DIExpression()), !dbg !3033
  %188 = icmp ult i64 %187, %146, !dbg !3176
  br i1 %188, label %189, label %191, !dbg !3179

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3176
  store i8 36, ptr %190, align 1, !dbg !3176, !tbaa !1104
  br label %191, !dbg !3176

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %192, metadata !2981, metadata !DIExpression()), !dbg !3033
  %193 = icmp ult i64 %192, %146, !dbg !3180
  br i1 %193, label %194, label %196, !dbg !3183

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3180
  store i8 39, ptr %195, align 1, !dbg !3180, !tbaa !1104
  br label %196, !dbg !3180

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3183
  call void @llvm.dbg.value(metadata i64 %197, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 1, metadata !2989, metadata !DIExpression()), !dbg !3033
  br label %198, !dbg !3184

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !3033
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !3033
  call void @llvm.dbg.value(metadata i8 %200, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %199, metadata !2981, metadata !DIExpression()), !dbg !3033
  %201 = icmp ult i64 %199, %146, !dbg !3185
  br i1 %201, label %202, label %204, !dbg !3188

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3185
  store i8 92, ptr %203, align 1, !dbg !3185, !tbaa !1104
  br label %204, !dbg !3185

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %205, metadata !2981, metadata !DIExpression()), !dbg !3033
  br i1 %126, label %206, label %491, !dbg !3189

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3191
  %208 = icmp ult i64 %207, %171, !dbg !3192
  br i1 %208, label %209, label %480, !dbg !3193

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3194
  %211 = load i8, ptr %210, align 1, !dbg !3194, !tbaa !1104
  %212 = add i8 %211, -48, !dbg !3195
  %213 = icmp ult i8 %212, 10, !dbg !3195
  br i1 %213, label %214, label %480, !dbg !3195

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3196
  br i1 %215, label %216, label %218, !dbg !3200

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3196
  store i8 48, ptr %217, align 1, !dbg !3196, !tbaa !1104
  br label %218, !dbg !3196

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3200
  call void @llvm.dbg.value(metadata i64 %219, metadata !2981, metadata !DIExpression()), !dbg !3033
  %220 = icmp ult i64 %219, %146, !dbg !3201
  br i1 %220, label %221, label %223, !dbg !3204

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3201
  store i8 48, ptr %222, align 1, !dbg !3201, !tbaa !1104
  br label %223, !dbg !3201

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3204
  call void @llvm.dbg.value(metadata i64 %224, metadata !2981, metadata !DIExpression()), !dbg !3033
  br label %480, !dbg !3205

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !3206

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3207

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !3208

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !3210

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3212
  %231 = icmp ult i64 %230, %171, !dbg !3213
  br i1 %231, label %232, label %480, !dbg !3214

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !3215
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !3216
  %235 = load i8, ptr %234, align 1, !dbg !3216, !tbaa !1104
  %236 = icmp eq i8 %235, 63, !dbg !3217
  br i1 %236, label %237, label %480, !dbg !3218

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3219
  %239 = load i8, ptr %238, align 1, !dbg !3219, !tbaa !1104
  %240 = sext i8 %239 to i32, !dbg !3219
  switch i32 %240, label %480 [
    i32 33, label %241
    i32 39, label %241
    i32 40, label %241
    i32 41, label %241
    i32 45, label %241
    i32 47, label %241
    i32 60, label %241
    i32 61, label %241
    i32 62, label %241
  ], !dbg !3220

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !3221

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !3002, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %230, metadata !2995, metadata !DIExpression()), !dbg !3132
  %243 = icmp ult i64 %140, %146, !dbg !3223
  br i1 %243, label %244, label %246, !dbg !3226

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3223
  store i8 63, ptr %245, align 1, !dbg !3223, !tbaa !1104
  br label %246, !dbg !3223

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !3226
  call void @llvm.dbg.value(metadata i64 %247, metadata !2981, metadata !DIExpression()), !dbg !3033
  %248 = icmp ult i64 %247, %146, !dbg !3227
  br i1 %248, label %249, label %251, !dbg !3230

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !3227
  store i8 34, ptr %250, align 1, !dbg !3227, !tbaa !1104
  br label %251, !dbg !3227

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !3230
  call void @llvm.dbg.value(metadata i64 %252, metadata !2981, metadata !DIExpression()), !dbg !3033
  %253 = icmp ult i64 %252, %146, !dbg !3231
  br i1 %253, label %254, label %256, !dbg !3234

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !3231
  store i8 34, ptr %255, align 1, !dbg !3231, !tbaa !1104
  br label %256, !dbg !3231

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %257, metadata !2981, metadata !DIExpression()), !dbg !3033
  %258 = icmp ult i64 %257, %146, !dbg !3235
  br i1 %258, label %259, label %261, !dbg !3238

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !3235
  store i8 63, ptr %260, align 1, !dbg !3235, !tbaa !1104
  br label %261, !dbg !3235

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !3238
  call void @llvm.dbg.value(metadata i64 %262, metadata !2981, metadata !DIExpression()), !dbg !3033
  br label %480, !dbg !3239

263:                                              ; preds = %170
  br label %274, !dbg !3240

264:                                              ; preds = %170
  br label %274, !dbg !3241

265:                                              ; preds = %170
  br label %272, !dbg !3242

266:                                              ; preds = %170
  br label %272, !dbg !3243

267:                                              ; preds = %170
  br label %274, !dbg !3244

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !3245

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !3246

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !3249

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !3251

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !3252
  call void @llvm.dbg.label(metadata !3027), !dbg !3253
  br i1 %134, label %274, label %670, !dbg !3254

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !3252
  call void @llvm.dbg.label(metadata !3029), !dbg !3256
  br i1 %125, label %535, label %491, !dbg !3257

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !3258

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !3259, !tbaa !1104
  %279 = icmp eq i8 %278, 0, !dbg !3261
  br i1 %279, label %280, label %480, !dbg !3262

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !3263
  br i1 %281, label %282, label %480, !dbg !3265

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !3001, metadata !DIExpression()), !dbg !3142
  br label %283, !dbg !3266

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !3142
  call void @llvm.dbg.value(metadata i8 %284, metadata !3001, metadata !DIExpression()), !dbg !3142
  br i1 %134, label %480, label %670, !dbg !3267

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 1, metadata !3001, metadata !DIExpression()), !dbg !3142
  br i1 %133, label %286, label %480, !dbg !3269

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !3270

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !3273
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !3275
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !3275
  %292 = select i1 %290, i64 %146, i64 0, !dbg !3275
  call void @llvm.dbg.value(metadata i64 %292, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %291, metadata !2982, metadata !DIExpression()), !dbg !3033
  %293 = icmp ult i64 %140, %292, !dbg !3276
  br i1 %293, label %294, label %296, !dbg !3279

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3276
  store i8 39, ptr %295, align 1, !dbg !3276, !tbaa !1104
  br label %296, !dbg !3276

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !3279
  call void @llvm.dbg.value(metadata i64 %297, metadata !2981, metadata !DIExpression()), !dbg !3033
  %298 = icmp ult i64 %297, %292, !dbg !3280
  br i1 %298, label %299, label %301, !dbg !3283

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !3280
  store i8 92, ptr %300, align 1, !dbg !3280, !tbaa !1104
  br label %301, !dbg !3280

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !3283
  call void @llvm.dbg.value(metadata i64 %302, metadata !2981, metadata !DIExpression()), !dbg !3033
  %303 = icmp ult i64 %302, %292, !dbg !3284
  br i1 %303, label %304, label %306, !dbg !3287

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !3284
  store i8 39, ptr %305, align 1, !dbg !3284, !tbaa !1104
  br label %306, !dbg !3284

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !3287
  call void @llvm.dbg.value(metadata i64 %307, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 0, metadata !2989, metadata !DIExpression()), !dbg !3033
  br label %480, !dbg !3288

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !3289

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !3003, metadata !DIExpression()), !dbg !3290
  %310 = tail call ptr @__ctype_b_loc() #42, !dbg !3291
  %311 = load ptr, ptr %310, align 8, !dbg !3291, !tbaa !994
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !3291
  %314 = load i16, ptr %313, align 2, !dbg !3291, !tbaa !1136
  %315 = lshr i16 %314, 14, !dbg !3293
  %316 = trunc i16 %315 to i8, !dbg !3293
  %317 = and i8 %316, 1, !dbg !3293
  call void @llvm.dbg.value(metadata i8 %317, metadata !3006, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %171, metadata !2974, metadata !DIExpression()), !dbg !3033
  %318 = icmp eq i8 %317, 0, !dbg !3294
  call void @llvm.dbg.value(metadata i1 %318, metadata !3001, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3142
  br label %368, !dbg !3295

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !3296
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3007, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata ptr %14, metadata !3064, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata ptr %14, metadata !3072, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i32 0, metadata !3075, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 8, metadata !3076, metadata !DIExpression()), !dbg !3300
  store i64 0, ptr %14, align 8, !dbg !3302
  call void @llvm.dbg.value(metadata i64 0, metadata !3003, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8 1, metadata !3006, metadata !DIExpression()), !dbg !3290
  %320 = icmp eq i64 %171, -1, !dbg !3303
  br i1 %320, label %321, label %323, !dbg !3305

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !3306
  call void @llvm.dbg.value(metadata i64 %322, metadata !2974, metadata !DIExpression()), !dbg !3033
  br label %323, !dbg !3307

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !3142
  call void @llvm.dbg.value(metadata i64 %324, metadata !2974, metadata !DIExpression()), !dbg !3033
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !3308
  %325 = sub i64 %324, %145, !dbg !3309
  call void @llvm.dbg.value(metadata ptr %15, metadata !3010, metadata !DIExpression(DW_OP_deref)), !dbg !3310
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #39, !dbg !3311
  call void @llvm.dbg.value(metadata i64 %326, metadata !3014, metadata !DIExpression()), !dbg !3310
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !3312

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !3003, metadata !DIExpression()), !dbg !3290
  %328 = icmp ugt i64 %324, %145, !dbg !3313
  br i1 %328, label %331, label %329, !dbg !3315

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !3006, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 0, metadata !3003, metadata !DIExpression()), !dbg !3290
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !3316
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !3317
  call void @llvm.dbg.value(metadata i64 %324, metadata !2974, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i1 true, metadata !3001, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3142
  br label %368, !dbg !3295

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !3006, metadata !DIExpression()), !dbg !3290
  br label %360, !dbg !3318

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !3003, metadata !DIExpression()), !dbg !3290
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !3320
  %335 = load i8, ptr %334, align 1, !dbg !3320, !tbaa !1104
  %336 = icmp eq i8 %335, 0, !dbg !3315
  br i1 %336, label %363, label %337, !dbg !3321

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !3322
  call void @llvm.dbg.value(metadata i64 %338, metadata !3003, metadata !DIExpression()), !dbg !3290
  %339 = add i64 %338, %145, !dbg !3323
  %340 = icmp eq i64 %338, %325, !dbg !3313
  br i1 %340, label %363, label %331, !dbg !3315, !llvm.loop !3324

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !3325
  %344 = and i1 %343, %133, !dbg !3325
  call void @llvm.dbg.value(metadata i64 1, metadata !3015, metadata !DIExpression()), !dbg !3326
  br i1 %344, label %345, label %354, !dbg !3325

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !3015, metadata !DIExpression()), !dbg !3326
  %347 = add i64 %346, %145, !dbg !3327
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !3329
  %349 = load i8, ptr %348, align 1, !dbg !3329, !tbaa !1104
  %350 = sext i8 %349 to i32, !dbg !3329
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !3330

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !3331
  call void @llvm.dbg.value(metadata i64 %352, metadata !3015, metadata !DIExpression()), !dbg !3326
  %353 = icmp eq i64 %352, %326, !dbg !3332
  br i1 %353, label %354, label %345, !dbg !3333, !llvm.loop !3334

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !3336, !tbaa !1095
  call void @llvm.dbg.value(metadata i32 %355, metadata !3010, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 %355, metadata !3338, metadata !DIExpression()), !dbg !3346
  %356 = call i32 @iswprint(i32 noundef %355) #39, !dbg !3348
  %357 = icmp ne i32 %356, 0, !dbg !3349
  %358 = zext i1 %357 to i8, !dbg !3350
  call void @llvm.dbg.value(metadata i8 %358, metadata !3006, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %326, metadata !3003, metadata !DIExpression()), !dbg !3290
  br label %363, !dbg !3351

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !3006, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 0, metadata !3003, metadata !DIExpression()), !dbg !3290
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !3316
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !3317
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !3006, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 0, metadata !3003, metadata !DIExpression()), !dbg !3290
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !3316
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !3317
  call void @llvm.dbg.value(metadata i64 %324, metadata !2974, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i1 %361, metadata !3001, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3142
  br label %368, !dbg !3295

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !3006, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %364, metadata !3003, metadata !DIExpression()), !dbg !3290
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !3316
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !3317
  call void @llvm.dbg.value(metadata i64 %324, metadata !2974, metadata !DIExpression()), !dbg !3033
  %366 = icmp eq i8 %365, 0, !dbg !3294
  call void @llvm.dbg.value(metadata i1 %366, metadata !3001, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3142
  %367 = icmp ugt i64 %364, 1, !dbg !3352
  br i1 %367, label %374, label %368, !dbg !3295

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !3353
  br i1 %373, label %374, label %480, !dbg !3353

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %379, metadata !3023, metadata !DIExpression()), !dbg !3355
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !3356

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !3033
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !3134
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !3132
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !3142
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !3357
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !3142
  call void @llvm.dbg.value(metadata i8 %387, metadata !3002, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 %386, metadata !3000, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 %385, metadata !2997, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %384, metadata !2995, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8 %383, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %382, metadata !2981, metadata !DIExpression()), !dbg !3033
  br i1 %380, label %388, label %434, !dbg !3358

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !3363

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !3000, metadata !DIExpression()), !dbg !3142
  %390 = and i8 %383, 1, !dbg !3366
  %391 = icmp eq i8 %390, 0, !dbg !3366
  %392 = select i1 %133, i1 %391, i1 false, !dbg !3366
  br i1 %392, label %393, label %409, !dbg !3366

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !3368
  br i1 %394, label %395, label %397, !dbg !3372

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3368
  store i8 39, ptr %396, align 1, !dbg !3368, !tbaa !1104
  br label %397, !dbg !3368

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !3372
  call void @llvm.dbg.value(metadata i64 %398, metadata !2981, metadata !DIExpression()), !dbg !3033
  %399 = icmp ult i64 %398, %146, !dbg !3373
  br i1 %399, label %400, label %402, !dbg !3376

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !3373
  store i8 36, ptr %401, align 1, !dbg !3373, !tbaa !1104
  br label %402, !dbg !3373

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %403, metadata !2981, metadata !DIExpression()), !dbg !3033
  %404 = icmp ult i64 %403, %146, !dbg !3377
  br i1 %404, label %405, label %407, !dbg !3380

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !3377
  store i8 39, ptr %406, align 1, !dbg !3377, !tbaa !1104
  br label %407, !dbg !3377

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %408, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 1, metadata !2989, metadata !DIExpression()), !dbg !3033
  br label %409, !dbg !3381

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !3033
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !3033
  call void @llvm.dbg.value(metadata i8 %411, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %410, metadata !2981, metadata !DIExpression()), !dbg !3033
  %412 = icmp ult i64 %410, %146, !dbg !3382
  br i1 %412, label %413, label %415, !dbg !3385

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !3382
  store i8 92, ptr %414, align 1, !dbg !3382, !tbaa !1104
  br label %415, !dbg !3382

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !3385
  call void @llvm.dbg.value(metadata i64 %416, metadata !2981, metadata !DIExpression()), !dbg !3033
  %417 = icmp ult i64 %416, %146, !dbg !3386
  br i1 %417, label %418, label %422, !dbg !3389

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !3386
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !3386
  store i8 %420, ptr %421, align 1, !dbg !3386, !tbaa !1104
  br label %422, !dbg !3386

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !3389
  call void @llvm.dbg.value(metadata i64 %423, metadata !2981, metadata !DIExpression()), !dbg !3033
  %424 = icmp ult i64 %423, %146, !dbg !3390
  br i1 %424, label %425, label %430, !dbg !3393

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !3390
  %428 = or i8 %427, 48, !dbg !3390
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !3390
  store i8 %428, ptr %429, align 1, !dbg !3390, !tbaa !1104
  br label %430, !dbg !3390

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !3393
  call void @llvm.dbg.value(metadata i64 %431, metadata !2981, metadata !DIExpression()), !dbg !3033
  %432 = and i8 %387, 7, !dbg !3394
  %433 = or i8 %432, 48, !dbg !3395
  call void @llvm.dbg.value(metadata i8 %433, metadata !3002, metadata !DIExpression()), !dbg !3142
  br label %443, !dbg !3396

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !3397
  %436 = icmp eq i8 %435, 0, !dbg !3397
  br i1 %436, label %443, label %437, !dbg !3399

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !3400
  br i1 %438, label %439, label %441, !dbg !3404

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3400
  store i8 92, ptr %440, align 1, !dbg !3400, !tbaa !1104
  br label %441, !dbg !3400

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !3404
  call void @llvm.dbg.value(metadata i64 %442, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 0, metadata !2997, metadata !DIExpression()), !dbg !3142
  br label %443, !dbg !3405

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !3033
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !3134
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !3142
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !3142
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !3142
  call void @llvm.dbg.value(metadata i8 %448, metadata !3002, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 %447, metadata !3000, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 %446, metadata !2997, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 %445, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %444, metadata !2981, metadata !DIExpression()), !dbg !3033
  %449 = add i64 %384, 1, !dbg !3406
  %450 = icmp ugt i64 %379, %449, !dbg !3408
  br i1 %450, label %451, label %478, !dbg !3409

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !3410
  %453 = icmp ne i8 %452, 0, !dbg !3410
  %454 = and i8 %447, 1, !dbg !3410
  %455 = icmp eq i8 %454, 0, !dbg !3410
  %456 = select i1 %453, i1 %455, i1 false, !dbg !3410
  br i1 %456, label %457, label %468, !dbg !3410

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !3413
  br i1 %458, label %459, label %461, !dbg !3417

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !3413
  store i8 39, ptr %460, align 1, !dbg !3413, !tbaa !1104
  br label %461, !dbg !3413

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !3417
  call void @llvm.dbg.value(metadata i64 %462, metadata !2981, metadata !DIExpression()), !dbg !3033
  %463 = icmp ult i64 %462, %146, !dbg !3418
  br i1 %463, label %464, label %466, !dbg !3421

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !3418
  store i8 39, ptr %465, align 1, !dbg !3418, !tbaa !1104
  br label %466, !dbg !3418

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !3421
  call void @llvm.dbg.value(metadata i64 %467, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 0, metadata !2989, metadata !DIExpression()), !dbg !3033
  br label %468, !dbg !3422

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !3423
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !3033
  call void @llvm.dbg.value(metadata i8 %470, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %469, metadata !2981, metadata !DIExpression()), !dbg !3033
  %471 = icmp ult i64 %469, %146, !dbg !3424
  br i1 %471, label %472, label %474, !dbg !3427

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !3424
  store i8 %448, ptr %473, align 1, !dbg !3424, !tbaa !1104
  br label %474, !dbg !3424

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3427
  call void @llvm.dbg.value(metadata i64 %475, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %449, metadata !2995, metadata !DIExpression()), !dbg !3132
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3428
  %477 = load i8, ptr %476, align 1, !dbg !3428, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %477, metadata !3002, metadata !DIExpression()), !dbg !3142
  br label %381, !dbg !3429, !llvm.loop !3430

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !3142
  call void @llvm.dbg.value(metadata i8 %448, metadata !3002, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 %479, metadata !3001, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 %447, metadata !3000, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 %446, metadata !2997, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %384, metadata !2995, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8 %445, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %444, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %378, metadata !2974, metadata !DIExpression()), !dbg !3033
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3433
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !3033
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !3038
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !3033
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !3033
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !3132
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !3142
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !3142
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !3142
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %489, metadata !3002, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 %488, metadata !3001, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 %487, metadata !3000, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 %173, metadata !2997, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %486, metadata !2995, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8 %485, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %484, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %483, metadata !2982, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %482, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %481, metadata !2974, metadata !DIExpression()), !dbg !3033
  br i1 %127, label %502, label %491, !dbg !3434

491:                                              ; preds = %270, %225, %274, %204, %480
  %492 = phi i64 [ %490, %480 ], [ %146, %204 ], [ %146, %274 ], [ %146, %225 ], [ %146, %270 ]
  %493 = phi i8 [ %489, %480 ], [ 48, %204 ], [ %175, %274 ], [ 0, %225 ], [ 92, %270 ]
  %494 = phi i8 [ %488, %480 ], [ 0, %204 ], [ 0, %274 ], [ 0, %225 ], [ 0, %270 ]
  %495 = phi i8 [ %487, %480 ], [ 1, %204 ], [ 0, %274 ], [ 0, %225 ], [ 0, %270 ]
  %496 = phi i64 [ %486, %480 ], [ %145, %204 ], [ %145, %274 ], [ %145, %225 ], [ %145, %270 ]
  %497 = phi i8 [ %485, %480 ], [ %200, %204 ], [ %144, %274 ], [ %144, %225 ], [ %144, %270 ]
  %498 = phi i8 [ %484, %480 ], [ %142, %204 ], [ %142, %274 ], [ %142, %225 ], [ %142, %270 ]
  %499 = phi i64 [ %483, %480 ], [ %141, %204 ], [ %141, %274 ], [ %141, %225 ], [ %141, %270 ]
  %500 = phi i64 [ %482, %480 ], [ %205, %204 ], [ %140, %274 ], [ %140, %225 ], [ %140, %270 ]
  %501 = phi i64 [ %481, %480 ], [ %171, %204 ], [ %171, %274 ], [ %171, %225 ], [ %171, %270 ]
  br i1 %137, label %503, label %524, !dbg !3436

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3437

503:                                              ; preds = %491, %502
  %504 = phi i64 [ %492, %491 ], [ %490, %502 ]
  %505 = phi i8 [ %493, %491 ], [ %489, %502 ]
  %506 = phi i8 [ %494, %491 ], [ %488, %502 ]
  %507 = phi i8 [ %495, %491 ], [ %487, %502 ]
  %508 = phi i64 [ %496, %491 ], [ %486, %502 ]
  %509 = phi i8 [ %497, %491 ], [ %485, %502 ]
  %510 = phi i8 [ %498, %491 ], [ %484, %502 ]
  %511 = phi i64 [ %499, %491 ], [ %483, %502 ]
  %512 = phi i64 [ %500, %491 ], [ %482, %502 ]
  %513 = phi i64 [ %501, %491 ], [ %481, %502 ]
  %514 = lshr i8 %505, 5, !dbg !3438
  %515 = zext i8 %514 to i64, !dbg !3438
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3439
  %517 = load i32, ptr %516, align 4, !dbg !3439, !tbaa !1095
  %518 = and i8 %505, 31, !dbg !3440
  %519 = zext i8 %518 to i32, !dbg !3440
  %520 = shl nuw i32 1, %519, !dbg !3441
  %521 = and i32 %517, %520, !dbg !3441
  %522 = icmp eq i32 %521, 0, !dbg !3441
  %523 = and i1 %172, %522, !dbg !3442
  br i1 %523, label %573, label %535, !dbg !3442

524:                                              ; preds = %502, %491
  %525 = phi i64 [ %490, %502 ], [ %492, %491 ]
  %526 = phi i8 [ %489, %502 ], [ %493, %491 ]
  %527 = phi i8 [ %488, %502 ], [ %494, %491 ]
  %528 = phi i8 [ %487, %502 ], [ %495, %491 ]
  %529 = phi i64 [ %486, %502 ], [ %496, %491 ]
  %530 = phi i8 [ %485, %502 ], [ %497, %491 ]
  %531 = phi i8 [ %484, %502 ], [ %498, %491 ]
  %532 = phi i64 [ %483, %502 ], [ %499, %491 ]
  %533 = phi i64 [ %482, %502 ], [ %500, %491 ]
  %534 = phi i64 [ %481, %502 ], [ %501, %491 ]
  br i1 %172, label %573, label %535, !dbg !3443

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3433
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !3033
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !3038
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !3042
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !3134
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3444
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !3142
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !3142
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %543, metadata !3002, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 %542, metadata !3001, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %541, metadata !2995, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8 %540, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %539, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %538, metadata !2982, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %537, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %536, metadata !2974, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.label(metadata !3030), !dbg !3445
  br i1 %132, label %545, label %674, !dbg !3446

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !3000, metadata !DIExpression()), !dbg !3142
  %546 = and i8 %540, 1, !dbg !3448
  %547 = icmp eq i8 %546, 0, !dbg !3448
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3448
  br i1 %548, label %549, label %565, !dbg !3448

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3450
  br i1 %550, label %551, label %553, !dbg !3454

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3450
  store i8 39, ptr %552, align 1, !dbg !3450, !tbaa !1104
  br label %553, !dbg !3450

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3454
  call void @llvm.dbg.value(metadata i64 %554, metadata !2981, metadata !DIExpression()), !dbg !3033
  %555 = icmp ult i64 %554, %544, !dbg !3455
  br i1 %555, label %556, label %558, !dbg !3458

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3455
  store i8 36, ptr %557, align 1, !dbg !3455, !tbaa !1104
  br label %558, !dbg !3455

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3458
  call void @llvm.dbg.value(metadata i64 %559, metadata !2981, metadata !DIExpression()), !dbg !3033
  %560 = icmp ult i64 %559, %544, !dbg !3459
  br i1 %560, label %561, label %563, !dbg !3462

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3459
  store i8 39, ptr %562, align 1, !dbg !3459, !tbaa !1104
  br label %563, !dbg !3459

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3462
  call void @llvm.dbg.value(metadata i64 %564, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 1, metadata !2989, metadata !DIExpression()), !dbg !3033
  br label %565, !dbg !3463

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !3142
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !3033
  call void @llvm.dbg.value(metadata i8 %567, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %566, metadata !2981, metadata !DIExpression()), !dbg !3033
  %568 = icmp ult i64 %566, %544, !dbg !3464
  br i1 %568, label %569, label %571, !dbg !3467

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3464
  store i8 92, ptr %570, align 1, !dbg !3464, !tbaa !1104
  br label %571, !dbg !3464

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3467
  call void @llvm.dbg.value(metadata i64 %544, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %543, metadata !3002, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 %542, metadata !3001, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 1, metadata !3000, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %541, metadata !2995, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8 %567, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %539, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %538, metadata !2982, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %572, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %536, metadata !2974, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.label(metadata !3031), !dbg !3468
  br label %600, !dbg !3469

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3433
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !3033
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !3038
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !3042
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !3134
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3444
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !3142
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !3142
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3472
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %582, metadata !3002, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 %581, metadata !3001, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i8 %580, metadata !3000, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %579, metadata !2995, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8 %578, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %577, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %576, metadata !2982, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %575, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %574, metadata !2974, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.label(metadata !3031), !dbg !3468
  %584 = and i8 %578, 1, !dbg !3469
  %585 = icmp ne i8 %584, 0, !dbg !3469
  %586 = and i8 %580, 1, !dbg !3469
  %587 = icmp eq i8 %586, 0, !dbg !3469
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3469
  br i1 %588, label %589, label %600, !dbg !3469

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3473
  br i1 %590, label %591, label %593, !dbg !3477

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3473
  store i8 39, ptr %592, align 1, !dbg !3473, !tbaa !1104
  br label %593, !dbg !3473

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3477
  call void @llvm.dbg.value(metadata i64 %594, metadata !2981, metadata !DIExpression()), !dbg !3033
  %595 = icmp ult i64 %594, %583, !dbg !3478
  br i1 %595, label %596, label %598, !dbg !3481

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3478
  store i8 39, ptr %597, align 1, !dbg !3478, !tbaa !1104
  br label %598, !dbg !3478

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3481
  call void @llvm.dbg.value(metadata i64 %599, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 0, metadata !2989, metadata !DIExpression()), !dbg !3033
  br label %600, !dbg !3482

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !3142
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !3033
  call void @llvm.dbg.value(metadata i8 %609, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %608, metadata !2981, metadata !DIExpression()), !dbg !3033
  %610 = icmp ult i64 %608, %601, !dbg !3483
  br i1 %610, label %611, label %613, !dbg !3486

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3483
  store i8 %602, ptr %612, align 1, !dbg !3483, !tbaa !1104
  br label %613, !dbg !3483

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3486
  call void @llvm.dbg.value(metadata i64 %614, metadata !2981, metadata !DIExpression()), !dbg !3033
  %615 = icmp eq i8 %603, 0, !dbg !3487
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3489
  call void @llvm.dbg.value(metadata i8 %616, metadata !2988, metadata !DIExpression()), !dbg !3033
  br label %617, !dbg !3490

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3433
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !3033
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !3038
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !3042
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !3043
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !3134
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3444
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %624, metadata !2995, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8 %623, metadata !2989, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %622, metadata !2988, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %621, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %620, metadata !2982, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %619, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %618, metadata !2974, metadata !DIExpression()), !dbg !3033
  %626 = add i64 %624, 1, !dbg !3491
  call void @llvm.dbg.value(metadata i64 %626, metadata !2995, metadata !DIExpression()), !dbg !3132
  br label %138, !dbg !3492, !llvm.loop !3493

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2972, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %143, metadata !2988, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %142, metadata !2987, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %141, metadata !2982, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %140, metadata !2981, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %139, metadata !2974, metadata !DIExpression()), !dbg !3033
  %628 = icmp eq i64 %140, 0, !dbg !3495
  %629 = and i1 %133, %628, !dbg !3497
  %630 = xor i1 %629, true, !dbg !3497
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3497
  br i1 %631, label %632, label %670, !dbg !3497

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3498
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3498
  br i1 %636, label %637, label %646, !dbg !3498

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3500
  %639 = icmp eq i8 %638, 0, !dbg !3500
  br i1 %639, label %642, label %640, !dbg !3503

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3504
  br label %694, !dbg !3505

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3506
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3508
  br i1 %645, label %28, label %646, !dbg !3508

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3509
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3511
  br i1 %649, label %650, label %665, !dbg !3511

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2983, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %140, metadata !2981, metadata !DIExpression()), !dbg !3033
  %651 = load i8, ptr %120, align 1, !dbg !3512, !tbaa !1104
  %652 = icmp eq i8 %651, 0, !dbg !3515
  br i1 %652, label %665, label %653, !dbg !3515

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2983, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %656, metadata !2981, metadata !DIExpression()), !dbg !3033
  %657 = icmp ult i64 %656, %146, !dbg !3516
  br i1 %657, label %658, label %660, !dbg !3519

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3516
  store i8 %654, ptr %659, align 1, !dbg !3516, !tbaa !1104
  br label %660, !dbg !3516

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3519
  call void @llvm.dbg.value(metadata i64 %661, metadata !2981, metadata !DIExpression()), !dbg !3033
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3520
  call void @llvm.dbg.value(metadata ptr %662, metadata !2983, metadata !DIExpression()), !dbg !3033
  %663 = load i8, ptr %662, align 1, !dbg !3512, !tbaa !1104
  %664 = icmp eq i8 %663, 0, !dbg !3515
  br i1 %664, label %665, label %653, !dbg !3515, !llvm.loop !3521

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !3115
  call void @llvm.dbg.value(metadata i64 %666, metadata !2981, metadata !DIExpression()), !dbg !3033
  %667 = icmp ult i64 %666, %146, !dbg !3523
  br i1 %667, label %668, label %694, !dbg !3525

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3526
  store i8 0, ptr %669, align 1, !dbg !3527, !tbaa !1104
  br label %694, !dbg !3526

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !3032), !dbg !3528
  %672 = icmp eq i8 %124, 0, !dbg !3529
  %673 = select i1 %672, i32 2, i32 4, !dbg !3529
  br label %684, !dbg !3529

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3529
  %678 = select i1 %677, i32 2, i32 4, !dbg !3529
  br label %679, !dbg !3531

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !3032), !dbg !3528
  %683 = icmp eq i32 %116, 2, !dbg !3531
  br i1 %683, label %684, label %688, !dbg !3529

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3529

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2975, metadata !DIExpression()), !dbg !3033
  %692 = and i32 %5, -3, !dbg !3532
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3533
  br label %694, !dbg !3534

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3535
}

; Function Attrs: nounwind
declare !dbg !3536 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3539 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3541 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3545, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i64 %1, metadata !3546, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata ptr %2, metadata !3547, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata ptr %0, metadata !3549, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i64 %1, metadata !3554, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata ptr null, metadata !3555, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata ptr %2, metadata !3556, metadata !DIExpression()), !dbg !3562
  %4 = icmp eq ptr %2, null, !dbg !3564
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3564
  call void @llvm.dbg.value(metadata ptr %5, metadata !3557, metadata !DIExpression()), !dbg !3562
  %6 = tail call ptr @__errno_location() #42, !dbg !3565
  %7 = load i32, ptr %6, align 4, !dbg !3565, !tbaa !1095
  call void @llvm.dbg.value(metadata i32 %7, metadata !3558, metadata !DIExpression()), !dbg !3562
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3566
  %9 = load i32, ptr %8, align 4, !dbg !3566, !tbaa !2915
  %10 = or i32 %9, 1, !dbg !3567
  call void @llvm.dbg.value(metadata i32 %10, metadata !3559, metadata !DIExpression()), !dbg !3562
  %11 = load i32, ptr %5, align 8, !dbg !3568, !tbaa !2865
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3569
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3570
  %14 = load ptr, ptr %13, align 8, !dbg !3570, !tbaa !2936
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3571
  %16 = load ptr, ptr %15, align 8, !dbg !3571, !tbaa !2939
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3572
  %18 = add i64 %17, 1, !dbg !3573
  call void @llvm.dbg.value(metadata i64 %18, metadata !3560, metadata !DIExpression()), !dbg !3562
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !3574
  call void @llvm.dbg.value(metadata ptr %19, metadata !3561, metadata !DIExpression()), !dbg !3562
  %20 = load i32, ptr %5, align 8, !dbg !3575, !tbaa !2865
  %21 = load ptr, ptr %13, align 8, !dbg !3576, !tbaa !2936
  %22 = load ptr, ptr %15, align 8, !dbg !3577, !tbaa !2939
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3578
  store i32 %7, ptr %6, align 4, !dbg !3579, !tbaa !1095
  ret ptr %19, !dbg !3580
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3550 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3549, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i64 %1, metadata !3554, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr %2, metadata !3555, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr %3, metadata !3556, metadata !DIExpression()), !dbg !3581
  %5 = icmp eq ptr %3, null, !dbg !3582
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3582
  call void @llvm.dbg.value(metadata ptr %6, metadata !3557, metadata !DIExpression()), !dbg !3581
  %7 = tail call ptr @__errno_location() #42, !dbg !3583
  %8 = load i32, ptr %7, align 4, !dbg !3583, !tbaa !1095
  call void @llvm.dbg.value(metadata i32 %8, metadata !3558, metadata !DIExpression()), !dbg !3581
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3584
  %10 = load i32, ptr %9, align 4, !dbg !3584, !tbaa !2915
  %11 = icmp eq ptr %2, null, !dbg !3585
  %12 = zext i1 %11 to i32, !dbg !3585
  %13 = or i32 %10, %12, !dbg !3586
  call void @llvm.dbg.value(metadata i32 %13, metadata !3559, metadata !DIExpression()), !dbg !3581
  %14 = load i32, ptr %6, align 8, !dbg !3587, !tbaa !2865
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3588
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3589
  %17 = load ptr, ptr %16, align 8, !dbg !3589, !tbaa !2936
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3590
  %19 = load ptr, ptr %18, align 8, !dbg !3590, !tbaa !2939
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3591
  %21 = add i64 %20, 1, !dbg !3592
  call void @llvm.dbg.value(metadata i64 %21, metadata !3560, metadata !DIExpression()), !dbg !3581
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !3593
  call void @llvm.dbg.value(metadata ptr %22, metadata !3561, metadata !DIExpression()), !dbg !3581
  %23 = load i32, ptr %6, align 8, !dbg !3594, !tbaa !2865
  %24 = load ptr, ptr %16, align 8, !dbg !3595, !tbaa !2936
  %25 = load ptr, ptr %18, align 8, !dbg !3596, !tbaa !2939
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3597
  store i32 %8, ptr %7, align 4, !dbg !3598, !tbaa !1095
  br i1 %11, label %28, label %27, !dbg !3599

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3600, !tbaa !1611
  br label %28, !dbg !3602

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3603
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3604 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3609, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %1, metadata !3606, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i32 1, metadata !3607, metadata !DIExpression()), !dbg !3611
  %2 = load i32, ptr @nslots, align 4, !tbaa !1095
  call void @llvm.dbg.value(metadata i32 1, metadata !3607, metadata !DIExpression()), !dbg !3611
  %3 = icmp sgt i32 %2, 1, !dbg !3612
  br i1 %3, label %4, label %6, !dbg !3614

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3612
  br label %10, !dbg !3614

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3615
  %8 = load ptr, ptr %7, align 8, !dbg !3615, !tbaa !3617
  %9 = icmp eq ptr %8, @slot0, !dbg !3619
  br i1 %9, label %17, label %16, !dbg !3620

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3607, metadata !DIExpression()), !dbg !3611
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3621
  %13 = load ptr, ptr %12, align 8, !dbg !3621, !tbaa !3617
  tail call void @free(ptr noundef %13) #39, !dbg !3622
  %14 = add nuw nsw i64 %11, 1, !dbg !3623
  call void @llvm.dbg.value(metadata i64 %14, metadata !3607, metadata !DIExpression()), !dbg !3611
  %15 = icmp eq i64 %14, %5, !dbg !3612
  br i1 %15, label %6, label %10, !dbg !3614, !llvm.loop !3624

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !3626
  store i64 256, ptr @slotvec0, align 8, !dbg !3628, !tbaa !3629
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3630, !tbaa !3617
  br label %17, !dbg !3631

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3632
  br i1 %18, label %20, label %19, !dbg !3634

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !3635
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3637, !tbaa !994
  br label %20, !dbg !3638

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3639, !tbaa !1095
  ret void, !dbg !3640
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3641 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3644 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3646, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata ptr %1, metadata !3647, metadata !DIExpression()), !dbg !3648
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3649
  ret ptr %3, !dbg !3650
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3651 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3655, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata ptr %1, metadata !3656, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 %2, metadata !3657, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata ptr %3, metadata !3658, metadata !DIExpression()), !dbg !3671
  %6 = tail call ptr @__errno_location() #42, !dbg !3672
  %7 = load i32, ptr %6, align 4, !dbg !3672, !tbaa !1095
  call void @llvm.dbg.value(metadata i32 %7, metadata !3659, metadata !DIExpression()), !dbg !3671
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3673, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %8, metadata !3660, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3661, metadata !DIExpression()), !dbg !3671
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3674
  br i1 %9, label %10, label %11, !dbg !3674

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !3676
  unreachable, !dbg !3676

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3677, !tbaa !1095
  %13 = icmp sgt i32 %12, %0, !dbg !3678
  br i1 %13, label %32, label %14, !dbg !3679

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3680
  call void @llvm.dbg.value(metadata i1 %15, metadata !3662, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3681
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !3682
  %16 = sext i32 %12 to i64, !dbg !3683
  call void @llvm.dbg.value(metadata i64 %16, metadata !3665, metadata !DIExpression()), !dbg !3681
  store i64 %16, ptr %5, align 8, !dbg !3684, !tbaa !1611
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3685
  %18 = add nuw nsw i32 %0, 1, !dbg !3686
  %19 = sub i32 %18, %12, !dbg !3687
  %20 = sext i32 %19 to i64, !dbg !3688
  call void @llvm.dbg.value(metadata ptr %5, metadata !3665, metadata !DIExpression(DW_OP_deref)), !dbg !3681
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3689
  call void @llvm.dbg.value(metadata ptr %21, metadata !3660, metadata !DIExpression()), !dbg !3671
  store ptr %21, ptr @slotvec, align 8, !dbg !3690, !tbaa !994
  br i1 %15, label %22, label %23, !dbg !3691

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3692, !tbaa.struct !3694
  br label %23, !dbg !3695

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3696, !tbaa !1095
  %25 = sext i32 %24 to i64, !dbg !3697
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3697
  %27 = load i64, ptr %5, align 8, !dbg !3698, !tbaa !1611
  call void @llvm.dbg.value(metadata i64 %27, metadata !3665, metadata !DIExpression()), !dbg !3681
  %28 = sub nsw i64 %27, %25, !dbg !3699
  %29 = shl i64 %28, 4, !dbg !3700
  call void @llvm.dbg.value(metadata ptr %26, metadata !3072, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i32 0, metadata !3075, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %29, metadata !3076, metadata !DIExpression()), !dbg !3701
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3703
  %30 = load i64, ptr %5, align 8, !dbg !3704, !tbaa !1611
  call void @llvm.dbg.value(metadata i64 %30, metadata !3665, metadata !DIExpression()), !dbg !3681
  %31 = trunc i64 %30 to i32, !dbg !3704
  store i32 %31, ptr @nslots, align 4, !dbg !3705, !tbaa !1095
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3706
  br label %32, !dbg !3707

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3671
  call void @llvm.dbg.value(metadata ptr %33, metadata !3660, metadata !DIExpression()), !dbg !3671
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3708
  %36 = load i64, ptr %35, align 8, !dbg !3709, !tbaa !3629
  call void @llvm.dbg.value(metadata i64 %36, metadata !3666, metadata !DIExpression()), !dbg !3710
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3711
  %38 = load ptr, ptr %37, align 8, !dbg !3711, !tbaa !3617
  call void @llvm.dbg.value(metadata ptr %38, metadata !3668, metadata !DIExpression()), !dbg !3710
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3712
  %40 = load i32, ptr %39, align 4, !dbg !3712, !tbaa !2915
  %41 = or i32 %40, 1, !dbg !3713
  call void @llvm.dbg.value(metadata i32 %41, metadata !3669, metadata !DIExpression()), !dbg !3710
  %42 = load i32, ptr %3, align 8, !dbg !3714, !tbaa !2865
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3715
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3716
  %45 = load ptr, ptr %44, align 8, !dbg !3716, !tbaa !2936
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3717
  %47 = load ptr, ptr %46, align 8, !dbg !3717, !tbaa !2939
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3718
  call void @llvm.dbg.value(metadata i64 %48, metadata !3670, metadata !DIExpression()), !dbg !3710
  %49 = icmp ugt i64 %36, %48, !dbg !3719
  br i1 %49, label %60, label %50, !dbg !3721

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3722
  call void @llvm.dbg.value(metadata i64 %51, metadata !3666, metadata !DIExpression()), !dbg !3710
  store i64 %51, ptr %35, align 8, !dbg !3724, !tbaa !3629
  %52 = icmp eq ptr %38, @slot0, !dbg !3725
  br i1 %52, label %54, label %53, !dbg !3727

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3728
  br label %54, !dbg !3728

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !3729
  call void @llvm.dbg.value(metadata ptr %55, metadata !3668, metadata !DIExpression()), !dbg !3710
  store ptr %55, ptr %37, align 8, !dbg !3730, !tbaa !3617
  %56 = load i32, ptr %3, align 8, !dbg !3731, !tbaa !2865
  %57 = load ptr, ptr %44, align 8, !dbg !3732, !tbaa !2936
  %58 = load ptr, ptr %46, align 8, !dbg !3733, !tbaa !2939
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3734
  br label %60, !dbg !3735

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3710
  call void @llvm.dbg.value(metadata ptr %61, metadata !3668, metadata !DIExpression()), !dbg !3710
  store i32 %7, ptr %6, align 4, !dbg !3736, !tbaa !1095
  ret ptr %61, !dbg !3737
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #27

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3738 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3742, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata ptr %1, metadata !3743, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i64 %2, metadata !3744, metadata !DIExpression()), !dbg !3745
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3746
  ret ptr %4, !dbg !3747
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3748 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3750, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 0, metadata !3646, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata ptr %0, metadata !3647, metadata !DIExpression()), !dbg !3752
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3754
  ret ptr %2, !dbg !3755
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3756 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3760, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i64 %1, metadata !3761, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i32 0, metadata !3742, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata ptr %0, metadata !3743, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i64 %1, metadata !3744, metadata !DIExpression()), !dbg !3763
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3765
  ret ptr %3, !dbg !3766
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3767 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3771, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i32 %1, metadata !3772, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata ptr %2, metadata !3773, metadata !DIExpression()), !dbg !3775
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3776
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3774, metadata !DIExpression()), !dbg !3777
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3778), !dbg !3781
  call void @llvm.dbg.value(metadata i32 %1, metadata !3782, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3787, metadata !DIExpression()), !dbg !3790
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3790, !alias.scope !3778
  %5 = icmp eq i32 %1, 10, !dbg !3791
  br i1 %5, label %6, label %7, !dbg !3793

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3794, !noalias !3778
  unreachable, !dbg !3794

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3795, !tbaa !2865, !alias.scope !3778
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3796
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3797
  ret ptr %8, !dbg !3798
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3799 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3803, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i32 %1, metadata !3804, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata ptr %2, metadata !3805, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 %3, metadata !3806, metadata !DIExpression()), !dbg !3808
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3809
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3807, metadata !DIExpression()), !dbg !3810
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3811), !dbg !3814
  call void @llvm.dbg.value(metadata i32 %1, metadata !3782, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3787, metadata !DIExpression()), !dbg !3817
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3817, !alias.scope !3811
  %6 = icmp eq i32 %1, 10, !dbg !3818
  br i1 %6, label %7, label %8, !dbg !3819

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3820, !noalias !3811
  unreachable, !dbg !3820

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3821, !tbaa !2865, !alias.scope !3811
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3822
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3823
  ret ptr %9, !dbg !3824
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3825 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3829, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata ptr %1, metadata !3830, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i32 0, metadata !3771, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata i32 %0, metadata !3772, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata ptr %1, metadata !3773, metadata !DIExpression()), !dbg !3832
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3834
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3774, metadata !DIExpression()), !dbg !3835
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3836), !dbg !3839
  call void @llvm.dbg.value(metadata i32 %0, metadata !3782, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3787, metadata !DIExpression()), !dbg !3842
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3842, !alias.scope !3836
  %4 = icmp eq i32 %0, 10, !dbg !3843
  br i1 %4, label %5, label %6, !dbg !3844

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3845, !noalias !3836
  unreachable, !dbg !3845

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3846, !tbaa !2865, !alias.scope !3836
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3847
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3848
  ret ptr %7, !dbg !3849
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3850 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3854, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata ptr %1, metadata !3855, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i64 %2, metadata !3856, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i32 0, metadata !3803, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i32 %0, metadata !3804, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata ptr %1, metadata !3805, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i64 %2, metadata !3806, metadata !DIExpression()), !dbg !3858
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3860
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3807, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3862), !dbg !3865
  call void @llvm.dbg.value(metadata i32 %0, metadata !3782, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3787, metadata !DIExpression()), !dbg !3868
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3868, !alias.scope !3862
  %5 = icmp eq i32 %0, 10, !dbg !3869
  br i1 %5, label %6, label %7, !dbg !3870

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3871, !noalias !3862
  unreachable, !dbg !3871

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3872, !tbaa !2865, !alias.scope !3862
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3873
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3874
  ret ptr %8, !dbg !3875
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3876 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3880, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64 %1, metadata !3881, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i8 %2, metadata !3882, metadata !DIExpression()), !dbg !3884
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3885
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3883, metadata !DIExpression()), !dbg !3886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3887, !tbaa.struct !3888
  call void @llvm.dbg.value(metadata ptr %4, metadata !2882, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i8 %2, metadata !2883, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i32 1, metadata !2884, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i8 %2, metadata !2885, metadata !DIExpression()), !dbg !3889
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3891
  %6 = lshr i8 %2, 5, !dbg !3892
  %7 = zext i8 %6 to i64, !dbg !3892
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3893
  call void @llvm.dbg.value(metadata ptr %8, metadata !2886, metadata !DIExpression()), !dbg !3889
  %9 = and i8 %2, 31, !dbg !3894
  %10 = zext i8 %9 to i32, !dbg !3894
  call void @llvm.dbg.value(metadata i32 %10, metadata !2888, metadata !DIExpression()), !dbg !3889
  %11 = load i32, ptr %8, align 4, !dbg !3895, !tbaa !1095
  %12 = lshr i32 %11, %10, !dbg !3896
  call void @llvm.dbg.value(metadata i32 %12, metadata !2889, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3889
  %13 = and i32 %12, 1, !dbg !3897
  %14 = xor i32 %13, 1, !dbg !3897
  %15 = shl nuw i32 %14, %10, !dbg !3898
  %16 = xor i32 %15, %11, !dbg !3899
  store i32 %16, ptr %8, align 4, !dbg !3899, !tbaa !1095
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3900
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3901
  ret ptr %17, !dbg !3902
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3903 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3907, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i8 %1, metadata !3908, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata ptr %0, metadata !3880, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i64 -1, metadata !3881, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i8 %1, metadata !3882, metadata !DIExpression()), !dbg !3910
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3912
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3883, metadata !DIExpression()), !dbg !3913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3914, !tbaa.struct !3888
  call void @llvm.dbg.value(metadata ptr %3, metadata !2882, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i8 %1, metadata !2883, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i32 1, metadata !2884, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i8 %1, metadata !2885, metadata !DIExpression()), !dbg !3915
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3917
  %5 = lshr i8 %1, 5, !dbg !3918
  %6 = zext i8 %5 to i64, !dbg !3918
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3919
  call void @llvm.dbg.value(metadata ptr %7, metadata !2886, metadata !DIExpression()), !dbg !3915
  %8 = and i8 %1, 31, !dbg !3920
  %9 = zext i8 %8 to i32, !dbg !3920
  call void @llvm.dbg.value(metadata i32 %9, metadata !2888, metadata !DIExpression()), !dbg !3915
  %10 = load i32, ptr %7, align 4, !dbg !3921, !tbaa !1095
  %11 = lshr i32 %10, %9, !dbg !3922
  call void @llvm.dbg.value(metadata i32 %11, metadata !2889, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3915
  %12 = and i32 %11, 1, !dbg !3923
  %13 = xor i32 %12, 1, !dbg !3923
  %14 = shl nuw i32 %13, %9, !dbg !3924
  %15 = xor i32 %14, %10, !dbg !3925
  store i32 %15, ptr %7, align 4, !dbg !3925, !tbaa !1095
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3926
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3927
  ret ptr %16, !dbg !3928
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3929 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3931, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata ptr %0, metadata !3907, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i8 58, metadata !3908, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata ptr %0, metadata !3880, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 -1, metadata !3881, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i8 58, metadata !3882, metadata !DIExpression()), !dbg !3935
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3937
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3883, metadata !DIExpression()), !dbg !3938
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3939, !tbaa.struct !3888
  call void @llvm.dbg.value(metadata ptr %2, metadata !2882, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i8 58, metadata !2883, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 1, metadata !2884, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i8 58, metadata !2885, metadata !DIExpression()), !dbg !3940
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3942
  call void @llvm.dbg.value(metadata ptr %3, metadata !2886, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 26, metadata !2888, metadata !DIExpression()), !dbg !3940
  %4 = load i32, ptr %3, align 4, !dbg !3943, !tbaa !1095
  call void @llvm.dbg.value(metadata i32 %4, metadata !2889, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3940
  %5 = or i32 %4, 67108864, !dbg !3944
  store i32 %5, ptr %3, align 4, !dbg !3944, !tbaa !1095
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3945
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3946
  ret ptr %6, !dbg !3947
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3948 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3950, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i64 %1, metadata !3951, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata ptr %0, metadata !3880, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i64 %1, metadata !3881, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i8 58, metadata !3882, metadata !DIExpression()), !dbg !3953
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3955
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3883, metadata !DIExpression()), !dbg !3956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3957, !tbaa.struct !3888
  call void @llvm.dbg.value(metadata ptr %3, metadata !2882, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i8 58, metadata !2883, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i32 1, metadata !2884, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i8 58, metadata !2885, metadata !DIExpression()), !dbg !3958
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3960
  call void @llvm.dbg.value(metadata ptr %4, metadata !2886, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i32 26, metadata !2888, metadata !DIExpression()), !dbg !3958
  %5 = load i32, ptr %4, align 4, !dbg !3961, !tbaa !1095
  call void @llvm.dbg.value(metadata i32 %5, metadata !2889, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3958
  %6 = or i32 %5, 67108864, !dbg !3962
  store i32 %6, ptr %4, align 4, !dbg !3962, !tbaa !1095
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3963
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3964
  ret ptr %7, !dbg !3965
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3966 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3787, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3972
  call void @llvm.dbg.value(metadata i32 %0, metadata !3968, metadata !DIExpression()), !dbg !3974
  call void @llvm.dbg.value(metadata i32 %1, metadata !3969, metadata !DIExpression()), !dbg !3974
  call void @llvm.dbg.value(metadata ptr %2, metadata !3970, metadata !DIExpression()), !dbg !3974
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3975
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3971, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i32 %1, metadata !3782, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 0, metadata !3787, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3977
  %5 = icmp eq i32 %1, 10, !dbg !3978
  br i1 %5, label %6, label %7, !dbg !3979

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3980, !noalias !3981
  unreachable, !dbg !3980

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3787, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3977
  store i32 %1, ptr %4, align 8, !dbg !3984, !tbaa.struct !3888
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3984
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3984
  call void @llvm.dbg.value(metadata ptr %4, metadata !2882, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i8 58, metadata !2883, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i32 1, metadata !2884, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i8 58, metadata !2885, metadata !DIExpression()), !dbg !3985
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3987
  call void @llvm.dbg.value(metadata ptr %9, metadata !2886, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i32 26, metadata !2888, metadata !DIExpression()), !dbg !3985
  %10 = load i32, ptr %9, align 4, !dbg !3988, !tbaa !1095
  call void @llvm.dbg.value(metadata i32 %10, metadata !2889, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3985
  %11 = or i32 %10, 67108864, !dbg !3989
  store i32 %11, ptr %9, align 4, !dbg !3989, !tbaa !1095
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3990
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3991
  ret ptr %12, !dbg !3992
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3993 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3997, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata ptr %1, metadata !3998, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata ptr %2, metadata !3999, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata ptr %3, metadata !4000, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i32 %0, metadata !4002, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata ptr %1, metadata !4007, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata ptr %2, metadata !4008, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata ptr %3, metadata !4009, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i64 -1, metadata !4010, metadata !DIExpression()), !dbg !4012
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !4014
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4011, metadata !DIExpression()), !dbg !4015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4016, !tbaa.struct !3888
  call void @llvm.dbg.value(metadata ptr %5, metadata !2922, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata ptr %1, metadata !2923, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata ptr %2, metadata !2924, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata ptr %5, metadata !2922, metadata !DIExpression()), !dbg !4017
  store i32 10, ptr %5, align 8, !dbg !4019, !tbaa !2865
  %6 = icmp ne ptr %1, null, !dbg !4020
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4021
  br i1 %8, label %10, label %9, !dbg !4021

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !4022
  unreachable, !dbg !4022

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4023
  store ptr %1, ptr %11, align 8, !dbg !4024, !tbaa !2936
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4025
  store ptr %2, ptr %12, align 8, !dbg !4026, !tbaa !2939
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4027
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !4028
  ret ptr %13, !dbg !4029
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4003 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4002, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata ptr %1, metadata !4007, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata ptr %2, metadata !4008, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata ptr %3, metadata !4009, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %4, metadata !4010, metadata !DIExpression()), !dbg !4030
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !4031
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4011, metadata !DIExpression()), !dbg !4032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4033, !tbaa.struct !3888
  call void @llvm.dbg.value(metadata ptr %6, metadata !2922, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %1, metadata !2923, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %2, metadata !2924, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %6, metadata !2922, metadata !DIExpression()), !dbg !4034
  store i32 10, ptr %6, align 8, !dbg !4036, !tbaa !2865
  %7 = icmp ne ptr %1, null, !dbg !4037
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4038
  br i1 %9, label %11, label %10, !dbg !4038

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !4039
  unreachable, !dbg !4039

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4040
  store ptr %1, ptr %12, align 8, !dbg !4041, !tbaa !2936
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4042
  store ptr %2, ptr %13, align 8, !dbg !4043, !tbaa !2939
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4044
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !4045
  ret ptr %14, !dbg !4046
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4047 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4051, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata ptr %1, metadata !4052, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata ptr %2, metadata !4053, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i32 0, metadata !3997, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata ptr %0, metadata !3998, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata ptr %1, metadata !3999, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata ptr %2, metadata !4000, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata i32 0, metadata !4002, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata ptr %0, metadata !4007, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata ptr %1, metadata !4008, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata ptr %2, metadata !4009, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata i64 -1, metadata !4010, metadata !DIExpression()), !dbg !4057
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !4059
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4011, metadata !DIExpression()), !dbg !4060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4061, !tbaa.struct !3888
  call void @llvm.dbg.value(metadata ptr %4, metadata !2922, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata ptr %1, metadata !2924, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata ptr %4, metadata !2922, metadata !DIExpression()), !dbg !4062
  store i32 10, ptr %4, align 8, !dbg !4064, !tbaa !2865
  %5 = icmp ne ptr %0, null, !dbg !4065
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4066
  br i1 %7, label %9, label %8, !dbg !4066

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !4067
  unreachable, !dbg !4067

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4068
  store ptr %0, ptr %10, align 8, !dbg !4069, !tbaa !2936
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4070
  store ptr %1, ptr %11, align 8, !dbg !4071, !tbaa !2939
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4072
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !4073
  ret ptr %12, !dbg !4074
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4075 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4079, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata ptr %1, metadata !4080, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata ptr %2, metadata !4081, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i64 %3, metadata !4082, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i32 0, metadata !4002, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata ptr %0, metadata !4007, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata ptr %1, metadata !4008, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata ptr %2, metadata !4009, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 %3, metadata !4010, metadata !DIExpression()), !dbg !4084
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !4086
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4011, metadata !DIExpression()), !dbg !4087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4088, !tbaa.struct !3888
  call void @llvm.dbg.value(metadata ptr %5, metadata !2922, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr %1, metadata !2924, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata ptr %5, metadata !2922, metadata !DIExpression()), !dbg !4089
  store i32 10, ptr %5, align 8, !dbg !4091, !tbaa !2865
  %6 = icmp ne ptr %0, null, !dbg !4092
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4093
  br i1 %8, label %10, label %9, !dbg !4093

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !4094
  unreachable, !dbg !4094

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4095
  store ptr %0, ptr %11, align 8, !dbg !4096, !tbaa !2936
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4097
  store ptr %1, ptr %12, align 8, !dbg !4098, !tbaa !2939
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4099
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !4100
  ret ptr %13, !dbg !4101
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4102 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4106, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata ptr %1, metadata !4107, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 %2, metadata !4108, metadata !DIExpression()), !dbg !4109
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4110
  ret ptr %4, !dbg !4111
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4112 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4116, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i64 %1, metadata !4117, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i32 0, metadata !4106, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata ptr %0, metadata !4107, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i64 %1, metadata !4108, metadata !DIExpression()), !dbg !4119
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4121
  ret ptr %3, !dbg !4122
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4123 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4127, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata ptr %1, metadata !4128, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i32 %0, metadata !4106, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata ptr %1, metadata !4107, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i64 -1, metadata !4108, metadata !DIExpression()), !dbg !4130
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4132
  ret ptr %3, !dbg !4133
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4134 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4136, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 0, metadata !4127, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata ptr %0, metadata !4128, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 0, metadata !4106, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata ptr %0, metadata !4107, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i64 -1, metadata !4108, metadata !DIExpression()), !dbg !4140
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4142
  ret ptr %2, !dbg !4143
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @strintcmp(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #23 !dbg !4144 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4146, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %1, metadata !4147, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %0, metadata !4149, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %1, metadata !4155, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i32 128, metadata !4156, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i32 128, metadata !4157, metadata !DIExpression()), !dbg !4163
  %3 = load i8, ptr %0, align 1, !dbg !4165, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %3, metadata !4158, metadata !DIExpression()), !dbg !4163
  %4 = load i8, ptr %1, align 1, !dbg !4166, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %4, metadata !4159, metadata !DIExpression()), !dbg !4163
  %5 = icmp eq i8 %3, 45, !dbg !4167
  br i1 %5, label %6, label %95, !dbg !4169

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata ptr %7, metadata !4149, metadata !DIExpression()), !dbg !4163
  %8 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !4170
  call void @llvm.dbg.value(metadata ptr %8, metadata !4149, metadata !DIExpression()), !dbg !4163
  %9 = load i8, ptr %8, align 1, !dbg !4172, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %9, metadata !4158, metadata !DIExpression()), !dbg !4163
  %10 = icmp eq i8 %9, 48, !dbg !4173
  br i1 %10, label %6, label %11, !dbg !4174, !llvm.loop !4175

11:                                               ; preds = %6
  %12 = icmp eq i8 %4, 45, !dbg !4178
  br i1 %12, label %30, label %13, !dbg !4180

13:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 %9, metadata !4158, metadata !DIExpression()), !dbg !4163
  %14 = sext i8 %9 to i32, !dbg !4181
  call void @llvm.dbg.value(metadata i32 %14, metadata !4184, metadata !DIExpression()), !dbg !4187
  %15 = add nsw i32 %14, -48, !dbg !4189
  %16 = icmp ult i32 %15, 10, !dbg !4189
  br i1 %16, label %197, label %17, !dbg !4190

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 %4, metadata !4159, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %1, metadata !4155, metadata !DIExpression()), !dbg !4163
  %18 = icmp eq i8 %4, 48, !dbg !4191
  br i1 %18, label %19, label %24, !dbg !4192

19:                                               ; preds = %17, %19
  %20 = phi ptr [ %21, %19 ], [ %1, %17 ]
  call void @llvm.dbg.value(metadata ptr %20, metadata !4155, metadata !DIExpression()), !dbg !4163
  %21 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !4193
  call void @llvm.dbg.value(metadata ptr %21, metadata !4155, metadata !DIExpression()), !dbg !4163
  %22 = load i8, ptr %21, align 1, !dbg !4194, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %22, metadata !4159, metadata !DIExpression()), !dbg !4163
  %23 = icmp eq i8 %22, 48, !dbg !4191
  br i1 %23, label %19, label %24, !dbg !4192, !llvm.loop !4195

24:                                               ; preds = %19, %17
  %25 = phi i8 [ %4, %17 ], [ %22, %19 ], !dbg !4163
  call void @llvm.dbg.value(metadata i8 %25, metadata !4159, metadata !DIExpression()), !dbg !4163
  %26 = sext i8 %25 to i32, !dbg !4197
  call void @llvm.dbg.value(metadata i32 %26, metadata !4184, metadata !DIExpression()), !dbg !4198
  %27 = add nsw i32 %26, -48, !dbg !4200
  %28 = icmp ult i32 %27, 10, !dbg !4200
  %29 = sext i1 %28 to i32, !dbg !4201
  br label %197, !dbg !4202

30:                                               ; preds = %11, %30
  %31 = phi ptr [ %32, %30 ], [ %1, %11 ]
  call void @llvm.dbg.value(metadata ptr %31, metadata !4155, metadata !DIExpression()), !dbg !4163
  %32 = getelementptr inbounds i8, ptr %31, i64 1, !dbg !4203
  call void @llvm.dbg.value(metadata ptr %32, metadata !4155, metadata !DIExpression()), !dbg !4163
  %33 = load i8, ptr %32, align 1, !dbg !4204, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %33, metadata !4159, metadata !DIExpression()), !dbg !4163
  %34 = icmp eq i8 %33, 48, !dbg !4205
  br i1 %34, label %30, label %35, !dbg !4206, !llvm.loop !4207

35:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8 %33, metadata !4159, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i8 %9, metadata !4158, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %8, metadata !4149, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %32, metadata !4155, metadata !DIExpression()), !dbg !4163
  %36 = sext i8 %9 to i32, !dbg !4210
  %37 = icmp eq i8 %33, %9, !dbg !4211
  %38 = add nsw i32 %36, -48
  %39 = icmp ult i32 %38, 10
  %40 = select i1 %37, i1 %39, i1 false, !dbg !4212
  call void @llvm.dbg.value(metadata i32 %36, metadata !4184, metadata !DIExpression()), !dbg !4213
  br i1 %40, label %41, label %55, !dbg !4212

41:                                               ; preds = %35, %41
  %42 = phi ptr [ %44, %41 ], [ %8, %35 ]
  %43 = phi ptr [ %46, %41 ], [ %32, %35 ]
  call void @llvm.dbg.value(metadata ptr %43, metadata !4155, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %42, metadata !4149, metadata !DIExpression()), !dbg !4163
  %44 = getelementptr inbounds i8, ptr %42, i64 1, !dbg !4215
  call void @llvm.dbg.value(metadata ptr %44, metadata !4149, metadata !DIExpression()), !dbg !4163
  %45 = load i8, ptr %44, align 1, !dbg !4217, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %45, metadata !4158, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %43, metadata !4155, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4163
  call void @llvm.dbg.value(metadata i8 poison, metadata !4159, metadata !DIExpression()), !dbg !4163
  %46 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !4218
  call void @llvm.dbg.value(metadata ptr %46, metadata !4155, metadata !DIExpression()), !dbg !4163
  %47 = load i8, ptr %46, align 1, !dbg !4219, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %47, metadata !4159, metadata !DIExpression()), !dbg !4163
  %48 = sext i8 %45 to i32, !dbg !4210
  %49 = icmp eq i8 %47, %45, !dbg !4211
  %50 = add nsw i32 %48, -48
  %51 = icmp ult i32 %50, 10
  %52 = select i1 %49, i1 %51, i1 false, !dbg !4212
  call void @llvm.dbg.value(metadata i32 %48, metadata !4184, metadata !DIExpression()), !dbg !4213
  br i1 %52, label %41, label %53, !dbg !4212, !llvm.loop !4220

53:                                               ; preds = %41
  %54 = sext i8 %45 to i32, !dbg !4210
  br label %55, !dbg !4223

55:                                               ; preds = %53, %35
  %56 = phi i32 [ %38, %35 ], [ %50, %53 ], !dbg !4224
  %57 = phi ptr [ %32, %35 ], [ %46, %53 ], !dbg !4228
  %58 = phi ptr [ %8, %35 ], [ %44, %53 ], !dbg !4228
  %59 = phi i8 [ %33, %35 ], [ %47, %53 ], !dbg !4228
  %60 = phi i32 [ %36, %35 ], [ %54, %53 ], !dbg !4210
  %61 = sext i8 %59 to i32, !dbg !4223
  %62 = sub nsw i32 %61, %60, !dbg !4229
  call void @llvm.dbg.value(metadata i32 %62, metadata !4160, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i64 0, metadata !4161, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i8 poison, metadata !4158, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %58, metadata !4149, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i32 poison, metadata !4184, metadata !DIExpression()), !dbg !4230
  %63 = icmp ult i32 %56, 10, !dbg !4224
  br i1 %63, label %68, label %64, !dbg !4231

64:                                               ; preds = %68, %55
  %65 = phi i64 [ 0, %55 ], [ %73, %68 ], !dbg !4232
  call void @llvm.dbg.value(metadata i64 0, metadata !4162, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i8 %59, metadata !4159, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %57, metadata !4155, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i32 %61, metadata !4184, metadata !DIExpression()), !dbg !4233
  %66 = add nsw i32 %61, -48, !dbg !4237
  %67 = icmp ult i32 %66, 10, !dbg !4237
  br i1 %67, label %77, label %86, !dbg !4238

68:                                               ; preds = %55, %68
  %69 = phi i64 [ %73, %68 ], [ 0, %55 ]
  %70 = phi ptr [ %71, %68 ], [ %58, %55 ]
  call void @llvm.dbg.value(metadata i64 %69, metadata !4161, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %70, metadata !4149, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4163
  call void @llvm.dbg.value(metadata i8 poison, metadata !4158, metadata !DIExpression()), !dbg !4163
  %71 = getelementptr inbounds i8, ptr %70, i64 1, !dbg !4239
  call void @llvm.dbg.value(metadata ptr %71, metadata !4149, metadata !DIExpression()), !dbg !4163
  %72 = load i8, ptr %71, align 1, !dbg !4240, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %72, metadata !4158, metadata !DIExpression()), !dbg !4163
  %73 = add i64 %69, 1, !dbg !4241
  call void @llvm.dbg.value(metadata i64 %73, metadata !4161, metadata !DIExpression()), !dbg !4163
  %74 = sext i8 %72 to i32, !dbg !4242
  call void @llvm.dbg.value(metadata i32 %74, metadata !4184, metadata !DIExpression()), !dbg !4230
  %75 = add nsw i32 %74, -48, !dbg !4224
  %76 = icmp ult i32 %75, 10, !dbg !4224
  br i1 %76, label %68, label %64, !dbg !4231, !llvm.loop !4243

77:                                               ; preds = %64, %77
  %78 = phi i64 [ %82, %77 ], [ 0, %64 ]
  %79 = phi ptr [ %80, %77 ], [ %57, %64 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !4162, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %79, metadata !4155, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4163
  call void @llvm.dbg.value(metadata i8 poison, metadata !4159, metadata !DIExpression()), !dbg !4163
  %80 = getelementptr inbounds i8, ptr %79, i64 1, !dbg !4245
  call void @llvm.dbg.value(metadata ptr %80, metadata !4155, metadata !DIExpression()), !dbg !4163
  %81 = load i8, ptr %80, align 1, !dbg !4246, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %81, metadata !4159, metadata !DIExpression()), !dbg !4163
  %82 = add i64 %78, 1, !dbg !4247
  call void @llvm.dbg.value(metadata i64 %82, metadata !4162, metadata !DIExpression()), !dbg !4163
  %83 = sext i8 %81 to i32, !dbg !4248
  call void @llvm.dbg.value(metadata i32 %83, metadata !4184, metadata !DIExpression()), !dbg !4233
  %84 = add nsw i32 %83, -48, !dbg !4237
  %85 = icmp ult i32 %84, 10, !dbg !4237
  br i1 %85, label %77, label %86, !dbg !4238, !llvm.loop !4249

86:                                               ; preds = %77, %64
  %87 = phi i64 [ 0, %64 ], [ %82, %77 ], !dbg !4251
  %88 = icmp eq i64 %65, %87, !dbg !4252
  br i1 %88, label %92, label %89, !dbg !4254

89:                                               ; preds = %86
  %90 = icmp ult i64 %65, %87, !dbg !4255
  %91 = select i1 %90, i32 1, i32 -1, !dbg !4256
  br label %197, !dbg !4257

92:                                               ; preds = %86
  %93 = icmp eq i64 %65, 0, !dbg !4258
  %94 = select i1 %93, i32 0, i32 %62, !dbg !4228
  br label %197, !dbg !4228

95:                                               ; preds = %2
  %96 = icmp eq i8 %4, 45, !dbg !4260
  br i1 %96, label %99, label %97, !dbg !4262

97:                                               ; preds = %95
  call void @llvm.dbg.value(metadata i8 %3, metadata !4158, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %0, metadata !4149, metadata !DIExpression()), !dbg !4163
  %98 = icmp eq i8 %3, 48, !dbg !4263
  br i1 %98, label %125, label %121, !dbg !4265

99:                                               ; preds = %95, %99
  %100 = phi ptr [ %101, %99 ], [ %1, %95 ]
  call void @llvm.dbg.value(metadata ptr %100, metadata !4155, metadata !DIExpression()), !dbg !4163
  %101 = getelementptr inbounds i8, ptr %100, i64 1, !dbg !4266
  call void @llvm.dbg.value(metadata ptr %101, metadata !4155, metadata !DIExpression()), !dbg !4163
  %102 = load i8, ptr %101, align 1, !dbg !4268, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %102, metadata !4159, metadata !DIExpression()), !dbg !4163
  %103 = icmp eq i8 %102, 48, !dbg !4269
  br i1 %103, label %99, label %104, !dbg !4270, !llvm.loop !4271

104:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i8 %102, metadata !4159, metadata !DIExpression()), !dbg !4163
  %105 = sext i8 %102 to i32, !dbg !4274
  call void @llvm.dbg.value(metadata i32 %105, metadata !4184, metadata !DIExpression()), !dbg !4276
  %106 = add nsw i32 %105, -48, !dbg !4278
  %107 = icmp ult i32 %106, 10, !dbg !4278
  br i1 %107, label %197, label %108, !dbg !4279

108:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i8 %3, metadata !4158, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %0, metadata !4149, metadata !DIExpression()), !dbg !4163
  %109 = icmp eq i8 %3, 48, !dbg !4280
  br i1 %109, label %110, label %115, !dbg !4281

110:                                              ; preds = %108, %110
  %111 = phi ptr [ %112, %110 ], [ %0, %108 ]
  call void @llvm.dbg.value(metadata ptr %111, metadata !4149, metadata !DIExpression()), !dbg !4163
  %112 = getelementptr inbounds i8, ptr %111, i64 1, !dbg !4282
  call void @llvm.dbg.value(metadata ptr %112, metadata !4149, metadata !DIExpression()), !dbg !4163
  %113 = load i8, ptr %112, align 1, !dbg !4283, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %113, metadata !4158, metadata !DIExpression()), !dbg !4163
  %114 = icmp eq i8 %113, 48, !dbg !4280
  br i1 %114, label %110, label %115, !dbg !4281, !llvm.loop !4284

115:                                              ; preds = %110, %108
  %116 = phi i8 [ %3, %108 ], [ %113, %110 ], !dbg !4163
  call void @llvm.dbg.value(metadata i8 %116, metadata !4158, metadata !DIExpression()), !dbg !4163
  %117 = sext i8 %116 to i32, !dbg !4286
  call void @llvm.dbg.value(metadata i32 %117, metadata !4184, metadata !DIExpression()), !dbg !4287
  %118 = add nsw i32 %117, -48, !dbg !4289
  %119 = icmp ult i32 %118, 10, !dbg !4289
  %120 = zext i1 %119 to i32, !dbg !4290
  br label %197, !dbg !4291

121:                                              ; preds = %125, %97
  %122 = phi ptr [ %0, %97 ], [ %127, %125 ]
  %123 = phi i8 [ %3, %97 ], [ %128, %125 ], !dbg !4163
  call void @llvm.dbg.value(metadata i8 %4, metadata !4159, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %1, metadata !4155, metadata !DIExpression()), !dbg !4163
  %124 = icmp eq i8 %4, 48, !dbg !4292
  br i1 %124, label %138, label %130, !dbg !4293

125:                                              ; preds = %97, %125
  %126 = phi ptr [ %127, %125 ], [ %0, %97 ]
  call void @llvm.dbg.value(metadata ptr %126, metadata !4149, metadata !DIExpression()), !dbg !4163
  %127 = getelementptr inbounds i8, ptr %126, i64 1, !dbg !4294
  call void @llvm.dbg.value(metadata ptr %127, metadata !4149, metadata !DIExpression()), !dbg !4163
  %128 = load i8, ptr %127, align 1, !dbg !4295, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %128, metadata !4158, metadata !DIExpression()), !dbg !4163
  %129 = icmp eq i8 %128, 48, !dbg !4263
  br i1 %129, label %125, label %121, !dbg !4265, !llvm.loop !4296

130:                                              ; preds = %138, %121
  %131 = phi ptr [ %1, %121 ], [ %140, %138 ]
  %132 = phi i8 [ %4, %121 ], [ %141, %138 ], !dbg !4163
  call void @llvm.dbg.value(metadata i8 %132, metadata !4159, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i8 %123, metadata !4158, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %122, metadata !4149, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %131, metadata !4155, metadata !DIExpression()), !dbg !4163
  %133 = sext i8 %123 to i32, !dbg !4298
  %134 = icmp eq i8 %123, %132, !dbg !4299
  %135 = add nsw i32 %133, -48
  %136 = icmp ult i32 %135, 10
  %137 = select i1 %134, i1 %136, i1 false, !dbg !4300
  call void @llvm.dbg.value(metadata i32 %133, metadata !4184, metadata !DIExpression()), !dbg !4301
  br i1 %137, label %143, label %157, !dbg !4300

138:                                              ; preds = %121, %138
  %139 = phi ptr [ %140, %138 ], [ %1, %121 ]
  call void @llvm.dbg.value(metadata ptr %139, metadata !4155, metadata !DIExpression()), !dbg !4163
  %140 = getelementptr inbounds i8, ptr %139, i64 1, !dbg !4303
  call void @llvm.dbg.value(metadata ptr %140, metadata !4155, metadata !DIExpression()), !dbg !4163
  %141 = load i8, ptr %140, align 1, !dbg !4304, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %141, metadata !4159, metadata !DIExpression()), !dbg !4163
  %142 = icmp eq i8 %141, 48, !dbg !4292
  br i1 %142, label %138, label %130, !dbg !4293, !llvm.loop !4305

143:                                              ; preds = %130, %143
  %144 = phi ptr [ %146, %143 ], [ %122, %130 ]
  %145 = phi ptr [ %148, %143 ], [ %131, %130 ]
  call void @llvm.dbg.value(metadata ptr %145, metadata !4155, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %144, metadata !4149, metadata !DIExpression()), !dbg !4163
  %146 = getelementptr inbounds i8, ptr %144, i64 1, !dbg !4307
  call void @llvm.dbg.value(metadata ptr %146, metadata !4149, metadata !DIExpression()), !dbg !4163
  %147 = load i8, ptr %146, align 1, !dbg !4309, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %147, metadata !4158, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %145, metadata !4155, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4163
  call void @llvm.dbg.value(metadata i8 poison, metadata !4159, metadata !DIExpression()), !dbg !4163
  %148 = getelementptr inbounds i8, ptr %145, i64 1, !dbg !4310
  call void @llvm.dbg.value(metadata ptr %148, metadata !4155, metadata !DIExpression()), !dbg !4163
  %149 = load i8, ptr %148, align 1, !dbg !4311, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %149, metadata !4159, metadata !DIExpression()), !dbg !4163
  %150 = sext i8 %147 to i32, !dbg !4298
  %151 = icmp eq i8 %147, %149, !dbg !4299
  %152 = add nsw i32 %150, -48
  %153 = icmp ult i32 %152, 10
  %154 = select i1 %151, i1 %153, i1 false, !dbg !4300
  call void @llvm.dbg.value(metadata i32 %150, metadata !4184, metadata !DIExpression()), !dbg !4301
  br i1 %154, label %143, label %155, !dbg !4300, !llvm.loop !4312

155:                                              ; preds = %143
  %156 = sext i8 %147 to i32, !dbg !4298
  br label %157, !dbg !4315

157:                                              ; preds = %155, %130
  %158 = phi i32 [ %135, %130 ], [ %152, %155 ], !dbg !4316
  %159 = phi ptr [ %131, %130 ], [ %148, %155 ]
  %160 = phi ptr [ %122, %130 ], [ %146, %155 ]
  %161 = phi i8 [ %132, %130 ], [ %149, %155 ], !dbg !4163
  %162 = phi i32 [ %133, %130 ], [ %156, %155 ], !dbg !4298
  %163 = sext i8 %161 to i32, !dbg !4315
  %164 = sub nsw i32 %162, %163, !dbg !4320
  call void @llvm.dbg.value(metadata i32 %164, metadata !4160, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i64 0, metadata !4161, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i8 poison, metadata !4158, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %160, metadata !4149, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i32 poison, metadata !4184, metadata !DIExpression()), !dbg !4321
  %165 = icmp ult i32 %158, 10, !dbg !4316
  br i1 %165, label %170, label %166, !dbg !4322

166:                                              ; preds = %170, %157
  %167 = phi i64 [ 0, %157 ], [ %175, %170 ], !dbg !4323
  call void @llvm.dbg.value(metadata i64 0, metadata !4162, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i8 %161, metadata !4159, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %159, metadata !4155, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i32 %163, metadata !4184, metadata !DIExpression()), !dbg !4324
  %168 = add nsw i32 %163, -48, !dbg !4328
  %169 = icmp ult i32 %168, 10, !dbg !4328
  br i1 %169, label %179, label %188, !dbg !4329

170:                                              ; preds = %157, %170
  %171 = phi i64 [ %175, %170 ], [ 0, %157 ]
  %172 = phi ptr [ %173, %170 ], [ %160, %157 ]
  call void @llvm.dbg.value(metadata i64 %171, metadata !4161, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %172, metadata !4149, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4163
  call void @llvm.dbg.value(metadata i8 poison, metadata !4158, metadata !DIExpression()), !dbg !4163
  %173 = getelementptr inbounds i8, ptr %172, i64 1, !dbg !4330
  call void @llvm.dbg.value(metadata ptr %173, metadata !4149, metadata !DIExpression()), !dbg !4163
  %174 = load i8, ptr %173, align 1, !dbg !4331, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %174, metadata !4158, metadata !DIExpression()), !dbg !4163
  %175 = add i64 %171, 1, !dbg !4332
  call void @llvm.dbg.value(metadata i64 %175, metadata !4161, metadata !DIExpression()), !dbg !4163
  %176 = sext i8 %174 to i32, !dbg !4333
  call void @llvm.dbg.value(metadata i32 %176, metadata !4184, metadata !DIExpression()), !dbg !4321
  %177 = add nsw i32 %176, -48, !dbg !4316
  %178 = icmp ult i32 %177, 10, !dbg !4316
  br i1 %178, label %170, label %166, !dbg !4322, !llvm.loop !4334

179:                                              ; preds = %166, %179
  %180 = phi i64 [ %184, %179 ], [ 0, %166 ]
  %181 = phi ptr [ %182, %179 ], [ %159, %166 ]
  call void @llvm.dbg.value(metadata i64 %180, metadata !4162, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %181, metadata !4155, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4163
  call void @llvm.dbg.value(metadata i8 poison, metadata !4159, metadata !DIExpression()), !dbg !4163
  %182 = getelementptr inbounds i8, ptr %181, i64 1, !dbg !4336
  call void @llvm.dbg.value(metadata ptr %182, metadata !4155, metadata !DIExpression()), !dbg !4163
  %183 = load i8, ptr %182, align 1, !dbg !4337, !tbaa !1104
  call void @llvm.dbg.value(metadata i8 %183, metadata !4159, metadata !DIExpression()), !dbg !4163
  %184 = add i64 %180, 1, !dbg !4338
  call void @llvm.dbg.value(metadata i64 %184, metadata !4162, metadata !DIExpression()), !dbg !4163
  %185 = sext i8 %183 to i32, !dbg !4339
  call void @llvm.dbg.value(metadata i32 %185, metadata !4184, metadata !DIExpression()), !dbg !4324
  %186 = add nsw i32 %185, -48, !dbg !4328
  %187 = icmp ult i32 %186, 10, !dbg !4328
  br i1 %187, label %179, label %188, !dbg !4329, !llvm.loop !4340

188:                                              ; preds = %179, %166
  %189 = phi i64 [ 0, %166 ], [ %184, %179 ], !dbg !4342
  %190 = icmp eq i64 %167, %189, !dbg !4343
  br i1 %190, label %194, label %191, !dbg !4345

191:                                              ; preds = %188
  %192 = icmp ult i64 %167, %189, !dbg !4346
  %193 = select i1 %192, i32 -1, i32 1, !dbg !4347
  br label %197, !dbg !4348

194:                                              ; preds = %188
  %195 = icmp eq i64 %167, 0, !dbg !4349
  %196 = select i1 %195, i32 0, i32 %164, !dbg !4351
  br label %197, !dbg !4351

197:                                              ; preds = %13, %24, %89, %92, %104, %115, %191, %194
  %198 = phi i32 [ %29, %24 ], [ %91, %89 ], [ %120, %115 ], [ %193, %191 ], [ -1, %13 ], [ %94, %92 ], [ 1, %104 ], [ %196, %194 ], !dbg !4352
  ret i32 %198, !dbg !4353
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4354 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4393, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata ptr %1, metadata !4394, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata ptr %2, metadata !4395, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata ptr %3, metadata !4396, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata ptr %4, metadata !4397, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i64 %5, metadata !4398, metadata !DIExpression()), !dbg !4399
  %7 = icmp eq ptr %1, null, !dbg !4400
  br i1 %7, label %10, label %8, !dbg !4402

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.147, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !4403
  br label %12, !dbg !4403

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.148, ptr noundef %2, ptr noundef %3) #39, !dbg !4404
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.3.150, i32 noundef 5) #39, !dbg !4405
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !4405
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.151, ptr noundef %0), !dbg !4406
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.5.152, i32 noundef 5) #39, !dbg !4407
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.153) #39, !dbg !4407
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.151, ptr noundef %0), !dbg !4408
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
  ], !dbg !4409

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.7.154, i32 noundef 5) #39, !dbg !4410
  %21 = load ptr, ptr %4, align 8, !dbg !4410, !tbaa !994
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !4410
  br label %147, !dbg !4412

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.8.155, i32 noundef 5) #39, !dbg !4413
  %25 = load ptr, ptr %4, align 8, !dbg !4413, !tbaa !994
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4413
  %27 = load ptr, ptr %26, align 8, !dbg !4413, !tbaa !994
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !4413
  br label %147, !dbg !4414

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.9.156, i32 noundef 5) #39, !dbg !4415
  %31 = load ptr, ptr %4, align 8, !dbg !4415, !tbaa !994
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4415
  %33 = load ptr, ptr %32, align 8, !dbg !4415, !tbaa !994
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4415
  %35 = load ptr, ptr %34, align 8, !dbg !4415, !tbaa !994
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !4415
  br label %147, !dbg !4416

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.10.157, i32 noundef 5) #39, !dbg !4417
  %39 = load ptr, ptr %4, align 8, !dbg !4417, !tbaa !994
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4417
  %41 = load ptr, ptr %40, align 8, !dbg !4417, !tbaa !994
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4417
  %43 = load ptr, ptr %42, align 8, !dbg !4417, !tbaa !994
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4417
  %45 = load ptr, ptr %44, align 8, !dbg !4417, !tbaa !994
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !4417
  br label %147, !dbg !4418

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.11.158, i32 noundef 5) #39, !dbg !4419
  %49 = load ptr, ptr %4, align 8, !dbg !4419, !tbaa !994
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4419
  %51 = load ptr, ptr %50, align 8, !dbg !4419, !tbaa !994
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4419
  %53 = load ptr, ptr %52, align 8, !dbg !4419, !tbaa !994
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4419
  %55 = load ptr, ptr %54, align 8, !dbg !4419, !tbaa !994
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4419
  %57 = load ptr, ptr %56, align 8, !dbg !4419, !tbaa !994
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !4419
  br label %147, !dbg !4420

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.12.159, i32 noundef 5) #39, !dbg !4421
  %61 = load ptr, ptr %4, align 8, !dbg !4421, !tbaa !994
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4421
  %63 = load ptr, ptr %62, align 8, !dbg !4421, !tbaa !994
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4421
  %65 = load ptr, ptr %64, align 8, !dbg !4421, !tbaa !994
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4421
  %67 = load ptr, ptr %66, align 8, !dbg !4421, !tbaa !994
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4421
  %69 = load ptr, ptr %68, align 8, !dbg !4421, !tbaa !994
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4421
  %71 = load ptr, ptr %70, align 8, !dbg !4421, !tbaa !994
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !4421
  br label %147, !dbg !4422

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.13.160, i32 noundef 5) #39, !dbg !4423
  %75 = load ptr, ptr %4, align 8, !dbg !4423, !tbaa !994
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4423
  %77 = load ptr, ptr %76, align 8, !dbg !4423, !tbaa !994
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4423
  %79 = load ptr, ptr %78, align 8, !dbg !4423, !tbaa !994
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4423
  %81 = load ptr, ptr %80, align 8, !dbg !4423, !tbaa !994
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4423
  %83 = load ptr, ptr %82, align 8, !dbg !4423, !tbaa !994
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4423
  %85 = load ptr, ptr %84, align 8, !dbg !4423, !tbaa !994
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4423
  %87 = load ptr, ptr %86, align 8, !dbg !4423, !tbaa !994
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !4423
  br label %147, !dbg !4424

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.14.161, i32 noundef 5) #39, !dbg !4425
  %91 = load ptr, ptr %4, align 8, !dbg !4425, !tbaa !994
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4425
  %93 = load ptr, ptr %92, align 8, !dbg !4425, !tbaa !994
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4425
  %95 = load ptr, ptr %94, align 8, !dbg !4425, !tbaa !994
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4425
  %97 = load ptr, ptr %96, align 8, !dbg !4425, !tbaa !994
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4425
  %99 = load ptr, ptr %98, align 8, !dbg !4425, !tbaa !994
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4425
  %101 = load ptr, ptr %100, align 8, !dbg !4425, !tbaa !994
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4425
  %103 = load ptr, ptr %102, align 8, !dbg !4425, !tbaa !994
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4425
  %105 = load ptr, ptr %104, align 8, !dbg !4425, !tbaa !994
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !4425
  br label %147, !dbg !4426

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.15.162, i32 noundef 5) #39, !dbg !4427
  %109 = load ptr, ptr %4, align 8, !dbg !4427, !tbaa !994
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4427
  %111 = load ptr, ptr %110, align 8, !dbg !4427, !tbaa !994
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4427
  %113 = load ptr, ptr %112, align 8, !dbg !4427, !tbaa !994
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4427
  %115 = load ptr, ptr %114, align 8, !dbg !4427, !tbaa !994
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4427
  %117 = load ptr, ptr %116, align 8, !dbg !4427, !tbaa !994
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4427
  %119 = load ptr, ptr %118, align 8, !dbg !4427, !tbaa !994
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4427
  %121 = load ptr, ptr %120, align 8, !dbg !4427, !tbaa !994
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4427
  %123 = load ptr, ptr %122, align 8, !dbg !4427, !tbaa !994
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4427
  %125 = load ptr, ptr %124, align 8, !dbg !4427, !tbaa !994
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !4427
  br label %147, !dbg !4428

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.16.163, i32 noundef 5) #39, !dbg !4429
  %129 = load ptr, ptr %4, align 8, !dbg !4429, !tbaa !994
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4429
  %131 = load ptr, ptr %130, align 8, !dbg !4429, !tbaa !994
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4429
  %133 = load ptr, ptr %132, align 8, !dbg !4429, !tbaa !994
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4429
  %135 = load ptr, ptr %134, align 8, !dbg !4429, !tbaa !994
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4429
  %137 = load ptr, ptr %136, align 8, !dbg !4429, !tbaa !994
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4429
  %139 = load ptr, ptr %138, align 8, !dbg !4429, !tbaa !994
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4429
  %141 = load ptr, ptr %140, align 8, !dbg !4429, !tbaa !994
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4429
  %143 = load ptr, ptr %142, align 8, !dbg !4429, !tbaa !994
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4429
  %145 = load ptr, ptr %144, align 8, !dbg !4429, !tbaa !994
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !4429
  br label %147, !dbg !4430

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4431
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4432 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4436, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata ptr %1, metadata !4437, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata ptr %2, metadata !4438, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata ptr %3, metadata !4439, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata ptr %4, metadata !4440, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64 0, metadata !4441, metadata !DIExpression()), !dbg !4442
  br label %6, !dbg !4443

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4445
  call void @llvm.dbg.value(metadata i64 %7, metadata !4441, metadata !DIExpression()), !dbg !4442
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4446
  %9 = load ptr, ptr %8, align 8, !dbg !4446, !tbaa !994
  %10 = icmp eq ptr %9, null, !dbg !4448
  %11 = add i64 %7, 1, !dbg !4449
  call void @llvm.dbg.value(metadata i64 %11, metadata !4441, metadata !DIExpression()), !dbg !4442
  br i1 %10, label %12, label %6, !dbg !4448, !llvm.loop !4450

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4452
  ret void, !dbg !4453
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4454 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4466, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata ptr %1, metadata !4467, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata ptr %2, metadata !4468, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata ptr %3, metadata !4469, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata ptr %4, metadata !4470, metadata !DIExpression()), !dbg !4474
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !4475
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4472, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata i64 0, metadata !4471, metadata !DIExpression()), !dbg !4474
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4471, metadata !DIExpression()), !dbg !4474
  %10 = icmp ult i32 %9, 41, !dbg !4477
  br i1 %10, label %11, label %16, !dbg !4477

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4477
  %13 = zext i32 %9 to i64, !dbg !4477
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4477
  %15 = add nuw nsw i32 %9, 8, !dbg !4477
  store i32 %15, ptr %4, align 8, !dbg !4477
  br label %19, !dbg !4477

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4477
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4477
  store ptr %18, ptr %7, align 8, !dbg !4477
  br label %19, !dbg !4477

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4477
  %22 = load ptr, ptr %21, align 8, !dbg !4477
  store ptr %22, ptr %6, align 16, !dbg !4480, !tbaa !994
  %23 = icmp eq ptr %22, null, !dbg !4481
  br i1 %23, label %128, label %24, !dbg !4482

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !4471, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i64 1, metadata !4471, metadata !DIExpression()), !dbg !4474
  %25 = icmp ult i32 %20, 41, !dbg !4477
  br i1 %25, label %29, label %26, !dbg !4477

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4477
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4477
  store ptr %28, ptr %7, align 8, !dbg !4477
  br label %34, !dbg !4477

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4477
  %31 = zext i32 %20 to i64, !dbg !4477
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4477
  %33 = add nuw nsw i32 %20, 8, !dbg !4477
  store i32 %33, ptr %4, align 8, !dbg !4477
  br label %34, !dbg !4477

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4477
  %37 = load ptr, ptr %36, align 8, !dbg !4477
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4483
  store ptr %37, ptr %38, align 8, !dbg !4480, !tbaa !994
  %39 = icmp eq ptr %37, null, !dbg !4481
  br i1 %39, label %128, label %40, !dbg !4482

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !4471, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i64 2, metadata !4471, metadata !DIExpression()), !dbg !4474
  %41 = icmp ult i32 %35, 41, !dbg !4477
  br i1 %41, label %45, label %42, !dbg !4477

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4477
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4477
  store ptr %44, ptr %7, align 8, !dbg !4477
  br label %50, !dbg !4477

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4477
  %47 = zext i32 %35 to i64, !dbg !4477
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4477
  %49 = add nuw nsw i32 %35, 8, !dbg !4477
  store i32 %49, ptr %4, align 8, !dbg !4477
  br label %50, !dbg !4477

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4477
  %53 = load ptr, ptr %52, align 8, !dbg !4477
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4483
  store ptr %53, ptr %54, align 16, !dbg !4480, !tbaa !994
  %55 = icmp eq ptr %53, null, !dbg !4481
  br i1 %55, label %128, label %56, !dbg !4482

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !4471, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i64 3, metadata !4471, metadata !DIExpression()), !dbg !4474
  %57 = icmp ult i32 %51, 41, !dbg !4477
  br i1 %57, label %61, label %58, !dbg !4477

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4477
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4477
  store ptr %60, ptr %7, align 8, !dbg !4477
  br label %66, !dbg !4477

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4477
  %63 = zext i32 %51 to i64, !dbg !4477
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4477
  %65 = add nuw nsw i32 %51, 8, !dbg !4477
  store i32 %65, ptr %4, align 8, !dbg !4477
  br label %66, !dbg !4477

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4477
  %69 = load ptr, ptr %68, align 8, !dbg !4477
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4483
  store ptr %69, ptr %70, align 8, !dbg !4480, !tbaa !994
  %71 = icmp eq ptr %69, null, !dbg !4481
  br i1 %71, label %128, label %72, !dbg !4482

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !4471, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i64 4, metadata !4471, metadata !DIExpression()), !dbg !4474
  %73 = icmp ult i32 %67, 41, !dbg !4477
  br i1 %73, label %77, label %74, !dbg !4477

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4477
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4477
  store ptr %76, ptr %7, align 8, !dbg !4477
  br label %82, !dbg !4477

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4477
  %79 = zext i32 %67 to i64, !dbg !4477
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4477
  %81 = add nuw nsw i32 %67, 8, !dbg !4477
  store i32 %81, ptr %4, align 8, !dbg !4477
  br label %82, !dbg !4477

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4477
  %85 = load ptr, ptr %84, align 8, !dbg !4477
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4483
  store ptr %85, ptr %86, align 16, !dbg !4480, !tbaa !994
  %87 = icmp eq ptr %85, null, !dbg !4481
  br i1 %87, label %128, label %88, !dbg !4482

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !4471, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i64 5, metadata !4471, metadata !DIExpression()), !dbg !4474
  %89 = icmp ult i32 %83, 41, !dbg !4477
  br i1 %89, label %93, label %90, !dbg !4477

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4477
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4477
  store ptr %92, ptr %7, align 8, !dbg !4477
  br label %98, !dbg !4477

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4477
  %95 = zext i32 %83 to i64, !dbg !4477
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4477
  %97 = add nuw nsw i32 %83, 8, !dbg !4477
  store i32 %97, ptr %4, align 8, !dbg !4477
  br label %98, !dbg !4477

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4477
  %100 = load ptr, ptr %99, align 8, !dbg !4477
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4483
  store ptr %100, ptr %101, align 8, !dbg !4480, !tbaa !994
  %102 = icmp eq ptr %100, null, !dbg !4481
  br i1 %102, label %128, label %103, !dbg !4482

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !4471, metadata !DIExpression()), !dbg !4474
  %104 = load ptr, ptr %7, align 8, !dbg !4477
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4477
  store ptr %105, ptr %7, align 8, !dbg !4477
  %106 = load ptr, ptr %104, align 8, !dbg !4477
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4483
  store ptr %106, ptr %107, align 16, !dbg !4480, !tbaa !994
  %108 = icmp eq ptr %106, null, !dbg !4481
  br i1 %108, label %128, label %109, !dbg !4482

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !4471, metadata !DIExpression()), !dbg !4474
  %110 = load ptr, ptr %7, align 8, !dbg !4477
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4477
  store ptr %111, ptr %7, align 8, !dbg !4477
  %112 = load ptr, ptr %110, align 8, !dbg !4477
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4483
  store ptr %112, ptr %113, align 8, !dbg !4480, !tbaa !994
  %114 = icmp eq ptr %112, null, !dbg !4481
  br i1 %114, label %128, label %115, !dbg !4482

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !4471, metadata !DIExpression()), !dbg !4474
  %116 = load ptr, ptr %7, align 8, !dbg !4477
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4477
  store ptr %117, ptr %7, align 8, !dbg !4477
  %118 = load ptr, ptr %116, align 8, !dbg !4477
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4483
  store ptr %118, ptr %119, align 16, !dbg !4480, !tbaa !994
  %120 = icmp eq ptr %118, null, !dbg !4481
  br i1 %120, label %128, label %121, !dbg !4482

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !4471, metadata !DIExpression()), !dbg !4474
  %122 = load ptr, ptr %7, align 8, !dbg !4477
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4477
  store ptr %123, ptr %7, align 8, !dbg !4477
  %124 = load ptr, ptr %122, align 8, !dbg !4477
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4483
  store ptr %124, ptr %125, align 8, !dbg !4480, !tbaa !994
  %126 = icmp eq ptr %124, null, !dbg !4481
  %127 = select i1 %126, i64 9, i64 10, !dbg !4482
  br label %128, !dbg !4482

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4484
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4485
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !4486
  ret void, !dbg !4486
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4487 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4491, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata ptr %1, metadata !4492, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata ptr %2, metadata !4493, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata ptr %3, metadata !4494, metadata !DIExpression()), !dbg !4500
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !4501
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4495, metadata !DIExpression()), !dbg !4502
  call void @llvm.va_start(ptr nonnull %5), !dbg !4503
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4504
  call void @llvm.va_end(ptr nonnull %5), !dbg !4505
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !4506
  ret void, !dbg !4506
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4507 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4508, !tbaa !994
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.151, ptr noundef %1), !dbg !4508
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.17.168, i32 noundef 5) #39, !dbg !4509
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.169) #39, !dbg !4509
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.19.170, i32 noundef 5) #39, !dbg !4510
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.171, ptr noundef nonnull @.str.21.172) #39, !dbg !4510
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.22.173, i32 noundef 5) #39, !dbg !4511
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.174) #39, !dbg !4511
  ret void, !dbg !4512
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4513 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4518, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i64 %1, metadata !4519, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i64 %2, metadata !4520, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.value(metadata i64 %1, metadata !4525, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.value(metadata i64 %2, metadata !4526, metadata !DIExpression()), !dbg !4527
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4529
  call void @llvm.dbg.value(metadata ptr %4, metadata !4530, metadata !DIExpression()), !dbg !4535
  %5 = icmp eq ptr %4, null, !dbg !4537
  br i1 %5, label %6, label %7, !dbg !4539

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4540
  unreachable, !dbg !4540

7:                                                ; preds = %3
  ret ptr %4, !dbg !4541
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4523 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i64 %1, metadata !4525, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i64 %2, metadata !4526, metadata !DIExpression()), !dbg !4542
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4543
  call void @llvm.dbg.value(metadata ptr %4, metadata !4530, metadata !DIExpression()), !dbg !4544
  %5 = icmp eq ptr %4, null, !dbg !4546
  br i1 %5, label %6, label %7, !dbg !4547

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4548
  unreachable, !dbg !4548

7:                                                ; preds = %3
  ret ptr %4, !dbg !4549
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4550 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4554, metadata !DIExpression()), !dbg !4555
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4556
  call void @llvm.dbg.value(metadata ptr %2, metadata !4530, metadata !DIExpression()), !dbg !4557
  %3 = icmp eq ptr %2, null, !dbg !4559
  br i1 %3, label %4, label %5, !dbg !4560

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4561
  unreachable, !dbg !4561

5:                                                ; preds = %1
  ret ptr %2, !dbg !4562
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4563 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4564 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4568, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.value(metadata i64 %0, metadata !4570, metadata !DIExpression()), !dbg !4574
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4576
  call void @llvm.dbg.value(metadata ptr %2, metadata !4530, metadata !DIExpression()), !dbg !4577
  %3 = icmp eq ptr %2, null, !dbg !4579
  br i1 %3, label %4, label %5, !dbg !4580

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4581
  unreachable, !dbg !4581

5:                                                ; preds = %1
  ret ptr %2, !dbg !4582
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4583 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4587, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata i64 %0, metadata !4554, metadata !DIExpression()), !dbg !4589
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4591
  call void @llvm.dbg.value(metadata ptr %2, metadata !4530, metadata !DIExpression()), !dbg !4592
  %3 = icmp eq ptr %2, null, !dbg !4594
  br i1 %3, label %4, label %5, !dbg !4595

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4596
  unreachable, !dbg !4596

5:                                                ; preds = %1
  ret ptr %2, !dbg !4597
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4598 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4602, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i64 %1, metadata !4603, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata ptr %0, metadata !4605, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata i64 %1, metadata !4609, metadata !DIExpression()), !dbg !4610
  %3 = icmp eq i64 %1, 0, !dbg !4612
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4612
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4613
  call void @llvm.dbg.value(metadata ptr %5, metadata !4530, metadata !DIExpression()), !dbg !4614
  %6 = icmp eq ptr %5, null, !dbg !4616
  br i1 %6, label %7, label %8, !dbg !4617

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4618
  unreachable, !dbg !4618

8:                                                ; preds = %2
  ret ptr %5, !dbg !4619
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4620 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4621 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4625, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata i64 %1, metadata !4626, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata ptr %0, metadata !4628, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i64 %1, metadata !4631, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata ptr %0, metadata !4605, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata i64 %1, metadata !4609, metadata !DIExpression()), !dbg !4634
  %3 = icmp eq i64 %1, 0, !dbg !4636
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4636
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4637
  call void @llvm.dbg.value(metadata ptr %5, metadata !4530, metadata !DIExpression()), !dbg !4638
  %6 = icmp eq ptr %5, null, !dbg !4640
  br i1 %6, label %7, label %8, !dbg !4641

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4642
  unreachable, !dbg !4642

8:                                                ; preds = %2
  ret ptr %5, !dbg !4643
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4644 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4648, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.value(metadata i64 %1, metadata !4649, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.value(metadata i64 %2, metadata !4650, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.value(metadata ptr %0, metadata !4652, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i64 %1, metadata !4655, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i64 %2, metadata !4656, metadata !DIExpression()), !dbg !4657
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4659
  call void @llvm.dbg.value(metadata ptr %4, metadata !4530, metadata !DIExpression()), !dbg !4660
  %5 = icmp eq ptr %4, null, !dbg !4662
  br i1 %5, label %6, label %7, !dbg !4663

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4664
  unreachable, !dbg !4664

7:                                                ; preds = %3
  ret ptr %4, !dbg !4665
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4666 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4670, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i64 %1, metadata !4671, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata ptr null, metadata !4522, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.value(metadata i64 %0, metadata !4525, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.value(metadata i64 %1, metadata !4526, metadata !DIExpression()), !dbg !4673
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4675
  call void @llvm.dbg.value(metadata ptr %3, metadata !4530, metadata !DIExpression()), !dbg !4676
  %4 = icmp eq ptr %3, null, !dbg !4678
  br i1 %4, label %5, label %6, !dbg !4679

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4680
  unreachable, !dbg !4680

6:                                                ; preds = %2
  ret ptr %3, !dbg !4681
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4682 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4686, metadata !DIExpression()), !dbg !4688
  call void @llvm.dbg.value(metadata i64 %1, metadata !4687, metadata !DIExpression()), !dbg !4688
  call void @llvm.dbg.value(metadata ptr null, metadata !4648, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata i64 %0, metadata !4649, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata i64 %1, metadata !4650, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata ptr null, metadata !4652, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i64 %0, metadata !4655, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i64 %1, metadata !4656, metadata !DIExpression()), !dbg !4691
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4693
  call void @llvm.dbg.value(metadata ptr %3, metadata !4530, metadata !DIExpression()), !dbg !4694
  %4 = icmp eq ptr %3, null, !dbg !4696
  br i1 %4, label %5, label %6, !dbg !4697

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4698
  unreachable, !dbg !4698

6:                                                ; preds = %2
  ret ptr %3, !dbg !4699
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4700 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4704, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.value(metadata ptr %1, metadata !4705, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.value(metadata ptr %0, metadata !930, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata ptr %1, metadata !931, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata i64 1, metadata !932, metadata !DIExpression()), !dbg !4707
  %3 = load i64, ptr %1, align 8, !dbg !4709, !tbaa !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !933, metadata !DIExpression()), !dbg !4707
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
  call void @llvm.dbg.value(metadata i64 %13, metadata !933, metadata !DIExpression()), !dbg !4707
  br i1 %12, label %14, label %15, !dbg !4720

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4721
  unreachable, !dbg !4721

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4707
  call void @llvm.dbg.value(metadata i64 %16, metadata !933, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i64 %16, metadata !4525, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i64 1, metadata !4526, metadata !DIExpression()), !dbg !4722
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4724
  call void @llvm.dbg.value(metadata ptr %17, metadata !4530, metadata !DIExpression()), !dbg !4725
  %18 = icmp eq ptr %17, null, !dbg !4727
  br i1 %18, label %19, label %20, !dbg !4728

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4729
  unreachable, !dbg !4729

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !930, metadata !DIExpression()), !dbg !4707
  store i64 %16, ptr %1, align 8, !dbg !4730, !tbaa !1611
  ret ptr %17, !dbg !4731
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !925 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !930, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata ptr %1, metadata !931, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata i64 %2, metadata !932, metadata !DIExpression()), !dbg !4732
  %4 = load i64, ptr %1, align 8, !dbg !4733, !tbaa !1611
  call void @llvm.dbg.value(metadata i64 %4, metadata !933, metadata !DIExpression()), !dbg !4732
  %5 = icmp eq ptr %0, null, !dbg !4734
  br i1 %5, label %6, label %13, !dbg !4735

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4736
  br i1 %7, label %8, label %20, !dbg !4737

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4738
  call void @llvm.dbg.value(metadata i64 %9, metadata !933, metadata !DIExpression()), !dbg !4732
  %10 = icmp ugt i64 %2, 128, !dbg !4740
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4741
  call void @llvm.dbg.value(metadata i64 %12, metadata !933, metadata !DIExpression()), !dbg !4732
  br label %20, !dbg !4742

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4743
  %15 = add nuw i64 %14, 1, !dbg !4743
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4743
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4743
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4743
  call void @llvm.dbg.value(metadata i64 %18, metadata !933, metadata !DIExpression()), !dbg !4732
  br i1 %17, label %19, label %20, !dbg !4744

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4745
  unreachable, !dbg !4745

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4732
  call void @llvm.dbg.value(metadata i64 %21, metadata !933, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata ptr %0, metadata !4522, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i64 %21, metadata !4525, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i64 %2, metadata !4526, metadata !DIExpression()), !dbg !4746
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4748
  call void @llvm.dbg.value(metadata ptr %22, metadata !4530, metadata !DIExpression()), !dbg !4749
  %23 = icmp eq ptr %22, null, !dbg !4751
  br i1 %23, label %24, label %25, !dbg !4752

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4753
  unreachable, !dbg !4753

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !930, metadata !DIExpression()), !dbg !4732
  store i64 %21, ptr %1, align 8, !dbg !4754, !tbaa !1611
  ret ptr %22, !dbg !4755
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !937 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !945, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata ptr %1, metadata !946, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i64 %2, metadata !947, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i64 %3, metadata !948, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i64 %4, metadata !949, metadata !DIExpression()), !dbg !4756
  %6 = load i64, ptr %1, align 8, !dbg !4757, !tbaa !1611
  call void @llvm.dbg.value(metadata i64 %6, metadata !950, metadata !DIExpression()), !dbg !4756
  %7 = ashr i64 %6, 1, !dbg !4758
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4758
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4758
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4758
  call void @llvm.dbg.value(metadata i64 %10, metadata !951, metadata !DIExpression()), !dbg !4756
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4760
  call void @llvm.dbg.value(metadata i64 %11, metadata !951, metadata !DIExpression()), !dbg !4756
  %12 = icmp sgt i64 %3, -1, !dbg !4761
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4763
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4763
  call void @llvm.dbg.value(metadata i64 %15, metadata !951, metadata !DIExpression()), !dbg !4756
  %16 = icmp slt i64 %4, 0, !dbg !4764
  br i1 %16, label %17, label %30, !dbg !4764

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4764
  br i1 %18, label %19, label %24, !dbg !4764

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4764
  %21 = udiv i64 9223372036854775807, %20, !dbg !4764
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4764
  br i1 %23, label %46, label %43, !dbg !4764

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4764
  br i1 %25, label %43, label %26, !dbg !4764

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4764
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4764
  %29 = icmp ult i64 %28, %15, !dbg !4764
  br i1 %29, label %46, label %43, !dbg !4764

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4764
  br i1 %31, label %43, label %32, !dbg !4764

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4764
  br i1 %33, label %34, label %40, !dbg !4764

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4764
  br i1 %35, label %43, label %36, !dbg !4764

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4764
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4764
  %39 = icmp ult i64 %38, %4, !dbg !4764
  br i1 %39, label %46, label %43, !dbg !4764

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4764
  br i1 %42, label %46, label %43, !dbg !4764

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !952, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4756
  %44 = mul i64 %15, %4, !dbg !4764
  call void @llvm.dbg.value(metadata i64 %44, metadata !952, metadata !DIExpression()), !dbg !4756
  %45 = icmp slt i64 %44, 128, !dbg !4764
  br i1 %45, label %46, label %51, !dbg !4764

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !953, metadata !DIExpression()), !dbg !4756
  %48 = sdiv i64 %47, %4, !dbg !4765
  call void @llvm.dbg.value(metadata i64 %48, metadata !951, metadata !DIExpression()), !dbg !4756
  %49 = srem i64 %47, %4, !dbg !4768
  %50 = sub nsw i64 %47, %49, !dbg !4769
  call void @llvm.dbg.value(metadata i64 %50, metadata !952, metadata !DIExpression()), !dbg !4756
  br label %51, !dbg !4770

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4756
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4756
  call void @llvm.dbg.value(metadata i64 %53, metadata !952, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i64 %52, metadata !951, metadata !DIExpression()), !dbg !4756
  %54 = icmp eq ptr %0, null, !dbg !4771
  br i1 %54, label %55, label %56, !dbg !4773

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4774, !tbaa !1611
  br label %56, !dbg !4775

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4776
  %58 = icmp slt i64 %57, %2, !dbg !4778
  br i1 %58, label %59, label %96, !dbg !4779

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4780
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4780
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4780
  call void @llvm.dbg.value(metadata i64 %62, metadata !951, metadata !DIExpression()), !dbg !4756
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4781
  br i1 %65, label %95, label %66, !dbg !4781

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4782

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4782
  br i1 %68, label %69, label %74, !dbg !4782

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4782
  %71 = udiv i64 9223372036854775807, %70, !dbg !4782
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4782
  br i1 %73, label %95, label %93, !dbg !4782

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4782
  br i1 %75, label %93, label %76, !dbg !4782

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4782
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4782
  %79 = icmp ult i64 %78, %62, !dbg !4782
  br i1 %79, label %95, label %93, !dbg !4782

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4782
  br i1 %81, label %93, label %82, !dbg !4782

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4782
  br i1 %83, label %84, label %90, !dbg !4782

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4782
  br i1 %85, label %93, label %86, !dbg !4782

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4782
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4782
  %89 = icmp ult i64 %88, %4, !dbg !4782
  br i1 %89, label %95, label %93, !dbg !4782

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4782
  br i1 %92, label %95, label %93, !dbg !4782

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !952, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4756
  %94 = mul i64 %62, %4, !dbg !4782
  call void @llvm.dbg.value(metadata i64 %94, metadata !952, metadata !DIExpression()), !dbg !4756
  br label %96, !dbg !4783

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #41, !dbg !4784
  unreachable, !dbg !4784

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4756
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4756
  call void @llvm.dbg.value(metadata i64 %98, metadata !952, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i64 %97, metadata !951, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata ptr %0, metadata !4602, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i64 %98, metadata !4603, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata ptr %0, metadata !4605, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i64 %98, metadata !4609, metadata !DIExpression()), !dbg !4787
  %99 = icmp eq i64 %98, 0, !dbg !4789
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4789
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #46, !dbg !4790
  call void @llvm.dbg.value(metadata ptr %101, metadata !4530, metadata !DIExpression()), !dbg !4791
  %102 = icmp eq ptr %101, null, !dbg !4793
  br i1 %102, label %103, label %104, !dbg !4794

103:                                              ; preds = %96
  tail call void @xalloc_die() #41, !dbg !4795
  unreachable, !dbg !4795

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !945, metadata !DIExpression()), !dbg !4756
  store i64 %97, ptr %1, align 8, !dbg !4796, !tbaa !1611
  ret ptr %101, !dbg !4797
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4798 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4800, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i64 %0, metadata !4802, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata i64 1, metadata !4805, metadata !DIExpression()), !dbg !4806
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4808
  call void @llvm.dbg.value(metadata ptr %2, metadata !4530, metadata !DIExpression()), !dbg !4809
  %3 = icmp eq ptr %2, null, !dbg !4811
  br i1 %3, label %4, label %5, !dbg !4812

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4813
  unreachable, !dbg !4813

5:                                                ; preds = %1
  ret ptr %2, !dbg !4814
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4815 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4803 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4802, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i64 %1, metadata !4805, metadata !DIExpression()), !dbg !4816
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4817
  call void @llvm.dbg.value(metadata ptr %3, metadata !4530, metadata !DIExpression()), !dbg !4818
  %4 = icmp eq ptr %3, null, !dbg !4820
  br i1 %4, label %5, label %6, !dbg !4821

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4822
  unreachable, !dbg !4822

6:                                                ; preds = %2
  ret ptr %3, !dbg !4823
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4824 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4826, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i64 %0, metadata !4828, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata i64 1, metadata !4831, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata i64 %0, metadata !4834, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i64 1, metadata !4837, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i64 %0, metadata !4834, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.value(metadata i64 1, metadata !4837, metadata !DIExpression()), !dbg !4838
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4840
  call void @llvm.dbg.value(metadata ptr %2, metadata !4530, metadata !DIExpression()), !dbg !4841
  %3 = icmp eq ptr %2, null, !dbg !4843
  br i1 %3, label %4, label %5, !dbg !4844

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4845
  unreachable, !dbg !4845

5:                                                ; preds = %1
  ret ptr %2, !dbg !4846
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4829 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4828, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i64 %1, metadata !4831, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i64 %0, metadata !4834, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i64 %1, metadata !4837, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i64 %0, metadata !4834, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i64 %1, metadata !4837, metadata !DIExpression()), !dbg !4848
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4850
  call void @llvm.dbg.value(metadata ptr %3, metadata !4530, metadata !DIExpression()), !dbg !4851
  %4 = icmp eq ptr %3, null, !dbg !4853
  br i1 %4, label %5, label %6, !dbg !4854

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4855
  unreachable, !dbg !4855

6:                                                ; preds = %2
  ret ptr %3, !dbg !4856
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4857 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4861, metadata !DIExpression()), !dbg !4863
  call void @llvm.dbg.value(metadata i64 %1, metadata !4862, metadata !DIExpression()), !dbg !4863
  call void @llvm.dbg.value(metadata i64 %1, metadata !4554, metadata !DIExpression()), !dbg !4864
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4866
  call void @llvm.dbg.value(metadata ptr %3, metadata !4530, metadata !DIExpression()), !dbg !4867
  %4 = icmp eq ptr %3, null, !dbg !4869
  br i1 %4, label %5, label %6, !dbg !4870

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4871
  unreachable, !dbg !4871

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4872, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata ptr %0, metadata !4878, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i64 %1, metadata !4879, metadata !DIExpression()), !dbg !4880
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4882
  ret ptr %3, !dbg !4883
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4884 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4888, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i64 %1, metadata !4889, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.value(metadata i64 %1, metadata !4568, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i64 %1, metadata !4570, metadata !DIExpression()), !dbg !4893
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4895
  call void @llvm.dbg.value(metadata ptr %3, metadata !4530, metadata !DIExpression()), !dbg !4896
  %4 = icmp eq ptr %3, null, !dbg !4898
  br i1 %4, label %5, label %6, !dbg !4899

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4900
  unreachable, !dbg !4900

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4872, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata ptr %0, metadata !4878, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i64 %1, metadata !4879, metadata !DIExpression()), !dbg !4901
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4903
  ret ptr %3, !dbg !4904
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4905 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4909, metadata !DIExpression()), !dbg !4912
  call void @llvm.dbg.value(metadata i64 %1, metadata !4910, metadata !DIExpression()), !dbg !4912
  %3 = add nsw i64 %1, 1, !dbg !4913
  call void @llvm.dbg.value(metadata i64 %3, metadata !4568, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata i64 %3, metadata !4570, metadata !DIExpression()), !dbg !4916
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4918
  call void @llvm.dbg.value(metadata ptr %4, metadata !4530, metadata !DIExpression()), !dbg !4919
  %5 = icmp eq ptr %4, null, !dbg !4921
  br i1 %5, label %6, label %7, !dbg !4922

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4923
  unreachable, !dbg !4923

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4911, metadata !DIExpression()), !dbg !4912
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4924
  store i8 0, ptr %8, align 1, !dbg !4925, !tbaa !1104
  call void @llvm.dbg.value(metadata ptr %4, metadata !4872, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.value(metadata ptr %0, metadata !4878, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.value(metadata i64 %1, metadata !4879, metadata !DIExpression()), !dbg !4926
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4928
  ret ptr %4, !dbg !4929
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4930 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4932, metadata !DIExpression()), !dbg !4933
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4934
  %3 = add i64 %2, 1, !dbg !4935
  call void @llvm.dbg.value(metadata ptr %0, metadata !4861, metadata !DIExpression()), !dbg !4936
  call void @llvm.dbg.value(metadata i64 %3, metadata !4862, metadata !DIExpression()), !dbg !4936
  call void @llvm.dbg.value(metadata i64 %3, metadata !4554, metadata !DIExpression()), !dbg !4938
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4940
  call void @llvm.dbg.value(metadata ptr %4, metadata !4530, metadata !DIExpression()), !dbg !4941
  %5 = icmp eq ptr %4, null, !dbg !4943
  br i1 %5, label %6, label %7, !dbg !4944

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4945
  unreachable, !dbg !4945

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4872, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata ptr %0, metadata !4878, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.value(metadata i64 %3, metadata !4879, metadata !DIExpression()), !dbg !4946
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4948
  ret ptr %4, !dbg !4949
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4950 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4955, !tbaa !1095
  call void @llvm.dbg.value(metadata i32 %1, metadata !4952, metadata !DIExpression()), !dbg !4956
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.185, ptr noundef nonnull @.str.2.186, i32 noundef 5) #39, !dbg !4955
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.187, ptr noundef %2) #39, !dbg !4955
  %3 = icmp eq i32 %1, 0, !dbg !4955
  tail call void @llvm.assume(i1 %3), !dbg !4955
  tail call void @abort() #41, !dbg !4957
  unreachable, !dbg !4957
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4958 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4996, metadata !DIExpression()), !dbg !5001
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !5002
  call void @llvm.dbg.value(metadata i1 poison, metadata !4997, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5001
  call void @llvm.dbg.value(metadata ptr %0, metadata !5003, metadata !DIExpression()), !dbg !5006
  %3 = load i32, ptr %0, align 8, !dbg !5008, !tbaa !5009
  %4 = and i32 %3, 32, !dbg !5010
  %5 = icmp eq i32 %4, 0, !dbg !5010
  call void @llvm.dbg.value(metadata i1 %5, metadata !4999, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5001
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !5011
  %7 = icmp eq i32 %6, 0, !dbg !5012
  call void @llvm.dbg.value(metadata i1 %7, metadata !5000, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5001
  br i1 %5, label %8, label %18, !dbg !5013

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5015
  call void @llvm.dbg.value(metadata i1 %9, metadata !4997, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5001
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5016
  %11 = xor i1 %7, true, !dbg !5016
  %12 = sext i1 %11 to i32, !dbg !5016
  br i1 %10, label %21, label %13, !dbg !5016

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !5017
  %15 = load i32, ptr %14, align 4, !dbg !5017, !tbaa !1095
  %16 = icmp ne i32 %15, 9, !dbg !5018
  %17 = sext i1 %16 to i32, !dbg !5019
  br label %21, !dbg !5019

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5020

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !5022
  store i32 0, ptr %20, align 4, !dbg !5024, !tbaa !1095
  br label %21, !dbg !5022

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5001
  ret i32 %22, !dbg !5025
}

; Function Attrs: nounwind
declare !dbg !5026 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !5030 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5068, metadata !DIExpression()), !dbg !5072
  call void @llvm.dbg.value(metadata i32 0, metadata !5069, metadata !DIExpression()), !dbg !5072
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !5073
  call void @llvm.dbg.value(metadata i32 %2, metadata !5070, metadata !DIExpression()), !dbg !5072
  %3 = icmp slt i32 %2, 0, !dbg !5074
  br i1 %3, label %4, label %6, !dbg !5076

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5077
  br label %24, !dbg !5078

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !5079
  %8 = icmp eq i32 %7, 0, !dbg !5079
  br i1 %8, label %13, label %9, !dbg !5081

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !5082
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !5083
  %12 = icmp eq i64 %11, -1, !dbg !5084
  br i1 %12, label %16, label %13, !dbg !5085

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !5086
  %15 = icmp eq i32 %14, 0, !dbg !5086
  br i1 %15, label %16, label %18, !dbg !5087

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !5069, metadata !DIExpression()), !dbg !5072
  call void @llvm.dbg.value(metadata i32 0, metadata !5071, metadata !DIExpression()), !dbg !5072
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5088
  call void @llvm.dbg.value(metadata i32 %17, metadata !5071, metadata !DIExpression()), !dbg !5072
  br label %24, !dbg !5089

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !5090
  %20 = load i32, ptr %19, align 4, !dbg !5090, !tbaa !1095
  call void @llvm.dbg.value(metadata i32 %20, metadata !5069, metadata !DIExpression()), !dbg !5072
  call void @llvm.dbg.value(metadata i32 0, metadata !5071, metadata !DIExpression()), !dbg !5072
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5088
  call void @llvm.dbg.value(metadata i32 %21, metadata !5071, metadata !DIExpression()), !dbg !5072
  %22 = icmp eq i32 %20, 0, !dbg !5091
  br i1 %22, label %24, label %23, !dbg !5089

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !5093, !tbaa !1095
  call void @llvm.dbg.value(metadata i32 -1, metadata !5071, metadata !DIExpression()), !dbg !5072
  br label %24, !dbg !5095

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !5072
  ret i32 %25, !dbg !5096
}

; Function Attrs: nofree nounwind
declare !dbg !5097 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !5098 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5099 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !5100 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !5103 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5141, metadata !DIExpression()), !dbg !5142
  %2 = icmp eq ptr %0, null, !dbg !5143
  br i1 %2, label %6, label %3, !dbg !5145

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !5146
  %5 = icmp eq i32 %4, 0, !dbg !5146
  br i1 %5, label %6, label %8, !dbg !5147

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !5148
  br label %16, !dbg !5149

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !5150, metadata !DIExpression()), !dbg !5155
  %9 = load i32, ptr %0, align 8, !dbg !5157, !tbaa !5009
  %10 = and i32 %9, 256, !dbg !5159
  %11 = icmp eq i32 %10, 0, !dbg !5159
  br i1 %11, label %14, label %12, !dbg !5160

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !5161
  br label %14, !dbg !5161

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !5162
  br label %16, !dbg !5163

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !5142
  ret i32 %17, !dbg !5164
}

; Function Attrs: nofree nounwind
declare !dbg !5165 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5166 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5205, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.value(metadata i64 %1, metadata !5206, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.value(metadata i32 %2, metadata !5207, metadata !DIExpression()), !dbg !5211
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5212
  %5 = load ptr, ptr %4, align 8, !dbg !5212, !tbaa !5213
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5214
  %7 = load ptr, ptr %6, align 8, !dbg !5214, !tbaa !5215
  %8 = icmp eq ptr %5, %7, !dbg !5216
  br i1 %8, label %9, label %27, !dbg !5217

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5218
  %11 = load ptr, ptr %10, align 8, !dbg !5218, !tbaa !2646
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5219
  %13 = load ptr, ptr %12, align 8, !dbg !5219, !tbaa !5220
  %14 = icmp eq ptr %11, %13, !dbg !5221
  br i1 %14, label %15, label %27, !dbg !5222

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !5223
  %17 = load ptr, ptr %16, align 8, !dbg !5223, !tbaa !5224
  %18 = icmp eq ptr %17, null, !dbg !5225
  br i1 %18, label %19, label %27, !dbg !5226

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !5227
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !5228
  call void @llvm.dbg.value(metadata i64 %21, metadata !5208, metadata !DIExpression()), !dbg !5229
  %22 = icmp eq i64 %21, -1, !dbg !5230
  br i1 %22, label %29, label %23, !dbg !5232

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !5233, !tbaa !5009
  %25 = and i32 %24, -17, !dbg !5233
  store i32 %25, ptr %0, align 8, !dbg !5233, !tbaa !5009
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !5234
  store i64 %21, ptr %26, align 8, !dbg !5235, !tbaa !5236
  br label %29, !dbg !5237

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !5238
  br label %29, !dbg !5239

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !5211
  ret i32 %30, !dbg !5240
}

; Function Attrs: nofree nounwind
declare !dbg !5241 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5244 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5249, metadata !DIExpression()), !dbg !5254
  call void @llvm.dbg.value(metadata ptr %1, metadata !5250, metadata !DIExpression()), !dbg !5254
  call void @llvm.dbg.value(metadata i64 %2, metadata !5251, metadata !DIExpression()), !dbg !5254
  call void @llvm.dbg.value(metadata ptr %3, metadata !5252, metadata !DIExpression()), !dbg !5254
  %5 = icmp eq ptr %1, null, !dbg !5255
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5257
  %7 = select i1 %5, ptr @.str.198, ptr %1, !dbg !5257
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5257
  call void @llvm.dbg.value(metadata i64 %8, metadata !5251, metadata !DIExpression()), !dbg !5254
  call void @llvm.dbg.value(metadata ptr %7, metadata !5250, metadata !DIExpression()), !dbg !5254
  call void @llvm.dbg.value(metadata ptr %6, metadata !5249, metadata !DIExpression()), !dbg !5254
  %9 = icmp eq ptr %3, null, !dbg !5258
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5260
  call void @llvm.dbg.value(metadata ptr %10, metadata !5252, metadata !DIExpression()), !dbg !5254
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !5261
  call void @llvm.dbg.value(metadata i64 %11, metadata !5253, metadata !DIExpression()), !dbg !5254
  %12 = icmp ult i64 %11, -3, !dbg !5262
  br i1 %12, label %13, label %17, !dbg !5264

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !5265
  %15 = icmp eq i32 %14, 0, !dbg !5265
  br i1 %15, label %16, label %29, !dbg !5266

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5267, metadata !DIExpression()), !dbg !5272
  call void @llvm.dbg.value(metadata ptr %10, metadata !5274, metadata !DIExpression()), !dbg !5279
  call void @llvm.dbg.value(metadata i32 0, metadata !5277, metadata !DIExpression()), !dbg !5279
  call void @llvm.dbg.value(metadata i64 8, metadata !5278, metadata !DIExpression()), !dbg !5279
  store i64 0, ptr %10, align 1, !dbg !5281
  br label %29, !dbg !5282

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5283
  br i1 %18, label %19, label %20, !dbg !5285

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !5286
  unreachable, !dbg !5286

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5287

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !5289
  br i1 %23, label %29, label %24, !dbg !5290

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5291
  br i1 %25, label %29, label %26, !dbg !5294

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5295, !tbaa !1104
  %28 = zext i8 %27 to i32, !dbg !5296
  store i32 %28, ptr %6, align 4, !dbg !5297, !tbaa !1095
  br label %29, !dbg !5298

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5254
  ret i64 %30, !dbg !5299
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5300 i32 @mbsinit(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !5306 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5308, metadata !DIExpression()), !dbg !5312
  call void @llvm.dbg.value(metadata i64 %1, metadata !5309, metadata !DIExpression()), !dbg !5312
  call void @llvm.dbg.value(metadata i64 %2, metadata !5310, metadata !DIExpression()), !dbg !5312
  %4 = icmp eq i64 %2, 0, !dbg !5313
  br i1 %4, label %8, label %5, !dbg !5313

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5313
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5313
  br i1 %7, label %13, label %8, !dbg !5313

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5311, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5312
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5311, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5312
  %9 = mul i64 %2, %1, !dbg !5313
  call void @llvm.dbg.value(metadata i64 %9, metadata !5311, metadata !DIExpression()), !dbg !5312
  call void @llvm.dbg.value(metadata ptr %0, metadata !5315, metadata !DIExpression()), !dbg !5319
  call void @llvm.dbg.value(metadata i64 %9, metadata !5318, metadata !DIExpression()), !dbg !5319
  %10 = icmp eq i64 %9, 0, !dbg !5321
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5321
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #46, !dbg !5322
  br label %15, !dbg !5323

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5311, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5312
  %14 = tail call ptr @__errno_location() #42, !dbg !5324
  store i32 12, ptr %14, align 4, !dbg !5326, !tbaa !1095
  br label %15, !dbg !5327

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5312
  ret ptr %16, !dbg !5328
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5329 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5331, metadata !DIExpression()), !dbg !5336
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !5337
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5332, metadata !DIExpression()), !dbg !5338
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !5339
  %4 = icmp eq i32 %3, 0, !dbg !5339
  br i1 %4, label %5, label %12, !dbg !5341

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5342, metadata !DIExpression()), !dbg !5346
  %6 = load i16, ptr %2, align 16, !dbg !5349
  %7 = icmp eq i16 %6, 67, !dbg !5349
  br i1 %7, label %11, label %8, !dbg !5350

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5342, metadata !DIExpression()), !dbg !5351
  call void @llvm.dbg.value(metadata ptr @.str.1.203, metadata !5345, metadata !DIExpression()), !dbg !5351
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.203, i64 6), !dbg !5353
  %10 = icmp eq i32 %9, 0, !dbg !5354
  br i1 %10, label %11, label %12, !dbg !5355

11:                                               ; preds = %8, %5
  br label %12, !dbg !5356

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5336
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !5357
  ret i1 %13, !dbg !5357
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5358 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5362, metadata !DIExpression()), !dbg !5365
  call void @llvm.dbg.value(metadata ptr %1, metadata !5363, metadata !DIExpression()), !dbg !5365
  call void @llvm.dbg.value(metadata i64 %2, metadata !5364, metadata !DIExpression()), !dbg !5365
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !5366
  ret i32 %4, !dbg !5367
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5368 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5372, metadata !DIExpression()), !dbg !5373
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !5374
  ret ptr %2, !dbg !5375
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5376 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5378, metadata !DIExpression()), !dbg !5380
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5381
  call void @llvm.dbg.value(metadata ptr %2, metadata !5379, metadata !DIExpression()), !dbg !5380
  ret ptr %2, !dbg !5382
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5383 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5385, metadata !DIExpression()), !dbg !5392
  call void @llvm.dbg.value(metadata ptr %1, metadata !5386, metadata !DIExpression()), !dbg !5392
  call void @llvm.dbg.value(metadata i64 %2, metadata !5387, metadata !DIExpression()), !dbg !5392
  call void @llvm.dbg.value(metadata i32 %0, metadata !5378, metadata !DIExpression()), !dbg !5393
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5395
  call void @llvm.dbg.value(metadata ptr %4, metadata !5379, metadata !DIExpression()), !dbg !5393
  call void @llvm.dbg.value(metadata ptr %4, metadata !5388, metadata !DIExpression()), !dbg !5392
  %5 = icmp eq ptr %4, null, !dbg !5396
  br i1 %5, label %6, label %9, !dbg !5397

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5398
  br i1 %7, label %19, label %8, !dbg !5401

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5402, !tbaa !1104
  br label %19, !dbg !5403

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !5404
  call void @llvm.dbg.value(metadata i64 %10, metadata !5389, metadata !DIExpression()), !dbg !5405
  %11 = icmp ult i64 %10, %2, !dbg !5406
  br i1 %11, label %12, label %14, !dbg !5408

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5409
  call void @llvm.dbg.value(metadata ptr %1, metadata !5411, metadata !DIExpression()), !dbg !5416
  call void @llvm.dbg.value(metadata ptr %4, metadata !5414, metadata !DIExpression()), !dbg !5416
  call void @llvm.dbg.value(metadata i64 %13, metadata !5415, metadata !DIExpression()), !dbg !5416
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !5418
  br label %19, !dbg !5419

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5420
  br i1 %15, label %19, label %16, !dbg !5423

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5424
  call void @llvm.dbg.value(metadata ptr %1, metadata !5411, metadata !DIExpression()), !dbg !5426
  call void @llvm.dbg.value(metadata ptr %4, metadata !5414, metadata !DIExpression()), !dbg !5426
  call void @llvm.dbg.value(metadata i64 %17, metadata !5415, metadata !DIExpression()), !dbg !5426
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !5428
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5429
  store i8 0, ptr %18, align 1, !dbg !5430, !tbaa !1104
  br label %19, !dbg !5431

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5432
  ret i32 %20, !dbg !5433
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #28 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.dbg.cu = !{!218, !578, !582, !597, !872, !904, !906, !647, !661, !712, !912, !914, !866, !921, !955, !957, !959, !961, !963, !888, !965, !968, !972, !974}
!llvm.ident = !{!976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976, !976}
!llvm.module.flags = !{!977, !978, !979, !980, !981, !982}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 664, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/test.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7583f30ebbd536ebc500e5a99f7dfb08")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!269 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !271, line: 160, baseType: !272)
!271 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!334 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !337)
!336 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!596 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !597, file: !598, line: 66, type: !642, isLocal: false, isDefinition: true)
!597 = distinct !DICompileUnit(language: DW_LANG_C11, file: !598, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !599, globals: !600, splitDebugInlining: false, nameTableKind: None)
!598 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!599 = !{!259, !267}
!600 = !{!601, !603, !623, !625, !627, !629, !595, !631, !633, !635, !637, !640}
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !598, line: 272, type: !390, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(name: "old_file_name", scope: !605, file: !598, line: 304, type: !265, isLocal: true, isDefinition: true)
!605 = distinct !DISubprogram(name: "verror_at_line", scope: !598, file: !598, line: 298, type: !606, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !616)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !260, !260, !265, !222, !265, !608}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !610)
!610 = !{!611, !613, !614, !615}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !609, file: !612, baseType: !222, size: 32)
!612 = !DIFile(filename: "lib/error.c", directory: "/src")
!613 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !609, file: !612, baseType: !222, size: 32, offset: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !609, file: !612, baseType: !259, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !609, file: !612, baseType: !259, size: 64, offset: 128)
!616 = !{!617, !618, !619, !620, !621, !622}
!617 = !DILocalVariable(name: "status", arg: 1, scope: !605, file: !598, line: 298, type: !260)
!618 = !DILocalVariable(name: "errnum", arg: 2, scope: !605, file: !598, line: 298, type: !260)
!619 = !DILocalVariable(name: "file_name", arg: 3, scope: !605, file: !598, line: 298, type: !265)
!620 = !DILocalVariable(name: "line_number", arg: 4, scope: !605, file: !598, line: 298, type: !222)
!621 = !DILocalVariable(name: "message", arg: 5, scope: !605, file: !598, line: 298, type: !265)
!622 = !DILocalVariable(name: "args", arg: 6, scope: !605, file: !598, line: 298, type: !608)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(name: "old_line_number", scope: !605, file: !598, line: 305, type: !222, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !598, line: 338, type: !397, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !598, line: 346, type: !424, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !598, line: 346, type: !19, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(name: "error_message_count", scope: !597, file: !598, line: 69, type: !222, isLocal: false, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !597, file: !598, line: 295, type: !260, isLocal: false, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !598, line: 208, type: !276, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !598, line: 208, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !498)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !598, line: 214, type: !390, isLocal: true, isDefinition: true)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{null}
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(name: "program_name", scope: !647, file: !648, line: 31, type: !265, isLocal: false, isDefinition: true)
!647 = distinct !DICompileUnit(language: DW_LANG_C11, file: !648, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !649, globals: !650, splitDebugInlining: false, nameTableKind: None)
!648 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!649 = !{!258}
!650 = !{!645, !651, !653}
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !648, line: 46, type: !424, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !648, line: 49, type: !397, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(name: "utf07FF", scope: !657, file: !658, line: 46, type: !685, isLocal: true, isDefinition: true)
!657 = distinct !DISubprogram(name: "proper_name_lite", scope: !658, file: !658, line: 38, type: !659, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !663)
!658 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!659 = !DISubroutineType(types: !660)
!660 = !{!265, !265, !265}
!661 = distinct !DICompileUnit(language: DW_LANG_C11, file: !658, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !662, splitDebugInlining: false, nameTableKind: None)
!662 = !{!655}
!663 = !{!664, !665, !666, !667, !672}
!664 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !657, file: !658, line: 38, type: !265)
!665 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !657, file: !658, line: 38, type: !265)
!666 = !DILocalVariable(name: "translation", scope: !657, file: !658, line: 40, type: !265)
!667 = !DILocalVariable(name: "w", scope: !657, file: !658, line: 47, type: !668)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !669, line: 37, baseType: !670)
!669 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !271, line: 57, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !271, line: 42, baseType: !222)
!672 = !DILocalVariable(name: "mbs", scope: !657, file: !658, line: 48, type: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !674, line: 6, baseType: !675)
!674 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !676, line: 21, baseType: !677)
!676 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !676, line: 13, size: 64, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !677, file: !676, line: 15, baseType: !260, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !677, file: !676, line: 20, baseType: !681, size: 32, offset: 32)
!681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !676, line: 16, size: 32, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !681, file: !676, line: 18, baseType: !222, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !681, file: !676, line: 19, baseType: !397, size: 32)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 16, elements: !20)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !688, line: 78, type: !424, isLocal: true, isDefinition: true)
!688 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !688, line: 79, type: !402, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !688, line: 80, type: !693, isLocal: true, isDefinition: true)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !694)
!694 = !{!695}
!695 = !DISubrange(count: 13)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !688, line: 81, type: !693, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !688, line: 82, type: !379, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !688, line: 83, type: !19, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !688, line: 84, type: !424, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !688, line: 85, type: !276, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !688, line: 86, type: !276, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !688, line: 87, type: !424, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !712, file: !688, line: 76, type: !798, isLocal: false, isDefinition: true)
!712 = distinct !DICompileUnit(language: DW_LANG_C11, file: !688, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !713, retainedTypes: !733, globals: !734, splitDebugInlining: false, nameTableKind: None)
!713 = !{!714, !728, !227}
!714 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !715, line: 42, baseType: !222, size: 32, elements: !716)
!715 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727}
!717 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!718 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!719 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!720 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!721 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!722 = !DIEnumerator(name: "c_quoting_style", value: 5)
!723 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!724 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!725 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!726 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!727 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!728 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !715, line: 254, baseType: !222, size: 32, elements: !729)
!729 = !{!730, !731, !732}
!730 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!731 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!732 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!733 = !{!260, !261, !262}
!734 = !{!686, !689, !691, !696, !698, !700, !702, !704, !706, !708, !710, !735, !739, !749, !751, !756, !758, !760, !762, !764, !787, !794, !796}
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !712, file: !688, line: 92, type: !737, isLocal: false, isDefinition: true)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 320, elements: !209)
!738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !712, file: !688, line: 1040, type: !741, isLocal: false, isDefinition: true)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !688, line: 56, size: 448, elements: !742)
!742 = !{!743, !744, !745, !747, !748}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !741, file: !688, line: 59, baseType: !714, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !741, file: !688, line: 62, baseType: !260, size: 32, offset: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !741, file: !688, line: 66, baseType: !746, size: 256, offset: 64)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 256, elements: !425)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !741, file: !688, line: 69, baseType: !265, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !741, file: !688, line: 72, baseType: !265, size: 64, offset: 384)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !712, file: !688, line: 107, type: !741, isLocal: true, isDefinition: true)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(name: "slot0", scope: !712, file: !688, line: 831, type: !753, isLocal: true, isDefinition: true)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !754)
!754 = !{!755}
!755 = !DISubrange(count: 256)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !688, line: 321, type: !19, isLocal: true, isDefinition: true)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(scope: null, file: !688, line: 357, type: !19, isLocal: true, isDefinition: true)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !688, line: 358, type: !19, isLocal: true, isDefinition: true)
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(scope: null, file: !688, line: 199, type: !276, isLocal: true, isDefinition: true)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(name: "quote", scope: !766, file: !688, line: 228, type: !785, isLocal: true, isDefinition: true)
!766 = distinct !DISubprogram(name: "gettext_quote", scope: !688, file: !688, line: 197, type: !767, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !769)
!767 = !DISubroutineType(types: !768)
!768 = !{!265, !265, !714}
!769 = !{!770, !771, !772, !773, !774}
!770 = !DILocalVariable(name: "msgid", arg: 1, scope: !766, file: !688, line: 197, type: !265)
!771 = !DILocalVariable(name: "s", arg: 2, scope: !766, file: !688, line: 197, type: !714)
!772 = !DILocalVariable(name: "translation", scope: !766, file: !688, line: 199, type: !265)
!773 = !DILocalVariable(name: "w", scope: !766, file: !688, line: 229, type: !668)
!774 = !DILocalVariable(name: "mbs", scope: !766, file: !688, line: 230, type: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !674, line: 6, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !676, line: 21, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !676, line: 13, size: 64, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !777, file: !676, line: 15, baseType: !260, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !777, file: !676, line: 20, baseType: !781, size: 32, offset: 32)
!781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !676, line: 16, size: 32, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !781, file: !676, line: 18, baseType: !222, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !781, file: !676, line: 19, baseType: !397, size: 32)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 64, elements: !786)
!786 = !{!21, !399}
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(name: "slotvec", scope: !712, file: !688, line: 834, type: !789, isLocal: true, isDefinition: true)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !688, line: 823, size: 128, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !790, file: !688, line: 825, baseType: !262, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !790, file: !688, line: 826, baseType: !258, size: 64, offset: 64)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(name: "nslots", scope: !712, file: !688, line: 832, type: !260, isLocal: true, isDefinition: true)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(name: "slotvec0", scope: !712, file: !688, line: 833, type: !790, isLocal: true, isDefinition: true)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !799, size: 704, elements: !295)
!799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(scope: null, file: !802, line: 67, type: !482, isLocal: true, isDefinition: true)
!802 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !802, line: 69, type: !276, isLocal: true, isDefinition: true)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !802, line: 83, type: !276, isLocal: true, isDefinition: true)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(scope: null, file: !802, line: 83, type: !397, isLocal: true, isDefinition: true)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !802, line: 85, type: !19, isLocal: true, isDefinition: true)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !802, line: 88, type: !813, isLocal: true, isDefinition: true)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 171)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !802, line: 88, type: !818, isLocal: true, isDefinition: true)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 34)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !802, line: 105, type: !459, isLocal: true, isDefinition: true)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !802, line: 109, type: !558, isLocal: true, isDefinition: true)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(scope: null, file: !802, line: 113, type: !502, isLocal: true, isDefinition: true)
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression())
!828 = distinct !DIGlobalVariable(scope: null, file: !802, line: 120, type: !829, isLocal: true, isDefinition: true)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 32)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(scope: null, file: !802, line: 127, type: !834, isLocal: true, isDefinition: true)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !835)
!835 = !{!836}
!836 = !DISubrange(count: 36)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(scope: null, file: !802, line: 134, type: !439, isLocal: true, isDefinition: true)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !802, line: 142, type: !841, isLocal: true, isDefinition: true)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 44)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !802, line: 150, type: !51, isLocal: true, isDefinition: true)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(scope: null, file: !802, line: 159, type: !110, isLocal: true, isDefinition: true)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(scope: null, file: !802, line: 170, type: !160, isLocal: true, isDefinition: true)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(scope: null, file: !802, line: 248, type: !379, isLocal: true, isDefinition: true)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(scope: null, file: !802, line: 248, type: !464, isLocal: true, isDefinition: true)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(scope: null, file: !802, line: 254, type: !379, isLocal: true, isDefinition: true)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(scope: null, file: !802, line: 254, type: !198, isLocal: true, isDefinition: true)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(scope: null, file: !802, line: 254, type: !439, isLocal: true, isDefinition: true)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(scope: null, file: !802, line: 259, type: !3, isLocal: true, isDefinition: true)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(scope: null, file: !802, line: 259, type: !525, isLocal: true, isDefinition: true)
!864 = !DIGlobalVariableExpression(var: !865, expr: !DIExpression())
!865 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !866, file: !867, line: 26, type: !869, isLocal: false, isDefinition: true)
!866 = distinct !DICompileUnit(language: DW_LANG_C11, file: !867, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !868, splitDebugInlining: false, nameTableKind: None)
!867 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!868 = !{!864}
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 376, elements: !104)
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(name: "exit_failure", scope: !872, file: !873, line: 24, type: !875, isLocal: false, isDefinition: true)
!872 = distinct !DICompileUnit(language: DW_LANG_C11, file: !873, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !874, splitDebugInlining: false, nameTableKind: None)
!873 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!874 = !{!870}
!875 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !260)
!876 = !DIGlobalVariableExpression(var: !877, expr: !DIExpression())
!877 = distinct !DIGlobalVariable(scope: null, file: !878, line: 34, type: !411, isLocal: true, isDefinition: true)
!878 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!879 = !DIGlobalVariableExpression(var: !880, expr: !DIExpression())
!880 = distinct !DIGlobalVariable(scope: null, file: !878, line: 34, type: !276, isLocal: true, isDefinition: true)
!881 = !DIGlobalVariableExpression(var: !882, expr: !DIExpression())
!882 = distinct !DIGlobalVariable(scope: null, file: !878, line: 34, type: !285, isLocal: true, isDefinition: true)
!883 = !DIGlobalVariableExpression(var: !884, expr: !DIExpression())
!884 = distinct !DIGlobalVariable(scope: null, file: !885, line: 108, type: !203, isLocal: true, isDefinition: true)
!885 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!886 = !DIGlobalVariableExpression(var: !887, expr: !DIExpression())
!887 = distinct !DIGlobalVariable(name: "internal_state", scope: !888, file: !885, line: 97, type: !891, isLocal: true, isDefinition: true)
!888 = distinct !DICompileUnit(language: DW_LANG_C11, file: !885, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !889, globals: !890, splitDebugInlining: false, nameTableKind: None)
!889 = !{!259, !262, !267}
!890 = !{!883, !886}
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !674, line: 6, baseType: !892)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !676, line: 21, baseType: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !676, line: 13, size: 64, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !893, file: !676, line: 15, baseType: !260, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !893, file: !676, line: 20, baseType: !897, size: 32, offset: 32)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !893, file: !676, line: 16, size: 32, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !897, file: !676, line: 18, baseType: !222, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !897, file: !676, line: 19, baseType: !397, size: 32)
!901 = !DIGlobalVariableExpression(var: !902, expr: !DIExpression())
!902 = distinct !DIGlobalVariable(scope: null, file: !903, line: 35, type: !402, isLocal: true, isDefinition: true)
!903 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!904 = distinct !DICompileUnit(language: DW_LANG_C11, file: !905, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!905 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!906 = distinct !DICompileUnit(language: DW_LANG_C11, file: !907, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !908, splitDebugInlining: false, nameTableKind: None)
!907 = !DIFile(filename: "lib/umaxtostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa759af6e92fed26f32f683da6c23a8")
!908 = !{!909}
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !910, line: 102, baseType: !911)
!910 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !271, line: 73, baseType: !264)
!912 = distinct !DICompileUnit(language: DW_LANG_C11, file: !913, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!913 = !DIFile(filename: "lib/strintcmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cbb3801b0b03f23f2fd643484b645368")
!914 = distinct !DICompileUnit(language: DW_LANG_C11, file: !802, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !915, retainedTypes: !919, globals: !920, splitDebugInlining: false, nameTableKind: None)
!915 = !{!916}
!916 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !802, line: 40, baseType: !222, size: 32, elements: !917)
!917 = !{!918}
!918 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!919 = !{!259}
!920 = !{!800, !803, !805, !807, !809, !811, !816, !821, !823, !825, !827, !832, !837, !839, !844, !846, !848, !850, !852, !854, !856, !858, !860, !862}
!921 = distinct !DICompileUnit(language: DW_LANG_C11, file: !922, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !923, retainedTypes: !954, splitDebugInlining: false, nameTableKind: None)
!922 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!923 = !{!924, !936}
!924 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !925, file: !922, line: 188, baseType: !222, size: 32, elements: !934)
!925 = distinct !DISubprogram(name: "x2nrealloc", scope: !922, file: !922, line: 176, type: !926, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !929)
!926 = !DISubroutineType(types: !927)
!927 = !{!259, !259, !928, !262}
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!929 = !{!930, !931, !932, !933}
!930 = !DILocalVariable(name: "p", arg: 1, scope: !925, file: !922, line: 176, type: !259)
!931 = !DILocalVariable(name: "pn", arg: 2, scope: !925, file: !922, line: 176, type: !928)
!932 = !DILocalVariable(name: "s", arg: 3, scope: !925, file: !922, line: 176, type: !262)
!933 = !DILocalVariable(name: "n", scope: !925, file: !922, line: 178, type: !262)
!934 = !{!935}
!935 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!936 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !937, file: !922, line: 228, baseType: !222, size: 32, elements: !934)
!937 = distinct !DISubprogram(name: "xpalloc", scope: !922, file: !922, line: 223, type: !938, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !944)
!938 = !DISubroutineType(types: !939)
!939 = !{!259, !259, !940, !941, !943, !941}
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !942, line: 130, baseType: !943)
!942 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !263, line: 35, baseType: !272)
!944 = !{!945, !946, !947, !948, !949, !950, !951, !952, !953}
!945 = !DILocalVariable(name: "pa", arg: 1, scope: !937, file: !922, line: 223, type: !259)
!946 = !DILocalVariable(name: "pn", arg: 2, scope: !937, file: !922, line: 223, type: !940)
!947 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !937, file: !922, line: 223, type: !941)
!948 = !DILocalVariable(name: "n_max", arg: 4, scope: !937, file: !922, line: 223, type: !943)
!949 = !DILocalVariable(name: "s", arg: 5, scope: !937, file: !922, line: 223, type: !941)
!950 = !DILocalVariable(name: "n0", scope: !937, file: !922, line: 230, type: !941)
!951 = !DILocalVariable(name: "n", scope: !937, file: !922, line: 237, type: !941)
!952 = !DILocalVariable(name: "nbytes", scope: !937, file: !922, line: 248, type: !941)
!953 = !DILocalVariable(name: "adjusted_nbytes", scope: !937, file: !922, line: 252, type: !941)
!954 = !{!258, !259, !319, !272, !264}
!955 = distinct !DICompileUnit(language: DW_LANG_C11, file: !878, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !956, splitDebugInlining: false, nameTableKind: None)
!956 = !{!876, !879, !881}
!957 = distinct !DICompileUnit(language: DW_LANG_C11, file: !958, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!958 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!959 = distinct !DICompileUnit(language: DW_LANG_C11, file: !960, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!960 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!961 = distinct !DICompileUnit(language: DW_LANG_C11, file: !962, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !919, splitDebugInlining: false, nameTableKind: None)
!962 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!963 = distinct !DICompileUnit(language: DW_LANG_C11, file: !964, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !919, splitDebugInlining: false, nameTableKind: None)
!964 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!965 = distinct !DICompileUnit(language: DW_LANG_C11, file: !966, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !967, splitDebugInlining: false, nameTableKind: None)
!966 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!967 = !{!319, !264, !259}
!968 = distinct !DICompileUnit(language: DW_LANG_C11, file: !903, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !969, splitDebugInlining: false, nameTableKind: None)
!969 = !{!970, !901}
!970 = !DIGlobalVariableExpression(var: !971, expr: !DIExpression())
!971 = distinct !DIGlobalVariable(scope: null, file: !903, line: 35, type: !19, isLocal: true, isDefinition: true)
!972 = distinct !DICompileUnit(language: DW_LANG_C11, file: !973, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!973 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!974 = distinct !DICompileUnit(language: DW_LANG_C11, file: !975, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !919, splitDebugInlining: false, nameTableKind: None)
!975 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!976 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!977 = !{i32 7, !"Dwarf Version", i32 5}
!978 = !{i32 2, !"Debug Info Version", i32 3}
!979 = !{i32 1, !"wchar_size", i32 4}
!980 = !{i32 8, !"PIC Level", i32 2}
!981 = !{i32 7, !"PIE Level", i32 2}
!982 = !{i32 7, !"uwtable", i32 2}
!983 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 661, type: !984, scopeLine: 662, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !986)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !260}
!986 = !{!987}
!987 = !DILocalVariable(name: "status", arg: 1, scope: !983, file: !2, line: 661, type: !260)
!988 = !DILocation(line: 0, scope: !983)
!989 = !DILocation(line: 663, column: 14, scope: !990)
!990 = distinct !DILexicalBlock(scope: !983, file: !2, line: 663, column: 7)
!991 = !DILocation(line: 663, column: 7, scope: !983)
!992 = !DILocation(line: 664, column: 5, scope: !993)
!993 = distinct !DILexicalBlock(scope: !990, file: !2, line: 664, column: 5)
!994 = !{!995, !995, i64 0}
!995 = !{!"any pointer", !996, i64 0}
!996 = !{!"omnipotent char", !997, i64 0}
!997 = !{!"Simple C/C++ TBAA"}
!998 = !DILocation(line: 667, column: 7, scope: !999)
!999 = distinct !DILexicalBlock(scope: !990, file: !2, line: 666, column: 5)
!1000 = !DILocation(line: 674, column: 7, scope: !999)
!1001 = !DILocation(line: 678, column: 7, scope: !999)
!1002 = !DILocation(line: 679, column: 7, scope: !999)
!1003 = !DILocation(line: 680, column: 7, scope: !999)
!1004 = !DILocation(line: 685, column: 7, scope: !999)
!1005 = !DILocation(line: 692, column: 7, scope: !999)
!1006 = !DILocation(line: 695, column: 7, scope: !999)
!1007 = !DILocation(line: 698, column: 7, scope: !999)
!1008 = !DILocation(line: 701, column: 7, scope: !999)
!1009 = !DILocation(line: 704, column: 7, scope: !999)
!1010 = !DILocation(line: 710, column: 7, scope: !999)
!1011 = !DILocation(line: 713, column: 7, scope: !999)
!1012 = !DILocation(line: 716, column: 7, scope: !999)
!1013 = !DILocation(line: 719, column: 7, scope: !999)
!1014 = !DILocation(line: 722, column: 7, scope: !999)
!1015 = !DILocation(line: 725, column: 7, scope: !999)
!1016 = !DILocation(line: 728, column: 7, scope: !999)
!1017 = !DILocation(line: 731, column: 7, scope: !999)
!1018 = !DILocation(line: 734, column: 7, scope: !999)
!1019 = !DILocation(line: 737, column: 7, scope: !999)
!1020 = !DILocation(line: 740, column: 7, scope: !999)
!1021 = !DILocation(line: 743, column: 7, scope: !999)
!1022 = !DILocation(line: 746, column: 7, scope: !999)
!1023 = !DILocation(line: 749, column: 7, scope: !999)
!1024 = !DILocation(line: 752, column: 7, scope: !999)
!1025 = !DILocation(line: 755, column: 7, scope: !999)
!1026 = !DILocation(line: 758, column: 7, scope: !999)
!1027 = !DILocation(line: 761, column: 7, scope: !999)
!1028 = !DILocation(line: 764, column: 7, scope: !999)
!1029 = !DILocation(line: 767, column: 7, scope: !999)
!1030 = !DILocation(line: 770, column: 7, scope: !999)
!1031 = !DILocation(line: 773, column: 7, scope: !999)
!1032 = !DILocation(line: 776, column: 7, scope: !999)
!1033 = !DILocation(line: 779, column: 7, scope: !999)
!1034 = !DILocation(line: 782, column: 7, scope: !999)
!1035 = !DILocation(line: 785, column: 7, scope: !999)
!1036 = !DILocation(line: 788, column: 7, scope: !999)
!1037 = !DILocation(line: 791, column: 7, scope: !999)
!1038 = !DILocation(line: 794, column: 7, scope: !999)
!1039 = !DILocation(line: 797, column: 7, scope: !999)
!1040 = !DILocation(line: 800, column: 7, scope: !999)
!1041 = !DILocation(line: 803, column: 7, scope: !999)
!1042 = !DILocation(line: 806, column: 7, scope: !999)
!1043 = !DILocation(line: 812, column: 7, scope: !999)
!1044 = !DILocation(line: 817, column: 7, scope: !999)
!1045 = !DILocation(line: 821, column: 7, scope: !999)
!1046 = !DILocalVariable(name: "program", arg: 1, scope: !1047, file: !309, line: 836, type: !265)
!1047 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !309, file: !309, line: 836, type: !1048, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1050)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !265}
!1050 = !{!1046, !1051, !1058, !1059, !1061, !1062}
!1051 = !DILocalVariable(name: "infomap", scope: !1047, file: !309, line: 838, type: !1052)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1053, size: 896, elements: !277)
!1053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1054)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1047, file: !309, line: 838, size: 128, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1054, file: !309, line: 838, baseType: !265, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1054, file: !309, line: 838, baseType: !265, size: 64, offset: 64)
!1058 = !DILocalVariable(name: "node", scope: !1047, file: !309, line: 848, type: !265)
!1059 = !DILocalVariable(name: "map_prog", scope: !1047, file: !309, line: 849, type: !1060)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1061 = !DILocalVariable(name: "lc_messages", scope: !1047, file: !309, line: 861, type: !265)
!1062 = !DILocalVariable(name: "url_program", scope: !1047, file: !309, line: 874, type: !265)
!1063 = !DILocation(line: 0, scope: !1047, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 822, column: 7, scope: !999)
!1065 = !DILocation(line: 857, column: 3, scope: !1047, inlinedAt: !1064)
!1066 = !DILocation(line: 861, column: 29, scope: !1047, inlinedAt: !1064)
!1067 = !DILocation(line: 862, column: 7, scope: !1068, inlinedAt: !1064)
!1068 = distinct !DILexicalBlock(scope: !1047, file: !309, line: 862, column: 7)
!1069 = !DILocation(line: 862, column: 19, scope: !1068, inlinedAt: !1064)
!1070 = !DILocation(line: 862, column: 22, scope: !1068, inlinedAt: !1064)
!1071 = !DILocation(line: 862, column: 7, scope: !1047, inlinedAt: !1064)
!1072 = !DILocation(line: 868, column: 7, scope: !1073, inlinedAt: !1064)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !309, line: 863, column: 5)
!1074 = !DILocation(line: 870, column: 5, scope: !1073, inlinedAt: !1064)
!1075 = !DILocation(line: 875, column: 3, scope: !1047, inlinedAt: !1064)
!1076 = !DILocation(line: 877, column: 3, scope: !1047, inlinedAt: !1064)
!1077 = !DILocation(line: 824, column: 3, scope: !983)
!1078 = !DISubprogram(name: "dcgettext", scope: !1079, file: !1079, line: 51, type: !1080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1079 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!258, !265, !265, !260}
!1082 = !{}
!1083 = !DISubprogram(name: "__fprintf_chk", scope: !1084, file: !1084, line: 93, type: !1085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1084 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!260, !1087, !260, !1088, null}
!1087 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !332)
!1088 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !265)
!1089 = !DISubprogram(name: "fputs_unlocked", scope: !1090, file: !1090, line: 691, type: !1091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1090 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!260, !1088, !1087}
!1093 = !DILocation(line: 0, scope: !308)
!1094 = !DILocation(line: 581, column: 7, scope: !317)
!1095 = !{!1096, !1096, i64 0}
!1096 = !{!"int", !996, i64 0}
!1097 = !DILocation(line: 581, column: 19, scope: !317)
!1098 = !DILocation(line: 581, column: 7, scope: !308)
!1099 = !DILocation(line: 585, column: 26, scope: !316)
!1100 = !DILocation(line: 0, scope: !316)
!1101 = !DILocation(line: 586, column: 23, scope: !316)
!1102 = !DILocation(line: 586, column: 28, scope: !316)
!1103 = !DILocation(line: 586, column: 32, scope: !316)
!1104 = !{!996, !996, i64 0}
!1105 = !DILocation(line: 586, column: 38, scope: !316)
!1106 = !DILocalVariable(name: "__s1", arg: 1, scope: !1107, file: !1108, line: 1359, type: !265)
!1107 = distinct !DISubprogram(name: "streq", scope: !1108, file: !1108, line: 1359, type: !1109, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1111)
!1108 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!319, !265, !265}
!1111 = !{!1106, !1112}
!1112 = !DILocalVariable(name: "__s2", arg: 2, scope: !1107, file: !1108, line: 1359, type: !265)
!1113 = !DILocation(line: 0, scope: !1107, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 586, column: 41, scope: !316)
!1115 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1114)
!1116 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1114)
!1117 = !DILocation(line: 586, column: 19, scope: !316)
!1118 = !DILocation(line: 587, column: 5, scope: !316)
!1119 = !DILocation(line: 588, column: 7, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !308, file: !309, line: 588, column: 7)
!1121 = !DILocation(line: 588, column: 7, scope: !308)
!1122 = !DILocation(line: 590, column: 7, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1120, file: !309, line: 589, column: 5)
!1124 = !DILocation(line: 591, column: 7, scope: !1123)
!1125 = !DILocation(line: 595, column: 37, scope: !308)
!1126 = !DILocation(line: 595, column: 35, scope: !308)
!1127 = !DILocation(line: 596, column: 29, scope: !308)
!1128 = !DILocation(line: 597, column: 8, scope: !325)
!1129 = !DILocation(line: 597, column: 7, scope: !308)
!1130 = !DILocation(line: 604, column: 24, scope: !324)
!1131 = !DILocation(line: 604, column: 12, scope: !325)
!1132 = !DILocation(line: 0, scope: !323)
!1133 = !DILocation(line: 610, column: 16, scope: !323)
!1134 = !DILocation(line: 610, column: 7, scope: !323)
!1135 = !DILocation(line: 611, column: 21, scope: !323)
!1136 = !{!1137, !1137, i64 0}
!1137 = !{!"short", !996, i64 0}
!1138 = !DILocation(line: 611, column: 19, scope: !323)
!1139 = !DILocation(line: 611, column: 16, scope: !323)
!1140 = !DILocation(line: 610, column: 30, scope: !323)
!1141 = distinct !{!1141, !1134, !1135, !1142}
!1142 = !{!"llvm.loop.mustprogress"}
!1143 = !DILocation(line: 612, column: 18, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !323, file: !309, line: 612, column: 11)
!1145 = !DILocation(line: 612, column: 11, scope: !323)
!1146 = !DILocation(line: 618, column: 5, scope: !323)
!1147 = !DILocation(line: 620, column: 23, scope: !308)
!1148 = !DILocation(line: 625, column: 39, scope: !308)
!1149 = !DILocation(line: 626, column: 3, scope: !308)
!1150 = !DILocation(line: 626, column: 10, scope: !308)
!1151 = !DILocation(line: 626, column: 21, scope: !308)
!1152 = !DILocation(line: 628, column: 44, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !309, line: 628, column: 11)
!1154 = distinct !DILexicalBlock(scope: !308, file: !309, line: 627, column: 5)
!1155 = !DILocation(line: 628, column: 32, scope: !1153)
!1156 = !DILocation(line: 628, column: 49, scope: !1153)
!1157 = !DILocation(line: 628, column: 11, scope: !1154)
!1158 = !DILocation(line: 630, column: 11, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1154, file: !309, line: 630, column: 11)
!1160 = !DILocation(line: 630, column: 11, scope: !1154)
!1161 = !DILocation(line: 632, column: 26, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !309, line: 632, column: 15)
!1163 = distinct !DILexicalBlock(scope: !1159, file: !309, line: 631, column: 9)
!1164 = !DILocation(line: 632, column: 34, scope: !1162)
!1165 = !DILocation(line: 632, column: 37, scope: !1162)
!1166 = !DILocation(line: 632, column: 15, scope: !1163)
!1167 = !DILocation(line: 636, column: 16, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1163, file: !309, line: 636, column: 15)
!1169 = !DILocation(line: 636, column: 29, scope: !1168)
!1170 = !DILocation(line: 640, column: 16, scope: !1154)
!1171 = distinct !{!1171, !1149, !1172, !1142}
!1172 = !DILocation(line: 641, column: 5, scope: !308)
!1173 = !DILocation(line: 644, column: 3, scope: !308)
!1174 = !DILocation(line: 0, scope: !1107, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 648, column: 31, scope: !308)
!1176 = !DILocation(line: 663, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !308, file: !309, line: 663, column: 7)
!1178 = !DILocation(line: 664, column: 7, scope: !1177)
!1179 = !DILocation(line: 664, column: 10, scope: !1177)
!1180 = !DILocation(line: 663, column: 7, scope: !308)
!1181 = !DILocation(line: 669, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1177, file: !309, line: 665, column: 5)
!1183 = !DILocation(line: 671, column: 5, scope: !1182)
!1184 = !DILocation(line: 676, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1177, file: !309, line: 673, column: 5)
!1186 = !DILocation(line: 679, column: 3, scope: !308)
!1187 = !DILocation(line: 683, column: 3, scope: !308)
!1188 = !DILocation(line: 686, column: 3, scope: !308)
!1189 = !DILocation(line: 688, column: 3, scope: !308)
!1190 = !DILocation(line: 691, column: 3, scope: !308)
!1191 = !DILocation(line: 695, column: 3, scope: !308)
!1192 = !DILocation(line: 696, column: 1, scope: !308)
!1193 = !DISubprogram(name: "__printf_chk", scope: !1084, file: !1084, line: 95, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!260, !260, !1088, null}
!1196 = !DISubprogram(name: "setlocale", scope: !1197, file: !1197, line: 122, type: !1198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1197 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!258, !260, !265}
!1200 = !DISubprogram(name: "strncmp", scope: !1201, file: !1201, line: 159, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1201 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!260, !265, !265, !262}
!1204 = !DISubprogram(name: "exit", scope: !1205, file: !1205, line: 624, type: !984, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1205 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1206 = !DISubprogram(name: "getenv", scope: !1205, file: !1205, line: 641, type: !1207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!258, !265}
!1209 = !DISubprogram(name: "strcmp", scope: !1201, file: !1201, line: 156, type: !1210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!260, !265, !265}
!1212 = !DISubprogram(name: "strspn", scope: !1201, file: !1201, line: 297, type: !1213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!264, !265, !265}
!1215 = !DISubprogram(name: "strchr", scope: !1201, file: !1201, line: 246, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!258, !265, !260}
!1218 = !DISubprogram(name: "__ctype_b_loc", scope: !228, file: !228, line: 79, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!1224 = !DISubprogram(name: "strcspn", scope: !1201, file: !1201, line: 293, type: !1213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1225 = !DISubprogram(name: "fwrite_unlocked", scope: !1090, file: !1090, line: 704, type: !1226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!262, !1228, !262, !262, !1087}
!1228 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1229)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1231 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 843, type: !1232, scopeLine: 844, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1234)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!260, !260, !572}
!1234 = !{!1235, !1236, !1237}
!1235 = !DILocalVariable(name: "margc", arg: 1, scope: !1231, file: !2, line: 843, type: !260)
!1236 = !DILocalVariable(name: "margv", arg: 2, scope: !1231, file: !2, line: 843, type: !572)
!1237 = !DILocalVariable(name: "value", scope: !1231, file: !2, line: 845, type: !319)
!1238 = !DILocation(line: 0, scope: !1231)
!1239 = !DILocation(line: 856, column: 21, scope: !1231)
!1240 = !DILocation(line: 856, column: 3, scope: !1231)
!1241 = !DILocation(line: 857, column: 3, scope: !1231)
!1242 = !DILocation(line: 858, column: 3, scope: !1231)
!1243 = !DILocation(line: 859, column: 3, scope: !1231)
!1244 = !DILocalVariable(name: "status", arg: 1, scope: !1245, file: !309, line: 102, type: !260)
!1245 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !309, file: !309, line: 102, type: !984, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1246)
!1246 = !{!1244}
!1247 = !DILocation(line: 0, scope: !1245, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 861, column: 3, scope: !1231)
!1249 = !DILocation(line: 105, column: 18, scope: !1250, inlinedAt: !1248)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !309, line: 104, column: 7)
!1251 = !DILocation(line: 862, column: 3, scope: !1231)
!1252 = !DILocation(line: 865, column: 8, scope: !1231)
!1253 = !DILocation(line: 875, column: 17, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 875, column: 11)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 868, column: 5)
!1256 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 867, column: 7)
!1257 = !DILocation(line: 875, column: 11, scope: !1255)
!1258 = !DILocation(line: 877, column: 22, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !2, line: 877, column: 15)
!1260 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 876, column: 9)
!1261 = !DILocation(line: 0, scope: !1107, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 877, column: 15, scope: !1259)
!1263 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1262)
!1264 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1262)
!1265 = !DILocation(line: 877, column: 15, scope: !1260)
!1266 = !DILocation(line: 878, column: 13, scope: !1259)
!1267 = !DILocation(line: 0, scope: !1107, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 880, column: 15, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1260, file: !2, line: 880, column: 15)
!1270 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1268)
!1271 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1268)
!1272 = !DILocation(line: 880, column: 15, scope: !1260)
!1273 = !DILocation(line: 882, column: 28, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 881, column: 13)
!1275 = !DILocation(line: 882, column: 64, scope: !1274)
!1276 = !DILocation(line: 882, column: 73, scope: !1274)
!1277 = !DILocation(line: 882, column: 15, scope: !1274)
!1278 = !DILocation(line: 884, column: 15, scope: !1274)
!1279 = !DILocation(line: 887, column: 17, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 887, column: 11)
!1281 = !DILocation(line: 887, column: 21, scope: !1280)
!1282 = !DILocation(line: 887, column: 44, scope: !1280)
!1283 = !DILocation(line: 887, column: 32, scope: !1280)
!1284 = !DILocation(line: 0, scope: !1107, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 887, column: 25, scope: !1280)
!1286 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1285)
!1287 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1285)
!1288 = !DILocation(line: 887, column: 11, scope: !1255)
!1289 = !DILocation(line: 888, column: 28, scope: !1280)
!1290 = !DILocation(line: 888, column: 45, scope: !1280)
!1291 = !DILocation(line: 888, column: 9, scope: !1280)
!1292 = !DILocation(line: 893, column: 8, scope: !1231)
!1293 = !DILocation(line: 894, column: 7, scope: !1231)
!1294 = !DILocation(line: 896, column: 11, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 896, column: 7)
!1296 = !DILocation(line: 896, column: 7, scope: !1231)
!1297 = !DILocation(line: 899, column: 27, scope: !1231)
!1298 = !DILocation(line: 899, column: 11, scope: !1231)
!1299 = !DILocation(line: 901, column: 7, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 901, column: 7)
!1301 = !DILocation(line: 901, column: 14, scope: !1300)
!1302 = !DILocation(line: 901, column: 11, scope: !1300)
!1303 = !DILocation(line: 901, column: 7, scope: !1231)
!1304 = !DILocation(line: 902, column: 24, scope: !1300)
!1305 = !DILocation(line: 902, column: 55, scope: !1300)
!1306 = !DILocation(line: 902, column: 60, scope: !1300)
!1307 = !DILocation(line: 902, column: 48, scope: !1300)
!1308 = !DILocation(line: 902, column: 5, scope: !1300)
!1309 = !DILocation(line: 904, column: 3, scope: !1231)
!1310 = !DILocation(line: 905, column: 1, scope: !1231)
!1311 = !DISubprogram(name: "bindtextdomain", scope: !1079, file: !1079, line: 86, type: !1312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!258, !265, !265}
!1314 = !DISubprogram(name: "textdomain", scope: !1079, file: !1079, line: 82, type: !1207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1315 = !DISubprogram(name: "atexit", scope: !1205, file: !1205, line: 602, type: !1316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!260, !642}
!1318 = distinct !DISubprogram(name: "test_syntax_error", scope: !2, file: !2, line: 97, type: !1319, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1321)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{null, !265, null}
!1321 = !{!1322, !1323}
!1322 = !DILocalVariable(name: "format", arg: 1, scope: !1318, file: !2, line: 97, type: !265)
!1323 = !DILocalVariable(name: "ap", scope: !1318, file: !2, line: 99, type: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1325, line: 22, baseType: !1326)
!1325 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1327, baseType: !1328)
!1327 = !DIFile(filename: "src/lbracket.c", directory: "/src")
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1329, size: 192, elements: !204)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1330)
!1330 = !{!1331, !1332, !1333, !1334}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1329, file: !1327, line: 99, baseType: !222, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1329, file: !1327, line: 99, baseType: !222, size: 32, offset: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1329, file: !1327, line: 99, baseType: !259, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1329, file: !1327, line: 99, baseType: !259, size: 64, offset: 128)
!1335 = !DILocation(line: 0, scope: !1318)
!1336 = !DILocation(line: 99, column: 3, scope: !1318)
!1337 = !DILocation(line: 99, column: 11, scope: !1318)
!1338 = !DILocation(line: 100, column: 3, scope: !1318)
!1339 = !DILocation(line: 101, column: 3, scope: !1318)
!1340 = !DILocation(line: 102, column: 3, scope: !1318)
!1341 = distinct !DISubprogram(name: "posixtest", scope: !2, file: !2, line: 616, type: !1342, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1344)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!319, !260}
!1344 = !{!1345, !1346}
!1345 = !DILocalVariable(name: "nargs", arg: 1, scope: !1341, file: !2, line: 616, type: !260)
!1346 = !DILocalVariable(name: "value", scope: !1341, file: !2, line: 618, type: !319)
!1347 = !DILocation(line: 0, scope: !1341)
!1348 = !DILocation(line: 620, column: 3, scope: !1341)
!1349 = !DILocation(line: 562, column: 10, scope: !1350, inlinedAt: !1353)
!1350 = distinct !DISubprogram(name: "one_argument", scope: !2, file: !2, line: 560, type: !1351, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1082)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!319}
!1353 = distinct !DILocation(line: 623, column: 17, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1341, file: !2, line: 621, column: 5)
!1355 = !DILocation(line: 562, column: 18, scope: !1350, inlinedAt: !1353)
!1356 = !DILocation(line: 562, column: 25, scope: !1350, inlinedAt: !1353)
!1357 = !DILocation(line: 624, column: 9, scope: !1354)
!1358 = !DILocation(line: 570, column: 14, scope: !1359, inlinedAt: !1363)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 570, column: 7)
!1360 = distinct !DISubprogram(name: "two_arguments", scope: !2, file: !2, line: 566, type: !1351, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1361)
!1361 = !{!1362}
!1362 = !DILocalVariable(name: "value", scope: !1360, file: !2, line: 568, type: !319)
!1363 = distinct !DILocation(line: 627, column: 17, scope: !1354)
!1364 = !DILocation(line: 570, column: 19, scope: !1359, inlinedAt: !1363)
!1365 = !DILocation(line: 0, scope: !1107, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 570, column: 7, scope: !1359, inlinedAt: !1363)
!1367 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1366)
!1368 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1366)
!1369 = !DILocation(line: 570, column: 7, scope: !1360, inlinedAt: !1363)
!1370 = !DILocalVariable(name: "f", arg: 1, scope: !1371, file: !2, line: 110, type: !319)
!1371 = distinct !DISubprogram(name: "advance", scope: !2, file: !2, line: 110, type: !1372, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1374)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{null, !319}
!1374 = !{!1370}
!1375 = !DILocation(line: 0, scope: !1371, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 572, column: 7, scope: !1377, inlinedAt: !1363)
!1377 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 571, column: 5)
!1378 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1376)
!1379 = !DILocation(line: 562, column: 18, scope: !1350, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 573, column: 17, scope: !1377, inlinedAt: !1363)
!1381 = !DILocation(line: 562, column: 10, scope: !1350, inlinedAt: !1380)
!1382 = !DILocation(line: 562, column: 25, scope: !1350, inlinedAt: !1380)
!1383 = !DILocation(line: 0, scope: !1360, inlinedAt: !1363)
!1384 = !DILocation(line: 574, column: 5, scope: !1377, inlinedAt: !1363)
!1385 = !DILocation(line: 575, column: 12, scope: !1386, inlinedAt: !1363)
!1386 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 575, column: 12)
!1387 = !DILocation(line: 575, column: 25, scope: !1386, inlinedAt: !1363)
!1388 = !DILocation(line: 576, column: 12, scope: !1386, inlinedAt: !1363)
!1389 = !DILocation(line: 576, column: 15, scope: !1386, inlinedAt: !1363)
!1390 = !DILocation(line: 576, column: 28, scope: !1386, inlinedAt: !1363)
!1391 = !DILocation(line: 577, column: 12, scope: !1386, inlinedAt: !1363)
!1392 = !DILocation(line: 577, column: 15, scope: !1386, inlinedAt: !1363)
!1393 = !DILocation(line: 577, column: 28, scope: !1386, inlinedAt: !1363)
!1394 = !DILocation(line: 575, column: 12, scope: !1359, inlinedAt: !1363)
!1395 = !DILocation(line: 579, column: 15, scope: !1396, inlinedAt: !1363)
!1396 = distinct !DILexicalBlock(scope: !1386, file: !2, line: 578, column: 5)
!1397 = !DILocation(line: 582, column: 5, scope: !1386, inlinedAt: !1363)
!1398 = !DILocation(line: 631, column: 17, scope: !1354)
!1399 = !DILocation(line: 632, column: 9, scope: !1354)
!1400 = !DILocation(line: 635, column: 20, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 635, column: 13)
!1402 = !DILocation(line: 635, column: 25, scope: !1401)
!1403 = !DILocation(line: 0, scope: !1107, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 635, column: 13, scope: !1401)
!1405 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1404)
!1406 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1404)
!1407 = !DILocation(line: 635, column: 13, scope: !1354)
!1408 = !DILocation(line: 0, scope: !1371, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 637, column: 13, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 636, column: 11)
!1411 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1409)
!1412 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1409)
!1413 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 114, column: 7)
!1414 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1409)
!1415 = !DILocation(line: 638, column: 22, scope: !1410)
!1416 = !DILocation(line: 638, column: 21, scope: !1410)
!1417 = !DILocation(line: 639, column: 13, scope: !1410)
!1418 = !DILocation(line: 0, scope: !1107, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 641, column: 13, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 641, column: 13)
!1421 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1419)
!1422 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1419)
!1423 = !DILocation(line: 641, column: 36, scope: !1420)
!1424 = !DILocation(line: 641, column: 55, scope: !1420)
!1425 = !DILocation(line: 641, column: 46, scope: !1420)
!1426 = !DILocation(line: 0, scope: !1107, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 641, column: 39, scope: !1420)
!1428 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1427)
!1429 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1427)
!1430 = !DILocation(line: 641, column: 13, scope: !1354)
!1431 = !DILocation(line: 0, scope: !1371, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 643, column: 13, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1420, file: !2, line: 642, column: 11)
!1434 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1432)
!1435 = !DILocation(line: 570, column: 14, scope: !1359, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 644, column: 21, scope: !1433)
!1437 = !DILocation(line: 0, scope: !1107, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 570, column: 7, scope: !1359, inlinedAt: !1436)
!1439 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1438)
!1440 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1438)
!1441 = !DILocation(line: 570, column: 7, scope: !1360, inlinedAt: !1436)
!1442 = !DILocation(line: 0, scope: !1371, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 572, column: 7, scope: !1377, inlinedAt: !1436)
!1444 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1443)
!1445 = !DILocation(line: 562, column: 10, scope: !1350, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 573, column: 17, scope: !1377, inlinedAt: !1436)
!1447 = !DILocation(line: 562, column: 25, scope: !1350, inlinedAt: !1446)
!1448 = !DILocation(line: 0, scope: !1360, inlinedAt: !1436)
!1449 = !DILocation(line: 574, column: 5, scope: !1377, inlinedAt: !1436)
!1450 = !DILocation(line: 575, column: 12, scope: !1386, inlinedAt: !1436)
!1451 = !DILocation(line: 575, column: 25, scope: !1386, inlinedAt: !1436)
!1452 = !DILocation(line: 576, column: 12, scope: !1386, inlinedAt: !1436)
!1453 = !DILocation(line: 576, column: 15, scope: !1386, inlinedAt: !1436)
!1454 = !DILocation(line: 576, column: 28, scope: !1386, inlinedAt: !1436)
!1455 = !DILocation(line: 577, column: 12, scope: !1386, inlinedAt: !1436)
!1456 = !DILocation(line: 577, column: 15, scope: !1386, inlinedAt: !1436)
!1457 = !DILocation(line: 577, column: 28, scope: !1386, inlinedAt: !1436)
!1458 = !DILocation(line: 575, column: 12, scope: !1359, inlinedAt: !1436)
!1459 = !DILocation(line: 579, column: 15, scope: !1396, inlinedAt: !1436)
!1460 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 645, column: 13, scope: !1433)
!1462 = !DILocation(line: 582, column: 5, scope: !1386, inlinedAt: !1436)
!1463 = !DILocation(line: 0, scope: !1371, inlinedAt: !1461)
!1464 = !DILocation(line: 646, column: 13, scope: !1433)
!1465 = !DILocation(line: 651, column: 9, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !2, line: 651, column: 9)
!1467 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 651, column: 9)
!1468 = !DILocation(line: 651, column: 9, scope: !1467)
!1469 = !DILocation(line: 553, column: 7, scope: !1470, inlinedAt: !1472)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 553, column: 7)
!1471 = distinct !DISubprogram(name: "expr", scope: !2, file: !2, line: 551, type: !1351, scopeLine: 552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1082)
!1472 = distinct !DILocation(line: 652, column: 17, scope: !1354)
!1473 = !DILocation(line: 553, column: 14, scope: !1470, inlinedAt: !1472)
!1474 = !DILocation(line: 553, column: 11, scope: !1470, inlinedAt: !1472)
!1475 = !DILocation(line: 553, column: 7, scope: !1471, inlinedAt: !1472)
!1476 = !DILocation(line: 554, column: 5, scope: !1470, inlinedAt: !1472)
!1477 = !DILocation(line: 556, column: 10, scope: !1471, inlinedAt: !1472)
!1478 = !DILocation(line: 653, column: 5, scope: !1354)
!1479 = !DILocation(line: 655, column: 3, scope: !1341)
!1480 = distinct !DISubprogram(name: "unary_operator", scope: !2, file: !2, line: 366, type: !1351, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1481)
!1481 = !{!1482, !1516, !1519, !1520, !1524, !1525, !1528, !1529, !1531}
!1482 = !DILocalVariable(name: "stat_buf", scope: !1480, file: !2, line: 368, type: !1483)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1484, line: 26, size: 1152, elements: !1485)
!1484 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1485 = !{!1486, !1488, !1490, !1492, !1494, !1496, !1498, !1499, !1500, !1501, !1503, !1505, !1512, !1513, !1514}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1483, file: !1484, line: 31, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !271, line: 145, baseType: !264)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1483, file: !1484, line: 36, baseType: !1489, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !271, line: 148, baseType: !264)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1483, file: !1484, line: 44, baseType: !1491, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !271, line: 151, baseType: !264)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1483, file: !1484, line: 45, baseType: !1493, size: 32, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !271, line: 150, baseType: !222)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1483, file: !1484, line: 47, baseType: !1495, size: 32, offset: 224)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !271, line: 146, baseType: !222)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1483, file: !1484, line: 48, baseType: !1497, size: 32, offset: 256)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !271, line: 147, baseType: !222)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1483, file: !1484, line: 50, baseType: !260, size: 32, offset: 288)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1483, file: !1484, line: 52, baseType: !1487, size: 64, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1483, file: !1484, line: 57, baseType: !358, size: 64, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1483, file: !1484, line: 61, baseType: !1502, size: 64, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !271, line: 175, baseType: !272)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1483, file: !1484, line: 63, baseType: !1504, size: 64, offset: 512)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !271, line: 180, baseType: !272)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1483, file: !1484, line: 74, baseType: !1506, size: 128, offset: 576)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1507, line: 11, size: 128, elements: !1508)
!1507 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1508 = !{!1509, !1510}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1506, file: !1507, line: 16, baseType: !270, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1506, file: !1507, line: 21, baseType: !1511, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !271, line: 197, baseType: !272)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1483, file: !1484, line: 75, baseType: !1506, size: 128, offset: 704)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1483, file: !1484, line: 76, baseType: !1506, size: 128, offset: 832)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1483, file: !1484, line: 89, baseType: !1515, size: 192, offset: 960)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1511, size: 192, elements: !412)
!1516 = !DILocalVariable(name: "atime", scope: !1517, file: !2, line: 401, type: !1506)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 397, column: 7)
!1518 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 371, column: 5)
!1519 = !DILocalVariable(name: "mtime", scope: !1517, file: !2, line: 402, type: !1506)
!1520 = !DILocalVariable(name: "euid", scope: !1521, file: !2, line: 412, type: !1522)
!1521 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 407, column: 7)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1523, line: 79, baseType: !1495)
!1523 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1524 = !DILocalVariable(name: "NO_UID", scope: !1521, file: !2, line: 413, type: !1522)
!1525 = !DILocalVariable(name: "egid", scope: !1526, file: !2, line: 423, type: !1527)
!1526 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 418, column: 7)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1523, line: 64, baseType: !1497)
!1528 = !DILocalVariable(name: "NO_GID", scope: !1526, file: !2, line: 424, type: !1527)
!1529 = !DILocalVariable(name: "fd", scope: !1530, file: !2, line: 489, type: !272)
!1530 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 488, column: 7)
!1531 = !DILocalVariable(name: "arg", scope: !1530, file: !2, line: 490, type: !265)
!1532 = !DILocation(line: 368, column: 3, scope: !1480)
!1533 = !DILocation(line: 368, column: 15, scope: !1480)
!1534 = !DILocation(line: 370, column: 11, scope: !1480)
!1535 = !DILocation(line: 370, column: 16, scope: !1480)
!1536 = !DILocation(line: 370, column: 3, scope: !1480)
!1537 = !DILocation(line: 373, column: 26, scope: !1518)
!1538 = !DILocation(line: 373, column: 67, scope: !1518)
!1539 = !DILocation(line: 373, column: 72, scope: !1518)
!1540 = !DILocation(line: 373, column: 60, scope: !1518)
!1541 = !DILocation(line: 373, column: 7, scope: !1518)
!1542 = !DILocation(line: 0, scope: !1371, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1545)
!1544 = distinct !DISubprogram(name: "unary_advance", scope: !2, file: !2, line: 119, type: !643, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1082)
!1545 = distinct !DILocation(line: 381, column: 7, scope: !1518)
!1546 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1543)
!1547 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1543)
!1548 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1543)
!1549 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1545)
!1550 = !DILocation(line: 382, column: 20, scope: !1518)
!1551 = !DILocation(line: 382, column: 14, scope: !1518)
!1552 = !DILocation(line: 382, column: 46, scope: !1518)
!1553 = !DILocation(line: 382, column: 7, scope: !1518)
!1554 = !DILocation(line: 0, scope: !1371, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 385, column: 7, scope: !1518)
!1557 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1555)
!1558 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1555)
!1559 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1555)
!1560 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1556)
!1561 = !DILocation(line: 386, column: 26, scope: !1518)
!1562 = !DILocation(line: 386, column: 14, scope: !1518)
!1563 = !DILocation(line: 386, column: 47, scope: !1518)
!1564 = !DILocation(line: 386, column: 7, scope: !1518)
!1565 = !DILocation(line: 0, scope: !1371, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 389, column: 7, scope: !1518)
!1568 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1566)
!1569 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1566)
!1570 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1566)
!1571 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1567)
!1572 = !DILocation(line: 390, column: 26, scope: !1518)
!1573 = !DILocation(line: 390, column: 14, scope: !1518)
!1574 = !DILocation(line: 390, column: 47, scope: !1518)
!1575 = !DILocation(line: 390, column: 7, scope: !1518)
!1576 = !DILocation(line: 0, scope: !1371, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 393, column: 7, scope: !1518)
!1579 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1577)
!1580 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1577)
!1581 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1577)
!1582 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1578)
!1583 = !DILocation(line: 394, column: 26, scope: !1518)
!1584 = !DILocation(line: 394, column: 14, scope: !1518)
!1585 = !DILocation(line: 394, column: 47, scope: !1518)
!1586 = !DILocation(line: 394, column: 7, scope: !1518)
!1587 = !DILocation(line: 0, scope: !1371, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 398, column: 9, scope: !1517)
!1590 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1588)
!1591 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1588)
!1592 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1588)
!1593 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1589)
!1594 = !DILocation(line: 399, column: 19, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1517, file: !2, line: 399, column: 13)
!1596 = !DILocation(line: 399, column: 13, scope: !1595)
!1597 = !DILocation(line: 399, column: 45, scope: !1595)
!1598 = !DILocation(line: 399, column: 13, scope: !1517)
!1599 = !DILocalVariable(name: "st", arg: 1, scope: !1600, file: !1601, line: 147, type: !1604)
!1600 = distinct !DISubprogram(name: "get_stat_atime", scope: !1601, file: !1601, line: 147, type: !1602, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1606)
!1601 = !DIFile(filename: "./lib/stat-time.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f4edb1fd4cb81bf2ea0eec563958d759")
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!1506, !1604}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!1606 = !{!1599}
!1607 = !DILocation(line: 0, scope: !1600, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 401, column: 33, scope: !1517)
!1609 = !DILocation(line: 150, column: 10, scope: !1600, inlinedAt: !1608)
!1610 = !{i64 0, i64 8, !1611, i64 8, i64 8, !1611}
!1611 = !{!1612, !1612, i64 0}
!1612 = !{!"long", !996, i64 0}
!1613 = !{i64 0, i64 8, !1611}
!1614 = !DILocation(line: 0, scope: !1517)
!1615 = !DILocalVariable(name: "st", arg: 1, scope: !1616, file: !1601, line: 169, type: !1604)
!1616 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1601, file: !1601, line: 169, type: !1602, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1617)
!1617 = !{!1615}
!1618 = !DILocation(line: 0, scope: !1616, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 402, column: 33, scope: !1517)
!1620 = !DILocation(line: 172, column: 10, scope: !1616, inlinedAt: !1619)
!1621 = !DILocalVariable(name: "a", arg: 1, scope: !1622, file: !1623, line: 64, type: !1506)
!1622 = distinct !DISubprogram(name: "timespec_cmp", scope: !1623, file: !1623, line: 64, type: !1624, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1626)
!1623 = !DIFile(filename: "./lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!260, !1506, !1506}
!1626 = !{!1621, !1627}
!1627 = !DILocalVariable(name: "b", arg: 2, scope: !1622, file: !1623, line: 64, type: !1506)
!1628 = !DILocation(line: 0, scope: !1622, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 403, column: 17, scope: !1517)
!1630 = !DILocation(line: 66, column: 14, scope: !1622, inlinedAt: !1629)
!1631 = !DILocation(line: 66, column: 12, scope: !1622, inlinedAt: !1629)
!1632 = !DILocation(line: 66, column: 45, scope: !1622, inlinedAt: !1629)
!1633 = !DILocation(line: 66, column: 43, scope: !1622, inlinedAt: !1629)
!1634 = !DILocation(line: 403, column: 45, scope: !1517)
!1635 = !DILocation(line: 0, scope: !1371, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 408, column: 9, scope: !1521)
!1638 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1636)
!1639 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1636)
!1640 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1636)
!1641 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1637)
!1642 = !DILocation(line: 409, column: 19, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 409, column: 13)
!1644 = !DILocation(line: 409, column: 13, scope: !1643)
!1645 = !DILocation(line: 409, column: 45, scope: !1643)
!1646 = !DILocation(line: 409, column: 13, scope: !1521)
!1647 = !DILocation(line: 411, column: 9, scope: !1521)
!1648 = !DILocation(line: 411, column: 15, scope: !1521)
!1649 = !DILocation(line: 412, column: 22, scope: !1521)
!1650 = !DILocation(line: 0, scope: !1521)
!1651 = !DILocation(line: 414, column: 24, scope: !1521)
!1652 = !DILocation(line: 414, column: 34, scope: !1521)
!1653 = !DILocation(line: 414, column: 37, scope: !1521)
!1654 = !DILocation(line: 414, column: 44, scope: !1521)
!1655 = !DILocation(line: 414, column: 64, scope: !1521)
!1656 = !{!1657, !1096, i64 28}
!1657 = !{!"stat", !1612, i64 0, !1612, i64 8, !1612, i64 16, !1096, i64 24, !1096, i64 28, !1096, i64 32, !1096, i64 36, !1612, i64 40, !1612, i64 48, !1612, i64 56, !1612, i64 64, !1658, i64 72, !1658, i64 88, !1658, i64 104, !996, i64 120}
!1658 = !{!"timespec", !1612, i64 0, !1612, i64 8}
!1659 = !DILocation(line: 414, column: 52, scope: !1521)
!1660 = !DILocation(line: 0, scope: !1371, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 419, column: 9, scope: !1526)
!1663 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1661)
!1664 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1661)
!1665 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1661)
!1666 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1662)
!1667 = !DILocation(line: 420, column: 19, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 420, column: 13)
!1669 = !DILocation(line: 420, column: 13, scope: !1668)
!1670 = !DILocation(line: 420, column: 45, scope: !1668)
!1671 = !DILocation(line: 420, column: 13, scope: !1526)
!1672 = !DILocation(line: 422, column: 9, scope: !1526)
!1673 = !DILocation(line: 422, column: 15, scope: !1526)
!1674 = !DILocation(line: 423, column: 22, scope: !1526)
!1675 = !DILocation(line: 0, scope: !1526)
!1676 = !DILocation(line: 425, column: 24, scope: !1526)
!1677 = !DILocation(line: 425, column: 34, scope: !1526)
!1678 = !DILocation(line: 425, column: 37, scope: !1526)
!1679 = !DILocation(line: 425, column: 44, scope: !1526)
!1680 = !DILocation(line: 425, column: 64, scope: !1526)
!1681 = !{!1657, !1096, i64 32}
!1682 = !DILocation(line: 425, column: 52, scope: !1526)
!1683 = !DILocation(line: 0, scope: !1371, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 429, column: 7, scope: !1518)
!1686 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1684)
!1687 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1684)
!1688 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1684)
!1689 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1685)
!1690 = !DILocation(line: 432, column: 21, scope: !1518)
!1691 = !DILocation(line: 432, column: 15, scope: !1518)
!1692 = !DILocation(line: 432, column: 47, scope: !1518)
!1693 = !DILocation(line: 433, column: 15, scope: !1518)
!1694 = !DILocation(line: 432, column: 7, scope: !1518)
!1695 = !DILocation(line: 0, scope: !1371, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 436, column: 7, scope: !1518)
!1698 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1696)
!1699 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1696)
!1700 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1696)
!1701 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1697)
!1702 = !DILocation(line: 437, column: 21, scope: !1518)
!1703 = !DILocation(line: 437, column: 15, scope: !1518)
!1704 = !DILocation(line: 437, column: 47, scope: !1518)
!1705 = !DILocation(line: 438, column: 15, scope: !1518)
!1706 = !DILocation(line: 437, column: 7, scope: !1518)
!1707 = !DILocation(line: 0, scope: !1371, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 441, column: 7, scope: !1518)
!1710 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1708)
!1711 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1708)
!1712 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1708)
!1713 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1709)
!1714 = !DILocation(line: 442, column: 21, scope: !1518)
!1715 = !DILocation(line: 442, column: 15, scope: !1518)
!1716 = !DILocation(line: 442, column: 47, scope: !1518)
!1717 = !DILocation(line: 443, column: 15, scope: !1518)
!1718 = !DILocation(line: 442, column: 7, scope: !1518)
!1719 = !DILocation(line: 0, scope: !1371, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 446, column: 7, scope: !1518)
!1722 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1720)
!1723 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1720)
!1724 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1720)
!1725 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1721)
!1726 = !DILocation(line: 447, column: 21, scope: !1518)
!1727 = !DILocation(line: 447, column: 15, scope: !1518)
!1728 = !DILocation(line: 447, column: 47, scope: !1518)
!1729 = !DILocation(line: 448, column: 15, scope: !1518)
!1730 = !DILocation(line: 447, column: 7, scope: !1518)
!1731 = !DILocation(line: 0, scope: !1371, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 451, column: 7, scope: !1518)
!1734 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1732)
!1735 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1732)
!1736 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1732)
!1737 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1733)
!1738 = !DILocation(line: 452, column: 21, scope: !1518)
!1739 = !DILocation(line: 452, column: 15, scope: !1518)
!1740 = !DILocation(line: 452, column: 47, scope: !1518)
!1741 = !DILocation(line: 453, column: 15, scope: !1518)
!1742 = !DILocation(line: 452, column: 7, scope: !1518)
!1743 = !DILocation(line: 0, scope: !1371, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 456, column: 7, scope: !1518)
!1746 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1744)
!1747 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1744)
!1748 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1744)
!1749 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1745)
!1750 = !DILocation(line: 457, column: 21, scope: !1518)
!1751 = !DILocation(line: 457, column: 15, scope: !1518)
!1752 = !DILocation(line: 457, column: 47, scope: !1518)
!1753 = !DILocation(line: 458, column: 15, scope: !1518)
!1754 = !DILocation(line: 457, column: 7, scope: !1518)
!1755 = !DILocation(line: 0, scope: !1371, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 461, column: 7, scope: !1518)
!1758 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1756)
!1759 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1756)
!1760 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1756)
!1761 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1757)
!1762 = !DILocation(line: 462, column: 21, scope: !1518)
!1763 = !DILocation(line: 462, column: 15, scope: !1518)
!1764 = !DILocation(line: 462, column: 47, scope: !1518)
!1765 = !DILocation(line: 463, column: 15, scope: !1518)
!1766 = !DILocation(line: 462, column: 7, scope: !1518)
!1767 = !DILocation(line: 0, scope: !1371, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 469, column: 7, scope: !1518)
!1770 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1768)
!1771 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1768)
!1772 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1768)
!1773 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1769)
!1774 = !DILocation(line: 470, column: 25, scope: !1518)
!1775 = !DILocalVariable(name: "filename", arg: 1, scope: !1776, file: !1777, line: 49, type: !265)
!1776 = distinct !DISubprogram(name: "issymlink", scope: !1777, file: !1777, line: 49, type: !1778, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1780)
!1777 = !DIFile(filename: "./lib/issymlink.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3ed5fe5c76158b7c9a68dd013fb9e151")
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!260, !265}
!1780 = !{!1775, !1781}
!1781 = !DILocalVariable(name: "linkbuf", scope: !1776, file: !1777, line: 51, type: !203)
!1782 = !DILocation(line: 0, scope: !1776, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 470, column: 14, scope: !1518)
!1784 = !DILocation(line: 51, column: 3, scope: !1776, inlinedAt: !1783)
!1785 = !DILocation(line: 51, column: 8, scope: !1776, inlinedAt: !1783)
!1786 = !DILocation(line: 52, column: 7, scope: !1787, inlinedAt: !1783)
!1787 = distinct !DILexicalBlock(scope: !1776, file: !1777, line: 52, column: 7)
!1788 = !DILocation(line: 52, column: 54, scope: !1787, inlinedAt: !1783)
!1789 = !DILocation(line: 58, column: 1, scope: !1776, inlinedAt: !1783)
!1790 = !DILocation(line: 470, column: 7, scope: !1518)
!1791 = !DILocation(line: 0, scope: !1371, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 473, column: 7, scope: !1518)
!1794 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1792)
!1795 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1792)
!1796 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1792)
!1797 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1793)
!1798 = !DILocation(line: 474, column: 21, scope: !1518)
!1799 = !DILocation(line: 474, column: 15, scope: !1518)
!1800 = !DILocation(line: 474, column: 47, scope: !1518)
!1801 = !DILocation(line: 475, column: 15, scope: !1518)
!1802 = !DILocation(line: 474, column: 7, scope: !1518)
!1803 = !DILocation(line: 0, scope: !1371, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 478, column: 7, scope: !1518)
!1806 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1804)
!1807 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1804)
!1808 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1804)
!1809 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1805)
!1810 = !DILocation(line: 479, column: 21, scope: !1518)
!1811 = !DILocation(line: 479, column: 15, scope: !1518)
!1812 = !DILocation(line: 479, column: 47, scope: !1518)
!1813 = !DILocation(line: 480, column: 15, scope: !1518)
!1814 = !DILocation(line: 479, column: 7, scope: !1518)
!1815 = !DILocation(line: 0, scope: !1371, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 483, column: 7, scope: !1518)
!1818 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1816)
!1819 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1816)
!1820 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1816)
!1821 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1817)
!1822 = !DILocation(line: 484, column: 21, scope: !1518)
!1823 = !DILocation(line: 484, column: 15, scope: !1518)
!1824 = !DILocation(line: 484, column: 47, scope: !1518)
!1825 = !DILocation(line: 485, column: 15, scope: !1518)
!1826 = !DILocation(line: 484, column: 7, scope: !1518)
!1827 = !DILocation(line: 0, scope: !1371, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 491, column: 9, scope: !1530)
!1830 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1828)
!1831 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1828)
!1832 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1828)
!1833 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1829)
!1834 = !DILocation(line: 492, column: 25, scope: !1530)
!1835 = !DILocation(line: 492, column: 15, scope: !1530)
!1836 = !DILocation(line: 0, scope: !1530)
!1837 = !DILocation(line: 493, column: 9, scope: !1530)
!1838 = !DILocation(line: 493, column: 15, scope: !1530)
!1839 = !DILocation(line: 494, column: 14, scope: !1530)
!1840 = !DILocation(line: 495, column: 17, scope: !1530)
!1841 = !DILocation(line: 495, column: 23, scope: !1530)
!1842 = !DILocation(line: 495, column: 33, scope: !1530)
!1843 = !DILocation(line: 495, column: 72, scope: !1530)
!1844 = !DILocation(line: 495, column: 64, scope: !1530)
!1845 = !DILocation(line: 495, column: 61, scope: !1530)
!1846 = !DILocation(line: 0, scope: !1371, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 499, column: 7, scope: !1518)
!1849 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1847)
!1850 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1847)
!1851 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1847)
!1852 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1848)
!1853 = !DILocation(line: 500, column: 14, scope: !1518)
!1854 = !DILocation(line: 500, column: 31, scope: !1518)
!1855 = !DILocation(line: 500, column: 7, scope: !1518)
!1856 = !DILocation(line: 0, scope: !1371, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 121, column: 3, scope: !1544, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 503, column: 7, scope: !1518)
!1859 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1857)
!1860 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1857)
!1861 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1857)
!1862 = !DILocation(line: 122, column: 3, scope: !1544, inlinedAt: !1858)
!1863 = !DILocation(line: 504, column: 14, scope: !1518)
!1864 = !DILocation(line: 504, column: 31, scope: !1518)
!1865 = !DILocation(line: 504, column: 7, scope: !1518)
!1866 = !DILocation(line: 0, scope: !1518)
!1867 = !DILocation(line: 506, column: 1, scope: !1480)
!1868 = distinct !DISubprogram(name: "beyond", scope: !2, file: !2, line: 130, type: !643, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1082)
!1869 = !DILocation(line: 132, column: 22, scope: !1868)
!1870 = !DILocation(line: 132, column: 61, scope: !1868)
!1871 = !DILocation(line: 132, column: 66, scope: !1868)
!1872 = !DILocation(line: 132, column: 71, scope: !1868)
!1873 = !DILocation(line: 132, column: 54, scope: !1868)
!1874 = !DILocation(line: 132, column: 3, scope: !1868)
!1875 = distinct !DISubprogram(name: "three_arguments", scope: !2, file: !2, line: 587, type: !1351, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1876)
!1876 = !{!1877, !1878}
!1877 = !DILocalVariable(name: "value", scope: !1875, file: !2, line: 589, type: !319)
!1878 = !DILocalVariable(name: "bop", scope: !1875, file: !2, line: 590, type: !260)
!1879 = !DILocation(line: 590, column: 20, scope: !1875)
!1880 = !DILocation(line: 590, column: 25, scope: !1875)
!1881 = !DILocation(line: 590, column: 29, scope: !1875)
!1882 = !DILocation(line: 590, column: 13, scope: !1875)
!1883 = !DILocation(line: 0, scope: !1875)
!1884 = !DILocation(line: 592, column: 9, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1875, file: !2, line: 592, column: 7)
!1886 = !DILocation(line: 592, column: 7, scope: !1875)
!1887 = !DILocation(line: 593, column: 13, scope: !1885)
!1888 = !DILocation(line: 593, column: 5, scope: !1885)
!1889 = !DILocation(line: 594, column: 19, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1885, file: !2, line: 594, column: 12)
!1891 = !DILocation(line: 0, scope: !1107, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 594, column: 12, scope: !1890)
!1893 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1892)
!1894 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1892)
!1895 = !DILocation(line: 594, column: 12, scope: !1885)
!1896 = !DILocation(line: 0, scope: !1371, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 596, column: 7, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1890, file: !2, line: 595, column: 5)
!1899 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1897)
!1900 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !1897)
!1901 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !1897)
!1902 = !DILocation(line: 0, scope: !1107, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 570, column: 7, scope: !1359, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 597, column: 16, scope: !1898)
!1905 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1903)
!1906 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1903)
!1907 = !DILocation(line: 570, column: 7, scope: !1360, inlinedAt: !1904)
!1908 = !DILocation(line: 0, scope: !1371, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 572, column: 7, scope: !1377, inlinedAt: !1904)
!1910 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1909)
!1911 = !DILocation(line: 562, column: 18, scope: !1350, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 573, column: 17, scope: !1377, inlinedAt: !1904)
!1913 = !DILocation(line: 562, column: 10, scope: !1350, inlinedAt: !1912)
!1914 = !DILocation(line: 562, column: 25, scope: !1350, inlinedAt: !1912)
!1915 = !DILocation(line: 0, scope: !1360, inlinedAt: !1904)
!1916 = !DILocation(line: 574, column: 5, scope: !1377, inlinedAt: !1904)
!1917 = !DILocation(line: 575, column: 12, scope: !1386, inlinedAt: !1904)
!1918 = !DILocation(line: 575, column: 25, scope: !1386, inlinedAt: !1904)
!1919 = !DILocation(line: 576, column: 12, scope: !1386, inlinedAt: !1904)
!1920 = !DILocation(line: 576, column: 15, scope: !1386, inlinedAt: !1904)
!1921 = !DILocation(line: 576, column: 28, scope: !1386, inlinedAt: !1904)
!1922 = !DILocation(line: 577, column: 12, scope: !1386, inlinedAt: !1904)
!1923 = !DILocation(line: 577, column: 15, scope: !1386, inlinedAt: !1904)
!1924 = !DILocation(line: 577, column: 28, scope: !1386, inlinedAt: !1904)
!1925 = !DILocation(line: 575, column: 12, scope: !1359, inlinedAt: !1904)
!1926 = !DILocation(line: 579, column: 15, scope: !1396, inlinedAt: !1904)
!1927 = !DILocation(line: 582, column: 5, scope: !1386, inlinedAt: !1904)
!1928 = !DILocation(line: 597, column: 15, scope: !1898)
!1929 = !DILocation(line: 598, column: 5, scope: !1898)
!1930 = !DILocation(line: 0, scope: !1107, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 599, column: 12, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1890, file: !2, line: 599, column: 12)
!1933 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1931)
!1934 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1931)
!1935 = !DILocation(line: 599, column: 35, scope: !1932)
!1936 = !DILocation(line: 599, column: 54, scope: !1932)
!1937 = !DILocation(line: 599, column: 45, scope: !1932)
!1938 = !DILocation(line: 0, scope: !1107, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 599, column: 38, scope: !1932)
!1940 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1939)
!1941 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1939)
!1942 = !DILocation(line: 599, column: 12, scope: !1890)
!1943 = !DILocation(line: 0, scope: !1371, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 601, column: 7, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1932, file: !2, line: 600, column: 5)
!1946 = !DILocation(line: 562, column: 10, scope: !1350, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 602, column: 15, scope: !1945)
!1948 = !DILocation(line: 562, column: 25, scope: !1350, inlinedAt: !1947)
!1949 = !DILocation(line: 0, scope: !1371, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 603, column: 7, scope: !1945)
!1951 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !1950)
!1952 = !DILocation(line: 604, column: 5, scope: !1945)
!1953 = !DILocation(line: 0, scope: !1107, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 605, column: 12, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1932, file: !2, line: 605, column: 12)
!1956 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1954)
!1957 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1954)
!1958 = !DILocation(line: 605, column: 40, scope: !1955)
!1959 = !DILocation(line: 0, scope: !1107, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 605, column: 43, scope: !1955)
!1961 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1960)
!1962 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1960)
!1963 = !DILocation(line: 606, column: 12, scope: !1955)
!1964 = !DILocation(line: 0, scope: !1107, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 606, column: 15, scope: !1955)
!1966 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1965)
!1967 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1965)
!1968 = !DILocation(line: 606, column: 42, scope: !1955)
!1969 = !DILocation(line: 0, scope: !1107, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 606, column: 45, scope: !1955)
!1971 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1970)
!1972 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1970)
!1973 = !DILocation(line: 605, column: 12, scope: !1932)
!1974 = !DILocation(line: 553, column: 14, scope: !1470, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 607, column: 13, scope: !1955)
!1976 = !DILocation(line: 553, column: 11, scope: !1470, inlinedAt: !1975)
!1977 = !DILocation(line: 553, column: 7, scope: !1471, inlinedAt: !1975)
!1978 = !DILocation(line: 554, column: 5, scope: !1470, inlinedAt: !1975)
!1979 = !DILocation(line: 556, column: 10, scope: !1471, inlinedAt: !1975)
!1980 = !DILocation(line: 609, column: 24, scope: !1955)
!1981 = !DILocation(line: 610, column: 31, scope: !1955)
!1982 = !DILocation(line: 610, column: 36, scope: !1955)
!1983 = !DILocation(line: 610, column: 40, scope: !1955)
!1984 = !DILocation(line: 610, column: 24, scope: !1955)
!1985 = !DILocation(line: 609, column: 5, scope: !1955)
!1986 = !DILocation(line: 611, column: 3, scope: !1875)
!1987 = !DISubprogram(name: "__assert_fail", scope: !1988, file: !1988, line: 69, type: !1989, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!1988 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1989 = !DISubroutineType(types: !1990)
!1990 = !{null, !265, !265, !222, !265}
!1991 = distinct !DISubprogram(name: "or", scope: !2, file: !2, line: 533, type: !1351, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1992)
!1992 = !{!1993}
!1993 = !DILocalVariable(name: "value", scope: !1991, file: !2, line: 535, type: !319)
!1994 = !DILocation(line: 0, scope: !1991)
!1995 = !DILocalVariable(name: "value", scope: !1996, file: !2, line: 516, type: !319)
!1996 = distinct !DISubprogram(name: "and", scope: !2, file: !2, line: 514, type: !1351, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1997)
!1997 = !{!1995}
!1998 = !DILocation(line: 0, scope: !1996, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 539, column: 16, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1991, file: !2, line: 538, column: 5)
!2001 = !DILocalVariable(name: "negated", scope: !2002, file: !2, line: 227, type: !319)
!2002 = distinct !DISubprogram(name: "term", scope: !2, file: !2, line: 224, type: !1351, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2003)
!2003 = !{!2004, !2001, !2005, !2006}
!2004 = !DILocalVariable(name: "value", scope: !2002, file: !2, line: 226, type: !319)
!2005 = !DILocalVariable(name: "bop", scope: !2002, file: !2, line: 228, type: !260)
!2006 = !DILocalVariable(name: "nargs", scope: !2007, file: !2, line: 243, type: !260)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !2, line: 242, column: 5)
!2008 = distinct !DILexicalBlock(scope: !2002, file: !2, line: 241, column: 7)
!2009 = !DILocation(line: 0, scope: !2002, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 520, column: 16, scope: !2011, inlinedAt: !1999)
!2011 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 519, column: 5)
!2012 = !DILocation(line: 231, column: 14, scope: !2002, inlinedAt: !2010)
!2013 = !DILocation(line: 231, column: 21, scope: !2002, inlinedAt: !2010)
!2014 = !DILocation(line: 537, column: 3, scope: !1991)
!2015 = !DILocation(line: 231, column: 24, scope: !2002, inlinedAt: !2010)
!2016 = !DILocation(line: 231, column: 37, scope: !2002, inlinedAt: !2010)
!2017 = !DILocation(line: 231, column: 44, scope: !2002, inlinedAt: !2010)
!2018 = !DILocation(line: 231, column: 47, scope: !2002, inlinedAt: !2010)
!2019 = !DILocation(line: 231, column: 60, scope: !2002, inlinedAt: !2010)
!2020 = !DILocation(line: 231, column: 3, scope: !2002, inlinedAt: !2010)
!2021 = !DILocation(line: 0, scope: !1371, inlinedAt: !2022)
!2022 = distinct !DILocation(line: 233, column: 7, scope: !2023, inlinedAt: !2010)
!2023 = distinct !DILexicalBlock(scope: !2002, file: !2, line: 232, column: 5)
!2024 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !2022)
!2025 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !2022)
!2026 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !2022)
!2027 = !DILocation(line: 234, column: 17, scope: !2023, inlinedAt: !2010)
!2028 = distinct !{!2028, !2020, !2029, !1142}
!2029 = !DILocation(line: 235, column: 5, scope: !2002, inlinedAt: !2010)
!2030 = !DILocation(line: 238, column: 5, scope: !2031, inlinedAt: !2010)
!2031 = distinct !DILexicalBlock(scope: !2002, file: !2, line: 237, column: 7)
!2032 = !DILocation(line: 241, column: 7, scope: !2008, inlinedAt: !2010)
!2033 = !DILocation(line: 241, column: 20, scope: !2008, inlinedAt: !2010)
!2034 = !DILocation(line: 241, column: 27, scope: !2008, inlinedAt: !2010)
!2035 = !DILocation(line: 241, column: 30, scope: !2008, inlinedAt: !2010)
!2036 = !DILocation(line: 241, column: 43, scope: !2008, inlinedAt: !2010)
!2037 = !DILocation(line: 241, column: 7, scope: !2002, inlinedAt: !2010)
!2038 = !DILocation(line: 0, scope: !1371, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 245, column: 7, scope: !2007, inlinedAt: !2010)
!2040 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !2039)
!2041 = !DILocation(line: 114, column: 9, scope: !1413, inlinedAt: !2039)
!2042 = !DILocation(line: 0, scope: !2007, inlinedAt: !2010)
!2043 = !DILocation(line: 248, column: 16, scope: !2044, inlinedAt: !2010)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !2, line: 247, column: 7)
!2045 = distinct !DILexicalBlock(scope: !2007, file: !2, line: 247, column: 7)
!2046 = !DILocation(line: 248, column: 24, scope: !2044, inlinedAt: !2010)
!2047 = !DILocation(line: 248, column: 31, scope: !2044, inlinedAt: !2010)
!2048 = !DILocation(line: 247, column: 7, scope: !2045, inlinedAt: !2010)
!2049 = !DILocation(line: 248, column: 43, scope: !2044, inlinedAt: !2010)
!2050 = !DILocation(line: 0, scope: !1107, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 248, column: 36, scope: !2044, inlinedAt: !2010)
!2052 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2051)
!2053 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2051)
!2054 = !DILocation(line: 115, column: 5, scope: !1413, inlinedAt: !2039)
!2055 = distinct !{!2055, !2048, !2056, !1142}
!2056 = !DILocation(line: 254, column: 11, scope: !2045, inlinedAt: !2010)
!2057 = !DILocation(line: 0, scope: !2045, inlinedAt: !2010)
!2058 = !DILocation(line: 256, column: 15, scope: !2007, inlinedAt: !2010)
!2059 = !DILocation(line: 257, column: 12, scope: !2060, inlinedAt: !2010)
!2060 = distinct !DILexicalBlock(scope: !2007, file: !2, line: 257, column: 11)
!2061 = !DILocation(line: 257, column: 17, scope: !2060, inlinedAt: !2010)
!2062 = !DILocation(line: 257, column: 11, scope: !2007, inlinedAt: !2010)
!2063 = !DILocation(line: 258, column: 28, scope: !2060, inlinedAt: !2010)
!2064 = !DILocation(line: 258, column: 46, scope: !2060, inlinedAt: !2010)
!2065 = !DILocation(line: 258, column: 9, scope: !2060, inlinedAt: !2010)
!2066 = !DILocation(line: 260, column: 13, scope: !2067, inlinedAt: !2010)
!2067 = distinct !DILexicalBlock(scope: !2060, file: !2, line: 260, column: 13)
!2068 = !DILocation(line: 260, column: 26, scope: !2067, inlinedAt: !2010)
!2069 = !DILocation(line: 260, column: 33, scope: !2067, inlinedAt: !2010)
!2070 = !DILocation(line: 260, column: 36, scope: !2067, inlinedAt: !2010)
!2071 = !DILocation(line: 260, column: 13, scope: !2060, inlinedAt: !2010)
!2072 = !DILocation(line: 261, column: 30, scope: !2067, inlinedAt: !2010)
!2073 = !DILocation(line: 262, column: 30, scope: !2067, inlinedAt: !2010)
!2074 = !DILocation(line: 262, column: 60, scope: !2067, inlinedAt: !2010)
!2075 = !DILocation(line: 262, column: 65, scope: !2067, inlinedAt: !2010)
!2076 = !DILocation(line: 262, column: 48, scope: !2067, inlinedAt: !2010)
!2077 = !DILocation(line: 261, column: 11, scope: !2067, inlinedAt: !2010)
!2078 = !DILocation(line: 0, scope: !1371, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 263, column: 7, scope: !2007, inlinedAt: !2010)
!2080 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !2079)
!2081 = !DILocation(line: 264, column: 5, scope: !2007, inlinedAt: !2010)
!2082 = !DILocation(line: 267, column: 22, scope: !2083, inlinedAt: !2010)
!2083 = distinct !DILexicalBlock(scope: !2008, file: !2, line: 267, column: 12)
!2084 = !DILocation(line: 267, column: 14, scope: !2083, inlinedAt: !2010)
!2085 = !DILocation(line: 267, column: 28, scope: !2083, inlinedAt: !2010)
!2086 = !DILocation(line: 0, scope: !1107, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 267, column: 31, scope: !2083, inlinedAt: !2010)
!2088 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2087)
!2089 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2087)
!2090 = !DILocation(line: 268, column: 12, scope: !2083, inlinedAt: !2010)
!2091 = !DILocation(line: 268, column: 34, scope: !2083, inlinedAt: !2010)
!2092 = !DILocation(line: 268, column: 27, scope: !2083, inlinedAt: !2010)
!2093 = !DILocation(line: 268, column: 17, scope: !2083, inlinedAt: !2010)
!2094 = !DILocation(line: 267, column: 12, scope: !2008, inlinedAt: !2010)
!2095 = !DILocation(line: 269, column: 13, scope: !2083, inlinedAt: !2010)
!2096 = !DILocation(line: 269, column: 5, scope: !2083, inlinedAt: !2010)
!2097 = !DILocation(line: 270, column: 14, scope: !2098, inlinedAt: !2010)
!2098 = distinct !DILexicalBlock(scope: !2083, file: !2, line: 270, column: 12)
!2099 = !DILocation(line: 271, column: 12, scope: !2098, inlinedAt: !2010)
!2100 = !DILocation(line: 271, column: 34, scope: !2098, inlinedAt: !2010)
!2101 = !DILocation(line: 271, column: 27, scope: !2098, inlinedAt: !2010)
!2102 = !DILocation(line: 271, column: 17, scope: !2098, inlinedAt: !2010)
!2103 = !DILocation(line: 270, column: 12, scope: !2083, inlinedAt: !2010)
!2104 = !DILocation(line: 272, column: 13, scope: !2098, inlinedAt: !2010)
!2105 = !DILocation(line: 272, column: 5, scope: !2098, inlinedAt: !2010)
!2106 = !DILocation(line: 275, column: 25, scope: !2107, inlinedAt: !2010)
!2107 = distinct !DILexicalBlock(scope: !2098, file: !2, line: 275, column: 12)
!2108 = !DILocation(line: 275, column: 32, scope: !2107, inlinedAt: !2010)
!2109 = !DILocation(line: 275, column: 35, scope: !2107, inlinedAt: !2010)
!2110 = !DILocation(line: 275, column: 48, scope: !2107, inlinedAt: !2010)
!2111 = !DILocation(line: 275, column: 51, scope: !2107, inlinedAt: !2010)
!2112 = !DILocation(line: 275, column: 64, scope: !2107, inlinedAt: !2010)
!2113 = !DILocation(line: 275, column: 12, scope: !2098, inlinedAt: !2010)
!2114 = !DILocation(line: 276, column: 13, scope: !2107, inlinedAt: !2010)
!2115 = !DILocation(line: 276, column: 5, scope: !2107, inlinedAt: !2010)
!2116 = !DILocation(line: 279, column: 29, scope: !2117, inlinedAt: !2010)
!2117 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 278, column: 5)
!2118 = !DILocation(line: 0, scope: !1371, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 280, column: 7, scope: !2117, inlinedAt: !2010)
!2120 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !2119)
!2121 = !DILocation(line: 283, column: 18, scope: !2002, inlinedAt: !2010)
!2122 = !DILocation(line: 520, column: 13, scope: !2011, inlinedAt: !1999)
!2123 = !DILocation(line: 521, column: 14, scope: !2124, inlinedAt: !1999)
!2124 = distinct !DILexicalBlock(scope: !2011, file: !2, line: 521, column: 11)
!2125 = !DILocation(line: 521, column: 20, scope: !2124, inlinedAt: !1999)
!2126 = !DILocation(line: 521, column: 18, scope: !2124, inlinedAt: !1999)
!2127 = !DILocation(line: 521, column: 25, scope: !2124, inlinedAt: !1999)
!2128 = !DILocation(line: 521, column: 35, scope: !2124, inlinedAt: !1999)
!2129 = !DILocation(line: 0, scope: !1107, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 521, column: 28, scope: !2124, inlinedAt: !1999)
!2131 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2130)
!2132 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2130)
!2133 = !DILocation(line: 521, column: 11, scope: !2011, inlinedAt: !1999)
!2134 = !DILocation(line: 0, scope: !1371, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 523, column: 7, scope: !2011, inlinedAt: !1999)
!2136 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !2135)
!2137 = distinct !{!2137, !2138, !2139}
!2138 = !DILocation(line: 518, column: 3, scope: !1996, inlinedAt: !1999)
!2139 = !DILocation(line: 524, column: 5, scope: !1996, inlinedAt: !1999)
!2140 = !DILocation(line: 539, column: 13, scope: !2000)
!2141 = !DILocation(line: 0, scope: !1107, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 540, column: 28, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2000, file: !2, line: 540, column: 11)
!2144 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2142)
!2145 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2142)
!2146 = !DILocation(line: 540, column: 11, scope: !2000)
!2147 = !DILocation(line: 541, column: 9, scope: !2143)
!2148 = !DILocation(line: 0, scope: !1371, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 542, column: 7, scope: !2000)
!2150 = !DILocation(line: 112, column: 3, scope: !1371, inlinedAt: !2149)
!2151 = distinct !{!2151, !2014, !2152}
!2152 = !DILocation(line: 543, column: 5, scope: !1991)
!2153 = distinct !DISubprogram(name: "binop", scope: !2, file: !2, line: 186, type: !1778, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2154)
!2154 = !{!2155}
!2155 = !DILocalVariable(name: "s", arg: 1, scope: !2153, file: !2, line: 186, type: !265)
!2156 = !DILocation(line: 0, scope: !2153)
!2157 = !DILocation(line: 0, scope: !1107, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 188, column: 13, scope: !2153)
!2159 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2158)
!2160 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2158)
!2161 = !DILocation(line: 188, column: 13, scope: !2153)
!2162 = !DILocation(line: 0, scope: !1107, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 189, column: 13, scope: !2153)
!2164 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2163)
!2165 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2163)
!2166 = !DILocation(line: 189, column: 13, scope: !2153)
!2167 = !DILocation(line: 0, scope: !1107, inlinedAt: !2168)
!2168 = distinct !DILocation(line: 190, column: 13, scope: !2153)
!2169 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2168)
!2170 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2168)
!2171 = !DILocation(line: 190, column: 13, scope: !2153)
!2172 = !DILocation(line: 0, scope: !1107, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 191, column: 13, scope: !2153)
!2174 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2173)
!2175 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2173)
!2176 = !DILocation(line: 191, column: 13, scope: !2153)
!2177 = !DILocation(line: 0, scope: !1107, inlinedAt: !2178)
!2178 = distinct !DILocation(line: 192, column: 13, scope: !2153)
!2179 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2178)
!2180 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2178)
!2181 = !DILocation(line: 192, column: 13, scope: !2153)
!2182 = !DILocation(line: 0, scope: !1107, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 193, column: 13, scope: !2153)
!2184 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2183)
!2185 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2183)
!2186 = !DILocation(line: 193, column: 13, scope: !2153)
!2187 = !DILocation(line: 0, scope: !1107, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 194, column: 13, scope: !2153)
!2189 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2188)
!2190 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2188)
!2191 = !DILocation(line: 194, column: 13, scope: !2153)
!2192 = !DILocation(line: 0, scope: !1107, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 195, column: 13, scope: !2153)
!2194 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2193)
!2195 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2193)
!2196 = !DILocation(line: 195, column: 13, scope: !2153)
!2197 = !DILocation(line: 0, scope: !1107, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 196, column: 13, scope: !2153)
!2199 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2198)
!2200 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2198)
!2201 = !DILocation(line: 196, column: 13, scope: !2153)
!2202 = !DILocation(line: 0, scope: !1107, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 197, column: 13, scope: !2153)
!2204 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2203)
!2205 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2203)
!2206 = !DILocation(line: 197, column: 13, scope: !2153)
!2207 = !DILocation(line: 0, scope: !1107, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 198, column: 13, scope: !2153)
!2209 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2208)
!2210 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2208)
!2211 = !DILocation(line: 198, column: 13, scope: !2153)
!2212 = !DILocation(line: 0, scope: !1107, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 199, column: 13, scope: !2153)
!2214 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2213)
!2215 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2213)
!2216 = !DILocation(line: 199, column: 13, scope: !2153)
!2217 = !DILocation(line: 0, scope: !1107, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 200, column: 13, scope: !2153)
!2219 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2218)
!2220 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2218)
!2221 = !DILocation(line: 200, column: 13, scope: !2153)
!2222 = !DILocation(line: 0, scope: !1107, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 201, column: 13, scope: !2153)
!2224 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2223)
!2225 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2223)
!2226 = !DILocation(line: 201, column: 13, scope: !2153)
!2227 = !DILocation(line: 188, column: 3, scope: !2153)
!2228 = distinct !DISubprogram(name: "binary_operator", scope: !2, file: !2, line: 287, type: !2229, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2231)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!319, !319, !242}
!2231 = !{!2232, !2233, !2234, !2235, !2236, !2239, !2240, !2241, !2242, !2243, !2245, !2249}
!2232 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !2228, file: !2, line: 287, type: !319)
!2233 = !DILocalVariable(name: "bop", arg: 2, scope: !2228, file: !2, line: 287, type: !242)
!2234 = !DILocalVariable(name: "op", scope: !2228, file: !2, line: 289, type: !260)
!2235 = !DILocalVariable(name: "r_is_l", scope: !2228, file: !2, line: 296, type: !319)
!2236 = !DILocalVariable(name: "lbuf", scope: !2237, file: !2, line: 307, type: !639)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !2, line: 306, column: 7)
!2238 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 303, column: 5)
!2239 = !DILocalVariable(name: "rbuf", scope: !2237, file: !2, line: 308, type: !639)
!2240 = !DILocalVariable(name: "l", scope: !2237, file: !2, line: 309, type: !265)
!2241 = !DILocalVariable(name: "r", scope: !2237, file: !2, line: 312, type: !265)
!2242 = !DILocalVariable(name: "cmp", scope: !2237, file: !2, line: 315, type: !260)
!2243 = !DILocalVariable(name: "cmp", scope: !2244, file: !2, line: 333, type: !260)
!2244 = distinct !DILexicalBlock(scope: !2238, file: !2, line: 329, column: 7)
!2245 = !DILocalVariable(name: "st", scope: !2246, file: !2, line: 343, type: !2248)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !2, line: 342, column: 9)
!2247 = distinct !DILexicalBlock(scope: !2238, file: !2, line: 339, column: 11)
!2248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1483, size: 2304, elements: !20)
!2249 = !DILocalVariable(name: "cmp", scope: !2250, file: !2, line: 356, type: !260)
!2250 = distinct !DILexicalBlock(scope: !2238, file: !2, line: 355, column: 7)
!2251 = !DILocation(line: 0, scope: !2228)
!2252 = !DILocation(line: 291, column: 7, scope: !2228)
!2253 = !DILocation(line: 293, column: 12, scope: !2228)
!2254 = !DILocation(line: 296, column: 22, scope: !2228)
!2255 = !DILocation(line: 296, column: 27, scope: !2228)
!2256 = !DILocation(line: 296, column: 20, scope: !2228)
!2257 = !DILocation(line: 296, column: 31, scope: !2228)
!2258 = !DILocation(line: 296, column: 41, scope: !2228)
!2259 = !DILocation(line: 296, column: 49, scope: !2228)
!2260 = !DILocation(line: 0, scope: !1107, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 296, column: 34, scope: !2228)
!2262 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2261)
!2263 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2261)
!2264 = !DILocation(line: 297, column: 7, scope: !2228)
!2265 = !DILocation(line: 300, column: 7, scope: !2228)
!2266 = !DILocation(line: 302, column: 3, scope: !2228)
!2267 = !DILocation(line: 307, column: 9, scope: !2237)
!2268 = !DILocation(line: 307, column: 14, scope: !2237)
!2269 = !DILocation(line: 308, column: 9, scope: !2237)
!2270 = !DILocation(line: 308, column: 14, scope: !2237)
!2271 = !DILocation(line: 0, scope: !2237)
!2272 = !DILocation(line: 309, column: 26, scope: !2237)
!2273 = !DILocation(line: 310, column: 39, scope: !2237)
!2274 = !DILocation(line: 310, column: 28, scope: !2237)
!2275 = !DILocation(line: 311, column: 28, scope: !2237)
!2276 = !DILocation(line: 312, column: 26, scope: !2237)
!2277 = !DILocation(line: 313, column: 55, scope: !2237)
!2278 = !DILocation(line: 313, column: 47, scope: !2237)
!2279 = !DILocation(line: 313, column: 39, scope: !2237)
!2280 = !DILocation(line: 313, column: 28, scope: !2237)
!2281 = !DILocation(line: 314, column: 46, scope: !2237)
!2282 = !DILocation(line: 314, column: 38, scope: !2237)
!2283 = !DILocation(line: 314, column: 28, scope: !2237)
!2284 = !DILocation(line: 315, column: 19, scope: !2237)
!2285 = !DILocation(line: 316, column: 9, scope: !2237)
!2286 = !DILocation(line: 318, column: 37, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 317, column: 11)
!2288 = !DILocation(line: 318, column: 26, scope: !2287)
!2289 = !DILocation(line: 319, column: 37, scope: !2287)
!2290 = !DILocation(line: 319, column: 26, scope: !2287)
!2291 = !DILocation(line: 320, column: 37, scope: !2287)
!2292 = !DILocation(line: 320, column: 26, scope: !2287)
!2293 = !DILocation(line: 321, column: 37, scope: !2287)
!2294 = !DILocation(line: 321, column: 26, scope: !2287)
!2295 = !DILocation(line: 322, column: 37, scope: !2287)
!2296 = !DILocation(line: 322, column: 26, scope: !2287)
!2297 = !DILocation(line: 323, column: 37, scope: !2287)
!2298 = !DILocation(line: 323, column: 26, scope: !2287)
!2299 = !DILocation(line: 325, column: 9, scope: !2237)
!2300 = !DILocation(line: 0, scope: !2287)
!2301 = !DILocation(line: 326, column: 7, scope: !2238)
!2302 = !DILocation(line: 330, column: 20, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2244, file: !2, line: 330, column: 13)
!2304 = !DILocation(line: 330, column: 13, scope: !2244)
!2305 = !DILocation(line: 331, column: 30, scope: !2303)
!2306 = !DILocation(line: 332, column: 30, scope: !2303)
!2307 = !DILocation(line: 331, column: 11, scope: !2303)
!2308 = !DILocation(line: 333, column: 44, scope: !2244)
!2309 = !DILocalVariable(name: "filename", arg: 1, scope: !2310, file: !2, line: 175, type: !265)
!2310 = distinct !DISubprogram(name: "get_mtime", scope: !2, file: !2, line: 175, type: !2311, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!1506, !265}
!2313 = !{!2309, !2314}
!2314 = !DILocalVariable(name: "finfo", scope: !2310, file: !2, line: 177, type: !1483)
!2315 = !DILocation(line: 0, scope: !2310, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 333, column: 33, scope: !2244)
!2317 = !DILocation(line: 177, column: 3, scope: !2310, inlinedAt: !2316)
!2318 = !DILocation(line: 177, column: 15, scope: !2310, inlinedAt: !2316)
!2319 = !DILocation(line: 178, column: 11, scope: !2310, inlinedAt: !2316)
!2320 = !DILocation(line: 178, column: 35, scope: !2310, inlinedAt: !2316)
!2321 = !DILocation(line: 181, column: 1, scope: !2310, inlinedAt: !2316)
!2322 = !DILocation(line: 333, column: 33, scope: !2244)
!2323 = !DILocation(line: 334, column: 44, scope: !2244)
!2324 = !DILocation(line: 334, column: 52, scope: !2244)
!2325 = !DILocation(line: 0, scope: !2310, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 334, column: 33, scope: !2244)
!2327 = !DILocation(line: 177, column: 3, scope: !2310, inlinedAt: !2326)
!2328 = !DILocation(line: 177, column: 15, scope: !2310, inlinedAt: !2326)
!2329 = !DILocation(line: 178, column: 11, scope: !2310, inlinedAt: !2326)
!2330 = !DILocation(line: 178, column: 35, scope: !2310, inlinedAt: !2326)
!2331 = !DILocation(line: 181, column: 1, scope: !2310, inlinedAt: !2326)
!2332 = !DILocation(line: 334, column: 33, scope: !2244)
!2333 = !DILocation(line: 0, scope: !1622, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 333, column: 19, scope: !2244)
!2335 = !DILocation(line: 66, column: 14, scope: !1622, inlinedAt: !2334)
!2336 = !DILocation(line: 66, column: 12, scope: !1622, inlinedAt: !2334)
!2337 = !DILocation(line: 66, column: 45, scope: !1622, inlinedAt: !2334)
!2338 = !DILocation(line: 66, column: 43, scope: !1622, inlinedAt: !2334)
!2339 = !DILocation(line: 0, scope: !2244)
!2340 = !DILocation(line: 335, column: 20, scope: !2244)
!2341 = !DILocation(line: 335, column: 16, scope: !2244)
!2342 = !DILocation(line: 339, column: 18, scope: !2247)
!2343 = !DILocation(line: 339, column: 11, scope: !2238)
!2344 = !DILocation(line: 340, column: 28, scope: !2247)
!2345 = !DILocation(line: 340, column: 9, scope: !2247)
!2346 = !DILocation(line: 343, column: 11, scope: !2246)
!2347 = !DILocation(line: 343, column: 23, scope: !2246)
!2348 = !DILocation(line: 344, column: 25, scope: !2246)
!2349 = !DILocation(line: 344, column: 19, scope: !2246)
!2350 = !DILocation(line: 344, column: 47, scope: !2246)
!2351 = !DILocation(line: 345, column: 19, scope: !2246)
!2352 = !DILocation(line: 345, column: 28, scope: !2246)
!2353 = !DILocation(line: 345, column: 36, scope: !2246)
!2354 = !DILocation(line: 345, column: 43, scope: !2246)
!2355 = !DILocation(line: 345, column: 22, scope: !2246)
!2356 = !DILocation(line: 345, column: 50, scope: !2246)
!2357 = !DILocation(line: 346, column: 19, scope: !2246)
!2358 = !DILocalVariable(name: "a", arg: 1, scope: !2359, file: !2360, line: 86, type: !1604)
!2359 = distinct !DISubprogram(name: "psame_inode", scope: !2360, file: !2360, line: 86, type: !2361, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2363)
!2360 = !DIFile(filename: "./lib/same-inode.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6a49db1c884e7bc93549038e7fb28788")
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!319, !1604, !1604}
!2363 = !{!2358, !2364}
!2364 = !DILocalVariable(name: "b", arg: 2, scope: !2359, file: !2360, line: 86, type: !1604)
!2365 = !DILocation(line: 0, scope: !2359, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 346, column: 22, scope: !2246)
!2367 = !DILocation(line: 90, column: 14, scope: !2359, inlinedAt: !2366)
!2368 = !{!1657, !1612, i64 0}
!2369 = !{!1657, !1612, i64 8}
!2370 = !DILocation(line: 0, scope: !2246)
!2371 = !DILocation(line: 347, column: 9, scope: !2247)
!2372 = !DILocation(line: 351, column: 21, scope: !2238)
!2373 = !DILocation(line: 351, column: 43, scope: !2238)
!2374 = !DILocation(line: 351, column: 35, scope: !2238)
!2375 = !DILocation(line: 0, scope: !1107, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 351, column: 14, scope: !2238)
!2377 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2376)
!2378 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2376)
!2379 = !DILocation(line: 351, column: 57, scope: !2238)
!2380 = !DILocation(line: 351, column: 49, scope: !2238)
!2381 = !DILocation(line: 351, column: 7, scope: !2238)
!2382 = !DILocation(line: 356, column: 28, scope: !2250)
!2383 = !DILocation(line: 356, column: 50, scope: !2250)
!2384 = !DILocation(line: 356, column: 42, scope: !2250)
!2385 = !DILocation(line: 356, column: 19, scope: !2250)
!2386 = !DILocation(line: 0, scope: !2250)
!2387 = !DILocation(line: 357, column: 20, scope: !2250)
!2388 = !DILocation(line: 357, column: 16, scope: !2250)
!2389 = !DILocation(line: 362, column: 3, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !2, line: 362, column: 3)
!2391 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 362, column: 3)
!2392 = !DILocation(line: 0, scope: !2238)
!2393 = !DILocation(line: 363, column: 1, scope: !2228)
!2394 = !DISubprogram(name: "strlen", scope: !1201, file: !1201, line: 407, type: !2395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!264, !265}
!2397 = distinct !DISubprogram(name: "find_int", scope: !2, file: !2, line: 139, type: !2398, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!265, !265}
!2400 = !{!2401, !2402, !2403}
!2401 = !DILocalVariable(name: "string", arg: 1, scope: !2397, file: !2, line: 139, type: !265)
!2402 = !DILocalVariable(name: "p", scope: !2397, file: !2, line: 141, type: !265)
!2403 = !DILocalVariable(name: "number_start", scope: !2397, file: !2, line: 142, type: !265)
!2404 = !DILocation(line: 0, scope: !2397)
!2405 = !DILocation(line: 144, column: 8, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2397, file: !2, line: 144, column: 3)
!2407 = !DILocation(line: 144, scope: !2406)
!2408 = !DILocation(line: 144, column: 20, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2406, file: !2, line: 144, column: 3)
!2410 = !DILocation(line: 144, column: 3, scope: !2406)
!2411 = !DILocation(line: 144, column: 46, scope: !2409)
!2412 = distinct !{!2412, !2410, !2413, !1142}
!2413 = !DILocation(line: 145, column: 5, scope: !2406)
!2414 = !DILocation(line: 147, column: 10, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2397, file: !2, line: 147, column: 7)
!2416 = !DILocation(line: 147, column: 7, scope: !2397)
!2417 = !DILocation(line: 158, column: 18, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2397, file: !2, line: 158, column: 7)
!2419 = !DILocalVariable(name: "c", arg: 1, scope: !2420, file: !2421, line: 233, type: !260)
!2420 = distinct !DISubprogram(name: "c_isdigit", scope: !2421, file: !2421, line: 233, type: !1342, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2422)
!2421 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!2422 = !{!2419}
!2423 = !DILocation(line: 0, scope: !2420, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 158, column: 7, scope: !2418)
!2425 = !DILocation(line: 235, column: 3, scope: !2420, inlinedAt: !2424)
!2426 = !DILocation(line: 158, column: 7, scope: !2397)
!2427 = !DILocation(line: 0, scope: !2418)
!2428 = !DILocation(line: 160, column: 25, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2418, file: !2, line: 159, column: 5)
!2430 = !DILocation(line: 0, scope: !2420, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 160, column: 14, scope: !2429)
!2432 = !DILocation(line: 235, column: 3, scope: !2420, inlinedAt: !2431)
!2433 = !DILocation(line: 160, column: 7, scope: !2429)
!2434 = distinct !{!2434, !2433, !2435, !1142}
!2435 = !DILocation(line: 161, column: 10, scope: !2429)
!2436 = !DILocation(line: 162, column: 14, scope: !2429)
!2437 = !DILocation(line: 162, column: 7, scope: !2429)
!2438 = !DILocation(line: 163, column: 10, scope: !2429)
!2439 = distinct !{!2439, !2437, !2438, !1142}
!2440 = !DILocation(line: 164, column: 12, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2429, file: !2, line: 164, column: 11)
!2442 = !DILocation(line: 164, column: 11, scope: !2429)
!2443 = !DILocation(line: 165, column: 9, scope: !2441)
!2444 = !DILocation(line: 168, column: 22, scope: !2397)
!2445 = !DILocation(line: 168, column: 47, scope: !2397)
!2446 = !DILocation(line: 168, column: 3, scope: !2397)
!2447 = !DISubprogram(name: "stat", scope: !2448, file: !2448, line: 205, type: !2449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2448 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!260, !1088, !2451}
!2451 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2452)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!2453 = !DISubprogram(name: "strcoll", scope: !1201, file: !1201, line: 163, type: !1210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2454 = !DISubprogram(name: "euidaccess", scope: !2455, file: !2455, line: 292, type: !2456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2455 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!260, !265, !260}
!2458 = !DISubprogram(name: "__errno_location", scope: !2459, file: !2459, line: 37, type: !2460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2459 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!2462}
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!2463 = !DISubprogram(name: "geteuid", scope: !2455, file: !2455, line: 700, type: !2464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!1495}
!2466 = !DISubprogram(name: "getegid", scope: !2455, file: !2455, line: 706, type: !2467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!1497}
!2469 = !DISubprogram(name: "strtol", scope: !1205, file: !1205, line: 177, type: !2470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!272, !1088, !2472, !260}
!2472 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !572)
!2473 = !DISubprogram(name: "isatty", scope: !2455, file: !2455, line: 809, type: !2474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!260, !260}
!2476 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !583, file: !583, line: 50, type: !1048, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2477)
!2477 = !{!2478}
!2478 = !DILocalVariable(name: "file", arg: 1, scope: !2476, file: !583, line: 50, type: !265)
!2479 = !DILocation(line: 0, scope: !2476)
!2480 = !DILocation(line: 52, column: 13, scope: !2476)
!2481 = !DILocation(line: 53, column: 1, scope: !2476)
!2482 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !583, file: !583, line: 87, type: !1372, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2483)
!2483 = !{!2484}
!2484 = !DILocalVariable(name: "ignore", arg: 1, scope: !2482, file: !583, line: 87, type: !319)
!2485 = !DILocation(line: 0, scope: !2482)
!2486 = !DILocation(line: 89, column: 16, scope: !2482)
!2487 = !{!2488, !2488, i64 0}
!2488 = !{!"_Bool", !996, i64 0}
!2489 = !DILocation(line: 90, column: 1, scope: !2482)
!2490 = distinct !DISubprogram(name: "close_stdout", scope: !583, file: !583, line: 116, type: !643, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2491)
!2491 = !{!2492}
!2492 = !DILocalVariable(name: "write_error", scope: !2493, file: !583, line: 121, type: !265)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !583, line: 120, column: 5)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !583, line: 118, column: 7)
!2495 = !DILocation(line: 118, column: 21, scope: !2494)
!2496 = !DILocation(line: 118, column: 7, scope: !2494)
!2497 = !DILocation(line: 118, column: 29, scope: !2494)
!2498 = !DILocation(line: 119, column: 7, scope: !2494)
!2499 = !DILocation(line: 119, column: 12, scope: !2494)
!2500 = !{i8 0, i8 2}
!2501 = !DILocation(line: 119, column: 25, scope: !2494)
!2502 = !DILocation(line: 119, column: 28, scope: !2494)
!2503 = !DILocation(line: 119, column: 34, scope: !2494)
!2504 = !DILocation(line: 118, column: 7, scope: !2490)
!2505 = !DILocation(line: 121, column: 33, scope: !2493)
!2506 = !DILocation(line: 0, scope: !2493)
!2507 = !DILocation(line: 122, column: 11, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2493, file: !583, line: 122, column: 11)
!2509 = !DILocation(line: 0, scope: !2508)
!2510 = !DILocation(line: 122, column: 11, scope: !2493)
!2511 = !DILocation(line: 123, column: 9, scope: !2508)
!2512 = !DILocation(line: 126, column: 9, scope: !2508)
!2513 = !DILocation(line: 128, column: 14, scope: !2493)
!2514 = !DILocation(line: 128, column: 7, scope: !2493)
!2515 = !DILocation(line: 133, column: 42, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2490, file: !583, line: 133, column: 7)
!2517 = !DILocation(line: 133, column: 28, scope: !2516)
!2518 = !DILocation(line: 133, column: 50, scope: !2516)
!2519 = !DILocation(line: 133, column: 7, scope: !2490)
!2520 = !DILocation(line: 134, column: 12, scope: !2516)
!2521 = !DILocation(line: 134, column: 5, scope: !2516)
!2522 = !DILocation(line: 135, column: 1, scope: !2490)
!2523 = !DISubprogram(name: "_exit", scope: !2455, file: !2455, line: 624, type: !984, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2524 = distinct !DISubprogram(name: "verror", scope: !598, file: !598, line: 251, type: !2525, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{null, !260, !260, !265, !608}
!2527 = !{!2528, !2529, !2530, !2531}
!2528 = !DILocalVariable(name: "status", arg: 1, scope: !2524, file: !598, line: 251, type: !260)
!2529 = !DILocalVariable(name: "errnum", arg: 2, scope: !2524, file: !598, line: 251, type: !260)
!2530 = !DILocalVariable(name: "message", arg: 3, scope: !2524, file: !598, line: 251, type: !265)
!2531 = !DILocalVariable(name: "args", arg: 4, scope: !2524, file: !598, line: 251, type: !608)
!2532 = !DILocation(line: 0, scope: !2524)
!2533 = !DILocation(line: 261, column: 3, scope: !2524)
!2534 = !DILocation(line: 265, column: 7, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2524, file: !598, line: 265, column: 7)
!2536 = !DILocation(line: 265, column: 7, scope: !2524)
!2537 = !DILocation(line: 266, column: 5, scope: !2535)
!2538 = !DILocation(line: 272, column: 7, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2535, file: !598, line: 268, column: 5)
!2540 = !DILocation(line: 276, column: 3, scope: !2524)
!2541 = !DILocation(line: 282, column: 1, scope: !2524)
!2542 = distinct !DISubprogram(name: "flush_stdout", scope: !598, file: !598, line: 163, type: !643, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2543)
!2543 = !{!2544}
!2544 = !DILocalVariable(name: "stdout_fd", scope: !2542, file: !598, line: 166, type: !260)
!2545 = !DILocation(line: 0, scope: !2542)
!2546 = !DILocalVariable(name: "fd", arg: 1, scope: !2547, file: !598, line: 145, type: !260)
!2547 = distinct !DISubprogram(name: "is_open", scope: !598, file: !598, line: 145, type: !2474, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2548)
!2548 = !{!2546}
!2549 = !DILocation(line: 0, scope: !2547, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 182, column: 25, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2542, file: !598, line: 182, column: 7)
!2552 = !DILocation(line: 157, column: 15, scope: !2547, inlinedAt: !2550)
!2553 = !DILocation(line: 157, column: 12, scope: !2547, inlinedAt: !2550)
!2554 = !DILocation(line: 182, column: 7, scope: !2542)
!2555 = !DILocation(line: 184, column: 5, scope: !2551)
!2556 = !DILocation(line: 185, column: 1, scope: !2542)
!2557 = distinct !DISubprogram(name: "error_tail", scope: !598, file: !598, line: 219, type: !2525, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2558)
!2558 = !{!2559, !2560, !2561, !2562}
!2559 = !DILocalVariable(name: "status", arg: 1, scope: !2557, file: !598, line: 219, type: !260)
!2560 = !DILocalVariable(name: "errnum", arg: 2, scope: !2557, file: !598, line: 219, type: !260)
!2561 = !DILocalVariable(name: "message", arg: 3, scope: !2557, file: !598, line: 219, type: !265)
!2562 = !DILocalVariable(name: "args", arg: 4, scope: !2557, file: !598, line: 219, type: !608)
!2563 = !DILocation(line: 0, scope: !2557)
!2564 = !DILocation(line: 229, column: 13, scope: !2557)
!2565 = !DILocalVariable(name: "__stream", arg: 1, scope: !2566, file: !1084, line: 132, type: !2569)
!2566 = distinct !DISubprogram(name: "vfprintf", scope: !1084, file: !1084, line: 132, type: !2567, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2604)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!260, !2569, !1088, !608}
!2569 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2570)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !2572)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !2573)
!2573 = !{!2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2572, file: !336, line: 51, baseType: !260, size: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2572, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2572, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2572, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2572, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2572, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2572, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2572, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2572, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2572, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2572, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2572, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2572, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2572, file: !336, line: 70, baseType: !2588, size: 64, offset: 832)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2572, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2572, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2572, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2572, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2572, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2572, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2572, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2572, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2572, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2572, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2572, file: !336, line: 93, baseType: !2588, size: 64, offset: 1344)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2572, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2572, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2572, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2572, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!2604 = !{!2565, !2605, !2606}
!2605 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2566, file: !1084, line: 133, type: !1088)
!2606 = !DILocalVariable(name: "__ap", arg: 3, scope: !2566, file: !1084, line: 133, type: !608)
!2607 = !DILocation(line: 0, scope: !2566, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 229, column: 3, scope: !2557)
!2609 = !DILocation(line: 135, column: 10, scope: !2566, inlinedAt: !2608)
!2610 = !DILocation(line: 232, column: 3, scope: !2557)
!2611 = !DILocation(line: 233, column: 7, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2557, file: !598, line: 233, column: 7)
!2613 = !DILocation(line: 233, column: 7, scope: !2557)
!2614 = !DILocalVariable(name: "errnum", arg: 1, scope: !2615, file: !598, line: 188, type: !260)
!2615 = distinct !DISubprogram(name: "print_errno_message", scope: !598, file: !598, line: 188, type: !984, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2616)
!2616 = !{!2614, !2617, !2618}
!2617 = !DILocalVariable(name: "s", scope: !2615, file: !598, line: 190, type: !265)
!2618 = !DILocalVariable(name: "errbuf", scope: !2615, file: !598, line: 193, type: !2619)
!2619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2620)
!2620 = !{!2621}
!2621 = !DISubrange(count: 1024)
!2622 = !DILocation(line: 0, scope: !2615, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 234, column: 5, scope: !2612)
!2624 = !DILocation(line: 193, column: 3, scope: !2615, inlinedAt: !2623)
!2625 = !DILocation(line: 193, column: 8, scope: !2615, inlinedAt: !2623)
!2626 = !DILocation(line: 195, column: 7, scope: !2615, inlinedAt: !2623)
!2627 = !DILocation(line: 207, column: 9, scope: !2628, inlinedAt: !2623)
!2628 = distinct !DILexicalBlock(scope: !2615, file: !598, line: 207, column: 7)
!2629 = !DILocation(line: 207, column: 7, scope: !2615, inlinedAt: !2623)
!2630 = !DILocation(line: 208, column: 9, scope: !2628, inlinedAt: !2623)
!2631 = !DILocation(line: 208, column: 5, scope: !2628, inlinedAt: !2623)
!2632 = !DILocation(line: 214, column: 3, scope: !2615, inlinedAt: !2623)
!2633 = !DILocation(line: 216, column: 1, scope: !2615, inlinedAt: !2623)
!2634 = !DILocation(line: 234, column: 5, scope: !2612)
!2635 = !DILocation(line: 238, column: 3, scope: !2557)
!2636 = !DILocalVariable(name: "__c", arg: 1, scope: !2637, file: !2638, line: 101, type: !260)
!2637 = distinct !DISubprogram(name: "putc_unlocked", scope: !2638, file: !2638, line: 101, type: !2639, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2641)
!2638 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!260, !260, !2570}
!2641 = !{!2636, !2642}
!2642 = !DILocalVariable(name: "__stream", arg: 2, scope: !2637, file: !2638, line: 101, type: !2570)
!2643 = !DILocation(line: 0, scope: !2637, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 238, column: 3, scope: !2557)
!2645 = !DILocation(line: 103, column: 10, scope: !2637, inlinedAt: !2644)
!2646 = !{!2647, !995, i64 40}
!2647 = !{!"_IO_FILE", !1096, i64 0, !995, i64 8, !995, i64 16, !995, i64 24, !995, i64 32, !995, i64 40, !995, i64 48, !995, i64 56, !995, i64 64, !995, i64 72, !995, i64 80, !995, i64 88, !995, i64 96, !995, i64 104, !1096, i64 112, !1096, i64 116, !1612, i64 120, !1137, i64 128, !996, i64 130, !996, i64 131, !995, i64 136, !1612, i64 144, !995, i64 152, !995, i64 160, !995, i64 168, !995, i64 176, !1612, i64 184, !1096, i64 192, !996, i64 196}
!2648 = !{!2647, !995, i64 48}
!2649 = !{!"branch_weights", i32 2000, i32 1}
!2650 = !DILocation(line: 240, column: 3, scope: !2557)
!2651 = !DILocation(line: 241, column: 7, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2557, file: !598, line: 241, column: 7)
!2653 = !DILocation(line: 241, column: 7, scope: !2557)
!2654 = !DILocation(line: 242, column: 5, scope: !2652)
!2655 = !DILocation(line: 243, column: 1, scope: !2557)
!2656 = !DISubprogram(name: "__vfprintf_chk", scope: !1084, file: !1084, line: 96, type: !2657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!260, !2569, !260, !1088, !608}
!2659 = !DISubprogram(name: "strerror_r", scope: !1201, file: !1201, line: 444, type: !2660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!258, !260, !258, !262}
!2662 = !DISubprogram(name: "__overflow", scope: !1090, file: !1090, line: 886, type: !2663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!260, !2570, !260}
!2665 = !DISubprogram(name: "fflush_unlocked", scope: !1090, file: !1090, line: 239, type: !2666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!260, !2570}
!2668 = !DISubprogram(name: "fcntl", scope: !2669, file: !2669, line: 149, type: !2670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2669 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!260, !260, !260, null}
!2672 = distinct !DISubprogram(name: "error", scope: !598, file: !598, line: 285, type: !2673, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2675)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{null, !260, !260, !265, null}
!2675 = !{!2676, !2677, !2678, !2679}
!2676 = !DILocalVariable(name: "status", arg: 1, scope: !2672, file: !598, line: 285, type: !260)
!2677 = !DILocalVariable(name: "errnum", arg: 2, scope: !2672, file: !598, line: 285, type: !260)
!2678 = !DILocalVariable(name: "message", arg: 3, scope: !2672, file: !598, line: 285, type: !265)
!2679 = !DILocalVariable(name: "ap", scope: !2672, file: !598, line: 287, type: !2680)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1090, line: 52, baseType: !2681)
!2681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1325, line: 14, baseType: !2682)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !612, baseType: !2683)
!2683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 192, elements: !204)
!2684 = !DILocation(line: 0, scope: !2672)
!2685 = !DILocation(line: 287, column: 3, scope: !2672)
!2686 = !DILocation(line: 287, column: 11, scope: !2672)
!2687 = !DILocation(line: 288, column: 3, scope: !2672)
!2688 = !DILocation(line: 289, column: 3, scope: !2672)
!2689 = !DILocation(line: 290, column: 3, scope: !2672)
!2690 = !DILocation(line: 291, column: 1, scope: !2672)
!2691 = !DILocation(line: 0, scope: !605)
!2692 = !DILocation(line: 302, column: 7, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !605, file: !598, line: 302, column: 7)
!2694 = !DILocation(line: 302, column: 7, scope: !605)
!2695 = !DILocation(line: 307, column: 11, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !598, line: 307, column: 11)
!2697 = distinct !DILexicalBlock(scope: !2693, file: !598, line: 303, column: 5)
!2698 = !DILocation(line: 307, column: 27, scope: !2696)
!2699 = !DILocation(line: 308, column: 11, scope: !2696)
!2700 = !DILocation(line: 308, column: 28, scope: !2696)
!2701 = !DILocation(line: 308, column: 25, scope: !2696)
!2702 = !DILocation(line: 309, column: 15, scope: !2696)
!2703 = !DILocation(line: 309, column: 33, scope: !2696)
!2704 = !DILocation(line: 310, column: 19, scope: !2696)
!2705 = !DILocation(line: 311, column: 22, scope: !2696)
!2706 = !DILocation(line: 311, column: 56, scope: !2696)
!2707 = !DILocation(line: 307, column: 11, scope: !2697)
!2708 = !DILocation(line: 316, column: 21, scope: !2697)
!2709 = !DILocation(line: 317, column: 23, scope: !2697)
!2710 = !DILocation(line: 318, column: 5, scope: !2697)
!2711 = !DILocation(line: 327, column: 3, scope: !605)
!2712 = !DILocation(line: 331, column: 7, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !605, file: !598, line: 331, column: 7)
!2714 = !DILocation(line: 331, column: 7, scope: !605)
!2715 = !DILocation(line: 332, column: 5, scope: !2713)
!2716 = !DILocation(line: 338, column: 7, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2713, file: !598, line: 334, column: 5)
!2718 = !DILocation(line: 346, column: 3, scope: !605)
!2719 = !DILocation(line: 350, column: 3, scope: !605)
!2720 = !DILocation(line: 356, column: 1, scope: !605)
!2721 = distinct !DISubprogram(name: "error_at_line", scope: !598, file: !598, line: 359, type: !2722, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2724)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{null, !260, !260, !265, !222, !265, null}
!2724 = !{!2725, !2726, !2727, !2728, !2729, !2730}
!2725 = !DILocalVariable(name: "status", arg: 1, scope: !2721, file: !598, line: 359, type: !260)
!2726 = !DILocalVariable(name: "errnum", arg: 2, scope: !2721, file: !598, line: 359, type: !260)
!2727 = !DILocalVariable(name: "file_name", arg: 3, scope: !2721, file: !598, line: 359, type: !265)
!2728 = !DILocalVariable(name: "line_number", arg: 4, scope: !2721, file: !598, line: 360, type: !222)
!2729 = !DILocalVariable(name: "message", arg: 5, scope: !2721, file: !598, line: 360, type: !265)
!2730 = !DILocalVariable(name: "ap", scope: !2721, file: !598, line: 362, type: !2680)
!2731 = !DILocation(line: 0, scope: !2721)
!2732 = !DILocation(line: 362, column: 3, scope: !2721)
!2733 = !DILocation(line: 362, column: 11, scope: !2721)
!2734 = !DILocation(line: 363, column: 3, scope: !2721)
!2735 = !DILocation(line: 364, column: 3, scope: !2721)
!2736 = !DILocation(line: 366, column: 3, scope: !2721)
!2737 = !DILocation(line: 367, column: 1, scope: !2721)
!2738 = distinct !DISubprogram(name: "getprogname", scope: !905, file: !905, line: 54, type: !2739, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !904, retainedNodes: !1082)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!265}
!2741 = !DILocation(line: 58, column: 10, scope: !2738)
!2742 = !DILocation(line: 58, column: 3, scope: !2738)
!2743 = distinct !DISubprogram(name: "umaxtostr", scope: !2744, file: !2744, line: 29, type: !2745, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !906, retainedNodes: !2747)
!2744 = !DIFile(filename: "./lib/anytostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e5b8bc0749223f86edfe264a04f25de0")
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!258, !909, !258}
!2747 = !{!2748, !2749, !2750}
!2748 = !DILocalVariable(name: "i", arg: 1, scope: !2743, file: !2744, line: 29, type: !909)
!2749 = !DILocalVariable(name: "buf", arg: 2, scope: !2743, file: !2744, line: 29, type: !258)
!2750 = !DILocalVariable(name: "p", scope: !2743, file: !2744, line: 31, type: !258)
!2751 = !DILocation(line: 0, scope: !2743)
!2752 = !DILocation(line: 31, column: 17, scope: !2743)
!2753 = !DILocation(line: 32, column: 6, scope: !2743)
!2754 = !DILocation(line: 45, column: 24, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !2744, line: 43, column: 5)
!2756 = distinct !DILexicalBlock(scope: !2743, file: !2744, line: 34, column: 7)
!2757 = !DILocation(line: 45, column: 16, scope: !2755)
!2758 = !DILocation(line: 45, column: 10, scope: !2755)
!2759 = !DILocation(line: 45, column: 14, scope: !2755)
!2760 = !DILocation(line: 46, column: 17, scope: !2755)
!2761 = !DILocation(line: 46, column: 24, scope: !2755)
!2762 = !DILocation(line: 45, column: 9, scope: !2755)
!2763 = distinct !{!2763, !2764, !2765, !1142}
!2764 = !DILocation(line: 44, column: 7, scope: !2755)
!2765 = !DILocation(line: 46, column: 28, scope: !2755)
!2766 = !DILocation(line: 49, column: 3, scope: !2743)
!2767 = distinct !DISubprogram(name: "set_program_name", scope: !648, file: !648, line: 37, type: !1048, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !2768)
!2768 = !{!2769, !2770, !2771}
!2769 = !DILocalVariable(name: "argv0", arg: 1, scope: !2767, file: !648, line: 37, type: !265)
!2770 = !DILocalVariable(name: "slash", scope: !2767, file: !648, line: 44, type: !265)
!2771 = !DILocalVariable(name: "base", scope: !2767, file: !648, line: 45, type: !265)
!2772 = !DILocation(line: 0, scope: !2767)
!2773 = !DILocation(line: 44, column: 23, scope: !2767)
!2774 = !DILocation(line: 45, column: 22, scope: !2767)
!2775 = !DILocation(line: 46, column: 17, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2767, file: !648, line: 46, column: 7)
!2777 = !DILocation(line: 46, column: 9, scope: !2776)
!2778 = !DILocation(line: 46, column: 25, scope: !2776)
!2779 = !DILocation(line: 46, column: 40, scope: !2776)
!2780 = !DILocalVariable(name: "__s1", arg: 1, scope: !2781, file: !1108, line: 974, type: !1229)
!2781 = distinct !DISubprogram(name: "memeq", scope: !1108, file: !1108, line: 974, type: !2782, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!319, !1229, !1229, !262}
!2784 = !{!2780, !2785, !2786}
!2785 = !DILocalVariable(name: "__s2", arg: 2, scope: !2781, file: !1108, line: 974, type: !1229)
!2786 = !DILocalVariable(name: "__n", arg: 3, scope: !2781, file: !1108, line: 974, type: !262)
!2787 = !DILocation(line: 0, scope: !2781, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 46, column: 28, scope: !2776)
!2789 = !DILocation(line: 976, column: 11, scope: !2781, inlinedAt: !2788)
!2790 = !DILocation(line: 976, column: 10, scope: !2781, inlinedAt: !2788)
!2791 = !DILocation(line: 46, column: 7, scope: !2767)
!2792 = !DILocation(line: 49, column: 11, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !648, line: 49, column: 11)
!2794 = distinct !DILexicalBlock(scope: !2776, file: !648, line: 47, column: 5)
!2795 = !DILocation(line: 49, column: 36, scope: !2793)
!2796 = !DILocation(line: 49, column: 11, scope: !2794)
!2797 = !DILocation(line: 65, column: 16, scope: !2767)
!2798 = !DILocation(line: 71, column: 27, scope: !2767)
!2799 = !DILocation(line: 74, column: 33, scope: !2767)
!2800 = !DILocation(line: 76, column: 1, scope: !2767)
!2801 = !DISubprogram(name: "strrchr", scope: !1201, file: !1201, line: 273, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2802 = !DILocation(line: 0, scope: !657)
!2803 = !DILocation(line: 40, column: 29, scope: !657)
!2804 = !DILocation(line: 41, column: 19, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !657, file: !658, line: 41, column: 7)
!2806 = !DILocation(line: 41, column: 7, scope: !657)
!2807 = !DILocation(line: 47, column: 3, scope: !657)
!2808 = !DILocation(line: 48, column: 3, scope: !657)
!2809 = !DILocation(line: 48, column: 13, scope: !657)
!2810 = !DILocalVariable(name: "ps", arg: 1, scope: !2811, file: !2812, line: 1135, type: !2815)
!2811 = distinct !DISubprogram(name: "mbszero", scope: !2812, file: !2812, line: 1135, type: !2813, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !2816)
!2812 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2813 = !DISubroutineType(types: !2814)
!2814 = !{null, !2815}
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!2816 = !{!2810}
!2817 = !DILocation(line: 0, scope: !2811, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 48, column: 18, scope: !657)
!2819 = !DILocalVariable(name: "__dest", arg: 1, scope: !2820, file: !2821, line: 57, type: !259)
!2820 = distinct !DISubprogram(name: "memset", scope: !2821, file: !2821, line: 57, type: !2822, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !2824)
!2821 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!259, !259, !260, !262}
!2824 = !{!2819, !2825, !2826}
!2825 = !DILocalVariable(name: "__ch", arg: 2, scope: !2820, file: !2821, line: 57, type: !260)
!2826 = !DILocalVariable(name: "__len", arg: 3, scope: !2820, file: !2821, line: 57, type: !262)
!2827 = !DILocation(line: 0, scope: !2820, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 1137, column: 3, scope: !2811, inlinedAt: !2818)
!2829 = !DILocation(line: 59, column: 10, scope: !2820, inlinedAt: !2828)
!2830 = !DILocation(line: 49, column: 7, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !657, file: !658, line: 49, column: 7)
!2832 = !DILocation(line: 49, column: 39, scope: !2831)
!2833 = !DILocation(line: 49, column: 44, scope: !2831)
!2834 = !DILocation(line: 54, column: 1, scope: !657)
!2835 = !DISubprogram(name: "mbrtoc32", scope: !669, file: !669, line: 57, type: !2836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!262, !2838, !1088, !262, !2840}
!2838 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2839)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2815)
!2841 = distinct !DISubprogram(name: "clone_quoting_options", scope: !688, file: !688, line: 113, type: !2842, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !2845)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!2844, !2844}
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!2845 = !{!2846, !2847, !2848}
!2846 = !DILocalVariable(name: "o", arg: 1, scope: !2841, file: !688, line: 113, type: !2844)
!2847 = !DILocalVariable(name: "saved_errno", scope: !2841, file: !688, line: 115, type: !260)
!2848 = !DILocalVariable(name: "p", scope: !2841, file: !688, line: 116, type: !2844)
!2849 = !DILocation(line: 0, scope: !2841)
!2850 = !DILocation(line: 115, column: 21, scope: !2841)
!2851 = !DILocation(line: 116, column: 40, scope: !2841)
!2852 = !DILocation(line: 116, column: 31, scope: !2841)
!2853 = !DILocation(line: 118, column: 9, scope: !2841)
!2854 = !DILocation(line: 119, column: 3, scope: !2841)
!2855 = distinct !DISubprogram(name: "get_quoting_style", scope: !688, file: !688, line: 124, type: !2856, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !2860)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!714, !2858}
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !741)
!2860 = !{!2861}
!2861 = !DILocalVariable(name: "o", arg: 1, scope: !2855, file: !688, line: 124, type: !2858)
!2862 = !DILocation(line: 0, scope: !2855)
!2863 = !DILocation(line: 126, column: 11, scope: !2855)
!2864 = !DILocation(line: 126, column: 46, scope: !2855)
!2865 = !{!2866, !996, i64 0}
!2866 = !{!"quoting_options", !996, i64 0, !1096, i64 4, !996, i64 8, !995, i64 40, !995, i64 48}
!2867 = !DILocation(line: 126, column: 3, scope: !2855)
!2868 = distinct !DISubprogram(name: "set_quoting_style", scope: !688, file: !688, line: 132, type: !2869, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !2871)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{null, !2844, !714}
!2871 = !{!2872, !2873}
!2872 = !DILocalVariable(name: "o", arg: 1, scope: !2868, file: !688, line: 132, type: !2844)
!2873 = !DILocalVariable(name: "s", arg: 2, scope: !2868, file: !688, line: 132, type: !714)
!2874 = !DILocation(line: 0, scope: !2868)
!2875 = !DILocation(line: 134, column: 4, scope: !2868)
!2876 = !DILocation(line: 134, column: 45, scope: !2868)
!2877 = !DILocation(line: 135, column: 1, scope: !2868)
!2878 = distinct !DISubprogram(name: "set_char_quoting", scope: !688, file: !688, line: 143, type: !2879, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !2881)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!260, !2844, !4, !260}
!2881 = !{!2882, !2883, !2884, !2885, !2886, !2888, !2889}
!2882 = !DILocalVariable(name: "o", arg: 1, scope: !2878, file: !688, line: 143, type: !2844)
!2883 = !DILocalVariable(name: "c", arg: 2, scope: !2878, file: !688, line: 143, type: !4)
!2884 = !DILocalVariable(name: "i", arg: 3, scope: !2878, file: !688, line: 143, type: !260)
!2885 = !DILocalVariable(name: "uc", scope: !2878, file: !688, line: 145, type: !267)
!2886 = !DILocalVariable(name: "p", scope: !2878, file: !688, line: 146, type: !2887)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!2888 = !DILocalVariable(name: "shift", scope: !2878, file: !688, line: 148, type: !260)
!2889 = !DILocalVariable(name: "r", scope: !2878, file: !688, line: 149, type: !222)
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
!2903 = distinct !DISubprogram(name: "set_quoting_flags", scope: !688, file: !688, line: 159, type: !2904, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !2906)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!260, !2844, !260}
!2906 = !{!2907, !2908, !2909}
!2907 = !DILocalVariable(name: "o", arg: 1, scope: !2903, file: !688, line: 159, type: !2844)
!2908 = !DILocalVariable(name: "i", arg: 2, scope: !2903, file: !688, line: 159, type: !260)
!2909 = !DILocalVariable(name: "r", scope: !2903, file: !688, line: 163, type: !260)
!2910 = !DILocation(line: 0, scope: !2903)
!2911 = !DILocation(line: 161, column: 8, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2903, file: !688, line: 161, column: 7)
!2913 = !DILocation(line: 161, column: 7, scope: !2903)
!2914 = !DILocation(line: 163, column: 14, scope: !2903)
!2915 = !{!2866, !1096, i64 4}
!2916 = !DILocation(line: 164, column: 12, scope: !2903)
!2917 = !DILocation(line: 165, column: 3, scope: !2903)
!2918 = distinct !DISubprogram(name: "set_custom_quoting", scope: !688, file: !688, line: 169, type: !2919, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{null, !2844, !265, !265}
!2921 = !{!2922, !2923, !2924}
!2922 = !DILocalVariable(name: "o", arg: 1, scope: !2918, file: !688, line: 169, type: !2844)
!2923 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2918, file: !688, line: 170, type: !265)
!2924 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2918, file: !688, line: 170, type: !265)
!2925 = !DILocation(line: 0, scope: !2918)
!2926 = !DILocation(line: 172, column: 8, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2918, file: !688, line: 172, column: 7)
!2928 = !DILocation(line: 172, column: 7, scope: !2918)
!2929 = !DILocation(line: 174, column: 12, scope: !2918)
!2930 = !DILocation(line: 175, column: 8, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2918, file: !688, line: 175, column: 7)
!2932 = !DILocation(line: 175, column: 19, scope: !2931)
!2933 = !DILocation(line: 176, column: 5, scope: !2931)
!2934 = !DILocation(line: 177, column: 6, scope: !2918)
!2935 = !DILocation(line: 177, column: 17, scope: !2918)
!2936 = !{!2866, !995, i64 40}
!2937 = !DILocation(line: 178, column: 6, scope: !2918)
!2938 = !DILocation(line: 178, column: 18, scope: !2918)
!2939 = !{!2866, !995, i64 48}
!2940 = !DILocation(line: 179, column: 1, scope: !2918)
!2941 = !DISubprogram(name: "abort", scope: !1205, file: !1205, line: 598, type: !643, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!2942 = distinct !DISubprogram(name: "quotearg_buffer", scope: !688, file: !688, line: 774, type: !2943, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!262, !258, !262, !265, !262, !2858}
!2945 = !{!2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953}
!2946 = !DILocalVariable(name: "buffer", arg: 1, scope: !2942, file: !688, line: 774, type: !258)
!2947 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2942, file: !688, line: 774, type: !262)
!2948 = !DILocalVariable(name: "arg", arg: 3, scope: !2942, file: !688, line: 775, type: !265)
!2949 = !DILocalVariable(name: "argsize", arg: 4, scope: !2942, file: !688, line: 775, type: !262)
!2950 = !DILocalVariable(name: "o", arg: 5, scope: !2942, file: !688, line: 776, type: !2858)
!2951 = !DILocalVariable(name: "p", scope: !2942, file: !688, line: 778, type: !2858)
!2952 = !DILocalVariable(name: "saved_errno", scope: !2942, file: !688, line: 779, type: !260)
!2953 = !DILocalVariable(name: "r", scope: !2942, file: !688, line: 780, type: !262)
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
!2965 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !688, file: !688, line: 251, type: !2966, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !2970)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!262, !258, !262, !265, !262, !714, !260, !2968, !265, !265}
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!2970 = !{!2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2995, !2997, !3000, !3001, !3002, !3003, !3006, !3007, !3010, !3014, !3015, !3023, !3026, !3027, !3029, !3030, !3031, !3032}
!2971 = !DILocalVariable(name: "buffer", arg: 1, scope: !2965, file: !688, line: 251, type: !258)
!2972 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2965, file: !688, line: 251, type: !262)
!2973 = !DILocalVariable(name: "arg", arg: 3, scope: !2965, file: !688, line: 252, type: !265)
!2974 = !DILocalVariable(name: "argsize", arg: 4, scope: !2965, file: !688, line: 252, type: !262)
!2975 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2965, file: !688, line: 253, type: !714)
!2976 = !DILocalVariable(name: "flags", arg: 6, scope: !2965, file: !688, line: 253, type: !260)
!2977 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2965, file: !688, line: 254, type: !2968)
!2978 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2965, file: !688, line: 255, type: !265)
!2979 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2965, file: !688, line: 256, type: !265)
!2980 = !DILocalVariable(name: "unibyte_locale", scope: !2965, file: !688, line: 258, type: !319)
!2981 = !DILocalVariable(name: "len", scope: !2965, file: !688, line: 260, type: !262)
!2982 = !DILocalVariable(name: "orig_buffersize", scope: !2965, file: !688, line: 261, type: !262)
!2983 = !DILocalVariable(name: "quote_string", scope: !2965, file: !688, line: 262, type: !265)
!2984 = !DILocalVariable(name: "quote_string_len", scope: !2965, file: !688, line: 263, type: !262)
!2985 = !DILocalVariable(name: "backslash_escapes", scope: !2965, file: !688, line: 264, type: !319)
!2986 = !DILocalVariable(name: "elide_outer_quotes", scope: !2965, file: !688, line: 265, type: !319)
!2987 = !DILocalVariable(name: "encountered_single_quote", scope: !2965, file: !688, line: 266, type: !319)
!2988 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2965, file: !688, line: 267, type: !319)
!2989 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2965, file: !688, line: 309, type: !319)
!2990 = !DILocalVariable(name: "lq", scope: !2991, file: !688, line: 361, type: !265)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !688, line: 361, column: 11)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !688, line: 360, column: 13)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !688, line: 333, column: 7)
!2994 = distinct !DILexicalBlock(scope: !2965, file: !688, line: 312, column: 5)
!2995 = !DILocalVariable(name: "i", scope: !2996, file: !688, line: 395, type: !262)
!2996 = distinct !DILexicalBlock(scope: !2965, file: !688, line: 395, column: 3)
!2997 = !DILocalVariable(name: "is_right_quote", scope: !2998, file: !688, line: 397, type: !319)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !688, line: 396, column: 5)
!2999 = distinct !DILexicalBlock(scope: !2996, file: !688, line: 395, column: 3)
!3000 = !DILocalVariable(name: "escaping", scope: !2998, file: !688, line: 398, type: !319)
!3001 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2998, file: !688, line: 399, type: !319)
!3002 = !DILocalVariable(name: "c", scope: !2998, file: !688, line: 417, type: !267)
!3003 = !DILocalVariable(name: "m", scope: !3004, file: !688, line: 598, type: !262)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !688, line: 596, column: 11)
!3005 = distinct !DILexicalBlock(scope: !2998, file: !688, line: 419, column: 9)
!3006 = !DILocalVariable(name: "printable", scope: !3004, file: !688, line: 600, type: !319)
!3007 = !DILocalVariable(name: "mbs", scope: !3008, file: !688, line: 609, type: !775)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !688, line: 608, column: 15)
!3009 = distinct !DILexicalBlock(scope: !3004, file: !688, line: 602, column: 17)
!3010 = !DILocalVariable(name: "w", scope: !3011, file: !688, line: 618, type: !668)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !688, line: 617, column: 19)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !688, line: 616, column: 17)
!3013 = distinct !DILexicalBlock(scope: !3008, file: !688, line: 616, column: 17)
!3014 = !DILocalVariable(name: "bytes", scope: !3011, file: !688, line: 619, type: !262)
!3015 = !DILocalVariable(name: "j", scope: !3016, file: !688, line: 648, type: !262)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !688, line: 648, column: 29)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !688, line: 647, column: 27)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !688, line: 645, column: 29)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !688, line: 636, column: 23)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !688, line: 628, column: 30)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !688, line: 623, column: 30)
!3022 = distinct !DILexicalBlock(scope: !3011, file: !688, line: 621, column: 25)
!3023 = !DILocalVariable(name: "ilim", scope: !3024, file: !688, line: 674, type: !262)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !688, line: 671, column: 15)
!3025 = distinct !DILexicalBlock(scope: !3004, file: !688, line: 670, column: 17)
!3026 = !DILabel(scope: !2965, name: "process_input", file: !688, line: 308)
!3027 = !DILabel(scope: !3028, name: "c_and_shell_escape", file: !688, line: 502)
!3028 = distinct !DILexicalBlock(scope: !3005, file: !688, line: 478, column: 9)
!3029 = !DILabel(scope: !3028, name: "c_escape", file: !688, line: 507)
!3030 = !DILabel(scope: !2998, name: "store_escape", file: !688, line: 709)
!3031 = !DILabel(scope: !2998, name: "store_c", file: !688, line: 712)
!3032 = !DILabel(scope: !2965, name: "force_outer_quoting_style", file: !688, line: 753)
!3033 = !DILocation(line: 0, scope: !2965)
!3034 = !DILocation(line: 258, column: 25, scope: !2965)
!3035 = !DILocation(line: 258, column: 36, scope: !2965)
!3036 = !DILocation(line: 265, column: 8, scope: !2965)
!3037 = !DILocation(line: 267, column: 3, scope: !2965)
!3038 = !DILocation(line: 261, column: 10, scope: !2965)
!3039 = !DILocation(line: 262, column: 15, scope: !2965)
!3040 = !DILocation(line: 263, column: 10, scope: !2965)
!3041 = !DILocation(line: 264, column: 8, scope: !2965)
!3042 = !DILocation(line: 266, column: 8, scope: !2965)
!3043 = !DILocation(line: 267, column: 8, scope: !2965)
!3044 = !DILocation(line: 308, column: 2, scope: !2965)
!3045 = !DILocation(line: 311, column: 3, scope: !2965)
!3046 = !DILocation(line: 318, column: 11, scope: !2994)
!3047 = !DILocation(line: 318, column: 12, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2994, file: !688, line: 318, column: 11)
!3049 = !DILocation(line: 319, column: 9, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !688, line: 319, column: 9)
!3051 = distinct !DILexicalBlock(scope: !3048, file: !688, line: 319, column: 9)
!3052 = !DILocation(line: 319, column: 9, scope: !3051)
!3053 = !DILocation(line: 0, scope: !766, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 357, column: 26, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !688, line: 335, column: 11)
!3056 = distinct !DILexicalBlock(scope: !2993, file: !688, line: 334, column: 13)
!3057 = !DILocation(line: 199, column: 29, scope: !766, inlinedAt: !3054)
!3058 = !DILocation(line: 201, column: 19, scope: !3059, inlinedAt: !3054)
!3059 = distinct !DILexicalBlock(scope: !766, file: !688, line: 201, column: 7)
!3060 = !DILocation(line: 201, column: 7, scope: !766, inlinedAt: !3054)
!3061 = !DILocation(line: 229, column: 3, scope: !766, inlinedAt: !3054)
!3062 = !DILocation(line: 230, column: 3, scope: !766, inlinedAt: !3054)
!3063 = !DILocation(line: 230, column: 13, scope: !766, inlinedAt: !3054)
!3064 = !DILocalVariable(name: "ps", arg: 1, scope: !3065, file: !2812, line: 1135, type: !3068)
!3065 = distinct !DISubprogram(name: "mbszero", scope: !2812, file: !2812, line: 1135, type: !3066, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3069)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{null, !3068}
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!3069 = !{!3064}
!3070 = !DILocation(line: 0, scope: !3065, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 230, column: 18, scope: !766, inlinedAt: !3054)
!3072 = !DILocalVariable(name: "__dest", arg: 1, scope: !3073, file: !2821, line: 57, type: !259)
!3073 = distinct !DISubprogram(name: "memset", scope: !2821, file: !2821, line: 57, type: !2822, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3074)
!3074 = !{!3072, !3075, !3076}
!3075 = !DILocalVariable(name: "__ch", arg: 2, scope: !3073, file: !2821, line: 57, type: !260)
!3076 = !DILocalVariable(name: "__len", arg: 3, scope: !3073, file: !2821, line: 57, type: !262)
!3077 = !DILocation(line: 0, scope: !3073, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 1137, column: 3, scope: !3065, inlinedAt: !3071)
!3079 = !DILocation(line: 59, column: 10, scope: !3073, inlinedAt: !3078)
!3080 = !DILocation(line: 231, column: 7, scope: !3081, inlinedAt: !3054)
!3081 = distinct !DILexicalBlock(scope: !766, file: !688, line: 231, column: 7)
!3082 = !DILocation(line: 231, column: 40, scope: !3081, inlinedAt: !3054)
!3083 = !DILocation(line: 231, column: 45, scope: !3081, inlinedAt: !3054)
!3084 = !DILocation(line: 235, column: 1, scope: !766, inlinedAt: !3054)
!3085 = !DILocation(line: 0, scope: !766, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 358, column: 27, scope: !3055)
!3087 = !DILocation(line: 199, column: 29, scope: !766, inlinedAt: !3086)
!3088 = !DILocation(line: 201, column: 19, scope: !3059, inlinedAt: !3086)
!3089 = !DILocation(line: 201, column: 7, scope: !766, inlinedAt: !3086)
!3090 = !DILocation(line: 229, column: 3, scope: !766, inlinedAt: !3086)
!3091 = !DILocation(line: 230, column: 3, scope: !766, inlinedAt: !3086)
!3092 = !DILocation(line: 230, column: 13, scope: !766, inlinedAt: !3086)
!3093 = !DILocation(line: 0, scope: !3065, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 230, column: 18, scope: !766, inlinedAt: !3086)
!3095 = !DILocation(line: 0, scope: !3073, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 1137, column: 3, scope: !3065, inlinedAt: !3094)
!3097 = !DILocation(line: 59, column: 10, scope: !3073, inlinedAt: !3096)
!3098 = !DILocation(line: 231, column: 7, scope: !3081, inlinedAt: !3086)
!3099 = !DILocation(line: 231, column: 40, scope: !3081, inlinedAt: !3086)
!3100 = !DILocation(line: 231, column: 45, scope: !3081, inlinedAt: !3086)
!3101 = !DILocation(line: 235, column: 1, scope: !766, inlinedAt: !3086)
!3102 = !DILocation(line: 360, column: 14, scope: !2992)
!3103 = !DILocation(line: 360, column: 13, scope: !2993)
!3104 = !DILocation(line: 0, scope: !2991)
!3105 = !DILocation(line: 361, column: 45, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !2991, file: !688, line: 361, column: 11)
!3107 = !DILocation(line: 361, column: 11, scope: !2991)
!3108 = !DILocation(line: 362, column: 13, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !688, line: 362, column: 13)
!3110 = distinct !DILexicalBlock(scope: !3106, file: !688, line: 362, column: 13)
!3111 = !DILocation(line: 362, column: 13, scope: !3110)
!3112 = !DILocation(line: 361, column: 52, scope: !3106)
!3113 = distinct !{!3113, !3107, !3114, !1142}
!3114 = !DILocation(line: 362, column: 13, scope: !2991)
!3115 = !DILocation(line: 260, column: 10, scope: !2965)
!3116 = !DILocation(line: 365, column: 28, scope: !2993)
!3117 = !DILocation(line: 367, column: 7, scope: !2994)
!3118 = !DILocation(line: 370, column: 7, scope: !2994)
!3119 = !DILocation(line: 373, column: 7, scope: !2994)
!3120 = !DILocation(line: 376, column: 12, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !2994, file: !688, line: 376, column: 11)
!3122 = !DILocation(line: 376, column: 11, scope: !2994)
!3123 = !DILocation(line: 381, column: 12, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !2994, file: !688, line: 381, column: 11)
!3125 = !DILocation(line: 381, column: 11, scope: !2994)
!3126 = !DILocation(line: 382, column: 9, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !688, line: 382, column: 9)
!3128 = distinct !DILexicalBlock(scope: !3124, file: !688, line: 382, column: 9)
!3129 = !DILocation(line: 382, column: 9, scope: !3128)
!3130 = !DILocation(line: 389, column: 7, scope: !2994)
!3131 = !DILocation(line: 392, column: 7, scope: !2994)
!3132 = !DILocation(line: 0, scope: !2996)
!3133 = !DILocation(line: 395, column: 8, scope: !2996)
!3134 = !DILocation(line: 309, column: 8, scope: !2965)
!3135 = !DILocation(line: 395, scope: !2996)
!3136 = !DILocation(line: 395, column: 34, scope: !2999)
!3137 = !DILocation(line: 395, column: 26, scope: !2999)
!3138 = !DILocation(line: 395, column: 48, scope: !2999)
!3139 = !DILocation(line: 395, column: 55, scope: !2999)
!3140 = !DILocation(line: 395, column: 3, scope: !2996)
!3141 = !DILocation(line: 395, column: 67, scope: !2999)
!3142 = !DILocation(line: 0, scope: !2998)
!3143 = !DILocation(line: 402, column: 11, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !2998, file: !688, line: 401, column: 11)
!3145 = !DILocation(line: 404, column: 17, scope: !3144)
!3146 = !DILocation(line: 405, column: 39, scope: !3144)
!3147 = !DILocation(line: 409, column: 32, scope: !3144)
!3148 = !DILocation(line: 405, column: 19, scope: !3144)
!3149 = !DILocation(line: 405, column: 15, scope: !3144)
!3150 = !DILocation(line: 410, column: 11, scope: !3144)
!3151 = !DILocation(line: 410, column: 25, scope: !3144)
!3152 = !DILocalVariable(name: "__s1", arg: 1, scope: !3153, file: !1108, line: 974, type: !1229)
!3153 = distinct !DISubprogram(name: "memeq", scope: !1108, file: !1108, line: 974, type: !2782, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3154)
!3154 = !{!3152, !3155, !3156}
!3155 = !DILocalVariable(name: "__s2", arg: 2, scope: !3153, file: !1108, line: 974, type: !1229)
!3156 = !DILocalVariable(name: "__n", arg: 3, scope: !3153, file: !1108, line: 974, type: !262)
!3157 = !DILocation(line: 0, scope: !3153, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 410, column: 14, scope: !3144)
!3159 = !DILocation(line: 976, column: 11, scope: !3153, inlinedAt: !3158)
!3160 = !DILocation(line: 976, column: 10, scope: !3153, inlinedAt: !3158)
!3161 = !DILocation(line: 401, column: 11, scope: !2998)
!3162 = !DILocation(line: 417, column: 25, scope: !2998)
!3163 = !DILocation(line: 418, column: 7, scope: !2998)
!3164 = !DILocation(line: 421, column: 15, scope: !3005)
!3165 = !DILocation(line: 423, column: 15, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !688, line: 423, column: 15)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !688, line: 422, column: 13)
!3168 = distinct !DILexicalBlock(scope: !3005, file: !688, line: 421, column: 15)
!3169 = !DILocation(line: 423, column: 15, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3166, file: !688, line: 423, column: 15)
!3171 = !DILocation(line: 423, column: 15, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !688, line: 423, column: 15)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !688, line: 423, column: 15)
!3174 = distinct !DILexicalBlock(scope: !3170, file: !688, line: 423, column: 15)
!3175 = !DILocation(line: 423, column: 15, scope: !3173)
!3176 = !DILocation(line: 423, column: 15, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !688, line: 423, column: 15)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !688, line: 423, column: 15)
!3179 = !DILocation(line: 423, column: 15, scope: !3178)
!3180 = !DILocation(line: 423, column: 15, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !688, line: 423, column: 15)
!3182 = distinct !DILexicalBlock(scope: !3174, file: !688, line: 423, column: 15)
!3183 = !DILocation(line: 423, column: 15, scope: !3182)
!3184 = !DILocation(line: 423, column: 15, scope: !3174)
!3185 = !DILocation(line: 423, column: 15, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !688, line: 423, column: 15)
!3187 = distinct !DILexicalBlock(scope: !3166, file: !688, line: 423, column: 15)
!3188 = !DILocation(line: 423, column: 15, scope: !3187)
!3189 = !DILocation(line: 431, column: 19, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3167, file: !688, line: 430, column: 19)
!3191 = !DILocation(line: 431, column: 24, scope: !3190)
!3192 = !DILocation(line: 431, column: 28, scope: !3190)
!3193 = !DILocation(line: 431, column: 38, scope: !3190)
!3194 = !DILocation(line: 431, column: 48, scope: !3190)
!3195 = !DILocation(line: 431, column: 59, scope: !3190)
!3196 = !DILocation(line: 433, column: 19, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !688, line: 433, column: 19)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !688, line: 433, column: 19)
!3199 = distinct !DILexicalBlock(scope: !3190, file: !688, line: 432, column: 17)
!3200 = !DILocation(line: 433, column: 19, scope: !3198)
!3201 = !DILocation(line: 434, column: 19, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !688, line: 434, column: 19)
!3203 = distinct !DILexicalBlock(scope: !3199, file: !688, line: 434, column: 19)
!3204 = !DILocation(line: 434, column: 19, scope: !3203)
!3205 = !DILocation(line: 435, column: 17, scope: !3199)
!3206 = !DILocation(line: 442, column: 20, scope: !3168)
!3207 = !DILocation(line: 447, column: 11, scope: !3005)
!3208 = !DILocation(line: 450, column: 19, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3005, file: !688, line: 448, column: 13)
!3210 = !DILocation(line: 456, column: 19, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3209, file: !688, line: 455, column: 19)
!3212 = !DILocation(line: 456, column: 24, scope: !3211)
!3213 = !DILocation(line: 456, column: 28, scope: !3211)
!3214 = !DILocation(line: 456, column: 38, scope: !3211)
!3215 = !DILocation(line: 456, column: 47, scope: !3211)
!3216 = !DILocation(line: 456, column: 41, scope: !3211)
!3217 = !DILocation(line: 456, column: 52, scope: !3211)
!3218 = !DILocation(line: 455, column: 19, scope: !3209)
!3219 = !DILocation(line: 457, column: 25, scope: !3211)
!3220 = !DILocation(line: 457, column: 17, scope: !3211)
!3221 = !DILocation(line: 464, column: 25, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3211, file: !688, line: 458, column: 19)
!3223 = !DILocation(line: 468, column: 21, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !688, line: 468, column: 21)
!3225 = distinct !DILexicalBlock(scope: !3222, file: !688, line: 468, column: 21)
!3226 = !DILocation(line: 468, column: 21, scope: !3225)
!3227 = !DILocation(line: 469, column: 21, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !688, line: 469, column: 21)
!3229 = distinct !DILexicalBlock(scope: !3222, file: !688, line: 469, column: 21)
!3230 = !DILocation(line: 469, column: 21, scope: !3229)
!3231 = !DILocation(line: 470, column: 21, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !688, line: 470, column: 21)
!3233 = distinct !DILexicalBlock(scope: !3222, file: !688, line: 470, column: 21)
!3234 = !DILocation(line: 470, column: 21, scope: !3233)
!3235 = !DILocation(line: 471, column: 21, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !688, line: 471, column: 21)
!3237 = distinct !DILexicalBlock(scope: !3222, file: !688, line: 471, column: 21)
!3238 = !DILocation(line: 471, column: 21, scope: !3237)
!3239 = !DILocation(line: 472, column: 21, scope: !3222)
!3240 = !DILocation(line: 482, column: 33, scope: !3028)
!3241 = !DILocation(line: 483, column: 33, scope: !3028)
!3242 = !DILocation(line: 485, column: 33, scope: !3028)
!3243 = !DILocation(line: 486, column: 33, scope: !3028)
!3244 = !DILocation(line: 487, column: 33, scope: !3028)
!3245 = !DILocation(line: 490, column: 17, scope: !3028)
!3246 = !DILocation(line: 492, column: 21, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !688, line: 491, column: 15)
!3248 = distinct !DILexicalBlock(scope: !3028, file: !688, line: 490, column: 17)
!3249 = !DILocation(line: 499, column: 35, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3028, file: !688, line: 499, column: 17)
!3251 = !DILocation(line: 499, column: 57, scope: !3250)
!3252 = !DILocation(line: 0, scope: !3028)
!3253 = !DILocation(line: 502, column: 11, scope: !3028)
!3254 = !DILocation(line: 504, column: 17, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3028, file: !688, line: 503, column: 17)
!3256 = !DILocation(line: 507, column: 11, scope: !3028)
!3257 = !DILocation(line: 508, column: 17, scope: !3028)
!3258 = !DILocation(line: 517, column: 15, scope: !3005)
!3259 = !DILocation(line: 517, column: 40, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3005, file: !688, line: 517, column: 15)
!3261 = !DILocation(line: 517, column: 47, scope: !3260)
!3262 = !DILocation(line: 517, column: 18, scope: !3260)
!3263 = !DILocation(line: 521, column: 17, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3005, file: !688, line: 521, column: 15)
!3265 = !DILocation(line: 521, column: 15, scope: !3005)
!3266 = !DILocation(line: 525, column: 11, scope: !3005)
!3267 = !DILocation(line: 537, column: 15, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3005, file: !688, line: 536, column: 15)
!3269 = !DILocation(line: 544, column: 15, scope: !3005)
!3270 = !DILocation(line: 546, column: 19, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !688, line: 545, column: 13)
!3272 = distinct !DILexicalBlock(scope: !3005, file: !688, line: 544, column: 15)
!3273 = !DILocation(line: 549, column: 19, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3271, file: !688, line: 549, column: 19)
!3275 = !DILocation(line: 549, column: 30, scope: !3274)
!3276 = !DILocation(line: 558, column: 15, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !688, line: 558, column: 15)
!3278 = distinct !DILexicalBlock(scope: !3271, file: !688, line: 558, column: 15)
!3279 = !DILocation(line: 558, column: 15, scope: !3278)
!3280 = !DILocation(line: 559, column: 15, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !688, line: 559, column: 15)
!3282 = distinct !DILexicalBlock(scope: !3271, file: !688, line: 559, column: 15)
!3283 = !DILocation(line: 559, column: 15, scope: !3282)
!3284 = !DILocation(line: 560, column: 15, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !688, line: 560, column: 15)
!3286 = distinct !DILexicalBlock(scope: !3271, file: !688, line: 560, column: 15)
!3287 = !DILocation(line: 560, column: 15, scope: !3286)
!3288 = !DILocation(line: 562, column: 13, scope: !3271)
!3289 = !DILocation(line: 602, column: 17, scope: !3004)
!3290 = !DILocation(line: 0, scope: !3004)
!3291 = !DILocation(line: 605, column: 29, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3009, file: !688, line: 603, column: 15)
!3293 = !DILocation(line: 605, column: 27, scope: !3292)
!3294 = !DILocation(line: 668, column: 40, scope: !3004)
!3295 = !DILocation(line: 670, column: 23, scope: !3025)
!3296 = !DILocation(line: 609, column: 17, scope: !3008)
!3297 = !DILocation(line: 609, column: 27, scope: !3008)
!3298 = !DILocation(line: 0, scope: !3065, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 609, column: 32, scope: !3008)
!3300 = !DILocation(line: 0, scope: !3073, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 1137, column: 3, scope: !3065, inlinedAt: !3299)
!3302 = !DILocation(line: 59, column: 10, scope: !3073, inlinedAt: !3301)
!3303 = !DILocation(line: 613, column: 29, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3008, file: !688, line: 613, column: 21)
!3305 = !DILocation(line: 613, column: 21, scope: !3008)
!3306 = !DILocation(line: 614, column: 29, scope: !3304)
!3307 = !DILocation(line: 614, column: 19, scope: !3304)
!3308 = !DILocation(line: 618, column: 21, scope: !3011)
!3309 = !DILocation(line: 620, column: 54, scope: !3011)
!3310 = !DILocation(line: 0, scope: !3011)
!3311 = !DILocation(line: 619, column: 36, scope: !3011)
!3312 = !DILocation(line: 621, column: 25, scope: !3011)
!3313 = !DILocation(line: 631, column: 38, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3020, file: !688, line: 629, column: 23)
!3315 = !DILocation(line: 631, column: 48, scope: !3314)
!3316 = !DILocation(line: 665, column: 19, scope: !3012)
!3317 = !DILocation(line: 666, column: 15, scope: !3009)
!3318 = !DILocation(line: 626, column: 25, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3021, file: !688, line: 624, column: 23)
!3320 = !DILocation(line: 631, column: 51, scope: !3314)
!3321 = !DILocation(line: 631, column: 25, scope: !3314)
!3322 = !DILocation(line: 632, column: 28, scope: !3314)
!3323 = !DILocation(line: 631, column: 34, scope: !3314)
!3324 = distinct !{!3324, !3321, !3322, !1142}
!3325 = !DILocation(line: 646, column: 29, scope: !3018)
!3326 = !DILocation(line: 0, scope: !3016)
!3327 = !DILocation(line: 649, column: 49, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3016, file: !688, line: 648, column: 29)
!3329 = !DILocation(line: 649, column: 39, scope: !3328)
!3330 = !DILocation(line: 649, column: 31, scope: !3328)
!3331 = !DILocation(line: 648, column: 60, scope: !3328)
!3332 = !DILocation(line: 648, column: 50, scope: !3328)
!3333 = !DILocation(line: 648, column: 29, scope: !3016)
!3334 = distinct !{!3334, !3333, !3335, !1142}
!3335 = !DILocation(line: 654, column: 33, scope: !3016)
!3336 = !DILocation(line: 657, column: 43, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3019, file: !688, line: 657, column: 29)
!3338 = !DILocalVariable(name: "wc", arg: 1, scope: !3339, file: !3340, line: 865, type: !3343)
!3339 = distinct !DISubprogram(name: "c32isprint", scope: !3340, file: !3340, line: 865, type: !3341, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3345)
!3340 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!260, !3343}
!3343 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3344, line: 20, baseType: !222)
!3344 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3345 = !{!3338}
!3346 = !DILocation(line: 0, scope: !3339, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 657, column: 31, scope: !3337)
!3348 = !DILocation(line: 871, column: 10, scope: !3339, inlinedAt: !3347)
!3349 = !DILocation(line: 657, column: 31, scope: !3337)
!3350 = !DILocation(line: 657, column: 29, scope: !3019)
!3351 = !DILocation(line: 664, column: 23, scope: !3011)
!3352 = !DILocation(line: 670, column: 19, scope: !3025)
!3353 = !DILocation(line: 670, column: 45, scope: !3025)
!3354 = !DILocation(line: 674, column: 33, scope: !3024)
!3355 = !DILocation(line: 0, scope: !3024)
!3356 = !DILocation(line: 676, column: 17, scope: !3024)
!3357 = !DILocation(line: 398, column: 12, scope: !2998)
!3358 = !DILocation(line: 678, column: 43, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !688, line: 678, column: 25)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !688, line: 677, column: 19)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !688, line: 676, column: 17)
!3362 = distinct !DILexicalBlock(scope: !3024, file: !688, line: 676, column: 17)
!3363 = !DILocation(line: 680, column: 25, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !688, line: 680, column: 25)
!3365 = distinct !DILexicalBlock(scope: !3359, file: !688, line: 679, column: 23)
!3366 = !DILocation(line: 680, column: 25, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3364, file: !688, line: 680, column: 25)
!3368 = !DILocation(line: 680, column: 25, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !688, line: 680, column: 25)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !688, line: 680, column: 25)
!3371 = distinct !DILexicalBlock(scope: !3367, file: !688, line: 680, column: 25)
!3372 = !DILocation(line: 680, column: 25, scope: !3370)
!3373 = !DILocation(line: 680, column: 25, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !688, line: 680, column: 25)
!3375 = distinct !DILexicalBlock(scope: !3371, file: !688, line: 680, column: 25)
!3376 = !DILocation(line: 680, column: 25, scope: !3375)
!3377 = !DILocation(line: 680, column: 25, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !688, line: 680, column: 25)
!3379 = distinct !DILexicalBlock(scope: !3371, file: !688, line: 680, column: 25)
!3380 = !DILocation(line: 680, column: 25, scope: !3379)
!3381 = !DILocation(line: 680, column: 25, scope: !3371)
!3382 = !DILocation(line: 680, column: 25, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !688, line: 680, column: 25)
!3384 = distinct !DILexicalBlock(scope: !3364, file: !688, line: 680, column: 25)
!3385 = !DILocation(line: 680, column: 25, scope: !3384)
!3386 = !DILocation(line: 681, column: 25, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !688, line: 681, column: 25)
!3388 = distinct !DILexicalBlock(scope: !3365, file: !688, line: 681, column: 25)
!3389 = !DILocation(line: 681, column: 25, scope: !3388)
!3390 = !DILocation(line: 682, column: 25, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !688, line: 682, column: 25)
!3392 = distinct !DILexicalBlock(scope: !3365, file: !688, line: 682, column: 25)
!3393 = !DILocation(line: 682, column: 25, scope: !3392)
!3394 = !DILocation(line: 683, column: 38, scope: !3365)
!3395 = !DILocation(line: 683, column: 33, scope: !3365)
!3396 = !DILocation(line: 684, column: 23, scope: !3365)
!3397 = !DILocation(line: 685, column: 30, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3359, file: !688, line: 685, column: 30)
!3399 = !DILocation(line: 685, column: 30, scope: !3359)
!3400 = !DILocation(line: 687, column: 25, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !688, line: 687, column: 25)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !688, line: 687, column: 25)
!3403 = distinct !DILexicalBlock(scope: !3398, file: !688, line: 686, column: 23)
!3404 = !DILocation(line: 687, column: 25, scope: !3402)
!3405 = !DILocation(line: 689, column: 23, scope: !3403)
!3406 = !DILocation(line: 690, column: 35, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3360, file: !688, line: 690, column: 25)
!3408 = !DILocation(line: 690, column: 30, scope: !3407)
!3409 = !DILocation(line: 690, column: 25, scope: !3360)
!3410 = !DILocation(line: 692, column: 21, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3412, file: !688, line: 692, column: 21)
!3412 = distinct !DILexicalBlock(scope: !3360, file: !688, line: 692, column: 21)
!3413 = !DILocation(line: 692, column: 21, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !688, line: 692, column: 21)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !688, line: 692, column: 21)
!3416 = distinct !DILexicalBlock(scope: !3411, file: !688, line: 692, column: 21)
!3417 = !DILocation(line: 692, column: 21, scope: !3415)
!3418 = !DILocation(line: 692, column: 21, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !688, line: 692, column: 21)
!3420 = distinct !DILexicalBlock(scope: !3416, file: !688, line: 692, column: 21)
!3421 = !DILocation(line: 692, column: 21, scope: !3420)
!3422 = !DILocation(line: 692, column: 21, scope: !3416)
!3423 = !DILocation(line: 0, scope: !3360)
!3424 = !DILocation(line: 693, column: 21, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !688, line: 693, column: 21)
!3426 = distinct !DILexicalBlock(scope: !3360, file: !688, line: 693, column: 21)
!3427 = !DILocation(line: 693, column: 21, scope: !3426)
!3428 = !DILocation(line: 694, column: 25, scope: !3360)
!3429 = !DILocation(line: 676, column: 17, scope: !3361)
!3430 = distinct !{!3430, !3431, !3432}
!3431 = !DILocation(line: 676, column: 17, scope: !3362)
!3432 = !DILocation(line: 695, column: 19, scope: !3362)
!3433 = !DILocation(line: 409, column: 30, scope: !3144)
!3434 = !DILocation(line: 702, column: 34, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !2998, file: !688, line: 702, column: 11)
!3436 = !DILocation(line: 704, column: 14, scope: !3435)
!3437 = !DILocation(line: 705, column: 14, scope: !3435)
!3438 = !DILocation(line: 705, column: 35, scope: !3435)
!3439 = !DILocation(line: 705, column: 17, scope: !3435)
!3440 = !DILocation(line: 705, column: 47, scope: !3435)
!3441 = !DILocation(line: 705, column: 65, scope: !3435)
!3442 = !DILocation(line: 706, column: 11, scope: !3435)
!3443 = !DILocation(line: 702, column: 11, scope: !2998)
!3444 = !DILocation(line: 395, column: 15, scope: !2996)
!3445 = !DILocation(line: 709, column: 5, scope: !2998)
!3446 = !DILocation(line: 710, column: 7, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !2998, file: !688, line: 710, column: 7)
!3448 = !DILocation(line: 710, column: 7, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3447, file: !688, line: 710, column: 7)
!3450 = !DILocation(line: 710, column: 7, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !688, line: 710, column: 7)
!3452 = distinct !DILexicalBlock(scope: !3453, file: !688, line: 710, column: 7)
!3453 = distinct !DILexicalBlock(scope: !3449, file: !688, line: 710, column: 7)
!3454 = !DILocation(line: 710, column: 7, scope: !3452)
!3455 = !DILocation(line: 710, column: 7, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !688, line: 710, column: 7)
!3457 = distinct !DILexicalBlock(scope: !3453, file: !688, line: 710, column: 7)
!3458 = !DILocation(line: 710, column: 7, scope: !3457)
!3459 = !DILocation(line: 710, column: 7, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !688, line: 710, column: 7)
!3461 = distinct !DILexicalBlock(scope: !3453, file: !688, line: 710, column: 7)
!3462 = !DILocation(line: 710, column: 7, scope: !3461)
!3463 = !DILocation(line: 710, column: 7, scope: !3453)
!3464 = !DILocation(line: 710, column: 7, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !688, line: 710, column: 7)
!3466 = distinct !DILexicalBlock(scope: !3447, file: !688, line: 710, column: 7)
!3467 = !DILocation(line: 710, column: 7, scope: !3466)
!3468 = !DILocation(line: 712, column: 5, scope: !2998)
!3469 = !DILocation(line: 713, column: 7, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !688, line: 713, column: 7)
!3471 = distinct !DILexicalBlock(scope: !2998, file: !688, line: 713, column: 7)
!3472 = !DILocation(line: 417, column: 21, scope: !2998)
!3473 = !DILocation(line: 713, column: 7, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !688, line: 713, column: 7)
!3475 = distinct !DILexicalBlock(scope: !3476, file: !688, line: 713, column: 7)
!3476 = distinct !DILexicalBlock(scope: !3470, file: !688, line: 713, column: 7)
!3477 = !DILocation(line: 713, column: 7, scope: !3475)
!3478 = !DILocation(line: 713, column: 7, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !688, line: 713, column: 7)
!3480 = distinct !DILexicalBlock(scope: !3476, file: !688, line: 713, column: 7)
!3481 = !DILocation(line: 713, column: 7, scope: !3480)
!3482 = !DILocation(line: 713, column: 7, scope: !3476)
!3483 = !DILocation(line: 714, column: 7, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !688, line: 714, column: 7)
!3485 = distinct !DILexicalBlock(scope: !2998, file: !688, line: 714, column: 7)
!3486 = !DILocation(line: 714, column: 7, scope: !3485)
!3487 = !DILocation(line: 716, column: 13, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !2998, file: !688, line: 716, column: 11)
!3489 = !DILocation(line: 716, column: 11, scope: !2998)
!3490 = !DILocation(line: 718, column: 5, scope: !2999)
!3491 = !DILocation(line: 395, column: 82, scope: !2999)
!3492 = !DILocation(line: 395, column: 3, scope: !2999)
!3493 = distinct !{!3493, !3140, !3494, !1142}
!3494 = !DILocation(line: 718, column: 5, scope: !2996)
!3495 = !DILocation(line: 720, column: 11, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !2965, file: !688, line: 720, column: 7)
!3497 = !DILocation(line: 720, column: 16, scope: !3496)
!3498 = !DILocation(line: 728, column: 51, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !2965, file: !688, line: 728, column: 7)
!3500 = !DILocation(line: 731, column: 11, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !688, line: 731, column: 11)
!3502 = distinct !DILexicalBlock(scope: !3499, file: !688, line: 730, column: 5)
!3503 = !DILocation(line: 731, column: 11, scope: !3502)
!3504 = !DILocation(line: 732, column: 16, scope: !3501)
!3505 = !DILocation(line: 732, column: 9, scope: !3501)
!3506 = !DILocation(line: 736, column: 18, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3501, file: !688, line: 736, column: 16)
!3508 = !DILocation(line: 736, column: 29, scope: !3507)
!3509 = !DILocation(line: 745, column: 7, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !2965, file: !688, line: 745, column: 7)
!3511 = !DILocation(line: 745, column: 20, scope: !3510)
!3512 = !DILocation(line: 746, column: 12, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !688, line: 746, column: 5)
!3514 = distinct !DILexicalBlock(scope: !3510, file: !688, line: 746, column: 5)
!3515 = !DILocation(line: 746, column: 5, scope: !3514)
!3516 = !DILocation(line: 747, column: 7, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !688, line: 747, column: 7)
!3518 = distinct !DILexicalBlock(scope: !3513, file: !688, line: 747, column: 7)
!3519 = !DILocation(line: 747, column: 7, scope: !3518)
!3520 = !DILocation(line: 746, column: 39, scope: !3513)
!3521 = distinct !{!3521, !3515, !3522, !1142}
!3522 = !DILocation(line: 747, column: 7, scope: !3514)
!3523 = !DILocation(line: 749, column: 11, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !2965, file: !688, line: 749, column: 7)
!3525 = !DILocation(line: 749, column: 7, scope: !2965)
!3526 = !DILocation(line: 750, column: 5, scope: !3524)
!3527 = !DILocation(line: 750, column: 17, scope: !3524)
!3528 = !DILocation(line: 753, column: 2, scope: !2965)
!3529 = !DILocation(line: 756, column: 51, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !2965, file: !688, line: 756, column: 7)
!3531 = !DILocation(line: 756, column: 21, scope: !3530)
!3532 = !DILocation(line: 760, column: 42, scope: !2965)
!3533 = !DILocation(line: 758, column: 10, scope: !2965)
!3534 = !DILocation(line: 758, column: 3, scope: !2965)
!3535 = !DILocation(line: 762, column: 1, scope: !2965)
!3536 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1205, file: !1205, line: 98, type: !3537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!262}
!3539 = !DISubprogram(name: "iswprint", scope: !3540, file: !3540, line: 120, type: !3341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!3540 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3541 = distinct !DISubprogram(name: "quotearg_alloc", scope: !688, file: !688, line: 788, type: !3542, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3544)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!258, !265, !262, !2858}
!3544 = !{!3545, !3546, !3547}
!3545 = !DILocalVariable(name: "arg", arg: 1, scope: !3541, file: !688, line: 788, type: !265)
!3546 = !DILocalVariable(name: "argsize", arg: 2, scope: !3541, file: !688, line: 788, type: !262)
!3547 = !DILocalVariable(name: "o", arg: 3, scope: !3541, file: !688, line: 789, type: !2858)
!3548 = !DILocation(line: 0, scope: !3541)
!3549 = !DILocalVariable(name: "arg", arg: 1, scope: !3550, file: !688, line: 801, type: !265)
!3550 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !688, file: !688, line: 801, type: !3551, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3553)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!258, !265, !262, !928, !2858}
!3553 = !{!3549, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561}
!3554 = !DILocalVariable(name: "argsize", arg: 2, scope: !3550, file: !688, line: 801, type: !262)
!3555 = !DILocalVariable(name: "size", arg: 3, scope: !3550, file: !688, line: 801, type: !928)
!3556 = !DILocalVariable(name: "o", arg: 4, scope: !3550, file: !688, line: 802, type: !2858)
!3557 = !DILocalVariable(name: "p", scope: !3550, file: !688, line: 804, type: !2858)
!3558 = !DILocalVariable(name: "saved_errno", scope: !3550, file: !688, line: 805, type: !260)
!3559 = !DILocalVariable(name: "flags", scope: !3550, file: !688, line: 807, type: !260)
!3560 = !DILocalVariable(name: "bufsize", scope: !3550, file: !688, line: 808, type: !262)
!3561 = !DILocalVariable(name: "buf", scope: !3550, file: !688, line: 812, type: !258)
!3562 = !DILocation(line: 0, scope: !3550, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 791, column: 10, scope: !3541)
!3564 = !DILocation(line: 804, column: 37, scope: !3550, inlinedAt: !3563)
!3565 = !DILocation(line: 805, column: 21, scope: !3550, inlinedAt: !3563)
!3566 = !DILocation(line: 807, column: 18, scope: !3550, inlinedAt: !3563)
!3567 = !DILocation(line: 807, column: 24, scope: !3550, inlinedAt: !3563)
!3568 = !DILocation(line: 808, column: 72, scope: !3550, inlinedAt: !3563)
!3569 = !DILocation(line: 809, column: 56, scope: !3550, inlinedAt: !3563)
!3570 = !DILocation(line: 810, column: 49, scope: !3550, inlinedAt: !3563)
!3571 = !DILocation(line: 811, column: 49, scope: !3550, inlinedAt: !3563)
!3572 = !DILocation(line: 808, column: 20, scope: !3550, inlinedAt: !3563)
!3573 = !DILocation(line: 811, column: 62, scope: !3550, inlinedAt: !3563)
!3574 = !DILocation(line: 812, column: 15, scope: !3550, inlinedAt: !3563)
!3575 = !DILocation(line: 813, column: 60, scope: !3550, inlinedAt: !3563)
!3576 = !DILocation(line: 815, column: 32, scope: !3550, inlinedAt: !3563)
!3577 = !DILocation(line: 815, column: 47, scope: !3550, inlinedAt: !3563)
!3578 = !DILocation(line: 813, column: 3, scope: !3550, inlinedAt: !3563)
!3579 = !DILocation(line: 816, column: 9, scope: !3550, inlinedAt: !3563)
!3580 = !DILocation(line: 791, column: 3, scope: !3541)
!3581 = !DILocation(line: 0, scope: !3550)
!3582 = !DILocation(line: 804, column: 37, scope: !3550)
!3583 = !DILocation(line: 805, column: 21, scope: !3550)
!3584 = !DILocation(line: 807, column: 18, scope: !3550)
!3585 = !DILocation(line: 807, column: 27, scope: !3550)
!3586 = !DILocation(line: 807, column: 24, scope: !3550)
!3587 = !DILocation(line: 808, column: 72, scope: !3550)
!3588 = !DILocation(line: 809, column: 56, scope: !3550)
!3589 = !DILocation(line: 810, column: 49, scope: !3550)
!3590 = !DILocation(line: 811, column: 49, scope: !3550)
!3591 = !DILocation(line: 808, column: 20, scope: !3550)
!3592 = !DILocation(line: 811, column: 62, scope: !3550)
!3593 = !DILocation(line: 812, column: 15, scope: !3550)
!3594 = !DILocation(line: 813, column: 60, scope: !3550)
!3595 = !DILocation(line: 815, column: 32, scope: !3550)
!3596 = !DILocation(line: 815, column: 47, scope: !3550)
!3597 = !DILocation(line: 813, column: 3, scope: !3550)
!3598 = !DILocation(line: 816, column: 9, scope: !3550)
!3599 = !DILocation(line: 817, column: 7, scope: !3550)
!3600 = !DILocation(line: 818, column: 11, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3550, file: !688, line: 817, column: 7)
!3602 = !DILocation(line: 818, column: 5, scope: !3601)
!3603 = !DILocation(line: 819, column: 3, scope: !3550)
!3604 = distinct !DISubprogram(name: "quotearg_free", scope: !688, file: !688, line: 837, type: !643, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3605)
!3605 = !{!3606, !3607}
!3606 = !DILocalVariable(name: "sv", scope: !3604, file: !688, line: 839, type: !789)
!3607 = !DILocalVariable(name: "i", scope: !3608, file: !688, line: 840, type: !260)
!3608 = distinct !DILexicalBlock(scope: !3604, file: !688, line: 840, column: 3)
!3609 = !DILocation(line: 839, column: 24, scope: !3604)
!3610 = !DILocation(line: 0, scope: !3604)
!3611 = !DILocation(line: 0, scope: !3608)
!3612 = !DILocation(line: 840, column: 21, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3608, file: !688, line: 840, column: 3)
!3614 = !DILocation(line: 840, column: 3, scope: !3608)
!3615 = !DILocation(line: 842, column: 13, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3604, file: !688, line: 842, column: 7)
!3617 = !{!3618, !995, i64 8}
!3618 = !{!"slotvec", !1612, i64 0, !995, i64 8}
!3619 = !DILocation(line: 842, column: 17, scope: !3616)
!3620 = !DILocation(line: 842, column: 7, scope: !3604)
!3621 = !DILocation(line: 841, column: 17, scope: !3613)
!3622 = !DILocation(line: 841, column: 5, scope: !3613)
!3623 = !DILocation(line: 840, column: 32, scope: !3613)
!3624 = distinct !{!3624, !3614, !3625, !1142}
!3625 = !DILocation(line: 841, column: 20, scope: !3608)
!3626 = !DILocation(line: 844, column: 7, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3616, file: !688, line: 843, column: 5)
!3628 = !DILocation(line: 845, column: 21, scope: !3627)
!3629 = !{!3618, !1612, i64 0}
!3630 = !DILocation(line: 846, column: 20, scope: !3627)
!3631 = !DILocation(line: 847, column: 5, scope: !3627)
!3632 = !DILocation(line: 848, column: 10, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3604, file: !688, line: 848, column: 7)
!3634 = !DILocation(line: 848, column: 7, scope: !3604)
!3635 = !DILocation(line: 850, column: 7, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3633, file: !688, line: 849, column: 5)
!3637 = !DILocation(line: 851, column: 15, scope: !3636)
!3638 = !DILocation(line: 852, column: 5, scope: !3636)
!3639 = !DILocation(line: 853, column: 10, scope: !3604)
!3640 = !DILocation(line: 854, column: 1, scope: !3604)
!3641 = !DISubprogram(name: "free", scope: !2812, file: !2812, line: 786, type: !3642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{null, !259}
!3644 = distinct !DISubprogram(name: "quotearg_n", scope: !688, file: !688, line: 919, type: !1198, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3645)
!3645 = !{!3646, !3647}
!3646 = !DILocalVariable(name: "n", arg: 1, scope: !3644, file: !688, line: 919, type: !260)
!3647 = !DILocalVariable(name: "arg", arg: 2, scope: !3644, file: !688, line: 919, type: !265)
!3648 = !DILocation(line: 0, scope: !3644)
!3649 = !DILocation(line: 921, column: 10, scope: !3644)
!3650 = !DILocation(line: 921, column: 3, scope: !3644)
!3651 = distinct !DISubprogram(name: "quotearg_n_options", scope: !688, file: !688, line: 866, type: !3652, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3654)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!258, !260, !265, !262, !2858}
!3654 = !{!3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3665, !3666, !3668, !3669, !3670}
!3655 = !DILocalVariable(name: "n", arg: 1, scope: !3651, file: !688, line: 866, type: !260)
!3656 = !DILocalVariable(name: "arg", arg: 2, scope: !3651, file: !688, line: 866, type: !265)
!3657 = !DILocalVariable(name: "argsize", arg: 3, scope: !3651, file: !688, line: 866, type: !262)
!3658 = !DILocalVariable(name: "options", arg: 4, scope: !3651, file: !688, line: 867, type: !2858)
!3659 = !DILocalVariable(name: "saved_errno", scope: !3651, file: !688, line: 869, type: !260)
!3660 = !DILocalVariable(name: "sv", scope: !3651, file: !688, line: 871, type: !789)
!3661 = !DILocalVariable(name: "nslots_max", scope: !3651, file: !688, line: 873, type: !260)
!3662 = !DILocalVariable(name: "preallocated", scope: !3663, file: !688, line: 879, type: !319)
!3663 = distinct !DILexicalBlock(scope: !3664, file: !688, line: 878, column: 5)
!3664 = distinct !DILexicalBlock(scope: !3651, file: !688, line: 877, column: 7)
!3665 = !DILocalVariable(name: "new_nslots", scope: !3663, file: !688, line: 880, type: !941)
!3666 = !DILocalVariable(name: "size", scope: !3667, file: !688, line: 891, type: !262)
!3667 = distinct !DILexicalBlock(scope: !3651, file: !688, line: 890, column: 3)
!3668 = !DILocalVariable(name: "val", scope: !3667, file: !688, line: 892, type: !258)
!3669 = !DILocalVariable(name: "flags", scope: !3667, file: !688, line: 894, type: !260)
!3670 = !DILocalVariable(name: "qsize", scope: !3667, file: !688, line: 895, type: !262)
!3671 = !DILocation(line: 0, scope: !3651)
!3672 = !DILocation(line: 869, column: 21, scope: !3651)
!3673 = !DILocation(line: 871, column: 24, scope: !3651)
!3674 = !DILocation(line: 874, column: 17, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3651, file: !688, line: 874, column: 7)
!3676 = !DILocation(line: 875, column: 5, scope: !3675)
!3677 = !DILocation(line: 877, column: 7, scope: !3664)
!3678 = !DILocation(line: 877, column: 14, scope: !3664)
!3679 = !DILocation(line: 877, column: 7, scope: !3651)
!3680 = !DILocation(line: 879, column: 31, scope: !3663)
!3681 = !DILocation(line: 0, scope: !3663)
!3682 = !DILocation(line: 880, column: 7, scope: !3663)
!3683 = !DILocation(line: 880, column: 26, scope: !3663)
!3684 = !DILocation(line: 880, column: 13, scope: !3663)
!3685 = !DILocation(line: 882, column: 31, scope: !3663)
!3686 = !DILocation(line: 883, column: 33, scope: !3663)
!3687 = !DILocation(line: 883, column: 42, scope: !3663)
!3688 = !DILocation(line: 883, column: 31, scope: !3663)
!3689 = !DILocation(line: 882, column: 22, scope: !3663)
!3690 = !DILocation(line: 882, column: 15, scope: !3663)
!3691 = !DILocation(line: 884, column: 11, scope: !3663)
!3692 = !DILocation(line: 885, column: 15, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3663, file: !688, line: 884, column: 11)
!3694 = !{i64 0, i64 8, !1611, i64 8, i64 8, !994}
!3695 = !DILocation(line: 885, column: 9, scope: !3693)
!3696 = !DILocation(line: 886, column: 20, scope: !3663)
!3697 = !DILocation(line: 886, column: 18, scope: !3663)
!3698 = !DILocation(line: 886, column: 32, scope: !3663)
!3699 = !DILocation(line: 886, column: 43, scope: !3663)
!3700 = !DILocation(line: 886, column: 53, scope: !3663)
!3701 = !DILocation(line: 0, scope: !3073, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 886, column: 7, scope: !3663)
!3703 = !DILocation(line: 59, column: 10, scope: !3073, inlinedAt: !3702)
!3704 = !DILocation(line: 887, column: 16, scope: !3663)
!3705 = !DILocation(line: 887, column: 14, scope: !3663)
!3706 = !DILocation(line: 888, column: 5, scope: !3664)
!3707 = !DILocation(line: 888, column: 5, scope: !3663)
!3708 = !DILocation(line: 891, column: 19, scope: !3667)
!3709 = !DILocation(line: 891, column: 25, scope: !3667)
!3710 = !DILocation(line: 0, scope: !3667)
!3711 = !DILocation(line: 892, column: 23, scope: !3667)
!3712 = !DILocation(line: 894, column: 26, scope: !3667)
!3713 = !DILocation(line: 894, column: 32, scope: !3667)
!3714 = !DILocation(line: 896, column: 55, scope: !3667)
!3715 = !DILocation(line: 897, column: 55, scope: !3667)
!3716 = !DILocation(line: 898, column: 55, scope: !3667)
!3717 = !DILocation(line: 899, column: 55, scope: !3667)
!3718 = !DILocation(line: 895, column: 20, scope: !3667)
!3719 = !DILocation(line: 901, column: 14, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3667, file: !688, line: 901, column: 9)
!3721 = !DILocation(line: 901, column: 9, scope: !3667)
!3722 = !DILocation(line: 903, column: 35, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3720, file: !688, line: 902, column: 7)
!3724 = !DILocation(line: 903, column: 20, scope: !3723)
!3725 = !DILocation(line: 904, column: 17, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3723, file: !688, line: 904, column: 13)
!3727 = !DILocation(line: 904, column: 13, scope: !3723)
!3728 = !DILocation(line: 905, column: 11, scope: !3726)
!3729 = !DILocation(line: 906, column: 27, scope: !3723)
!3730 = !DILocation(line: 906, column: 19, scope: !3723)
!3731 = !DILocation(line: 907, column: 69, scope: !3723)
!3732 = !DILocation(line: 909, column: 44, scope: !3723)
!3733 = !DILocation(line: 910, column: 44, scope: !3723)
!3734 = !DILocation(line: 907, column: 9, scope: !3723)
!3735 = !DILocation(line: 911, column: 7, scope: !3723)
!3736 = !DILocation(line: 913, column: 11, scope: !3667)
!3737 = !DILocation(line: 914, column: 5, scope: !3667)
!3738 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !688, file: !688, line: 925, type: !3739, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3741)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!258, !260, !265, !262}
!3741 = !{!3742, !3743, !3744}
!3742 = !DILocalVariable(name: "n", arg: 1, scope: !3738, file: !688, line: 925, type: !260)
!3743 = !DILocalVariable(name: "arg", arg: 2, scope: !3738, file: !688, line: 925, type: !265)
!3744 = !DILocalVariable(name: "argsize", arg: 3, scope: !3738, file: !688, line: 925, type: !262)
!3745 = !DILocation(line: 0, scope: !3738)
!3746 = !DILocation(line: 927, column: 10, scope: !3738)
!3747 = !DILocation(line: 927, column: 3, scope: !3738)
!3748 = distinct !DISubprogram(name: "quotearg", scope: !688, file: !688, line: 931, type: !1207, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3749)
!3749 = !{!3750}
!3750 = !DILocalVariable(name: "arg", arg: 1, scope: !3748, file: !688, line: 931, type: !265)
!3751 = !DILocation(line: 0, scope: !3748)
!3752 = !DILocation(line: 0, scope: !3644, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 933, column: 10, scope: !3748)
!3754 = !DILocation(line: 921, column: 10, scope: !3644, inlinedAt: !3753)
!3755 = !DILocation(line: 933, column: 3, scope: !3748)
!3756 = distinct !DISubprogram(name: "quotearg_mem", scope: !688, file: !688, line: 937, type: !3757, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3759)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!258, !265, !262}
!3759 = !{!3760, !3761}
!3760 = !DILocalVariable(name: "arg", arg: 1, scope: !3756, file: !688, line: 937, type: !265)
!3761 = !DILocalVariable(name: "argsize", arg: 2, scope: !3756, file: !688, line: 937, type: !262)
!3762 = !DILocation(line: 0, scope: !3756)
!3763 = !DILocation(line: 0, scope: !3738, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 939, column: 10, scope: !3756)
!3765 = !DILocation(line: 927, column: 10, scope: !3738, inlinedAt: !3764)
!3766 = !DILocation(line: 939, column: 3, scope: !3756)
!3767 = distinct !DISubprogram(name: "quotearg_n_style", scope: !688, file: !688, line: 943, type: !3768, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3770)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!258, !260, !714, !265}
!3770 = !{!3771, !3772, !3773, !3774}
!3771 = !DILocalVariable(name: "n", arg: 1, scope: !3767, file: !688, line: 943, type: !260)
!3772 = !DILocalVariable(name: "s", arg: 2, scope: !3767, file: !688, line: 943, type: !714)
!3773 = !DILocalVariable(name: "arg", arg: 3, scope: !3767, file: !688, line: 943, type: !265)
!3774 = !DILocalVariable(name: "o", scope: !3767, file: !688, line: 945, type: !2859)
!3775 = !DILocation(line: 0, scope: !3767)
!3776 = !DILocation(line: 945, column: 3, scope: !3767)
!3777 = !DILocation(line: 945, column: 32, scope: !3767)
!3778 = !{!3779}
!3779 = distinct !{!3779, !3780, !"quoting_options_from_style: argument 0"}
!3780 = distinct !{!3780, !"quoting_options_from_style"}
!3781 = !DILocation(line: 945, column: 36, scope: !3767)
!3782 = !DILocalVariable(name: "style", arg: 1, scope: !3783, file: !688, line: 183, type: !714)
!3783 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !688, file: !688, line: 183, type: !3784, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3786)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!741, !714}
!3786 = !{!3782, !3787}
!3787 = !DILocalVariable(name: "o", scope: !3783, file: !688, line: 185, type: !741)
!3788 = !DILocation(line: 0, scope: !3783, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 945, column: 36, scope: !3767)
!3790 = !DILocation(line: 185, column: 26, scope: !3783, inlinedAt: !3789)
!3791 = !DILocation(line: 186, column: 13, scope: !3792, inlinedAt: !3789)
!3792 = distinct !DILexicalBlock(scope: !3783, file: !688, line: 186, column: 7)
!3793 = !DILocation(line: 186, column: 7, scope: !3783, inlinedAt: !3789)
!3794 = !DILocation(line: 187, column: 5, scope: !3792, inlinedAt: !3789)
!3795 = !DILocation(line: 188, column: 11, scope: !3783, inlinedAt: !3789)
!3796 = !DILocation(line: 946, column: 10, scope: !3767)
!3797 = !DILocation(line: 947, column: 1, scope: !3767)
!3798 = !DILocation(line: 946, column: 3, scope: !3767)
!3799 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !688, file: !688, line: 950, type: !3800, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3802)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!258, !260, !714, !265, !262}
!3802 = !{!3803, !3804, !3805, !3806, !3807}
!3803 = !DILocalVariable(name: "n", arg: 1, scope: !3799, file: !688, line: 950, type: !260)
!3804 = !DILocalVariable(name: "s", arg: 2, scope: !3799, file: !688, line: 950, type: !714)
!3805 = !DILocalVariable(name: "arg", arg: 3, scope: !3799, file: !688, line: 951, type: !265)
!3806 = !DILocalVariable(name: "argsize", arg: 4, scope: !3799, file: !688, line: 951, type: !262)
!3807 = !DILocalVariable(name: "o", scope: !3799, file: !688, line: 953, type: !2859)
!3808 = !DILocation(line: 0, scope: !3799)
!3809 = !DILocation(line: 953, column: 3, scope: !3799)
!3810 = !DILocation(line: 953, column: 32, scope: !3799)
!3811 = !{!3812}
!3812 = distinct !{!3812, !3813, !"quoting_options_from_style: argument 0"}
!3813 = distinct !{!3813, !"quoting_options_from_style"}
!3814 = !DILocation(line: 953, column: 36, scope: !3799)
!3815 = !DILocation(line: 0, scope: !3783, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 953, column: 36, scope: !3799)
!3817 = !DILocation(line: 185, column: 26, scope: !3783, inlinedAt: !3816)
!3818 = !DILocation(line: 186, column: 13, scope: !3792, inlinedAt: !3816)
!3819 = !DILocation(line: 186, column: 7, scope: !3783, inlinedAt: !3816)
!3820 = !DILocation(line: 187, column: 5, scope: !3792, inlinedAt: !3816)
!3821 = !DILocation(line: 188, column: 11, scope: !3783, inlinedAt: !3816)
!3822 = !DILocation(line: 954, column: 10, scope: !3799)
!3823 = !DILocation(line: 955, column: 1, scope: !3799)
!3824 = !DILocation(line: 954, column: 3, scope: !3799)
!3825 = distinct !DISubprogram(name: "quotearg_style", scope: !688, file: !688, line: 958, type: !3826, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3828)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!258, !714, !265}
!3828 = !{!3829, !3830}
!3829 = !DILocalVariable(name: "s", arg: 1, scope: !3825, file: !688, line: 958, type: !714)
!3830 = !DILocalVariable(name: "arg", arg: 2, scope: !3825, file: !688, line: 958, type: !265)
!3831 = !DILocation(line: 0, scope: !3825)
!3832 = !DILocation(line: 0, scope: !3767, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 960, column: 10, scope: !3825)
!3834 = !DILocation(line: 945, column: 3, scope: !3767, inlinedAt: !3833)
!3835 = !DILocation(line: 945, column: 32, scope: !3767, inlinedAt: !3833)
!3836 = !{!3837}
!3837 = distinct !{!3837, !3838, !"quoting_options_from_style: argument 0"}
!3838 = distinct !{!3838, !"quoting_options_from_style"}
!3839 = !DILocation(line: 945, column: 36, scope: !3767, inlinedAt: !3833)
!3840 = !DILocation(line: 0, scope: !3783, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 945, column: 36, scope: !3767, inlinedAt: !3833)
!3842 = !DILocation(line: 185, column: 26, scope: !3783, inlinedAt: !3841)
!3843 = !DILocation(line: 186, column: 13, scope: !3792, inlinedAt: !3841)
!3844 = !DILocation(line: 186, column: 7, scope: !3783, inlinedAt: !3841)
!3845 = !DILocation(line: 187, column: 5, scope: !3792, inlinedAt: !3841)
!3846 = !DILocation(line: 188, column: 11, scope: !3783, inlinedAt: !3841)
!3847 = !DILocation(line: 946, column: 10, scope: !3767, inlinedAt: !3833)
!3848 = !DILocation(line: 947, column: 1, scope: !3767, inlinedAt: !3833)
!3849 = !DILocation(line: 960, column: 3, scope: !3825)
!3850 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !688, file: !688, line: 964, type: !3851, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3853)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!258, !714, !265, !262}
!3853 = !{!3854, !3855, !3856}
!3854 = !DILocalVariable(name: "s", arg: 1, scope: !3850, file: !688, line: 964, type: !714)
!3855 = !DILocalVariable(name: "arg", arg: 2, scope: !3850, file: !688, line: 964, type: !265)
!3856 = !DILocalVariable(name: "argsize", arg: 3, scope: !3850, file: !688, line: 964, type: !262)
!3857 = !DILocation(line: 0, scope: !3850)
!3858 = !DILocation(line: 0, scope: !3799, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 966, column: 10, scope: !3850)
!3860 = !DILocation(line: 953, column: 3, scope: !3799, inlinedAt: !3859)
!3861 = !DILocation(line: 953, column: 32, scope: !3799, inlinedAt: !3859)
!3862 = !{!3863}
!3863 = distinct !{!3863, !3864, !"quoting_options_from_style: argument 0"}
!3864 = distinct !{!3864, !"quoting_options_from_style"}
!3865 = !DILocation(line: 953, column: 36, scope: !3799, inlinedAt: !3859)
!3866 = !DILocation(line: 0, scope: !3783, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 953, column: 36, scope: !3799, inlinedAt: !3859)
!3868 = !DILocation(line: 185, column: 26, scope: !3783, inlinedAt: !3867)
!3869 = !DILocation(line: 186, column: 13, scope: !3792, inlinedAt: !3867)
!3870 = !DILocation(line: 186, column: 7, scope: !3783, inlinedAt: !3867)
!3871 = !DILocation(line: 187, column: 5, scope: !3792, inlinedAt: !3867)
!3872 = !DILocation(line: 188, column: 11, scope: !3783, inlinedAt: !3867)
!3873 = !DILocation(line: 954, column: 10, scope: !3799, inlinedAt: !3859)
!3874 = !DILocation(line: 955, column: 1, scope: !3799, inlinedAt: !3859)
!3875 = !DILocation(line: 966, column: 3, scope: !3850)
!3876 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !688, file: !688, line: 970, type: !3877, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3879)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!258, !265, !262, !4}
!3879 = !{!3880, !3881, !3882, !3883}
!3880 = !DILocalVariable(name: "arg", arg: 1, scope: !3876, file: !688, line: 970, type: !265)
!3881 = !DILocalVariable(name: "argsize", arg: 2, scope: !3876, file: !688, line: 970, type: !262)
!3882 = !DILocalVariable(name: "ch", arg: 3, scope: !3876, file: !688, line: 970, type: !4)
!3883 = !DILocalVariable(name: "options", scope: !3876, file: !688, line: 972, type: !741)
!3884 = !DILocation(line: 0, scope: !3876)
!3885 = !DILocation(line: 972, column: 3, scope: !3876)
!3886 = !DILocation(line: 972, column: 26, scope: !3876)
!3887 = !DILocation(line: 973, column: 13, scope: !3876)
!3888 = !{i64 0, i64 4, !1104, i64 4, i64 4, !1095, i64 8, i64 32, !1104, i64 40, i64 8, !994, i64 48, i64 8, !994}
!3889 = !DILocation(line: 0, scope: !2878, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 974, column: 3, scope: !3876)
!3891 = !DILocation(line: 147, column: 41, scope: !2878, inlinedAt: !3890)
!3892 = !DILocation(line: 147, column: 62, scope: !2878, inlinedAt: !3890)
!3893 = !DILocation(line: 147, column: 57, scope: !2878, inlinedAt: !3890)
!3894 = !DILocation(line: 148, column: 15, scope: !2878, inlinedAt: !3890)
!3895 = !DILocation(line: 149, column: 21, scope: !2878, inlinedAt: !3890)
!3896 = !DILocation(line: 149, column: 24, scope: !2878, inlinedAt: !3890)
!3897 = !DILocation(line: 150, column: 19, scope: !2878, inlinedAt: !3890)
!3898 = !DILocation(line: 150, column: 24, scope: !2878, inlinedAt: !3890)
!3899 = !DILocation(line: 150, column: 6, scope: !2878, inlinedAt: !3890)
!3900 = !DILocation(line: 975, column: 10, scope: !3876)
!3901 = !DILocation(line: 976, column: 1, scope: !3876)
!3902 = !DILocation(line: 975, column: 3, scope: !3876)
!3903 = distinct !DISubprogram(name: "quotearg_char", scope: !688, file: !688, line: 979, type: !3904, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3906)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!258, !265, !4}
!3906 = !{!3907, !3908}
!3907 = !DILocalVariable(name: "arg", arg: 1, scope: !3903, file: !688, line: 979, type: !265)
!3908 = !DILocalVariable(name: "ch", arg: 2, scope: !3903, file: !688, line: 979, type: !4)
!3909 = !DILocation(line: 0, scope: !3903)
!3910 = !DILocation(line: 0, scope: !3876, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 981, column: 10, scope: !3903)
!3912 = !DILocation(line: 972, column: 3, scope: !3876, inlinedAt: !3911)
!3913 = !DILocation(line: 972, column: 26, scope: !3876, inlinedAt: !3911)
!3914 = !DILocation(line: 973, column: 13, scope: !3876, inlinedAt: !3911)
!3915 = !DILocation(line: 0, scope: !2878, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 974, column: 3, scope: !3876, inlinedAt: !3911)
!3917 = !DILocation(line: 147, column: 41, scope: !2878, inlinedAt: !3916)
!3918 = !DILocation(line: 147, column: 62, scope: !2878, inlinedAt: !3916)
!3919 = !DILocation(line: 147, column: 57, scope: !2878, inlinedAt: !3916)
!3920 = !DILocation(line: 148, column: 15, scope: !2878, inlinedAt: !3916)
!3921 = !DILocation(line: 149, column: 21, scope: !2878, inlinedAt: !3916)
!3922 = !DILocation(line: 149, column: 24, scope: !2878, inlinedAt: !3916)
!3923 = !DILocation(line: 150, column: 19, scope: !2878, inlinedAt: !3916)
!3924 = !DILocation(line: 150, column: 24, scope: !2878, inlinedAt: !3916)
!3925 = !DILocation(line: 150, column: 6, scope: !2878, inlinedAt: !3916)
!3926 = !DILocation(line: 975, column: 10, scope: !3876, inlinedAt: !3911)
!3927 = !DILocation(line: 976, column: 1, scope: !3876, inlinedAt: !3911)
!3928 = !DILocation(line: 981, column: 3, scope: !3903)
!3929 = distinct !DISubprogram(name: "quotearg_colon", scope: !688, file: !688, line: 985, type: !1207, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3930)
!3930 = !{!3931}
!3931 = !DILocalVariable(name: "arg", arg: 1, scope: !3929, file: !688, line: 985, type: !265)
!3932 = !DILocation(line: 0, scope: !3929)
!3933 = !DILocation(line: 0, scope: !3903, inlinedAt: !3934)
!3934 = distinct !DILocation(line: 987, column: 10, scope: !3929)
!3935 = !DILocation(line: 0, scope: !3876, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 981, column: 10, scope: !3903, inlinedAt: !3934)
!3937 = !DILocation(line: 972, column: 3, scope: !3876, inlinedAt: !3936)
!3938 = !DILocation(line: 972, column: 26, scope: !3876, inlinedAt: !3936)
!3939 = !DILocation(line: 973, column: 13, scope: !3876, inlinedAt: !3936)
!3940 = !DILocation(line: 0, scope: !2878, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 974, column: 3, scope: !3876, inlinedAt: !3936)
!3942 = !DILocation(line: 147, column: 57, scope: !2878, inlinedAt: !3941)
!3943 = !DILocation(line: 149, column: 21, scope: !2878, inlinedAt: !3941)
!3944 = !DILocation(line: 150, column: 6, scope: !2878, inlinedAt: !3941)
!3945 = !DILocation(line: 975, column: 10, scope: !3876, inlinedAt: !3936)
!3946 = !DILocation(line: 976, column: 1, scope: !3876, inlinedAt: !3936)
!3947 = !DILocation(line: 987, column: 3, scope: !3929)
!3948 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !688, file: !688, line: 991, type: !3757, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3949)
!3949 = !{!3950, !3951}
!3950 = !DILocalVariable(name: "arg", arg: 1, scope: !3948, file: !688, line: 991, type: !265)
!3951 = !DILocalVariable(name: "argsize", arg: 2, scope: !3948, file: !688, line: 991, type: !262)
!3952 = !DILocation(line: 0, scope: !3948)
!3953 = !DILocation(line: 0, scope: !3876, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 993, column: 10, scope: !3948)
!3955 = !DILocation(line: 972, column: 3, scope: !3876, inlinedAt: !3954)
!3956 = !DILocation(line: 972, column: 26, scope: !3876, inlinedAt: !3954)
!3957 = !DILocation(line: 973, column: 13, scope: !3876, inlinedAt: !3954)
!3958 = !DILocation(line: 0, scope: !2878, inlinedAt: !3959)
!3959 = distinct !DILocation(line: 974, column: 3, scope: !3876, inlinedAt: !3954)
!3960 = !DILocation(line: 147, column: 57, scope: !2878, inlinedAt: !3959)
!3961 = !DILocation(line: 149, column: 21, scope: !2878, inlinedAt: !3959)
!3962 = !DILocation(line: 150, column: 6, scope: !2878, inlinedAt: !3959)
!3963 = !DILocation(line: 975, column: 10, scope: !3876, inlinedAt: !3954)
!3964 = !DILocation(line: 976, column: 1, scope: !3876, inlinedAt: !3954)
!3965 = !DILocation(line: 993, column: 3, scope: !3948)
!3966 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !688, file: !688, line: 997, type: !3768, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3967)
!3967 = !{!3968, !3969, !3970, !3971}
!3968 = !DILocalVariable(name: "n", arg: 1, scope: !3966, file: !688, line: 997, type: !260)
!3969 = !DILocalVariable(name: "s", arg: 2, scope: !3966, file: !688, line: 997, type: !714)
!3970 = !DILocalVariable(name: "arg", arg: 3, scope: !3966, file: !688, line: 997, type: !265)
!3971 = !DILocalVariable(name: "options", scope: !3966, file: !688, line: 999, type: !741)
!3972 = !DILocation(line: 185, column: 26, scope: !3783, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 1000, column: 13, scope: !3966)
!3974 = !DILocation(line: 0, scope: !3966)
!3975 = !DILocation(line: 999, column: 3, scope: !3966)
!3976 = !DILocation(line: 999, column: 26, scope: !3966)
!3977 = !DILocation(line: 0, scope: !3783, inlinedAt: !3973)
!3978 = !DILocation(line: 186, column: 13, scope: !3792, inlinedAt: !3973)
!3979 = !DILocation(line: 186, column: 7, scope: !3783, inlinedAt: !3973)
!3980 = !DILocation(line: 187, column: 5, scope: !3792, inlinedAt: !3973)
!3981 = !{!3982}
!3982 = distinct !{!3982, !3983, !"quoting_options_from_style: argument 0"}
!3983 = distinct !{!3983, !"quoting_options_from_style"}
!3984 = !DILocation(line: 1000, column: 13, scope: !3966)
!3985 = !DILocation(line: 0, scope: !2878, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 1001, column: 3, scope: !3966)
!3987 = !DILocation(line: 147, column: 57, scope: !2878, inlinedAt: !3986)
!3988 = !DILocation(line: 149, column: 21, scope: !2878, inlinedAt: !3986)
!3989 = !DILocation(line: 150, column: 6, scope: !2878, inlinedAt: !3986)
!3990 = !DILocation(line: 1002, column: 10, scope: !3966)
!3991 = !DILocation(line: 1003, column: 1, scope: !3966)
!3992 = !DILocation(line: 1002, column: 3, scope: !3966)
!3993 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !688, file: !688, line: 1006, type: !3994, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3996)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!258, !260, !265, !265, !265}
!3996 = !{!3997, !3998, !3999, !4000}
!3997 = !DILocalVariable(name: "n", arg: 1, scope: !3993, file: !688, line: 1006, type: !260)
!3998 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3993, file: !688, line: 1006, type: !265)
!3999 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3993, file: !688, line: 1007, type: !265)
!4000 = !DILocalVariable(name: "arg", arg: 4, scope: !3993, file: !688, line: 1007, type: !265)
!4001 = !DILocation(line: 0, scope: !3993)
!4002 = !DILocalVariable(name: "n", arg: 1, scope: !4003, file: !688, line: 1014, type: !260)
!4003 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !688, file: !688, line: 1014, type: !4004, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !4006)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!258, !260, !265, !265, !265, !262}
!4006 = !{!4002, !4007, !4008, !4009, !4010, !4011}
!4007 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4003, file: !688, line: 1014, type: !265)
!4008 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4003, file: !688, line: 1015, type: !265)
!4009 = !DILocalVariable(name: "arg", arg: 4, scope: !4003, file: !688, line: 1016, type: !265)
!4010 = !DILocalVariable(name: "argsize", arg: 5, scope: !4003, file: !688, line: 1016, type: !262)
!4011 = !DILocalVariable(name: "o", scope: !4003, file: !688, line: 1018, type: !741)
!4012 = !DILocation(line: 0, scope: !4003, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 1009, column: 10, scope: !3993)
!4014 = !DILocation(line: 1018, column: 3, scope: !4003, inlinedAt: !4013)
!4015 = !DILocation(line: 1018, column: 26, scope: !4003, inlinedAt: !4013)
!4016 = !DILocation(line: 1018, column: 30, scope: !4003, inlinedAt: !4013)
!4017 = !DILocation(line: 0, scope: !2918, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 1019, column: 3, scope: !4003, inlinedAt: !4013)
!4019 = !DILocation(line: 174, column: 12, scope: !2918, inlinedAt: !4018)
!4020 = !DILocation(line: 175, column: 8, scope: !2931, inlinedAt: !4018)
!4021 = !DILocation(line: 175, column: 19, scope: !2931, inlinedAt: !4018)
!4022 = !DILocation(line: 176, column: 5, scope: !2931, inlinedAt: !4018)
!4023 = !DILocation(line: 177, column: 6, scope: !2918, inlinedAt: !4018)
!4024 = !DILocation(line: 177, column: 17, scope: !2918, inlinedAt: !4018)
!4025 = !DILocation(line: 178, column: 6, scope: !2918, inlinedAt: !4018)
!4026 = !DILocation(line: 178, column: 18, scope: !2918, inlinedAt: !4018)
!4027 = !DILocation(line: 1020, column: 10, scope: !4003, inlinedAt: !4013)
!4028 = !DILocation(line: 1021, column: 1, scope: !4003, inlinedAt: !4013)
!4029 = !DILocation(line: 1009, column: 3, scope: !3993)
!4030 = !DILocation(line: 0, scope: !4003)
!4031 = !DILocation(line: 1018, column: 3, scope: !4003)
!4032 = !DILocation(line: 1018, column: 26, scope: !4003)
!4033 = !DILocation(line: 1018, column: 30, scope: !4003)
!4034 = !DILocation(line: 0, scope: !2918, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 1019, column: 3, scope: !4003)
!4036 = !DILocation(line: 174, column: 12, scope: !2918, inlinedAt: !4035)
!4037 = !DILocation(line: 175, column: 8, scope: !2931, inlinedAt: !4035)
!4038 = !DILocation(line: 175, column: 19, scope: !2931, inlinedAt: !4035)
!4039 = !DILocation(line: 176, column: 5, scope: !2931, inlinedAt: !4035)
!4040 = !DILocation(line: 177, column: 6, scope: !2918, inlinedAt: !4035)
!4041 = !DILocation(line: 177, column: 17, scope: !2918, inlinedAt: !4035)
!4042 = !DILocation(line: 178, column: 6, scope: !2918, inlinedAt: !4035)
!4043 = !DILocation(line: 178, column: 18, scope: !2918, inlinedAt: !4035)
!4044 = !DILocation(line: 1020, column: 10, scope: !4003)
!4045 = !DILocation(line: 1021, column: 1, scope: !4003)
!4046 = !DILocation(line: 1020, column: 3, scope: !4003)
!4047 = distinct !DISubprogram(name: "quotearg_custom", scope: !688, file: !688, line: 1024, type: !4048, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !4050)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!258, !265, !265, !265}
!4050 = !{!4051, !4052, !4053}
!4051 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4047, file: !688, line: 1024, type: !265)
!4052 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4047, file: !688, line: 1024, type: !265)
!4053 = !DILocalVariable(name: "arg", arg: 3, scope: !4047, file: !688, line: 1025, type: !265)
!4054 = !DILocation(line: 0, scope: !4047)
!4055 = !DILocation(line: 0, scope: !3993, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 1027, column: 10, scope: !4047)
!4057 = !DILocation(line: 0, scope: !4003, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 1009, column: 10, scope: !3993, inlinedAt: !4056)
!4059 = !DILocation(line: 1018, column: 3, scope: !4003, inlinedAt: !4058)
!4060 = !DILocation(line: 1018, column: 26, scope: !4003, inlinedAt: !4058)
!4061 = !DILocation(line: 1018, column: 30, scope: !4003, inlinedAt: !4058)
!4062 = !DILocation(line: 0, scope: !2918, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 1019, column: 3, scope: !4003, inlinedAt: !4058)
!4064 = !DILocation(line: 174, column: 12, scope: !2918, inlinedAt: !4063)
!4065 = !DILocation(line: 175, column: 8, scope: !2931, inlinedAt: !4063)
!4066 = !DILocation(line: 175, column: 19, scope: !2931, inlinedAt: !4063)
!4067 = !DILocation(line: 176, column: 5, scope: !2931, inlinedAt: !4063)
!4068 = !DILocation(line: 177, column: 6, scope: !2918, inlinedAt: !4063)
!4069 = !DILocation(line: 177, column: 17, scope: !2918, inlinedAt: !4063)
!4070 = !DILocation(line: 178, column: 6, scope: !2918, inlinedAt: !4063)
!4071 = !DILocation(line: 178, column: 18, scope: !2918, inlinedAt: !4063)
!4072 = !DILocation(line: 1020, column: 10, scope: !4003, inlinedAt: !4058)
!4073 = !DILocation(line: 1021, column: 1, scope: !4003, inlinedAt: !4058)
!4074 = !DILocation(line: 1027, column: 3, scope: !4047)
!4075 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !688, file: !688, line: 1031, type: !4076, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !4078)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!258, !265, !265, !265, !262}
!4078 = !{!4079, !4080, !4081, !4082}
!4079 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4075, file: !688, line: 1031, type: !265)
!4080 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4075, file: !688, line: 1031, type: !265)
!4081 = !DILocalVariable(name: "arg", arg: 3, scope: !4075, file: !688, line: 1032, type: !265)
!4082 = !DILocalVariable(name: "argsize", arg: 4, scope: !4075, file: !688, line: 1032, type: !262)
!4083 = !DILocation(line: 0, scope: !4075)
!4084 = !DILocation(line: 0, scope: !4003, inlinedAt: !4085)
!4085 = distinct !DILocation(line: 1034, column: 10, scope: !4075)
!4086 = !DILocation(line: 1018, column: 3, scope: !4003, inlinedAt: !4085)
!4087 = !DILocation(line: 1018, column: 26, scope: !4003, inlinedAt: !4085)
!4088 = !DILocation(line: 1018, column: 30, scope: !4003, inlinedAt: !4085)
!4089 = !DILocation(line: 0, scope: !2918, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 1019, column: 3, scope: !4003, inlinedAt: !4085)
!4091 = !DILocation(line: 174, column: 12, scope: !2918, inlinedAt: !4090)
!4092 = !DILocation(line: 175, column: 8, scope: !2931, inlinedAt: !4090)
!4093 = !DILocation(line: 175, column: 19, scope: !2931, inlinedAt: !4090)
!4094 = !DILocation(line: 176, column: 5, scope: !2931, inlinedAt: !4090)
!4095 = !DILocation(line: 177, column: 6, scope: !2918, inlinedAt: !4090)
!4096 = !DILocation(line: 177, column: 17, scope: !2918, inlinedAt: !4090)
!4097 = !DILocation(line: 178, column: 6, scope: !2918, inlinedAt: !4090)
!4098 = !DILocation(line: 178, column: 18, scope: !2918, inlinedAt: !4090)
!4099 = !DILocation(line: 1020, column: 10, scope: !4003, inlinedAt: !4085)
!4100 = !DILocation(line: 1021, column: 1, scope: !4003, inlinedAt: !4085)
!4101 = !DILocation(line: 1034, column: 3, scope: !4075)
!4102 = distinct !DISubprogram(name: "quote_n_mem", scope: !688, file: !688, line: 1049, type: !4103, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !4105)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!265, !260, !265, !262}
!4105 = !{!4106, !4107, !4108}
!4106 = !DILocalVariable(name: "n", arg: 1, scope: !4102, file: !688, line: 1049, type: !260)
!4107 = !DILocalVariable(name: "arg", arg: 2, scope: !4102, file: !688, line: 1049, type: !265)
!4108 = !DILocalVariable(name: "argsize", arg: 3, scope: !4102, file: !688, line: 1049, type: !262)
!4109 = !DILocation(line: 0, scope: !4102)
!4110 = !DILocation(line: 1051, column: 10, scope: !4102)
!4111 = !DILocation(line: 1051, column: 3, scope: !4102)
!4112 = distinct !DISubprogram(name: "quote_mem", scope: !688, file: !688, line: 1055, type: !4113, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !4115)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!265, !265, !262}
!4115 = !{!4116, !4117}
!4116 = !DILocalVariable(name: "arg", arg: 1, scope: !4112, file: !688, line: 1055, type: !265)
!4117 = !DILocalVariable(name: "argsize", arg: 2, scope: !4112, file: !688, line: 1055, type: !262)
!4118 = !DILocation(line: 0, scope: !4112)
!4119 = !DILocation(line: 0, scope: !4102, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 1057, column: 10, scope: !4112)
!4121 = !DILocation(line: 1051, column: 10, scope: !4102, inlinedAt: !4120)
!4122 = !DILocation(line: 1057, column: 3, scope: !4112)
!4123 = distinct !DISubprogram(name: "quote_n", scope: !688, file: !688, line: 1061, type: !4124, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !4126)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!265, !260, !265}
!4126 = !{!4127, !4128}
!4127 = !DILocalVariable(name: "n", arg: 1, scope: !4123, file: !688, line: 1061, type: !260)
!4128 = !DILocalVariable(name: "arg", arg: 2, scope: !4123, file: !688, line: 1061, type: !265)
!4129 = !DILocation(line: 0, scope: !4123)
!4130 = !DILocation(line: 0, scope: !4102, inlinedAt: !4131)
!4131 = distinct !DILocation(line: 1063, column: 10, scope: !4123)
!4132 = !DILocation(line: 1051, column: 10, scope: !4102, inlinedAt: !4131)
!4133 = !DILocation(line: 1063, column: 3, scope: !4123)
!4134 = distinct !DISubprogram(name: "quote", scope: !688, file: !688, line: 1067, type: !2398, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !4135)
!4135 = !{!4136}
!4136 = !DILocalVariable(name: "arg", arg: 1, scope: !4134, file: !688, line: 1067, type: !265)
!4137 = !DILocation(line: 0, scope: !4134)
!4138 = !DILocation(line: 0, scope: !4123, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 1069, column: 10, scope: !4134)
!4140 = !DILocation(line: 0, scope: !4102, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 1063, column: 10, scope: !4123, inlinedAt: !4139)
!4142 = !DILocation(line: 1051, column: 10, scope: !4102, inlinedAt: !4141)
!4143 = !DILocation(line: 1069, column: 3, scope: !4134)
!4144 = distinct !DISubprogram(name: "strintcmp", scope: !913, file: !913, line: 31, type: !1210, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !912, retainedNodes: !4145)
!4145 = !{!4146, !4147}
!4146 = !DILocalVariable(name: "a", arg: 1, scope: !4144, file: !913, line: 31, type: !265)
!4147 = !DILocalVariable(name: "b", arg: 2, scope: !4144, file: !913, line: 31, type: !265)
!4148 = !DILocation(line: 0, scope: !4144)
!4149 = !DILocalVariable(name: "a", arg: 1, scope: !4150, file: !4151, line: 105, type: !265)
!4150 = distinct !DISubprogram(name: "numcompare", scope: !4151, file: !4151, line: 105, type: !4152, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !912, retainedNodes: !4154)
!4151 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f69f23aa922f1f0bf768a1237830bd5f")
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!260, !265, !265, !260, !260}
!4154 = !{!4149, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162}
!4155 = !DILocalVariable(name: "b", arg: 2, scope: !4150, file: !4151, line: 105, type: !265)
!4156 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !4150, file: !4151, line: 106, type: !260)
!4157 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !4150, file: !4151, line: 106, type: !260)
!4158 = !DILocalVariable(name: "tmpa", scope: !4150, file: !4151, line: 108, type: !4)
!4159 = !DILocalVariable(name: "tmpb", scope: !4150, file: !4151, line: 109, type: !4)
!4160 = !DILocalVariable(name: "tmp", scope: !4150, file: !4151, line: 110, type: !260)
!4161 = !DILocalVariable(name: "log_a", scope: !4150, file: !4151, line: 111, type: !262)
!4162 = !DILocalVariable(name: "log_b", scope: !4150, file: !4151, line: 112, type: !262)
!4163 = !DILocation(line: 0, scope: !4150, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 33, column: 10, scope: !4144)
!4165 = !DILocation(line: 108, column: 15, scope: !4150, inlinedAt: !4164)
!4166 = !DILocation(line: 109, column: 15, scope: !4150, inlinedAt: !4164)
!4167 = !DILocation(line: 114, column: 12, scope: !4168, inlinedAt: !4164)
!4168 = distinct !DILexicalBlock(scope: !4150, file: !4151, line: 114, column: 7)
!4169 = !DILocation(line: 114, column: 7, scope: !4150, inlinedAt: !4164)
!4170 = !DILocation(line: 117, column: 17, scope: !4171, inlinedAt: !4164)
!4171 = distinct !DILexicalBlock(scope: !4168, file: !4151, line: 115, column: 5)
!4172 = !DILocation(line: 117, column: 16, scope: !4171, inlinedAt: !4164)
!4173 = !DILocation(line: 118, column: 19, scope: !4171, inlinedAt: !4164)
!4174 = !DILocation(line: 117, column: 9, scope: !4171, inlinedAt: !4164)
!4175 = distinct !{!4175, !4176, !4177, !1142}
!4176 = !DILocation(line: 116, column: 7, scope: !4171, inlinedAt: !4164)
!4177 = !DILocation(line: 118, column: 59, scope: !4171, inlinedAt: !4164)
!4178 = !DILocation(line: 119, column: 16, scope: !4179, inlinedAt: !4164)
!4179 = distinct !DILexicalBlock(scope: !4171, file: !4151, line: 119, column: 11)
!4180 = !DILocation(line: 119, column: 11, scope: !4171, inlinedAt: !4164)
!4181 = !DILocation(line: 125, column: 26, scope: !4182, inlinedAt: !4164)
!4182 = distinct !DILexicalBlock(scope: !4183, file: !4151, line: 125, column: 15)
!4183 = distinct !DILexicalBlock(scope: !4179, file: !4151, line: 120, column: 9)
!4184 = !DILocalVariable(name: "c", arg: 1, scope: !4185, file: !2421, line: 233, type: !260)
!4185 = distinct !DISubprogram(name: "c_isdigit", scope: !2421, file: !2421, line: 233, type: !1342, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !912, retainedNodes: !4186)
!4186 = !{!4184}
!4187 = !DILocation(line: 0, scope: !4185, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 125, column: 15, scope: !4182, inlinedAt: !4164)
!4189 = !DILocation(line: 235, column: 3, scope: !4185, inlinedAt: !4188)
!4190 = !DILocation(line: 125, column: 15, scope: !4183, inlinedAt: !4164)
!4191 = !DILocation(line: 127, column: 23, scope: !4183, inlinedAt: !4164)
!4192 = !DILocation(line: 127, column: 11, scope: !4183, inlinedAt: !4164)
!4193 = !DILocation(line: 128, column: 21, scope: !4183, inlinedAt: !4164)
!4194 = !DILocation(line: 128, column: 20, scope: !4183, inlinedAt: !4164)
!4195 = distinct !{!4195, !4192, !4196, !1142}
!4196 = !DILocation(line: 128, column: 23, scope: !4183, inlinedAt: !4164)
!4197 = !DILocation(line: 133, column: 31, scope: !4183, inlinedAt: !4164)
!4198 = !DILocation(line: 0, scope: !4185, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 133, column: 20, scope: !4183, inlinedAt: !4164)
!4200 = !DILocation(line: 235, column: 3, scope: !4185, inlinedAt: !4199)
!4201 = !DILocation(line: 133, column: 20, scope: !4183, inlinedAt: !4164)
!4202 = !DILocation(line: 133, column: 11, scope: !4183, inlinedAt: !4164)
!4203 = !DILocation(line: 136, column: 17, scope: !4171, inlinedAt: !4164)
!4204 = !DILocation(line: 136, column: 16, scope: !4171, inlinedAt: !4164)
!4205 = !DILocation(line: 137, column: 19, scope: !4171, inlinedAt: !4164)
!4206 = !DILocation(line: 136, column: 9, scope: !4171, inlinedAt: !4164)
!4207 = distinct !{!4207, !4208, !4209, !1142}
!4208 = !DILocation(line: 135, column: 7, scope: !4171, inlinedAt: !4164)
!4209 = !DILocation(line: 137, column: 59, scope: !4171, inlinedAt: !4164)
!4210 = !DILocation(line: 139, column: 14, scope: !4171, inlinedAt: !4164)
!4211 = !DILocation(line: 139, column: 19, scope: !4171, inlinedAt: !4164)
!4212 = !DILocation(line: 139, column: 27, scope: !4171, inlinedAt: !4164)
!4213 = !DILocation(line: 0, scope: !4185, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 139, column: 30, scope: !4171, inlinedAt: !4164)
!4215 = !DILocation(line: 142, column: 21, scope: !4216, inlinedAt: !4164)
!4216 = distinct !DILexicalBlock(scope: !4171, file: !4151, line: 140, column: 9)
!4217 = !DILocation(line: 142, column: 20, scope: !4216, inlinedAt: !4164)
!4218 = !DILocation(line: 145, column: 21, scope: !4216, inlinedAt: !4164)
!4219 = !DILocation(line: 145, column: 20, scope: !4216, inlinedAt: !4164)
!4220 = distinct !{!4220, !4221, !4222, !1142}
!4221 = !DILocation(line: 139, column: 7, scope: !4171, inlinedAt: !4164)
!4222 = !DILocation(line: 147, column: 9, scope: !4171, inlinedAt: !4164)
!4223 = !DILocation(line: 139, column: 22, scope: !4171, inlinedAt: !4164)
!4224 = !DILocation(line: 235, column: 3, scope: !4185, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 155, column: 23, scope: !4226, inlinedAt: !4164)
!4226 = distinct !DILexicalBlock(scope: !4227, file: !4151, line: 155, column: 7)
!4227 = distinct !DILexicalBlock(scope: !4171, file: !4151, line: 155, column: 7)
!4228 = !DILocation(line: 0, scope: !4171, inlinedAt: !4164)
!4229 = !DILocation(line: 153, column: 18, scope: !4171, inlinedAt: !4164)
!4230 = !DILocation(line: 0, scope: !4185, inlinedAt: !4225)
!4231 = !DILocation(line: 155, column: 7, scope: !4227, inlinedAt: !4164)
!4232 = !DILocation(line: 155, scope: !4227, inlinedAt: !4164)
!4233 = !DILocation(line: 0, scope: !4185, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 160, column: 23, scope: !4235, inlinedAt: !4164)
!4235 = distinct !DILexicalBlock(scope: !4236, file: !4151, line: 160, column: 7)
!4236 = distinct !DILexicalBlock(scope: !4171, file: !4151, line: 160, column: 7)
!4237 = !DILocation(line: 235, column: 3, scope: !4185, inlinedAt: !4234)
!4238 = !DILocation(line: 160, column: 7, scope: !4236, inlinedAt: !4164)
!4239 = !DILocation(line: 157, column: 19, scope: !4226, inlinedAt: !4164)
!4240 = !DILocation(line: 157, column: 18, scope: !4226, inlinedAt: !4164)
!4241 = !DILocation(line: 155, column: 41, scope: !4226, inlinedAt: !4164)
!4242 = !DILocation(line: 155, column: 34, scope: !4226, inlinedAt: !4164)
!4243 = distinct !{!4243, !4231, !4244, !1142}
!4244 = !DILocation(line: 158, column: 37, scope: !4227, inlinedAt: !4164)
!4245 = !DILocation(line: 162, column: 19, scope: !4235, inlinedAt: !4164)
!4246 = !DILocation(line: 162, column: 18, scope: !4235, inlinedAt: !4164)
!4247 = !DILocation(line: 160, column: 41, scope: !4235, inlinedAt: !4164)
!4248 = !DILocation(line: 160, column: 34, scope: !4235, inlinedAt: !4164)
!4249 = distinct !{!4249, !4238, !4250, !1142}
!4250 = !DILocation(line: 163, column: 37, scope: !4236, inlinedAt: !4164)
!4251 = !DILocation(line: 160, scope: !4236, inlinedAt: !4164)
!4252 = !DILocation(line: 165, column: 17, scope: !4253, inlinedAt: !4164)
!4253 = distinct !DILexicalBlock(scope: !4171, file: !4151, line: 165, column: 11)
!4254 = !DILocation(line: 165, column: 11, scope: !4171, inlinedAt: !4164)
!4255 = !DILocation(line: 166, column: 22, scope: !4253, inlinedAt: !4164)
!4256 = !DILocation(line: 166, column: 16, scope: !4253, inlinedAt: !4164)
!4257 = !DILocation(line: 166, column: 9, scope: !4253, inlinedAt: !4164)
!4258 = !DILocation(line: 168, column: 12, scope: !4259, inlinedAt: !4164)
!4259 = distinct !DILexicalBlock(scope: !4171, file: !4151, line: 168, column: 11)
!4260 = !DILocation(line: 173, column: 17, scope: !4261, inlinedAt: !4164)
!4261 = distinct !DILexicalBlock(scope: !4168, file: !4151, line: 173, column: 12)
!4262 = !DILocation(line: 173, column: 12, scope: !4168, inlinedAt: !4164)
!4263 = !DILocation(line: 194, column: 19, scope: !4264, inlinedAt: !4164)
!4264 = distinct !DILexicalBlock(scope: !4261, file: !4151, line: 193, column: 5)
!4265 = !DILocation(line: 194, column: 7, scope: !4264, inlinedAt: !4164)
!4266 = !DILocation(line: 176, column: 17, scope: !4267, inlinedAt: !4164)
!4267 = distinct !DILexicalBlock(scope: !4261, file: !4151, line: 174, column: 5)
!4268 = !DILocation(line: 176, column: 16, scope: !4267, inlinedAt: !4164)
!4269 = !DILocation(line: 177, column: 19, scope: !4267, inlinedAt: !4164)
!4270 = !DILocation(line: 176, column: 9, scope: !4267, inlinedAt: !4164)
!4271 = distinct !{!4271, !4272, !4273, !1142}
!4272 = !DILocation(line: 175, column: 7, scope: !4267, inlinedAt: !4164)
!4273 = !DILocation(line: 177, column: 59, scope: !4267, inlinedAt: !4164)
!4274 = !DILocation(line: 182, column: 22, scope: !4275, inlinedAt: !4164)
!4275 = distinct !DILexicalBlock(scope: !4267, file: !4151, line: 182, column: 11)
!4276 = !DILocation(line: 0, scope: !4185, inlinedAt: !4277)
!4277 = distinct !DILocation(line: 182, column: 11, scope: !4275, inlinedAt: !4164)
!4278 = !DILocation(line: 235, column: 3, scope: !4185, inlinedAt: !4277)
!4279 = !DILocation(line: 182, column: 11, scope: !4267, inlinedAt: !4164)
!4280 = !DILocation(line: 184, column: 19, scope: !4267, inlinedAt: !4164)
!4281 = !DILocation(line: 184, column: 7, scope: !4267, inlinedAt: !4164)
!4282 = !DILocation(line: 185, column: 17, scope: !4267, inlinedAt: !4164)
!4283 = !DILocation(line: 185, column: 16, scope: !4267, inlinedAt: !4164)
!4284 = distinct !{!4284, !4281, !4285, !1142}
!4285 = !DILocation(line: 185, column: 19, scope: !4267, inlinedAt: !4164)
!4286 = !DILocation(line: 190, column: 25, scope: !4267, inlinedAt: !4164)
!4287 = !DILocation(line: 0, scope: !4185, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 190, column: 14, scope: !4267, inlinedAt: !4164)
!4289 = !DILocation(line: 235, column: 3, scope: !4185, inlinedAt: !4288)
!4290 = !DILocation(line: 190, column: 14, scope: !4267, inlinedAt: !4164)
!4291 = !DILocation(line: 190, column: 7, scope: !4267, inlinedAt: !4164)
!4292 = !DILocation(line: 196, column: 19, scope: !4264, inlinedAt: !4164)
!4293 = !DILocation(line: 196, column: 7, scope: !4264, inlinedAt: !4164)
!4294 = !DILocation(line: 195, column: 17, scope: !4264, inlinedAt: !4164)
!4295 = !DILocation(line: 195, column: 16, scope: !4264, inlinedAt: !4164)
!4296 = distinct !{!4296, !4265, !4297, !1142}
!4297 = !DILocation(line: 195, column: 19, scope: !4264, inlinedAt: !4164)
!4298 = !DILocation(line: 199, column: 14, scope: !4264, inlinedAt: !4164)
!4299 = !DILocation(line: 199, column: 19, scope: !4264, inlinedAt: !4164)
!4300 = !DILocation(line: 199, column: 27, scope: !4264, inlinedAt: !4164)
!4301 = !DILocation(line: 0, scope: !4185, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 199, column: 30, scope: !4264, inlinedAt: !4164)
!4303 = !DILocation(line: 197, column: 17, scope: !4264, inlinedAt: !4164)
!4304 = !DILocation(line: 197, column: 16, scope: !4264, inlinedAt: !4164)
!4305 = distinct !{!4305, !4293, !4306, !1142}
!4306 = !DILocation(line: 197, column: 19, scope: !4264, inlinedAt: !4164)
!4307 = !DILocation(line: 202, column: 21, scope: !4308, inlinedAt: !4164)
!4308 = distinct !DILexicalBlock(scope: !4264, file: !4151, line: 200, column: 9)
!4309 = !DILocation(line: 202, column: 20, scope: !4308, inlinedAt: !4164)
!4310 = !DILocation(line: 205, column: 21, scope: !4308, inlinedAt: !4164)
!4311 = !DILocation(line: 205, column: 20, scope: !4308, inlinedAt: !4164)
!4312 = distinct !{!4312, !4313, !4314, !1142}
!4313 = !DILocation(line: 199, column: 7, scope: !4264, inlinedAt: !4164)
!4314 = !DILocation(line: 207, column: 9, scope: !4264, inlinedAt: !4164)
!4315 = !DILocation(line: 199, column: 22, scope: !4264, inlinedAt: !4164)
!4316 = !DILocation(line: 235, column: 3, scope: !4185, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 215, column: 23, scope: !4318, inlinedAt: !4164)
!4318 = distinct !DILexicalBlock(scope: !4319, file: !4151, line: 215, column: 7)
!4319 = distinct !DILexicalBlock(scope: !4264, file: !4151, line: 215, column: 7)
!4320 = !DILocation(line: 213, column: 18, scope: !4264, inlinedAt: !4164)
!4321 = !DILocation(line: 0, scope: !4185, inlinedAt: !4317)
!4322 = !DILocation(line: 215, column: 7, scope: !4319, inlinedAt: !4164)
!4323 = !DILocation(line: 215, scope: !4319, inlinedAt: !4164)
!4324 = !DILocation(line: 0, scope: !4185, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 220, column: 23, scope: !4326, inlinedAt: !4164)
!4326 = distinct !DILexicalBlock(scope: !4327, file: !4151, line: 220, column: 7)
!4327 = distinct !DILexicalBlock(scope: !4264, file: !4151, line: 220, column: 7)
!4328 = !DILocation(line: 235, column: 3, scope: !4185, inlinedAt: !4325)
!4329 = !DILocation(line: 220, column: 7, scope: !4327, inlinedAt: !4164)
!4330 = !DILocation(line: 217, column: 19, scope: !4318, inlinedAt: !4164)
!4331 = !DILocation(line: 217, column: 18, scope: !4318, inlinedAt: !4164)
!4332 = !DILocation(line: 215, column: 41, scope: !4318, inlinedAt: !4164)
!4333 = !DILocation(line: 215, column: 34, scope: !4318, inlinedAt: !4164)
!4334 = distinct !{!4334, !4322, !4335, !1142}
!4335 = !DILocation(line: 218, column: 37, scope: !4319, inlinedAt: !4164)
!4336 = !DILocation(line: 222, column: 19, scope: !4326, inlinedAt: !4164)
!4337 = !DILocation(line: 222, column: 18, scope: !4326, inlinedAt: !4164)
!4338 = !DILocation(line: 220, column: 41, scope: !4326, inlinedAt: !4164)
!4339 = !DILocation(line: 220, column: 34, scope: !4326, inlinedAt: !4164)
!4340 = distinct !{!4340, !4329, !4341, !1142}
!4341 = !DILocation(line: 223, column: 37, scope: !4327, inlinedAt: !4164)
!4342 = !DILocation(line: 220, scope: !4327, inlinedAt: !4164)
!4343 = !DILocation(line: 225, column: 17, scope: !4344, inlinedAt: !4164)
!4344 = distinct !DILexicalBlock(scope: !4264, file: !4151, line: 225, column: 11)
!4345 = !DILocation(line: 225, column: 11, scope: !4264, inlinedAt: !4164)
!4346 = !DILocation(line: 226, column: 22, scope: !4344, inlinedAt: !4164)
!4347 = !DILocation(line: 226, column: 16, scope: !4344, inlinedAt: !4164)
!4348 = !DILocation(line: 226, column: 9, scope: !4344, inlinedAt: !4164)
!4349 = !DILocation(line: 228, column: 12, scope: !4350, inlinedAt: !4164)
!4350 = distinct !DILexicalBlock(scope: !4264, file: !4151, line: 228, column: 11)
!4351 = !DILocation(line: 0, scope: !4264, inlinedAt: !4164)
!4352 = !DILocation(line: 0, scope: !4168, inlinedAt: !4164)
!4353 = !DILocation(line: 33, column: 3, scope: !4144)
!4354 = distinct !DISubprogram(name: "version_etc_arn", scope: !802, file: !802, line: 61, type: !4355, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !914, retainedNodes: !4392)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{null, !4357, !265, !265, !265, !4391, !262}
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !4359)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !4360)
!4360 = !{!4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4359, file: !336, line: 51, baseType: !260, size: 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4359, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4359, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4359, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4359, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4359, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4359, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4359, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4359, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4359, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4359, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4359, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4359, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4359, file: !336, line: 70, baseType: !4375, size: 64, offset: 832)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4359, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4359, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4359, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4359, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4359, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4359, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4359, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4359, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4359, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4359, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4359, file: !336, line: 93, baseType: !4375, size: 64, offset: 1344)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4359, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4359, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4359, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4359, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!4392 = !{!4393, !4394, !4395, !4396, !4397, !4398}
!4393 = !DILocalVariable(name: "stream", arg: 1, scope: !4354, file: !802, line: 61, type: !4357)
!4394 = !DILocalVariable(name: "command_name", arg: 2, scope: !4354, file: !802, line: 62, type: !265)
!4395 = !DILocalVariable(name: "package", arg: 3, scope: !4354, file: !802, line: 62, type: !265)
!4396 = !DILocalVariable(name: "version", arg: 4, scope: !4354, file: !802, line: 63, type: !265)
!4397 = !DILocalVariable(name: "authors", arg: 5, scope: !4354, file: !802, line: 64, type: !4391)
!4398 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4354, file: !802, line: 64, type: !262)
!4399 = !DILocation(line: 0, scope: !4354)
!4400 = !DILocation(line: 66, column: 7, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4354, file: !802, line: 66, column: 7)
!4402 = !DILocation(line: 66, column: 7, scope: !4354)
!4403 = !DILocation(line: 67, column: 5, scope: !4401)
!4404 = !DILocation(line: 69, column: 5, scope: !4401)
!4405 = !DILocation(line: 83, column: 3, scope: !4354)
!4406 = !DILocation(line: 85, column: 3, scope: !4354)
!4407 = !DILocation(line: 88, column: 3, scope: !4354)
!4408 = !DILocation(line: 95, column: 3, scope: !4354)
!4409 = !DILocation(line: 97, column: 3, scope: !4354)
!4410 = !DILocation(line: 105, column: 7, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4354, file: !802, line: 98, column: 5)
!4412 = !DILocation(line: 106, column: 7, scope: !4411)
!4413 = !DILocation(line: 109, column: 7, scope: !4411)
!4414 = !DILocation(line: 110, column: 7, scope: !4411)
!4415 = !DILocation(line: 113, column: 7, scope: !4411)
!4416 = !DILocation(line: 115, column: 7, scope: !4411)
!4417 = !DILocation(line: 120, column: 7, scope: !4411)
!4418 = !DILocation(line: 122, column: 7, scope: !4411)
!4419 = !DILocation(line: 127, column: 7, scope: !4411)
!4420 = !DILocation(line: 129, column: 7, scope: !4411)
!4421 = !DILocation(line: 134, column: 7, scope: !4411)
!4422 = !DILocation(line: 137, column: 7, scope: !4411)
!4423 = !DILocation(line: 142, column: 7, scope: !4411)
!4424 = !DILocation(line: 145, column: 7, scope: !4411)
!4425 = !DILocation(line: 150, column: 7, scope: !4411)
!4426 = !DILocation(line: 154, column: 7, scope: !4411)
!4427 = !DILocation(line: 159, column: 7, scope: !4411)
!4428 = !DILocation(line: 163, column: 7, scope: !4411)
!4429 = !DILocation(line: 170, column: 7, scope: !4411)
!4430 = !DILocation(line: 174, column: 7, scope: !4411)
!4431 = !DILocation(line: 176, column: 1, scope: !4354)
!4432 = distinct !DISubprogram(name: "version_etc_ar", scope: !802, file: !802, line: 183, type: !4433, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !914, retainedNodes: !4435)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{null, !4357, !265, !265, !265, !4391}
!4435 = !{!4436, !4437, !4438, !4439, !4440, !4441}
!4436 = !DILocalVariable(name: "stream", arg: 1, scope: !4432, file: !802, line: 183, type: !4357)
!4437 = !DILocalVariable(name: "command_name", arg: 2, scope: !4432, file: !802, line: 184, type: !265)
!4438 = !DILocalVariable(name: "package", arg: 3, scope: !4432, file: !802, line: 184, type: !265)
!4439 = !DILocalVariable(name: "version", arg: 4, scope: !4432, file: !802, line: 185, type: !265)
!4440 = !DILocalVariable(name: "authors", arg: 5, scope: !4432, file: !802, line: 185, type: !4391)
!4441 = !DILocalVariable(name: "n_authors", scope: !4432, file: !802, line: 187, type: !262)
!4442 = !DILocation(line: 0, scope: !4432)
!4443 = !DILocation(line: 189, column: 8, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4432, file: !802, line: 189, column: 3)
!4445 = !DILocation(line: 189, scope: !4444)
!4446 = !DILocation(line: 189, column: 23, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4444, file: !802, line: 189, column: 3)
!4448 = !DILocation(line: 189, column: 3, scope: !4444)
!4449 = !DILocation(line: 189, column: 52, scope: !4447)
!4450 = distinct !{!4450, !4448, !4451, !1142}
!4451 = !DILocation(line: 190, column: 5, scope: !4444)
!4452 = !DILocation(line: 191, column: 3, scope: !4432)
!4453 = !DILocation(line: 192, column: 1, scope: !4432)
!4454 = distinct !DISubprogram(name: "version_etc_va", scope: !802, file: !802, line: 199, type: !4455, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !914, retainedNodes: !4465)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{null, !4357, !265, !265, !265, !4457}
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4459)
!4459 = !{!4460, !4462, !4463, !4464}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4458, file: !4461, line: 192, baseType: !222, size: 32)
!4461 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4458, file: !4461, line: 192, baseType: !222, size: 32, offset: 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4458, file: !4461, line: 192, baseType: !259, size: 64, offset: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4458, file: !4461, line: 192, baseType: !259, size: 64, offset: 128)
!4465 = !{!4466, !4467, !4468, !4469, !4470, !4471, !4472}
!4466 = !DILocalVariable(name: "stream", arg: 1, scope: !4454, file: !802, line: 199, type: !4357)
!4467 = !DILocalVariable(name: "command_name", arg: 2, scope: !4454, file: !802, line: 200, type: !265)
!4468 = !DILocalVariable(name: "package", arg: 3, scope: !4454, file: !802, line: 200, type: !265)
!4469 = !DILocalVariable(name: "version", arg: 4, scope: !4454, file: !802, line: 201, type: !265)
!4470 = !DILocalVariable(name: "authors", arg: 5, scope: !4454, file: !802, line: 201, type: !4457)
!4471 = !DILocalVariable(name: "n_authors", scope: !4454, file: !802, line: 203, type: !262)
!4472 = !DILocalVariable(name: "authtab", scope: !4454, file: !802, line: 204, type: !4473)
!4473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 640, elements: !209)
!4474 = !DILocation(line: 0, scope: !4454)
!4475 = !DILocation(line: 204, column: 3, scope: !4454)
!4476 = !DILocation(line: 204, column: 15, scope: !4454)
!4477 = !DILocation(line: 208, column: 35, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !802, line: 206, column: 3)
!4479 = distinct !DILexicalBlock(scope: !4454, file: !802, line: 206, column: 3)
!4480 = !DILocation(line: 208, column: 33, scope: !4478)
!4481 = !DILocation(line: 208, column: 67, scope: !4478)
!4482 = !DILocation(line: 206, column: 3, scope: !4479)
!4483 = !DILocation(line: 208, column: 14, scope: !4478)
!4484 = !DILocation(line: 0, scope: !4479)
!4485 = !DILocation(line: 211, column: 3, scope: !4454)
!4486 = !DILocation(line: 213, column: 1, scope: !4454)
!4487 = distinct !DISubprogram(name: "version_etc", scope: !802, file: !802, line: 230, type: !4488, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !914, retainedNodes: !4490)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{null, !4357, !265, !265, !265, null}
!4490 = !{!4491, !4492, !4493, !4494, !4495}
!4491 = !DILocalVariable(name: "stream", arg: 1, scope: !4487, file: !802, line: 230, type: !4357)
!4492 = !DILocalVariable(name: "command_name", arg: 2, scope: !4487, file: !802, line: 231, type: !265)
!4493 = !DILocalVariable(name: "package", arg: 3, scope: !4487, file: !802, line: 231, type: !265)
!4494 = !DILocalVariable(name: "version", arg: 4, scope: !4487, file: !802, line: 232, type: !265)
!4495 = !DILocalVariable(name: "authors", scope: !4487, file: !802, line: 234, type: !4496)
!4496 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1090, line: 52, baseType: !4497)
!4497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1325, line: 14, baseType: !4498)
!4498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4461, baseType: !4499)
!4499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4458, size: 192, elements: !204)
!4500 = !DILocation(line: 0, scope: !4487)
!4501 = !DILocation(line: 234, column: 3, scope: !4487)
!4502 = !DILocation(line: 234, column: 11, scope: !4487)
!4503 = !DILocation(line: 235, column: 3, scope: !4487)
!4504 = !DILocation(line: 236, column: 3, scope: !4487)
!4505 = !DILocation(line: 237, column: 3, scope: !4487)
!4506 = !DILocation(line: 238, column: 1, scope: !4487)
!4507 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !802, file: !802, line: 241, type: !643, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !914, retainedNodes: !1082)
!4508 = !DILocation(line: 243, column: 3, scope: !4507)
!4509 = !DILocation(line: 248, column: 3, scope: !4507)
!4510 = !DILocation(line: 254, column: 3, scope: !4507)
!4511 = !DILocation(line: 259, column: 3, scope: !4507)
!4512 = !DILocation(line: 261, column: 1, scope: !4507)
!4513 = distinct !DISubprogram(name: "xnrealloc", scope: !4514, file: !4514, line: 147, type: !4515, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4517)
!4514 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!259, !259, !262, !262}
!4517 = !{!4518, !4519, !4520}
!4518 = !DILocalVariable(name: "p", arg: 1, scope: !4513, file: !4514, line: 147, type: !259)
!4519 = !DILocalVariable(name: "n", arg: 2, scope: !4513, file: !4514, line: 147, type: !262)
!4520 = !DILocalVariable(name: "s", arg: 3, scope: !4513, file: !4514, line: 147, type: !262)
!4521 = !DILocation(line: 0, scope: !4513)
!4522 = !DILocalVariable(name: "p", arg: 1, scope: !4523, file: !922, line: 83, type: !259)
!4523 = distinct !DISubprogram(name: "xreallocarray", scope: !922, file: !922, line: 83, type: !4515, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4524)
!4524 = !{!4522, !4525, !4526}
!4525 = !DILocalVariable(name: "n", arg: 2, scope: !4523, file: !922, line: 83, type: !262)
!4526 = !DILocalVariable(name: "s", arg: 3, scope: !4523, file: !922, line: 83, type: !262)
!4527 = !DILocation(line: 0, scope: !4523, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 149, column: 10, scope: !4513)
!4529 = !DILocation(line: 85, column: 25, scope: !4523, inlinedAt: !4528)
!4530 = !DILocalVariable(name: "p", arg: 1, scope: !4531, file: !922, line: 37, type: !259)
!4531 = distinct !DISubprogram(name: "check_nonnull", scope: !922, file: !922, line: 37, type: !4532, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4534)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!259, !259}
!4534 = !{!4530}
!4535 = !DILocation(line: 0, scope: !4531, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 85, column: 10, scope: !4523, inlinedAt: !4528)
!4537 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4536)
!4538 = distinct !DILexicalBlock(scope: !4531, file: !922, line: 39, column: 7)
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
!4550 = distinct !DISubprogram(name: "xmalloc", scope: !922, file: !922, line: 47, type: !4551, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4553)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!259, !262}
!4553 = !{!4554}
!4554 = !DILocalVariable(name: "s", arg: 1, scope: !4550, file: !922, line: 47, type: !262)
!4555 = !DILocation(line: 0, scope: !4550)
!4556 = !DILocation(line: 49, column: 25, scope: !4550)
!4557 = !DILocation(line: 0, scope: !4531, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 49, column: 10, scope: !4550)
!4559 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4558)
!4560 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4558)
!4561 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4558)
!4562 = !DILocation(line: 49, column: 3, scope: !4550)
!4563 = !DISubprogram(name: "malloc", scope: !1205, file: !1205, line: 540, type: !4551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!4564 = distinct !DISubprogram(name: "ximalloc", scope: !922, file: !922, line: 53, type: !4565, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4567)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!259, !941}
!4567 = !{!4568}
!4568 = !DILocalVariable(name: "s", arg: 1, scope: !4564, file: !922, line: 53, type: !941)
!4569 = !DILocation(line: 0, scope: !4564)
!4570 = !DILocalVariable(name: "s", arg: 1, scope: !4571, file: !4572, line: 55, type: !941)
!4571 = distinct !DISubprogram(name: "imalloc", scope: !4572, file: !4572, line: 55, type: !4565, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4573)
!4572 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
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
!4583 = distinct !DISubprogram(name: "xcharalloc", scope: !922, file: !922, line: 59, type: !4584, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4586)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!258, !262}
!4586 = !{!4587}
!4587 = !DILocalVariable(name: "n", arg: 1, scope: !4583, file: !922, line: 59, type: !262)
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
!4598 = distinct !DISubprogram(name: "xrealloc", scope: !922, file: !922, line: 68, type: !4599, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4601)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!259, !259, !262}
!4601 = !{!4602, !4603}
!4602 = !DILocalVariable(name: "p", arg: 1, scope: !4598, file: !922, line: 68, type: !259)
!4603 = !DILocalVariable(name: "s", arg: 2, scope: !4598, file: !922, line: 68, type: !262)
!4604 = !DILocation(line: 0, scope: !4598)
!4605 = !DILocalVariable(name: "ptr", arg: 1, scope: !4606, file: !4607, line: 2057, type: !259)
!4606 = distinct !DISubprogram(name: "rpl_realloc", scope: !4607, file: !4607, line: 2057, type: !4599, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4608)
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
!4620 = !DISubprogram(name: "realloc", scope: !1205, file: !1205, line: 551, type: !4599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!4621 = distinct !DISubprogram(name: "xirealloc", scope: !922, file: !922, line: 74, type: !4622, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4624)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!259, !259, !941}
!4624 = !{!4625, !4626}
!4625 = !DILocalVariable(name: "p", arg: 1, scope: !4621, file: !922, line: 74, type: !259)
!4626 = !DILocalVariable(name: "s", arg: 2, scope: !4621, file: !922, line: 74, type: !941)
!4627 = !DILocation(line: 0, scope: !4621)
!4628 = !DILocalVariable(name: "p", arg: 1, scope: !4629, file: !4572, line: 66, type: !259)
!4629 = distinct !DISubprogram(name: "irealloc", scope: !4572, file: !4572, line: 66, type: !4622, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4630)
!4630 = !{!4628, !4631}
!4631 = !DILocalVariable(name: "s", arg: 2, scope: !4629, file: !4572, line: 66, type: !941)
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
!4644 = distinct !DISubprogram(name: "xireallocarray", scope: !922, file: !922, line: 89, type: !4645, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4647)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!259, !259, !941, !941}
!4647 = !{!4648, !4649, !4650}
!4648 = !DILocalVariable(name: "p", arg: 1, scope: !4644, file: !922, line: 89, type: !259)
!4649 = !DILocalVariable(name: "n", arg: 2, scope: !4644, file: !922, line: 89, type: !941)
!4650 = !DILocalVariable(name: "s", arg: 3, scope: !4644, file: !922, line: 89, type: !941)
!4651 = !DILocation(line: 0, scope: !4644)
!4652 = !DILocalVariable(name: "p", arg: 1, scope: !4653, file: !4572, line: 98, type: !259)
!4653 = distinct !DISubprogram(name: "ireallocarray", scope: !4572, file: !4572, line: 98, type: !4645, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4654)
!4654 = !{!4652, !4655, !4656}
!4655 = !DILocalVariable(name: "n", arg: 2, scope: !4653, file: !4572, line: 98, type: !941)
!4656 = !DILocalVariable(name: "s", arg: 3, scope: !4653, file: !4572, line: 98, type: !941)
!4657 = !DILocation(line: 0, scope: !4653, inlinedAt: !4658)
!4658 = distinct !DILocation(line: 91, column: 25, scope: !4644)
!4659 = !DILocation(line: 101, column: 13, scope: !4653, inlinedAt: !4658)
!4660 = !DILocation(line: 0, scope: !4531, inlinedAt: !4661)
!4661 = distinct !DILocation(line: 91, column: 10, scope: !4644)
!4662 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4661)
!4663 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4661)
!4664 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4661)
!4665 = !DILocation(line: 91, column: 3, scope: !4644)
!4666 = distinct !DISubprogram(name: "xnmalloc", scope: !922, file: !922, line: 98, type: !4667, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4669)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!259, !262, !262}
!4669 = !{!4670, !4671}
!4670 = !DILocalVariable(name: "n", arg: 1, scope: !4666, file: !922, line: 98, type: !262)
!4671 = !DILocalVariable(name: "s", arg: 2, scope: !4666, file: !922, line: 98, type: !262)
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
!4682 = distinct !DISubprogram(name: "xinmalloc", scope: !922, file: !922, line: 104, type: !4683, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4685)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!259, !941, !941}
!4685 = !{!4686, !4687}
!4686 = !DILocalVariable(name: "n", arg: 1, scope: !4682, file: !922, line: 104, type: !941)
!4687 = !DILocalVariable(name: "s", arg: 2, scope: !4682, file: !922, line: 104, type: !941)
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
!4700 = distinct !DISubprogram(name: "x2realloc", scope: !922, file: !922, line: 116, type: !4701, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4703)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!259, !259, !928}
!4703 = !{!4704, !4705}
!4704 = !DILocalVariable(name: "p", arg: 1, scope: !4700, file: !922, line: 116, type: !259)
!4705 = !DILocalVariable(name: "ps", arg: 2, scope: !4700, file: !922, line: 116, type: !928)
!4706 = !DILocation(line: 0, scope: !4700)
!4707 = !DILocation(line: 0, scope: !925, inlinedAt: !4708)
!4708 = distinct !DILocation(line: 118, column: 10, scope: !4700)
!4709 = !DILocation(line: 178, column: 14, scope: !925, inlinedAt: !4708)
!4710 = !DILocation(line: 180, column: 9, scope: !4711, inlinedAt: !4708)
!4711 = distinct !DILexicalBlock(scope: !925, file: !922, line: 180, column: 7)
!4712 = !DILocation(line: 180, column: 7, scope: !925, inlinedAt: !4708)
!4713 = !DILocation(line: 182, column: 13, scope: !4714, inlinedAt: !4708)
!4714 = distinct !DILexicalBlock(scope: !4715, file: !922, line: 182, column: 11)
!4715 = distinct !DILexicalBlock(scope: !4711, file: !922, line: 181, column: 5)
!4716 = !DILocation(line: 182, column: 11, scope: !4715, inlinedAt: !4708)
!4717 = !DILocation(line: 197, column: 11, scope: !4718, inlinedAt: !4708)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !922, line: 197, column: 11)
!4719 = distinct !DILexicalBlock(scope: !4711, file: !922, line: 195, column: 5)
!4720 = !DILocation(line: 197, column: 11, scope: !4719, inlinedAt: !4708)
!4721 = !DILocation(line: 198, column: 9, scope: !4718, inlinedAt: !4708)
!4722 = !DILocation(line: 0, scope: !4523, inlinedAt: !4723)
!4723 = distinct !DILocation(line: 201, column: 7, scope: !925, inlinedAt: !4708)
!4724 = !DILocation(line: 85, column: 25, scope: !4523, inlinedAt: !4723)
!4725 = !DILocation(line: 0, scope: !4531, inlinedAt: !4726)
!4726 = distinct !DILocation(line: 85, column: 10, scope: !4523, inlinedAt: !4723)
!4727 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4726)
!4728 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4726)
!4729 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4726)
!4730 = !DILocation(line: 202, column: 7, scope: !925, inlinedAt: !4708)
!4731 = !DILocation(line: 118, column: 3, scope: !4700)
!4732 = !DILocation(line: 0, scope: !925)
!4733 = !DILocation(line: 178, column: 14, scope: !925)
!4734 = !DILocation(line: 180, column: 9, scope: !4711)
!4735 = !DILocation(line: 180, column: 7, scope: !925)
!4736 = !DILocation(line: 182, column: 13, scope: !4714)
!4737 = !DILocation(line: 182, column: 11, scope: !4715)
!4738 = !DILocation(line: 190, column: 30, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4714, file: !922, line: 183, column: 9)
!4740 = !DILocation(line: 191, column: 16, scope: !4739)
!4741 = !DILocation(line: 191, column: 13, scope: !4739)
!4742 = !DILocation(line: 192, column: 9, scope: !4739)
!4743 = !DILocation(line: 197, column: 11, scope: !4718)
!4744 = !DILocation(line: 197, column: 11, scope: !4719)
!4745 = !DILocation(line: 198, column: 9, scope: !4718)
!4746 = !DILocation(line: 0, scope: !4523, inlinedAt: !4747)
!4747 = distinct !DILocation(line: 201, column: 7, scope: !925)
!4748 = !DILocation(line: 85, column: 25, scope: !4523, inlinedAt: !4747)
!4749 = !DILocation(line: 0, scope: !4531, inlinedAt: !4750)
!4750 = distinct !DILocation(line: 85, column: 10, scope: !4523, inlinedAt: !4747)
!4751 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4750)
!4752 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4750)
!4753 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4750)
!4754 = !DILocation(line: 202, column: 7, scope: !925)
!4755 = !DILocation(line: 203, column: 3, scope: !925)
!4756 = !DILocation(line: 0, scope: !937)
!4757 = !DILocation(line: 230, column: 14, scope: !937)
!4758 = !DILocation(line: 238, column: 7, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !937, file: !922, line: 238, column: 7)
!4760 = !DILocation(line: 238, column: 7, scope: !937)
!4761 = !DILocation(line: 240, column: 9, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !937, file: !922, line: 240, column: 7)
!4763 = !DILocation(line: 240, column: 18, scope: !4762)
!4764 = !DILocation(line: 253, column: 8, scope: !937)
!4765 = !DILocation(line: 258, column: 27, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4767, file: !922, line: 257, column: 5)
!4767 = distinct !DILexicalBlock(scope: !937, file: !922, line: 256, column: 7)
!4768 = !DILocation(line: 259, column: 50, scope: !4766)
!4769 = !DILocation(line: 259, column: 32, scope: !4766)
!4770 = !DILocation(line: 260, column: 5, scope: !4766)
!4771 = !DILocation(line: 262, column: 9, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !937, file: !922, line: 262, column: 7)
!4773 = !DILocation(line: 262, column: 7, scope: !937)
!4774 = !DILocation(line: 263, column: 9, scope: !4772)
!4775 = !DILocation(line: 263, column: 5, scope: !4772)
!4776 = !DILocation(line: 264, column: 9, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !937, file: !922, line: 264, column: 7)
!4778 = !DILocation(line: 264, column: 14, scope: !4777)
!4779 = !DILocation(line: 265, column: 7, scope: !4777)
!4780 = !DILocation(line: 265, column: 11, scope: !4777)
!4781 = !DILocation(line: 266, column: 11, scope: !4777)
!4782 = !DILocation(line: 267, column: 14, scope: !4777)
!4783 = !DILocation(line: 264, column: 7, scope: !937)
!4784 = !DILocation(line: 268, column: 5, scope: !4777)
!4785 = !DILocation(line: 0, scope: !4598, inlinedAt: !4786)
!4786 = distinct !DILocation(line: 269, column: 8, scope: !937)
!4787 = !DILocation(line: 0, scope: !4606, inlinedAt: !4788)
!4788 = distinct !DILocation(line: 70, column: 25, scope: !4598, inlinedAt: !4786)
!4789 = !DILocation(line: 2059, column: 24, scope: !4606, inlinedAt: !4788)
!4790 = !DILocation(line: 2059, column: 10, scope: !4606, inlinedAt: !4788)
!4791 = !DILocation(line: 0, scope: !4531, inlinedAt: !4792)
!4792 = distinct !DILocation(line: 70, column: 10, scope: !4598, inlinedAt: !4786)
!4793 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4792)
!4794 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4792)
!4795 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4792)
!4796 = !DILocation(line: 270, column: 7, scope: !937)
!4797 = !DILocation(line: 271, column: 3, scope: !937)
!4798 = distinct !DISubprogram(name: "xzalloc", scope: !922, file: !922, line: 279, type: !4551, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4799)
!4799 = !{!4800}
!4800 = !DILocalVariable(name: "s", arg: 1, scope: !4798, file: !922, line: 279, type: !262)
!4801 = !DILocation(line: 0, scope: !4798)
!4802 = !DILocalVariable(name: "n", arg: 1, scope: !4803, file: !922, line: 294, type: !262)
!4803 = distinct !DISubprogram(name: "xcalloc", scope: !922, file: !922, line: 294, type: !4667, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4804)
!4804 = !{!4802, !4805}
!4805 = !DILocalVariable(name: "s", arg: 2, scope: !4803, file: !922, line: 294, type: !262)
!4806 = !DILocation(line: 0, scope: !4803, inlinedAt: !4807)
!4807 = distinct !DILocation(line: 281, column: 10, scope: !4798)
!4808 = !DILocation(line: 296, column: 25, scope: !4803, inlinedAt: !4807)
!4809 = !DILocation(line: 0, scope: !4531, inlinedAt: !4810)
!4810 = distinct !DILocation(line: 296, column: 10, scope: !4803, inlinedAt: !4807)
!4811 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4810)
!4812 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4810)
!4813 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4810)
!4814 = !DILocation(line: 281, column: 3, scope: !4798)
!4815 = !DISubprogram(name: "calloc", scope: !1205, file: !1205, line: 543, type: !4667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!4816 = !DILocation(line: 0, scope: !4803)
!4817 = !DILocation(line: 296, column: 25, scope: !4803)
!4818 = !DILocation(line: 0, scope: !4531, inlinedAt: !4819)
!4819 = distinct !DILocation(line: 296, column: 10, scope: !4803)
!4820 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4819)
!4821 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4819)
!4822 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4819)
!4823 = !DILocation(line: 296, column: 3, scope: !4803)
!4824 = distinct !DISubprogram(name: "xizalloc", scope: !922, file: !922, line: 285, type: !4565, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4825)
!4825 = !{!4826}
!4826 = !DILocalVariable(name: "s", arg: 1, scope: !4824, file: !922, line: 285, type: !941)
!4827 = !DILocation(line: 0, scope: !4824)
!4828 = !DILocalVariable(name: "n", arg: 1, scope: !4829, file: !922, line: 300, type: !941)
!4829 = distinct !DISubprogram(name: "xicalloc", scope: !922, file: !922, line: 300, type: !4683, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4830)
!4830 = !{!4828, !4831}
!4831 = !DILocalVariable(name: "s", arg: 2, scope: !4829, file: !922, line: 300, type: !941)
!4832 = !DILocation(line: 0, scope: !4829, inlinedAt: !4833)
!4833 = distinct !DILocation(line: 287, column: 10, scope: !4824)
!4834 = !DILocalVariable(name: "n", arg: 1, scope: !4835, file: !4572, line: 77, type: !941)
!4835 = distinct !DISubprogram(name: "icalloc", scope: !4572, file: !4572, line: 77, type: !4683, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4836)
!4836 = !{!4834, !4837}
!4837 = !DILocalVariable(name: "s", arg: 2, scope: !4835, file: !4572, line: 77, type: !941)
!4838 = !DILocation(line: 0, scope: !4835, inlinedAt: !4839)
!4839 = distinct !DILocation(line: 302, column: 25, scope: !4829, inlinedAt: !4833)
!4840 = !DILocation(line: 91, column: 10, scope: !4835, inlinedAt: !4839)
!4841 = !DILocation(line: 0, scope: !4531, inlinedAt: !4842)
!4842 = distinct !DILocation(line: 302, column: 10, scope: !4829, inlinedAt: !4833)
!4843 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4842)
!4844 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4842)
!4845 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4842)
!4846 = !DILocation(line: 287, column: 3, scope: !4824)
!4847 = !DILocation(line: 0, scope: !4829)
!4848 = !DILocation(line: 0, scope: !4835, inlinedAt: !4849)
!4849 = distinct !DILocation(line: 302, column: 25, scope: !4829)
!4850 = !DILocation(line: 91, column: 10, scope: !4835, inlinedAt: !4849)
!4851 = !DILocation(line: 0, scope: !4531, inlinedAt: !4852)
!4852 = distinct !DILocation(line: 302, column: 10, scope: !4829)
!4853 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4852)
!4854 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4852)
!4855 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4852)
!4856 = !DILocation(line: 302, column: 3, scope: !4829)
!4857 = distinct !DISubprogram(name: "xmemdup", scope: !922, file: !922, line: 310, type: !4858, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4860)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!259, !1229, !262}
!4860 = !{!4861, !4862}
!4861 = !DILocalVariable(name: "p", arg: 1, scope: !4857, file: !922, line: 310, type: !1229)
!4862 = !DILocalVariable(name: "s", arg: 2, scope: !4857, file: !922, line: 310, type: !262)
!4863 = !DILocation(line: 0, scope: !4857)
!4864 = !DILocation(line: 0, scope: !4550, inlinedAt: !4865)
!4865 = distinct !DILocation(line: 312, column: 18, scope: !4857)
!4866 = !DILocation(line: 49, column: 25, scope: !4550, inlinedAt: !4865)
!4867 = !DILocation(line: 0, scope: !4531, inlinedAt: !4868)
!4868 = distinct !DILocation(line: 49, column: 10, scope: !4550, inlinedAt: !4865)
!4869 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4868)
!4870 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4868)
!4871 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4868)
!4872 = !DILocalVariable(name: "__dest", arg: 1, scope: !4873, file: !2821, line: 26, type: !4876)
!4873 = distinct !DISubprogram(name: "memcpy", scope: !2821, file: !2821, line: 26, type: !4874, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4877)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!259, !4876, !1228, !262}
!4876 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !259)
!4877 = !{!4872, !4878, !4879}
!4878 = !DILocalVariable(name: "__src", arg: 2, scope: !4873, file: !2821, line: 26, type: !1228)
!4879 = !DILocalVariable(name: "__len", arg: 3, scope: !4873, file: !2821, line: 26, type: !262)
!4880 = !DILocation(line: 0, scope: !4873, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 312, column: 10, scope: !4857)
!4882 = !DILocation(line: 29, column: 10, scope: !4873, inlinedAt: !4881)
!4883 = !DILocation(line: 312, column: 3, scope: !4857)
!4884 = distinct !DISubprogram(name: "ximemdup", scope: !922, file: !922, line: 316, type: !4885, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4887)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!259, !1229, !941}
!4887 = !{!4888, !4889}
!4888 = !DILocalVariable(name: "p", arg: 1, scope: !4884, file: !922, line: 316, type: !1229)
!4889 = !DILocalVariable(name: "s", arg: 2, scope: !4884, file: !922, line: 316, type: !941)
!4890 = !DILocation(line: 0, scope: !4884)
!4891 = !DILocation(line: 0, scope: !4564, inlinedAt: !4892)
!4892 = distinct !DILocation(line: 318, column: 18, scope: !4884)
!4893 = !DILocation(line: 0, scope: !4571, inlinedAt: !4894)
!4894 = distinct !DILocation(line: 55, column: 25, scope: !4564, inlinedAt: !4892)
!4895 = !DILocation(line: 57, column: 26, scope: !4571, inlinedAt: !4894)
!4896 = !DILocation(line: 0, scope: !4531, inlinedAt: !4897)
!4897 = distinct !DILocation(line: 55, column: 10, scope: !4564, inlinedAt: !4892)
!4898 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4897)
!4899 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4897)
!4900 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4897)
!4901 = !DILocation(line: 0, scope: !4873, inlinedAt: !4902)
!4902 = distinct !DILocation(line: 318, column: 10, scope: !4884)
!4903 = !DILocation(line: 29, column: 10, scope: !4873, inlinedAt: !4902)
!4904 = !DILocation(line: 318, column: 3, scope: !4884)
!4905 = distinct !DISubprogram(name: "ximemdup0", scope: !922, file: !922, line: 325, type: !4906, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4908)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!258, !1229, !941}
!4908 = !{!4909, !4910, !4911}
!4909 = !DILocalVariable(name: "p", arg: 1, scope: !4905, file: !922, line: 325, type: !1229)
!4910 = !DILocalVariable(name: "s", arg: 2, scope: !4905, file: !922, line: 325, type: !941)
!4911 = !DILocalVariable(name: "result", scope: !4905, file: !922, line: 327, type: !258)
!4912 = !DILocation(line: 0, scope: !4905)
!4913 = !DILocation(line: 327, column: 30, scope: !4905)
!4914 = !DILocation(line: 0, scope: !4564, inlinedAt: !4915)
!4915 = distinct !DILocation(line: 327, column: 18, scope: !4905)
!4916 = !DILocation(line: 0, scope: !4571, inlinedAt: !4917)
!4917 = distinct !DILocation(line: 55, column: 25, scope: !4564, inlinedAt: !4915)
!4918 = !DILocation(line: 57, column: 26, scope: !4571, inlinedAt: !4917)
!4919 = !DILocation(line: 0, scope: !4531, inlinedAt: !4920)
!4920 = distinct !DILocation(line: 55, column: 10, scope: !4564, inlinedAt: !4915)
!4921 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4920)
!4922 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4920)
!4923 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4920)
!4924 = !DILocation(line: 328, column: 3, scope: !4905)
!4925 = !DILocation(line: 328, column: 13, scope: !4905)
!4926 = !DILocation(line: 0, scope: !4873, inlinedAt: !4927)
!4927 = distinct !DILocation(line: 329, column: 10, scope: !4905)
!4928 = !DILocation(line: 29, column: 10, scope: !4873, inlinedAt: !4927)
!4929 = !DILocation(line: 329, column: 3, scope: !4905)
!4930 = distinct !DISubprogram(name: "xstrdup", scope: !922, file: !922, line: 335, type: !1207, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4931)
!4931 = !{!4932}
!4932 = !DILocalVariable(name: "string", arg: 1, scope: !4930, file: !922, line: 335, type: !265)
!4933 = !DILocation(line: 0, scope: !4930)
!4934 = !DILocation(line: 337, column: 27, scope: !4930)
!4935 = !DILocation(line: 337, column: 43, scope: !4930)
!4936 = !DILocation(line: 0, scope: !4857, inlinedAt: !4937)
!4937 = distinct !DILocation(line: 337, column: 10, scope: !4930)
!4938 = !DILocation(line: 0, scope: !4550, inlinedAt: !4939)
!4939 = distinct !DILocation(line: 312, column: 18, scope: !4857, inlinedAt: !4937)
!4940 = !DILocation(line: 49, column: 25, scope: !4550, inlinedAt: !4939)
!4941 = !DILocation(line: 0, scope: !4531, inlinedAt: !4942)
!4942 = distinct !DILocation(line: 49, column: 10, scope: !4550, inlinedAt: !4939)
!4943 = !DILocation(line: 39, column: 8, scope: !4538, inlinedAt: !4942)
!4944 = !DILocation(line: 39, column: 7, scope: !4531, inlinedAt: !4942)
!4945 = !DILocation(line: 40, column: 5, scope: !4538, inlinedAt: !4942)
!4946 = !DILocation(line: 0, scope: !4873, inlinedAt: !4947)
!4947 = distinct !DILocation(line: 312, column: 10, scope: !4857, inlinedAt: !4937)
!4948 = !DILocation(line: 29, column: 10, scope: !4873, inlinedAt: !4947)
!4949 = !DILocation(line: 337, column: 3, scope: !4930)
!4950 = distinct !DISubprogram(name: "xalloc_die", scope: !878, file: !878, line: 32, type: !643, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !4951)
!4951 = !{!4952}
!4952 = !DILocalVariable(name: "__errstatus", scope: !4953, file: !878, line: 34, type: !4954)
!4953 = distinct !DILexicalBlock(scope: !4950, file: !878, line: 34, column: 3)
!4954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!4955 = !DILocation(line: 34, column: 3, scope: !4953)
!4956 = !DILocation(line: 0, scope: !4953)
!4957 = !DILocation(line: 40, column: 3, scope: !4950)
!4958 = distinct !DISubprogram(name: "close_stream", scope: !958, file: !958, line: 55, type: !4959, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !4995)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!260, !4961}
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !4963)
!4963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !4964)
!4964 = !{!4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4963, file: !336, line: 51, baseType: !260, size: 32)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4963, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4963, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4963, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4963, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4963, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4963, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4963, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4963, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4963, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4963, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4963, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4963, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4963, file: !336, line: 70, baseType: !4979, size: 64, offset: 832)
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4963, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4963, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4963, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4963, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4963, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4963, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4963, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4963, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4963, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4963, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4963, file: !336, line: 93, baseType: !4979, size: 64, offset: 1344)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4963, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4963, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4963, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4963, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!4995 = !{!4996, !4997, !4999, !5000}
!4996 = !DILocalVariable(name: "stream", arg: 1, scope: !4958, file: !958, line: 55, type: !4961)
!4997 = !DILocalVariable(name: "some_pending", scope: !4958, file: !958, line: 57, type: !4998)
!4998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!4999 = !DILocalVariable(name: "prev_fail", scope: !4958, file: !958, line: 58, type: !4998)
!5000 = !DILocalVariable(name: "fclose_fail", scope: !4958, file: !958, line: 59, type: !4998)
!5001 = !DILocation(line: 0, scope: !4958)
!5002 = !DILocation(line: 57, column: 30, scope: !4958)
!5003 = !DILocalVariable(name: "__stream", arg: 1, scope: !5004, file: !2638, line: 135, type: !4961)
!5004 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2638, file: !2638, line: 135, type: !4959, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !5005)
!5005 = !{!5003}
!5006 = !DILocation(line: 0, scope: !5004, inlinedAt: !5007)
!5007 = distinct !DILocation(line: 58, column: 27, scope: !4958)
!5008 = !DILocation(line: 137, column: 10, scope: !5004, inlinedAt: !5007)
!5009 = !{!2647, !1096, i64 0}
!5010 = !DILocation(line: 58, column: 43, scope: !4958)
!5011 = !DILocation(line: 59, column: 29, scope: !4958)
!5012 = !DILocation(line: 59, column: 45, scope: !4958)
!5013 = !DILocation(line: 69, column: 17, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !4958, file: !958, line: 69, column: 7)
!5015 = !DILocation(line: 57, column: 50, scope: !4958)
!5016 = !DILocation(line: 69, column: 33, scope: !5014)
!5017 = !DILocation(line: 69, column: 53, scope: !5014)
!5018 = !DILocation(line: 69, column: 59, scope: !5014)
!5019 = !DILocation(line: 69, column: 7, scope: !4958)
!5020 = !DILocation(line: 71, column: 11, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5014, file: !958, line: 70, column: 5)
!5022 = !DILocation(line: 72, column: 9, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5021, file: !958, line: 71, column: 11)
!5024 = !DILocation(line: 72, column: 15, scope: !5023)
!5025 = !DILocation(line: 77, column: 1, scope: !4958)
!5026 = !DISubprogram(name: "__fpending", scope: !5027, file: !5027, line: 75, type: !5028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!5027 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!262, !4961}
!5030 = distinct !DISubprogram(name: "rpl_fclose", scope: !960, file: !960, line: 58, type: !5031, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !5067)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{!260, !5033}
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !5035)
!5035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !5036)
!5036 = !{!5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5035, file: !336, line: 51, baseType: !260, size: 32)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5035, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5035, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5035, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5035, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5035, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5035, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5035, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5035, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5035, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5035, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5035, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5035, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5035, file: !336, line: 70, baseType: !5051, size: 64, offset: 832)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5035, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5035, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5035, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5035, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5035, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5035, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5035, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5035, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5035, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5035, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5035, file: !336, line: 93, baseType: !5051, size: 64, offset: 1344)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5035, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5035, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5035, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5035, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!5067 = !{!5068, !5069, !5070, !5071}
!5068 = !DILocalVariable(name: "fp", arg: 1, scope: !5030, file: !960, line: 58, type: !5033)
!5069 = !DILocalVariable(name: "saved_errno", scope: !5030, file: !960, line: 60, type: !260)
!5070 = !DILocalVariable(name: "fd", scope: !5030, file: !960, line: 63, type: !260)
!5071 = !DILocalVariable(name: "result", scope: !5030, file: !960, line: 74, type: !260)
!5072 = !DILocation(line: 0, scope: !5030)
!5073 = !DILocation(line: 63, column: 12, scope: !5030)
!5074 = !DILocation(line: 64, column: 10, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5030, file: !960, line: 64, column: 7)
!5076 = !DILocation(line: 64, column: 7, scope: !5030)
!5077 = !DILocation(line: 65, column: 12, scope: !5075)
!5078 = !DILocation(line: 65, column: 5, scope: !5075)
!5079 = !DILocation(line: 70, column: 9, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5030, file: !960, line: 70, column: 7)
!5081 = !DILocation(line: 70, column: 23, scope: !5080)
!5082 = !DILocation(line: 70, column: 33, scope: !5080)
!5083 = !DILocation(line: 70, column: 26, scope: !5080)
!5084 = !DILocation(line: 70, column: 59, scope: !5080)
!5085 = !DILocation(line: 71, column: 7, scope: !5080)
!5086 = !DILocation(line: 71, column: 10, scope: !5080)
!5087 = !DILocation(line: 70, column: 7, scope: !5030)
!5088 = !DILocation(line: 100, column: 12, scope: !5030)
!5089 = !DILocation(line: 105, column: 7, scope: !5030)
!5090 = !DILocation(line: 72, column: 19, scope: !5080)
!5091 = !DILocation(line: 105, column: 19, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5030, file: !960, line: 105, column: 7)
!5093 = !DILocation(line: 107, column: 13, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5092, file: !960, line: 106, column: 5)
!5095 = !DILocation(line: 109, column: 5, scope: !5094)
!5096 = !DILocation(line: 112, column: 1, scope: !5030)
!5097 = !DISubprogram(name: "fileno", scope: !1090, file: !1090, line: 809, type: !5031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!5098 = !DISubprogram(name: "fclose", scope: !1090, file: !1090, line: 178, type: !5031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!5099 = !DISubprogram(name: "__freading", scope: !5027, file: !5027, line: 51, type: !5031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!5100 = !DISubprogram(name: "lseek", scope: !2455, file: !2455, line: 339, type: !5101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!358, !260, !358, !260}
!5103 = distinct !DISubprogram(name: "rpl_fflush", scope: !962, file: !962, line: 130, type: !5104, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !5140)
!5104 = !DISubroutineType(types: !5105)
!5105 = !{!260, !5106}
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !5108)
!5108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !5109)
!5109 = !{!5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5108, file: !336, line: 51, baseType: !260, size: 32)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5108, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5108, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5108, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5108, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5108, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5108, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5108, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5108, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5108, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5108, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5108, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5108, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5108, file: !336, line: 70, baseType: !5124, size: 64, offset: 832)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5108, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5108, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5108, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5108, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5108, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5108, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5108, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5108, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5108, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5108, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5108, file: !336, line: 93, baseType: !5124, size: 64, offset: 1344)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5108, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5108, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5108, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5108, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!5140 = !{!5141}
!5141 = !DILocalVariable(name: "stream", arg: 1, scope: !5103, file: !962, line: 130, type: !5106)
!5142 = !DILocation(line: 0, scope: !5103)
!5143 = !DILocation(line: 151, column: 14, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5103, file: !962, line: 151, column: 7)
!5145 = !DILocation(line: 151, column: 22, scope: !5144)
!5146 = !DILocation(line: 151, column: 27, scope: !5144)
!5147 = !DILocation(line: 151, column: 7, scope: !5103)
!5148 = !DILocation(line: 152, column: 12, scope: !5144)
!5149 = !DILocation(line: 152, column: 5, scope: !5144)
!5150 = !DILocalVariable(name: "fp", arg: 1, scope: !5151, file: !962, line: 42, type: !5106)
!5151 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !962, file: !962, line: 42, type: !5152, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !5154)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{null, !5106}
!5154 = !{!5150}
!5155 = !DILocation(line: 0, scope: !5151, inlinedAt: !5156)
!5156 = distinct !DILocation(line: 157, column: 3, scope: !5103)
!5157 = !DILocation(line: 44, column: 12, scope: !5158, inlinedAt: !5156)
!5158 = distinct !DILexicalBlock(scope: !5151, file: !962, line: 44, column: 7)
!5159 = !DILocation(line: 44, column: 19, scope: !5158, inlinedAt: !5156)
!5160 = !DILocation(line: 44, column: 7, scope: !5151, inlinedAt: !5156)
!5161 = !DILocation(line: 46, column: 5, scope: !5158, inlinedAt: !5156)
!5162 = !DILocation(line: 159, column: 10, scope: !5103)
!5163 = !DILocation(line: 159, column: 3, scope: !5103)
!5164 = !DILocation(line: 236, column: 1, scope: !5103)
!5165 = !DISubprogram(name: "fflush", scope: !1090, file: !1090, line: 230, type: !5104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!5166 = distinct !DISubprogram(name: "rpl_fseeko", scope: !964, file: !964, line: 28, type: !5167, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !5204)
!5167 = !DISubroutineType(types: !5168)
!5168 = !{!260, !5169, !5203, !260}
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !5171)
!5171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !5172)
!5172 = !{!5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202}
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5171, file: !336, line: 51, baseType: !260, size: 32)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5171, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5171, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5171, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5171, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5171, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5171, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5171, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5171, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5171, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5171, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5171, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5171, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5171, file: !336, line: 70, baseType: !5187, size: 64, offset: 832)
!5187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5171, size: 64)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5171, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5171, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5171, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5171, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5171, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5171, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5171, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5171, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5171, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5171, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5171, file: !336, line: 93, baseType: !5187, size: 64, offset: 1344)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5171, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5171, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5171, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5171, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!5203 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1090, line: 63, baseType: !358)
!5204 = !{!5205, !5206, !5207, !5208}
!5205 = !DILocalVariable(name: "fp", arg: 1, scope: !5166, file: !964, line: 28, type: !5169)
!5206 = !DILocalVariable(name: "offset", arg: 2, scope: !5166, file: !964, line: 28, type: !5203)
!5207 = !DILocalVariable(name: "whence", arg: 3, scope: !5166, file: !964, line: 28, type: !260)
!5208 = !DILocalVariable(name: "pos", scope: !5209, file: !964, line: 123, type: !5203)
!5209 = distinct !DILexicalBlock(scope: !5210, file: !964, line: 119, column: 5)
!5210 = distinct !DILexicalBlock(scope: !5166, file: !964, line: 55, column: 7)
!5211 = !DILocation(line: 0, scope: !5166)
!5212 = !DILocation(line: 55, column: 12, scope: !5210)
!5213 = !{!2647, !995, i64 16}
!5214 = !DILocation(line: 55, column: 33, scope: !5210)
!5215 = !{!2647, !995, i64 8}
!5216 = !DILocation(line: 55, column: 25, scope: !5210)
!5217 = !DILocation(line: 56, column: 7, scope: !5210)
!5218 = !DILocation(line: 56, column: 15, scope: !5210)
!5219 = !DILocation(line: 56, column: 37, scope: !5210)
!5220 = !{!2647, !995, i64 32}
!5221 = !DILocation(line: 56, column: 29, scope: !5210)
!5222 = !DILocation(line: 57, column: 7, scope: !5210)
!5223 = !DILocation(line: 57, column: 15, scope: !5210)
!5224 = !{!2647, !995, i64 72}
!5225 = !DILocation(line: 57, column: 29, scope: !5210)
!5226 = !DILocation(line: 55, column: 7, scope: !5166)
!5227 = !DILocation(line: 123, column: 26, scope: !5209)
!5228 = !DILocation(line: 123, column: 19, scope: !5209)
!5229 = !DILocation(line: 0, scope: !5209)
!5230 = !DILocation(line: 124, column: 15, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5209, file: !964, line: 124, column: 11)
!5232 = !DILocation(line: 124, column: 11, scope: !5209)
!5233 = !DILocation(line: 135, column: 19, scope: !5209)
!5234 = !DILocation(line: 136, column: 12, scope: !5209)
!5235 = !DILocation(line: 136, column: 20, scope: !5209)
!5236 = !{!2647, !1612, i64 144}
!5237 = !DILocation(line: 167, column: 7, scope: !5209)
!5238 = !DILocation(line: 169, column: 10, scope: !5166)
!5239 = !DILocation(line: 169, column: 3, scope: !5166)
!5240 = !DILocation(line: 170, column: 1, scope: !5166)
!5241 = !DISubprogram(name: "fseeko", scope: !1090, file: !1090, line: 736, type: !5242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{!260, !5169, !358, !260}
!5244 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !885, file: !885, line: 100, type: !5245, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5248)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{!262, !2839, !265, !262, !5247}
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!5248 = !{!5249, !5250, !5251, !5252, !5253}
!5249 = !DILocalVariable(name: "pwc", arg: 1, scope: !5244, file: !885, line: 100, type: !2839)
!5250 = !DILocalVariable(name: "s", arg: 2, scope: !5244, file: !885, line: 100, type: !265)
!5251 = !DILocalVariable(name: "n", arg: 3, scope: !5244, file: !885, line: 100, type: !262)
!5252 = !DILocalVariable(name: "ps", arg: 4, scope: !5244, file: !885, line: 100, type: !5247)
!5253 = !DILocalVariable(name: "ret", scope: !5244, file: !885, line: 130, type: !262)
!5254 = !DILocation(line: 0, scope: !5244)
!5255 = !DILocation(line: 105, column: 9, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5244, file: !885, line: 105, column: 7)
!5257 = !DILocation(line: 105, column: 7, scope: !5244)
!5258 = !DILocation(line: 117, column: 10, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5244, file: !885, line: 117, column: 7)
!5260 = !DILocation(line: 117, column: 7, scope: !5244)
!5261 = !DILocation(line: 130, column: 16, scope: !5244)
!5262 = !DILocation(line: 135, column: 11, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5244, file: !885, line: 135, column: 7)
!5264 = !DILocation(line: 135, column: 25, scope: !5263)
!5265 = !DILocation(line: 135, column: 30, scope: !5263)
!5266 = !DILocation(line: 135, column: 7, scope: !5244)
!5267 = !DILocalVariable(name: "ps", arg: 1, scope: !5268, file: !2812, line: 1135, type: !5247)
!5268 = distinct !DISubprogram(name: "mbszero", scope: !2812, file: !2812, line: 1135, type: !5269, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5271)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{null, !5247}
!5271 = !{!5267}
!5272 = !DILocation(line: 0, scope: !5268, inlinedAt: !5273)
!5273 = distinct !DILocation(line: 137, column: 5, scope: !5263)
!5274 = !DILocalVariable(name: "__dest", arg: 1, scope: !5275, file: !2821, line: 57, type: !259)
!5275 = distinct !DISubprogram(name: "memset", scope: !2821, file: !2821, line: 57, type: !2822, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5276)
!5276 = !{!5274, !5277, !5278}
!5277 = !DILocalVariable(name: "__ch", arg: 2, scope: !5275, file: !2821, line: 57, type: !260)
!5278 = !DILocalVariable(name: "__len", arg: 3, scope: !5275, file: !2821, line: 57, type: !262)
!5279 = !DILocation(line: 0, scope: !5275, inlinedAt: !5280)
!5280 = distinct !DILocation(line: 1137, column: 3, scope: !5268, inlinedAt: !5273)
!5281 = !DILocation(line: 59, column: 10, scope: !5275, inlinedAt: !5280)
!5282 = !DILocation(line: 137, column: 5, scope: !5263)
!5283 = !DILocation(line: 138, column: 11, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5244, file: !885, line: 138, column: 7)
!5285 = !DILocation(line: 138, column: 7, scope: !5244)
!5286 = !DILocation(line: 139, column: 5, scope: !5284)
!5287 = !DILocation(line: 143, column: 26, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5244, file: !885, line: 143, column: 7)
!5289 = !DILocation(line: 143, column: 41, scope: !5288)
!5290 = !DILocation(line: 143, column: 7, scope: !5244)
!5291 = !DILocation(line: 145, column: 15, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5293, file: !885, line: 145, column: 11)
!5293 = distinct !DILexicalBlock(scope: !5288, file: !885, line: 144, column: 5)
!5294 = !DILocation(line: 145, column: 11, scope: !5293)
!5295 = !DILocation(line: 146, column: 32, scope: !5292)
!5296 = !DILocation(line: 146, column: 16, scope: !5292)
!5297 = !DILocation(line: 146, column: 14, scope: !5292)
!5298 = !DILocation(line: 146, column: 9, scope: !5292)
!5299 = !DILocation(line: 286, column: 1, scope: !5244)
!5300 = !DISubprogram(name: "mbsinit", scope: !5301, file: !5301, line: 293, type: !5302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1082)
!5301 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5302 = !DISubroutineType(types: !5303)
!5303 = !{!260, !5304}
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !891)
!5306 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !966, file: !966, line: 27, type: !4515, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !965, retainedNodes: !5307)
!5307 = !{!5308, !5309, !5310, !5311}
!5308 = !DILocalVariable(name: "ptr", arg: 1, scope: !5306, file: !966, line: 27, type: !259)
!5309 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5306, file: !966, line: 27, type: !262)
!5310 = !DILocalVariable(name: "size", arg: 3, scope: !5306, file: !966, line: 27, type: !262)
!5311 = !DILocalVariable(name: "nbytes", scope: !5306, file: !966, line: 29, type: !262)
!5312 = !DILocation(line: 0, scope: !5306)
!5313 = !DILocation(line: 30, column: 7, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5306, file: !966, line: 30, column: 7)
!5315 = !DILocalVariable(name: "ptr", arg: 1, scope: !5316, file: !4607, line: 2057, type: !259)
!5316 = distinct !DISubprogram(name: "rpl_realloc", scope: !4607, file: !4607, line: 2057, type: !4599, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !965, retainedNodes: !5317)
!5317 = !{!5315, !5318}
!5318 = !DILocalVariable(name: "size", arg: 2, scope: !5316, file: !4607, line: 2057, type: !262)
!5319 = !DILocation(line: 0, scope: !5316, inlinedAt: !5320)
!5320 = distinct !DILocation(line: 37, column: 10, scope: !5306)
!5321 = !DILocation(line: 2059, column: 24, scope: !5316, inlinedAt: !5320)
!5322 = !DILocation(line: 2059, column: 10, scope: !5316, inlinedAt: !5320)
!5323 = !DILocation(line: 37, column: 3, scope: !5306)
!5324 = !DILocation(line: 32, column: 7, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5314, file: !966, line: 31, column: 5)
!5326 = !DILocation(line: 32, column: 13, scope: !5325)
!5327 = !DILocation(line: 33, column: 7, scope: !5325)
!5328 = !DILocation(line: 38, column: 1, scope: !5306)
!5329 = distinct !DISubprogram(name: "hard_locale", scope: !903, file: !903, line: 28, type: !1342, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !5330)
!5330 = !{!5331, !5332}
!5331 = !DILocalVariable(name: "category", arg: 1, scope: !5329, file: !903, line: 28, type: !260)
!5332 = !DILocalVariable(name: "locale", scope: !5329, file: !903, line: 30, type: !5333)
!5333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5334)
!5334 = !{!5335}
!5335 = !DISubrange(count: 257)
!5336 = !DILocation(line: 0, scope: !5329)
!5337 = !DILocation(line: 30, column: 3, scope: !5329)
!5338 = !DILocation(line: 30, column: 8, scope: !5329)
!5339 = !DILocation(line: 32, column: 7, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5329, file: !903, line: 32, column: 7)
!5341 = !DILocation(line: 32, column: 7, scope: !5329)
!5342 = !DILocalVariable(name: "__s1", arg: 1, scope: !5343, file: !1108, line: 1359, type: !265)
!5343 = distinct !DISubprogram(name: "streq", scope: !1108, file: !1108, line: 1359, type: !1109, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !968, retainedNodes: !5344)
!5344 = !{!5342, !5345}
!5345 = !DILocalVariable(name: "__s2", arg: 2, scope: !5343, file: !1108, line: 1359, type: !265)
!5346 = !DILocation(line: 0, scope: !5343, inlinedAt: !5347)
!5347 = distinct !DILocation(line: 35, column: 9, scope: !5348)
!5348 = distinct !DILexicalBlock(scope: !5329, file: !903, line: 35, column: 7)
!5349 = !DILocation(line: 1361, column: 11, scope: !5343, inlinedAt: !5347)
!5350 = !DILocation(line: 35, column: 29, scope: !5348)
!5351 = !DILocation(line: 0, scope: !5343, inlinedAt: !5352)
!5352 = distinct !DILocation(line: 35, column: 32, scope: !5348)
!5353 = !DILocation(line: 1361, column: 11, scope: !5343, inlinedAt: !5352)
!5354 = !DILocation(line: 1361, column: 10, scope: !5343, inlinedAt: !5352)
!5355 = !DILocation(line: 35, column: 7, scope: !5329)
!5356 = !DILocation(line: 46, column: 3, scope: !5329)
!5357 = !DILocation(line: 47, column: 1, scope: !5329)
!5358 = distinct !DISubprogram(name: "setlocale_null_r", scope: !973, file: !973, line: 154, type: !5359, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !5361)
!5359 = !DISubroutineType(types: !5360)
!5360 = !{!260, !260, !258, !262}
!5361 = !{!5362, !5363, !5364}
!5362 = !DILocalVariable(name: "category", arg: 1, scope: !5358, file: !973, line: 154, type: !260)
!5363 = !DILocalVariable(name: "buf", arg: 2, scope: !5358, file: !973, line: 154, type: !258)
!5364 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5358, file: !973, line: 154, type: !262)
!5365 = !DILocation(line: 0, scope: !5358)
!5366 = !DILocation(line: 159, column: 10, scope: !5358)
!5367 = !DILocation(line: 159, column: 3, scope: !5358)
!5368 = distinct !DISubprogram(name: "setlocale_null", scope: !973, file: !973, line: 186, type: !5369, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !5371)
!5369 = !DISubroutineType(types: !5370)
!5370 = !{!265, !260}
!5371 = !{!5372}
!5372 = !DILocalVariable(name: "category", arg: 1, scope: !5368, file: !973, line: 186, type: !260)
!5373 = !DILocation(line: 0, scope: !5368)
!5374 = !DILocation(line: 189, column: 10, scope: !5368)
!5375 = !DILocation(line: 189, column: 3, scope: !5368)
!5376 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !975, file: !975, line: 35, type: !5369, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !974, retainedNodes: !5377)
!5377 = !{!5378, !5379}
!5378 = !DILocalVariable(name: "category", arg: 1, scope: !5376, file: !975, line: 35, type: !260)
!5379 = !DILocalVariable(name: "result", scope: !5376, file: !975, line: 37, type: !265)
!5380 = !DILocation(line: 0, scope: !5376)
!5381 = !DILocation(line: 37, column: 24, scope: !5376)
!5382 = !DILocation(line: 62, column: 3, scope: !5376)
!5383 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !975, file: !975, line: 66, type: !5359, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !974, retainedNodes: !5384)
!5384 = !{!5385, !5386, !5387, !5388, !5389}
!5385 = !DILocalVariable(name: "category", arg: 1, scope: !5383, file: !975, line: 66, type: !260)
!5386 = !DILocalVariable(name: "buf", arg: 2, scope: !5383, file: !975, line: 66, type: !258)
!5387 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5383, file: !975, line: 66, type: !262)
!5388 = !DILocalVariable(name: "result", scope: !5383, file: !975, line: 111, type: !265)
!5389 = !DILocalVariable(name: "length", scope: !5390, file: !975, line: 125, type: !262)
!5390 = distinct !DILexicalBlock(scope: !5391, file: !975, line: 124, column: 5)
!5391 = distinct !DILexicalBlock(scope: !5383, file: !975, line: 113, column: 7)
!5392 = !DILocation(line: 0, scope: !5383)
!5393 = !DILocation(line: 0, scope: !5376, inlinedAt: !5394)
!5394 = distinct !DILocation(line: 111, column: 24, scope: !5383)
!5395 = !DILocation(line: 37, column: 24, scope: !5376, inlinedAt: !5394)
!5396 = !DILocation(line: 113, column: 14, scope: !5391)
!5397 = !DILocation(line: 113, column: 7, scope: !5383)
!5398 = !DILocation(line: 116, column: 19, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5400, file: !975, line: 116, column: 11)
!5400 = distinct !DILexicalBlock(scope: !5391, file: !975, line: 114, column: 5)
!5401 = !DILocation(line: 116, column: 11, scope: !5400)
!5402 = !DILocation(line: 120, column: 16, scope: !5399)
!5403 = !DILocation(line: 120, column: 9, scope: !5399)
!5404 = !DILocation(line: 125, column: 23, scope: !5390)
!5405 = !DILocation(line: 0, scope: !5390)
!5406 = !DILocation(line: 126, column: 18, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5390, file: !975, line: 126, column: 11)
!5408 = !DILocation(line: 126, column: 11, scope: !5390)
!5409 = !DILocation(line: 128, column: 39, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5407, file: !975, line: 127, column: 9)
!5411 = !DILocalVariable(name: "__dest", arg: 1, scope: !5412, file: !2821, line: 26, type: !4876)
!5412 = distinct !DISubprogram(name: "memcpy", scope: !2821, file: !2821, line: 26, type: !4874, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !974, retainedNodes: !5413)
!5413 = !{!5411, !5414, !5415}
!5414 = !DILocalVariable(name: "__src", arg: 2, scope: !5412, file: !2821, line: 26, type: !1228)
!5415 = !DILocalVariable(name: "__len", arg: 3, scope: !5412, file: !2821, line: 26, type: !262)
!5416 = !DILocation(line: 0, scope: !5412, inlinedAt: !5417)
!5417 = distinct !DILocation(line: 128, column: 11, scope: !5410)
!5418 = !DILocation(line: 29, column: 10, scope: !5412, inlinedAt: !5417)
!5419 = !DILocation(line: 129, column: 11, scope: !5410)
!5420 = !DILocation(line: 133, column: 23, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5422, file: !975, line: 133, column: 15)
!5422 = distinct !DILexicalBlock(scope: !5407, file: !975, line: 132, column: 9)
!5423 = !DILocation(line: 133, column: 15, scope: !5422)
!5424 = !DILocation(line: 138, column: 44, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5421, file: !975, line: 134, column: 13)
!5426 = !DILocation(line: 0, scope: !5412, inlinedAt: !5427)
!5427 = distinct !DILocation(line: 138, column: 15, scope: !5425)
!5428 = !DILocation(line: 29, column: 10, scope: !5412, inlinedAt: !5427)
!5429 = !DILocation(line: 139, column: 15, scope: !5425)
!5430 = !DILocation(line: 139, column: 32, scope: !5425)
!5431 = !DILocation(line: 140, column: 13, scope: !5425)
!5432 = !DILocation(line: 0, scope: !5391)
!5433 = !DILocation(line: 145, column: 1, scope: !5383)
