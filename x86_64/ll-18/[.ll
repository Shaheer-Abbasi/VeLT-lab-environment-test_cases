; ModuleID = 'src/[.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !632
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !603
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !622
@.str.1.78 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !624
@.str.2.80 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !626
@.str.3.79 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !628
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !630
@.str.4.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !634
@.str.5.74 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !636
@.str.6.75 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !639
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !644
@.str.121 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !650
@.str.1.122 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !652
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !654
@.str.125 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !685
@.str.1.126 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !688
@.str.2.127 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !690
@.str.3.128 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !695
@.str.4.129 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !697
@.str.5.130 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !699
@.str.6.131 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !701
@.str.7.132 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !703
@.str.8.133 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !705
@.str.9.134 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !707
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.125, ptr @.str.1.126, ptr @.str.2.127, ptr @.str.3.128, ptr @.str.4.129, ptr @.str.5.130, ptr @.str.6.131, ptr @.str.7.132, ptr @.str.8.133, ptr @.str.9.134, ptr null], align 16, !dbg !709
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !734
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !748
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !786
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !793
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !750
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !795
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !738
@.str.10.137 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !755
@.str.11.135 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !757
@.str.12.138 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !759
@.str.13.136 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !761
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !763
@.str.147 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !799
@.str.1.148 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !802
@.str.2.149 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !804
@.str.3.150 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !806
@.str.4.151 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !808
@.str.5.152 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !810
@.str.6.153 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !815
@.str.7.154 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !820
@.str.8.155 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !822
@.str.9.156 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !824
@.str.10.157 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !826
@.str.11.158 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !831
@.str.12.159 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !836
@.str.13.160 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !838
@.str.14.161 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !843
@.str.15.162 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !845
@.str.16.163 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !847
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.168 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !849
@.str.18.169 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !851
@.str.19.170 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !853
@.str.20.171 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !855
@.str.21.172 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !857
@.str.22.173 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !859
@.str.23.174 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !861
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !863
@exit_failure = dso_local global i32 1, align 4, !dbg !869
@.str.187 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !875
@.str.1.185 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !878
@.str.2.186 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !880
@.str.198 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !882
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !885
@.str.1.203 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !900

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !983 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !987, metadata !DIExpression()), !dbg !988
  %2 = icmp eq i32 %0, 0, !dbg !989
  br i1 %2, label %8, label %3, !dbg !991

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !992, !tbaa !994
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !992
  %6 = load ptr, ptr @program_name, align 8, !dbg !992, !tbaa !994
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !992
  br label %99, !dbg !992

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !998
  %10 = load ptr, ptr @stdout, align 8, !dbg !998, !tbaa !994
  %11 = tail call i32 @fputs_unlocked(ptr noundef %9, ptr noundef %10), !dbg !998
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !1000
  %13 = load ptr, ptr @stdout, align 8, !dbg !1000, !tbaa !994
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1000
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !1001
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !1001
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !1002
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !1002
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !1003
  %18 = load ptr, ptr @stdout, align 8, !dbg !1003, !tbaa !994
  %19 = tail call i32 @fputs_unlocked(ptr noundef %17, ptr noundef %18), !dbg !1003
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !1004
  %21 = load ptr, ptr @stdout, align 8, !dbg !1004, !tbaa !994
  %22 = tail call i32 @fputs_unlocked(ptr noundef %20, ptr noundef %21), !dbg !1004
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !1005
  %24 = load ptr, ptr @stdout, align 8, !dbg !1005, !tbaa !994
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !1005
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !1006
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !1006
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !1007
  %28 = load ptr, ptr @stdout, align 8, !dbg !1007, !tbaa !994
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !1007
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #40, !dbg !1008
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !1008
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !1009
  %32 = load ptr, ptr @stdout, align 8, !dbg !1009, !tbaa !994
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !1009
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !1010
  %35 = load ptr, ptr @stdout, align 8, !dbg !1010, !tbaa !994
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !1010
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !1011
  tail call fastcc void @oputs_(ptr noundef %37), !dbg !1011
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !1012
  tail call fastcc void @oputs_(ptr noundef %38), !dbg !1012
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #40, !dbg !1013
  tail call fastcc void @oputs_(ptr noundef %39), !dbg !1013
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #40, !dbg !1014
  tail call fastcc void @oputs_(ptr noundef %40), !dbg !1014
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #40, !dbg !1015
  tail call fastcc void @oputs_(ptr noundef %41), !dbg !1015
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #40, !dbg !1016
  tail call fastcc void @oputs_(ptr noundef %42), !dbg !1016
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !1017
  %44 = load ptr, ptr @stdout, align 8, !dbg !1017, !tbaa !994
  %45 = tail call i32 @fputs_unlocked(ptr noundef %43, ptr noundef %44), !dbg !1017
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #40, !dbg !1018
  tail call fastcc void @oputs_(ptr noundef %46), !dbg !1018
  %47 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #40, !dbg !1019
  tail call fastcc void @oputs_(ptr noundef %47), !dbg !1019
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #40, !dbg !1020
  tail call fastcc void @oputs_(ptr noundef %48), !dbg !1020
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !1021
  %50 = load ptr, ptr @stdout, align 8, !dbg !1021, !tbaa !994
  %51 = tail call i32 @fputs_unlocked(ptr noundef %49, ptr noundef %50), !dbg !1021
  %52 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !1022
  tail call fastcc void @oputs_(ptr noundef %52), !dbg !1022
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #40, !dbg !1023
  tail call fastcc void @oputs_(ptr noundef %53), !dbg !1023
  %54 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #40, !dbg !1024
  tail call fastcc void @oputs_(ptr noundef %54), !dbg !1024
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #40, !dbg !1025
  tail call fastcc void @oputs_(ptr noundef %55), !dbg !1025
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #40, !dbg !1026
  tail call fastcc void @oputs_(ptr noundef %56), !dbg !1026
  %57 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #40, !dbg !1027
  tail call fastcc void @oputs_(ptr noundef %57), !dbg !1027
  %58 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #40, !dbg !1028
  tail call fastcc void @oputs_(ptr noundef %58), !dbg !1028
  %59 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #40, !dbg !1029
  tail call fastcc void @oputs_(ptr noundef %59), !dbg !1029
  %60 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #40, !dbg !1030
  tail call fastcc void @oputs_(ptr noundef %60), !dbg !1030
  %61 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #40, !dbg !1031
  tail call fastcc void @oputs_(ptr noundef %61), !dbg !1031
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #40, !dbg !1032
  tail call fastcc void @oputs_(ptr noundef %62), !dbg !1032
  %63 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #40, !dbg !1033
  tail call fastcc void @oputs_(ptr noundef %63), !dbg !1033
  %64 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #40, !dbg !1034
  tail call fastcc void @oputs_(ptr noundef %64), !dbg !1034
  %65 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #40, !dbg !1035
  tail call fastcc void @oputs_(ptr noundef %65), !dbg !1035
  %66 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #40, !dbg !1036
  tail call fastcc void @oputs_(ptr noundef %66), !dbg !1036
  %67 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #40, !dbg !1037
  tail call fastcc void @oputs_(ptr noundef %67), !dbg !1037
  %68 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #40, !dbg !1038
  tail call fastcc void @oputs_(ptr noundef %68), !dbg !1038
  %69 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #40, !dbg !1039
  tail call fastcc void @oputs_(ptr noundef %69), !dbg !1039
  %70 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #40, !dbg !1040
  tail call fastcc void @oputs_(ptr noundef %70), !dbg !1040
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #40, !dbg !1041
  tail call fastcc void @oputs_(ptr noundef %71), !dbg !1041
  %72 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #40, !dbg !1042
  %73 = load ptr, ptr @stdout, align 8, !dbg !1042, !tbaa !994
  %74 = tail call i32 @fputs_unlocked(ptr noundef %72, ptr noundef %73), !dbg !1042
  %75 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #40, !dbg !1043
  %76 = load ptr, ptr @stdout, align 8, !dbg !1043, !tbaa !994
  %77 = tail call i32 @fputs_unlocked(ptr noundef %75, ptr noundef %76), !dbg !1043
  %78 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #40, !dbg !1044
  %79 = load ptr, ptr @stdout, align 8, !dbg !1044, !tbaa !994
  %80 = tail call i32 @fputs_unlocked(ptr noundef %78, ptr noundef %79), !dbg !1044
  %81 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #40, !dbg !1045
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #40, !dbg !1045
  %83 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %81, ptr noundef %82) #40, !dbg !1045
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1046, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata !1065, metadata !1059, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata ptr poison, metadata !1058, metadata !DIExpression()), !dbg !1063
  tail call void @emit_bug_reporting_address() #40, !dbg !1066
  %84 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !1067
  call void @llvm.dbg.value(metadata ptr %84, metadata !1061, metadata !DIExpression()), !dbg !1063
  %85 = icmp eq ptr %84, null, !dbg !1068
  br i1 %85, label %93, label %86, !dbg !1070

86:                                               ; preds = %8
  %87 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(4) @.str.85, i64 noundef 3) #41, !dbg !1071
  %88 = icmp eq i32 %87, 0, !dbg !1071
  br i1 %88, label %93, label %89, !dbg !1072

89:                                               ; preds = %86
  %90 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.86, i32 noundef 5) #40, !dbg !1073
  %91 = load ptr, ptr @stdout, align 8, !dbg !1073, !tbaa !994
  %92 = tail call i32 @fputs_unlocked(ptr noundef %90, ptr noundef %91), !dbg !1073
  br label %93, !dbg !1075

93:                                               ; preds = %8, %86, %89
  call void @llvm.dbg.value(metadata ptr @.str.82, metadata !1058, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata ptr @.str.62, metadata !1062, metadata !DIExpression()), !dbg !1063
  %94 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.87, i32 noundef 5) #40, !dbg !1076
  %95 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %94, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.62) #40, !dbg !1076
  %96 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.88, i32 noundef 5) #40, !dbg !1077
  %97 = select i1 icmp eq (ptr @.str.82, ptr @.str.3), ptr @.str.89, ptr @.str.47, !dbg !1077
  %98 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %96, ptr noundef nonnull @.str.82, ptr noundef nonnull %97) #40, !dbg !1077
  br label %99

99:                                               ; preds = %93, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1078
  unreachable, !dbg !1078
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1079 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1083 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1089 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !308 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !313, metadata !DIExpression()), !dbg !1093
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !314, metadata !DIExpression()), !dbg !1093
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1094, !tbaa !1095
  %3 = icmp eq i32 %2, -1, !dbg !1097
  br i1 %3, label %4, label %16, !dbg !1098

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.58) #40, !dbg !1099
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !315, metadata !DIExpression()), !dbg !1100
  %6 = icmp eq ptr %5, null, !dbg !1101
  br i1 %6, label %14, label %7, !dbg !1102

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1103, !tbaa !1104
  %9 = icmp eq i8 %8, 0, !dbg !1103
  br i1 %9, label %14, label %10, !dbg !1105

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1106, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata ptr @.str.59, metadata !1112, metadata !DIExpression()), !dbg !1113
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.59) #41, !dbg !1115
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
  br label %124, !dbg !1124

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !318, metadata !DIExpression()), !dbg !1093
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.60) #41, !dbg !1125
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1126
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !320, metadata !DIExpression()), !dbg !1093
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1127
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !321, metadata !DIExpression()), !dbg !1093
  %26 = icmp eq ptr %25, null, !dbg !1128
  br i1 %26, label %54, label %27, !dbg !1129

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1130
  br i1 %28, label %54, label %29, !dbg !1131

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !322, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i64 0, metadata !326, metadata !DIExpression()), !dbg !1132
  %30 = icmp ult ptr %24, %25, !dbg !1133
  br i1 %30, label %31, label %54, !dbg !1134

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1093
  %33 = load ptr, ptr %32, align 8, !tbaa !994
  br label %34, !dbg !1134

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !322, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !326, metadata !DIExpression()), !dbg !1132
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1135
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !322, metadata !DIExpression()), !dbg !1132
  %38 = load i8, ptr %35, align 1, !dbg !1135, !tbaa !1104
  %39 = sext i8 %38 to i64, !dbg !1135
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1135
  %41 = load i16, ptr %40, align 2, !dbg !1135, !tbaa !1136
  %42 = freeze i16 %41, !dbg !1138
  %43 = lshr i16 %42, 13, !dbg !1138
  %44 = and i16 %43, 1, !dbg !1138
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1139
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !326, metadata !DIExpression()), !dbg !1132
  %47 = icmp ult ptr %37, %25, !dbg !1133
  %48 = icmp ult i64 %46, 2, !dbg !1140
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1140
  br i1 %49, label %34, label %50, !dbg !1134, !llvm.loop !1141

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1143
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1145
  %53 = zext i1 %51 to i8, !dbg !1145
  br label %54, !dbg !1145

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1093
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !1093
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !318, metadata !DIExpression()), !dbg !1093
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !321, metadata !DIExpression()), !dbg !1093
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.61) #41, !dbg !1146
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !327, metadata !DIExpression()), !dbg !1093
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1147
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !328, metadata !DIExpression()), !dbg !1093
  br label %59, !dbg !1148

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !1093
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !1093
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !318, metadata !DIExpression()), !dbg !1093
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !328, metadata !DIExpression()), !dbg !1093
  %62 = load i8, ptr %60, align 1, !dbg !1149, !tbaa !1104
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1150

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1151
  %65 = load i8, ptr %64, align 1, !dbg !1154, !tbaa !1104
  %66 = icmp eq i8 %65, 45, !dbg !1155
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1156
  br label %68, !dbg !1156

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !1093
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !318, metadata !DIExpression()), !dbg !1093
  %70 = tail call ptr @__ctype_b_loc() #43, !dbg !1157
  %71 = load ptr, ptr %70, align 8, !dbg !1157, !tbaa !994
  %72 = sext i8 %62 to i64, !dbg !1157
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1157
  %74 = load i16, ptr %73, align 2, !dbg !1157, !tbaa !1136
  %75 = and i16 %74, 8192, !dbg !1157
  %76 = icmp eq i16 %75, 0, !dbg !1157
  br i1 %76, label %92, label %77, !dbg !1159

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1160
  br i1 %78, label %94, label %79, !dbg !1163

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1164
  %81 = load i8, ptr %80, align 1, !dbg !1164, !tbaa !1104
  %82 = sext i8 %81 to i64, !dbg !1164
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1164
  %84 = load i16, ptr %83, align 2, !dbg !1164, !tbaa !1136
  %85 = and i16 %84, 8192, !dbg !1164
  %86 = icmp eq i16 %85, 0, !dbg !1164
  br i1 %86, label %87, label %94, !dbg !1165

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1166
  %89 = icmp ne i8 %88, 0, !dbg !1166
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1168
  br i1 %91, label %92, label %94, !dbg !1168

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1169
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !328, metadata !DIExpression()), !dbg !1093
  br label %59, !dbg !1148, !llvm.loop !1170

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1172
  %96 = load ptr, ptr @stdout, align 8, !dbg !1172, !tbaa !994
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1172
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1106, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1112, metadata !DIExpression()), !dbg !1173
  tail call void @llvm.dbg.value(metadata ptr @.str.62, metadata !383, metadata !DIExpression()), !dbg !1093
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.50, i64 noundef 6) #41, !dbg !1175
  %99 = icmp eq i32 %98, 0, !dbg !1175
  br i1 %99, label %103, label %100, !dbg !1177

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.51, i64 noundef 9) #41, !dbg !1178
  %102 = icmp eq i32 %101, 0, !dbg !1178
  br i1 %102, label %103, label %106, !dbg !1179

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1180
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.62, i32 noundef %104, ptr noundef %55) #40, !dbg !1180
  br label %109, !dbg !1182

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1183
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.62, i32 noundef %107, ptr noundef %55) #40, !dbg !1183
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1185, !tbaa !994
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.78, ptr noundef %110), !dbg !1185
  %112 = load ptr, ptr @stdout, align 8, !dbg !1186, !tbaa !994
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.79, ptr noundef %112), !dbg !1186
  %114 = ptrtoint ptr %60 to i64, !dbg !1187
  %115 = sub i64 %114, %95, !dbg !1187
  %116 = load ptr, ptr @stdout, align 8, !dbg !1187, !tbaa !994
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1187
  %118 = load ptr, ptr @stdout, align 8, !dbg !1188, !tbaa !994
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.80, ptr noundef %118), !dbg !1188
  %120 = load ptr, ptr @stdout, align 8, !dbg !1189, !tbaa !994
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.81, ptr noundef %120), !dbg !1189
  %122 = load ptr, ptr @stdout, align 8, !dbg !1190, !tbaa !994
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1190
  br label %124, !dbg !1191

124:                                              ; preds = %109, %19
  ret void, !dbg !1191
}

declare !dbg !1192 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1195 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1199 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1203 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1205 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1208 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1211 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1214 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1217 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1223 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1224 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1230 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1234, metadata !DIExpression()), !dbg !1237
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1235, metadata !DIExpression()), !dbg !1237
  %3 = load ptr, ptr %1, align 8, !dbg !1238, !tbaa !994
  tail call void @set_program_name(ptr noundef %3) #40, !dbg !1239
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.47) #40, !dbg !1240
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #40, !dbg !1241
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.48) #40, !dbg !1242
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1243, metadata !DIExpression()), !dbg !1246
  store volatile i32 2, ptr @exit_failure, align 4, !dbg !1248, !tbaa !1095
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1250
  store ptr %1, ptr @argv, align 8, !dbg !1251, !tbaa !994
  %8 = icmp eq i32 %0, 2, !dbg !1252
  br i1 %8, label %9, label %23, !dbg !1256

9:                                                ; preds = %2
  %10 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !1257
  %11 = load ptr, ptr %10, align 8, !dbg !1257, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %11, metadata !1106, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata ptr @.str.50, metadata !1112, metadata !DIExpression()), !dbg !1260
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(7) @.str.50) #41, !dbg !1262
  %13 = icmp eq i32 %12, 0, !dbg !1263
  br i1 %13, label %14, label %15, !dbg !1264

14:                                               ; preds = %9
  tail call void @usage(i32 noundef 0) #44, !dbg !1265
  unreachable, !dbg !1265

15:                                               ; preds = %9
  call void @llvm.dbg.value(metadata ptr %11, metadata !1106, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr @.str.51, metadata !1112, metadata !DIExpression()), !dbg !1266
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(10) @.str.51) #41, !dbg !1269
  %17 = icmp eq i32 %16, 0, !dbg !1270
  br i1 %17, label %18, label %25, !dbg !1271

18:                                               ; preds = %15
  %19 = load ptr, ptr @stdout, align 8, !dbg !1272, !tbaa !994
  %20 = load ptr, ptr @Version, align 8, !dbg !1274, !tbaa !994
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.53) #40, !dbg !1275
  %22 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.54) #40, !dbg !1275
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef null) #40, !dbg !1276
  br label %54, !dbg !1277

23:                                               ; preds = %2
  %24 = icmp slt i32 %0, 2, !dbg !1278
  br i1 %24, label %32, label %25, !dbg !1280

25:                                               ; preds = %15, %23
  %26 = zext nneg i32 %0 to i64, !dbg !1281
  %27 = getelementptr ptr, ptr %1, i64 %26, !dbg !1281
  %28 = getelementptr ptr, ptr %27, i64 -1, !dbg !1281
  %29 = load ptr, ptr %28, align 8, !dbg !1281, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %29, metadata !1106, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata ptr @.str.55, metadata !1112, metadata !DIExpression()), !dbg !1282
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(2) @.str.55) #41, !dbg !1284
  %31 = icmp eq i32 %30, 0, !dbg !1285
  br i1 %31, label %35, label %32, !dbg !1286

32:                                               ; preds = %25, %23
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #40, !dbg !1287
  %34 = tail call ptr @quote(ptr noundef nonnull @.str.55) #40, !dbg !1288
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %33, ptr noundef %34) #44, !dbg !1289
  unreachable, !dbg !1289

35:                                               ; preds = %25
  %36 = add nsw i32 %0, -1, !dbg !1290
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !1234, metadata !DIExpression()), !dbg !1237
  store i32 %36, ptr @argc, align 4, !dbg !1291, !tbaa !1095
  store i32 1, ptr @pos, align 4, !dbg !1292, !tbaa !1095
  br i1 %8, label %54, label %37, !dbg !1293

37:                                               ; preds = %35
  %38 = add nsw i32 %0, -2, !dbg !1294
  %39 = tail call fastcc zeroext i1 @posixtest(i32 noundef %38), !dbg !1295
  tail call void @llvm.dbg.value(metadata i1 %39, metadata !1236, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1237
  %40 = load i32, ptr @pos, align 4, !dbg !1296, !tbaa !1095
  %41 = load i32, ptr @argc, align 4, !dbg !1298, !tbaa !1095
  %42 = icmp eq i32 %40, %41, !dbg !1299
  br i1 %42, label %51, label %43, !dbg !1300

43:                                               ; preds = %37
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.57, i32 noundef 5) #40, !dbg !1301
  %45 = load ptr, ptr @argv, align 8, !dbg !1302, !tbaa !994
  %46 = load i32, ptr @pos, align 4, !dbg !1303, !tbaa !1095
  %47 = sext i32 %46 to i64, !dbg !1302
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47, !dbg !1302
  %49 = load ptr, ptr %48, align 8, !dbg !1302, !tbaa !994
  %50 = tail call ptr @quote(ptr noundef %49) #40, !dbg !1304
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %44, ptr noundef %50) #44, !dbg !1305
  unreachable, !dbg !1305

51:                                               ; preds = %37
  %52 = xor i1 %39, true, !dbg !1306
  %53 = zext i1 %52 to i32, !dbg !1306
  br label %54, !dbg !1306

54:                                               ; preds = %35, %51, %18
  %55 = phi i32 [ 0, %18 ], [ %53, %51 ], [ 1, %35 ], !dbg !1237
  ret i32 %55, !dbg !1307
}

; Function Attrs: nounwind
declare !dbg !1308 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1311 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1312 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal void @test_syntax_error(ptr noundef %0, ...) unnamed_addr #0 !dbg !1315 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1331
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1320, metadata !DIExpression(), metadata !1331, metadata ptr %2, metadata !DIExpression()), !dbg !1332
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1319, metadata !DIExpression()), !dbg !1332
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #40, !dbg !1333
  call void @llvm.va_start(ptr nonnull %2), !dbg !1334
  call void @verror(i32 noundef 0, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %2) #45, !dbg !1335
  call void @exit(i32 noundef 2) #42, !dbg !1336
  unreachable, !dbg !1336
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @posixtest(i32 noundef %0) unnamed_addr #10 !dbg !1337 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1341, metadata !DIExpression()), !dbg !1343
  switch i32 %0, label %97 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %39
    i32 4, label %41
  ], !dbg !1344

2:                                                ; preds = %1
  %3 = load ptr, ptr @argv, align 8, !dbg !1345, !tbaa !994
  %4 = load i32, ptr @pos, align 4, !dbg !1351, !tbaa !1095
  %5 = add nsw i32 %4, 1, !dbg !1351
  store i32 %5, ptr @pos, align 4, !dbg !1351, !tbaa !1095
  %6 = sext i32 %4 to i64, !dbg !1345
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6, !dbg !1345
  %8 = load ptr, ptr %7, align 8, !dbg !1345, !tbaa !994
  %9 = load i8, ptr %8, align 1, !dbg !1345, !tbaa !1104
  %10 = icmp ne i8 %9, 0, !dbg !1352
  tail call void @llvm.dbg.value(metadata i1 %10, metadata !1342, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1343
  br label %109, !dbg !1353

11:                                               ; preds = %1
  %12 = load ptr, ptr @argv, align 8, !dbg !1354, !tbaa !994
  %13 = load i32, ptr @pos, align 4, !dbg !1360, !tbaa !1095
  %14 = sext i32 %13 to i64, !dbg !1354
  %15 = getelementptr ptr, ptr %12, i64 %14, !dbg !1354
  %16 = load ptr, ptr %15, align 8, !dbg !1354, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %16, metadata !1106, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1112, metadata !DIExpression()), !dbg !1361
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(2) @.str.90) #41, !dbg !1363
  %18 = icmp eq i32 %17, 0, !dbg !1364
  br i1 %18, label %19, label %25, !dbg !1365

19:                                               ; preds = %11
  %20 = add nsw i32 %13, 2, !dbg !1366
  store i32 %20, ptr @pos, align 4, !dbg !1366, !tbaa !1095
  %21 = getelementptr ptr, ptr %15, i64 1, !dbg !1369
  %22 = load ptr, ptr %21, align 8, !dbg !1369, !tbaa !994
  %23 = load i8, ptr %22, align 1, !dbg !1369, !tbaa !1104
  %24 = icmp eq i8 %23, 0, !dbg !1370
  call void @llvm.dbg.value(metadata i1 %24, metadata !1358, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1371
  br label %109, !dbg !1372

25:                                               ; preds = %11
  %26 = load i8, ptr %16, align 1, !dbg !1373, !tbaa !1104
  %27 = icmp eq i8 %26, 45, !dbg !1375
  br i1 %27, label %28, label %38, !dbg !1376

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1377
  %30 = load i8, ptr %29, align 1, !dbg !1377, !tbaa !1104
  %31 = icmp eq i8 %30, 0, !dbg !1378
  br i1 %31, label %38, label %32, !dbg !1379

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %16, i64 2, !dbg !1380
  %34 = load i8, ptr %33, align 1, !dbg !1380, !tbaa !1104
  %35 = icmp eq i8 %34, 0, !dbg !1381
  br i1 %35, label %36, label %38, !dbg !1382

36:                                               ; preds = %32
  %37 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1383
  call void @llvm.dbg.value(metadata i1 %37, metadata !1358, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1371
  br label %109

38:                                               ; preds = %32, %28, %25
  tail call fastcc void @beyond() #44, !dbg !1385
  unreachable, !dbg !1385

39:                                               ; preds = %1
  %40 = tail call fastcc zeroext i1 @three_arguments(), !dbg !1386
  tail call void @llvm.dbg.value(metadata i1 %40, metadata !1342, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1343
  br label %109, !dbg !1387

41:                                               ; preds = %1
  %42 = load ptr, ptr @argv, align 8, !dbg !1388, !tbaa !994
  %43 = load i32, ptr @pos, align 4, !dbg !1390, !tbaa !1095
  %44 = sext i32 %43 to i64, !dbg !1388
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44, !dbg !1388
  %46 = load ptr, ptr %45, align 8, !dbg !1388, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %46, metadata !1106, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1112, metadata !DIExpression()), !dbg !1391
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(2) @.str.90) #41, !dbg !1393
  %48 = icmp eq i32 %47, 0, !dbg !1394
  br i1 %48, label %49, label %57, !dbg !1395

49:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1401
  %50 = add nsw i32 %43, 1, !dbg !1404
  store i32 %50, ptr @pos, align 4, !dbg !1404, !tbaa !1095
  %51 = load i32, ptr @argc, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %54, label %53, !dbg !1405

53:                                               ; preds = %49
  tail call fastcc void @beyond(), !dbg !1407
  unreachable, !dbg !1407

54:                                               ; preds = %49
  %55 = tail call fastcc zeroext i1 @three_arguments(), !dbg !1408
  %56 = xor i1 %55, true, !dbg !1409
  tail call void @llvm.dbg.value(metadata i1 %56, metadata !1342, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1343
  br label %109, !dbg !1410

57:                                               ; preds = %41
  call void @llvm.dbg.value(metadata ptr %46, metadata !1106, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata ptr @.str.91, metadata !1112, metadata !DIExpression()), !dbg !1411
  %58 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(2) @.str.91) #41, !dbg !1414
  %59 = icmp eq i32 %58, 0, !dbg !1415
  br i1 %59, label %60, label %102, !dbg !1416

60:                                               ; preds = %57
  %61 = getelementptr ptr, ptr %45, i64 3, !dbg !1417
  %62 = load ptr, ptr %61, align 8, !dbg !1417, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %62, metadata !1106, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1112, metadata !DIExpression()), !dbg !1418
  %63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(2) @.str.92) #41, !dbg !1420
  %64 = icmp eq i32 %63, 0, !dbg !1421
  br i1 %64, label %65, label %102, !dbg !1422

65:                                               ; preds = %60
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1423
  %66 = add nsw i32 %43, 1, !dbg !1426
  store i32 %66, ptr @pos, align 4, !dbg !1426, !tbaa !1095
  %67 = sext i32 %66 to i64, !dbg !1427
  %68 = getelementptr ptr, ptr %42, i64 %67, !dbg !1427
  %69 = load ptr, ptr %68, align 8, !dbg !1427, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %69, metadata !1106, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1112, metadata !DIExpression()), !dbg !1429
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(2) @.str.90) #41, !dbg !1431
  %71 = icmp eq i32 %70, 0, !dbg !1432
  br i1 %71, label %72, label %78, !dbg !1433

72:                                               ; preds = %65
  %73 = add nsw i32 %43, 3, !dbg !1434
  %74 = getelementptr ptr, ptr %68, i64 1, !dbg !1436
  %75 = load ptr, ptr %74, align 8, !dbg !1436, !tbaa !994
  %76 = load i8, ptr %75, align 1, !dbg !1436, !tbaa !1104
  %77 = icmp eq i8 %76, 0, !dbg !1437
  call void @llvm.dbg.value(metadata i1 %77, metadata !1358, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1438
  br label %93, !dbg !1439

78:                                               ; preds = %65
  %79 = load i8, ptr %69, align 1, !dbg !1440, !tbaa !1104
  %80 = icmp eq i8 %79, 45, !dbg !1441
  br i1 %80, label %81, label %92, !dbg !1442

81:                                               ; preds = %78
  %82 = getelementptr inbounds i8, ptr %69, i64 1, !dbg !1443
  %83 = load i8, ptr %82, align 1, !dbg !1443, !tbaa !1104
  %84 = icmp eq i8 %83, 0, !dbg !1444
  br i1 %84, label %92, label %85, !dbg !1445

85:                                               ; preds = %81
  %86 = getelementptr inbounds i8, ptr %69, i64 2, !dbg !1446
  %87 = load i8, ptr %86, align 1, !dbg !1446, !tbaa !1104
  %88 = icmp eq i8 %87, 0, !dbg !1447
  br i1 %88, label %89, label %92, !dbg !1448

89:                                               ; preds = %85
  %90 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1449
  call void @llvm.dbg.value(metadata i1 %90, metadata !1358, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1438
  %91 = load i32, ptr @pos, align 4, !dbg !1450, !tbaa !1095
  br label %93

92:                                               ; preds = %85, %81, %78
  tail call fastcc void @beyond() #44, !dbg !1452
  unreachable, !dbg !1452

93:                                               ; preds = %72, %89
  %94 = phi i32 [ %73, %72 ], [ %91, %89 ], !dbg !1450
  %95 = phi i1 [ %77, %72 ], [ %90, %89 ]
  call void @llvm.dbg.value(metadata i1 %95, metadata !1358, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1438
  tail call void @llvm.dbg.value(metadata i1 %95, metadata !1342, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1343
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1453
  %96 = add nsw i32 %94, 1, !dbg !1450
  store i32 %96, ptr @pos, align 4, !dbg !1450, !tbaa !1095
  br label %109, !dbg !1454

97:                                               ; preds = %1
  %98 = icmp sgt i32 %0, 0, !dbg !1455
  br i1 %98, label %99, label %101, !dbg !1458

99:                                               ; preds = %97
  %100 = load i32, ptr @pos, align 4, !dbg !1459, !tbaa !1095
  br label %102, !dbg !1458

101:                                              ; preds = %97
  tail call void @__assert_fail(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef 651, ptr noundef nonnull @__PRETTY_FUNCTION__.posixtest) #42, !dbg !1455
  unreachable, !dbg !1455

102:                                              ; preds = %99, %57, %60
  %103 = phi i32 [ %100, %99 ], [ %43, %57 ], [ %43, %60 ], !dbg !1459
  %104 = load i32, ptr @argc, align 4, !dbg !1463, !tbaa !1095
  %105 = icmp slt i32 %103, %104, !dbg !1464
  br i1 %105, label %107, label %106, !dbg !1465

106:                                              ; preds = %102
  tail call fastcc void @beyond() #44, !dbg !1466
  unreachable, !dbg !1466

107:                                              ; preds = %102
  %108 = tail call fastcc zeroext i1 @or(), !dbg !1467
  tail call void @llvm.dbg.value(metadata i1 %108, metadata !1342, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1343
  br label %109, !dbg !1468

109:                                              ; preds = %36, %19, %107, %93, %54, %39, %2
  %110 = phi i1 [ %108, %107 ], [ %56, %54 ], [ %95, %93 ], [ %40, %39 ], [ %10, %2 ], [ %24, %19 ], [ %37, %36 ]
  tail call void @llvm.dbg.value(metadata i1 %110, metadata !1342, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1343
  ret i1 %110, !dbg !1469
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @unary_operator() unnamed_addr #10 !dbg !1470 {
  %1 = alloca [1 x i8], align 1, !DIAssignID !1522
  %2 = alloca %struct.stat, align 8, !DIAssignID !1523
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1472, metadata !DIExpression(), metadata !1523, metadata ptr %2, metadata !DIExpression()), !dbg !1524
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #40, !dbg !1525
  %3 = load ptr, ptr @argv, align 8, !dbg !1526, !tbaa !994
  %4 = load i32, ptr @pos, align 4, !dbg !1527, !tbaa !1095
  %5 = sext i32 %4 to i64, !dbg !1526
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5, !dbg !1526
  %7 = load ptr, ptr %6, align 8, !dbg !1526, !tbaa !994
  %8 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !1526
  %9 = load i8, ptr %8, align 1, !dbg !1526, !tbaa !1104
  switch i8 %9, label %10 [
    i8 101, label %18
    i8 114, label %31
    i8 119, label %44
    i8 120, label %57
    i8 78, label %70
    i8 79, label %105
    i8 71, label %129
    i8 102, label %153
    i8 100, label %171
    i8 115, label %189
    i8 83, label %206
    i8 99, label %224
    i8 98, label %242
    i8 112, label %260
    i8 76, label %278
    i8 104, label %278
    i8 117, label %291
    i8 103, label %309
    i8 107, label %327
    i8 116, label %345
    i8 110, label %369
    i8 122, label %382
  ], !dbg !1528

10:                                               ; preds = %0
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.95, i32 noundef 5) #40, !dbg !1529
  %12 = load ptr, ptr @argv, align 8, !dbg !1530, !tbaa !994
  %13 = load i32, ptr @pos, align 4, !dbg !1531, !tbaa !1095
  %14 = sext i32 %13 to i64, !dbg !1530
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14, !dbg !1530
  %16 = load ptr, ptr %15, align 8, !dbg !1530, !tbaa !994
  %17 = tail call ptr @quote(ptr noundef %16) #40, !dbg !1532
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %11, ptr noundef %17) #44, !dbg !1533
  unreachable, !dbg !1533

18:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1534
  %19 = add nsw i32 %4, 1, !dbg !1538
  store i32 %19, ptr @pos, align 4, !dbg !1538, !tbaa !1095
  %20 = load i32, ptr @argc, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %23, label %22, !dbg !1539

22:                                               ; preds = %18
  tail call fastcc void @beyond(), !dbg !1540
  unreachable, !dbg !1540

23:                                               ; preds = %18
  %24 = add nsw i32 %4, 2, !dbg !1541
  store i32 %24, ptr @pos, align 4, !dbg !1541, !tbaa !1095
  %25 = sext i32 %24 to i64, !dbg !1542
  %26 = getelementptr ptr, ptr %3, i64 %25, !dbg !1542
  %27 = getelementptr ptr, ptr %26, i64 -1, !dbg !1542
  %28 = load ptr, ptr %27, align 8, !dbg !1542, !tbaa !994
  %29 = call i32 @stat(ptr noundef %28, ptr noundef nonnull %2) #40, !dbg !1543
  %30 = icmp eq i32 %29, 0, !dbg !1544
  br label %395, !dbg !1545

31:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1546
  %32 = add nsw i32 %4, 1, !dbg !1549
  store i32 %32, ptr @pos, align 4, !dbg !1549, !tbaa !1095
  %33 = load i32, ptr @argc, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %36, label %35, !dbg !1550

35:                                               ; preds = %31
  tail call fastcc void @beyond(), !dbg !1551
  unreachable, !dbg !1551

36:                                               ; preds = %31
  %37 = add nsw i32 %4, 2, !dbg !1552
  store i32 %37, ptr @pos, align 4, !dbg !1552, !tbaa !1095
  %38 = sext i32 %37 to i64, !dbg !1553
  %39 = getelementptr ptr, ptr %3, i64 %38, !dbg !1553
  %40 = getelementptr ptr, ptr %39, i64 -1, !dbg !1553
  %41 = load ptr, ptr %40, align 8, !dbg !1553, !tbaa !994
  %42 = tail call i32 @euidaccess(ptr noundef %41, i32 noundef 4) #40, !dbg !1554
  %43 = icmp eq i32 %42, 0, !dbg !1555
  br label %395, !dbg !1556

44:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1557
  %45 = add nsw i32 %4, 1, !dbg !1560
  store i32 %45, ptr @pos, align 4, !dbg !1560, !tbaa !1095
  %46 = load i32, ptr @argc, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %49, label %48, !dbg !1561

48:                                               ; preds = %44
  tail call fastcc void @beyond(), !dbg !1562
  unreachable, !dbg !1562

49:                                               ; preds = %44
  %50 = add nsw i32 %4, 2, !dbg !1563
  store i32 %50, ptr @pos, align 4, !dbg !1563, !tbaa !1095
  %51 = sext i32 %50 to i64, !dbg !1564
  %52 = getelementptr ptr, ptr %3, i64 %51, !dbg !1564
  %53 = getelementptr ptr, ptr %52, i64 -1, !dbg !1564
  %54 = load ptr, ptr %53, align 8, !dbg !1564, !tbaa !994
  %55 = tail call i32 @euidaccess(ptr noundef %54, i32 noundef 2) #40, !dbg !1565
  %56 = icmp eq i32 %55, 0, !dbg !1566
  br label %395, !dbg !1567

57:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1568
  %58 = add nsw i32 %4, 1, !dbg !1571
  store i32 %58, ptr @pos, align 4, !dbg !1571, !tbaa !1095
  %59 = load i32, ptr @argc, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %62, label %61, !dbg !1572

61:                                               ; preds = %57
  tail call fastcc void @beyond(), !dbg !1573
  unreachable, !dbg !1573

62:                                               ; preds = %57
  %63 = add nsw i32 %4, 2, !dbg !1574
  store i32 %63, ptr @pos, align 4, !dbg !1574, !tbaa !1095
  %64 = sext i32 %63 to i64, !dbg !1575
  %65 = getelementptr ptr, ptr %3, i64 %64, !dbg !1575
  %66 = getelementptr ptr, ptr %65, i64 -1, !dbg !1575
  %67 = load ptr, ptr %66, align 8, !dbg !1575, !tbaa !994
  %68 = tail call i32 @euidaccess(ptr noundef %67, i32 noundef 1) #40, !dbg !1576
  %69 = icmp eq i32 %68, 0, !dbg !1577
  br label %395, !dbg !1578

70:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1579
  %71 = add nsw i32 %4, 1, !dbg !1582
  store i32 %71, ptr @pos, align 4, !dbg !1582, !tbaa !1095
  %72 = load i32, ptr @argc, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %75, label %74, !dbg !1583

74:                                               ; preds = %70
  tail call fastcc void @beyond(), !dbg !1584
  unreachable, !dbg !1584

75:                                               ; preds = %70
  %76 = add nsw i32 %4, 2, !dbg !1585
  store i32 %76, ptr @pos, align 4, !dbg !1585, !tbaa !1095
  %77 = sext i32 %76 to i64, !dbg !1586
  %78 = getelementptr ptr, ptr %3, i64 %77, !dbg !1586
  %79 = getelementptr ptr, ptr %78, i64 -1, !dbg !1586
  %80 = load ptr, ptr %79, align 8, !dbg !1586, !tbaa !994
  %81 = call i32 @stat(ptr noundef %80, ptr noundef nonnull %2) #40, !dbg !1588
  %82 = icmp eq i32 %81, 0, !dbg !1589
  br i1 %82, label %83, label %395, !dbg !1590

83:                                               ; preds = %75
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1591, metadata !DIExpression()), !dbg !1599
  %84 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 11, !dbg !1601
  %85 = load i64, ptr %84, align 8, !dbg !1601, !tbaa.struct !1602
  %86 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 11, i32 1, !dbg !1601
  %87 = load i64, ptr %86, align 8, !dbg !1601, !tbaa.struct !1605
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !1506, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1606
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !1506, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1606
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1607, metadata !DIExpression()), !dbg !1610
  %88 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 12, !dbg !1612
  %89 = load i64, ptr %88, align 8, !dbg !1612, !tbaa.struct !1602
  %90 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 12, i32 1, !dbg !1612
  %91 = load i64, ptr %90, align 8, !dbg !1612, !tbaa.struct !1605
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1509, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1606
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !1509, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1606
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1613, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1620
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !1613, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1620
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !1619, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1620
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !1619, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1620
  %92 = icmp sgt i64 %89, %85, !dbg !1622
  %93 = zext i1 %92 to i32, !dbg !1622
  %94 = icmp slt i64 %89, %85, !dbg !1622
  %95 = sext i1 %94 to i32, !dbg !1622
  %96 = add nsw i32 %95, %93, !dbg !1622
  %97 = shl nsw i32 %96, 1, !dbg !1623
  %98 = icmp sgt i64 %91, %87, !dbg !1624
  %99 = zext i1 %98 to i32, !dbg !1624
  %100 = icmp slt i64 %91, %87, !dbg !1624
  %101 = sext i1 %100 to i32, !dbg !1624
  %102 = add nsw i32 %101, %99, !dbg !1624
  %103 = add nsw i32 %102, %97, !dbg !1625
  %104 = icmp sgt i32 %103, 0, !dbg !1626
  br label %395

105:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1627
  %106 = add nsw i32 %4, 1, !dbg !1630
  store i32 %106, ptr @pos, align 4, !dbg !1630, !tbaa !1095
  %107 = load i32, ptr @argc, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %110, label %109, !dbg !1631

109:                                              ; preds = %105
  tail call fastcc void @beyond(), !dbg !1632
  unreachable, !dbg !1632

110:                                              ; preds = %105
  %111 = add nsw i32 %4, 2, !dbg !1633
  store i32 %111, ptr @pos, align 4, !dbg !1633, !tbaa !1095
  %112 = sext i32 %111 to i64, !dbg !1634
  %113 = getelementptr ptr, ptr %3, i64 %112, !dbg !1634
  %114 = getelementptr ptr, ptr %113, i64 -1, !dbg !1634
  %115 = load ptr, ptr %114, align 8, !dbg !1634, !tbaa !994
  %116 = call i32 @stat(ptr noundef %115, ptr noundef nonnull %2) #40, !dbg !1636
  %117 = icmp eq i32 %116, 0, !dbg !1637
  br i1 %117, label %118, label %395, !dbg !1638

118:                                              ; preds = %110
  %119 = tail call ptr @__errno_location() #43, !dbg !1639
  store i32 0, ptr %119, align 4, !dbg !1640, !tbaa !1095
  %120 = tail call i32 @geteuid() #40, !dbg !1641
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !1510, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1514, metadata !DIExpression()), !dbg !1642
  %121 = icmp eq i32 %120, -1, !dbg !1643
  br i1 %121, label %122, label %125, !dbg !1644

122:                                              ; preds = %118
  %123 = load i32, ptr %119, align 4, !dbg !1645, !tbaa !1095
  %124 = icmp eq i32 %123, 0, !dbg !1645
  br i1 %124, label %125, label %395, !dbg !1646

125:                                              ; preds = %122, %118
  %126 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 4, !dbg !1647
  %127 = load i32, ptr %126, align 4, !dbg !1647, !tbaa !1648
  %128 = icmp eq i32 %120, %127, !dbg !1651
  br label %395

129:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1652
  %130 = add nsw i32 %4, 1, !dbg !1655
  store i32 %130, ptr @pos, align 4, !dbg !1655, !tbaa !1095
  %131 = load i32, ptr @argc, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %134, label %133, !dbg !1656

133:                                              ; preds = %129
  tail call fastcc void @beyond(), !dbg !1657
  unreachable, !dbg !1657

134:                                              ; preds = %129
  %135 = add nsw i32 %4, 2, !dbg !1658
  store i32 %135, ptr @pos, align 4, !dbg !1658, !tbaa !1095
  %136 = sext i32 %135 to i64, !dbg !1659
  %137 = getelementptr ptr, ptr %3, i64 %136, !dbg !1659
  %138 = getelementptr ptr, ptr %137, i64 -1, !dbg !1659
  %139 = load ptr, ptr %138, align 8, !dbg !1659, !tbaa !994
  %140 = call i32 @stat(ptr noundef %139, ptr noundef nonnull %2) #40, !dbg !1661
  %141 = icmp eq i32 %140, 0, !dbg !1662
  br i1 %141, label %142, label %395, !dbg !1663

142:                                              ; preds = %134
  %143 = tail call ptr @__errno_location() #43, !dbg !1664
  store i32 0, ptr %143, align 4, !dbg !1665, !tbaa !1095
  %144 = tail call i32 @getegid() #40, !dbg !1666
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !1515, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1518, metadata !DIExpression()), !dbg !1667
  %145 = icmp eq i32 %144, -1, !dbg !1668
  br i1 %145, label %146, label %149, !dbg !1669

146:                                              ; preds = %142
  %147 = load i32, ptr %143, align 4, !dbg !1670, !tbaa !1095
  %148 = icmp eq i32 %147, 0, !dbg !1670
  br i1 %148, label %149, label %395, !dbg !1671

149:                                              ; preds = %146, %142
  %150 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 5, !dbg !1672
  %151 = load i32, ptr %150, align 8, !dbg !1672, !tbaa !1673
  %152 = icmp eq i32 %144, %151, !dbg !1674
  br label %395

153:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1675
  %154 = add nsw i32 %4, 1, !dbg !1678
  store i32 %154, ptr @pos, align 4, !dbg !1678, !tbaa !1095
  %155 = load i32, ptr @argc, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %158, label %157, !dbg !1679

157:                                              ; preds = %153
  tail call fastcc void @beyond(), !dbg !1680
  unreachable, !dbg !1680

158:                                              ; preds = %153
  %159 = add nsw i32 %4, 2, !dbg !1681
  store i32 %159, ptr @pos, align 4, !dbg !1681, !tbaa !1095
  %160 = sext i32 %159 to i64, !dbg !1682
  %161 = getelementptr ptr, ptr %3, i64 %160, !dbg !1682
  %162 = getelementptr ptr, ptr %161, i64 -1, !dbg !1682
  %163 = load ptr, ptr %162, align 8, !dbg !1682, !tbaa !994
  %164 = call i32 @stat(ptr noundef %163, ptr noundef nonnull %2) #40, !dbg !1683
  %165 = icmp eq i32 %164, 0, !dbg !1684
  %166 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1685
  %167 = load i32, ptr %166, align 8, !dbg !1685
  %168 = and i32 %167, 61440, !dbg !1685
  %169 = icmp eq i32 %168, 32768, !dbg !1685
  %170 = select i1 %165, i1 %169, i1 false, !dbg !1685
  br label %395, !dbg !1686

171:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1687
  %172 = add nsw i32 %4, 1, !dbg !1690
  store i32 %172, ptr @pos, align 4, !dbg !1690, !tbaa !1095
  %173 = load i32, ptr @argc, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %176, label %175, !dbg !1691

175:                                              ; preds = %171
  tail call fastcc void @beyond(), !dbg !1692
  unreachable, !dbg !1692

176:                                              ; preds = %171
  %177 = add nsw i32 %4, 2, !dbg !1693
  store i32 %177, ptr @pos, align 4, !dbg !1693, !tbaa !1095
  %178 = sext i32 %177 to i64, !dbg !1694
  %179 = getelementptr ptr, ptr %3, i64 %178, !dbg !1694
  %180 = getelementptr ptr, ptr %179, i64 -1, !dbg !1694
  %181 = load ptr, ptr %180, align 8, !dbg !1694, !tbaa !994
  %182 = call i32 @stat(ptr noundef %181, ptr noundef nonnull %2) #40, !dbg !1695
  %183 = icmp eq i32 %182, 0, !dbg !1696
  %184 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1697
  %185 = load i32, ptr %184, align 8, !dbg !1697
  %186 = and i32 %185, 61440, !dbg !1697
  %187 = icmp eq i32 %186, 16384, !dbg !1697
  %188 = select i1 %183, i1 %187, i1 false, !dbg !1697
  br label %395, !dbg !1698

189:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1699
  %190 = add nsw i32 %4, 1, !dbg !1702
  store i32 %190, ptr @pos, align 4, !dbg !1702, !tbaa !1095
  %191 = load i32, ptr @argc, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %194, label %193, !dbg !1703

193:                                              ; preds = %189
  tail call fastcc void @beyond(), !dbg !1704
  unreachable, !dbg !1704

194:                                              ; preds = %189
  %195 = add nsw i32 %4, 2, !dbg !1705
  store i32 %195, ptr @pos, align 4, !dbg !1705, !tbaa !1095
  %196 = sext i32 %195 to i64, !dbg !1706
  %197 = getelementptr ptr, ptr %3, i64 %196, !dbg !1706
  %198 = getelementptr ptr, ptr %197, i64 -1, !dbg !1706
  %199 = load ptr, ptr %198, align 8, !dbg !1706, !tbaa !994
  %200 = call i32 @stat(ptr noundef %199, ptr noundef nonnull %2) #40, !dbg !1707
  %201 = icmp eq i32 %200, 0, !dbg !1708
  %202 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8, !dbg !1709
  %203 = load i64, ptr %202, align 8, !dbg !1709
  %204 = icmp sgt i64 %203, 0, !dbg !1709
  %205 = select i1 %201, i1 %204, i1 false, !dbg !1709
  br label %395, !dbg !1710

206:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1711
  %207 = add nsw i32 %4, 1, !dbg !1714
  store i32 %207, ptr @pos, align 4, !dbg !1714, !tbaa !1095
  %208 = load i32, ptr @argc, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %211, label %210, !dbg !1715

210:                                              ; preds = %206
  tail call fastcc void @beyond(), !dbg !1716
  unreachable, !dbg !1716

211:                                              ; preds = %206
  %212 = add nsw i32 %4, 2, !dbg !1717
  store i32 %212, ptr @pos, align 4, !dbg !1717, !tbaa !1095
  %213 = sext i32 %212 to i64, !dbg !1718
  %214 = getelementptr ptr, ptr %3, i64 %213, !dbg !1718
  %215 = getelementptr ptr, ptr %214, i64 -1, !dbg !1718
  %216 = load ptr, ptr %215, align 8, !dbg !1718, !tbaa !994
  %217 = call i32 @stat(ptr noundef %216, ptr noundef nonnull %2) #40, !dbg !1719
  %218 = icmp eq i32 %217, 0, !dbg !1720
  %219 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1721
  %220 = load i32, ptr %219, align 8, !dbg !1721
  %221 = and i32 %220, 61440, !dbg !1721
  %222 = icmp eq i32 %221, 49152, !dbg !1721
  %223 = select i1 %218, i1 %222, i1 false, !dbg !1721
  br label %395, !dbg !1722

224:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1723
  %225 = add nsw i32 %4, 1, !dbg !1726
  store i32 %225, ptr @pos, align 4, !dbg !1726, !tbaa !1095
  %226 = load i32, ptr @argc, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %229, label %228, !dbg !1727

228:                                              ; preds = %224
  tail call fastcc void @beyond(), !dbg !1728
  unreachable, !dbg !1728

229:                                              ; preds = %224
  %230 = add nsw i32 %4, 2, !dbg !1729
  store i32 %230, ptr @pos, align 4, !dbg !1729, !tbaa !1095
  %231 = sext i32 %230 to i64, !dbg !1730
  %232 = getelementptr ptr, ptr %3, i64 %231, !dbg !1730
  %233 = getelementptr ptr, ptr %232, i64 -1, !dbg !1730
  %234 = load ptr, ptr %233, align 8, !dbg !1730, !tbaa !994
  %235 = call i32 @stat(ptr noundef %234, ptr noundef nonnull %2) #40, !dbg !1731
  %236 = icmp eq i32 %235, 0, !dbg !1732
  %237 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1733
  %238 = load i32, ptr %237, align 8, !dbg !1733
  %239 = and i32 %238, 61440, !dbg !1733
  %240 = icmp eq i32 %239, 8192, !dbg !1733
  %241 = select i1 %236, i1 %240, i1 false, !dbg !1733
  br label %395, !dbg !1734

242:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1735
  %243 = add nsw i32 %4, 1, !dbg !1738
  store i32 %243, ptr @pos, align 4, !dbg !1738, !tbaa !1095
  %244 = load i32, ptr @argc, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %247, label %246, !dbg !1739

246:                                              ; preds = %242
  tail call fastcc void @beyond(), !dbg !1740
  unreachable, !dbg !1740

247:                                              ; preds = %242
  %248 = add nsw i32 %4, 2, !dbg !1741
  store i32 %248, ptr @pos, align 4, !dbg !1741, !tbaa !1095
  %249 = sext i32 %248 to i64, !dbg !1742
  %250 = getelementptr ptr, ptr %3, i64 %249, !dbg !1742
  %251 = getelementptr ptr, ptr %250, i64 -1, !dbg !1742
  %252 = load ptr, ptr %251, align 8, !dbg !1742, !tbaa !994
  %253 = call i32 @stat(ptr noundef %252, ptr noundef nonnull %2) #40, !dbg !1743
  %254 = icmp eq i32 %253, 0, !dbg !1744
  %255 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1745
  %256 = load i32, ptr %255, align 8, !dbg !1745
  %257 = and i32 %256, 61440, !dbg !1745
  %258 = icmp eq i32 %257, 24576, !dbg !1745
  %259 = select i1 %254, i1 %258, i1 false, !dbg !1745
  br label %395, !dbg !1746

260:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1747
  %261 = add nsw i32 %4, 1, !dbg !1750
  store i32 %261, ptr @pos, align 4, !dbg !1750, !tbaa !1095
  %262 = load i32, ptr @argc, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %265, label %264, !dbg !1751

264:                                              ; preds = %260
  tail call fastcc void @beyond(), !dbg !1752
  unreachable, !dbg !1752

265:                                              ; preds = %260
  %266 = add nsw i32 %4, 2, !dbg !1753
  store i32 %266, ptr @pos, align 4, !dbg !1753, !tbaa !1095
  %267 = sext i32 %266 to i64, !dbg !1754
  %268 = getelementptr ptr, ptr %3, i64 %267, !dbg !1754
  %269 = getelementptr ptr, ptr %268, i64 -1, !dbg !1754
  %270 = load ptr, ptr %269, align 8, !dbg !1754, !tbaa !994
  %271 = call i32 @stat(ptr noundef %270, ptr noundef nonnull %2) #40, !dbg !1755
  %272 = icmp eq i32 %271, 0, !dbg !1756
  %273 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1757
  %274 = load i32, ptr %273, align 8, !dbg !1757
  %275 = and i32 %274, 61440, !dbg !1757
  %276 = icmp eq i32 %275, 4096, !dbg !1757
  %277 = select i1 %272, i1 %276, i1 false, !dbg !1757
  br label %395, !dbg !1758

278:                                              ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1759
  %279 = add nsw i32 %4, 1, !dbg !1762
  store i32 %279, ptr @pos, align 4, !dbg !1762, !tbaa !1095
  %280 = load i32, ptr @argc, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %283, label %282, !dbg !1763

282:                                              ; preds = %278
  tail call fastcc void @beyond(), !dbg !1764
  unreachable, !dbg !1764

283:                                              ; preds = %278
  %284 = add nsw i32 %4, 2, !dbg !1765
  store i32 %284, ptr @pos, align 4, !dbg !1765, !tbaa !1095
  %285 = sext i32 %284 to i64, !dbg !1766
  %286 = getelementptr ptr, ptr %3, i64 %285, !dbg !1766
  %287 = getelementptr ptr, ptr %286, i64 -1, !dbg !1766
  %288 = load ptr, ptr %287, align 8, !dbg !1766, !tbaa !994
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1767, metadata !DIExpression(), metadata !1522, metadata ptr %1, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata ptr %288, metadata !1773, metadata !DIExpression()), !dbg !1774
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #40, !dbg !1776
  %289 = call i64 @readlink(ptr noundef nonnull %288, ptr noundef nonnull %1, i64 noundef 1) #40, !dbg !1777
  %290 = icmp sgt i64 %289, -1, !dbg !1779
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #40, !dbg !1780
  br label %395, !dbg !1781

291:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1782
  %292 = add nsw i32 %4, 1, !dbg !1785
  store i32 %292, ptr @pos, align 4, !dbg !1785, !tbaa !1095
  %293 = load i32, ptr @argc, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %296, label %295, !dbg !1786

295:                                              ; preds = %291
  tail call fastcc void @beyond(), !dbg !1787
  unreachable, !dbg !1787

296:                                              ; preds = %291
  %297 = add nsw i32 %4, 2, !dbg !1788
  store i32 %297, ptr @pos, align 4, !dbg !1788, !tbaa !1095
  %298 = sext i32 %297 to i64, !dbg !1789
  %299 = getelementptr ptr, ptr %3, i64 %298, !dbg !1789
  %300 = getelementptr ptr, ptr %299, i64 -1, !dbg !1789
  %301 = load ptr, ptr %300, align 8, !dbg !1789, !tbaa !994
  %302 = call i32 @stat(ptr noundef %301, ptr noundef nonnull %2) #40, !dbg !1790
  %303 = icmp eq i32 %302, 0, !dbg !1791
  %304 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1792
  %305 = load i32, ptr %304, align 8, !dbg !1792
  %306 = and i32 %305, 2048, !dbg !1792
  %307 = icmp ne i32 %306, 0, !dbg !1792
  %308 = select i1 %303, i1 %307, i1 false, !dbg !1792
  br label %395, !dbg !1793

309:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1794
  %310 = add nsw i32 %4, 1, !dbg !1797
  store i32 %310, ptr @pos, align 4, !dbg !1797, !tbaa !1095
  %311 = load i32, ptr @argc, align 4
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %314, label %313, !dbg !1798

313:                                              ; preds = %309
  tail call fastcc void @beyond(), !dbg !1799
  unreachable, !dbg !1799

314:                                              ; preds = %309
  %315 = add nsw i32 %4, 2, !dbg !1800
  store i32 %315, ptr @pos, align 4, !dbg !1800, !tbaa !1095
  %316 = sext i32 %315 to i64, !dbg !1801
  %317 = getelementptr ptr, ptr %3, i64 %316, !dbg !1801
  %318 = getelementptr ptr, ptr %317, i64 -1, !dbg !1801
  %319 = load ptr, ptr %318, align 8, !dbg !1801, !tbaa !994
  %320 = call i32 @stat(ptr noundef %319, ptr noundef nonnull %2) #40, !dbg !1802
  %321 = icmp eq i32 %320, 0, !dbg !1803
  %322 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1804
  %323 = load i32, ptr %322, align 8, !dbg !1804
  %324 = and i32 %323, 1024, !dbg !1804
  %325 = icmp ne i32 %324, 0, !dbg !1804
  %326 = select i1 %321, i1 %325, i1 false, !dbg !1804
  br label %395, !dbg !1805

327:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1806
  %328 = add nsw i32 %4, 1, !dbg !1809
  store i32 %328, ptr @pos, align 4, !dbg !1809, !tbaa !1095
  %329 = load i32, ptr @argc, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %332, label %331, !dbg !1810

331:                                              ; preds = %327
  tail call fastcc void @beyond(), !dbg !1811
  unreachable, !dbg !1811

332:                                              ; preds = %327
  %333 = add nsw i32 %4, 2, !dbg !1812
  store i32 %333, ptr @pos, align 4, !dbg !1812, !tbaa !1095
  %334 = sext i32 %333 to i64, !dbg !1813
  %335 = getelementptr ptr, ptr %3, i64 %334, !dbg !1813
  %336 = getelementptr ptr, ptr %335, i64 -1, !dbg !1813
  %337 = load ptr, ptr %336, align 8, !dbg !1813, !tbaa !994
  %338 = call i32 @stat(ptr noundef %337, ptr noundef nonnull %2) #40, !dbg !1814
  %339 = icmp eq i32 %338, 0, !dbg !1815
  %340 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1816
  %341 = load i32, ptr %340, align 8, !dbg !1816
  %342 = and i32 %341, 512, !dbg !1816
  %343 = icmp ne i32 %342, 0, !dbg !1816
  %344 = select i1 %339, i1 %343, i1 false, !dbg !1816
  br label %395, !dbg !1817

345:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1818
  %346 = add nsw i32 %4, 1, !dbg !1821
  store i32 %346, ptr @pos, align 4, !dbg !1821, !tbaa !1095
  %347 = load i32, ptr @argc, align 4
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %350, label %349, !dbg !1822

349:                                              ; preds = %345
  tail call fastcc void @beyond(), !dbg !1823
  unreachable, !dbg !1823

350:                                              ; preds = %345
  %351 = add nsw i32 %4, 2, !dbg !1824
  store i32 %351, ptr @pos, align 4, !dbg !1824, !tbaa !1095
  %352 = sext i32 %351 to i64, !dbg !1825
  %353 = getelementptr ptr, ptr %3, i64 %352, !dbg !1825
  %354 = getelementptr ptr, ptr %353, i64 -1, !dbg !1825
  %355 = load ptr, ptr %354, align 8, !dbg !1825, !tbaa !994
  %356 = tail call fastcc ptr @find_int(ptr noundef %355), !dbg !1826
  tail call void @llvm.dbg.value(metadata ptr %356, metadata !1521, metadata !DIExpression()), !dbg !1827
  %357 = tail call ptr @__errno_location() #43, !dbg !1828
  store i32 0, ptr %357, align 4, !dbg !1829, !tbaa !1095
  %358 = tail call i64 @strtol(ptr nocapture noundef %356, ptr noundef null, i32 noundef 10) #40, !dbg !1830
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1519, metadata !DIExpression()), !dbg !1827
  %359 = load i32, ptr %357, align 4, !dbg !1831, !tbaa !1095
  %360 = icmp ne i32 %359, 34, !dbg !1832
  %361 = icmp sgt i64 %358, -1
  %362 = select i1 %360, i1 %361, i1 false, !dbg !1833
  %363 = icmp slt i64 %358, 2147483648
  %364 = select i1 %362, i1 %363, i1 false, !dbg !1833
  br i1 %364, label %365, label %395, !dbg !1833

365:                                              ; preds = %350
  %366 = trunc i64 %358 to i32, !dbg !1834
  %367 = tail call i32 @isatty(i32 noundef %366) #40, !dbg !1835
  %368 = icmp ne i32 %367, 0, !dbg !1836
  br label %395

369:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1837
  %370 = add nsw i32 %4, 1, !dbg !1840
  store i32 %370, ptr @pos, align 4, !dbg !1840, !tbaa !1095
  %371 = load i32, ptr @argc, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %374, label %373, !dbg !1841

373:                                              ; preds = %369
  tail call fastcc void @beyond(), !dbg !1842
  unreachable, !dbg !1842

374:                                              ; preds = %369
  %375 = add nsw i32 %4, 2, !dbg !1843
  store i32 %375, ptr @pos, align 4, !dbg !1843, !tbaa !1095
  %376 = sext i32 %375 to i64, !dbg !1844
  %377 = getelementptr ptr, ptr %3, i64 %376, !dbg !1844
  %378 = getelementptr ptr, ptr %377, i64 -1, !dbg !1844
  %379 = load ptr, ptr %378, align 8, !dbg !1844, !tbaa !994
  %380 = load i8, ptr %379, align 1, !dbg !1844, !tbaa !1104
  %381 = icmp ne i8 %380, 0, !dbg !1845
  br label %395, !dbg !1846

382:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1847
  %383 = add nsw i32 %4, 1, !dbg !1850
  store i32 %383, ptr @pos, align 4, !dbg !1850, !tbaa !1095
  %384 = load i32, ptr @argc, align 4
  %385 = icmp slt i32 %383, %384
  br i1 %385, label %387, label %386, !dbg !1851

386:                                              ; preds = %382
  tail call fastcc void @beyond(), !dbg !1852
  unreachable, !dbg !1852

387:                                              ; preds = %382
  %388 = add nsw i32 %4, 2, !dbg !1853
  store i32 %388, ptr @pos, align 4, !dbg !1853, !tbaa !1095
  %389 = sext i32 %388 to i64, !dbg !1854
  %390 = getelementptr ptr, ptr %3, i64 %389, !dbg !1854
  %391 = getelementptr ptr, ptr %390, i64 -1, !dbg !1854
  %392 = load ptr, ptr %391, align 8, !dbg !1854, !tbaa !994
  %393 = load i8, ptr %392, align 1, !dbg !1854, !tbaa !1104
  %394 = icmp eq i8 %393, 0, !dbg !1855
  br label %395, !dbg !1856

395:                                              ; preds = %350, %365, %146, %149, %134, %122, %125, %110, %75, %387, %374, %332, %314, %296, %283, %265, %247, %229, %211, %194, %176, %158, %83, %62, %49, %36, %23
  %396 = phi i1 [ %394, %387 ], [ %381, %374 ], [ %344, %332 ], [ %326, %314 ], [ %308, %296 ], [ %290, %283 ], [ %277, %265 ], [ %259, %247 ], [ %241, %229 ], [ %223, %211 ], [ %205, %194 ], [ %188, %176 ], [ %170, %158 ], [ %104, %83 ], [ %69, %62 ], [ %56, %49 ], [ %43, %36 ], [ %30, %23 ], [ false, %75 ], [ false, %110 ], [ false, %122 ], [ %128, %125 ], [ false, %134 ], [ false, %146 ], [ %152, %149 ], [ false, %350 ], [ %368, %365 ], !dbg !1857
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #40, !dbg !1858
  ret i1 %396, !dbg !1858
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !1859 {
  %1 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.97, i32 noundef 5) #40, !dbg !1860
  %2 = load ptr, ptr @argv, align 8, !dbg !1861, !tbaa !994
  %3 = load i32, ptr @argc, align 4, !dbg !1862, !tbaa !1095
  %4 = sext i32 %3 to i64, !dbg !1861
  %5 = getelementptr ptr, ptr %2, i64 %4, !dbg !1861
  %6 = getelementptr ptr, ptr %5, i64 -1, !dbg !1861
  %7 = load ptr, ptr %6, align 8, !dbg !1861, !tbaa !994
  %8 = tail call ptr @quote(ptr noundef %7) #40, !dbg !1863
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %1, ptr noundef %8) #44, !dbg !1864
  unreachable, !dbg !1864
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @three_arguments() unnamed_addr #10 !dbg !1865 {
  %1 = load ptr, ptr @argv, align 8, !dbg !1869, !tbaa !994
  %2 = load i32, ptr @pos, align 4, !dbg !1870, !tbaa !1095
  %3 = sext i32 %2 to i64, !dbg !1869
  %4 = getelementptr ptr, ptr %1, i64 %3, !dbg !1869
  %5 = getelementptr ptr, ptr %4, i64 1, !dbg !1869
  %6 = load ptr, ptr %5, align 8, !dbg !1869, !tbaa !994
  %7 = tail call fastcc i32 @binop(ptr noundef %6), !dbg !1871, !range !1872
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1868, metadata !DIExpression()), !dbg !1873
  %8 = icmp sgt i32 %7, -1, !dbg !1874
  br i1 %8, label %9, label %11, !dbg !1876

9:                                                ; preds = %0
  %10 = tail call fastcc zeroext i1 @binary_operator(i1 noundef zeroext false, i32 noundef %7), !dbg !1877
  tail call void @llvm.dbg.value(metadata i1 %10, metadata !1867, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1873
  br label %87, !dbg !1878

11:                                               ; preds = %0
  %12 = load ptr, ptr %4, align 8, !dbg !1879, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %12, metadata !1106, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1112, metadata !DIExpression()), !dbg !1881
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(2) @.str.90) #41, !dbg !1883
  %14 = icmp eq i32 %13, 0, !dbg !1884
  br i1 %14, label %15, label %48, !dbg !1885

15:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1886
  %16 = add nsw i32 %2, 1, !dbg !1889
  store i32 %16, ptr @pos, align 4, !dbg !1889, !tbaa !1095
  %17 = load i32, ptr @argc, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %20, label %19, !dbg !1890

19:                                               ; preds = %15
  tail call fastcc void @beyond(), !dbg !1891
  unreachable, !dbg !1891

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %6, metadata !1106, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata ptr @.str.90, metadata !1112, metadata !DIExpression()), !dbg !1892
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.90) #41, !dbg !1895
  %22 = icmp eq i32 %21, 0, !dbg !1896
  br i1 %22, label %23, label %31, !dbg !1897

23:                                               ; preds = %20
  %24 = sext i32 %16 to i64, !dbg !1898
  %25 = getelementptr ptr, ptr %1, i64 %24, !dbg !1898
  %26 = add nsw i32 %2, 3, !dbg !1899
  store i32 %26, ptr @pos, align 4, !dbg !1899, !tbaa !1095
  %27 = getelementptr ptr, ptr %25, i64 1, !dbg !1901
  %28 = load ptr, ptr %27, align 8, !dbg !1901, !tbaa !994
  %29 = load i8, ptr %28, align 1, !dbg !1901, !tbaa !1104
  %30 = icmp eq i8 %29, 0, !dbg !1902
  call void @llvm.dbg.value(metadata i1 %30, metadata !1358, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1903
  br label %45, !dbg !1904

31:                                               ; preds = %20
  %32 = load i8, ptr %6, align 1, !dbg !1905, !tbaa !1104
  %33 = icmp eq i8 %32, 45, !dbg !1906
  br i1 %33, label %34, label %44, !dbg !1907

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !1908
  %36 = load i8, ptr %35, align 1, !dbg !1908, !tbaa !1104
  %37 = icmp eq i8 %36, 0, !dbg !1909
  br i1 %37, label %44, label %38, !dbg !1910

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %6, i64 2, !dbg !1911
  %40 = load i8, ptr %39, align 1, !dbg !1911, !tbaa !1104
  %41 = icmp eq i8 %40, 0, !dbg !1912
  br i1 %41, label %42, label %44, !dbg !1913

42:                                               ; preds = %38
  %43 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1914
  call void @llvm.dbg.value(metadata i1 %43, metadata !1358, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1903
  br label %45

44:                                               ; preds = %38, %34, %31
  tail call fastcc void @beyond() #44, !dbg !1915
  unreachable, !dbg !1915

45:                                               ; preds = %23, %42
  %46 = phi i1 [ %30, %23 ], [ %43, %42 ]
  call void @llvm.dbg.value(metadata i1 %46, metadata !1358, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1903
  %47 = xor i1 %46, true, !dbg !1916
  tail call void @llvm.dbg.value(metadata i1 %47, metadata !1867, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1873
  br label %87, !dbg !1917

48:                                               ; preds = %11
  call void @llvm.dbg.value(metadata ptr %12, metadata !1106, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata ptr @.str.91, metadata !1112, metadata !DIExpression()), !dbg !1918
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(2) @.str.91) #41, !dbg !1921
  %50 = icmp eq i32 %49, 0, !dbg !1922
  br i1 %50, label %51, label %60, !dbg !1923

51:                                               ; preds = %48
  %52 = getelementptr ptr, ptr %4, i64 2, !dbg !1924
  %53 = load ptr, ptr %52, align 8, !dbg !1924, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %53, metadata !1106, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1112, metadata !DIExpression()), !dbg !1925
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull dereferenceable(2) @.str.92) #41, !dbg !1927
  %55 = icmp eq i32 %54, 0, !dbg !1928
  br i1 %55, label %56, label %60, !dbg !1929

56:                                               ; preds = %51
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1930
  %57 = load i8, ptr %6, align 1, !dbg !1933, !tbaa !1104
  %58 = icmp ne i8 %57, 0, !dbg !1935
  tail call void @llvm.dbg.value(metadata i1 %58, metadata !1867, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1873
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1936
  %59 = add nsw i32 %2, 3, !dbg !1938
  store i32 %59, ptr @pos, align 4, !dbg !1938, !tbaa !1095
  br label %87, !dbg !1939

60:                                               ; preds = %51, %48
  call void @llvm.dbg.value(metadata ptr %6, metadata !1106, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata ptr @.str.98, metadata !1112, metadata !DIExpression()), !dbg !1940
  %61 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(3) @.str.98) #41, !dbg !1943
  %62 = icmp eq i32 %61, 0, !dbg !1944
  br i1 %62, label %72, label %63, !dbg !1945

63:                                               ; preds = %60
  call void @llvm.dbg.value(metadata ptr %6, metadata !1106, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata ptr @.str.99, metadata !1112, metadata !DIExpression()), !dbg !1946
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(3) @.str.99) #41, !dbg !1948
  %65 = icmp eq i32 %64, 0, !dbg !1949
  br i1 %65, label %72, label %66, !dbg !1950

66:                                               ; preds = %63
  call void @llvm.dbg.value(metadata ptr %6, metadata !1106, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata ptr @.str.100, metadata !1112, metadata !DIExpression()), !dbg !1951
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.100) #41, !dbg !1953
  %68 = icmp eq i32 %67, 0, !dbg !1954
  br i1 %68, label %72, label %69, !dbg !1955

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata ptr %6, metadata !1106, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata ptr @.str.101, metadata !1112, metadata !DIExpression()), !dbg !1956
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.101) #41, !dbg !1958
  %71 = icmp eq i32 %70, 0, !dbg !1959
  br i1 %71, label %72, label %78, !dbg !1960

72:                                               ; preds = %69, %66, %63, %60
  %73 = load i32, ptr @argc, align 4, !dbg !1961, !tbaa !1095
  %74 = icmp slt i32 %2, %73, !dbg !1963
  br i1 %74, label %76, label %75, !dbg !1964

75:                                               ; preds = %72
  tail call fastcc void @beyond() #44, !dbg !1965
  unreachable, !dbg !1965

76:                                               ; preds = %72
  %77 = tail call fastcc zeroext i1 @or(), !dbg !1966
  tail call void @llvm.dbg.value(metadata i1 %77, metadata !1867, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1873
  br label %87

78:                                               ; preds = %69
  %79 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.102, i32 noundef 5) #40, !dbg !1967
  %80 = load ptr, ptr @argv, align 8, !dbg !1968, !tbaa !994
  %81 = load i32, ptr @pos, align 4, !dbg !1969, !tbaa !1095
  %82 = sext i32 %81 to i64, !dbg !1968
  %83 = getelementptr ptr, ptr %80, i64 %82, !dbg !1968
  %84 = getelementptr ptr, ptr %83, i64 1, !dbg !1968
  %85 = load ptr, ptr %84, align 8, !dbg !1968, !tbaa !994
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
define internal fastcc zeroext i1 @or() unnamed_addr #10 !dbg !1977 {
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1979, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 1, metadata !1981, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 0, metadata !1987, metadata !DIExpression()), !dbg !1995
  %1 = load i32, ptr @argc, align 4
  %2 = load i32, ptr @pos, align 4, !tbaa !1095
  call void @llvm.dbg.value(metadata i8 poison, metadata !1987, metadata !DIExpression()), !dbg !1995
  %3 = icmp slt i32 %2, %1, !dbg !1998
  br i1 %3, label %4, label %43, !dbg !1999

4:                                                ; preds = %0
  %5 = load ptr, ptr @argv, align 8, !tbaa !994
  br label %6, !dbg !2000

6:                                                ; preds = %4, %194
  %7 = phi ptr [ %177, %194 ], [ %5, %4 ]
  %8 = phi i32 [ %195, %194 ], [ %2, %4 ]
  %9 = phi i32 [ %174, %194 ], [ %1, %4 ]
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
  %20 = load ptr, ptr %19, align 8, !dbg !2001, !tbaa !994
  %21 = load i8, ptr %20, align 1, !dbg !2001, !tbaa !1104
  %22 = icmp eq i8 %21, 33, !dbg !2002
  br i1 %22, label %23, label %44, !dbg !2003

23:                                               ; preds = %11, %36
  %24 = phi ptr [ %40, %36 ], [ %20, %11 ]
  %25 = phi i1 [ %37, %36 ], [ false, %11 ]
  %26 = phi i64 [ %32, %36 ], [ %16, %11 ]
  %27 = phi i32 [ %38, %36 ], [ %18, %11 ]
  %28 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2004
  %29 = load i8, ptr %28, align 1, !dbg !2004, !tbaa !1104
  %30 = icmp eq i8 %29, 0, !dbg !2005
  br i1 %30, label %31, label %44, !dbg !2006

31:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2007
  %32 = add nsw i64 %26, 1, !dbg !2010
  %33 = trunc i64 %32 to i32, !dbg !2010
  store i32 %33, ptr @pos, align 4, !dbg !2010, !tbaa !1095
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
  %40 = load ptr, ptr %39, align 8, !dbg !2001, !tbaa !994
  %41 = load i8, ptr %40, align 1, !dbg !2001, !tbaa !1104
  %42 = icmp eq i8 %41, 33, !dbg !2002
  br i1 %42, label %23, label %44, !dbg !2003, !llvm.loop !2014

43:                                               ; preds = %194, %183, %0
  tail call fastcc void @beyond() #44, !dbg !2016
  unreachable, !dbg !2016

44:                                               ; preds = %36, %23, %11
  %45 = phi i32 [ %18, %11 ], [ %38, %36 ], [ %27, %23 ]
  %46 = phi i64 [ %16, %11 ], [ %32, %36 ], [ %26, %23 ]
  %47 = phi i1 [ false, %11 ], [ %37, %36 ], [ %25, %23 ]
  %48 = trunc i64 %46 to i32
  %49 = shl i64 %46, 32, !dbg !2018
  %50 = ashr exact i64 %49, 32, !dbg !2018
  %51 = getelementptr inbounds ptr, ptr %12, i64 %50, !dbg !2018
  %52 = load ptr, ptr %51, align 8, !dbg !2018, !tbaa !994
  %53 = load i8, ptr %52, align 1, !dbg !2018, !tbaa !1104
  %54 = icmp eq i8 %53, 40, !dbg !2019
  br i1 %54, label %55, label %132, !dbg !2020

55:                                               ; preds = %44
  %56 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !2021
  %57 = load i8, ptr %56, align 1, !dbg !2021, !tbaa !1104
  %58 = icmp eq i8 %57, 0, !dbg !2022
  br i1 %58, label %59, label %132, !dbg !2023

59:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i1 true, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2024
  %60 = add nsw i32 %48, 1, !dbg !2026
  store i32 %60, ptr @pos, align 4, !dbg !2026, !tbaa !1095
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
  %69 = load ptr, ptr %68, align 8, !dbg !2035, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %69, metadata !1106, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1112, metadata !DIExpression()), !dbg !2036
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
  %79 = load ptr, ptr %78, align 8, !dbg !2035, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %79, metadata !1106, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1112, metadata !DIExpression()), !dbg !2036
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
  %88 = load ptr, ptr %87, align 8, !dbg !2035, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %88, metadata !1106, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1112, metadata !DIExpression()), !dbg !2036
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
  %97 = load ptr, ptr %96, align 8, !dbg !2035, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %97, metadata !1106, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata ptr @.str.92, metadata !1112, metadata !DIExpression()), !dbg !2036
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %97, ptr noundef nonnull dereferenceable(2) @.str.92) #41, !dbg !2038
  %99 = icmp eq i32 %98, 0, !dbg !2039
  %100 = sub nsw i32 %14, %60
  %101 = select i1 %99, i32 4, i32 %100, !dbg !2034
  br label %102, !dbg !2034

102:                                              ; preds = %94, %73, %65, %76, %82, %85, %91, %62
  %103 = phi i32 [ 1, %62 ], [ 1, %65 ], [ 2, %73 ], [ 2, %76 ], [ 3, %82 ], [ 3, %85 ], [ 4, %91 ], [ %101, %94 ], !dbg !2043
  call void @llvm.dbg.value(metadata i32 %103, metadata !1992, metadata !DIExpression()), !dbg !2028
  %104 = tail call fastcc zeroext i1 @posixtest(i32 noundef %103), !dbg !2044
  call void @llvm.dbg.value(metadata i1 %104, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1995
  %105 = load ptr, ptr @argv, align 8, !dbg !2045, !tbaa !994
  %106 = load i32, ptr @pos, align 4, !dbg !2047, !tbaa !1095
  %107 = sext i32 %106 to i64, !dbg !2045
  %108 = getelementptr inbounds ptr, ptr %105, i64 %107, !dbg !2045
  %109 = load ptr, ptr %108, align 8, !dbg !2045, !tbaa !994
  %110 = icmp eq ptr %109, null, !dbg !2045
  br i1 %110, label %111, label %114, !dbg !2048

111:                                              ; preds = %102
  %112 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.119, i32 noundef 5) #40, !dbg !2049
  %113 = tail call ptr @quote(ptr noundef nonnull @.str.92) #40, !dbg !2050
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %112, ptr noundef %113) #44, !dbg !2051
  unreachable, !dbg !2051

114:                                              ; preds = %102
  %115 = load i8, ptr %109, align 1, !dbg !2052, !tbaa !1104
  %116 = icmp eq i8 %115, 41, !dbg !2054
  br i1 %116, label %117, label %121, !dbg !2055

117:                                              ; preds = %114
  %118 = getelementptr inbounds i8, ptr %109, i64 1, !dbg !2056
  %119 = load i8, ptr %118, align 1, !dbg !2056, !tbaa !1104
  %120 = icmp eq i8 %119, 0, !dbg !2056
  br i1 %120, label %130, label %121, !dbg !2057

121:                                              ; preds = %117, %114
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.120, i32 noundef 5) #40, !dbg !2058
  %123 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.92) #40, !dbg !2059
  %124 = load ptr, ptr @argv, align 8, !dbg !2060, !tbaa !994
  %125 = load i32, ptr @pos, align 4, !dbg !2061, !tbaa !1095
  %126 = sext i32 %125 to i64, !dbg !2060
  %127 = getelementptr inbounds ptr, ptr %124, i64 %126, !dbg !2060
  %128 = load ptr, ptr %127, align 8, !dbg !2060, !tbaa !994
  %129 = tail call ptr @quote_n(i32 noundef 1, ptr noundef %128) #40, !dbg !2062
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %122, ptr noundef %123, ptr noundef %129) #44, !dbg !2063
  unreachable, !dbg !2063

130:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i1 false, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2064
  %131 = add nsw i32 %106, 1, !dbg !2066
  store i32 %131, ptr @pos, align 4, !dbg !2066, !tbaa !1095
  br label %169, !dbg !2067

132:                                              ; preds = %55, %44
  %133 = sub nsw i32 %14, %48, !dbg !2068
  %134 = icmp sgt i32 %133, 3, !dbg !2070
  br i1 %134, label %135, label %145, !dbg !2071

135:                                              ; preds = %132
  call void @llvm.dbg.value(metadata ptr %52, metadata !1106, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata ptr @.str.115, metadata !1112, metadata !DIExpression()), !dbg !2072
  %136 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(3) @.str.115) #41, !dbg !2074
  %137 = icmp eq i32 %136, 0, !dbg !2075
  br i1 %137, label %138, label %147, !dbg !2076

138:                                              ; preds = %135
  %139 = getelementptr ptr, ptr %51, i64 2, !dbg !2077
  %140 = load ptr, ptr %139, align 8, !dbg !2077, !tbaa !994
  %141 = tail call fastcc i32 @binop(ptr noundef %140), !dbg !2078, !range !1872
  call void @llvm.dbg.value(metadata i32 %141, metadata !1991, metadata !DIExpression()), !dbg !1995
  %142 = icmp sgt i32 %141, -1, !dbg !2079
  br i1 %142, label %143, label %147, !dbg !2080

143:                                              ; preds = %138
  %144 = tail call fastcc zeroext i1 @binary_operator(i1 noundef zeroext true, i32 noundef %141), !dbg !2081
  call void @llvm.dbg.value(metadata i1 %144, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1995
  br label %169, !dbg !2082

145:                                              ; preds = %132
  %146 = icmp eq i32 %133, 3, !dbg !2083
  br i1 %146, label %147, label %154, !dbg !2085

147:                                              ; preds = %135, %138, %145
  %148 = getelementptr ptr, ptr %51, i64 1, !dbg !2086
  %149 = load ptr, ptr %148, align 8, !dbg !2086, !tbaa !994
  %150 = tail call fastcc i32 @binop(ptr noundef %149), !dbg !2087, !range !1872
  call void @llvm.dbg.value(metadata i32 %150, metadata !1991, metadata !DIExpression()), !dbg !1995
  %151 = icmp sgt i32 %150, -1, !dbg !2088
  br i1 %151, label %152, label %154, !dbg !2089

152:                                              ; preds = %147
  %153 = tail call fastcc zeroext i1 @binary_operator(i1 noundef zeroext false, i32 noundef %150), !dbg !2090
  call void @llvm.dbg.value(metadata i1 %153, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1995
  br label %169, !dbg !2091

154:                                              ; preds = %147, %145
  %155 = icmp eq i8 %53, 45, !dbg !2092
  br i1 %155, label %156, label %166, !dbg !2094

156:                                              ; preds = %154
  %157 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !2095
  %158 = load i8, ptr %157, align 1, !dbg !2095, !tbaa !1104
  %159 = icmp eq i8 %158, 0, !dbg !2095
  br i1 %159, label %166, label %160, !dbg !2096

160:                                              ; preds = %156
  %161 = getelementptr inbounds i8, ptr %52, i64 2, !dbg !2097
  %162 = load i8, ptr %161, align 1, !dbg !2097, !tbaa !1104
  %163 = icmp eq i8 %162, 0, !dbg !2098
  br i1 %163, label %164, label %166, !dbg !2099

164:                                              ; preds = %160
  %165 = tail call fastcc zeroext i1 @unary_operator(), !dbg !2100
  call void @llvm.dbg.value(metadata i1 %165, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1995
  br label %169, !dbg !2101

166:                                              ; preds = %160, %156, %154
  %167 = icmp ne i8 %53, 0, !dbg !2102
  call void @llvm.dbg.value(metadata i1 %167, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1995
  call void @llvm.dbg.value(metadata i1 false, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2104
  %168 = add nsw i32 %48, 1, !dbg !2106
  store i32 %168, ptr @pos, align 4, !dbg !2106, !tbaa !1095
  br label %169

169:                                              ; preds = %130, %143, %152, %164, %166
  %170 = phi i1 [ %104, %130 ], [ %144, %143 ], [ %153, %152 ], [ %165, %164 ], [ %167, %166 ]
  call void @llvm.dbg.value(metadata i1 %170, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1995
  %171 = xor i1 %47, %170, !dbg !2107
  %172 = and i1 %15, %171, !dbg !2108
  call void @llvm.dbg.value(metadata i1 %172, metadata !1981, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1984
  %173 = load i32, ptr @pos, align 4, !dbg !2109, !tbaa !1095
  %174 = load i32, ptr @argc, align 4, !dbg !2111
  %175 = icmp slt i32 %173, %174, !dbg !2112
  br i1 %175, label %176, label %186, !dbg !2113

176:                                              ; preds = %169
  %177 = load ptr, ptr @argv, align 8, !dbg !2114, !tbaa !994
  %178 = sext i32 %173 to i64, !dbg !2114
  %179 = getelementptr inbounds ptr, ptr %177, i64 %178, !dbg !2114
  %180 = load ptr, ptr %179, align 8, !dbg !2114, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %180, metadata !1106, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata ptr @.str.98, metadata !1112, metadata !DIExpression()), !dbg !2115
  %181 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %180, ptr noundef nonnull dereferenceable(3) @.str.98) #41, !dbg !2117
  %182 = icmp eq i32 %181, 0, !dbg !2118
  br i1 %182, label %183, label %188, !dbg !2119

183:                                              ; preds = %176
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2120
  %184 = add nsw i32 %173, 1, !dbg !2122
  store i32 %184, ptr @pos, align 4, !dbg !2122, !tbaa !1095
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 poison, metadata !1987, metadata !DIExpression()), !dbg !1995
  %185 = icmp slt i32 %184, %174, !dbg !1998
  br i1 %185, label %11, label %43, !dbg !1999, !llvm.loop !2123

186:                                              ; preds = %169
  %187 = or i1 %10, %172, !dbg !2126
  tail call void @llvm.dbg.value(metadata i1 %187, metadata !1979, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1980
  br label %192

188:                                              ; preds = %176
  %189 = or i1 %10, %172, !dbg !2126
  tail call void @llvm.dbg.value(metadata i1 %189, metadata !1979, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1980
  call void @llvm.dbg.value(metadata ptr %180, metadata !1106, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata ptr @.str.99, metadata !1112, metadata !DIExpression()), !dbg !2127
  %190 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %180, ptr noundef nonnull dereferenceable(3) @.str.99) #41, !dbg !2130
  %191 = icmp eq i32 %190, 0, !dbg !2131
  br i1 %191, label %194, label %192, !dbg !2132

192:                                              ; preds = %188, %186
  %193 = phi i1 [ %187, %186 ], [ %189, %188 ]
  ret i1 %193, !dbg !2133

194:                                              ; preds = %188
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2134
  %195 = add nsw i32 %173, 1, !dbg !2136
  store i32 %195, ptr @pos, align 4, !dbg !2136, !tbaa !1095
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1979, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 poison, metadata !1981, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 poison, metadata !1987, metadata !DIExpression()), !dbg !1995
  %196 = icmp slt i32 %195, %174, !dbg !1998
  br i1 %196, label %6, label %43, !dbg !1999, !llvm.loop !2137
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i32 @binop(ptr nocapture noundef readonly %0) unnamed_addr #11 !dbg !2139 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2141, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata ptr @.str.103, metadata !1112, metadata !DIExpression()), !dbg !2143
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.103) #41, !dbg !2145
  %3 = icmp eq i32 %2, 0, !dbg !2146
  br i1 %3, label %44, label %4, !dbg !2147

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata ptr @.str.104, metadata !1112, metadata !DIExpression()), !dbg !2148
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.104) #41, !dbg !2150
  %6 = icmp eq i32 %5, 0, !dbg !2151
  br i1 %6, label %44, label %7, !dbg !2152

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata ptr @.str.105, metadata !1112, metadata !DIExpression()), !dbg !2153
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.105) #41, !dbg !2155
  %9 = icmp eq i32 %8, 0, !dbg !2156
  br i1 %9, label %44, label %10, !dbg !2157

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata ptr @.str.100, metadata !1112, metadata !DIExpression()), !dbg !2158
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.100) #41, !dbg !2160
  %12 = icmp eq i32 %11, 0, !dbg !2161
  br i1 %12, label %44, label %13, !dbg !2162

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata ptr @.str.101, metadata !1112, metadata !DIExpression()), !dbg !2163
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.101) #41, !dbg !2165
  %15 = icmp eq i32 %14, 0, !dbg !2166
  br i1 %15, label %44, label %16, !dbg !2167

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata ptr @.str.106, metadata !1112, metadata !DIExpression()), !dbg !2168
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.106) #41, !dbg !2170
  %18 = icmp eq i32 %17, 0, !dbg !2171
  br i1 %18, label %44, label %19, !dbg !2172

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata ptr @.str.107, metadata !1112, metadata !DIExpression()), !dbg !2173
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.107) #41, !dbg !2175
  %21 = icmp eq i32 %20, 0, !dbg !2176
  br i1 %21, label %44, label %22, !dbg !2177

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata ptr @.str.108, metadata !1112, metadata !DIExpression()), !dbg !2178
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.108) #41, !dbg !2180
  %24 = icmp eq i32 %23, 0, !dbg !2181
  br i1 %24, label %44, label %25, !dbg !2182

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata ptr @.str.109, metadata !1112, metadata !DIExpression()), !dbg !2183
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.109) #41, !dbg !2185
  %27 = icmp eq i32 %26, 0, !dbg !2186
  br i1 %27, label %44, label %28, !dbg !2187

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata ptr @.str.110, metadata !1112, metadata !DIExpression()), !dbg !2188
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.110) #41, !dbg !2190
  %30 = icmp eq i32 %29, 0, !dbg !2191
  br i1 %30, label %44, label %31, !dbg !2192

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata ptr @.str.111, metadata !1112, metadata !DIExpression()), !dbg !2193
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.111) #41, !dbg !2195
  %33 = icmp eq i32 %32, 0, !dbg !2196
  br i1 %33, label %44, label %34, !dbg !2197

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata ptr @.str.112, metadata !1112, metadata !DIExpression()), !dbg !2198
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.112) #41, !dbg !2200
  %36 = icmp eq i32 %35, 0, !dbg !2201
  br i1 %36, label %44, label %37, !dbg !2202

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata ptr @.str.113, metadata !1112, metadata !DIExpression()), !dbg !2203
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.113) #41, !dbg !2205
  %39 = icmp eq i32 %38, 0, !dbg !2206
  br i1 %39, label %44, label %40, !dbg !2207

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata ptr %0, metadata !1106, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata ptr @.str.114, metadata !1112, metadata !DIExpression()), !dbg !2208
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.114) #41, !dbg !2210
  %42 = icmp eq i32 %41, 0, !dbg !2211
  %43 = select i1 %42, i32 10, i32 -1, !dbg !2212
  br label %44, !dbg !2207

44:                                               ; preds = %4, %10, %16, %22, %28, %34, %37, %40, %31, %25, %19, %13, %7, %1
  %45 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 3, %7 ], [ 1, %10 ], [ 2, %13 ], [ 4, %16 ], [ 9, %19 ], [ 8, %22 ], [ 7, %25 ], [ 6, %28 ], [ 5, %31 ], [ 12, %34 ], [ %43, %40 ], [ 11, %37 ], !dbg !2147
  ret i32 %45, !dbg !2213
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @binary_operator(i1 noundef zeroext %0, i32 noundef %1) unnamed_addr #10 !dbg !2214 {
  %3 = alloca %struct.stat, align 8, !DIAssignID !2237
  %4 = alloca %struct.stat, align 8, !DIAssignID !2238
  %5 = alloca [21 x i8], align 16, !DIAssignID !2239
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2222, metadata !DIExpression(), metadata !2239, metadata ptr %5, metadata !DIExpression()), !dbg !2240
  %6 = alloca [21 x i8], align 16, !DIAssignID !2241
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2225, metadata !DIExpression(), metadata !2241, metadata ptr %6, metadata !DIExpression()), !dbg !2240
  %7 = alloca [2 x %struct.stat], align 16, !DIAssignID !2242
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2231, metadata !DIExpression(), metadata !2242, metadata ptr %7, metadata !DIExpression()), !dbg !2243
  tail call void @llvm.dbg.value(metadata i1 %0, metadata !2218, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2244
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2219, metadata !DIExpression()), !dbg !2244
  %8 = load i32, ptr @pos, align 4, !dbg !2245, !tbaa !1095
  %9 = zext i1 %0 to i32, !dbg !2246
  %10 = add nsw i32 %8, %9, !dbg !2246
  %11 = add nsw i32 %10, 1, !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2220, metadata !DIExpression()), !dbg !2244
  %12 = load i32, ptr @argc, align 4, !dbg !2248
  %13 = add nsw i32 %12, -2, !dbg !2249
  %14 = icmp slt i32 %11, %13, !dbg !2250
  br i1 %14, label %15, label %24, !dbg !2251

15:                                               ; preds = %2
  %16 = load ptr, ptr @argv, align 8, !dbg !2252, !tbaa !994
  %17 = sext i32 %10 to i64, !dbg !2252
  %18 = getelementptr ptr, ptr %16, i64 %17, !dbg !2252
  %19 = getelementptr ptr, ptr %18, i64 2, !dbg !2252
  %20 = load ptr, ptr %19, align 8, !dbg !2252, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %20, metadata !1106, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata ptr @.str.115, metadata !1112, metadata !DIExpression()), !dbg !2253
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(3) @.str.115) #41, !dbg !2255
  %22 = icmp eq i32 %21, 0, !dbg !2256
  tail call void @llvm.dbg.value(metadata i1 %22, metadata !2221, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2244
  %23 = select i1 %22, i32 %11, i32 %10, !dbg !2257
  br label %24, !dbg !2257

24:                                               ; preds = %15, %2
  %25 = phi i32 [ %10, %2 ], [ %23, %15 ], !dbg !2258
  %26 = phi i1 [ false, %2 ], [ %22, %15 ]
  %27 = add nsw i32 %25, 3, !dbg !2258
  store i32 %27, ptr @pos, align 4, !dbg !2258, !tbaa !1095
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
  %29 = load ptr, ptr @argv, align 8, !dbg !2240, !tbaa !994
  %30 = sext i32 %10 to i64, !dbg !2240
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30, !dbg !2240
  %32 = load ptr, ptr %31, align 8, !dbg !2240, !tbaa !994
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
  %40 = load ptr, ptr @argv, align 8, !dbg !2240, !tbaa !994
  %41 = sext i32 %10 to i64, !dbg !2240
  %42 = getelementptr ptr, ptr %40, i64 %41, !dbg !2240
  br i1 %26, label %43, label %48, !dbg !2266

43:                                               ; preds = %38
  %44 = getelementptr ptr, ptr %42, i64 3, !dbg !2267
  %45 = load ptr, ptr %44, align 8, !dbg !2267, !tbaa !994
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #41, !dbg !2268
  %47 = call ptr @umaxtostr(i64 noundef %46, ptr noundef nonnull %6) #40, !dbg !2269
  br label %52, !dbg !2266

48:                                               ; preds = %38
  %49 = getelementptr ptr, ptr %42, i64 2, !dbg !2270
  %50 = load ptr, ptr %49, align 8, !dbg !2270, !tbaa !994
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
  %74 = load ptr, ptr @argv, align 8, !dbg !2294, !tbaa !994
  %75 = sext i32 %11 to i64, !dbg !2294
  %76 = getelementptr inbounds ptr, ptr %74, i64 %75, !dbg !2294
  %77 = load ptr, ptr %76, align 8, !dbg !2294, !tbaa !994
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %73, ptr noundef %77) #44, !dbg !2295
  unreachable, !dbg !2295

78:                                               ; preds = %70
  %79 = load ptr, ptr @argv, align 8, !dbg !2296, !tbaa !994
  %80 = sext i32 %10 to i64, !dbg !2296
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80, !dbg !2296
  %82 = load ptr, ptr %81, align 8, !dbg !2296, !tbaa !994
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2297, metadata !DIExpression(), metadata !2238, metadata ptr %4, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata ptr %82, metadata !2302, metadata !DIExpression()), !dbg !2303
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #40, !dbg !2305
  %83 = call i32 @stat(ptr noundef %82, ptr noundef nonnull %4) #40, !dbg !2306
  %84 = icmp slt i32 %83, 0, !dbg !2307
  %85 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 12, !dbg !2306
  %86 = load i64, ptr %85, align 8, !dbg !2306
  %87 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 12, i32 1, !dbg !2306
  %88 = load i64, ptr %87, align 8, !dbg !2306
  %89 = insertvalue { i64, i64 } poison, i64 %86, 0, !dbg !2306
  %90 = insertvalue { i64, i64 } %89, i64 %88, 1, !dbg !2306
  %91 = select i1 %84, { i64, i64 } { i64 -9223372036854775808, i64 -1 }, { i64, i64 } %90, !dbg !2306
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #40, !dbg !2308
  %92 = extractvalue { i64, i64 } %91, 0, !dbg !2309
  %93 = extractvalue { i64, i64 } %91, 1, !dbg !2309
  %94 = load ptr, ptr @argv, align 8, !dbg !2310, !tbaa !994
  %95 = getelementptr ptr, ptr %94, i64 %80, !dbg !2310
  %96 = getelementptr ptr, ptr %95, i64 2, !dbg !2310
  %97 = load ptr, ptr %96, align 8, !dbg !2310, !tbaa !994
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2297, metadata !DIExpression(), metadata !2237, metadata ptr %3, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata ptr %97, metadata !2302, metadata !DIExpression()), !dbg !2311
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #40, !dbg !2313
  %98 = call i32 @stat(ptr noundef %97, ptr noundef nonnull %3) #40, !dbg !2314
  %99 = icmp slt i32 %98, 0, !dbg !2315
  %100 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 12, !dbg !2314
  %101 = load i64, ptr %100, align 8, !dbg !2314
  %102 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 12, i32 1, !dbg !2314
  %103 = load i64, ptr %102, align 8, !dbg !2314
  %104 = insertvalue { i64, i64 } poison, i64 %101, 0, !dbg !2314
  %105 = insertvalue { i64, i64 } %104, i64 %103, 1, !dbg !2314
  %106 = select i1 %99, { i64, i64 } { i64 -9223372036854775808, i64 -1 }, { i64, i64 } %105, !dbg !2314
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #40, !dbg !2316
  %107 = extractvalue { i64, i64 } %106, 0, !dbg !2317
  %108 = extractvalue { i64, i64 } %106, 1, !dbg !2317
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !1613, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2318
  tail call void @llvm.dbg.value(metadata i64 %93, metadata !1613, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2318
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1619, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2318
  tail call void @llvm.dbg.value(metadata i64 %108, metadata !1619, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2318
  %109 = icmp sgt i64 %92, %107, !dbg !2320
  %110 = zext i1 %109 to i32, !dbg !2320
  %111 = icmp slt i64 %92, %107, !dbg !2320
  %112 = sext i1 %111 to i32, !dbg !2320
  %113 = add nsw i32 %112, %110, !dbg !2320
  %114 = shl nsw i32 %113, 1, !dbg !2321
  %115 = icmp sgt i64 %93, %108, !dbg !2322
  %116 = zext i1 %115 to i32, !dbg !2322
  %117 = icmp slt i64 %93, %108, !dbg !2322
  %118 = sext i1 %117 to i32, !dbg !2322
  %119 = add nsw i32 %118, %116, !dbg !2322
  %120 = add nsw i32 %119, %114, !dbg !2323
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !2229, metadata !DIExpression()), !dbg !2324
  %121 = icmp eq i32 %1, 12, !dbg !2325
  %122 = icmp slt i32 %120, 0, !dbg !2326
  %123 = icmp sgt i32 %120, 0, !dbg !2326
  %124 = select i1 %121, i1 %122, i1 %123, !dbg !2326
  br label %180

125:                                              ; preds = %24
  %126 = or i1 %26, %0, !dbg !2327
  br i1 %126, label %127, label %129, !dbg !2328

127:                                              ; preds = %125
  %128 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.117, i32 noundef 5) #40, !dbg !2329
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %128) #44, !dbg !2330
  unreachable, !dbg !2330

129:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %7) #40, !dbg !2331
  %130 = load ptr, ptr @argv, align 8, !dbg !2332, !tbaa !994
  %131 = sext i32 %10 to i64, !dbg !2332
  %132 = getelementptr inbounds ptr, ptr %130, i64 %131, !dbg !2332
  %133 = load ptr, ptr %132, align 8, !dbg !2332, !tbaa !994
  %134 = call i32 @stat(ptr noundef %133, ptr noundef nonnull %7) #40, !dbg !2333
  %135 = icmp eq i32 %134, 0, !dbg !2334
  br i1 %135, label %136, label %154, !dbg !2335

136:                                              ; preds = %129
  %137 = load ptr, ptr @argv, align 8, !dbg !2336, !tbaa !994
  %138 = getelementptr ptr, ptr %137, i64 %131, !dbg !2336
  %139 = getelementptr ptr, ptr %138, i64 2, !dbg !2336
  %140 = load ptr, ptr %139, align 8, !dbg !2336, !tbaa !994
  %141 = getelementptr inbounds [2 x %struct.stat], ptr %7, i64 0, i64 1, !dbg !2337
  %142 = call i32 @stat(ptr noundef %140, ptr noundef nonnull %141) #40, !dbg !2338
  %143 = icmp eq i32 %142, 0, !dbg !2339
  br i1 %143, label %144, label %154, !dbg !2340

144:                                              ; preds = %136
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2341, metadata !DIExpression()), !dbg !2348
  tail call void @llvm.dbg.value(metadata ptr %141, metadata !2347, metadata !DIExpression()), !dbg !2348
  %145 = load i64, ptr %7, align 16, !dbg !2350, !tbaa !2351
  %146 = load i64, ptr %141, align 16, !dbg !2350, !tbaa !2351
  %147 = icmp eq i64 %145, %146, !dbg !2350
  %148 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 1, !dbg !2350
  %149 = load i64, ptr %148, align 8, !dbg !2350, !tbaa !2352
  %150 = getelementptr inbounds [2 x %struct.stat], ptr %7, i64 0, i64 1, i32 1, !dbg !2350
  %151 = load i64, ptr %150, align 8, !dbg !2350, !tbaa !2352
  %152 = icmp eq i64 %149, %151, !dbg !2350
  %153 = and i1 %147, %152, !dbg !2350
  br label %154

154:                                              ; preds = %144, %136, %129
  %155 = phi i1 [ false, %136 ], [ false, %129 ], [ %153, %144 ], !dbg !2243
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %7) #40, !dbg !2353
  br label %180

156:                                              ; preds = %24, %24
  %157 = load ptr, ptr @argv, align 8, !dbg !2354, !tbaa !994
  %158 = sext i32 %10 to i64, !dbg !2354
  %159 = getelementptr inbounds ptr, ptr %157, i64 %158, !dbg !2354
  %160 = load ptr, ptr %159, align 8, !dbg !2354, !tbaa !994
  %161 = getelementptr ptr, ptr %159, i64 2, !dbg !2355
  %162 = load ptr, ptr %161, align 8, !dbg !2355, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %160, metadata !1106, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata ptr %162, metadata !1112, metadata !DIExpression()), !dbg !2356
  %163 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %160, ptr noundef nonnull dereferenceable(1) %162) #41, !dbg !2358
  %164 = icmp eq i32 %163, 0, !dbg !2359
  %165 = icmp ne i32 %1, 0, !dbg !2360
  %166 = xor i1 %165, %164, !dbg !2360
  br label %180, !dbg !2361

167:                                              ; preds = %24, %24
  %168 = load ptr, ptr @argv, align 8, !dbg !2362, !tbaa !994
  %169 = sext i32 %10 to i64, !dbg !2362
  %170 = getelementptr inbounds ptr, ptr %168, i64 %169, !dbg !2362
  %171 = load ptr, ptr %170, align 8, !dbg !2362, !tbaa !994
  %172 = getelementptr ptr, ptr %170, i64 2, !dbg !2363
  %173 = load ptr, ptr %172, align 8, !dbg !2363, !tbaa !994
  %174 = tail call i32 @strcoll(ptr noundef %171, ptr noundef %173) #41, !dbg !2364
  tail call void @llvm.dbg.value(metadata i32 %174, metadata !2235, metadata !DIExpression()), !dbg !2365
  %175 = icmp eq i32 %1, 2, !dbg !2366
  %176 = icmp slt i32 %174, 0, !dbg !2367
  %177 = icmp sgt i32 %174, 0, !dbg !2367
  %178 = select i1 %175, i1 %176, i1 %177, !dbg !2367
  br label %180

179:                                              ; preds = %24
  tail call void @__assert_fail(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.94, i32 noundef 362, ptr noundef nonnull @__PRETTY_FUNCTION__.binary_operator) #42, !dbg !2368
  unreachable, !dbg !2368

180:                                              ; preds = %167, %156, %154, %78, %68
  %181 = phi i1 [ %178, %167 ], [ %166, %156 ], [ %155, %154 ], [ %124, %78 ], [ %69, %68 ], !dbg !2371
  ret i1 %181, !dbg !2372
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2373 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_int(ptr noundef %0) unnamed_addr #10 !dbg !2376 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2380, metadata !DIExpression()), !dbg !2383
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2381, metadata !DIExpression()), !dbg !2383
  %2 = tail call ptr @__ctype_b_loc() #43, !dbg !2383
  %3 = load ptr, ptr %2, align 8, !tbaa !994
  br label %4, !dbg !2384

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %0, %1 ], [ %12, %4 ], !dbg !2386
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2381, metadata !DIExpression()), !dbg !2383
  %6 = load i8, ptr %5, align 1, !dbg !2387, !tbaa !1104
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i16, ptr %3, i64 %7, !dbg !2387
  %9 = load i16, ptr %8, align 2, !dbg !2387, !tbaa !1136
  %10 = and i16 %9, 8192, !dbg !2387
  %11 = icmp eq i16 %10, 0, !dbg !2389
  %12 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !2390
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2381, metadata !DIExpression()), !dbg !2383
  br i1 %11, label %13, label %4, !dbg !2389, !llvm.loop !2391

13:                                               ; preds = %4
  %14 = icmp eq i8 %6, 43, !dbg !2393
  %15 = icmp eq i8 %6, 45, !dbg !2395
  %16 = zext i1 %15 to i64, !dbg !2395
  %17 = getelementptr inbounds i8, ptr %5, i64 %16, !dbg !2395
  %18 = select i1 %14, ptr %12, ptr %17, !dbg !2395
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !2382, metadata !DIExpression()), !dbg !2383
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !2381, metadata !DIExpression()), !dbg !2383
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !2381, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2383
  %19 = load i8, ptr %18, align 1, !dbg !2396, !tbaa !1104
  %20 = sext i8 %19 to i32, !dbg !2396
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2398, metadata !DIExpression()), !dbg !2402
  %21 = add nsw i32 %20, -48, !dbg !2404
  %22 = icmp ult i32 %21, 10, !dbg !2404
  br i1 %22, label %23, label %50, !dbg !2405

23:                                               ; preds = %13, %23
  %24 = phi ptr [ %25, %23 ], [ %18, %13 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2406
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !2381, metadata !DIExpression()), !dbg !2383
  %26 = load i8, ptr %25, align 1, !dbg !2407, !tbaa !1104
  %27 = sext i8 %26 to i32, !dbg !2407
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !2398, metadata !DIExpression()), !dbg !2409
  %28 = add nsw i32 %27, -48, !dbg !2411
  %29 = icmp ult i32 %28, 10, !dbg !2411
  br i1 %29, label %23, label %30, !dbg !2412, !llvm.loop !2413

30:                                               ; preds = %23
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !2381, metadata !DIExpression()), !dbg !2383
  %31 = zext i8 %26 to i64
  %32 = getelementptr inbounds i16, ptr %3, i64 %31, !dbg !2415
  %33 = load i16, ptr %32, align 2, !dbg !2415, !tbaa !1136
  %34 = and i16 %33, 8192, !dbg !2415
  %35 = icmp eq i16 %34, 0, !dbg !2416
  br i1 %35, label %45, label %36, !dbg !2416

36:                                               ; preds = %30, %36
  %37 = phi ptr [ %38, %36 ], [ %25, %30 ]
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !2381, metadata !DIExpression()), !dbg !2383
  %38 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !2417
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2381, metadata !DIExpression()), !dbg !2383
  %39 = load i8, ptr %38, align 1, !dbg !2415, !tbaa !1104
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, ptr %3, i64 %40, !dbg !2415
  %42 = load i16, ptr %41, align 2, !dbg !2415, !tbaa !1136
  %43 = and i16 %42, 8192, !dbg !2415
  %44 = icmp eq i16 %43, 0, !dbg !2416
  br i1 %44, label %45, label %36, !dbg !2416, !llvm.loop !2418

45:                                               ; preds = %36, %30
  %46 = phi i8 [ %26, %30 ], [ %39, %36 ], !dbg !2415
  %47 = icmp eq i8 %46, 0, !dbg !2419
  br i1 %47, label %48, label %50, !dbg !2421

48:                                               ; preds = %45
  %49 = select i1 %14, ptr %12, ptr %5, !dbg !2395
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !2382, metadata !DIExpression()), !dbg !2383
  ret ptr %49, !dbg !2422

50:                                               ; preds = %45, %13
  %51 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #40, !dbg !2423
  %52 = tail call ptr @quote(ptr noundef %0) #40, !dbg !2424
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %51, ptr noundef %52) #44, !dbg !2425
  unreachable, !dbg !2425
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nofree nounwind
declare !dbg !2426 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !2432 i32 @strcoll(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !2433 i32 @euidaccess(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !2437 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2442 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2445 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr nocapture noundef readonly, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2448 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !2452 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !2455 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2457, metadata !DIExpression()), !dbg !2458
  store ptr %0, ptr @file_name, align 8, !dbg !2459, !tbaa !994
  ret void, !dbg !2460
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #16 !dbg !2461 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2463, metadata !DIExpression()), !dbg !2464
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2465, !tbaa !2466
  ret void, !dbg !2468
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2469 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2474, !tbaa !994
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !2475
  %3 = icmp eq i32 %2, 0, !dbg !2476
  br i1 %3, label %22, label %4, !dbg !2477

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2478, !tbaa !2466, !range !2479, !noundef !1065
  %6 = icmp eq i8 %5, 0, !dbg !2478
  br i1 %6, label %11, label %7, !dbg !2480

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !2481
  %9 = load i32, ptr %8, align 4, !dbg !2481, !tbaa !1095
  %10 = icmp eq i32 %9, 32, !dbg !2482
  br i1 %10, label %22, label %11, !dbg !2483

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.1.67, i32 noundef 5) #40, !dbg !2484
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2471, metadata !DIExpression()), !dbg !2485
  %13 = load ptr, ptr @file_name, align 8, !dbg !2486, !tbaa !994
  %14 = icmp eq ptr %13, null, !dbg !2486
  %15 = tail call ptr @__errno_location() #43, !dbg !2488
  %16 = load i32, ptr %15, align 4, !dbg !2488, !tbaa !1095
  br i1 %14, label %19, label %17, !dbg !2489

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !2490
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.68, ptr noundef %18, ptr noundef %12) #40, !dbg !2490
  br label %20, !dbg !2490

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.69, ptr noundef %12) #40, !dbg !2491
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2492, !tbaa !1095
  tail call void @_exit(i32 noundef %21) #42, !dbg !2493
  unreachable, !dbg !2493

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2494, !tbaa !994
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !2496
  %25 = icmp eq i32 %24, 0, !dbg !2497
  br i1 %25, label %28, label %26, !dbg !2498

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2499, !tbaa !1095
  tail call void @_exit(i32 noundef %27) #42, !dbg !2500
  unreachable, !dbg !2500

28:                                               ; preds = %22
  ret void, !dbg !2501
}

; Function Attrs: noreturn
declare !dbg !2502 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #18 !dbg !2503 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2507, metadata !DIExpression()), !dbg !2511
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2508, metadata !DIExpression()), !dbg !2511
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2509, metadata !DIExpression()), !dbg !2511
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2510, metadata !DIExpression()), !dbg !2511
  tail call fastcc void @flush_stdout(), !dbg !2512
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2513, !tbaa !994
  %6 = icmp eq ptr %5, null, !dbg !2513
  br i1 %6, label %8, label %7, !dbg !2515

7:                                                ; preds = %4
  tail call void %5() #40, !dbg !2516
  br label %12, !dbg !2516

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2517, !tbaa !994
  %10 = tail call ptr @getprogname() #41, !dbg !2517
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef %10) #40, !dbg !2517
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2519
  ret void, !dbg !2520
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2521 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2523, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i32 1, metadata !2525, metadata !DIExpression()), !dbg !2528
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !2531
  %2 = icmp slt i32 %1, 0, !dbg !2532
  br i1 %2, label %6, label %3, !dbg !2533

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2534, !tbaa !994
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !2534
  br label %6, !dbg !2534

6:                                                ; preds = %3, %0
  ret void, !dbg !2535
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2536 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !2542
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2538, metadata !DIExpression()), !dbg !2543
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2539, metadata !DIExpression()), !dbg !2543
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2540, metadata !DIExpression()), !dbg !2543
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2541, metadata !DIExpression()), !dbg !2543
  %6 = load ptr, ptr @stderr, align 8, !dbg !2544, !tbaa !994
  call void @llvm.dbg.value(metadata ptr %6, metadata !2545, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata ptr %2, metadata !2585, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata ptr %3, metadata !2586, metadata !DIExpression()), !dbg !2587
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #40, !dbg !2589
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2590, !tbaa !1095
  %9 = add i32 %8, 1, !dbg !2590
  store i32 %9, ptr @error_message_count, align 4, !dbg !2590, !tbaa !1095
  %10 = icmp eq i32 %1, 0, !dbg !2591
  br i1 %10, label %20, label %11, !dbg !2593

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2594, metadata !DIExpression(), metadata !2542, metadata ptr %5, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i32 %1, metadata !2597, metadata !DIExpression()), !dbg !2602
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !2604
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !2605
  call void @llvm.dbg.value(metadata ptr %12, metadata !2598, metadata !DIExpression()), !dbg !2602
  %13 = icmp eq ptr %12, null, !dbg !2606
  br i1 %13, label %14, label %16, !dbg !2608

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.73, ptr noundef nonnull @.str.5.74, i32 noundef 5) #40, !dbg !2609
  call void @llvm.dbg.value(metadata ptr %15, metadata !2598, metadata !DIExpression()), !dbg !2602
  br label %16, !dbg !2610

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2602
  call void @llvm.dbg.value(metadata ptr %17, metadata !2598, metadata !DIExpression()), !dbg !2602
  %18 = load ptr, ptr @stderr, align 8, !dbg !2611, !tbaa !994
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.75, ptr noundef %17) #40, !dbg !2611
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !2612
  br label %20, !dbg !2613

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2614, !tbaa !994
  call void @llvm.dbg.value(metadata i32 10, metadata !2615, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata ptr %21, metadata !2621, metadata !DIExpression()), !dbg !2622
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2624
  %23 = load ptr, ptr %22, align 8, !dbg !2624, !tbaa !2625
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2624
  %25 = load ptr, ptr %24, align 8, !dbg !2624, !tbaa !2627
  %26 = icmp ult ptr %23, %25, !dbg !2624
  br i1 %26, label %29, label %27, !dbg !2624, !prof !2628

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #40, !dbg !2624
  br label %31, !dbg !2624

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2624
  store ptr %30, ptr %22, align 8, !dbg !2624, !tbaa !2625
  store i8 10, ptr %23, align 1, !dbg !2624, !tbaa !1104
  br label %31, !dbg !2624

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2629, !tbaa !994
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #40, !dbg !2629
  %34 = icmp eq i32 %0, 0, !dbg !2630
  br i1 %34, label %36, label %35, !dbg !2632

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #42, !dbg !2633
  unreachable, !dbg !2633

36:                                               ; preds = %31
  ret void, !dbg !2634
}

declare !dbg !2635 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2638 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2641 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2644 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2647 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2651 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2664
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2658, metadata !DIExpression(), metadata !2664, metadata ptr %4, metadata !DIExpression()), !dbg !2665
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2655, metadata !DIExpression()), !dbg !2665
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2656, metadata !DIExpression()), !dbg !2665
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2657, metadata !DIExpression()), !dbg !2665
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #40, !dbg !2666
  call void @llvm.va_start(ptr nonnull %4), !dbg !2667
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #46, !dbg !2668
  call void @llvm.va_end(ptr nonnull %4), !dbg !2669
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #40, !dbg !2670
  ret void, !dbg !2670
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #18 !dbg !605 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !616, metadata !DIExpression()), !dbg !2671
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !617, metadata !DIExpression()), !dbg !2671
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !618, metadata !DIExpression()), !dbg !2671
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !619, metadata !DIExpression()), !dbg !2671
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !620, metadata !DIExpression()), !dbg !2671
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !621, metadata !DIExpression()), !dbg !2671
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2672, !tbaa !1095
  %8 = icmp eq i32 %7, 0, !dbg !2672
  br i1 %8, label %23, label %9, !dbg !2674

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2675, !tbaa !1095
  %11 = icmp eq i32 %10, %3, !dbg !2678
  br i1 %11, label %12, label %22, !dbg !2679

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2680, !tbaa !994
  %14 = icmp eq ptr %13, %2, !dbg !2681
  br i1 %14, label %36, label %15, !dbg !2682

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2683
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2684
  br i1 %18, label %19, label %22, !dbg !2684

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2685
  %21 = icmp eq i32 %20, 0, !dbg !2686
  br i1 %21, label %36, label %22, !dbg !2687

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2688, !tbaa !994
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2689, !tbaa !1095
  br label %23, !dbg !2690

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2691
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2692, !tbaa !994
  %25 = icmp eq ptr %24, null, !dbg !2692
  br i1 %25, label %27, label %26, !dbg !2694

26:                                               ; preds = %23
  tail call void %24() #40, !dbg !2695
  br label %31, !dbg !2695

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2696, !tbaa !994
  %29 = tail call ptr @getprogname() #41, !dbg !2696
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.78, ptr noundef %29) #40, !dbg !2696
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2698, !tbaa !994
  %33 = icmp eq ptr %2, null, !dbg !2698
  %34 = select i1 %33, ptr @.str.3.79, ptr @.str.2.80, !dbg !2698
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #40, !dbg !2698
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2699
  br label %36, !dbg !2700

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2700
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2701 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2711
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2710, metadata !DIExpression(), metadata !2711, metadata ptr %6, metadata !DIExpression()), !dbg !2712
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2705, metadata !DIExpression()), !dbg !2712
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2706, metadata !DIExpression()), !dbg !2712
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2707, metadata !DIExpression()), !dbg !2712
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2708, metadata !DIExpression()), !dbg !2712
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2709, metadata !DIExpression()), !dbg !2712
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #40, !dbg !2713
  call void @llvm.va_start(ptr nonnull %6), !dbg !2714
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #46, !dbg !2715
  call void @llvm.va_end(ptr nonnull %6), !dbg !2716
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #40, !dbg !2717
  ret void, !dbg !2717
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !2718 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2721, !tbaa !994
  ret ptr %1, !dbg !2722
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @umaxtostr(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #20 !dbg !2723 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2728, metadata !DIExpression()), !dbg !2731
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2729, metadata !DIExpression()), !dbg !2731
  %3 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !2732
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2730, metadata !DIExpression()), !dbg !2731
  store i8 0, ptr %3, align 1, !dbg !2733, !tbaa !1104
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi ptr [ %3, %2 ], [ %10, %4 ], !dbg !2731
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2730, metadata !DIExpression()), !dbg !2731
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2728, metadata !DIExpression()), !dbg !2731
  %7 = urem i64 %5, 10, !dbg !2734
  %8 = trunc i64 %7 to i8, !dbg !2737
  %9 = or disjoint i8 %8, 48, !dbg !2737
  %10 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !2738
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !2730, metadata !DIExpression()), !dbg !2731
  store i8 %9, ptr %10, align 1, !dbg !2739, !tbaa !1104
  %11 = udiv i64 %5, 10, !dbg !2740
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2728, metadata !DIExpression()), !dbg !2731
  %12 = icmp ult i64 %5, 10, !dbg !2741
  br i1 %12, label %13, label %4, !dbg !2742, !llvm.loop !2743

13:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !2730, metadata !DIExpression()), !dbg !2731
  ret ptr %10, !dbg !2746
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !2747 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2749, metadata !DIExpression()), !dbg !2752
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2753
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2750, metadata !DIExpression()), !dbg !2752
  %3 = icmp eq ptr %2, null, !dbg !2754
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2754
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2754
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2751, metadata !DIExpression()), !dbg !2752
  %6 = ptrtoint ptr %5 to i64, !dbg !2755
  %7 = ptrtoint ptr %0 to i64, !dbg !2755
  %8 = sub i64 %6, %7, !dbg !2755
  %9 = icmp sgt i64 %8, 6, !dbg !2757
  br i1 %9, label %10, label %19, !dbg !2758

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2759
  call void @llvm.dbg.value(metadata ptr %11, metadata !2760, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata ptr @.str.121, metadata !2765, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 7, metadata !2766, metadata !DIExpression()), !dbg !2767
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.121, i64 7), !dbg !2769
  %13 = icmp eq i32 %12, 0, !dbg !2770
  br i1 %13, label %14, label %19, !dbg !2771

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2749, metadata !DIExpression()), !dbg !2752
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.122, i64 noundef 3) #41, !dbg !2772
  %16 = icmp eq i32 %15, 0, !dbg !2775
  %17 = select i1 %16, i64 3, i64 0, !dbg !2776
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2776
  br label %19, !dbg !2776

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2752
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2751, metadata !DIExpression()), !dbg !2752
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2749, metadata !DIExpression()), !dbg !2752
  store ptr %20, ptr @program_name, align 8, !dbg !2777, !tbaa !994
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2778, !tbaa !994
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2779, !tbaa !994
  ret void, !dbg !2780
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2781 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !656 {
  %3 = alloca i32, align 4, !DIAssignID !2782
  call void @llvm.dbg.assign(metadata i1 undef, metadata !666, metadata !DIExpression(), metadata !2782, metadata ptr %3, metadata !DIExpression()), !dbg !2783
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2784
  call void @llvm.dbg.assign(metadata i1 undef, metadata !671, metadata !DIExpression(), metadata !2784, metadata ptr %4, metadata !DIExpression()), !dbg !2783
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !663, metadata !DIExpression()), !dbg !2783
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !664, metadata !DIExpression()), !dbg !2783
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2785
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !665, metadata !DIExpression()), !dbg !2783
  %6 = icmp eq ptr %5, %0, !dbg !2786
  br i1 %6, label %7, label %14, !dbg !2788

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2789
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2790
  call void @llvm.dbg.value(metadata ptr %4, metadata !2791, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata ptr %4, metadata !2800, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i32 0, metadata !2806, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i64 8, metadata !2807, metadata !DIExpression()), !dbg !2808
  store i64 0, ptr %4, align 8, !dbg !2810
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2811
  %9 = icmp eq i64 %8, 2, !dbg !2813
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2814
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2783
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2815
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2815
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2783
  ret ptr %15, !dbg !2815
}

; Function Attrs: nounwind
declare !dbg !2816 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2822 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2827, metadata !DIExpression()), !dbg !2830
  %2 = tail call ptr @__errno_location() #43, !dbg !2831
  %3 = load i32, ptr %2, align 4, !dbg !2831, !tbaa !1095
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2828, metadata !DIExpression()), !dbg !2830
  %4 = icmp eq ptr %0, null, !dbg !2832
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2832
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #47, !dbg !2833
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2829, metadata !DIExpression()), !dbg !2830
  store i32 %3, ptr %2, align 4, !dbg !2834, !tbaa !1095
  ret ptr %6, !dbg !2835
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !2836 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2842, metadata !DIExpression()), !dbg !2843
  %2 = icmp eq ptr %0, null, !dbg !2844
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2844
  %4 = load i32, ptr %3, align 8, !dbg !2845, !tbaa !2846
  ret i32 %4, !dbg !2848
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2849 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2853, metadata !DIExpression()), !dbg !2855
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2854, metadata !DIExpression()), !dbg !2855
  %3 = icmp eq ptr %0, null, !dbg !2856
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2856
  store i32 %1, ptr %4, align 8, !dbg !2857, !tbaa !2846
  ret void, !dbg !2858
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #25 !dbg !2859 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2863, metadata !DIExpression()), !dbg !2871
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2864, metadata !DIExpression()), !dbg !2871
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2865, metadata !DIExpression()), !dbg !2871
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2866, metadata !DIExpression()), !dbg !2871
  %4 = icmp eq ptr %0, null, !dbg !2872
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2872
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2873
  %7 = lshr i8 %1, 5, !dbg !2874
  %8 = zext nneg i8 %7 to i64, !dbg !2874
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2875
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2867, metadata !DIExpression()), !dbg !2871
  %10 = and i8 %1, 31, !dbg !2876
  %11 = zext nneg i8 %10 to i32, !dbg !2876
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2869, metadata !DIExpression()), !dbg !2871
  %12 = load i32, ptr %9, align 4, !dbg !2877, !tbaa !1095
  %13 = lshr i32 %12, %11, !dbg !2878
  %14 = and i32 %13, 1, !dbg !2879
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2870, metadata !DIExpression()), !dbg !2871
  %15 = xor i32 %13, %2, !dbg !2880
  %16 = and i32 %15, 1, !dbg !2880
  %17 = shl nuw i32 %16, %11, !dbg !2881
  %18 = xor i32 %17, %12, !dbg !2882
  store i32 %18, ptr %9, align 4, !dbg !2882, !tbaa !1095
  ret i32 %14, !dbg !2883
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2884 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2888, metadata !DIExpression()), !dbg !2891
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2889, metadata !DIExpression()), !dbg !2891
  %3 = icmp eq ptr %0, null, !dbg !2892
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2894
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2888, metadata !DIExpression()), !dbg !2891
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2895
  %6 = load i32, ptr %5, align 4, !dbg !2895, !tbaa !2896
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2890, metadata !DIExpression()), !dbg !2891
  store i32 %1, ptr %5, align 4, !dbg !2897, !tbaa !2896
  ret i32 %6, !dbg !2898
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2899 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2903, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2904, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2905, metadata !DIExpression()), !dbg !2906
  %4 = icmp eq ptr %0, null, !dbg !2907
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2909
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2903, metadata !DIExpression()), !dbg !2906
  store i32 10, ptr %5, align 8, !dbg !2910, !tbaa !2846
  %6 = icmp ne ptr %1, null, !dbg !2911
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2913
  br i1 %8, label %10, label %9, !dbg !2913

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2914
  unreachable, !dbg !2914

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2915
  store ptr %1, ptr %11, align 8, !dbg !2916, !tbaa !2917
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2918
  store ptr %2, ptr %12, align 8, !dbg !2919, !tbaa !2920
  ret void, !dbg !2921
}

; Function Attrs: noreturn nounwind
declare !dbg !2922 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2923 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2927, metadata !DIExpression()), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2928, metadata !DIExpression()), !dbg !2935
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2929, metadata !DIExpression()), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2930, metadata !DIExpression()), !dbg !2935
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2931, metadata !DIExpression()), !dbg !2935
  %6 = icmp eq ptr %4, null, !dbg !2936
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2936
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2932, metadata !DIExpression()), !dbg !2935
  %8 = tail call ptr @__errno_location() #43, !dbg !2937
  %9 = load i32, ptr %8, align 4, !dbg !2937, !tbaa !1095
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2933, metadata !DIExpression()), !dbg !2935
  %10 = load i32, ptr %7, align 8, !dbg !2938, !tbaa !2846
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2939
  %12 = load i32, ptr %11, align 4, !dbg !2939, !tbaa !2896
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2940
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2941
  %15 = load ptr, ptr %14, align 8, !dbg !2941, !tbaa !2917
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2942
  %17 = load ptr, ptr %16, align 8, !dbg !2942, !tbaa !2920
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2943
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2934, metadata !DIExpression()), !dbg !2935
  store i32 %9, ptr %8, align 4, !dbg !2944, !tbaa !1095
  ret i64 %18, !dbg !2945
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2946 {
  %10 = alloca i32, align 4, !DIAssignID !3014
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3015
  %12 = alloca i32, align 4, !DIAssignID !3016
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3017
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3018
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2992, metadata !DIExpression(), metadata !3018, metadata ptr %14, metadata !DIExpression()), !dbg !3019
  %15 = alloca i32, align 4, !DIAssignID !3020
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2995, metadata !DIExpression(), metadata !3020, metadata ptr %15, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2952, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2953, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2954, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2955, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2956, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2957, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2958, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2959, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2960, metadata !DIExpression()), !dbg !3022
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !3023
  %17 = icmp eq i64 %16, 1, !dbg !3024
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2961, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2963, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2964, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2965, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2966, metadata !DIExpression()), !dbg !3022
  %18 = trunc i32 %5 to i8, !dbg !3025
  %19 = lshr i8 %18, 1, !dbg !3025
  %20 = and i8 %19, 1, !dbg !3025
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2967, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2968, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2969, metadata !DIExpression()), !dbg !3022
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !3026

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !3027
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !3028
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !3029
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !3030
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !3022
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !3031
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !3032
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2953, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2969, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2968, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2967, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2966, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2965, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2964, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2963, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2955, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2960, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2959, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2956, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.label(metadata !2970), !dbg !3033
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2971, metadata !DIExpression()), !dbg !3022
  switch i32 %29, label %113 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %114
    i32 0, label %112
    i32 2, label %104
    i32 4, label %98
    i32 3, label %96
    i32 1, label %97
    i32 10, label %73
    i32 8, label %48
    i32 9, label %48
  ], !dbg !3034

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2967, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2956, metadata !DIExpression()), !dbg !3022
  br label %114, !dbg !3035

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2967, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2956, metadata !DIExpression()), !dbg !3022
  %43 = and i8 %37, 1, !dbg !3036
  %44 = icmp eq i8 %43, 0, !dbg !3036
  br i1 %44, label %45, label %114, !dbg !3035

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3038
  br i1 %46, label %114, label %47, !dbg !3041

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !3038, !tbaa !1104
  br label %114, !dbg !3038

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !772, metadata !DIExpression(), metadata !3016, metadata ptr %12, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.assign(metadata i1 undef, metadata !773, metadata !DIExpression(), metadata !3017, metadata ptr %13, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr @.str.11.135, metadata !769, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 %29, metadata !770, metadata !DIExpression()), !dbg !3042
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.136, ptr noundef nonnull @.str.11.135, i32 noundef 5) #40, !dbg !3046
  call void @llvm.dbg.value(metadata ptr %49, metadata !771, metadata !DIExpression()), !dbg !3042
  %50 = icmp eq ptr %49, @.str.11.135, !dbg !3047
  br i1 %50, label %51, label %60, !dbg !3049

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !3050
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !3051
  call void @llvm.dbg.value(metadata ptr %13, metadata !3052, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata ptr %13, metadata !3060, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i32 0, metadata !3063, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i64 8, metadata !3064, metadata !DIExpression()), !dbg !3065
  store i64 0, ptr %13, align 8, !dbg !3067
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !3068
  %53 = icmp eq i64 %52, 3, !dbg !3070
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3071
  %57 = icmp eq i32 %29, 9, !dbg !3071
  %58 = select i1 %57, ptr @.str.10.137, ptr @.str.12.138, !dbg !3071
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3071
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !3072
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !3072
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !3042
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2959, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.assign(metadata i1 undef, metadata !772, metadata !DIExpression(), metadata !3014, metadata ptr %10, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.assign(metadata i1 undef, metadata !773, metadata !DIExpression(), metadata !3015, metadata ptr %11, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata ptr @.str.12.138, metadata !769, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i32 %29, metadata !770, metadata !DIExpression()), !dbg !3073
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.136, ptr noundef nonnull @.str.12.138, i32 noundef 5) #40, !dbg !3075
  call void @llvm.dbg.value(metadata ptr %62, metadata !771, metadata !DIExpression()), !dbg !3073
  %63 = icmp eq ptr %62, @.str.12.138, !dbg !3076
  br i1 %63, label %64, label %73, !dbg !3077

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !3078
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !3079
  call void @llvm.dbg.value(metadata ptr %11, metadata !3052, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata ptr %11, metadata !3060, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i32 0, metadata !3063, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 8, metadata !3064, metadata !DIExpression()), !dbg !3082
  store i64 0, ptr %11, align 8, !dbg !3084
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !3085
  %66 = icmp eq i64 %65, 3, !dbg !3086
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3087
  %70 = icmp eq i32 %29, 9, !dbg !3087
  %71 = select i1 %70, ptr @.str.10.137, ptr @.str.12.138, !dbg !3087
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3087
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !3088
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !3088
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2960, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2959, metadata !DIExpression()), !dbg !3022
  %76 = and i8 %37, 1, !dbg !3089
  %77 = icmp eq i8 %76, 0, !dbg !3089
  br i1 %77, label %78, label %93, !dbg !3090

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2972, metadata !DIExpression()), !dbg !3091
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2962, metadata !DIExpression()), !dbg !3022
  %79 = load i8, ptr %74, align 1, !dbg !3092, !tbaa !1104
  %80 = icmp eq i8 %79, 0, !dbg !3094
  br i1 %80, label %93, label %81, !dbg !3094

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2972, metadata !DIExpression()), !dbg !3091
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2962, metadata !DIExpression()), !dbg !3022
  %85 = icmp ult i64 %84, %40, !dbg !3095
  br i1 %85, label %86, label %88, !dbg !3098

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3095
  store i8 %82, ptr %87, align 1, !dbg !3095, !tbaa !1104
  br label %88, !dbg !3095

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3098
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2962, metadata !DIExpression()), !dbg !3022
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3099
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2972, metadata !DIExpression()), !dbg !3091
  %91 = load i8, ptr %90, align 1, !dbg !3092, !tbaa !1104
  %92 = icmp eq i8 %91, 0, !dbg !3094
  br i1 %92, label %93, label %81, !dbg !3094, !llvm.loop !3100

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3102
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2966, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2964, metadata !DIExpression()), !dbg !3022
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #41, !dbg !3103
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2965, metadata !DIExpression()), !dbg !3022
  br label %114, !dbg !3104

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2966, metadata !DIExpression()), !dbg !3022
  br label %98, !dbg !3105

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2966, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2967, metadata !DIExpression()), !dbg !3022
  br label %98, !dbg !3106

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !3030
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2967, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2966, metadata !DIExpression()), !dbg !3022
  %101 = and i8 %100, 1, !dbg !3107
  %102 = icmp eq i8 %101, 0, !dbg !3107
  %103 = select i1 %102, i8 1, i8 %99, !dbg !3109
  br label %104, !dbg !3109

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !3022
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !3025
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2967, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2966, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2956, metadata !DIExpression()), !dbg !3022
  %107 = and i8 %106, 1, !dbg !3110
  %108 = icmp eq i8 %107, 0, !dbg !3110
  br i1 %108, label %109, label %114, !dbg !3112

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !3113
  br i1 %110, label %114, label %111, !dbg !3116

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !3113, !tbaa !1104
  br label %114, !dbg !3113

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2967, metadata !DIExpression()), !dbg !3022
  br label %114, !dbg !3117

113:                                              ; preds = %28
  call void @abort() #42, !dbg !3118
  unreachable, !dbg !3118

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !3102
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.137, %45 ], [ @.str.10.137, %47 ], [ @.str.10.137, %42 ], [ %34, %28 ], [ @.str.12.138, %109 ], [ @.str.12.138, %111 ], [ @.str.12.138, %104 ], [ @.str.10.137, %41 ], !dbg !3022
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !3022
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !3022
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2967, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2966, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2965, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2964, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2960, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2959, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2956, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2977, metadata !DIExpression()), !dbg !3119
  %123 = and i8 %121, 1
  %124 = icmp ne i8 %123, 0
  %125 = icmp ne i32 %115, 2
  %126 = and i1 %125, %124
  %127 = icmp ne i64 %120, 0
  %128 = select i1 %126, i1 %127, i1 false
  %129 = icmp ugt i64 %120, 1
  %130 = and i8 %122, 1
  %131 = icmp eq i8 %130, 0
  %132 = icmp eq i32 %115, 2
  %133 = select i1 %125, i1 true, i1 %131
  %134 = icmp ne i8 %130, 0
  %135 = select i1 %134, i1 %127, i1 false
  %136 = xor i1 %124, true
  %137 = and i1 %26, %134
  br label %138, !dbg !3120

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !3102
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !3027
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !3031
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !3032
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !3121
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !3122
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2953, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2977, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2971, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2969, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2968, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2963, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2955, metadata !DIExpression()), !dbg !3022
  %147 = icmp eq i64 %139, -1, !dbg !3123
  br i1 %147, label %148, label %152, !dbg !3124

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3125
  %150 = load i8, ptr %149, align 1, !dbg !3125, !tbaa !1104
  %151 = icmp eq i8 %150, 0, !dbg !3126
  br i1 %151, label %612, label %154, !dbg !3127

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3128
  br i1 %153, label %612, label %154, !dbg !3127

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2979, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2982, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2983, metadata !DIExpression()), !dbg !3129
  br i1 %128, label %155, label %170, !dbg !3130

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !3132
  %157 = select i1 %147, i1 %129, i1 false, !dbg !3133
  br i1 %157, label %158, label %160, !dbg !3133

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3134
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2955, metadata !DIExpression()), !dbg !3022
  br label %160, !dbg !3135

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3135
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2955, metadata !DIExpression()), !dbg !3022
  %162 = icmp ugt i64 %156, %161, !dbg !3136
  br i1 %162, label %170, label %163, !dbg !3137

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3138
  call void @llvm.dbg.value(metadata ptr %164, metadata !3139, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata ptr %119, metadata !3142, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 %120, metadata !3143, metadata !DIExpression()), !dbg !3144
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !3146
  %166 = icmp ne i32 %165, 0, !dbg !3147
  %167 = select i1 %166, i1 true, i1 %131, !dbg !3148
  %168 = xor i1 %166, true, !dbg !3148
  %169 = zext i1 %168 to i8, !dbg !3148
  br i1 %167, label %170, label %666, !dbg !3148

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3129
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2979, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2955, metadata !DIExpression()), !dbg !3022
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3149
  %175 = load i8, ptr %174, align 1, !dbg !3149, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2984, metadata !DIExpression()), !dbg !3129
  switch i8 %175, label %306 [
    i8 0, label %176
    i8 63, label %226
    i8 7, label %272
    i8 8, label %261
    i8 12, label %262
    i8 10, label %270
    i8 13, label %263
    i8 9, label %264
    i8 11, label %265
    i8 92, label %266
    i8 123, label %274
    i8 125, label %274
    i8 35, label %278
    i8 126, label %278
    i8 32, label %280
    i8 33, label %281
    i8 34, label %281
    i8 36, label %281
    i8 38, label %281
    i8 40, label %281
    i8 41, label %281
    i8 42, label %281
    i8 59, label %281
    i8 60, label %281
    i8 61, label %281
    i8 62, label %281
    i8 91, label %281
    i8 94, label %281
    i8 96, label %281
    i8 124, label %281
    i8 39, label %283
    i8 37, label %465
    i8 43, label %465
    i8 44, label %465
    i8 45, label %465
    i8 46, label %465
    i8 47, label %465
    i8 48, label %465
    i8 49, label %465
    i8 50, label %465
    i8 51, label %465
    i8 52, label %465
    i8 53, label %465
    i8 54, label %465
    i8 55, label %465
    i8 56, label %465
    i8 57, label %465
    i8 58, label %465
    i8 65, label %465
    i8 66, label %465
    i8 67, label %465
    i8 68, label %465
    i8 69, label %465
    i8 70, label %465
    i8 71, label %465
    i8 72, label %465
    i8 73, label %465
    i8 74, label %465
    i8 75, label %465
    i8 76, label %465
    i8 77, label %465
    i8 78, label %465
    i8 79, label %465
    i8 80, label %465
    i8 81, label %465
    i8 82, label %465
    i8 83, label %465
    i8 84, label %465
    i8 85, label %465
    i8 86, label %465
    i8 87, label %465
    i8 88, label %465
    i8 89, label %465
    i8 90, label %465
    i8 93, label %465
    i8 95, label %465
    i8 97, label %465
    i8 98, label %465
    i8 99, label %465
    i8 100, label %465
    i8 101, label %465
    i8 102, label %465
    i8 103, label %465
    i8 104, label %465
    i8 105, label %465
    i8 106, label %465
    i8 107, label %465
    i8 108, label %465
    i8 109, label %465
    i8 110, label %465
    i8 111, label %465
    i8 112, label %465
    i8 113, label %465
    i8 114, label %465
    i8 115, label %465
    i8 116, label %465
    i8 117, label %465
    i8 118, label %465
    i8 119, label %465
    i8 120, label %465
    i8 121, label %465
    i8 122, label %465
  ], !dbg !3150

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !3151

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !3152

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2982, metadata !DIExpression()), !dbg !3129
  %179 = and i8 %144, 1, !dbg !3156
  %180 = icmp eq i8 %179, 0, !dbg !3156
  %181 = select i1 %132, i1 %180, i1 false, !dbg !3156
  br i1 %181, label %182, label %198, !dbg !3156

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3158
  br i1 %183, label %184, label %186, !dbg !3162

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3158
  store i8 39, ptr %185, align 1, !dbg !3158, !tbaa !1104
  br label %186, !dbg !3158

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3162
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2962, metadata !DIExpression()), !dbg !3022
  %188 = icmp ult i64 %187, %146, !dbg !3163
  br i1 %188, label %189, label %191, !dbg !3166

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3163
  store i8 36, ptr %190, align 1, !dbg !3163, !tbaa !1104
  br label %191, !dbg !3163

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3166
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2962, metadata !DIExpression()), !dbg !3022
  %193 = icmp ult i64 %192, %146, !dbg !3167
  br i1 %193, label %194, label %196, !dbg !3170

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3167
  store i8 39, ptr %195, align 1, !dbg !3167, !tbaa !1104
  br label %196, !dbg !3167

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2971, metadata !DIExpression()), !dbg !3022
  br label %198, !dbg !3171

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !3022
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2971, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2962, metadata !DIExpression()), !dbg !3022
  %201 = icmp ult i64 %199, %146, !dbg !3172
  br i1 %201, label %202, label %204, !dbg !3175

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3172
  store i8 92, ptr %203, align 1, !dbg !3172, !tbaa !1104
  br label %204, !dbg !3172

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3175
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2962, metadata !DIExpression()), !dbg !3022
  br i1 %125, label %206, label %476, !dbg !3176

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3178
  %208 = icmp ult i64 %207, %171, !dbg !3179
  br i1 %208, label %209, label %465, !dbg !3180

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3181
  %211 = load i8, ptr %210, align 1, !dbg !3181, !tbaa !1104
  %212 = add i8 %211, -48, !dbg !3182
  %213 = icmp ult i8 %212, 10, !dbg !3182
  br i1 %213, label %214, label %465, !dbg !3182

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3183
  br i1 %215, label %216, label %218, !dbg !3187

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3183
  store i8 48, ptr %217, align 1, !dbg !3183, !tbaa !1104
  br label %218, !dbg !3183

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2962, metadata !DIExpression()), !dbg !3022
  %220 = icmp ult i64 %219, %146, !dbg !3188
  br i1 %220, label %221, label %223, !dbg !3191

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3188
  store i8 48, ptr %222, align 1, !dbg !3188, !tbaa !1104
  br label %223, !dbg !3188

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3191
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2962, metadata !DIExpression()), !dbg !3022
  br label %465, !dbg !3192

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !3193

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3194

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !3195

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !3197

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3199
  %231 = icmp ult i64 %230, %171, !dbg !3200
  br i1 %231, label %232, label %465, !dbg !3201

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !3202
  %234 = load i8, ptr %233, align 1, !dbg !3202, !tbaa !1104
  %235 = icmp eq i8 %234, 63, !dbg !3203
  br i1 %235, label %236, label %465, !dbg !3204

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3205
  %238 = load i8, ptr %237, align 1, !dbg !3205, !tbaa !1104
  switch i8 %238, label %465 [
    i8 33, label %239
    i8 39, label %239
    i8 40, label %239
    i8 41, label %239
    i8 45, label %239
    i8 47, label %239
    i8 60, label %239
    i8 61, label %239
    i8 62, label %239
  ], !dbg !3206

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !3207

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2984, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2977, metadata !DIExpression()), !dbg !3119
  %241 = icmp ult i64 %140, %146, !dbg !3209
  br i1 %241, label %242, label %244, !dbg !3212

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3209
  store i8 63, ptr %243, align 1, !dbg !3209, !tbaa !1104
  br label %244, !dbg !3209

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2962, metadata !DIExpression()), !dbg !3022
  %246 = icmp ult i64 %245, %146, !dbg !3213
  br i1 %246, label %247, label %249, !dbg !3216

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !3213
  store i8 34, ptr %248, align 1, !dbg !3213, !tbaa !1104
  br label %249, !dbg !3213

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !3216
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2962, metadata !DIExpression()), !dbg !3022
  %251 = icmp ult i64 %250, %146, !dbg !3217
  br i1 %251, label %252, label %254, !dbg !3220

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !3217
  store i8 34, ptr %253, align 1, !dbg !3217, !tbaa !1104
  br label %254, !dbg !3217

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2962, metadata !DIExpression()), !dbg !3022
  %256 = icmp ult i64 %255, %146, !dbg !3221
  br i1 %256, label %257, label %259, !dbg !3224

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !3221
  store i8 63, ptr %258, align 1, !dbg !3221, !tbaa !1104
  br label %259, !dbg !3221

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !3224
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2962, metadata !DIExpression()), !dbg !3022
  br label %465, !dbg !3225

261:                                              ; preds = %170
  br label %272, !dbg !3226

262:                                              ; preds = %170
  br label %272, !dbg !3227

263:                                              ; preds = %170
  br label %270, !dbg !3228

264:                                              ; preds = %170
  br label %270, !dbg !3229

265:                                              ; preds = %170
  br label %272, !dbg !3230

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !3231

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !3232

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !3235

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !3237

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !3238
  call void @llvm.dbg.label(metadata !2985), !dbg !3239
  br i1 %133, label %272, label %655, !dbg !3240

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !3238
  call void @llvm.dbg.label(metadata !2988), !dbg !3242
  br i1 %124, label %520, label %476, !dbg !3243

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !3244

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !3245, !tbaa !1104
  %277 = icmp eq i8 %276, 0, !dbg !3247
  br i1 %277, label %278, label %465, !dbg !3248

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !3249
  br i1 %279, label %280, label %465, !dbg !3251

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2983, metadata !DIExpression()), !dbg !3129
  br label %281, !dbg !3252

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2983, metadata !DIExpression()), !dbg !3129
  br i1 %133, label %465, label %655, !dbg !3253

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2968, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2983, metadata !DIExpression()), !dbg !3129
  br i1 %132, label %284, label %465, !dbg !3255

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !3256

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !3259
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !3261
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !3261
  %290 = select i1 %288, i64 %146, i64 0, !dbg !3261
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2953, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2963, metadata !DIExpression()), !dbg !3022
  %291 = icmp ult i64 %140, %290, !dbg !3262
  br i1 %291, label %292, label %294, !dbg !3265

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3262
  store i8 39, ptr %293, align 1, !dbg !3262, !tbaa !1104
  br label %294, !dbg !3262

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !3265
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2962, metadata !DIExpression()), !dbg !3022
  %296 = icmp ult i64 %295, %290, !dbg !3266
  br i1 %296, label %297, label %299, !dbg !3269

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !3266
  store i8 92, ptr %298, align 1, !dbg !3266, !tbaa !1104
  br label %299, !dbg !3266

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !3269
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2962, metadata !DIExpression()), !dbg !3022
  %301 = icmp ult i64 %300, %290, !dbg !3270
  br i1 %301, label %302, label %304, !dbg !3273

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !3270
  store i8 39, ptr %303, align 1, !dbg !3270, !tbaa !1104
  br label %304, !dbg !3270

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !3273
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2971, metadata !DIExpression()), !dbg !3022
  br label %465, !dbg !3274

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !3275

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2989, metadata !DIExpression()), !dbg !3276
  %308 = tail call ptr @__ctype_b_loc() #43, !dbg !3277
  %309 = load ptr, ptr %308, align 8, !dbg !3277, !tbaa !994
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !3277
  %312 = load i16, ptr %311, align 2, !dbg !3277, !tbaa !1136
  %313 = and i16 %312, 16384, !dbg !3279
  %314 = icmp ne i16 %313, 0, !dbg !3279
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2991, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3276
  br label %355, !dbg !3280

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !3281
  call void @llvm.dbg.value(metadata ptr %14, metadata !3052, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata ptr %14, metadata !3060, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i32 0, metadata !3063, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i64 8, metadata !3064, metadata !DIExpression()), !dbg !3284
  store i64 0, ptr %14, align 8, !dbg !3286
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2989, metadata !DIExpression()), !dbg !3276
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2991, metadata !DIExpression()), !dbg !3276
  %316 = icmp eq i64 %171, -1, !dbg !3287
  br i1 %316, label %317, label %319, !dbg !3289

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3290
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2955, metadata !DIExpression()), !dbg !3022
  br label %319, !dbg !3291

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2955, metadata !DIExpression()), !dbg !3022
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !3292
  %321 = sub i64 %320, %145, !dbg !3293
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #40, !dbg !3294
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2999, metadata !DIExpression()), !dbg !3021
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !3295

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2989, metadata !DIExpression()), !dbg !3276
  %324 = icmp ult i64 %145, %320, !dbg !3296
  br i1 %324, label %326, label %351, !dbg !3298

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2991, metadata !DIExpression()), !dbg !3276
  br label %351, !dbg !3299

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2989, metadata !DIExpression()), !dbg !3276
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !3301
  %330 = load i8, ptr %329, align 1, !dbg !3301, !tbaa !1104
  %331 = icmp eq i8 %330, 0, !dbg !3298
  br i1 %331, label %351, label %332, !dbg !3302

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !3303
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2989, metadata !DIExpression()), !dbg !3276
  %334 = add i64 %333, %145, !dbg !3304
  %335 = icmp eq i64 %333, %321, !dbg !3296
  br i1 %335, label %351, label %326, !dbg !3298, !llvm.loop !3305

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3000, metadata !DIExpression()), !dbg !3306
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !3307
  %339 = and i1 %338, %132, !dbg !3307
  br i1 %339, label %340, label %347, !dbg !3307

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !3000, metadata !DIExpression()), !dbg !3306
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !3308
  %343 = load i8, ptr %342, align 1, !dbg !3308, !tbaa !1104
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !3310

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !3311
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !3000, metadata !DIExpression()), !dbg !3306
  %346 = icmp eq i64 %345, %322, !dbg !3312
  br i1 %346, label %347, label %340, !dbg !3313, !llvm.loop !3314

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !3316, !tbaa !1095
  call void @llvm.dbg.value(metadata i32 %348, metadata !3318, metadata !DIExpression()), !dbg !3326
  %349 = call i32 @iswprint(i32 noundef %348) #40, !dbg !3328
  %350 = icmp ne i32 %349, 0, !dbg !3329
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2991, metadata !DIExpression()), !dbg !3276
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2989, metadata !DIExpression()), !dbg !3276
  br label %351, !dbg !3330

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2991, metadata !DIExpression()), !dbg !3276
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2989, metadata !DIExpression()), !dbg !3276
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3331
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3332
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2991, metadata !DIExpression()), !dbg !3276
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2989, metadata !DIExpression()), !dbg !3276
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3331
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3332
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !3129
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !3333
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !3333
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2991, metadata !DIExpression()), !dbg !3276
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2989, metadata !DIExpression()), !dbg !3276
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2955, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3129
  %359 = icmp ult i64 %357, 2, !dbg !3334
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !3335
  br i1 %361, label %461, label %362, !dbg !3335

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !3336
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !3008, metadata !DIExpression()), !dbg !3337
  br label %364, !dbg !3338

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !3022
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !3121
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !3119
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !3129
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !3339
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2984, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2982, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2979, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2977, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2971, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2962, metadata !DIExpression()), !dbg !3022
  br i1 %360, label %417, label %371, !dbg !3340

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !3345

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2982, metadata !DIExpression()), !dbg !3129
  %373 = and i8 %366, 1, !dbg !3348
  %374 = icmp eq i8 %373, 0, !dbg !3348
  %375 = select i1 %132, i1 %374, i1 false, !dbg !3348
  br i1 %375, label %376, label %392, !dbg !3348

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !3350
  br i1 %377, label %378, label %380, !dbg !3354

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3350
  store i8 39, ptr %379, align 1, !dbg !3350, !tbaa !1104
  br label %380, !dbg !3350

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !3354
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2962, metadata !DIExpression()), !dbg !3022
  %382 = icmp ult i64 %381, %146, !dbg !3355
  br i1 %382, label %383, label %385, !dbg !3358

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !3355
  store i8 36, ptr %384, align 1, !dbg !3355, !tbaa !1104
  br label %385, !dbg !3355

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !3358
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2962, metadata !DIExpression()), !dbg !3022
  %387 = icmp ult i64 %386, %146, !dbg !3359
  br i1 %387, label %388, label %390, !dbg !3362

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3359
  store i8 39, ptr %389, align 1, !dbg !3359, !tbaa !1104
  br label %390, !dbg !3359

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !3362
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2971, metadata !DIExpression()), !dbg !3022
  br label %392, !dbg !3363

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !3022
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2971, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2962, metadata !DIExpression()), !dbg !3022
  %395 = icmp ult i64 %393, %146, !dbg !3364
  br i1 %395, label %396, label %398, !dbg !3367

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !3364
  store i8 92, ptr %397, align 1, !dbg !3364, !tbaa !1104
  br label %398, !dbg !3364

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2962, metadata !DIExpression()), !dbg !3022
  %400 = icmp ult i64 %399, %146, !dbg !3368
  br i1 %400, label %401, label %405, !dbg !3371

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !3368
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !3368
  store i8 %403, ptr %404, align 1, !dbg !3368, !tbaa !1104
  br label %405, !dbg !3368

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !3371
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2962, metadata !DIExpression()), !dbg !3022
  %407 = icmp ult i64 %406, %146, !dbg !3372
  br i1 %407, label %408, label %413, !dbg !3375

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !3372
  %411 = or disjoint i8 %410, 48, !dbg !3372
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !3372
  store i8 %411, ptr %412, align 1, !dbg !3372, !tbaa !1104
  br label %413, !dbg !3372

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2962, metadata !DIExpression()), !dbg !3022
  %415 = and i8 %370, 7, !dbg !3376
  %416 = or disjoint i8 %415, 48, !dbg !3377
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2984, metadata !DIExpression()), !dbg !3129
  br label %426, !dbg !3378

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !3379
  %419 = icmp eq i8 %418, 0, !dbg !3379
  br i1 %419, label %426, label %420, !dbg !3381

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !3382
  br i1 %421, label %422, label %424, !dbg !3386

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3382
  store i8 92, ptr %423, align 1, !dbg !3382, !tbaa !1104
  br label %424, !dbg !3382

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !3386
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2979, metadata !DIExpression()), !dbg !3129
  br label %426, !dbg !3387

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !3022
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !3121
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !3129
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !3129
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2984, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2982, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2979, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2971, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2962, metadata !DIExpression()), !dbg !3022
  %432 = add i64 %367, 1, !dbg !3388
  %433 = icmp ugt i64 %363, %432, !dbg !3390
  br i1 %433, label %434, label %463, !dbg !3391

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !3392
  %436 = icmp ne i8 %435, 0, !dbg !3392
  %437 = and i8 %430, 1, !dbg !3392
  %438 = icmp eq i8 %437, 0, !dbg !3392
  %439 = select i1 %436, i1 %438, i1 false, !dbg !3392
  br i1 %439, label %440, label %451, !dbg !3392

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !3395
  br i1 %441, label %442, label %444, !dbg !3399

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !3395
  store i8 39, ptr %443, align 1, !dbg !3395, !tbaa !1104
  br label %444, !dbg !3395

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2962, metadata !DIExpression()), !dbg !3022
  %446 = icmp ult i64 %445, %146, !dbg !3400
  br i1 %446, label %447, label %449, !dbg !3403

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !3400
  store i8 39, ptr %448, align 1, !dbg !3400, !tbaa !1104
  br label %449, !dbg !3400

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2971, metadata !DIExpression()), !dbg !3022
  br label %451, !dbg !3404

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !3405
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2971, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2962, metadata !DIExpression()), !dbg !3022
  %454 = icmp ult i64 %452, %146, !dbg !3406
  br i1 %454, label %455, label %457, !dbg !3409

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !3406
  store i8 %431, ptr %456, align 1, !dbg !3406, !tbaa !1104
  br label %457, !dbg !3406

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !3409
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2977, metadata !DIExpression()), !dbg !3119
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !3410
  %460 = load i8, ptr %459, align 1, !dbg !3410, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2984, metadata !DIExpression()), !dbg !3129
  br label %364, !dbg !3411, !llvm.loop !3412

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2984, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2983, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2982, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2979, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2977, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2971, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2955, metadata !DIExpression()), !dbg !3022
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2984, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2983, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2982, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2979, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2977, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2971, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2955, metadata !DIExpression()), !dbg !3022
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !3415
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !3022
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !3027
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !3022
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !3022
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !3119
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !3129
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !3129
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !3129
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2953, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2984, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2983, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2982, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2979, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2977, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2971, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2968, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2963, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2955, metadata !DIExpression()), !dbg !3022
  br i1 %126, label %487, label %476, !dbg !3416

476:                                              ; preds = %268, %225, %272, %204, %465
  %477 = phi i64 [ %475, %465 ], [ %146, %204 ], [ %146, %272 ], [ %146, %225 ], [ %146, %268 ]
  %478 = phi i8 [ %474, %465 ], [ 48, %204 ], [ %175, %272 ], [ 0, %225 ], [ 92, %268 ]
  %479 = phi i8 [ %473, %465 ], [ 0, %204 ], [ 0, %272 ], [ 0, %225 ], [ 0, %268 ]
  %480 = phi i8 [ %472, %465 ], [ 1, %204 ], [ 0, %272 ], [ 0, %225 ], [ 0, %268 ]
  %481 = phi i64 [ %471, %465 ], [ %145, %204 ], [ %145, %272 ], [ %145, %225 ], [ %145, %268 ]
  %482 = phi i8 [ %470, %465 ], [ %200, %204 ], [ %144, %272 ], [ %144, %225 ], [ %144, %268 ]
  %483 = phi i8 [ %469, %465 ], [ %142, %204 ], [ %142, %272 ], [ %142, %225 ], [ %142, %268 ]
  %484 = phi i64 [ %468, %465 ], [ %141, %204 ], [ %141, %272 ], [ %141, %225 ], [ %141, %268 ]
  %485 = phi i64 [ %467, %465 ], [ %205, %204 ], [ %140, %272 ], [ %140, %225 ], [ %140, %268 ]
  %486 = phi i64 [ %466, %465 ], [ %171, %204 ], [ %171, %272 ], [ %171, %225 ], [ %171, %268 ]
  br i1 %137, label %488, label %509, !dbg !3418

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3419

488:                                              ; preds = %476, %487
  %489 = phi i64 [ %477, %476 ], [ %475, %487 ]
  %490 = phi i8 [ %478, %476 ], [ %474, %487 ]
  %491 = phi i8 [ %479, %476 ], [ %473, %487 ]
  %492 = phi i8 [ %480, %476 ], [ %472, %487 ]
  %493 = phi i64 [ %481, %476 ], [ %471, %487 ]
  %494 = phi i8 [ %482, %476 ], [ %470, %487 ]
  %495 = phi i8 [ %483, %476 ], [ %469, %487 ]
  %496 = phi i64 [ %484, %476 ], [ %468, %487 ]
  %497 = phi i64 [ %485, %476 ], [ %467, %487 ]
  %498 = phi i64 [ %486, %476 ], [ %466, %487 ]
  %499 = lshr i8 %490, 5, !dbg !3420
  %500 = zext nneg i8 %499 to i64, !dbg !3420
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3421
  %502 = load i32, ptr %501, align 4, !dbg !3421, !tbaa !1095
  %503 = and i8 %490, 31, !dbg !3422
  %504 = zext nneg i8 %503 to i32, !dbg !3422
  %505 = shl nuw i32 1, %504, !dbg !3423
  %506 = and i32 %502, %505, !dbg !3423
  %507 = icmp eq i32 %506, 0, !dbg !3423
  %508 = and i1 %172, %507, !dbg !3424
  br i1 %508, label %558, label %520, !dbg !3424

509:                                              ; preds = %487, %476
  %510 = phi i64 [ %475, %487 ], [ %477, %476 ]
  %511 = phi i8 [ %474, %487 ], [ %478, %476 ]
  %512 = phi i8 [ %473, %487 ], [ %479, %476 ]
  %513 = phi i8 [ %472, %487 ], [ %480, %476 ]
  %514 = phi i64 [ %471, %487 ], [ %481, %476 ]
  %515 = phi i8 [ %470, %487 ], [ %482, %476 ]
  %516 = phi i8 [ %469, %487 ], [ %483, %476 ]
  %517 = phi i64 [ %468, %487 ], [ %484, %476 ]
  %518 = phi i64 [ %467, %487 ], [ %485, %476 ]
  %519 = phi i64 [ %466, %487 ], [ %486, %476 ]
  br i1 %172, label %558, label %520, !dbg !3425

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !3415
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !3022
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !3027
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !3031
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !3121
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3426
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !3129
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !3129
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2953, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2984, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2983, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2977, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2971, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2968, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2963, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2955, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.label(metadata !3011), !dbg !3427
  br i1 %131, label %530, label %659, !dbg !3428

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2982, metadata !DIExpression()), !dbg !3129
  %531 = and i8 %525, 1, !dbg !3430
  %532 = icmp eq i8 %531, 0, !dbg !3430
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3430
  br i1 %533, label %534, label %550, !dbg !3430

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3432
  br i1 %535, label %536, label %538, !dbg !3436

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3432
  store i8 39, ptr %537, align 1, !dbg !3432, !tbaa !1104
  br label %538, !dbg !3432

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3436
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2962, metadata !DIExpression()), !dbg !3022
  %540 = icmp ult i64 %539, %529, !dbg !3437
  br i1 %540, label %541, label %543, !dbg !3440

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3437
  store i8 36, ptr %542, align 1, !dbg !3437, !tbaa !1104
  br label %543, !dbg !3437

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3440
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2962, metadata !DIExpression()), !dbg !3022
  %545 = icmp ult i64 %544, %529, !dbg !3441
  br i1 %545, label %546, label %548, !dbg !3444

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3441
  store i8 39, ptr %547, align 1, !dbg !3441, !tbaa !1104
  br label %548, !dbg !3441

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3444
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2971, metadata !DIExpression()), !dbg !3022
  br label %550, !dbg !3445

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !3129
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2971, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2962, metadata !DIExpression()), !dbg !3022
  %553 = icmp ult i64 %551, %529, !dbg !3446
  br i1 %553, label %554, label %556, !dbg !3449

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3446
  store i8 92, ptr %555, align 1, !dbg !3446, !tbaa !1104
  br label %556, !dbg !3446

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3449
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2953, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2984, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2983, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2982, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2977, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2971, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2968, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2963, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2955, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.label(metadata !3012), !dbg !3450
  br label %585, !dbg !3451

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !3415
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !3022
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !3027
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !3031
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !3121
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3426
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !3129
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !3129
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3454
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2953, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2984, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2983, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2982, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2977, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2971, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2968, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2963, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2955, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.label(metadata !3012), !dbg !3450
  %569 = and i8 %563, 1, !dbg !3451
  %570 = icmp ne i8 %569, 0, !dbg !3451
  %571 = and i8 %565, 1, !dbg !3451
  %572 = icmp eq i8 %571, 0, !dbg !3451
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3451
  br i1 %573, label %574, label %585, !dbg !3451

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3455
  br i1 %575, label %576, label %578, !dbg !3459

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3455
  store i8 39, ptr %577, align 1, !dbg !3455, !tbaa !1104
  br label %578, !dbg !3455

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3459
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2962, metadata !DIExpression()), !dbg !3022
  %580 = icmp ult i64 %579, %568, !dbg !3460
  br i1 %580, label %581, label %583, !dbg !3463

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3460
  store i8 39, ptr %582, align 1, !dbg !3460, !tbaa !1104
  br label %583, !dbg !3460

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3463
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2971, metadata !DIExpression()), !dbg !3022
  br label %585, !dbg !3464

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !3129
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2971, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2962, metadata !DIExpression()), !dbg !3022
  %595 = icmp ult i64 %593, %586, !dbg !3465
  br i1 %595, label %596, label %598, !dbg !3468

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3465
  store i8 %587, ptr %597, align 1, !dbg !3465, !tbaa !1104
  br label %598, !dbg !3465

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3468
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2962, metadata !DIExpression()), !dbg !3022
  %600 = icmp eq i8 %588, 0, !dbg !3469
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3471
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2969, metadata !DIExpression()), !dbg !3022
  br label %602, !dbg !3472

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !3415
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !3022
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !3027
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !3031
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !3032
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !3121
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3426
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2953, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2977, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2971, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2969, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2968, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2963, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2955, metadata !DIExpression()), !dbg !3022
  %611 = add i64 %609, 1, !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2977, metadata !DIExpression()), !dbg !3119
  br label %138, !dbg !3474, !llvm.loop !3475

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2953, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2969, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2968, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2963, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2962, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2955, metadata !DIExpression()), !dbg !3022
  %613 = icmp eq i64 %140, 0, !dbg !3477
  %614 = and i1 %132, %613, !dbg !3479
  %615 = xor i1 %614, true, !dbg !3479
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3479
  br i1 %616, label %617, label %655, !dbg !3479

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3480
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3480
  br i1 %621, label %622, label %631, !dbg !3480

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3482
  %624 = icmp eq i8 %623, 0, !dbg !3482
  br i1 %624, label %627, label %625, !dbg !3485

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3486
  br label %672, !dbg !3487

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3488
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3490
  br i1 %630, label %28, label %631, !dbg !3490

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3491
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3493
  br i1 %634, label %635, label %650, !dbg !3493

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2964, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2962, metadata !DIExpression()), !dbg !3022
  %636 = load i8, ptr %119, align 1, !dbg !3494, !tbaa !1104
  %637 = icmp eq i8 %636, 0, !dbg !3497
  br i1 %637, label %650, label %638, !dbg !3497

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2964, metadata !DIExpression()), !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2962, metadata !DIExpression()), !dbg !3022
  %642 = icmp ult i64 %641, %146, !dbg !3498
  br i1 %642, label %643, label %645, !dbg !3501

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3498
  store i8 %639, ptr %644, align 1, !dbg !3498, !tbaa !1104
  br label %645, !dbg !3498

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3501
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2962, metadata !DIExpression()), !dbg !3022
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3502
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2964, metadata !DIExpression()), !dbg !3022
  %648 = load i8, ptr %647, align 1, !dbg !3494, !tbaa !1104
  %649 = icmp eq i8 %648, 0, !dbg !3497
  br i1 %649, label %650, label %638, !dbg !3497, !llvm.loop !3503

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !3102
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2962, metadata !DIExpression()), !dbg !3022
  %652 = icmp ult i64 %651, %146, !dbg !3505
  br i1 %652, label %653, label %672, !dbg !3507

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3508
  store i8 0, ptr %654, align 1, !dbg !3509, !tbaa !1104
  br label %672, !dbg !3508

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !3013), !dbg !3510
  %657 = icmp eq i8 %123, 0, !dbg !3511
  %658 = select i1 %657, i32 2, i32 4, !dbg !3511
  br label %666, !dbg !3511

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !3013), !dbg !3510
  %662 = icmp eq i32 %115, 2, !dbg !3513
  %663 = icmp eq i8 %123, 0, !dbg !3511
  %664 = select i1 %663, i32 2, i32 4, !dbg !3511
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3511
  br label %666, !dbg !3511

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2956, metadata !DIExpression()), !dbg !3022
  %670 = and i32 %5, -3, !dbg !3514
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3515
  br label %672, !dbg !3516

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3517
}

; Function Attrs: nounwind
declare !dbg !3518 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3521 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3523 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3527, metadata !DIExpression()), !dbg !3530
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3528, metadata !DIExpression()), !dbg !3530
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3529, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata ptr %0, metadata !3531, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 %1, metadata !3536, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata ptr null, metadata !3537, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata ptr %2, metadata !3538, metadata !DIExpression()), !dbg !3544
  %4 = icmp eq ptr %2, null, !dbg !3546
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3546
  call void @llvm.dbg.value(metadata ptr %5, metadata !3539, metadata !DIExpression()), !dbg !3544
  %6 = tail call ptr @__errno_location() #43, !dbg !3547
  %7 = load i32, ptr %6, align 4, !dbg !3547, !tbaa !1095
  call void @llvm.dbg.value(metadata i32 %7, metadata !3540, metadata !DIExpression()), !dbg !3544
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3548
  %9 = load i32, ptr %8, align 4, !dbg !3548, !tbaa !2896
  %10 = or i32 %9, 1, !dbg !3549
  call void @llvm.dbg.value(metadata i32 %10, metadata !3541, metadata !DIExpression()), !dbg !3544
  %11 = load i32, ptr %5, align 8, !dbg !3550, !tbaa !2846
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3551
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3552
  %14 = load ptr, ptr %13, align 8, !dbg !3552, !tbaa !2917
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3553
  %16 = load ptr, ptr %15, align 8, !dbg !3553, !tbaa !2920
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3554
  %18 = add i64 %17, 1, !dbg !3555
  call void @llvm.dbg.value(metadata i64 %18, metadata !3542, metadata !DIExpression()), !dbg !3544
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #48, !dbg !3556
  call void @llvm.dbg.value(metadata ptr %19, metadata !3543, metadata !DIExpression()), !dbg !3544
  %20 = load i32, ptr %5, align 8, !dbg !3557, !tbaa !2846
  %21 = load ptr, ptr %13, align 8, !dbg !3558, !tbaa !2917
  %22 = load ptr, ptr %15, align 8, !dbg !3559, !tbaa !2920
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3560
  store i32 %7, ptr %6, align 4, !dbg !3561, !tbaa !1095
  ret ptr %19, !dbg !3562
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3532 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3531, metadata !DIExpression()), !dbg !3563
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3536, metadata !DIExpression()), !dbg !3563
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3537, metadata !DIExpression()), !dbg !3563
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3538, metadata !DIExpression()), !dbg !3563
  %5 = icmp eq ptr %3, null, !dbg !3564
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3564
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3539, metadata !DIExpression()), !dbg !3563
  %7 = tail call ptr @__errno_location() #43, !dbg !3565
  %8 = load i32, ptr %7, align 4, !dbg !3565, !tbaa !1095
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3540, metadata !DIExpression()), !dbg !3563
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3566
  %10 = load i32, ptr %9, align 4, !dbg !3566, !tbaa !2896
  %11 = icmp eq ptr %2, null, !dbg !3567
  %12 = zext i1 %11 to i32, !dbg !3567
  %13 = or i32 %10, %12, !dbg !3568
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3541, metadata !DIExpression()), !dbg !3563
  %14 = load i32, ptr %6, align 8, !dbg !3569, !tbaa !2846
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3570
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3571
  %17 = load ptr, ptr %16, align 8, !dbg !3571, !tbaa !2917
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3572
  %19 = load ptr, ptr %18, align 8, !dbg !3572, !tbaa !2920
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3573
  %21 = add i64 %20, 1, !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3542, metadata !DIExpression()), !dbg !3563
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #48, !dbg !3575
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3543, metadata !DIExpression()), !dbg !3563
  %23 = load i32, ptr %6, align 8, !dbg !3576, !tbaa !2846
  %24 = load ptr, ptr %16, align 8, !dbg !3577, !tbaa !2917
  %25 = load ptr, ptr %18, align 8, !dbg !3578, !tbaa !2920
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3579
  store i32 %8, ptr %7, align 4, !dbg !3580, !tbaa !1095
  br i1 %11, label %28, label %27, !dbg !3581

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3582, !tbaa !1603
  br label %28, !dbg !3584

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3585
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3586 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3591, !tbaa !994
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3588, metadata !DIExpression()), !dbg !3592
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3589, metadata !DIExpression()), !dbg !3593
  %2 = load i32, ptr @nslots, align 4, !tbaa !1095
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3589, metadata !DIExpression()), !dbg !3593
  %3 = icmp sgt i32 %2, 1, !dbg !3594
  br i1 %3, label %4, label %6, !dbg !3596

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3594
  br label %10, !dbg !3596

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3597
  %8 = load ptr, ptr %7, align 8, !dbg !3597, !tbaa !3599
  %9 = icmp eq ptr %8, @slot0, !dbg !3601
  br i1 %9, label %17, label %16, !dbg !3602

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3589, metadata !DIExpression()), !dbg !3593
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3603
  %13 = load ptr, ptr %12, align 8, !dbg !3603, !tbaa !3599
  tail call void @free(ptr noundef %13) #40, !dbg !3604
  %14 = add nuw nsw i64 %11, 1, !dbg !3605
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3589, metadata !DIExpression()), !dbg !3593
  %15 = icmp eq i64 %14, %5, !dbg !3594
  br i1 %15, label %6, label %10, !dbg !3596, !llvm.loop !3606

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3608
  store i64 256, ptr @slotvec0, align 8, !dbg !3610, !tbaa !3611
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3612, !tbaa !3599
  br label %17, !dbg !3613

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3614
  br i1 %18, label %20, label %19, !dbg !3616

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3617
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3619, !tbaa !994
  br label %20, !dbg !3620

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3621, !tbaa !1095
  ret void, !dbg !3622
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3623 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3626 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3628, metadata !DIExpression()), !dbg !3630
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3629, metadata !DIExpression()), !dbg !3630
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3631
  ret ptr %3, !dbg !3632
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3633 {
  %5 = alloca i64, align 8, !DIAssignID !3653
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3647, metadata !DIExpression(), metadata !3653, metadata ptr %5, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3637, metadata !DIExpression()), !dbg !3655
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3638, metadata !DIExpression()), !dbg !3655
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3639, metadata !DIExpression()), !dbg !3655
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3640, metadata !DIExpression()), !dbg !3655
  %6 = tail call ptr @__errno_location() #43, !dbg !3656
  %7 = load i32, ptr %6, align 4, !dbg !3656, !tbaa !1095
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3641, metadata !DIExpression()), !dbg !3655
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3657, !tbaa !994
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3642, metadata !DIExpression()), !dbg !3655
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3643, metadata !DIExpression()), !dbg !3655
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3658
  br i1 %9, label %10, label %11, !dbg !3658

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3660
  unreachable, !dbg !3660

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3661, !tbaa !1095
  %13 = icmp sgt i32 %12, %0, !dbg !3662
  br i1 %13, label %32, label %14, !dbg !3663

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3664
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3644, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3654
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3665
  %16 = sext i32 %12 to i64, !dbg !3666
  store i64 %16, ptr %5, align 8, !dbg !3667, !tbaa !1603, !DIAssignID !3668
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3647, metadata !DIExpression(), metadata !3668, metadata ptr %5, metadata !DIExpression()), !dbg !3654
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3669
  %18 = add nuw nsw i32 %0, 1, !dbg !3670
  %19 = sub i32 %18, %12, !dbg !3671
  %20 = sext i32 %19 to i64, !dbg !3672
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3673
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3642, metadata !DIExpression()), !dbg !3655
  store ptr %21, ptr @slotvec, align 8, !dbg !3674, !tbaa !994
  br i1 %15, label %22, label %23, !dbg !3675

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3676, !tbaa.struct !3678
  br label %23, !dbg !3679

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3680, !tbaa !1095
  %25 = sext i32 %24 to i64, !dbg !3681
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3681
  %27 = load i64, ptr %5, align 8, !dbg !3682, !tbaa !1603
  %28 = sub nsw i64 %27, %25, !dbg !3683
  %29 = shl i64 %28, 4, !dbg !3684
  call void @llvm.dbg.value(metadata ptr %26, metadata !3060, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i32 0, metadata !3063, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i64 %29, metadata !3064, metadata !DIExpression()), !dbg !3685
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3687
  %30 = load i64, ptr %5, align 8, !dbg !3688, !tbaa !1603
  %31 = trunc i64 %30 to i32, !dbg !3688
  store i32 %31, ptr @nslots, align 4, !dbg !3689, !tbaa !1095
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3690
  br label %32, !dbg !3691

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3655
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3642, metadata !DIExpression()), !dbg !3655
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3692
  %36 = load i64, ptr %35, align 8, !dbg !3693, !tbaa !3611
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3648, metadata !DIExpression()), !dbg !3694
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3695
  %38 = load ptr, ptr %37, align 8, !dbg !3695, !tbaa !3599
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3650, metadata !DIExpression()), !dbg !3694
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3696
  %40 = load i32, ptr %39, align 4, !dbg !3696, !tbaa !2896
  %41 = or i32 %40, 1, !dbg !3697
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3651, metadata !DIExpression()), !dbg !3694
  %42 = load i32, ptr %3, align 8, !dbg !3698, !tbaa !2846
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3699
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3700
  %45 = load ptr, ptr %44, align 8, !dbg !3700, !tbaa !2917
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3701
  %47 = load ptr, ptr %46, align 8, !dbg !3701, !tbaa !2920
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3702
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3652, metadata !DIExpression()), !dbg !3694
  %49 = icmp ugt i64 %36, %48, !dbg !3703
  br i1 %49, label %60, label %50, !dbg !3705

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3706
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3648, metadata !DIExpression()), !dbg !3694
  store i64 %51, ptr %35, align 8, !dbg !3708, !tbaa !3611
  %52 = icmp eq ptr %38, @slot0, !dbg !3709
  br i1 %52, label %54, label %53, !dbg !3711

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3712
  br label %54, !dbg !3712

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #48, !dbg !3713
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3650, metadata !DIExpression()), !dbg !3694
  store ptr %55, ptr %37, align 8, !dbg !3714, !tbaa !3599
  %56 = load i32, ptr %3, align 8, !dbg !3715, !tbaa !2846
  %57 = load ptr, ptr %44, align 8, !dbg !3716, !tbaa !2917
  %58 = load ptr, ptr %46, align 8, !dbg !3717, !tbaa !2920
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3718
  br label %60, !dbg !3719

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3694
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3650, metadata !DIExpression()), !dbg !3694
  store i32 %7, ptr %6, align 4, !dbg !3720, !tbaa !1095
  ret ptr %61, !dbg !3721
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #27

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #28

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3722 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3726, metadata !DIExpression()), !dbg !3729
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3727, metadata !DIExpression()), !dbg !3729
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3728, metadata !DIExpression()), !dbg !3729
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3730
  ret ptr %4, !dbg !3731
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3732 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3734, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata i32 0, metadata !3628, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata ptr %0, metadata !3629, metadata !DIExpression()), !dbg !3736
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3738
  ret ptr %2, !dbg !3739
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3740 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3744, metadata !DIExpression()), !dbg !3746
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3745, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i32 0, metadata !3726, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata ptr %0, metadata !3727, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %1, metadata !3728, metadata !DIExpression()), !dbg !3747
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3749
  ret ptr %3, !dbg !3750
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3751 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3759
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3758, metadata !DIExpression(), metadata !3759, metadata ptr %4, metadata !DIExpression()), !dbg !3760
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3755, metadata !DIExpression()), !dbg !3760
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3756, metadata !DIExpression()), !dbg !3760
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3757, metadata !DIExpression()), !dbg !3760
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3761
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3762), !dbg !3765
  call void @llvm.dbg.value(metadata i32 %1, metadata !3766, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3771, metadata !DIExpression()), !dbg !3774
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3774, !alias.scope !3762, !DIAssignID !3775
  call void @llvm.dbg.assign(metadata i8 0, metadata !3758, metadata !DIExpression(), metadata !3775, metadata ptr %4, metadata !DIExpression()), !dbg !3760
  %5 = icmp eq i32 %1, 10, !dbg !3776
  br i1 %5, label %6, label %7, !dbg !3778

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3779, !noalias !3762
  unreachable, !dbg !3779

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3780, !tbaa !2846, !alias.scope !3762, !DIAssignID !3781
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3758, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3781, metadata ptr %4, metadata !DIExpression()), !dbg !3760
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3782
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3783
  ret ptr %8, !dbg !3784
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3785 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3794
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3793, metadata !DIExpression(), metadata !3794, metadata ptr %5, metadata !DIExpression()), !dbg !3795
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3789, metadata !DIExpression()), !dbg !3795
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3790, metadata !DIExpression()), !dbg !3795
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3791, metadata !DIExpression()), !dbg !3795
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3792, metadata !DIExpression()), !dbg !3795
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3796
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3797), !dbg !3800
  call void @llvm.dbg.value(metadata i32 %1, metadata !3766, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3771, metadata !DIExpression()), !dbg !3803
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3803, !alias.scope !3797, !DIAssignID !3804
  call void @llvm.dbg.assign(metadata i8 0, metadata !3793, metadata !DIExpression(), metadata !3804, metadata ptr %5, metadata !DIExpression()), !dbg !3795
  %6 = icmp eq i32 %1, 10, !dbg !3805
  br i1 %6, label %7, label %8, !dbg !3806

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3807, !noalias !3797
  unreachable, !dbg !3807

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3808, !tbaa !2846, !alias.scope !3797, !DIAssignID !3809
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3793, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3809, metadata ptr %5, metadata !DIExpression()), !dbg !3795
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3810
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3811
  ret ptr %9, !dbg !3812
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3813 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3819
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3817, metadata !DIExpression()), !dbg !3820
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3818, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3758, metadata !DIExpression(), metadata !3819, metadata ptr %3, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i32 0, metadata !3755, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i32 %0, metadata !3756, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata ptr %1, metadata !3757, metadata !DIExpression()), !dbg !3821
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3823
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3824), !dbg !3827
  call void @llvm.dbg.value(metadata i32 %0, metadata !3766, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3771, metadata !DIExpression()), !dbg !3830
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3830, !alias.scope !3824, !DIAssignID !3831
  call void @llvm.dbg.assign(metadata i8 0, metadata !3758, metadata !DIExpression(), metadata !3831, metadata ptr %3, metadata !DIExpression()), !dbg !3821
  %4 = icmp eq i32 %0, 10, !dbg !3832
  br i1 %4, label %5, label %6, !dbg !3833

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3834, !noalias !3824
  unreachable, !dbg !3834

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3835, !tbaa !2846, !alias.scope !3824, !DIAssignID !3836
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3758, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3836, metadata ptr %3, metadata !DIExpression()), !dbg !3821
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3837
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3838
  ret ptr %7, !dbg !3839
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3840 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3847
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3844, metadata !DIExpression()), !dbg !3848
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3845, metadata !DIExpression()), !dbg !3848
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3846, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3793, metadata !DIExpression(), metadata !3847, metadata ptr %4, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i32 0, metadata !3789, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i32 %0, metadata !3790, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata ptr %1, metadata !3791, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 %2, metadata !3792, metadata !DIExpression()), !dbg !3849
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3851
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3852), !dbg !3855
  call void @llvm.dbg.value(metadata i32 %0, metadata !3766, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3771, metadata !DIExpression()), !dbg !3858
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3858, !alias.scope !3852, !DIAssignID !3859
  call void @llvm.dbg.assign(metadata i8 0, metadata !3793, metadata !DIExpression(), metadata !3859, metadata ptr %4, metadata !DIExpression()), !dbg !3849
  %5 = icmp eq i32 %0, 10, !dbg !3860
  br i1 %5, label %6, label %7, !dbg !3861

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3862, !noalias !3852
  unreachable, !dbg !3862

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3863, !tbaa !2846, !alias.scope !3852, !DIAssignID !3864
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3793, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3864, metadata ptr %4, metadata !DIExpression()), !dbg !3849
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3865
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3866
  ret ptr %8, !dbg !3867
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3868 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3876
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3875, metadata !DIExpression(), metadata !3876, metadata ptr %4, metadata !DIExpression()), !dbg !3877
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3872, metadata !DIExpression()), !dbg !3877
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3873, metadata !DIExpression()), !dbg !3877
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3874, metadata !DIExpression()), !dbg !3877
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3879, !tbaa.struct !3880, !DIAssignID !3881
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3875, metadata !DIExpression(), metadata !3881, metadata ptr %4, metadata !DIExpression()), !dbg !3877
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2863, metadata !DIExpression()), !dbg !3882
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2864, metadata !DIExpression()), !dbg !3882
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2865, metadata !DIExpression()), !dbg !3882
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2866, metadata !DIExpression()), !dbg !3882
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3884
  %6 = lshr i8 %2, 5, !dbg !3885
  %7 = zext nneg i8 %6 to i64, !dbg !3885
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3886
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2867, metadata !DIExpression()), !dbg !3882
  %9 = and i8 %2, 31, !dbg !3887
  %10 = zext nneg i8 %9 to i32, !dbg !3887
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2869, metadata !DIExpression()), !dbg !3882
  %11 = load i32, ptr %8, align 4, !dbg !3888, !tbaa !1095
  %12 = lshr i32 %11, %10, !dbg !3889
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2870, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3882
  %13 = and i32 %12, 1, !dbg !3890
  %14 = xor i32 %13, 1, !dbg !3890
  %15 = shl nuw i32 %14, %10, !dbg !3891
  %16 = xor i32 %15, %11, !dbg !3892
  store i32 %16, ptr %8, align 4, !dbg !3892, !tbaa !1095
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3893
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3894
  ret ptr %17, !dbg !3895
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3896 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3902
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3900, metadata !DIExpression()), !dbg !3903
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3901, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3875, metadata !DIExpression(), metadata !3902, metadata ptr %3, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata ptr %0, metadata !3872, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i64 -1, metadata !3873, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i8 %1, metadata !3874, metadata !DIExpression()), !dbg !3904
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3906
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3907, !tbaa.struct !3880, !DIAssignID !3908
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3875, metadata !DIExpression(), metadata !3908, metadata ptr %3, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata ptr %3, metadata !2863, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i8 %1, metadata !2864, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i32 1, metadata !2865, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i8 %1, metadata !2866, metadata !DIExpression()), !dbg !3909
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3911
  %5 = lshr i8 %1, 5, !dbg !3912
  %6 = zext nneg i8 %5 to i64, !dbg !3912
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3913
  call void @llvm.dbg.value(metadata ptr %7, metadata !2867, metadata !DIExpression()), !dbg !3909
  %8 = and i8 %1, 31, !dbg !3914
  %9 = zext nneg i8 %8 to i32, !dbg !3914
  call void @llvm.dbg.value(metadata i32 %9, metadata !2869, metadata !DIExpression()), !dbg !3909
  %10 = load i32, ptr %7, align 4, !dbg !3915, !tbaa !1095
  %11 = lshr i32 %10, %9, !dbg !3916
  call void @llvm.dbg.value(metadata i32 %11, metadata !2870, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3909
  %12 = and i32 %11, 1, !dbg !3917
  %13 = xor i32 %12, 1, !dbg !3917
  %14 = shl nuw i32 %13, %9, !dbg !3918
  %15 = xor i32 %14, %10, !dbg !3919
  store i32 %15, ptr %7, align 4, !dbg !3919, !tbaa !1095
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3920
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3921
  ret ptr %16, !dbg !3922
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3923 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3926
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3925, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata ptr %0, metadata !3900, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i8 58, metadata !3901, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3875, metadata !DIExpression(), metadata !3926, metadata ptr %2, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata ptr %0, metadata !3872, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i64 -1, metadata !3873, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i8 58, metadata !3874, metadata !DIExpression()), !dbg !3930
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3933, !tbaa.struct !3880, !DIAssignID !3934
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3875, metadata !DIExpression(), metadata !3934, metadata ptr %2, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata ptr %2, metadata !2863, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i8 58, metadata !2864, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 1, metadata !2865, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i8 58, metadata !2866, metadata !DIExpression()), !dbg !3935
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3937
  call void @llvm.dbg.value(metadata ptr %3, metadata !2867, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32 26, metadata !2869, metadata !DIExpression()), !dbg !3935
  %4 = load i32, ptr %3, align 4, !dbg !3938, !tbaa !1095
  call void @llvm.dbg.value(metadata i32 %4, metadata !2870, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3935
  %5 = or i32 %4, 67108864, !dbg !3939
  store i32 %5, ptr %3, align 4, !dbg !3939, !tbaa !1095
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3940
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3941
  ret ptr %6, !dbg !3942
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3943 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3947
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3945, metadata !DIExpression()), !dbg !3948
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3946, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3875, metadata !DIExpression(), metadata !3947, metadata ptr %3, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata ptr %0, metadata !3872, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i64 %1, metadata !3873, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i8 58, metadata !3874, metadata !DIExpression()), !dbg !3949
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3952, !tbaa.struct !3880, !DIAssignID !3953
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3875, metadata !DIExpression(), metadata !3953, metadata ptr %3, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata ptr %3, metadata !2863, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i8 58, metadata !2864, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i32 1, metadata !2865, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i8 58, metadata !2866, metadata !DIExpression()), !dbg !3954
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3956
  call void @llvm.dbg.value(metadata ptr %4, metadata !2867, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i32 26, metadata !2869, metadata !DIExpression()), !dbg !3954
  %5 = load i32, ptr %4, align 4, !dbg !3957, !tbaa !1095
  call void @llvm.dbg.value(metadata i32 %5, metadata !2870, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3954
  %6 = or i32 %5, 67108864, !dbg !3958
  store i32 %6, ptr %4, align 4, !dbg !3958, !tbaa !1095
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3959
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3960
  ret ptr %7, !dbg !3961
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3962 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3968
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3967, metadata !DIExpression(), metadata !3968, metadata ptr %4, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3771, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3970
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3964, metadata !DIExpression()), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3965, metadata !DIExpression()), !dbg !3969
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3966, metadata !DIExpression()), !dbg !3969
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3972
  call void @llvm.dbg.value(metadata i32 %1, metadata !3766, metadata !DIExpression()), !dbg !3973
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3771, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3973
  %5 = icmp eq i32 %1, 10, !dbg !3974
  br i1 %5, label %6, label %7, !dbg !3975

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3976, !noalias !3977
  unreachable, !dbg !3976

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3771, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3973
  store i32 %1, ptr %4, align 8, !dbg !3980, !tbaa.struct !3880, !DIAssignID !3981
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3980
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3980
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3967, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3981, metadata ptr %4, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3967, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3982, metadata ptr %8, metadata !DIExpression()), !dbg !3969
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2863, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2864, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2865, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2866, metadata !DIExpression()), !dbg !3983
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3985
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2867, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2869, metadata !DIExpression()), !dbg !3983
  %10 = load i32, ptr %9, align 4, !dbg !3986, !tbaa !1095
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2870, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3983
  %11 = or i32 %10, 67108864, !dbg !3987
  store i32 %11, ptr %9, align 4, !dbg !3987, !tbaa !1095, !DIAssignID !3988
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3967, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3988, metadata ptr %9, metadata !DIExpression()), !dbg !3969
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3989
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3990
  ret ptr %12, !dbg !3991
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3992 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4000
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3996, metadata !DIExpression()), !dbg !4001
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3997, metadata !DIExpression()), !dbg !4001
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3998, metadata !DIExpression()), !dbg !4001
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3999, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4002, metadata !DIExpression(), metadata !4000, metadata ptr %5, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i32 %0, metadata !4007, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata ptr %1, metadata !4008, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata ptr %2, metadata !4009, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata ptr %3, metadata !4010, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i64 -1, metadata !4011, metadata !DIExpression()), !dbg !4012
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !4014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4015, !tbaa.struct !3880, !DIAssignID !4016
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4002, metadata !DIExpression(), metadata !4016, metadata ptr %5, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4002, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4017, metadata ptr undef, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata ptr %5, metadata !2903, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr %1, metadata !2904, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr %2, metadata !2905, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata ptr %5, metadata !2903, metadata !DIExpression()), !dbg !4018
  store i32 10, ptr %5, align 8, !dbg !4020, !tbaa !2846, !DIAssignID !4021
  call void @llvm.dbg.assign(metadata i32 10, metadata !4002, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4021, metadata ptr %5, metadata !DIExpression()), !dbg !4012
  %6 = icmp ne ptr %1, null, !dbg !4022
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4023
  br i1 %8, label %10, label %9, !dbg !4023

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !4024
  unreachable, !dbg !4024

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4025
  store ptr %1, ptr %11, align 8, !dbg !4026, !tbaa !2917, !DIAssignID !4027
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4002, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4027, metadata ptr %11, metadata !DIExpression()), !dbg !4012
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4028
  store ptr %2, ptr %12, align 8, !dbg !4029, !tbaa !2920, !DIAssignID !4030
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4002, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4030, metadata ptr %12, metadata !DIExpression()), !dbg !4012
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4031
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !4032
  ret ptr %13, !dbg !4033
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4003 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !4034
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4002, metadata !DIExpression(), metadata !4034, metadata ptr %6, metadata !DIExpression()), !dbg !4035
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4007, metadata !DIExpression()), !dbg !4035
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4008, metadata !DIExpression()), !dbg !4035
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4009, metadata !DIExpression()), !dbg !4035
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4010, metadata !DIExpression()), !dbg !4035
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !4011, metadata !DIExpression()), !dbg !4035
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !4036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4037, !tbaa.struct !3880, !DIAssignID !4038
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4002, metadata !DIExpression(), metadata !4038, metadata ptr %6, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4002, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4039, metadata ptr undef, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.value(metadata ptr %6, metadata !2903, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr %1, metadata !2904, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr %2, metadata !2905, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr %6, metadata !2903, metadata !DIExpression()), !dbg !4040
  store i32 10, ptr %6, align 8, !dbg !4042, !tbaa !2846, !DIAssignID !4043
  call void @llvm.dbg.assign(metadata i32 10, metadata !4002, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4043, metadata ptr %6, metadata !DIExpression()), !dbg !4035
  %7 = icmp ne ptr %1, null, !dbg !4044
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4045
  br i1 %9, label %11, label %10, !dbg !4045

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !4046
  unreachable, !dbg !4046

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4047
  store ptr %1, ptr %12, align 8, !dbg !4048, !tbaa !2917, !DIAssignID !4049
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4002, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4049, metadata ptr %12, metadata !DIExpression()), !dbg !4035
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4050
  store ptr %2, ptr %13, align 8, !dbg !4051, !tbaa !2920, !DIAssignID !4052
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4002, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4052, metadata ptr %13, metadata !DIExpression()), !dbg !4035
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4053
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !4054
  ret ptr %14, !dbg !4055
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4056 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4063
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4060, metadata !DIExpression()), !dbg !4064
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4061, metadata !DIExpression()), !dbg !4064
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4062, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 0, metadata !3996, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata ptr %0, metadata !3997, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata ptr %1, metadata !3998, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata ptr %2, metadata !3999, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4002, metadata !DIExpression(), metadata !4063, metadata ptr %4, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i32 0, metadata !4007, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata ptr %0, metadata !4008, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata ptr %1, metadata !4009, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata ptr %2, metadata !4010, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i64 -1, metadata !4011, metadata !DIExpression()), !dbg !4067
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !4069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4070, !tbaa.struct !3880, !DIAssignID !4071
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4002, metadata !DIExpression(), metadata !4071, metadata ptr %4, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4002, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4072, metadata ptr undef, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata ptr %4, metadata !2903, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr %0, metadata !2904, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr %1, metadata !2905, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr %4, metadata !2903, metadata !DIExpression()), !dbg !4073
  store i32 10, ptr %4, align 8, !dbg !4075, !tbaa !2846, !DIAssignID !4076
  call void @llvm.dbg.assign(metadata i32 10, metadata !4002, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4076, metadata ptr %4, metadata !DIExpression()), !dbg !4067
  %5 = icmp ne ptr %0, null, !dbg !4077
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4078
  br i1 %7, label %9, label %8, !dbg !4078

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !4079
  unreachable, !dbg !4079

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4080
  store ptr %0, ptr %10, align 8, !dbg !4081, !tbaa !2917, !DIAssignID !4082
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4002, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4082, metadata ptr %10, metadata !DIExpression()), !dbg !4067
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4083
  store ptr %1, ptr %11, align 8, !dbg !4084, !tbaa !2920, !DIAssignID !4085
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4002, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4085, metadata ptr %11, metadata !DIExpression()), !dbg !4067
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4086
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !4087
  ret ptr %12, !dbg !4088
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4089 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4097
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4093, metadata !DIExpression()), !dbg !4098
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4094, metadata !DIExpression()), !dbg !4098
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4095, metadata !DIExpression()), !dbg !4098
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4096, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4002, metadata !DIExpression(), metadata !4097, metadata ptr %5, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i32 0, metadata !4007, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata ptr %0, metadata !4008, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata ptr %1, metadata !4009, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata ptr %2, metadata !4010, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i64 %3, metadata !4011, metadata !DIExpression()), !dbg !4099
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !4101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4102, !tbaa.struct !3880, !DIAssignID !4103
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4002, metadata !DIExpression(), metadata !4103, metadata ptr %5, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4002, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4104, metadata ptr undef, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata ptr %5, metadata !2903, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata ptr %0, metadata !2904, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata ptr %1, metadata !2905, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata ptr %5, metadata !2903, metadata !DIExpression()), !dbg !4105
  store i32 10, ptr %5, align 8, !dbg !4107, !tbaa !2846, !DIAssignID !4108
  call void @llvm.dbg.assign(metadata i32 10, metadata !4002, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4108, metadata ptr %5, metadata !DIExpression()), !dbg !4099
  %6 = icmp ne ptr %0, null, !dbg !4109
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4110
  br i1 %8, label %10, label %9, !dbg !4110

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !4111
  unreachable, !dbg !4111

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4112
  store ptr %0, ptr %11, align 8, !dbg !4113, !tbaa !2917, !DIAssignID !4114
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4002, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4114, metadata ptr %11, metadata !DIExpression()), !dbg !4099
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4115
  store ptr %1, ptr %12, align 8, !dbg !4116, !tbaa !2920, !DIAssignID !4117
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4002, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4117, metadata ptr %12, metadata !DIExpression()), !dbg !4099
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4118
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !4119
  ret ptr %13, !dbg !4120
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4121 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4125, metadata !DIExpression()), !dbg !4128
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4126, metadata !DIExpression()), !dbg !4128
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4127, metadata !DIExpression()), !dbg !4128
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4129
  ret ptr %4, !dbg !4130
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4131 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4135, metadata !DIExpression()), !dbg !4137
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4136, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 0, metadata !4125, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata ptr %0, metadata !4126, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i64 %1, metadata !4127, metadata !DIExpression()), !dbg !4138
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4140
  ret ptr %3, !dbg !4141
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4142 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4146, metadata !DIExpression()), !dbg !4148
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4147, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i32 %0, metadata !4125, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata ptr %1, metadata !4126, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i64 -1, metadata !4127, metadata !DIExpression()), !dbg !4149
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4151
  ret ptr %3, !dbg !4152
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4153 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4155, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i32 0, metadata !4146, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata ptr %0, metadata !4147, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i32 0, metadata !4125, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata ptr %0, metadata !4126, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 -1, metadata !4127, metadata !DIExpression()), !dbg !4159
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4161
  ret ptr %2, !dbg !4162
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @strintcmp(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #23 !dbg !4163 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4165, metadata !DIExpression()), !dbg !4167
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4166, metadata !DIExpression()), !dbg !4167
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4168, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4174, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata i32 128, metadata !4175, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata i32 128, metadata !4176, metadata !DIExpression()), !dbg !4182
  %3 = load i8, ptr %0, align 1, !dbg !4184, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %3, metadata !4177, metadata !DIExpression()), !dbg !4182
  %4 = load i8, ptr %1, align 1, !dbg !4185, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %4, metadata !4178, metadata !DIExpression()), !dbg !4182
  %5 = icmp eq i8 %3, 45, !dbg !4186
  br i1 %5, label %6, label %93, !dbg !4188

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %2 ]
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4168, metadata !DIExpression()), !dbg !4182
  %8 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !4189
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !4168, metadata !DIExpression()), !dbg !4182
  %9 = load i8, ptr %8, align 1, !dbg !4191, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %9, metadata !4177, metadata !DIExpression()), !dbg !4182
  %10 = icmp eq i8 %9, 48, !dbg !4192
  br i1 %10, label %6, label %11, !dbg !4193, !llvm.loop !4194

11:                                               ; preds = %6
  %12 = icmp eq i8 %4, 45, !dbg !4197
  br i1 %12, label %30, label %13, !dbg !4199

13:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 %9, metadata !4177, metadata !DIExpression()), !dbg !4182
  %14 = sext i8 %9 to i32, !dbg !4200
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !4203, metadata !DIExpression()), !dbg !4207
  %15 = add nsw i32 %14, -48, !dbg !4209
  %16 = icmp ult i32 %15, 10, !dbg !4209
  br i1 %16, label %193, label %17, !dbg !4210

17:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 %4, metadata !4178, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4174, metadata !DIExpression()), !dbg !4182
  %18 = icmp eq i8 %4, 48, !dbg !4211
  br i1 %18, label %19, label %24, !dbg !4212

19:                                               ; preds = %17, %19
  %20 = phi ptr [ %21, %19 ], [ %1, %17 ]
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !4174, metadata !DIExpression()), !dbg !4182
  %21 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !4213
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !4174, metadata !DIExpression()), !dbg !4182
  %22 = load i8, ptr %21, align 1, !dbg !4214, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %22, metadata !4178, metadata !DIExpression()), !dbg !4182
  %23 = icmp eq i8 %22, 48, !dbg !4211
  br i1 %23, label %19, label %24, !dbg !4212, !llvm.loop !4215

24:                                               ; preds = %19, %17
  %25 = phi i8 [ %4, %17 ], [ %22, %19 ], !dbg !4182
  tail call void @llvm.dbg.value(metadata i8 %25, metadata !4178, metadata !DIExpression()), !dbg !4182
  %26 = sext i8 %25 to i32, !dbg !4217
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !4203, metadata !DIExpression()), !dbg !4218
  %27 = add nsw i32 %26, -48, !dbg !4220
  %28 = icmp ult i32 %27, 10, !dbg !4220
  %29 = sext i1 %28 to i32, !dbg !4221
  br label %193, !dbg !4222

30:                                               ; preds = %11, %30
  %31 = phi ptr [ %32, %30 ], [ %1, %11 ]
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !4174, metadata !DIExpression()), !dbg !4182
  %32 = getelementptr inbounds i8, ptr %31, i64 1, !dbg !4223
  tail call void @llvm.dbg.value(metadata ptr %32, metadata !4174, metadata !DIExpression()), !dbg !4182
  %33 = load i8, ptr %32, align 1, !dbg !4224, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %33, metadata !4178, metadata !DIExpression()), !dbg !4182
  %34 = icmp eq i8 %33, 48, !dbg !4225
  br i1 %34, label %30, label %35, !dbg !4226, !llvm.loop !4227

35:                                               ; preds = %30
  tail call void @llvm.dbg.value(metadata i8 %33, metadata !4178, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata i8 %9, metadata !4177, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !4168, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %32, metadata !4174, metadata !DIExpression()), !dbg !4182
  %36 = sext i8 %9 to i32, !dbg !4230
  %37 = icmp eq i8 %9, %33, !dbg !4231
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !4203, metadata !DIExpression()), !dbg !4232
  %38 = add nsw i32 %36, -48
  %39 = icmp ult i32 %38, 10
  %40 = select i1 %37, i1 %39, i1 false, !dbg !4234
  br i1 %40, label %41, label %53, !dbg !4234

41:                                               ; preds = %35, %41
  %42 = phi ptr [ %44, %41 ], [ %8, %35 ]
  %43 = phi ptr [ %46, %41 ], [ %32, %35 ]
  tail call void @llvm.dbg.value(metadata ptr %43, metadata !4174, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4168, metadata !DIExpression()), !dbg !4182
  %44 = getelementptr inbounds i8, ptr %42, i64 1, !dbg !4235
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !4168, metadata !DIExpression()), !dbg !4182
  %45 = load i8, ptr %44, align 1, !dbg !4237, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %45, metadata !4177, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %43, metadata !4174, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4182
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4178, metadata !DIExpression()), !dbg !4182
  %46 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !4238
  tail call void @llvm.dbg.value(metadata ptr %46, metadata !4174, metadata !DIExpression()), !dbg !4182
  %47 = load i8, ptr %46, align 1, !dbg !4239, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %47, metadata !4178, metadata !DIExpression()), !dbg !4182
  %48 = sext i8 %45 to i32, !dbg !4230
  %49 = icmp eq i8 %45, %47, !dbg !4231
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !4203, metadata !DIExpression()), !dbg !4232
  %50 = add nsw i32 %48, -48
  %51 = icmp ult i32 %50, 10
  %52 = select i1 %49, i1 %51, i1 false, !dbg !4234
  br i1 %52, label %41, label %53, !dbg !4234, !llvm.loop !4240

53:                                               ; preds = %41, %35
  %54 = phi i32 [ %38, %35 ], [ %50, %41 ], !dbg !4243
  %55 = phi ptr [ %32, %35 ], [ %46, %41 ], !dbg !4247
  %56 = phi ptr [ %8, %35 ], [ %44, %41 ], !dbg !4247
  %57 = phi i8 [ %33, %35 ], [ %47, %41 ], !dbg !4247
  %58 = phi i32 [ %36, %35 ], [ %48, %41 ], !dbg !4230
  %59 = sext i8 %57 to i32, !dbg !4248
  %60 = sub nsw i32 %59, %58, !dbg !4249
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !4179, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4180, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4177, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %56, metadata !4168, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !4203, metadata !DIExpression()), !dbg !4250
  %61 = icmp ult i32 %54, 10, !dbg !4243
  br i1 %61, label %66, label %62, !dbg !4251

62:                                               ; preds = %66, %53
  %63 = phi i64 [ 0, %53 ], [ %71, %66 ], !dbg !4252
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4181, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata i8 %57, metadata !4178, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !4174, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !4203, metadata !DIExpression()), !dbg !4253
  %64 = add nsw i32 %59, -48, !dbg !4257
  %65 = icmp ult i32 %64, 10, !dbg !4257
  br i1 %65, label %75, label %84, !dbg !4258

66:                                               ; preds = %53, %66
  %67 = phi i64 [ %71, %66 ], [ 0, %53 ]
  %68 = phi ptr [ %69, %66 ], [ %56, %53 ]
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !4180, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %68, metadata !4168, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4182
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4177, metadata !DIExpression()), !dbg !4182
  %69 = getelementptr inbounds i8, ptr %68, i64 1, !dbg !4259
  tail call void @llvm.dbg.value(metadata ptr %69, metadata !4168, metadata !DIExpression()), !dbg !4182
  %70 = load i8, ptr %69, align 1, !dbg !4260, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %70, metadata !4177, metadata !DIExpression()), !dbg !4182
  %71 = add i64 %67, 1, !dbg !4261
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !4180, metadata !DIExpression()), !dbg !4182
  %72 = sext i8 %70 to i32, !dbg !4262
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !4203, metadata !DIExpression()), !dbg !4250
  %73 = add nsw i32 %72, -48, !dbg !4243
  %74 = icmp ult i32 %73, 10, !dbg !4243
  br i1 %74, label %66, label %62, !dbg !4251, !llvm.loop !4263

75:                                               ; preds = %62, %75
  %76 = phi i64 [ %80, %75 ], [ 0, %62 ]
  %77 = phi ptr [ %78, %75 ], [ %55, %62 ]
  tail call void @llvm.dbg.value(metadata i64 %76, metadata !4181, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %77, metadata !4174, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4182
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4178, metadata !DIExpression()), !dbg !4182
  %78 = getelementptr inbounds i8, ptr %77, i64 1, !dbg !4265
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !4174, metadata !DIExpression()), !dbg !4182
  %79 = load i8, ptr %78, align 1, !dbg !4266, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %79, metadata !4178, metadata !DIExpression()), !dbg !4182
  %80 = add i64 %76, 1, !dbg !4267
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !4181, metadata !DIExpression()), !dbg !4182
  %81 = sext i8 %79 to i32, !dbg !4268
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !4203, metadata !DIExpression()), !dbg !4253
  %82 = add nsw i32 %81, -48, !dbg !4257
  %83 = icmp ult i32 %82, 10, !dbg !4257
  br i1 %83, label %75, label %84, !dbg !4258, !llvm.loop !4269

84:                                               ; preds = %75, %62
  %85 = phi i64 [ 0, %62 ], [ %80, %75 ], !dbg !4271
  %86 = icmp eq i64 %63, %85, !dbg !4272
  br i1 %86, label %90, label %87, !dbg !4274

87:                                               ; preds = %84
  %88 = icmp ult i64 %63, %85, !dbg !4275
  %89 = select i1 %88, i32 1, i32 -1, !dbg !4276
  br label %193, !dbg !4277

90:                                               ; preds = %84
  %91 = icmp eq i64 %63, 0, !dbg !4278
  %92 = select i1 %91, i32 0, i32 %60, !dbg !4247
  br label %193, !dbg !4247

93:                                               ; preds = %2
  %94 = icmp eq i8 %4, 45, !dbg !4280
  br i1 %94, label %97, label %95, !dbg !4282

95:                                               ; preds = %93
  tail call void @llvm.dbg.value(metadata i8 %3, metadata !4177, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4168, metadata !DIExpression()), !dbg !4182
  %96 = icmp eq i8 %3, 48, !dbg !4283
  br i1 %96, label %123, label %119, !dbg !4285

97:                                               ; preds = %93, %97
  %98 = phi ptr [ %99, %97 ], [ %1, %93 ]
  tail call void @llvm.dbg.value(metadata ptr %98, metadata !4174, metadata !DIExpression()), !dbg !4182
  %99 = getelementptr inbounds i8, ptr %98, i64 1, !dbg !4286
  tail call void @llvm.dbg.value(metadata ptr %99, metadata !4174, metadata !DIExpression()), !dbg !4182
  %100 = load i8, ptr %99, align 1, !dbg !4288, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !4178, metadata !DIExpression()), !dbg !4182
  %101 = icmp eq i8 %100, 48, !dbg !4289
  br i1 %101, label %97, label %102, !dbg !4290, !llvm.loop !4291

102:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !4178, metadata !DIExpression()), !dbg !4182
  %103 = sext i8 %100 to i32, !dbg !4294
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !4203, metadata !DIExpression()), !dbg !4296
  %104 = add nsw i32 %103, -48, !dbg !4298
  %105 = icmp ult i32 %104, 10, !dbg !4298
  br i1 %105, label %193, label %106, !dbg !4299

106:                                              ; preds = %102
  tail call void @llvm.dbg.value(metadata i8 %3, metadata !4177, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4168, metadata !DIExpression()), !dbg !4182
  %107 = icmp eq i8 %3, 48, !dbg !4300
  br i1 %107, label %108, label %113, !dbg !4301

108:                                              ; preds = %106, %108
  %109 = phi ptr [ %110, %108 ], [ %0, %106 ]
  tail call void @llvm.dbg.value(metadata ptr %109, metadata !4168, metadata !DIExpression()), !dbg !4182
  %110 = getelementptr inbounds i8, ptr %109, i64 1, !dbg !4302
  tail call void @llvm.dbg.value(metadata ptr %110, metadata !4168, metadata !DIExpression()), !dbg !4182
  %111 = load i8, ptr %110, align 1, !dbg !4303, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %111, metadata !4177, metadata !DIExpression()), !dbg !4182
  %112 = icmp eq i8 %111, 48, !dbg !4300
  br i1 %112, label %108, label %113, !dbg !4301, !llvm.loop !4304

113:                                              ; preds = %108, %106
  %114 = phi i8 [ %3, %106 ], [ %111, %108 ], !dbg !4182
  tail call void @llvm.dbg.value(metadata i8 %114, metadata !4177, metadata !DIExpression()), !dbg !4182
  %115 = sext i8 %114 to i32, !dbg !4306
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !4203, metadata !DIExpression()), !dbg !4307
  %116 = add nsw i32 %115, -48, !dbg !4309
  %117 = icmp ult i32 %116, 10, !dbg !4309
  %118 = zext i1 %117 to i32, !dbg !4310
  br label %193, !dbg !4311

119:                                              ; preds = %123, %95
  %120 = phi ptr [ %0, %95 ], [ %125, %123 ]
  %121 = phi i8 [ %3, %95 ], [ %126, %123 ], !dbg !4182
  tail call void @llvm.dbg.value(metadata i8 %4, metadata !4178, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4174, metadata !DIExpression()), !dbg !4182
  %122 = icmp eq i8 %4, 48, !dbg !4312
  br i1 %122, label %136, label %128, !dbg !4313

123:                                              ; preds = %95, %123
  %124 = phi ptr [ %125, %123 ], [ %0, %95 ]
  tail call void @llvm.dbg.value(metadata ptr %124, metadata !4168, metadata !DIExpression()), !dbg !4182
  %125 = getelementptr inbounds i8, ptr %124, i64 1, !dbg !4314
  tail call void @llvm.dbg.value(metadata ptr %125, metadata !4168, metadata !DIExpression()), !dbg !4182
  %126 = load i8, ptr %125, align 1, !dbg !4315, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %126, metadata !4177, metadata !DIExpression()), !dbg !4182
  %127 = icmp eq i8 %126, 48, !dbg !4283
  br i1 %127, label %123, label %119, !dbg !4285, !llvm.loop !4316

128:                                              ; preds = %136, %119
  %129 = phi ptr [ %1, %119 ], [ %138, %136 ]
  %130 = phi i8 [ %4, %119 ], [ %139, %136 ], !dbg !4182
  tail call void @llvm.dbg.value(metadata i8 %130, metadata !4178, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !4177, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %120, metadata !4168, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %129, metadata !4174, metadata !DIExpression()), !dbg !4182
  %131 = sext i8 %121 to i32, !dbg !4318
  %132 = icmp eq i8 %121, %130, !dbg !4319
  tail call void @llvm.dbg.value(metadata i32 %131, metadata !4203, metadata !DIExpression()), !dbg !4320
  %133 = add nsw i32 %131, -48
  %134 = icmp ult i32 %133, 10
  %135 = select i1 %132, i1 %134, i1 false, !dbg !4322
  br i1 %135, label %141, label %153, !dbg !4322

136:                                              ; preds = %119, %136
  %137 = phi ptr [ %138, %136 ], [ %1, %119 ]
  tail call void @llvm.dbg.value(metadata ptr %137, metadata !4174, metadata !DIExpression()), !dbg !4182
  %138 = getelementptr inbounds i8, ptr %137, i64 1, !dbg !4323
  tail call void @llvm.dbg.value(metadata ptr %138, metadata !4174, metadata !DIExpression()), !dbg !4182
  %139 = load i8, ptr %138, align 1, !dbg !4324, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %139, metadata !4178, metadata !DIExpression()), !dbg !4182
  %140 = icmp eq i8 %139, 48, !dbg !4312
  br i1 %140, label %136, label %128, !dbg !4313, !llvm.loop !4325

141:                                              ; preds = %128, %141
  %142 = phi ptr [ %144, %141 ], [ %120, %128 ]
  %143 = phi ptr [ %146, %141 ], [ %129, %128 ]
  tail call void @llvm.dbg.value(metadata ptr %143, metadata !4174, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %142, metadata !4168, metadata !DIExpression()), !dbg !4182
  %144 = getelementptr inbounds i8, ptr %142, i64 1, !dbg !4327
  tail call void @llvm.dbg.value(metadata ptr %144, metadata !4168, metadata !DIExpression()), !dbg !4182
  %145 = load i8, ptr %144, align 1, !dbg !4329, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %145, metadata !4177, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %143, metadata !4174, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4182
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4178, metadata !DIExpression()), !dbg !4182
  %146 = getelementptr inbounds i8, ptr %143, i64 1, !dbg !4330
  tail call void @llvm.dbg.value(metadata ptr %146, metadata !4174, metadata !DIExpression()), !dbg !4182
  %147 = load i8, ptr %146, align 1, !dbg !4331, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %147, metadata !4178, metadata !DIExpression()), !dbg !4182
  %148 = sext i8 %145 to i32, !dbg !4318
  %149 = icmp eq i8 %145, %147, !dbg !4319
  tail call void @llvm.dbg.value(metadata i32 %148, metadata !4203, metadata !DIExpression()), !dbg !4320
  %150 = add nsw i32 %148, -48
  %151 = icmp ult i32 %150, 10
  %152 = select i1 %149, i1 %151, i1 false, !dbg !4322
  br i1 %152, label %141, label %153, !dbg !4322, !llvm.loop !4332

153:                                              ; preds = %141, %128
  %154 = phi i32 [ %133, %128 ], [ %150, %141 ], !dbg !4335
  %155 = phi ptr [ %129, %128 ], [ %146, %141 ]
  %156 = phi ptr [ %120, %128 ], [ %144, %141 ]
  %157 = phi i8 [ %130, %128 ], [ %147, %141 ], !dbg !4182
  %158 = phi i32 [ %131, %128 ], [ %148, %141 ], !dbg !4318
  %159 = sext i8 %157 to i32, !dbg !4339
  %160 = sub nsw i32 %158, %159, !dbg !4340
  tail call void @llvm.dbg.value(metadata i32 %160, metadata !4179, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4180, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4177, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %156, metadata !4168, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !4203, metadata !DIExpression()), !dbg !4341
  %161 = icmp ult i32 %154, 10, !dbg !4335
  br i1 %161, label %166, label %162, !dbg !4342

162:                                              ; preds = %166, %153
  %163 = phi i64 [ 0, %153 ], [ %171, %166 ], !dbg !4343
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4181, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata i8 %157, metadata !4178, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %155, metadata !4174, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata i32 %159, metadata !4203, metadata !DIExpression()), !dbg !4344
  %164 = add nsw i32 %159, -48, !dbg !4348
  %165 = icmp ult i32 %164, 10, !dbg !4348
  br i1 %165, label %175, label %184, !dbg !4349

166:                                              ; preds = %153, %166
  %167 = phi i64 [ %171, %166 ], [ 0, %153 ]
  %168 = phi ptr [ %169, %166 ], [ %156, %153 ]
  tail call void @llvm.dbg.value(metadata i64 %167, metadata !4180, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %168, metadata !4168, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4182
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4177, metadata !DIExpression()), !dbg !4182
  %169 = getelementptr inbounds i8, ptr %168, i64 1, !dbg !4350
  tail call void @llvm.dbg.value(metadata ptr %169, metadata !4168, metadata !DIExpression()), !dbg !4182
  %170 = load i8, ptr %169, align 1, !dbg !4351, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %170, metadata !4177, metadata !DIExpression()), !dbg !4182
  %171 = add i64 %167, 1, !dbg !4352
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !4180, metadata !DIExpression()), !dbg !4182
  %172 = sext i8 %170 to i32, !dbg !4353
  tail call void @llvm.dbg.value(metadata i32 %172, metadata !4203, metadata !DIExpression()), !dbg !4341
  %173 = add nsw i32 %172, -48, !dbg !4335
  %174 = icmp ult i32 %173, 10, !dbg !4335
  br i1 %174, label %166, label %162, !dbg !4342, !llvm.loop !4354

175:                                              ; preds = %162, %175
  %176 = phi i64 [ %180, %175 ], [ 0, %162 ]
  %177 = phi ptr [ %178, %175 ], [ %155, %162 ]
  tail call void @llvm.dbg.value(metadata i64 %176, metadata !4181, metadata !DIExpression()), !dbg !4182
  tail call void @llvm.dbg.value(metadata ptr %177, metadata !4174, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4182
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4178, metadata !DIExpression()), !dbg !4182
  %178 = getelementptr inbounds i8, ptr %177, i64 1, !dbg !4356
  tail call void @llvm.dbg.value(metadata ptr %178, metadata !4174, metadata !DIExpression()), !dbg !4182
  %179 = load i8, ptr %178, align 1, !dbg !4357, !tbaa !1104
  tail call void @llvm.dbg.value(metadata i8 %179, metadata !4178, metadata !DIExpression()), !dbg !4182
  %180 = add i64 %176, 1, !dbg !4358
  tail call void @llvm.dbg.value(metadata i64 %180, metadata !4181, metadata !DIExpression()), !dbg !4182
  %181 = sext i8 %179 to i32, !dbg !4359
  tail call void @llvm.dbg.value(metadata i32 %181, metadata !4203, metadata !DIExpression()), !dbg !4344
  %182 = add nsw i32 %181, -48, !dbg !4348
  %183 = icmp ult i32 %182, 10, !dbg !4348
  br i1 %183, label %175, label %184, !dbg !4349, !llvm.loop !4360

184:                                              ; preds = %175, %162
  %185 = phi i64 [ 0, %162 ], [ %180, %175 ], !dbg !4362
  %186 = icmp eq i64 %163, %185, !dbg !4363
  br i1 %186, label %190, label %187, !dbg !4365

187:                                              ; preds = %184
  %188 = icmp ult i64 %163, %185, !dbg !4366
  %189 = select i1 %188, i32 -1, i32 1, !dbg !4367
  br label %193, !dbg !4368

190:                                              ; preds = %184
  %191 = icmp eq i64 %163, 0, !dbg !4369
  %192 = select i1 %191, i32 0, i32 %160, !dbg !4371
  br label %193, !dbg !4371

193:                                              ; preds = %13, %24, %87, %90, %102, %113, %187, %190
  %194 = phi i32 [ %29, %24 ], [ %89, %87 ], [ %118, %113 ], [ %189, %187 ], [ -1, %13 ], [ %92, %90 ], [ 1, %102 ], [ %192, %190 ], !dbg !4372
  ret i32 %194, !dbg !4373
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4374 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4413, metadata !DIExpression()), !dbg !4419
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4414, metadata !DIExpression()), !dbg !4419
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4415, metadata !DIExpression()), !dbg !4419
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4416, metadata !DIExpression()), !dbg !4419
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4417, metadata !DIExpression()), !dbg !4419
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4418, metadata !DIExpression()), !dbg !4419
  %7 = icmp eq ptr %1, null, !dbg !4420
  br i1 %7, label %10, label %8, !dbg !4422

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.147, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !4423
  br label %12, !dbg !4423

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.148, ptr noundef %2, ptr noundef %3) #40, !dbg !4424
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.3.150, i32 noundef 5) #40, !dbg !4425
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !4425
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.151, ptr noundef %0), !dbg !4426
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.5.152, i32 noundef 5) #40, !dbg !4427
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.153) #40, !dbg !4427
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.151, ptr noundef %0), !dbg !4428
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
  ], !dbg !4429

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.7.154, i32 noundef 5) #40, !dbg !4430
  %21 = load ptr, ptr %4, align 8, !dbg !4430, !tbaa !994
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !4430
  br label %147, !dbg !4432

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.8.155, i32 noundef 5) #40, !dbg !4433
  %25 = load ptr, ptr %4, align 8, !dbg !4433, !tbaa !994
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4433
  %27 = load ptr, ptr %26, align 8, !dbg !4433, !tbaa !994
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !4433
  br label %147, !dbg !4434

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.9.156, i32 noundef 5) #40, !dbg !4435
  %31 = load ptr, ptr %4, align 8, !dbg !4435, !tbaa !994
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4435
  %33 = load ptr, ptr %32, align 8, !dbg !4435, !tbaa !994
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4435
  %35 = load ptr, ptr %34, align 8, !dbg !4435, !tbaa !994
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !4435
  br label %147, !dbg !4436

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.10.157, i32 noundef 5) #40, !dbg !4437
  %39 = load ptr, ptr %4, align 8, !dbg !4437, !tbaa !994
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4437
  %41 = load ptr, ptr %40, align 8, !dbg !4437, !tbaa !994
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4437
  %43 = load ptr, ptr %42, align 8, !dbg !4437, !tbaa !994
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4437
  %45 = load ptr, ptr %44, align 8, !dbg !4437, !tbaa !994
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !4437
  br label %147, !dbg !4438

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.11.158, i32 noundef 5) #40, !dbg !4439
  %49 = load ptr, ptr %4, align 8, !dbg !4439, !tbaa !994
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4439
  %51 = load ptr, ptr %50, align 8, !dbg !4439, !tbaa !994
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4439
  %53 = load ptr, ptr %52, align 8, !dbg !4439, !tbaa !994
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4439
  %55 = load ptr, ptr %54, align 8, !dbg !4439, !tbaa !994
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4439
  %57 = load ptr, ptr %56, align 8, !dbg !4439, !tbaa !994
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !4439
  br label %147, !dbg !4440

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.12.159, i32 noundef 5) #40, !dbg !4441
  %61 = load ptr, ptr %4, align 8, !dbg !4441, !tbaa !994
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4441
  %63 = load ptr, ptr %62, align 8, !dbg !4441, !tbaa !994
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4441
  %65 = load ptr, ptr %64, align 8, !dbg !4441, !tbaa !994
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4441
  %67 = load ptr, ptr %66, align 8, !dbg !4441, !tbaa !994
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4441
  %69 = load ptr, ptr %68, align 8, !dbg !4441, !tbaa !994
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4441
  %71 = load ptr, ptr %70, align 8, !dbg !4441, !tbaa !994
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !4441
  br label %147, !dbg !4442

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.13.160, i32 noundef 5) #40, !dbg !4443
  %75 = load ptr, ptr %4, align 8, !dbg !4443, !tbaa !994
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4443
  %77 = load ptr, ptr %76, align 8, !dbg !4443, !tbaa !994
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4443
  %79 = load ptr, ptr %78, align 8, !dbg !4443, !tbaa !994
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4443
  %81 = load ptr, ptr %80, align 8, !dbg !4443, !tbaa !994
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4443
  %83 = load ptr, ptr %82, align 8, !dbg !4443, !tbaa !994
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4443
  %85 = load ptr, ptr %84, align 8, !dbg !4443, !tbaa !994
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4443
  %87 = load ptr, ptr %86, align 8, !dbg !4443, !tbaa !994
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !4443
  br label %147, !dbg !4444

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.14.161, i32 noundef 5) #40, !dbg !4445
  %91 = load ptr, ptr %4, align 8, !dbg !4445, !tbaa !994
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4445
  %93 = load ptr, ptr %92, align 8, !dbg !4445, !tbaa !994
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4445
  %95 = load ptr, ptr %94, align 8, !dbg !4445, !tbaa !994
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4445
  %97 = load ptr, ptr %96, align 8, !dbg !4445, !tbaa !994
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4445
  %99 = load ptr, ptr %98, align 8, !dbg !4445, !tbaa !994
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4445
  %101 = load ptr, ptr %100, align 8, !dbg !4445, !tbaa !994
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4445
  %103 = load ptr, ptr %102, align 8, !dbg !4445, !tbaa !994
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4445
  %105 = load ptr, ptr %104, align 8, !dbg !4445, !tbaa !994
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !4445
  br label %147, !dbg !4446

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.15.162, i32 noundef 5) #40, !dbg !4447
  %109 = load ptr, ptr %4, align 8, !dbg !4447, !tbaa !994
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4447
  %111 = load ptr, ptr %110, align 8, !dbg !4447, !tbaa !994
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4447
  %113 = load ptr, ptr %112, align 8, !dbg !4447, !tbaa !994
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4447
  %115 = load ptr, ptr %114, align 8, !dbg !4447, !tbaa !994
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4447
  %117 = load ptr, ptr %116, align 8, !dbg !4447, !tbaa !994
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4447
  %119 = load ptr, ptr %118, align 8, !dbg !4447, !tbaa !994
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4447
  %121 = load ptr, ptr %120, align 8, !dbg !4447, !tbaa !994
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4447
  %123 = load ptr, ptr %122, align 8, !dbg !4447, !tbaa !994
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4447
  %125 = load ptr, ptr %124, align 8, !dbg !4447, !tbaa !994
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !4447
  br label %147, !dbg !4448

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.16.163, i32 noundef 5) #40, !dbg !4449
  %129 = load ptr, ptr %4, align 8, !dbg !4449, !tbaa !994
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4449
  %131 = load ptr, ptr %130, align 8, !dbg !4449, !tbaa !994
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4449
  %133 = load ptr, ptr %132, align 8, !dbg !4449, !tbaa !994
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4449
  %135 = load ptr, ptr %134, align 8, !dbg !4449, !tbaa !994
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4449
  %137 = load ptr, ptr %136, align 8, !dbg !4449, !tbaa !994
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4449
  %139 = load ptr, ptr %138, align 8, !dbg !4449, !tbaa !994
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4449
  %141 = load ptr, ptr %140, align 8, !dbg !4449, !tbaa !994
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4449
  %143 = load ptr, ptr %142, align 8, !dbg !4449, !tbaa !994
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4449
  %145 = load ptr, ptr %144, align 8, !dbg !4449, !tbaa !994
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !4449
  br label %147, !dbg !4450

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4451
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4452 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4456, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4457, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4458, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4459, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4460, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4461, metadata !DIExpression()), !dbg !4462
  br label %6, !dbg !4463

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4465
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4461, metadata !DIExpression()), !dbg !4462
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4466
  %9 = load ptr, ptr %8, align 8, !dbg !4466, !tbaa !994
  %10 = icmp eq ptr %9, null, !dbg !4468
  %11 = add i64 %7, 1, !dbg !4469
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4461, metadata !DIExpression()), !dbg !4462
  br i1 %10, label %12, label %6, !dbg !4468, !llvm.loop !4470

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4472
  ret void, !dbg !4473
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4474 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !4493
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4491, metadata !DIExpression(), metadata !4493, metadata ptr %6, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4485, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4486, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4487, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4488, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4489, metadata !DIExpression()), !dbg !4494
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !4495
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4490, metadata !DIExpression()), !dbg !4494
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4490, metadata !DIExpression()), !dbg !4494
  %10 = icmp ult i32 %9, 41, !dbg !4496
  br i1 %10, label %11, label %16, !dbg !4496

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4496
  %13 = zext nneg i32 %9 to i64, !dbg !4496
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4496
  %15 = add nuw nsw i32 %9, 8, !dbg !4496
  store i32 %15, ptr %4, align 8, !dbg !4496
  br label %19, !dbg !4496

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4496
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4496
  store ptr %18, ptr %7, align 8, !dbg !4496
  br label %19, !dbg !4496

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4496
  %22 = load ptr, ptr %21, align 8, !dbg !4496
  store ptr %22, ptr %6, align 16, !dbg !4499, !tbaa !994
  %23 = icmp eq ptr %22, null, !dbg !4500
  br i1 %23, label %128, label %24, !dbg !4501

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4490, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4490, metadata !DIExpression()), !dbg !4494
  %25 = icmp ult i32 %20, 41, !dbg !4496
  br i1 %25, label %29, label %26, !dbg !4496

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4496
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4496
  store ptr %28, ptr %7, align 8, !dbg !4496
  br label %34, !dbg !4496

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4496
  %31 = zext nneg i32 %20 to i64, !dbg !4496
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4496
  %33 = add nuw nsw i32 %20, 8, !dbg !4496
  store i32 %33, ptr %4, align 8, !dbg !4496
  br label %34, !dbg !4496

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4496
  %37 = load ptr, ptr %36, align 8, !dbg !4496
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4502
  store ptr %37, ptr %38, align 8, !dbg !4499, !tbaa !994
  %39 = icmp eq ptr %37, null, !dbg !4500
  br i1 %39, label %128, label %40, !dbg !4501

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4490, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4490, metadata !DIExpression()), !dbg !4494
  %41 = icmp ult i32 %35, 41, !dbg !4496
  br i1 %41, label %45, label %42, !dbg !4496

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4496
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4496
  store ptr %44, ptr %7, align 8, !dbg !4496
  br label %50, !dbg !4496

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4496
  %47 = zext nneg i32 %35 to i64, !dbg !4496
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4496
  %49 = add nuw nsw i32 %35, 8, !dbg !4496
  store i32 %49, ptr %4, align 8, !dbg !4496
  br label %50, !dbg !4496

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4496
  %53 = load ptr, ptr %52, align 8, !dbg !4496
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4502
  store ptr %53, ptr %54, align 16, !dbg !4499, !tbaa !994
  %55 = icmp eq ptr %53, null, !dbg !4500
  br i1 %55, label %128, label %56, !dbg !4501

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4490, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4490, metadata !DIExpression()), !dbg !4494
  %57 = icmp ult i32 %51, 41, !dbg !4496
  br i1 %57, label %61, label %58, !dbg !4496

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4496
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4496
  store ptr %60, ptr %7, align 8, !dbg !4496
  br label %66, !dbg !4496

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4496
  %63 = zext nneg i32 %51 to i64, !dbg !4496
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4496
  %65 = add nuw nsw i32 %51, 8, !dbg !4496
  store i32 %65, ptr %4, align 8, !dbg !4496
  br label %66, !dbg !4496

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4496
  %69 = load ptr, ptr %68, align 8, !dbg !4496
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4502
  store ptr %69, ptr %70, align 8, !dbg !4499, !tbaa !994
  %71 = icmp eq ptr %69, null, !dbg !4500
  br i1 %71, label %128, label %72, !dbg !4501

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4490, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4490, metadata !DIExpression()), !dbg !4494
  %73 = icmp ult i32 %67, 41, !dbg !4496
  br i1 %73, label %77, label %74, !dbg !4496

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4496
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4496
  store ptr %76, ptr %7, align 8, !dbg !4496
  br label %82, !dbg !4496

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4496
  %79 = zext nneg i32 %67 to i64, !dbg !4496
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4496
  %81 = add nuw nsw i32 %67, 8, !dbg !4496
  store i32 %81, ptr %4, align 8, !dbg !4496
  br label %82, !dbg !4496

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4496
  %85 = load ptr, ptr %84, align 8, !dbg !4496
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4502
  store ptr %85, ptr %86, align 16, !dbg !4499, !tbaa !994
  %87 = icmp eq ptr %85, null, !dbg !4500
  br i1 %87, label %128, label %88, !dbg !4501

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4490, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4490, metadata !DIExpression()), !dbg !4494
  %89 = icmp ult i32 %83, 41, !dbg !4496
  br i1 %89, label %93, label %90, !dbg !4496

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4496
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4496
  store ptr %92, ptr %7, align 8, !dbg !4496
  br label %98, !dbg !4496

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4496
  %95 = zext nneg i32 %83 to i64, !dbg !4496
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4496
  %97 = add nuw nsw i32 %83, 8, !dbg !4496
  store i32 %97, ptr %4, align 8, !dbg !4496
  br label %98, !dbg !4496

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4496
  %100 = load ptr, ptr %99, align 8, !dbg !4496
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4502
  store ptr %100, ptr %101, align 8, !dbg !4499, !tbaa !994
  %102 = icmp eq ptr %100, null, !dbg !4500
  br i1 %102, label %128, label %103, !dbg !4501

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4490, metadata !DIExpression()), !dbg !4494
  %104 = load ptr, ptr %7, align 8, !dbg !4496
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4496
  store ptr %105, ptr %7, align 8, !dbg !4496
  %106 = load ptr, ptr %104, align 8, !dbg !4496
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4502
  store ptr %106, ptr %107, align 16, !dbg !4499, !tbaa !994
  %108 = icmp eq ptr %106, null, !dbg !4500
  br i1 %108, label %128, label %109, !dbg !4501

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4490, metadata !DIExpression()), !dbg !4494
  %110 = load ptr, ptr %7, align 8, !dbg !4496
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4496
  store ptr %111, ptr %7, align 8, !dbg !4496
  %112 = load ptr, ptr %110, align 8, !dbg !4496
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4502
  store ptr %112, ptr %113, align 8, !dbg !4499, !tbaa !994
  %114 = icmp eq ptr %112, null, !dbg !4500
  br i1 %114, label %128, label %115, !dbg !4501

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4490, metadata !DIExpression()), !dbg !4494
  %116 = load ptr, ptr %7, align 8, !dbg !4496
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4496
  store ptr %117, ptr %7, align 8, !dbg !4496
  %118 = load ptr, ptr %116, align 8, !dbg !4496
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4502
  store ptr %118, ptr %119, align 16, !dbg !4499, !tbaa !994
  %120 = icmp eq ptr %118, null, !dbg !4500
  br i1 %120, label %128, label %121, !dbg !4501

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4490, metadata !DIExpression()), !dbg !4494
  %122 = load ptr, ptr %7, align 8, !dbg !4496
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4496
  store ptr %123, ptr %7, align 8, !dbg !4496
  %124 = load ptr, ptr %122, align 8, !dbg !4496
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4502
  store ptr %124, ptr %125, align 8, !dbg !4499, !tbaa !994
  %126 = icmp eq ptr %124, null, !dbg !4500
  %127 = select i1 %126, i64 9, i64 10, !dbg !4501
  br label %128, !dbg !4501

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4503
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4504
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !4505
  ret void, !dbg !4505
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4506 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4519
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4514, metadata !DIExpression(), metadata !4519, metadata ptr %5, metadata !DIExpression()), !dbg !4520
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4510, metadata !DIExpression()), !dbg !4520
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4511, metadata !DIExpression()), !dbg !4520
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4512, metadata !DIExpression()), !dbg !4520
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4513, metadata !DIExpression()), !dbg !4520
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #40, !dbg !4521
  call void @llvm.va_start(ptr nonnull %5), !dbg !4522
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4523
  call void @llvm.va_end(ptr nonnull %5), !dbg !4524
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #40, !dbg !4525
  ret void, !dbg !4525
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4526 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4527, !tbaa !994
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.151, ptr noundef %1), !dbg !4527
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.17.168, i32 noundef 5) #40, !dbg !4528
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.169) #40, !dbg !4528
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.19.170, i32 noundef 5) #40, !dbg !4529
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.171, ptr noundef nonnull @.str.21.172) #40, !dbg !4529
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.149, ptr noundef nonnull @.str.22.173, i32 noundef 5) #40, !dbg !4530
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.174) #40, !dbg !4530
  ret void, !dbg !4531
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4532 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4537, metadata !DIExpression()), !dbg !4540
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4538, metadata !DIExpression()), !dbg !4540
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4539, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata ptr %0, metadata !4541, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i64 %1, metadata !4544, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i64 %2, metadata !4545, metadata !DIExpression()), !dbg !4546
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4548
  call void @llvm.dbg.value(metadata ptr %4, metadata !4549, metadata !DIExpression()), !dbg !4554
  %5 = icmp eq ptr %4, null, !dbg !4556
  br i1 %5, label %6, label %7, !dbg !4558

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4559
  unreachable, !dbg !4559

7:                                                ; preds = %3
  ret ptr %4, !dbg !4560
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4542 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4541, metadata !DIExpression()), !dbg !4561
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4544, metadata !DIExpression()), !dbg !4561
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4545, metadata !DIExpression()), !dbg !4561
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4562
  call void @llvm.dbg.value(metadata ptr %4, metadata !4549, metadata !DIExpression()), !dbg !4563
  %5 = icmp eq ptr %4, null, !dbg !4565
  br i1 %5, label %6, label %7, !dbg !4566

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4567
  unreachable, !dbg !4567

7:                                                ; preds = %3
  ret ptr %4, !dbg !4568
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4569 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4573, metadata !DIExpression()), !dbg !4574
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4575
  call void @llvm.dbg.value(metadata ptr %2, metadata !4549, metadata !DIExpression()), !dbg !4576
  %3 = icmp eq ptr %2, null, !dbg !4578
  br i1 %3, label %4, label %5, !dbg !4579

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4580
  unreachable, !dbg !4580

5:                                                ; preds = %1
  ret ptr %2, !dbg !4581
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4582 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4583 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4587, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata i64 %0, metadata !4589, metadata !DIExpression()), !dbg !4593
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4595
  call void @llvm.dbg.value(metadata ptr %2, metadata !4549, metadata !DIExpression()), !dbg !4596
  %3 = icmp eq ptr %2, null, !dbg !4598
  br i1 %3, label %4, label %5, !dbg !4599

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4600
  unreachable, !dbg !4600

5:                                                ; preds = %1
  ret ptr %2, !dbg !4601
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4602 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4606, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata i64 %0, metadata !4573, metadata !DIExpression()), !dbg !4608
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4610
  call void @llvm.dbg.value(metadata ptr %2, metadata !4549, metadata !DIExpression()), !dbg !4611
  %3 = icmp eq ptr %2, null, !dbg !4613
  br i1 %3, label %4, label %5, !dbg !4614

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4615
  unreachable, !dbg !4615

5:                                                ; preds = %1
  ret ptr %2, !dbg !4616
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4617 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4621, metadata !DIExpression()), !dbg !4623
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4622, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata ptr %0, metadata !4624, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 %1, metadata !4628, metadata !DIExpression()), !dbg !4629
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4631
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4632
  call void @llvm.dbg.value(metadata ptr %4, metadata !4549, metadata !DIExpression()), !dbg !4633
  %5 = icmp eq ptr %4, null, !dbg !4635
  br i1 %5, label %6, label %7, !dbg !4636

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4637
  unreachable, !dbg !4637

7:                                                ; preds = %2
  ret ptr %4, !dbg !4638
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4639 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4640 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4644, metadata !DIExpression()), !dbg !4646
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4645, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata ptr %0, metadata !4647, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.value(metadata i64 %1, metadata !4650, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.value(metadata ptr %0, metadata !4624, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.value(metadata i64 %1, metadata !4628, metadata !DIExpression()), !dbg !4653
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4655
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4656
  call void @llvm.dbg.value(metadata ptr %4, metadata !4549, metadata !DIExpression()), !dbg !4657
  %5 = icmp eq ptr %4, null, !dbg !4659
  br i1 %5, label %6, label %7, !dbg !4660

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4661
  unreachable, !dbg !4661

7:                                                ; preds = %2
  ret ptr %4, !dbg !4662
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4663 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4667, metadata !DIExpression()), !dbg !4670
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4668, metadata !DIExpression()), !dbg !4670
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4669, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.value(metadata ptr %0, metadata !4671, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.value(metadata i64 %1, metadata !4674, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.value(metadata i64 %2, metadata !4675, metadata !DIExpression()), !dbg !4676
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4678
  call void @llvm.dbg.value(metadata ptr %4, metadata !4549, metadata !DIExpression()), !dbg !4679
  %5 = icmp eq ptr %4, null, !dbg !4681
  br i1 %5, label %6, label %7, !dbg !4682

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4683
  unreachable, !dbg !4683

7:                                                ; preds = %3
  ret ptr %4, !dbg !4684
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4685 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4689, metadata !DIExpression()), !dbg !4691
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4690, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata ptr null, metadata !4541, metadata !DIExpression()), !dbg !4692
  call void @llvm.dbg.value(metadata i64 %0, metadata !4544, metadata !DIExpression()), !dbg !4692
  call void @llvm.dbg.value(metadata i64 %1, metadata !4545, metadata !DIExpression()), !dbg !4692
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4694
  call void @llvm.dbg.value(metadata ptr %3, metadata !4549, metadata !DIExpression()), !dbg !4695
  %4 = icmp eq ptr %3, null, !dbg !4697
  br i1 %4, label %5, label %6, !dbg !4698

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4699
  unreachable, !dbg !4699

6:                                                ; preds = %2
  ret ptr %3, !dbg !4700
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4701 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4705, metadata !DIExpression()), !dbg !4707
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4706, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata ptr null, metadata !4667, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.value(metadata i64 %0, metadata !4668, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.value(metadata i64 %1, metadata !4669, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.value(metadata ptr null, metadata !4671, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i64 %0, metadata !4674, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i64 %1, metadata !4675, metadata !DIExpression()), !dbg !4710
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4712
  call void @llvm.dbg.value(metadata ptr %3, metadata !4549, metadata !DIExpression()), !dbg !4713
  %4 = icmp eq ptr %3, null, !dbg !4715
  br i1 %4, label %5, label %6, !dbg !4716

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4717
  unreachable, !dbg !4717

6:                                                ; preds = %2
  ret ptr %3, !dbg !4718
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4719 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4723, metadata !DIExpression()), !dbg !4725
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4724, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata ptr %0, metadata !929, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata ptr %1, metadata !930, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata i64 1, metadata !931, metadata !DIExpression()), !dbg !4726
  %3 = load i64, ptr %1, align 8, !dbg !4728, !tbaa !1603
  call void @llvm.dbg.value(metadata i64 %3, metadata !932, metadata !DIExpression()), !dbg !4726
  %4 = icmp eq ptr %0, null, !dbg !4729
  br i1 %4, label %5, label %8, !dbg !4731

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4732
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4735
  br label %15, !dbg !4735

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4736
  %10 = add nuw i64 %9, 1, !dbg !4736
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4736
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4736
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4736
  call void @llvm.dbg.value(metadata i64 %13, metadata !932, metadata !DIExpression()), !dbg !4726
  br i1 %12, label %14, label %15, !dbg !4739

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4740
  unreachable, !dbg !4740

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4726
  call void @llvm.dbg.value(metadata i64 %16, metadata !932, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata ptr %0, metadata !4541, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i64 %16, metadata !4544, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i64 1, metadata !4545, metadata !DIExpression()), !dbg !4741
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4743
  call void @llvm.dbg.value(metadata ptr %17, metadata !4549, metadata !DIExpression()), !dbg !4744
  %18 = icmp eq ptr %17, null, !dbg !4746
  br i1 %18, label %19, label %20, !dbg !4747

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4748
  unreachable, !dbg !4748

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !929, metadata !DIExpression()), !dbg !4726
  store i64 %16, ptr %1, align 8, !dbg !4749, !tbaa !1603
  ret ptr %17, !dbg !4750
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !924 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !929, metadata !DIExpression()), !dbg !4751
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !930, metadata !DIExpression()), !dbg !4751
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !931, metadata !DIExpression()), !dbg !4751
  %4 = load i64, ptr %1, align 8, !dbg !4752, !tbaa !1603
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !932, metadata !DIExpression()), !dbg !4751
  %5 = icmp eq ptr %0, null, !dbg !4753
  br i1 %5, label %6, label %13, !dbg !4754

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4755
  br i1 %7, label %8, label %20, !dbg !4756

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4757
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !932, metadata !DIExpression()), !dbg !4751
  %10 = icmp ugt i64 %2, 128, !dbg !4759
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4760
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !932, metadata !DIExpression()), !dbg !4751
  br label %20, !dbg !4761

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4762
  %15 = add nuw i64 %14, 1, !dbg !4762
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4762
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4762
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4762
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !932, metadata !DIExpression()), !dbg !4751
  br i1 %17, label %19, label %20, !dbg !4763

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4764
  unreachable, !dbg !4764

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4751
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !932, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata ptr %0, metadata !4541, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i64 %21, metadata !4544, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i64 %2, metadata !4545, metadata !DIExpression()), !dbg !4765
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4767
  call void @llvm.dbg.value(metadata ptr %22, metadata !4549, metadata !DIExpression()), !dbg !4768
  %23 = icmp eq ptr %22, null, !dbg !4770
  br i1 %23, label %24, label %25, !dbg !4771

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4772
  unreachable, !dbg !4772

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !929, metadata !DIExpression()), !dbg !4751
  store i64 %21, ptr %1, align 8, !dbg !4773, !tbaa !1603
  ret ptr %22, !dbg !4774
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !936 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !945, metadata !DIExpression()), !dbg !4775
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !946, metadata !DIExpression()), !dbg !4775
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !947, metadata !DIExpression()), !dbg !4775
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !948, metadata !DIExpression()), !dbg !4775
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !949, metadata !DIExpression()), !dbg !4775
  %6 = load i64, ptr %1, align 8, !dbg !4776, !tbaa !1603
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !950, metadata !DIExpression()), !dbg !4775
  %7 = ashr i64 %6, 1, !dbg !4777
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4777
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4777
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4777
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !951, metadata !DIExpression()), !dbg !4775
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4779
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !951, metadata !DIExpression()), !dbg !4775
  %12 = icmp sgt i64 %3, -1, !dbg !4780
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4782
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4782
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !951, metadata !DIExpression()), !dbg !4775
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4783
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4783
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4783
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !952, metadata !DIExpression()), !dbg !4775
  %18 = icmp slt i64 %17, 128, !dbg !4783
  %19 = select i1 %18, i64 128, i64 0, !dbg !4783
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4783
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !953, metadata !DIExpression()), !dbg !4775
  %21 = icmp eq i64 %20, 0, !dbg !4784
  br i1 %21, label %26, label %22, !dbg !4786

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4787
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !951, metadata !DIExpression()), !dbg !4775
  %24 = srem i64 %20, %4, !dbg !4789
  %25 = sub nsw i64 %20, %24, !dbg !4790
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !952, metadata !DIExpression()), !dbg !4775
  br label %26, !dbg !4791

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4775
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4775
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !952, metadata !DIExpression()), !dbg !4775
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !951, metadata !DIExpression()), !dbg !4775
  %29 = icmp eq ptr %0, null, !dbg !4792
  br i1 %29, label %30, label %31, !dbg !4794

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4795, !tbaa !1603
  br label %31, !dbg !4796

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4797
  %33 = icmp slt i64 %32, %2, !dbg !4799
  br i1 %33, label %34, label %46, !dbg !4800

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4801
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4801
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4801
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !951, metadata !DIExpression()), !dbg !4775
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4802
  br i1 %40, label %45, label %41, !dbg !4802

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4803
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4803
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4803
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !952, metadata !DIExpression()), !dbg !4775
  br i1 %43, label %45, label %46, !dbg !4804

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #42, !dbg !4805
  unreachable, !dbg !4805

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4775
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4775
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !952, metadata !DIExpression()), !dbg !4775
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !951, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata ptr %0, metadata !4621, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata i64 %48, metadata !4622, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata ptr %0, metadata !4624, metadata !DIExpression()), !dbg !4808
  call void @llvm.dbg.value(metadata i64 %48, metadata !4628, metadata !DIExpression()), !dbg !4808
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4810
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #47, !dbg !4811
  call void @llvm.dbg.value(metadata ptr %50, metadata !4549, metadata !DIExpression()), !dbg !4812
  %51 = icmp eq ptr %50, null, !dbg !4814
  br i1 %51, label %52, label %53, !dbg !4815

52:                                               ; preds = %46
  tail call void @xalloc_die() #42, !dbg !4816
  unreachable, !dbg !4816

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !945, metadata !DIExpression()), !dbg !4775
  store i64 %47, ptr %1, align 8, !dbg !4817, !tbaa !1603
  ret ptr %50, !dbg !4818
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4819 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4821, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata i64 %0, metadata !4823, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i64 1, metadata !4826, metadata !DIExpression()), !dbg !4827
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4829
  call void @llvm.dbg.value(metadata ptr %2, metadata !4549, metadata !DIExpression()), !dbg !4830
  %3 = icmp eq ptr %2, null, !dbg !4832
  br i1 %3, label %4, label %5, !dbg !4833

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4834
  unreachable, !dbg !4834

5:                                                ; preds = %1
  ret ptr %2, !dbg !4835
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4836 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4824 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4823, metadata !DIExpression()), !dbg !4837
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4826, metadata !DIExpression()), !dbg !4837
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4838
  call void @llvm.dbg.value(metadata ptr %3, metadata !4549, metadata !DIExpression()), !dbg !4839
  %4 = icmp eq ptr %3, null, !dbg !4841
  br i1 %4, label %5, label %6, !dbg !4842

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4843
  unreachable, !dbg !4843

6:                                                ; preds = %2
  ret ptr %3, !dbg !4844
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4845 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4847, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i64 %0, metadata !4849, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i64 1, metadata !4852, metadata !DIExpression()), !dbg !4853
  call void @llvm.dbg.value(metadata i64 %0, metadata !4855, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 1, metadata !4858, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 %0, metadata !4855, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 1, metadata !4858, metadata !DIExpression()), !dbg !4859
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4861
  call void @llvm.dbg.value(metadata ptr %2, metadata !4549, metadata !DIExpression()), !dbg !4862
  %3 = icmp eq ptr %2, null, !dbg !4864
  br i1 %3, label %4, label %5, !dbg !4865

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4866
  unreachable, !dbg !4866

5:                                                ; preds = %1
  ret ptr %2, !dbg !4867
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4850 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4849, metadata !DIExpression()), !dbg !4868
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4852, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata i64 %0, metadata !4855, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i64 %1, metadata !4858, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i64 %0, metadata !4855, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i64 %1, metadata !4858, metadata !DIExpression()), !dbg !4869
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4871
  call void @llvm.dbg.value(metadata ptr %3, metadata !4549, metadata !DIExpression()), !dbg !4872
  %4 = icmp eq ptr %3, null, !dbg !4874
  br i1 %4, label %5, label %6, !dbg !4875

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4876
  unreachable, !dbg !4876

6:                                                ; preds = %2
  ret ptr %3, !dbg !4877
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4878 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4882, metadata !DIExpression()), !dbg !4884
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4883, metadata !DIExpression()), !dbg !4884
  call void @llvm.dbg.value(metadata i64 %1, metadata !4573, metadata !DIExpression()), !dbg !4885
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4887
  call void @llvm.dbg.value(metadata ptr %3, metadata !4549, metadata !DIExpression()), !dbg !4888
  %4 = icmp eq ptr %3, null, !dbg !4890
  br i1 %4, label %5, label %6, !dbg !4891

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4892
  unreachable, !dbg !4892

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4893, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata ptr %0, metadata !4899, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.value(metadata i64 %1, metadata !4900, metadata !DIExpression()), !dbg !4901
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4903
  ret ptr %3, !dbg !4904
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4905 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4909, metadata !DIExpression()), !dbg !4911
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4910, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i64 %1, metadata !4587, metadata !DIExpression()), !dbg !4912
  call void @llvm.dbg.value(metadata i64 %1, metadata !4589, metadata !DIExpression()), !dbg !4914
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4916
  call void @llvm.dbg.value(metadata ptr %3, metadata !4549, metadata !DIExpression()), !dbg !4917
  %4 = icmp eq ptr %3, null, !dbg !4919
  br i1 %4, label %5, label %6, !dbg !4920

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4921
  unreachable, !dbg !4921

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4893, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.value(metadata ptr %0, metadata !4899, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.value(metadata i64 %1, metadata !4900, metadata !DIExpression()), !dbg !4922
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4924
  ret ptr %3, !dbg !4925
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4926 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4930, metadata !DIExpression()), !dbg !4933
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4931, metadata !DIExpression()), !dbg !4933
  %3 = add nsw i64 %1, 1, !dbg !4934
  call void @llvm.dbg.value(metadata i64 %3, metadata !4587, metadata !DIExpression()), !dbg !4935
  call void @llvm.dbg.value(metadata i64 %3, metadata !4589, metadata !DIExpression()), !dbg !4937
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4939
  call void @llvm.dbg.value(metadata ptr %4, metadata !4549, metadata !DIExpression()), !dbg !4940
  %5 = icmp eq ptr %4, null, !dbg !4942
  br i1 %5, label %6, label %7, !dbg !4943

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4944
  unreachable, !dbg !4944

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4932, metadata !DIExpression()), !dbg !4933
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4945
  store i8 0, ptr %8, align 1, !dbg !4946, !tbaa !1104
  call void @llvm.dbg.value(metadata ptr %4, metadata !4893, metadata !DIExpression()), !dbg !4947
  call void @llvm.dbg.value(metadata ptr %0, metadata !4899, metadata !DIExpression()), !dbg !4947
  call void @llvm.dbg.value(metadata i64 %1, metadata !4900, metadata !DIExpression()), !dbg !4947
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4949
  ret ptr %4, !dbg !4950
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4951 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4953, metadata !DIExpression()), !dbg !4954
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4955
  %3 = add i64 %2, 1, !dbg !4956
  call void @llvm.dbg.value(metadata ptr %0, metadata !4882, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.value(metadata i64 %3, metadata !4883, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.value(metadata i64 %3, metadata !4573, metadata !DIExpression()), !dbg !4959
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4961
  call void @llvm.dbg.value(metadata ptr %4, metadata !4549, metadata !DIExpression()), !dbg !4962
  %5 = icmp eq ptr %4, null, !dbg !4964
  br i1 %5, label %6, label %7, !dbg !4965

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4966
  unreachable, !dbg !4966

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4893, metadata !DIExpression()), !dbg !4967
  call void @llvm.dbg.value(metadata ptr %0, metadata !4899, metadata !DIExpression()), !dbg !4967
  call void @llvm.dbg.value(metadata i64 %3, metadata !4900, metadata !DIExpression()), !dbg !4967
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4969
  ret ptr %4, !dbg !4970
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4971 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4976, !tbaa !1095
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4973, metadata !DIExpression()), !dbg !4977
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.185, ptr noundef nonnull @.str.2.186, i32 noundef 5) #40, !dbg !4976
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.187, ptr noundef %2) #40, !dbg !4976
  %3 = icmp eq i32 %1, 0, !dbg !4976
  tail call void @llvm.assume(i1 %3), !dbg !4976
  tail call void @abort() #42, !dbg !4978
  unreachable, !dbg !4978
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #38

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4979 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5017, metadata !DIExpression()), !dbg !5022
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !5023
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5018, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5022
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5024, metadata !DIExpression()), !dbg !5027
  %3 = load i32, ptr %0, align 8, !dbg !5029, !tbaa !5030
  %4 = and i32 %3, 32, !dbg !5031
  %5 = icmp eq i32 %4, 0, !dbg !5031
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !5020, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5022
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !5032
  %7 = icmp eq i32 %6, 0, !dbg !5033
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !5021, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5022
  br i1 %5, label %8, label %18, !dbg !5034

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5036
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !5018, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5022
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5037
  %11 = xor i1 %7, true, !dbg !5037
  %12 = sext i1 %11 to i32, !dbg !5037
  br i1 %10, label %21, label %13, !dbg !5037

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !5038
  %15 = load i32, ptr %14, align 4, !dbg !5038, !tbaa !1095
  %16 = icmp ne i32 %15, 9, !dbg !5039
  %17 = sext i1 %16 to i32, !dbg !5040
  br label %21, !dbg !5040

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5041

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !5043
  store i32 0, ptr %20, align 4, !dbg !5045, !tbaa !1095
  br label %21, !dbg !5043

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5022
  ret i32 %22, !dbg !5046
}

; Function Attrs: nounwind
declare !dbg !5047 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !5051 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5089, metadata !DIExpression()), !dbg !5093
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5090, metadata !DIExpression()), !dbg !5093
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !5094
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !5091, metadata !DIExpression()), !dbg !5093
  %3 = icmp slt i32 %2, 0, !dbg !5095
  br i1 %3, label %4, label %6, !dbg !5097

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5098
  br label %24, !dbg !5099

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !5100
  %8 = icmp eq i32 %7, 0, !dbg !5100
  br i1 %8, label %13, label %9, !dbg !5102

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !5103
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !5104
  %12 = icmp eq i64 %11, -1, !dbg !5105
  br i1 %12, label %16, label %13, !dbg !5106

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !5107
  %15 = icmp eq i32 %14, 0, !dbg !5107
  br i1 %15, label %16, label %18, !dbg !5108

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5090, metadata !DIExpression()), !dbg !5093
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5092, metadata !DIExpression()), !dbg !5093
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5109
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !5092, metadata !DIExpression()), !dbg !5093
  br label %24, !dbg !5110

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !5111
  %20 = load i32, ptr %19, align 4, !dbg !5111, !tbaa !1095
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !5090, metadata !DIExpression()), !dbg !5093
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5092, metadata !DIExpression()), !dbg !5093
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5109
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !5092, metadata !DIExpression()), !dbg !5093
  %22 = icmp eq i32 %20, 0, !dbg !5112
  br i1 %22, label %24, label %23, !dbg !5110

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !5114, !tbaa !1095
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !5092, metadata !DIExpression()), !dbg !5093
  br label %24, !dbg !5116

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !5093
  ret i32 %25, !dbg !5117
}

; Function Attrs: nofree nounwind
declare !dbg !5118 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !5119 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5120 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !5121 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !5124 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5162, metadata !DIExpression()), !dbg !5163
  %2 = icmp eq ptr %0, null, !dbg !5164
  br i1 %2, label %6, label %3, !dbg !5166

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !5167
  %5 = icmp eq i32 %4, 0, !dbg !5167
  br i1 %5, label %6, label %8, !dbg !5168

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !5169
  br label %16, !dbg !5170

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !5171, metadata !DIExpression()), !dbg !5176
  %9 = load i32, ptr %0, align 8, !dbg !5178, !tbaa !5030
  %10 = and i32 %9, 256, !dbg !5180
  %11 = icmp eq i32 %10, 0, !dbg !5180
  br i1 %11, label %14, label %12, !dbg !5181

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !5182
  br label %14, !dbg !5182

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !5183
  br label %16, !dbg !5184

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !5163
  ret i32 %17, !dbg !5185
}

; Function Attrs: nofree nounwind
declare !dbg !5186 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5187 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5226, metadata !DIExpression()), !dbg !5232
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5227, metadata !DIExpression()), !dbg !5232
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !5228, metadata !DIExpression()), !dbg !5232
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5233
  %5 = load ptr, ptr %4, align 8, !dbg !5233, !tbaa !5234
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5235
  %7 = load ptr, ptr %6, align 8, !dbg !5235, !tbaa !5236
  %8 = icmp eq ptr %5, %7, !dbg !5237
  br i1 %8, label %9, label %27, !dbg !5238

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5239
  %11 = load ptr, ptr %10, align 8, !dbg !5239, !tbaa !2625
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5240
  %13 = load ptr, ptr %12, align 8, !dbg !5240, !tbaa !5241
  %14 = icmp eq ptr %11, %13, !dbg !5242
  br i1 %14, label %15, label %27, !dbg !5243

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !5244
  %17 = load ptr, ptr %16, align 8, !dbg !5244, !tbaa !5245
  %18 = icmp eq ptr %17, null, !dbg !5246
  br i1 %18, label %19, label %27, !dbg !5247

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !5248
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !5249
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !5229, metadata !DIExpression()), !dbg !5250
  %22 = icmp eq i64 %21, -1, !dbg !5251
  br i1 %22, label %29, label %23, !dbg !5253

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !5254, !tbaa !5030
  %25 = and i32 %24, -17, !dbg !5254
  store i32 %25, ptr %0, align 8, !dbg !5254, !tbaa !5030
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !5255
  store i64 %21, ptr %26, align 8, !dbg !5256, !tbaa !5257
  br label %29, !dbg !5258

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !5259
  br label %29, !dbg !5260

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !5232
  ret i32 %30, !dbg !5261
}

; Function Attrs: nofree nounwind
declare !dbg !5262 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5265 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5270, metadata !DIExpression()), !dbg !5275
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5271, metadata !DIExpression()), !dbg !5275
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5272, metadata !DIExpression()), !dbg !5275
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5273, metadata !DIExpression()), !dbg !5275
  %5 = icmp eq ptr %1, null, !dbg !5276
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5278
  %7 = select i1 %5, ptr @.str.198, ptr %1, !dbg !5278
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5278
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5272, metadata !DIExpression()), !dbg !5275
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5271, metadata !DIExpression()), !dbg !5275
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5270, metadata !DIExpression()), !dbg !5275
  %9 = icmp eq ptr %3, null, !dbg !5279
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5281
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5273, metadata !DIExpression()), !dbg !5275
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !5282
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5274, metadata !DIExpression()), !dbg !5275
  %12 = icmp ult i64 %11, -3, !dbg !5283
  br i1 %12, label %13, label %17, !dbg !5285

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !5286
  %15 = icmp eq i32 %14, 0, !dbg !5286
  br i1 %15, label %16, label %29, !dbg !5287

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5288, metadata !DIExpression()), !dbg !5293
  call void @llvm.dbg.value(metadata ptr %10, metadata !5295, metadata !DIExpression()), !dbg !5300
  call void @llvm.dbg.value(metadata i32 0, metadata !5298, metadata !DIExpression()), !dbg !5300
  call void @llvm.dbg.value(metadata i64 8, metadata !5299, metadata !DIExpression()), !dbg !5300
  store i64 0, ptr %10, align 1, !dbg !5302
  br label %29, !dbg !5303

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5304
  br i1 %18, label %19, label %20, !dbg !5306

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !5307
  unreachable, !dbg !5307

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5308

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #40, !dbg !5310
  br i1 %23, label %29, label %24, !dbg !5311

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5312
  br i1 %25, label %29, label %26, !dbg !5315

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5316, !tbaa !1104
  %28 = zext i8 %27 to i32, !dbg !5317
  store i32 %28, ptr %6, align 4, !dbg !5318, !tbaa !1095
  br label %29, !dbg !5319

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5275
  ret i64 %30, !dbg !5320
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5321 i32 @mbsinit(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !5327 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5329, metadata !DIExpression()), !dbg !5333
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5330, metadata !DIExpression()), !dbg !5333
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5331, metadata !DIExpression()), !dbg !5333
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5334
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5334
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5332, metadata !DIExpression()), !dbg !5333
  br i1 %5, label %6, label %8, !dbg !5336

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !5337
  store i32 12, ptr %7, align 4, !dbg !5339, !tbaa !1095
  br label %12, !dbg !5340

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5334
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5332, metadata !DIExpression()), !dbg !5333
  call void @llvm.dbg.value(metadata ptr %0, metadata !5341, metadata !DIExpression()), !dbg !5345
  call void @llvm.dbg.value(metadata i64 %9, metadata !5344, metadata !DIExpression()), !dbg !5345
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5347
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #47, !dbg !5348
  br label %12, !dbg !5349

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5333
  ret ptr %13, !dbg !5350
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5351 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !5358
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5354, metadata !DIExpression(), metadata !5358, metadata ptr %2, metadata !DIExpression()), !dbg !5359
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5353, metadata !DIExpression()), !dbg !5359
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !5360
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !5361
  %4 = icmp eq i32 %3, 0, !dbg !5361
  br i1 %4, label %5, label %12, !dbg !5363

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5364, metadata !DIExpression()), !dbg !5368
  call void @llvm.dbg.value(metadata !1065, metadata !5367, metadata !DIExpression()), !dbg !5368
  %6 = load i16, ptr %2, align 16, !dbg !5371
  %7 = icmp eq i16 %6, 67, !dbg !5371
  br i1 %7, label %11, label %8, !dbg !5372

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5364, metadata !DIExpression()), !dbg !5373
  call void @llvm.dbg.value(metadata ptr @.str.1.203, metadata !5367, metadata !DIExpression()), !dbg !5373
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.203, i64 6), !dbg !5375
  %10 = icmp eq i32 %9, 0, !dbg !5376
  br i1 %10, label %11, label %12, !dbg !5377

11:                                               ; preds = %8, %5
  br label %12, !dbg !5378

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5359
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !5379
  ret i1 %13, !dbg !5379
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5380 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5384, metadata !DIExpression()), !dbg !5387
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5385, metadata !DIExpression()), !dbg !5387
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5386, metadata !DIExpression()), !dbg !5387
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !5388
  ret i32 %4, !dbg !5389
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5390 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5394, metadata !DIExpression()), !dbg !5395
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !5396
  ret ptr %2, !dbg !5397
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5398 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5400, metadata !DIExpression()), !dbg !5402
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5403
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5401, metadata !DIExpression()), !dbg !5402
  ret ptr %2, !dbg !5404
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5405 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5407, metadata !DIExpression()), !dbg !5414
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5408, metadata !DIExpression()), !dbg !5414
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5409, metadata !DIExpression()), !dbg !5414
  call void @llvm.dbg.value(metadata i32 %0, metadata !5400, metadata !DIExpression()), !dbg !5415
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5417
  call void @llvm.dbg.value(metadata ptr %4, metadata !5401, metadata !DIExpression()), !dbg !5415
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5410, metadata !DIExpression()), !dbg !5414
  %5 = icmp eq ptr %4, null, !dbg !5418
  br i1 %5, label %6, label %9, !dbg !5419

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5420
  br i1 %7, label %19, label %8, !dbg !5423

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5424, !tbaa !1104
  br label %19, !dbg !5425

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !5426
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5411, metadata !DIExpression()), !dbg !5427
  %11 = icmp ult i64 %10, %2, !dbg !5428
  br i1 %11, label %12, label %14, !dbg !5430

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5431
  call void @llvm.dbg.value(metadata ptr %1, metadata !5433, metadata !DIExpression()), !dbg !5438
  call void @llvm.dbg.value(metadata ptr %4, metadata !5436, metadata !DIExpression()), !dbg !5438
  call void @llvm.dbg.value(metadata i64 %13, metadata !5437, metadata !DIExpression()), !dbg !5438
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !5440
  br label %19, !dbg !5441

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5442
  br i1 %15, label %19, label %16, !dbg !5445

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5446
  call void @llvm.dbg.value(metadata ptr %1, metadata !5433, metadata !DIExpression()), !dbg !5448
  call void @llvm.dbg.value(metadata ptr %4, metadata !5436, metadata !DIExpression()), !dbg !5448
  call void @llvm.dbg.value(metadata i64 %17, metadata !5437, metadata !DIExpression()), !dbg !5448
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !5450
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5451
  store i8 0, ptr %18, align 1, !dbg !5452, !tbaa !1104
  br label %19, !dbg !5453

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5454
  ret i32 %20, !dbg !5455
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #28 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.dbg.cu = !{!218, !578, !582, !597, !871, !903, !905, !646, !660, !711, !911, !913, !865, !920, !955, !957, !959, !961, !963, !887, !965, !967, !971, !973}
!llvm.ident = !{!975, !975, !975, !975, !975, !975, !975, !975, !975, !975, !975, !975, !975, !975, !975, !975, !975, !975, !975, !975, !975, !975, !975, !975}
!llvm.module.flags = !{!976, !977, !978, !979, !980, !981, !982}

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
!596 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !597, file: !598, line: 66, type: !641, isLocal: false, isDefinition: true)
!597 = distinct !DICompileUnit(language: DW_LANG_C11, file: !598, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !599, globals: !600, splitDebugInlining: false, nameTableKind: None)
!598 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!599 = !{!259, !267}
!600 = !{!601, !603, !622, !624, !626, !628, !595, !630, !632, !634, !636, !639}
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !598, line: 272, type: !390, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(name: "old_file_name", scope: !605, file: !598, line: 304, type: !265, isLocal: true, isDefinition: true)
!605 = distinct !DISubprogram(name: "verror_at_line", scope: !598, file: !598, line: 298, type: !606, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !615)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !260, !260, !265, !222, !265, !608}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !610)
!610 = !{!611, !612, !613, !614}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !609, file: !598, baseType: !222, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !609, file: !598, baseType: !222, size: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !609, file: !598, baseType: !259, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !609, file: !598, baseType: !259, size: 64, offset: 128)
!615 = !{!616, !617, !618, !619, !620, !621}
!616 = !DILocalVariable(name: "status", arg: 1, scope: !605, file: !598, line: 298, type: !260)
!617 = !DILocalVariable(name: "errnum", arg: 2, scope: !605, file: !598, line: 298, type: !260)
!618 = !DILocalVariable(name: "file_name", arg: 3, scope: !605, file: !598, line: 298, type: !265)
!619 = !DILocalVariable(name: "line_number", arg: 4, scope: !605, file: !598, line: 298, type: !222)
!620 = !DILocalVariable(name: "message", arg: 5, scope: !605, file: !598, line: 298, type: !265)
!621 = !DILocalVariable(name: "args", arg: 6, scope: !605, file: !598, line: 298, type: !608)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(name: "old_line_number", scope: !605, file: !598, line: 305, type: !222, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !598, line: 338, type: !397, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !598, line: 346, type: !424, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !598, line: 346, type: !19, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "error_message_count", scope: !597, file: !598, line: 69, type: !222, isLocal: false, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !597, file: !598, line: 295, type: !260, isLocal: false, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !598, line: 208, type: !276, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !598, line: 208, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !498)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !598, line: 214, type: !390, isLocal: true, isDefinition: true)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{null}
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(name: "program_name", scope: !646, file: !647, line: 31, type: !265, isLocal: false, isDefinition: true)
!646 = distinct !DICompileUnit(language: DW_LANG_C11, file: !647, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !648, globals: !649, splitDebugInlining: false, nameTableKind: None)
!647 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!648 = !{!259, !258}
!649 = !{!644, !650, !652}
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !647, line: 46, type: !424, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !647, line: 49, type: !397, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(name: "utf07FF", scope: !656, file: !657, line: 46, type: !684, isLocal: true, isDefinition: true)
!656 = distinct !DISubprogram(name: "proper_name_lite", scope: !657, file: !657, line: 38, type: !658, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !662)
!657 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!658 = !DISubroutineType(types: !659)
!659 = !{!265, !265, !265}
!660 = distinct !DICompileUnit(language: DW_LANG_C11, file: !657, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !661, splitDebugInlining: false, nameTableKind: None)
!661 = !{!654}
!662 = !{!663, !664, !665, !666, !671}
!663 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !656, file: !657, line: 38, type: !265)
!664 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !656, file: !657, line: 38, type: !265)
!665 = !DILocalVariable(name: "translation", scope: !656, file: !657, line: 40, type: !265)
!666 = !DILocalVariable(name: "w", scope: !656, file: !657, line: 47, type: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !668, line: 37, baseType: !669)
!668 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !271, line: 57, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !271, line: 42, baseType: !222)
!671 = !DILocalVariable(name: "mbs", scope: !656, file: !657, line: 48, type: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !673, line: 6, baseType: !674)
!673 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !675, line: 21, baseType: !676)
!675 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !675, line: 13, size: 64, elements: !677)
!677 = !{!678, !679}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !676, file: !675, line: 15, baseType: !260, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !676, file: !675, line: 20, baseType: !680, size: 32, offset: 32)
!680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !676, file: !675, line: 16, size: 32, elements: !681)
!681 = !{!682, !683}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !680, file: !675, line: 18, baseType: !222, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !680, file: !675, line: 19, baseType: !397, size: 32)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 16, elements: !20)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !687, line: 78, type: !424, isLocal: true, isDefinition: true)
!687 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !687, line: 79, type: !402, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !687, line: 80, type: !692, isLocal: true, isDefinition: true)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !693)
!693 = !{!694}
!694 = !DISubrange(count: 13)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !687, line: 81, type: !692, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !687, line: 82, type: !379, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !687, line: 83, type: !19, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !687, line: 84, type: !424, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !687, line: 85, type: !276, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !687, line: 86, type: !276, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !687, line: 87, type: !424, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !711, file: !687, line: 76, type: !797, isLocal: false, isDefinition: true)
!711 = distinct !DICompileUnit(language: DW_LANG_C11, file: !687, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !712, retainedTypes: !732, globals: !733, splitDebugInlining: false, nameTableKind: None)
!712 = !{!713, !727, !227}
!713 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !714, line: 42, baseType: !222, size: 32, elements: !715)
!714 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!715 = !{!716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726}
!716 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!717 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!718 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!719 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!720 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!721 = !DIEnumerator(name: "c_quoting_style", value: 5)
!722 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!723 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!724 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!725 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!726 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!727 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !714, line: 254, baseType: !222, size: 32, elements: !728)
!728 = !{!729, !730, !731}
!729 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!730 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!731 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!732 = !{!259, !260, !261, !262}
!733 = !{!685, !688, !690, !695, !697, !699, !701, !703, !705, !707, !709, !734, !738, !748, !750, !755, !757, !759, !761, !763, !786, !793, !795}
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !711, file: !687, line: 92, type: !736, isLocal: false, isDefinition: true)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !737, size: 320, elements: !209)
!737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !711, file: !687, line: 1040, type: !740, isLocal: false, isDefinition: true)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !687, line: 56, size: 448, elements: !741)
!741 = !{!742, !743, !744, !746, !747}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !740, file: !687, line: 59, baseType: !713, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !740, file: !687, line: 62, baseType: !260, size: 32, offset: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !740, file: !687, line: 66, baseType: !745, size: 256, offset: 64)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 256, elements: !425)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !740, file: !687, line: 69, baseType: !265, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !740, file: !687, line: 72, baseType: !265, size: 64, offset: 384)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !711, file: !687, line: 107, type: !740, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(name: "slot0", scope: !711, file: !687, line: 831, type: !752, isLocal: true, isDefinition: true)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 256)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !687, line: 321, type: !19, isLocal: true, isDefinition: true)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !687, line: 357, type: !19, isLocal: true, isDefinition: true)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !687, line: 358, type: !19, isLocal: true, isDefinition: true)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !687, line: 199, type: !276, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(name: "quote", scope: !765, file: !687, line: 228, type: !784, isLocal: true, isDefinition: true)
!765 = distinct !DISubprogram(name: "gettext_quote", scope: !687, file: !687, line: 197, type: !766, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !768)
!766 = !DISubroutineType(types: !767)
!767 = !{!265, !265, !713}
!768 = !{!769, !770, !771, !772, !773}
!769 = !DILocalVariable(name: "msgid", arg: 1, scope: !765, file: !687, line: 197, type: !265)
!770 = !DILocalVariable(name: "s", arg: 2, scope: !765, file: !687, line: 197, type: !713)
!771 = !DILocalVariable(name: "translation", scope: !765, file: !687, line: 199, type: !265)
!772 = !DILocalVariable(name: "w", scope: !765, file: !687, line: 229, type: !667)
!773 = !DILocalVariable(name: "mbs", scope: !765, file: !687, line: 230, type: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !673, line: 6, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !675, line: 21, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !675, line: 13, size: 64, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !776, file: !675, line: 15, baseType: !260, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !776, file: !675, line: 20, baseType: !780, size: 32, offset: 32)
!780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !675, line: 16, size: 32, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !780, file: !675, line: 18, baseType: !222, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !780, file: !675, line: 19, baseType: !397, size: 32)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 64, elements: !785)
!785 = !{!21, !399}
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(name: "slotvec", scope: !711, file: !687, line: 834, type: !788, isLocal: true, isDefinition: true)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !687, line: 823, size: 128, elements: !790)
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !789, file: !687, line: 825, baseType: !262, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !789, file: !687, line: 826, baseType: !258, size: 64, offset: 64)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(name: "nslots", scope: !711, file: !687, line: 832, type: !260, isLocal: true, isDefinition: true)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(name: "slotvec0", scope: !711, file: !687, line: 833, type: !789, isLocal: true, isDefinition: true)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 704, elements: !295)
!798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !801, line: 67, type: !482, isLocal: true, isDefinition: true)
!801 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !801, line: 69, type: !276, isLocal: true, isDefinition: true)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !801, line: 83, type: !276, isLocal: true, isDefinition: true)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(scope: null, file: !801, line: 83, type: !397, isLocal: true, isDefinition: true)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !801, line: 85, type: !19, isLocal: true, isDefinition: true)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !801, line: 88, type: !812, isLocal: true, isDefinition: true)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 171)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !801, line: 88, type: !817, isLocal: true, isDefinition: true)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 34)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !801, line: 105, type: !459, isLocal: true, isDefinition: true)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(scope: null, file: !801, line: 109, type: !558, isLocal: true, isDefinition: true)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(scope: null, file: !801, line: 113, type: !502, isLocal: true, isDefinition: true)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(scope: null, file: !801, line: 120, type: !828, isLocal: true, isDefinition: true)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !829)
!829 = !{!830}
!830 = !DISubrange(count: 32)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(scope: null, file: !801, line: 127, type: !833, isLocal: true, isDefinition: true)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !834)
!834 = !{!835}
!835 = !DISubrange(count: 36)
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(scope: null, file: !801, line: 134, type: !439, isLocal: true, isDefinition: true)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(scope: null, file: !801, line: 142, type: !840, isLocal: true, isDefinition: true)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !841)
!841 = !{!842}
!842 = !DISubrange(count: 44)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(scope: null, file: !801, line: 150, type: !51, isLocal: true, isDefinition: true)
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(scope: null, file: !801, line: 159, type: !110, isLocal: true, isDefinition: true)
!847 = !DIGlobalVariableExpression(var: !848, expr: !DIExpression())
!848 = distinct !DIGlobalVariable(scope: null, file: !801, line: 170, type: !160, isLocal: true, isDefinition: true)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(scope: null, file: !801, line: 248, type: !379, isLocal: true, isDefinition: true)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(scope: null, file: !801, line: 248, type: !464, isLocal: true, isDefinition: true)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(scope: null, file: !801, line: 254, type: !379, isLocal: true, isDefinition: true)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(scope: null, file: !801, line: 254, type: !198, isLocal: true, isDefinition: true)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(scope: null, file: !801, line: 254, type: !439, isLocal: true, isDefinition: true)
!859 = !DIGlobalVariableExpression(var: !860, expr: !DIExpression())
!860 = distinct !DIGlobalVariable(scope: null, file: !801, line: 259, type: !3, isLocal: true, isDefinition: true)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(scope: null, file: !801, line: 259, type: !525, isLocal: true, isDefinition: true)
!863 = !DIGlobalVariableExpression(var: !864, expr: !DIExpression())
!864 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !865, file: !866, line: 26, type: !868, isLocal: false, isDefinition: true)
!865 = distinct !DICompileUnit(language: DW_LANG_C11, file: !866, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !867, splitDebugInlining: false, nameTableKind: None)
!866 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!867 = !{!863}
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 376, elements: !104)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression())
!870 = distinct !DIGlobalVariable(name: "exit_failure", scope: !871, file: !872, line: 24, type: !874, isLocal: false, isDefinition: true)
!871 = distinct !DICompileUnit(language: DW_LANG_C11, file: !872, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !873, splitDebugInlining: false, nameTableKind: None)
!872 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!873 = !{!869}
!874 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !260)
!875 = !DIGlobalVariableExpression(var: !876, expr: !DIExpression())
!876 = distinct !DIGlobalVariable(scope: null, file: !877, line: 34, type: !411, isLocal: true, isDefinition: true)
!877 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!878 = !DIGlobalVariableExpression(var: !879, expr: !DIExpression())
!879 = distinct !DIGlobalVariable(scope: null, file: !877, line: 34, type: !276, isLocal: true, isDefinition: true)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(scope: null, file: !877, line: 34, type: !285, isLocal: true, isDefinition: true)
!882 = !DIGlobalVariableExpression(var: !883, expr: !DIExpression())
!883 = distinct !DIGlobalVariable(scope: null, file: !884, line: 108, type: !203, isLocal: true, isDefinition: true)
!884 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!885 = !DIGlobalVariableExpression(var: !886, expr: !DIExpression())
!886 = distinct !DIGlobalVariable(name: "internal_state", scope: !887, file: !884, line: 97, type: !890, isLocal: true, isDefinition: true)
!887 = distinct !DICompileUnit(language: DW_LANG_C11, file: !884, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !888, globals: !889, splitDebugInlining: false, nameTableKind: None)
!888 = !{!259, !262, !267}
!889 = !{!882, !885}
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !673, line: 6, baseType: !891)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !675, line: 21, baseType: !892)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !675, line: 13, size: 64, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !892, file: !675, line: 15, baseType: !260, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !892, file: !675, line: 20, baseType: !896, size: 32, offset: 32)
!896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !675, line: 16, size: 32, elements: !897)
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !896, file: !675, line: 18, baseType: !222, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !896, file: !675, line: 19, baseType: !397, size: 32)
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(scope: null, file: !902, line: 35, type: !402, isLocal: true, isDefinition: true)
!902 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!903 = distinct !DICompileUnit(language: DW_LANG_C11, file: !904, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!904 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!905 = distinct !DICompileUnit(language: DW_LANG_C11, file: !906, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-umaxtostr.o -MD -MP -MF lib/.deps/libcoreutils_a-umaxtostr.Tpo -c lib/umaxtostr.c -o lib/.libcoreutils_a-umaxtostr.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !907, splitDebugInlining: false, nameTableKind: None)
!906 = !DIFile(filename: "lib/umaxtostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa759af6e92fed26f32f683da6c23a8")
!907 = !{!908}
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !909, line: 102, baseType: !910)
!909 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !271, line: 73, baseType: !264)
!911 = distinct !DICompileUnit(language: DW_LANG_C11, file: !912, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-strintcmp.o -MD -MP -MF lib/.deps/libcoreutils_a-strintcmp.Tpo -c lib/strintcmp.c -o lib/.libcoreutils_a-strintcmp.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!912 = !DIFile(filename: "lib/strintcmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cbb3801b0b03f23f2fd643484b645368")
!913 = distinct !DICompileUnit(language: DW_LANG_C11, file: !801, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !914, retainedTypes: !918, globals: !919, splitDebugInlining: false, nameTableKind: None)
!914 = !{!915}
!915 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !801, line: 40, baseType: !222, size: 32, elements: !916)
!916 = !{!917}
!917 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!918 = !{!259}
!919 = !{!799, !802, !804, !806, !808, !810, !815, !820, !822, !824, !826, !831, !836, !838, !843, !845, !847, !849, !851, !853, !855, !857, !859, !861}
!920 = distinct !DICompileUnit(language: DW_LANG_C11, file: !921, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !922, retainedTypes: !954, splitDebugInlining: false, nameTableKind: None)
!921 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!922 = !{!923, !935}
!923 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !924, file: !921, line: 188, baseType: !222, size: 32, elements: !933)
!924 = distinct !DISubprogram(name: "x2nrealloc", scope: !921, file: !921, line: 176, type: !925, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !928)
!925 = !DISubroutineType(types: !926)
!926 = !{!259, !259, !927, !262}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!928 = !{!929, !930, !931, !932}
!929 = !DILocalVariable(name: "p", arg: 1, scope: !924, file: !921, line: 176, type: !259)
!930 = !DILocalVariable(name: "pn", arg: 2, scope: !924, file: !921, line: 176, type: !927)
!931 = !DILocalVariable(name: "s", arg: 3, scope: !924, file: !921, line: 176, type: !262)
!932 = !DILocalVariable(name: "n", scope: !924, file: !921, line: 178, type: !262)
!933 = !{!934}
!934 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!935 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !936, file: !921, line: 228, baseType: !222, size: 32, elements: !933)
!936 = distinct !DISubprogram(name: "xpalloc", scope: !921, file: !921, line: 223, type: !937, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !944)
!937 = !DISubroutineType(types: !938)
!938 = !{!259, !259, !939, !940, !942, !940}
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !941, line: 130, baseType: !942)
!941 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !943, line: 18, baseType: !272)
!943 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!944 = !{!945, !946, !947, !948, !949, !950, !951, !952, !953}
!945 = !DILocalVariable(name: "pa", arg: 1, scope: !936, file: !921, line: 223, type: !259)
!946 = !DILocalVariable(name: "pn", arg: 2, scope: !936, file: !921, line: 223, type: !939)
!947 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !936, file: !921, line: 223, type: !940)
!948 = !DILocalVariable(name: "n_max", arg: 4, scope: !936, file: !921, line: 223, type: !942)
!949 = !DILocalVariable(name: "s", arg: 5, scope: !936, file: !921, line: 223, type: !940)
!950 = !DILocalVariable(name: "n0", scope: !936, file: !921, line: 230, type: !940)
!951 = !DILocalVariable(name: "n", scope: !936, file: !921, line: 237, type: !940)
!952 = !DILocalVariable(name: "nbytes", scope: !936, file: !921, line: 248, type: !940)
!953 = !DILocalVariable(name: "adjusted_nbytes", scope: !936, file: !921, line: 252, type: !940)
!954 = !{!258, !259}
!955 = distinct !DICompileUnit(language: DW_LANG_C11, file: !877, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !956, splitDebugInlining: false, nameTableKind: None)
!956 = !{!875, !878, !880}
!957 = distinct !DICompileUnit(language: DW_LANG_C11, file: !958, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!958 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!959 = distinct !DICompileUnit(language: DW_LANG_C11, file: !960, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!960 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!961 = distinct !DICompileUnit(language: DW_LANG_C11, file: !962, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !918, splitDebugInlining: false, nameTableKind: None)
!962 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!963 = distinct !DICompileUnit(language: DW_LANG_C11, file: !964, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !918, splitDebugInlining: false, nameTableKind: None)
!964 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!965 = distinct !DICompileUnit(language: DW_LANG_C11, file: !966, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !918, splitDebugInlining: false, nameTableKind: None)
!966 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!967 = distinct !DICompileUnit(language: DW_LANG_C11, file: !902, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !968, splitDebugInlining: false, nameTableKind: None)
!968 = !{!969, !900}
!969 = !DIGlobalVariableExpression(var: !970, expr: !DIExpression())
!970 = distinct !DIGlobalVariable(scope: null, file: !902, line: 35, type: !19, isLocal: true, isDefinition: true)
!971 = distinct !DICompileUnit(language: DW_LANG_C11, file: !972, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!972 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!973 = distinct !DICompileUnit(language: DW_LANG_C11, file: !974, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !918, splitDebugInlining: false, nameTableKind: None)
!974 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!975 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!976 = !{i32 7, !"Dwarf Version", i32 5}
!977 = !{i32 2, !"Debug Info Version", i32 3}
!978 = !{i32 1, !"wchar_size", i32 4}
!979 = !{i32 8, !"PIC Level", i32 2}
!980 = !{i32 7, !"PIE Level", i32 2}
!981 = !{i32 7, !"uwtable", i32 2}
!982 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
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
!1065 = !{}
!1066 = !DILocation(line: 857, column: 3, scope: !1047, inlinedAt: !1064)
!1067 = !DILocation(line: 861, column: 29, scope: !1047, inlinedAt: !1064)
!1068 = !DILocation(line: 862, column: 7, scope: !1069, inlinedAt: !1064)
!1069 = distinct !DILexicalBlock(scope: !1047, file: !309, line: 862, column: 7)
!1070 = !DILocation(line: 862, column: 19, scope: !1069, inlinedAt: !1064)
!1071 = !DILocation(line: 862, column: 22, scope: !1069, inlinedAt: !1064)
!1072 = !DILocation(line: 862, column: 7, scope: !1047, inlinedAt: !1064)
!1073 = !DILocation(line: 868, column: 7, scope: !1074, inlinedAt: !1064)
!1074 = distinct !DILexicalBlock(scope: !1069, file: !309, line: 863, column: 5)
!1075 = !DILocation(line: 870, column: 5, scope: !1074, inlinedAt: !1064)
!1076 = !DILocation(line: 875, column: 3, scope: !1047, inlinedAt: !1064)
!1077 = !DILocation(line: 877, column: 3, scope: !1047, inlinedAt: !1064)
!1078 = !DILocation(line: 824, column: 3, scope: !983)
!1079 = !DISubprogram(name: "dcgettext", scope: !1080, file: !1080, line: 51, type: !1081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1080 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!258, !265, !265, !260}
!1083 = !DISubprogram(name: "__fprintf_chk", scope: !1084, file: !1084, line: 93, type: !1085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1084 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!260, !1087, !260, !1088, null}
!1087 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !332)
!1088 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !265)
!1089 = !DISubprogram(name: "fputs_unlocked", scope: !1090, file: !1090, line: 691, type: !1091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!1146 = !DILocation(line: 620, column: 23, scope: !308)
!1147 = !DILocation(line: 625, column: 39, scope: !308)
!1148 = !DILocation(line: 626, column: 3, scope: !308)
!1149 = !DILocation(line: 626, column: 10, scope: !308)
!1150 = !DILocation(line: 626, column: 21, scope: !308)
!1151 = !DILocation(line: 628, column: 44, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !309, line: 628, column: 11)
!1153 = distinct !DILexicalBlock(scope: !308, file: !309, line: 627, column: 5)
!1154 = !DILocation(line: 628, column: 32, scope: !1152)
!1155 = !DILocation(line: 628, column: 49, scope: !1152)
!1156 = !DILocation(line: 628, column: 11, scope: !1153)
!1157 = !DILocation(line: 630, column: 11, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !309, line: 630, column: 11)
!1159 = !DILocation(line: 630, column: 11, scope: !1153)
!1160 = !DILocation(line: 632, column: 26, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !309, line: 632, column: 15)
!1162 = distinct !DILexicalBlock(scope: !1158, file: !309, line: 631, column: 9)
!1163 = !DILocation(line: 632, column: 34, scope: !1161)
!1164 = !DILocation(line: 632, column: 37, scope: !1161)
!1165 = !DILocation(line: 632, column: 15, scope: !1162)
!1166 = !DILocation(line: 636, column: 16, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1162, file: !309, line: 636, column: 15)
!1168 = !DILocation(line: 636, column: 29, scope: !1167)
!1169 = !DILocation(line: 640, column: 16, scope: !1153)
!1170 = distinct !{!1170, !1148, !1171, !1142}
!1171 = !DILocation(line: 641, column: 5, scope: !308)
!1172 = !DILocation(line: 644, column: 3, scope: !308)
!1173 = !DILocation(line: 0, scope: !1107, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 648, column: 31, scope: !308)
!1175 = !DILocation(line: 663, column: 7, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !308, file: !309, line: 663, column: 7)
!1177 = !DILocation(line: 664, column: 7, scope: !1176)
!1178 = !DILocation(line: 664, column: 10, scope: !1176)
!1179 = !DILocation(line: 663, column: 7, scope: !308)
!1180 = !DILocation(line: 669, column: 7, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !309, line: 665, column: 5)
!1182 = !DILocation(line: 671, column: 5, scope: !1181)
!1183 = !DILocation(line: 676, column: 7, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1176, file: !309, line: 673, column: 5)
!1185 = !DILocation(line: 679, column: 3, scope: !308)
!1186 = !DILocation(line: 683, column: 3, scope: !308)
!1187 = !DILocation(line: 686, column: 3, scope: !308)
!1188 = !DILocation(line: 688, column: 3, scope: !308)
!1189 = !DILocation(line: 691, column: 3, scope: !308)
!1190 = !DILocation(line: 695, column: 3, scope: !308)
!1191 = !DILocation(line: 696, column: 1, scope: !308)
!1192 = !DISubprogram(name: "__printf_chk", scope: !1084, file: !1084, line: 95, type: !1193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!260, !260, !1088, null}
!1195 = !DISubprogram(name: "setlocale", scope: !1196, file: !1196, line: 122, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1196 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!258, !260, !265}
!1199 = !DISubprogram(name: "strncmp", scope: !1200, file: !1200, line: 159, type: !1201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1200 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!260, !265, !265, !262}
!1203 = !DISubprogram(name: "exit", scope: !1204, file: !1204, line: 624, type: !984, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1204 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1205 = !DISubprogram(name: "getenv", scope: !1204, file: !1204, line: 641, type: !1206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!258, !265}
!1208 = !DISubprogram(name: "strcmp", scope: !1200, file: !1200, line: 156, type: !1209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!260, !265, !265}
!1211 = !DISubprogram(name: "strspn", scope: !1200, file: !1200, line: 297, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!264, !265, !265}
!1214 = !DISubprogram(name: "strchr", scope: !1200, file: !1200, line: 246, type: !1215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!258, !265, !260}
!1217 = !DISubprogram(name: "__ctype_b_loc", scope: !228, file: !228, line: 79, type: !1218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!1220}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!1223 = !DISubprogram(name: "strcspn", scope: !1200, file: !1200, line: 293, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1224 = !DISubprogram(name: "fwrite_unlocked", scope: !1090, file: !1090, line: 704, type: !1225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!262, !1227, !262, !262, !1087}
!1227 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1228)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1230 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 843, type: !1231, scopeLine: 844, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1233)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!260, !260, !572}
!1233 = !{!1234, !1235, !1236}
!1234 = !DILocalVariable(name: "margc", arg: 1, scope: !1230, file: !2, line: 843, type: !260)
!1235 = !DILocalVariable(name: "margv", arg: 2, scope: !1230, file: !2, line: 843, type: !572)
!1236 = !DILocalVariable(name: "value", scope: !1230, file: !2, line: 845, type: !319)
!1237 = !DILocation(line: 0, scope: !1230)
!1238 = !DILocation(line: 856, column: 21, scope: !1230)
!1239 = !DILocation(line: 856, column: 3, scope: !1230)
!1240 = !DILocation(line: 857, column: 3, scope: !1230)
!1241 = !DILocation(line: 858, column: 3, scope: !1230)
!1242 = !DILocation(line: 859, column: 3, scope: !1230)
!1243 = !DILocalVariable(name: "status", arg: 1, scope: !1244, file: !309, line: 102, type: !260)
!1244 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !309, file: !309, line: 102, type: !984, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1245)
!1245 = !{!1243}
!1246 = !DILocation(line: 0, scope: !1244, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 861, column: 3, scope: !1230)
!1248 = !DILocation(line: 105, column: 18, scope: !1249, inlinedAt: !1247)
!1249 = distinct !DILexicalBlock(scope: !1244, file: !309, line: 104, column: 7)
!1250 = !DILocation(line: 862, column: 3, scope: !1230)
!1251 = !DILocation(line: 865, column: 8, scope: !1230)
!1252 = !DILocation(line: 875, column: 17, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 875, column: 11)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 868, column: 5)
!1255 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 867, column: 7)
!1256 = !DILocation(line: 875, column: 11, scope: !1254)
!1257 = !DILocation(line: 877, column: 22, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !2, line: 877, column: 15)
!1259 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 876, column: 9)
!1260 = !DILocation(line: 0, scope: !1107, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 877, column: 15, scope: !1258)
!1262 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1261)
!1263 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1261)
!1264 = !DILocation(line: 877, column: 15, scope: !1259)
!1265 = !DILocation(line: 878, column: 13, scope: !1258)
!1266 = !DILocation(line: 0, scope: !1107, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 880, column: 15, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1259, file: !2, line: 880, column: 15)
!1269 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1267)
!1270 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1267)
!1271 = !DILocation(line: 880, column: 15, scope: !1259)
!1272 = !DILocation(line: 882, column: 28, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 881, column: 13)
!1274 = !DILocation(line: 882, column: 64, scope: !1273)
!1275 = !DILocation(line: 882, column: 73, scope: !1273)
!1276 = !DILocation(line: 882, column: 15, scope: !1273)
!1277 = !DILocation(line: 884, column: 15, scope: !1273)
!1278 = !DILocation(line: 887, column: 17, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 887, column: 11)
!1280 = !DILocation(line: 887, column: 21, scope: !1279)
!1281 = !DILocation(line: 887, column: 32, scope: !1279)
!1282 = !DILocation(line: 0, scope: !1107, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 887, column: 25, scope: !1279)
!1284 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1283)
!1285 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1283)
!1286 = !DILocation(line: 887, column: 11, scope: !1254)
!1287 = !DILocation(line: 888, column: 28, scope: !1279)
!1288 = !DILocation(line: 888, column: 45, scope: !1279)
!1289 = !DILocation(line: 888, column: 9, scope: !1279)
!1290 = !DILocation(line: 890, column: 7, scope: !1254)
!1291 = !DILocation(line: 893, column: 8, scope: !1230)
!1292 = !DILocation(line: 894, column: 7, scope: !1230)
!1293 = !DILocation(line: 896, column: 7, scope: !1230)
!1294 = !DILocation(line: 899, column: 27, scope: !1230)
!1295 = !DILocation(line: 899, column: 11, scope: !1230)
!1296 = !DILocation(line: 901, column: 7, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 901, column: 7)
!1298 = !DILocation(line: 901, column: 14, scope: !1297)
!1299 = !DILocation(line: 901, column: 11, scope: !1297)
!1300 = !DILocation(line: 901, column: 7, scope: !1230)
!1301 = !DILocation(line: 902, column: 24, scope: !1297)
!1302 = !DILocation(line: 902, column: 55, scope: !1297)
!1303 = !DILocation(line: 902, column: 60, scope: !1297)
!1304 = !DILocation(line: 902, column: 48, scope: !1297)
!1305 = !DILocation(line: 902, column: 5, scope: !1297)
!1306 = !DILocation(line: 904, column: 3, scope: !1230)
!1307 = !DILocation(line: 905, column: 1, scope: !1230)
!1308 = !DISubprogram(name: "bindtextdomain", scope: !1080, file: !1080, line: 86, type: !1309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!258, !265, !265}
!1311 = !DISubprogram(name: "textdomain", scope: !1080, file: !1080, line: 82, type: !1206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1312 = !DISubprogram(name: "atexit", scope: !1204, file: !1204, line: 602, type: !1313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!260, !641}
!1315 = distinct !DISubprogram(name: "test_syntax_error", scope: !2, file: !2, line: 97, type: !1316, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1318)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !265, null}
!1318 = !{!1319, !1320}
!1319 = !DILocalVariable(name: "format", arg: 1, scope: !1315, file: !2, line: 97, type: !265)
!1320 = !DILocalVariable(name: "ap", scope: !1315, file: !2, line: 99, type: !1321)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1322, line: 12, baseType: !1323)
!1322 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !219, baseType: !1324)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1325, size: 192, elements: !204)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1325, file: !219, line: 99, baseType: !222, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1325, file: !219, line: 99, baseType: !222, size: 32, offset: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1325, file: !219, line: 99, baseType: !259, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1325, file: !219, line: 99, baseType: !259, size: 64, offset: 128)
!1331 = distinct !DIAssignID()
!1332 = !DILocation(line: 0, scope: !1315)
!1333 = !DILocation(line: 99, column: 3, scope: !1315)
!1334 = !DILocation(line: 100, column: 3, scope: !1315)
!1335 = !DILocation(line: 101, column: 3, scope: !1315)
!1336 = !DILocation(line: 102, column: 3, scope: !1315)
!1337 = distinct !DISubprogram(name: "posixtest", scope: !2, file: !2, line: 616, type: !1338, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1340)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!319, !260}
!1340 = !{!1341, !1342}
!1341 = !DILocalVariable(name: "nargs", arg: 1, scope: !1337, file: !2, line: 616, type: !260)
!1342 = !DILocalVariable(name: "value", scope: !1337, file: !2, line: 618, type: !319)
!1343 = !DILocation(line: 0, scope: !1337)
!1344 = !DILocation(line: 620, column: 3, scope: !1337)
!1345 = !DILocation(line: 562, column: 10, scope: !1346, inlinedAt: !1349)
!1346 = distinct !DISubprogram(name: "one_argument", scope: !2, file: !2, line: 560, type: !1347, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!319}
!1349 = distinct !DILocation(line: 623, column: 17, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1337, file: !2, line: 621, column: 5)
!1351 = !DILocation(line: 562, column: 18, scope: !1346, inlinedAt: !1349)
!1352 = !DILocation(line: 562, column: 25, scope: !1346, inlinedAt: !1349)
!1353 = !DILocation(line: 624, column: 9, scope: !1350)
!1354 = !DILocation(line: 570, column: 14, scope: !1355, inlinedAt: !1359)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 570, column: 7)
!1356 = distinct !DISubprogram(name: "two_arguments", scope: !2, file: !2, line: 566, type: !1347, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1357)
!1357 = !{!1358}
!1358 = !DILocalVariable(name: "value", scope: !1356, file: !2, line: 568, type: !319)
!1359 = distinct !DILocation(line: 627, column: 17, scope: !1350)
!1360 = !DILocation(line: 570, column: 19, scope: !1355, inlinedAt: !1359)
!1361 = !DILocation(line: 0, scope: !1107, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 570, column: 7, scope: !1355, inlinedAt: !1359)
!1363 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1362)
!1364 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1362)
!1365 = !DILocation(line: 570, column: 7, scope: !1356, inlinedAt: !1359)
!1366 = !DILocation(line: 562, column: 18, scope: !1346, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 573, column: 17, scope: !1368, inlinedAt: !1359)
!1368 = distinct !DILexicalBlock(scope: !1355, file: !2, line: 571, column: 5)
!1369 = !DILocation(line: 562, column: 10, scope: !1346, inlinedAt: !1367)
!1370 = !DILocation(line: 562, column: 25, scope: !1346, inlinedAt: !1367)
!1371 = !DILocation(line: 0, scope: !1356, inlinedAt: !1359)
!1372 = !DILocation(line: 574, column: 5, scope: !1368, inlinedAt: !1359)
!1373 = !DILocation(line: 575, column: 12, scope: !1374, inlinedAt: !1359)
!1374 = distinct !DILexicalBlock(scope: !1355, file: !2, line: 575, column: 12)
!1375 = !DILocation(line: 575, column: 25, scope: !1374, inlinedAt: !1359)
!1376 = !DILocation(line: 576, column: 12, scope: !1374, inlinedAt: !1359)
!1377 = !DILocation(line: 576, column: 15, scope: !1374, inlinedAt: !1359)
!1378 = !DILocation(line: 576, column: 28, scope: !1374, inlinedAt: !1359)
!1379 = !DILocation(line: 577, column: 12, scope: !1374, inlinedAt: !1359)
!1380 = !DILocation(line: 577, column: 15, scope: !1374, inlinedAt: !1359)
!1381 = !DILocation(line: 577, column: 28, scope: !1374, inlinedAt: !1359)
!1382 = !DILocation(line: 575, column: 12, scope: !1355, inlinedAt: !1359)
!1383 = !DILocation(line: 579, column: 15, scope: !1384, inlinedAt: !1359)
!1384 = distinct !DILexicalBlock(scope: !1374, file: !2, line: 578, column: 5)
!1385 = !DILocation(line: 582, column: 5, scope: !1374, inlinedAt: !1359)
!1386 = !DILocation(line: 631, column: 17, scope: !1350)
!1387 = !DILocation(line: 632, column: 9, scope: !1350)
!1388 = !DILocation(line: 635, column: 20, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 635, column: 13)
!1390 = !DILocation(line: 635, column: 25, scope: !1389)
!1391 = !DILocation(line: 0, scope: !1107, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 635, column: 13, scope: !1389)
!1393 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1392)
!1394 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1392)
!1395 = !DILocation(line: 635, column: 13, scope: !1350)
!1396 = !DILocalVariable(name: "f", arg: 1, scope: !1397, file: !2, line: 110, type: !319)
!1397 = distinct !DISubprogram(name: "advance", scope: !2, file: !2, line: 110, type: !1398, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1400)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !319}
!1400 = !{!1396}
!1401 = !DILocation(line: 0, scope: !1397, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 637, column: 13, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 636, column: 11)
!1404 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1402)
!1405 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1402)
!1406 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 114, column: 7)
!1407 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1402)
!1408 = !DILocation(line: 638, column: 22, scope: !1403)
!1409 = !DILocation(line: 638, column: 21, scope: !1403)
!1410 = !DILocation(line: 639, column: 13, scope: !1403)
!1411 = !DILocation(line: 0, scope: !1107, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 641, column: 13, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 641, column: 13)
!1414 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1412)
!1415 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1412)
!1416 = !DILocation(line: 641, column: 36, scope: !1413)
!1417 = !DILocation(line: 641, column: 46, scope: !1413)
!1418 = !DILocation(line: 0, scope: !1107, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 641, column: 39, scope: !1413)
!1420 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1419)
!1421 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1419)
!1422 = !DILocation(line: 641, column: 13, scope: !1350)
!1423 = !DILocation(line: 0, scope: !1397, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 643, column: 13, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 642, column: 11)
!1426 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1424)
!1427 = !DILocation(line: 570, column: 14, scope: !1355, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 644, column: 21, scope: !1425)
!1429 = !DILocation(line: 0, scope: !1107, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 570, column: 7, scope: !1355, inlinedAt: !1428)
!1431 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1430)
!1432 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1430)
!1433 = !DILocation(line: 570, column: 7, scope: !1356, inlinedAt: !1428)
!1434 = !DILocation(line: 562, column: 18, scope: !1346, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 573, column: 17, scope: !1368, inlinedAt: !1428)
!1436 = !DILocation(line: 562, column: 10, scope: !1346, inlinedAt: !1435)
!1437 = !DILocation(line: 562, column: 25, scope: !1346, inlinedAt: !1435)
!1438 = !DILocation(line: 0, scope: !1356, inlinedAt: !1428)
!1439 = !DILocation(line: 574, column: 5, scope: !1368, inlinedAt: !1428)
!1440 = !DILocation(line: 575, column: 12, scope: !1374, inlinedAt: !1428)
!1441 = !DILocation(line: 575, column: 25, scope: !1374, inlinedAt: !1428)
!1442 = !DILocation(line: 576, column: 12, scope: !1374, inlinedAt: !1428)
!1443 = !DILocation(line: 576, column: 15, scope: !1374, inlinedAt: !1428)
!1444 = !DILocation(line: 576, column: 28, scope: !1374, inlinedAt: !1428)
!1445 = !DILocation(line: 577, column: 12, scope: !1374, inlinedAt: !1428)
!1446 = !DILocation(line: 577, column: 15, scope: !1374, inlinedAt: !1428)
!1447 = !DILocation(line: 577, column: 28, scope: !1374, inlinedAt: !1428)
!1448 = !DILocation(line: 575, column: 12, scope: !1355, inlinedAt: !1428)
!1449 = !DILocation(line: 579, column: 15, scope: !1384, inlinedAt: !1428)
!1450 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 645, column: 13, scope: !1425)
!1452 = !DILocation(line: 582, column: 5, scope: !1374, inlinedAt: !1428)
!1453 = !DILocation(line: 0, scope: !1397, inlinedAt: !1451)
!1454 = !DILocation(line: 646, column: 13, scope: !1425)
!1455 = !DILocation(line: 651, column: 9, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 651, column: 9)
!1457 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 651, column: 9)
!1458 = !DILocation(line: 651, column: 9, scope: !1457)
!1459 = !DILocation(line: 553, column: 7, scope: !1460, inlinedAt: !1462)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 553, column: 7)
!1461 = distinct !DISubprogram(name: "expr", scope: !2, file: !2, line: 551, type: !1347, scopeLine: 552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218)
!1462 = distinct !DILocation(line: 652, column: 17, scope: !1350)
!1463 = !DILocation(line: 553, column: 14, scope: !1460, inlinedAt: !1462)
!1464 = !DILocation(line: 553, column: 11, scope: !1460, inlinedAt: !1462)
!1465 = !DILocation(line: 553, column: 7, scope: !1461, inlinedAt: !1462)
!1466 = !DILocation(line: 554, column: 5, scope: !1460, inlinedAt: !1462)
!1467 = !DILocation(line: 556, column: 10, scope: !1461, inlinedAt: !1462)
!1468 = !DILocation(line: 653, column: 5, scope: !1350)
!1469 = !DILocation(line: 655, column: 3, scope: !1337)
!1470 = distinct !DISubprogram(name: "unary_operator", scope: !2, file: !2, line: 366, type: !1347, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1471)
!1471 = !{!1472, !1506, !1509, !1510, !1514, !1515, !1518, !1519, !1521}
!1472 = !DILocalVariable(name: "stat_buf", scope: !1470, file: !2, line: 368, type: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1474, line: 26, size: 1152, elements: !1475)
!1474 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1475 = !{!1476, !1478, !1480, !1482, !1484, !1486, !1488, !1489, !1490, !1491, !1493, !1495, !1502, !1503, !1504}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1473, file: !1474, line: 31, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !271, line: 145, baseType: !264)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1473, file: !1474, line: 36, baseType: !1479, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !271, line: 148, baseType: !264)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1473, file: !1474, line: 44, baseType: !1481, size: 64, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !271, line: 151, baseType: !264)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1473, file: !1474, line: 45, baseType: !1483, size: 32, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !271, line: 150, baseType: !222)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1473, file: !1474, line: 47, baseType: !1485, size: 32, offset: 224)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !271, line: 146, baseType: !222)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1473, file: !1474, line: 48, baseType: !1487, size: 32, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !271, line: 147, baseType: !222)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1473, file: !1474, line: 50, baseType: !260, size: 32, offset: 288)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1473, file: !1474, line: 52, baseType: !1477, size: 64, offset: 320)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1473, file: !1474, line: 57, baseType: !358, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1473, file: !1474, line: 61, baseType: !1492, size: 64, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !271, line: 175, baseType: !272)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1473, file: !1474, line: 63, baseType: !1494, size: 64, offset: 512)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !271, line: 180, baseType: !272)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1473, file: !1474, line: 74, baseType: !1496, size: 128, offset: 576)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1497, line: 11, size: 128, elements: !1498)
!1497 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1496, file: !1497, line: 16, baseType: !270, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1496, file: !1497, line: 21, baseType: !1501, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !271, line: 197, baseType: !272)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1473, file: !1474, line: 75, baseType: !1496, size: 128, offset: 704)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1473, file: !1474, line: 76, baseType: !1496, size: 128, offset: 832)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1473, file: !1474, line: 89, baseType: !1505, size: 192, offset: 960)
!1505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1501, size: 192, elements: !412)
!1506 = !DILocalVariable(name: "atime", scope: !1507, file: !2, line: 401, type: !1496)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !2, line: 397, column: 7)
!1508 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 371, column: 5)
!1509 = !DILocalVariable(name: "mtime", scope: !1507, file: !2, line: 402, type: !1496)
!1510 = !DILocalVariable(name: "euid", scope: !1511, file: !2, line: 412, type: !1512)
!1511 = distinct !DILexicalBlock(scope: !1508, file: !2, line: 407, column: 7)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1513, line: 79, baseType: !1485)
!1513 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1514 = !DILocalVariable(name: "NO_UID", scope: !1511, file: !2, line: 413, type: !1512)
!1515 = !DILocalVariable(name: "egid", scope: !1516, file: !2, line: 423, type: !1517)
!1516 = distinct !DILexicalBlock(scope: !1508, file: !2, line: 418, column: 7)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1513, line: 64, baseType: !1487)
!1518 = !DILocalVariable(name: "NO_GID", scope: !1516, file: !2, line: 424, type: !1517)
!1519 = !DILocalVariable(name: "fd", scope: !1520, file: !2, line: 489, type: !272)
!1520 = distinct !DILexicalBlock(scope: !1508, file: !2, line: 488, column: 7)
!1521 = !DILocalVariable(name: "arg", scope: !1520, file: !2, line: 490, type: !265)
!1522 = distinct !DIAssignID()
!1523 = distinct !DIAssignID()
!1524 = !DILocation(line: 0, scope: !1470)
!1525 = !DILocation(line: 368, column: 3, scope: !1470)
!1526 = !DILocation(line: 370, column: 11, scope: !1470)
!1527 = !DILocation(line: 370, column: 16, scope: !1470)
!1528 = !DILocation(line: 370, column: 3, scope: !1470)
!1529 = !DILocation(line: 373, column: 26, scope: !1508)
!1530 = !DILocation(line: 373, column: 67, scope: !1508)
!1531 = !DILocation(line: 373, column: 72, scope: !1508)
!1532 = !DILocation(line: 373, column: 60, scope: !1508)
!1533 = !DILocation(line: 373, column: 7, scope: !1508)
!1534 = !DILocation(line: 0, scope: !1397, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1537)
!1536 = distinct !DISubprogram(name: "unary_advance", scope: !2, file: !2, line: 119, type: !642, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218)
!1537 = distinct !DILocation(line: 381, column: 7, scope: !1508)
!1538 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1535)
!1539 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1535)
!1540 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1535)
!1541 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1537)
!1542 = !DILocation(line: 382, column: 20, scope: !1508)
!1543 = !DILocation(line: 382, column: 14, scope: !1508)
!1544 = !DILocation(line: 382, column: 46, scope: !1508)
!1545 = !DILocation(line: 382, column: 7, scope: !1508)
!1546 = !DILocation(line: 0, scope: !1397, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 385, column: 7, scope: !1508)
!1549 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1547)
!1550 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1547)
!1551 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1547)
!1552 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1548)
!1553 = !DILocation(line: 386, column: 26, scope: !1508)
!1554 = !DILocation(line: 386, column: 14, scope: !1508)
!1555 = !DILocation(line: 386, column: 47, scope: !1508)
!1556 = !DILocation(line: 386, column: 7, scope: !1508)
!1557 = !DILocation(line: 0, scope: !1397, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 389, column: 7, scope: !1508)
!1560 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1558)
!1561 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1558)
!1562 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1558)
!1563 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1559)
!1564 = !DILocation(line: 390, column: 26, scope: !1508)
!1565 = !DILocation(line: 390, column: 14, scope: !1508)
!1566 = !DILocation(line: 390, column: 47, scope: !1508)
!1567 = !DILocation(line: 390, column: 7, scope: !1508)
!1568 = !DILocation(line: 0, scope: !1397, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 393, column: 7, scope: !1508)
!1571 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1569)
!1572 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1569)
!1573 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1569)
!1574 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1570)
!1575 = !DILocation(line: 394, column: 26, scope: !1508)
!1576 = !DILocation(line: 394, column: 14, scope: !1508)
!1577 = !DILocation(line: 394, column: 47, scope: !1508)
!1578 = !DILocation(line: 394, column: 7, scope: !1508)
!1579 = !DILocation(line: 0, scope: !1397, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 398, column: 9, scope: !1507)
!1582 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1580)
!1583 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1580)
!1584 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1580)
!1585 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1581)
!1586 = !DILocation(line: 399, column: 19, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1507, file: !2, line: 399, column: 13)
!1588 = !DILocation(line: 399, column: 13, scope: !1587)
!1589 = !DILocation(line: 399, column: 45, scope: !1587)
!1590 = !DILocation(line: 399, column: 13, scope: !1507)
!1591 = !DILocalVariable(name: "st", arg: 1, scope: !1592, file: !1593, line: 147, type: !1596)
!1592 = distinct !DISubprogram(name: "get_stat_atime", scope: !1593, file: !1593, line: 147, type: !1594, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1598)
!1593 = !DIFile(filename: "./lib/stat-time.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f4edb1fd4cb81bf2ea0eec563958d759")
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!1496, !1596}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1473)
!1598 = !{!1591}
!1599 = !DILocation(line: 0, scope: !1592, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 401, column: 33, scope: !1507)
!1601 = !DILocation(line: 150, column: 10, scope: !1592, inlinedAt: !1600)
!1602 = !{i64 0, i64 8, !1603, i64 8, i64 8, !1603}
!1603 = !{!1604, !1604, i64 0}
!1604 = !{!"long", !996, i64 0}
!1605 = !{i64 0, i64 8, !1603}
!1606 = !DILocation(line: 0, scope: !1507)
!1607 = !DILocalVariable(name: "st", arg: 1, scope: !1608, file: !1593, line: 169, type: !1596)
!1608 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1593, file: !1593, line: 169, type: !1594, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1609)
!1609 = !{!1607}
!1610 = !DILocation(line: 0, scope: !1608, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 402, column: 33, scope: !1507)
!1612 = !DILocation(line: 172, column: 10, scope: !1608, inlinedAt: !1611)
!1613 = !DILocalVariable(name: "a", arg: 1, scope: !1614, file: !1615, line: 64, type: !1496)
!1614 = distinct !DISubprogram(name: "timespec_cmp", scope: !1615, file: !1615, line: 64, type: !1616, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1618)
!1615 = !DIFile(filename: "./lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!260, !1496, !1496}
!1618 = !{!1613, !1619}
!1619 = !DILocalVariable(name: "b", arg: 2, scope: !1614, file: !1615, line: 64, type: !1496)
!1620 = !DILocation(line: 0, scope: !1614, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 403, column: 17, scope: !1507)
!1622 = !DILocation(line: 66, column: 14, scope: !1614, inlinedAt: !1621)
!1623 = !DILocation(line: 66, column: 12, scope: !1614, inlinedAt: !1621)
!1624 = !DILocation(line: 66, column: 45, scope: !1614, inlinedAt: !1621)
!1625 = !DILocation(line: 66, column: 43, scope: !1614, inlinedAt: !1621)
!1626 = !DILocation(line: 403, column: 45, scope: !1507)
!1627 = !DILocation(line: 0, scope: !1397, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 408, column: 9, scope: !1511)
!1630 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1628)
!1631 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1628)
!1632 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1628)
!1633 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1629)
!1634 = !DILocation(line: 409, column: 19, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 409, column: 13)
!1636 = !DILocation(line: 409, column: 13, scope: !1635)
!1637 = !DILocation(line: 409, column: 45, scope: !1635)
!1638 = !DILocation(line: 409, column: 13, scope: !1511)
!1639 = !DILocation(line: 411, column: 9, scope: !1511)
!1640 = !DILocation(line: 411, column: 15, scope: !1511)
!1641 = !DILocation(line: 412, column: 22, scope: !1511)
!1642 = !DILocation(line: 0, scope: !1511)
!1643 = !DILocation(line: 414, column: 24, scope: !1511)
!1644 = !DILocation(line: 414, column: 34, scope: !1511)
!1645 = !DILocation(line: 414, column: 37, scope: !1511)
!1646 = !DILocation(line: 414, column: 44, scope: !1511)
!1647 = !DILocation(line: 414, column: 64, scope: !1511)
!1648 = !{!1649, !1096, i64 28}
!1649 = !{!"stat", !1604, i64 0, !1604, i64 8, !1604, i64 16, !1096, i64 24, !1096, i64 28, !1096, i64 32, !1096, i64 36, !1604, i64 40, !1604, i64 48, !1604, i64 56, !1604, i64 64, !1650, i64 72, !1650, i64 88, !1650, i64 104, !996, i64 120}
!1650 = !{!"timespec", !1604, i64 0, !1604, i64 8}
!1651 = !DILocation(line: 414, column: 52, scope: !1511)
!1652 = !DILocation(line: 0, scope: !1397, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 419, column: 9, scope: !1516)
!1655 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1653)
!1656 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1653)
!1657 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1653)
!1658 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1654)
!1659 = !DILocation(line: 420, column: 19, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 420, column: 13)
!1661 = !DILocation(line: 420, column: 13, scope: !1660)
!1662 = !DILocation(line: 420, column: 45, scope: !1660)
!1663 = !DILocation(line: 420, column: 13, scope: !1516)
!1664 = !DILocation(line: 422, column: 9, scope: !1516)
!1665 = !DILocation(line: 422, column: 15, scope: !1516)
!1666 = !DILocation(line: 423, column: 22, scope: !1516)
!1667 = !DILocation(line: 0, scope: !1516)
!1668 = !DILocation(line: 425, column: 24, scope: !1516)
!1669 = !DILocation(line: 425, column: 34, scope: !1516)
!1670 = !DILocation(line: 425, column: 37, scope: !1516)
!1671 = !DILocation(line: 425, column: 44, scope: !1516)
!1672 = !DILocation(line: 425, column: 64, scope: !1516)
!1673 = !{!1649, !1096, i64 32}
!1674 = !DILocation(line: 425, column: 52, scope: !1516)
!1675 = !DILocation(line: 0, scope: !1397, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 429, column: 7, scope: !1508)
!1678 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1676)
!1679 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1676)
!1680 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1676)
!1681 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1677)
!1682 = !DILocation(line: 432, column: 21, scope: !1508)
!1683 = !DILocation(line: 432, column: 15, scope: !1508)
!1684 = !DILocation(line: 432, column: 47, scope: !1508)
!1685 = !DILocation(line: 433, column: 15, scope: !1508)
!1686 = !DILocation(line: 432, column: 7, scope: !1508)
!1687 = !DILocation(line: 0, scope: !1397, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 436, column: 7, scope: !1508)
!1690 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1688)
!1691 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1688)
!1692 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1688)
!1693 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1689)
!1694 = !DILocation(line: 437, column: 21, scope: !1508)
!1695 = !DILocation(line: 437, column: 15, scope: !1508)
!1696 = !DILocation(line: 437, column: 47, scope: !1508)
!1697 = !DILocation(line: 438, column: 15, scope: !1508)
!1698 = !DILocation(line: 437, column: 7, scope: !1508)
!1699 = !DILocation(line: 0, scope: !1397, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 441, column: 7, scope: !1508)
!1702 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1700)
!1703 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1700)
!1704 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1700)
!1705 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1701)
!1706 = !DILocation(line: 442, column: 21, scope: !1508)
!1707 = !DILocation(line: 442, column: 15, scope: !1508)
!1708 = !DILocation(line: 442, column: 47, scope: !1508)
!1709 = !DILocation(line: 443, column: 15, scope: !1508)
!1710 = !DILocation(line: 442, column: 7, scope: !1508)
!1711 = !DILocation(line: 0, scope: !1397, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 446, column: 7, scope: !1508)
!1714 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1712)
!1715 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1712)
!1716 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1712)
!1717 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1713)
!1718 = !DILocation(line: 447, column: 21, scope: !1508)
!1719 = !DILocation(line: 447, column: 15, scope: !1508)
!1720 = !DILocation(line: 447, column: 47, scope: !1508)
!1721 = !DILocation(line: 448, column: 15, scope: !1508)
!1722 = !DILocation(line: 447, column: 7, scope: !1508)
!1723 = !DILocation(line: 0, scope: !1397, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 451, column: 7, scope: !1508)
!1726 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1724)
!1727 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1724)
!1728 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1724)
!1729 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1725)
!1730 = !DILocation(line: 452, column: 21, scope: !1508)
!1731 = !DILocation(line: 452, column: 15, scope: !1508)
!1732 = !DILocation(line: 452, column: 47, scope: !1508)
!1733 = !DILocation(line: 453, column: 15, scope: !1508)
!1734 = !DILocation(line: 452, column: 7, scope: !1508)
!1735 = !DILocation(line: 0, scope: !1397, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 456, column: 7, scope: !1508)
!1738 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1736)
!1739 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1736)
!1740 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1736)
!1741 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1737)
!1742 = !DILocation(line: 457, column: 21, scope: !1508)
!1743 = !DILocation(line: 457, column: 15, scope: !1508)
!1744 = !DILocation(line: 457, column: 47, scope: !1508)
!1745 = !DILocation(line: 458, column: 15, scope: !1508)
!1746 = !DILocation(line: 457, column: 7, scope: !1508)
!1747 = !DILocation(line: 0, scope: !1397, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 461, column: 7, scope: !1508)
!1750 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1748)
!1751 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1748)
!1752 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1748)
!1753 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1749)
!1754 = !DILocation(line: 462, column: 21, scope: !1508)
!1755 = !DILocation(line: 462, column: 15, scope: !1508)
!1756 = !DILocation(line: 462, column: 47, scope: !1508)
!1757 = !DILocation(line: 463, column: 15, scope: !1508)
!1758 = !DILocation(line: 462, column: 7, scope: !1508)
!1759 = !DILocation(line: 0, scope: !1397, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 469, column: 7, scope: !1508)
!1762 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1760)
!1763 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1760)
!1764 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1760)
!1765 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1761)
!1766 = !DILocation(line: 470, column: 25, scope: !1508)
!1767 = !DILocalVariable(name: "linkbuf", scope: !1768, file: !1769, line: 51, type: !203)
!1768 = distinct !DISubprogram(name: "issymlink", scope: !1769, file: !1769, line: 49, type: !1770, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1772)
!1769 = !DIFile(filename: "./lib/issymlink.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3ed5fe5c76158b7c9a68dd013fb9e151")
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!260, !265}
!1772 = !{!1773, !1767}
!1773 = !DILocalVariable(name: "filename", arg: 1, scope: !1768, file: !1769, line: 49, type: !265)
!1774 = !DILocation(line: 0, scope: !1768, inlinedAt: !1775)
!1775 = distinct !DILocation(line: 470, column: 14, scope: !1508)
!1776 = !DILocation(line: 51, column: 3, scope: !1768, inlinedAt: !1775)
!1777 = !DILocation(line: 52, column: 7, scope: !1778, inlinedAt: !1775)
!1778 = distinct !DILexicalBlock(scope: !1768, file: !1769, line: 52, column: 7)
!1779 = !DILocation(line: 52, column: 54, scope: !1778, inlinedAt: !1775)
!1780 = !DILocation(line: 58, column: 1, scope: !1768, inlinedAt: !1775)
!1781 = !DILocation(line: 470, column: 7, scope: !1508)
!1782 = !DILocation(line: 0, scope: !1397, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 473, column: 7, scope: !1508)
!1785 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1783)
!1786 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1783)
!1787 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1783)
!1788 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1784)
!1789 = !DILocation(line: 474, column: 21, scope: !1508)
!1790 = !DILocation(line: 474, column: 15, scope: !1508)
!1791 = !DILocation(line: 474, column: 47, scope: !1508)
!1792 = !DILocation(line: 475, column: 15, scope: !1508)
!1793 = !DILocation(line: 474, column: 7, scope: !1508)
!1794 = !DILocation(line: 0, scope: !1397, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 478, column: 7, scope: !1508)
!1797 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1795)
!1798 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1795)
!1799 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1795)
!1800 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1796)
!1801 = !DILocation(line: 479, column: 21, scope: !1508)
!1802 = !DILocation(line: 479, column: 15, scope: !1508)
!1803 = !DILocation(line: 479, column: 47, scope: !1508)
!1804 = !DILocation(line: 480, column: 15, scope: !1508)
!1805 = !DILocation(line: 479, column: 7, scope: !1508)
!1806 = !DILocation(line: 0, scope: !1397, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 483, column: 7, scope: !1508)
!1809 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1807)
!1810 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1807)
!1811 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1807)
!1812 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1808)
!1813 = !DILocation(line: 484, column: 21, scope: !1508)
!1814 = !DILocation(line: 484, column: 15, scope: !1508)
!1815 = !DILocation(line: 484, column: 47, scope: !1508)
!1816 = !DILocation(line: 485, column: 15, scope: !1508)
!1817 = !DILocation(line: 484, column: 7, scope: !1508)
!1818 = !DILocation(line: 0, scope: !1397, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 491, column: 9, scope: !1520)
!1821 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1819)
!1822 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1819)
!1823 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1819)
!1824 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1820)
!1825 = !DILocation(line: 492, column: 25, scope: !1520)
!1826 = !DILocation(line: 492, column: 15, scope: !1520)
!1827 = !DILocation(line: 0, scope: !1520)
!1828 = !DILocation(line: 493, column: 9, scope: !1520)
!1829 = !DILocation(line: 493, column: 15, scope: !1520)
!1830 = !DILocation(line: 494, column: 14, scope: !1520)
!1831 = !DILocation(line: 495, column: 17, scope: !1520)
!1832 = !DILocation(line: 495, column: 23, scope: !1520)
!1833 = !DILocation(line: 495, column: 33, scope: !1520)
!1834 = !DILocation(line: 495, column: 72, scope: !1520)
!1835 = !DILocation(line: 495, column: 64, scope: !1520)
!1836 = !DILocation(line: 495, column: 61, scope: !1520)
!1837 = !DILocation(line: 0, scope: !1397, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 499, column: 7, scope: !1508)
!1840 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1838)
!1841 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1838)
!1842 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1838)
!1843 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1839)
!1844 = !DILocation(line: 500, column: 14, scope: !1508)
!1845 = !DILocation(line: 500, column: 31, scope: !1508)
!1846 = !DILocation(line: 500, column: 7, scope: !1508)
!1847 = !DILocation(line: 0, scope: !1397, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 121, column: 3, scope: !1536, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 503, column: 7, scope: !1508)
!1850 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1848)
!1851 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1848)
!1852 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1848)
!1853 = !DILocation(line: 122, column: 3, scope: !1536, inlinedAt: !1849)
!1854 = !DILocation(line: 504, column: 14, scope: !1508)
!1855 = !DILocation(line: 504, column: 31, scope: !1508)
!1856 = !DILocation(line: 504, column: 7, scope: !1508)
!1857 = !DILocation(line: 0, scope: !1508)
!1858 = !DILocation(line: 506, column: 1, scope: !1470)
!1859 = distinct !DISubprogram(name: "beyond", scope: !2, file: !2, line: 130, type: !642, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218)
!1860 = !DILocation(line: 132, column: 22, scope: !1859)
!1861 = !DILocation(line: 132, column: 61, scope: !1859)
!1862 = !DILocation(line: 132, column: 66, scope: !1859)
!1863 = !DILocation(line: 132, column: 54, scope: !1859)
!1864 = !DILocation(line: 132, column: 3, scope: !1859)
!1865 = distinct !DISubprogram(name: "three_arguments", scope: !2, file: !2, line: 587, type: !1347, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1866)
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
!1881 = !DILocation(line: 0, scope: !1107, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 594, column: 12, scope: !1880)
!1883 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1882)
!1884 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1882)
!1885 = !DILocation(line: 594, column: 12, scope: !1875)
!1886 = !DILocation(line: 0, scope: !1397, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 596, column: 7, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 595, column: 5)
!1889 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1887)
!1890 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !1887)
!1891 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !1887)
!1892 = !DILocation(line: 0, scope: !1107, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 570, column: 7, scope: !1355, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 597, column: 16, scope: !1888)
!1895 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1893)
!1896 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1893)
!1897 = !DILocation(line: 570, column: 7, scope: !1356, inlinedAt: !1894)
!1898 = !DILocation(line: 570, column: 14, scope: !1355, inlinedAt: !1894)
!1899 = !DILocation(line: 562, column: 18, scope: !1346, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 573, column: 17, scope: !1368, inlinedAt: !1894)
!1901 = !DILocation(line: 562, column: 10, scope: !1346, inlinedAt: !1900)
!1902 = !DILocation(line: 562, column: 25, scope: !1346, inlinedAt: !1900)
!1903 = !DILocation(line: 0, scope: !1356, inlinedAt: !1894)
!1904 = !DILocation(line: 574, column: 5, scope: !1368, inlinedAt: !1894)
!1905 = !DILocation(line: 575, column: 12, scope: !1374, inlinedAt: !1894)
!1906 = !DILocation(line: 575, column: 25, scope: !1374, inlinedAt: !1894)
!1907 = !DILocation(line: 576, column: 12, scope: !1374, inlinedAt: !1894)
!1908 = !DILocation(line: 576, column: 15, scope: !1374, inlinedAt: !1894)
!1909 = !DILocation(line: 576, column: 28, scope: !1374, inlinedAt: !1894)
!1910 = !DILocation(line: 577, column: 12, scope: !1374, inlinedAt: !1894)
!1911 = !DILocation(line: 577, column: 15, scope: !1374, inlinedAt: !1894)
!1912 = !DILocation(line: 577, column: 28, scope: !1374, inlinedAt: !1894)
!1913 = !DILocation(line: 575, column: 12, scope: !1355, inlinedAt: !1894)
!1914 = !DILocation(line: 579, column: 15, scope: !1384, inlinedAt: !1894)
!1915 = !DILocation(line: 582, column: 5, scope: !1374, inlinedAt: !1894)
!1916 = !DILocation(line: 597, column: 15, scope: !1888)
!1917 = !DILocation(line: 598, column: 5, scope: !1888)
!1918 = !DILocation(line: 0, scope: !1107, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 599, column: 12, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 599, column: 12)
!1921 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1919)
!1922 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1919)
!1923 = !DILocation(line: 599, column: 35, scope: !1920)
!1924 = !DILocation(line: 599, column: 45, scope: !1920)
!1925 = !DILocation(line: 0, scope: !1107, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 599, column: 38, scope: !1920)
!1927 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1926)
!1928 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1926)
!1929 = !DILocation(line: 599, column: 12, scope: !1880)
!1930 = !DILocation(line: 0, scope: !1397, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 601, column: 7, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1920, file: !2, line: 600, column: 5)
!1933 = !DILocation(line: 562, column: 10, scope: !1346, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 602, column: 15, scope: !1932)
!1935 = !DILocation(line: 562, column: 25, scope: !1346, inlinedAt: !1934)
!1936 = !DILocation(line: 0, scope: !1397, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 603, column: 7, scope: !1932)
!1938 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !1937)
!1939 = !DILocation(line: 604, column: 5, scope: !1932)
!1940 = !DILocation(line: 0, scope: !1107, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 605, column: 12, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1920, file: !2, line: 605, column: 12)
!1943 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1941)
!1944 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1941)
!1945 = !DILocation(line: 605, column: 40, scope: !1942)
!1946 = !DILocation(line: 0, scope: !1107, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 605, column: 43, scope: !1942)
!1948 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1947)
!1949 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1947)
!1950 = !DILocation(line: 606, column: 12, scope: !1942)
!1951 = !DILocation(line: 0, scope: !1107, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 606, column: 15, scope: !1942)
!1953 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1952)
!1954 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1952)
!1955 = !DILocation(line: 606, column: 42, scope: !1942)
!1956 = !DILocation(line: 0, scope: !1107, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 606, column: 45, scope: !1942)
!1958 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !1957)
!1959 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !1957)
!1960 = !DILocation(line: 605, column: 12, scope: !1920)
!1961 = !DILocation(line: 553, column: 14, scope: !1460, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 607, column: 13, scope: !1942)
!1963 = !DILocation(line: 553, column: 11, scope: !1460, inlinedAt: !1962)
!1964 = !DILocation(line: 553, column: 7, scope: !1461, inlinedAt: !1962)
!1965 = !DILocation(line: 554, column: 5, scope: !1460, inlinedAt: !1962)
!1966 = !DILocation(line: 556, column: 10, scope: !1461, inlinedAt: !1962)
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
!1977 = distinct !DISubprogram(name: "or", scope: !2, file: !2, line: 533, type: !1347, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1978)
!1978 = !{!1979}
!1979 = !DILocalVariable(name: "value", scope: !1977, file: !2, line: 535, type: !319)
!1980 = !DILocation(line: 0, scope: !1977)
!1981 = !DILocalVariable(name: "value", scope: !1982, file: !2, line: 516, type: !319)
!1982 = distinct !DISubprogram(name: "and", scope: !2, file: !2, line: 514, type: !1347, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1983)
!1983 = !{!1981}
!1984 = !DILocation(line: 0, scope: !1982, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 539, column: 16, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 538, column: 5)
!1987 = !DILocalVariable(name: "negated", scope: !1988, file: !2, line: 227, type: !319)
!1988 = distinct !DISubprogram(name: "term", scope: !2, file: !2, line: 224, type: !1347, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1989)
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
!2004 = !DILocation(line: 231, column: 47, scope: !1988, inlinedAt: !1996)
!2005 = !DILocation(line: 231, column: 60, scope: !1988, inlinedAt: !1996)
!2006 = !DILocation(line: 231, column: 3, scope: !1988, inlinedAt: !1996)
!2007 = !DILocation(line: 0, scope: !1397, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 233, column: 7, scope: !2009, inlinedAt: !1996)
!2009 = distinct !DILexicalBlock(scope: !1988, file: !2, line: 232, column: 5)
!2010 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !2008)
!2011 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !2008)
!2012 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !2008)
!2013 = !DILocation(line: 234, column: 17, scope: !2009, inlinedAt: !1996)
!2014 = distinct !{!2014, !2006, !2015, !1142}
!2015 = !DILocation(line: 235, column: 5, scope: !1988, inlinedAt: !1996)
!2016 = !DILocation(line: 238, column: 5, scope: !2017, inlinedAt: !1996)
!2017 = distinct !DILexicalBlock(scope: !1988, file: !2, line: 237, column: 7)
!2018 = !DILocation(line: 241, column: 7, scope: !1994, inlinedAt: !1996)
!2019 = !DILocation(line: 241, column: 20, scope: !1994, inlinedAt: !1996)
!2020 = !DILocation(line: 241, column: 27, scope: !1994, inlinedAt: !1996)
!2021 = !DILocation(line: 241, column: 30, scope: !1994, inlinedAt: !1996)
!2022 = !DILocation(line: 241, column: 43, scope: !1994, inlinedAt: !1996)
!2023 = !DILocation(line: 241, column: 7, scope: !1988, inlinedAt: !1996)
!2024 = !DILocation(line: 0, scope: !1397, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 245, column: 7, scope: !1993, inlinedAt: !1996)
!2026 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !2025)
!2027 = !DILocation(line: 114, column: 9, scope: !1406, inlinedAt: !2025)
!2028 = !DILocation(line: 0, scope: !1993, inlinedAt: !1996)
!2029 = !DILocation(line: 248, column: 16, scope: !2030, inlinedAt: !1996)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !2, line: 247, column: 7)
!2031 = distinct !DILexicalBlock(scope: !1993, file: !2, line: 247, column: 7)
!2032 = !DILocation(line: 248, column: 24, scope: !2030, inlinedAt: !1996)
!2033 = !DILocation(line: 248, column: 31, scope: !2030, inlinedAt: !1996)
!2034 = !DILocation(line: 247, column: 7, scope: !2031, inlinedAt: !1996)
!2035 = !DILocation(line: 248, column: 43, scope: !2030, inlinedAt: !1996)
!2036 = !DILocation(line: 0, scope: !1107, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 248, column: 36, scope: !2030, inlinedAt: !1996)
!2038 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2037)
!2039 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2037)
!2040 = !DILocation(line: 115, column: 5, scope: !1406, inlinedAt: !2025)
!2041 = distinct !{!2041, !2034, !2042, !1142}
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
!2064 = !DILocation(line: 0, scope: !1397, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 263, column: 7, scope: !1993, inlinedAt: !1996)
!2066 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !2065)
!2067 = !DILocation(line: 264, column: 5, scope: !1993, inlinedAt: !1996)
!2068 = !DILocation(line: 267, column: 22, scope: !2069, inlinedAt: !1996)
!2069 = distinct !DILexicalBlock(scope: !1994, file: !2, line: 267, column: 12)
!2070 = !DILocation(line: 267, column: 14, scope: !2069, inlinedAt: !1996)
!2071 = !DILocation(line: 267, column: 28, scope: !2069, inlinedAt: !1996)
!2072 = !DILocation(line: 0, scope: !1107, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 267, column: 31, scope: !2069, inlinedAt: !1996)
!2074 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2073)
!2075 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2073)
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
!2104 = !DILocation(line: 0, scope: !1397, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 280, column: 7, scope: !2103, inlinedAt: !1996)
!2106 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !2105)
!2107 = !DILocation(line: 283, column: 18, scope: !1988, inlinedAt: !1996)
!2108 = !DILocation(line: 520, column: 13, scope: !1997, inlinedAt: !1985)
!2109 = !DILocation(line: 521, column: 14, scope: !2110, inlinedAt: !1985)
!2110 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 521, column: 11)
!2111 = !DILocation(line: 521, column: 20, scope: !2110, inlinedAt: !1985)
!2112 = !DILocation(line: 521, column: 18, scope: !2110, inlinedAt: !1985)
!2113 = !DILocation(line: 521, column: 25, scope: !2110, inlinedAt: !1985)
!2114 = !DILocation(line: 521, column: 35, scope: !2110, inlinedAt: !1985)
!2115 = !DILocation(line: 0, scope: !1107, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 521, column: 28, scope: !2110, inlinedAt: !1985)
!2117 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2116)
!2118 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2116)
!2119 = !DILocation(line: 521, column: 11, scope: !1997, inlinedAt: !1985)
!2120 = !DILocation(line: 0, scope: !1397, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 523, column: 7, scope: !1997, inlinedAt: !1985)
!2122 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !2121)
!2123 = distinct !{!2123, !2124, !2125}
!2124 = !DILocation(line: 518, column: 3, scope: !1982, inlinedAt: !1985)
!2125 = !DILocation(line: 524, column: 5, scope: !1982, inlinedAt: !1985)
!2126 = !DILocation(line: 539, column: 13, scope: !1986)
!2127 = !DILocation(line: 0, scope: !1107, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 540, column: 28, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !1986, file: !2, line: 540, column: 11)
!2130 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2128)
!2131 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2128)
!2132 = !DILocation(line: 540, column: 11, scope: !1986)
!2133 = !DILocation(line: 541, column: 9, scope: !2129)
!2134 = !DILocation(line: 0, scope: !1397, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 542, column: 7, scope: !1986)
!2136 = !DILocation(line: 112, column: 3, scope: !1397, inlinedAt: !2135)
!2137 = distinct !{!2137, !2000, !2138}
!2138 = !DILocation(line: 543, column: 5, scope: !1977)
!2139 = distinct !DISubprogram(name: "binop", scope: !2, file: !2, line: 186, type: !1770, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2140)
!2140 = !{!2141}
!2141 = !DILocalVariable(name: "s", arg: 1, scope: !2139, file: !2, line: 186, type: !265)
!2142 = !DILocation(line: 0, scope: !2139)
!2143 = !DILocation(line: 0, scope: !1107, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 188, column: 13, scope: !2139)
!2145 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2144)
!2146 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2144)
!2147 = !DILocation(line: 188, column: 13, scope: !2139)
!2148 = !DILocation(line: 0, scope: !1107, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 189, column: 13, scope: !2139)
!2150 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2149)
!2151 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2149)
!2152 = !DILocation(line: 189, column: 13, scope: !2139)
!2153 = !DILocation(line: 0, scope: !1107, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 190, column: 13, scope: !2139)
!2155 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2154)
!2156 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2154)
!2157 = !DILocation(line: 190, column: 13, scope: !2139)
!2158 = !DILocation(line: 0, scope: !1107, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 191, column: 13, scope: !2139)
!2160 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2159)
!2161 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2159)
!2162 = !DILocation(line: 191, column: 13, scope: !2139)
!2163 = !DILocation(line: 0, scope: !1107, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 192, column: 13, scope: !2139)
!2165 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2164)
!2166 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2164)
!2167 = !DILocation(line: 192, column: 13, scope: !2139)
!2168 = !DILocation(line: 0, scope: !1107, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 193, column: 13, scope: !2139)
!2170 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2169)
!2171 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2169)
!2172 = !DILocation(line: 193, column: 13, scope: !2139)
!2173 = !DILocation(line: 0, scope: !1107, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 194, column: 13, scope: !2139)
!2175 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2174)
!2176 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2174)
!2177 = !DILocation(line: 194, column: 13, scope: !2139)
!2178 = !DILocation(line: 0, scope: !1107, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 195, column: 13, scope: !2139)
!2180 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2179)
!2181 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2179)
!2182 = !DILocation(line: 195, column: 13, scope: !2139)
!2183 = !DILocation(line: 0, scope: !1107, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 196, column: 13, scope: !2139)
!2185 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2184)
!2186 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2184)
!2187 = !DILocation(line: 196, column: 13, scope: !2139)
!2188 = !DILocation(line: 0, scope: !1107, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 197, column: 13, scope: !2139)
!2190 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2189)
!2191 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2189)
!2192 = !DILocation(line: 197, column: 13, scope: !2139)
!2193 = !DILocation(line: 0, scope: !1107, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 198, column: 13, scope: !2139)
!2195 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2194)
!2196 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2194)
!2197 = !DILocation(line: 198, column: 13, scope: !2139)
!2198 = !DILocation(line: 0, scope: !1107, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 199, column: 13, scope: !2139)
!2200 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2199)
!2201 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2199)
!2202 = !DILocation(line: 199, column: 13, scope: !2139)
!2203 = !DILocation(line: 0, scope: !1107, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 200, column: 13, scope: !2139)
!2205 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2204)
!2206 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2204)
!2207 = !DILocation(line: 200, column: 13, scope: !2139)
!2208 = !DILocation(line: 0, scope: !1107, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 201, column: 13, scope: !2139)
!2210 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2209)
!2211 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2209)
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
!2222 = !DILocalVariable(name: "lbuf", scope: !2223, file: !2, line: 307, type: !638)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !2, line: 306, column: 7)
!2224 = distinct !DILexicalBlock(scope: !2214, file: !2, line: 303, column: 5)
!2225 = !DILocalVariable(name: "rbuf", scope: !2223, file: !2, line: 308, type: !638)
!2226 = !DILocalVariable(name: "l", scope: !2223, file: !2, line: 309, type: !265)
!2227 = !DILocalVariable(name: "r", scope: !2223, file: !2, line: 312, type: !265)
!2228 = !DILocalVariable(name: "cmp", scope: !2223, file: !2, line: 315, type: !260)
!2229 = !DILocalVariable(name: "cmp", scope: !2230, file: !2, line: 333, type: !260)
!2230 = distinct !DILexicalBlock(scope: !2224, file: !2, line: 329, column: 7)
!2231 = !DILocalVariable(name: "st", scope: !2232, file: !2, line: 343, type: !2234)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !2, line: 342, column: 9)
!2233 = distinct !DILexicalBlock(scope: !2224, file: !2, line: 339, column: 11)
!2234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1473, size: 2304, elements: !20)
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
!2253 = !DILocation(line: 0, scope: !1107, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 296, column: 34, scope: !2214)
!2255 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2254)
!2256 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2254)
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
!2297 = !DILocalVariable(name: "finfo", scope: !2298, file: !2, line: 177, type: !1473)
!2298 = distinct !DISubprogram(name: "get_mtime", scope: !2, file: !2, line: 175, type: !2299, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2301)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!1496, !265}
!2301 = !{!2302, !2297}
!2302 = !DILocalVariable(name: "filename", arg: 1, scope: !2298, file: !2, line: 175, type: !265)
!2303 = !DILocation(line: 0, scope: !2298, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 333, column: 33, scope: !2230)
!2305 = !DILocation(line: 177, column: 3, scope: !2298, inlinedAt: !2304)
!2306 = !DILocation(line: 178, column: 11, scope: !2298, inlinedAt: !2304)
!2307 = !DILocation(line: 178, column: 35, scope: !2298, inlinedAt: !2304)
!2308 = !DILocation(line: 181, column: 1, scope: !2298, inlinedAt: !2304)
!2309 = !DILocation(line: 333, column: 33, scope: !2230)
!2310 = !DILocation(line: 334, column: 44, scope: !2230)
!2311 = !DILocation(line: 0, scope: !2298, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 334, column: 33, scope: !2230)
!2313 = !DILocation(line: 177, column: 3, scope: !2298, inlinedAt: !2312)
!2314 = !DILocation(line: 178, column: 11, scope: !2298, inlinedAt: !2312)
!2315 = !DILocation(line: 178, column: 35, scope: !2298, inlinedAt: !2312)
!2316 = !DILocation(line: 181, column: 1, scope: !2298, inlinedAt: !2312)
!2317 = !DILocation(line: 334, column: 33, scope: !2230)
!2318 = !DILocation(line: 0, scope: !1614, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 333, column: 19, scope: !2230)
!2320 = !DILocation(line: 66, column: 14, scope: !1614, inlinedAt: !2319)
!2321 = !DILocation(line: 66, column: 12, scope: !1614, inlinedAt: !2319)
!2322 = !DILocation(line: 66, column: 45, scope: !1614, inlinedAt: !2319)
!2323 = !DILocation(line: 66, column: 43, scope: !1614, inlinedAt: !2319)
!2324 = !DILocation(line: 0, scope: !2230)
!2325 = !DILocation(line: 335, column: 20, scope: !2230)
!2326 = !DILocation(line: 335, column: 16, scope: !2230)
!2327 = !DILocation(line: 339, column: 18, scope: !2233)
!2328 = !DILocation(line: 339, column: 11, scope: !2224)
!2329 = !DILocation(line: 340, column: 28, scope: !2233)
!2330 = !DILocation(line: 340, column: 9, scope: !2233)
!2331 = !DILocation(line: 343, column: 11, scope: !2232)
!2332 = !DILocation(line: 344, column: 25, scope: !2232)
!2333 = !DILocation(line: 344, column: 19, scope: !2232)
!2334 = !DILocation(line: 344, column: 47, scope: !2232)
!2335 = !DILocation(line: 345, column: 19, scope: !2232)
!2336 = !DILocation(line: 345, column: 28, scope: !2232)
!2337 = !DILocation(line: 345, column: 43, scope: !2232)
!2338 = !DILocation(line: 345, column: 22, scope: !2232)
!2339 = !DILocation(line: 345, column: 50, scope: !2232)
!2340 = !DILocation(line: 346, column: 19, scope: !2232)
!2341 = !DILocalVariable(name: "a", arg: 1, scope: !2342, file: !2343, line: 86, type: !1596)
!2342 = distinct !DISubprogram(name: "psame_inode", scope: !2343, file: !2343, line: 86, type: !2344, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2346)
!2343 = !DIFile(filename: "./lib/same-inode.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6a49db1c884e7bc93549038e7fb28788")
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!319, !1596, !1596}
!2346 = !{!2341, !2347}
!2347 = !DILocalVariable(name: "b", arg: 2, scope: !2342, file: !2343, line: 86, type: !1596)
!2348 = !DILocation(line: 0, scope: !2342, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 346, column: 22, scope: !2232)
!2350 = !DILocation(line: 90, column: 14, scope: !2342, inlinedAt: !2349)
!2351 = !{!1649, !1604, i64 0}
!2352 = !{!1649, !1604, i64 8}
!2353 = !DILocation(line: 347, column: 9, scope: !2233)
!2354 = !DILocation(line: 351, column: 21, scope: !2224)
!2355 = !DILocation(line: 351, column: 35, scope: !2224)
!2356 = !DILocation(line: 0, scope: !1107, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 351, column: 14, scope: !2224)
!2358 = !DILocation(line: 1361, column: 11, scope: !1107, inlinedAt: !2357)
!2359 = !DILocation(line: 1361, column: 10, scope: !1107, inlinedAt: !2357)
!2360 = !DILocation(line: 351, column: 49, scope: !2224)
!2361 = !DILocation(line: 351, column: 7, scope: !2224)
!2362 = !DILocation(line: 356, column: 28, scope: !2236)
!2363 = !DILocation(line: 356, column: 42, scope: !2236)
!2364 = !DILocation(line: 356, column: 19, scope: !2236)
!2365 = !DILocation(line: 0, scope: !2236)
!2366 = !DILocation(line: 357, column: 20, scope: !2236)
!2367 = !DILocation(line: 357, column: 16, scope: !2236)
!2368 = !DILocation(line: 362, column: 3, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !2, line: 362, column: 3)
!2370 = distinct !DILexicalBlock(scope: !2214, file: !2, line: 362, column: 3)
!2371 = !DILocation(line: 0, scope: !2224)
!2372 = !DILocation(line: 363, column: 1, scope: !2214)
!2373 = !DISubprogram(name: "strlen", scope: !1200, file: !1200, line: 407, type: !2374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!264, !265}
!2376 = distinct !DISubprogram(name: "find_int", scope: !2, file: !2, line: 139, type: !2377, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2379)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!265, !265}
!2379 = !{!2380, !2381, !2382}
!2380 = !DILocalVariable(name: "string", arg: 1, scope: !2376, file: !2, line: 139, type: !265)
!2381 = !DILocalVariable(name: "p", scope: !2376, file: !2, line: 141, type: !265)
!2382 = !DILocalVariable(name: "number_start", scope: !2376, file: !2, line: 142, type: !265)
!2383 = !DILocation(line: 0, scope: !2376)
!2384 = !DILocation(line: 144, column: 8, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 144, column: 3)
!2386 = !DILocation(line: 144, scope: !2385)
!2387 = !DILocation(line: 144, column: 20, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2385, file: !2, line: 144, column: 3)
!2389 = !DILocation(line: 144, column: 3, scope: !2385)
!2390 = !DILocation(line: 144, column: 46, scope: !2388)
!2391 = distinct !{!2391, !2389, !2392, !1142}
!2392 = !DILocation(line: 145, column: 5, scope: !2385)
!2393 = !DILocation(line: 147, column: 10, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 147, column: 7)
!2395 = !DILocation(line: 147, column: 7, scope: !2376)
!2396 = !DILocation(line: 158, column: 18, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2376, file: !2, line: 158, column: 7)
!2398 = !DILocalVariable(name: "c", arg: 1, scope: !2399, file: !2400, line: 233, type: !260)
!2399 = distinct !DISubprogram(name: "c_isdigit", scope: !2400, file: !2400, line: 233, type: !1338, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !2401)
!2400 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!2401 = !{!2398}
!2402 = !DILocation(line: 0, scope: !2399, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 158, column: 7, scope: !2397)
!2404 = !DILocation(line: 235, column: 3, scope: !2399, inlinedAt: !2403)
!2405 = !DILocation(line: 158, column: 7, scope: !2376)
!2406 = !DILocation(line: 0, scope: !2397)
!2407 = !DILocation(line: 160, column: 25, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2397, file: !2, line: 159, column: 5)
!2409 = !DILocation(line: 0, scope: !2399, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 160, column: 14, scope: !2408)
!2411 = !DILocation(line: 235, column: 3, scope: !2399, inlinedAt: !2410)
!2412 = !DILocation(line: 160, column: 7, scope: !2408)
!2413 = distinct !{!2413, !2412, !2414, !1142}
!2414 = !DILocation(line: 161, column: 10, scope: !2408)
!2415 = !DILocation(line: 162, column: 14, scope: !2408)
!2416 = !DILocation(line: 162, column: 7, scope: !2408)
!2417 = !DILocation(line: 163, column: 10, scope: !2408)
!2418 = distinct !{!2418, !2416, !2417, !1142}
!2419 = !DILocation(line: 164, column: 12, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 164, column: 11)
!2421 = !DILocation(line: 164, column: 11, scope: !2408)
!2422 = !DILocation(line: 165, column: 9, scope: !2420)
!2423 = !DILocation(line: 168, column: 22, scope: !2376)
!2424 = !DILocation(line: 168, column: 47, scope: !2376)
!2425 = !DILocation(line: 168, column: 3, scope: !2376)
!2426 = !DISubprogram(name: "stat", scope: !2427, file: !2427, line: 205, type: !2428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2427 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!260, !1088, !2430}
!2430 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2431)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!2432 = !DISubprogram(name: "strcoll", scope: !1200, file: !1200, line: 163, type: !1209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2433 = !DISubprogram(name: "euidaccess", scope: !2434, file: !2434, line: 292, type: !2435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2434 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!260, !265, !260}
!2437 = !DISubprogram(name: "__errno_location", scope: !2438, file: !2438, line: 37, type: !2439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2438 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!2441}
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!2442 = !DISubprogram(name: "geteuid", scope: !2434, file: !2434, line: 700, type: !2443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!1485}
!2445 = !DISubprogram(name: "getegid", scope: !2434, file: !2434, line: 706, type: !2446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!1487}
!2448 = !DISubprogram(name: "strtol", scope: !1204, file: !1204, line: 177, type: !2449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!272, !1088, !2451, !260}
!2451 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !572)
!2452 = !DISubprogram(name: "isatty", scope: !2434, file: !2434, line: 809, type: !2453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!260, !260}
!2455 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !583, file: !583, line: 50, type: !1048, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2456)
!2456 = !{!2457}
!2457 = !DILocalVariable(name: "file", arg: 1, scope: !2455, file: !583, line: 50, type: !265)
!2458 = !DILocation(line: 0, scope: !2455)
!2459 = !DILocation(line: 52, column: 13, scope: !2455)
!2460 = !DILocation(line: 53, column: 1, scope: !2455)
!2461 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !583, file: !583, line: 87, type: !1398, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2462)
!2462 = !{!2463}
!2463 = !DILocalVariable(name: "ignore", arg: 1, scope: !2461, file: !583, line: 87, type: !319)
!2464 = !DILocation(line: 0, scope: !2461)
!2465 = !DILocation(line: 89, column: 16, scope: !2461)
!2466 = !{!2467, !2467, i64 0}
!2467 = !{!"_Bool", !996, i64 0}
!2468 = !DILocation(line: 90, column: 1, scope: !2461)
!2469 = distinct !DISubprogram(name: "close_stdout", scope: !583, file: !583, line: 116, type: !642, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !2470)
!2470 = !{!2471}
!2471 = !DILocalVariable(name: "write_error", scope: !2472, file: !583, line: 121, type: !265)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !583, line: 120, column: 5)
!2473 = distinct !DILexicalBlock(scope: !2469, file: !583, line: 118, column: 7)
!2474 = !DILocation(line: 118, column: 21, scope: !2473)
!2475 = !DILocation(line: 118, column: 7, scope: !2473)
!2476 = !DILocation(line: 118, column: 29, scope: !2473)
!2477 = !DILocation(line: 119, column: 7, scope: !2473)
!2478 = !DILocation(line: 119, column: 12, scope: !2473)
!2479 = !{i8 0, i8 2}
!2480 = !DILocation(line: 119, column: 25, scope: !2473)
!2481 = !DILocation(line: 119, column: 28, scope: !2473)
!2482 = !DILocation(line: 119, column: 34, scope: !2473)
!2483 = !DILocation(line: 118, column: 7, scope: !2469)
!2484 = !DILocation(line: 121, column: 33, scope: !2472)
!2485 = !DILocation(line: 0, scope: !2472)
!2486 = !DILocation(line: 122, column: 11, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2472, file: !583, line: 122, column: 11)
!2488 = !DILocation(line: 0, scope: !2487)
!2489 = !DILocation(line: 122, column: 11, scope: !2472)
!2490 = !DILocation(line: 123, column: 9, scope: !2487)
!2491 = !DILocation(line: 126, column: 9, scope: !2487)
!2492 = !DILocation(line: 128, column: 14, scope: !2472)
!2493 = !DILocation(line: 128, column: 7, scope: !2472)
!2494 = !DILocation(line: 133, column: 42, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2469, file: !583, line: 133, column: 7)
!2496 = !DILocation(line: 133, column: 28, scope: !2495)
!2497 = !DILocation(line: 133, column: 50, scope: !2495)
!2498 = !DILocation(line: 133, column: 7, scope: !2469)
!2499 = !DILocation(line: 134, column: 12, scope: !2495)
!2500 = !DILocation(line: 134, column: 5, scope: !2495)
!2501 = !DILocation(line: 135, column: 1, scope: !2469)
!2502 = !DISubprogram(name: "_exit", scope: !2434, file: !2434, line: 624, type: !984, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2503 = distinct !DISubprogram(name: "verror", scope: !598, file: !598, line: 251, type: !2504, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2506)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{null, !260, !260, !265, !608}
!2506 = !{!2507, !2508, !2509, !2510}
!2507 = !DILocalVariable(name: "status", arg: 1, scope: !2503, file: !598, line: 251, type: !260)
!2508 = !DILocalVariable(name: "errnum", arg: 2, scope: !2503, file: !598, line: 251, type: !260)
!2509 = !DILocalVariable(name: "message", arg: 3, scope: !2503, file: !598, line: 251, type: !265)
!2510 = !DILocalVariable(name: "args", arg: 4, scope: !2503, file: !598, line: 251, type: !608)
!2511 = !DILocation(line: 0, scope: !2503)
!2512 = !DILocation(line: 261, column: 3, scope: !2503)
!2513 = !DILocation(line: 265, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2503, file: !598, line: 265, column: 7)
!2515 = !DILocation(line: 265, column: 7, scope: !2503)
!2516 = !DILocation(line: 266, column: 5, scope: !2514)
!2517 = !DILocation(line: 272, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2514, file: !598, line: 268, column: 5)
!2519 = !DILocation(line: 276, column: 3, scope: !2503)
!2520 = !DILocation(line: 282, column: 1, scope: !2503)
!2521 = distinct !DISubprogram(name: "flush_stdout", scope: !598, file: !598, line: 163, type: !642, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2522)
!2522 = !{!2523}
!2523 = !DILocalVariable(name: "stdout_fd", scope: !2521, file: !598, line: 166, type: !260)
!2524 = !DILocation(line: 0, scope: !2521)
!2525 = !DILocalVariable(name: "fd", arg: 1, scope: !2526, file: !598, line: 145, type: !260)
!2526 = distinct !DISubprogram(name: "is_open", scope: !598, file: !598, line: 145, type: !2453, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2527)
!2527 = !{!2525}
!2528 = !DILocation(line: 0, scope: !2526, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 182, column: 25, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2521, file: !598, line: 182, column: 7)
!2531 = !DILocation(line: 157, column: 15, scope: !2526, inlinedAt: !2529)
!2532 = !DILocation(line: 157, column: 12, scope: !2526, inlinedAt: !2529)
!2533 = !DILocation(line: 182, column: 7, scope: !2521)
!2534 = !DILocation(line: 184, column: 5, scope: !2530)
!2535 = !DILocation(line: 185, column: 1, scope: !2521)
!2536 = distinct !DISubprogram(name: "error_tail", scope: !598, file: !598, line: 219, type: !2504, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2537)
!2537 = !{!2538, !2539, !2540, !2541}
!2538 = !DILocalVariable(name: "status", arg: 1, scope: !2536, file: !598, line: 219, type: !260)
!2539 = !DILocalVariable(name: "errnum", arg: 2, scope: !2536, file: !598, line: 219, type: !260)
!2540 = !DILocalVariable(name: "message", arg: 3, scope: !2536, file: !598, line: 219, type: !265)
!2541 = !DILocalVariable(name: "args", arg: 4, scope: !2536, file: !598, line: 219, type: !608)
!2542 = distinct !DIAssignID()
!2543 = !DILocation(line: 0, scope: !2536)
!2544 = !DILocation(line: 229, column: 13, scope: !2536)
!2545 = !DILocalVariable(name: "__stream", arg: 1, scope: !2546, file: !1084, line: 132, type: !2549)
!2546 = distinct !DISubprogram(name: "vfprintf", scope: !1084, file: !1084, line: 132, type: !2547, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2584)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!260, !2549, !1088, !608}
!2549 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2550)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !2552)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !2553)
!2553 = !{!2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2552, file: !336, line: 51, baseType: !260, size: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2552, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2552, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2552, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2552, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2552, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2552, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2552, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2552, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2552, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2552, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2552, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2552, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2552, file: !336, line: 70, baseType: !2568, size: 64, offset: 832)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2552, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2552, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2552, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2552, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2552, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2552, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2552, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2552, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2552, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2552, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2552, file: !336, line: 93, baseType: !2568, size: 64, offset: 1344)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2552, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2552, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2552, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2552, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!2584 = !{!2545, !2585, !2586}
!2585 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2546, file: !1084, line: 133, type: !1088)
!2586 = !DILocalVariable(name: "__ap", arg: 3, scope: !2546, file: !1084, line: 133, type: !608)
!2587 = !DILocation(line: 0, scope: !2546, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 229, column: 3, scope: !2536)
!2589 = !DILocation(line: 135, column: 10, scope: !2546, inlinedAt: !2588)
!2590 = !DILocation(line: 232, column: 3, scope: !2536)
!2591 = !DILocation(line: 233, column: 7, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2536, file: !598, line: 233, column: 7)
!2593 = !DILocation(line: 233, column: 7, scope: !2536)
!2594 = !DILocalVariable(name: "errbuf", scope: !2595, file: !598, line: 193, type: !2599)
!2595 = distinct !DISubprogram(name: "print_errno_message", scope: !598, file: !598, line: 188, type: !984, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2596)
!2596 = !{!2597, !2598, !2594}
!2597 = !DILocalVariable(name: "errnum", arg: 1, scope: !2595, file: !598, line: 188, type: !260)
!2598 = !DILocalVariable(name: "s", scope: !2595, file: !598, line: 190, type: !265)
!2599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2600)
!2600 = !{!2601}
!2601 = !DISubrange(count: 1024)
!2602 = !DILocation(line: 0, scope: !2595, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 234, column: 5, scope: !2592)
!2604 = !DILocation(line: 193, column: 3, scope: !2595, inlinedAt: !2603)
!2605 = !DILocation(line: 195, column: 7, scope: !2595, inlinedAt: !2603)
!2606 = !DILocation(line: 207, column: 9, scope: !2607, inlinedAt: !2603)
!2607 = distinct !DILexicalBlock(scope: !2595, file: !598, line: 207, column: 7)
!2608 = !DILocation(line: 207, column: 7, scope: !2595, inlinedAt: !2603)
!2609 = !DILocation(line: 208, column: 9, scope: !2607, inlinedAt: !2603)
!2610 = !DILocation(line: 208, column: 5, scope: !2607, inlinedAt: !2603)
!2611 = !DILocation(line: 214, column: 3, scope: !2595, inlinedAt: !2603)
!2612 = !DILocation(line: 216, column: 1, scope: !2595, inlinedAt: !2603)
!2613 = !DILocation(line: 234, column: 5, scope: !2592)
!2614 = !DILocation(line: 238, column: 3, scope: !2536)
!2615 = !DILocalVariable(name: "__c", arg: 1, scope: !2616, file: !2617, line: 101, type: !260)
!2616 = distinct !DISubprogram(name: "putc_unlocked", scope: !2617, file: !2617, line: 101, type: !2618, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2620)
!2617 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!260, !260, !2550}
!2620 = !{!2615, !2621}
!2621 = !DILocalVariable(name: "__stream", arg: 2, scope: !2616, file: !2617, line: 101, type: !2550)
!2622 = !DILocation(line: 0, scope: !2616, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 238, column: 3, scope: !2536)
!2624 = !DILocation(line: 103, column: 10, scope: !2616, inlinedAt: !2623)
!2625 = !{!2626, !995, i64 40}
!2626 = !{!"_IO_FILE", !1096, i64 0, !995, i64 8, !995, i64 16, !995, i64 24, !995, i64 32, !995, i64 40, !995, i64 48, !995, i64 56, !995, i64 64, !995, i64 72, !995, i64 80, !995, i64 88, !995, i64 96, !995, i64 104, !1096, i64 112, !1096, i64 116, !1604, i64 120, !1137, i64 128, !996, i64 130, !996, i64 131, !995, i64 136, !1604, i64 144, !995, i64 152, !995, i64 160, !995, i64 168, !995, i64 176, !1604, i64 184, !1096, i64 192, !996, i64 196}
!2627 = !{!2626, !995, i64 48}
!2628 = !{!"branch_weights", i32 2000, i32 1}
!2629 = !DILocation(line: 240, column: 3, scope: !2536)
!2630 = !DILocation(line: 241, column: 7, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2536, file: !598, line: 241, column: 7)
!2632 = !DILocation(line: 241, column: 7, scope: !2536)
!2633 = !DILocation(line: 242, column: 5, scope: !2631)
!2634 = !DILocation(line: 243, column: 1, scope: !2536)
!2635 = !DISubprogram(name: "__vfprintf_chk", scope: !1084, file: !1084, line: 96, type: !2636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!260, !2549, !260, !1088, !608}
!2638 = !DISubprogram(name: "strerror_r", scope: !1200, file: !1200, line: 444, type: !2639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!258, !260, !258, !262}
!2641 = !DISubprogram(name: "__overflow", scope: !1090, file: !1090, line: 886, type: !2642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!260, !2550, !260}
!2644 = !DISubprogram(name: "fflush_unlocked", scope: !1090, file: !1090, line: 239, type: !2645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!260, !2550}
!2647 = !DISubprogram(name: "fcntl", scope: !2648, file: !2648, line: 149, type: !2649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2648 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!260, !260, !260, null}
!2651 = distinct !DISubprogram(name: "error", scope: !598, file: !598, line: 285, type: !2652, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2654)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{null, !260, !260, !265, null}
!2654 = !{!2655, !2656, !2657, !2658}
!2655 = !DILocalVariable(name: "status", arg: 1, scope: !2651, file: !598, line: 285, type: !260)
!2656 = !DILocalVariable(name: "errnum", arg: 2, scope: !2651, file: !598, line: 285, type: !260)
!2657 = !DILocalVariable(name: "message", arg: 3, scope: !2651, file: !598, line: 285, type: !265)
!2658 = !DILocalVariable(name: "ap", scope: !2651, file: !598, line: 287, type: !2659)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1090, line: 52, baseType: !2660)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2661, line: 12, baseType: !2662)
!2661 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !598, baseType: !2663)
!2663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 192, elements: !204)
!2664 = distinct !DIAssignID()
!2665 = !DILocation(line: 0, scope: !2651)
!2666 = !DILocation(line: 287, column: 3, scope: !2651)
!2667 = !DILocation(line: 288, column: 3, scope: !2651)
!2668 = !DILocation(line: 289, column: 3, scope: !2651)
!2669 = !DILocation(line: 290, column: 3, scope: !2651)
!2670 = !DILocation(line: 291, column: 1, scope: !2651)
!2671 = !DILocation(line: 0, scope: !605)
!2672 = !DILocation(line: 302, column: 7, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !605, file: !598, line: 302, column: 7)
!2674 = !DILocation(line: 302, column: 7, scope: !605)
!2675 = !DILocation(line: 307, column: 11, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !598, line: 307, column: 11)
!2677 = distinct !DILexicalBlock(scope: !2673, file: !598, line: 303, column: 5)
!2678 = !DILocation(line: 307, column: 27, scope: !2676)
!2679 = !DILocation(line: 308, column: 11, scope: !2676)
!2680 = !DILocation(line: 308, column: 28, scope: !2676)
!2681 = !DILocation(line: 308, column: 25, scope: !2676)
!2682 = !DILocation(line: 309, column: 15, scope: !2676)
!2683 = !DILocation(line: 309, column: 33, scope: !2676)
!2684 = !DILocation(line: 310, column: 19, scope: !2676)
!2685 = !DILocation(line: 311, column: 22, scope: !2676)
!2686 = !DILocation(line: 311, column: 56, scope: !2676)
!2687 = !DILocation(line: 307, column: 11, scope: !2677)
!2688 = !DILocation(line: 316, column: 21, scope: !2677)
!2689 = !DILocation(line: 317, column: 23, scope: !2677)
!2690 = !DILocation(line: 318, column: 5, scope: !2677)
!2691 = !DILocation(line: 327, column: 3, scope: !605)
!2692 = !DILocation(line: 331, column: 7, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !605, file: !598, line: 331, column: 7)
!2694 = !DILocation(line: 331, column: 7, scope: !605)
!2695 = !DILocation(line: 332, column: 5, scope: !2693)
!2696 = !DILocation(line: 338, column: 7, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2693, file: !598, line: 334, column: 5)
!2698 = !DILocation(line: 346, column: 3, scope: !605)
!2699 = !DILocation(line: 350, column: 3, scope: !605)
!2700 = !DILocation(line: 356, column: 1, scope: !605)
!2701 = distinct !DISubprogram(name: "error_at_line", scope: !598, file: !598, line: 359, type: !2702, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2704)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{null, !260, !260, !265, !222, !265, null}
!2704 = !{!2705, !2706, !2707, !2708, !2709, !2710}
!2705 = !DILocalVariable(name: "status", arg: 1, scope: !2701, file: !598, line: 359, type: !260)
!2706 = !DILocalVariable(name: "errnum", arg: 2, scope: !2701, file: !598, line: 359, type: !260)
!2707 = !DILocalVariable(name: "file_name", arg: 3, scope: !2701, file: !598, line: 359, type: !265)
!2708 = !DILocalVariable(name: "line_number", arg: 4, scope: !2701, file: !598, line: 360, type: !222)
!2709 = !DILocalVariable(name: "message", arg: 5, scope: !2701, file: !598, line: 360, type: !265)
!2710 = !DILocalVariable(name: "ap", scope: !2701, file: !598, line: 362, type: !2659)
!2711 = distinct !DIAssignID()
!2712 = !DILocation(line: 0, scope: !2701)
!2713 = !DILocation(line: 362, column: 3, scope: !2701)
!2714 = !DILocation(line: 363, column: 3, scope: !2701)
!2715 = !DILocation(line: 364, column: 3, scope: !2701)
!2716 = !DILocation(line: 366, column: 3, scope: !2701)
!2717 = !DILocation(line: 367, column: 1, scope: !2701)
!2718 = distinct !DISubprogram(name: "getprogname", scope: !904, file: !904, line: 54, type: !2719, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !903)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!265}
!2721 = !DILocation(line: 58, column: 10, scope: !2718)
!2722 = !DILocation(line: 58, column: 3, scope: !2718)
!2723 = distinct !DISubprogram(name: "umaxtostr", scope: !2724, file: !2724, line: 29, type: !2725, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !905, retainedNodes: !2727)
!2724 = !DIFile(filename: "lib/anytostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e5b8bc0749223f86edfe264a04f25de0")
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!258, !908, !258}
!2727 = !{!2728, !2729, !2730}
!2728 = !DILocalVariable(name: "i", arg: 1, scope: !2723, file: !2724, line: 29, type: !908)
!2729 = !DILocalVariable(name: "buf", arg: 2, scope: !2723, file: !2724, line: 29, type: !258)
!2730 = !DILocalVariable(name: "p", scope: !2723, file: !2724, line: 31, type: !258)
!2731 = !DILocation(line: 0, scope: !2723)
!2732 = !DILocation(line: 31, column: 17, scope: !2723)
!2733 = !DILocation(line: 32, column: 6, scope: !2723)
!2734 = !DILocation(line: 45, column: 24, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !2724, line: 43, column: 5)
!2736 = distinct !DILexicalBlock(scope: !2723, file: !2724, line: 34, column: 7)
!2737 = !DILocation(line: 45, column: 16, scope: !2735)
!2738 = !DILocation(line: 45, column: 10, scope: !2735)
!2739 = !DILocation(line: 45, column: 14, scope: !2735)
!2740 = !DILocation(line: 46, column: 17, scope: !2735)
!2741 = !DILocation(line: 46, column: 24, scope: !2735)
!2742 = !DILocation(line: 45, column: 9, scope: !2735)
!2743 = distinct !{!2743, !2744, !2745, !1142}
!2744 = !DILocation(line: 44, column: 7, scope: !2735)
!2745 = !DILocation(line: 46, column: 28, scope: !2735)
!2746 = !DILocation(line: 49, column: 3, scope: !2723)
!2747 = distinct !DISubprogram(name: "set_program_name", scope: !647, file: !647, line: 37, type: !1048, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !2748)
!2748 = !{!2749, !2750, !2751}
!2749 = !DILocalVariable(name: "argv0", arg: 1, scope: !2747, file: !647, line: 37, type: !265)
!2750 = !DILocalVariable(name: "slash", scope: !2747, file: !647, line: 44, type: !265)
!2751 = !DILocalVariable(name: "base", scope: !2747, file: !647, line: 45, type: !265)
!2752 = !DILocation(line: 0, scope: !2747)
!2753 = !DILocation(line: 44, column: 23, scope: !2747)
!2754 = !DILocation(line: 45, column: 22, scope: !2747)
!2755 = !DILocation(line: 46, column: 17, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2747, file: !647, line: 46, column: 7)
!2757 = !DILocation(line: 46, column: 9, scope: !2756)
!2758 = !DILocation(line: 46, column: 25, scope: !2756)
!2759 = !DILocation(line: 46, column: 40, scope: !2756)
!2760 = !DILocalVariable(name: "__s1", arg: 1, scope: !2761, file: !1108, line: 974, type: !1228)
!2761 = distinct !DISubprogram(name: "memeq", scope: !1108, file: !1108, line: 974, type: !2762, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!319, !1228, !1228, !262}
!2764 = !{!2760, !2765, !2766}
!2765 = !DILocalVariable(name: "__s2", arg: 2, scope: !2761, file: !1108, line: 974, type: !1228)
!2766 = !DILocalVariable(name: "__n", arg: 3, scope: !2761, file: !1108, line: 974, type: !262)
!2767 = !DILocation(line: 0, scope: !2761, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 46, column: 28, scope: !2756)
!2769 = !DILocation(line: 976, column: 11, scope: !2761, inlinedAt: !2768)
!2770 = !DILocation(line: 976, column: 10, scope: !2761, inlinedAt: !2768)
!2771 = !DILocation(line: 46, column: 7, scope: !2747)
!2772 = !DILocation(line: 49, column: 11, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !647, line: 49, column: 11)
!2774 = distinct !DILexicalBlock(scope: !2756, file: !647, line: 47, column: 5)
!2775 = !DILocation(line: 49, column: 36, scope: !2773)
!2776 = !DILocation(line: 49, column: 11, scope: !2774)
!2777 = !DILocation(line: 65, column: 16, scope: !2747)
!2778 = !DILocation(line: 71, column: 27, scope: !2747)
!2779 = !DILocation(line: 74, column: 33, scope: !2747)
!2780 = !DILocation(line: 76, column: 1, scope: !2747)
!2781 = !DISubprogram(name: "strrchr", scope: !1200, file: !1200, line: 273, type: !1215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2782 = distinct !DIAssignID()
!2783 = !DILocation(line: 0, scope: !656)
!2784 = distinct !DIAssignID()
!2785 = !DILocation(line: 40, column: 29, scope: !656)
!2786 = !DILocation(line: 41, column: 19, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !656, file: !657, line: 41, column: 7)
!2788 = !DILocation(line: 41, column: 7, scope: !656)
!2789 = !DILocation(line: 47, column: 3, scope: !656)
!2790 = !DILocation(line: 48, column: 3, scope: !656)
!2791 = !DILocalVariable(name: "ps", arg: 1, scope: !2792, file: !2793, line: 1135, type: !2796)
!2792 = distinct !DISubprogram(name: "mbszero", scope: !2793, file: !2793, line: 1135, type: !2794, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !2797)
!2793 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !2796}
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!2797 = !{!2791}
!2798 = !DILocation(line: 0, scope: !2792, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 48, column: 18, scope: !656)
!2800 = !DILocalVariable(name: "__dest", arg: 1, scope: !2801, file: !2802, line: 57, type: !259)
!2801 = distinct !DISubprogram(name: "memset", scope: !2802, file: !2802, line: 57, type: !2803, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !2805)
!2802 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!259, !259, !260, !262}
!2805 = !{!2800, !2806, !2807}
!2806 = !DILocalVariable(name: "__ch", arg: 2, scope: !2801, file: !2802, line: 57, type: !260)
!2807 = !DILocalVariable(name: "__len", arg: 3, scope: !2801, file: !2802, line: 57, type: !262)
!2808 = !DILocation(line: 0, scope: !2801, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 1137, column: 3, scope: !2792, inlinedAt: !2799)
!2810 = !DILocation(line: 59, column: 10, scope: !2801, inlinedAt: !2809)
!2811 = !DILocation(line: 49, column: 7, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !656, file: !657, line: 49, column: 7)
!2813 = !DILocation(line: 49, column: 39, scope: !2812)
!2814 = !DILocation(line: 49, column: 44, scope: !2812)
!2815 = !DILocation(line: 54, column: 1, scope: !656)
!2816 = !DISubprogram(name: "mbrtoc32", scope: !668, file: !668, line: 57, type: !2817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!262, !2819, !1088, !262, !2821}
!2819 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2820)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2796)
!2822 = distinct !DISubprogram(name: "clone_quoting_options", scope: !687, file: !687, line: 113, type: !2823, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2826)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!2825, !2825}
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!2826 = !{!2827, !2828, !2829}
!2827 = !DILocalVariable(name: "o", arg: 1, scope: !2822, file: !687, line: 113, type: !2825)
!2828 = !DILocalVariable(name: "saved_errno", scope: !2822, file: !687, line: 115, type: !260)
!2829 = !DILocalVariable(name: "p", scope: !2822, file: !687, line: 116, type: !2825)
!2830 = !DILocation(line: 0, scope: !2822)
!2831 = !DILocation(line: 115, column: 21, scope: !2822)
!2832 = !DILocation(line: 116, column: 40, scope: !2822)
!2833 = !DILocation(line: 116, column: 31, scope: !2822)
!2834 = !DILocation(line: 118, column: 9, scope: !2822)
!2835 = !DILocation(line: 119, column: 3, scope: !2822)
!2836 = distinct !DISubprogram(name: "get_quoting_style", scope: !687, file: !687, line: 124, type: !2837, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2841)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!713, !2839}
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!2841 = !{!2842}
!2842 = !DILocalVariable(name: "o", arg: 1, scope: !2836, file: !687, line: 124, type: !2839)
!2843 = !DILocation(line: 0, scope: !2836)
!2844 = !DILocation(line: 126, column: 11, scope: !2836)
!2845 = !DILocation(line: 126, column: 46, scope: !2836)
!2846 = !{!2847, !1096, i64 0}
!2847 = !{!"quoting_options", !1096, i64 0, !1096, i64 4, !996, i64 8, !995, i64 40, !995, i64 48}
!2848 = !DILocation(line: 126, column: 3, scope: !2836)
!2849 = distinct !DISubprogram(name: "set_quoting_style", scope: !687, file: !687, line: 132, type: !2850, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2852)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{null, !2825, !713}
!2852 = !{!2853, !2854}
!2853 = !DILocalVariable(name: "o", arg: 1, scope: !2849, file: !687, line: 132, type: !2825)
!2854 = !DILocalVariable(name: "s", arg: 2, scope: !2849, file: !687, line: 132, type: !713)
!2855 = !DILocation(line: 0, scope: !2849)
!2856 = !DILocation(line: 134, column: 4, scope: !2849)
!2857 = !DILocation(line: 134, column: 45, scope: !2849)
!2858 = !DILocation(line: 135, column: 1, scope: !2849)
!2859 = distinct !DISubprogram(name: "set_char_quoting", scope: !687, file: !687, line: 143, type: !2860, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2862)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!260, !2825, !4, !260}
!2862 = !{!2863, !2864, !2865, !2866, !2867, !2869, !2870}
!2863 = !DILocalVariable(name: "o", arg: 1, scope: !2859, file: !687, line: 143, type: !2825)
!2864 = !DILocalVariable(name: "c", arg: 2, scope: !2859, file: !687, line: 143, type: !4)
!2865 = !DILocalVariable(name: "i", arg: 3, scope: !2859, file: !687, line: 143, type: !260)
!2866 = !DILocalVariable(name: "uc", scope: !2859, file: !687, line: 145, type: !267)
!2867 = !DILocalVariable(name: "p", scope: !2859, file: !687, line: 146, type: !2868)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!2869 = !DILocalVariable(name: "shift", scope: !2859, file: !687, line: 148, type: !260)
!2870 = !DILocalVariable(name: "r", scope: !2859, file: !687, line: 149, type: !222)
!2871 = !DILocation(line: 0, scope: !2859)
!2872 = !DILocation(line: 147, column: 6, scope: !2859)
!2873 = !DILocation(line: 147, column: 41, scope: !2859)
!2874 = !DILocation(line: 147, column: 62, scope: !2859)
!2875 = !DILocation(line: 147, column: 57, scope: !2859)
!2876 = !DILocation(line: 148, column: 15, scope: !2859)
!2877 = !DILocation(line: 149, column: 21, scope: !2859)
!2878 = !DILocation(line: 149, column: 24, scope: !2859)
!2879 = !DILocation(line: 149, column: 34, scope: !2859)
!2880 = !DILocation(line: 150, column: 19, scope: !2859)
!2881 = !DILocation(line: 150, column: 24, scope: !2859)
!2882 = !DILocation(line: 150, column: 6, scope: !2859)
!2883 = !DILocation(line: 151, column: 3, scope: !2859)
!2884 = distinct !DISubprogram(name: "set_quoting_flags", scope: !687, file: !687, line: 159, type: !2885, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2887)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!260, !2825, !260}
!2887 = !{!2888, !2889, !2890}
!2888 = !DILocalVariable(name: "o", arg: 1, scope: !2884, file: !687, line: 159, type: !2825)
!2889 = !DILocalVariable(name: "i", arg: 2, scope: !2884, file: !687, line: 159, type: !260)
!2890 = !DILocalVariable(name: "r", scope: !2884, file: !687, line: 163, type: !260)
!2891 = !DILocation(line: 0, scope: !2884)
!2892 = !DILocation(line: 161, column: 8, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2884, file: !687, line: 161, column: 7)
!2894 = !DILocation(line: 161, column: 7, scope: !2884)
!2895 = !DILocation(line: 163, column: 14, scope: !2884)
!2896 = !{!2847, !1096, i64 4}
!2897 = !DILocation(line: 164, column: 12, scope: !2884)
!2898 = !DILocation(line: 165, column: 3, scope: !2884)
!2899 = distinct !DISubprogram(name: "set_custom_quoting", scope: !687, file: !687, line: 169, type: !2900, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2902)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{null, !2825, !265, !265}
!2902 = !{!2903, !2904, !2905}
!2903 = !DILocalVariable(name: "o", arg: 1, scope: !2899, file: !687, line: 169, type: !2825)
!2904 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2899, file: !687, line: 170, type: !265)
!2905 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2899, file: !687, line: 170, type: !265)
!2906 = !DILocation(line: 0, scope: !2899)
!2907 = !DILocation(line: 172, column: 8, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2899, file: !687, line: 172, column: 7)
!2909 = !DILocation(line: 172, column: 7, scope: !2899)
!2910 = !DILocation(line: 174, column: 12, scope: !2899)
!2911 = !DILocation(line: 175, column: 8, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2899, file: !687, line: 175, column: 7)
!2913 = !DILocation(line: 175, column: 19, scope: !2912)
!2914 = !DILocation(line: 176, column: 5, scope: !2912)
!2915 = !DILocation(line: 177, column: 6, scope: !2899)
!2916 = !DILocation(line: 177, column: 17, scope: !2899)
!2917 = !{!2847, !995, i64 40}
!2918 = !DILocation(line: 178, column: 6, scope: !2899)
!2919 = !DILocation(line: 178, column: 18, scope: !2899)
!2920 = !{!2847, !995, i64 48}
!2921 = !DILocation(line: 179, column: 1, scope: !2899)
!2922 = !DISubprogram(name: "abort", scope: !1204, file: !1204, line: 598, type: !642, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2923 = distinct !DISubprogram(name: "quotearg_buffer", scope: !687, file: !687, line: 774, type: !2924, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2926)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!262, !258, !262, !265, !262, !2839}
!2926 = !{!2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934}
!2927 = !DILocalVariable(name: "buffer", arg: 1, scope: !2923, file: !687, line: 774, type: !258)
!2928 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2923, file: !687, line: 774, type: !262)
!2929 = !DILocalVariable(name: "arg", arg: 3, scope: !2923, file: !687, line: 775, type: !265)
!2930 = !DILocalVariable(name: "argsize", arg: 4, scope: !2923, file: !687, line: 775, type: !262)
!2931 = !DILocalVariable(name: "o", arg: 5, scope: !2923, file: !687, line: 776, type: !2839)
!2932 = !DILocalVariable(name: "p", scope: !2923, file: !687, line: 778, type: !2839)
!2933 = !DILocalVariable(name: "saved_errno", scope: !2923, file: !687, line: 779, type: !260)
!2934 = !DILocalVariable(name: "r", scope: !2923, file: !687, line: 780, type: !262)
!2935 = !DILocation(line: 0, scope: !2923)
!2936 = !DILocation(line: 778, column: 37, scope: !2923)
!2937 = !DILocation(line: 779, column: 21, scope: !2923)
!2938 = !DILocation(line: 781, column: 43, scope: !2923)
!2939 = !DILocation(line: 781, column: 53, scope: !2923)
!2940 = !DILocation(line: 781, column: 63, scope: !2923)
!2941 = !DILocation(line: 782, column: 43, scope: !2923)
!2942 = !DILocation(line: 782, column: 58, scope: !2923)
!2943 = !DILocation(line: 780, column: 14, scope: !2923)
!2944 = !DILocation(line: 783, column: 9, scope: !2923)
!2945 = !DILocation(line: 784, column: 3, scope: !2923)
!2946 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !687, file: !687, line: 251, type: !2947, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2951)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!262, !258, !262, !265, !262, !713, !260, !2949, !265, !265}
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!2951 = !{!2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2977, !2979, !2982, !2983, !2984, !2985, !2988, !2989, !2991, !2992, !2995, !2999, !3000, !3008, !3011, !3012, !3013}
!2952 = !DILocalVariable(name: "buffer", arg: 1, scope: !2946, file: !687, line: 251, type: !258)
!2953 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2946, file: !687, line: 251, type: !262)
!2954 = !DILocalVariable(name: "arg", arg: 3, scope: !2946, file: !687, line: 252, type: !265)
!2955 = !DILocalVariable(name: "argsize", arg: 4, scope: !2946, file: !687, line: 252, type: !262)
!2956 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2946, file: !687, line: 253, type: !713)
!2957 = !DILocalVariable(name: "flags", arg: 6, scope: !2946, file: !687, line: 253, type: !260)
!2958 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2946, file: !687, line: 254, type: !2949)
!2959 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2946, file: !687, line: 255, type: !265)
!2960 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2946, file: !687, line: 256, type: !265)
!2961 = !DILocalVariable(name: "unibyte_locale", scope: !2946, file: !687, line: 258, type: !319)
!2962 = !DILocalVariable(name: "len", scope: !2946, file: !687, line: 260, type: !262)
!2963 = !DILocalVariable(name: "orig_buffersize", scope: !2946, file: !687, line: 261, type: !262)
!2964 = !DILocalVariable(name: "quote_string", scope: !2946, file: !687, line: 262, type: !265)
!2965 = !DILocalVariable(name: "quote_string_len", scope: !2946, file: !687, line: 263, type: !262)
!2966 = !DILocalVariable(name: "backslash_escapes", scope: !2946, file: !687, line: 264, type: !319)
!2967 = !DILocalVariable(name: "elide_outer_quotes", scope: !2946, file: !687, line: 265, type: !319)
!2968 = !DILocalVariable(name: "encountered_single_quote", scope: !2946, file: !687, line: 266, type: !319)
!2969 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2946, file: !687, line: 267, type: !319)
!2970 = !DILabel(scope: !2946, name: "process_input", file: !687, line: 308)
!2971 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2946, file: !687, line: 309, type: !319)
!2972 = !DILocalVariable(name: "lq", scope: !2973, file: !687, line: 361, type: !265)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !687, line: 361, column: 11)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !687, line: 360, column: 13)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !687, line: 333, column: 7)
!2976 = distinct !DILexicalBlock(scope: !2946, file: !687, line: 312, column: 5)
!2977 = !DILocalVariable(name: "i", scope: !2978, file: !687, line: 395, type: !262)
!2978 = distinct !DILexicalBlock(scope: !2946, file: !687, line: 395, column: 3)
!2979 = !DILocalVariable(name: "is_right_quote", scope: !2980, file: !687, line: 397, type: !319)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !687, line: 396, column: 5)
!2981 = distinct !DILexicalBlock(scope: !2978, file: !687, line: 395, column: 3)
!2982 = !DILocalVariable(name: "escaping", scope: !2980, file: !687, line: 398, type: !319)
!2983 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2980, file: !687, line: 399, type: !319)
!2984 = !DILocalVariable(name: "c", scope: !2980, file: !687, line: 417, type: !267)
!2985 = !DILabel(scope: !2986, name: "c_and_shell_escape", file: !687, line: 502)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !687, line: 478, column: 9)
!2987 = distinct !DILexicalBlock(scope: !2980, file: !687, line: 419, column: 9)
!2988 = !DILabel(scope: !2986, name: "c_escape", file: !687, line: 507)
!2989 = !DILocalVariable(name: "m", scope: !2990, file: !687, line: 598, type: !262)
!2990 = distinct !DILexicalBlock(scope: !2987, file: !687, line: 596, column: 11)
!2991 = !DILocalVariable(name: "printable", scope: !2990, file: !687, line: 600, type: !319)
!2992 = !DILocalVariable(name: "mbs", scope: !2993, file: !687, line: 609, type: !774)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !687, line: 608, column: 15)
!2994 = distinct !DILexicalBlock(scope: !2990, file: !687, line: 602, column: 17)
!2995 = !DILocalVariable(name: "w", scope: !2996, file: !687, line: 618, type: !667)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !687, line: 617, column: 19)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !687, line: 616, column: 17)
!2998 = distinct !DILexicalBlock(scope: !2993, file: !687, line: 616, column: 17)
!2999 = !DILocalVariable(name: "bytes", scope: !2996, file: !687, line: 619, type: !262)
!3000 = !DILocalVariable(name: "j", scope: !3001, file: !687, line: 648, type: !262)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !687, line: 648, column: 29)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !687, line: 647, column: 27)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !687, line: 645, column: 29)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !687, line: 636, column: 23)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !687, line: 628, column: 30)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !687, line: 623, column: 30)
!3007 = distinct !DILexicalBlock(scope: !2996, file: !687, line: 621, column: 25)
!3008 = !DILocalVariable(name: "ilim", scope: !3009, file: !687, line: 674, type: !262)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !687, line: 671, column: 15)
!3010 = distinct !DILexicalBlock(scope: !2990, file: !687, line: 670, column: 17)
!3011 = !DILabel(scope: !2980, name: "store_escape", file: !687, line: 709)
!3012 = !DILabel(scope: !2980, name: "store_c", file: !687, line: 712)
!3013 = !DILabel(scope: !2946, name: "force_outer_quoting_style", file: !687, line: 753)
!3014 = distinct !DIAssignID()
!3015 = distinct !DIAssignID()
!3016 = distinct !DIAssignID()
!3017 = distinct !DIAssignID()
!3018 = distinct !DIAssignID()
!3019 = !DILocation(line: 0, scope: !2993)
!3020 = distinct !DIAssignID()
!3021 = !DILocation(line: 0, scope: !2996)
!3022 = !DILocation(line: 0, scope: !2946)
!3023 = !DILocation(line: 258, column: 25, scope: !2946)
!3024 = !DILocation(line: 258, column: 36, scope: !2946)
!3025 = !DILocation(line: 265, column: 8, scope: !2946)
!3026 = !DILocation(line: 267, column: 3, scope: !2946)
!3027 = !DILocation(line: 261, column: 10, scope: !2946)
!3028 = !DILocation(line: 262, column: 15, scope: !2946)
!3029 = !DILocation(line: 263, column: 10, scope: !2946)
!3030 = !DILocation(line: 264, column: 8, scope: !2946)
!3031 = !DILocation(line: 266, column: 8, scope: !2946)
!3032 = !DILocation(line: 267, column: 8, scope: !2946)
!3033 = !DILocation(line: 308, column: 2, scope: !2946)
!3034 = !DILocation(line: 311, column: 3, scope: !2946)
!3035 = !DILocation(line: 318, column: 11, scope: !2976)
!3036 = !DILocation(line: 318, column: 12, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !2976, file: !687, line: 318, column: 11)
!3038 = !DILocation(line: 319, column: 9, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !687, line: 319, column: 9)
!3040 = distinct !DILexicalBlock(scope: !3037, file: !687, line: 319, column: 9)
!3041 = !DILocation(line: 319, column: 9, scope: !3040)
!3042 = !DILocation(line: 0, scope: !765, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 357, column: 26, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !687, line: 335, column: 11)
!3045 = distinct !DILexicalBlock(scope: !2975, file: !687, line: 334, column: 13)
!3046 = !DILocation(line: 199, column: 29, scope: !765, inlinedAt: !3043)
!3047 = !DILocation(line: 201, column: 19, scope: !3048, inlinedAt: !3043)
!3048 = distinct !DILexicalBlock(scope: !765, file: !687, line: 201, column: 7)
!3049 = !DILocation(line: 201, column: 7, scope: !765, inlinedAt: !3043)
!3050 = !DILocation(line: 229, column: 3, scope: !765, inlinedAt: !3043)
!3051 = !DILocation(line: 230, column: 3, scope: !765, inlinedAt: !3043)
!3052 = !DILocalVariable(name: "ps", arg: 1, scope: !3053, file: !2793, line: 1135, type: !3056)
!3053 = distinct !DISubprogram(name: "mbszero", scope: !2793, file: !2793, line: 1135, type: !3054, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3057)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{null, !3056}
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!3057 = !{!3052}
!3058 = !DILocation(line: 0, scope: !3053, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 230, column: 18, scope: !765, inlinedAt: !3043)
!3060 = !DILocalVariable(name: "__dest", arg: 1, scope: !3061, file: !2802, line: 57, type: !259)
!3061 = distinct !DISubprogram(name: "memset", scope: !2802, file: !2802, line: 57, type: !2803, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3062)
!3062 = !{!3060, !3063, !3064}
!3063 = !DILocalVariable(name: "__ch", arg: 2, scope: !3061, file: !2802, line: 57, type: !260)
!3064 = !DILocalVariable(name: "__len", arg: 3, scope: !3061, file: !2802, line: 57, type: !262)
!3065 = !DILocation(line: 0, scope: !3061, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 1137, column: 3, scope: !3053, inlinedAt: !3059)
!3067 = !DILocation(line: 59, column: 10, scope: !3061, inlinedAt: !3066)
!3068 = !DILocation(line: 231, column: 7, scope: !3069, inlinedAt: !3043)
!3069 = distinct !DILexicalBlock(scope: !765, file: !687, line: 231, column: 7)
!3070 = !DILocation(line: 231, column: 40, scope: !3069, inlinedAt: !3043)
!3071 = !DILocation(line: 231, column: 45, scope: !3069, inlinedAt: !3043)
!3072 = !DILocation(line: 235, column: 1, scope: !765, inlinedAt: !3043)
!3073 = !DILocation(line: 0, scope: !765, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 358, column: 27, scope: !3044)
!3075 = !DILocation(line: 199, column: 29, scope: !765, inlinedAt: !3074)
!3076 = !DILocation(line: 201, column: 19, scope: !3048, inlinedAt: !3074)
!3077 = !DILocation(line: 201, column: 7, scope: !765, inlinedAt: !3074)
!3078 = !DILocation(line: 229, column: 3, scope: !765, inlinedAt: !3074)
!3079 = !DILocation(line: 230, column: 3, scope: !765, inlinedAt: !3074)
!3080 = !DILocation(line: 0, scope: !3053, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 230, column: 18, scope: !765, inlinedAt: !3074)
!3082 = !DILocation(line: 0, scope: !3061, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 1137, column: 3, scope: !3053, inlinedAt: !3081)
!3084 = !DILocation(line: 59, column: 10, scope: !3061, inlinedAt: !3083)
!3085 = !DILocation(line: 231, column: 7, scope: !3069, inlinedAt: !3074)
!3086 = !DILocation(line: 231, column: 40, scope: !3069, inlinedAt: !3074)
!3087 = !DILocation(line: 231, column: 45, scope: !3069, inlinedAt: !3074)
!3088 = !DILocation(line: 235, column: 1, scope: !765, inlinedAt: !3074)
!3089 = !DILocation(line: 360, column: 14, scope: !2974)
!3090 = !DILocation(line: 360, column: 13, scope: !2975)
!3091 = !DILocation(line: 0, scope: !2973)
!3092 = !DILocation(line: 361, column: 45, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !2973, file: !687, line: 361, column: 11)
!3094 = !DILocation(line: 361, column: 11, scope: !2973)
!3095 = !DILocation(line: 362, column: 13, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !687, line: 362, column: 13)
!3097 = distinct !DILexicalBlock(scope: !3093, file: !687, line: 362, column: 13)
!3098 = !DILocation(line: 362, column: 13, scope: !3097)
!3099 = !DILocation(line: 361, column: 52, scope: !3093)
!3100 = distinct !{!3100, !3094, !3101, !1142}
!3101 = !DILocation(line: 362, column: 13, scope: !2973)
!3102 = !DILocation(line: 260, column: 10, scope: !2946)
!3103 = !DILocation(line: 365, column: 28, scope: !2975)
!3104 = !DILocation(line: 367, column: 7, scope: !2976)
!3105 = !DILocation(line: 370, column: 7, scope: !2976)
!3106 = !DILocation(line: 373, column: 7, scope: !2976)
!3107 = !DILocation(line: 376, column: 12, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !2976, file: !687, line: 376, column: 11)
!3109 = !DILocation(line: 376, column: 11, scope: !2976)
!3110 = !DILocation(line: 381, column: 12, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !2976, file: !687, line: 381, column: 11)
!3112 = !DILocation(line: 381, column: 11, scope: !2976)
!3113 = !DILocation(line: 382, column: 9, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !687, line: 382, column: 9)
!3115 = distinct !DILexicalBlock(scope: !3111, file: !687, line: 382, column: 9)
!3116 = !DILocation(line: 382, column: 9, scope: !3115)
!3117 = !DILocation(line: 389, column: 7, scope: !2976)
!3118 = !DILocation(line: 392, column: 7, scope: !2976)
!3119 = !DILocation(line: 0, scope: !2978)
!3120 = !DILocation(line: 395, column: 8, scope: !2978)
!3121 = !DILocation(line: 309, column: 8, scope: !2946)
!3122 = !DILocation(line: 395, scope: !2978)
!3123 = !DILocation(line: 395, column: 34, scope: !2981)
!3124 = !DILocation(line: 395, column: 26, scope: !2981)
!3125 = !DILocation(line: 395, column: 48, scope: !2981)
!3126 = !DILocation(line: 395, column: 55, scope: !2981)
!3127 = !DILocation(line: 395, column: 3, scope: !2978)
!3128 = !DILocation(line: 395, column: 67, scope: !2981)
!3129 = !DILocation(line: 0, scope: !2980)
!3130 = !DILocation(line: 402, column: 11, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !2980, file: !687, line: 401, column: 11)
!3132 = !DILocation(line: 404, column: 17, scope: !3131)
!3133 = !DILocation(line: 405, column: 39, scope: !3131)
!3134 = !DILocation(line: 409, column: 32, scope: !3131)
!3135 = !DILocation(line: 405, column: 19, scope: !3131)
!3136 = !DILocation(line: 405, column: 15, scope: !3131)
!3137 = !DILocation(line: 410, column: 11, scope: !3131)
!3138 = !DILocation(line: 410, column: 25, scope: !3131)
!3139 = !DILocalVariable(name: "__s1", arg: 1, scope: !3140, file: !1108, line: 974, type: !1228)
!3140 = distinct !DISubprogram(name: "memeq", scope: !1108, file: !1108, line: 974, type: !2762, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3141)
!3141 = !{!3139, !3142, !3143}
!3142 = !DILocalVariable(name: "__s2", arg: 2, scope: !3140, file: !1108, line: 974, type: !1228)
!3143 = !DILocalVariable(name: "__n", arg: 3, scope: !3140, file: !1108, line: 974, type: !262)
!3144 = !DILocation(line: 0, scope: !3140, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 410, column: 14, scope: !3131)
!3146 = !DILocation(line: 976, column: 11, scope: !3140, inlinedAt: !3145)
!3147 = !DILocation(line: 976, column: 10, scope: !3140, inlinedAt: !3145)
!3148 = !DILocation(line: 401, column: 11, scope: !2980)
!3149 = !DILocation(line: 417, column: 25, scope: !2980)
!3150 = !DILocation(line: 418, column: 7, scope: !2980)
!3151 = !DILocation(line: 421, column: 15, scope: !2987)
!3152 = !DILocation(line: 423, column: 15, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !687, line: 423, column: 15)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !687, line: 422, column: 13)
!3155 = distinct !DILexicalBlock(scope: !2987, file: !687, line: 421, column: 15)
!3156 = !DILocation(line: 423, column: 15, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3153, file: !687, line: 423, column: 15)
!3158 = !DILocation(line: 423, column: 15, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !687, line: 423, column: 15)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !687, line: 423, column: 15)
!3161 = distinct !DILexicalBlock(scope: !3157, file: !687, line: 423, column: 15)
!3162 = !DILocation(line: 423, column: 15, scope: !3160)
!3163 = !DILocation(line: 423, column: 15, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !687, line: 423, column: 15)
!3165 = distinct !DILexicalBlock(scope: !3161, file: !687, line: 423, column: 15)
!3166 = !DILocation(line: 423, column: 15, scope: !3165)
!3167 = !DILocation(line: 423, column: 15, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !687, line: 423, column: 15)
!3169 = distinct !DILexicalBlock(scope: !3161, file: !687, line: 423, column: 15)
!3170 = !DILocation(line: 423, column: 15, scope: !3169)
!3171 = !DILocation(line: 423, column: 15, scope: !3161)
!3172 = !DILocation(line: 423, column: 15, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !687, line: 423, column: 15)
!3174 = distinct !DILexicalBlock(scope: !3153, file: !687, line: 423, column: 15)
!3175 = !DILocation(line: 423, column: 15, scope: !3174)
!3176 = !DILocation(line: 431, column: 19, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3154, file: !687, line: 430, column: 19)
!3178 = !DILocation(line: 431, column: 24, scope: !3177)
!3179 = !DILocation(line: 431, column: 28, scope: !3177)
!3180 = !DILocation(line: 431, column: 38, scope: !3177)
!3181 = !DILocation(line: 431, column: 48, scope: !3177)
!3182 = !DILocation(line: 431, column: 59, scope: !3177)
!3183 = !DILocation(line: 433, column: 19, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !687, line: 433, column: 19)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !687, line: 433, column: 19)
!3186 = distinct !DILexicalBlock(scope: !3177, file: !687, line: 432, column: 17)
!3187 = !DILocation(line: 433, column: 19, scope: !3185)
!3188 = !DILocation(line: 434, column: 19, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !687, line: 434, column: 19)
!3190 = distinct !DILexicalBlock(scope: !3186, file: !687, line: 434, column: 19)
!3191 = !DILocation(line: 434, column: 19, scope: !3190)
!3192 = !DILocation(line: 435, column: 17, scope: !3186)
!3193 = !DILocation(line: 442, column: 20, scope: !3155)
!3194 = !DILocation(line: 447, column: 11, scope: !2987)
!3195 = !DILocation(line: 450, column: 19, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !2987, file: !687, line: 448, column: 13)
!3197 = !DILocation(line: 456, column: 19, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3196, file: !687, line: 455, column: 19)
!3199 = !DILocation(line: 456, column: 24, scope: !3198)
!3200 = !DILocation(line: 456, column: 28, scope: !3198)
!3201 = !DILocation(line: 456, column: 38, scope: !3198)
!3202 = !DILocation(line: 456, column: 41, scope: !3198)
!3203 = !DILocation(line: 456, column: 52, scope: !3198)
!3204 = !DILocation(line: 455, column: 19, scope: !3196)
!3205 = !DILocation(line: 457, column: 25, scope: !3198)
!3206 = !DILocation(line: 457, column: 17, scope: !3198)
!3207 = !DILocation(line: 464, column: 25, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3198, file: !687, line: 458, column: 19)
!3209 = !DILocation(line: 468, column: 21, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !687, line: 468, column: 21)
!3211 = distinct !DILexicalBlock(scope: !3208, file: !687, line: 468, column: 21)
!3212 = !DILocation(line: 468, column: 21, scope: !3211)
!3213 = !DILocation(line: 469, column: 21, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !687, line: 469, column: 21)
!3215 = distinct !DILexicalBlock(scope: !3208, file: !687, line: 469, column: 21)
!3216 = !DILocation(line: 469, column: 21, scope: !3215)
!3217 = !DILocation(line: 470, column: 21, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !687, line: 470, column: 21)
!3219 = distinct !DILexicalBlock(scope: !3208, file: !687, line: 470, column: 21)
!3220 = !DILocation(line: 470, column: 21, scope: !3219)
!3221 = !DILocation(line: 471, column: 21, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !687, line: 471, column: 21)
!3223 = distinct !DILexicalBlock(scope: !3208, file: !687, line: 471, column: 21)
!3224 = !DILocation(line: 471, column: 21, scope: !3223)
!3225 = !DILocation(line: 472, column: 21, scope: !3208)
!3226 = !DILocation(line: 482, column: 33, scope: !2986)
!3227 = !DILocation(line: 483, column: 33, scope: !2986)
!3228 = !DILocation(line: 485, column: 33, scope: !2986)
!3229 = !DILocation(line: 486, column: 33, scope: !2986)
!3230 = !DILocation(line: 487, column: 33, scope: !2986)
!3231 = !DILocation(line: 490, column: 17, scope: !2986)
!3232 = !DILocation(line: 492, column: 21, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !687, line: 491, column: 15)
!3234 = distinct !DILexicalBlock(scope: !2986, file: !687, line: 490, column: 17)
!3235 = !DILocation(line: 499, column: 35, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !2986, file: !687, line: 499, column: 17)
!3237 = !DILocation(line: 499, column: 57, scope: !3236)
!3238 = !DILocation(line: 0, scope: !2986)
!3239 = !DILocation(line: 502, column: 11, scope: !2986)
!3240 = !DILocation(line: 504, column: 17, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !2986, file: !687, line: 503, column: 17)
!3242 = !DILocation(line: 507, column: 11, scope: !2986)
!3243 = !DILocation(line: 508, column: 17, scope: !2986)
!3244 = !DILocation(line: 517, column: 15, scope: !2987)
!3245 = !DILocation(line: 517, column: 40, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !2987, file: !687, line: 517, column: 15)
!3247 = !DILocation(line: 517, column: 47, scope: !3246)
!3248 = !DILocation(line: 517, column: 18, scope: !3246)
!3249 = !DILocation(line: 521, column: 17, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !2987, file: !687, line: 521, column: 15)
!3251 = !DILocation(line: 521, column: 15, scope: !2987)
!3252 = !DILocation(line: 525, column: 11, scope: !2987)
!3253 = !DILocation(line: 537, column: 15, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !2987, file: !687, line: 536, column: 15)
!3255 = !DILocation(line: 544, column: 15, scope: !2987)
!3256 = !DILocation(line: 546, column: 19, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !687, line: 545, column: 13)
!3258 = distinct !DILexicalBlock(scope: !2987, file: !687, line: 544, column: 15)
!3259 = !DILocation(line: 549, column: 19, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3257, file: !687, line: 549, column: 19)
!3261 = !DILocation(line: 549, column: 30, scope: !3260)
!3262 = !DILocation(line: 558, column: 15, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !687, line: 558, column: 15)
!3264 = distinct !DILexicalBlock(scope: !3257, file: !687, line: 558, column: 15)
!3265 = !DILocation(line: 558, column: 15, scope: !3264)
!3266 = !DILocation(line: 559, column: 15, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3268, file: !687, line: 559, column: 15)
!3268 = distinct !DILexicalBlock(scope: !3257, file: !687, line: 559, column: 15)
!3269 = !DILocation(line: 559, column: 15, scope: !3268)
!3270 = !DILocation(line: 560, column: 15, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !687, line: 560, column: 15)
!3272 = distinct !DILexicalBlock(scope: !3257, file: !687, line: 560, column: 15)
!3273 = !DILocation(line: 560, column: 15, scope: !3272)
!3274 = !DILocation(line: 562, column: 13, scope: !3257)
!3275 = !DILocation(line: 602, column: 17, scope: !2990)
!3276 = !DILocation(line: 0, scope: !2990)
!3277 = !DILocation(line: 605, column: 29, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !2994, file: !687, line: 603, column: 15)
!3279 = !DILocation(line: 605, column: 27, scope: !3278)
!3280 = !DILocation(line: 606, column: 15, scope: !3278)
!3281 = !DILocation(line: 609, column: 17, scope: !2993)
!3282 = !DILocation(line: 0, scope: !3053, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 609, column: 32, scope: !2993)
!3284 = !DILocation(line: 0, scope: !3061, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 1137, column: 3, scope: !3053, inlinedAt: !3283)
!3286 = !DILocation(line: 59, column: 10, scope: !3061, inlinedAt: !3285)
!3287 = !DILocation(line: 613, column: 29, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !2993, file: !687, line: 613, column: 21)
!3289 = !DILocation(line: 613, column: 21, scope: !2993)
!3290 = !DILocation(line: 614, column: 29, scope: !3288)
!3291 = !DILocation(line: 614, column: 19, scope: !3288)
!3292 = !DILocation(line: 618, column: 21, scope: !2996)
!3293 = !DILocation(line: 620, column: 54, scope: !2996)
!3294 = !DILocation(line: 619, column: 36, scope: !2996)
!3295 = !DILocation(line: 621, column: 25, scope: !2996)
!3296 = !DILocation(line: 631, column: 38, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3005, file: !687, line: 629, column: 23)
!3298 = !DILocation(line: 631, column: 48, scope: !3297)
!3299 = !DILocation(line: 626, column: 25, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3006, file: !687, line: 624, column: 23)
!3301 = !DILocation(line: 631, column: 51, scope: !3297)
!3302 = !DILocation(line: 631, column: 25, scope: !3297)
!3303 = !DILocation(line: 632, column: 28, scope: !3297)
!3304 = !DILocation(line: 631, column: 34, scope: !3297)
!3305 = distinct !{!3305, !3302, !3303, !1142}
!3306 = !DILocation(line: 0, scope: !3001)
!3307 = !DILocation(line: 646, column: 29, scope: !3003)
!3308 = !DILocation(line: 649, column: 39, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3001, file: !687, line: 648, column: 29)
!3310 = !DILocation(line: 649, column: 31, scope: !3309)
!3311 = !DILocation(line: 648, column: 60, scope: !3309)
!3312 = !DILocation(line: 648, column: 50, scope: !3309)
!3313 = !DILocation(line: 648, column: 29, scope: !3001)
!3314 = distinct !{!3314, !3313, !3315, !1142}
!3315 = !DILocation(line: 654, column: 33, scope: !3001)
!3316 = !DILocation(line: 657, column: 43, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3004, file: !687, line: 657, column: 29)
!3318 = !DILocalVariable(name: "wc", arg: 1, scope: !3319, file: !3320, line: 865, type: !3323)
!3319 = distinct !DISubprogram(name: "c32isprint", scope: !3320, file: !3320, line: 865, type: !3321, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3325)
!3320 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!260, !3323}
!3323 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3324, line: 20, baseType: !222)
!3324 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3325 = !{!3318}
!3326 = !DILocation(line: 0, scope: !3319, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 657, column: 31, scope: !3317)
!3328 = !DILocation(line: 871, column: 10, scope: !3319, inlinedAt: !3327)
!3329 = !DILocation(line: 657, column: 31, scope: !3317)
!3330 = !DILocation(line: 664, column: 23, scope: !2996)
!3331 = !DILocation(line: 665, column: 19, scope: !2997)
!3332 = !DILocation(line: 666, column: 15, scope: !2994)
!3333 = !DILocation(line: 0, scope: !2994)
!3334 = !DILocation(line: 670, column: 19, scope: !3010)
!3335 = !DILocation(line: 670, column: 23, scope: !3010)
!3336 = !DILocation(line: 674, column: 33, scope: !3009)
!3337 = !DILocation(line: 0, scope: !3009)
!3338 = !DILocation(line: 676, column: 17, scope: !3009)
!3339 = !DILocation(line: 398, column: 12, scope: !2980)
!3340 = !DILocation(line: 678, column: 43, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !687, line: 678, column: 25)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !687, line: 677, column: 19)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !687, line: 676, column: 17)
!3344 = distinct !DILexicalBlock(scope: !3009, file: !687, line: 676, column: 17)
!3345 = !DILocation(line: 680, column: 25, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !687, line: 680, column: 25)
!3347 = distinct !DILexicalBlock(scope: !3341, file: !687, line: 679, column: 23)
!3348 = !DILocation(line: 680, column: 25, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3346, file: !687, line: 680, column: 25)
!3350 = !DILocation(line: 680, column: 25, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !687, line: 680, column: 25)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !687, line: 680, column: 25)
!3353 = distinct !DILexicalBlock(scope: !3349, file: !687, line: 680, column: 25)
!3354 = !DILocation(line: 680, column: 25, scope: !3352)
!3355 = !DILocation(line: 680, column: 25, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !687, line: 680, column: 25)
!3357 = distinct !DILexicalBlock(scope: !3353, file: !687, line: 680, column: 25)
!3358 = !DILocation(line: 680, column: 25, scope: !3357)
!3359 = !DILocation(line: 680, column: 25, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !687, line: 680, column: 25)
!3361 = distinct !DILexicalBlock(scope: !3353, file: !687, line: 680, column: 25)
!3362 = !DILocation(line: 680, column: 25, scope: !3361)
!3363 = !DILocation(line: 680, column: 25, scope: !3353)
!3364 = !DILocation(line: 680, column: 25, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !687, line: 680, column: 25)
!3366 = distinct !DILexicalBlock(scope: !3346, file: !687, line: 680, column: 25)
!3367 = !DILocation(line: 680, column: 25, scope: !3366)
!3368 = !DILocation(line: 681, column: 25, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !687, line: 681, column: 25)
!3370 = distinct !DILexicalBlock(scope: !3347, file: !687, line: 681, column: 25)
!3371 = !DILocation(line: 681, column: 25, scope: !3370)
!3372 = !DILocation(line: 682, column: 25, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !687, line: 682, column: 25)
!3374 = distinct !DILexicalBlock(scope: !3347, file: !687, line: 682, column: 25)
!3375 = !DILocation(line: 682, column: 25, scope: !3374)
!3376 = !DILocation(line: 683, column: 38, scope: !3347)
!3377 = !DILocation(line: 683, column: 33, scope: !3347)
!3378 = !DILocation(line: 684, column: 23, scope: !3347)
!3379 = !DILocation(line: 685, column: 30, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3341, file: !687, line: 685, column: 30)
!3381 = !DILocation(line: 685, column: 30, scope: !3341)
!3382 = !DILocation(line: 687, column: 25, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !687, line: 687, column: 25)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !687, line: 687, column: 25)
!3385 = distinct !DILexicalBlock(scope: !3380, file: !687, line: 686, column: 23)
!3386 = !DILocation(line: 687, column: 25, scope: !3384)
!3387 = !DILocation(line: 689, column: 23, scope: !3385)
!3388 = !DILocation(line: 690, column: 35, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3342, file: !687, line: 690, column: 25)
!3390 = !DILocation(line: 690, column: 30, scope: !3389)
!3391 = !DILocation(line: 690, column: 25, scope: !3342)
!3392 = !DILocation(line: 692, column: 21, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !687, line: 692, column: 21)
!3394 = distinct !DILexicalBlock(scope: !3342, file: !687, line: 692, column: 21)
!3395 = !DILocation(line: 692, column: 21, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !687, line: 692, column: 21)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !687, line: 692, column: 21)
!3398 = distinct !DILexicalBlock(scope: !3393, file: !687, line: 692, column: 21)
!3399 = !DILocation(line: 692, column: 21, scope: !3397)
!3400 = !DILocation(line: 692, column: 21, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !687, line: 692, column: 21)
!3402 = distinct !DILexicalBlock(scope: !3398, file: !687, line: 692, column: 21)
!3403 = !DILocation(line: 692, column: 21, scope: !3402)
!3404 = !DILocation(line: 692, column: 21, scope: !3398)
!3405 = !DILocation(line: 0, scope: !3342)
!3406 = !DILocation(line: 693, column: 21, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !687, line: 693, column: 21)
!3408 = distinct !DILexicalBlock(scope: !3342, file: !687, line: 693, column: 21)
!3409 = !DILocation(line: 693, column: 21, scope: !3408)
!3410 = !DILocation(line: 694, column: 25, scope: !3342)
!3411 = !DILocation(line: 676, column: 17, scope: !3343)
!3412 = distinct !{!3412, !3413, !3414}
!3413 = !DILocation(line: 676, column: 17, scope: !3344)
!3414 = !DILocation(line: 695, column: 19, scope: !3344)
!3415 = !DILocation(line: 409, column: 30, scope: !3131)
!3416 = !DILocation(line: 702, column: 34, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !2980, file: !687, line: 702, column: 11)
!3418 = !DILocation(line: 704, column: 14, scope: !3417)
!3419 = !DILocation(line: 705, column: 14, scope: !3417)
!3420 = !DILocation(line: 705, column: 35, scope: !3417)
!3421 = !DILocation(line: 705, column: 17, scope: !3417)
!3422 = !DILocation(line: 705, column: 47, scope: !3417)
!3423 = !DILocation(line: 705, column: 65, scope: !3417)
!3424 = !DILocation(line: 706, column: 11, scope: !3417)
!3425 = !DILocation(line: 702, column: 11, scope: !2980)
!3426 = !DILocation(line: 395, column: 15, scope: !2978)
!3427 = !DILocation(line: 709, column: 5, scope: !2980)
!3428 = !DILocation(line: 710, column: 7, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !2980, file: !687, line: 710, column: 7)
!3430 = !DILocation(line: 710, column: 7, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3429, file: !687, line: 710, column: 7)
!3432 = !DILocation(line: 710, column: 7, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !687, line: 710, column: 7)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !687, line: 710, column: 7)
!3435 = distinct !DILexicalBlock(scope: !3431, file: !687, line: 710, column: 7)
!3436 = !DILocation(line: 710, column: 7, scope: !3434)
!3437 = !DILocation(line: 710, column: 7, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !687, line: 710, column: 7)
!3439 = distinct !DILexicalBlock(scope: !3435, file: !687, line: 710, column: 7)
!3440 = !DILocation(line: 710, column: 7, scope: !3439)
!3441 = !DILocation(line: 710, column: 7, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !687, line: 710, column: 7)
!3443 = distinct !DILexicalBlock(scope: !3435, file: !687, line: 710, column: 7)
!3444 = !DILocation(line: 710, column: 7, scope: !3443)
!3445 = !DILocation(line: 710, column: 7, scope: !3435)
!3446 = !DILocation(line: 710, column: 7, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !687, line: 710, column: 7)
!3448 = distinct !DILexicalBlock(scope: !3429, file: !687, line: 710, column: 7)
!3449 = !DILocation(line: 710, column: 7, scope: !3448)
!3450 = !DILocation(line: 712, column: 5, scope: !2980)
!3451 = !DILocation(line: 713, column: 7, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3453, file: !687, line: 713, column: 7)
!3453 = distinct !DILexicalBlock(scope: !2980, file: !687, line: 713, column: 7)
!3454 = !DILocation(line: 417, column: 21, scope: !2980)
!3455 = !DILocation(line: 713, column: 7, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !687, line: 713, column: 7)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !687, line: 713, column: 7)
!3458 = distinct !DILexicalBlock(scope: !3452, file: !687, line: 713, column: 7)
!3459 = !DILocation(line: 713, column: 7, scope: !3457)
!3460 = !DILocation(line: 713, column: 7, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !687, line: 713, column: 7)
!3462 = distinct !DILexicalBlock(scope: !3458, file: !687, line: 713, column: 7)
!3463 = !DILocation(line: 713, column: 7, scope: !3462)
!3464 = !DILocation(line: 713, column: 7, scope: !3458)
!3465 = !DILocation(line: 714, column: 7, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !687, line: 714, column: 7)
!3467 = distinct !DILexicalBlock(scope: !2980, file: !687, line: 714, column: 7)
!3468 = !DILocation(line: 714, column: 7, scope: !3467)
!3469 = !DILocation(line: 716, column: 13, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !2980, file: !687, line: 716, column: 11)
!3471 = !DILocation(line: 716, column: 11, scope: !2980)
!3472 = !DILocation(line: 718, column: 5, scope: !2981)
!3473 = !DILocation(line: 395, column: 82, scope: !2981)
!3474 = !DILocation(line: 395, column: 3, scope: !2981)
!3475 = distinct !{!3475, !3127, !3476, !1142}
!3476 = !DILocation(line: 718, column: 5, scope: !2978)
!3477 = !DILocation(line: 720, column: 11, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !2946, file: !687, line: 720, column: 7)
!3479 = !DILocation(line: 720, column: 16, scope: !3478)
!3480 = !DILocation(line: 728, column: 51, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !2946, file: !687, line: 728, column: 7)
!3482 = !DILocation(line: 731, column: 11, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !687, line: 731, column: 11)
!3484 = distinct !DILexicalBlock(scope: !3481, file: !687, line: 730, column: 5)
!3485 = !DILocation(line: 731, column: 11, scope: !3484)
!3486 = !DILocation(line: 732, column: 16, scope: !3483)
!3487 = !DILocation(line: 732, column: 9, scope: !3483)
!3488 = !DILocation(line: 736, column: 18, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3483, file: !687, line: 736, column: 16)
!3490 = !DILocation(line: 736, column: 29, scope: !3489)
!3491 = !DILocation(line: 745, column: 7, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !2946, file: !687, line: 745, column: 7)
!3493 = !DILocation(line: 745, column: 20, scope: !3492)
!3494 = !DILocation(line: 746, column: 12, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !687, line: 746, column: 5)
!3496 = distinct !DILexicalBlock(scope: !3492, file: !687, line: 746, column: 5)
!3497 = !DILocation(line: 746, column: 5, scope: !3496)
!3498 = !DILocation(line: 747, column: 7, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3500, file: !687, line: 747, column: 7)
!3500 = distinct !DILexicalBlock(scope: !3495, file: !687, line: 747, column: 7)
!3501 = !DILocation(line: 747, column: 7, scope: !3500)
!3502 = !DILocation(line: 746, column: 39, scope: !3495)
!3503 = distinct !{!3503, !3497, !3504, !1142}
!3504 = !DILocation(line: 747, column: 7, scope: !3496)
!3505 = !DILocation(line: 749, column: 11, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !2946, file: !687, line: 749, column: 7)
!3507 = !DILocation(line: 749, column: 7, scope: !2946)
!3508 = !DILocation(line: 750, column: 5, scope: !3506)
!3509 = !DILocation(line: 750, column: 17, scope: !3506)
!3510 = !DILocation(line: 753, column: 2, scope: !2946)
!3511 = !DILocation(line: 756, column: 51, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !2946, file: !687, line: 756, column: 7)
!3513 = !DILocation(line: 756, column: 21, scope: !3512)
!3514 = !DILocation(line: 760, column: 42, scope: !2946)
!3515 = !DILocation(line: 758, column: 10, scope: !2946)
!3516 = !DILocation(line: 758, column: 3, scope: !2946)
!3517 = !DILocation(line: 762, column: 1, scope: !2946)
!3518 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1204, file: !1204, line: 98, type: !3519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!262}
!3521 = !DISubprogram(name: "iswprint", scope: !3522, file: !3522, line: 120, type: !3321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3522 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3523 = distinct !DISubprogram(name: "quotearg_alloc", scope: !687, file: !687, line: 788, type: !3524, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!258, !265, !262, !2839}
!3526 = !{!3527, !3528, !3529}
!3527 = !DILocalVariable(name: "arg", arg: 1, scope: !3523, file: !687, line: 788, type: !265)
!3528 = !DILocalVariable(name: "argsize", arg: 2, scope: !3523, file: !687, line: 788, type: !262)
!3529 = !DILocalVariable(name: "o", arg: 3, scope: !3523, file: !687, line: 789, type: !2839)
!3530 = !DILocation(line: 0, scope: !3523)
!3531 = !DILocalVariable(name: "arg", arg: 1, scope: !3532, file: !687, line: 801, type: !265)
!3532 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !687, file: !687, line: 801, type: !3533, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3535)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!258, !265, !262, !927, !2839}
!3535 = !{!3531, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543}
!3536 = !DILocalVariable(name: "argsize", arg: 2, scope: !3532, file: !687, line: 801, type: !262)
!3537 = !DILocalVariable(name: "size", arg: 3, scope: !3532, file: !687, line: 801, type: !927)
!3538 = !DILocalVariable(name: "o", arg: 4, scope: !3532, file: !687, line: 802, type: !2839)
!3539 = !DILocalVariable(name: "p", scope: !3532, file: !687, line: 804, type: !2839)
!3540 = !DILocalVariable(name: "saved_errno", scope: !3532, file: !687, line: 805, type: !260)
!3541 = !DILocalVariable(name: "flags", scope: !3532, file: !687, line: 807, type: !260)
!3542 = !DILocalVariable(name: "bufsize", scope: !3532, file: !687, line: 808, type: !262)
!3543 = !DILocalVariable(name: "buf", scope: !3532, file: !687, line: 812, type: !258)
!3544 = !DILocation(line: 0, scope: !3532, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 791, column: 10, scope: !3523)
!3546 = !DILocation(line: 804, column: 37, scope: !3532, inlinedAt: !3545)
!3547 = !DILocation(line: 805, column: 21, scope: !3532, inlinedAt: !3545)
!3548 = !DILocation(line: 807, column: 18, scope: !3532, inlinedAt: !3545)
!3549 = !DILocation(line: 807, column: 24, scope: !3532, inlinedAt: !3545)
!3550 = !DILocation(line: 808, column: 72, scope: !3532, inlinedAt: !3545)
!3551 = !DILocation(line: 809, column: 56, scope: !3532, inlinedAt: !3545)
!3552 = !DILocation(line: 810, column: 49, scope: !3532, inlinedAt: !3545)
!3553 = !DILocation(line: 811, column: 49, scope: !3532, inlinedAt: !3545)
!3554 = !DILocation(line: 808, column: 20, scope: !3532, inlinedAt: !3545)
!3555 = !DILocation(line: 811, column: 62, scope: !3532, inlinedAt: !3545)
!3556 = !DILocation(line: 812, column: 15, scope: !3532, inlinedAt: !3545)
!3557 = !DILocation(line: 813, column: 60, scope: !3532, inlinedAt: !3545)
!3558 = !DILocation(line: 815, column: 32, scope: !3532, inlinedAt: !3545)
!3559 = !DILocation(line: 815, column: 47, scope: !3532, inlinedAt: !3545)
!3560 = !DILocation(line: 813, column: 3, scope: !3532, inlinedAt: !3545)
!3561 = !DILocation(line: 816, column: 9, scope: !3532, inlinedAt: !3545)
!3562 = !DILocation(line: 791, column: 3, scope: !3523)
!3563 = !DILocation(line: 0, scope: !3532)
!3564 = !DILocation(line: 804, column: 37, scope: !3532)
!3565 = !DILocation(line: 805, column: 21, scope: !3532)
!3566 = !DILocation(line: 807, column: 18, scope: !3532)
!3567 = !DILocation(line: 807, column: 27, scope: !3532)
!3568 = !DILocation(line: 807, column: 24, scope: !3532)
!3569 = !DILocation(line: 808, column: 72, scope: !3532)
!3570 = !DILocation(line: 809, column: 56, scope: !3532)
!3571 = !DILocation(line: 810, column: 49, scope: !3532)
!3572 = !DILocation(line: 811, column: 49, scope: !3532)
!3573 = !DILocation(line: 808, column: 20, scope: !3532)
!3574 = !DILocation(line: 811, column: 62, scope: !3532)
!3575 = !DILocation(line: 812, column: 15, scope: !3532)
!3576 = !DILocation(line: 813, column: 60, scope: !3532)
!3577 = !DILocation(line: 815, column: 32, scope: !3532)
!3578 = !DILocation(line: 815, column: 47, scope: !3532)
!3579 = !DILocation(line: 813, column: 3, scope: !3532)
!3580 = !DILocation(line: 816, column: 9, scope: !3532)
!3581 = !DILocation(line: 817, column: 7, scope: !3532)
!3582 = !DILocation(line: 818, column: 11, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3532, file: !687, line: 817, column: 7)
!3584 = !DILocation(line: 818, column: 5, scope: !3583)
!3585 = !DILocation(line: 819, column: 3, scope: !3532)
!3586 = distinct !DISubprogram(name: "quotearg_free", scope: !687, file: !687, line: 837, type: !642, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3587)
!3587 = !{!3588, !3589}
!3588 = !DILocalVariable(name: "sv", scope: !3586, file: !687, line: 839, type: !788)
!3589 = !DILocalVariable(name: "i", scope: !3590, file: !687, line: 840, type: !260)
!3590 = distinct !DILexicalBlock(scope: !3586, file: !687, line: 840, column: 3)
!3591 = !DILocation(line: 839, column: 24, scope: !3586)
!3592 = !DILocation(line: 0, scope: !3586)
!3593 = !DILocation(line: 0, scope: !3590)
!3594 = !DILocation(line: 840, column: 21, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3590, file: !687, line: 840, column: 3)
!3596 = !DILocation(line: 840, column: 3, scope: !3590)
!3597 = !DILocation(line: 842, column: 13, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3586, file: !687, line: 842, column: 7)
!3599 = !{!3600, !995, i64 8}
!3600 = !{!"slotvec", !1604, i64 0, !995, i64 8}
!3601 = !DILocation(line: 842, column: 17, scope: !3598)
!3602 = !DILocation(line: 842, column: 7, scope: !3586)
!3603 = !DILocation(line: 841, column: 17, scope: !3595)
!3604 = !DILocation(line: 841, column: 5, scope: !3595)
!3605 = !DILocation(line: 840, column: 32, scope: !3595)
!3606 = distinct !{!3606, !3596, !3607, !1142}
!3607 = !DILocation(line: 841, column: 20, scope: !3590)
!3608 = !DILocation(line: 844, column: 7, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3598, file: !687, line: 843, column: 5)
!3610 = !DILocation(line: 845, column: 21, scope: !3609)
!3611 = !{!3600, !1604, i64 0}
!3612 = !DILocation(line: 846, column: 20, scope: !3609)
!3613 = !DILocation(line: 847, column: 5, scope: !3609)
!3614 = !DILocation(line: 848, column: 10, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3586, file: !687, line: 848, column: 7)
!3616 = !DILocation(line: 848, column: 7, scope: !3586)
!3617 = !DILocation(line: 850, column: 7, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3615, file: !687, line: 849, column: 5)
!3619 = !DILocation(line: 851, column: 15, scope: !3618)
!3620 = !DILocation(line: 852, column: 5, scope: !3618)
!3621 = !DILocation(line: 853, column: 10, scope: !3586)
!3622 = !DILocation(line: 854, column: 1, scope: !3586)
!3623 = !DISubprogram(name: "free", scope: !2793, file: !2793, line: 786, type: !3624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{null, !259}
!3626 = distinct !DISubprogram(name: "quotearg_n", scope: !687, file: !687, line: 919, type: !1197, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3627)
!3627 = !{!3628, !3629}
!3628 = !DILocalVariable(name: "n", arg: 1, scope: !3626, file: !687, line: 919, type: !260)
!3629 = !DILocalVariable(name: "arg", arg: 2, scope: !3626, file: !687, line: 919, type: !265)
!3630 = !DILocation(line: 0, scope: !3626)
!3631 = !DILocation(line: 921, column: 10, scope: !3626)
!3632 = !DILocation(line: 921, column: 3, scope: !3626)
!3633 = distinct !DISubprogram(name: "quotearg_n_options", scope: !687, file: !687, line: 866, type: !3634, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3636)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!258, !260, !265, !262, !2839}
!3636 = !{!3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3647, !3648, !3650, !3651, !3652}
!3637 = !DILocalVariable(name: "n", arg: 1, scope: !3633, file: !687, line: 866, type: !260)
!3638 = !DILocalVariable(name: "arg", arg: 2, scope: !3633, file: !687, line: 866, type: !265)
!3639 = !DILocalVariable(name: "argsize", arg: 3, scope: !3633, file: !687, line: 866, type: !262)
!3640 = !DILocalVariable(name: "options", arg: 4, scope: !3633, file: !687, line: 867, type: !2839)
!3641 = !DILocalVariable(name: "saved_errno", scope: !3633, file: !687, line: 869, type: !260)
!3642 = !DILocalVariable(name: "sv", scope: !3633, file: !687, line: 871, type: !788)
!3643 = !DILocalVariable(name: "nslots_max", scope: !3633, file: !687, line: 873, type: !260)
!3644 = !DILocalVariable(name: "preallocated", scope: !3645, file: !687, line: 879, type: !319)
!3645 = distinct !DILexicalBlock(scope: !3646, file: !687, line: 878, column: 5)
!3646 = distinct !DILexicalBlock(scope: !3633, file: !687, line: 877, column: 7)
!3647 = !DILocalVariable(name: "new_nslots", scope: !3645, file: !687, line: 880, type: !940)
!3648 = !DILocalVariable(name: "size", scope: !3649, file: !687, line: 891, type: !262)
!3649 = distinct !DILexicalBlock(scope: !3633, file: !687, line: 890, column: 3)
!3650 = !DILocalVariable(name: "val", scope: !3649, file: !687, line: 892, type: !258)
!3651 = !DILocalVariable(name: "flags", scope: !3649, file: !687, line: 894, type: !260)
!3652 = !DILocalVariable(name: "qsize", scope: !3649, file: !687, line: 895, type: !262)
!3653 = distinct !DIAssignID()
!3654 = !DILocation(line: 0, scope: !3645)
!3655 = !DILocation(line: 0, scope: !3633)
!3656 = !DILocation(line: 869, column: 21, scope: !3633)
!3657 = !DILocation(line: 871, column: 24, scope: !3633)
!3658 = !DILocation(line: 874, column: 17, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3633, file: !687, line: 874, column: 7)
!3660 = !DILocation(line: 875, column: 5, scope: !3659)
!3661 = !DILocation(line: 877, column: 7, scope: !3646)
!3662 = !DILocation(line: 877, column: 14, scope: !3646)
!3663 = !DILocation(line: 877, column: 7, scope: !3633)
!3664 = !DILocation(line: 879, column: 31, scope: !3645)
!3665 = !DILocation(line: 880, column: 7, scope: !3645)
!3666 = !DILocation(line: 880, column: 26, scope: !3645)
!3667 = !DILocation(line: 880, column: 13, scope: !3645)
!3668 = distinct !DIAssignID()
!3669 = !DILocation(line: 882, column: 31, scope: !3645)
!3670 = !DILocation(line: 883, column: 33, scope: !3645)
!3671 = !DILocation(line: 883, column: 42, scope: !3645)
!3672 = !DILocation(line: 883, column: 31, scope: !3645)
!3673 = !DILocation(line: 882, column: 22, scope: !3645)
!3674 = !DILocation(line: 882, column: 15, scope: !3645)
!3675 = !DILocation(line: 884, column: 11, scope: !3645)
!3676 = !DILocation(line: 885, column: 15, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3645, file: !687, line: 884, column: 11)
!3678 = !{i64 0, i64 8, !1603, i64 8, i64 8, !994}
!3679 = !DILocation(line: 885, column: 9, scope: !3677)
!3680 = !DILocation(line: 886, column: 20, scope: !3645)
!3681 = !DILocation(line: 886, column: 18, scope: !3645)
!3682 = !DILocation(line: 886, column: 32, scope: !3645)
!3683 = !DILocation(line: 886, column: 43, scope: !3645)
!3684 = !DILocation(line: 886, column: 53, scope: !3645)
!3685 = !DILocation(line: 0, scope: !3061, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 886, column: 7, scope: !3645)
!3687 = !DILocation(line: 59, column: 10, scope: !3061, inlinedAt: !3686)
!3688 = !DILocation(line: 887, column: 16, scope: !3645)
!3689 = !DILocation(line: 887, column: 14, scope: !3645)
!3690 = !DILocation(line: 888, column: 5, scope: !3646)
!3691 = !DILocation(line: 888, column: 5, scope: !3645)
!3692 = !DILocation(line: 891, column: 19, scope: !3649)
!3693 = !DILocation(line: 891, column: 25, scope: !3649)
!3694 = !DILocation(line: 0, scope: !3649)
!3695 = !DILocation(line: 892, column: 23, scope: !3649)
!3696 = !DILocation(line: 894, column: 26, scope: !3649)
!3697 = !DILocation(line: 894, column: 32, scope: !3649)
!3698 = !DILocation(line: 896, column: 55, scope: !3649)
!3699 = !DILocation(line: 897, column: 55, scope: !3649)
!3700 = !DILocation(line: 898, column: 55, scope: !3649)
!3701 = !DILocation(line: 899, column: 55, scope: !3649)
!3702 = !DILocation(line: 895, column: 20, scope: !3649)
!3703 = !DILocation(line: 901, column: 14, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3649, file: !687, line: 901, column: 9)
!3705 = !DILocation(line: 901, column: 9, scope: !3649)
!3706 = !DILocation(line: 903, column: 35, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3704, file: !687, line: 902, column: 7)
!3708 = !DILocation(line: 903, column: 20, scope: !3707)
!3709 = !DILocation(line: 904, column: 17, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3707, file: !687, line: 904, column: 13)
!3711 = !DILocation(line: 904, column: 13, scope: !3707)
!3712 = !DILocation(line: 905, column: 11, scope: !3710)
!3713 = !DILocation(line: 906, column: 27, scope: !3707)
!3714 = !DILocation(line: 906, column: 19, scope: !3707)
!3715 = !DILocation(line: 907, column: 69, scope: !3707)
!3716 = !DILocation(line: 909, column: 44, scope: !3707)
!3717 = !DILocation(line: 910, column: 44, scope: !3707)
!3718 = !DILocation(line: 907, column: 9, scope: !3707)
!3719 = !DILocation(line: 911, column: 7, scope: !3707)
!3720 = !DILocation(line: 913, column: 11, scope: !3649)
!3721 = !DILocation(line: 914, column: 5, scope: !3649)
!3722 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !687, file: !687, line: 925, type: !3723, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3725)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!258, !260, !265, !262}
!3725 = !{!3726, !3727, !3728}
!3726 = !DILocalVariable(name: "n", arg: 1, scope: !3722, file: !687, line: 925, type: !260)
!3727 = !DILocalVariable(name: "arg", arg: 2, scope: !3722, file: !687, line: 925, type: !265)
!3728 = !DILocalVariable(name: "argsize", arg: 3, scope: !3722, file: !687, line: 925, type: !262)
!3729 = !DILocation(line: 0, scope: !3722)
!3730 = !DILocation(line: 927, column: 10, scope: !3722)
!3731 = !DILocation(line: 927, column: 3, scope: !3722)
!3732 = distinct !DISubprogram(name: "quotearg", scope: !687, file: !687, line: 931, type: !1206, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3733)
!3733 = !{!3734}
!3734 = !DILocalVariable(name: "arg", arg: 1, scope: !3732, file: !687, line: 931, type: !265)
!3735 = !DILocation(line: 0, scope: !3732)
!3736 = !DILocation(line: 0, scope: !3626, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 933, column: 10, scope: !3732)
!3738 = !DILocation(line: 921, column: 10, scope: !3626, inlinedAt: !3737)
!3739 = !DILocation(line: 933, column: 3, scope: !3732)
!3740 = distinct !DISubprogram(name: "quotearg_mem", scope: !687, file: !687, line: 937, type: !3741, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!258, !265, !262}
!3743 = !{!3744, !3745}
!3744 = !DILocalVariable(name: "arg", arg: 1, scope: !3740, file: !687, line: 937, type: !265)
!3745 = !DILocalVariable(name: "argsize", arg: 2, scope: !3740, file: !687, line: 937, type: !262)
!3746 = !DILocation(line: 0, scope: !3740)
!3747 = !DILocation(line: 0, scope: !3722, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 939, column: 10, scope: !3740)
!3749 = !DILocation(line: 927, column: 10, scope: !3722, inlinedAt: !3748)
!3750 = !DILocation(line: 939, column: 3, scope: !3740)
!3751 = distinct !DISubprogram(name: "quotearg_n_style", scope: !687, file: !687, line: 943, type: !3752, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3754)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!258, !260, !713, !265}
!3754 = !{!3755, !3756, !3757, !3758}
!3755 = !DILocalVariable(name: "n", arg: 1, scope: !3751, file: !687, line: 943, type: !260)
!3756 = !DILocalVariable(name: "s", arg: 2, scope: !3751, file: !687, line: 943, type: !713)
!3757 = !DILocalVariable(name: "arg", arg: 3, scope: !3751, file: !687, line: 943, type: !265)
!3758 = !DILocalVariable(name: "o", scope: !3751, file: !687, line: 945, type: !2840)
!3759 = distinct !DIAssignID()
!3760 = !DILocation(line: 0, scope: !3751)
!3761 = !DILocation(line: 945, column: 3, scope: !3751)
!3762 = !{!3763}
!3763 = distinct !{!3763, !3764, !"quoting_options_from_style: argument 0"}
!3764 = distinct !{!3764, !"quoting_options_from_style"}
!3765 = !DILocation(line: 945, column: 36, scope: !3751)
!3766 = !DILocalVariable(name: "style", arg: 1, scope: !3767, file: !687, line: 183, type: !713)
!3767 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !687, file: !687, line: 183, type: !3768, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3770)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!740, !713}
!3770 = !{!3766, !3771}
!3771 = !DILocalVariable(name: "o", scope: !3767, file: !687, line: 185, type: !740)
!3772 = !DILocation(line: 0, scope: !3767, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 945, column: 36, scope: !3751)
!3774 = !DILocation(line: 185, column: 26, scope: !3767, inlinedAt: !3773)
!3775 = distinct !DIAssignID()
!3776 = !DILocation(line: 186, column: 13, scope: !3777, inlinedAt: !3773)
!3777 = distinct !DILexicalBlock(scope: !3767, file: !687, line: 186, column: 7)
!3778 = !DILocation(line: 186, column: 7, scope: !3767, inlinedAt: !3773)
!3779 = !DILocation(line: 187, column: 5, scope: !3777, inlinedAt: !3773)
!3780 = !DILocation(line: 188, column: 11, scope: !3767, inlinedAt: !3773)
!3781 = distinct !DIAssignID()
!3782 = !DILocation(line: 946, column: 10, scope: !3751)
!3783 = !DILocation(line: 947, column: 1, scope: !3751)
!3784 = !DILocation(line: 946, column: 3, scope: !3751)
!3785 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !687, file: !687, line: 950, type: !3786, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3788)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!258, !260, !713, !265, !262}
!3788 = !{!3789, !3790, !3791, !3792, !3793}
!3789 = !DILocalVariable(name: "n", arg: 1, scope: !3785, file: !687, line: 950, type: !260)
!3790 = !DILocalVariable(name: "s", arg: 2, scope: !3785, file: !687, line: 950, type: !713)
!3791 = !DILocalVariable(name: "arg", arg: 3, scope: !3785, file: !687, line: 951, type: !265)
!3792 = !DILocalVariable(name: "argsize", arg: 4, scope: !3785, file: !687, line: 951, type: !262)
!3793 = !DILocalVariable(name: "o", scope: !3785, file: !687, line: 953, type: !2840)
!3794 = distinct !DIAssignID()
!3795 = !DILocation(line: 0, scope: !3785)
!3796 = !DILocation(line: 953, column: 3, scope: !3785)
!3797 = !{!3798}
!3798 = distinct !{!3798, !3799, !"quoting_options_from_style: argument 0"}
!3799 = distinct !{!3799, !"quoting_options_from_style"}
!3800 = !DILocation(line: 953, column: 36, scope: !3785)
!3801 = !DILocation(line: 0, scope: !3767, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 953, column: 36, scope: !3785)
!3803 = !DILocation(line: 185, column: 26, scope: !3767, inlinedAt: !3802)
!3804 = distinct !DIAssignID()
!3805 = !DILocation(line: 186, column: 13, scope: !3777, inlinedAt: !3802)
!3806 = !DILocation(line: 186, column: 7, scope: !3767, inlinedAt: !3802)
!3807 = !DILocation(line: 187, column: 5, scope: !3777, inlinedAt: !3802)
!3808 = !DILocation(line: 188, column: 11, scope: !3767, inlinedAt: !3802)
!3809 = distinct !DIAssignID()
!3810 = !DILocation(line: 954, column: 10, scope: !3785)
!3811 = !DILocation(line: 955, column: 1, scope: !3785)
!3812 = !DILocation(line: 954, column: 3, scope: !3785)
!3813 = distinct !DISubprogram(name: "quotearg_style", scope: !687, file: !687, line: 958, type: !3814, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3816)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!258, !713, !265}
!3816 = !{!3817, !3818}
!3817 = !DILocalVariable(name: "s", arg: 1, scope: !3813, file: !687, line: 958, type: !713)
!3818 = !DILocalVariable(name: "arg", arg: 2, scope: !3813, file: !687, line: 958, type: !265)
!3819 = distinct !DIAssignID()
!3820 = !DILocation(line: 0, scope: !3813)
!3821 = !DILocation(line: 0, scope: !3751, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 960, column: 10, scope: !3813)
!3823 = !DILocation(line: 945, column: 3, scope: !3751, inlinedAt: !3822)
!3824 = !{!3825}
!3825 = distinct !{!3825, !3826, !"quoting_options_from_style: argument 0"}
!3826 = distinct !{!3826, !"quoting_options_from_style"}
!3827 = !DILocation(line: 945, column: 36, scope: !3751, inlinedAt: !3822)
!3828 = !DILocation(line: 0, scope: !3767, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 945, column: 36, scope: !3751, inlinedAt: !3822)
!3830 = !DILocation(line: 185, column: 26, scope: !3767, inlinedAt: !3829)
!3831 = distinct !DIAssignID()
!3832 = !DILocation(line: 186, column: 13, scope: !3777, inlinedAt: !3829)
!3833 = !DILocation(line: 186, column: 7, scope: !3767, inlinedAt: !3829)
!3834 = !DILocation(line: 187, column: 5, scope: !3777, inlinedAt: !3829)
!3835 = !DILocation(line: 188, column: 11, scope: !3767, inlinedAt: !3829)
!3836 = distinct !DIAssignID()
!3837 = !DILocation(line: 946, column: 10, scope: !3751, inlinedAt: !3822)
!3838 = !DILocation(line: 947, column: 1, scope: !3751, inlinedAt: !3822)
!3839 = !DILocation(line: 960, column: 3, scope: !3813)
!3840 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !687, file: !687, line: 964, type: !3841, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3843)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!258, !713, !265, !262}
!3843 = !{!3844, !3845, !3846}
!3844 = !DILocalVariable(name: "s", arg: 1, scope: !3840, file: !687, line: 964, type: !713)
!3845 = !DILocalVariable(name: "arg", arg: 2, scope: !3840, file: !687, line: 964, type: !265)
!3846 = !DILocalVariable(name: "argsize", arg: 3, scope: !3840, file: !687, line: 964, type: !262)
!3847 = distinct !DIAssignID()
!3848 = !DILocation(line: 0, scope: !3840)
!3849 = !DILocation(line: 0, scope: !3785, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 966, column: 10, scope: !3840)
!3851 = !DILocation(line: 953, column: 3, scope: !3785, inlinedAt: !3850)
!3852 = !{!3853}
!3853 = distinct !{!3853, !3854, !"quoting_options_from_style: argument 0"}
!3854 = distinct !{!3854, !"quoting_options_from_style"}
!3855 = !DILocation(line: 953, column: 36, scope: !3785, inlinedAt: !3850)
!3856 = !DILocation(line: 0, scope: !3767, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 953, column: 36, scope: !3785, inlinedAt: !3850)
!3858 = !DILocation(line: 185, column: 26, scope: !3767, inlinedAt: !3857)
!3859 = distinct !DIAssignID()
!3860 = !DILocation(line: 186, column: 13, scope: !3777, inlinedAt: !3857)
!3861 = !DILocation(line: 186, column: 7, scope: !3767, inlinedAt: !3857)
!3862 = !DILocation(line: 187, column: 5, scope: !3777, inlinedAt: !3857)
!3863 = !DILocation(line: 188, column: 11, scope: !3767, inlinedAt: !3857)
!3864 = distinct !DIAssignID()
!3865 = !DILocation(line: 954, column: 10, scope: !3785, inlinedAt: !3850)
!3866 = !DILocation(line: 955, column: 1, scope: !3785, inlinedAt: !3850)
!3867 = !DILocation(line: 966, column: 3, scope: !3840)
!3868 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !687, file: !687, line: 970, type: !3869, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3871)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!258, !265, !262, !4}
!3871 = !{!3872, !3873, !3874, !3875}
!3872 = !DILocalVariable(name: "arg", arg: 1, scope: !3868, file: !687, line: 970, type: !265)
!3873 = !DILocalVariable(name: "argsize", arg: 2, scope: !3868, file: !687, line: 970, type: !262)
!3874 = !DILocalVariable(name: "ch", arg: 3, scope: !3868, file: !687, line: 970, type: !4)
!3875 = !DILocalVariable(name: "options", scope: !3868, file: !687, line: 972, type: !740)
!3876 = distinct !DIAssignID()
!3877 = !DILocation(line: 0, scope: !3868)
!3878 = !DILocation(line: 972, column: 3, scope: !3868)
!3879 = !DILocation(line: 973, column: 13, scope: !3868)
!3880 = !{i64 0, i64 4, !1095, i64 4, i64 4, !1095, i64 8, i64 32, !1104, i64 40, i64 8, !994, i64 48, i64 8, !994}
!3881 = distinct !DIAssignID()
!3882 = !DILocation(line: 0, scope: !2859, inlinedAt: !3883)
!3883 = distinct !DILocation(line: 974, column: 3, scope: !3868)
!3884 = !DILocation(line: 147, column: 41, scope: !2859, inlinedAt: !3883)
!3885 = !DILocation(line: 147, column: 62, scope: !2859, inlinedAt: !3883)
!3886 = !DILocation(line: 147, column: 57, scope: !2859, inlinedAt: !3883)
!3887 = !DILocation(line: 148, column: 15, scope: !2859, inlinedAt: !3883)
!3888 = !DILocation(line: 149, column: 21, scope: !2859, inlinedAt: !3883)
!3889 = !DILocation(line: 149, column: 24, scope: !2859, inlinedAt: !3883)
!3890 = !DILocation(line: 150, column: 19, scope: !2859, inlinedAt: !3883)
!3891 = !DILocation(line: 150, column: 24, scope: !2859, inlinedAt: !3883)
!3892 = !DILocation(line: 150, column: 6, scope: !2859, inlinedAt: !3883)
!3893 = !DILocation(line: 975, column: 10, scope: !3868)
!3894 = !DILocation(line: 976, column: 1, scope: !3868)
!3895 = !DILocation(line: 975, column: 3, scope: !3868)
!3896 = distinct !DISubprogram(name: "quotearg_char", scope: !687, file: !687, line: 979, type: !3897, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3899)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!258, !265, !4}
!3899 = !{!3900, !3901}
!3900 = !DILocalVariable(name: "arg", arg: 1, scope: !3896, file: !687, line: 979, type: !265)
!3901 = !DILocalVariable(name: "ch", arg: 2, scope: !3896, file: !687, line: 979, type: !4)
!3902 = distinct !DIAssignID()
!3903 = !DILocation(line: 0, scope: !3896)
!3904 = !DILocation(line: 0, scope: !3868, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 981, column: 10, scope: !3896)
!3906 = !DILocation(line: 972, column: 3, scope: !3868, inlinedAt: !3905)
!3907 = !DILocation(line: 973, column: 13, scope: !3868, inlinedAt: !3905)
!3908 = distinct !DIAssignID()
!3909 = !DILocation(line: 0, scope: !2859, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 974, column: 3, scope: !3868, inlinedAt: !3905)
!3911 = !DILocation(line: 147, column: 41, scope: !2859, inlinedAt: !3910)
!3912 = !DILocation(line: 147, column: 62, scope: !2859, inlinedAt: !3910)
!3913 = !DILocation(line: 147, column: 57, scope: !2859, inlinedAt: !3910)
!3914 = !DILocation(line: 148, column: 15, scope: !2859, inlinedAt: !3910)
!3915 = !DILocation(line: 149, column: 21, scope: !2859, inlinedAt: !3910)
!3916 = !DILocation(line: 149, column: 24, scope: !2859, inlinedAt: !3910)
!3917 = !DILocation(line: 150, column: 19, scope: !2859, inlinedAt: !3910)
!3918 = !DILocation(line: 150, column: 24, scope: !2859, inlinedAt: !3910)
!3919 = !DILocation(line: 150, column: 6, scope: !2859, inlinedAt: !3910)
!3920 = !DILocation(line: 975, column: 10, scope: !3868, inlinedAt: !3905)
!3921 = !DILocation(line: 976, column: 1, scope: !3868, inlinedAt: !3905)
!3922 = !DILocation(line: 981, column: 3, scope: !3896)
!3923 = distinct !DISubprogram(name: "quotearg_colon", scope: !687, file: !687, line: 985, type: !1206, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3924)
!3924 = !{!3925}
!3925 = !DILocalVariable(name: "arg", arg: 1, scope: !3923, file: !687, line: 985, type: !265)
!3926 = distinct !DIAssignID()
!3927 = !DILocation(line: 0, scope: !3923)
!3928 = !DILocation(line: 0, scope: !3896, inlinedAt: !3929)
!3929 = distinct !DILocation(line: 987, column: 10, scope: !3923)
!3930 = !DILocation(line: 0, scope: !3868, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 981, column: 10, scope: !3896, inlinedAt: !3929)
!3932 = !DILocation(line: 972, column: 3, scope: !3868, inlinedAt: !3931)
!3933 = !DILocation(line: 973, column: 13, scope: !3868, inlinedAt: !3931)
!3934 = distinct !DIAssignID()
!3935 = !DILocation(line: 0, scope: !2859, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 974, column: 3, scope: !3868, inlinedAt: !3931)
!3937 = !DILocation(line: 147, column: 57, scope: !2859, inlinedAt: !3936)
!3938 = !DILocation(line: 149, column: 21, scope: !2859, inlinedAt: !3936)
!3939 = !DILocation(line: 150, column: 6, scope: !2859, inlinedAt: !3936)
!3940 = !DILocation(line: 975, column: 10, scope: !3868, inlinedAt: !3931)
!3941 = !DILocation(line: 976, column: 1, scope: !3868, inlinedAt: !3931)
!3942 = !DILocation(line: 987, column: 3, scope: !3923)
!3943 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !687, file: !687, line: 991, type: !3741, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3944)
!3944 = !{!3945, !3946}
!3945 = !DILocalVariable(name: "arg", arg: 1, scope: !3943, file: !687, line: 991, type: !265)
!3946 = !DILocalVariable(name: "argsize", arg: 2, scope: !3943, file: !687, line: 991, type: !262)
!3947 = distinct !DIAssignID()
!3948 = !DILocation(line: 0, scope: !3943)
!3949 = !DILocation(line: 0, scope: !3868, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 993, column: 10, scope: !3943)
!3951 = !DILocation(line: 972, column: 3, scope: !3868, inlinedAt: !3950)
!3952 = !DILocation(line: 973, column: 13, scope: !3868, inlinedAt: !3950)
!3953 = distinct !DIAssignID()
!3954 = !DILocation(line: 0, scope: !2859, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 974, column: 3, scope: !3868, inlinedAt: !3950)
!3956 = !DILocation(line: 147, column: 57, scope: !2859, inlinedAt: !3955)
!3957 = !DILocation(line: 149, column: 21, scope: !2859, inlinedAt: !3955)
!3958 = !DILocation(line: 150, column: 6, scope: !2859, inlinedAt: !3955)
!3959 = !DILocation(line: 975, column: 10, scope: !3868, inlinedAt: !3950)
!3960 = !DILocation(line: 976, column: 1, scope: !3868, inlinedAt: !3950)
!3961 = !DILocation(line: 993, column: 3, scope: !3943)
!3962 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !687, file: !687, line: 997, type: !3752, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3963)
!3963 = !{!3964, !3965, !3966, !3967}
!3964 = !DILocalVariable(name: "n", arg: 1, scope: !3962, file: !687, line: 997, type: !260)
!3965 = !DILocalVariable(name: "s", arg: 2, scope: !3962, file: !687, line: 997, type: !713)
!3966 = !DILocalVariable(name: "arg", arg: 3, scope: !3962, file: !687, line: 997, type: !265)
!3967 = !DILocalVariable(name: "options", scope: !3962, file: !687, line: 999, type: !740)
!3968 = distinct !DIAssignID()
!3969 = !DILocation(line: 0, scope: !3962)
!3970 = !DILocation(line: 185, column: 26, scope: !3767, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 1000, column: 13, scope: !3962)
!3972 = !DILocation(line: 999, column: 3, scope: !3962)
!3973 = !DILocation(line: 0, scope: !3767, inlinedAt: !3971)
!3974 = !DILocation(line: 186, column: 13, scope: !3777, inlinedAt: !3971)
!3975 = !DILocation(line: 186, column: 7, scope: !3767, inlinedAt: !3971)
!3976 = !DILocation(line: 187, column: 5, scope: !3777, inlinedAt: !3971)
!3977 = !{!3978}
!3978 = distinct !{!3978, !3979, !"quoting_options_from_style: argument 0"}
!3979 = distinct !{!3979, !"quoting_options_from_style"}
!3980 = !DILocation(line: 1000, column: 13, scope: !3962)
!3981 = distinct !DIAssignID()
!3982 = distinct !DIAssignID()
!3983 = !DILocation(line: 0, scope: !2859, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 1001, column: 3, scope: !3962)
!3985 = !DILocation(line: 147, column: 57, scope: !2859, inlinedAt: !3984)
!3986 = !DILocation(line: 149, column: 21, scope: !2859, inlinedAt: !3984)
!3987 = !DILocation(line: 150, column: 6, scope: !2859, inlinedAt: !3984)
!3988 = distinct !DIAssignID()
!3989 = !DILocation(line: 1002, column: 10, scope: !3962)
!3990 = !DILocation(line: 1003, column: 1, scope: !3962)
!3991 = !DILocation(line: 1002, column: 3, scope: !3962)
!3992 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !687, file: !687, line: 1006, type: !3993, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !3995)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!258, !260, !265, !265, !265}
!3995 = !{!3996, !3997, !3998, !3999}
!3996 = !DILocalVariable(name: "n", arg: 1, scope: !3992, file: !687, line: 1006, type: !260)
!3997 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3992, file: !687, line: 1006, type: !265)
!3998 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3992, file: !687, line: 1007, type: !265)
!3999 = !DILocalVariable(name: "arg", arg: 4, scope: !3992, file: !687, line: 1007, type: !265)
!4000 = distinct !DIAssignID()
!4001 = !DILocation(line: 0, scope: !3992)
!4002 = !DILocalVariable(name: "o", scope: !4003, file: !687, line: 1018, type: !740)
!4003 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !687, file: !687, line: 1014, type: !4004, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !4006)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!258, !260, !265, !265, !265, !262}
!4006 = !{!4007, !4008, !4009, !4010, !4011, !4002}
!4007 = !DILocalVariable(name: "n", arg: 1, scope: !4003, file: !687, line: 1014, type: !260)
!4008 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4003, file: !687, line: 1014, type: !265)
!4009 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4003, file: !687, line: 1015, type: !265)
!4010 = !DILocalVariable(name: "arg", arg: 4, scope: !4003, file: !687, line: 1016, type: !265)
!4011 = !DILocalVariable(name: "argsize", arg: 5, scope: !4003, file: !687, line: 1016, type: !262)
!4012 = !DILocation(line: 0, scope: !4003, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 1009, column: 10, scope: !3992)
!4014 = !DILocation(line: 1018, column: 3, scope: !4003, inlinedAt: !4013)
!4015 = !DILocation(line: 1018, column: 30, scope: !4003, inlinedAt: !4013)
!4016 = distinct !DIAssignID()
!4017 = distinct !DIAssignID()
!4018 = !DILocation(line: 0, scope: !2899, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 1019, column: 3, scope: !4003, inlinedAt: !4013)
!4020 = !DILocation(line: 174, column: 12, scope: !2899, inlinedAt: !4019)
!4021 = distinct !DIAssignID()
!4022 = !DILocation(line: 175, column: 8, scope: !2912, inlinedAt: !4019)
!4023 = !DILocation(line: 175, column: 19, scope: !2912, inlinedAt: !4019)
!4024 = !DILocation(line: 176, column: 5, scope: !2912, inlinedAt: !4019)
!4025 = !DILocation(line: 177, column: 6, scope: !2899, inlinedAt: !4019)
!4026 = !DILocation(line: 177, column: 17, scope: !2899, inlinedAt: !4019)
!4027 = distinct !DIAssignID()
!4028 = !DILocation(line: 178, column: 6, scope: !2899, inlinedAt: !4019)
!4029 = !DILocation(line: 178, column: 18, scope: !2899, inlinedAt: !4019)
!4030 = distinct !DIAssignID()
!4031 = !DILocation(line: 1020, column: 10, scope: !4003, inlinedAt: !4013)
!4032 = !DILocation(line: 1021, column: 1, scope: !4003, inlinedAt: !4013)
!4033 = !DILocation(line: 1009, column: 3, scope: !3992)
!4034 = distinct !DIAssignID()
!4035 = !DILocation(line: 0, scope: !4003)
!4036 = !DILocation(line: 1018, column: 3, scope: !4003)
!4037 = !DILocation(line: 1018, column: 30, scope: !4003)
!4038 = distinct !DIAssignID()
!4039 = distinct !DIAssignID()
!4040 = !DILocation(line: 0, scope: !2899, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 1019, column: 3, scope: !4003)
!4042 = !DILocation(line: 174, column: 12, scope: !2899, inlinedAt: !4041)
!4043 = distinct !DIAssignID()
!4044 = !DILocation(line: 175, column: 8, scope: !2912, inlinedAt: !4041)
!4045 = !DILocation(line: 175, column: 19, scope: !2912, inlinedAt: !4041)
!4046 = !DILocation(line: 176, column: 5, scope: !2912, inlinedAt: !4041)
!4047 = !DILocation(line: 177, column: 6, scope: !2899, inlinedAt: !4041)
!4048 = !DILocation(line: 177, column: 17, scope: !2899, inlinedAt: !4041)
!4049 = distinct !DIAssignID()
!4050 = !DILocation(line: 178, column: 6, scope: !2899, inlinedAt: !4041)
!4051 = !DILocation(line: 178, column: 18, scope: !2899, inlinedAt: !4041)
!4052 = distinct !DIAssignID()
!4053 = !DILocation(line: 1020, column: 10, scope: !4003)
!4054 = !DILocation(line: 1021, column: 1, scope: !4003)
!4055 = !DILocation(line: 1020, column: 3, scope: !4003)
!4056 = distinct !DISubprogram(name: "quotearg_custom", scope: !687, file: !687, line: 1024, type: !4057, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !4059)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!258, !265, !265, !265}
!4059 = !{!4060, !4061, !4062}
!4060 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4056, file: !687, line: 1024, type: !265)
!4061 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4056, file: !687, line: 1024, type: !265)
!4062 = !DILocalVariable(name: "arg", arg: 3, scope: !4056, file: !687, line: 1025, type: !265)
!4063 = distinct !DIAssignID()
!4064 = !DILocation(line: 0, scope: !4056)
!4065 = !DILocation(line: 0, scope: !3992, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 1027, column: 10, scope: !4056)
!4067 = !DILocation(line: 0, scope: !4003, inlinedAt: !4068)
!4068 = distinct !DILocation(line: 1009, column: 10, scope: !3992, inlinedAt: !4066)
!4069 = !DILocation(line: 1018, column: 3, scope: !4003, inlinedAt: !4068)
!4070 = !DILocation(line: 1018, column: 30, scope: !4003, inlinedAt: !4068)
!4071 = distinct !DIAssignID()
!4072 = distinct !DIAssignID()
!4073 = !DILocation(line: 0, scope: !2899, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 1019, column: 3, scope: !4003, inlinedAt: !4068)
!4075 = !DILocation(line: 174, column: 12, scope: !2899, inlinedAt: !4074)
!4076 = distinct !DIAssignID()
!4077 = !DILocation(line: 175, column: 8, scope: !2912, inlinedAt: !4074)
!4078 = !DILocation(line: 175, column: 19, scope: !2912, inlinedAt: !4074)
!4079 = !DILocation(line: 176, column: 5, scope: !2912, inlinedAt: !4074)
!4080 = !DILocation(line: 177, column: 6, scope: !2899, inlinedAt: !4074)
!4081 = !DILocation(line: 177, column: 17, scope: !2899, inlinedAt: !4074)
!4082 = distinct !DIAssignID()
!4083 = !DILocation(line: 178, column: 6, scope: !2899, inlinedAt: !4074)
!4084 = !DILocation(line: 178, column: 18, scope: !2899, inlinedAt: !4074)
!4085 = distinct !DIAssignID()
!4086 = !DILocation(line: 1020, column: 10, scope: !4003, inlinedAt: !4068)
!4087 = !DILocation(line: 1021, column: 1, scope: !4003, inlinedAt: !4068)
!4088 = !DILocation(line: 1027, column: 3, scope: !4056)
!4089 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !687, file: !687, line: 1031, type: !4090, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !4092)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!258, !265, !265, !265, !262}
!4092 = !{!4093, !4094, !4095, !4096}
!4093 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4089, file: !687, line: 1031, type: !265)
!4094 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4089, file: !687, line: 1031, type: !265)
!4095 = !DILocalVariable(name: "arg", arg: 3, scope: !4089, file: !687, line: 1032, type: !265)
!4096 = !DILocalVariable(name: "argsize", arg: 4, scope: !4089, file: !687, line: 1032, type: !262)
!4097 = distinct !DIAssignID()
!4098 = !DILocation(line: 0, scope: !4089)
!4099 = !DILocation(line: 0, scope: !4003, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 1034, column: 10, scope: !4089)
!4101 = !DILocation(line: 1018, column: 3, scope: !4003, inlinedAt: !4100)
!4102 = !DILocation(line: 1018, column: 30, scope: !4003, inlinedAt: !4100)
!4103 = distinct !DIAssignID()
!4104 = distinct !DIAssignID()
!4105 = !DILocation(line: 0, scope: !2899, inlinedAt: !4106)
!4106 = distinct !DILocation(line: 1019, column: 3, scope: !4003, inlinedAt: !4100)
!4107 = !DILocation(line: 174, column: 12, scope: !2899, inlinedAt: !4106)
!4108 = distinct !DIAssignID()
!4109 = !DILocation(line: 175, column: 8, scope: !2912, inlinedAt: !4106)
!4110 = !DILocation(line: 175, column: 19, scope: !2912, inlinedAt: !4106)
!4111 = !DILocation(line: 176, column: 5, scope: !2912, inlinedAt: !4106)
!4112 = !DILocation(line: 177, column: 6, scope: !2899, inlinedAt: !4106)
!4113 = !DILocation(line: 177, column: 17, scope: !2899, inlinedAt: !4106)
!4114 = distinct !DIAssignID()
!4115 = !DILocation(line: 178, column: 6, scope: !2899, inlinedAt: !4106)
!4116 = !DILocation(line: 178, column: 18, scope: !2899, inlinedAt: !4106)
!4117 = distinct !DIAssignID()
!4118 = !DILocation(line: 1020, column: 10, scope: !4003, inlinedAt: !4100)
!4119 = !DILocation(line: 1021, column: 1, scope: !4003, inlinedAt: !4100)
!4120 = !DILocation(line: 1034, column: 3, scope: !4089)
!4121 = distinct !DISubprogram(name: "quote_n_mem", scope: !687, file: !687, line: 1049, type: !4122, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !4124)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!265, !260, !265, !262}
!4124 = !{!4125, !4126, !4127}
!4125 = !DILocalVariable(name: "n", arg: 1, scope: !4121, file: !687, line: 1049, type: !260)
!4126 = !DILocalVariable(name: "arg", arg: 2, scope: !4121, file: !687, line: 1049, type: !265)
!4127 = !DILocalVariable(name: "argsize", arg: 3, scope: !4121, file: !687, line: 1049, type: !262)
!4128 = !DILocation(line: 0, scope: !4121)
!4129 = !DILocation(line: 1051, column: 10, scope: !4121)
!4130 = !DILocation(line: 1051, column: 3, scope: !4121)
!4131 = distinct !DISubprogram(name: "quote_mem", scope: !687, file: !687, line: 1055, type: !4132, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !4134)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!265, !265, !262}
!4134 = !{!4135, !4136}
!4135 = !DILocalVariable(name: "arg", arg: 1, scope: !4131, file: !687, line: 1055, type: !265)
!4136 = !DILocalVariable(name: "argsize", arg: 2, scope: !4131, file: !687, line: 1055, type: !262)
!4137 = !DILocation(line: 0, scope: !4131)
!4138 = !DILocation(line: 0, scope: !4121, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 1057, column: 10, scope: !4131)
!4140 = !DILocation(line: 1051, column: 10, scope: !4121, inlinedAt: !4139)
!4141 = !DILocation(line: 1057, column: 3, scope: !4131)
!4142 = distinct !DISubprogram(name: "quote_n", scope: !687, file: !687, line: 1061, type: !4143, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !4145)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!265, !260, !265}
!4145 = !{!4146, !4147}
!4146 = !DILocalVariable(name: "n", arg: 1, scope: !4142, file: !687, line: 1061, type: !260)
!4147 = !DILocalVariable(name: "arg", arg: 2, scope: !4142, file: !687, line: 1061, type: !265)
!4148 = !DILocation(line: 0, scope: !4142)
!4149 = !DILocation(line: 0, scope: !4121, inlinedAt: !4150)
!4150 = distinct !DILocation(line: 1063, column: 10, scope: !4142)
!4151 = !DILocation(line: 1051, column: 10, scope: !4121, inlinedAt: !4150)
!4152 = !DILocation(line: 1063, column: 3, scope: !4142)
!4153 = distinct !DISubprogram(name: "quote", scope: !687, file: !687, line: 1067, type: !2377, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !4154)
!4154 = !{!4155}
!4155 = !DILocalVariable(name: "arg", arg: 1, scope: !4153, file: !687, line: 1067, type: !265)
!4156 = !DILocation(line: 0, scope: !4153)
!4157 = !DILocation(line: 0, scope: !4142, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 1069, column: 10, scope: !4153)
!4159 = !DILocation(line: 0, scope: !4121, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 1063, column: 10, scope: !4142, inlinedAt: !4158)
!4161 = !DILocation(line: 1051, column: 10, scope: !4121, inlinedAt: !4160)
!4162 = !DILocation(line: 1069, column: 3, scope: !4153)
!4163 = distinct !DISubprogram(name: "strintcmp", scope: !912, file: !912, line: 31, type: !1209, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !4164)
!4164 = !{!4165, !4166}
!4165 = !DILocalVariable(name: "a", arg: 1, scope: !4163, file: !912, line: 31, type: !265)
!4166 = !DILocalVariable(name: "b", arg: 2, scope: !4163, file: !912, line: 31, type: !265)
!4167 = !DILocation(line: 0, scope: !4163)
!4168 = !DILocalVariable(name: "a", arg: 1, scope: !4169, file: !4170, line: 105, type: !265)
!4169 = distinct !DISubprogram(name: "numcompare", scope: !4170, file: !4170, line: 105, type: !4171, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !4173)
!4170 = !DIFile(filename: "lib/strnumcmp-in.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f69f23aa922f1f0bf768a1237830bd5f")
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!260, !265, !265, !260, !260}
!4173 = !{!4168, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181}
!4174 = !DILocalVariable(name: "b", arg: 2, scope: !4169, file: !4170, line: 105, type: !265)
!4175 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !4169, file: !4170, line: 106, type: !260)
!4176 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !4169, file: !4170, line: 106, type: !260)
!4177 = !DILocalVariable(name: "tmpa", scope: !4169, file: !4170, line: 108, type: !4)
!4178 = !DILocalVariable(name: "tmpb", scope: !4169, file: !4170, line: 109, type: !4)
!4179 = !DILocalVariable(name: "tmp", scope: !4169, file: !4170, line: 110, type: !260)
!4180 = !DILocalVariable(name: "log_a", scope: !4169, file: !4170, line: 111, type: !262)
!4181 = !DILocalVariable(name: "log_b", scope: !4169, file: !4170, line: 112, type: !262)
!4182 = !DILocation(line: 0, scope: !4169, inlinedAt: !4183)
!4183 = distinct !DILocation(line: 33, column: 10, scope: !4163)
!4184 = !DILocation(line: 108, column: 15, scope: !4169, inlinedAt: !4183)
!4185 = !DILocation(line: 109, column: 15, scope: !4169, inlinedAt: !4183)
!4186 = !DILocation(line: 114, column: 12, scope: !4187, inlinedAt: !4183)
!4187 = distinct !DILexicalBlock(scope: !4169, file: !4170, line: 114, column: 7)
!4188 = !DILocation(line: 114, column: 7, scope: !4169, inlinedAt: !4183)
!4189 = !DILocation(line: 117, column: 17, scope: !4190, inlinedAt: !4183)
!4190 = distinct !DILexicalBlock(scope: !4187, file: !4170, line: 115, column: 5)
!4191 = !DILocation(line: 117, column: 16, scope: !4190, inlinedAt: !4183)
!4192 = !DILocation(line: 118, column: 19, scope: !4190, inlinedAt: !4183)
!4193 = !DILocation(line: 117, column: 9, scope: !4190, inlinedAt: !4183)
!4194 = distinct !{!4194, !4195, !4196, !1142}
!4195 = !DILocation(line: 116, column: 7, scope: !4190, inlinedAt: !4183)
!4196 = !DILocation(line: 118, column: 59, scope: !4190, inlinedAt: !4183)
!4197 = !DILocation(line: 119, column: 16, scope: !4198, inlinedAt: !4183)
!4198 = distinct !DILexicalBlock(scope: !4190, file: !4170, line: 119, column: 11)
!4199 = !DILocation(line: 119, column: 11, scope: !4190, inlinedAt: !4183)
!4200 = !DILocation(line: 125, column: 26, scope: !4201, inlinedAt: !4183)
!4201 = distinct !DILexicalBlock(scope: !4202, file: !4170, line: 125, column: 15)
!4202 = distinct !DILexicalBlock(scope: !4198, file: !4170, line: 120, column: 9)
!4203 = !DILocalVariable(name: "c", arg: 1, scope: !4204, file: !4205, line: 233, type: !260)
!4204 = distinct !DISubprogram(name: "c_isdigit", scope: !4205, file: !4205, line: 233, type: !1338, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !4206)
!4205 = !DIFile(filename: "lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!4206 = !{!4203}
!4207 = !DILocation(line: 0, scope: !4204, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 125, column: 15, scope: !4201, inlinedAt: !4183)
!4209 = !DILocation(line: 235, column: 3, scope: !4204, inlinedAt: !4208)
!4210 = !DILocation(line: 125, column: 15, scope: !4202, inlinedAt: !4183)
!4211 = !DILocation(line: 127, column: 23, scope: !4202, inlinedAt: !4183)
!4212 = !DILocation(line: 127, column: 11, scope: !4202, inlinedAt: !4183)
!4213 = !DILocation(line: 128, column: 21, scope: !4202, inlinedAt: !4183)
!4214 = !DILocation(line: 128, column: 20, scope: !4202, inlinedAt: !4183)
!4215 = distinct !{!4215, !4212, !4216, !1142}
!4216 = !DILocation(line: 128, column: 23, scope: !4202, inlinedAt: !4183)
!4217 = !DILocation(line: 133, column: 31, scope: !4202, inlinedAt: !4183)
!4218 = !DILocation(line: 0, scope: !4204, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 133, column: 20, scope: !4202, inlinedAt: !4183)
!4220 = !DILocation(line: 235, column: 3, scope: !4204, inlinedAt: !4219)
!4221 = !DILocation(line: 133, column: 20, scope: !4202, inlinedAt: !4183)
!4222 = !DILocation(line: 133, column: 11, scope: !4202, inlinedAt: !4183)
!4223 = !DILocation(line: 136, column: 17, scope: !4190, inlinedAt: !4183)
!4224 = !DILocation(line: 136, column: 16, scope: !4190, inlinedAt: !4183)
!4225 = !DILocation(line: 137, column: 19, scope: !4190, inlinedAt: !4183)
!4226 = !DILocation(line: 136, column: 9, scope: !4190, inlinedAt: !4183)
!4227 = distinct !{!4227, !4228, !4229, !1142}
!4228 = !DILocation(line: 135, column: 7, scope: !4190, inlinedAt: !4183)
!4229 = !DILocation(line: 137, column: 59, scope: !4190, inlinedAt: !4183)
!4230 = !DILocation(line: 139, column: 14, scope: !4190, inlinedAt: !4183)
!4231 = !DILocation(line: 139, column: 19, scope: !4190, inlinedAt: !4183)
!4232 = !DILocation(line: 0, scope: !4204, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 139, column: 30, scope: !4190, inlinedAt: !4183)
!4234 = !DILocation(line: 139, column: 27, scope: !4190, inlinedAt: !4183)
!4235 = !DILocation(line: 142, column: 21, scope: !4236, inlinedAt: !4183)
!4236 = distinct !DILexicalBlock(scope: !4190, file: !4170, line: 140, column: 9)
!4237 = !DILocation(line: 142, column: 20, scope: !4236, inlinedAt: !4183)
!4238 = !DILocation(line: 145, column: 21, scope: !4236, inlinedAt: !4183)
!4239 = !DILocation(line: 145, column: 20, scope: !4236, inlinedAt: !4183)
!4240 = distinct !{!4240, !4241, !4242, !1142}
!4241 = !DILocation(line: 139, column: 7, scope: !4190, inlinedAt: !4183)
!4242 = !DILocation(line: 147, column: 9, scope: !4190, inlinedAt: !4183)
!4243 = !DILocation(line: 235, column: 3, scope: !4204, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 155, column: 23, scope: !4245, inlinedAt: !4183)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !4170, line: 155, column: 7)
!4246 = distinct !DILexicalBlock(scope: !4190, file: !4170, line: 155, column: 7)
!4247 = !DILocation(line: 0, scope: !4190, inlinedAt: !4183)
!4248 = !DILocation(line: 139, column: 22, scope: !4190, inlinedAt: !4183)
!4249 = !DILocation(line: 153, column: 18, scope: !4190, inlinedAt: !4183)
!4250 = !DILocation(line: 0, scope: !4204, inlinedAt: !4244)
!4251 = !DILocation(line: 155, column: 7, scope: !4246, inlinedAt: !4183)
!4252 = !DILocation(line: 155, scope: !4246, inlinedAt: !4183)
!4253 = !DILocation(line: 0, scope: !4204, inlinedAt: !4254)
!4254 = distinct !DILocation(line: 160, column: 23, scope: !4255, inlinedAt: !4183)
!4255 = distinct !DILexicalBlock(scope: !4256, file: !4170, line: 160, column: 7)
!4256 = distinct !DILexicalBlock(scope: !4190, file: !4170, line: 160, column: 7)
!4257 = !DILocation(line: 235, column: 3, scope: !4204, inlinedAt: !4254)
!4258 = !DILocation(line: 160, column: 7, scope: !4256, inlinedAt: !4183)
!4259 = !DILocation(line: 157, column: 19, scope: !4245, inlinedAt: !4183)
!4260 = !DILocation(line: 157, column: 18, scope: !4245, inlinedAt: !4183)
!4261 = !DILocation(line: 155, column: 41, scope: !4245, inlinedAt: !4183)
!4262 = !DILocation(line: 155, column: 34, scope: !4245, inlinedAt: !4183)
!4263 = distinct !{!4263, !4251, !4264, !1142}
!4264 = !DILocation(line: 158, column: 37, scope: !4246, inlinedAt: !4183)
!4265 = !DILocation(line: 162, column: 19, scope: !4255, inlinedAt: !4183)
!4266 = !DILocation(line: 162, column: 18, scope: !4255, inlinedAt: !4183)
!4267 = !DILocation(line: 160, column: 41, scope: !4255, inlinedAt: !4183)
!4268 = !DILocation(line: 160, column: 34, scope: !4255, inlinedAt: !4183)
!4269 = distinct !{!4269, !4258, !4270, !1142}
!4270 = !DILocation(line: 163, column: 37, scope: !4256, inlinedAt: !4183)
!4271 = !DILocation(line: 160, scope: !4256, inlinedAt: !4183)
!4272 = !DILocation(line: 165, column: 17, scope: !4273, inlinedAt: !4183)
!4273 = distinct !DILexicalBlock(scope: !4190, file: !4170, line: 165, column: 11)
!4274 = !DILocation(line: 165, column: 11, scope: !4190, inlinedAt: !4183)
!4275 = !DILocation(line: 166, column: 22, scope: !4273, inlinedAt: !4183)
!4276 = !DILocation(line: 166, column: 16, scope: !4273, inlinedAt: !4183)
!4277 = !DILocation(line: 166, column: 9, scope: !4273, inlinedAt: !4183)
!4278 = !DILocation(line: 168, column: 12, scope: !4279, inlinedAt: !4183)
!4279 = distinct !DILexicalBlock(scope: !4190, file: !4170, line: 168, column: 11)
!4280 = !DILocation(line: 173, column: 17, scope: !4281, inlinedAt: !4183)
!4281 = distinct !DILexicalBlock(scope: !4187, file: !4170, line: 173, column: 12)
!4282 = !DILocation(line: 173, column: 12, scope: !4187, inlinedAt: !4183)
!4283 = !DILocation(line: 194, column: 19, scope: !4284, inlinedAt: !4183)
!4284 = distinct !DILexicalBlock(scope: !4281, file: !4170, line: 193, column: 5)
!4285 = !DILocation(line: 194, column: 7, scope: !4284, inlinedAt: !4183)
!4286 = !DILocation(line: 176, column: 17, scope: !4287, inlinedAt: !4183)
!4287 = distinct !DILexicalBlock(scope: !4281, file: !4170, line: 174, column: 5)
!4288 = !DILocation(line: 176, column: 16, scope: !4287, inlinedAt: !4183)
!4289 = !DILocation(line: 177, column: 19, scope: !4287, inlinedAt: !4183)
!4290 = !DILocation(line: 176, column: 9, scope: !4287, inlinedAt: !4183)
!4291 = distinct !{!4291, !4292, !4293, !1142}
!4292 = !DILocation(line: 175, column: 7, scope: !4287, inlinedAt: !4183)
!4293 = !DILocation(line: 177, column: 59, scope: !4287, inlinedAt: !4183)
!4294 = !DILocation(line: 182, column: 22, scope: !4295, inlinedAt: !4183)
!4295 = distinct !DILexicalBlock(scope: !4287, file: !4170, line: 182, column: 11)
!4296 = !DILocation(line: 0, scope: !4204, inlinedAt: !4297)
!4297 = distinct !DILocation(line: 182, column: 11, scope: !4295, inlinedAt: !4183)
!4298 = !DILocation(line: 235, column: 3, scope: !4204, inlinedAt: !4297)
!4299 = !DILocation(line: 182, column: 11, scope: !4287, inlinedAt: !4183)
!4300 = !DILocation(line: 184, column: 19, scope: !4287, inlinedAt: !4183)
!4301 = !DILocation(line: 184, column: 7, scope: !4287, inlinedAt: !4183)
!4302 = !DILocation(line: 185, column: 17, scope: !4287, inlinedAt: !4183)
!4303 = !DILocation(line: 185, column: 16, scope: !4287, inlinedAt: !4183)
!4304 = distinct !{!4304, !4301, !4305, !1142}
!4305 = !DILocation(line: 185, column: 19, scope: !4287, inlinedAt: !4183)
!4306 = !DILocation(line: 190, column: 25, scope: !4287, inlinedAt: !4183)
!4307 = !DILocation(line: 0, scope: !4204, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 190, column: 14, scope: !4287, inlinedAt: !4183)
!4309 = !DILocation(line: 235, column: 3, scope: !4204, inlinedAt: !4308)
!4310 = !DILocation(line: 190, column: 14, scope: !4287, inlinedAt: !4183)
!4311 = !DILocation(line: 190, column: 7, scope: !4287, inlinedAt: !4183)
!4312 = !DILocation(line: 196, column: 19, scope: !4284, inlinedAt: !4183)
!4313 = !DILocation(line: 196, column: 7, scope: !4284, inlinedAt: !4183)
!4314 = !DILocation(line: 195, column: 17, scope: !4284, inlinedAt: !4183)
!4315 = !DILocation(line: 195, column: 16, scope: !4284, inlinedAt: !4183)
!4316 = distinct !{!4316, !4285, !4317, !1142}
!4317 = !DILocation(line: 195, column: 19, scope: !4284, inlinedAt: !4183)
!4318 = !DILocation(line: 199, column: 14, scope: !4284, inlinedAt: !4183)
!4319 = !DILocation(line: 199, column: 19, scope: !4284, inlinedAt: !4183)
!4320 = !DILocation(line: 0, scope: !4204, inlinedAt: !4321)
!4321 = distinct !DILocation(line: 199, column: 30, scope: !4284, inlinedAt: !4183)
!4322 = !DILocation(line: 199, column: 27, scope: !4284, inlinedAt: !4183)
!4323 = !DILocation(line: 197, column: 17, scope: !4284, inlinedAt: !4183)
!4324 = !DILocation(line: 197, column: 16, scope: !4284, inlinedAt: !4183)
!4325 = distinct !{!4325, !4313, !4326, !1142}
!4326 = !DILocation(line: 197, column: 19, scope: !4284, inlinedAt: !4183)
!4327 = !DILocation(line: 202, column: 21, scope: !4328, inlinedAt: !4183)
!4328 = distinct !DILexicalBlock(scope: !4284, file: !4170, line: 200, column: 9)
!4329 = !DILocation(line: 202, column: 20, scope: !4328, inlinedAt: !4183)
!4330 = !DILocation(line: 205, column: 21, scope: !4328, inlinedAt: !4183)
!4331 = !DILocation(line: 205, column: 20, scope: !4328, inlinedAt: !4183)
!4332 = distinct !{!4332, !4333, !4334, !1142}
!4333 = !DILocation(line: 199, column: 7, scope: !4284, inlinedAt: !4183)
!4334 = !DILocation(line: 207, column: 9, scope: !4284, inlinedAt: !4183)
!4335 = !DILocation(line: 235, column: 3, scope: !4204, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 215, column: 23, scope: !4337, inlinedAt: !4183)
!4337 = distinct !DILexicalBlock(scope: !4338, file: !4170, line: 215, column: 7)
!4338 = distinct !DILexicalBlock(scope: !4284, file: !4170, line: 215, column: 7)
!4339 = !DILocation(line: 199, column: 22, scope: !4284, inlinedAt: !4183)
!4340 = !DILocation(line: 213, column: 18, scope: !4284, inlinedAt: !4183)
!4341 = !DILocation(line: 0, scope: !4204, inlinedAt: !4336)
!4342 = !DILocation(line: 215, column: 7, scope: !4338, inlinedAt: !4183)
!4343 = !DILocation(line: 215, scope: !4338, inlinedAt: !4183)
!4344 = !DILocation(line: 0, scope: !4204, inlinedAt: !4345)
!4345 = distinct !DILocation(line: 220, column: 23, scope: !4346, inlinedAt: !4183)
!4346 = distinct !DILexicalBlock(scope: !4347, file: !4170, line: 220, column: 7)
!4347 = distinct !DILexicalBlock(scope: !4284, file: !4170, line: 220, column: 7)
!4348 = !DILocation(line: 235, column: 3, scope: !4204, inlinedAt: !4345)
!4349 = !DILocation(line: 220, column: 7, scope: !4347, inlinedAt: !4183)
!4350 = !DILocation(line: 217, column: 19, scope: !4337, inlinedAt: !4183)
!4351 = !DILocation(line: 217, column: 18, scope: !4337, inlinedAt: !4183)
!4352 = !DILocation(line: 215, column: 41, scope: !4337, inlinedAt: !4183)
!4353 = !DILocation(line: 215, column: 34, scope: !4337, inlinedAt: !4183)
!4354 = distinct !{!4354, !4342, !4355, !1142}
!4355 = !DILocation(line: 218, column: 37, scope: !4338, inlinedAt: !4183)
!4356 = !DILocation(line: 222, column: 19, scope: !4346, inlinedAt: !4183)
!4357 = !DILocation(line: 222, column: 18, scope: !4346, inlinedAt: !4183)
!4358 = !DILocation(line: 220, column: 41, scope: !4346, inlinedAt: !4183)
!4359 = !DILocation(line: 220, column: 34, scope: !4346, inlinedAt: !4183)
!4360 = distinct !{!4360, !4349, !4361, !1142}
!4361 = !DILocation(line: 223, column: 37, scope: !4347, inlinedAt: !4183)
!4362 = !DILocation(line: 220, scope: !4347, inlinedAt: !4183)
!4363 = !DILocation(line: 225, column: 17, scope: !4364, inlinedAt: !4183)
!4364 = distinct !DILexicalBlock(scope: !4284, file: !4170, line: 225, column: 11)
!4365 = !DILocation(line: 225, column: 11, scope: !4284, inlinedAt: !4183)
!4366 = !DILocation(line: 226, column: 22, scope: !4364, inlinedAt: !4183)
!4367 = !DILocation(line: 226, column: 16, scope: !4364, inlinedAt: !4183)
!4368 = !DILocation(line: 226, column: 9, scope: !4364, inlinedAt: !4183)
!4369 = !DILocation(line: 228, column: 12, scope: !4370, inlinedAt: !4183)
!4370 = distinct !DILexicalBlock(scope: !4284, file: !4170, line: 228, column: 11)
!4371 = !DILocation(line: 0, scope: !4284, inlinedAt: !4183)
!4372 = !DILocation(line: 0, scope: !4187, inlinedAt: !4183)
!4373 = !DILocation(line: 33, column: 3, scope: !4163)
!4374 = distinct !DISubprogram(name: "version_etc_arn", scope: !801, file: !801, line: 61, type: !4375, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4412)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{null, !4377, !265, !265, !265, !4411, !262}
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !4379)
!4379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !4380)
!4380 = !{!4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4379, file: !336, line: 51, baseType: !260, size: 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4379, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4379, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4379, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4379, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4379, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4379, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4379, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4379, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4379, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4379, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4379, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4379, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4379, file: !336, line: 70, baseType: !4395, size: 64, offset: 832)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4379, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4379, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4379, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4379, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4379, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4379, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4379, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4379, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4379, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4379, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4379, file: !336, line: 93, baseType: !4395, size: 64, offset: 1344)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4379, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4379, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4379, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4379, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!4412 = !{!4413, !4414, !4415, !4416, !4417, !4418}
!4413 = !DILocalVariable(name: "stream", arg: 1, scope: !4374, file: !801, line: 61, type: !4377)
!4414 = !DILocalVariable(name: "command_name", arg: 2, scope: !4374, file: !801, line: 62, type: !265)
!4415 = !DILocalVariable(name: "package", arg: 3, scope: !4374, file: !801, line: 62, type: !265)
!4416 = !DILocalVariable(name: "version", arg: 4, scope: !4374, file: !801, line: 63, type: !265)
!4417 = !DILocalVariable(name: "authors", arg: 5, scope: !4374, file: !801, line: 64, type: !4411)
!4418 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4374, file: !801, line: 64, type: !262)
!4419 = !DILocation(line: 0, scope: !4374)
!4420 = !DILocation(line: 66, column: 7, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4374, file: !801, line: 66, column: 7)
!4422 = !DILocation(line: 66, column: 7, scope: !4374)
!4423 = !DILocation(line: 67, column: 5, scope: !4421)
!4424 = !DILocation(line: 69, column: 5, scope: !4421)
!4425 = !DILocation(line: 83, column: 3, scope: !4374)
!4426 = !DILocation(line: 85, column: 3, scope: !4374)
!4427 = !DILocation(line: 88, column: 3, scope: !4374)
!4428 = !DILocation(line: 95, column: 3, scope: !4374)
!4429 = !DILocation(line: 97, column: 3, scope: !4374)
!4430 = !DILocation(line: 105, column: 7, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4374, file: !801, line: 98, column: 5)
!4432 = !DILocation(line: 106, column: 7, scope: !4431)
!4433 = !DILocation(line: 109, column: 7, scope: !4431)
!4434 = !DILocation(line: 110, column: 7, scope: !4431)
!4435 = !DILocation(line: 113, column: 7, scope: !4431)
!4436 = !DILocation(line: 115, column: 7, scope: !4431)
!4437 = !DILocation(line: 120, column: 7, scope: !4431)
!4438 = !DILocation(line: 122, column: 7, scope: !4431)
!4439 = !DILocation(line: 127, column: 7, scope: !4431)
!4440 = !DILocation(line: 129, column: 7, scope: !4431)
!4441 = !DILocation(line: 134, column: 7, scope: !4431)
!4442 = !DILocation(line: 137, column: 7, scope: !4431)
!4443 = !DILocation(line: 142, column: 7, scope: !4431)
!4444 = !DILocation(line: 145, column: 7, scope: !4431)
!4445 = !DILocation(line: 150, column: 7, scope: !4431)
!4446 = !DILocation(line: 154, column: 7, scope: !4431)
!4447 = !DILocation(line: 159, column: 7, scope: !4431)
!4448 = !DILocation(line: 163, column: 7, scope: !4431)
!4449 = !DILocation(line: 170, column: 7, scope: !4431)
!4450 = !DILocation(line: 174, column: 7, scope: !4431)
!4451 = !DILocation(line: 176, column: 1, scope: !4374)
!4452 = distinct !DISubprogram(name: "version_etc_ar", scope: !801, file: !801, line: 183, type: !4453, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4455)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{null, !4377, !265, !265, !265, !4411}
!4455 = !{!4456, !4457, !4458, !4459, !4460, !4461}
!4456 = !DILocalVariable(name: "stream", arg: 1, scope: !4452, file: !801, line: 183, type: !4377)
!4457 = !DILocalVariable(name: "command_name", arg: 2, scope: !4452, file: !801, line: 184, type: !265)
!4458 = !DILocalVariable(name: "package", arg: 3, scope: !4452, file: !801, line: 184, type: !265)
!4459 = !DILocalVariable(name: "version", arg: 4, scope: !4452, file: !801, line: 185, type: !265)
!4460 = !DILocalVariable(name: "authors", arg: 5, scope: !4452, file: !801, line: 185, type: !4411)
!4461 = !DILocalVariable(name: "n_authors", scope: !4452, file: !801, line: 187, type: !262)
!4462 = !DILocation(line: 0, scope: !4452)
!4463 = !DILocation(line: 189, column: 8, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4452, file: !801, line: 189, column: 3)
!4465 = !DILocation(line: 189, scope: !4464)
!4466 = !DILocation(line: 189, column: 23, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4464, file: !801, line: 189, column: 3)
!4468 = !DILocation(line: 189, column: 3, scope: !4464)
!4469 = !DILocation(line: 189, column: 52, scope: !4467)
!4470 = distinct !{!4470, !4468, !4471, !1142}
!4471 = !DILocation(line: 190, column: 5, scope: !4464)
!4472 = !DILocation(line: 191, column: 3, scope: !4452)
!4473 = !DILocation(line: 192, column: 1, scope: !4452)
!4474 = distinct !DISubprogram(name: "version_etc_va", scope: !801, file: !801, line: 199, type: !4475, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4484)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{null, !4377, !265, !265, !265, !4477}
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4479)
!4479 = !{!4480, !4481, !4482, !4483}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4478, file: !801, line: 192, baseType: !222, size: 32)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4478, file: !801, line: 192, baseType: !222, size: 32, offset: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4478, file: !801, line: 192, baseType: !259, size: 64, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4478, file: !801, line: 192, baseType: !259, size: 64, offset: 128)
!4484 = !{!4485, !4486, !4487, !4488, !4489, !4490, !4491}
!4485 = !DILocalVariable(name: "stream", arg: 1, scope: !4474, file: !801, line: 199, type: !4377)
!4486 = !DILocalVariable(name: "command_name", arg: 2, scope: !4474, file: !801, line: 200, type: !265)
!4487 = !DILocalVariable(name: "package", arg: 3, scope: !4474, file: !801, line: 200, type: !265)
!4488 = !DILocalVariable(name: "version", arg: 4, scope: !4474, file: !801, line: 201, type: !265)
!4489 = !DILocalVariable(name: "authors", arg: 5, scope: !4474, file: !801, line: 201, type: !4477)
!4490 = !DILocalVariable(name: "n_authors", scope: !4474, file: !801, line: 203, type: !262)
!4491 = !DILocalVariable(name: "authtab", scope: !4474, file: !801, line: 204, type: !4492)
!4492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 640, elements: !209)
!4493 = distinct !DIAssignID()
!4494 = !DILocation(line: 0, scope: !4474)
!4495 = !DILocation(line: 204, column: 3, scope: !4474)
!4496 = !DILocation(line: 208, column: 35, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4498, file: !801, line: 206, column: 3)
!4498 = distinct !DILexicalBlock(scope: !4474, file: !801, line: 206, column: 3)
!4499 = !DILocation(line: 208, column: 33, scope: !4497)
!4500 = !DILocation(line: 208, column: 67, scope: !4497)
!4501 = !DILocation(line: 206, column: 3, scope: !4498)
!4502 = !DILocation(line: 208, column: 14, scope: !4497)
!4503 = !DILocation(line: 0, scope: !4498)
!4504 = !DILocation(line: 211, column: 3, scope: !4474)
!4505 = !DILocation(line: 213, column: 1, scope: !4474)
!4506 = distinct !DISubprogram(name: "version_etc", scope: !801, file: !801, line: 230, type: !4507, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !4509)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{null, !4377, !265, !265, !265, null}
!4509 = !{!4510, !4511, !4512, !4513, !4514}
!4510 = !DILocalVariable(name: "stream", arg: 1, scope: !4506, file: !801, line: 230, type: !4377)
!4511 = !DILocalVariable(name: "command_name", arg: 2, scope: !4506, file: !801, line: 231, type: !265)
!4512 = !DILocalVariable(name: "package", arg: 3, scope: !4506, file: !801, line: 231, type: !265)
!4513 = !DILocalVariable(name: "version", arg: 4, scope: !4506, file: !801, line: 232, type: !265)
!4514 = !DILocalVariable(name: "authors", scope: !4506, file: !801, line: 234, type: !4515)
!4515 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1090, line: 52, baseType: !4516)
!4516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2661, line: 12, baseType: !4517)
!4517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !801, baseType: !4518)
!4518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4478, size: 192, elements: !204)
!4519 = distinct !DIAssignID()
!4520 = !DILocation(line: 0, scope: !4506)
!4521 = !DILocation(line: 234, column: 3, scope: !4506)
!4522 = !DILocation(line: 235, column: 3, scope: !4506)
!4523 = !DILocation(line: 236, column: 3, scope: !4506)
!4524 = !DILocation(line: 237, column: 3, scope: !4506)
!4525 = !DILocation(line: 238, column: 1, scope: !4506)
!4526 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !801, file: !801, line: 241, type: !642, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913)
!4527 = !DILocation(line: 243, column: 3, scope: !4526)
!4528 = !DILocation(line: 248, column: 3, scope: !4526)
!4529 = !DILocation(line: 254, column: 3, scope: !4526)
!4530 = !DILocation(line: 259, column: 3, scope: !4526)
!4531 = !DILocation(line: 261, column: 1, scope: !4526)
!4532 = distinct !DISubprogram(name: "xnrealloc", scope: !4533, file: !4533, line: 147, type: !4534, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4536)
!4533 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!259, !259, !262, !262}
!4536 = !{!4537, !4538, !4539}
!4537 = !DILocalVariable(name: "p", arg: 1, scope: !4532, file: !4533, line: 147, type: !259)
!4538 = !DILocalVariable(name: "n", arg: 2, scope: !4532, file: !4533, line: 147, type: !262)
!4539 = !DILocalVariable(name: "s", arg: 3, scope: !4532, file: !4533, line: 147, type: !262)
!4540 = !DILocation(line: 0, scope: !4532)
!4541 = !DILocalVariable(name: "p", arg: 1, scope: !4542, file: !921, line: 83, type: !259)
!4542 = distinct !DISubprogram(name: "xreallocarray", scope: !921, file: !921, line: 83, type: !4534, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4543)
!4543 = !{!4541, !4544, !4545}
!4544 = !DILocalVariable(name: "n", arg: 2, scope: !4542, file: !921, line: 83, type: !262)
!4545 = !DILocalVariable(name: "s", arg: 3, scope: !4542, file: !921, line: 83, type: !262)
!4546 = !DILocation(line: 0, scope: !4542, inlinedAt: !4547)
!4547 = distinct !DILocation(line: 149, column: 10, scope: !4532)
!4548 = !DILocation(line: 85, column: 25, scope: !4542, inlinedAt: !4547)
!4549 = !DILocalVariable(name: "p", arg: 1, scope: !4550, file: !921, line: 37, type: !259)
!4550 = distinct !DISubprogram(name: "check_nonnull", scope: !921, file: !921, line: 37, type: !4551, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4553)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!259, !259}
!4553 = !{!4549}
!4554 = !DILocation(line: 0, scope: !4550, inlinedAt: !4555)
!4555 = distinct !DILocation(line: 85, column: 10, scope: !4542, inlinedAt: !4547)
!4556 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4555)
!4557 = distinct !DILexicalBlock(scope: !4550, file: !921, line: 39, column: 7)
!4558 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4555)
!4559 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4555)
!4560 = !DILocation(line: 149, column: 3, scope: !4532)
!4561 = !DILocation(line: 0, scope: !4542)
!4562 = !DILocation(line: 85, column: 25, scope: !4542)
!4563 = !DILocation(line: 0, scope: !4550, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 85, column: 10, scope: !4542)
!4565 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4564)
!4566 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4564)
!4567 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4564)
!4568 = !DILocation(line: 85, column: 3, scope: !4542)
!4569 = distinct !DISubprogram(name: "xmalloc", scope: !921, file: !921, line: 47, type: !4570, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4572)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!259, !262}
!4572 = !{!4573}
!4573 = !DILocalVariable(name: "s", arg: 1, scope: !4569, file: !921, line: 47, type: !262)
!4574 = !DILocation(line: 0, scope: !4569)
!4575 = !DILocation(line: 49, column: 25, scope: !4569)
!4576 = !DILocation(line: 0, scope: !4550, inlinedAt: !4577)
!4577 = distinct !DILocation(line: 49, column: 10, scope: !4569)
!4578 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4577)
!4579 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4577)
!4580 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4577)
!4581 = !DILocation(line: 49, column: 3, scope: !4569)
!4582 = !DISubprogram(name: "malloc", scope: !1204, file: !1204, line: 540, type: !4570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4583 = distinct !DISubprogram(name: "ximalloc", scope: !921, file: !921, line: 53, type: !4584, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4586)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!259, !940}
!4586 = !{!4587}
!4587 = !DILocalVariable(name: "s", arg: 1, scope: !4583, file: !921, line: 53, type: !940)
!4588 = !DILocation(line: 0, scope: !4583)
!4589 = !DILocalVariable(name: "s", arg: 1, scope: !4590, file: !4591, line: 55, type: !940)
!4590 = distinct !DISubprogram(name: "imalloc", scope: !4591, file: !4591, line: 55, type: !4584, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4592)
!4591 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4592 = !{!4589}
!4593 = !DILocation(line: 0, scope: !4590, inlinedAt: !4594)
!4594 = distinct !DILocation(line: 55, column: 25, scope: !4583)
!4595 = !DILocation(line: 57, column: 26, scope: !4590, inlinedAt: !4594)
!4596 = !DILocation(line: 0, scope: !4550, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 55, column: 10, scope: !4583)
!4598 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4597)
!4599 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4597)
!4600 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4597)
!4601 = !DILocation(line: 55, column: 3, scope: !4583)
!4602 = distinct !DISubprogram(name: "xcharalloc", scope: !921, file: !921, line: 59, type: !4603, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4605)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!258, !262}
!4605 = !{!4606}
!4606 = !DILocalVariable(name: "n", arg: 1, scope: !4602, file: !921, line: 59, type: !262)
!4607 = !DILocation(line: 0, scope: !4602)
!4608 = !DILocation(line: 0, scope: !4569, inlinedAt: !4609)
!4609 = distinct !DILocation(line: 61, column: 10, scope: !4602)
!4610 = !DILocation(line: 49, column: 25, scope: !4569, inlinedAt: !4609)
!4611 = !DILocation(line: 0, scope: !4550, inlinedAt: !4612)
!4612 = distinct !DILocation(line: 49, column: 10, scope: !4569, inlinedAt: !4609)
!4613 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4612)
!4614 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4612)
!4615 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4612)
!4616 = !DILocation(line: 61, column: 3, scope: !4602)
!4617 = distinct !DISubprogram(name: "xrealloc", scope: !921, file: !921, line: 68, type: !4618, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4620)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!259, !259, !262}
!4620 = !{!4621, !4622}
!4621 = !DILocalVariable(name: "p", arg: 1, scope: !4617, file: !921, line: 68, type: !259)
!4622 = !DILocalVariable(name: "s", arg: 2, scope: !4617, file: !921, line: 68, type: !262)
!4623 = !DILocation(line: 0, scope: !4617)
!4624 = !DILocalVariable(name: "ptr", arg: 1, scope: !4625, file: !4626, line: 2057, type: !259)
!4625 = distinct !DISubprogram(name: "rpl_realloc", scope: !4626, file: !4626, line: 2057, type: !4618, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4627)
!4626 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4627 = !{!4624, !4628}
!4628 = !DILocalVariable(name: "size", arg: 2, scope: !4625, file: !4626, line: 2057, type: !262)
!4629 = !DILocation(line: 0, scope: !4625, inlinedAt: !4630)
!4630 = distinct !DILocation(line: 70, column: 25, scope: !4617)
!4631 = !DILocation(line: 2059, column: 24, scope: !4625, inlinedAt: !4630)
!4632 = !DILocation(line: 2059, column: 10, scope: !4625, inlinedAt: !4630)
!4633 = !DILocation(line: 0, scope: !4550, inlinedAt: !4634)
!4634 = distinct !DILocation(line: 70, column: 10, scope: !4617)
!4635 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4634)
!4636 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4634)
!4637 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4634)
!4638 = !DILocation(line: 70, column: 3, scope: !4617)
!4639 = !DISubprogram(name: "realloc", scope: !1204, file: !1204, line: 551, type: !4618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4640 = distinct !DISubprogram(name: "xirealloc", scope: !921, file: !921, line: 74, type: !4641, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4643)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!259, !259, !940}
!4643 = !{!4644, !4645}
!4644 = !DILocalVariable(name: "p", arg: 1, scope: !4640, file: !921, line: 74, type: !259)
!4645 = !DILocalVariable(name: "s", arg: 2, scope: !4640, file: !921, line: 74, type: !940)
!4646 = !DILocation(line: 0, scope: !4640)
!4647 = !DILocalVariable(name: "p", arg: 1, scope: !4648, file: !4591, line: 66, type: !259)
!4648 = distinct !DISubprogram(name: "irealloc", scope: !4591, file: !4591, line: 66, type: !4641, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4649)
!4649 = !{!4647, !4650}
!4650 = !DILocalVariable(name: "s", arg: 2, scope: !4648, file: !4591, line: 66, type: !940)
!4651 = !DILocation(line: 0, scope: !4648, inlinedAt: !4652)
!4652 = distinct !DILocation(line: 76, column: 25, scope: !4640)
!4653 = !DILocation(line: 0, scope: !4625, inlinedAt: !4654)
!4654 = distinct !DILocation(line: 68, column: 26, scope: !4648, inlinedAt: !4652)
!4655 = !DILocation(line: 2059, column: 24, scope: !4625, inlinedAt: !4654)
!4656 = !DILocation(line: 2059, column: 10, scope: !4625, inlinedAt: !4654)
!4657 = !DILocation(line: 0, scope: !4550, inlinedAt: !4658)
!4658 = distinct !DILocation(line: 76, column: 10, scope: !4640)
!4659 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4658)
!4660 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4658)
!4661 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4658)
!4662 = !DILocation(line: 76, column: 3, scope: !4640)
!4663 = distinct !DISubprogram(name: "xireallocarray", scope: !921, file: !921, line: 89, type: !4664, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4666)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!259, !259, !940, !940}
!4666 = !{!4667, !4668, !4669}
!4667 = !DILocalVariable(name: "p", arg: 1, scope: !4663, file: !921, line: 89, type: !259)
!4668 = !DILocalVariable(name: "n", arg: 2, scope: !4663, file: !921, line: 89, type: !940)
!4669 = !DILocalVariable(name: "s", arg: 3, scope: !4663, file: !921, line: 89, type: !940)
!4670 = !DILocation(line: 0, scope: !4663)
!4671 = !DILocalVariable(name: "p", arg: 1, scope: !4672, file: !4591, line: 98, type: !259)
!4672 = distinct !DISubprogram(name: "ireallocarray", scope: !4591, file: !4591, line: 98, type: !4664, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4673)
!4673 = !{!4671, !4674, !4675}
!4674 = !DILocalVariable(name: "n", arg: 2, scope: !4672, file: !4591, line: 98, type: !940)
!4675 = !DILocalVariable(name: "s", arg: 3, scope: !4672, file: !4591, line: 98, type: !940)
!4676 = !DILocation(line: 0, scope: !4672, inlinedAt: !4677)
!4677 = distinct !DILocation(line: 91, column: 25, scope: !4663)
!4678 = !DILocation(line: 101, column: 13, scope: !4672, inlinedAt: !4677)
!4679 = !DILocation(line: 0, scope: !4550, inlinedAt: !4680)
!4680 = distinct !DILocation(line: 91, column: 10, scope: !4663)
!4681 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4680)
!4682 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4680)
!4683 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4680)
!4684 = !DILocation(line: 91, column: 3, scope: !4663)
!4685 = distinct !DISubprogram(name: "xnmalloc", scope: !921, file: !921, line: 98, type: !4686, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4688)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!259, !262, !262}
!4688 = !{!4689, !4690}
!4689 = !DILocalVariable(name: "n", arg: 1, scope: !4685, file: !921, line: 98, type: !262)
!4690 = !DILocalVariable(name: "s", arg: 2, scope: !4685, file: !921, line: 98, type: !262)
!4691 = !DILocation(line: 0, scope: !4685)
!4692 = !DILocation(line: 0, scope: !4542, inlinedAt: !4693)
!4693 = distinct !DILocation(line: 100, column: 10, scope: !4685)
!4694 = !DILocation(line: 85, column: 25, scope: !4542, inlinedAt: !4693)
!4695 = !DILocation(line: 0, scope: !4550, inlinedAt: !4696)
!4696 = distinct !DILocation(line: 85, column: 10, scope: !4542, inlinedAt: !4693)
!4697 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4696)
!4698 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4696)
!4699 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4696)
!4700 = !DILocation(line: 100, column: 3, scope: !4685)
!4701 = distinct !DISubprogram(name: "xinmalloc", scope: !921, file: !921, line: 104, type: !4702, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4704)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!259, !940, !940}
!4704 = !{!4705, !4706}
!4705 = !DILocalVariable(name: "n", arg: 1, scope: !4701, file: !921, line: 104, type: !940)
!4706 = !DILocalVariable(name: "s", arg: 2, scope: !4701, file: !921, line: 104, type: !940)
!4707 = !DILocation(line: 0, scope: !4701)
!4708 = !DILocation(line: 0, scope: !4663, inlinedAt: !4709)
!4709 = distinct !DILocation(line: 106, column: 10, scope: !4701)
!4710 = !DILocation(line: 0, scope: !4672, inlinedAt: !4711)
!4711 = distinct !DILocation(line: 91, column: 25, scope: !4663, inlinedAt: !4709)
!4712 = !DILocation(line: 101, column: 13, scope: !4672, inlinedAt: !4711)
!4713 = !DILocation(line: 0, scope: !4550, inlinedAt: !4714)
!4714 = distinct !DILocation(line: 91, column: 10, scope: !4663, inlinedAt: !4709)
!4715 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4714)
!4716 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4714)
!4717 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4714)
!4718 = !DILocation(line: 106, column: 3, scope: !4701)
!4719 = distinct !DISubprogram(name: "x2realloc", scope: !921, file: !921, line: 116, type: !4720, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4722)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!259, !259, !927}
!4722 = !{!4723, !4724}
!4723 = !DILocalVariable(name: "p", arg: 1, scope: !4719, file: !921, line: 116, type: !259)
!4724 = !DILocalVariable(name: "ps", arg: 2, scope: !4719, file: !921, line: 116, type: !927)
!4725 = !DILocation(line: 0, scope: !4719)
!4726 = !DILocation(line: 0, scope: !924, inlinedAt: !4727)
!4727 = distinct !DILocation(line: 118, column: 10, scope: !4719)
!4728 = !DILocation(line: 178, column: 14, scope: !924, inlinedAt: !4727)
!4729 = !DILocation(line: 180, column: 9, scope: !4730, inlinedAt: !4727)
!4730 = distinct !DILexicalBlock(scope: !924, file: !921, line: 180, column: 7)
!4731 = !DILocation(line: 180, column: 7, scope: !924, inlinedAt: !4727)
!4732 = !DILocation(line: 182, column: 13, scope: !4733, inlinedAt: !4727)
!4733 = distinct !DILexicalBlock(scope: !4734, file: !921, line: 182, column: 11)
!4734 = distinct !DILexicalBlock(scope: !4730, file: !921, line: 181, column: 5)
!4735 = !DILocation(line: 182, column: 11, scope: !4734, inlinedAt: !4727)
!4736 = !DILocation(line: 197, column: 11, scope: !4737, inlinedAt: !4727)
!4737 = distinct !DILexicalBlock(scope: !4738, file: !921, line: 197, column: 11)
!4738 = distinct !DILexicalBlock(scope: !4730, file: !921, line: 195, column: 5)
!4739 = !DILocation(line: 197, column: 11, scope: !4738, inlinedAt: !4727)
!4740 = !DILocation(line: 198, column: 9, scope: !4737, inlinedAt: !4727)
!4741 = !DILocation(line: 0, scope: !4542, inlinedAt: !4742)
!4742 = distinct !DILocation(line: 201, column: 7, scope: !924, inlinedAt: !4727)
!4743 = !DILocation(line: 85, column: 25, scope: !4542, inlinedAt: !4742)
!4744 = !DILocation(line: 0, scope: !4550, inlinedAt: !4745)
!4745 = distinct !DILocation(line: 85, column: 10, scope: !4542, inlinedAt: !4742)
!4746 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4745)
!4747 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4745)
!4748 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4745)
!4749 = !DILocation(line: 202, column: 7, scope: !924, inlinedAt: !4727)
!4750 = !DILocation(line: 118, column: 3, scope: !4719)
!4751 = !DILocation(line: 0, scope: !924)
!4752 = !DILocation(line: 178, column: 14, scope: !924)
!4753 = !DILocation(line: 180, column: 9, scope: !4730)
!4754 = !DILocation(line: 180, column: 7, scope: !924)
!4755 = !DILocation(line: 182, column: 13, scope: !4733)
!4756 = !DILocation(line: 182, column: 11, scope: !4734)
!4757 = !DILocation(line: 190, column: 30, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4733, file: !921, line: 183, column: 9)
!4759 = !DILocation(line: 191, column: 16, scope: !4758)
!4760 = !DILocation(line: 191, column: 13, scope: !4758)
!4761 = !DILocation(line: 192, column: 9, scope: !4758)
!4762 = !DILocation(line: 197, column: 11, scope: !4737)
!4763 = !DILocation(line: 197, column: 11, scope: !4738)
!4764 = !DILocation(line: 198, column: 9, scope: !4737)
!4765 = !DILocation(line: 0, scope: !4542, inlinedAt: !4766)
!4766 = distinct !DILocation(line: 201, column: 7, scope: !924)
!4767 = !DILocation(line: 85, column: 25, scope: !4542, inlinedAt: !4766)
!4768 = !DILocation(line: 0, scope: !4550, inlinedAt: !4769)
!4769 = distinct !DILocation(line: 85, column: 10, scope: !4542, inlinedAt: !4766)
!4770 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4769)
!4771 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4769)
!4772 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4769)
!4773 = !DILocation(line: 202, column: 7, scope: !924)
!4774 = !DILocation(line: 203, column: 3, scope: !924)
!4775 = !DILocation(line: 0, scope: !936)
!4776 = !DILocation(line: 230, column: 14, scope: !936)
!4777 = !DILocation(line: 238, column: 7, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !936, file: !921, line: 238, column: 7)
!4779 = !DILocation(line: 238, column: 7, scope: !936)
!4780 = !DILocation(line: 240, column: 9, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !936, file: !921, line: 240, column: 7)
!4782 = !DILocation(line: 240, column: 18, scope: !4781)
!4783 = !DILocation(line: 253, column: 8, scope: !936)
!4784 = !DILocation(line: 256, column: 7, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !936, file: !921, line: 256, column: 7)
!4786 = !DILocation(line: 256, column: 7, scope: !936)
!4787 = !DILocation(line: 258, column: 27, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4785, file: !921, line: 257, column: 5)
!4789 = !DILocation(line: 259, column: 50, scope: !4788)
!4790 = !DILocation(line: 259, column: 32, scope: !4788)
!4791 = !DILocation(line: 260, column: 5, scope: !4788)
!4792 = !DILocation(line: 262, column: 9, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !936, file: !921, line: 262, column: 7)
!4794 = !DILocation(line: 262, column: 7, scope: !936)
!4795 = !DILocation(line: 263, column: 9, scope: !4793)
!4796 = !DILocation(line: 263, column: 5, scope: !4793)
!4797 = !DILocation(line: 264, column: 9, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !936, file: !921, line: 264, column: 7)
!4799 = !DILocation(line: 264, column: 14, scope: !4798)
!4800 = !DILocation(line: 265, column: 7, scope: !4798)
!4801 = !DILocation(line: 265, column: 11, scope: !4798)
!4802 = !DILocation(line: 266, column: 11, scope: !4798)
!4803 = !DILocation(line: 267, column: 14, scope: !4798)
!4804 = !DILocation(line: 264, column: 7, scope: !936)
!4805 = !DILocation(line: 268, column: 5, scope: !4798)
!4806 = !DILocation(line: 0, scope: !4617, inlinedAt: !4807)
!4807 = distinct !DILocation(line: 269, column: 8, scope: !936)
!4808 = !DILocation(line: 0, scope: !4625, inlinedAt: !4809)
!4809 = distinct !DILocation(line: 70, column: 25, scope: !4617, inlinedAt: !4807)
!4810 = !DILocation(line: 2059, column: 24, scope: !4625, inlinedAt: !4809)
!4811 = !DILocation(line: 2059, column: 10, scope: !4625, inlinedAt: !4809)
!4812 = !DILocation(line: 0, scope: !4550, inlinedAt: !4813)
!4813 = distinct !DILocation(line: 70, column: 10, scope: !4617, inlinedAt: !4807)
!4814 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4813)
!4815 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4813)
!4816 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4813)
!4817 = !DILocation(line: 270, column: 7, scope: !936)
!4818 = !DILocation(line: 271, column: 3, scope: !936)
!4819 = distinct !DISubprogram(name: "xzalloc", scope: !921, file: !921, line: 279, type: !4570, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4820)
!4820 = !{!4821}
!4821 = !DILocalVariable(name: "s", arg: 1, scope: !4819, file: !921, line: 279, type: !262)
!4822 = !DILocation(line: 0, scope: !4819)
!4823 = !DILocalVariable(name: "n", arg: 1, scope: !4824, file: !921, line: 294, type: !262)
!4824 = distinct !DISubprogram(name: "xcalloc", scope: !921, file: !921, line: 294, type: !4686, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4825)
!4825 = !{!4823, !4826}
!4826 = !DILocalVariable(name: "s", arg: 2, scope: !4824, file: !921, line: 294, type: !262)
!4827 = !DILocation(line: 0, scope: !4824, inlinedAt: !4828)
!4828 = distinct !DILocation(line: 281, column: 10, scope: !4819)
!4829 = !DILocation(line: 296, column: 25, scope: !4824, inlinedAt: !4828)
!4830 = !DILocation(line: 0, scope: !4550, inlinedAt: !4831)
!4831 = distinct !DILocation(line: 296, column: 10, scope: !4824, inlinedAt: !4828)
!4832 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4831)
!4833 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4831)
!4834 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4831)
!4835 = !DILocation(line: 281, column: 3, scope: !4819)
!4836 = !DISubprogram(name: "calloc", scope: !1204, file: !1204, line: 543, type: !4686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4837 = !DILocation(line: 0, scope: !4824)
!4838 = !DILocation(line: 296, column: 25, scope: !4824)
!4839 = !DILocation(line: 0, scope: !4550, inlinedAt: !4840)
!4840 = distinct !DILocation(line: 296, column: 10, scope: !4824)
!4841 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4840)
!4842 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4840)
!4843 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4840)
!4844 = !DILocation(line: 296, column: 3, scope: !4824)
!4845 = distinct !DISubprogram(name: "xizalloc", scope: !921, file: !921, line: 285, type: !4584, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4846)
!4846 = !{!4847}
!4847 = !DILocalVariable(name: "s", arg: 1, scope: !4845, file: !921, line: 285, type: !940)
!4848 = !DILocation(line: 0, scope: !4845)
!4849 = !DILocalVariable(name: "n", arg: 1, scope: !4850, file: !921, line: 300, type: !940)
!4850 = distinct !DISubprogram(name: "xicalloc", scope: !921, file: !921, line: 300, type: !4702, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4851)
!4851 = !{!4849, !4852}
!4852 = !DILocalVariable(name: "s", arg: 2, scope: !4850, file: !921, line: 300, type: !940)
!4853 = !DILocation(line: 0, scope: !4850, inlinedAt: !4854)
!4854 = distinct !DILocation(line: 287, column: 10, scope: !4845)
!4855 = !DILocalVariable(name: "n", arg: 1, scope: !4856, file: !4591, line: 77, type: !940)
!4856 = distinct !DISubprogram(name: "icalloc", scope: !4591, file: !4591, line: 77, type: !4702, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4857)
!4857 = !{!4855, !4858}
!4858 = !DILocalVariable(name: "s", arg: 2, scope: !4856, file: !4591, line: 77, type: !940)
!4859 = !DILocation(line: 0, scope: !4856, inlinedAt: !4860)
!4860 = distinct !DILocation(line: 302, column: 25, scope: !4850, inlinedAt: !4854)
!4861 = !DILocation(line: 91, column: 10, scope: !4856, inlinedAt: !4860)
!4862 = !DILocation(line: 0, scope: !4550, inlinedAt: !4863)
!4863 = distinct !DILocation(line: 302, column: 10, scope: !4850, inlinedAt: !4854)
!4864 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4863)
!4865 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4863)
!4866 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4863)
!4867 = !DILocation(line: 287, column: 3, scope: !4845)
!4868 = !DILocation(line: 0, scope: !4850)
!4869 = !DILocation(line: 0, scope: !4856, inlinedAt: !4870)
!4870 = distinct !DILocation(line: 302, column: 25, scope: !4850)
!4871 = !DILocation(line: 91, column: 10, scope: !4856, inlinedAt: !4870)
!4872 = !DILocation(line: 0, scope: !4550, inlinedAt: !4873)
!4873 = distinct !DILocation(line: 302, column: 10, scope: !4850)
!4874 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4873)
!4875 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4873)
!4876 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4873)
!4877 = !DILocation(line: 302, column: 3, scope: !4850)
!4878 = distinct !DISubprogram(name: "xmemdup", scope: !921, file: !921, line: 310, type: !4879, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4881)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!259, !1228, !262}
!4881 = !{!4882, !4883}
!4882 = !DILocalVariable(name: "p", arg: 1, scope: !4878, file: !921, line: 310, type: !1228)
!4883 = !DILocalVariable(name: "s", arg: 2, scope: !4878, file: !921, line: 310, type: !262)
!4884 = !DILocation(line: 0, scope: !4878)
!4885 = !DILocation(line: 0, scope: !4569, inlinedAt: !4886)
!4886 = distinct !DILocation(line: 312, column: 18, scope: !4878)
!4887 = !DILocation(line: 49, column: 25, scope: !4569, inlinedAt: !4886)
!4888 = !DILocation(line: 0, scope: !4550, inlinedAt: !4889)
!4889 = distinct !DILocation(line: 49, column: 10, scope: !4569, inlinedAt: !4886)
!4890 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4889)
!4891 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4889)
!4892 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4889)
!4893 = !DILocalVariable(name: "__dest", arg: 1, scope: !4894, file: !2802, line: 26, type: !4897)
!4894 = distinct !DISubprogram(name: "memcpy", scope: !2802, file: !2802, line: 26, type: !4895, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4898)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{!259, !4897, !1227, !262}
!4897 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !259)
!4898 = !{!4893, !4899, !4900}
!4899 = !DILocalVariable(name: "__src", arg: 2, scope: !4894, file: !2802, line: 26, type: !1227)
!4900 = !DILocalVariable(name: "__len", arg: 3, scope: !4894, file: !2802, line: 26, type: !262)
!4901 = !DILocation(line: 0, scope: !4894, inlinedAt: !4902)
!4902 = distinct !DILocation(line: 312, column: 10, scope: !4878)
!4903 = !DILocation(line: 29, column: 10, scope: !4894, inlinedAt: !4902)
!4904 = !DILocation(line: 312, column: 3, scope: !4878)
!4905 = distinct !DISubprogram(name: "ximemdup", scope: !921, file: !921, line: 316, type: !4906, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4908)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!259, !1228, !940}
!4908 = !{!4909, !4910}
!4909 = !DILocalVariable(name: "p", arg: 1, scope: !4905, file: !921, line: 316, type: !1228)
!4910 = !DILocalVariable(name: "s", arg: 2, scope: !4905, file: !921, line: 316, type: !940)
!4911 = !DILocation(line: 0, scope: !4905)
!4912 = !DILocation(line: 0, scope: !4583, inlinedAt: !4913)
!4913 = distinct !DILocation(line: 318, column: 18, scope: !4905)
!4914 = !DILocation(line: 0, scope: !4590, inlinedAt: !4915)
!4915 = distinct !DILocation(line: 55, column: 25, scope: !4583, inlinedAt: !4913)
!4916 = !DILocation(line: 57, column: 26, scope: !4590, inlinedAt: !4915)
!4917 = !DILocation(line: 0, scope: !4550, inlinedAt: !4918)
!4918 = distinct !DILocation(line: 55, column: 10, scope: !4583, inlinedAt: !4913)
!4919 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4918)
!4920 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4918)
!4921 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4918)
!4922 = !DILocation(line: 0, scope: !4894, inlinedAt: !4923)
!4923 = distinct !DILocation(line: 318, column: 10, scope: !4905)
!4924 = !DILocation(line: 29, column: 10, scope: !4894, inlinedAt: !4923)
!4925 = !DILocation(line: 318, column: 3, scope: !4905)
!4926 = distinct !DISubprogram(name: "ximemdup0", scope: !921, file: !921, line: 325, type: !4927, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4929)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!258, !1228, !940}
!4929 = !{!4930, !4931, !4932}
!4930 = !DILocalVariable(name: "p", arg: 1, scope: !4926, file: !921, line: 325, type: !1228)
!4931 = !DILocalVariable(name: "s", arg: 2, scope: !4926, file: !921, line: 325, type: !940)
!4932 = !DILocalVariable(name: "result", scope: !4926, file: !921, line: 327, type: !258)
!4933 = !DILocation(line: 0, scope: !4926)
!4934 = !DILocation(line: 327, column: 30, scope: !4926)
!4935 = !DILocation(line: 0, scope: !4583, inlinedAt: !4936)
!4936 = distinct !DILocation(line: 327, column: 18, scope: !4926)
!4937 = !DILocation(line: 0, scope: !4590, inlinedAt: !4938)
!4938 = distinct !DILocation(line: 55, column: 25, scope: !4583, inlinedAt: !4936)
!4939 = !DILocation(line: 57, column: 26, scope: !4590, inlinedAt: !4938)
!4940 = !DILocation(line: 0, scope: !4550, inlinedAt: !4941)
!4941 = distinct !DILocation(line: 55, column: 10, scope: !4583, inlinedAt: !4936)
!4942 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4941)
!4943 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4941)
!4944 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4941)
!4945 = !DILocation(line: 328, column: 3, scope: !4926)
!4946 = !DILocation(line: 328, column: 13, scope: !4926)
!4947 = !DILocation(line: 0, scope: !4894, inlinedAt: !4948)
!4948 = distinct !DILocation(line: 329, column: 10, scope: !4926)
!4949 = !DILocation(line: 29, column: 10, scope: !4894, inlinedAt: !4948)
!4950 = !DILocation(line: 329, column: 3, scope: !4926)
!4951 = distinct !DISubprogram(name: "xstrdup", scope: !921, file: !921, line: 335, type: !1206, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !4952)
!4952 = !{!4953}
!4953 = !DILocalVariable(name: "string", arg: 1, scope: !4951, file: !921, line: 335, type: !265)
!4954 = !DILocation(line: 0, scope: !4951)
!4955 = !DILocation(line: 337, column: 27, scope: !4951)
!4956 = !DILocation(line: 337, column: 43, scope: !4951)
!4957 = !DILocation(line: 0, scope: !4878, inlinedAt: !4958)
!4958 = distinct !DILocation(line: 337, column: 10, scope: !4951)
!4959 = !DILocation(line: 0, scope: !4569, inlinedAt: !4960)
!4960 = distinct !DILocation(line: 312, column: 18, scope: !4878, inlinedAt: !4958)
!4961 = !DILocation(line: 49, column: 25, scope: !4569, inlinedAt: !4960)
!4962 = !DILocation(line: 0, scope: !4550, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 49, column: 10, scope: !4569, inlinedAt: !4960)
!4964 = !DILocation(line: 39, column: 8, scope: !4557, inlinedAt: !4963)
!4965 = !DILocation(line: 39, column: 7, scope: !4550, inlinedAt: !4963)
!4966 = !DILocation(line: 40, column: 5, scope: !4557, inlinedAt: !4963)
!4967 = !DILocation(line: 0, scope: !4894, inlinedAt: !4968)
!4968 = distinct !DILocation(line: 312, column: 10, scope: !4878, inlinedAt: !4958)
!4969 = !DILocation(line: 29, column: 10, scope: !4894, inlinedAt: !4968)
!4970 = !DILocation(line: 337, column: 3, scope: !4951)
!4971 = distinct !DISubprogram(name: "xalloc_die", scope: !877, file: !877, line: 32, type: !642, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !4972)
!4972 = !{!4973}
!4973 = !DILocalVariable(name: "__errstatus", scope: !4974, file: !877, line: 34, type: !4975)
!4974 = distinct !DILexicalBlock(scope: !4971, file: !877, line: 34, column: 3)
!4975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!4976 = !DILocation(line: 34, column: 3, scope: !4974)
!4977 = !DILocation(line: 0, scope: !4974)
!4978 = !DILocation(line: 40, column: 3, scope: !4971)
!4979 = distinct !DISubprogram(name: "close_stream", scope: !958, file: !958, line: 55, type: !4980, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !5016)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!260, !4982}
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !4984)
!4984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !4985)
!4985 = !{!4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4984, file: !336, line: 51, baseType: !260, size: 32)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4984, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4984, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4984, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4984, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4984, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4984, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4984, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4984, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4984, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4984, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4984, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4984, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4984, file: !336, line: 70, baseType: !5000, size: 64, offset: 832)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4984, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4984, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4984, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4984, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4984, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4984, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4984, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4984, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4984, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4984, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4984, file: !336, line: 93, baseType: !5000, size: 64, offset: 1344)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4984, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4984, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4984, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4984, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!5016 = !{!5017, !5018, !5020, !5021}
!5017 = !DILocalVariable(name: "stream", arg: 1, scope: !4979, file: !958, line: 55, type: !4982)
!5018 = !DILocalVariable(name: "some_pending", scope: !4979, file: !958, line: 57, type: !5019)
!5019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!5020 = !DILocalVariable(name: "prev_fail", scope: !4979, file: !958, line: 58, type: !5019)
!5021 = !DILocalVariable(name: "fclose_fail", scope: !4979, file: !958, line: 59, type: !5019)
!5022 = !DILocation(line: 0, scope: !4979)
!5023 = !DILocation(line: 57, column: 30, scope: !4979)
!5024 = !DILocalVariable(name: "__stream", arg: 1, scope: !5025, file: !2617, line: 135, type: !4982)
!5025 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2617, file: !2617, line: 135, type: !4980, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !5026)
!5026 = !{!5024}
!5027 = !DILocation(line: 0, scope: !5025, inlinedAt: !5028)
!5028 = distinct !DILocation(line: 58, column: 27, scope: !4979)
!5029 = !DILocation(line: 137, column: 10, scope: !5025, inlinedAt: !5028)
!5030 = !{!2626, !1096, i64 0}
!5031 = !DILocation(line: 58, column: 43, scope: !4979)
!5032 = !DILocation(line: 59, column: 29, scope: !4979)
!5033 = !DILocation(line: 59, column: 45, scope: !4979)
!5034 = !DILocation(line: 69, column: 17, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !4979, file: !958, line: 69, column: 7)
!5036 = !DILocation(line: 57, column: 50, scope: !4979)
!5037 = !DILocation(line: 69, column: 33, scope: !5035)
!5038 = !DILocation(line: 69, column: 53, scope: !5035)
!5039 = !DILocation(line: 69, column: 59, scope: !5035)
!5040 = !DILocation(line: 69, column: 7, scope: !4979)
!5041 = !DILocation(line: 71, column: 11, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5035, file: !958, line: 70, column: 5)
!5043 = !DILocation(line: 72, column: 9, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5042, file: !958, line: 71, column: 11)
!5045 = !DILocation(line: 72, column: 15, scope: !5044)
!5046 = !DILocation(line: 77, column: 1, scope: !4979)
!5047 = !DISubprogram(name: "__fpending", scope: !5048, file: !5048, line: 75, type: !5049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5048 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!262, !4982}
!5051 = distinct !DISubprogram(name: "rpl_fclose", scope: !960, file: !960, line: 58, type: !5052, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !5088)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{!260, !5054}
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !5056)
!5056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !5057)
!5057 = !{!5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5056, file: !336, line: 51, baseType: !260, size: 32)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5056, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5056, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5056, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5056, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5056, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5056, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5056, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5056, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5056, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5056, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5056, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5056, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5056, file: !336, line: 70, baseType: !5072, size: 64, offset: 832)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5056, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5056, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5056, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5056, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5056, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5056, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5056, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5056, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5056, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5056, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5056, file: !336, line: 93, baseType: !5072, size: 64, offset: 1344)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5056, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5056, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5056, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5056, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!5088 = !{!5089, !5090, !5091, !5092}
!5089 = !DILocalVariable(name: "fp", arg: 1, scope: !5051, file: !960, line: 58, type: !5054)
!5090 = !DILocalVariable(name: "saved_errno", scope: !5051, file: !960, line: 60, type: !260)
!5091 = !DILocalVariable(name: "fd", scope: !5051, file: !960, line: 63, type: !260)
!5092 = !DILocalVariable(name: "result", scope: !5051, file: !960, line: 74, type: !260)
!5093 = !DILocation(line: 0, scope: !5051)
!5094 = !DILocation(line: 63, column: 12, scope: !5051)
!5095 = !DILocation(line: 64, column: 10, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5051, file: !960, line: 64, column: 7)
!5097 = !DILocation(line: 64, column: 7, scope: !5051)
!5098 = !DILocation(line: 65, column: 12, scope: !5096)
!5099 = !DILocation(line: 65, column: 5, scope: !5096)
!5100 = !DILocation(line: 70, column: 9, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5051, file: !960, line: 70, column: 7)
!5102 = !DILocation(line: 70, column: 23, scope: !5101)
!5103 = !DILocation(line: 70, column: 33, scope: !5101)
!5104 = !DILocation(line: 70, column: 26, scope: !5101)
!5105 = !DILocation(line: 70, column: 59, scope: !5101)
!5106 = !DILocation(line: 71, column: 7, scope: !5101)
!5107 = !DILocation(line: 71, column: 10, scope: !5101)
!5108 = !DILocation(line: 70, column: 7, scope: !5051)
!5109 = !DILocation(line: 100, column: 12, scope: !5051)
!5110 = !DILocation(line: 105, column: 7, scope: !5051)
!5111 = !DILocation(line: 72, column: 19, scope: !5101)
!5112 = !DILocation(line: 105, column: 19, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5051, file: !960, line: 105, column: 7)
!5114 = !DILocation(line: 107, column: 13, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5113, file: !960, line: 106, column: 5)
!5116 = !DILocation(line: 109, column: 5, scope: !5115)
!5117 = !DILocation(line: 112, column: 1, scope: !5051)
!5118 = !DISubprogram(name: "fileno", scope: !1090, file: !1090, line: 809, type: !5052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5119 = !DISubprogram(name: "fclose", scope: !1090, file: !1090, line: 178, type: !5052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5120 = !DISubprogram(name: "__freading", scope: !5048, file: !5048, line: 51, type: !5052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5121 = !DISubprogram(name: "lseek", scope: !2434, file: !2434, line: 339, type: !5122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5122 = !DISubroutineType(types: !5123)
!5123 = !{!358, !260, !358, !260}
!5124 = distinct !DISubprogram(name: "rpl_fflush", scope: !962, file: !962, line: 130, type: !5125, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !5161)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!260, !5127}
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !5129)
!5129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !5130)
!5130 = !{!5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160}
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5129, file: !336, line: 51, baseType: !260, size: 32)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5129, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5129, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5129, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5129, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5129, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5129, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5129, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5129, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5129, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5129, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5129, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5129, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5129, file: !336, line: 70, baseType: !5145, size: 64, offset: 832)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5129, size: 64)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5129, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5129, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5129, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5129, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5129, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5129, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5129, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5129, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5129, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5129, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5129, file: !336, line: 93, baseType: !5145, size: 64, offset: 1344)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5129, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5129, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5129, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5129, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!5161 = !{!5162}
!5162 = !DILocalVariable(name: "stream", arg: 1, scope: !5124, file: !962, line: 130, type: !5127)
!5163 = !DILocation(line: 0, scope: !5124)
!5164 = !DILocation(line: 151, column: 14, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5124, file: !962, line: 151, column: 7)
!5166 = !DILocation(line: 151, column: 22, scope: !5165)
!5167 = !DILocation(line: 151, column: 27, scope: !5165)
!5168 = !DILocation(line: 151, column: 7, scope: !5124)
!5169 = !DILocation(line: 152, column: 12, scope: !5165)
!5170 = !DILocation(line: 152, column: 5, scope: !5165)
!5171 = !DILocalVariable(name: "fp", arg: 1, scope: !5172, file: !962, line: 42, type: !5127)
!5172 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !962, file: !962, line: 42, type: !5173, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !5175)
!5173 = !DISubroutineType(types: !5174)
!5174 = !{null, !5127}
!5175 = !{!5171}
!5176 = !DILocation(line: 0, scope: !5172, inlinedAt: !5177)
!5177 = distinct !DILocation(line: 157, column: 3, scope: !5124)
!5178 = !DILocation(line: 44, column: 12, scope: !5179, inlinedAt: !5177)
!5179 = distinct !DILexicalBlock(scope: !5172, file: !962, line: 44, column: 7)
!5180 = !DILocation(line: 44, column: 19, scope: !5179, inlinedAt: !5177)
!5181 = !DILocation(line: 44, column: 7, scope: !5172, inlinedAt: !5177)
!5182 = !DILocation(line: 46, column: 5, scope: !5179, inlinedAt: !5177)
!5183 = !DILocation(line: 159, column: 10, scope: !5124)
!5184 = !DILocation(line: 159, column: 3, scope: !5124)
!5185 = !DILocation(line: 236, column: 1, scope: !5124)
!5186 = !DISubprogram(name: "fflush", scope: !1090, file: !1090, line: 230, type: !5125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5187 = distinct !DISubprogram(name: "rpl_fseeko", scope: !964, file: !964, line: 28, type: !5188, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !5225)
!5188 = !DISubroutineType(types: !5189)
!5189 = !{!260, !5190, !5224, !260}
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !334, line: 7, baseType: !5192)
!5192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !336, line: 49, size: 1728, elements: !5193)
!5193 = !{!5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223}
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5192, file: !336, line: 51, baseType: !260, size: 32)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5192, file: !336, line: 54, baseType: !258, size: 64, offset: 64)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5192, file: !336, line: 55, baseType: !258, size: 64, offset: 128)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5192, file: !336, line: 56, baseType: !258, size: 64, offset: 192)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5192, file: !336, line: 57, baseType: !258, size: 64, offset: 256)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5192, file: !336, line: 58, baseType: !258, size: 64, offset: 320)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5192, file: !336, line: 59, baseType: !258, size: 64, offset: 384)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5192, file: !336, line: 60, baseType: !258, size: 64, offset: 448)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5192, file: !336, line: 61, baseType: !258, size: 64, offset: 512)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5192, file: !336, line: 64, baseType: !258, size: 64, offset: 576)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5192, file: !336, line: 65, baseType: !258, size: 64, offset: 640)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5192, file: !336, line: 66, baseType: !258, size: 64, offset: 704)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5192, file: !336, line: 68, baseType: !351, size: 64, offset: 768)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5192, file: !336, line: 70, baseType: !5208, size: 64, offset: 832)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5192, size: 64)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5192, file: !336, line: 72, baseType: !260, size: 32, offset: 896)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5192, file: !336, line: 73, baseType: !260, size: 32, offset: 928)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5192, file: !336, line: 74, baseType: !358, size: 64, offset: 960)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5192, file: !336, line: 77, baseType: !261, size: 16, offset: 1024)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5192, file: !336, line: 78, baseType: !361, size: 8, offset: 1040)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5192, file: !336, line: 79, baseType: !203, size: 8, offset: 1048)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5192, file: !336, line: 81, baseType: !364, size: 64, offset: 1088)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5192, file: !336, line: 89, baseType: !367, size: 64, offset: 1152)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5192, file: !336, line: 91, baseType: !369, size: 64, offset: 1216)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5192, file: !336, line: 92, baseType: !372, size: 64, offset: 1280)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5192, file: !336, line: 93, baseType: !5208, size: 64, offset: 1344)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5192, file: !336, line: 94, baseType: !259, size: 64, offset: 1408)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5192, file: !336, line: 95, baseType: !262, size: 64, offset: 1472)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5192, file: !336, line: 96, baseType: !260, size: 32, offset: 1536)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5192, file: !336, line: 98, baseType: !379, size: 160, offset: 1568)
!5224 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1090, line: 63, baseType: !358)
!5225 = !{!5226, !5227, !5228, !5229}
!5226 = !DILocalVariable(name: "fp", arg: 1, scope: !5187, file: !964, line: 28, type: !5190)
!5227 = !DILocalVariable(name: "offset", arg: 2, scope: !5187, file: !964, line: 28, type: !5224)
!5228 = !DILocalVariable(name: "whence", arg: 3, scope: !5187, file: !964, line: 28, type: !260)
!5229 = !DILocalVariable(name: "pos", scope: !5230, file: !964, line: 123, type: !5224)
!5230 = distinct !DILexicalBlock(scope: !5231, file: !964, line: 119, column: 5)
!5231 = distinct !DILexicalBlock(scope: !5187, file: !964, line: 55, column: 7)
!5232 = !DILocation(line: 0, scope: !5187)
!5233 = !DILocation(line: 55, column: 12, scope: !5231)
!5234 = !{!2626, !995, i64 16}
!5235 = !DILocation(line: 55, column: 33, scope: !5231)
!5236 = !{!2626, !995, i64 8}
!5237 = !DILocation(line: 55, column: 25, scope: !5231)
!5238 = !DILocation(line: 56, column: 7, scope: !5231)
!5239 = !DILocation(line: 56, column: 15, scope: !5231)
!5240 = !DILocation(line: 56, column: 37, scope: !5231)
!5241 = !{!2626, !995, i64 32}
!5242 = !DILocation(line: 56, column: 29, scope: !5231)
!5243 = !DILocation(line: 57, column: 7, scope: !5231)
!5244 = !DILocation(line: 57, column: 15, scope: !5231)
!5245 = !{!2626, !995, i64 72}
!5246 = !DILocation(line: 57, column: 29, scope: !5231)
!5247 = !DILocation(line: 55, column: 7, scope: !5187)
!5248 = !DILocation(line: 123, column: 26, scope: !5230)
!5249 = !DILocation(line: 123, column: 19, scope: !5230)
!5250 = !DILocation(line: 0, scope: !5230)
!5251 = !DILocation(line: 124, column: 15, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5230, file: !964, line: 124, column: 11)
!5253 = !DILocation(line: 124, column: 11, scope: !5230)
!5254 = !DILocation(line: 135, column: 19, scope: !5230)
!5255 = !DILocation(line: 136, column: 12, scope: !5230)
!5256 = !DILocation(line: 136, column: 20, scope: !5230)
!5257 = !{!2626, !1604, i64 144}
!5258 = !DILocation(line: 167, column: 7, scope: !5230)
!5259 = !DILocation(line: 169, column: 10, scope: !5187)
!5260 = !DILocation(line: 169, column: 3, scope: !5187)
!5261 = !DILocation(line: 170, column: 1, scope: !5187)
!5262 = !DISubprogram(name: "fseeko", scope: !1090, file: !1090, line: 736, type: !5263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5263 = !DISubroutineType(types: !5264)
!5264 = !{!260, !5190, !358, !260}
!5265 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !884, file: !884, line: 100, type: !5266, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !887, retainedNodes: !5269)
!5266 = !DISubroutineType(types: !5267)
!5267 = !{!262, !2820, !265, !262, !5268}
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!5269 = !{!5270, !5271, !5272, !5273, !5274}
!5270 = !DILocalVariable(name: "pwc", arg: 1, scope: !5265, file: !884, line: 100, type: !2820)
!5271 = !DILocalVariable(name: "s", arg: 2, scope: !5265, file: !884, line: 100, type: !265)
!5272 = !DILocalVariable(name: "n", arg: 3, scope: !5265, file: !884, line: 100, type: !262)
!5273 = !DILocalVariable(name: "ps", arg: 4, scope: !5265, file: !884, line: 100, type: !5268)
!5274 = !DILocalVariable(name: "ret", scope: !5265, file: !884, line: 130, type: !262)
!5275 = !DILocation(line: 0, scope: !5265)
!5276 = !DILocation(line: 105, column: 9, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5265, file: !884, line: 105, column: 7)
!5278 = !DILocation(line: 105, column: 7, scope: !5265)
!5279 = !DILocation(line: 117, column: 10, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5265, file: !884, line: 117, column: 7)
!5281 = !DILocation(line: 117, column: 7, scope: !5265)
!5282 = !DILocation(line: 130, column: 16, scope: !5265)
!5283 = !DILocation(line: 135, column: 11, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5265, file: !884, line: 135, column: 7)
!5285 = !DILocation(line: 135, column: 25, scope: !5284)
!5286 = !DILocation(line: 135, column: 30, scope: !5284)
!5287 = !DILocation(line: 135, column: 7, scope: !5265)
!5288 = !DILocalVariable(name: "ps", arg: 1, scope: !5289, file: !2793, line: 1135, type: !5268)
!5289 = distinct !DISubprogram(name: "mbszero", scope: !2793, file: !2793, line: 1135, type: !5290, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !887, retainedNodes: !5292)
!5290 = !DISubroutineType(types: !5291)
!5291 = !{null, !5268}
!5292 = !{!5288}
!5293 = !DILocation(line: 0, scope: !5289, inlinedAt: !5294)
!5294 = distinct !DILocation(line: 137, column: 5, scope: !5284)
!5295 = !DILocalVariable(name: "__dest", arg: 1, scope: !5296, file: !2802, line: 57, type: !259)
!5296 = distinct !DISubprogram(name: "memset", scope: !2802, file: !2802, line: 57, type: !2803, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !887, retainedNodes: !5297)
!5297 = !{!5295, !5298, !5299}
!5298 = !DILocalVariable(name: "__ch", arg: 2, scope: !5296, file: !2802, line: 57, type: !260)
!5299 = !DILocalVariable(name: "__len", arg: 3, scope: !5296, file: !2802, line: 57, type: !262)
!5300 = !DILocation(line: 0, scope: !5296, inlinedAt: !5301)
!5301 = distinct !DILocation(line: 1137, column: 3, scope: !5289, inlinedAt: !5294)
!5302 = !DILocation(line: 59, column: 10, scope: !5296, inlinedAt: !5301)
!5303 = !DILocation(line: 137, column: 5, scope: !5284)
!5304 = !DILocation(line: 138, column: 11, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5265, file: !884, line: 138, column: 7)
!5306 = !DILocation(line: 138, column: 7, scope: !5265)
!5307 = !DILocation(line: 139, column: 5, scope: !5305)
!5308 = !DILocation(line: 143, column: 26, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5265, file: !884, line: 143, column: 7)
!5310 = !DILocation(line: 143, column: 41, scope: !5309)
!5311 = !DILocation(line: 143, column: 7, scope: !5265)
!5312 = !DILocation(line: 145, column: 15, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5314, file: !884, line: 145, column: 11)
!5314 = distinct !DILexicalBlock(scope: !5309, file: !884, line: 144, column: 5)
!5315 = !DILocation(line: 145, column: 11, scope: !5314)
!5316 = !DILocation(line: 146, column: 32, scope: !5313)
!5317 = !DILocation(line: 146, column: 16, scope: !5313)
!5318 = !DILocation(line: 146, column: 14, scope: !5313)
!5319 = !DILocation(line: 146, column: 9, scope: !5313)
!5320 = !DILocation(line: 286, column: 1, scope: !5265)
!5321 = !DISubprogram(name: "mbsinit", scope: !5322, file: !5322, line: 293, type: !5323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5322 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5323 = !DISubroutineType(types: !5324)
!5324 = !{!260, !5325}
!5325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5326, size: 64)
!5326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !890)
!5327 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !966, file: !966, line: 27, type: !4534, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !965, retainedNodes: !5328)
!5328 = !{!5329, !5330, !5331, !5332}
!5329 = !DILocalVariable(name: "ptr", arg: 1, scope: !5327, file: !966, line: 27, type: !259)
!5330 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5327, file: !966, line: 27, type: !262)
!5331 = !DILocalVariable(name: "size", arg: 3, scope: !5327, file: !966, line: 27, type: !262)
!5332 = !DILocalVariable(name: "nbytes", scope: !5327, file: !966, line: 29, type: !262)
!5333 = !DILocation(line: 0, scope: !5327)
!5334 = !DILocation(line: 30, column: 7, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5327, file: !966, line: 30, column: 7)
!5336 = !DILocation(line: 30, column: 7, scope: !5327)
!5337 = !DILocation(line: 32, column: 7, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5335, file: !966, line: 31, column: 5)
!5339 = !DILocation(line: 32, column: 13, scope: !5338)
!5340 = !DILocation(line: 33, column: 7, scope: !5338)
!5341 = !DILocalVariable(name: "ptr", arg: 1, scope: !5342, file: !4626, line: 2057, type: !259)
!5342 = distinct !DISubprogram(name: "rpl_realloc", scope: !4626, file: !4626, line: 2057, type: !4618, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !965, retainedNodes: !5343)
!5343 = !{!5341, !5344}
!5344 = !DILocalVariable(name: "size", arg: 2, scope: !5342, file: !4626, line: 2057, type: !262)
!5345 = !DILocation(line: 0, scope: !5342, inlinedAt: !5346)
!5346 = distinct !DILocation(line: 37, column: 10, scope: !5327)
!5347 = !DILocation(line: 2059, column: 24, scope: !5342, inlinedAt: !5346)
!5348 = !DILocation(line: 2059, column: 10, scope: !5342, inlinedAt: !5346)
!5349 = !DILocation(line: 37, column: 3, scope: !5327)
!5350 = !DILocation(line: 38, column: 1, scope: !5327)
!5351 = distinct !DISubprogram(name: "hard_locale", scope: !902, file: !902, line: 28, type: !1338, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !5352)
!5352 = !{!5353, !5354}
!5353 = !DILocalVariable(name: "category", arg: 1, scope: !5351, file: !902, line: 28, type: !260)
!5354 = !DILocalVariable(name: "locale", scope: !5351, file: !902, line: 30, type: !5355)
!5355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5356)
!5356 = !{!5357}
!5357 = !DISubrange(count: 257)
!5358 = distinct !DIAssignID()
!5359 = !DILocation(line: 0, scope: !5351)
!5360 = !DILocation(line: 30, column: 3, scope: !5351)
!5361 = !DILocation(line: 32, column: 7, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5351, file: !902, line: 32, column: 7)
!5363 = !DILocation(line: 32, column: 7, scope: !5351)
!5364 = !DILocalVariable(name: "__s1", arg: 1, scope: !5365, file: !1108, line: 1359, type: !265)
!5365 = distinct !DISubprogram(name: "streq", scope: !1108, file: !1108, line: 1359, type: !1109, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !967, retainedNodes: !5366)
!5366 = !{!5364, !5367}
!5367 = !DILocalVariable(name: "__s2", arg: 2, scope: !5365, file: !1108, line: 1359, type: !265)
!5368 = !DILocation(line: 0, scope: !5365, inlinedAt: !5369)
!5369 = distinct !DILocation(line: 35, column: 9, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5351, file: !902, line: 35, column: 7)
!5371 = !DILocation(line: 1361, column: 11, scope: !5365, inlinedAt: !5369)
!5372 = !DILocation(line: 35, column: 29, scope: !5370)
!5373 = !DILocation(line: 0, scope: !5365, inlinedAt: !5374)
!5374 = distinct !DILocation(line: 35, column: 32, scope: !5370)
!5375 = !DILocation(line: 1361, column: 11, scope: !5365, inlinedAt: !5374)
!5376 = !DILocation(line: 1361, column: 10, scope: !5365, inlinedAt: !5374)
!5377 = !DILocation(line: 35, column: 7, scope: !5351)
!5378 = !DILocation(line: 46, column: 3, scope: !5351)
!5379 = !DILocation(line: 47, column: 1, scope: !5351)
!5380 = distinct !DISubprogram(name: "setlocale_null_r", scope: !972, file: !972, line: 154, type: !5381, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !5383)
!5381 = !DISubroutineType(types: !5382)
!5382 = !{!260, !260, !258, !262}
!5383 = !{!5384, !5385, !5386}
!5384 = !DILocalVariable(name: "category", arg: 1, scope: !5380, file: !972, line: 154, type: !260)
!5385 = !DILocalVariable(name: "buf", arg: 2, scope: !5380, file: !972, line: 154, type: !258)
!5386 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5380, file: !972, line: 154, type: !262)
!5387 = !DILocation(line: 0, scope: !5380)
!5388 = !DILocation(line: 159, column: 10, scope: !5380)
!5389 = !DILocation(line: 159, column: 3, scope: !5380)
!5390 = distinct !DISubprogram(name: "setlocale_null", scope: !972, file: !972, line: 186, type: !5391, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !971, retainedNodes: !5393)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{!265, !260}
!5393 = !{!5394}
!5394 = !DILocalVariable(name: "category", arg: 1, scope: !5390, file: !972, line: 186, type: !260)
!5395 = !DILocation(line: 0, scope: !5390)
!5396 = !DILocation(line: 189, column: 10, scope: !5390)
!5397 = !DILocation(line: 189, column: 3, scope: !5390)
!5398 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !974, file: !974, line: 35, type: !5391, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !5399)
!5399 = !{!5400, !5401}
!5400 = !DILocalVariable(name: "category", arg: 1, scope: !5398, file: !974, line: 35, type: !260)
!5401 = !DILocalVariable(name: "result", scope: !5398, file: !974, line: 37, type: !265)
!5402 = !DILocation(line: 0, scope: !5398)
!5403 = !DILocation(line: 37, column: 24, scope: !5398)
!5404 = !DILocation(line: 62, column: 3, scope: !5398)
!5405 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !974, file: !974, line: 66, type: !5381, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !5406)
!5406 = !{!5407, !5408, !5409, !5410, !5411}
!5407 = !DILocalVariable(name: "category", arg: 1, scope: !5405, file: !974, line: 66, type: !260)
!5408 = !DILocalVariable(name: "buf", arg: 2, scope: !5405, file: !974, line: 66, type: !258)
!5409 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5405, file: !974, line: 66, type: !262)
!5410 = !DILocalVariable(name: "result", scope: !5405, file: !974, line: 111, type: !265)
!5411 = !DILocalVariable(name: "length", scope: !5412, file: !974, line: 125, type: !262)
!5412 = distinct !DILexicalBlock(scope: !5413, file: !974, line: 124, column: 5)
!5413 = distinct !DILexicalBlock(scope: !5405, file: !974, line: 113, column: 7)
!5414 = !DILocation(line: 0, scope: !5405)
!5415 = !DILocation(line: 0, scope: !5398, inlinedAt: !5416)
!5416 = distinct !DILocation(line: 111, column: 24, scope: !5405)
!5417 = !DILocation(line: 37, column: 24, scope: !5398, inlinedAt: !5416)
!5418 = !DILocation(line: 113, column: 14, scope: !5413)
!5419 = !DILocation(line: 113, column: 7, scope: !5405)
!5420 = !DILocation(line: 116, column: 19, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5422, file: !974, line: 116, column: 11)
!5422 = distinct !DILexicalBlock(scope: !5413, file: !974, line: 114, column: 5)
!5423 = !DILocation(line: 116, column: 11, scope: !5422)
!5424 = !DILocation(line: 120, column: 16, scope: !5421)
!5425 = !DILocation(line: 120, column: 9, scope: !5421)
!5426 = !DILocation(line: 125, column: 23, scope: !5412)
!5427 = !DILocation(line: 0, scope: !5412)
!5428 = !DILocation(line: 126, column: 18, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5412, file: !974, line: 126, column: 11)
!5430 = !DILocation(line: 126, column: 11, scope: !5412)
!5431 = !DILocation(line: 128, column: 39, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5429, file: !974, line: 127, column: 9)
!5433 = !DILocalVariable(name: "__dest", arg: 1, scope: !5434, file: !2802, line: 26, type: !4897)
!5434 = distinct !DISubprogram(name: "memcpy", scope: !2802, file: !2802, line: 26, type: !4895, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !5435)
!5435 = !{!5433, !5436, !5437}
!5436 = !DILocalVariable(name: "__src", arg: 2, scope: !5434, file: !2802, line: 26, type: !1227)
!5437 = !DILocalVariable(name: "__len", arg: 3, scope: !5434, file: !2802, line: 26, type: !262)
!5438 = !DILocation(line: 0, scope: !5434, inlinedAt: !5439)
!5439 = distinct !DILocation(line: 128, column: 11, scope: !5432)
!5440 = !DILocation(line: 29, column: 10, scope: !5434, inlinedAt: !5439)
!5441 = !DILocation(line: 129, column: 11, scope: !5432)
!5442 = !DILocation(line: 133, column: 23, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5444, file: !974, line: 133, column: 15)
!5444 = distinct !DILexicalBlock(scope: !5429, file: !974, line: 132, column: 9)
!5445 = !DILocation(line: 133, column: 15, scope: !5444)
!5446 = !DILocation(line: 138, column: 44, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5443, file: !974, line: 134, column: 13)
!5448 = !DILocation(line: 0, scope: !5434, inlinedAt: !5449)
!5449 = distinct !DILocation(line: 138, column: 15, scope: !5447)
!5450 = !DILocation(line: 29, column: 10, scope: !5434, inlinedAt: !5449)
!5451 = !DILocation(line: 139, column: 15, scope: !5447)
!5452 = !DILocation(line: 139, column: 32, scope: !5447)
!5453 = !DILocation(line: 140, column: 13, scope: !5447)
!5454 = !DILocation(line: 0, scope: !5413)
!5455 = !DILocation(line: 145, column: 1, scope: !5405)
