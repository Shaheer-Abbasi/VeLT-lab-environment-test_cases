; ModuleID = 'src/test.bc'
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
@.str.3 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [120 x i8] c"\0AAn omitted EXPRESSION defaults to false.  Otherwise,\0AEXPRESSION is true or false and sets exit status.  It is one of:\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [249 x i8] c"\0A  ( EXPRESSION )               EXPRESSION is true\0A  ! EXPRESSION                 EXPRESSION is false\0A  EXPRESSION1 -a EXPRESSION2   both EXPRESSION1 and EXPRESSION2 are true\0A  EXPRESSION1 -o EXPRESSION2   either EXPRESSION1 or EXPRESSION2 is true\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [56 x i8] c"  -n STRING            the length of STRING is nonzero\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [48 x i8] c"  STRING               equivalent to -n STRING\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [53 x i8] c"  -z STRING            the length of STRING is zero\0A\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [246 x i8] c"  STRING1 = STRING2    the strings are equal\0A  STRING1 != STRING2   the strings are not equal\0A  STRING1 > STRING2    STRING1 is greater than STRING2 in the current locale\0A  STRING1 < STRING2    STRING1 is less than STRING2 in the current locale\0A\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [57 x i8] c"  INTEGER1 -eq INTEGER2   INTEGER1 is equal to INTEGER2\0A\00", align 1, !dbg !67
@.str.14 = private unnamed_addr constant [73 x i8] c"  INTEGER1 -ge INTEGER2   INTEGER1 is greater than or equal to INTEGER2\0A\00", align 1, !dbg !72
@.str.15 = private unnamed_addr constant [61 x i8] c"  INTEGER1 -gt INTEGER2   INTEGER1 is greater than INTEGER2\0A\00", align 1, !dbg !77
@.str.16 = private unnamed_addr constant [70 x i8] c"  INTEGER1 -le INTEGER2   INTEGER1 is less than or equal to INTEGER2\0A\00", align 1, !dbg !82
@.str.17 = private unnamed_addr constant [58 x i8] c"  INTEGER1 -lt INTEGER2   INTEGER1 is less than INTEGER2\0A\00", align 1, !dbg !87
@.str.18 = private unnamed_addr constant [61 x i8] c"  INTEGER1 -ne INTEGER2   INTEGER1 is not equal to INTEGER2\0A\00", align 1, !dbg !92
@.str.19 = private unnamed_addr constant [76 x i8] c"  FILE1 -ef FILE2   FILE1 and FILE2 have the same device and inode numbers\0A\00", align 1, !dbg !94
@.str.20 = private unnamed_addr constant [67 x i8] c"  FILE1 -nt FILE2   FILE1 is newer (modification date) than FILE2\0A\00", align 1, !dbg !99
@.str.21 = private unnamed_addr constant [47 x i8] c"  FILE1 -ot FILE2   FILE1 is older than FILE2\0A\00", align 1, !dbg !104
@.str.22 = private unnamed_addr constant [48 x i8] c"  -b FILE     FILE exists and is block special\0A\00", align 1, !dbg !109
@.str.23 = private unnamed_addr constant [52 x i8] c"  -c FILE     FILE exists and is character special\0A\00", align 1, !dbg !111
@.str.24 = private unnamed_addr constant [46 x i8] c"  -d FILE     FILE exists and is a directory\0A\00", align 1, !dbg !116
@.str.25 = private unnamed_addr constant [27 x i8] c"  -e FILE     FILE exists\0A\00", align 1, !dbg !121
@.str.26 = private unnamed_addr constant [49 x i8] c"  -f FILE     FILE exists and is a regular file\0A\00", align 1, !dbg !126
@.str.27 = private unnamed_addr constant [47 x i8] c"  -g FILE     FILE exists and is set-group-ID\0A\00", align 1, !dbg !128
@.str.28 = private unnamed_addr constant [66 x i8] c"  -G FILE     FILE exists and is owned by the effective group ID\0A\00", align 1, !dbg !130
@.str.29 = private unnamed_addr constant [63 x i8] c"  -h FILE     FILE exists and is a symbolic link (same as -L)\0A\00", align 1, !dbg !135
@.str.30 = private unnamed_addr constant [54 x i8] c"  -k FILE     FILE exists and has its sticky bit set\0A\00", align 1, !dbg !140
@.str.31 = private unnamed_addr constant [63 x i8] c"  -L FILE     FILE exists and is a symbolic link (same as -h)\0A\00", align 1, !dbg !145
@.str.32 = private unnamed_addr constant [72 x i8] c"  -N FILE     FILE exists and has been modified since it was last read\0A\00", align 1, !dbg !147
@.str.33 = private unnamed_addr constant [65 x i8] c"  -O FILE     FILE exists and is owned by the effective user ID\0A\00", align 1, !dbg !152
@.str.34 = private unnamed_addr constant [47 x i8] c"  -p FILE     FILE exists and is a named pipe\0A\00", align 1, !dbg !157
@.str.35 = private unnamed_addr constant [56 x i8] c"  -r FILE     FILE exists and the user has read access\0A\00", align 1, !dbg !159
@.str.36 = private unnamed_addr constant [60 x i8] c"  -s FILE     FILE exists and has a size greater than zero\0A\00", align 1, !dbg !161
@.str.37 = private unnamed_addr constant [43 x i8] c"  -S FILE     FILE exists and is a socket\0A\00", align 1, !dbg !166
@.str.38 = private unnamed_addr constant [58 x i8] c"  -t FD       file descriptor FD is opened on a terminal\0A\00", align 1, !dbg !171
@.str.39 = private unnamed_addr constant [58 x i8] c"  -u FILE     FILE exists and its set-user-ID bit is set\0A\00", align 1, !dbg !173
@.str.40 = private unnamed_addr constant [57 x i8] c"  -w FILE     FILE exists and the user has write access\0A\00", align 1, !dbg !175
@.str.41 = private unnamed_addr constant [71 x i8] c"  -x FILE     FILE exists and the user has execute (or search) access\0A\00", align 1, !dbg !177
@.str.42 = private unnamed_addr constant [225 x i8] c"\0AExcept for -h and -L, all FILE-related tests dereference symbolic links.\0ABeware that parentheses need to be escaped (e.g., by backslashes) for shells.\0AINTEGER may also be -l STRING, which evaluates to the length of STRING.\0A\00", align 1, !dbg !182
@.str.43 = private unnamed_addr constant [105 x i8] c"\0ABinary -a and -o are ambiguous.  Use 'test EXPR1 && test EXPR2'\0Aor 'test EXPR1 || test EXPR2' instead.\0A\00", align 1, !dbg !187
@.str.44 = private unnamed_addr constant [70 x i8] c"\0A'[' honors --help and --version, but 'test' treats them as STRINGs.\0A\00", align 1, !dbg !192
@.str.45 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !194
@.str.46 = private unnamed_addr constant [14 x i8] c"test and/or [\00", align 1, !dbg !199
@.str.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !204
@.str.48 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !209
@.str.49 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !214
@argv = internal unnamed_addr global ptr null, align 8, !dbg !219
@argc = internal unnamed_addr global i32 0, align 4, !dbg !282
@pos = internal unnamed_addr global i32 0, align 4, !dbg !280
@.str.50 = private unnamed_addr constant [18 x i8] c"extra argument %s\00", align 1, !dbg !275
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !284
@.str.51 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !367
@.str.52 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !369
@.str.53 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !371
@.str.54 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !376
@.str.67 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !414
@.str.68 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !416
@.str.69 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !418
@.str.70 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !423
@.str.71 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !428
@.str.72 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !433
@.str.73 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !435
@.str.74 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !437
@.str.75 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !439
@.str.76 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !441
@.str.80 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !455
@.str.81 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !457
@.str.82 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !459
@.str.83 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !461
@.str.84 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !466
@.str.85 = private unnamed_addr constant [2 x i8] c"!\00", align 1, !dbg !471
@.str.86 = private unnamed_addr constant [2 x i8] c"(\00", align 1, !dbg !473
@.str.87 = private unnamed_addr constant [2 x i8] c")\00", align 1, !dbg !475
@.str.88 = private unnamed_addr constant [10 x i8] c"0 < nargs\00", align 1, !dbg !477
@.str.89 = private unnamed_addr constant [11 x i8] c"src/test.c\00", align 1, !dbg !479
@__PRETTY_FUNCTION__.posixtest = private unnamed_addr constant [21 x i8] c"_Bool posixtest(int)\00", align 1, !dbg !484
@.str.90 = private unnamed_addr constant [28 x i8] c"%s: unary operator expected\00", align 1, !dbg !489
@.str.91 = private unnamed_addr constant [19 x i8] c"invalid integer %s\00", align 1, !dbg !494
@.str.92 = private unnamed_addr constant [26 x i8] c"missing argument after %s\00", align 1, !dbg !499
@.str.93 = private unnamed_addr constant [3 x i8] c"-a\00", align 1, !dbg !504
@.str.94 = private unnamed_addr constant [3 x i8] c"-o\00", align 1, !dbg !506
@.str.95 = private unnamed_addr constant [2 x i8] c">\00", align 1, !dbg !508
@.str.96 = private unnamed_addr constant [2 x i8] c"<\00", align 1, !dbg !510
@.str.97 = private unnamed_addr constant [29 x i8] c"%s: binary operator expected\00", align 1, !dbg !512
@.str.98 = private unnamed_addr constant [2 x i8] c"=\00", align 1, !dbg !517
@.str.99 = private unnamed_addr constant [3 x i8] c"==\00", align 1, !dbg !519
@.str.100 = private unnamed_addr constant [3 x i8] c"!=\00", align 1, !dbg !521
@.str.101 = private unnamed_addr constant [4 x i8] c"-eq\00", align 1, !dbg !523
@.str.102 = private unnamed_addr constant [4 x i8] c"-ne\00", align 1, !dbg !525
@.str.103 = private unnamed_addr constant [4 x i8] c"-lt\00", align 1, !dbg !527
@.str.104 = private unnamed_addr constant [4 x i8] c"-le\00", align 1, !dbg !529
@.str.105 = private unnamed_addr constant [4 x i8] c"-gt\00", align 1, !dbg !531
@.str.106 = private unnamed_addr constant [4 x i8] c"-ge\00", align 1, !dbg !533
@.str.107 = private unnamed_addr constant [4 x i8] c"-ot\00", align 1, !dbg !535
@.str.108 = private unnamed_addr constant [4 x i8] c"-nt\00", align 1, !dbg !537
@.str.109 = private unnamed_addr constant [4 x i8] c"-ef\00", align 1, !dbg !539
@.str.110 = private unnamed_addr constant [3 x i8] c"-l\00", align 1, !dbg !541
@.str.111 = private unnamed_addr constant [22 x i8] c"%s does not accept -l\00", align 1, !dbg !543
@.str.112 = private unnamed_addr constant [23 x i8] c"-ef does not accept -l\00", align 1, !dbg !545
@.str.113 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !550
@__PRETTY_FUNCTION__.binary_operator = private unnamed_addr constant [41 x i8] c"_Bool binary_operator(_Bool, enum binop)\00", align 1, !dbg !552
@.str.114 = private unnamed_addr constant [12 x i8] c"%s expected\00", align 1, !dbg !557
@.str.115 = private unnamed_addr constant [22 x i8] c"%s expected, found %s\00", align 1, !dbg !559
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !562
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !575
@.str.55 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !567
@.str.1.56 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !569
@.str.2.57 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !571
@.str.3.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !573
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !577
@stderr = external local_unnamed_addr global ptr, align 8
@.str.61 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !583
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !619
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !585
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !609
@.str.1.67 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !611
@.str.2.69 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !613
@.str.3.68 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !615
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !617
@.str.4.62 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !621
@.str.5.63 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !623
@.str.6.64 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !626
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !631
@.str.116 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !637
@.str.1.117 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !639
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@.str.118 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !641
@.str.1.119 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !644
@.str.2.120 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !646
@.str.3.121 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !651
@.str.4.122 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !653
@.str.5.123 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !655
@.str.6.124 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !657
@.str.7.125 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !659
@.str.8.126 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !661
@.str.9.127 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !663
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.118, ptr @.str.1.119, ptr @.str.2.120, ptr @.str.3.121, ptr @.str.4.122, ptr @.str.5.123, ptr @.str.6.124, ptr @.str.7.125, ptr @.str.8.126, ptr @.str.9.127, ptr null], align 8, !dbg !665
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !690
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !704
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !748
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !755
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !706
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !757
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !694
@.str.10.130 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !711
@.str.11.128 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !713
@.str.12.131 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !715
@.str.13.129 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !717
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !719
@.str.140 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !761
@.str.1.141 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !764
@.str.2.142 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !766
@.str.3.143 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !768
@.str.4.144 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !770
@.str.5.145 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !772
@.str.6.146 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !777
@.str.7.147 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !782
@.str.8.148 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !784
@.str.9.149 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !786
@.str.10.150 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !788
@.str.11.151 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !793
@.str.12.152 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !798
@.str.13.153 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !800
@.str.14.154 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !805
@.str.15.155 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !807
@.str.16.156 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !809
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.159 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !811
@.str.18.160 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !813
@.str.19.161 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !815
@.str.20.162 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !817
@.str.21.163 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !819
@.str.22.164 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !821
@.str.23.165 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !823
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !825
@exit_failure = dso_local global i32 1, align 4, !dbg !831
@.str.178 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !837
@.str.1.176 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !840
@.str.2.177 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !842
@.str.189 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !844
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !847
@.str.194 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !862
@.str.1.195 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !865

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !946 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !950, metadata !DIExpression()), !dbg !951
  %2 = icmp eq i32 %0, 0, !dbg !952
  br i1 %2, label %8, label %3, !dbg !954

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !955, !tbaa !957
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !955
  %6 = load ptr, ptr @program_name, align 8, !dbg !955, !tbaa !957
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !955
  br label %98, !dbg !955

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !961
  %10 = load ptr, ptr @stdout, align 8, !dbg !961, !tbaa !957
  %11 = tail call i32 @fputs_unlocked(ptr noundef %9, ptr noundef %10), !dbg !961
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !963
  %13 = load ptr, ptr @stdout, align 8, !dbg !963, !tbaa !957
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !963
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !964
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !964
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !965
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !965
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !966
  %18 = load ptr, ptr @stdout, align 8, !dbg !966, !tbaa !957
  %19 = tail call i32 @fputs_unlocked(ptr noundef %17, ptr noundef %18), !dbg !966
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !967
  %21 = load ptr, ptr @stdout, align 8, !dbg !967, !tbaa !957
  %22 = tail call i32 @fputs_unlocked(ptr noundef %20, ptr noundef %21), !dbg !967
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !968
  %24 = load ptr, ptr @stdout, align 8, !dbg !968, !tbaa !957
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !968
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !969
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !969
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !970
  %28 = load ptr, ptr @stdout, align 8, !dbg !970, !tbaa !957
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !970
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #40, !dbg !971
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !971
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !972
  %32 = load ptr, ptr @stdout, align 8, !dbg !972, !tbaa !957
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !972
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !973
  %35 = load ptr, ptr @stdout, align 8, !dbg !973, !tbaa !957
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !973
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !974
  tail call fastcc void @oputs_(ptr noundef %37), !dbg !974
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !975
  tail call fastcc void @oputs_(ptr noundef %38), !dbg !975
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #40, !dbg !976
  tail call fastcc void @oputs_(ptr noundef %39), !dbg !976
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #40, !dbg !977
  tail call fastcc void @oputs_(ptr noundef %40), !dbg !977
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #40, !dbg !978
  tail call fastcc void @oputs_(ptr noundef %41), !dbg !978
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #40, !dbg !979
  tail call fastcc void @oputs_(ptr noundef %42), !dbg !979
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !980
  %44 = load ptr, ptr @stdout, align 8, !dbg !980, !tbaa !957
  %45 = tail call i32 @fputs_unlocked(ptr noundef %43, ptr noundef %44), !dbg !980
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #40, !dbg !981
  tail call fastcc void @oputs_(ptr noundef %46), !dbg !981
  %47 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #40, !dbg !982
  tail call fastcc void @oputs_(ptr noundef %47), !dbg !982
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #40, !dbg !983
  tail call fastcc void @oputs_(ptr noundef %48), !dbg !983
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !984
  %50 = load ptr, ptr @stdout, align 8, !dbg !984, !tbaa !957
  %51 = tail call i32 @fputs_unlocked(ptr noundef %49, ptr noundef %50), !dbg !984
  %52 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !985
  tail call fastcc void @oputs_(ptr noundef %52), !dbg !985
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #40, !dbg !986
  tail call fastcc void @oputs_(ptr noundef %53), !dbg !986
  %54 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #40, !dbg !987
  tail call fastcc void @oputs_(ptr noundef %54), !dbg !987
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #40, !dbg !988
  tail call fastcc void @oputs_(ptr noundef %55), !dbg !988
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #40, !dbg !989
  tail call fastcc void @oputs_(ptr noundef %56), !dbg !989
  %57 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #40, !dbg !990
  tail call fastcc void @oputs_(ptr noundef %57), !dbg !990
  %58 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #40, !dbg !991
  tail call fastcc void @oputs_(ptr noundef %58), !dbg !991
  %59 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #40, !dbg !992
  tail call fastcc void @oputs_(ptr noundef %59), !dbg !992
  %60 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #40, !dbg !993
  tail call fastcc void @oputs_(ptr noundef %60), !dbg !993
  %61 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #40, !dbg !994
  tail call fastcc void @oputs_(ptr noundef %61), !dbg !994
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #40, !dbg !995
  tail call fastcc void @oputs_(ptr noundef %62), !dbg !995
  %63 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #40, !dbg !996
  tail call fastcc void @oputs_(ptr noundef %63), !dbg !996
  %64 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #40, !dbg !997
  tail call fastcc void @oputs_(ptr noundef %64), !dbg !997
  %65 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #40, !dbg !998
  tail call fastcc void @oputs_(ptr noundef %65), !dbg !998
  %66 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #40, !dbg !999
  tail call fastcc void @oputs_(ptr noundef %66), !dbg !999
  %67 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #40, !dbg !1000
  tail call fastcc void @oputs_(ptr noundef %67), !dbg !1000
  %68 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #40, !dbg !1001
  tail call fastcc void @oputs_(ptr noundef %68), !dbg !1001
  %69 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #40, !dbg !1002
  tail call fastcc void @oputs_(ptr noundef %69), !dbg !1002
  %70 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #40, !dbg !1003
  tail call fastcc void @oputs_(ptr noundef %70), !dbg !1003
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #40, !dbg !1004
  tail call fastcc void @oputs_(ptr noundef %71), !dbg !1004
  %72 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #40, !dbg !1005
  %73 = load ptr, ptr @stdout, align 8, !dbg !1005, !tbaa !957
  %74 = tail call i32 @fputs_unlocked(ptr noundef %72, ptr noundef %73), !dbg !1005
  %75 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #40, !dbg !1006
  %76 = load ptr, ptr @stdout, align 8, !dbg !1006, !tbaa !957
  %77 = tail call i32 @fputs_unlocked(ptr noundef %75, ptr noundef %76), !dbg !1006
  %78 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #40, !dbg !1007
  %79 = load ptr, ptr @stdout, align 8, !dbg !1007, !tbaa !957
  %80 = tail call i32 @fputs_unlocked(ptr noundef %78, ptr noundef %79), !dbg !1007
  %81 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #40, !dbg !1008
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #40, !dbg !1008
  %83 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %81, ptr noundef %82) #40, !dbg !1008
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1009, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata !1028, metadata !1022, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata ptr poison, metadata !1021, metadata !DIExpression()), !dbg !1026
  tail call void @emit_bug_reporting_address() #40, !dbg !1029
  %84 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !1030
  call void @llvm.dbg.value(metadata ptr %84, metadata !1024, metadata !DIExpression()), !dbg !1026
  %85 = icmp eq ptr %84, null, !dbg !1031
  br i1 %85, label %93, label %86, !dbg !1033

86:                                               ; preds = %8
  %87 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(4) @.str.80, i64 noundef 3) #41, !dbg !1034
  %88 = icmp eq i32 %87, 0, !dbg !1034
  br i1 %88, label %93, label %89, !dbg !1035

89:                                               ; preds = %86
  %90 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.81, i32 noundef 5) #40, !dbg !1036
  %91 = load ptr, ptr @stdout, align 8, !dbg !1036, !tbaa !957
  %92 = tail call i32 @fputs_unlocked(ptr noundef %90, ptr noundef %91), !dbg !1036
  br label %93, !dbg !1038

93:                                               ; preds = %8, %86, %89
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1021, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1025, metadata !DIExpression()), !dbg !1026
  %94 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.82, i32 noundef 5) #40, !dbg !1039
  %95 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %94, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.3) #40, !dbg !1039
  %96 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.83, i32 noundef 5) #40, !dbg !1040
  %97 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %96, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.84) #40, !dbg !1040
  br label %98

98:                                               ; preds = %93, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1041
  unreachable, !dbg !1041
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1042 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1046 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1052 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !286 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !291, metadata !DIExpression()), !dbg !1055
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !1055
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1056, !tbaa !1057
  %3 = icmp eq i32 %2, -1, !dbg !1059
  br i1 %3, label %4, label %16, !dbg !1060

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.51) #40, !dbg !1061
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !293, metadata !DIExpression()), !dbg !1062
  %6 = icmp eq ptr %5, null, !dbg !1063
  br i1 %6, label %14, label %7, !dbg !1064

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1065, !tbaa !1066
  %9 = icmp eq i8 %8, 0, !dbg !1065
  br i1 %9, label %14, label %10, !dbg !1067

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1068, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata ptr @.str.52, metadata !1074, metadata !DIExpression()), !dbg !1075
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.52) #41, !dbg !1077
  %12 = icmp eq i32 %11, 0, !dbg !1078
  %13 = zext i1 %12 to i32, !dbg !1067
  br label %14, !dbg !1067

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1079, !tbaa !1057
  br label %16, !dbg !1080

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1081
  %18 = icmp eq i32 %17, 0, !dbg !1081
  br i1 %18, label %22, label %19, !dbg !1083

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1084, !tbaa !957
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1084
  br label %121, !dbg !1086

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !296, metadata !DIExpression()), !dbg !1055
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.53) #41, !dbg !1087
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1088
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !298, metadata !DIExpression()), !dbg !1055
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1089
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !299, metadata !DIExpression()), !dbg !1055
  %26 = icmp eq ptr %25, null, !dbg !1090
  br i1 %26, label %53, label %27, !dbg !1091

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1092
  br i1 %28, label %53, label %29, !dbg !1093

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !300, metadata !DIExpression()), !dbg !1094
  tail call void @llvm.dbg.value(metadata i64 0, metadata !304, metadata !DIExpression()), !dbg !1094
  %30 = icmp ult ptr %24, %25, !dbg !1095
  br i1 %30, label %31, label %53, !dbg !1096

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1055
  %33 = load ptr, ptr %32, align 8, !tbaa !957
  br label %34, !dbg !1096

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !300, metadata !DIExpression()), !dbg !1094
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !304, metadata !DIExpression()), !dbg !1094
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1097
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !300, metadata !DIExpression()), !dbg !1094
  %38 = load i8, ptr %35, align 1, !dbg !1097, !tbaa !1066
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1097
  %41 = load i16, ptr %40, align 2, !dbg !1097, !tbaa !1098
  %42 = freeze i16 %41, !dbg !1100
  %43 = lshr i16 %42, 13, !dbg !1100
  %44 = and i16 %43, 1, !dbg !1100
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1101
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !304, metadata !DIExpression()), !dbg !1094
  %47 = icmp ult ptr %37, %25, !dbg !1095
  %48 = icmp ult i64 %46, 2, !dbg !1102
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1102
  br i1 %49, label %34, label %50, !dbg !1096, !llvm.loop !1103

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !1101
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !1105
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1107
  br label %53, !dbg !1107

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1055
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !296, metadata !DIExpression()), !dbg !1055
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !299, metadata !DIExpression()), !dbg !1055
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.54) #41, !dbg !1108
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !305, metadata !DIExpression()), !dbg !1055
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !1109
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !306, metadata !DIExpression()), !dbg !1055
  br label %58, !dbg !1110

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !1055
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !296, metadata !DIExpression()), !dbg !1055
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !306, metadata !DIExpression()), !dbg !1055
  %61 = load i8, ptr %59, align 1, !dbg !1111, !tbaa !1066
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !1112

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1113
  %64 = load i8, ptr %63, align 1, !dbg !1116, !tbaa !1066
  %65 = icmp ne i8 %64, 45, !dbg !1117
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1118
  br label %67, !dbg !1118

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !296, metadata !DIExpression()), !dbg !1055
  %69 = tail call ptr @__ctype_b_loc() #43, !dbg !1119
  %70 = load ptr, ptr %69, align 8, !dbg !1119, !tbaa !957
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1119
  %73 = load i16, ptr %72, align 2, !dbg !1119, !tbaa !1098
  %74 = and i16 %73, 8192, !dbg !1119
  %75 = icmp eq i16 %74, 0, !dbg !1119
  br i1 %75, label %89, label %76, !dbg !1121

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1122
  br i1 %77, label %91, label %78, !dbg !1125

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1126
  %80 = load i8, ptr %79, align 1, !dbg !1126, !tbaa !1066
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1126
  %83 = load i16, ptr %82, align 2, !dbg !1126, !tbaa !1098
  %84 = and i16 %83, 8192, !dbg !1126
  %85 = icmp eq i16 %84, 0, !dbg !1126
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1127
  br i1 %88, label %89, label %91, !dbg !1127

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1128
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !306, metadata !DIExpression()), !dbg !1055
  br label %58, !dbg !1110, !llvm.loop !1129

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !1055
  %92 = ptrtoint ptr %24 to i64, !dbg !1131
  %93 = load ptr, ptr @stdout, align 8, !dbg !1131, !tbaa !957
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1131
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata !1028, metadata !1074, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata !1028, metadata !1074, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata !1028, metadata !1074, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata !1028, metadata !1074, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata !1028, metadata !1074, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata !1028, metadata !1074, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata !1028, metadata !1074, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata !1028, metadata !1074, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata !1028, metadata !1074, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata !1028, metadata !1074, metadata !DIExpression()), !dbg !1150
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !362, metadata !DIExpression()), !dbg !1055
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.67, i64 noundef 6) #41, !dbg !1152
  %96 = icmp eq i32 %95, 0, !dbg !1152
  br i1 %96, label %100, label %97, !dbg !1154

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.68, i64 noundef 9) #41, !dbg !1155
  %99 = icmp eq i32 %98, 0, !dbg !1155
  br i1 %99, label %100, label %103, !dbg !1156

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1157
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #40, !dbg !1157
  br label %106, !dbg !1159

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1160
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #40, !dbg !1160
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1162, !tbaa !957
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.73, ptr noundef %107), !dbg !1162
  %109 = load ptr, ptr @stdout, align 8, !dbg !1163, !tbaa !957
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.74, ptr noundef %109), !dbg !1163
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1164
  %112 = sub i64 %111, %92, !dbg !1164
  %113 = load ptr, ptr @stdout, align 8, !dbg !1164, !tbaa !957
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1164
  %115 = load ptr, ptr @stdout, align 8, !dbg !1165, !tbaa !957
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.75, ptr noundef %115), !dbg !1165
  %117 = load ptr, ptr @stdout, align 8, !dbg !1166, !tbaa !957
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.76, ptr noundef %117), !dbg !1166
  %119 = load ptr, ptr @stdout, align 8, !dbg !1167, !tbaa !957
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1167
  br label %121, !dbg !1168

121:                                              ; preds = %106, %19
  ret void, !dbg !1168
}

declare !dbg !1169 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1172 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1176 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1180 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1182 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1185 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1188 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1191 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1194 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1200 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1201 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1207 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1211, metadata !DIExpression()), !dbg !1214
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1212, metadata !DIExpression()), !dbg !1214
  %3 = load ptr, ptr %1, align 8, !dbg !1215, !tbaa !957
  tail call void @set_program_name(ptr noundef %3) #40, !dbg !1216
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.47) #40, !dbg !1217
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #40, !dbg !1218
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.48) #40, !dbg !1219
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1220, metadata !DIExpression()), !dbg !1223
  store volatile i32 2, ptr @exit_failure, align 4, !dbg !1225, !tbaa !1057
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1227
  store ptr %1, ptr @argv, align 8, !dbg !1228, !tbaa !957
  store i32 %0, ptr @argc, align 4, !dbg !1229, !tbaa !1057
  store i32 1, ptr @pos, align 4, !dbg !1230, !tbaa !1057
  %8 = icmp slt i32 %0, 2, !dbg !1231
  br i1 %8, label %26, label %9, !dbg !1233

9:                                                ; preds = %2
  %10 = add nsw i32 %0, -1, !dbg !1234
  %11 = tail call fastcc i1 @posixtest(i32 noundef %10), !dbg !1235
  tail call void @llvm.dbg.value(metadata i1 %11, metadata !1213, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1214
  %12 = load i32, ptr @pos, align 4, !dbg !1236, !tbaa !1057
  %13 = load i32, ptr @argc, align 4, !dbg !1238, !tbaa !1057
  %14 = icmp eq i32 %12, %13, !dbg !1239
  br i1 %14, label %23, label %15, !dbg !1240

15:                                               ; preds = %9
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #40, !dbg !1241
  %17 = load ptr, ptr @argv, align 8, !dbg !1242, !tbaa !957
  %18 = load i32, ptr @pos, align 4, !dbg !1243, !tbaa !1057
  %19 = sext i32 %18 to i64, !dbg !1242
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19, !dbg !1242
  %21 = load ptr, ptr %20, align 8, !dbg !1242, !tbaa !957
  %22 = tail call ptr @quote(ptr noundef %21) #40, !dbg !1244
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %16, ptr noundef %22) #44, !dbg !1245
  unreachable, !dbg !1245

23:                                               ; preds = %9
  %24 = xor i1 %11, true, !dbg !1246
  %25 = zext i1 %24 to i32, !dbg !1246
  br label %26, !dbg !1246

26:                                               ; preds = %2, %23
  %27 = phi i32 [ %25, %23 ], [ 1, %2 ], !dbg !1214
  ret i32 %27, !dbg !1247
}

; Function Attrs: nounwind
declare !dbg !1248 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1251 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1252 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i1 @posixtest(i32 noundef %0) unnamed_addr #10 !dbg !1255 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1259, metadata !DIExpression()), !dbg !1261
  switch i32 %0, label %97 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %39
    i32 4, label %41
  ], !dbg !1262

2:                                                ; preds = %1
  %3 = load ptr, ptr @argv, align 8, !dbg !1263, !tbaa !957
  %4 = load i32, ptr @pos, align 4, !dbg !1269, !tbaa !1057
  %5 = add nsw i32 %4, 1, !dbg !1269
  store i32 %5, ptr @pos, align 4, !dbg !1269, !tbaa !1057
  %6 = sext i32 %4 to i64, !dbg !1263
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6, !dbg !1263
  %8 = load ptr, ptr %7, align 8, !dbg !1263, !tbaa !957
  %9 = load i8, ptr %8, align 1, !dbg !1263, !tbaa !1066
  %10 = icmp ne i8 %9, 0, !dbg !1270
  tail call void @llvm.dbg.value(metadata i1 %10, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1261
  br label %109, !dbg !1271

11:                                               ; preds = %1
  %12 = load ptr, ptr @argv, align 8, !dbg !1272, !tbaa !957
  %13 = load i32, ptr @pos, align 4, !dbg !1278, !tbaa !1057
  %14 = sext i32 %13 to i64, !dbg !1272
  %15 = getelementptr ptr, ptr %12, i64 %14, !dbg !1272
  %16 = load ptr, ptr %15, align 8, !dbg !1272, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %16, metadata !1068, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1074, metadata !DIExpression()), !dbg !1279
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(2) @.str.85) #41, !dbg !1281
  %18 = icmp eq i32 %17, 0, !dbg !1282
  br i1 %18, label %19, label %25, !dbg !1283

19:                                               ; preds = %11
  %20 = add nsw i32 %13, 2, !dbg !1284
  store i32 %20, ptr @pos, align 4, !dbg !1284, !tbaa !1057
  %21 = getelementptr ptr, ptr %15, i64 1, !dbg !1287
  %22 = load ptr, ptr %21, align 8, !dbg !1287, !tbaa !957
  %23 = load i8, ptr %22, align 1, !dbg !1287, !tbaa !1066
  %24 = icmp eq i8 %23, 0, !dbg !1288
  call void @llvm.dbg.value(metadata i1 %24, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1289
  br label %109, !dbg !1290

25:                                               ; preds = %11
  %26 = load i8, ptr %16, align 1, !dbg !1291, !tbaa !1066
  %27 = icmp eq i8 %26, 45, !dbg !1293
  br i1 %27, label %28, label %38, !dbg !1294

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1295
  %30 = load i8, ptr %29, align 1, !dbg !1295, !tbaa !1066
  %31 = icmp eq i8 %30, 0, !dbg !1296
  br i1 %31, label %38, label %32, !dbg !1297

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %16, i64 2, !dbg !1298
  %34 = load i8, ptr %33, align 1, !dbg !1298, !tbaa !1066
  %35 = icmp eq i8 %34, 0, !dbg !1299
  br i1 %35, label %36, label %38, !dbg !1300

36:                                               ; preds = %32
  %37 = tail call fastcc i1 @unary_operator(), !dbg !1301
  call void @llvm.dbg.value(metadata i1 %37, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1289
  br label %109

38:                                               ; preds = %32, %28, %25
  tail call fastcc void @beyond() #44, !dbg !1303
  unreachable, !dbg !1303

39:                                               ; preds = %1
  %40 = tail call fastcc i1 @three_arguments(), !dbg !1304
  tail call void @llvm.dbg.value(metadata i1 %40, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1261
  br label %109, !dbg !1305

41:                                               ; preds = %1
  %42 = load ptr, ptr @argv, align 8, !dbg !1306, !tbaa !957
  %43 = load i32, ptr @pos, align 4, !dbg !1308, !tbaa !1057
  %44 = sext i32 %43 to i64, !dbg !1306
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44, !dbg !1306
  %46 = load ptr, ptr %45, align 8, !dbg !1306, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %46, metadata !1068, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1074, metadata !DIExpression()), !dbg !1309
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(2) @.str.85) #41, !dbg !1311
  %48 = icmp eq i32 %47, 0, !dbg !1312
  br i1 %48, label %49, label %57, !dbg !1313

49:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1319
  %50 = add nsw i32 %43, 1, !dbg !1322
  store i32 %50, ptr @pos, align 4, !dbg !1322, !tbaa !1057
  %51 = load i32, ptr @argc, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %54, label %53, !dbg !1323

53:                                               ; preds = %49
  tail call fastcc void @beyond(), !dbg !1325
  unreachable, !dbg !1325

54:                                               ; preds = %49
  %55 = tail call fastcc i1 @three_arguments(), !dbg !1326
  %56 = xor i1 %55, true, !dbg !1327
  tail call void @llvm.dbg.value(metadata i1 %56, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1261
  br label %109, !dbg !1328

57:                                               ; preds = %41
  call void @llvm.dbg.value(metadata ptr %46, metadata !1068, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata ptr @.str.86, metadata !1074, metadata !DIExpression()), !dbg !1329
  %58 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(2) @.str.86) #41, !dbg !1332
  %59 = icmp eq i32 %58, 0, !dbg !1333
  br i1 %59, label %60, label %102, !dbg !1334

60:                                               ; preds = %57
  %61 = getelementptr ptr, ptr %45, i64 3, !dbg !1335
  %62 = load ptr, ptr %61, align 8, !dbg !1335, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %62, metadata !1068, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1074, metadata !DIExpression()), !dbg !1336
  %63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(2) @.str.87) #41, !dbg !1338
  %64 = icmp eq i32 %63, 0, !dbg !1339
  br i1 %64, label %65, label %102, !dbg !1340

65:                                               ; preds = %60
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1341
  %66 = add nsw i32 %43, 1, !dbg !1344
  store i32 %66, ptr @pos, align 4, !dbg !1344, !tbaa !1057
  %67 = sext i32 %66 to i64, !dbg !1345
  %68 = getelementptr ptr, ptr %42, i64 %67, !dbg !1345
  %69 = load ptr, ptr %68, align 8, !dbg !1345, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %69, metadata !1068, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1074, metadata !DIExpression()), !dbg !1347
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(2) @.str.85) #41, !dbg !1349
  %71 = icmp eq i32 %70, 0, !dbg !1350
  br i1 %71, label %72, label %78, !dbg !1351

72:                                               ; preds = %65
  %73 = add nsw i32 %43, 3, !dbg !1352
  %74 = getelementptr ptr, ptr %68, i64 1, !dbg !1354
  %75 = load ptr, ptr %74, align 8, !dbg !1354, !tbaa !957
  %76 = load i8, ptr %75, align 1, !dbg !1354, !tbaa !1066
  %77 = icmp eq i8 %76, 0, !dbg !1355
  call void @llvm.dbg.value(metadata i1 %77, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1356
  br label %93, !dbg !1357

78:                                               ; preds = %65
  %79 = load i8, ptr %69, align 1, !dbg !1358, !tbaa !1066
  %80 = icmp eq i8 %79, 45, !dbg !1359
  br i1 %80, label %81, label %92, !dbg !1360

81:                                               ; preds = %78
  %82 = getelementptr inbounds i8, ptr %69, i64 1, !dbg !1361
  %83 = load i8, ptr %82, align 1, !dbg !1361, !tbaa !1066
  %84 = icmp eq i8 %83, 0, !dbg !1362
  br i1 %84, label %92, label %85, !dbg !1363

85:                                               ; preds = %81
  %86 = getelementptr inbounds i8, ptr %69, i64 2, !dbg !1364
  %87 = load i8, ptr %86, align 1, !dbg !1364, !tbaa !1066
  %88 = icmp eq i8 %87, 0, !dbg !1365
  br i1 %88, label %89, label %92, !dbg !1366

89:                                               ; preds = %85
  %90 = tail call fastcc i1 @unary_operator(), !dbg !1367
  call void @llvm.dbg.value(metadata i1 %90, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1356
  %91 = load i32, ptr @pos, align 4, !dbg !1368, !tbaa !1057
  br label %93

92:                                               ; preds = %85, %81, %78
  tail call fastcc void @beyond() #44, !dbg !1370
  unreachable, !dbg !1370

93:                                               ; preds = %72, %89
  %94 = phi i32 [ %73, %72 ], [ %91, %89 ], !dbg !1368
  %95 = phi i1 [ %77, %72 ], [ %90, %89 ]
  call void @llvm.dbg.value(metadata i1 %95, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1356
  tail call void @llvm.dbg.value(metadata i1 %95, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1261
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1371
  %96 = add nsw i32 %94, 1, !dbg !1368
  store i32 %96, ptr @pos, align 4, !dbg !1368, !tbaa !1057
  br label %109, !dbg !1372

97:                                               ; preds = %1
  %98 = icmp sgt i32 %0, 0, !dbg !1373
  br i1 %98, label %99, label %101, !dbg !1376

99:                                               ; preds = %97
  %100 = load i32, ptr @pos, align 4, !dbg !1377, !tbaa !1057
  br label %102, !dbg !1376

101:                                              ; preds = %97
  tail call void @__assert_fail(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, i32 noundef 651, ptr noundef nonnull @__PRETTY_FUNCTION__.posixtest) #42, !dbg !1373
  unreachable, !dbg !1373

102:                                              ; preds = %99, %57, %60
  %103 = phi i32 [ %100, %99 ], [ %43, %57 ], [ %43, %60 ], !dbg !1377
  %104 = load i32, ptr @argc, align 4, !dbg !1381, !tbaa !1057
  %105 = icmp slt i32 %103, %104, !dbg !1382
  br i1 %105, label %107, label %106, !dbg !1383

106:                                              ; preds = %102
  tail call fastcc void @beyond() #44, !dbg !1384
  unreachable, !dbg !1384

107:                                              ; preds = %102
  %108 = tail call fastcc i1 @or(), !dbg !1385
  tail call void @llvm.dbg.value(metadata i1 %108, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1261
  br label %109, !dbg !1386

109:                                              ; preds = %36, %19, %107, %93, %54, %39, %2
  %110 = phi i1 [ %108, %107 ], [ %56, %54 ], [ %95, %93 ], [ %40, %39 ], [ %10, %2 ], [ %24, %19 ], [ %37, %36 ]
  tail call void @llvm.dbg.value(metadata i1 %110, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1261
  ret i1 %110, !dbg !1387
}

; Function Attrs: noreturn nounwind uwtable
define internal void @test_syntax_error(ptr noundef %0, ...) unnamed_addr #0 !dbg !1388 {
  %2 = alloca %struct.__va_list, align 8, !DIAssignID !1404
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1393, metadata !DIExpression(), metadata !1404, metadata ptr %2, metadata !DIExpression()), !dbg !1405
  %3 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1392, metadata !DIExpression()), !dbg !1405
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #40, !dbg !1406
  call void @llvm.va_start(ptr nonnull %2), !dbg !1407
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #40, !dbg !1408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !1408, !tbaa.struct !1409
  call void @verror(i32 noundef 0, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %3) #45, !dbg !1408
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #40, !dbg !1408
  call void @exit(i32 noundef 2) #42, !dbg !1410
  unreachable, !dbg !1410
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind uwtable
define internal fastcc i1 @unary_operator() unnamed_addr #10 !dbg !1411 {
  %1 = alloca [1 x i8], align 1, !DIAssignID !1464
  %2 = alloca %struct.stat, align 8, !DIAssignID !1465
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1413, metadata !DIExpression(), metadata !1465, metadata ptr %2, metadata !DIExpression()), !dbg !1466
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #40, !dbg !1467
  %3 = load ptr, ptr @argv, align 8, !dbg !1468, !tbaa !957
  %4 = load i32, ptr @pos, align 4, !dbg !1469, !tbaa !1057
  %5 = sext i32 %4 to i64, !dbg !1468
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5, !dbg !1468
  %7 = load ptr, ptr %6, align 8, !dbg !1468, !tbaa !957
  %8 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !1468
  %9 = load i8, ptr %8, align 1, !dbg !1468, !tbaa !1066
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
  ], !dbg !1470

10:                                               ; preds = %0
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.90, i32 noundef 5) #40, !dbg !1471
  %12 = load ptr, ptr @argv, align 8, !dbg !1472, !tbaa !957
  %13 = load i32, ptr @pos, align 4, !dbg !1473, !tbaa !1057
  %14 = sext i32 %13 to i64, !dbg !1472
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14, !dbg !1472
  %16 = load ptr, ptr %15, align 8, !dbg !1472, !tbaa !957
  %17 = tail call ptr @quote(ptr noundef %16) #40, !dbg !1474
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %11, ptr noundef %17) #44, !dbg !1475
  unreachable, !dbg !1475

18:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1476
  %19 = add nsw i32 %4, 1, !dbg !1480
  store i32 %19, ptr @pos, align 4, !dbg !1480, !tbaa !1057
  %20 = load i32, ptr @argc, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %23, label %22, !dbg !1481

22:                                               ; preds = %18
  tail call fastcc void @beyond(), !dbg !1482
  unreachable, !dbg !1482

23:                                               ; preds = %18
  %24 = add nsw i32 %4, 2, !dbg !1483
  store i32 %24, ptr @pos, align 4, !dbg !1483, !tbaa !1057
  %25 = sext i32 %24 to i64, !dbg !1484
  %26 = getelementptr ptr, ptr %3, i64 %25, !dbg !1484
  %27 = getelementptr ptr, ptr %26, i64 -1, !dbg !1484
  %28 = load ptr, ptr %27, align 8, !dbg !1484, !tbaa !957
  %29 = call i32 @stat(ptr noundef %28, ptr noundef nonnull %2) #40, !dbg !1485
  %30 = icmp eq i32 %29, 0, !dbg !1486
  br label %388, !dbg !1487

31:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1488
  %32 = add nsw i32 %4, 1, !dbg !1491
  store i32 %32, ptr @pos, align 4, !dbg !1491, !tbaa !1057
  %33 = load i32, ptr @argc, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %36, label %35, !dbg !1492

35:                                               ; preds = %31
  tail call fastcc void @beyond(), !dbg !1493
  unreachable, !dbg !1493

36:                                               ; preds = %31
  %37 = add nsw i32 %4, 2, !dbg !1494
  store i32 %37, ptr @pos, align 4, !dbg !1494, !tbaa !1057
  %38 = sext i32 %37 to i64, !dbg !1495
  %39 = getelementptr ptr, ptr %3, i64 %38, !dbg !1495
  %40 = getelementptr ptr, ptr %39, i64 -1, !dbg !1495
  %41 = load ptr, ptr %40, align 8, !dbg !1495, !tbaa !957
  %42 = tail call i32 @euidaccess(ptr noundef %41, i32 noundef 4) #40, !dbg !1496
  %43 = icmp eq i32 %42, 0, !dbg !1497
  br label %388, !dbg !1498

44:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1499
  %45 = add nsw i32 %4, 1, !dbg !1502
  store i32 %45, ptr @pos, align 4, !dbg !1502, !tbaa !1057
  %46 = load i32, ptr @argc, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %49, label %48, !dbg !1503

48:                                               ; preds = %44
  tail call fastcc void @beyond(), !dbg !1504
  unreachable, !dbg !1504

49:                                               ; preds = %44
  %50 = add nsw i32 %4, 2, !dbg !1505
  store i32 %50, ptr @pos, align 4, !dbg !1505, !tbaa !1057
  %51 = sext i32 %50 to i64, !dbg !1506
  %52 = getelementptr ptr, ptr %3, i64 %51, !dbg !1506
  %53 = getelementptr ptr, ptr %52, i64 -1, !dbg !1506
  %54 = load ptr, ptr %53, align 8, !dbg !1506, !tbaa !957
  %55 = tail call i32 @euidaccess(ptr noundef %54, i32 noundef 2) #40, !dbg !1507
  %56 = icmp eq i32 %55, 0, !dbg !1508
  br label %388, !dbg !1509

57:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1510
  %58 = add nsw i32 %4, 1, !dbg !1513
  store i32 %58, ptr @pos, align 4, !dbg !1513, !tbaa !1057
  %59 = load i32, ptr @argc, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %62, label %61, !dbg !1514

61:                                               ; preds = %57
  tail call fastcc void @beyond(), !dbg !1515
  unreachable, !dbg !1515

62:                                               ; preds = %57
  %63 = add nsw i32 %4, 2, !dbg !1516
  store i32 %63, ptr @pos, align 4, !dbg !1516, !tbaa !1057
  %64 = sext i32 %63 to i64, !dbg !1517
  %65 = getelementptr ptr, ptr %3, i64 %64, !dbg !1517
  %66 = getelementptr ptr, ptr %65, i64 -1, !dbg !1517
  %67 = load ptr, ptr %66, align 8, !dbg !1517, !tbaa !957
  %68 = tail call i32 @euidaccess(ptr noundef %67, i32 noundef 1) #40, !dbg !1518
  %69 = icmp eq i32 %68, 0, !dbg !1519
  br label %388, !dbg !1520

70:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1521
  %71 = add nsw i32 %4, 1, !dbg !1524
  store i32 %71, ptr @pos, align 4, !dbg !1524, !tbaa !1057
  %72 = load i32, ptr @argc, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %75, label %74, !dbg !1525

74:                                               ; preds = %70
  tail call fastcc void @beyond(), !dbg !1526
  unreachable, !dbg !1526

75:                                               ; preds = %70
  %76 = add nsw i32 %4, 2, !dbg !1527
  store i32 %76, ptr @pos, align 4, !dbg !1527, !tbaa !1057
  %77 = sext i32 %76 to i64, !dbg !1528
  %78 = getelementptr ptr, ptr %3, i64 %77, !dbg !1528
  %79 = getelementptr ptr, ptr %78, i64 -1, !dbg !1528
  %80 = load ptr, ptr %79, align 8, !dbg !1528, !tbaa !957
  %81 = call i32 @stat(ptr noundef %80, ptr noundef nonnull %2) #40, !dbg !1530
  %82 = icmp eq i32 %81, 0, !dbg !1531
  br i1 %82, label %83, label %388, !dbg !1532

83:                                               ; preds = %75
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1533, metadata !DIExpression()), !dbg !1541
  %84 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 12, !dbg !1543
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1448, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1544
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1448, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1544
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !1548
  %85 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 13, !dbg !1550
  %86 = load <2 x i64>, ptr %84, align 8, !dbg !1543
  %87 = load <2 x i64>, ptr %85, align 8, !dbg !1550
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1451, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1544
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1451, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1544
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !1551, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1558
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !1551, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1558
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !1557, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1558
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !1557, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1558
  %88 = icmp sgt <2 x i64> %87, %86, !dbg !1560
  %89 = zext <2 x i1> %88 to <2 x i32>, !dbg !1560
  %90 = icmp slt <2 x i64> %87, %86, !dbg !1560
  %91 = sext <2 x i1> %90 to <2 x i32>, !dbg !1560
  %92 = add nsw <2 x i32> %91, %89, !dbg !1560
  %93 = extractelement <2 x i32> %92, i64 0, !dbg !1561
  %94 = shl nsw i32 %93, 1, !dbg !1561
  %95 = extractelement <2 x i32> %92, i64 1, !dbg !1562
  %96 = add nsw i32 %95, %94, !dbg !1562
  %97 = icmp sgt i32 %96, 0, !dbg !1563
  br label %388

98:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1564
  %99 = add nsw i32 %4, 1, !dbg !1567
  store i32 %99, ptr @pos, align 4, !dbg !1567, !tbaa !1057
  %100 = load i32, ptr @argc, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %103, label %102, !dbg !1568

102:                                              ; preds = %98
  tail call fastcc void @beyond(), !dbg !1569
  unreachable, !dbg !1569

103:                                              ; preds = %98
  %104 = add nsw i32 %4, 2, !dbg !1570
  store i32 %104, ptr @pos, align 4, !dbg !1570, !tbaa !1057
  %105 = sext i32 %104 to i64, !dbg !1571
  %106 = getelementptr ptr, ptr %3, i64 %105, !dbg !1571
  %107 = getelementptr ptr, ptr %106, i64 -1, !dbg !1571
  %108 = load ptr, ptr %107, align 8, !dbg !1571, !tbaa !957
  %109 = call i32 @stat(ptr noundef %108, ptr noundef nonnull %2) #40, !dbg !1573
  %110 = icmp eq i32 %109, 0, !dbg !1574
  br i1 %110, label %111, label %388, !dbg !1575

111:                                              ; preds = %103
  %112 = tail call ptr @__errno_location() #43, !dbg !1576
  store i32 0, ptr %112, align 4, !dbg !1577, !tbaa !1057
  %113 = tail call i32 @geteuid() #40, !dbg !1578
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !1452, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1456, metadata !DIExpression()), !dbg !1579
  %114 = icmp eq i32 %113, -1, !dbg !1580
  br i1 %114, label %115, label %118, !dbg !1581

115:                                              ; preds = %111
  %116 = load i32, ptr %112, align 4, !dbg !1582, !tbaa !1057
  %117 = icmp eq i32 %116, 0, !dbg !1582
  br i1 %117, label %118, label %388, !dbg !1583

118:                                              ; preds = %115, %111
  %119 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 4, !dbg !1584
  %120 = load i32, ptr %119, align 8, !dbg !1584, !tbaa !1585
  %121 = icmp eq i32 %113, %120, !dbg !1589
  br label %388

122:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1590
  %123 = add nsw i32 %4, 1, !dbg !1593
  store i32 %123, ptr @pos, align 4, !dbg !1593, !tbaa !1057
  %124 = load i32, ptr @argc, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %127, label %126, !dbg !1594

126:                                              ; preds = %122
  tail call fastcc void @beyond(), !dbg !1595
  unreachable, !dbg !1595

127:                                              ; preds = %122
  %128 = add nsw i32 %4, 2, !dbg !1596
  store i32 %128, ptr @pos, align 4, !dbg !1596, !tbaa !1057
  %129 = sext i32 %128 to i64, !dbg !1597
  %130 = getelementptr ptr, ptr %3, i64 %129, !dbg !1597
  %131 = getelementptr ptr, ptr %130, i64 -1, !dbg !1597
  %132 = load ptr, ptr %131, align 8, !dbg !1597, !tbaa !957
  %133 = call i32 @stat(ptr noundef %132, ptr noundef nonnull %2) #40, !dbg !1599
  %134 = icmp eq i32 %133, 0, !dbg !1600
  br i1 %134, label %135, label %388, !dbg !1601

135:                                              ; preds = %127
  %136 = tail call ptr @__errno_location() #43, !dbg !1602
  store i32 0, ptr %136, align 4, !dbg !1603, !tbaa !1057
  %137 = tail call i32 @getegid() #40, !dbg !1604
  tail call void @llvm.dbg.value(metadata i32 %137, metadata !1457, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1460, metadata !DIExpression()), !dbg !1605
  %138 = icmp eq i32 %137, -1, !dbg !1606
  br i1 %138, label %139, label %142, !dbg !1607

139:                                              ; preds = %135
  %140 = load i32, ptr %136, align 4, !dbg !1608, !tbaa !1057
  %141 = icmp eq i32 %140, 0, !dbg !1608
  br i1 %141, label %142, label %388, !dbg !1609

142:                                              ; preds = %139, %135
  %143 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 5, !dbg !1610
  %144 = load i32, ptr %143, align 4, !dbg !1610, !tbaa !1611
  %145 = icmp eq i32 %137, %144, !dbg !1612
  br label %388

146:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1613
  %147 = add nsw i32 %4, 1, !dbg !1616
  store i32 %147, ptr @pos, align 4, !dbg !1616, !tbaa !1057
  %148 = load i32, ptr @argc, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %151, label %150, !dbg !1617

150:                                              ; preds = %146
  tail call fastcc void @beyond(), !dbg !1618
  unreachable, !dbg !1618

151:                                              ; preds = %146
  %152 = add nsw i32 %4, 2, !dbg !1619
  store i32 %152, ptr @pos, align 4, !dbg !1619, !tbaa !1057
  %153 = sext i32 %152 to i64, !dbg !1620
  %154 = getelementptr ptr, ptr %3, i64 %153, !dbg !1620
  %155 = getelementptr ptr, ptr %154, i64 -1, !dbg !1620
  %156 = load ptr, ptr %155, align 8, !dbg !1620, !tbaa !957
  %157 = call i32 @stat(ptr noundef %156, ptr noundef nonnull %2) #40, !dbg !1621
  %158 = icmp eq i32 %157, 0, !dbg !1622
  %159 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1623
  %160 = load i32, ptr %159, align 8, !dbg !1623
  %161 = and i32 %160, 61440, !dbg !1623
  %162 = icmp eq i32 %161, 32768, !dbg !1623
  %163 = select i1 %158, i1 %162, i1 false, !dbg !1623
  br label %388, !dbg !1624

164:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1625
  %165 = add nsw i32 %4, 1, !dbg !1628
  store i32 %165, ptr @pos, align 4, !dbg !1628, !tbaa !1057
  %166 = load i32, ptr @argc, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %169, label %168, !dbg !1629

168:                                              ; preds = %164
  tail call fastcc void @beyond(), !dbg !1630
  unreachable, !dbg !1630

169:                                              ; preds = %164
  %170 = add nsw i32 %4, 2, !dbg !1631
  store i32 %170, ptr @pos, align 4, !dbg !1631, !tbaa !1057
  %171 = sext i32 %170 to i64, !dbg !1632
  %172 = getelementptr ptr, ptr %3, i64 %171, !dbg !1632
  %173 = getelementptr ptr, ptr %172, i64 -1, !dbg !1632
  %174 = load ptr, ptr %173, align 8, !dbg !1632, !tbaa !957
  %175 = call i32 @stat(ptr noundef %174, ptr noundef nonnull %2) #40, !dbg !1633
  %176 = icmp eq i32 %175, 0, !dbg !1634
  %177 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1635
  %178 = load i32, ptr %177, align 8, !dbg !1635
  %179 = and i32 %178, 61440, !dbg !1635
  %180 = icmp eq i32 %179, 16384, !dbg !1635
  %181 = select i1 %176, i1 %180, i1 false, !dbg !1635
  br label %388, !dbg !1636

182:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1637
  %183 = add nsw i32 %4, 1, !dbg !1640
  store i32 %183, ptr @pos, align 4, !dbg !1640, !tbaa !1057
  %184 = load i32, ptr @argc, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %187, label %186, !dbg !1641

186:                                              ; preds = %182
  tail call fastcc void @beyond(), !dbg !1642
  unreachable, !dbg !1642

187:                                              ; preds = %182
  %188 = add nsw i32 %4, 2, !dbg !1643
  store i32 %188, ptr @pos, align 4, !dbg !1643, !tbaa !1057
  %189 = sext i32 %188 to i64, !dbg !1644
  %190 = getelementptr ptr, ptr %3, i64 %189, !dbg !1644
  %191 = getelementptr ptr, ptr %190, i64 -1, !dbg !1644
  %192 = load ptr, ptr %191, align 8, !dbg !1644, !tbaa !957
  %193 = call i32 @stat(ptr noundef %192, ptr noundef nonnull %2) #40, !dbg !1645
  %194 = icmp eq i32 %193, 0, !dbg !1646
  %195 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8, !dbg !1647
  %196 = load i64, ptr %195, align 8, !dbg !1647
  %197 = icmp sgt i64 %196, 0, !dbg !1647
  %198 = select i1 %194, i1 %197, i1 false, !dbg !1647
  br label %388, !dbg !1648

199:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1649
  %200 = add nsw i32 %4, 1, !dbg !1652
  store i32 %200, ptr @pos, align 4, !dbg !1652, !tbaa !1057
  %201 = load i32, ptr @argc, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %204, label %203, !dbg !1653

203:                                              ; preds = %199
  tail call fastcc void @beyond(), !dbg !1654
  unreachable, !dbg !1654

204:                                              ; preds = %199
  %205 = add nsw i32 %4, 2, !dbg !1655
  store i32 %205, ptr @pos, align 4, !dbg !1655, !tbaa !1057
  %206 = sext i32 %205 to i64, !dbg !1656
  %207 = getelementptr ptr, ptr %3, i64 %206, !dbg !1656
  %208 = getelementptr ptr, ptr %207, i64 -1, !dbg !1656
  %209 = load ptr, ptr %208, align 8, !dbg !1656, !tbaa !957
  %210 = call i32 @stat(ptr noundef %209, ptr noundef nonnull %2) #40, !dbg !1657
  %211 = icmp eq i32 %210, 0, !dbg !1658
  %212 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1659
  %213 = load i32, ptr %212, align 8, !dbg !1659
  %214 = and i32 %213, 61440, !dbg !1659
  %215 = icmp eq i32 %214, 49152, !dbg !1659
  %216 = select i1 %211, i1 %215, i1 false, !dbg !1659
  br label %388, !dbg !1660

217:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1661
  %218 = add nsw i32 %4, 1, !dbg !1664
  store i32 %218, ptr @pos, align 4, !dbg !1664, !tbaa !1057
  %219 = load i32, ptr @argc, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %222, label %221, !dbg !1665

221:                                              ; preds = %217
  tail call fastcc void @beyond(), !dbg !1666
  unreachable, !dbg !1666

222:                                              ; preds = %217
  %223 = add nsw i32 %4, 2, !dbg !1667
  store i32 %223, ptr @pos, align 4, !dbg !1667, !tbaa !1057
  %224 = sext i32 %223 to i64, !dbg !1668
  %225 = getelementptr ptr, ptr %3, i64 %224, !dbg !1668
  %226 = getelementptr ptr, ptr %225, i64 -1, !dbg !1668
  %227 = load ptr, ptr %226, align 8, !dbg !1668, !tbaa !957
  %228 = call i32 @stat(ptr noundef %227, ptr noundef nonnull %2) #40, !dbg !1669
  %229 = icmp eq i32 %228, 0, !dbg !1670
  %230 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1671
  %231 = load i32, ptr %230, align 8, !dbg !1671
  %232 = and i32 %231, 61440, !dbg !1671
  %233 = icmp eq i32 %232, 8192, !dbg !1671
  %234 = select i1 %229, i1 %233, i1 false, !dbg !1671
  br label %388, !dbg !1672

235:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1673
  %236 = add nsw i32 %4, 1, !dbg !1676
  store i32 %236, ptr @pos, align 4, !dbg !1676, !tbaa !1057
  %237 = load i32, ptr @argc, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %240, label %239, !dbg !1677

239:                                              ; preds = %235
  tail call fastcc void @beyond(), !dbg !1678
  unreachable, !dbg !1678

240:                                              ; preds = %235
  %241 = add nsw i32 %4, 2, !dbg !1679
  store i32 %241, ptr @pos, align 4, !dbg !1679, !tbaa !1057
  %242 = sext i32 %241 to i64, !dbg !1680
  %243 = getelementptr ptr, ptr %3, i64 %242, !dbg !1680
  %244 = getelementptr ptr, ptr %243, i64 -1, !dbg !1680
  %245 = load ptr, ptr %244, align 8, !dbg !1680, !tbaa !957
  %246 = call i32 @stat(ptr noundef %245, ptr noundef nonnull %2) #40, !dbg !1681
  %247 = icmp eq i32 %246, 0, !dbg !1682
  %248 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1683
  %249 = load i32, ptr %248, align 8, !dbg !1683
  %250 = and i32 %249, 61440, !dbg !1683
  %251 = icmp eq i32 %250, 24576, !dbg !1683
  %252 = select i1 %247, i1 %251, i1 false, !dbg !1683
  br label %388, !dbg !1684

253:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1685
  %254 = add nsw i32 %4, 1, !dbg !1688
  store i32 %254, ptr @pos, align 4, !dbg !1688, !tbaa !1057
  %255 = load i32, ptr @argc, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %258, label %257, !dbg !1689

257:                                              ; preds = %253
  tail call fastcc void @beyond(), !dbg !1690
  unreachable, !dbg !1690

258:                                              ; preds = %253
  %259 = add nsw i32 %4, 2, !dbg !1691
  store i32 %259, ptr @pos, align 4, !dbg !1691, !tbaa !1057
  %260 = sext i32 %259 to i64, !dbg !1692
  %261 = getelementptr ptr, ptr %3, i64 %260, !dbg !1692
  %262 = getelementptr ptr, ptr %261, i64 -1, !dbg !1692
  %263 = load ptr, ptr %262, align 8, !dbg !1692, !tbaa !957
  %264 = call i32 @stat(ptr noundef %263, ptr noundef nonnull %2) #40, !dbg !1693
  %265 = icmp eq i32 %264, 0, !dbg !1694
  %266 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1695
  %267 = load i32, ptr %266, align 8, !dbg !1695
  %268 = and i32 %267, 61440, !dbg !1695
  %269 = icmp eq i32 %268, 4096, !dbg !1695
  %270 = select i1 %265, i1 %269, i1 false, !dbg !1695
  br label %388, !dbg !1696

271:                                              ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1697
  %272 = add nsw i32 %4, 1, !dbg !1700
  store i32 %272, ptr @pos, align 4, !dbg !1700, !tbaa !1057
  %273 = load i32, ptr @argc, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %276, label %275, !dbg !1701

275:                                              ; preds = %271
  tail call fastcc void @beyond(), !dbg !1702
  unreachable, !dbg !1702

276:                                              ; preds = %271
  %277 = add nsw i32 %4, 2, !dbg !1703
  store i32 %277, ptr @pos, align 4, !dbg !1703, !tbaa !1057
  %278 = sext i32 %277 to i64, !dbg !1704
  %279 = getelementptr ptr, ptr %3, i64 %278, !dbg !1704
  %280 = getelementptr ptr, ptr %279, i64 -1, !dbg !1704
  %281 = load ptr, ptr %280, align 8, !dbg !1704, !tbaa !957
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1705, metadata !DIExpression(), metadata !1464, metadata ptr %1, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata ptr %281, metadata !1711, metadata !DIExpression()), !dbg !1712
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #40, !dbg !1714
  %282 = call i64 @readlink(ptr noundef nonnull %281, ptr noundef nonnull %1, i64 noundef 1) #40, !dbg !1715
  %283 = icmp sgt i64 %282, -1, !dbg !1717
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #40, !dbg !1718
  br label %388, !dbg !1719

284:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1720
  %285 = add nsw i32 %4, 1, !dbg !1723
  store i32 %285, ptr @pos, align 4, !dbg !1723, !tbaa !1057
  %286 = load i32, ptr @argc, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %289, label %288, !dbg !1724

288:                                              ; preds = %284
  tail call fastcc void @beyond(), !dbg !1725
  unreachable, !dbg !1725

289:                                              ; preds = %284
  %290 = add nsw i32 %4, 2, !dbg !1726
  store i32 %290, ptr @pos, align 4, !dbg !1726, !tbaa !1057
  %291 = sext i32 %290 to i64, !dbg !1727
  %292 = getelementptr ptr, ptr %3, i64 %291, !dbg !1727
  %293 = getelementptr ptr, ptr %292, i64 -1, !dbg !1727
  %294 = load ptr, ptr %293, align 8, !dbg !1727, !tbaa !957
  %295 = call i32 @stat(ptr noundef %294, ptr noundef nonnull %2) #40, !dbg !1728
  %296 = icmp eq i32 %295, 0, !dbg !1729
  %297 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1730
  %298 = load i32, ptr %297, align 8, !dbg !1730
  %299 = and i32 %298, 2048, !dbg !1730
  %300 = icmp ne i32 %299, 0, !dbg !1730
  %301 = select i1 %296, i1 %300, i1 false, !dbg !1730
  br label %388, !dbg !1731

302:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1732
  %303 = add nsw i32 %4, 1, !dbg !1735
  store i32 %303, ptr @pos, align 4, !dbg !1735, !tbaa !1057
  %304 = load i32, ptr @argc, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %307, label %306, !dbg !1736

306:                                              ; preds = %302
  tail call fastcc void @beyond(), !dbg !1737
  unreachable, !dbg !1737

307:                                              ; preds = %302
  %308 = add nsw i32 %4, 2, !dbg !1738
  store i32 %308, ptr @pos, align 4, !dbg !1738, !tbaa !1057
  %309 = sext i32 %308 to i64, !dbg !1739
  %310 = getelementptr ptr, ptr %3, i64 %309, !dbg !1739
  %311 = getelementptr ptr, ptr %310, i64 -1, !dbg !1739
  %312 = load ptr, ptr %311, align 8, !dbg !1739, !tbaa !957
  %313 = call i32 @stat(ptr noundef %312, ptr noundef nonnull %2) #40, !dbg !1740
  %314 = icmp eq i32 %313, 0, !dbg !1741
  %315 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1742
  %316 = load i32, ptr %315, align 8, !dbg !1742
  %317 = and i32 %316, 1024, !dbg !1742
  %318 = icmp ne i32 %317, 0, !dbg !1742
  %319 = select i1 %314, i1 %318, i1 false, !dbg !1742
  br label %388, !dbg !1743

320:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1744
  %321 = add nsw i32 %4, 1, !dbg !1747
  store i32 %321, ptr @pos, align 4, !dbg !1747, !tbaa !1057
  %322 = load i32, ptr @argc, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %325, label %324, !dbg !1748

324:                                              ; preds = %320
  tail call fastcc void @beyond(), !dbg !1749
  unreachable, !dbg !1749

325:                                              ; preds = %320
  %326 = add nsw i32 %4, 2, !dbg !1750
  store i32 %326, ptr @pos, align 4, !dbg !1750, !tbaa !1057
  %327 = sext i32 %326 to i64, !dbg !1751
  %328 = getelementptr ptr, ptr %3, i64 %327, !dbg !1751
  %329 = getelementptr ptr, ptr %328, i64 -1, !dbg !1751
  %330 = load ptr, ptr %329, align 8, !dbg !1751, !tbaa !957
  %331 = call i32 @stat(ptr noundef %330, ptr noundef nonnull %2) #40, !dbg !1752
  %332 = icmp eq i32 %331, 0, !dbg !1753
  %333 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1754
  %334 = load i32, ptr %333, align 8, !dbg !1754
  %335 = and i32 %334, 512, !dbg !1754
  %336 = icmp ne i32 %335, 0, !dbg !1754
  %337 = select i1 %332, i1 %336, i1 false, !dbg !1754
  br label %388, !dbg !1755

338:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1756
  %339 = add nsw i32 %4, 1, !dbg !1759
  store i32 %339, ptr @pos, align 4, !dbg !1759, !tbaa !1057
  %340 = load i32, ptr @argc, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %343, label %342, !dbg !1760

342:                                              ; preds = %338
  tail call fastcc void @beyond(), !dbg !1761
  unreachable, !dbg !1761

343:                                              ; preds = %338
  %344 = add nsw i32 %4, 2, !dbg !1762
  store i32 %344, ptr @pos, align 4, !dbg !1762, !tbaa !1057
  %345 = sext i32 %344 to i64, !dbg !1763
  %346 = getelementptr ptr, ptr %3, i64 %345, !dbg !1763
  %347 = getelementptr ptr, ptr %346, i64 -1, !dbg !1763
  %348 = load ptr, ptr %347, align 8, !dbg !1763, !tbaa !957
  %349 = tail call fastcc ptr @find_int(ptr noundef %348), !dbg !1764
  tail call void @llvm.dbg.value(metadata ptr %349, metadata !1463, metadata !DIExpression()), !dbg !1765
  %350 = tail call ptr @__errno_location() #43, !dbg !1766
  store i32 0, ptr %350, align 4, !dbg !1767, !tbaa !1057
  %351 = tail call i64 @strtol(ptr nocapture noundef %349, ptr noundef null, i32 noundef 10) #40, !dbg !1768
  tail call void @llvm.dbg.value(metadata i64 %351, metadata !1461, metadata !DIExpression()), !dbg !1765
  %352 = load i32, ptr %350, align 4, !dbg !1769, !tbaa !1057
  %353 = icmp ne i32 %352, 34, !dbg !1770
  %354 = icmp sgt i64 %351, -1
  %355 = select i1 %353, i1 %354, i1 false, !dbg !1771
  %356 = icmp slt i64 %351, 2147483648
  %357 = select i1 %355, i1 %356, i1 false, !dbg !1771
  br i1 %357, label %358, label %388, !dbg !1771

358:                                              ; preds = %343
  %359 = trunc i64 %351 to i32, !dbg !1772
  %360 = tail call i32 @isatty(i32 noundef %359) #40, !dbg !1773
  %361 = icmp ne i32 %360, 0, !dbg !1774
  br label %388

362:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1775
  %363 = add nsw i32 %4, 1, !dbg !1778
  store i32 %363, ptr @pos, align 4, !dbg !1778, !tbaa !1057
  %364 = load i32, ptr @argc, align 4
  %365 = icmp slt i32 %363, %364
  br i1 %365, label %367, label %366, !dbg !1779

366:                                              ; preds = %362
  tail call fastcc void @beyond(), !dbg !1780
  unreachable, !dbg !1780

367:                                              ; preds = %362
  %368 = add nsw i32 %4, 2, !dbg !1781
  store i32 %368, ptr @pos, align 4, !dbg !1781, !tbaa !1057
  %369 = sext i32 %368 to i64, !dbg !1782
  %370 = getelementptr ptr, ptr %3, i64 %369, !dbg !1782
  %371 = getelementptr ptr, ptr %370, i64 -1, !dbg !1782
  %372 = load ptr, ptr %371, align 8, !dbg !1782, !tbaa !957
  %373 = load i8, ptr %372, align 1, !dbg !1782, !tbaa !1066
  %374 = icmp ne i8 %373, 0, !dbg !1783
  br label %388, !dbg !1784

375:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1785
  %376 = add nsw i32 %4, 1, !dbg !1788
  store i32 %376, ptr @pos, align 4, !dbg !1788, !tbaa !1057
  %377 = load i32, ptr @argc, align 4
  %378 = icmp slt i32 %376, %377
  br i1 %378, label %380, label %379, !dbg !1789

379:                                              ; preds = %375
  tail call fastcc void @beyond(), !dbg !1790
  unreachable, !dbg !1790

380:                                              ; preds = %375
  %381 = add nsw i32 %4, 2, !dbg !1791
  store i32 %381, ptr @pos, align 4, !dbg !1791, !tbaa !1057
  %382 = sext i32 %381 to i64, !dbg !1792
  %383 = getelementptr ptr, ptr %3, i64 %382, !dbg !1792
  %384 = getelementptr ptr, ptr %383, i64 -1, !dbg !1792
  %385 = load ptr, ptr %384, align 8, !dbg !1792, !tbaa !957
  %386 = load i8, ptr %385, align 1, !dbg !1792, !tbaa !1066
  %387 = icmp eq i8 %386, 0, !dbg !1793
  br label %388, !dbg !1794

388:                                              ; preds = %343, %358, %139, %142, %127, %115, %118, %103, %75, %380, %367, %325, %307, %289, %276, %258, %240, %222, %204, %187, %169, %151, %83, %62, %49, %36, %23
  %389 = phi i1 [ %387, %380 ], [ %374, %367 ], [ %337, %325 ], [ %319, %307 ], [ %301, %289 ], [ %283, %276 ], [ %270, %258 ], [ %252, %240 ], [ %234, %222 ], [ %216, %204 ], [ %198, %187 ], [ %181, %169 ], [ %163, %151 ], [ %97, %83 ], [ %69, %62 ], [ %56, %49 ], [ %43, %36 ], [ %30, %23 ], [ false, %75 ], [ false, %103 ], [ false, %115 ], [ %121, %118 ], [ false, %127 ], [ false, %139 ], [ %145, %142 ], [ false, %343 ], [ %361, %358 ], !dbg !1795
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #40, !dbg !1796
  ret i1 %389, !dbg !1796
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !1797 {
  %1 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.92, i32 noundef 5) #40, !dbg !1798
  %2 = load ptr, ptr @argv, align 8, !dbg !1799, !tbaa !957
  %3 = load i32, ptr @argc, align 4, !dbg !1800, !tbaa !1057
  %4 = sext i32 %3 to i64, !dbg !1799
  %5 = getelementptr ptr, ptr %2, i64 %4, !dbg !1799
  %6 = getelementptr ptr, ptr %5, i64 -1, !dbg !1799
  %7 = load ptr, ptr %6, align 8, !dbg !1799, !tbaa !957
  %8 = tail call ptr @quote(ptr noundef %7) #40, !dbg !1801
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %1, ptr noundef %8) #44, !dbg !1802
  unreachable, !dbg !1802
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @three_arguments() unnamed_addr #10 !dbg !1803 {
  %1 = load ptr, ptr @argv, align 8, !dbg !1807, !tbaa !957
  %2 = load i32, ptr @pos, align 4, !dbg !1808, !tbaa !1057
  %3 = sext i32 %2 to i64, !dbg !1807
  %4 = getelementptr ptr, ptr %1, i64 %3, !dbg !1807
  %5 = getelementptr ptr, ptr %4, i64 1, !dbg !1807
  %6 = load ptr, ptr %5, align 8, !dbg !1807, !tbaa !957
  %7 = tail call fastcc i32 @binop(ptr noundef %6), !dbg !1809, !range !1810
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1806, metadata !DIExpression()), !dbg !1811
  %8 = icmp sgt i32 %7, -1, !dbg !1812
  br i1 %8, label %9, label %11, !dbg !1814

9:                                                ; preds = %0
  %10 = tail call fastcc i1 @binary_operator(i1 noundef false, i32 noundef %7), !dbg !1815
  tail call void @llvm.dbg.value(metadata i1 %10, metadata !1805, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1811
  br label %87, !dbg !1816

11:                                               ; preds = %0
  %12 = load ptr, ptr %4, align 8, !dbg !1817, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %12, metadata !1068, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1074, metadata !DIExpression()), !dbg !1819
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(2) @.str.85) #41, !dbg !1821
  %14 = icmp eq i32 %13, 0, !dbg !1822
  br i1 %14, label %15, label %48, !dbg !1823

15:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1824
  %16 = add nsw i32 %2, 1, !dbg !1827
  store i32 %16, ptr @pos, align 4, !dbg !1827, !tbaa !1057
  %17 = load i32, ptr @argc, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %20, label %19, !dbg !1828

19:                                               ; preds = %15
  tail call fastcc void @beyond(), !dbg !1829
  unreachable, !dbg !1829

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %6, metadata !1068, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1074, metadata !DIExpression()), !dbg !1830
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.85) #41, !dbg !1833
  %22 = icmp eq i32 %21, 0, !dbg !1834
  br i1 %22, label %23, label %31, !dbg !1835

23:                                               ; preds = %20
  %24 = sext i32 %16 to i64, !dbg !1836
  %25 = getelementptr ptr, ptr %1, i64 %24, !dbg !1836
  %26 = add nsw i32 %2, 3, !dbg !1837
  store i32 %26, ptr @pos, align 4, !dbg !1837, !tbaa !1057
  %27 = getelementptr ptr, ptr %25, i64 1, !dbg !1839
  %28 = load ptr, ptr %27, align 8, !dbg !1839, !tbaa !957
  %29 = load i8, ptr %28, align 1, !dbg !1839, !tbaa !1066
  %30 = icmp eq i8 %29, 0, !dbg !1840
  call void @llvm.dbg.value(metadata i1 %30, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1841
  br label %45, !dbg !1842

31:                                               ; preds = %20
  %32 = load i8, ptr %6, align 1, !dbg !1843, !tbaa !1066
  %33 = icmp eq i8 %32, 45, !dbg !1844
  br i1 %33, label %34, label %44, !dbg !1845

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !1846
  %36 = load i8, ptr %35, align 1, !dbg !1846, !tbaa !1066
  %37 = icmp eq i8 %36, 0, !dbg !1847
  br i1 %37, label %44, label %38, !dbg !1848

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %6, i64 2, !dbg !1849
  %40 = load i8, ptr %39, align 1, !dbg !1849, !tbaa !1066
  %41 = icmp eq i8 %40, 0, !dbg !1850
  br i1 %41, label %42, label %44, !dbg !1851

42:                                               ; preds = %38
  %43 = tail call fastcc i1 @unary_operator(), !dbg !1852
  call void @llvm.dbg.value(metadata i1 %43, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1841
  br label %45

44:                                               ; preds = %38, %34, %31
  tail call fastcc void @beyond() #44, !dbg !1853
  unreachable, !dbg !1853

45:                                               ; preds = %23, %42
  %46 = phi i1 [ %30, %23 ], [ %43, %42 ]
  call void @llvm.dbg.value(metadata i1 %46, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1841
  %47 = xor i1 %46, true, !dbg !1854
  tail call void @llvm.dbg.value(metadata i1 %47, metadata !1805, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1811
  br label %87, !dbg !1855

48:                                               ; preds = %11
  call void @llvm.dbg.value(metadata ptr %12, metadata !1068, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata ptr @.str.86, metadata !1074, metadata !DIExpression()), !dbg !1856
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(2) @.str.86) #41, !dbg !1859
  %50 = icmp eq i32 %49, 0, !dbg !1860
  br i1 %50, label %51, label %60, !dbg !1861

51:                                               ; preds = %48
  %52 = getelementptr ptr, ptr %4, i64 2, !dbg !1862
  %53 = load ptr, ptr %52, align 8, !dbg !1862, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %53, metadata !1068, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1074, metadata !DIExpression()), !dbg !1863
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull dereferenceable(2) @.str.87) #41, !dbg !1865
  %55 = icmp eq i32 %54, 0, !dbg !1866
  br i1 %55, label %56, label %60, !dbg !1867

56:                                               ; preds = %51
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1868
  %57 = load i8, ptr %6, align 1, !dbg !1871, !tbaa !1066
  %58 = icmp ne i8 %57, 0, !dbg !1873
  tail call void @llvm.dbg.value(metadata i1 %58, metadata !1805, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1811
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1874
  %59 = add nsw i32 %2, 3, !dbg !1876
  store i32 %59, ptr @pos, align 4, !dbg !1876, !tbaa !1057
  br label %87, !dbg !1877

60:                                               ; preds = %51, %48
  call void @llvm.dbg.value(metadata ptr %6, metadata !1068, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata ptr @.str.93, metadata !1074, metadata !DIExpression()), !dbg !1878
  %61 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(3) @.str.93) #41, !dbg !1881
  %62 = icmp eq i32 %61, 0, !dbg !1882
  br i1 %62, label %72, label %63, !dbg !1883

63:                                               ; preds = %60
  call void @llvm.dbg.value(metadata ptr %6, metadata !1068, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata ptr @.str.94, metadata !1074, metadata !DIExpression()), !dbg !1884
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(3) @.str.94) #41, !dbg !1886
  %65 = icmp eq i32 %64, 0, !dbg !1887
  br i1 %65, label %72, label %66, !dbg !1888

66:                                               ; preds = %63
  call void @llvm.dbg.value(metadata ptr %6, metadata !1068, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata ptr @.str.95, metadata !1074, metadata !DIExpression()), !dbg !1889
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.95) #41, !dbg !1891
  %68 = icmp eq i32 %67, 0, !dbg !1892
  br i1 %68, label %72, label %69, !dbg !1893

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata ptr %6, metadata !1068, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata ptr @.str.96, metadata !1074, metadata !DIExpression()), !dbg !1894
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.96) #41, !dbg !1896
  %71 = icmp eq i32 %70, 0, !dbg !1897
  br i1 %71, label %72, label %78, !dbg !1898

72:                                               ; preds = %69, %66, %63, %60
  %73 = load i32, ptr @argc, align 4, !dbg !1899, !tbaa !1057
  %74 = icmp slt i32 %2, %73, !dbg !1901
  br i1 %74, label %76, label %75, !dbg !1902

75:                                               ; preds = %72
  tail call fastcc void @beyond() #44, !dbg !1903
  unreachable, !dbg !1903

76:                                               ; preds = %72
  %77 = tail call fastcc i1 @or(), !dbg !1904
  tail call void @llvm.dbg.value(metadata i1 %77, metadata !1805, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1811
  br label %87

78:                                               ; preds = %69
  %79 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.97, i32 noundef 5) #40, !dbg !1905
  %80 = load ptr, ptr @argv, align 8, !dbg !1906, !tbaa !957
  %81 = load i32, ptr @pos, align 4, !dbg !1907, !tbaa !1057
  %82 = sext i32 %81 to i64, !dbg !1906
  %83 = getelementptr ptr, ptr %80, i64 %82, !dbg !1906
  %84 = getelementptr ptr, ptr %83, i64 1, !dbg !1906
  %85 = load ptr, ptr %84, align 8, !dbg !1906, !tbaa !957
  %86 = tail call ptr @quote(ptr noundef %85) #40, !dbg !1908
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %79, ptr noundef %86) #44, !dbg !1909
  unreachable, !dbg !1909

87:                                               ; preds = %45, %76, %56, %9
  %88 = phi i1 [ %10, %9 ], [ %47, %45 ], [ %58, %56 ], [ %77, %76 ]
  tail call void @llvm.dbg.value(metadata i1 %88, metadata !1805, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1811
  ret i1 %88, !dbg !1910
}

; Function Attrs: noreturn nounwind
declare !dbg !1911 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i1 @or() unnamed_addr #10 !dbg !1915 {
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1917, metadata !DIExpression()), !dbg !1918
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1917, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 1, metadata !1919, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8 poison, metadata !1919, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8 0, metadata !1925, metadata !DIExpression()), !dbg !1933
  %1 = load i32, ptr @argc, align 4
  %2 = load i32, ptr @pos, align 4, !tbaa !1057
  call void @llvm.dbg.value(metadata i8 poison, metadata !1925, metadata !DIExpression()), !dbg !1933
  %3 = icmp slt i32 %2, %1, !dbg !1936
  br i1 %3, label %4, label %43, !dbg !1937

4:                                                ; preds = %0
  %5 = load ptr, ptr @argv, align 8, !tbaa !957
  br label %6, !dbg !1938

6:                                                ; preds = %4, %194
  %7 = phi ptr [ %.lcssa16, %194 ], [ %5, %4 ]
  %8 = phi i32 [ %195, %194 ], [ %2, %4 ]
  %9 = phi i32 [ %.lcssa6, %194 ], [ %1, %4 ]
  %10 = phi i1 [ %189, %194 ], [ false, %4 ]
  br label %11, !dbg !1937

11:                                               ; preds = %6, %183
  %12 = phi ptr [ %7, %6 ], [ %177, %183 ]
  %13 = phi i32 [ %8, %6 ], [ %184, %183 ]
  %14 = phi i32 [ %9, %6 ], [ %174, %183 ]
  %15 = phi i1 [ true, %6 ], [ %172, %183 ]
  %16 = sext i32 %13 to i64, !dbg !1937
  %17 = sext i32 %14 to i64, !dbg !1937
  %18 = add i32 %13, 2, !dbg !1937
  %19 = getelementptr inbounds ptr, ptr %12, i64 %16, !dbg !1939
  %20 = load ptr, ptr %19, align 8, !dbg !1939, !tbaa !957
  %21 = load i8, ptr %20, align 1, !dbg !1939, !tbaa !1066
  %22 = icmp eq i8 %21, 33, !dbg !1940
  br i1 %22, label %.preheader, label %44, !dbg !1941

.preheader:                                       ; preds = %11
  br label %23, !dbg !1942

23:                                               ; preds = %.preheader, %36
  %24 = phi ptr [ %40, %36 ], [ %20, %.preheader ]
  %25 = phi i1 [ %37, %36 ], [ false, %.preheader ]
  %26 = phi i64 [ %32, %36 ], [ %16, %.preheader ]
  %27 = phi i32 [ %38, %36 ], [ %18, %.preheader ]
  %28 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1943
  %29 = load i8, ptr %28, align 1, !dbg !1943, !tbaa !1066
  %30 = icmp eq i8 %29, 0, !dbg !1944
  br i1 %30, label %31, label %.loopexit, !dbg !1942

31:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1945
  %32 = add nsw i64 %26, 1, !dbg !1948
  %33 = trunc i64 %32 to i32, !dbg !1948
  store i32 %33, ptr @pos, align 4, !dbg !1948, !tbaa !1057
  %34 = icmp slt i64 %32, %17
  br i1 %34, label %36, label %35, !dbg !1949

35:                                               ; preds = %31
  tail call fastcc void @beyond(), !dbg !1950
  unreachable, !dbg !1950

36:                                               ; preds = %31
  %37 = xor i1 %25, true, !dbg !1951
  call void @llvm.dbg.value(metadata i8 poison, metadata !1925, metadata !DIExpression()), !dbg !1933
  %38 = add i32 %27, 1, !dbg !1937
  %39 = getelementptr inbounds ptr, ptr %12, i64 %32, !dbg !1939
  %40 = load ptr, ptr %39, align 8, !dbg !1939, !tbaa !957
  %41 = load i8, ptr %40, align 1, !dbg !1939, !tbaa !1066
  %42 = icmp eq i8 %41, 33, !dbg !1940
  br i1 %42, label %23, label %.loopexit, !dbg !1941, !llvm.loop !1952

.loopexit3:                                       ; preds = %183
  br label %43, !dbg !1954

.loopexit5:                                       ; preds = %194
  br label %43, !dbg !1954

43:                                               ; preds = %.loopexit5, %.loopexit3, %0
  tail call fastcc void @beyond() #44, !dbg !1954
  unreachable, !dbg !1954

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
  %49 = shl i64 %46, 32, !dbg !1956
  %50 = ashr exact i64 %49, 32, !dbg !1956
  %51 = getelementptr inbounds ptr, ptr %12, i64 %50, !dbg !1956
  %52 = load ptr, ptr %51, align 8, !dbg !1956, !tbaa !957
  %53 = load i8, ptr %52, align 1, !dbg !1956, !tbaa !1066
  %54 = icmp eq i8 %53, 40, !dbg !1957
  br i1 %54, label %55, label %132, !dbg !1958

55:                                               ; preds = %44
  %56 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !1959
  %57 = load i8, ptr %56, align 1, !dbg !1959, !tbaa !1066
  %58 = icmp eq i8 %57, 0, !dbg !1960
  br i1 %58, label %59, label %132, !dbg !1961

59:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i1 true, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1962
  %60 = add nsw i32 %48, 1, !dbg !1964
  store i32 %60, ptr @pos, align 4, !dbg !1964, !tbaa !1057
  %61 = icmp slt i32 %60, %14
  br i1 %61, label %62, label %72, !dbg !1965

62:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 1, metadata !1930, metadata !DIExpression()), !dbg !1966
  %63 = add nsw i32 %48, 2, !dbg !1967
  %64 = icmp slt i32 %63, %14, !dbg !1970
  br i1 %64, label %65, label %102, !dbg !1971

65:                                               ; preds = %62
  %66 = sext i32 %45 to i64, !dbg !1972
  %67 = sext i32 %60 to i64, !dbg !1972
  call void @llvm.dbg.value(metadata i64 1, metadata !1930, metadata !DIExpression()), !dbg !1966
  %68 = getelementptr inbounds ptr, ptr %12, i64 %66, !dbg !1973
  %69 = load ptr, ptr %68, align 8, !dbg !1973, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %69, metadata !1068, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1074, metadata !DIExpression()), !dbg !1974
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(2) @.str.87) #41, !dbg !1976
  %71 = icmp eq i32 %70, 0, !dbg !1977
  br i1 %71, label %102, label %73, !dbg !1972

72:                                               ; preds = %59
  tail call fastcc void @beyond(), !dbg !1978
  unreachable, !dbg !1978

73:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i64 2, metadata !1930, metadata !DIExpression()), !dbg !1966
  %74 = add nsw i64 %67, 2, !dbg !1967
  %75 = icmp slt i64 %74, %17, !dbg !1970
  br i1 %75, label %76, label %102, !dbg !1971, !llvm.loop !1979

76:                                               ; preds = %73
  %77 = add nsw i64 %66, 1, !dbg !1967
  call void @llvm.dbg.value(metadata i64 2, metadata !1930, metadata !DIExpression()), !dbg !1966
  %78 = getelementptr inbounds ptr, ptr %12, i64 %77, !dbg !1973
  %79 = load ptr, ptr %78, align 8, !dbg !1973, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %79, metadata !1068, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1074, metadata !DIExpression()), !dbg !1974
  %80 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(2) @.str.87) #41, !dbg !1976
  %81 = icmp eq i32 %80, 0, !dbg !1977
  br i1 %81, label %102, label %82, !dbg !1972

82:                                               ; preds = %76
  call void @llvm.dbg.value(metadata i64 3, metadata !1930, metadata !DIExpression()), !dbg !1966
  %83 = add nsw i64 %67, 3, !dbg !1967
  %84 = icmp slt i64 %83, %17, !dbg !1970
  br i1 %84, label %85, label %102, !dbg !1971, !llvm.loop !1979

85:                                               ; preds = %82
  %86 = add nsw i64 %66, 2, !dbg !1967
  call void @llvm.dbg.value(metadata i64 3, metadata !1930, metadata !DIExpression()), !dbg !1966
  %87 = getelementptr inbounds ptr, ptr %12, i64 %86, !dbg !1973
  %88 = load ptr, ptr %87, align 8, !dbg !1973, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %88, metadata !1068, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1074, metadata !DIExpression()), !dbg !1974
  %89 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %88, ptr noundef nonnull dereferenceable(2) @.str.87) #41, !dbg !1976
  %90 = icmp eq i32 %89, 0, !dbg !1977
  br i1 %90, label %102, label %91, !dbg !1972

91:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i64 4, metadata !1930, metadata !DIExpression()), !dbg !1966
  %92 = add nsw i64 %67, 4, !dbg !1967
  %93 = icmp slt i64 %92, %17, !dbg !1970
  br i1 %93, label %94, label %102, !dbg !1971, !llvm.loop !1979

94:                                               ; preds = %91
  %95 = add nsw i64 %66, 3, !dbg !1967
  call void @llvm.dbg.value(metadata i64 4, metadata !1930, metadata !DIExpression()), !dbg !1966
  %96 = getelementptr inbounds ptr, ptr %12, i64 %95, !dbg !1973
  %97 = load ptr, ptr %96, align 8, !dbg !1973, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %97, metadata !1068, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1074, metadata !DIExpression()), !dbg !1974
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %97, ptr noundef nonnull dereferenceable(2) @.str.87) #41, !dbg !1976
  %99 = icmp eq i32 %98, 0, !dbg !1977
  %100 = sub nsw i32 %14, %60
  %101 = select i1 %99, i32 4, i32 %100, !dbg !1972
  br label %102, !dbg !1972

102:                                              ; preds = %94, %73, %65, %76, %82, %85, %91, %62
  %103 = phi i32 [ 1, %62 ], [ 1, %65 ], [ 2, %73 ], [ 2, %76 ], [ 3, %82 ], [ 3, %85 ], [ 4, %91 ], [ %101, %94 ], !dbg !1981
  call void @llvm.dbg.value(metadata i32 %103, metadata !1930, metadata !DIExpression()), !dbg !1966
  %104 = tail call fastcc i1 @posixtest(i32 noundef %103), !dbg !1982
  call void @llvm.dbg.value(metadata i1 %104, metadata !1928, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1933
  %105 = load ptr, ptr @argv, align 8, !dbg !1983, !tbaa !957
  %106 = load i32, ptr @pos, align 4, !dbg !1985, !tbaa !1057
  %107 = sext i32 %106 to i64, !dbg !1983
  %108 = getelementptr inbounds ptr, ptr %105, i64 %107, !dbg !1983
  %109 = load ptr, ptr %108, align 8, !dbg !1983, !tbaa !957
  %110 = icmp eq ptr %109, null, !dbg !1983
  br i1 %110, label %111, label %114, !dbg !1986

111:                                              ; preds = %102
  %112 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.114, i32 noundef 5) #40, !dbg !1987
  %113 = tail call ptr @quote(ptr noundef nonnull @.str.87) #40, !dbg !1988
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %112, ptr noundef %113) #44, !dbg !1989
  unreachable, !dbg !1989

114:                                              ; preds = %102
  %115 = load i8, ptr %109, align 1, !dbg !1990, !tbaa !1066
  %116 = icmp eq i8 %115, 41, !dbg !1992
  br i1 %116, label %117, label %121, !dbg !1993

117:                                              ; preds = %114
  %118 = getelementptr inbounds i8, ptr %109, i64 1, !dbg !1994
  %119 = load i8, ptr %118, align 1, !dbg !1994, !tbaa !1066
  %120 = icmp eq i8 %119, 0, !dbg !1994
  br i1 %120, label %130, label %121, !dbg !1995

121:                                              ; preds = %117, %114
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.115, i32 noundef 5) #40, !dbg !1996
  %123 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.87) #40, !dbg !1997
  %124 = load ptr, ptr @argv, align 8, !dbg !1998, !tbaa !957
  %125 = load i32, ptr @pos, align 4, !dbg !1999, !tbaa !1057
  %126 = sext i32 %125 to i64, !dbg !1998
  %127 = getelementptr inbounds ptr, ptr %124, i64 %126, !dbg !1998
  %128 = load ptr, ptr %127, align 8, !dbg !1998, !tbaa !957
  %129 = tail call ptr @quote_n(i32 noundef 1, ptr noundef %128) #40, !dbg !2000
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %122, ptr noundef %123, ptr noundef %129) #44, !dbg !2001
  unreachable, !dbg !2001

130:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i1 false, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2002
  %131 = add nsw i32 %106, 1, !dbg !2004
  store i32 %131, ptr @pos, align 4, !dbg !2004, !tbaa !1057
  br label %169, !dbg !2005

132:                                              ; preds = %55, %44
  %133 = sub nsw i32 %14, %48, !dbg !2006
  %134 = icmp sgt i32 %133, 3, !dbg !2008
  br i1 %134, label %135, label %145, !dbg !2009

135:                                              ; preds = %132
  call void @llvm.dbg.value(metadata ptr %52, metadata !1068, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata ptr @.str.110, metadata !1074, metadata !DIExpression()), !dbg !2010
  %136 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(3) @.str.110) #41, !dbg !2012
  %137 = icmp eq i32 %136, 0, !dbg !2013
  br i1 %137, label %138, label %147, !dbg !2014

138:                                              ; preds = %135
  %139 = getelementptr ptr, ptr %51, i64 2, !dbg !2015
  %140 = load ptr, ptr %139, align 8, !dbg !2015, !tbaa !957
  %141 = tail call fastcc i32 @binop(ptr noundef %140), !dbg !2016, !range !1810
  call void @llvm.dbg.value(metadata i32 %141, metadata !1929, metadata !DIExpression()), !dbg !1933
  %142 = icmp sgt i32 %141, -1, !dbg !2017
  br i1 %142, label %143, label %147, !dbg !2018

143:                                              ; preds = %138
  %144 = tail call fastcc i1 @binary_operator(i1 noundef true, i32 noundef %141), !dbg !2019
  call void @llvm.dbg.value(metadata i1 %144, metadata !1928, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1933
  br label %169, !dbg !2020

145:                                              ; preds = %132
  %146 = icmp eq i32 %133, 3, !dbg !2021
  br i1 %146, label %147, label %154, !dbg !2023

147:                                              ; preds = %135, %138, %145
  %148 = getelementptr ptr, ptr %51, i64 1, !dbg !2024
  %149 = load ptr, ptr %148, align 8, !dbg !2024, !tbaa !957
  %150 = tail call fastcc i32 @binop(ptr noundef %149), !dbg !2025, !range !1810
  call void @llvm.dbg.value(metadata i32 %150, metadata !1929, metadata !DIExpression()), !dbg !1933
  %151 = icmp sgt i32 %150, -1, !dbg !2026
  br i1 %151, label %152, label %154, !dbg !2027

152:                                              ; preds = %147
  %153 = tail call fastcc i1 @binary_operator(i1 noundef false, i32 noundef %150), !dbg !2028
  call void @llvm.dbg.value(metadata i1 %153, metadata !1928, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1933
  br label %169, !dbg !2029

154:                                              ; preds = %147, %145
  %155 = icmp eq i8 %53, 45, !dbg !2030
  br i1 %155, label %156, label %166, !dbg !2032

156:                                              ; preds = %154
  %157 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !2033
  %158 = load i8, ptr %157, align 1, !dbg !2033, !tbaa !1066
  %159 = icmp eq i8 %158, 0, !dbg !2033
  br i1 %159, label %166, label %160, !dbg !2034

160:                                              ; preds = %156
  %161 = getelementptr inbounds i8, ptr %52, i64 2, !dbg !2035
  %162 = load i8, ptr %161, align 1, !dbg !2035, !tbaa !1066
  %163 = icmp eq i8 %162, 0, !dbg !2036
  br i1 %163, label %164, label %166, !dbg !2037

164:                                              ; preds = %160
  %165 = tail call fastcc i1 @unary_operator(), !dbg !2038
  call void @llvm.dbg.value(metadata i1 %165, metadata !1928, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1933
  br label %169, !dbg !2039

166:                                              ; preds = %160, %156, %154
  %167 = icmp ne i8 %53, 0, !dbg !2040
  call void @llvm.dbg.value(metadata i1 %167, metadata !1928, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1933
  call void @llvm.dbg.value(metadata i1 false, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2042
  %168 = add nsw i32 %48, 1, !dbg !2044
  store i32 %168, ptr @pos, align 4, !dbg !2044, !tbaa !1057
  br label %169

169:                                              ; preds = %130, %143, %152, %164, %166
  %170 = phi i1 [ %104, %130 ], [ %144, %143 ], [ %153, %152 ], [ %165, %164 ], [ %167, %166 ]
  call void @llvm.dbg.value(metadata i1 %170, metadata !1928, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1933
  %171 = xor i1 %47, %170, !dbg !2045
  %172 = and i1 %15, %171, !dbg !2046
  call void @llvm.dbg.value(metadata i1 %172, metadata !1919, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1922
  %173 = load i32, ptr @pos, align 4, !dbg !2047, !tbaa !1057
  %174 = load i32, ptr @argc, align 4, !dbg !2049
  %175 = icmp slt i32 %173, %174, !dbg !2050
  br i1 %175, label %176, label %186, !dbg !2051

176:                                              ; preds = %169
  %177 = load ptr, ptr @argv, align 8, !dbg !2052, !tbaa !957
  %178 = sext i32 %173 to i64, !dbg !2052
  %179 = getelementptr inbounds ptr, ptr %177, i64 %178, !dbg !2052
  %180 = load ptr, ptr %179, align 8, !dbg !2052, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %180, metadata !1068, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata ptr @.str.93, metadata !1074, metadata !DIExpression()), !dbg !2053
  %181 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %180, ptr noundef nonnull dereferenceable(3) @.str.93) #41, !dbg !2055
  %182 = icmp eq i32 %181, 0, !dbg !2056
  br i1 %182, label %183, label %188, !dbg !2057

183:                                              ; preds = %176
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2058
  %184 = add nsw i32 %173, 1, !dbg !2060
  store i32 %184, ptr @pos, align 4, !dbg !2060, !tbaa !1057
  call void @llvm.dbg.value(metadata i8 poison, metadata !1919, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8 poison, metadata !1925, metadata !DIExpression()), !dbg !1933
  %185 = icmp slt i32 %184, %174, !dbg !1936
  br i1 %185, label %11, label %.loopexit3, !dbg !1937, !llvm.loop !2061

186:                                              ; preds = %169
  %.lcssa23 = phi i1 [ %10, %169 ]
  %.lcssa11 = phi i1 [ %172, %169 ], !dbg !2046
  %187 = or i1 %.lcssa23, %.lcssa11, !dbg !2064
  tail call void @llvm.dbg.value(metadata i1 %187, metadata !1917, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1918
  br label %192

188:                                              ; preds = %176
  %.lcssa16 = phi ptr [ %177, %176 ], !dbg !2052
  %.lcssa14 = phi ptr [ %180, %176 ], !dbg !2052
  %.lcssa12 = phi i1 [ %172, %176 ], !dbg !2046
  %.lcssa9 = phi i32 [ %173, %176 ], !dbg !2047
  %.lcssa6 = phi i32 [ %174, %176 ], !dbg !2049
  %189 = or i1 %10, %.lcssa12, !dbg !2064
  tail call void @llvm.dbg.value(metadata i1 %189, metadata !1917, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1918
  call void @llvm.dbg.value(metadata ptr %.lcssa14, metadata !1068, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata ptr @.str.94, metadata !1074, metadata !DIExpression()), !dbg !2065
  %190 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa14, ptr noundef nonnull dereferenceable(3) @.str.94) #41, !dbg !2068
  %191 = icmp eq i32 %190, 0, !dbg !2069
  br i1 %191, label %194, label %.loopexit4, !dbg !2070

.loopexit4:                                       ; preds = %188
  %.lcssa = phi i1 [ %189, %188 ], !dbg !2064
  br label %192, !dbg !2071

192:                                              ; preds = %.loopexit4, %186
  %193 = phi i1 [ %187, %186 ], [ %.lcssa, %.loopexit4 ]
  ret i1 %193, !dbg !2071

194:                                              ; preds = %188
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2072
  %195 = add nsw i32 %.lcssa9, 1, !dbg !2074
  store i32 %195, ptr @pos, align 4, !dbg !2074, !tbaa !1057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1917, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 poison, metadata !1919, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8 poison, metadata !1925, metadata !DIExpression()), !dbg !1933
  %196 = icmp slt i32 %195, %.lcssa6, !dbg !1936
  br i1 %196, label %6, label %.loopexit5, !dbg !1937, !llvm.loop !2075
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i32 @binop(ptr nocapture noundef readonly %0) unnamed_addr #14 !dbg !2077 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2079, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata ptr @.str.98, metadata !1074, metadata !DIExpression()), !dbg !2081
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.98) #41, !dbg !2083
  %3 = icmp eq i32 %2, 0, !dbg !2084
  br i1 %3, label %44, label %4, !dbg !2085

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr @.str.99, metadata !1074, metadata !DIExpression()), !dbg !2086
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.99) #41, !dbg !2088
  %6 = icmp eq i32 %5, 0, !dbg !2089
  br i1 %6, label %44, label %7, !dbg !2090

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata ptr @.str.100, metadata !1074, metadata !DIExpression()), !dbg !2091
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.100) #41, !dbg !2093
  %9 = icmp eq i32 %8, 0, !dbg !2094
  br i1 %9, label %44, label %10, !dbg !2095

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata ptr @.str.95, metadata !1074, metadata !DIExpression()), !dbg !2096
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.95) #41, !dbg !2098
  %12 = icmp eq i32 %11, 0, !dbg !2099
  br i1 %12, label %44, label %13, !dbg !2100

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata ptr @.str.96, metadata !1074, metadata !DIExpression()), !dbg !2101
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.96) #41, !dbg !2103
  %15 = icmp eq i32 %14, 0, !dbg !2104
  br i1 %15, label %44, label %16, !dbg !2105

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata ptr @.str.101, metadata !1074, metadata !DIExpression()), !dbg !2106
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.101) #41, !dbg !2108
  %18 = icmp eq i32 %17, 0, !dbg !2109
  br i1 %18, label %44, label %19, !dbg !2110

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata ptr @.str.102, metadata !1074, metadata !DIExpression()), !dbg !2111
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.102) #41, !dbg !2113
  %21 = icmp eq i32 %20, 0, !dbg !2114
  br i1 %21, label %44, label %22, !dbg !2115

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata ptr @.str.103, metadata !1074, metadata !DIExpression()), !dbg !2116
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.103) #41, !dbg !2118
  %24 = icmp eq i32 %23, 0, !dbg !2119
  br i1 %24, label %44, label %25, !dbg !2120

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata ptr @.str.104, metadata !1074, metadata !DIExpression()), !dbg !2121
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.104) #41, !dbg !2123
  %27 = icmp eq i32 %26, 0, !dbg !2124
  br i1 %27, label %44, label %28, !dbg !2125

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata ptr @.str.105, metadata !1074, metadata !DIExpression()), !dbg !2126
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.105) #41, !dbg !2128
  %30 = icmp eq i32 %29, 0, !dbg !2129
  br i1 %30, label %44, label %31, !dbg !2130

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata ptr @.str.106, metadata !1074, metadata !DIExpression()), !dbg !2131
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.106) #41, !dbg !2133
  %33 = icmp eq i32 %32, 0, !dbg !2134
  br i1 %33, label %44, label %34, !dbg !2135

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata ptr @.str.107, metadata !1074, metadata !DIExpression()), !dbg !2136
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.107) #41, !dbg !2138
  %36 = icmp eq i32 %35, 0, !dbg !2139
  br i1 %36, label %44, label %37, !dbg !2140

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr @.str.108, metadata !1074, metadata !DIExpression()), !dbg !2141
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.108) #41, !dbg !2143
  %39 = icmp eq i32 %38, 0, !dbg !2144
  br i1 %39, label %44, label %40, !dbg !2145

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata ptr @.str.109, metadata !1074, metadata !DIExpression()), !dbg !2146
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.109) #41, !dbg !2148
  %42 = icmp eq i32 %41, 0, !dbg !2149
  %43 = select i1 %42, i32 10, i32 -1, !dbg !2150
  br label %44, !dbg !2145

44:                                               ; preds = %4, %10, %16, %22, %28, %34, %37, %40, %31, %25, %19, %13, %7, %1
  %45 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 3, %7 ], [ 1, %10 ], [ 2, %13 ], [ 4, %16 ], [ 9, %19 ], [ 8, %22 ], [ 7, %25 ], [ 6, %28 ], [ 5, %31 ], [ 12, %34 ], [ %43, %40 ], [ 11, %37 ], !dbg !2085
  ret i32 %45, !dbg !2151
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @binary_operator(i1 noundef %0, i32 noundef %1) unnamed_addr #10 !dbg !2152 {
  %3 = alloca %struct.stat, align 8, !DIAssignID !2175
  %4 = alloca %struct.stat, align 8, !DIAssignID !2176
  %5 = alloca [21 x i8], align 1, !DIAssignID !2177
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2160, metadata !DIExpression(), metadata !2177, metadata ptr %5, metadata !DIExpression()), !dbg !2178
  %6 = alloca [21 x i8], align 1, !DIAssignID !2179
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2163, metadata !DIExpression(), metadata !2179, metadata ptr %6, metadata !DIExpression()), !dbg !2178
  %7 = alloca [2 x %struct.stat], align 8, !DIAssignID !2180
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2169, metadata !DIExpression(), metadata !2180, metadata ptr %7, metadata !DIExpression()), !dbg !2181
  tail call void @llvm.dbg.value(metadata i1 %0, metadata !2156, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2182
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2157, metadata !DIExpression()), !dbg !2182
  %8 = load i32, ptr @pos, align 4, !dbg !2183, !tbaa !1057
  %9 = zext i1 %0 to i32, !dbg !2184
  %10 = add nsw i32 %8, %9, !dbg !2184
  %11 = add nsw i32 %10, 1, !dbg !2185
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2158, metadata !DIExpression()), !dbg !2182
  %12 = load i32, ptr @argc, align 4, !dbg !2186
  %13 = add nsw i32 %12, -2, !dbg !2187
  %14 = icmp slt i32 %11, %13, !dbg !2188
  br i1 %14, label %15, label %24, !dbg !2189

15:                                               ; preds = %2
  %16 = load ptr, ptr @argv, align 8, !dbg !2190, !tbaa !957
  %17 = sext i32 %10 to i64, !dbg !2190
  %18 = getelementptr ptr, ptr %16, i64 %17, !dbg !2190
  %19 = getelementptr ptr, ptr %18, i64 2, !dbg !2190
  %20 = load ptr, ptr %19, align 8, !dbg !2190, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %20, metadata !1068, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr @.str.110, metadata !1074, metadata !DIExpression()), !dbg !2191
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(3) @.str.110) #41, !dbg !2193
  %22 = icmp eq i32 %21, 0, !dbg !2194
  tail call void @llvm.dbg.value(metadata i1 %22, metadata !2159, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2182
  %23 = select i1 %22, i32 %11, i32 %10, !dbg !2195
  br label %24, !dbg !2195

24:                                               ; preds = %15, %2
  %25 = phi i32 [ %10, %2 ], [ %23, %15 ], !dbg !2196
  %26 = phi i1 [ false, %2 ], [ %22, %15 ]
  %27 = add nsw i32 %25, 3, !dbg !2196
  store i32 %27, ptr @pos, align 4, !dbg !2196, !tbaa !1057
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
  ], !dbg !2197

28:                                               ; preds = %24, %24, %24, %24, %24, %24
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %5) #40, !dbg !2198
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %6) #40, !dbg !2199
  %29 = load ptr, ptr @argv, align 8, !dbg !2178, !tbaa !957
  %30 = sext i32 %10 to i64, !dbg !2178
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30, !dbg !2178
  %32 = load ptr, ptr %31, align 8, !dbg !2178, !tbaa !957
  br i1 %0, label %33, label %36, !dbg !2200

33:                                               ; preds = %28
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #41, !dbg !2201
  %35 = call ptr @umaxtostr(i64 noundef %34, ptr noundef nonnull %5) #40, !dbg !2202
  br label %38, !dbg !2200

36:                                               ; preds = %28
  %37 = tail call fastcc ptr @find_int(ptr noundef %32), !dbg !2203
  br label %38, !dbg !2200

38:                                               ; preds = %36, %33
  %39 = phi ptr [ %35, %33 ], [ %37, %36 ], !dbg !2200
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !2164, metadata !DIExpression()), !dbg !2178
  %40 = load ptr, ptr @argv, align 8, !dbg !2178, !tbaa !957
  %41 = sext i32 %10 to i64, !dbg !2178
  %42 = getelementptr ptr, ptr %40, i64 %41, !dbg !2178
  br i1 %26, label %43, label %48, !dbg !2204

43:                                               ; preds = %38
  %44 = getelementptr ptr, ptr %42, i64 3, !dbg !2205
  %45 = load ptr, ptr %44, align 8, !dbg !2205, !tbaa !957
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #41, !dbg !2206
  %47 = call ptr @umaxtostr(i64 noundef %46, ptr noundef nonnull %6) #40, !dbg !2207
  br label %52, !dbg !2204

48:                                               ; preds = %38
  %49 = getelementptr ptr, ptr %42, i64 2, !dbg !2208
  %50 = load ptr, ptr %49, align 8, !dbg !2208, !tbaa !957
  %51 = call fastcc ptr @find_int(ptr noundef %50), !dbg !2209
  br label %52, !dbg !2204

52:                                               ; preds = %48, %43
  %53 = phi ptr [ %47, %43 ], [ %51, %48 ], !dbg !2204
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !2165, metadata !DIExpression()), !dbg !2178
  %54 = call i32 @strintcmp(ptr noundef %39, ptr noundef %53) #41, !dbg !2210
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !2166, metadata !DIExpression()), !dbg !2178
  switch i32 %1, label %67 [
    i32 4, label %55
    i32 5, label %57
    i32 6, label %59
    i32 7, label %61
    i32 8, label %63
    i32 9, label %65
  ], !dbg !2211

55:                                               ; preds = %52
  %56 = icmp eq i32 %54, 0, !dbg !2212
  br label %68, !dbg !2214

57:                                               ; preds = %52
  %58 = icmp sgt i32 %54, -1, !dbg !2215
  br label %68, !dbg !2216

59:                                               ; preds = %52
  %60 = icmp sgt i32 %54, 0, !dbg !2217
  br label %68, !dbg !2218

61:                                               ; preds = %52
  %62 = icmp slt i32 %54, 1, !dbg !2219
  br label %68, !dbg !2220

63:                                               ; preds = %52
  %64 = icmp slt i32 %54, 0, !dbg !2221
  br label %68, !dbg !2222

65:                                               ; preds = %52
  %66 = icmp ne i32 %54, 0, !dbg !2223
  br label %68, !dbg !2224

67:                                               ; preds = %52
  unreachable, !dbg !2225

68:                                               ; preds = %65, %63, %61, %59, %57, %55
  %69 = phi i1 [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %60, %59 ], [ %58, %57 ], [ %56, %55 ], !dbg !2226
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %6) #40, !dbg !2227
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %5) #40, !dbg !2227
  br label %180

70:                                               ; preds = %24, %24
  %71 = or i1 %26, %0, !dbg !2228
  br i1 %71, label %72, label %78, !dbg !2230

72:                                               ; preds = %70
  %73 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.111, i32 noundef 5) #40, !dbg !2231
  %74 = load ptr, ptr @argv, align 8, !dbg !2232, !tbaa !957
  %75 = sext i32 %11 to i64, !dbg !2232
  %76 = getelementptr inbounds ptr, ptr %74, i64 %75, !dbg !2232
  %77 = load ptr, ptr %76, align 8, !dbg !2232, !tbaa !957
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %73, ptr noundef %77) #44, !dbg !2233
  unreachable, !dbg !2233

78:                                               ; preds = %70
  %79 = load ptr, ptr @argv, align 8, !dbg !2234, !tbaa !957
  %80 = sext i32 %10 to i64, !dbg !2234
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80, !dbg !2234
  %82 = load ptr, ptr %81, align 8, !dbg !2234, !tbaa !957
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2235, metadata !DIExpression(), metadata !2176, metadata ptr %4, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata ptr %82, metadata !2240, metadata !DIExpression()), !dbg !2241
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #40, !dbg !2243
  %83 = call i32 @stat(ptr noundef %82, ptr noundef nonnull %4) #40, !dbg !2244
  %84 = icmp slt i32 %83, 0, !dbg !2245
  %85 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 13, !dbg !2244
  %86 = load i64, ptr %85, align 8, !dbg !2244
  %87 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 13, i32 1, !dbg !2244
  %88 = load i64, ptr %87, align 8, !dbg !2244
  %89 = insertvalue [2 x i64] poison, i64 %86, 0, !dbg !2244
  %90 = insertvalue [2 x i64] %89, i64 %88, 1, !dbg !2244
  %91 = select i1 %84, [2 x i64] [i64 -9223372036854775808, i64 -1], [2 x i64] %90, !dbg !2244
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #40, !dbg !2246
  %92 = load ptr, ptr @argv, align 8, !dbg !2247, !tbaa !957
  %93 = getelementptr ptr, ptr %92, i64 %80, !dbg !2247
  %94 = getelementptr ptr, ptr %93, i64 2, !dbg !2247
  %95 = load ptr, ptr %94, align 8, !dbg !2247, !tbaa !957
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2235, metadata !DIExpression(), metadata !2175, metadata ptr %3, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata ptr %95, metadata !2240, metadata !DIExpression()), !dbg !2248
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #40, !dbg !2250
  %96 = call i32 @stat(ptr noundef %95, ptr noundef nonnull %3) #40, !dbg !2251
  %97 = icmp slt i32 %96, 0, !dbg !2252
  %98 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 13, !dbg !2251
  %99 = load i64, ptr %98, align 8, !dbg !2251
  %100 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 13, i32 1, !dbg !2251
  %101 = load i64, ptr %100, align 8, !dbg !2251
  %102 = insertvalue [2 x i64] poison, i64 %99, 0, !dbg !2251
  %103 = insertvalue [2 x i64] %102, i64 %101, 1, !dbg !2251
  %104 = select i1 %97, [2 x i64] [i64 -9223372036854775808, i64 -1], [2 x i64] %103, !dbg !2251
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #40, !dbg !2253
  %105 = extractvalue [2 x i64] %91, 0
  %106 = extractvalue [2 x i64] %91, 1
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1551, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2254
  tail call void @llvm.dbg.value(metadata i64 %106, metadata !1551, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2254
  %107 = extractvalue [2 x i64] %104, 0
  %108 = extractvalue [2 x i64] %104, 1
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1557, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2254
  tail call void @llvm.dbg.value(metadata i64 %108, metadata !1557, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2254
  %109 = icmp sgt i64 %105, %107, !dbg !2256
  %110 = zext i1 %109 to i32, !dbg !2256
  %111 = icmp slt i64 %105, %107, !dbg !2256
  %112 = sext i1 %111 to i32, !dbg !2256
  %113 = add nsw i32 %112, %110, !dbg !2256
  %114 = shl nsw i32 %113, 1, !dbg !2257
  %115 = icmp sgt i64 %106, %108, !dbg !2258
  %116 = zext i1 %115 to i32, !dbg !2258
  %117 = icmp slt i64 %106, %108, !dbg !2258
  %118 = sext i1 %117 to i32, !dbg !2258
  %119 = add nsw i32 %118, %116, !dbg !2258
  %120 = add nsw i32 %119, %114, !dbg !2259
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !2167, metadata !DIExpression()), !dbg !2260
  %121 = icmp eq i32 %1, 12, !dbg !2261
  %122 = icmp slt i32 %120, 0, !dbg !2262
  %123 = icmp sgt i32 %120, 0, !dbg !2262
  %124 = select i1 %121, i1 %122, i1 %123, !dbg !2262
  br label %180

125:                                              ; preds = %24
  %126 = or i1 %26, %0, !dbg !2263
  br i1 %126, label %127, label %129, !dbg !2264

127:                                              ; preds = %125
  %128 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.112, i32 noundef 5) #40, !dbg !2265
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %128) #44, !dbg !2266
  unreachable, !dbg !2266

129:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #40, !dbg !2267
  %130 = load ptr, ptr @argv, align 8, !dbg !2268, !tbaa !957
  %131 = sext i32 %10 to i64, !dbg !2268
  %132 = getelementptr inbounds ptr, ptr %130, i64 %131, !dbg !2268
  %133 = load ptr, ptr %132, align 8, !dbg !2268, !tbaa !957
  %134 = call i32 @stat(ptr noundef %133, ptr noundef nonnull %7) #40, !dbg !2269
  %135 = icmp eq i32 %134, 0, !dbg !2270
  br i1 %135, label %136, label %154, !dbg !2271

136:                                              ; preds = %129
  %137 = load ptr, ptr @argv, align 8, !dbg !2272, !tbaa !957
  %138 = getelementptr ptr, ptr %137, i64 %131, !dbg !2272
  %139 = getelementptr ptr, ptr %138, i64 2, !dbg !2272
  %140 = load ptr, ptr %139, align 8, !dbg !2272, !tbaa !957
  %141 = getelementptr inbounds [2 x %struct.stat], ptr %7, i64 0, i64 1, !dbg !2273
  %142 = call i32 @stat(ptr noundef %140, ptr noundef nonnull %141) #40, !dbg !2274
  %143 = icmp eq i32 %142, 0, !dbg !2275
  br i1 %143, label %144, label %154, !dbg !2276

144:                                              ; preds = %136
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2277, metadata !DIExpression()), !dbg !2284
  tail call void @llvm.dbg.value(metadata ptr %141, metadata !2283, metadata !DIExpression()), !dbg !2284
  %145 = load i64, ptr %7, align 8, !dbg !2286, !tbaa !2287
  %146 = load i64, ptr %141, align 8, !dbg !2286, !tbaa !2287
  %147 = icmp eq i64 %145, %146, !dbg !2286
  %148 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 1, !dbg !2286
  %149 = load i64, ptr %148, align 8, !dbg !2286, !tbaa !2288
  %150 = getelementptr inbounds [2 x %struct.stat], ptr %7, i64 0, i64 1, i32 1, !dbg !2286
  %151 = load i64, ptr %150, align 8, !dbg !2286, !tbaa !2288
  %152 = icmp eq i64 %149, %151, !dbg !2286
  %153 = and i1 %147, %152, !dbg !2286
  br label %154

154:                                              ; preds = %144, %136, %129
  %155 = phi i1 [ false, %136 ], [ false, %129 ], [ %153, %144 ], !dbg !2181
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #40, !dbg !2289
  br label %180

156:                                              ; preds = %24, %24
  %157 = load ptr, ptr @argv, align 8, !dbg !2290, !tbaa !957
  %158 = sext i32 %10 to i64, !dbg !2290
  %159 = getelementptr inbounds ptr, ptr %157, i64 %158, !dbg !2290
  %160 = load ptr, ptr %159, align 8, !dbg !2290, !tbaa !957
  %161 = getelementptr ptr, ptr %159, i64 2, !dbg !2291
  %162 = load ptr, ptr %161, align 8, !dbg !2291, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %160, metadata !1068, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata ptr %162, metadata !1074, metadata !DIExpression()), !dbg !2292
  %163 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %160, ptr noundef nonnull dereferenceable(1) %162) #41, !dbg !2294
  %164 = icmp eq i32 %163, 0, !dbg !2295
  %165 = icmp ne i32 %1, 0, !dbg !2296
  %166 = xor i1 %165, %164, !dbg !2296
  br label %180, !dbg !2297

167:                                              ; preds = %24, %24
  %168 = load ptr, ptr @argv, align 8, !dbg !2298, !tbaa !957
  %169 = sext i32 %10 to i64, !dbg !2298
  %170 = getelementptr inbounds ptr, ptr %168, i64 %169, !dbg !2298
  %171 = load ptr, ptr %170, align 8, !dbg !2298, !tbaa !957
  %172 = getelementptr ptr, ptr %170, i64 2, !dbg !2299
  %173 = load ptr, ptr %172, align 8, !dbg !2299, !tbaa !957
  %174 = tail call i32 @strcoll(ptr noundef %171, ptr noundef %173) #41, !dbg !2300
  tail call void @llvm.dbg.value(metadata i32 %174, metadata !2173, metadata !DIExpression()), !dbg !2301
  %175 = icmp eq i32 %1, 2, !dbg !2302
  %176 = icmp slt i32 %174, 0, !dbg !2303
  %177 = icmp sgt i32 %174, 0, !dbg !2303
  %178 = select i1 %175, i1 %176, i1 %177, !dbg !2303
  br label %180

179:                                              ; preds = %24
  tail call void @__assert_fail(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.89, i32 noundef 362, ptr noundef nonnull @__PRETTY_FUNCTION__.binary_operator) #42, !dbg !2304
  unreachable, !dbg !2304

180:                                              ; preds = %167, %156, %154, %78, %68
  %181 = phi i1 [ %178, %167 ], [ %166, %156 ], [ %155, %154 ], [ %124, %78 ], [ %69, %68 ], !dbg !2307
  ret i1 %181, !dbg !2308
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2309 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_int(ptr noundef %0) unnamed_addr #10 !dbg !2312 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2316, metadata !DIExpression()), !dbg !2319
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2317, metadata !DIExpression()), !dbg !2319
  %2 = tail call ptr @__ctype_b_loc() #43, !dbg !2319
  %3 = load ptr, ptr %2, align 8, !tbaa !957
  br label %4, !dbg !2320

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %0, %1 ], [ %12, %4 ], !dbg !2322
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2317, metadata !DIExpression()), !dbg !2319
  %6 = load i8, ptr %5, align 1, !dbg !2323, !tbaa !1066
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i16, ptr %3, i64 %7, !dbg !2323
  %9 = load i16, ptr %8, align 2, !dbg !2323, !tbaa !1098
  %10 = and i16 %9, 8192, !dbg !2323
  %11 = icmp eq i16 %10, 0, !dbg !2325
  %12 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !2326
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2317, metadata !DIExpression()), !dbg !2319
  br i1 %11, label %13, label %4, !dbg !2325, !llvm.loop !2327

13:                                               ; preds = %4
  %.lcssa6 = phi ptr [ %5, %4 ], !dbg !2322
  %.lcssa5 = phi i8 [ %6, %4 ], !dbg !2323
  %.lcssa4 = phi ptr [ %12, %4 ], !dbg !2326
  %14 = icmp eq i8 %.lcssa5, 43, !dbg !2329
  %15 = icmp eq i8 %.lcssa5, 45, !dbg !2331
  %16 = zext i1 %15 to i64, !dbg !2331
  %17 = getelementptr inbounds i8, ptr %.lcssa6, i64 %16, !dbg !2331
  %18 = select i1 %14, ptr %.lcssa4, ptr %17, !dbg !2331
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !2318, metadata !DIExpression()), !dbg !2319
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !2317, metadata !DIExpression()), !dbg !2319
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !2317, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2319
  %19 = load i8, ptr %18, align 1, !dbg !2332, !tbaa !1066
  %20 = zext i8 %19 to i32, !dbg !2332
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2334, metadata !DIExpression()), !dbg !2338
  %21 = add nsw i32 %20, -48, !dbg !2340
  %22 = icmp ult i32 %21, 10, !dbg !2340
  br i1 %22, label %.preheader1, label %50, !dbg !2341

.preheader1:                                      ; preds = %13
  br label %23, !dbg !2342

23:                                               ; preds = %.preheader1, %23
  %24 = phi ptr [ %25, %23 ], [ %18, %.preheader1 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2344
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !2317, metadata !DIExpression()), !dbg !2319
  %26 = load i8, ptr %25, align 1, !dbg !2345, !tbaa !1066
  %27 = zext i8 %26 to i32, !dbg !2345
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !2334, metadata !DIExpression()), !dbg !2346
  %28 = add nsw i32 %27, -48, !dbg !2348
  %29 = icmp ult i32 %28, 10, !dbg !2348
  br i1 %29, label %23, label %30, !dbg !2342, !llvm.loop !2349

30:                                               ; preds = %23
  %.lcssa3 = phi ptr [ %25, %23 ], !dbg !2344
  %.lcssa2 = phi i8 [ %26, %23 ], !dbg !2345
  tail call void @llvm.dbg.value(metadata ptr %.lcssa3, metadata !2317, metadata !DIExpression()), !dbg !2319
  %31 = zext i8 %.lcssa2 to i64
  %32 = getelementptr inbounds i16, ptr %3, i64 %31, !dbg !2351
  %33 = load i16, ptr %32, align 2, !dbg !2351, !tbaa !1098
  %34 = and i16 %33, 8192, !dbg !2351
  %35 = icmp eq i16 %34, 0, !dbg !2352
  br i1 %35, label %45, label %.preheader, !dbg !2352

.preheader:                                       ; preds = %30
  br label %36, !dbg !2352

36:                                               ; preds = %.preheader, %36
  %37 = phi ptr [ %38, %36 ], [ %.lcssa3, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !2317, metadata !DIExpression()), !dbg !2319
  %38 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !2353
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2317, metadata !DIExpression()), !dbg !2319
  %39 = load i8, ptr %38, align 1, !dbg !2351, !tbaa !1066
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, ptr %3, i64 %40, !dbg !2351
  %42 = load i16, ptr %41, align 2, !dbg !2351, !tbaa !1098
  %43 = and i16 %42, 8192, !dbg !2351
  %44 = icmp eq i16 %43, 0, !dbg !2352
  br i1 %44, label %.loopexit, label %36, !dbg !2352, !llvm.loop !2354

.loopexit:                                        ; preds = %36
  %.lcssa = phi i8 [ %39, %36 ], !dbg !2351
  br label %45, !dbg !2355

45:                                               ; preds = %.loopexit, %30
  %46 = phi i8 [ %.lcssa2, %30 ], [ %.lcssa, %.loopexit ], !dbg !2351
  %47 = icmp eq i8 %46, 0, !dbg !2355
  br i1 %47, label %48, label %50, !dbg !2357

48:                                               ; preds = %45
  %49 = select i1 %14, ptr %.lcssa4, ptr %.lcssa6, !dbg !2331
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !2318, metadata !DIExpression()), !dbg !2319
  ret ptr %49, !dbg !2358

50:                                               ; preds = %45, %13
  %51 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.91, i32 noundef 5) #40, !dbg !2359
  %52 = tail call ptr @quote(ptr noundef %0) #40, !dbg !2360
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %51, ptr noundef %52) #44, !dbg !2361
  unreachable, !dbg !2361
}

; Function Attrs: nofree nounwind
declare !dbg !2362 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !2368 i32 @strcoll(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare !dbg !2369 i32 @euidaccess(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !2373 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2378 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2381 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr nocapture noundef readonly, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2384 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare !dbg !2388 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #17 !dbg !2391 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2393, metadata !DIExpression()), !dbg !2394
  store ptr %0, ptr @file_name, align 8, !dbg !2395, !tbaa !957
  ret void, !dbg !2396
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #17 !dbg !2397 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2399, metadata !DIExpression()), !dbg !2400
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !2401, !tbaa !2402
  ret void, !dbg !2404
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2405 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2410, !tbaa !957
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !2411
  %3 = icmp eq i32 %2, 0, !dbg !2412
  br i1 %3, label %22, label %4, !dbg !2413

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !2414, !tbaa !2402, !range !2415, !noundef !1028
  %6 = icmp eq i8 %5, 0, !dbg !2414
  br i1 %6, label %11, label %7, !dbg !2416

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !2417
  %9 = load i32, ptr %8, align 4, !dbg !2417, !tbaa !1057
  %10 = icmp eq i32 %9, 32, !dbg !2418
  br i1 %10, label %22, label %11, !dbg !2419

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1.56, i32 noundef 5) #40, !dbg !2420
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2407, metadata !DIExpression()), !dbg !2421
  %13 = load ptr, ptr @file_name, align 8, !dbg !2422, !tbaa !957
  %14 = icmp eq ptr %13, null, !dbg !2422
  %15 = tail call ptr @__errno_location() #43, !dbg !2424
  %16 = load i32, ptr %15, align 4, !dbg !2424, !tbaa !1057
  br i1 %14, label %19, label %17, !dbg !2425

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !2426
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.57, ptr noundef %18, ptr noundef %12) #40, !dbg !2426
  br label %20, !dbg !2426

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.58, ptr noundef %12) #40, !dbg !2427
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2428, !tbaa !1057
  tail call void @_exit(i32 noundef %21) #42, !dbg !2429
  unreachable, !dbg !2429

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2430, !tbaa !957
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !2432
  %25 = icmp eq i32 %24, 0, !dbg !2433
  br i1 %25, label %28, label %26, !dbg !2434

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2435, !tbaa !1057
  tail call void @_exit(i32 noundef %27) #42, !dbg !2436
  unreachable, !dbg !2436

28:                                               ; preds = %22
  ret void, !dbg !2437
}

; Function Attrs: noreturn
declare !dbg !2438 void @_exit(i32 noundef) local_unnamed_addr #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #19 !dbg !2439 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2443, metadata !DIExpression()), !dbg !2447
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2444, metadata !DIExpression()), !dbg !2447
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2445, metadata !DIExpression()), !dbg !2447
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2446, metadata !DIExpression(DW_OP_deref)), !dbg !2447
  tail call fastcc void @flush_stdout(), !dbg !2448
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2449, !tbaa !957
  %7 = icmp eq ptr %6, null, !dbg !2449
  br i1 %7, label %9, label %8, !dbg !2451

8:                                                ; preds = %4
  tail call void %6() #40, !dbg !2452
  br label %13, !dbg !2452

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2453, !tbaa !957
  %11 = tail call ptr @getprogname() #41, !dbg !2453
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.61, ptr noundef %11) #40, !dbg !2453
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !2455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2455, !tbaa.struct !1409
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2455
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !2455
  ret void, !dbg !2456
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2457 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2459, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i32 1, metadata !2461, metadata !DIExpression()), !dbg !2464
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !2467
  %2 = icmp slt i32 %1, 0, !dbg !2468
  br i1 %2, label %6, label %3, !dbg !2469

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2470, !tbaa !957
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !2470
  br label %6, !dbg !2470

6:                                                ; preds = %3, %0
  ret void, !dbg !2471
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2472 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !2478
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2474, metadata !DIExpression()), !dbg !2479
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2475, metadata !DIExpression()), !dbg !2479
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2476, metadata !DIExpression()), !dbg !2479
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2477, metadata !DIExpression(DW_OP_deref)), !dbg !2479
  %7 = load ptr, ptr @stderr, align 8, !dbg !2480, !tbaa !957
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !2481, !noalias !2525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2529
  call void @llvm.dbg.value(metadata ptr %7, metadata !2521, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata ptr %2, metadata !2522, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata ptr poison, metadata !2523, metadata !DIExpression(DW_OP_deref)), !dbg !2530
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #40, !dbg !2481
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !2481, !noalias !2525
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2531, !tbaa !1057
  %10 = add i32 %9, 1, !dbg !2531
  store i32 %10, ptr @error_message_count, align 4, !dbg !2531, !tbaa !1057
  %11 = icmp eq i32 %1, 0, !dbg !2532
  br i1 %11, label %21, label %12, !dbg !2534

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2535, metadata !DIExpression(), metadata !2478, metadata ptr %5, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32 %1, metadata !2538, metadata !DIExpression()), !dbg !2543
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !2545
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !2546
  call void @llvm.dbg.value(metadata ptr %13, metadata !2539, metadata !DIExpression()), !dbg !2543
  %14 = icmp eq ptr %13, null, !dbg !2547
  br i1 %14, label %15, label %17, !dbg !2549

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.62, ptr noundef nonnull @.str.5.63, i32 noundef 5) #40, !dbg !2550
  call void @llvm.dbg.value(metadata ptr %16, metadata !2539, metadata !DIExpression()), !dbg !2543
  br label %17, !dbg !2551

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2543
  call void @llvm.dbg.value(metadata ptr %18, metadata !2539, metadata !DIExpression()), !dbg !2543
  %19 = load ptr, ptr @stderr, align 8, !dbg !2552, !tbaa !957
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.64, ptr noundef %18) #40, !dbg !2552
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !2553
  br label %21, !dbg !2554

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2555, !tbaa !957
  call void @llvm.dbg.value(metadata i32 10, metadata !2556, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata ptr %22, metadata !2562, metadata !DIExpression()), !dbg !2563
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2565
  %24 = load ptr, ptr %23, align 8, !dbg !2565, !tbaa !2566
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2565
  %26 = load ptr, ptr %25, align 8, !dbg !2565, !tbaa !2568
  %27 = icmp ult ptr %24, %26, !dbg !2565
  br i1 %27, label %30, label %28, !dbg !2565, !prof !2569

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #40, !dbg !2565
  br label %32, !dbg !2565

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2565
  store ptr %31, ptr %23, align 8, !dbg !2565, !tbaa !2566
  store i8 10, ptr %24, align 1, !dbg !2565, !tbaa !1066
  br label %32, !dbg !2565

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2570, !tbaa !957
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #40, !dbg !2570
  %35 = icmp eq i32 %0, 0, !dbg !2571
  br i1 %35, label %37, label %36, !dbg !2573

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #42, !dbg !2574
  unreachable, !dbg !2574

37:                                               ; preds = %32
  ret void, !dbg !2575
}

declare !dbg !2576 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2579 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2582 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2585 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2588 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2592 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !2600
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2599, metadata !DIExpression(), metadata !2600, metadata ptr %4, metadata !DIExpression()), !dbg !2601
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2596, metadata !DIExpression()), !dbg !2601
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2597, metadata !DIExpression()), !dbg !2601
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2598, metadata !DIExpression()), !dbg !2601
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #40, !dbg !2602
  call void @llvm.va_start(ptr nonnull %4), !dbg !2603
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !2604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2604, !tbaa.struct !1409
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #46, !dbg !2604
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !2604
  call void @llvm.va_end(ptr nonnull %4), !dbg !2605
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #40, !dbg !2606
  ret void, !dbg !2606
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #19 !dbg !587 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !603, metadata !DIExpression()), !dbg !2607
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !604, metadata !DIExpression()), !dbg !2607
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !605, metadata !DIExpression()), !dbg !2607
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !606, metadata !DIExpression()), !dbg !2607
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !607, metadata !DIExpression()), !dbg !2607
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !608, metadata !DIExpression(DW_OP_deref)), !dbg !2607
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2608, !tbaa !1057
  %9 = icmp eq i32 %8, 0, !dbg !2608
  br i1 %9, label %24, label %10, !dbg !2610

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2611, !tbaa !1057
  %12 = icmp eq i32 %11, %3, !dbg !2614
  br i1 %12, label %13, label %23, !dbg !2615

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2616, !tbaa !957
  %15 = icmp eq ptr %14, %2, !dbg !2617
  br i1 %15, label %37, label %16, !dbg !2618

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2619
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2620
  br i1 %19, label %20, label %23, !dbg !2620

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2621
  %22 = icmp eq i32 %21, 0, !dbg !2622
  br i1 %22, label %37, label %23, !dbg !2623

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2624, !tbaa !957
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2625, !tbaa !1057
  br label %24, !dbg !2626

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2627
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2628, !tbaa !957
  %26 = icmp eq ptr %25, null, !dbg !2628
  br i1 %26, label %28, label %27, !dbg !2630

27:                                               ; preds = %24
  tail call void %25() #40, !dbg !2631
  br label %32, !dbg !2631

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2632, !tbaa !957
  %30 = tail call ptr @getprogname() #41, !dbg !2632
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.67, ptr noundef %30) #40, !dbg !2632
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2634, !tbaa !957
  %34 = icmp eq ptr %2, null, !dbg !2634
  %35 = select i1 %34, ptr @.str.3.68, ptr @.str.2.69, !dbg !2634
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #40, !dbg !2634
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !2635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2635, !tbaa.struct !1409
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2635
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !2635
  br label %37, !dbg !2636

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2636
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2637 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !2647
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2646, metadata !DIExpression(), metadata !2647, metadata ptr %6, metadata !DIExpression()), !dbg !2648
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2641, metadata !DIExpression()), !dbg !2648
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2642, metadata !DIExpression()), !dbg !2648
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2643, metadata !DIExpression()), !dbg !2648
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2644, metadata !DIExpression()), !dbg !2648
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2645, metadata !DIExpression()), !dbg !2648
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !2649
  call void @llvm.va_start(ptr nonnull %6), !dbg !2650
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !2651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2651, !tbaa.struct !1409
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #46, !dbg !2651
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !2651
  call void @llvm.va_end(ptr nonnull %6), !dbg !2652
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !2653
  ret void, !dbg !2653
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !2654 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2657, !tbaa !957
  ret ptr %1, !dbg !2658
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @umaxtostr(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #21 !dbg !2659 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2664, metadata !DIExpression()), !dbg !2667
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2665, metadata !DIExpression()), !dbg !2667
  %3 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !2668
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2666, metadata !DIExpression()), !dbg !2667
  store i8 0, ptr %3, align 1, !dbg !2669, !tbaa !1066
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %8, %4 ]
  %6 = phi ptr [ %3, %2 ], [ %13, %4 ], !dbg !2667
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2666, metadata !DIExpression()), !dbg !2667
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2664, metadata !DIExpression()), !dbg !2667
  %7 = freeze i64 %5
  %8 = udiv i64 %7, 10, !dbg !2670
  %9 = mul i64 %8, 10
  %10 = sub i64 %7, %9
  %11 = trunc i64 %10 to i8, !dbg !2673
  %12 = or disjoint i8 %11, 48, !dbg !2673
  %13 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !2674
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !2666, metadata !DIExpression()), !dbg !2667
  store i8 %12, ptr %13, align 1, !dbg !2675, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !2664, metadata !DIExpression()), !dbg !2667
  %14 = icmp ult i64 %5, 10, !dbg !2676
  br i1 %14, label %15, label %4, !dbg !2677, !llvm.loop !2678

15:                                               ; preds = %4
  %.lcssa = phi ptr [ %13, %4 ], !dbg !2674
  tail call void @llvm.dbg.value(metadata ptr %.lcssa, metadata !2666, metadata !DIExpression()), !dbg !2667
  ret ptr %.lcssa, !dbg !2681
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #22 !dbg !2682 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2684, metadata !DIExpression()), !dbg !2687
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2688
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2685, metadata !DIExpression()), !dbg !2687
  %3 = icmp eq ptr %2, null, !dbg !2689
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2689
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2689
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2686, metadata !DIExpression()), !dbg !2687
  %6 = ptrtoint ptr %5 to i64, !dbg !2690
  %7 = ptrtoint ptr %0 to i64, !dbg !2690
  %8 = sub i64 %6, %7, !dbg !2690
  %9 = icmp sgt i64 %8, 6, !dbg !2692
  br i1 %9, label %10, label %19, !dbg !2693

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2694
  call void @llvm.dbg.value(metadata ptr %11, metadata !2695, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata ptr @.str.116, metadata !2700, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i64 7, metadata !2701, metadata !DIExpression()), !dbg !2702
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.116, i64 7), !dbg !2704
  %13 = icmp eq i32 %12, 0, !dbg !2705
  br i1 %13, label %14, label %19, !dbg !2706

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2684, metadata !DIExpression()), !dbg !2687
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.117, i64 noundef 3) #41, !dbg !2707
  %16 = icmp eq i32 %15, 0, !dbg !2710
  %17 = select i1 %16, i64 3, i64 0, !dbg !2711
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2711
  br label %19, !dbg !2711

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2687
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2686, metadata !DIExpression()), !dbg !2687
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2684, metadata !DIExpression()), !dbg !2687
  store ptr %20, ptr @program_name, align 8, !dbg !2712, !tbaa !957
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2713, !tbaa !957
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2714, !tbaa !957
  ret void, !dbg !2715
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2716 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2717 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2722, metadata !DIExpression()), !dbg !2725
  %2 = tail call ptr @__errno_location() #43, !dbg !2726
  %3 = load i32, ptr %2, align 4, !dbg !2726, !tbaa !1057
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2723, metadata !DIExpression()), !dbg !2725
  %4 = icmp eq ptr %0, null, !dbg !2727
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2727
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #47, !dbg !2728
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2724, metadata !DIExpression()), !dbg !2725
  store i32 %3, ptr %2, align 4, !dbg !2729, !tbaa !1057
  ret ptr %6, !dbg !2730
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !2731 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2737, metadata !DIExpression()), !dbg !2738
  %2 = icmp eq ptr %0, null, !dbg !2739
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2739
  %4 = load i32, ptr %3, align 8, !dbg !2740, !tbaa !2741
  ret i32 %4, !dbg !2743
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2744 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2748, metadata !DIExpression()), !dbg !2750
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2749, metadata !DIExpression()), !dbg !2750
  %3 = icmp eq ptr %0, null, !dbg !2751
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2751
  store i32 %1, ptr %4, align 8, !dbg !2752, !tbaa !2741
  ret void, !dbg !2753
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #26 !dbg !2754 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2758, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2759, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2760, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2761, metadata !DIExpression()), !dbg !2766
  %4 = icmp eq ptr %0, null, !dbg !2767
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2767
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2768
  %7 = lshr i8 %1, 5, !dbg !2769
  %8 = zext nneg i8 %7 to i64, !dbg !2769
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2770
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2762, metadata !DIExpression()), !dbg !2766
  %10 = and i8 %1, 31, !dbg !2771
  %11 = zext nneg i8 %10 to i32, !dbg !2771
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2764, metadata !DIExpression()), !dbg !2766
  %12 = load i32, ptr %9, align 4, !dbg !2772, !tbaa !1057
  %13 = lshr i32 %12, %11, !dbg !2773
  %14 = and i32 %13, 1, !dbg !2774
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2765, metadata !DIExpression()), !dbg !2766
  %15 = xor i32 %13, %2, !dbg !2775
  %16 = and i32 %15, 1, !dbg !2775
  %17 = shl nuw i32 %16, %11, !dbg !2776
  %18 = xor i32 %17, %12, !dbg !2777
  store i32 %18, ptr %9, align 4, !dbg !2777, !tbaa !1057
  ret i32 %14, !dbg !2778
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2779 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2783, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2784, metadata !DIExpression()), !dbg !2786
  %3 = icmp eq ptr %0, null, !dbg !2787
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2783, metadata !DIExpression()), !dbg !2786
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2790
  %6 = load i32, ptr %5, align 4, !dbg !2790, !tbaa !2791
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2785, metadata !DIExpression()), !dbg !2786
  store i32 %1, ptr %5, align 4, !dbg !2792, !tbaa !2791
  ret i32 %6, !dbg !2793
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2794 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2798, metadata !DIExpression()), !dbg !2801
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2799, metadata !DIExpression()), !dbg !2801
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2800, metadata !DIExpression()), !dbg !2801
  %4 = icmp eq ptr %0, null, !dbg !2802
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2804
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2798, metadata !DIExpression()), !dbg !2801
  store i32 10, ptr %5, align 8, !dbg !2805, !tbaa !2741
  %6 = icmp ne ptr %1, null, !dbg !2806
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2808
  br i1 %8, label %10, label %9, !dbg !2808

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2809
  unreachable, !dbg !2809

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2810
  store ptr %1, ptr %11, align 8, !dbg !2811, !tbaa !2812
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2813
  store ptr %2, ptr %12, align 8, !dbg !2814, !tbaa !2815
  ret void, !dbg !2816
}

; Function Attrs: noreturn nounwind
declare !dbg !2817 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2818 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2822, metadata !DIExpression()), !dbg !2830
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2823, metadata !DIExpression()), !dbg !2830
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2824, metadata !DIExpression()), !dbg !2830
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2825, metadata !DIExpression()), !dbg !2830
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2826, metadata !DIExpression()), !dbg !2830
  %6 = icmp eq ptr %4, null, !dbg !2831
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2831
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2827, metadata !DIExpression()), !dbg !2830
  %8 = tail call ptr @__errno_location() #43, !dbg !2832
  %9 = load i32, ptr %8, align 4, !dbg !2832, !tbaa !1057
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2828, metadata !DIExpression()), !dbg !2830
  %10 = load i32, ptr %7, align 8, !dbg !2833, !tbaa !2741
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2834
  %12 = load i32, ptr %11, align 4, !dbg !2834, !tbaa !2791
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2835
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2836
  %15 = load ptr, ptr %14, align 8, !dbg !2836, !tbaa !2812
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2837
  %17 = load ptr, ptr %16, align 8, !dbg !2837, !tbaa !2815
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2838
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2829, metadata !DIExpression()), !dbg !2830
  store i32 %9, ptr %8, align 4, !dbg !2839, !tbaa !1057
  ret i64 %18, !dbg !2840
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2841 {
  %10 = alloca i32, align 4, !DIAssignID !2909
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2910
  %12 = alloca i32, align 4, !DIAssignID !2911
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2912
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2913
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2887, metadata !DIExpression(), metadata !2913, metadata ptr %14, metadata !DIExpression()), !dbg !2914
  %15 = alloca i32, align 4, !DIAssignID !2915
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2890, metadata !DIExpression(), metadata !2915, metadata ptr %15, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2847, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2848, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2849, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2850, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2851, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2852, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2853, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2854, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2855, metadata !DIExpression()), !dbg !2917
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2918
  %17 = icmp eq i64 %16, 1, !dbg !2919
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2856, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2858, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2859, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2860, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2861, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2862, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2863, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2864, metadata !DIExpression()), !dbg !2917
  %18 = and i32 %5, 2, !dbg !2920
  %19 = icmp ne i32 %18, 0, !dbg !2920
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2920

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2921
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2922
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2923
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2848, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2864, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2863, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2862, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2861, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2860, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2859, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2858, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2850, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2855, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2854, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2851, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.label(metadata !2865), !dbg !2924
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2866, metadata !DIExpression()), !dbg !2917
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
  ], !dbg !2925

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2862, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2851, metadata !DIExpression()), !dbg !2917
  br label %101, !dbg !2926

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2862, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2851, metadata !DIExpression()), !dbg !2917
  br i1 %36, label %101, label %42, !dbg !2926

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2927
  br i1 %43, label %101, label %44, !dbg !2931

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2927, !tbaa !1066
  br label %101, !dbg !2927

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !728, metadata !DIExpression(), metadata !2911, metadata ptr %12, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.assign(metadata i1 undef, metadata !733, metadata !DIExpression(), metadata !2912, metadata ptr %13, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr @.str.11.128, metadata !725, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 %28, metadata !726, metadata !DIExpression()), !dbg !2932
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.129, ptr noundef nonnull @.str.11.128, i32 noundef 5) #40, !dbg !2936
  call void @llvm.dbg.value(metadata ptr %46, metadata !727, metadata !DIExpression()), !dbg !2932
  %47 = icmp eq ptr %46, @.str.11.128, !dbg !2937
  br i1 %47, label %48, label %57, !dbg !2939

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2940
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2941
  call void @llvm.dbg.value(metadata ptr %13, metadata !2942, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata ptr %13, metadata !2951, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i32 0, metadata !2957, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i64 8, metadata !2958, metadata !DIExpression()), !dbg !2959
  store i64 0, ptr %13, align 8, !dbg !2961
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2962
  %50 = icmp eq i64 %49, 3, !dbg !2964
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2965
  %54 = icmp eq i32 %28, 9, !dbg !2965
  %55 = select i1 %54, ptr @.str.10.130, ptr @.str.12.131, !dbg !2965
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2965
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2966
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2966
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2932
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2854, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.assign(metadata i1 undef, metadata !728, metadata !DIExpression(), metadata !2909, metadata ptr %10, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.assign(metadata i1 undef, metadata !733, metadata !DIExpression(), metadata !2910, metadata ptr %11, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata ptr @.str.12.131, metadata !725, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i32 %28, metadata !726, metadata !DIExpression()), !dbg !2967
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.129, ptr noundef nonnull @.str.12.131, i32 noundef 5) #40, !dbg !2969
  call void @llvm.dbg.value(metadata ptr %59, metadata !727, metadata !DIExpression()), !dbg !2967
  %60 = icmp eq ptr %59, @.str.12.131, !dbg !2970
  br i1 %60, label %61, label %70, !dbg !2971

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2972
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2973
  call void @llvm.dbg.value(metadata ptr %11, metadata !2942, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata ptr %11, metadata !2951, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i32 0, metadata !2957, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 8, metadata !2958, metadata !DIExpression()), !dbg !2976
  store i64 0, ptr %11, align 8, !dbg !2978
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2979
  %63 = icmp eq i64 %62, 3, !dbg !2980
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2981
  %67 = icmp eq i32 %28, 9, !dbg !2981
  %68 = select i1 %67, ptr @.str.10.130, ptr @.str.12.131, !dbg !2981
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2981
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2982
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2982
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2855, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2854, metadata !DIExpression()), !dbg !2917
  br i1 %36, label %88, label %73, !dbg !2983

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2867, metadata !DIExpression()), !dbg !2984
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2857, metadata !DIExpression()), !dbg !2917
  %74 = load i8, ptr %71, align 1, !dbg !2985, !tbaa !1066
  %75 = icmp eq i8 %74, 0, !dbg !2987
  br i1 %75, label %88, label %.preheader11, !dbg !2987

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2987

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2867, metadata !DIExpression()), !dbg !2984
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2857, metadata !DIExpression()), !dbg !2917
  %80 = icmp ult i64 %79, %39, !dbg !2988
  br i1 %80, label %81, label %83, !dbg !2991

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2988
  store i8 %77, ptr %82, align 1, !dbg !2988, !tbaa !1066
  br label %83, !dbg !2988

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2991
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2857, metadata !DIExpression()), !dbg !2917
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2992
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2867, metadata !DIExpression()), !dbg !2984
  %86 = load i8, ptr %85, align 1, !dbg !2985, !tbaa !1066
  %87 = icmp eq i8 %86, 0, !dbg !2987
  br i1 %87, label %.loopexit12, label %76, !dbg !2987, !llvm.loop !2993

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2991
  br label %88, !dbg !2995

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2996
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2861, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2859, metadata !DIExpression()), !dbg !2917
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #41, !dbg !2995
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2860, metadata !DIExpression()), !dbg !2917
  br label %101, !dbg !2997

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2861, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2862, metadata !DIExpression()), !dbg !2917
  br label %101, !dbg !2998

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2862, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2861, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2851, metadata !DIExpression()), !dbg !2917
  br label %101, !dbg !2999

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2862, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2861, metadata !DIExpression()), !dbg !2917
  br i1 %36, label %101, label %95, !dbg !3000

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2862, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2861, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2851, metadata !DIExpression()), !dbg !2917
  br i1 %36, label %101, label %95, !dbg !2999

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !3001
  br i1 %97, label %101, label %98, !dbg !3005

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !3001, !tbaa !1066
  br label %101, !dbg !3001

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2862, metadata !DIExpression()), !dbg !2917
  br label %101, !dbg !3006

100:                                              ; preds = %27
  call void @abort() #42, !dbg !3007
  unreachable, !dbg !3007

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2996
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.130, %42 ], [ @.str.10.130, %44 ], [ @.str.10.130, %41 ], [ %33, %27 ], [ @.str.12.131, %95 ], [ @.str.12.131, %98 ], [ @.str.12.131, %94 ], [ @.str.10.130, %40 ], [ @.str.12.131, %91 ], [ @.str.12.131, %92 ], [ @.str.12.131, %93 ], !dbg !2917
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2917
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2862, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2861, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2860, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2859, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2855, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2854, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2851, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2872, metadata !DIExpression()), !dbg !3008
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
  br label %121, !dbg !3009

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2996
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2921
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !3010
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2848, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2872, metadata !DIExpression()), !dbg !3008
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2866, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2864, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2863, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2858, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2850, metadata !DIExpression()), !dbg !2917
  %130 = icmp eq i64 %122, -1, !dbg !3011
  br i1 %130, label %131, label %135, !dbg !3012

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3013
  %133 = load i8, ptr %132, align 1, !dbg !3013, !tbaa !1066
  %134 = icmp eq i8 %133, 0, !dbg !3014
  br i1 %134, label %573, label %137, !dbg !3015

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !3016
  br i1 %136, label %573, label %137, !dbg !3015

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2874, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2877, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2878, metadata !DIExpression()), !dbg !3017
  br i1 %113, label %138, label %151, !dbg !3018

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !3020
  %140 = select i1 %130, i1 %114, i1 false, !dbg !3021
  br i1 %140, label %141, label %143, !dbg !3021

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3022
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2850, metadata !DIExpression()), !dbg !2917
  br label %143, !dbg !3023

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !3023
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2850, metadata !DIExpression()), !dbg !2917
  %145 = icmp ugt i64 %139, %144, !dbg !3024
  br i1 %145, label %151, label %146, !dbg !3025

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3026
  call void @llvm.dbg.value(metadata ptr %147, metadata !3027, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata ptr %106, metadata !3030, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %107, metadata !3031, metadata !DIExpression()), !dbg !3032
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !3034
  %149 = icmp eq i32 %148, 0, !dbg !3035
  %150 = and i1 %149, %109, !dbg !3036
  br i1 %150, label %.loopexit7, label %151, !dbg !3036

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2874, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2850, metadata !DIExpression()), !dbg !2917
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3037
  %155 = load i8, ptr %154, align 1, !dbg !3037, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2879, metadata !DIExpression()), !dbg !3017
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
  ], !dbg !3038

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !3039

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !3040

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2877, metadata !DIExpression()), !dbg !3017
  %159 = select i1 %110, i1 true, i1 %127, !dbg !3044
  br i1 %159, label %176, label %160, !dbg !3044

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !3046
  br i1 %161, label %162, label %164, !dbg !3050

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3046
  store i8 39, ptr %163, align 1, !dbg !3046, !tbaa !1066
  br label %164, !dbg !3046

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !3050
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2857, metadata !DIExpression()), !dbg !2917
  %166 = icmp ult i64 %165, %129, !dbg !3051
  br i1 %166, label %167, label %169, !dbg !3054

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !3051
  store i8 36, ptr %168, align 1, !dbg !3051, !tbaa !1066
  br label %169, !dbg !3051

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !3054
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2857, metadata !DIExpression()), !dbg !2917
  %171 = icmp ult i64 %170, %129, !dbg !3055
  br i1 %171, label %172, label %174, !dbg !3058

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !3055
  store i8 39, ptr %173, align 1, !dbg !3055, !tbaa !1066
  br label %174, !dbg !3055

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2866, metadata !DIExpression()), !dbg !2917
  br label %176, !dbg !3059

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2917
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2866, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2857, metadata !DIExpression()), !dbg !2917
  %179 = icmp ult i64 %177, %129, !dbg !3060
  br i1 %179, label %180, label %182, !dbg !3063

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !3060
  store i8 92, ptr %181, align 1, !dbg !3060, !tbaa !1066
  br label %182, !dbg !3060

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2857, metadata !DIExpression()), !dbg !2917
  br i1 %110, label %184, label %476, !dbg !3064

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !3066
  %186 = icmp ult i64 %185, %152, !dbg !3067
  br i1 %186, label %187, label %433, !dbg !3068

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !3069
  %189 = load i8, ptr %188, align 1, !dbg !3069, !tbaa !1066
  %190 = add i8 %189, -48, !dbg !3070
  %191 = icmp ult i8 %190, 10, !dbg !3070
  br i1 %191, label %192, label %433, !dbg !3070

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !3071
  br i1 %193, label %194, label %196, !dbg !3075

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !3071
  store i8 48, ptr %195, align 1, !dbg !3071, !tbaa !1066
  br label %196, !dbg !3071

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2857, metadata !DIExpression()), !dbg !2917
  %198 = icmp ult i64 %197, %129, !dbg !3076
  br i1 %198, label %199, label %201, !dbg !3079

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !3076
  store i8 48, ptr %200, align 1, !dbg !3076, !tbaa !1066
  br label %201, !dbg !3076

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !3079
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2857, metadata !DIExpression()), !dbg !2917
  br label %433, !dbg !3080

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !3081

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !3082

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !3083

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !3085

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !3087
  %209 = icmp ult i64 %208, %152, !dbg !3088
  br i1 %209, label %210, label %433, !dbg !3089

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !3090
  %212 = load i8, ptr %211, align 1, !dbg !3090, !tbaa !1066
  %213 = icmp eq i8 %212, 63, !dbg !3091
  br i1 %213, label %214, label %433, !dbg !3092

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !3093
  %216 = load i8, ptr %215, align 1, !dbg !3093, !tbaa !1066
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
  ], !dbg !3094

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !3095

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2879, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2872, metadata !DIExpression()), !dbg !3008
  %219 = icmp ult i64 %123, %129, !dbg !3097
  br i1 %219, label %220, label %222, !dbg !3100

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3097
  store i8 63, ptr %221, align 1, !dbg !3097, !tbaa !1066
  br label %222, !dbg !3097

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !3100
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2857, metadata !DIExpression()), !dbg !2917
  %224 = icmp ult i64 %223, %129, !dbg !3101
  br i1 %224, label %225, label %227, !dbg !3104

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !3101
  store i8 34, ptr %226, align 1, !dbg !3101, !tbaa !1066
  br label %227, !dbg !3101

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !3104
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2857, metadata !DIExpression()), !dbg !2917
  %229 = icmp ult i64 %228, %129, !dbg !3105
  br i1 %229, label %230, label %232, !dbg !3108

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !3105
  store i8 34, ptr %231, align 1, !dbg !3105, !tbaa !1066
  br label %232, !dbg !3105

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !3108
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2857, metadata !DIExpression()), !dbg !2917
  %234 = icmp ult i64 %233, %129, !dbg !3109
  br i1 %234, label %235, label %237, !dbg !3112

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !3109
  store i8 63, ptr %236, align 1, !dbg !3109, !tbaa !1066
  br label %237, !dbg !3109

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !3112
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2857, metadata !DIExpression()), !dbg !2917
  br label %433, !dbg !3113

239:                                              ; preds = %151
  br label %249, !dbg !3114

240:                                              ; preds = %151
  br label %249, !dbg !3115

241:                                              ; preds = %151
  br label %247, !dbg !3116

242:                                              ; preds = %151
  br label %247, !dbg !3117

243:                                              ; preds = %151
  br label %249, !dbg !3118

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !3119

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !3120

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !3123

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !3125
  call void @llvm.dbg.label(metadata !2880), !dbg !3126
  br i1 %118, label %.loopexit8, label %249, !dbg !3127

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !3125
  call void @llvm.dbg.label(metadata !2883), !dbg !3129
  br i1 %108, label %487, label %444, !dbg !3130

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !3131

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !3132, !tbaa !1066
  %254 = icmp eq i8 %253, 0, !dbg !3134
  br i1 %254, label %255, label %433, !dbg !3135

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !3136
  br i1 %256, label %257, label %433, !dbg !3138

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2878, metadata !DIExpression()), !dbg !3017
  br label %258, !dbg !3139

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2878, metadata !DIExpression()), !dbg !3017
  br i1 %115, label %260, label %433, !dbg !3140

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !3142

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2863, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2878, metadata !DIExpression()), !dbg !3017
  br i1 %115, label %262, label %433, !dbg !3143

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !3144

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !3147
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !3149
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !3149
  %268 = select i1 %266, i64 %129, i64 0, !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2848, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2858, metadata !DIExpression()), !dbg !2917
  %269 = icmp ult i64 %123, %268, !dbg !3150
  br i1 %269, label %270, label %272, !dbg !3153

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3150
  store i8 39, ptr %271, align 1, !dbg !3150, !tbaa !1066
  br label %272, !dbg !3150

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !3153
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2857, metadata !DIExpression()), !dbg !2917
  %274 = icmp ult i64 %273, %268, !dbg !3154
  br i1 %274, label %275, label %277, !dbg !3157

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !3154
  store i8 92, ptr %276, align 1, !dbg !3154, !tbaa !1066
  br label %277, !dbg !3154

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !3157
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2857, metadata !DIExpression()), !dbg !2917
  %279 = icmp ult i64 %278, %268, !dbg !3158
  br i1 %279, label %280, label %282, !dbg !3161

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !3158
  store i8 39, ptr %281, align 1, !dbg !3158, !tbaa !1066
  br label %282, !dbg !3158

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2866, metadata !DIExpression()), !dbg !2917
  br label %433, !dbg !3162

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !3163

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2884, metadata !DIExpression()), !dbg !3164
  %286 = tail call ptr @__ctype_b_loc() #43, !dbg !3165
  %287 = load ptr, ptr %286, align 8, !dbg !3165, !tbaa !957
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !3165
  %290 = load i16, ptr %289, align 2, !dbg !3165, !tbaa !1098
  %291 = and i16 %290, 16384, !dbg !3165
  %292 = icmp ne i16 %291, 0, !dbg !3167
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2886, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3164
  br label %334, !dbg !3168

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !3169
  call void @llvm.dbg.value(metadata ptr %14, metadata !2942, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %14, metadata !2951, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i32 0, metadata !2957, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i64 8, metadata !2958, metadata !DIExpression()), !dbg !3172
  store i64 0, ptr %14, align 8, !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2884, metadata !DIExpression()), !dbg !3164
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2886, metadata !DIExpression()), !dbg !3164
  %294 = icmp eq i64 %152, -1, !dbg !3175
  br i1 %294, label %295, label %297, !dbg !3177

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3178
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2850, metadata !DIExpression()), !dbg !2917
  br label %297, !dbg !3179

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2850, metadata !DIExpression()), !dbg !2917
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !3180
  %299 = sub i64 %298, %128, !dbg !3181
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #40, !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2894, metadata !DIExpression()), !dbg !2916
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !3183

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2884, metadata !DIExpression()), !dbg !3164
  %302 = icmp ult i64 %128, %298, !dbg !3184
  br i1 %302, label %.preheader5, label %329, !dbg !3186

.preheader5:                                      ; preds = %301
  br label %304, !dbg !3187

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2886, metadata !DIExpression()), !dbg !3164
  br label %329, !dbg !3188

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2884, metadata !DIExpression()), !dbg !3164
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !3190
  %308 = load i8, ptr %307, align 1, !dbg !3190, !tbaa !1066
  %309 = icmp eq i8 %308, 0, !dbg !3186
  br i1 %309, label %.loopexit6, label %310, !dbg !3187

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !3191
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2884, metadata !DIExpression()), !dbg !3164
  %312 = add i64 %311, %128, !dbg !3192
  %313 = icmp eq i64 %311, %299, !dbg !3184
  br i1 %313, label %.loopexit6, label %304, !dbg !3186, !llvm.loop !3193

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2895, metadata !DIExpression()), !dbg !3194
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !3195
  %317 = and i1 %316, %109, !dbg !3195
  br i1 %317, label %.preheader3, label %325, !dbg !3195

.preheader3:                                      ; preds = %314
  br label %318, !dbg !3196

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2895, metadata !DIExpression()), !dbg !3194
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !3197
  %321 = load i8, ptr %320, align 1, !dbg !3197, !tbaa !1066
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !3199

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2895, metadata !DIExpression()), !dbg !3194
  %324 = icmp eq i64 %323, %300, !dbg !3201
  br i1 %324, label %.loopexit4, label %318, !dbg !3196, !llvm.loop !3202

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !3204

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !3204, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %326, metadata !3206, metadata !DIExpression()), !dbg !3214
  %327 = call i32 @iswprint(i32 noundef %326) #40, !dbg !3216
  %328 = icmp ne i32 %327, 0, !dbg !3217
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2884, metadata !DIExpression()), !dbg !3164
  br label %329, !dbg !3218

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !3219

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2884, metadata !DIExpression()), !dbg !3164
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3220
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2884, metadata !DIExpression()), !dbg !3164
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3220
  call void @llvm.dbg.label(metadata !2908), !dbg !3221
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !3222
  br label %624, !dbg !3222

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !3017
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !3224
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2884, metadata !DIExpression()), !dbg !3164
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2850, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2878, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3017
  %338 = icmp ult i64 %336, 2, !dbg !3225
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !3226
  br i1 %340, label %433, label %341, !dbg !3226

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !3227
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2903, metadata !DIExpression()), !dbg !3228
  br label %343, !dbg !3229

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2917
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !3008
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2879, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2877, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2874, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2872, metadata !DIExpression()), !dbg !3008
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2866, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2857, metadata !DIExpression()), !dbg !2917
  br i1 %339, label %394, label %350, !dbg !3230

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !3235

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2877, metadata !DIExpression()), !dbg !3017
  %352 = select i1 %110, i1 true, i1 %345, !dbg !3238
  br i1 %352, label %369, label %353, !dbg !3238

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !3240
  br i1 %354, label %355, label %357, !dbg !3244

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3240
  store i8 39, ptr %356, align 1, !dbg !3240, !tbaa !1066
  br label %357, !dbg !3240

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !3244
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2857, metadata !DIExpression()), !dbg !2917
  %359 = icmp ult i64 %358, %129, !dbg !3245
  br i1 %359, label %360, label %362, !dbg !3248

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !3245
  store i8 36, ptr %361, align 1, !dbg !3245, !tbaa !1066
  br label %362, !dbg !3245

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !3248
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2857, metadata !DIExpression()), !dbg !2917
  %364 = icmp ult i64 %363, %129, !dbg !3249
  br i1 %364, label %365, label %367, !dbg !3252

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !3249
  store i8 39, ptr %366, align 1, !dbg !3249, !tbaa !1066
  br label %367, !dbg !3249

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !3252
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2866, metadata !DIExpression()), !dbg !2917
  br label %369, !dbg !3253

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2917
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2866, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2857, metadata !DIExpression()), !dbg !2917
  %372 = icmp ult i64 %370, %129, !dbg !3254
  br i1 %372, label %373, label %375, !dbg !3257

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !3254
  store i8 92, ptr %374, align 1, !dbg !3254, !tbaa !1066
  br label %375, !dbg !3254

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !3257
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2857, metadata !DIExpression()), !dbg !2917
  %377 = icmp ult i64 %376, %129, !dbg !3258
  br i1 %377, label %378, label %382, !dbg !3261

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !3258
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !3258
  store i8 %380, ptr %381, align 1, !dbg !3258, !tbaa !1066
  br label %382, !dbg !3258

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !3261
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2857, metadata !DIExpression()), !dbg !2917
  %384 = icmp ult i64 %383, %129, !dbg !3262
  br i1 %384, label %385, label %390, !dbg !3265

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !3262
  %388 = or disjoint i8 %387, 48, !dbg !3262
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !3262
  store i8 %388, ptr %389, align 1, !dbg !3262, !tbaa !1066
  br label %390, !dbg !3262

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !3265
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2857, metadata !DIExpression()), !dbg !2917
  %392 = and i8 %349, 7, !dbg !3266
  %393 = or disjoint i8 %392, 48, !dbg !3267
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2879, metadata !DIExpression()), !dbg !3017
  br label %401, !dbg !3268

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !3269

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !3270
  br i1 %396, label %397, label %399, !dbg !3275

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3270
  store i8 92, ptr %398, align 1, !dbg !3270, !tbaa !1066
  br label %399, !dbg !3270

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !3275
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2874, metadata !DIExpression()), !dbg !3017
  br label %401, !dbg !3276

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2917
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2879, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2877, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2874, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2866, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2857, metadata !DIExpression()), !dbg !2917
  %407 = add i64 %346, 1, !dbg !3277
  %408 = icmp ugt i64 %342, %407, !dbg !3279
  br i1 %408, label %409, label %.loopexit2, !dbg !3280

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !3281
  %411 = select i1 %410, i1 true, i1 %405, !dbg !3281
  br i1 %411, label %423, label %412, !dbg !3281

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !3284
  br i1 %413, label %414, label %416, !dbg !3288

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !3284
  store i8 39, ptr %415, align 1, !dbg !3284, !tbaa !1066
  br label %416, !dbg !3284

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !3288
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2857, metadata !DIExpression()), !dbg !2917
  %418 = icmp ult i64 %417, %129, !dbg !3289
  br i1 %418, label %419, label %421, !dbg !3292

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !3289
  store i8 39, ptr %420, align 1, !dbg !3289, !tbaa !1066
  br label %421, !dbg !3289

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !3292
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2866, metadata !DIExpression()), !dbg !2917
  br label %423, !dbg !3293

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !3294
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2866, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2857, metadata !DIExpression()), !dbg !2917
  %426 = icmp ult i64 %424, %129, !dbg !3295
  br i1 %426, label %427, label %429, !dbg !3298

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !3295
  store i8 %406, ptr %428, align 1, !dbg !3295, !tbaa !1066
  br label %429, !dbg !3295

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !3298
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2872, metadata !DIExpression()), !dbg !3008
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !3299
  %432 = load i8, ptr %431, align 1, !dbg !3299, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2879, metadata !DIExpression()), !dbg !3017
  br label %343, !dbg !3300, !llvm.loop !3301

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !3304
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2917
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2921
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !3008
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !3017
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2848, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2879, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2878, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2877, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2874, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2872, metadata !DIExpression()), !dbg !3008
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2866, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2863, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2858, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2850, metadata !DIExpression()), !dbg !2917
  br i1 %111, label %455, label %444, !dbg !3305

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
  br i1 %120, label %456, label %476, !dbg !3307

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !3308

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
  %467 = lshr i8 %458, 5, !dbg !3309
  %468 = zext nneg i8 %467 to i64, !dbg !3309
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !3310
  %470 = load i32, ptr %469, align 4, !dbg !3310, !tbaa !1057
  %471 = and i8 %458, 31, !dbg !3311
  %472 = zext nneg i8 %471 to i32, !dbg !3311
  %473 = shl nuw i32 1, %472, !dbg !3312
  %474 = and i32 %470, %473, !dbg !3312
  %475 = icmp eq i32 %474, 0, !dbg !3312
  br i1 %475, label %476, label %487, !dbg !3313

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
  br i1 %153, label %487, label %523, !dbg !3314

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !3304
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2917
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2921
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !3315
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !3017
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2848, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2879, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2878, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2872, metadata !DIExpression()), !dbg !3008
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2866, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2863, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2858, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2850, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.label(metadata !2906), !dbg !3316
  br i1 %109, label %.loopexit8, label %497, !dbg !3317

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2877, metadata !DIExpression()), !dbg !3017
  %498 = select i1 %110, i1 true, i1 %492, !dbg !3319
  br i1 %498, label %515, label %499, !dbg !3319

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !3321
  br i1 %500, label %501, label %503, !dbg !3325

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !3321
  store i8 39, ptr %502, align 1, !dbg !3321, !tbaa !1066
  br label %503, !dbg !3321

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !3325
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2857, metadata !DIExpression()), !dbg !2917
  %505 = icmp ult i64 %504, %496, !dbg !3326
  br i1 %505, label %506, label %508, !dbg !3329

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !3326
  store i8 36, ptr %507, align 1, !dbg !3326, !tbaa !1066
  br label %508, !dbg !3326

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2857, metadata !DIExpression()), !dbg !2917
  %510 = icmp ult i64 %509, %496, !dbg !3330
  br i1 %510, label %511, label %513, !dbg !3333

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !3330
  store i8 39, ptr %512, align 1, !dbg !3330, !tbaa !1066
  br label %513, !dbg !3330

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2866, metadata !DIExpression()), !dbg !2917
  br label %515, !dbg !3334

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !3017
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2866, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2857, metadata !DIExpression()), !dbg !2917
  %518 = icmp ult i64 %516, %496, !dbg !3335
  br i1 %518, label %519, label %521, !dbg !3338

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !3335
  store i8 92, ptr %520, align 1, !dbg !3335, !tbaa !1066
  br label %521, !dbg !3335

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !3338
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2848, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2879, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2878, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2877, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2872, metadata !DIExpression()), !dbg !3008
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2866, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2863, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2858, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2850, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.label(metadata !2907), !dbg !3339
  br label %547, !dbg !3340

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2917
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !3017
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !3008
  br label %523, !dbg !3340

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !3304
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2917
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2921
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !3315
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !3343
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2848, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2879, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2878, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2877, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2872, metadata !DIExpression()), !dbg !3008
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2866, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2863, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2858, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2850, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.label(metadata !2907), !dbg !3339
  %534 = xor i1 %528, true, !dbg !3340
  %535 = select i1 %534, i1 true, i1 %530, !dbg !3340
  br i1 %535, label %547, label %536, !dbg !3340

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !3344
  br i1 %537, label %538, label %540, !dbg !3348

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !3344
  store i8 39, ptr %539, align 1, !dbg !3344, !tbaa !1066
  br label %540, !dbg !3344

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2857, metadata !DIExpression()), !dbg !2917
  %542 = icmp ult i64 %541, %533, !dbg !3349
  br i1 %542, label %543, label %545, !dbg !3352

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !3349
  store i8 39, ptr %544, align 1, !dbg !3349, !tbaa !1066
  br label %545, !dbg !3349

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !3352
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2866, metadata !DIExpression()), !dbg !2917
  br label %547, !dbg !3353

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !3017
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2866, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2857, metadata !DIExpression()), !dbg !2917
  %557 = icmp ult i64 %555, %548, !dbg !3354
  br i1 %557, label %558, label %560, !dbg !3357

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !3354
  store i8 %549, ptr %559, align 1, !dbg !3354, !tbaa !1066
  br label %560, !dbg !3354

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2857, metadata !DIExpression()), !dbg !2917
  %562 = select i1 %550, i1 %126, i1 false, !dbg !3358
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2864, metadata !DIExpression()), !dbg !2917
  br label %563, !dbg !3359

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !3304
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2917
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2921
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !3315
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2848, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2872, metadata !DIExpression()), !dbg !3008
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2866, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2864, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2863, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2858, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2850, metadata !DIExpression()), !dbg !2917
  %572 = add i64 %570, 1, !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2872, metadata !DIExpression()), !dbg !3008
  br label %121, !dbg !3361, !llvm.loop !3362

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2996
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2921
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2848, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2864, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2863, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2858, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2857, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2850, metadata !DIExpression()), !dbg !2917
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !3364
  %575 = xor i1 %109, true, !dbg !3366
  %576 = or i1 %574, %575, !dbg !3366
  %577 = or i1 %576, %110, !dbg !3366
  br i1 %577, label %578, label %.loopexit13, !dbg !3366

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !3367
  %580 = xor i1 %.lcssa38, true, !dbg !3367
  %581 = select i1 %579, i1 true, i1 %580, !dbg !3367
  br i1 %581, label %589, label %582, !dbg !3367

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !3369

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2921
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !3371
  br label %638, !dbg !3373

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !3374
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !3376
  br i1 %588, label %27, label %589, !dbg !3376

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2917
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2996
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !3377
  %592 = or i1 %591, %590, !dbg !3379
  br i1 %592, label %608, label %593, !dbg !3379

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2859, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2857, metadata !DIExpression()), !dbg !2917
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !3380, !tbaa !1066
  %595 = icmp eq i8 %594, 0, !dbg !3383
  br i1 %595, label %608, label %.preheader, !dbg !3383

.preheader:                                       ; preds = %593
  br label %596, !dbg !3383

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2859, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2857, metadata !DIExpression()), !dbg !2917
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !3384
  br i1 %600, label %601, label %603, !dbg !3387

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !3384
  store i8 %597, ptr %602, align 1, !dbg !3384, !tbaa !1066
  br label %603, !dbg !3384

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !3387
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2857, metadata !DIExpression()), !dbg !2917
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !3388
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2859, metadata !DIExpression()), !dbg !2917
  %606 = load i8, ptr %605, align 1, !dbg !3380, !tbaa !1066
  %607 = icmp eq i8 %606, 0, !dbg !3383
  br i1 %607, label %.loopexit, label %596, !dbg !3383, !llvm.loop !3389

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !3387
  br label %608, !dbg !3391

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2996
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2857, metadata !DIExpression()), !dbg !2917
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !3391
  br i1 %610, label %611, label %638, !dbg !3393

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !3394
  store i8 0, ptr %612, align 1, !dbg !3395, !tbaa !1066
  br label %638, !dbg !3394

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2908), !dbg !3221
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !3396
  br i1 %614, label %624, label %630, !dbg !3222

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !3017
  br label %615, !dbg !3396

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !3396

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !3396

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2908), !dbg !3221
  %622 = icmp eq i32 %616, 2, !dbg !3396
  %623 = select i1 %619, i32 4, i32 2, !dbg !3222
  br i1 %622, label %624, label %630, !dbg !3222

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !3222

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !3023
  br label %630, !dbg !3397

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2851, metadata !DIExpression()), !dbg !2917
  %636 = and i32 %5, -3, !dbg !3397
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !3398
  br label %638, !dbg !3399

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !3400
}

; Function Attrs: nounwind
declare !dbg !3401 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3404 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3406 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3410, metadata !DIExpression()), !dbg !3413
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3411, metadata !DIExpression()), !dbg !3413
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3412, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata ptr %0, metadata !3414, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i64 %1, metadata !3419, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata ptr null, metadata !3420, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata ptr %2, metadata !3421, metadata !DIExpression()), !dbg !3427
  %4 = icmp eq ptr %2, null, !dbg !3429
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3429
  call void @llvm.dbg.value(metadata ptr %5, metadata !3422, metadata !DIExpression()), !dbg !3427
  %6 = tail call ptr @__errno_location() #43, !dbg !3430
  %7 = load i32, ptr %6, align 4, !dbg !3430, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %7, metadata !3423, metadata !DIExpression()), !dbg !3427
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3431
  %9 = load i32, ptr %8, align 4, !dbg !3431, !tbaa !2791
  %10 = or i32 %9, 1, !dbg !3432
  call void @llvm.dbg.value(metadata i32 %10, metadata !3424, metadata !DIExpression()), !dbg !3427
  %11 = load i32, ptr %5, align 8, !dbg !3433, !tbaa !2741
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3434
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3435
  %14 = load ptr, ptr %13, align 8, !dbg !3435, !tbaa !2812
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3436
  %16 = load ptr, ptr %15, align 8, !dbg !3436, !tbaa !2815
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3437
  %18 = add i64 %17, 1, !dbg !3438
  call void @llvm.dbg.value(metadata i64 %18, metadata !3425, metadata !DIExpression()), !dbg !3427
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #48, !dbg !3439
  call void @llvm.dbg.value(metadata ptr %19, metadata !3426, metadata !DIExpression()), !dbg !3427
  %20 = load i32, ptr %5, align 8, !dbg !3440, !tbaa !2741
  %21 = load ptr, ptr %13, align 8, !dbg !3441, !tbaa !2812
  %22 = load ptr, ptr %15, align 8, !dbg !3442, !tbaa !2815
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3443
  store i32 %7, ptr %6, align 4, !dbg !3444, !tbaa !1057
  ret ptr %19, !dbg !3445
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3415 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3414, metadata !DIExpression()), !dbg !3446
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3419, metadata !DIExpression()), !dbg !3446
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3420, metadata !DIExpression()), !dbg !3446
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3421, metadata !DIExpression()), !dbg !3446
  %5 = icmp eq ptr %3, null, !dbg !3447
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3447
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3422, metadata !DIExpression()), !dbg !3446
  %7 = tail call ptr @__errno_location() #43, !dbg !3448
  %8 = load i32, ptr %7, align 4, !dbg !3448, !tbaa !1057
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3423, metadata !DIExpression()), !dbg !3446
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3449
  %10 = load i32, ptr %9, align 4, !dbg !3449, !tbaa !2791
  %11 = icmp eq ptr %2, null, !dbg !3450
  %12 = zext i1 %11 to i32, !dbg !3450
  %13 = or i32 %10, %12, !dbg !3451
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3424, metadata !DIExpression()), !dbg !3446
  %14 = load i32, ptr %6, align 8, !dbg !3452, !tbaa !2741
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3453
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3454
  %17 = load ptr, ptr %16, align 8, !dbg !3454, !tbaa !2812
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3455
  %19 = load ptr, ptr %18, align 8, !dbg !3455, !tbaa !2815
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3456
  %21 = add i64 %20, 1, !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3425, metadata !DIExpression()), !dbg !3446
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #48, !dbg !3458
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3426, metadata !DIExpression()), !dbg !3446
  %23 = load i32, ptr %6, align 8, !dbg !3459, !tbaa !2741
  %24 = load ptr, ptr %16, align 8, !dbg !3460, !tbaa !2812
  %25 = load ptr, ptr %18, align 8, !dbg !3461, !tbaa !2815
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3462
  store i32 %8, ptr %7, align 4, !dbg !3463, !tbaa !1057
  br i1 %11, label %28, label %27, !dbg !3464

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3465, !tbaa !3467
  br label %28, !dbg !3468

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3469
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3470 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3475, !tbaa !957
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3472, metadata !DIExpression()), !dbg !3476
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3473, metadata !DIExpression()), !dbg !3477
  %2 = load i32, ptr @nslots, align 4, !tbaa !1057
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3473, metadata !DIExpression()), !dbg !3477
  %3 = icmp sgt i32 %2, 1, !dbg !3478
  br i1 %3, label %4, label %6, !dbg !3480

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3478
  br label %10, !dbg !3480

.loopexit:                                        ; preds = %10
  br label %6, !dbg !3481

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3481
  %8 = load ptr, ptr %7, align 8, !dbg !3481, !tbaa !3483
  %9 = icmp eq ptr %8, @slot0, !dbg !3485
  br i1 %9, label %17, label %16, !dbg !3486

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3473, metadata !DIExpression()), !dbg !3477
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3487
  %13 = load ptr, ptr %12, align 8, !dbg !3487, !tbaa !3483
  tail call void @free(ptr noundef %13) #40, !dbg !3488
  %14 = add nuw nsw i64 %11, 1, !dbg !3489
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3473, metadata !DIExpression()), !dbg !3477
  %15 = icmp eq i64 %14, %5, !dbg !3478
  br i1 %15, label %.loopexit, label %10, !dbg !3480, !llvm.loop !3490

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3492
  store i64 256, ptr @slotvec0, align 8, !dbg !3494, !tbaa !3495
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3496, !tbaa !3483
  br label %17, !dbg !3497

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3498
  br i1 %18, label %20, label %19, !dbg !3500

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3501
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3503, !tbaa !957
  br label %20, !dbg !3504

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3505, !tbaa !1057
  ret void, !dbg !3506
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3507 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3510 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3512, metadata !DIExpression()), !dbg !3514
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3513, metadata !DIExpression()), !dbg !3514
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3515
  ret ptr %3, !dbg !3516
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3517 {
  %5 = alloca i64, align 8, !DIAssignID !3537
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3531, metadata !DIExpression(), metadata !3537, metadata ptr %5, metadata !DIExpression()), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3521, metadata !DIExpression()), !dbg !3539
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3522, metadata !DIExpression()), !dbg !3539
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3523, metadata !DIExpression()), !dbg !3539
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3524, metadata !DIExpression()), !dbg !3539
  %6 = tail call ptr @__errno_location() #43, !dbg !3540
  %7 = load i32, ptr %6, align 4, !dbg !3540, !tbaa !1057
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3525, metadata !DIExpression()), !dbg !3539
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3541, !tbaa !957
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3526, metadata !DIExpression()), !dbg !3539
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3527, metadata !DIExpression()), !dbg !3539
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3542
  br i1 %9, label %10, label %11, !dbg !3542

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3544
  unreachable, !dbg !3544

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3545, !tbaa !1057
  %13 = icmp sgt i32 %12, %0, !dbg !3546
  br i1 %13, label %32, label %14, !dbg !3547

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3548
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3528, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3538
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3549
  %16 = sext i32 %12 to i64, !dbg !3550
  store i64 %16, ptr %5, align 8, !dbg !3551, !tbaa !3467, !DIAssignID !3552
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3531, metadata !DIExpression(), metadata !3552, metadata ptr %5, metadata !DIExpression()), !dbg !3538
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3553
  %18 = add nuw nsw i32 %0, 1, !dbg !3554
  %19 = sub i32 %18, %12, !dbg !3555
  %20 = sext i32 %19 to i64, !dbg !3556
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3557
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3526, metadata !DIExpression()), !dbg !3539
  store ptr %21, ptr @slotvec, align 8, !dbg !3558, !tbaa !957
  br i1 %15, label %22, label %23, !dbg !3559

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3560, !tbaa.struct !3562
  br label %23, !dbg !3563

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3564, !tbaa !1057
  %25 = sext i32 %24 to i64, !dbg !3565
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3565
  %27 = load i64, ptr %5, align 8, !dbg !3566, !tbaa !3467
  %28 = sub nsw i64 %27, %25, !dbg !3567
  %29 = shl i64 %28, 4, !dbg !3568
  call void @llvm.dbg.value(metadata ptr %26, metadata !2951, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i32 0, metadata !2957, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i64 %29, metadata !2958, metadata !DIExpression()), !dbg !3569
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3571
  %30 = load i64, ptr %5, align 8, !dbg !3572, !tbaa !3467
  %31 = trunc i64 %30 to i32, !dbg !3572
  store i32 %31, ptr @nslots, align 4, !dbg !3573, !tbaa !1057
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3574
  br label %32, !dbg !3575

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3539
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3526, metadata !DIExpression()), !dbg !3539
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3576
  %36 = load i64, ptr %35, align 8, !dbg !3577, !tbaa !3495
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3532, metadata !DIExpression()), !dbg !3578
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3579
  %38 = load ptr, ptr %37, align 8, !dbg !3579, !tbaa !3483
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3534, metadata !DIExpression()), !dbg !3578
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3580
  %40 = load i32, ptr %39, align 4, !dbg !3580, !tbaa !2791
  %41 = or i32 %40, 1, !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3535, metadata !DIExpression()), !dbg !3578
  %42 = load i32, ptr %3, align 8, !dbg !3582, !tbaa !2741
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3583
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3584
  %45 = load ptr, ptr %44, align 8, !dbg !3584, !tbaa !2812
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3585
  %47 = load ptr, ptr %46, align 8, !dbg !3585, !tbaa !2815
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3586
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3536, metadata !DIExpression()), !dbg !3578
  %49 = icmp ugt i64 %36, %48, !dbg !3587
  br i1 %49, label %60, label %50, !dbg !3589

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3532, metadata !DIExpression()), !dbg !3578
  store i64 %51, ptr %35, align 8, !dbg !3592, !tbaa !3495
  %52 = icmp eq ptr %38, @slot0, !dbg !3593
  br i1 %52, label %54, label %53, !dbg !3595

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3596
  br label %54, !dbg !3596

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #48, !dbg !3597
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3534, metadata !DIExpression()), !dbg !3578
  store ptr %55, ptr %37, align 8, !dbg !3598, !tbaa !3483
  %56 = load i32, ptr %3, align 8, !dbg !3599, !tbaa !2741
  %57 = load ptr, ptr %44, align 8, !dbg !3600, !tbaa !2812
  %58 = load ptr, ptr %46, align 8, !dbg !3601, !tbaa !2815
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3602
  br label %60, !dbg !3603

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3578
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3534, metadata !DIExpression()), !dbg !3578
  store i32 %7, ptr %6, align 4, !dbg !3604, !tbaa !1057
  ret ptr %61, !dbg !3605
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #28

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3606 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3610, metadata !DIExpression()), !dbg !3613
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3611, metadata !DIExpression()), !dbg !3613
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3612, metadata !DIExpression()), !dbg !3613
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3614
  ret ptr %4, !dbg !3615
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3616 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3618, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i32 0, metadata !3512, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata ptr %0, metadata !3513, metadata !DIExpression()), !dbg !3620
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3622
  ret ptr %2, !dbg !3623
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3624 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3628, metadata !DIExpression()), !dbg !3630
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3629, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 0, metadata !3610, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata ptr %0, metadata !3611, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %1, metadata !3612, metadata !DIExpression()), !dbg !3631
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3633
  ret ptr %3, !dbg !3634
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3635 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3643
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3642, metadata !DIExpression(), metadata !3643, metadata ptr %4, metadata !DIExpression()), !dbg !3644
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3639, metadata !DIExpression()), !dbg !3644
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3640, metadata !DIExpression()), !dbg !3644
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3641, metadata !DIExpression()), !dbg !3644
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3645
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3646), !dbg !3649
  call void @llvm.dbg.value(metadata i32 %1, metadata !3650, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3655, metadata !DIExpression()), !dbg !3658
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3658, !alias.scope !3646, !DIAssignID !3659
  call void @llvm.dbg.assign(metadata i8 0, metadata !3642, metadata !DIExpression(), metadata !3659, metadata ptr %4, metadata !DIExpression()), !dbg !3644
  %5 = icmp eq i32 %1, 10, !dbg !3660
  br i1 %5, label %6, label %7, !dbg !3662

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3663, !noalias !3646
  unreachable, !dbg !3663

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3664, !tbaa !2741, !alias.scope !3646, !DIAssignID !3665
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3642, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3665, metadata ptr %4, metadata !DIExpression()), !dbg !3644
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3666
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3667
  ret ptr %8, !dbg !3668
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3669 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3678
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3677, metadata !DIExpression(), metadata !3678, metadata ptr %5, metadata !DIExpression()), !dbg !3679
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3673, metadata !DIExpression()), !dbg !3679
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3674, metadata !DIExpression()), !dbg !3679
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3675, metadata !DIExpression()), !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3676, metadata !DIExpression()), !dbg !3679
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3680
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3681), !dbg !3684
  call void @llvm.dbg.value(metadata i32 %1, metadata !3650, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3655, metadata !DIExpression()), !dbg !3687
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3687, !alias.scope !3681, !DIAssignID !3688
  call void @llvm.dbg.assign(metadata i8 0, metadata !3677, metadata !DIExpression(), metadata !3688, metadata ptr %5, metadata !DIExpression()), !dbg !3679
  %6 = icmp eq i32 %1, 10, !dbg !3689
  br i1 %6, label %7, label %8, !dbg !3690

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3691, !noalias !3681
  unreachable, !dbg !3691

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3692, !tbaa !2741, !alias.scope !3681, !DIAssignID !3693
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3693, metadata ptr %5, metadata !DIExpression()), !dbg !3679
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3694
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3695
  ret ptr %9, !dbg !3696
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3697 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3703
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3701, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3702, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3642, metadata !DIExpression(), metadata !3703, metadata ptr %3, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i32 0, metadata !3639, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i32 %0, metadata !3640, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata ptr %1, metadata !3641, metadata !DIExpression()), !dbg !3705
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3707
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3708), !dbg !3711
  call void @llvm.dbg.value(metadata i32 %0, metadata !3650, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3655, metadata !DIExpression()), !dbg !3714
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3714, !alias.scope !3708, !DIAssignID !3715
  call void @llvm.dbg.assign(metadata i8 0, metadata !3642, metadata !DIExpression(), metadata !3715, metadata ptr %3, metadata !DIExpression()), !dbg !3705
  %4 = icmp eq i32 %0, 10, !dbg !3716
  br i1 %4, label %5, label %6, !dbg !3717

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3718, !noalias !3708
  unreachable, !dbg !3718

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3719, !tbaa !2741, !alias.scope !3708, !DIAssignID !3720
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3642, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3720, metadata ptr %3, metadata !DIExpression()), !dbg !3705
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3721
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3722
  ret ptr %7, !dbg !3723
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3724 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3731
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3728, metadata !DIExpression()), !dbg !3732
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3729, metadata !DIExpression()), !dbg !3732
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3730, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3677, metadata !DIExpression(), metadata !3731, metadata ptr %4, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i32 0, metadata !3673, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i32 %0, metadata !3674, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata ptr %1, metadata !3675, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i64 %2, metadata !3676, metadata !DIExpression()), !dbg !3733
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3735
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3736), !dbg !3739
  call void @llvm.dbg.value(metadata i32 %0, metadata !3650, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3655, metadata !DIExpression()), !dbg !3742
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3742, !alias.scope !3736, !DIAssignID !3743
  call void @llvm.dbg.assign(metadata i8 0, metadata !3677, metadata !DIExpression(), metadata !3743, metadata ptr %4, metadata !DIExpression()), !dbg !3733
  %5 = icmp eq i32 %0, 10, !dbg !3744
  br i1 %5, label %6, label %7, !dbg !3745

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3746, !noalias !3736
  unreachable, !dbg !3746

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3747, !tbaa !2741, !alias.scope !3736, !DIAssignID !3748
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3677, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3748, metadata ptr %4, metadata !DIExpression()), !dbg !3733
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3749
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3750
  ret ptr %8, !dbg !3751
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3752 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3760
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3759, metadata !DIExpression(), metadata !3760, metadata ptr %4, metadata !DIExpression()), !dbg !3761
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3756, metadata !DIExpression()), !dbg !3761
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3757, metadata !DIExpression()), !dbg !3761
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3758, metadata !DIExpression()), !dbg !3761
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3763, !tbaa.struct !3764, !DIAssignID !3765
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3759, metadata !DIExpression(), metadata !3765, metadata ptr %4, metadata !DIExpression()), !dbg !3761
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2758, metadata !DIExpression()), !dbg !3766
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2759, metadata !DIExpression()), !dbg !3766
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2760, metadata !DIExpression()), !dbg !3766
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2761, metadata !DIExpression()), !dbg !3766
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3768
  %6 = lshr i8 %2, 5, !dbg !3769
  %7 = zext nneg i8 %6 to i64, !dbg !3769
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3770
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2762, metadata !DIExpression()), !dbg !3766
  %9 = and i8 %2, 31, !dbg !3771
  %10 = zext nneg i8 %9 to i32, !dbg !3771
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2764, metadata !DIExpression()), !dbg !3766
  %11 = load i32, ptr %8, align 4, !dbg !3772, !tbaa !1057
  %12 = lshr i32 %11, %10, !dbg !3773
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2765, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3766
  %13 = and i32 %12, 1, !dbg !3774
  %14 = xor i32 %13, 1, !dbg !3774
  %15 = shl nuw i32 %14, %10, !dbg !3775
  %16 = xor i32 %15, %11, !dbg !3776
  store i32 %16, ptr %8, align 4, !dbg !3776, !tbaa !1057
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3777
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3778
  ret ptr %17, !dbg !3779
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3780 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3786
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3784, metadata !DIExpression()), !dbg !3787
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3785, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3759, metadata !DIExpression(), metadata !3786, metadata ptr %3, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata ptr %0, metadata !3756, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i64 -1, metadata !3757, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i8 %1, metadata !3758, metadata !DIExpression()), !dbg !3788
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3791, !tbaa.struct !3764, !DIAssignID !3792
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3759, metadata !DIExpression(), metadata !3792, metadata ptr %3, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata ptr %3, metadata !2758, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8 %1, metadata !2759, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i32 1, metadata !2760, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8 %1, metadata !2761, metadata !DIExpression()), !dbg !3793
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3795
  %5 = lshr i8 %1, 5, !dbg !3796
  %6 = zext nneg i8 %5 to i64, !dbg !3796
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3797
  call void @llvm.dbg.value(metadata ptr %7, metadata !2762, metadata !DIExpression()), !dbg !3793
  %8 = and i8 %1, 31, !dbg !3798
  %9 = zext nneg i8 %8 to i32, !dbg !3798
  call void @llvm.dbg.value(metadata i32 %9, metadata !2764, metadata !DIExpression()), !dbg !3793
  %10 = load i32, ptr %7, align 4, !dbg !3799, !tbaa !1057
  %11 = lshr i32 %10, %9, !dbg !3800
  call void @llvm.dbg.value(metadata i32 %11, metadata !2765, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3793
  %12 = and i32 %11, 1, !dbg !3801
  %13 = xor i32 %12, 1, !dbg !3801
  %14 = shl nuw i32 %13, %9, !dbg !3802
  %15 = xor i32 %14, %10, !dbg !3803
  store i32 %15, ptr %7, align 4, !dbg !3803, !tbaa !1057
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3804
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3805
  ret ptr %16, !dbg !3806
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3807 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3810
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3809, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata ptr %0, metadata !3784, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i8 58, metadata !3785, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3759, metadata !DIExpression(), metadata !3810, metadata ptr %2, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata ptr %0, metadata !3756, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i64 -1, metadata !3757, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i8 58, metadata !3758, metadata !DIExpression()), !dbg !3814
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3817, !tbaa.struct !3764, !DIAssignID !3818
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3759, metadata !DIExpression(), metadata !3818, metadata ptr %2, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata ptr %2, metadata !2758, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i8 58, metadata !2759, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i32 1, metadata !2760, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i8 58, metadata !2761, metadata !DIExpression()), !dbg !3819
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3821
  call void @llvm.dbg.value(metadata ptr %3, metadata !2762, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i32 26, metadata !2764, metadata !DIExpression()), !dbg !3819
  %4 = load i32, ptr %3, align 4, !dbg !3822, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %4, metadata !2765, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3819
  %5 = or i32 %4, 67108864, !dbg !3823
  store i32 %5, ptr %3, align 4, !dbg !3823, !tbaa !1057
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3824
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3825
  ret ptr %6, !dbg !3826
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3827 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3831
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3829, metadata !DIExpression()), !dbg !3832
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3830, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3759, metadata !DIExpression(), metadata !3831, metadata ptr %3, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata ptr %0, metadata !3756, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i64 %1, metadata !3757, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i8 58, metadata !3758, metadata !DIExpression()), !dbg !3833
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3836, !tbaa.struct !3764, !DIAssignID !3837
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3759, metadata !DIExpression(), metadata !3837, metadata ptr %3, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata ptr %3, metadata !2758, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i8 58, metadata !2759, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i32 1, metadata !2760, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i8 58, metadata !2761, metadata !DIExpression()), !dbg !3838
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3840
  call void @llvm.dbg.value(metadata ptr %4, metadata !2762, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i32 26, metadata !2764, metadata !DIExpression()), !dbg !3838
  %5 = load i32, ptr %4, align 4, !dbg !3841, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %5, metadata !2765, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3838
  %6 = or i32 %5, 67108864, !dbg !3842
  store i32 %6, ptr %4, align 4, !dbg !3842, !tbaa !1057
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3843
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3844
  ret ptr %7, !dbg !3845
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3846 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3852
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3851, metadata !DIExpression(), metadata !3852, metadata ptr %4, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3655, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3854
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3848, metadata !DIExpression()), !dbg !3853
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3849, metadata !DIExpression()), !dbg !3853
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3850, metadata !DIExpression()), !dbg !3853
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3856
  call void @llvm.dbg.value(metadata i32 %1, metadata !3650, metadata !DIExpression()), !dbg !3857
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3655, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3857
  %5 = icmp eq i32 %1, 10, !dbg !3858
  br i1 %5, label %6, label %7, !dbg !3859

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3860, !noalias !3861
  unreachable, !dbg !3860

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3655, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3857
  store i32 %1, ptr %4, align 8, !dbg !3864, !tbaa.struct !3764, !DIAssignID !3865
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3864
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3864
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3851, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3865, metadata ptr %4, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3851, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3866, metadata ptr %8, metadata !DIExpression()), !dbg !3853
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2758, metadata !DIExpression()), !dbg !3867
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2759, metadata !DIExpression()), !dbg !3867
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2760, metadata !DIExpression()), !dbg !3867
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2761, metadata !DIExpression()), !dbg !3867
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3869
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2762, metadata !DIExpression()), !dbg !3867
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2764, metadata !DIExpression()), !dbg !3867
  %10 = load i32, ptr %9, align 4, !dbg !3870, !tbaa !1057
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2765, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3867
  %11 = or i32 %10, 67108864, !dbg !3871
  store i32 %11, ptr %9, align 4, !dbg !3871, !tbaa !1057, !DIAssignID !3872
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3851, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3872, metadata ptr %9, metadata !DIExpression()), !dbg !3853
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3873
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3874
  ret ptr %12, !dbg !3875
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3876 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3884
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3880, metadata !DIExpression()), !dbg !3885
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3881, metadata !DIExpression()), !dbg !3885
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3882, metadata !DIExpression()), !dbg !3885
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3883, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3886, metadata !DIExpression(), metadata !3884, metadata ptr %5, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i32 %0, metadata !3891, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata ptr %1, metadata !3892, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata ptr %2, metadata !3893, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata ptr %3, metadata !3894, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i64 -1, metadata !3895, metadata !DIExpression()), !dbg !3896
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3899, !tbaa.struct !3764, !DIAssignID !3900
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3886, metadata !DIExpression(), metadata !3900, metadata ptr %5, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3886, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3901, metadata ptr undef, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata ptr %5, metadata !2798, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata ptr %1, metadata !2799, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata ptr %2, metadata !2800, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata ptr %5, metadata !2798, metadata !DIExpression()), !dbg !3902
  store i32 10, ptr %5, align 8, !dbg !3904, !tbaa !2741, !DIAssignID !3905
  call void @llvm.dbg.assign(metadata i32 10, metadata !3886, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3905, metadata ptr %5, metadata !DIExpression()), !dbg !3896
  %6 = icmp ne ptr %1, null, !dbg !3906
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3907
  br i1 %8, label %10, label %9, !dbg !3907

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3908
  unreachable, !dbg !3908

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3909
  store ptr %1, ptr %11, align 8, !dbg !3910, !tbaa !2812, !DIAssignID !3911
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3886, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3911, metadata ptr %11, metadata !DIExpression()), !dbg !3896
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3912
  store ptr %2, ptr %12, align 8, !dbg !3913, !tbaa !2815, !DIAssignID !3914
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3886, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3914, metadata ptr %12, metadata !DIExpression()), !dbg !3896
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3915
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3916
  ret ptr %13, !dbg !3917
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3887 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3918
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3886, metadata !DIExpression(), metadata !3918, metadata ptr %6, metadata !DIExpression()), !dbg !3919
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3891, metadata !DIExpression()), !dbg !3919
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3892, metadata !DIExpression()), !dbg !3919
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3893, metadata !DIExpression()), !dbg !3919
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3894, metadata !DIExpression()), !dbg !3919
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3895, metadata !DIExpression()), !dbg !3919
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3921, !tbaa.struct !3764, !DIAssignID !3922
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3886, metadata !DIExpression(), metadata !3922, metadata ptr %6, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3886, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3923, metadata ptr undef, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata ptr %6, metadata !2798, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata ptr %1, metadata !2799, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata ptr %2, metadata !2800, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata ptr %6, metadata !2798, metadata !DIExpression()), !dbg !3924
  store i32 10, ptr %6, align 8, !dbg !3926, !tbaa !2741, !DIAssignID !3927
  call void @llvm.dbg.assign(metadata i32 10, metadata !3886, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3927, metadata ptr %6, metadata !DIExpression()), !dbg !3919
  %7 = icmp ne ptr %1, null, !dbg !3928
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3929
  br i1 %9, label %11, label %10, !dbg !3929

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3930
  unreachable, !dbg !3930

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3931
  store ptr %1, ptr %12, align 8, !dbg !3932, !tbaa !2812, !DIAssignID !3933
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3886, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3933, metadata ptr %12, metadata !DIExpression()), !dbg !3919
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3934
  store ptr %2, ptr %13, align 8, !dbg !3935, !tbaa !2815, !DIAssignID !3936
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3886, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3936, metadata ptr %13, metadata !DIExpression()), !dbg !3919
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3937
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3938
  ret ptr %14, !dbg !3939
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3940 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3947
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3944, metadata !DIExpression()), !dbg !3948
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3945, metadata !DIExpression()), !dbg !3948
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3946, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i32 0, metadata !3880, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata ptr %0, metadata !3881, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata ptr %1, metadata !3882, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata ptr %2, metadata !3883, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3886, metadata !DIExpression(), metadata !3947, metadata ptr %4, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata i32 0, metadata !3891, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata ptr %0, metadata !3892, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata ptr %1, metadata !3893, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata ptr %2, metadata !3894, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata i64 -1, metadata !3895, metadata !DIExpression()), !dbg !3951
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3954, !tbaa.struct !3764, !DIAssignID !3955
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3886, metadata !DIExpression(), metadata !3955, metadata ptr %4, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3886, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3956, metadata ptr undef, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata ptr %4, metadata !2798, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata ptr %0, metadata !2799, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata ptr %1, metadata !2800, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata ptr %4, metadata !2798, metadata !DIExpression()), !dbg !3957
  store i32 10, ptr %4, align 8, !dbg !3959, !tbaa !2741, !DIAssignID !3960
  call void @llvm.dbg.assign(metadata i32 10, metadata !3886, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3960, metadata ptr %4, metadata !DIExpression()), !dbg !3951
  %5 = icmp ne ptr %0, null, !dbg !3961
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3962
  br i1 %7, label %9, label %8, !dbg !3962

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3963
  unreachable, !dbg !3963

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3964
  store ptr %0, ptr %10, align 8, !dbg !3965, !tbaa !2812, !DIAssignID !3966
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3886, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3966, metadata ptr %10, metadata !DIExpression()), !dbg !3951
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3967
  store ptr %1, ptr %11, align 8, !dbg !3968, !tbaa !2815, !DIAssignID !3969
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3886, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3969, metadata ptr %11, metadata !DIExpression()), !dbg !3951
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3970
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3971
  ret ptr %12, !dbg !3972
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3973 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3981
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3977, metadata !DIExpression()), !dbg !3982
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3978, metadata !DIExpression()), !dbg !3982
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3979, metadata !DIExpression()), !dbg !3982
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3980, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3886, metadata !DIExpression(), metadata !3981, metadata ptr %5, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i32 0, metadata !3891, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata ptr %0, metadata !3892, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata ptr %1, metadata !3893, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata ptr %2, metadata !3894, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i64 %3, metadata !3895, metadata !DIExpression()), !dbg !3983
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3985
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3986, !tbaa.struct !3764, !DIAssignID !3987
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3886, metadata !DIExpression(), metadata !3987, metadata ptr %5, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3886, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3988, metadata ptr undef, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata ptr %5, metadata !2798, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.value(metadata ptr %0, metadata !2799, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.value(metadata ptr %1, metadata !2800, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.value(metadata ptr %5, metadata !2798, metadata !DIExpression()), !dbg !3989
  store i32 10, ptr %5, align 8, !dbg !3991, !tbaa !2741, !DIAssignID !3992
  call void @llvm.dbg.assign(metadata i32 10, metadata !3886, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3992, metadata ptr %5, metadata !DIExpression()), !dbg !3983
  %6 = icmp ne ptr %0, null, !dbg !3993
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3994
  br i1 %8, label %10, label %9, !dbg !3994

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3995
  unreachable, !dbg !3995

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3996
  store ptr %0, ptr %11, align 8, !dbg !3997, !tbaa !2812, !DIAssignID !3998
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3886, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3998, metadata ptr %11, metadata !DIExpression()), !dbg !3983
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3999
  store ptr %1, ptr %12, align 8, !dbg !4000, !tbaa !2815, !DIAssignID !4001
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3886, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4001, metadata ptr %12, metadata !DIExpression()), !dbg !3983
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4002
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !4003
  ret ptr %13, !dbg !4004
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4005 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4009, metadata !DIExpression()), !dbg !4012
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4010, metadata !DIExpression()), !dbg !4012
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4011, metadata !DIExpression()), !dbg !4012
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4013
  ret ptr %4, !dbg !4014
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4015 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4019, metadata !DIExpression()), !dbg !4021
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4020, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i32 0, metadata !4009, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata ptr %0, metadata !4010, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i64 %1, metadata !4011, metadata !DIExpression()), !dbg !4022
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4024
  ret ptr %3, !dbg !4025
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4026 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4030, metadata !DIExpression()), !dbg !4032
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4031, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i32 %0, metadata !4009, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata ptr %1, metadata !4010, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i64 -1, metadata !4011, metadata !DIExpression()), !dbg !4033
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4035
  ret ptr %3, !dbg !4036
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4037 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4039, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 0, metadata !4030, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata ptr %0, metadata !4031, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i32 0, metadata !4009, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata ptr %0, metadata !4010, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i64 -1, metadata !4011, metadata !DIExpression()), !dbg !4043
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4045
  ret ptr %2, !dbg !4046
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @strintcmp(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #24 !dbg !4047 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4049, metadata !DIExpression()), !dbg !4051
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4050, metadata !DIExpression()), !dbg !4051
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4052, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4058, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i32 256, metadata !4059, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i32 256, metadata !4060, metadata !DIExpression()), !dbg !4066
  %3 = load i8, ptr %0, align 1, !dbg !4068, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %3, metadata !4061, metadata !DIExpression()), !dbg !4066
  %4 = load i8, ptr %1, align 1, !dbg !4069, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %4, metadata !4062, metadata !DIExpression()), !dbg !4066
  %5 = icmp eq i8 %3, 45, !dbg !4070
  br i1 %5, label %.preheader8, label %93, !dbg !4072

.preheader8:                                      ; preds = %2
  br label %6, !dbg !4073

6:                                                ; preds = %.preheader8, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %.preheader8 ]
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4052, metadata !DIExpression()), !dbg !4066
  %8 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !4075
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !4052, metadata !DIExpression()), !dbg !4066
  %9 = load i8, ptr %8, align 1, !dbg !4076, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %9, metadata !4061, metadata !DIExpression()), !dbg !4066
  %10 = icmp eq i8 %9, 48, !dbg !4077
  br i1 %10, label %6, label %11, !dbg !4078, !llvm.loop !4079

11:                                               ; preds = %6
  %.lcssa32 = phi ptr [ %8, %6 ], !dbg !4075
  %.lcssa31 = phi i8 [ %9, %6 ], !dbg !4076
  %12 = icmp eq i8 %4, 45, !dbg !4081
  br i1 %12, label %.preheader5, label %13, !dbg !4083

.preheader5:                                      ; preds = %11
  br label %30, !dbg !4084

13:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 %.lcssa31, metadata !4061, metadata !DIExpression()), !dbg !4066
  %14 = zext i8 %.lcssa31 to i32, !dbg !4085
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !4088, metadata !DIExpression()), !dbg !4092
  %15 = add nsw i32 %14, -48, !dbg !4094
  %16 = icmp ult i32 %15, 10, !dbg !4094
  br i1 %16, label %193, label %17, !dbg !4095

17:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 %4, metadata !4062, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4058, metadata !DIExpression()), !dbg !4066
  %18 = icmp eq i8 %4, 48, !dbg !4096
  br i1 %18, label %.preheader6, label %24, !dbg !4097

.preheader6:                                      ; preds = %17
  br label %19, !dbg !4097

19:                                               ; preds = %.preheader6, %19
  %20 = phi ptr [ %21, %19 ], [ %1, %.preheader6 ]
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !4058, metadata !DIExpression()), !dbg !4066
  %21 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !4098
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !4058, metadata !DIExpression()), !dbg !4066
  %22 = load i8, ptr %21, align 1, !dbg !4099, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %22, metadata !4062, metadata !DIExpression()), !dbg !4066
  %23 = icmp eq i8 %22, 48, !dbg !4096
  br i1 %23, label %19, label %.loopexit7, !dbg !4097, !llvm.loop !4100

.loopexit7:                                       ; preds = %19
  %.lcssa30 = phi i8 [ %22, %19 ], !dbg !4099
  br label %24, !dbg !4102

24:                                               ; preds = %.loopexit7, %17
  %25 = phi i8 [ %4, %17 ], [ %.lcssa30, %.loopexit7 ], !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 %25, metadata !4062, metadata !DIExpression()), !dbg !4066
  %26 = zext i8 %25 to i32, !dbg !4102
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !4088, metadata !DIExpression()), !dbg !4103
  %27 = add nsw i32 %26, -48, !dbg !4105
  %28 = icmp ult i32 %27, 10, !dbg !4105
  %29 = sext i1 %28 to i32, !dbg !4106
  br label %193, !dbg !4107

30:                                               ; preds = %.preheader5, %30
  %31 = phi ptr [ %32, %30 ], [ %1, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !4058, metadata !DIExpression()), !dbg !4066
  %32 = getelementptr inbounds i8, ptr %31, i64 1, !dbg !4108
  tail call void @llvm.dbg.value(metadata ptr %32, metadata !4058, metadata !DIExpression()), !dbg !4066
  %33 = load i8, ptr %32, align 1, !dbg !4109, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %33, metadata !4062, metadata !DIExpression()), !dbg !4066
  %34 = icmp eq i8 %33, 48, !dbg !4110
  br i1 %34, label %30, label %35, !dbg !4111, !llvm.loop !4112

35:                                               ; preds = %30
  %.lcssa29 = phi ptr [ %32, %30 ], !dbg !4108
  %.lcssa28 = phi i8 [ %33, %30 ], !dbg !4109
  tail call void @llvm.dbg.value(metadata i8 %.lcssa28, metadata !4062, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 %.lcssa31, metadata !4061, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %.lcssa32, metadata !4052, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %.lcssa29, metadata !4058, metadata !DIExpression()), !dbg !4066
  %36 = zext i8 %.lcssa31 to i32, !dbg !4114
  %37 = icmp eq i8 %.lcssa31, %.lcssa28, !dbg !4115
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !4088, metadata !DIExpression()), !dbg !4116
  %38 = add nsw i32 %36, -48
  %39 = icmp ult i32 %38, 10
  %40 = select i1 %37, i1 %39, i1 false, !dbg !4118
  br i1 %40, label %.preheader3, label %53, !dbg !4118

.preheader3:                                      ; preds = %35
  br label %41, !dbg !4119

41:                                               ; preds = %.preheader3, %41
  %42 = phi ptr [ %44, %41 ], [ %.lcssa32, %.preheader3 ]
  %43 = phi ptr [ %46, %41 ], [ %.lcssa29, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata ptr %43, metadata !4058, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4052, metadata !DIExpression()), !dbg !4066
  %44 = getelementptr inbounds i8, ptr %42, i64 1, !dbg !4120
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !4052, metadata !DIExpression()), !dbg !4066
  %45 = load i8, ptr %44, align 1, !dbg !4122, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %45, metadata !4061, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %43, metadata !4058, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4062, metadata !DIExpression()), !dbg !4066
  %46 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !4123
  tail call void @llvm.dbg.value(metadata ptr %46, metadata !4058, metadata !DIExpression()), !dbg !4066
  %47 = load i8, ptr %46, align 1, !dbg !4124, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %47, metadata !4062, metadata !DIExpression()), !dbg !4066
  %48 = zext i8 %45 to i32, !dbg !4114
  %49 = icmp eq i8 %45, %47, !dbg !4115
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !4088, metadata !DIExpression()), !dbg !4116
  %50 = add nsw i32 %48, -48
  %51 = icmp ult i32 %50, 10
  %52 = select i1 %49, i1 %51, i1 false, !dbg !4118
  br i1 %52, label %41, label %.loopexit4, !dbg !4118, !llvm.loop !4125

.loopexit4:                                       ; preds = %41
  %.lcssa27 = phi ptr [ %44, %41 ], !dbg !4120
  %.lcssa26 = phi ptr [ %46, %41 ], !dbg !4123
  %.lcssa25 = phi i8 [ %47, %41 ], !dbg !4124
  %.lcssa24 = phi i32 [ %48, %41 ], !dbg !4114
  %.lcssa23 = phi i32 [ %50, %41 ]
  br label %53, !dbg !4127

53:                                               ; preds = %.loopexit4, %35
  %54 = phi i32 [ %38, %35 ], [ %.lcssa23, %.loopexit4 ], !dbg !4128
  %55 = phi ptr [ %.lcssa29, %35 ], [ %.lcssa26, %.loopexit4 ], !dbg !4132
  %56 = phi ptr [ %.lcssa32, %35 ], [ %.lcssa27, %.loopexit4 ], !dbg !4132
  %57 = phi i8 [ %.lcssa28, %35 ], [ %.lcssa25, %.loopexit4 ], !dbg !4132
  %58 = phi i32 [ %36, %35 ], [ %.lcssa24, %.loopexit4 ], !dbg !4114
  %59 = zext i8 %57 to i32, !dbg !4127
  %60 = sub nsw i32 %59, %58, !dbg !4133
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !4063, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4064, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4061, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %56, metadata !4052, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !4088, metadata !DIExpression()), !dbg !4134
  %61 = icmp ult i32 %54, 10, !dbg !4128
  br i1 %61, label %.preheader1, label %62, !dbg !4135

.preheader1:                                      ; preds = %53
  br label %66, !dbg !4135

.loopexit2:                                       ; preds = %66
  %.lcssa22 = phi i64 [ %71, %66 ], !dbg !4136
  br label %62, !dbg !4137

62:                                               ; preds = %.loopexit2, %53
  %63 = phi i64 [ 0, %53 ], [ %.lcssa22, %.loopexit2 ], !dbg !4141
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4065, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 %57, metadata !4062, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !4058, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !4088, metadata !DIExpression()), !dbg !4142
  %64 = add nsw i32 %59, -48, !dbg !4137
  %65 = icmp ult i32 %64, 10, !dbg !4137
  br i1 %65, label %.preheader, label %84, !dbg !4143

.preheader:                                       ; preds = %62
  br label %75, !dbg !4143

66:                                               ; preds = %.preheader1, %66
  %67 = phi i64 [ %71, %66 ], [ 0, %.preheader1 ]
  %68 = phi ptr [ %69, %66 ], [ %56, %.preheader1 ]
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !4064, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %68, metadata !4052, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4061, metadata !DIExpression()), !dbg !4066
  %69 = getelementptr inbounds i8, ptr %68, i64 1, !dbg !4144
  tail call void @llvm.dbg.value(metadata ptr %69, metadata !4052, metadata !DIExpression()), !dbg !4066
  %70 = load i8, ptr %69, align 1, !dbg !4145, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %70, metadata !4061, metadata !DIExpression()), !dbg !4066
  %71 = add i64 %67, 1, !dbg !4136
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !4064, metadata !DIExpression()), !dbg !4066
  %72 = zext i8 %70 to i32, !dbg !4146
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !4088, metadata !DIExpression()), !dbg !4134
  %73 = add nsw i32 %72, -48, !dbg !4128
  %74 = icmp ult i32 %73, 10, !dbg !4128
  br i1 %74, label %66, label %.loopexit2, !dbg !4135, !llvm.loop !4147

75:                                               ; preds = %.preheader, %75
  %76 = phi i64 [ %80, %75 ], [ 0, %.preheader ]
  %77 = phi ptr [ %78, %75 ], [ %55, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %76, metadata !4065, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %77, metadata !4058, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4062, metadata !DIExpression()), !dbg !4066
  %78 = getelementptr inbounds i8, ptr %77, i64 1, !dbg !4149
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !4058, metadata !DIExpression()), !dbg !4066
  %79 = load i8, ptr %78, align 1, !dbg !4150, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %79, metadata !4062, metadata !DIExpression()), !dbg !4066
  %80 = add i64 %76, 1, !dbg !4151
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !4065, metadata !DIExpression()), !dbg !4066
  %81 = zext i8 %79 to i32, !dbg !4152
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !4088, metadata !DIExpression()), !dbg !4142
  %82 = add nsw i32 %81, -48, !dbg !4137
  %83 = icmp ult i32 %82, 10, !dbg !4137
  br i1 %83, label %75, label %.loopexit, !dbg !4143, !llvm.loop !4153

.loopexit:                                        ; preds = %75
  %.lcssa = phi i64 [ %80, %75 ], !dbg !4151
  br label %84, !dbg !4155

84:                                               ; preds = %.loopexit, %62
  %85 = phi i64 [ 0, %62 ], [ %.lcssa, %.loopexit ], !dbg !4157
  %86 = icmp eq i64 %63, %85, !dbg !4155
  br i1 %86, label %90, label %87, !dbg !4158

87:                                               ; preds = %84
  %88 = icmp ult i64 %63, %85, !dbg !4159
  %89 = select i1 %88, i32 1, i32 -1, !dbg !4160
  br label %193, !dbg !4161

90:                                               ; preds = %84
  %91 = icmp eq i64 %63, 0, !dbg !4162
  %92 = select i1 %91, i32 0, i32 %60, !dbg !4132
  br label %193, !dbg !4132

93:                                               ; preds = %2
  %94 = icmp eq i8 %4, 45, !dbg !4164
  br i1 %94, label %.preheader11, label %95, !dbg !4166

.preheader11:                                     ; preds = %93
  br label %97, !dbg !4167

95:                                               ; preds = %93
  tail call void @llvm.dbg.value(metadata i8 %3, metadata !4061, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4052, metadata !DIExpression()), !dbg !4066
  %96 = icmp eq i8 %3, 48, !dbg !4169
  br i1 %96, label %.preheader20, label %119, !dbg !4171

.preheader20:                                     ; preds = %95
  br label %123, !dbg !4171

97:                                               ; preds = %.preheader11, %97
  %98 = phi ptr [ %99, %97 ], [ %1, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %98, metadata !4058, metadata !DIExpression()), !dbg !4066
  %99 = getelementptr inbounds i8, ptr %98, i64 1, !dbg !4172
  tail call void @llvm.dbg.value(metadata ptr %99, metadata !4058, metadata !DIExpression()), !dbg !4066
  %100 = load i8, ptr %99, align 1, !dbg !4173, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !4062, metadata !DIExpression()), !dbg !4066
  %101 = icmp eq i8 %100, 48, !dbg !4174
  br i1 %101, label %97, label %102, !dbg !4175, !llvm.loop !4176

102:                                              ; preds = %97
  %.lcssa34 = phi i8 [ %100, %97 ], !dbg !4173
  tail call void @llvm.dbg.value(metadata i8 %.lcssa34, metadata !4062, metadata !DIExpression()), !dbg !4066
  %103 = zext i8 %.lcssa34 to i32, !dbg !4178
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !4088, metadata !DIExpression()), !dbg !4180
  %104 = add nsw i32 %103, -48, !dbg !4182
  %105 = icmp ult i32 %104, 10, !dbg !4182
  br i1 %105, label %193, label %106, !dbg !4183

106:                                              ; preds = %102
  tail call void @llvm.dbg.value(metadata i8 %3, metadata !4061, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4052, metadata !DIExpression()), !dbg !4066
  %107 = icmp eq i8 %3, 48, !dbg !4184
  br i1 %107, label %.preheader9, label %113, !dbg !4185

.preheader9:                                      ; preds = %106
  br label %108, !dbg !4185

108:                                              ; preds = %.preheader9, %108
  %109 = phi ptr [ %110, %108 ], [ %0, %.preheader9 ]
  tail call void @llvm.dbg.value(metadata ptr %109, metadata !4052, metadata !DIExpression()), !dbg !4066
  %110 = getelementptr inbounds i8, ptr %109, i64 1, !dbg !4186
  tail call void @llvm.dbg.value(metadata ptr %110, metadata !4052, metadata !DIExpression()), !dbg !4066
  %111 = load i8, ptr %110, align 1, !dbg !4187, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %111, metadata !4061, metadata !DIExpression()), !dbg !4066
  %112 = icmp eq i8 %111, 48, !dbg !4184
  br i1 %112, label %108, label %.loopexit10, !dbg !4185, !llvm.loop !4188

.loopexit10:                                      ; preds = %108
  %.lcssa33 = phi i8 [ %111, %108 ], !dbg !4187
  br label %113, !dbg !4190

113:                                              ; preds = %.loopexit10, %106
  %114 = phi i8 [ %3, %106 ], [ %.lcssa33, %.loopexit10 ], !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 %114, metadata !4061, metadata !DIExpression()), !dbg !4066
  %115 = zext i8 %114 to i32, !dbg !4190
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !4088, metadata !DIExpression()), !dbg !4191
  %116 = add nsw i32 %115, -48, !dbg !4193
  %117 = icmp ult i32 %116, 10, !dbg !4193
  %118 = zext i1 %117 to i32, !dbg !4194
  br label %193, !dbg !4195

.loopexit21:                                      ; preds = %123
  %.lcssa45 = phi ptr [ %125, %123 ], !dbg !4196
  %.lcssa44 = phi i8 [ %126, %123 ], !dbg !4197
  br label %119, !dbg !4198

119:                                              ; preds = %.loopexit21, %95
  %120 = phi ptr [ %0, %95 ], [ %.lcssa45, %.loopexit21 ]
  %121 = phi i8 [ %3, %95 ], [ %.lcssa44, %.loopexit21 ], !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 %4, metadata !4062, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4058, metadata !DIExpression()), !dbg !4066
  %122 = icmp eq i8 %4, 48, !dbg !4198
  br i1 %122, label %.preheader18, label %128, !dbg !4199

.preheader18:                                     ; preds = %119
  br label %136, !dbg !4199

123:                                              ; preds = %.preheader20, %123
  %124 = phi ptr [ %125, %123 ], [ %0, %.preheader20 ]
  tail call void @llvm.dbg.value(metadata ptr %124, metadata !4052, metadata !DIExpression()), !dbg !4066
  %125 = getelementptr inbounds i8, ptr %124, i64 1, !dbg !4196
  tail call void @llvm.dbg.value(metadata ptr %125, metadata !4052, metadata !DIExpression()), !dbg !4066
  %126 = load i8, ptr %125, align 1, !dbg !4197, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %126, metadata !4061, metadata !DIExpression()), !dbg !4066
  %127 = icmp eq i8 %126, 48, !dbg !4169
  br i1 %127, label %123, label %.loopexit21, !dbg !4171, !llvm.loop !4200

.loopexit19:                                      ; preds = %136
  %.lcssa43 = phi ptr [ %138, %136 ], !dbg !4202
  %.lcssa42 = phi i8 [ %139, %136 ], !dbg !4203
  br label %128, !dbg !4204

128:                                              ; preds = %.loopexit19, %119
  %129 = phi ptr [ %1, %119 ], [ %.lcssa43, %.loopexit19 ]
  %130 = phi i8 [ %4, %119 ], [ %.lcssa42, %.loopexit19 ], !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 %130, metadata !4062, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !4061, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %120, metadata !4052, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %129, metadata !4058, metadata !DIExpression()), !dbg !4066
  %131 = zext i8 %121 to i32, !dbg !4204
  %132 = icmp eq i8 %121, %130, !dbg !4205
  tail call void @llvm.dbg.value(metadata i32 %131, metadata !4088, metadata !DIExpression()), !dbg !4206
  %133 = add nsw i32 %131, -48
  %134 = icmp ult i32 %133, 10
  %135 = select i1 %132, i1 %134, i1 false, !dbg !4208
  br i1 %135, label %.preheader16, label %153, !dbg !4208

.preheader16:                                     ; preds = %128
  br label %141, !dbg !4209

136:                                              ; preds = %.preheader18, %136
  %137 = phi ptr [ %138, %136 ], [ %1, %.preheader18 ]
  tail call void @llvm.dbg.value(metadata ptr %137, metadata !4058, metadata !DIExpression()), !dbg !4066
  %138 = getelementptr inbounds i8, ptr %137, i64 1, !dbg !4202
  tail call void @llvm.dbg.value(metadata ptr %138, metadata !4058, metadata !DIExpression()), !dbg !4066
  %139 = load i8, ptr %138, align 1, !dbg !4203, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %139, metadata !4062, metadata !DIExpression()), !dbg !4066
  %140 = icmp eq i8 %139, 48, !dbg !4198
  br i1 %140, label %136, label %.loopexit19, !dbg !4199, !llvm.loop !4210

141:                                              ; preds = %.preheader16, %141
  %142 = phi ptr [ %144, %141 ], [ %120, %.preheader16 ]
  %143 = phi ptr [ %146, %141 ], [ %129, %.preheader16 ]
  tail call void @llvm.dbg.value(metadata ptr %143, metadata !4058, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %142, metadata !4052, metadata !DIExpression()), !dbg !4066
  %144 = getelementptr inbounds i8, ptr %142, i64 1, !dbg !4212
  tail call void @llvm.dbg.value(metadata ptr %144, metadata !4052, metadata !DIExpression()), !dbg !4066
  %145 = load i8, ptr %144, align 1, !dbg !4214, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %145, metadata !4061, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %143, metadata !4058, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4062, metadata !DIExpression()), !dbg !4066
  %146 = getelementptr inbounds i8, ptr %143, i64 1, !dbg !4215
  tail call void @llvm.dbg.value(metadata ptr %146, metadata !4058, metadata !DIExpression()), !dbg !4066
  %147 = load i8, ptr %146, align 1, !dbg !4216, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %147, metadata !4062, metadata !DIExpression()), !dbg !4066
  %148 = zext i8 %145 to i32, !dbg !4204
  %149 = icmp eq i8 %145, %147, !dbg !4205
  tail call void @llvm.dbg.value(metadata i32 %148, metadata !4088, metadata !DIExpression()), !dbg !4206
  %150 = add nsw i32 %148, -48
  %151 = icmp ult i32 %150, 10
  %152 = select i1 %149, i1 %151, i1 false, !dbg !4208
  br i1 %152, label %141, label %.loopexit17, !dbg !4208, !llvm.loop !4217

.loopexit17:                                      ; preds = %141
  %.lcssa41 = phi ptr [ %144, %141 ], !dbg !4212
  %.lcssa40 = phi ptr [ %146, %141 ], !dbg !4215
  %.lcssa39 = phi i8 [ %147, %141 ], !dbg !4216
  %.lcssa38 = phi i32 [ %148, %141 ], !dbg !4204
  %.lcssa37 = phi i32 [ %150, %141 ]
  br label %153, !dbg !4219

153:                                              ; preds = %.loopexit17, %128
  %154 = phi i32 [ %133, %128 ], [ %.lcssa37, %.loopexit17 ], !dbg !4220
  %155 = phi ptr [ %129, %128 ], [ %.lcssa40, %.loopexit17 ]
  %156 = phi ptr [ %120, %128 ], [ %.lcssa41, %.loopexit17 ]
  %157 = phi i8 [ %130, %128 ], [ %.lcssa39, %.loopexit17 ], !dbg !4066
  %158 = phi i32 [ %131, %128 ], [ %.lcssa38, %.loopexit17 ], !dbg !4204
  %159 = zext i8 %157 to i32, !dbg !4219
  %160 = sub nsw i32 %158, %159, !dbg !4224
  tail call void @llvm.dbg.value(metadata i32 %160, metadata !4063, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4064, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4061, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %156, metadata !4052, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !4088, metadata !DIExpression()), !dbg !4225
  %161 = icmp ult i32 %154, 10, !dbg !4220
  br i1 %161, label %.preheader14, label %162, !dbg !4226

.preheader14:                                     ; preds = %153
  br label %166, !dbg !4226

.loopexit15:                                      ; preds = %166
  %.lcssa36 = phi i64 [ %171, %166 ], !dbg !4227
  br label %162, !dbg !4228

162:                                              ; preds = %.loopexit15, %153
  %163 = phi i64 [ 0, %153 ], [ %.lcssa36, %.loopexit15 ], !dbg !4232
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4065, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 %157, metadata !4062, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %155, metadata !4058, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i32 %159, metadata !4088, metadata !DIExpression()), !dbg !4233
  %164 = add nsw i32 %159, -48, !dbg !4228
  %165 = icmp ult i32 %164, 10, !dbg !4228
  br i1 %165, label %.preheader12, label %184, !dbg !4234

.preheader12:                                     ; preds = %162
  br label %175, !dbg !4234

166:                                              ; preds = %.preheader14, %166
  %167 = phi i64 [ %171, %166 ], [ 0, %.preheader14 ]
  %168 = phi ptr [ %169, %166 ], [ %156, %.preheader14 ]
  tail call void @llvm.dbg.value(metadata i64 %167, metadata !4064, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %168, metadata !4052, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4061, metadata !DIExpression()), !dbg !4066
  %169 = getelementptr inbounds i8, ptr %168, i64 1, !dbg !4235
  tail call void @llvm.dbg.value(metadata ptr %169, metadata !4052, metadata !DIExpression()), !dbg !4066
  %170 = load i8, ptr %169, align 1, !dbg !4236, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %170, metadata !4061, metadata !DIExpression()), !dbg !4066
  %171 = add i64 %167, 1, !dbg !4227
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !4064, metadata !DIExpression()), !dbg !4066
  %172 = zext i8 %170 to i32, !dbg !4237
  tail call void @llvm.dbg.value(metadata i32 %172, metadata !4088, metadata !DIExpression()), !dbg !4225
  %173 = add nsw i32 %172, -48, !dbg !4220
  %174 = icmp ult i32 %173, 10, !dbg !4220
  br i1 %174, label %166, label %.loopexit15, !dbg !4226, !llvm.loop !4238

175:                                              ; preds = %.preheader12, %175
  %176 = phi i64 [ %180, %175 ], [ 0, %.preheader12 ]
  %177 = phi ptr [ %178, %175 ], [ %155, %.preheader12 ]
  tail call void @llvm.dbg.value(metadata i64 %176, metadata !4065, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata ptr %177, metadata !4058, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4062, metadata !DIExpression()), !dbg !4066
  %178 = getelementptr inbounds i8, ptr %177, i64 1, !dbg !4240
  tail call void @llvm.dbg.value(metadata ptr %178, metadata !4058, metadata !DIExpression()), !dbg !4066
  %179 = load i8, ptr %178, align 1, !dbg !4241, !tbaa !1066
  tail call void @llvm.dbg.value(metadata i8 %179, metadata !4062, metadata !DIExpression()), !dbg !4066
  %180 = add i64 %176, 1, !dbg !4242
  tail call void @llvm.dbg.value(metadata i64 %180, metadata !4065, metadata !DIExpression()), !dbg !4066
  %181 = zext i8 %179 to i32, !dbg !4243
  tail call void @llvm.dbg.value(metadata i32 %181, metadata !4088, metadata !DIExpression()), !dbg !4233
  %182 = add nsw i32 %181, -48, !dbg !4228
  %183 = icmp ult i32 %182, 10, !dbg !4228
  br i1 %183, label %175, label %.loopexit13, !dbg !4234, !llvm.loop !4244

.loopexit13:                                      ; preds = %175
  %.lcssa35 = phi i64 [ %180, %175 ], !dbg !4242
  br label %184, !dbg !4246

184:                                              ; preds = %.loopexit13, %162
  %185 = phi i64 [ 0, %162 ], [ %.lcssa35, %.loopexit13 ], !dbg !4248
  %186 = icmp eq i64 %163, %185, !dbg !4246
  br i1 %186, label %190, label %187, !dbg !4249

187:                                              ; preds = %184
  %188 = icmp ult i64 %163, %185, !dbg !4250
  %189 = select i1 %188, i32 -1, i32 1, !dbg !4251
  br label %193, !dbg !4252

190:                                              ; preds = %184
  %191 = icmp eq i64 %163, 0, !dbg !4253
  %192 = select i1 %191, i32 0, i32 %160, !dbg !4255
  br label %193, !dbg !4255

193:                                              ; preds = %13, %24, %87, %90, %102, %113, %187, %190
  %194 = phi i32 [ %29, %24 ], [ %89, %87 ], [ %118, %113 ], [ %189, %187 ], [ -1, %13 ], [ %92, %90 ], [ 1, %102 ], [ %192, %190 ], !dbg !4256
  ret i32 %194, !dbg !4257
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4258 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4297, metadata !DIExpression()), !dbg !4303
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4298, metadata !DIExpression()), !dbg !4303
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4299, metadata !DIExpression()), !dbg !4303
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4300, metadata !DIExpression()), !dbg !4303
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4301, metadata !DIExpression()), !dbg !4303
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4302, metadata !DIExpression()), !dbg !4303
  %7 = icmp eq ptr %1, null, !dbg !4304
  br i1 %7, label %10, label %8, !dbg !4306

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.140, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !4307
  br label %12, !dbg !4307

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.141, ptr noundef %2, ptr noundef %3) #40, !dbg !4308
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.3.143, i32 noundef 5) #40, !dbg !4309
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !4309
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.144, ptr noundef %0), !dbg !4310
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.5.145, i32 noundef 5) #40, !dbg !4311
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.146) #40, !dbg !4311
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.144, ptr noundef %0), !dbg !4312
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
  ], !dbg !4313

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.7.147, i32 noundef 5) #40, !dbg !4314
  %21 = load ptr, ptr %4, align 8, !dbg !4314, !tbaa !957
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !4314
  br label %147, !dbg !4316

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.8.148, i32 noundef 5) #40, !dbg !4317
  %25 = load ptr, ptr %4, align 8, !dbg !4317, !tbaa !957
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4317
  %27 = load ptr, ptr %26, align 8, !dbg !4317, !tbaa !957
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !4317
  br label %147, !dbg !4318

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.9.149, i32 noundef 5) #40, !dbg !4319
  %31 = load ptr, ptr %4, align 8, !dbg !4319, !tbaa !957
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4319
  %33 = load ptr, ptr %32, align 8, !dbg !4319, !tbaa !957
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4319
  %35 = load ptr, ptr %34, align 8, !dbg !4319, !tbaa !957
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !4319
  br label %147, !dbg !4320

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.10.150, i32 noundef 5) #40, !dbg !4321
  %39 = load ptr, ptr %4, align 8, !dbg !4321, !tbaa !957
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4321
  %41 = load ptr, ptr %40, align 8, !dbg !4321, !tbaa !957
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4321
  %43 = load ptr, ptr %42, align 8, !dbg !4321, !tbaa !957
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4321
  %45 = load ptr, ptr %44, align 8, !dbg !4321, !tbaa !957
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !4321
  br label %147, !dbg !4322

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.11.151, i32 noundef 5) #40, !dbg !4323
  %49 = load ptr, ptr %4, align 8, !dbg !4323, !tbaa !957
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4323
  %51 = load ptr, ptr %50, align 8, !dbg !4323, !tbaa !957
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4323
  %53 = load ptr, ptr %52, align 8, !dbg !4323, !tbaa !957
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4323
  %55 = load ptr, ptr %54, align 8, !dbg !4323, !tbaa !957
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4323
  %57 = load ptr, ptr %56, align 8, !dbg !4323, !tbaa !957
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !4323
  br label %147, !dbg !4324

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.12.152, i32 noundef 5) #40, !dbg !4325
  %61 = load ptr, ptr %4, align 8, !dbg !4325, !tbaa !957
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4325
  %63 = load ptr, ptr %62, align 8, !dbg !4325, !tbaa !957
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4325
  %65 = load ptr, ptr %64, align 8, !dbg !4325, !tbaa !957
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4325
  %67 = load ptr, ptr %66, align 8, !dbg !4325, !tbaa !957
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4325
  %69 = load ptr, ptr %68, align 8, !dbg !4325, !tbaa !957
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4325
  %71 = load ptr, ptr %70, align 8, !dbg !4325, !tbaa !957
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !4325
  br label %147, !dbg !4326

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.13.153, i32 noundef 5) #40, !dbg !4327
  %75 = load ptr, ptr %4, align 8, !dbg !4327, !tbaa !957
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4327
  %77 = load ptr, ptr %76, align 8, !dbg !4327, !tbaa !957
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4327
  %79 = load ptr, ptr %78, align 8, !dbg !4327, !tbaa !957
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4327
  %81 = load ptr, ptr %80, align 8, !dbg !4327, !tbaa !957
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4327
  %83 = load ptr, ptr %82, align 8, !dbg !4327, !tbaa !957
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4327
  %85 = load ptr, ptr %84, align 8, !dbg !4327, !tbaa !957
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4327
  %87 = load ptr, ptr %86, align 8, !dbg !4327, !tbaa !957
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !4327
  br label %147, !dbg !4328

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.14.154, i32 noundef 5) #40, !dbg !4329
  %91 = load ptr, ptr %4, align 8, !dbg !4329, !tbaa !957
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4329
  %93 = load ptr, ptr %92, align 8, !dbg !4329, !tbaa !957
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4329
  %95 = load ptr, ptr %94, align 8, !dbg !4329, !tbaa !957
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4329
  %97 = load ptr, ptr %96, align 8, !dbg !4329, !tbaa !957
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4329
  %99 = load ptr, ptr %98, align 8, !dbg !4329, !tbaa !957
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4329
  %101 = load ptr, ptr %100, align 8, !dbg !4329, !tbaa !957
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4329
  %103 = load ptr, ptr %102, align 8, !dbg !4329, !tbaa !957
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4329
  %105 = load ptr, ptr %104, align 8, !dbg !4329, !tbaa !957
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !4329
  br label %147, !dbg !4330

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.15.155, i32 noundef 5) #40, !dbg !4331
  %109 = load ptr, ptr %4, align 8, !dbg !4331, !tbaa !957
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4331
  %111 = load ptr, ptr %110, align 8, !dbg !4331, !tbaa !957
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4331
  %113 = load ptr, ptr %112, align 8, !dbg !4331, !tbaa !957
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4331
  %115 = load ptr, ptr %114, align 8, !dbg !4331, !tbaa !957
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4331
  %117 = load ptr, ptr %116, align 8, !dbg !4331, !tbaa !957
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4331
  %119 = load ptr, ptr %118, align 8, !dbg !4331, !tbaa !957
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4331
  %121 = load ptr, ptr %120, align 8, !dbg !4331, !tbaa !957
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4331
  %123 = load ptr, ptr %122, align 8, !dbg !4331, !tbaa !957
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4331
  %125 = load ptr, ptr %124, align 8, !dbg !4331, !tbaa !957
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !4331
  br label %147, !dbg !4332

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.16.156, i32 noundef 5) #40, !dbg !4333
  %129 = load ptr, ptr %4, align 8, !dbg !4333, !tbaa !957
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4333
  %131 = load ptr, ptr %130, align 8, !dbg !4333, !tbaa !957
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4333
  %133 = load ptr, ptr %132, align 8, !dbg !4333, !tbaa !957
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4333
  %135 = load ptr, ptr %134, align 8, !dbg !4333, !tbaa !957
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4333
  %137 = load ptr, ptr %136, align 8, !dbg !4333, !tbaa !957
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4333
  %139 = load ptr, ptr %138, align 8, !dbg !4333, !tbaa !957
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4333
  %141 = load ptr, ptr %140, align 8, !dbg !4333, !tbaa !957
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4333
  %143 = load ptr, ptr %142, align 8, !dbg !4333, !tbaa !957
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4333
  %145 = load ptr, ptr %144, align 8, !dbg !4333, !tbaa !957
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !4333
  br label %147, !dbg !4334

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4335
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4336 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4340, metadata !DIExpression()), !dbg !4346
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4341, metadata !DIExpression()), !dbg !4346
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4342, metadata !DIExpression()), !dbg !4346
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4343, metadata !DIExpression()), !dbg !4346
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4344, metadata !DIExpression()), !dbg !4346
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4345, metadata !DIExpression()), !dbg !4346
  br label %6, !dbg !4347

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4349
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4345, metadata !DIExpression()), !dbg !4346
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4350
  %9 = load ptr, ptr %8, align 8, !dbg !4350, !tbaa !957
  %10 = icmp eq ptr %9, null, !dbg !4352
  %11 = add i64 %7, 1, !dbg !4353
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4345, metadata !DIExpression()), !dbg !4346
  br i1 %10, label %12, label %6, !dbg !4352, !llvm.loop !4354

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !4349
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !4356
  ret void, !dbg !4357
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4358 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !4380
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4378, metadata !DIExpression(), metadata !4380, metadata ptr %6, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4372, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4373, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4374, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4375, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4376, metadata !DIExpression(DW_OP_deref)), !dbg !4381
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !4382
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4377, metadata !DIExpression()), !dbg !4381
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4377, metadata !DIExpression()), !dbg !4381
  %10 = icmp sgt i32 %9, -1, !dbg !4383
  br i1 %10, label %18, label %11, !dbg !4383

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4383
  store i32 %12, ptr %7, align 8, !dbg !4383
  %13 = icmp ult i32 %9, -7, !dbg !4383
  br i1 %13, label %14, label %18, !dbg !4383

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4383
  %16 = sext i32 %9 to i64, !dbg !4383
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4383
  br label %22, !dbg !4383

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4383
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4383
  store ptr %21, ptr %4, align 8, !dbg !4383
  br label %22, !dbg !4383

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4383
  %25 = load ptr, ptr %24, align 8, !dbg !4383
  store ptr %25, ptr %6, align 8, !dbg !4386, !tbaa !957
  %26 = icmp eq ptr %25, null, !dbg !4387
  br i1 %26, label %197, label %27, !dbg !4388

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4377, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4377, metadata !DIExpression()), !dbg !4381
  %28 = icmp sgt i32 %23, -1, !dbg !4383
  br i1 %28, label %36, label %29, !dbg !4383

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4383
  store i32 %30, ptr %7, align 8, !dbg !4383
  %31 = icmp ult i32 %23, -7, !dbg !4383
  br i1 %31, label %32, label %36, !dbg !4383

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4383
  %34 = sext i32 %23 to i64, !dbg !4383
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4383
  br label %40, !dbg !4383

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4383
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4383
  store ptr %39, ptr %4, align 8, !dbg !4383
  br label %40, !dbg !4383

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4383
  %43 = load ptr, ptr %42, align 8, !dbg !4383
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4389
  store ptr %43, ptr %44, align 8, !dbg !4386, !tbaa !957
  %45 = icmp eq ptr %43, null, !dbg !4387
  br i1 %45, label %197, label %46, !dbg !4388

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4377, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4377, metadata !DIExpression()), !dbg !4381
  %47 = icmp sgt i32 %41, -1, !dbg !4383
  br i1 %47, label %55, label %48, !dbg !4383

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4383
  store i32 %49, ptr %7, align 8, !dbg !4383
  %50 = icmp ult i32 %41, -7, !dbg !4383
  br i1 %50, label %51, label %55, !dbg !4383

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4383
  %53 = sext i32 %41 to i64, !dbg !4383
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4383
  br label %59, !dbg !4383

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4383
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4383
  store ptr %58, ptr %4, align 8, !dbg !4383
  br label %59, !dbg !4383

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4383
  %62 = load ptr, ptr %61, align 8, !dbg !4383
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4389
  store ptr %62, ptr %63, align 8, !dbg !4386, !tbaa !957
  %64 = icmp eq ptr %62, null, !dbg !4387
  br i1 %64, label %197, label %65, !dbg !4388

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4377, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4377, metadata !DIExpression()), !dbg !4381
  %66 = icmp sgt i32 %60, -1, !dbg !4383
  br i1 %66, label %74, label %67, !dbg !4383

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4383
  store i32 %68, ptr %7, align 8, !dbg !4383
  %69 = icmp ult i32 %60, -7, !dbg !4383
  br i1 %69, label %70, label %74, !dbg !4383

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4383
  %72 = sext i32 %60 to i64, !dbg !4383
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4383
  br label %78, !dbg !4383

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4383
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4383
  store ptr %77, ptr %4, align 8, !dbg !4383
  br label %78, !dbg !4383

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4383
  %81 = load ptr, ptr %80, align 8, !dbg !4383
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4389
  store ptr %81, ptr %82, align 8, !dbg !4386, !tbaa !957
  %83 = icmp eq ptr %81, null, !dbg !4387
  br i1 %83, label %197, label %84, !dbg !4388

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4377, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4377, metadata !DIExpression()), !dbg !4381
  %85 = icmp sgt i32 %79, -1, !dbg !4383
  br i1 %85, label %93, label %86, !dbg !4383

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4383
  store i32 %87, ptr %7, align 8, !dbg !4383
  %88 = icmp ult i32 %79, -7, !dbg !4383
  br i1 %88, label %89, label %93, !dbg !4383

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4383
  %91 = sext i32 %79 to i64, !dbg !4383
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4383
  br label %97, !dbg !4383

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4383
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4383
  store ptr %96, ptr %4, align 8, !dbg !4383
  br label %97, !dbg !4383

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4383
  %100 = load ptr, ptr %99, align 8, !dbg !4383
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4389
  store ptr %100, ptr %101, align 8, !dbg !4386, !tbaa !957
  %102 = icmp eq ptr %100, null, !dbg !4387
  br i1 %102, label %197, label %103, !dbg !4388

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4377, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4377, metadata !DIExpression()), !dbg !4381
  %104 = icmp sgt i32 %98, -1, !dbg !4383
  br i1 %104, label %112, label %105, !dbg !4383

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4383
  store i32 %106, ptr %7, align 8, !dbg !4383
  %107 = icmp ult i32 %98, -7, !dbg !4383
  br i1 %107, label %108, label %112, !dbg !4383

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4383
  %110 = sext i32 %98 to i64, !dbg !4383
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4383
  br label %116, !dbg !4383

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4383
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4383
  store ptr %115, ptr %4, align 8, !dbg !4383
  br label %116, !dbg !4383

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4383
  %119 = load ptr, ptr %118, align 8, !dbg !4383
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4389
  store ptr %119, ptr %120, align 8, !dbg !4386, !tbaa !957
  %121 = icmp eq ptr %119, null, !dbg !4387
  br i1 %121, label %197, label %122, !dbg !4388

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4377, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4377, metadata !DIExpression()), !dbg !4381
  %123 = icmp sgt i32 %117, -1, !dbg !4383
  br i1 %123, label %131, label %124, !dbg !4383

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4383
  store i32 %125, ptr %7, align 8, !dbg !4383
  %126 = icmp ult i32 %117, -7, !dbg !4383
  br i1 %126, label %127, label %131, !dbg !4383

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4383
  %129 = sext i32 %117 to i64, !dbg !4383
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4383
  br label %135, !dbg !4383

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4383
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4383
  store ptr %134, ptr %4, align 8, !dbg !4383
  br label %135, !dbg !4383

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4383
  %138 = load ptr, ptr %137, align 8, !dbg !4383
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4389
  store ptr %138, ptr %139, align 8, !dbg !4386, !tbaa !957
  %140 = icmp eq ptr %138, null, !dbg !4387
  br i1 %140, label %197, label %141, !dbg !4388

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4377, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4377, metadata !DIExpression()), !dbg !4381
  %142 = icmp sgt i32 %136, -1, !dbg !4383
  br i1 %142, label %150, label %143, !dbg !4383

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4383
  store i32 %144, ptr %7, align 8, !dbg !4383
  %145 = icmp ult i32 %136, -7, !dbg !4383
  br i1 %145, label %146, label %150, !dbg !4383

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4383
  %148 = sext i32 %136 to i64, !dbg !4383
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4383
  br label %154, !dbg !4383

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4383
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4383
  store ptr %153, ptr %4, align 8, !dbg !4383
  br label %154, !dbg !4383

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4383
  %157 = load ptr, ptr %156, align 8, !dbg !4383
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4389
  store ptr %157, ptr %158, align 8, !dbg !4386, !tbaa !957
  %159 = icmp eq ptr %157, null, !dbg !4387
  br i1 %159, label %197, label %160, !dbg !4388

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4377, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4377, metadata !DIExpression()), !dbg !4381
  %161 = icmp sgt i32 %155, -1, !dbg !4383
  br i1 %161, label %169, label %162, !dbg !4383

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4383
  store i32 %163, ptr %7, align 8, !dbg !4383
  %164 = icmp ult i32 %155, -7, !dbg !4383
  br i1 %164, label %165, label %169, !dbg !4383

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4383
  %167 = sext i32 %155 to i64, !dbg !4383
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4383
  br label %173, !dbg !4383

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4383
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4383
  store ptr %172, ptr %4, align 8, !dbg !4383
  br label %173, !dbg !4383

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4383
  %176 = load ptr, ptr %175, align 8, !dbg !4383
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4389
  store ptr %176, ptr %177, align 8, !dbg !4386, !tbaa !957
  %178 = icmp eq ptr %176, null, !dbg !4387
  br i1 %178, label %197, label %179, !dbg !4388

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4377, metadata !DIExpression()), !dbg !4381
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4377, metadata !DIExpression()), !dbg !4381
  %180 = icmp sgt i32 %174, -1, !dbg !4383
  br i1 %180, label %188, label %181, !dbg !4383

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4383
  store i32 %182, ptr %7, align 8, !dbg !4383
  %183 = icmp ult i32 %174, -7, !dbg !4383
  br i1 %183, label %184, label %188, !dbg !4383

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4383
  %186 = sext i32 %174 to i64, !dbg !4383
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4383
  br label %191, !dbg !4383

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4383
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4383
  store ptr %190, ptr %4, align 8, !dbg !4383
  br label %191, !dbg !4383

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4383
  %193 = load ptr, ptr %192, align 8, !dbg !4383
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4389
  store ptr %193, ptr %194, align 8, !dbg !4386, !tbaa !957
  %195 = icmp eq ptr %193, null, !dbg !4387
  %196 = select i1 %195, i64 9, i64 10, !dbg !4388
  br label %197, !dbg !4388

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4390
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4391
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !4392
  ret void, !dbg !4392
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4393 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !4402
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4401, metadata !DIExpression(), metadata !4402, metadata ptr %5, metadata !DIExpression()), !dbg !4403
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4397, metadata !DIExpression()), !dbg !4403
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4398, metadata !DIExpression()), !dbg !4403
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4399, metadata !DIExpression()), !dbg !4403
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4400, metadata !DIExpression()), !dbg !4403
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !4404
  call void @llvm.va_start(ptr nonnull %5), !dbg !4405
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !4406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4406, !tbaa.struct !1409
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4406
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !4406
  call void @llvm.va_end(ptr nonnull %5), !dbg !4407
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !4408
  ret void, !dbg !4408
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4409 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4410, !tbaa !957
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.144, ptr noundef %1), !dbg !4410
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.17.159, i32 noundef 5) #40, !dbg !4411
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.160) #40, !dbg !4411
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.19.161, i32 noundef 5) #40, !dbg !4412
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.162, ptr noundef nonnull @.str.21.163) #40, !dbg !4412
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.22.164, i32 noundef 5) #40, !dbg !4413
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.165) #40, !dbg !4413
  ret void, !dbg !4414
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4415 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4420, metadata !DIExpression()), !dbg !4423
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4421, metadata !DIExpression()), !dbg !4423
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4422, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.value(metadata ptr %0, metadata !4424, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %1, metadata !4427, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64 %2, metadata !4428, metadata !DIExpression()), !dbg !4429
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4431
  call void @llvm.dbg.value(metadata ptr %4, metadata !4432, metadata !DIExpression()), !dbg !4437
  %5 = icmp eq ptr %4, null, !dbg !4439
  br i1 %5, label %6, label %7, !dbg !4441

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4442
  unreachable, !dbg !4442

7:                                                ; preds = %3
  ret ptr %4, !dbg !4443
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4425 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4424, metadata !DIExpression()), !dbg !4444
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4427, metadata !DIExpression()), !dbg !4444
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4428, metadata !DIExpression()), !dbg !4444
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4445
  call void @llvm.dbg.value(metadata ptr %4, metadata !4432, metadata !DIExpression()), !dbg !4446
  %5 = icmp eq ptr %4, null, !dbg !4448
  br i1 %5, label %6, label %7, !dbg !4449

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4450
  unreachable, !dbg !4450

7:                                                ; preds = %3
  ret ptr %4, !dbg !4451
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4452 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4456, metadata !DIExpression()), !dbg !4457
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4458
  call void @llvm.dbg.value(metadata ptr %2, metadata !4432, metadata !DIExpression()), !dbg !4459
  %3 = icmp eq ptr %2, null, !dbg !4461
  br i1 %3, label %4, label %5, !dbg !4462

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4463
  unreachable, !dbg !4463

5:                                                ; preds = %1
  ret ptr %2, !dbg !4464
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4465 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4466 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4470, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i64 %0, metadata !4472, metadata !DIExpression()), !dbg !4476
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4478
  call void @llvm.dbg.value(metadata ptr %2, metadata !4432, metadata !DIExpression()), !dbg !4479
  %3 = icmp eq ptr %2, null, !dbg !4481
  br i1 %3, label %4, label %5, !dbg !4482

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4483
  unreachable, !dbg !4483

5:                                                ; preds = %1
  ret ptr %2, !dbg !4484
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4485 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4489, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i64 %0, metadata !4456, metadata !DIExpression()), !dbg !4491
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4493
  call void @llvm.dbg.value(metadata ptr %2, metadata !4432, metadata !DIExpression()), !dbg !4494
  %3 = icmp eq ptr %2, null, !dbg !4496
  br i1 %3, label %4, label %5, !dbg !4497

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4498
  unreachable, !dbg !4498

5:                                                ; preds = %1
  ret ptr %2, !dbg !4499
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4500 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4504, metadata !DIExpression()), !dbg !4506
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4505, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata ptr %0, metadata !4507, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i64 %1, metadata !4511, metadata !DIExpression()), !dbg !4512
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4514
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4515
  call void @llvm.dbg.value(metadata ptr %4, metadata !4432, metadata !DIExpression()), !dbg !4516
  %5 = icmp eq ptr %4, null, !dbg !4518
  br i1 %5, label %6, label %7, !dbg !4519

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4520
  unreachable, !dbg !4520

7:                                                ; preds = %2
  ret ptr %4, !dbg !4521
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4522 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4523 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4527, metadata !DIExpression()), !dbg !4529
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4528, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata ptr %0, metadata !4530, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata i64 %1, metadata !4533, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.value(metadata ptr %0, metadata !4507, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata i64 %1, metadata !4511, metadata !DIExpression()), !dbg !4536
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4538
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4539
  call void @llvm.dbg.value(metadata ptr %4, metadata !4432, metadata !DIExpression()), !dbg !4540
  %5 = icmp eq ptr %4, null, !dbg !4542
  br i1 %5, label %6, label %7, !dbg !4543

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4544
  unreachable, !dbg !4544

7:                                                ; preds = %2
  ret ptr %4, !dbg !4545
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4546 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4550, metadata !DIExpression()), !dbg !4553
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4551, metadata !DIExpression()), !dbg !4553
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4552, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata ptr %0, metadata !4554, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %1, metadata !4557, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %2, metadata !4558, metadata !DIExpression()), !dbg !4559
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4561
  call void @llvm.dbg.value(metadata ptr %4, metadata !4432, metadata !DIExpression()), !dbg !4562
  %5 = icmp eq ptr %4, null, !dbg !4564
  br i1 %5, label %6, label %7, !dbg !4565

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4566
  unreachable, !dbg !4566

7:                                                ; preds = %3
  ret ptr %4, !dbg !4567
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4568 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4572, metadata !DIExpression()), !dbg !4574
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4573, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata ptr null, metadata !4424, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata i64 %0, metadata !4427, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata i64 %1, metadata !4428, metadata !DIExpression()), !dbg !4575
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4577
  call void @llvm.dbg.value(metadata ptr %3, metadata !4432, metadata !DIExpression()), !dbg !4578
  %4 = icmp eq ptr %3, null, !dbg !4580
  br i1 %4, label %5, label %6, !dbg !4581

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4582
  unreachable, !dbg !4582

6:                                                ; preds = %2
  ret ptr %3, !dbg !4583
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4584 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4588, metadata !DIExpression()), !dbg !4590
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4589, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.value(metadata ptr null, metadata !4550, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata i64 %0, metadata !4551, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata i64 %1, metadata !4552, metadata !DIExpression()), !dbg !4591
  call void @llvm.dbg.value(metadata ptr null, metadata !4554, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i64 %0, metadata !4557, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i64 %1, metadata !4558, metadata !DIExpression()), !dbg !4593
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4595
  call void @llvm.dbg.value(metadata ptr %3, metadata !4432, metadata !DIExpression()), !dbg !4596
  %4 = icmp eq ptr %3, null, !dbg !4598
  br i1 %4, label %5, label %6, !dbg !4599

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4600
  unreachable, !dbg !4600

6:                                                ; preds = %2
  ret ptr %3, !dbg !4601
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4602 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4606, metadata !DIExpression()), !dbg !4608
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4607, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata ptr %0, metadata !893, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata ptr %1, metadata !894, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata i64 1, metadata !895, metadata !DIExpression()), !dbg !4609
  %3 = load i64, ptr %1, align 8, !dbg !4611, !tbaa !3467
  call void @llvm.dbg.value(metadata i64 %3, metadata !896, metadata !DIExpression()), !dbg !4609
  %4 = icmp eq ptr %0, null, !dbg !4612
  br i1 %4, label %5, label %8, !dbg !4614

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4615
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4618
  br label %15, !dbg !4618

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4619
  %10 = add nuw i64 %9, 1, !dbg !4619
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4619
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4619
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4619
  call void @llvm.dbg.value(metadata i64 %13, metadata !896, metadata !DIExpression()), !dbg !4609
  br i1 %12, label %14, label %15, !dbg !4622

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4623
  unreachable, !dbg !4623

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4609
  call void @llvm.dbg.value(metadata i64 %16, metadata !896, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata ptr %0, metadata !4424, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata i64 %16, metadata !4427, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata i64 1, metadata !4428, metadata !DIExpression()), !dbg !4624
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4626
  call void @llvm.dbg.value(metadata ptr %17, metadata !4432, metadata !DIExpression()), !dbg !4627
  %18 = icmp eq ptr %17, null, !dbg !4629
  br i1 %18, label %19, label %20, !dbg !4630

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4631
  unreachable, !dbg !4631

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !893, metadata !DIExpression()), !dbg !4609
  store i64 %16, ptr %1, align 8, !dbg !4632, !tbaa !3467
  ret ptr %17, !dbg !4633
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !888 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !893, metadata !DIExpression()), !dbg !4634
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !894, metadata !DIExpression()), !dbg !4634
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !895, metadata !DIExpression()), !dbg !4634
  %4 = load i64, ptr %1, align 8, !dbg !4635, !tbaa !3467
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !896, metadata !DIExpression()), !dbg !4634
  %5 = icmp eq ptr %0, null, !dbg !4636
  br i1 %5, label %6, label %13, !dbg !4637

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4638
  br i1 %7, label %8, label %20, !dbg !4639

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4640
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !896, metadata !DIExpression()), !dbg !4634
  %10 = icmp ugt i64 %2, 128, !dbg !4642
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4643
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !896, metadata !DIExpression()), !dbg !4634
  br label %20, !dbg !4644

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4645
  %15 = add nuw i64 %14, 1, !dbg !4645
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4645
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4645
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4645
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !896, metadata !DIExpression()), !dbg !4634
  br i1 %17, label %19, label %20, !dbg !4646

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4647
  unreachable, !dbg !4647

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4634
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !896, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata ptr %0, metadata !4424, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata i64 %21, metadata !4427, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata i64 %2, metadata !4428, metadata !DIExpression()), !dbg !4648
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4650
  call void @llvm.dbg.value(metadata ptr %22, metadata !4432, metadata !DIExpression()), !dbg !4651
  %23 = icmp eq ptr %22, null, !dbg !4653
  br i1 %23, label %24, label %25, !dbg !4654

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4655
  unreachable, !dbg !4655

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !893, metadata !DIExpression()), !dbg !4634
  store i64 %21, ptr %1, align 8, !dbg !4656, !tbaa !3467
  ret ptr %22, !dbg !4657
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !900 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !909, metadata !DIExpression()), !dbg !4658
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !910, metadata !DIExpression()), !dbg !4658
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !911, metadata !DIExpression()), !dbg !4658
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !912, metadata !DIExpression()), !dbg !4658
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !913, metadata !DIExpression()), !dbg !4658
  %6 = load i64, ptr %1, align 8, !dbg !4659, !tbaa !3467
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !914, metadata !DIExpression()), !dbg !4658
  %7 = ashr i64 %6, 1, !dbg !4660
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4660
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4660
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4660
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !915, metadata !DIExpression()), !dbg !4658
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4662
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !915, metadata !DIExpression()), !dbg !4658
  %12 = icmp sgt i64 %3, -1, !dbg !4663
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4665
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4665
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !915, metadata !DIExpression()), !dbg !4658
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4666
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4666
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4666
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !916, metadata !DIExpression()), !dbg !4658
  %18 = icmp slt i64 %17, 128, !dbg !4666
  %19 = select i1 %18, i64 128, i64 0, !dbg !4666
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4666
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !917, metadata !DIExpression()), !dbg !4658
  %21 = icmp eq i64 %20, 0, !dbg !4667
  br i1 %21, label %28, label %22, !dbg !4669

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4670
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !915, metadata !DIExpression()), !dbg !4658
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4672
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !916, metadata !DIExpression()), !dbg !4658
  br label %28, !dbg !4673

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4658
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4658
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !916, metadata !DIExpression()), !dbg !4658
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !915, metadata !DIExpression()), !dbg !4658
  %31 = icmp eq ptr %0, null, !dbg !4674
  br i1 %31, label %32, label %33, !dbg !4676

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4677, !tbaa !3467
  br label %33, !dbg !4678

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4679
  %35 = icmp slt i64 %34, %2, !dbg !4681
  br i1 %35, label %36, label %48, !dbg !4682

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4683
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4683
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4683
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !915, metadata !DIExpression()), !dbg !4658
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4684
  br i1 %42, label %47, label %43, !dbg !4684

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4685
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4685
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4685
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !916, metadata !DIExpression()), !dbg !4658
  br i1 %45, label %47, label %48, !dbg !4686

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #42, !dbg !4687
  unreachable, !dbg !4687

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4658
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4658
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !916, metadata !DIExpression()), !dbg !4658
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !915, metadata !DIExpression()), !dbg !4658
  call void @llvm.dbg.value(metadata ptr %0, metadata !4504, metadata !DIExpression()), !dbg !4688
  call void @llvm.dbg.value(metadata i64 %50, metadata !4505, metadata !DIExpression()), !dbg !4688
  call void @llvm.dbg.value(metadata ptr %0, metadata !4507, metadata !DIExpression()), !dbg !4690
  call void @llvm.dbg.value(metadata i64 %50, metadata !4511, metadata !DIExpression()), !dbg !4690
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4692
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #47, !dbg !4693
  call void @llvm.dbg.value(metadata ptr %52, metadata !4432, metadata !DIExpression()), !dbg !4694
  %53 = icmp eq ptr %52, null, !dbg !4696
  br i1 %53, label %54, label %55, !dbg !4697

54:                                               ; preds = %48
  tail call void @xalloc_die() #42, !dbg !4698
  unreachable, !dbg !4698

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !909, metadata !DIExpression()), !dbg !4658
  store i64 %49, ptr %1, align 8, !dbg !4699, !tbaa !3467
  ret ptr %52, !dbg !4700
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4701 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4703, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.value(metadata i64 %0, metadata !4705, metadata !DIExpression()), !dbg !4709
  call void @llvm.dbg.value(metadata i64 1, metadata !4708, metadata !DIExpression()), !dbg !4709
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4711
  call void @llvm.dbg.value(metadata ptr %2, metadata !4432, metadata !DIExpression()), !dbg !4712
  %3 = icmp eq ptr %2, null, !dbg !4714
  br i1 %3, label %4, label %5, !dbg !4715

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4716
  unreachable, !dbg !4716

5:                                                ; preds = %1
  ret ptr %2, !dbg !4717
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4718 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4706 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4705, metadata !DIExpression()), !dbg !4719
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4708, metadata !DIExpression()), !dbg !4719
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4720
  call void @llvm.dbg.value(metadata ptr %3, metadata !4432, metadata !DIExpression()), !dbg !4721
  %4 = icmp eq ptr %3, null, !dbg !4723
  br i1 %4, label %5, label %6, !dbg !4724

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4725
  unreachable, !dbg !4725

6:                                                ; preds = %2
  ret ptr %3, !dbg !4726
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4727 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4729, metadata !DIExpression()), !dbg !4730
  call void @llvm.dbg.value(metadata i64 %0, metadata !4731, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i64 1, metadata !4734, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i64 %0, metadata !4737, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i64 1, metadata !4740, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i64 %0, metadata !4737, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i64 1, metadata !4740, metadata !DIExpression()), !dbg !4741
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4743
  call void @llvm.dbg.value(metadata ptr %2, metadata !4432, metadata !DIExpression()), !dbg !4744
  %3 = icmp eq ptr %2, null, !dbg !4746
  br i1 %3, label %4, label %5, !dbg !4747

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4748
  unreachable, !dbg !4748

5:                                                ; preds = %1
  ret ptr %2, !dbg !4749
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4732 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4731, metadata !DIExpression()), !dbg !4750
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4734, metadata !DIExpression()), !dbg !4750
  call void @llvm.dbg.value(metadata i64 %0, metadata !4737, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i64 %1, metadata !4740, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i64 %0, metadata !4737, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.value(metadata i64 %1, metadata !4740, metadata !DIExpression()), !dbg !4751
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4753
  call void @llvm.dbg.value(metadata ptr %3, metadata !4432, metadata !DIExpression()), !dbg !4754
  %4 = icmp eq ptr %3, null, !dbg !4756
  br i1 %4, label %5, label %6, !dbg !4757

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4758
  unreachable, !dbg !4758

6:                                                ; preds = %2
  ret ptr %3, !dbg !4759
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4760 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4764, metadata !DIExpression()), !dbg !4766
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4765, metadata !DIExpression()), !dbg !4766
  call void @llvm.dbg.value(metadata i64 %1, metadata !4456, metadata !DIExpression()), !dbg !4767
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4769
  call void @llvm.dbg.value(metadata ptr %3, metadata !4432, metadata !DIExpression()), !dbg !4770
  %4 = icmp eq ptr %3, null, !dbg !4772
  br i1 %4, label %5, label %6, !dbg !4773

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4774
  unreachable, !dbg !4774

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4775, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata ptr %0, metadata !4781, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i64 %1, metadata !4782, metadata !DIExpression()), !dbg !4783
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4785
  ret ptr %3, !dbg !4786
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4787 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4791, metadata !DIExpression()), !dbg !4793
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4792, metadata !DIExpression()), !dbg !4793
  call void @llvm.dbg.value(metadata i64 %1, metadata !4470, metadata !DIExpression()), !dbg !4794
  call void @llvm.dbg.value(metadata i64 %1, metadata !4472, metadata !DIExpression()), !dbg !4796
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4798
  call void @llvm.dbg.value(metadata ptr %3, metadata !4432, metadata !DIExpression()), !dbg !4799
  %4 = icmp eq ptr %3, null, !dbg !4801
  br i1 %4, label %5, label %6, !dbg !4802

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4803
  unreachable, !dbg !4803

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4775, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata ptr %0, metadata !4781, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i64 %1, metadata !4782, metadata !DIExpression()), !dbg !4804
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4806
  ret ptr %3, !dbg !4807
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4808 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4812, metadata !DIExpression()), !dbg !4815
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4813, metadata !DIExpression()), !dbg !4815
  %3 = add nsw i64 %1, 1, !dbg !4816
  call void @llvm.dbg.value(metadata i64 %3, metadata !4470, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.value(metadata i64 %3, metadata !4472, metadata !DIExpression()), !dbg !4819
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4821
  call void @llvm.dbg.value(metadata ptr %4, metadata !4432, metadata !DIExpression()), !dbg !4822
  %5 = icmp eq ptr %4, null, !dbg !4824
  br i1 %5, label %6, label %7, !dbg !4825

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4826
  unreachable, !dbg !4826

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4814, metadata !DIExpression()), !dbg !4815
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4827
  store i8 0, ptr %8, align 1, !dbg !4828, !tbaa !1066
  call void @llvm.dbg.value(metadata ptr %4, metadata !4775, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.value(metadata ptr %0, metadata !4781, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.value(metadata i64 %1, metadata !4782, metadata !DIExpression()), !dbg !4829
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4831
  ret ptr %4, !dbg !4832
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4833 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4835, metadata !DIExpression()), !dbg !4836
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4837
  %3 = add i64 %2, 1, !dbg !4838
  call void @llvm.dbg.value(metadata ptr %0, metadata !4764, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata i64 %3, metadata !4765, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata i64 %3, metadata !4456, metadata !DIExpression()), !dbg !4841
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4843
  call void @llvm.dbg.value(metadata ptr %4, metadata !4432, metadata !DIExpression()), !dbg !4844
  %5 = icmp eq ptr %4, null, !dbg !4846
  br i1 %5, label %6, label %7, !dbg !4847

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4848
  unreachable, !dbg !4848

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4775, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata ptr %0, metadata !4781, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata i64 %3, metadata !4782, metadata !DIExpression()), !dbg !4849
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4851
  ret ptr %4, !dbg !4852
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4853 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4858, !tbaa !1057
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4855, metadata !DIExpression()), !dbg !4859
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.176, ptr noundef nonnull @.str.2.177, i32 noundef 5) #40, !dbg !4858
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.178, ptr noundef %2) #40, !dbg !4858
  %3 = icmp eq i32 %1, 0, !dbg !4858
  tail call void @llvm.assume(i1 %3), !dbg !4858
  tail call void @abort() #42, !dbg !4860
  unreachable, !dbg !4860
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #38

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4861 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4899, metadata !DIExpression()), !dbg !4904
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4905
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4900, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4906, metadata !DIExpression()), !dbg !4909
  %3 = load i32, ptr %0, align 8, !dbg !4911, !tbaa !4912
  %4 = and i32 %3, 32, !dbg !4913
  %5 = icmp eq i32 %4, 0, !dbg !4913
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4902, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4914
  %7 = icmp eq i32 %6, 0, !dbg !4915
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4903, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  br i1 %5, label %8, label %18, !dbg !4916

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4918
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4904
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4919
  %11 = xor i1 %7, true, !dbg !4919
  %12 = sext i1 %11 to i32, !dbg !4919
  br i1 %10, label %21, label %13, !dbg !4919

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4920
  %15 = load i32, ptr %14, align 4, !dbg !4920, !tbaa !1057
  %16 = icmp ne i32 %15, 9, !dbg !4921
  %17 = sext i1 %16 to i32, !dbg !4922
  br label %21, !dbg !4922

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4923

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4925
  store i32 0, ptr %20, align 4, !dbg !4927, !tbaa !1057
  br label %21, !dbg !4925

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4904
  ret i32 %22, !dbg !4928
}

; Function Attrs: nounwind
declare !dbg !4929 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4933 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4971, metadata !DIExpression()), !dbg !4975
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4972, metadata !DIExpression()), !dbg !4975
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4976
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4973, metadata !DIExpression()), !dbg !4975
  %3 = icmp slt i32 %2, 0, !dbg !4977
  br i1 %3, label %4, label %6, !dbg !4979

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4980
  br label %24, !dbg !4981

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4982
  %8 = icmp eq i32 %7, 0, !dbg !4982
  br i1 %8, label %13, label %9, !dbg !4984

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4985
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !4986
  %12 = icmp eq i64 %11, -1, !dbg !4987
  br i1 %12, label %16, label %13, !dbg !4988

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !4989
  %15 = icmp eq i32 %14, 0, !dbg !4989
  br i1 %15, label %16, label %18, !dbg !4990

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4972, metadata !DIExpression()), !dbg !4975
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4974, metadata !DIExpression()), !dbg !4975
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4991
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4974, metadata !DIExpression()), !dbg !4975
  br label %24, !dbg !4992

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !4993
  %20 = load i32, ptr %19, align 4, !dbg !4993, !tbaa !1057
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4972, metadata !DIExpression()), !dbg !4975
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4974, metadata !DIExpression()), !dbg !4975
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4991
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4974, metadata !DIExpression()), !dbg !4975
  %22 = icmp eq i32 %20, 0, !dbg !4994
  br i1 %22, label %24, label %23, !dbg !4992

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4996, !tbaa !1057
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4974, metadata !DIExpression()), !dbg !4975
  br label %24, !dbg !4998

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4975
  ret i32 %25, !dbg !4999
}

; Function Attrs: nofree nounwind
declare !dbg !5000 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !5001 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5002 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !5003 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !5006 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5044, metadata !DIExpression()), !dbg !5045
  %2 = icmp eq ptr %0, null, !dbg !5046
  br i1 %2, label %6, label %3, !dbg !5048

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !5049
  %5 = icmp eq i32 %4, 0, !dbg !5049
  br i1 %5, label %6, label %8, !dbg !5050

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !5051
  br label %16, !dbg !5052

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !5053, metadata !DIExpression()), !dbg !5058
  %9 = load i32, ptr %0, align 8, !dbg !5060, !tbaa !4912
  %10 = and i32 %9, 256, !dbg !5062
  %11 = icmp eq i32 %10, 0, !dbg !5062
  br i1 %11, label %14, label %12, !dbg !5063

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !5064
  br label %14, !dbg !5064

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !5065
  br label %16, !dbg !5066

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !5045
  ret i32 %17, !dbg !5067
}

; Function Attrs: nofree nounwind
declare !dbg !5068 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5069 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5108, metadata !DIExpression()), !dbg !5114
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5109, metadata !DIExpression()), !dbg !5114
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !5110, metadata !DIExpression()), !dbg !5114
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5115
  %5 = load ptr, ptr %4, align 8, !dbg !5115, !tbaa !5116
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5117
  %7 = load ptr, ptr %6, align 8, !dbg !5117, !tbaa !5118
  %8 = icmp eq ptr %5, %7, !dbg !5119
  br i1 %8, label %9, label %27, !dbg !5120

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5121
  %11 = load ptr, ptr %10, align 8, !dbg !5121, !tbaa !2566
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5122
  %13 = load ptr, ptr %12, align 8, !dbg !5122, !tbaa !5123
  %14 = icmp eq ptr %11, %13, !dbg !5124
  br i1 %14, label %15, label %27, !dbg !5125

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !5126
  %17 = load ptr, ptr %16, align 8, !dbg !5126, !tbaa !5127
  %18 = icmp eq ptr %17, null, !dbg !5128
  br i1 %18, label %19, label %27, !dbg !5129

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !5130
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !5131
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !5111, metadata !DIExpression()), !dbg !5132
  %22 = icmp eq i64 %21, -1, !dbg !5133
  br i1 %22, label %29, label %23, !dbg !5135

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !5136, !tbaa !4912
  %25 = and i32 %24, -17, !dbg !5136
  store i32 %25, ptr %0, align 8, !dbg !5136, !tbaa !4912
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !5137
  store i64 %21, ptr %26, align 8, !dbg !5138, !tbaa !5139
  br label %29, !dbg !5140

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !5141
  br label %29, !dbg !5142

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !5114
  ret i32 %30, !dbg !5143
}

; Function Attrs: nofree nounwind
declare !dbg !5144 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5147 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5153, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5154, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5155, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5156, metadata !DIExpression()), !dbg !5158
  %5 = icmp eq ptr %1, null, !dbg !5159
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5161
  %7 = select i1 %5, ptr @.str.189, ptr %1, !dbg !5161
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5161
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5155, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5154, metadata !DIExpression()), !dbg !5158
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5153, metadata !DIExpression()), !dbg !5158
  %9 = icmp eq ptr %3, null, !dbg !5162
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5164
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5156, metadata !DIExpression()), !dbg !5158
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !5165
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5157, metadata !DIExpression()), !dbg !5158
  %12 = icmp ult i64 %11, -3, !dbg !5166
  br i1 %12, label %13, label %17, !dbg !5168

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !5169
  %15 = icmp eq i32 %14, 0, !dbg !5169
  br i1 %15, label %16, label %29, !dbg !5170

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5171, metadata !DIExpression()), !dbg !5176
  call void @llvm.dbg.value(metadata ptr %10, metadata !5178, metadata !DIExpression()), !dbg !5183
  call void @llvm.dbg.value(metadata i32 0, metadata !5181, metadata !DIExpression()), !dbg !5183
  call void @llvm.dbg.value(metadata i64 8, metadata !5182, metadata !DIExpression()), !dbg !5183
  store i64 0, ptr %10, align 1, !dbg !5185
  br label %29, !dbg !5186

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5187
  br i1 %18, label %19, label %20, !dbg !5189

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !5190
  unreachable, !dbg !5190

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5191

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #40, !dbg !5193
  br i1 %23, label %29, label %24, !dbg !5194

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5195
  br i1 %25, label %29, label %26, !dbg !5198

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5199, !tbaa !1066
  %28 = zext i8 %27 to i32, !dbg !5200
  store i32 %28, ptr %6, align 4, !dbg !5201, !tbaa !1057
  br label %29, !dbg !5202

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5158
  ret i64 %30, !dbg !5203
}

; Function Attrs: nounwind
declare !dbg !5204 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5209 i32 @mbsinit(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !5215 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5217, metadata !DIExpression()), !dbg !5221
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5218, metadata !DIExpression()), !dbg !5221
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5219, metadata !DIExpression()), !dbg !5221
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5222
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5222
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5220, metadata !DIExpression()), !dbg !5221
  br i1 %5, label %6, label %8, !dbg !5224

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !5225
  store i32 12, ptr %7, align 4, !dbg !5227, !tbaa !1057
  br label %12, !dbg !5228

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5222
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5220, metadata !DIExpression()), !dbg !5221
  call void @llvm.dbg.value(metadata ptr %0, metadata !5229, metadata !DIExpression()), !dbg !5233
  call void @llvm.dbg.value(metadata i64 %9, metadata !5232, metadata !DIExpression()), !dbg !5233
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5235
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #47, !dbg !5236
  br label %12, !dbg !5237

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5221
  ret ptr %13, !dbg !5238
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5239 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !5246
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5242, metadata !DIExpression(), metadata !5246, metadata ptr %2, metadata !DIExpression()), !dbg !5247
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5241, metadata !DIExpression()), !dbg !5247
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !5248
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !5249
  %4 = icmp eq i32 %3, 0, !dbg !5249
  br i1 %4, label %5, label %12, !dbg !5251

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5252, metadata !DIExpression()), !dbg !5256
  call void @llvm.dbg.value(metadata ptr @.str.194, metadata !5255, metadata !DIExpression()), !dbg !5256
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.194, i64 2), !dbg !5259
  %7 = icmp eq i32 %6, 0, !dbg !5260
  br i1 %7, label %11, label %8, !dbg !5261

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5252, metadata !DIExpression()), !dbg !5262
  call void @llvm.dbg.value(metadata ptr @.str.1.195, metadata !5255, metadata !DIExpression()), !dbg !5262
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.195, i64 6), !dbg !5264
  %10 = icmp eq i32 %9, 0, !dbg !5265
  br i1 %10, label %11, label %12, !dbg !5266

11:                                               ; preds = %8, %5
  br label %12, !dbg !5267

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5247
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !5268
  ret i1 %13, !dbg !5268
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5269 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5273, metadata !DIExpression()), !dbg !5276
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5274, metadata !DIExpression()), !dbg !5276
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5275, metadata !DIExpression()), !dbg !5276
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !5277
  ret i32 %4, !dbg !5278
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5279 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5283, metadata !DIExpression()), !dbg !5284
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !5285
  ret ptr %2, !dbg !5286
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5287 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5289, metadata !DIExpression()), !dbg !5291
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5292
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5290, metadata !DIExpression()), !dbg !5291
  ret ptr %2, !dbg !5293
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5294 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5296, metadata !DIExpression()), !dbg !5303
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5297, metadata !DIExpression()), !dbg !5303
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5298, metadata !DIExpression()), !dbg !5303
  call void @llvm.dbg.value(metadata i32 %0, metadata !5289, metadata !DIExpression()), !dbg !5304
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5306
  call void @llvm.dbg.value(metadata ptr %4, metadata !5290, metadata !DIExpression()), !dbg !5304
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5299, metadata !DIExpression()), !dbg !5303
  %5 = icmp eq ptr %4, null, !dbg !5307
  br i1 %5, label %6, label %9, !dbg !5308

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5309
  br i1 %7, label %19, label %8, !dbg !5312

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5313, !tbaa !1066
  br label %19, !dbg !5314

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !5315
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5300, metadata !DIExpression()), !dbg !5316
  %11 = icmp ult i64 %10, %2, !dbg !5317
  br i1 %11, label %12, label %14, !dbg !5319

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5320
  call void @llvm.dbg.value(metadata ptr %1, metadata !5322, metadata !DIExpression()), !dbg !5327
  call void @llvm.dbg.value(metadata ptr %4, metadata !5325, metadata !DIExpression()), !dbg !5327
  call void @llvm.dbg.value(metadata i64 %13, metadata !5326, metadata !DIExpression()), !dbg !5327
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !5329
  br label %19, !dbg !5330

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5331
  br i1 %15, label %19, label %16, !dbg !5334

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5335
  call void @llvm.dbg.value(metadata ptr %1, metadata !5322, metadata !DIExpression()), !dbg !5337
  call void @llvm.dbg.value(metadata ptr %4, metadata !5325, metadata !DIExpression()), !dbg !5337
  call void @llvm.dbg.value(metadata i64 %17, metadata !5326, metadata !DIExpression()), !dbg !5337
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !5339
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5340
  store i8 0, ptr %18, align 1, !dbg !5341, !tbaa !1066
  br label %19, !dbg !5342

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5343
  ret i32 %20, !dbg !5344
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
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

!llvm.dbg.cu = !{!221, !564, !579, !833, !867, !869, !633, !667, !875, !877, !827, !884, !919, !921, !923, !925, !927, !849, !929, !931, !933, !935}
!llvm.ident = !{!937, !937, !937, !937, !937, !937, !937, !937, !937, !937, !937, !937, !937, !937, !937, !937, !937, !937, !937, !937, !937, !937}
!llvm.module.flags = !{!938, !939, !940, !941, !942, !943, !944, !945}

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
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 5)
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
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 692, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 2)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 695, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 56)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 698, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 48)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 701, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 53)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 704, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1968, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 246)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 713, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 57)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 716, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 73)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 719, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 61)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 722, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 70)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 725, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 58)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 728, type: !79, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 734, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 76)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 737, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 67)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 740, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 47)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 746, type: !54, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 749, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 52)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 752, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 46)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 755, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 27)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 758, type: !14, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 761, type: !106, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 764, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 66)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 767, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 63)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !2, line: 770, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 54)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !2, line: 773, type: !137, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 776, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 576, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 72)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 779, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 65)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !2, line: 782, type: !106, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !2, line: 785, type: !49, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !2, line: 788, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 60)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !2, line: 791, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 43)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !2, line: 794, type: !89, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !2, line: 797, type: !89, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !2, line: 800, type: !69, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !2, line: 803, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 71)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !2, line: 806, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1800, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 225)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !2, line: 812, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 840, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 105)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !2, line: 817, type: !84, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !2, line: 821, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1480, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 185)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !2, line: 821, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 14)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 857, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 1)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !2, line: 858, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 10)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 858, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 24)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "argv", scope: !221, file: !2, line: 80, type: !561, isLocal: true, isDefinition: true)
!221 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/test.o -MD -MP -MF src/.deps/test.Tpo -c src/test.c -o src/.test.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !222, retainedTypes: !259, globals: !274, splitDebugInlining: false, nameTableKind: None)
!222 = !{!223, !229, !244}
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 55, baseType: !224, size: 32, elements: !225)
!224 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!225 = !{!226, !227, !228}
!226 = !DIEnumerator(name: "TEST_TRUE", value: 0)
!227 = !DIEnumerator(name: "TEST_FALSE", value: 1)
!228 = !DIEnumerator(name: "TEST_FAILURE", value: 2)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !230, line: 46, baseType: !224, size: 32, elements: !231)
!230 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243}
!232 = !DIEnumerator(name: "_ISupper", value: 256)
!233 = !DIEnumerator(name: "_ISlower", value: 512)
!234 = !DIEnumerator(name: "_ISalpha", value: 1024)
!235 = !DIEnumerator(name: "_ISdigit", value: 2048)
!236 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!237 = !DIEnumerator(name: "_ISspace", value: 8192)
!238 = !DIEnumerator(name: "_ISprint", value: 16384)
!239 = !DIEnumerator(name: "_ISgraph", value: 32768)
!240 = !DIEnumerator(name: "_ISblank", value: 1)
!241 = !DIEnumerator(name: "_IScntrl", value: 2)
!242 = !DIEnumerator(name: "_ISpunct", value: 4)
!243 = !DIEnumerator(name: "_ISalnum", value: 8)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "binop", file: !2, line: 58, baseType: !224, size: 32, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258}
!246 = !DIEnumerator(name: "EQ_STRING_BINOP", value: 0)
!247 = !DIEnumerator(name: "GT_STRING_BINOP", value: 1)
!248 = !DIEnumerator(name: "LT_STRING_BINOP", value: 2)
!249 = !DIEnumerator(name: "NE_STRING_BINOP", value: 3)
!250 = !DIEnumerator(name: "EQ_BINOP", value: 4)
!251 = !DIEnumerator(name: "GE_BINOP", value: 5)
!252 = !DIEnumerator(name: "GT_BINOP", value: 6)
!253 = !DIEnumerator(name: "LE_BINOP", value: 7)
!254 = !DIEnumerator(name: "LT_BINOP", value: 8)
!255 = !DIEnumerator(name: "NE_BINOP", value: 9)
!256 = !DIEnumerator(name: "EF_BINOP", value: 10)
!257 = !DIEnumerator(name: "NT_BINOP", value: 11)
!258 = !DIEnumerator(name: "OT_BINOP", value: 12)
!259 = !{!260, !261, !262, !265, !267, !268, !269}
!260 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!261 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !263, line: 18, baseType: !264)
!263 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!264 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!267 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !270, line: 10, baseType: !271)
!270 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !272, line: 160, baseType: !273)
!272 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!273 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!274 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !77, !82, !87, !92, !94, !99, !104, !109, !111, !116, !121, !126, !128, !130, !135, !140, !145, !147, !152, !157, !159, !161, !166, !171, !173, !175, !177, !182, !187, !192, !194, !199, !204, !209, !214, !275, !280, !282, !219, !284, !367, !369, !371, !376, !381, !383, !385, !390, !392, !394, !396, !401, !406, !408, !410, !412, !414, !416, !418, !423, !428, !433, !435, !437, !439, !441, !443, !448, !453, !455, !457, !459, !461, !466, !471, !473, !475, !477, !479, !484, !489, !494, !499, !504, !506, !508, !510, !512, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !550, !552, !557, !559}
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !2, line: 902, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 18)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "pos", scope: !221, file: !2, line: 78, type: !260, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "argc", scope: !221, file: !2, line: 79, type: !260, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !286, file: !287, line: 575, type: !260, isLocal: true, isDefinition: true)
!286 = distinct !DISubprogram(name: "oputs_", scope: !287, file: !287, line: 573, type: !288, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !290)
!287 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!288 = !DISubroutineType(cc: DW_CC_nocall, types: !289)
!289 = !{null, !265, !265}
!290 = !{!291, !292, !293, !296, !298, !299, !300, !304, !305, !306, !307, !309, !361, !362, !363, !365, !366}
!291 = !DILocalVariable(name: "program", arg: 1, scope: !286, file: !287, line: 573, type: !265)
!292 = !DILocalVariable(name: "option", arg: 2, scope: !286, file: !287, line: 573, type: !265)
!293 = !DILocalVariable(name: "term", scope: !294, file: !287, line: 585, type: !265)
!294 = distinct !DILexicalBlock(scope: !295, file: !287, line: 582, column: 5)
!295 = distinct !DILexicalBlock(scope: !286, file: !287, line: 581, column: 7)
!296 = !DILocalVariable(name: "double_space", scope: !286, file: !287, line: 594, type: !297)
!297 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!298 = !DILocalVariable(name: "first_word", scope: !286, file: !287, line: 595, type: !265)
!299 = !DILocalVariable(name: "option_text", scope: !286, file: !287, line: 596, type: !265)
!300 = !DILocalVariable(name: "s", scope: !301, file: !287, line: 608, type: !265)
!301 = distinct !DILexicalBlock(scope: !302, file: !287, line: 605, column: 5)
!302 = distinct !DILexicalBlock(scope: !303, file: !287, line: 604, column: 12)
!303 = distinct !DILexicalBlock(scope: !286, file: !287, line: 597, column: 7)
!304 = !DILocalVariable(name: "spaces", scope: !301, file: !287, line: 609, type: !262)
!305 = !DILocalVariable(name: "anchor_len", scope: !286, file: !287, line: 620, type: !262)
!306 = !DILocalVariable(name: "desc_text", scope: !286, file: !287, line: 625, type: !265)
!307 = !DILocalVariable(name: "__ptr", scope: !308, file: !287, line: 644, type: !265)
!308 = distinct !DILexicalBlock(scope: !286, file: !287, line: 644, column: 3)
!309 = !DILocalVariable(name: "__stream", scope: !308, file: !287, line: 644, type: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !312, line: 7, baseType: !313)
!312 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !314, line: 49, size: 1728, elements: !315)
!314 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!315 = !{!316, !317, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !332, !334, !335, !336, !338, !339, !341, !342, !345, !347, !350, !353, !354, !355, !356, !357}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !313, file: !314, line: 51, baseType: !260, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !313, file: !314, line: 54, baseType: !318, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !313, file: !314, line: 55, baseType: !318, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !313, file: !314, line: 56, baseType: !318, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !313, file: !314, line: 57, baseType: !318, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !313, file: !314, line: 58, baseType: !318, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !313, file: !314, line: 59, baseType: !318, size: 64, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !313, file: !314, line: 60, baseType: !318, size: 64, offset: 448)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !313, file: !314, line: 61, baseType: !318, size: 64, offset: 512)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !313, file: !314, line: 64, baseType: !318, size: 64, offset: 576)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !313, file: !314, line: 65, baseType: !318, size: 64, offset: 640)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !313, file: !314, line: 66, baseType: !318, size: 64, offset: 704)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !313, file: !314, line: 68, baseType: !330, size: 64, offset: 768)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !314, line: 36, flags: DIFlagFwdDecl)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !313, file: !314, line: 70, baseType: !333, size: 64, offset: 832)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !313, file: !314, line: 72, baseType: !260, size: 32, offset: 896)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !313, file: !314, line: 73, baseType: !260, size: 32, offset: 928)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !313, file: !314, line: 74, baseType: !337, size: 64, offset: 960)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !272, line: 152, baseType: !273)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !313, file: !314, line: 77, baseType: !261, size: 16, offset: 1024)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !313, file: !314, line: 78, baseType: !340, size: 8, offset: 1040)
!340 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !313, file: !314, line: 79, baseType: !206, size: 8, offset: 1048)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !313, file: !314, line: 81, baseType: !343, size: 64, offset: 1088)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !314, line: 43, baseType: null)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !313, file: !314, line: 89, baseType: !346, size: 64, offset: 1152)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !272, line: 153, baseType: !273)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !313, file: !314, line: 91, baseType: !348, size: 64, offset: 1216)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !314, line: 37, flags: DIFlagFwdDecl)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !313, file: !314, line: 92, baseType: !351, size: 64, offset: 1280)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !314, line: 38, flags: DIFlagFwdDecl)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !313, file: !314, line: 93, baseType: !333, size: 64, offset: 1344)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !313, file: !314, line: 94, baseType: !268, size: 64, offset: 1408)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !313, file: !314, line: 95, baseType: !262, size: 64, offset: 1472)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !313, file: !314, line: 96, baseType: !260, size: 32, offset: 1536)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !313, file: !314, line: 98, baseType: !358, size: 160, offset: 1568)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 20)
!361 = !DILocalVariable(name: "__cnt", scope: !308, file: !287, line: 644, type: !262)
!362 = !DILocalVariable(name: "url_program", scope: !286, file: !287, line: 648, type: !265)
!363 = !DILocalVariable(name: "__ptr", scope: !364, file: !287, line: 686, type: !265)
!364 = distinct !DILexicalBlock(scope: !286, file: !287, line: 686, column: 3)
!365 = !DILocalVariable(name: "__stream", scope: !364, file: !287, line: 686, type: !310)
!366 = !DILocalVariable(name: "__cnt", scope: !364, file: !287, line: 686, type: !262)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !287, line: 585, type: !19, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !287, line: 586, type: !19, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !287, line: 595, type: !373, isLocal: true, isDefinition: true)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 4)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !287, line: 620, type: !378, isLocal: true, isDefinition: true)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 6)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !287, line: 648, type: !44, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !287, line: 649, type: !373, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !287, line: 649, type: !387, isLocal: true, isDefinition: true)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 3)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !287, line: 650, type: !19, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !287, line: 651, type: !378, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !287, line: 651, type: !378, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !287, line: 652, type: !398, isLocal: true, isDefinition: true)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 7)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !287, line: 653, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 8)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !287, line: 654, type: !211, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !287, line: 655, type: !211, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !287, line: 656, type: !211, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !287, line: 657, type: !211, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !287, line: 663, type: !398, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !287, line: 664, type: !211, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !287, line: 669, type: !420, isLocal: true, isDefinition: true)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 17)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !287, line: 669, type: !425, isLocal: true, isDefinition: true)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 40)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !287, line: 676, type: !430, isLocal: true, isDefinition: true)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 15)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !287, line: 676, type: !79, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !287, line: 679, type: !387, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !287, line: 683, type: !19, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !287, line: 688, type: !19, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !287, line: 691, type: !403, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !287, line: 839, type: !445, isLocal: true, isDefinition: true)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 16)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !287, line: 840, type: !450, isLocal: true, isDefinition: true)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 22)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !287, line: 841, type: !430, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !287, line: 862, type: !373, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !287, line: 868, type: !179, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !287, line: 875, type: !123, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !287, line: 877, type: !463, isLocal: true, isDefinition: true)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 51)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !287, line: 877, type: !468, isLocal: true, isDefinition: true)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 12)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !2, line: 635, type: !44, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !2, line: 641, type: !44, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !2, line: 641, type: !44, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !2, line: 651, type: !211, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !2, line: 651, type: !481, isLocal: true, isDefinition: true)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 11)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !2, line: 651, type: !486, isLocal: true, isDefinition: true)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 168, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 21)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !2, line: 373, type: !491, isLocal: true, isDefinition: true)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 28)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !496, isLocal: true, isDefinition: true)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 19)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !501, isLocal: true, isDefinition: true)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 26)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !2, line: 605, type: !387, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !2, line: 605, type: !387, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !2, line: 606, type: !44, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !2, line: 606, type: !44, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !2, line: 609, type: !514, isLocal: true, isDefinition: true)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !515)
!515 = !{!516}
!516 = !DISubrange(count: 29)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !44, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !2, line: 189, type: !387, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !2, line: 190, type: !387, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !2, line: 193, type: !373, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !2, line: 194, type: !373, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !373, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !2, line: 196, type: !373, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !2, line: 197, type: !373, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !373, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !2, line: 199, type: !373, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !373, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !373, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !2, line: 296, type: !387, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !2, line: 331, type: !450, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !2, line: 340, type: !547, isLocal: true, isDefinition: true)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 23)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !2, line: 362, type: !44, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !2, line: 362, type: !554, isLocal: true, isDefinition: true)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 328, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: 41)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !468, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !2, line: 261, type: !450, isLocal: true, isDefinition: true)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(name: "file_name", scope: !564, file: !565, line: 45, type: !265, isLocal: true, isDefinition: true)
!564 = distinct !DICompileUnit(language: DW_LANG_C11, file: !565, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !566, splitDebugInlining: false, nameTableKind: None)
!565 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!566 = !{!567, !569, !571, !573, !562, !575}
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !565, line: 121, type: !398, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !565, line: 121, type: !468, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !565, line: 123, type: !398, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !565, line: 126, type: !387, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !564, file: !565, line: 55, type: !297, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !579, file: !580, line: 66, type: !628, isLocal: false, isDefinition: true)
!579 = distinct !DICompileUnit(language: DW_LANG_C11, file: !580, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !581, globals: !582, splitDebugInlining: false, nameTableKind: None)
!580 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!581 = !{!268, !267}
!582 = !{!583, !585, !609, !611, !613, !615, !577, !617, !619, !621, !623, !626}
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !580, line: 272, type: !19, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(name: "old_file_name", scope: !587, file: !580, line: 304, type: !265, isLocal: true, isDefinition: true)
!587 = distinct !DISubprogram(name: "verror_at_line", scope: !580, file: !580, line: 298, type: !588, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !602)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !260, !260, !265, !224, !265, !590}
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !591, line: 52, baseType: !592)
!591 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !593, line: 12, baseType: !594)
!593 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !580, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !596)
!596 = !{!597, !598, !599, !600, !601}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !595, file: !580, baseType: !268, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !595, file: !580, baseType: !268, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !595, file: !580, baseType: !268, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !595, file: !580, baseType: !260, size: 32, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !595, file: !580, baseType: !260, size: 32, offset: 224)
!602 = !{!603, !604, !605, !606, !607, !608}
!603 = !DILocalVariable(name: "status", arg: 1, scope: !587, file: !580, line: 298, type: !260)
!604 = !DILocalVariable(name: "errnum", arg: 2, scope: !587, file: !580, line: 298, type: !260)
!605 = !DILocalVariable(name: "file_name", arg: 3, scope: !587, file: !580, line: 298, type: !265)
!606 = !DILocalVariable(name: "line_number", arg: 4, scope: !587, file: !580, line: 298, type: !224)
!607 = !DILocalVariable(name: "message", arg: 5, scope: !587, file: !580, line: 298, type: !265)
!608 = !DILocalVariable(name: "args", arg: 6, scope: !587, file: !580, line: 298, type: !590)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(name: "old_line_number", scope: !587, file: !580, line: 305, type: !224, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !580, line: 338, type: !373, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !580, line: 346, type: !403, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !580, line: 346, type: !44, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(name: "error_message_count", scope: !579, file: !580, line: 69, type: !224, isLocal: false, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !579, file: !580, line: 295, type: !260, isLocal: false, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !580, line: 208, type: !398, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !580, line: 208, type: !625, isLocal: true, isDefinition: true)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !487)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !580, line: 214, type: !19, isLocal: true, isDefinition: true)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{null}
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(name: "program_name", scope: !633, file: !634, line: 31, type: !265, isLocal: false, isDefinition: true)
!633 = distinct !DICompileUnit(language: DW_LANG_C11, file: !634, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !635, globals: !636, splitDebugInlining: false, nameTableKind: None)
!634 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!635 = !{!268, !318}
!636 = !{!631, !637, !639}
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !634, line: 46, type: !403, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !634, line: 49, type: !373, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !643, line: 78, type: !403, isLocal: true, isDefinition: true)
!643 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !643, line: 79, type: !378, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !643, line: 80, type: !648, isLocal: true, isDefinition: true)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 13)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !643, line: 81, type: !648, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !643, line: 82, type: !358, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !643, line: 83, type: !44, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !643, line: 84, type: !403, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !643, line: 85, type: !398, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !643, line: 86, type: !398, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !643, line: 87, type: !403, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !667, file: !643, line: 76, type: !759, isLocal: false, isDefinition: true)
!667 = distinct !DICompileUnit(language: DW_LANG_C11, file: !643, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !668, retainedTypes: !688, globals: !689, splitDebugInlining: false, nameTableKind: None)
!668 = !{!669, !683, !229}
!669 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !670, line: 42, baseType: !224, size: 32, elements: !671)
!670 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682}
!672 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!673 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!674 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!675 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!676 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!677 = !DIEnumerator(name: "c_quoting_style", value: 5)
!678 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!679 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!680 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!681 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!682 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!683 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !670, line: 254, baseType: !224, size: 32, elements: !684)
!684 = !{!685, !686, !687}
!685 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!686 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!687 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!688 = !{!268, !260, !261, !262}
!689 = !{!641, !644, !646, !651, !653, !655, !657, !659, !661, !663, !665, !690, !694, !704, !706, !711, !713, !715, !717, !719, !748, !755, !757}
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !667, file: !643, line: 92, type: !692, isLocal: false, isDefinition: true)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 320, elements: !212)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !669)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !667, file: !643, line: 1040, type: !696, isLocal: false, isDefinition: true)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !643, line: 56, size: 448, elements: !697)
!697 = !{!698, !699, !700, !702, !703}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !696, file: !643, line: 59, baseType: !669, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !643, line: 62, baseType: !260, size: 32, offset: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !696, file: !643, line: 66, baseType: !701, size: 256, offset: 64)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 256, elements: !404)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !696, file: !643, line: 69, baseType: !265, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !696, file: !643, line: 72, baseType: !265, size: 64, offset: 384)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !667, file: !643, line: 107, type: !696, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(name: "slot0", scope: !667, file: !643, line: 831, type: !708, isLocal: true, isDefinition: true)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !709)
!709 = !{!710}
!710 = !DISubrange(count: 256)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !643, line: 321, type: !44, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !643, line: 357, type: !44, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !643, line: 358, type: !44, isLocal: true, isDefinition: true)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !643, line: 199, type: !398, isLocal: true, isDefinition: true)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(name: "quote", scope: !721, file: !643, line: 228, type: !746, isLocal: true, isDefinition: true)
!721 = distinct !DISubprogram(name: "gettext_quote", scope: !643, file: !643, line: 197, type: !722, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !724)
!722 = !DISubroutineType(types: !723)
!723 = !{!265, !265, !669}
!724 = !{!725, !726, !727, !728, !733}
!725 = !DILocalVariable(name: "msgid", arg: 1, scope: !721, file: !643, line: 197, type: !265)
!726 = !DILocalVariable(name: "s", arg: 2, scope: !721, file: !643, line: 197, type: !669)
!727 = !DILocalVariable(name: "translation", scope: !721, file: !643, line: 199, type: !265)
!728 = !DILocalVariable(name: "w", scope: !721, file: !643, line: 229, type: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !730, line: 37, baseType: !731)
!730 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !272, line: 57, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !272, line: 42, baseType: !224)
!733 = !DILocalVariable(name: "mbs", scope: !721, file: !643, line: 230, type: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !735, line: 6, baseType: !736)
!735 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !737, line: 21, baseType: !738)
!737 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !737, line: 13, size: 64, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !738, file: !737, line: 15, baseType: !260, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !738, file: !737, line: 20, baseType: !742, size: 32, offset: 32)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !737, line: 16, size: 32, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !742, file: !737, line: 18, baseType: !224, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !742, file: !737, line: 19, baseType: !373, size: 32)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 64, elements: !747)
!747 = !{!46, !375}
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(name: "slotvec", scope: !667, file: !643, line: 834, type: !750, isLocal: true, isDefinition: true)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !643, line: 823, size: 128, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !751, file: !643, line: 825, baseType: !262, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !751, file: !643, line: 826, baseType: !318, size: 64, offset: 64)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(name: "nslots", scope: !667, file: !643, line: 832, type: !260, isLocal: true, isDefinition: true)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(name: "slotvec0", scope: !667, file: !643, line: 833, type: !751, isLocal: true, isDefinition: true)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !760, size: 704, elements: !482)
!760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !763, line: 67, type: !468, isLocal: true, isDefinition: true)
!763 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !763, line: 69, type: !398, isLocal: true, isDefinition: true)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !763, line: 83, type: !398, isLocal: true, isDefinition: true)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !763, line: 83, type: !373, isLocal: true, isDefinition: true)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !763, line: 85, type: !44, isLocal: true, isDefinition: true)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(scope: null, file: !763, line: 88, type: !774, isLocal: true, isDefinition: true)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 171)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !763, line: 88, type: !779, isLocal: true, isDefinition: true)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !780)
!780 = !{!781}
!781 = !DISubrange(count: 34)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !763, line: 105, type: !445, isLocal: true, isDefinition: true)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !763, line: 109, type: !547, isLocal: true, isDefinition: true)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(scope: null, file: !763, line: 113, type: !491, isLocal: true, isDefinition: true)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !763, line: 120, type: !790, isLocal: true, isDefinition: true)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 32)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(scope: null, file: !763, line: 127, type: !795, isLocal: true, isDefinition: true)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !796)
!796 = !{!797}
!797 = !DISubrange(count: 36)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(scope: null, file: !763, line: 134, type: !425, isLocal: true, isDefinition: true)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(scope: null, file: !763, line: 142, type: !802, isLocal: true, isDefinition: true)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !803)
!803 = !{!804}
!804 = !DISubrange(count: 44)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !763, line: 150, type: !54, isLocal: true, isDefinition: true)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(scope: null, file: !763, line: 159, type: !113, isLocal: true, isDefinition: true)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !763, line: 170, type: !163, isLocal: true, isDefinition: true)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !763, line: 248, type: !358, isLocal: true, isDefinition: true)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !763, line: 248, type: !450, isLocal: true, isDefinition: true)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !763, line: 254, type: !358, isLocal: true, isDefinition: true)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(scope: null, file: !763, line: 254, type: !201, isLocal: true, isDefinition: true)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(scope: null, file: !763, line: 254, type: !425, isLocal: true, isDefinition: true)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !763, line: 259, type: !3, isLocal: true, isDefinition: true)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !763, line: 259, type: !514, isLocal: true, isDefinition: true)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !827, file: !828, line: 26, type: !830, isLocal: false, isDefinition: true)
!827 = distinct !DICompileUnit(language: DW_LANG_C11, file: !828, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !829, splitDebugInlining: false, nameTableKind: None)
!828 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!829 = !{!825}
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 376, elements: !107)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(name: "exit_failure", scope: !833, file: !834, line: 24, type: !836, isLocal: false, isDefinition: true)
!833 = distinct !DICompileUnit(language: DW_LANG_C11, file: !834, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !835, splitDebugInlining: false, nameTableKind: None)
!834 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!835 = !{!831}
!836 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !260)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(scope: null, file: !839, line: 34, type: !387, isLocal: true, isDefinition: true)
!839 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(scope: null, file: !839, line: 34, type: !398, isLocal: true, isDefinition: true)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(scope: null, file: !839, line: 34, type: !420, isLocal: true, isDefinition: true)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !846, line: 108, type: !206, isLocal: true, isDefinition: true)
!846 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!847 = !DIGlobalVariableExpression(var: !848, expr: !DIExpression())
!848 = distinct !DIGlobalVariable(name: "internal_state", scope: !849, file: !846, line: 97, type: !852, isLocal: true, isDefinition: true)
!849 = distinct !DICompileUnit(language: DW_LANG_C11, file: !846, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !850, globals: !851, splitDebugInlining: false, nameTableKind: None)
!850 = !{!268, !262, !267}
!851 = !{!844, !847}
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !735, line: 6, baseType: !853)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !737, line: 21, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !737, line: 13, size: 64, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !854, file: !737, line: 15, baseType: !260, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !854, file: !737, line: 20, baseType: !858, size: 32, offset: 32)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !854, file: !737, line: 16, size: 32, elements: !859)
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !858, file: !737, line: 18, baseType: !224, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !858, file: !737, line: 19, baseType: !373, size: 32)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(scope: null, file: !864, line: 35, type: !44, isLocal: true, isDefinition: true)
!864 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(scope: null, file: !864, line: 35, type: !378, isLocal: true, isDefinition: true)
!867 = distinct !DICompileUnit(language: DW_LANG_C11, file: !868, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!868 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!869 = distinct !DICompileUnit(language: DW_LANG_C11, file: !870, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-umaxtostr.o -MD -MP -MF lib/.deps/libcoreutils_a-umaxtostr.Tpo -c lib/umaxtostr.c -o lib/.libcoreutils_a-umaxtostr.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !871, splitDebugInlining: false, nameTableKind: None)
!870 = !DIFile(filename: "lib/umaxtostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa759af6e92fed26f32f683da6c23a8")
!871 = !{!872}
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !873, line: 102, baseType: !874)
!873 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !272, line: 73, baseType: !264)
!875 = distinct !DICompileUnit(language: DW_LANG_C11, file: !876, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-strintcmp.o -MD -MP -MF lib/.deps/libcoreutils_a-strintcmp.Tpo -c lib/strintcmp.c -o lib/.libcoreutils_a-strintcmp.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!876 = !DIFile(filename: "lib/strintcmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cbb3801b0b03f23f2fd643484b645368")
!877 = distinct !DICompileUnit(language: DW_LANG_C11, file: !763, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !878, retainedTypes: !882, globals: !883, splitDebugInlining: false, nameTableKind: None)
!878 = !{!879}
!879 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !763, line: 40, baseType: !224, size: 32, elements: !880)
!880 = !{!881}
!881 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!882 = !{!268}
!883 = !{!761, !764, !766, !768, !770, !772, !777, !782, !784, !786, !788, !793, !798, !800, !805, !807, !809, !811, !813, !815, !817, !819, !821, !823}
!884 = distinct !DICompileUnit(language: DW_LANG_C11, file: !885, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !886, retainedTypes: !918, splitDebugInlining: false, nameTableKind: None)
!885 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!886 = !{!887, !899}
!887 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !888, file: !885, line: 188, baseType: !224, size: 32, elements: !897)
!888 = distinct !DISubprogram(name: "x2nrealloc", scope: !885, file: !885, line: 176, type: !889, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !892)
!889 = !DISubroutineType(types: !890)
!890 = !{!268, !268, !891, !262}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!892 = !{!893, !894, !895, !896}
!893 = !DILocalVariable(name: "p", arg: 1, scope: !888, file: !885, line: 176, type: !268)
!894 = !DILocalVariable(name: "pn", arg: 2, scope: !888, file: !885, line: 176, type: !891)
!895 = !DILocalVariable(name: "s", arg: 3, scope: !888, file: !885, line: 176, type: !262)
!896 = !DILocalVariable(name: "n", scope: !888, file: !885, line: 178, type: !262)
!897 = !{!898}
!898 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!899 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !900, file: !885, line: 228, baseType: !224, size: 32, elements: !897)
!900 = distinct !DISubprogram(name: "xpalloc", scope: !885, file: !885, line: 223, type: !901, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !908)
!901 = !DISubroutineType(types: !902)
!902 = !{!268, !268, !903, !904, !906, !904}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !905, line: 130, baseType: !906)
!905 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !907, line: 18, baseType: !273)
!907 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!908 = !{!909, !910, !911, !912, !913, !914, !915, !916, !917}
!909 = !DILocalVariable(name: "pa", arg: 1, scope: !900, file: !885, line: 223, type: !268)
!910 = !DILocalVariable(name: "pn", arg: 2, scope: !900, file: !885, line: 223, type: !903)
!911 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !900, file: !885, line: 223, type: !904)
!912 = !DILocalVariable(name: "n_max", arg: 4, scope: !900, file: !885, line: 223, type: !906)
!913 = !DILocalVariable(name: "s", arg: 5, scope: !900, file: !885, line: 223, type: !904)
!914 = !DILocalVariable(name: "n0", scope: !900, file: !885, line: 230, type: !904)
!915 = !DILocalVariable(name: "n", scope: !900, file: !885, line: 237, type: !904)
!916 = !DILocalVariable(name: "nbytes", scope: !900, file: !885, line: 248, type: !904)
!917 = !DILocalVariable(name: "adjusted_nbytes", scope: !900, file: !885, line: 252, type: !904)
!918 = !{!318, !268}
!919 = distinct !DICompileUnit(language: DW_LANG_C11, file: !839, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !920, splitDebugInlining: false, nameTableKind: None)
!920 = !{!837, !840, !842}
!921 = distinct !DICompileUnit(language: DW_LANG_C11, file: !922, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!922 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!923 = distinct !DICompileUnit(language: DW_LANG_C11, file: !924, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!924 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!925 = distinct !DICompileUnit(language: DW_LANG_C11, file: !926, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !882, splitDebugInlining: false, nameTableKind: None)
!926 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!927 = distinct !DICompileUnit(language: DW_LANG_C11, file: !928, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !882, splitDebugInlining: false, nameTableKind: None)
!928 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!929 = distinct !DICompileUnit(language: DW_LANG_C11, file: !930, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !882, splitDebugInlining: false, nameTableKind: None)
!930 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!931 = distinct !DICompileUnit(language: DW_LANG_C11, file: !864, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !932, splitDebugInlining: false, nameTableKind: None)
!932 = !{!862, !865}
!933 = distinct !DICompileUnit(language: DW_LANG_C11, file: !934, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!934 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!935 = distinct !DICompileUnit(language: DW_LANG_C11, file: !936, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !882, splitDebugInlining: false, nameTableKind: None)
!936 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!937 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!938 = !{i32 7, !"Dwarf Version", i32 5}
!939 = !{i32 2, !"Debug Info Version", i32 3}
!940 = !{i32 1, !"wchar_size", i32 4}
!941 = !{i32 8, !"PIC Level", i32 2}
!942 = !{i32 7, !"PIE Level", i32 2}
!943 = !{i32 7, !"uwtable", i32 2}
!944 = !{i32 7, !"frame-pointer", i32 1}
!945 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!946 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 661, type: !947, scopeLine: 662, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !949)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !260}
!949 = !{!950}
!950 = !DILocalVariable(name: "status", arg: 1, scope: !946, file: !2, line: 661, type: !260)
!951 = !DILocation(line: 0, scope: !946)
!952 = !DILocation(line: 663, column: 14, scope: !953)
!953 = distinct !DILexicalBlock(scope: !946, file: !2, line: 663, column: 7)
!954 = !DILocation(line: 663, column: 7, scope: !946)
!955 = !DILocation(line: 664, column: 5, scope: !956)
!956 = distinct !DILexicalBlock(scope: !953, file: !2, line: 664, column: 5)
!957 = !{!958, !958, i64 0}
!958 = !{!"any pointer", !959, i64 0}
!959 = !{!"omnipotent char", !960, i64 0}
!960 = !{!"Simple C/C++ TBAA"}
!961 = !DILocation(line: 667, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !953, file: !2, line: 666, column: 5)
!963 = !DILocation(line: 674, column: 7, scope: !962)
!964 = !DILocation(line: 678, column: 7, scope: !962)
!965 = !DILocation(line: 679, column: 7, scope: !962)
!966 = !DILocation(line: 680, column: 7, scope: !962)
!967 = !DILocation(line: 685, column: 7, scope: !962)
!968 = !DILocation(line: 692, column: 7, scope: !962)
!969 = !DILocation(line: 695, column: 7, scope: !962)
!970 = !DILocation(line: 698, column: 7, scope: !962)
!971 = !DILocation(line: 701, column: 7, scope: !962)
!972 = !DILocation(line: 704, column: 7, scope: !962)
!973 = !DILocation(line: 710, column: 7, scope: !962)
!974 = !DILocation(line: 713, column: 7, scope: !962)
!975 = !DILocation(line: 716, column: 7, scope: !962)
!976 = !DILocation(line: 719, column: 7, scope: !962)
!977 = !DILocation(line: 722, column: 7, scope: !962)
!978 = !DILocation(line: 725, column: 7, scope: !962)
!979 = !DILocation(line: 728, column: 7, scope: !962)
!980 = !DILocation(line: 731, column: 7, scope: !962)
!981 = !DILocation(line: 734, column: 7, scope: !962)
!982 = !DILocation(line: 737, column: 7, scope: !962)
!983 = !DILocation(line: 740, column: 7, scope: !962)
!984 = !DILocation(line: 743, column: 7, scope: !962)
!985 = !DILocation(line: 746, column: 7, scope: !962)
!986 = !DILocation(line: 749, column: 7, scope: !962)
!987 = !DILocation(line: 752, column: 7, scope: !962)
!988 = !DILocation(line: 755, column: 7, scope: !962)
!989 = !DILocation(line: 758, column: 7, scope: !962)
!990 = !DILocation(line: 761, column: 7, scope: !962)
!991 = !DILocation(line: 764, column: 7, scope: !962)
!992 = !DILocation(line: 767, column: 7, scope: !962)
!993 = !DILocation(line: 770, column: 7, scope: !962)
!994 = !DILocation(line: 773, column: 7, scope: !962)
!995 = !DILocation(line: 776, column: 7, scope: !962)
!996 = !DILocation(line: 779, column: 7, scope: !962)
!997 = !DILocation(line: 782, column: 7, scope: !962)
!998 = !DILocation(line: 785, column: 7, scope: !962)
!999 = !DILocation(line: 788, column: 7, scope: !962)
!1000 = !DILocation(line: 791, column: 7, scope: !962)
!1001 = !DILocation(line: 794, column: 7, scope: !962)
!1002 = !DILocation(line: 797, column: 7, scope: !962)
!1003 = !DILocation(line: 800, column: 7, scope: !962)
!1004 = !DILocation(line: 803, column: 7, scope: !962)
!1005 = !DILocation(line: 806, column: 7, scope: !962)
!1006 = !DILocation(line: 812, column: 7, scope: !962)
!1007 = !DILocation(line: 817, column: 7, scope: !962)
!1008 = !DILocation(line: 821, column: 7, scope: !962)
!1009 = !DILocalVariable(name: "program", arg: 1, scope: !1010, file: !287, line: 836, type: !265)
!1010 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !287, file: !287, line: 836, type: !1011, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1013)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !265}
!1013 = !{!1009, !1014, !1021, !1022, !1024, !1025}
!1014 = !DILocalVariable(name: "infomap", scope: !1010, file: !287, line: 838, type: !1015)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1016, size: 896, elements: !399)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1010, file: !287, line: 838, size: 128, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1017, file: !287, line: 838, baseType: !265, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1017, file: !287, line: 838, baseType: !265, size: 64, offset: 64)
!1021 = !DILocalVariable(name: "node", scope: !1010, file: !287, line: 848, type: !265)
!1022 = !DILocalVariable(name: "map_prog", scope: !1010, file: !287, line: 849, type: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1024 = !DILocalVariable(name: "lc_messages", scope: !1010, file: !287, line: 861, type: !265)
!1025 = !DILocalVariable(name: "url_program", scope: !1010, file: !287, line: 874, type: !265)
!1026 = !DILocation(line: 0, scope: !1010, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 822, column: 7, scope: !962)
!1028 = !{}
!1029 = !DILocation(line: 857, column: 3, scope: !1010, inlinedAt: !1027)
!1030 = !DILocation(line: 861, column: 29, scope: !1010, inlinedAt: !1027)
!1031 = !DILocation(line: 862, column: 7, scope: !1032, inlinedAt: !1027)
!1032 = distinct !DILexicalBlock(scope: !1010, file: !287, line: 862, column: 7)
!1033 = !DILocation(line: 862, column: 19, scope: !1032, inlinedAt: !1027)
!1034 = !DILocation(line: 862, column: 22, scope: !1032, inlinedAt: !1027)
!1035 = !DILocation(line: 862, column: 7, scope: !1010, inlinedAt: !1027)
!1036 = !DILocation(line: 868, column: 7, scope: !1037, inlinedAt: !1027)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !287, line: 863, column: 5)
!1038 = !DILocation(line: 870, column: 5, scope: !1037, inlinedAt: !1027)
!1039 = !DILocation(line: 875, column: 3, scope: !1010, inlinedAt: !1027)
!1040 = !DILocation(line: 877, column: 3, scope: !1010, inlinedAt: !1027)
!1041 = !DILocation(line: 824, column: 3, scope: !946)
!1042 = !DISubprogram(name: "dcgettext", scope: !1043, file: !1043, line: 51, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1043 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!318, !265, !265, !260}
!1046 = !DISubprogram(name: "__fprintf_chk", scope: !1047, file: !1047, line: 93, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!260, !1050, !260, !1051, null}
!1050 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !310)
!1051 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !265)
!1052 = !DISubprogram(name: "fputs_unlocked", scope: !591, file: !591, line: 691, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!260, !1051, !1050}
!1055 = !DILocation(line: 0, scope: !286)
!1056 = !DILocation(line: 581, column: 7, scope: !295)
!1057 = !{!1058, !1058, i64 0}
!1058 = !{!"int", !959, i64 0}
!1059 = !DILocation(line: 581, column: 19, scope: !295)
!1060 = !DILocation(line: 581, column: 7, scope: !286)
!1061 = !DILocation(line: 585, column: 26, scope: !294)
!1062 = !DILocation(line: 0, scope: !294)
!1063 = !DILocation(line: 586, column: 23, scope: !294)
!1064 = !DILocation(line: 586, column: 28, scope: !294)
!1065 = !DILocation(line: 586, column: 32, scope: !294)
!1066 = !{!959, !959, i64 0}
!1067 = !DILocation(line: 586, column: 38, scope: !294)
!1068 = !DILocalVariable(name: "__s1", arg: 1, scope: !1069, file: !1070, line: 1359, type: !265)
!1069 = distinct !DISubprogram(name: "streq", scope: !1070, file: !1070, line: 1359, type: !1071, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1073)
!1070 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!297, !265, !265}
!1073 = !{!1068, !1074}
!1074 = !DILocalVariable(name: "__s2", arg: 2, scope: !1069, file: !1070, line: 1359, type: !265)
!1075 = !DILocation(line: 0, scope: !1069, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 586, column: 41, scope: !294)
!1077 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1076)
!1078 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1076)
!1079 = !DILocation(line: 586, column: 19, scope: !294)
!1080 = !DILocation(line: 587, column: 5, scope: !294)
!1081 = !DILocation(line: 588, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !286, file: !287, line: 588, column: 7)
!1083 = !DILocation(line: 588, column: 7, scope: !286)
!1084 = !DILocation(line: 590, column: 7, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !287, line: 589, column: 5)
!1086 = !DILocation(line: 591, column: 7, scope: !1085)
!1087 = !DILocation(line: 595, column: 37, scope: !286)
!1088 = !DILocation(line: 595, column: 35, scope: !286)
!1089 = !DILocation(line: 596, column: 29, scope: !286)
!1090 = !DILocation(line: 597, column: 8, scope: !303)
!1091 = !DILocation(line: 597, column: 7, scope: !286)
!1092 = !DILocation(line: 604, column: 24, scope: !302)
!1093 = !DILocation(line: 604, column: 12, scope: !303)
!1094 = !DILocation(line: 0, scope: !301)
!1095 = !DILocation(line: 610, column: 16, scope: !301)
!1096 = !DILocation(line: 610, column: 7, scope: !301)
!1097 = !DILocation(line: 611, column: 21, scope: !301)
!1098 = !{!1099, !1099, i64 0}
!1099 = !{!"short", !959, i64 0}
!1100 = !DILocation(line: 611, column: 19, scope: !301)
!1101 = !DILocation(line: 611, column: 16, scope: !301)
!1102 = !DILocation(line: 610, column: 30, scope: !301)
!1103 = distinct !{!1103, !1096, !1097, !1104}
!1104 = !{!"llvm.loop.mustprogress"}
!1105 = !DILocation(line: 612, column: 18, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !301, file: !287, line: 612, column: 11)
!1107 = !DILocation(line: 612, column: 11, scope: !301)
!1108 = !DILocation(line: 620, column: 23, scope: !286)
!1109 = !DILocation(line: 625, column: 39, scope: !286)
!1110 = !DILocation(line: 626, column: 3, scope: !286)
!1111 = !DILocation(line: 626, column: 10, scope: !286)
!1112 = !DILocation(line: 626, column: 21, scope: !286)
!1113 = !DILocation(line: 628, column: 44, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !287, line: 628, column: 11)
!1115 = distinct !DILexicalBlock(scope: !286, file: !287, line: 627, column: 5)
!1116 = !DILocation(line: 628, column: 32, scope: !1114)
!1117 = !DILocation(line: 628, column: 49, scope: !1114)
!1118 = !DILocation(line: 628, column: 11, scope: !1115)
!1119 = !DILocation(line: 630, column: 11, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !287, line: 630, column: 11)
!1121 = !DILocation(line: 630, column: 11, scope: !1115)
!1122 = !DILocation(line: 632, column: 26, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !287, line: 632, column: 15)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !287, line: 631, column: 9)
!1125 = !DILocation(line: 632, column: 34, scope: !1123)
!1126 = !DILocation(line: 632, column: 37, scope: !1123)
!1127 = !DILocation(line: 632, column: 15, scope: !1124)
!1128 = !DILocation(line: 640, column: 16, scope: !1115)
!1129 = distinct !{!1129, !1110, !1130, !1104}
!1130 = !DILocation(line: 641, column: 5, scope: !286)
!1131 = !DILocation(line: 644, column: 3, scope: !286)
!1132 = !DILocation(line: 0, scope: !1069, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 648, column: 31, scope: !286)
!1134 = !DILocation(line: 0, scope: !1069, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 649, column: 31, scope: !286)
!1136 = !DILocation(line: 0, scope: !1069, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 650, column: 31, scope: !286)
!1138 = !DILocation(line: 0, scope: !1069, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 651, column: 31, scope: !286)
!1140 = !DILocation(line: 0, scope: !1069, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 652, column: 31, scope: !286)
!1142 = !DILocation(line: 0, scope: !1069, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 653, column: 31, scope: !286)
!1144 = !DILocation(line: 0, scope: !1069, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 654, column: 31, scope: !286)
!1146 = !DILocation(line: 0, scope: !1069, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 655, column: 31, scope: !286)
!1148 = !DILocation(line: 0, scope: !1069, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 656, column: 31, scope: !286)
!1150 = !DILocation(line: 0, scope: !1069, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 657, column: 31, scope: !286)
!1152 = !DILocation(line: 663, column: 7, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !286, file: !287, line: 663, column: 7)
!1154 = !DILocation(line: 664, column: 7, scope: !1153)
!1155 = !DILocation(line: 664, column: 10, scope: !1153)
!1156 = !DILocation(line: 663, column: 7, scope: !286)
!1157 = !DILocation(line: 669, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !287, line: 665, column: 5)
!1159 = !DILocation(line: 671, column: 5, scope: !1158)
!1160 = !DILocation(line: 676, column: 7, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1153, file: !287, line: 673, column: 5)
!1162 = !DILocation(line: 679, column: 3, scope: !286)
!1163 = !DILocation(line: 683, column: 3, scope: !286)
!1164 = !DILocation(line: 686, column: 3, scope: !286)
!1165 = !DILocation(line: 688, column: 3, scope: !286)
!1166 = !DILocation(line: 691, column: 3, scope: !286)
!1167 = !DILocation(line: 695, column: 3, scope: !286)
!1168 = !DILocation(line: 696, column: 1, scope: !286)
!1169 = !DISubprogram(name: "__printf_chk", scope: !1047, file: !1047, line: 95, type: !1170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!260, !260, !1051, null}
!1172 = !DISubprogram(name: "setlocale", scope: !1173, file: !1173, line: 122, type: !1174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1173 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!318, !260, !265}
!1176 = !DISubprogram(name: "strncmp", scope: !1177, file: !1177, line: 159, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1177 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!260, !265, !265, !262}
!1180 = !DISubprogram(name: "exit", scope: !1181, file: !1181, line: 624, type: !947, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1181 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1182 = !DISubprogram(name: "getenv", scope: !1181, file: !1181, line: 641, type: !1183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!318, !265}
!1185 = !DISubprogram(name: "strcmp", scope: !1177, file: !1177, line: 156, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!260, !265, !265}
!1188 = !DISubprogram(name: "strspn", scope: !1177, file: !1177, line: 297, type: !1189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!264, !265, !265}
!1191 = !DISubprogram(name: "strchr", scope: !1177, file: !1177, line: 246, type: !1192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!318, !265, !260}
!1194 = !DISubprogram(name: "__ctype_b_loc", scope: !230, file: !230, line: 79, type: !1195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!1197}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!1200 = !DISubprogram(name: "strcspn", scope: !1177, file: !1177, line: 293, type: !1189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1201 = !DISubprogram(name: "fwrite_unlocked", scope: !591, file: !591, line: 704, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!262, !1204, !262, !262, !1050}
!1204 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1207 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 843, type: !1208, scopeLine: 844, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1210)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!260, !260, !561}
!1210 = !{!1211, !1212, !1213}
!1211 = !DILocalVariable(name: "margc", arg: 1, scope: !1207, file: !2, line: 843, type: !260)
!1212 = !DILocalVariable(name: "margv", arg: 2, scope: !1207, file: !2, line: 843, type: !561)
!1213 = !DILocalVariable(name: "value", scope: !1207, file: !2, line: 845, type: !297)
!1214 = !DILocation(line: 0, scope: !1207)
!1215 = !DILocation(line: 856, column: 21, scope: !1207)
!1216 = !DILocation(line: 856, column: 3, scope: !1207)
!1217 = !DILocation(line: 857, column: 3, scope: !1207)
!1218 = !DILocation(line: 858, column: 3, scope: !1207)
!1219 = !DILocation(line: 859, column: 3, scope: !1207)
!1220 = !DILocalVariable(name: "status", arg: 1, scope: !1221, file: !287, line: 102, type: !260)
!1221 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !287, file: !287, line: 102, type: !947, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1222)
!1222 = !{!1220}
!1223 = !DILocation(line: 0, scope: !1221, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 861, column: 3, scope: !1207)
!1225 = !DILocation(line: 105, column: 18, scope: !1226, inlinedAt: !1224)
!1226 = distinct !DILexicalBlock(scope: !1221, file: !287, line: 104, column: 7)
!1227 = !DILocation(line: 862, column: 3, scope: !1207)
!1228 = !DILocation(line: 865, column: 8, scope: !1207)
!1229 = !DILocation(line: 893, column: 8, scope: !1207)
!1230 = !DILocation(line: 894, column: 7, scope: !1207)
!1231 = !DILocation(line: 896, column: 11, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 896, column: 7)
!1233 = !DILocation(line: 896, column: 7, scope: !1207)
!1234 = !DILocation(line: 899, column: 27, scope: !1207)
!1235 = !DILocation(line: 899, column: 11, scope: !1207)
!1236 = !DILocation(line: 901, column: 7, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 901, column: 7)
!1238 = !DILocation(line: 901, column: 14, scope: !1237)
!1239 = !DILocation(line: 901, column: 11, scope: !1237)
!1240 = !DILocation(line: 901, column: 7, scope: !1207)
!1241 = !DILocation(line: 902, column: 24, scope: !1237)
!1242 = !DILocation(line: 902, column: 55, scope: !1237)
!1243 = !DILocation(line: 902, column: 60, scope: !1237)
!1244 = !DILocation(line: 902, column: 48, scope: !1237)
!1245 = !DILocation(line: 902, column: 5, scope: !1237)
!1246 = !DILocation(line: 904, column: 3, scope: !1207)
!1247 = !DILocation(line: 905, column: 1, scope: !1207)
!1248 = !DISubprogram(name: "bindtextdomain", scope: !1043, file: !1043, line: 86, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!318, !265, !265}
!1251 = !DISubprogram(name: "textdomain", scope: !1043, file: !1043, line: 82, type: !1183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1252 = !DISubprogram(name: "atexit", scope: !1181, file: !1181, line: 602, type: !1253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!260, !628}
!1255 = distinct !DISubprogram(name: "posixtest", scope: !2, file: !2, line: 616, type: !1256, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1258)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!297, !260}
!1258 = !{!1259, !1260}
!1259 = !DILocalVariable(name: "nargs", arg: 1, scope: !1255, file: !2, line: 616, type: !260)
!1260 = !DILocalVariable(name: "value", scope: !1255, file: !2, line: 618, type: !297)
!1261 = !DILocation(line: 0, scope: !1255)
!1262 = !DILocation(line: 620, column: 3, scope: !1255)
!1263 = !DILocation(line: 562, column: 10, scope: !1264, inlinedAt: !1267)
!1264 = distinct !DISubprogram(name: "one_argument", scope: !2, file: !2, line: 560, type: !1265, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!297}
!1267 = distinct !DILocation(line: 623, column: 17, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 621, column: 5)
!1269 = !DILocation(line: 562, column: 18, scope: !1264, inlinedAt: !1267)
!1270 = !DILocation(line: 562, column: 25, scope: !1264, inlinedAt: !1267)
!1271 = !DILocation(line: 624, column: 9, scope: !1268)
!1272 = !DILocation(line: 570, column: 14, scope: !1273, inlinedAt: !1277)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 570, column: 7)
!1274 = distinct !DISubprogram(name: "two_arguments", scope: !2, file: !2, line: 566, type: !1265, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1275)
!1275 = !{!1276}
!1276 = !DILocalVariable(name: "value", scope: !1274, file: !2, line: 568, type: !297)
!1277 = distinct !DILocation(line: 627, column: 17, scope: !1268)
!1278 = !DILocation(line: 570, column: 19, scope: !1273, inlinedAt: !1277)
!1279 = !DILocation(line: 0, scope: !1069, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 570, column: 7, scope: !1273, inlinedAt: !1277)
!1281 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1280)
!1282 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1280)
!1283 = !DILocation(line: 570, column: 7, scope: !1274, inlinedAt: !1277)
!1284 = !DILocation(line: 562, column: 18, scope: !1264, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 573, column: 17, scope: !1286, inlinedAt: !1277)
!1286 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 571, column: 5)
!1287 = !DILocation(line: 562, column: 10, scope: !1264, inlinedAt: !1285)
!1288 = !DILocation(line: 562, column: 25, scope: !1264, inlinedAt: !1285)
!1289 = !DILocation(line: 0, scope: !1274, inlinedAt: !1277)
!1290 = !DILocation(line: 574, column: 5, scope: !1286, inlinedAt: !1277)
!1291 = !DILocation(line: 575, column: 12, scope: !1292, inlinedAt: !1277)
!1292 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 575, column: 12)
!1293 = !DILocation(line: 575, column: 25, scope: !1292, inlinedAt: !1277)
!1294 = !DILocation(line: 576, column: 12, scope: !1292, inlinedAt: !1277)
!1295 = !DILocation(line: 576, column: 15, scope: !1292, inlinedAt: !1277)
!1296 = !DILocation(line: 576, column: 28, scope: !1292, inlinedAt: !1277)
!1297 = !DILocation(line: 577, column: 12, scope: !1292, inlinedAt: !1277)
!1298 = !DILocation(line: 577, column: 15, scope: !1292, inlinedAt: !1277)
!1299 = !DILocation(line: 577, column: 28, scope: !1292, inlinedAt: !1277)
!1300 = !DILocation(line: 575, column: 12, scope: !1273, inlinedAt: !1277)
!1301 = !DILocation(line: 579, column: 15, scope: !1302, inlinedAt: !1277)
!1302 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 578, column: 5)
!1303 = !DILocation(line: 582, column: 5, scope: !1292, inlinedAt: !1277)
!1304 = !DILocation(line: 631, column: 17, scope: !1268)
!1305 = !DILocation(line: 632, column: 9, scope: !1268)
!1306 = !DILocation(line: 635, column: 20, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 635, column: 13)
!1308 = !DILocation(line: 635, column: 25, scope: !1307)
!1309 = !DILocation(line: 0, scope: !1069, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 635, column: 13, scope: !1307)
!1311 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1310)
!1312 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1310)
!1313 = !DILocation(line: 635, column: 13, scope: !1268)
!1314 = !DILocalVariable(name: "f", arg: 1, scope: !1315, file: !2, line: 110, type: !297)
!1315 = distinct !DISubprogram(name: "advance", scope: !2, file: !2, line: 110, type: !1316, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1318)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !297}
!1318 = !{!1314}
!1319 = !DILocation(line: 0, scope: !1315, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 637, column: 13, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 636, column: 11)
!1322 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1320)
!1323 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1320)
!1324 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 114, column: 7)
!1325 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1320)
!1326 = !DILocation(line: 638, column: 22, scope: !1321)
!1327 = !DILocation(line: 638, column: 21, scope: !1321)
!1328 = !DILocation(line: 639, column: 13, scope: !1321)
!1329 = !DILocation(line: 0, scope: !1069, inlinedAt: !1330)
!1330 = distinct !DILocation(line: 641, column: 13, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 641, column: 13)
!1332 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1330)
!1333 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1330)
!1334 = !DILocation(line: 641, column: 36, scope: !1331)
!1335 = !DILocation(line: 641, column: 46, scope: !1331)
!1336 = !DILocation(line: 0, scope: !1069, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 641, column: 39, scope: !1331)
!1338 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1337)
!1339 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1337)
!1340 = !DILocation(line: 641, column: 13, scope: !1268)
!1341 = !DILocation(line: 0, scope: !1315, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 643, column: 13, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 642, column: 11)
!1344 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1342)
!1345 = !DILocation(line: 570, column: 14, scope: !1273, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 644, column: 21, scope: !1343)
!1347 = !DILocation(line: 0, scope: !1069, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 570, column: 7, scope: !1273, inlinedAt: !1346)
!1349 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1348)
!1350 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1348)
!1351 = !DILocation(line: 570, column: 7, scope: !1274, inlinedAt: !1346)
!1352 = !DILocation(line: 562, column: 18, scope: !1264, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 573, column: 17, scope: !1286, inlinedAt: !1346)
!1354 = !DILocation(line: 562, column: 10, scope: !1264, inlinedAt: !1353)
!1355 = !DILocation(line: 562, column: 25, scope: !1264, inlinedAt: !1353)
!1356 = !DILocation(line: 0, scope: !1274, inlinedAt: !1346)
!1357 = !DILocation(line: 574, column: 5, scope: !1286, inlinedAt: !1346)
!1358 = !DILocation(line: 575, column: 12, scope: !1292, inlinedAt: !1346)
!1359 = !DILocation(line: 575, column: 25, scope: !1292, inlinedAt: !1346)
!1360 = !DILocation(line: 576, column: 12, scope: !1292, inlinedAt: !1346)
!1361 = !DILocation(line: 576, column: 15, scope: !1292, inlinedAt: !1346)
!1362 = !DILocation(line: 576, column: 28, scope: !1292, inlinedAt: !1346)
!1363 = !DILocation(line: 577, column: 12, scope: !1292, inlinedAt: !1346)
!1364 = !DILocation(line: 577, column: 15, scope: !1292, inlinedAt: !1346)
!1365 = !DILocation(line: 577, column: 28, scope: !1292, inlinedAt: !1346)
!1366 = !DILocation(line: 575, column: 12, scope: !1273, inlinedAt: !1346)
!1367 = !DILocation(line: 579, column: 15, scope: !1302, inlinedAt: !1346)
!1368 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 645, column: 13, scope: !1343)
!1370 = !DILocation(line: 582, column: 5, scope: !1292, inlinedAt: !1346)
!1371 = !DILocation(line: 0, scope: !1315, inlinedAt: !1369)
!1372 = !DILocation(line: 646, column: 13, scope: !1343)
!1373 = !DILocation(line: 651, column: 9, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !2, line: 651, column: 9)
!1375 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 651, column: 9)
!1376 = !DILocation(line: 651, column: 9, scope: !1375)
!1377 = !DILocation(line: 553, column: 7, scope: !1378, inlinedAt: !1380)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 553, column: 7)
!1379 = distinct !DISubprogram(name: "expr", scope: !2, file: !2, line: 551, type: !1265, scopeLine: 552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221)
!1380 = distinct !DILocation(line: 652, column: 17, scope: !1268)
!1381 = !DILocation(line: 553, column: 14, scope: !1378, inlinedAt: !1380)
!1382 = !DILocation(line: 553, column: 11, scope: !1378, inlinedAt: !1380)
!1383 = !DILocation(line: 553, column: 7, scope: !1379, inlinedAt: !1380)
!1384 = !DILocation(line: 554, column: 5, scope: !1378, inlinedAt: !1380)
!1385 = !DILocation(line: 556, column: 10, scope: !1379, inlinedAt: !1380)
!1386 = !DILocation(line: 653, column: 5, scope: !1268)
!1387 = !DILocation(line: 655, column: 3, scope: !1255)
!1388 = distinct !DISubprogram(name: "test_syntax_error", scope: !2, file: !2, line: 97, type: !1389, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1391)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !265, null}
!1391 = !{!1392, !1393}
!1392 = !DILocalVariable(name: "format", arg: 1, scope: !1388, file: !2, line: 97, type: !265)
!1393 = !DILocalVariable(name: "ap", scope: !1388, file: !2, line: 99, type: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1395, line: 12, baseType: !1396)
!1395 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !1397)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1398)
!1398 = !{!1399, !1400, !1401, !1402, !1403}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1397, file: !2, line: 99, baseType: !268, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1397, file: !2, line: 99, baseType: !268, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1397, file: !2, line: 99, baseType: !268, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1397, file: !2, line: 99, baseType: !260, size: 32, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1397, file: !2, line: 99, baseType: !260, size: 32, offset: 224)
!1404 = distinct !DIAssignID()
!1405 = !DILocation(line: 0, scope: !1388)
!1406 = !DILocation(line: 99, column: 3, scope: !1388)
!1407 = !DILocation(line: 100, column: 3, scope: !1388)
!1408 = !DILocation(line: 101, column: 3, scope: !1388)
!1409 = !{i64 0, i64 8, !957, i64 8, i64 8, !957, i64 16, i64 8, !957, i64 24, i64 4, !1057, i64 28, i64 4, !1057}
!1410 = !DILocation(line: 102, column: 3, scope: !1388)
!1411 = distinct !DISubprogram(name: "unary_operator", scope: !2, file: !2, line: 366, type: !1265, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1412)
!1412 = !{!1413, !1448, !1451, !1452, !1456, !1457, !1460, !1461, !1463}
!1413 = !DILocalVariable(name: "stat_buf", scope: !1411, file: !2, line: 368, type: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1415, line: 44, size: 1024, elements: !1416)
!1415 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1416 = !{!1417, !1419, !1421, !1423, !1425, !1427, !1429, !1430, !1431, !1432, !1434, !1435, !1437, !1444, !1445, !1446}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1414, file: !1415, line: 46, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !272, line: 145, baseType: !264)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1414, file: !1415, line: 47, baseType: !1420, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !272, line: 148, baseType: !264)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1414, file: !1415, line: 48, baseType: !1422, size: 32, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !272, line: 150, baseType: !224)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1414, file: !1415, line: 49, baseType: !1424, size: 32, offset: 160)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !272, line: 151, baseType: !224)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1414, file: !1415, line: 50, baseType: !1426, size: 32, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !272, line: 146, baseType: !224)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1414, file: !1415, line: 51, baseType: !1428, size: 32, offset: 224)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !272, line: 147, baseType: !224)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1414, file: !1415, line: 52, baseType: !1418, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1414, file: !1415, line: 53, baseType: !1418, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1414, file: !1415, line: 54, baseType: !337, size: 64, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1414, file: !1415, line: 55, baseType: !1433, size: 32, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !272, line: 175, baseType: !260)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1414, file: !1415, line: 56, baseType: !260, size: 32, offset: 480)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1414, file: !1415, line: 57, baseType: !1436, size: 64, offset: 512)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !272, line: 180, baseType: !273)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1414, file: !1415, line: 65, baseType: !1438, size: 128, offset: 576)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1439, line: 11, size: 128, elements: !1440)
!1439 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1438, file: !1439, line: 16, baseType: !271, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1438, file: !1439, line: 21, baseType: !1443, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !272, line: 197, baseType: !273)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1414, file: !1415, line: 66, baseType: !1438, size: 128, offset: 704)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1414, file: !1415, line: 67, baseType: !1438, size: 128, offset: 832)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1414, file: !1415, line: 79, baseType: !1447, size: 64, offset: 960)
!1447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 64, elements: !45)
!1448 = !DILocalVariable(name: "atime", scope: !1449, file: !2, line: 401, type: !1438)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !2, line: 397, column: 7)
!1450 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 371, column: 5)
!1451 = !DILocalVariable(name: "mtime", scope: !1449, file: !2, line: 402, type: !1438)
!1452 = !DILocalVariable(name: "euid", scope: !1453, file: !2, line: 412, type: !1454)
!1453 = distinct !DILexicalBlock(scope: !1450, file: !2, line: 407, column: 7)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1455, line: 79, baseType: !1426)
!1455 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1456 = !DILocalVariable(name: "NO_UID", scope: !1453, file: !2, line: 413, type: !1454)
!1457 = !DILocalVariable(name: "egid", scope: !1458, file: !2, line: 423, type: !1459)
!1458 = distinct !DILexicalBlock(scope: !1450, file: !2, line: 418, column: 7)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1455, line: 64, baseType: !1428)
!1460 = !DILocalVariable(name: "NO_GID", scope: !1458, file: !2, line: 424, type: !1459)
!1461 = !DILocalVariable(name: "fd", scope: !1462, file: !2, line: 489, type: !273)
!1462 = distinct !DILexicalBlock(scope: !1450, file: !2, line: 488, column: 7)
!1463 = !DILocalVariable(name: "arg", scope: !1462, file: !2, line: 490, type: !265)
!1464 = distinct !DIAssignID()
!1465 = distinct !DIAssignID()
!1466 = !DILocation(line: 0, scope: !1411)
!1467 = !DILocation(line: 368, column: 3, scope: !1411)
!1468 = !DILocation(line: 370, column: 11, scope: !1411)
!1469 = !DILocation(line: 370, column: 16, scope: !1411)
!1470 = !DILocation(line: 370, column: 3, scope: !1411)
!1471 = !DILocation(line: 373, column: 26, scope: !1450)
!1472 = !DILocation(line: 373, column: 67, scope: !1450)
!1473 = !DILocation(line: 373, column: 72, scope: !1450)
!1474 = !DILocation(line: 373, column: 60, scope: !1450)
!1475 = !DILocation(line: 373, column: 7, scope: !1450)
!1476 = !DILocation(line: 0, scope: !1315, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1479)
!1478 = distinct !DISubprogram(name: "unary_advance", scope: !2, file: !2, line: 119, type: !629, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221)
!1479 = distinct !DILocation(line: 381, column: 7, scope: !1450)
!1480 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1477)
!1481 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1477)
!1482 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1477)
!1483 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1479)
!1484 = !DILocation(line: 382, column: 20, scope: !1450)
!1485 = !DILocation(line: 382, column: 14, scope: !1450)
!1486 = !DILocation(line: 382, column: 46, scope: !1450)
!1487 = !DILocation(line: 382, column: 7, scope: !1450)
!1488 = !DILocation(line: 0, scope: !1315, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 385, column: 7, scope: !1450)
!1491 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1489)
!1492 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1489)
!1493 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1489)
!1494 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1490)
!1495 = !DILocation(line: 386, column: 26, scope: !1450)
!1496 = !DILocation(line: 386, column: 14, scope: !1450)
!1497 = !DILocation(line: 386, column: 47, scope: !1450)
!1498 = !DILocation(line: 386, column: 7, scope: !1450)
!1499 = !DILocation(line: 0, scope: !1315, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 389, column: 7, scope: !1450)
!1502 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1500)
!1503 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1500)
!1504 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1500)
!1505 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1501)
!1506 = !DILocation(line: 390, column: 26, scope: !1450)
!1507 = !DILocation(line: 390, column: 14, scope: !1450)
!1508 = !DILocation(line: 390, column: 47, scope: !1450)
!1509 = !DILocation(line: 390, column: 7, scope: !1450)
!1510 = !DILocation(line: 0, scope: !1315, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 393, column: 7, scope: !1450)
!1513 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1511)
!1514 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1511)
!1515 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1511)
!1516 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1512)
!1517 = !DILocation(line: 394, column: 26, scope: !1450)
!1518 = !DILocation(line: 394, column: 14, scope: !1450)
!1519 = !DILocation(line: 394, column: 47, scope: !1450)
!1520 = !DILocation(line: 394, column: 7, scope: !1450)
!1521 = !DILocation(line: 0, scope: !1315, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 398, column: 9, scope: !1449)
!1524 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1522)
!1525 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1522)
!1526 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1522)
!1527 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1523)
!1528 = !DILocation(line: 399, column: 19, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1449, file: !2, line: 399, column: 13)
!1530 = !DILocation(line: 399, column: 13, scope: !1529)
!1531 = !DILocation(line: 399, column: 45, scope: !1529)
!1532 = !DILocation(line: 399, column: 13, scope: !1449)
!1533 = !DILocalVariable(name: "st", arg: 1, scope: !1534, file: !1535, line: 147, type: !1538)
!1534 = distinct !DISubprogram(name: "get_stat_atime", scope: !1535, file: !1535, line: 147, type: !1536, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1540)
!1535 = !DIFile(filename: "./lib/stat-time.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f4edb1fd4cb81bf2ea0eec563958d759")
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1438, !1538}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1414)
!1540 = !{!1533}
!1541 = !DILocation(line: 0, scope: !1534, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 401, column: 33, scope: !1449)
!1543 = !DILocation(line: 150, column: 10, scope: !1534, inlinedAt: !1542)
!1544 = !DILocation(line: 0, scope: !1449)
!1545 = !DILocalVariable(name: "st", arg: 1, scope: !1546, file: !1535, line: 169, type: !1538)
!1546 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1535, file: !1535, line: 169, type: !1536, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1547)
!1547 = !{!1545}
!1548 = !DILocation(line: 0, scope: !1546, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 402, column: 33, scope: !1449)
!1550 = !DILocation(line: 172, column: 10, scope: !1546, inlinedAt: !1549)
!1551 = !DILocalVariable(name: "a", arg: 1, scope: !1552, file: !1553, line: 64, type: !1438)
!1552 = distinct !DISubprogram(name: "timespec_cmp", scope: !1553, file: !1553, line: 64, type: !1554, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1556)
!1553 = !DIFile(filename: "./lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!260, !1438, !1438}
!1556 = !{!1551, !1557}
!1557 = !DILocalVariable(name: "b", arg: 2, scope: !1552, file: !1553, line: 64, type: !1438)
!1558 = !DILocation(line: 0, scope: !1552, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 403, column: 17, scope: !1449)
!1560 = !DILocation(line: 66, column: 45, scope: !1552, inlinedAt: !1559)
!1561 = !DILocation(line: 66, column: 12, scope: !1552, inlinedAt: !1559)
!1562 = !DILocation(line: 66, column: 43, scope: !1552, inlinedAt: !1559)
!1563 = !DILocation(line: 403, column: 45, scope: !1449)
!1564 = !DILocation(line: 0, scope: !1315, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 408, column: 9, scope: !1453)
!1567 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1565)
!1568 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1565)
!1569 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1565)
!1570 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1566)
!1571 = !DILocation(line: 409, column: 19, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1453, file: !2, line: 409, column: 13)
!1573 = !DILocation(line: 409, column: 13, scope: !1572)
!1574 = !DILocation(line: 409, column: 45, scope: !1572)
!1575 = !DILocation(line: 409, column: 13, scope: !1453)
!1576 = !DILocation(line: 411, column: 9, scope: !1453)
!1577 = !DILocation(line: 411, column: 15, scope: !1453)
!1578 = !DILocation(line: 412, column: 22, scope: !1453)
!1579 = !DILocation(line: 0, scope: !1453)
!1580 = !DILocation(line: 414, column: 24, scope: !1453)
!1581 = !DILocation(line: 414, column: 34, scope: !1453)
!1582 = !DILocation(line: 414, column: 37, scope: !1453)
!1583 = !DILocation(line: 414, column: 44, scope: !1453)
!1584 = !DILocation(line: 414, column: 64, scope: !1453)
!1585 = !{!1586, !1058, i64 24}
!1586 = !{!"stat", !1587, i64 0, !1587, i64 8, !1058, i64 16, !1058, i64 20, !1058, i64 24, !1058, i64 28, !1587, i64 32, !1587, i64 40, !1587, i64 48, !1058, i64 56, !1058, i64 60, !1587, i64 64, !1588, i64 72, !1588, i64 88, !1588, i64 104, !959, i64 120}
!1587 = !{!"long", !959, i64 0}
!1588 = !{!"timespec", !1587, i64 0, !1587, i64 8}
!1589 = !DILocation(line: 414, column: 52, scope: !1453)
!1590 = !DILocation(line: 0, scope: !1315, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 419, column: 9, scope: !1458)
!1593 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1591)
!1594 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1591)
!1595 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1591)
!1596 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1592)
!1597 = !DILocation(line: 420, column: 19, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1458, file: !2, line: 420, column: 13)
!1599 = !DILocation(line: 420, column: 13, scope: !1598)
!1600 = !DILocation(line: 420, column: 45, scope: !1598)
!1601 = !DILocation(line: 420, column: 13, scope: !1458)
!1602 = !DILocation(line: 422, column: 9, scope: !1458)
!1603 = !DILocation(line: 422, column: 15, scope: !1458)
!1604 = !DILocation(line: 423, column: 22, scope: !1458)
!1605 = !DILocation(line: 0, scope: !1458)
!1606 = !DILocation(line: 425, column: 24, scope: !1458)
!1607 = !DILocation(line: 425, column: 34, scope: !1458)
!1608 = !DILocation(line: 425, column: 37, scope: !1458)
!1609 = !DILocation(line: 425, column: 44, scope: !1458)
!1610 = !DILocation(line: 425, column: 64, scope: !1458)
!1611 = !{!1586, !1058, i64 28}
!1612 = !DILocation(line: 425, column: 52, scope: !1458)
!1613 = !DILocation(line: 0, scope: !1315, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 429, column: 7, scope: !1450)
!1616 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1614)
!1617 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1614)
!1618 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1614)
!1619 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1615)
!1620 = !DILocation(line: 432, column: 21, scope: !1450)
!1621 = !DILocation(line: 432, column: 15, scope: !1450)
!1622 = !DILocation(line: 432, column: 47, scope: !1450)
!1623 = !DILocation(line: 433, column: 15, scope: !1450)
!1624 = !DILocation(line: 432, column: 7, scope: !1450)
!1625 = !DILocation(line: 0, scope: !1315, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 436, column: 7, scope: !1450)
!1628 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1626)
!1629 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1626)
!1630 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1626)
!1631 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1627)
!1632 = !DILocation(line: 437, column: 21, scope: !1450)
!1633 = !DILocation(line: 437, column: 15, scope: !1450)
!1634 = !DILocation(line: 437, column: 47, scope: !1450)
!1635 = !DILocation(line: 438, column: 15, scope: !1450)
!1636 = !DILocation(line: 437, column: 7, scope: !1450)
!1637 = !DILocation(line: 0, scope: !1315, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 441, column: 7, scope: !1450)
!1640 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1638)
!1641 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1638)
!1642 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1638)
!1643 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1639)
!1644 = !DILocation(line: 442, column: 21, scope: !1450)
!1645 = !DILocation(line: 442, column: 15, scope: !1450)
!1646 = !DILocation(line: 442, column: 47, scope: !1450)
!1647 = !DILocation(line: 443, column: 15, scope: !1450)
!1648 = !DILocation(line: 442, column: 7, scope: !1450)
!1649 = !DILocation(line: 0, scope: !1315, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 446, column: 7, scope: !1450)
!1652 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1650)
!1653 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1650)
!1654 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1650)
!1655 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1651)
!1656 = !DILocation(line: 447, column: 21, scope: !1450)
!1657 = !DILocation(line: 447, column: 15, scope: !1450)
!1658 = !DILocation(line: 447, column: 47, scope: !1450)
!1659 = !DILocation(line: 448, column: 15, scope: !1450)
!1660 = !DILocation(line: 447, column: 7, scope: !1450)
!1661 = !DILocation(line: 0, scope: !1315, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 451, column: 7, scope: !1450)
!1664 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1662)
!1665 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1662)
!1666 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1662)
!1667 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1663)
!1668 = !DILocation(line: 452, column: 21, scope: !1450)
!1669 = !DILocation(line: 452, column: 15, scope: !1450)
!1670 = !DILocation(line: 452, column: 47, scope: !1450)
!1671 = !DILocation(line: 453, column: 15, scope: !1450)
!1672 = !DILocation(line: 452, column: 7, scope: !1450)
!1673 = !DILocation(line: 0, scope: !1315, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 456, column: 7, scope: !1450)
!1676 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1674)
!1677 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1674)
!1678 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1674)
!1679 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1675)
!1680 = !DILocation(line: 457, column: 21, scope: !1450)
!1681 = !DILocation(line: 457, column: 15, scope: !1450)
!1682 = !DILocation(line: 457, column: 47, scope: !1450)
!1683 = !DILocation(line: 458, column: 15, scope: !1450)
!1684 = !DILocation(line: 457, column: 7, scope: !1450)
!1685 = !DILocation(line: 0, scope: !1315, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 461, column: 7, scope: !1450)
!1688 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1686)
!1689 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1686)
!1690 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1686)
!1691 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1687)
!1692 = !DILocation(line: 462, column: 21, scope: !1450)
!1693 = !DILocation(line: 462, column: 15, scope: !1450)
!1694 = !DILocation(line: 462, column: 47, scope: !1450)
!1695 = !DILocation(line: 463, column: 15, scope: !1450)
!1696 = !DILocation(line: 462, column: 7, scope: !1450)
!1697 = !DILocation(line: 0, scope: !1315, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 469, column: 7, scope: !1450)
!1700 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1698)
!1701 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1698)
!1702 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1698)
!1703 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1699)
!1704 = !DILocation(line: 470, column: 25, scope: !1450)
!1705 = !DILocalVariable(name: "linkbuf", scope: !1706, file: !1707, line: 51, type: !206)
!1706 = distinct !DISubprogram(name: "issymlink", scope: !1707, file: !1707, line: 49, type: !1708, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1710)
!1707 = !DIFile(filename: "./lib/issymlink.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3ed5fe5c76158b7c9a68dd013fb9e151")
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!260, !265}
!1710 = !{!1711, !1705}
!1711 = !DILocalVariable(name: "filename", arg: 1, scope: !1706, file: !1707, line: 49, type: !265)
!1712 = !DILocation(line: 0, scope: !1706, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 470, column: 14, scope: !1450)
!1714 = !DILocation(line: 51, column: 3, scope: !1706, inlinedAt: !1713)
!1715 = !DILocation(line: 52, column: 7, scope: !1716, inlinedAt: !1713)
!1716 = distinct !DILexicalBlock(scope: !1706, file: !1707, line: 52, column: 7)
!1717 = !DILocation(line: 52, column: 54, scope: !1716, inlinedAt: !1713)
!1718 = !DILocation(line: 58, column: 1, scope: !1706, inlinedAt: !1713)
!1719 = !DILocation(line: 470, column: 7, scope: !1450)
!1720 = !DILocation(line: 0, scope: !1315, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 473, column: 7, scope: !1450)
!1723 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1721)
!1724 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1721)
!1725 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1721)
!1726 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1722)
!1727 = !DILocation(line: 474, column: 21, scope: !1450)
!1728 = !DILocation(line: 474, column: 15, scope: !1450)
!1729 = !DILocation(line: 474, column: 47, scope: !1450)
!1730 = !DILocation(line: 475, column: 15, scope: !1450)
!1731 = !DILocation(line: 474, column: 7, scope: !1450)
!1732 = !DILocation(line: 0, scope: !1315, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 478, column: 7, scope: !1450)
!1735 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1733)
!1736 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1733)
!1737 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1733)
!1738 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1734)
!1739 = !DILocation(line: 479, column: 21, scope: !1450)
!1740 = !DILocation(line: 479, column: 15, scope: !1450)
!1741 = !DILocation(line: 479, column: 47, scope: !1450)
!1742 = !DILocation(line: 480, column: 15, scope: !1450)
!1743 = !DILocation(line: 479, column: 7, scope: !1450)
!1744 = !DILocation(line: 0, scope: !1315, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 483, column: 7, scope: !1450)
!1747 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1745)
!1748 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1745)
!1749 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1745)
!1750 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1746)
!1751 = !DILocation(line: 484, column: 21, scope: !1450)
!1752 = !DILocation(line: 484, column: 15, scope: !1450)
!1753 = !DILocation(line: 484, column: 47, scope: !1450)
!1754 = !DILocation(line: 485, column: 15, scope: !1450)
!1755 = !DILocation(line: 484, column: 7, scope: !1450)
!1756 = !DILocation(line: 0, scope: !1315, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 491, column: 9, scope: !1462)
!1759 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1757)
!1760 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1757)
!1761 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1757)
!1762 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1758)
!1763 = !DILocation(line: 492, column: 25, scope: !1462)
!1764 = !DILocation(line: 492, column: 15, scope: !1462)
!1765 = !DILocation(line: 0, scope: !1462)
!1766 = !DILocation(line: 493, column: 9, scope: !1462)
!1767 = !DILocation(line: 493, column: 15, scope: !1462)
!1768 = !DILocation(line: 494, column: 14, scope: !1462)
!1769 = !DILocation(line: 495, column: 17, scope: !1462)
!1770 = !DILocation(line: 495, column: 23, scope: !1462)
!1771 = !DILocation(line: 495, column: 33, scope: !1462)
!1772 = !DILocation(line: 495, column: 72, scope: !1462)
!1773 = !DILocation(line: 495, column: 64, scope: !1462)
!1774 = !DILocation(line: 495, column: 61, scope: !1462)
!1775 = !DILocation(line: 0, scope: !1315, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 499, column: 7, scope: !1450)
!1778 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1776)
!1779 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1776)
!1780 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1776)
!1781 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1777)
!1782 = !DILocation(line: 500, column: 14, scope: !1450)
!1783 = !DILocation(line: 500, column: 31, scope: !1450)
!1784 = !DILocation(line: 500, column: 7, scope: !1450)
!1785 = !DILocation(line: 0, scope: !1315, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 121, column: 3, scope: !1478, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 503, column: 7, scope: !1450)
!1788 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1786)
!1789 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1786)
!1790 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1786)
!1791 = !DILocation(line: 122, column: 3, scope: !1478, inlinedAt: !1787)
!1792 = !DILocation(line: 504, column: 14, scope: !1450)
!1793 = !DILocation(line: 504, column: 31, scope: !1450)
!1794 = !DILocation(line: 504, column: 7, scope: !1450)
!1795 = !DILocation(line: 0, scope: !1450)
!1796 = !DILocation(line: 506, column: 1, scope: !1411)
!1797 = distinct !DISubprogram(name: "beyond", scope: !2, file: !2, line: 130, type: !629, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221)
!1798 = !DILocation(line: 132, column: 22, scope: !1797)
!1799 = !DILocation(line: 132, column: 61, scope: !1797)
!1800 = !DILocation(line: 132, column: 66, scope: !1797)
!1801 = !DILocation(line: 132, column: 54, scope: !1797)
!1802 = !DILocation(line: 132, column: 3, scope: !1797)
!1803 = distinct !DISubprogram(name: "three_arguments", scope: !2, file: !2, line: 587, type: !1265, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1804)
!1804 = !{!1805, !1806}
!1805 = !DILocalVariable(name: "value", scope: !1803, file: !2, line: 589, type: !297)
!1806 = !DILocalVariable(name: "bop", scope: !1803, file: !2, line: 590, type: !260)
!1807 = !DILocation(line: 590, column: 20, scope: !1803)
!1808 = !DILocation(line: 590, column: 25, scope: !1803)
!1809 = !DILocation(line: 590, column: 13, scope: !1803)
!1810 = !{i32 -1, i32 13}
!1811 = !DILocation(line: 0, scope: !1803)
!1812 = !DILocation(line: 592, column: 9, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1803, file: !2, line: 592, column: 7)
!1814 = !DILocation(line: 592, column: 7, scope: !1803)
!1815 = !DILocation(line: 593, column: 13, scope: !1813)
!1816 = !DILocation(line: 593, column: 5, scope: !1813)
!1817 = !DILocation(line: 594, column: 19, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1813, file: !2, line: 594, column: 12)
!1819 = !DILocation(line: 0, scope: !1069, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 594, column: 12, scope: !1818)
!1821 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1820)
!1822 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1820)
!1823 = !DILocation(line: 594, column: 12, scope: !1813)
!1824 = !DILocation(line: 0, scope: !1315, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 596, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 595, column: 5)
!1827 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1825)
!1828 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1825)
!1829 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1825)
!1830 = !DILocation(line: 0, scope: !1069, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 570, column: 7, scope: !1273, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 597, column: 16, scope: !1826)
!1833 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1831)
!1834 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1831)
!1835 = !DILocation(line: 570, column: 7, scope: !1274, inlinedAt: !1832)
!1836 = !DILocation(line: 570, column: 14, scope: !1273, inlinedAt: !1832)
!1837 = !DILocation(line: 562, column: 18, scope: !1264, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 573, column: 17, scope: !1286, inlinedAt: !1832)
!1839 = !DILocation(line: 562, column: 10, scope: !1264, inlinedAt: !1838)
!1840 = !DILocation(line: 562, column: 25, scope: !1264, inlinedAt: !1838)
!1841 = !DILocation(line: 0, scope: !1274, inlinedAt: !1832)
!1842 = !DILocation(line: 574, column: 5, scope: !1286, inlinedAt: !1832)
!1843 = !DILocation(line: 575, column: 12, scope: !1292, inlinedAt: !1832)
!1844 = !DILocation(line: 575, column: 25, scope: !1292, inlinedAt: !1832)
!1845 = !DILocation(line: 576, column: 12, scope: !1292, inlinedAt: !1832)
!1846 = !DILocation(line: 576, column: 15, scope: !1292, inlinedAt: !1832)
!1847 = !DILocation(line: 576, column: 28, scope: !1292, inlinedAt: !1832)
!1848 = !DILocation(line: 577, column: 12, scope: !1292, inlinedAt: !1832)
!1849 = !DILocation(line: 577, column: 15, scope: !1292, inlinedAt: !1832)
!1850 = !DILocation(line: 577, column: 28, scope: !1292, inlinedAt: !1832)
!1851 = !DILocation(line: 575, column: 12, scope: !1273, inlinedAt: !1832)
!1852 = !DILocation(line: 579, column: 15, scope: !1302, inlinedAt: !1832)
!1853 = !DILocation(line: 582, column: 5, scope: !1292, inlinedAt: !1832)
!1854 = !DILocation(line: 597, column: 15, scope: !1826)
!1855 = !DILocation(line: 598, column: 5, scope: !1826)
!1856 = !DILocation(line: 0, scope: !1069, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 599, column: 12, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 599, column: 12)
!1859 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1857)
!1860 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1857)
!1861 = !DILocation(line: 599, column: 35, scope: !1858)
!1862 = !DILocation(line: 599, column: 45, scope: !1858)
!1863 = !DILocation(line: 0, scope: !1069, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 599, column: 38, scope: !1858)
!1865 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1864)
!1866 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1864)
!1867 = !DILocation(line: 599, column: 12, scope: !1818)
!1868 = !DILocation(line: 0, scope: !1315, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 601, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 600, column: 5)
!1871 = !DILocation(line: 562, column: 10, scope: !1264, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 602, column: 15, scope: !1870)
!1873 = !DILocation(line: 562, column: 25, scope: !1264, inlinedAt: !1872)
!1874 = !DILocation(line: 0, scope: !1315, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 603, column: 7, scope: !1870)
!1876 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1875)
!1877 = !DILocation(line: 604, column: 5, scope: !1870)
!1878 = !DILocation(line: 0, scope: !1069, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 605, column: 12, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 605, column: 12)
!1881 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1879)
!1882 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1879)
!1883 = !DILocation(line: 605, column: 40, scope: !1880)
!1884 = !DILocation(line: 0, scope: !1069, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 605, column: 43, scope: !1880)
!1886 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1885)
!1887 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1885)
!1888 = !DILocation(line: 606, column: 12, scope: !1880)
!1889 = !DILocation(line: 0, scope: !1069, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 606, column: 15, scope: !1880)
!1891 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1890)
!1892 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1890)
!1893 = !DILocation(line: 606, column: 42, scope: !1880)
!1894 = !DILocation(line: 0, scope: !1069, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 606, column: 45, scope: !1880)
!1896 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1895)
!1897 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1895)
!1898 = !DILocation(line: 605, column: 12, scope: !1858)
!1899 = !DILocation(line: 553, column: 14, scope: !1378, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 607, column: 13, scope: !1880)
!1901 = !DILocation(line: 553, column: 11, scope: !1378, inlinedAt: !1900)
!1902 = !DILocation(line: 553, column: 7, scope: !1379, inlinedAt: !1900)
!1903 = !DILocation(line: 554, column: 5, scope: !1378, inlinedAt: !1900)
!1904 = !DILocation(line: 556, column: 10, scope: !1379, inlinedAt: !1900)
!1905 = !DILocation(line: 609, column: 24, scope: !1880)
!1906 = !DILocation(line: 610, column: 31, scope: !1880)
!1907 = !DILocation(line: 610, column: 36, scope: !1880)
!1908 = !DILocation(line: 610, column: 24, scope: !1880)
!1909 = !DILocation(line: 609, column: 5, scope: !1880)
!1910 = !DILocation(line: 611, column: 3, scope: !1803)
!1911 = !DISubprogram(name: "__assert_fail", scope: !1912, file: !1912, line: 69, type: !1913, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1912 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !265, !265, !224, !265}
!1915 = distinct !DISubprogram(name: "or", scope: !2, file: !2, line: 533, type: !1265, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1916)
!1916 = !{!1917}
!1917 = !DILocalVariable(name: "value", scope: !1915, file: !2, line: 535, type: !297)
!1918 = !DILocation(line: 0, scope: !1915)
!1919 = !DILocalVariable(name: "value", scope: !1920, file: !2, line: 516, type: !297)
!1920 = distinct !DISubprogram(name: "and", scope: !2, file: !2, line: 514, type: !1265, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1921)
!1921 = !{!1919}
!1922 = !DILocation(line: 0, scope: !1920, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 539, column: 16, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1915, file: !2, line: 538, column: 5)
!1925 = !DILocalVariable(name: "negated", scope: !1926, file: !2, line: 227, type: !297)
!1926 = distinct !DISubprogram(name: "term", scope: !2, file: !2, line: 224, type: !1265, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1927)
!1927 = !{!1928, !1925, !1929, !1930}
!1928 = !DILocalVariable(name: "value", scope: !1926, file: !2, line: 226, type: !297)
!1929 = !DILocalVariable(name: "bop", scope: !1926, file: !2, line: 228, type: !260)
!1930 = !DILocalVariable(name: "nargs", scope: !1931, file: !2, line: 243, type: !260)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !2, line: 242, column: 5)
!1932 = distinct !DILexicalBlock(scope: !1926, file: !2, line: 241, column: 7)
!1933 = !DILocation(line: 0, scope: !1926, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 520, column: 16, scope: !1935, inlinedAt: !1923)
!1935 = distinct !DILexicalBlock(scope: !1920, file: !2, line: 519, column: 5)
!1936 = !DILocation(line: 231, column: 14, scope: !1926, inlinedAt: !1934)
!1937 = !DILocation(line: 231, column: 21, scope: !1926, inlinedAt: !1934)
!1938 = !DILocation(line: 537, column: 3, scope: !1915)
!1939 = !DILocation(line: 231, column: 24, scope: !1926, inlinedAt: !1934)
!1940 = !DILocation(line: 231, column: 37, scope: !1926, inlinedAt: !1934)
!1941 = !DILocation(line: 231, column: 44, scope: !1926, inlinedAt: !1934)
!1942 = !DILocation(line: 231, column: 3, scope: !1926, inlinedAt: !1934)
!1943 = !DILocation(line: 231, column: 47, scope: !1926, inlinedAt: !1934)
!1944 = !DILocation(line: 231, column: 60, scope: !1926, inlinedAt: !1934)
!1945 = !DILocation(line: 0, scope: !1315, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 233, column: 7, scope: !1947, inlinedAt: !1934)
!1947 = distinct !DILexicalBlock(scope: !1926, file: !2, line: 232, column: 5)
!1948 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1946)
!1949 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1946)
!1950 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1946)
!1951 = !DILocation(line: 234, column: 17, scope: !1947, inlinedAt: !1934)
!1952 = distinct !{!1952, !1942, !1953, !1104}
!1953 = !DILocation(line: 235, column: 5, scope: !1926, inlinedAt: !1934)
!1954 = !DILocation(line: 238, column: 5, scope: !1955, inlinedAt: !1934)
!1955 = distinct !DILexicalBlock(scope: !1926, file: !2, line: 237, column: 7)
!1956 = !DILocation(line: 241, column: 7, scope: !1932, inlinedAt: !1934)
!1957 = !DILocation(line: 241, column: 20, scope: !1932, inlinedAt: !1934)
!1958 = !DILocation(line: 241, column: 27, scope: !1932, inlinedAt: !1934)
!1959 = !DILocation(line: 241, column: 30, scope: !1932, inlinedAt: !1934)
!1960 = !DILocation(line: 241, column: 43, scope: !1932, inlinedAt: !1934)
!1961 = !DILocation(line: 241, column: 7, scope: !1926, inlinedAt: !1934)
!1962 = !DILocation(line: 0, scope: !1315, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 245, column: 7, scope: !1931, inlinedAt: !1934)
!1964 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !1963)
!1965 = !DILocation(line: 114, column: 9, scope: !1324, inlinedAt: !1963)
!1966 = !DILocation(line: 0, scope: !1931, inlinedAt: !1934)
!1967 = !DILocation(line: 248, column: 16, scope: !1968, inlinedAt: !1934)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !2, line: 247, column: 7)
!1969 = distinct !DILexicalBlock(scope: !1931, file: !2, line: 247, column: 7)
!1970 = !DILocation(line: 248, column: 24, scope: !1968, inlinedAt: !1934)
!1971 = !DILocation(line: 248, column: 31, scope: !1968, inlinedAt: !1934)
!1972 = !DILocation(line: 247, column: 7, scope: !1969, inlinedAt: !1934)
!1973 = !DILocation(line: 248, column: 43, scope: !1968, inlinedAt: !1934)
!1974 = !DILocation(line: 0, scope: !1069, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 248, column: 36, scope: !1968, inlinedAt: !1934)
!1976 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1975)
!1977 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1975)
!1978 = !DILocation(line: 115, column: 5, scope: !1324, inlinedAt: !1963)
!1979 = distinct !{!1979, !1972, !1980, !1104}
!1980 = !DILocation(line: 254, column: 11, scope: !1969, inlinedAt: !1934)
!1981 = !DILocation(line: 0, scope: !1969, inlinedAt: !1934)
!1982 = !DILocation(line: 256, column: 15, scope: !1931, inlinedAt: !1934)
!1983 = !DILocation(line: 257, column: 12, scope: !1984, inlinedAt: !1934)
!1984 = distinct !DILexicalBlock(scope: !1931, file: !2, line: 257, column: 11)
!1985 = !DILocation(line: 257, column: 17, scope: !1984, inlinedAt: !1934)
!1986 = !DILocation(line: 257, column: 11, scope: !1931, inlinedAt: !1934)
!1987 = !DILocation(line: 258, column: 28, scope: !1984, inlinedAt: !1934)
!1988 = !DILocation(line: 258, column: 46, scope: !1984, inlinedAt: !1934)
!1989 = !DILocation(line: 258, column: 9, scope: !1984, inlinedAt: !1934)
!1990 = !DILocation(line: 260, column: 13, scope: !1991, inlinedAt: !1934)
!1991 = distinct !DILexicalBlock(scope: !1984, file: !2, line: 260, column: 13)
!1992 = !DILocation(line: 260, column: 26, scope: !1991, inlinedAt: !1934)
!1993 = !DILocation(line: 260, column: 33, scope: !1991, inlinedAt: !1934)
!1994 = !DILocation(line: 260, column: 36, scope: !1991, inlinedAt: !1934)
!1995 = !DILocation(line: 260, column: 13, scope: !1984, inlinedAt: !1934)
!1996 = !DILocation(line: 261, column: 30, scope: !1991, inlinedAt: !1934)
!1997 = !DILocation(line: 262, column: 30, scope: !1991, inlinedAt: !1934)
!1998 = !DILocation(line: 262, column: 60, scope: !1991, inlinedAt: !1934)
!1999 = !DILocation(line: 262, column: 65, scope: !1991, inlinedAt: !1934)
!2000 = !DILocation(line: 262, column: 48, scope: !1991, inlinedAt: !1934)
!2001 = !DILocation(line: 261, column: 11, scope: !1991, inlinedAt: !1934)
!2002 = !DILocation(line: 0, scope: !1315, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 263, column: 7, scope: !1931, inlinedAt: !1934)
!2004 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !2003)
!2005 = !DILocation(line: 264, column: 5, scope: !1931, inlinedAt: !1934)
!2006 = !DILocation(line: 267, column: 22, scope: !2007, inlinedAt: !1934)
!2007 = distinct !DILexicalBlock(scope: !1932, file: !2, line: 267, column: 12)
!2008 = !DILocation(line: 267, column: 14, scope: !2007, inlinedAt: !1934)
!2009 = !DILocation(line: 267, column: 28, scope: !2007, inlinedAt: !1934)
!2010 = !DILocation(line: 0, scope: !1069, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 267, column: 31, scope: !2007, inlinedAt: !1934)
!2012 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2011)
!2013 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2011)
!2014 = !DILocation(line: 268, column: 12, scope: !2007, inlinedAt: !1934)
!2015 = !DILocation(line: 268, column: 34, scope: !2007, inlinedAt: !1934)
!2016 = !DILocation(line: 268, column: 27, scope: !2007, inlinedAt: !1934)
!2017 = !DILocation(line: 268, column: 17, scope: !2007, inlinedAt: !1934)
!2018 = !DILocation(line: 267, column: 12, scope: !1932, inlinedAt: !1934)
!2019 = !DILocation(line: 269, column: 13, scope: !2007, inlinedAt: !1934)
!2020 = !DILocation(line: 269, column: 5, scope: !2007, inlinedAt: !1934)
!2021 = !DILocation(line: 270, column: 14, scope: !2022, inlinedAt: !1934)
!2022 = distinct !DILexicalBlock(scope: !2007, file: !2, line: 270, column: 12)
!2023 = !DILocation(line: 271, column: 12, scope: !2022, inlinedAt: !1934)
!2024 = !DILocation(line: 271, column: 34, scope: !2022, inlinedAt: !1934)
!2025 = !DILocation(line: 271, column: 27, scope: !2022, inlinedAt: !1934)
!2026 = !DILocation(line: 271, column: 17, scope: !2022, inlinedAt: !1934)
!2027 = !DILocation(line: 270, column: 12, scope: !2007, inlinedAt: !1934)
!2028 = !DILocation(line: 272, column: 13, scope: !2022, inlinedAt: !1934)
!2029 = !DILocation(line: 272, column: 5, scope: !2022, inlinedAt: !1934)
!2030 = !DILocation(line: 275, column: 25, scope: !2031, inlinedAt: !1934)
!2031 = distinct !DILexicalBlock(scope: !2022, file: !2, line: 275, column: 12)
!2032 = !DILocation(line: 275, column: 32, scope: !2031, inlinedAt: !1934)
!2033 = !DILocation(line: 275, column: 35, scope: !2031, inlinedAt: !1934)
!2034 = !DILocation(line: 275, column: 48, scope: !2031, inlinedAt: !1934)
!2035 = !DILocation(line: 275, column: 51, scope: !2031, inlinedAt: !1934)
!2036 = !DILocation(line: 275, column: 64, scope: !2031, inlinedAt: !1934)
!2037 = !DILocation(line: 275, column: 12, scope: !2022, inlinedAt: !1934)
!2038 = !DILocation(line: 276, column: 13, scope: !2031, inlinedAt: !1934)
!2039 = !DILocation(line: 276, column: 5, scope: !2031, inlinedAt: !1934)
!2040 = !DILocation(line: 279, column: 29, scope: !2041, inlinedAt: !1934)
!2041 = distinct !DILexicalBlock(scope: !2031, file: !2, line: 278, column: 5)
!2042 = !DILocation(line: 0, scope: !1315, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 280, column: 7, scope: !2041, inlinedAt: !1934)
!2044 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !2043)
!2045 = !DILocation(line: 283, column: 18, scope: !1926, inlinedAt: !1934)
!2046 = !DILocation(line: 520, column: 13, scope: !1935, inlinedAt: !1923)
!2047 = !DILocation(line: 521, column: 14, scope: !2048, inlinedAt: !1923)
!2048 = distinct !DILexicalBlock(scope: !1935, file: !2, line: 521, column: 11)
!2049 = !DILocation(line: 521, column: 20, scope: !2048, inlinedAt: !1923)
!2050 = !DILocation(line: 521, column: 18, scope: !2048, inlinedAt: !1923)
!2051 = !DILocation(line: 521, column: 25, scope: !2048, inlinedAt: !1923)
!2052 = !DILocation(line: 521, column: 35, scope: !2048, inlinedAt: !1923)
!2053 = !DILocation(line: 0, scope: !1069, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 521, column: 28, scope: !2048, inlinedAt: !1923)
!2055 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2054)
!2056 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2054)
!2057 = !DILocation(line: 521, column: 11, scope: !1935, inlinedAt: !1923)
!2058 = !DILocation(line: 0, scope: !1315, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 523, column: 7, scope: !1935, inlinedAt: !1923)
!2060 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !2059)
!2061 = distinct !{!2061, !2062, !2063}
!2062 = !DILocation(line: 518, column: 3, scope: !1920, inlinedAt: !1923)
!2063 = !DILocation(line: 524, column: 5, scope: !1920, inlinedAt: !1923)
!2064 = !DILocation(line: 539, column: 13, scope: !1924)
!2065 = !DILocation(line: 0, scope: !1069, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 540, column: 28, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1924, file: !2, line: 540, column: 11)
!2068 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2066)
!2069 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2066)
!2070 = !DILocation(line: 540, column: 11, scope: !1924)
!2071 = !DILocation(line: 541, column: 9, scope: !2067)
!2072 = !DILocation(line: 0, scope: !1315, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 542, column: 7, scope: !1924)
!2074 = !DILocation(line: 112, column: 3, scope: !1315, inlinedAt: !2073)
!2075 = distinct !{!2075, !1938, !2076}
!2076 = !DILocation(line: 543, column: 5, scope: !1915)
!2077 = distinct !DISubprogram(name: "binop", scope: !2, file: !2, line: 186, type: !1708, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2078)
!2078 = !{!2079}
!2079 = !DILocalVariable(name: "s", arg: 1, scope: !2077, file: !2, line: 186, type: !265)
!2080 = !DILocation(line: 0, scope: !2077)
!2081 = !DILocation(line: 0, scope: !1069, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 188, column: 13, scope: !2077)
!2083 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2082)
!2084 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2082)
!2085 = !DILocation(line: 188, column: 13, scope: !2077)
!2086 = !DILocation(line: 0, scope: !1069, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 189, column: 13, scope: !2077)
!2088 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2087)
!2089 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2087)
!2090 = !DILocation(line: 189, column: 13, scope: !2077)
!2091 = !DILocation(line: 0, scope: !1069, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 190, column: 13, scope: !2077)
!2093 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2092)
!2094 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2092)
!2095 = !DILocation(line: 190, column: 13, scope: !2077)
!2096 = !DILocation(line: 0, scope: !1069, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 191, column: 13, scope: !2077)
!2098 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2097)
!2099 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2097)
!2100 = !DILocation(line: 191, column: 13, scope: !2077)
!2101 = !DILocation(line: 0, scope: !1069, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 192, column: 13, scope: !2077)
!2103 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2102)
!2104 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2102)
!2105 = !DILocation(line: 192, column: 13, scope: !2077)
!2106 = !DILocation(line: 0, scope: !1069, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 193, column: 13, scope: !2077)
!2108 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2107)
!2109 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2107)
!2110 = !DILocation(line: 193, column: 13, scope: !2077)
!2111 = !DILocation(line: 0, scope: !1069, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 194, column: 13, scope: !2077)
!2113 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2112)
!2114 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2112)
!2115 = !DILocation(line: 194, column: 13, scope: !2077)
!2116 = !DILocation(line: 0, scope: !1069, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 195, column: 13, scope: !2077)
!2118 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2117)
!2119 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2117)
!2120 = !DILocation(line: 195, column: 13, scope: !2077)
!2121 = !DILocation(line: 0, scope: !1069, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 196, column: 13, scope: !2077)
!2123 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2122)
!2124 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2122)
!2125 = !DILocation(line: 196, column: 13, scope: !2077)
!2126 = !DILocation(line: 0, scope: !1069, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 197, column: 13, scope: !2077)
!2128 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2127)
!2129 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2127)
!2130 = !DILocation(line: 197, column: 13, scope: !2077)
!2131 = !DILocation(line: 0, scope: !1069, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 198, column: 13, scope: !2077)
!2133 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2132)
!2134 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2132)
!2135 = !DILocation(line: 198, column: 13, scope: !2077)
!2136 = !DILocation(line: 0, scope: !1069, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 199, column: 13, scope: !2077)
!2138 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2137)
!2139 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2137)
!2140 = !DILocation(line: 199, column: 13, scope: !2077)
!2141 = !DILocation(line: 0, scope: !1069, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 200, column: 13, scope: !2077)
!2143 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2142)
!2144 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2142)
!2145 = !DILocation(line: 200, column: 13, scope: !2077)
!2146 = !DILocation(line: 0, scope: !1069, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 201, column: 13, scope: !2077)
!2148 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2147)
!2149 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2147)
!2150 = !DILocation(line: 201, column: 13, scope: !2077)
!2151 = !DILocation(line: 188, column: 3, scope: !2077)
!2152 = distinct !DISubprogram(name: "binary_operator", scope: !2, file: !2, line: 287, type: !2153, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2155)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!297, !297, !244}
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2163, !2164, !2165, !2166, !2167, !2169, !2173}
!2156 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !2152, file: !2, line: 287, type: !297)
!2157 = !DILocalVariable(name: "bop", arg: 2, scope: !2152, file: !2, line: 287, type: !244)
!2158 = !DILocalVariable(name: "op", scope: !2152, file: !2, line: 289, type: !260)
!2159 = !DILocalVariable(name: "r_is_l", scope: !2152, file: !2, line: 296, type: !297)
!2160 = !DILocalVariable(name: "lbuf", scope: !2161, file: !2, line: 307, type: !625)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 306, column: 7)
!2162 = distinct !DILexicalBlock(scope: !2152, file: !2, line: 303, column: 5)
!2163 = !DILocalVariable(name: "rbuf", scope: !2161, file: !2, line: 308, type: !625)
!2164 = !DILocalVariable(name: "l", scope: !2161, file: !2, line: 309, type: !265)
!2165 = !DILocalVariable(name: "r", scope: !2161, file: !2, line: 312, type: !265)
!2166 = !DILocalVariable(name: "cmp", scope: !2161, file: !2, line: 315, type: !260)
!2167 = !DILocalVariable(name: "cmp", scope: !2168, file: !2, line: 333, type: !260)
!2168 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 329, column: 7)
!2169 = !DILocalVariable(name: "st", scope: !2170, file: !2, line: 343, type: !2172)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !2, line: 342, column: 9)
!2171 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 339, column: 11)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1414, size: 2048, elements: !45)
!2173 = !DILocalVariable(name: "cmp", scope: !2174, file: !2, line: 356, type: !260)
!2174 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 355, column: 7)
!2175 = distinct !DIAssignID()
!2176 = distinct !DIAssignID()
!2177 = distinct !DIAssignID()
!2178 = !DILocation(line: 0, scope: !2161)
!2179 = distinct !DIAssignID()
!2180 = distinct !DIAssignID()
!2181 = !DILocation(line: 0, scope: !2170)
!2182 = !DILocation(line: 0, scope: !2152)
!2183 = !DILocation(line: 293, column: 8, scope: !2152)
!2184 = !DILocation(line: 291, column: 7, scope: !2152)
!2185 = !DILocation(line: 293, column: 12, scope: !2152)
!2186 = !DILocation(line: 296, column: 22, scope: !2152)
!2187 = !DILocation(line: 296, column: 27, scope: !2152)
!2188 = !DILocation(line: 296, column: 20, scope: !2152)
!2189 = !DILocation(line: 296, column: 31, scope: !2152)
!2190 = !DILocation(line: 296, column: 41, scope: !2152)
!2191 = !DILocation(line: 0, scope: !1069, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 296, column: 34, scope: !2152)
!2193 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2192)
!2194 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2192)
!2195 = !DILocation(line: 297, column: 7, scope: !2152)
!2196 = !DILocation(line: 300, column: 7, scope: !2152)
!2197 = !DILocation(line: 302, column: 3, scope: !2152)
!2198 = !DILocation(line: 307, column: 9, scope: !2161)
!2199 = !DILocation(line: 308, column: 9, scope: !2161)
!2200 = !DILocation(line: 309, column: 26, scope: !2161)
!2201 = !DILocation(line: 310, column: 39, scope: !2161)
!2202 = !DILocation(line: 310, column: 28, scope: !2161)
!2203 = !DILocation(line: 311, column: 28, scope: !2161)
!2204 = !DILocation(line: 312, column: 26, scope: !2161)
!2205 = !DILocation(line: 313, column: 47, scope: !2161)
!2206 = !DILocation(line: 313, column: 39, scope: !2161)
!2207 = !DILocation(line: 313, column: 28, scope: !2161)
!2208 = !DILocation(line: 314, column: 38, scope: !2161)
!2209 = !DILocation(line: 314, column: 28, scope: !2161)
!2210 = !DILocation(line: 315, column: 19, scope: !2161)
!2211 = !DILocation(line: 316, column: 9, scope: !2161)
!2212 = !DILocation(line: 318, column: 37, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2161, file: !2, line: 317, column: 11)
!2214 = !DILocation(line: 318, column: 26, scope: !2213)
!2215 = !DILocation(line: 319, column: 37, scope: !2213)
!2216 = !DILocation(line: 319, column: 26, scope: !2213)
!2217 = !DILocation(line: 320, column: 37, scope: !2213)
!2218 = !DILocation(line: 320, column: 26, scope: !2213)
!2219 = !DILocation(line: 321, column: 37, scope: !2213)
!2220 = !DILocation(line: 321, column: 26, scope: !2213)
!2221 = !DILocation(line: 322, column: 37, scope: !2213)
!2222 = !DILocation(line: 322, column: 26, scope: !2213)
!2223 = !DILocation(line: 323, column: 37, scope: !2213)
!2224 = !DILocation(line: 323, column: 26, scope: !2213)
!2225 = !DILocation(line: 325, column: 9, scope: !2161)
!2226 = !DILocation(line: 0, scope: !2213)
!2227 = !DILocation(line: 326, column: 7, scope: !2162)
!2228 = !DILocation(line: 330, column: 20, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2168, file: !2, line: 330, column: 13)
!2230 = !DILocation(line: 330, column: 13, scope: !2168)
!2231 = !DILocation(line: 331, column: 30, scope: !2229)
!2232 = !DILocation(line: 332, column: 30, scope: !2229)
!2233 = !DILocation(line: 331, column: 11, scope: !2229)
!2234 = !DILocation(line: 333, column: 44, scope: !2168)
!2235 = !DILocalVariable(name: "finfo", scope: !2236, file: !2, line: 177, type: !1414)
!2236 = distinct !DISubprogram(name: "get_mtime", scope: !2, file: !2, line: 175, type: !2237, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2239)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!1438, !265}
!2239 = !{!2240, !2235}
!2240 = !DILocalVariable(name: "filename", arg: 1, scope: !2236, file: !2, line: 175, type: !265)
!2241 = !DILocation(line: 0, scope: !2236, inlinedAt: !2242)
!2242 = distinct !DILocation(line: 333, column: 33, scope: !2168)
!2243 = !DILocation(line: 177, column: 3, scope: !2236, inlinedAt: !2242)
!2244 = !DILocation(line: 178, column: 11, scope: !2236, inlinedAt: !2242)
!2245 = !DILocation(line: 178, column: 35, scope: !2236, inlinedAt: !2242)
!2246 = !DILocation(line: 181, column: 1, scope: !2236, inlinedAt: !2242)
!2247 = !DILocation(line: 334, column: 44, scope: !2168)
!2248 = !DILocation(line: 0, scope: !2236, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 334, column: 33, scope: !2168)
!2250 = !DILocation(line: 177, column: 3, scope: !2236, inlinedAt: !2249)
!2251 = !DILocation(line: 178, column: 11, scope: !2236, inlinedAt: !2249)
!2252 = !DILocation(line: 178, column: 35, scope: !2236, inlinedAt: !2249)
!2253 = !DILocation(line: 181, column: 1, scope: !2236, inlinedAt: !2249)
!2254 = !DILocation(line: 0, scope: !1552, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 333, column: 19, scope: !2168)
!2256 = !DILocation(line: 66, column: 14, scope: !1552, inlinedAt: !2255)
!2257 = !DILocation(line: 66, column: 12, scope: !1552, inlinedAt: !2255)
!2258 = !DILocation(line: 66, column: 45, scope: !1552, inlinedAt: !2255)
!2259 = !DILocation(line: 66, column: 43, scope: !1552, inlinedAt: !2255)
!2260 = !DILocation(line: 0, scope: !2168)
!2261 = !DILocation(line: 335, column: 20, scope: !2168)
!2262 = !DILocation(line: 335, column: 16, scope: !2168)
!2263 = !DILocation(line: 339, column: 18, scope: !2171)
!2264 = !DILocation(line: 339, column: 11, scope: !2162)
!2265 = !DILocation(line: 340, column: 28, scope: !2171)
!2266 = !DILocation(line: 340, column: 9, scope: !2171)
!2267 = !DILocation(line: 343, column: 11, scope: !2170)
!2268 = !DILocation(line: 344, column: 25, scope: !2170)
!2269 = !DILocation(line: 344, column: 19, scope: !2170)
!2270 = !DILocation(line: 344, column: 47, scope: !2170)
!2271 = !DILocation(line: 345, column: 19, scope: !2170)
!2272 = !DILocation(line: 345, column: 28, scope: !2170)
!2273 = !DILocation(line: 345, column: 43, scope: !2170)
!2274 = !DILocation(line: 345, column: 22, scope: !2170)
!2275 = !DILocation(line: 345, column: 50, scope: !2170)
!2276 = !DILocation(line: 346, column: 19, scope: !2170)
!2277 = !DILocalVariable(name: "a", arg: 1, scope: !2278, file: !2279, line: 86, type: !1538)
!2278 = distinct !DISubprogram(name: "psame_inode", scope: !2279, file: !2279, line: 86, type: !2280, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2282)
!2279 = !DIFile(filename: "./lib/same-inode.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6a49db1c884e7bc93549038e7fb28788")
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!297, !1538, !1538}
!2282 = !{!2277, !2283}
!2283 = !DILocalVariable(name: "b", arg: 2, scope: !2278, file: !2279, line: 86, type: !1538)
!2284 = !DILocation(line: 0, scope: !2278, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 346, column: 22, scope: !2170)
!2286 = !DILocation(line: 90, column: 14, scope: !2278, inlinedAt: !2285)
!2287 = !{!1586, !1587, i64 0}
!2288 = !{!1586, !1587, i64 8}
!2289 = !DILocation(line: 347, column: 9, scope: !2171)
!2290 = !DILocation(line: 351, column: 21, scope: !2162)
!2291 = !DILocation(line: 351, column: 35, scope: !2162)
!2292 = !DILocation(line: 0, scope: !1069, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 351, column: 14, scope: !2162)
!2294 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2293)
!2295 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2293)
!2296 = !DILocation(line: 351, column: 49, scope: !2162)
!2297 = !DILocation(line: 351, column: 7, scope: !2162)
!2298 = !DILocation(line: 356, column: 28, scope: !2174)
!2299 = !DILocation(line: 356, column: 42, scope: !2174)
!2300 = !DILocation(line: 356, column: 19, scope: !2174)
!2301 = !DILocation(line: 0, scope: !2174)
!2302 = !DILocation(line: 357, column: 20, scope: !2174)
!2303 = !DILocation(line: 357, column: 16, scope: !2174)
!2304 = !DILocation(line: 362, column: 3, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !2, line: 362, column: 3)
!2306 = distinct !DILexicalBlock(scope: !2152, file: !2, line: 362, column: 3)
!2307 = !DILocation(line: 0, scope: !2162)
!2308 = !DILocation(line: 363, column: 1, scope: !2152)
!2309 = !DISubprogram(name: "strlen", scope: !1177, file: !1177, line: 407, type: !2310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!264, !265}
!2312 = distinct !DISubprogram(name: "find_int", scope: !2, file: !2, line: 139, type: !2313, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2315)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!265, !265}
!2315 = !{!2316, !2317, !2318}
!2316 = !DILocalVariable(name: "string", arg: 1, scope: !2312, file: !2, line: 139, type: !265)
!2317 = !DILocalVariable(name: "p", scope: !2312, file: !2, line: 141, type: !265)
!2318 = !DILocalVariable(name: "number_start", scope: !2312, file: !2, line: 142, type: !265)
!2319 = !DILocation(line: 0, scope: !2312)
!2320 = !DILocation(line: 144, column: 8, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2312, file: !2, line: 144, column: 3)
!2322 = !DILocation(line: 144, scope: !2321)
!2323 = !DILocation(line: 144, column: 20, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2321, file: !2, line: 144, column: 3)
!2325 = !DILocation(line: 144, column: 3, scope: !2321)
!2326 = !DILocation(line: 144, column: 46, scope: !2324)
!2327 = distinct !{!2327, !2325, !2328, !1104}
!2328 = !DILocation(line: 145, column: 5, scope: !2321)
!2329 = !DILocation(line: 147, column: 10, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2312, file: !2, line: 147, column: 7)
!2331 = !DILocation(line: 147, column: 7, scope: !2312)
!2332 = !DILocation(line: 158, column: 18, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2312, file: !2, line: 158, column: 7)
!2334 = !DILocalVariable(name: "c", arg: 1, scope: !2335, file: !2336, line: 233, type: !260)
!2335 = distinct !DISubprogram(name: "c_isdigit", scope: !2336, file: !2336, line: 233, type: !1256, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2337)
!2336 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!2337 = !{!2334}
!2338 = !DILocation(line: 0, scope: !2335, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 158, column: 7, scope: !2333)
!2340 = !DILocation(line: 235, column: 3, scope: !2335, inlinedAt: !2339)
!2341 = !DILocation(line: 158, column: 7, scope: !2312)
!2342 = !DILocation(line: 160, column: 7, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2333, file: !2, line: 159, column: 5)
!2344 = !DILocation(line: 0, scope: !2333)
!2345 = !DILocation(line: 160, column: 25, scope: !2343)
!2346 = !DILocation(line: 0, scope: !2335, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 160, column: 14, scope: !2343)
!2348 = !DILocation(line: 235, column: 3, scope: !2335, inlinedAt: !2347)
!2349 = distinct !{!2349, !2342, !2350, !1104}
!2350 = !DILocation(line: 161, column: 10, scope: !2343)
!2351 = !DILocation(line: 162, column: 14, scope: !2343)
!2352 = !DILocation(line: 162, column: 7, scope: !2343)
!2353 = !DILocation(line: 163, column: 10, scope: !2343)
!2354 = distinct !{!2354, !2352, !2353, !1104}
!2355 = !DILocation(line: 164, column: 12, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2343, file: !2, line: 164, column: 11)
!2357 = !DILocation(line: 164, column: 11, scope: !2343)
!2358 = !DILocation(line: 165, column: 9, scope: !2356)
!2359 = !DILocation(line: 168, column: 22, scope: !2312)
!2360 = !DILocation(line: 168, column: 47, scope: !2312)
!2361 = !DILocation(line: 168, column: 3, scope: !2312)
!2362 = !DISubprogram(name: "stat", scope: !2363, file: !2363, line: 205, type: !2364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2363 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!260, !1051, !2366}
!2366 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2367)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!2368 = !DISubprogram(name: "strcoll", scope: !1177, file: !1177, line: 163, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2369 = !DISubprogram(name: "euidaccess", scope: !2370, file: !2370, line: 292, type: !2371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2370 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!260, !265, !260}
!2373 = !DISubprogram(name: "__errno_location", scope: !2374, file: !2374, line: 37, type: !2375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2374 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!2377}
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!2378 = !DISubprogram(name: "geteuid", scope: !2370, file: !2370, line: 700, type: !2379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!1426}
!2381 = !DISubprogram(name: "getegid", scope: !2370, file: !2370, line: 706, type: !2382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!1428}
!2384 = !DISubprogram(name: "strtol", scope: !1181, file: !1181, line: 177, type: !2385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!273, !1051, !2387, !260}
!2387 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !561)
!2388 = !DISubprogram(name: "isatty", scope: !2370, file: !2370, line: 809, type: !2389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!260, !260}
!2391 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !565, file: !565, line: 50, type: !1011, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2392)
!2392 = !{!2393}
!2393 = !DILocalVariable(name: "file", arg: 1, scope: !2391, file: !565, line: 50, type: !265)
!2394 = !DILocation(line: 0, scope: !2391)
!2395 = !DILocation(line: 52, column: 13, scope: !2391)
!2396 = !DILocation(line: 53, column: 1, scope: !2391)
!2397 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !565, file: !565, line: 87, type: !1316, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2398)
!2398 = !{!2399}
!2399 = !DILocalVariable(name: "ignore", arg: 1, scope: !2397, file: !565, line: 87, type: !297)
!2400 = !DILocation(line: 0, scope: !2397)
!2401 = !DILocation(line: 89, column: 16, scope: !2397)
!2402 = !{!2403, !2403, i64 0}
!2403 = !{!"_Bool", !959, i64 0}
!2404 = !DILocation(line: 90, column: 1, scope: !2397)
!2405 = distinct !DISubprogram(name: "close_stdout", scope: !565, file: !565, line: 116, type: !629, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2406)
!2406 = !{!2407}
!2407 = !DILocalVariable(name: "write_error", scope: !2408, file: !565, line: 121, type: !265)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !565, line: 120, column: 5)
!2409 = distinct !DILexicalBlock(scope: !2405, file: !565, line: 118, column: 7)
!2410 = !DILocation(line: 118, column: 21, scope: !2409)
!2411 = !DILocation(line: 118, column: 7, scope: !2409)
!2412 = !DILocation(line: 118, column: 29, scope: !2409)
!2413 = !DILocation(line: 119, column: 7, scope: !2409)
!2414 = !DILocation(line: 119, column: 12, scope: !2409)
!2415 = !{i8 0, i8 2}
!2416 = !DILocation(line: 119, column: 25, scope: !2409)
!2417 = !DILocation(line: 119, column: 28, scope: !2409)
!2418 = !DILocation(line: 119, column: 34, scope: !2409)
!2419 = !DILocation(line: 118, column: 7, scope: !2405)
!2420 = !DILocation(line: 121, column: 33, scope: !2408)
!2421 = !DILocation(line: 0, scope: !2408)
!2422 = !DILocation(line: 122, column: 11, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2408, file: !565, line: 122, column: 11)
!2424 = !DILocation(line: 0, scope: !2423)
!2425 = !DILocation(line: 122, column: 11, scope: !2408)
!2426 = !DILocation(line: 123, column: 9, scope: !2423)
!2427 = !DILocation(line: 126, column: 9, scope: !2423)
!2428 = !DILocation(line: 128, column: 14, scope: !2408)
!2429 = !DILocation(line: 128, column: 7, scope: !2408)
!2430 = !DILocation(line: 133, column: 42, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2405, file: !565, line: 133, column: 7)
!2432 = !DILocation(line: 133, column: 28, scope: !2431)
!2433 = !DILocation(line: 133, column: 50, scope: !2431)
!2434 = !DILocation(line: 133, column: 7, scope: !2405)
!2435 = !DILocation(line: 134, column: 12, scope: !2431)
!2436 = !DILocation(line: 134, column: 5, scope: !2431)
!2437 = !DILocation(line: 135, column: 1, scope: !2405)
!2438 = !DISubprogram(name: "_exit", scope: !2370, file: !2370, line: 624, type: !947, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2439 = distinct !DISubprogram(name: "verror", scope: !580, file: !580, line: 251, type: !2440, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2442)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{null, !260, !260, !265, !590}
!2442 = !{!2443, !2444, !2445, !2446}
!2443 = !DILocalVariable(name: "status", arg: 1, scope: !2439, file: !580, line: 251, type: !260)
!2444 = !DILocalVariable(name: "errnum", arg: 2, scope: !2439, file: !580, line: 251, type: !260)
!2445 = !DILocalVariable(name: "message", arg: 3, scope: !2439, file: !580, line: 251, type: !265)
!2446 = !DILocalVariable(name: "args", arg: 4, scope: !2439, file: !580, line: 251, type: !590)
!2447 = !DILocation(line: 0, scope: !2439)
!2448 = !DILocation(line: 261, column: 3, scope: !2439)
!2449 = !DILocation(line: 265, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2439, file: !580, line: 265, column: 7)
!2451 = !DILocation(line: 265, column: 7, scope: !2439)
!2452 = !DILocation(line: 266, column: 5, scope: !2450)
!2453 = !DILocation(line: 272, column: 7, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2450, file: !580, line: 268, column: 5)
!2455 = !DILocation(line: 276, column: 3, scope: !2439)
!2456 = !DILocation(line: 282, column: 1, scope: !2439)
!2457 = distinct !DISubprogram(name: "flush_stdout", scope: !580, file: !580, line: 163, type: !629, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2458)
!2458 = !{!2459}
!2459 = !DILocalVariable(name: "stdout_fd", scope: !2457, file: !580, line: 166, type: !260)
!2460 = !DILocation(line: 0, scope: !2457)
!2461 = !DILocalVariable(name: "fd", arg: 1, scope: !2462, file: !580, line: 145, type: !260)
!2462 = distinct !DISubprogram(name: "is_open", scope: !580, file: !580, line: 145, type: !2389, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2463)
!2463 = !{!2461}
!2464 = !DILocation(line: 0, scope: !2462, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 182, column: 25, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2457, file: !580, line: 182, column: 7)
!2467 = !DILocation(line: 157, column: 15, scope: !2462, inlinedAt: !2465)
!2468 = !DILocation(line: 157, column: 12, scope: !2462, inlinedAt: !2465)
!2469 = !DILocation(line: 182, column: 7, scope: !2457)
!2470 = !DILocation(line: 184, column: 5, scope: !2466)
!2471 = !DILocation(line: 185, column: 1, scope: !2457)
!2472 = distinct !DISubprogram(name: "error_tail", scope: !580, file: !580, line: 219, type: !2440, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2473)
!2473 = !{!2474, !2475, !2476, !2477}
!2474 = !DILocalVariable(name: "status", arg: 1, scope: !2472, file: !580, line: 219, type: !260)
!2475 = !DILocalVariable(name: "errnum", arg: 2, scope: !2472, file: !580, line: 219, type: !260)
!2476 = !DILocalVariable(name: "message", arg: 3, scope: !2472, file: !580, line: 219, type: !265)
!2477 = !DILocalVariable(name: "args", arg: 4, scope: !2472, file: !580, line: 219, type: !590)
!2478 = distinct !DIAssignID()
!2479 = !DILocation(line: 0, scope: !2472)
!2480 = !DILocation(line: 229, column: 13, scope: !2472)
!2481 = !DILocation(line: 135, column: 10, scope: !2482, inlinedAt: !2524)
!2482 = distinct !DISubprogram(name: "vfprintf", scope: !1047, file: !1047, line: 132, type: !2483, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2520)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!260, !2485, !1051, !592}
!2485 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2486)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !312, line: 7, baseType: !2488)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !314, line: 49, size: 1728, elements: !2489)
!2489 = !{!2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2488, file: !314, line: 51, baseType: !260, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2488, file: !314, line: 54, baseType: !318, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2488, file: !314, line: 55, baseType: !318, size: 64, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2488, file: !314, line: 56, baseType: !318, size: 64, offset: 192)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2488, file: !314, line: 57, baseType: !318, size: 64, offset: 256)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2488, file: !314, line: 58, baseType: !318, size: 64, offset: 320)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2488, file: !314, line: 59, baseType: !318, size: 64, offset: 384)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2488, file: !314, line: 60, baseType: !318, size: 64, offset: 448)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2488, file: !314, line: 61, baseType: !318, size: 64, offset: 512)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2488, file: !314, line: 64, baseType: !318, size: 64, offset: 576)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2488, file: !314, line: 65, baseType: !318, size: 64, offset: 640)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2488, file: !314, line: 66, baseType: !318, size: 64, offset: 704)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2488, file: !314, line: 68, baseType: !330, size: 64, offset: 768)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2488, file: !314, line: 70, baseType: !2504, size: 64, offset: 832)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2488, file: !314, line: 72, baseType: !260, size: 32, offset: 896)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2488, file: !314, line: 73, baseType: !260, size: 32, offset: 928)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2488, file: !314, line: 74, baseType: !337, size: 64, offset: 960)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2488, file: !314, line: 77, baseType: !261, size: 16, offset: 1024)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2488, file: !314, line: 78, baseType: !340, size: 8, offset: 1040)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2488, file: !314, line: 79, baseType: !206, size: 8, offset: 1048)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2488, file: !314, line: 81, baseType: !343, size: 64, offset: 1088)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2488, file: !314, line: 89, baseType: !346, size: 64, offset: 1152)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2488, file: !314, line: 91, baseType: !348, size: 64, offset: 1216)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2488, file: !314, line: 92, baseType: !351, size: 64, offset: 1280)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2488, file: !314, line: 93, baseType: !2504, size: 64, offset: 1344)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2488, file: !314, line: 94, baseType: !268, size: 64, offset: 1408)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2488, file: !314, line: 95, baseType: !262, size: 64, offset: 1472)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2488, file: !314, line: 96, baseType: !260, size: 32, offset: 1536)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2488, file: !314, line: 98, baseType: !358, size: 160, offset: 1568)
!2520 = !{!2521, !2522, !2523}
!2521 = !DILocalVariable(name: "__stream", arg: 1, scope: !2482, file: !1047, line: 132, type: !2485)
!2522 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2482, file: !1047, line: 133, type: !1051)
!2523 = !DILocalVariable(name: "__ap", arg: 3, scope: !2482, file: !1047, line: 133, type: !592)
!2524 = distinct !DILocation(line: 229, column: 3, scope: !2472)
!2525 = !{!2526, !2528}
!2526 = distinct !{!2526, !2527, !"vfprintf.inline: argument 0"}
!2527 = distinct !{!2527, !"vfprintf.inline"}
!2528 = distinct !{!2528, !2527, !"vfprintf.inline: argument 1"}
!2529 = !DILocation(line: 229, column: 3, scope: !2472)
!2530 = !DILocation(line: 0, scope: !2482, inlinedAt: !2524)
!2531 = !DILocation(line: 232, column: 3, scope: !2472)
!2532 = !DILocation(line: 233, column: 7, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2472, file: !580, line: 233, column: 7)
!2534 = !DILocation(line: 233, column: 7, scope: !2472)
!2535 = !DILocalVariable(name: "errbuf", scope: !2536, file: !580, line: 193, type: !2540)
!2536 = distinct !DISubprogram(name: "print_errno_message", scope: !580, file: !580, line: 188, type: !947, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2537)
!2537 = !{!2538, !2539, !2535}
!2538 = !DILocalVariable(name: "errnum", arg: 1, scope: !2536, file: !580, line: 188, type: !260)
!2539 = !DILocalVariable(name: "s", scope: !2536, file: !580, line: 190, type: !265)
!2540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2541)
!2541 = !{!2542}
!2542 = !DISubrange(count: 1024)
!2543 = !DILocation(line: 0, scope: !2536, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 234, column: 5, scope: !2533)
!2545 = !DILocation(line: 193, column: 3, scope: !2536, inlinedAt: !2544)
!2546 = !DILocation(line: 195, column: 7, scope: !2536, inlinedAt: !2544)
!2547 = !DILocation(line: 207, column: 9, scope: !2548, inlinedAt: !2544)
!2548 = distinct !DILexicalBlock(scope: !2536, file: !580, line: 207, column: 7)
!2549 = !DILocation(line: 207, column: 7, scope: !2536, inlinedAt: !2544)
!2550 = !DILocation(line: 208, column: 9, scope: !2548, inlinedAt: !2544)
!2551 = !DILocation(line: 208, column: 5, scope: !2548, inlinedAt: !2544)
!2552 = !DILocation(line: 214, column: 3, scope: !2536, inlinedAt: !2544)
!2553 = !DILocation(line: 216, column: 1, scope: !2536, inlinedAt: !2544)
!2554 = !DILocation(line: 234, column: 5, scope: !2533)
!2555 = !DILocation(line: 238, column: 3, scope: !2472)
!2556 = !DILocalVariable(name: "__c", arg: 1, scope: !2557, file: !2558, line: 101, type: !260)
!2557 = distinct !DISubprogram(name: "putc_unlocked", scope: !2558, file: !2558, line: 101, type: !2559, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2561)
!2558 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!260, !260, !2486}
!2561 = !{!2556, !2562}
!2562 = !DILocalVariable(name: "__stream", arg: 2, scope: !2557, file: !2558, line: 101, type: !2486)
!2563 = !DILocation(line: 0, scope: !2557, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 238, column: 3, scope: !2472)
!2565 = !DILocation(line: 103, column: 10, scope: !2557, inlinedAt: !2564)
!2566 = !{!2567, !958, i64 40}
!2567 = !{!"_IO_FILE", !1058, i64 0, !958, i64 8, !958, i64 16, !958, i64 24, !958, i64 32, !958, i64 40, !958, i64 48, !958, i64 56, !958, i64 64, !958, i64 72, !958, i64 80, !958, i64 88, !958, i64 96, !958, i64 104, !1058, i64 112, !1058, i64 116, !1587, i64 120, !1099, i64 128, !959, i64 130, !959, i64 131, !958, i64 136, !1587, i64 144, !958, i64 152, !958, i64 160, !958, i64 168, !958, i64 176, !1587, i64 184, !1058, i64 192, !959, i64 196}
!2568 = !{!2567, !958, i64 48}
!2569 = !{!"branch_weights", i32 2000, i32 1}
!2570 = !DILocation(line: 240, column: 3, scope: !2472)
!2571 = !DILocation(line: 241, column: 7, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2472, file: !580, line: 241, column: 7)
!2573 = !DILocation(line: 241, column: 7, scope: !2472)
!2574 = !DILocation(line: 242, column: 5, scope: !2572)
!2575 = !DILocation(line: 243, column: 1, scope: !2472)
!2576 = !DISubprogram(name: "__vfprintf_chk", scope: !1047, file: !1047, line: 96, type: !2577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!260, !2485, !260, !1051, !592}
!2579 = !DISubprogram(name: "strerror_r", scope: !1177, file: !1177, line: 444, type: !2580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!318, !260, !318, !262}
!2582 = !DISubprogram(name: "__overflow", scope: !591, file: !591, line: 886, type: !2583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!260, !2486, !260}
!2585 = !DISubprogram(name: "fflush_unlocked", scope: !591, file: !591, line: 239, type: !2586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!260, !2486}
!2588 = !DISubprogram(name: "fcntl", scope: !2589, file: !2589, line: 149, type: !2590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2589 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!260, !260, !260, null}
!2592 = distinct !DISubprogram(name: "error", scope: !580, file: !580, line: 285, type: !2593, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2595)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{null, !260, !260, !265, null}
!2595 = !{!2596, !2597, !2598, !2599}
!2596 = !DILocalVariable(name: "status", arg: 1, scope: !2592, file: !580, line: 285, type: !260)
!2597 = !DILocalVariable(name: "errnum", arg: 2, scope: !2592, file: !580, line: 285, type: !260)
!2598 = !DILocalVariable(name: "message", arg: 3, scope: !2592, file: !580, line: 285, type: !265)
!2599 = !DILocalVariable(name: "ap", scope: !2592, file: !580, line: 287, type: !590)
!2600 = distinct !DIAssignID()
!2601 = !DILocation(line: 0, scope: !2592)
!2602 = !DILocation(line: 287, column: 3, scope: !2592)
!2603 = !DILocation(line: 288, column: 3, scope: !2592)
!2604 = !DILocation(line: 289, column: 3, scope: !2592)
!2605 = !DILocation(line: 290, column: 3, scope: !2592)
!2606 = !DILocation(line: 291, column: 1, scope: !2592)
!2607 = !DILocation(line: 0, scope: !587)
!2608 = !DILocation(line: 302, column: 7, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !587, file: !580, line: 302, column: 7)
!2610 = !DILocation(line: 302, column: 7, scope: !587)
!2611 = !DILocation(line: 307, column: 11, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !580, line: 307, column: 11)
!2613 = distinct !DILexicalBlock(scope: !2609, file: !580, line: 303, column: 5)
!2614 = !DILocation(line: 307, column: 27, scope: !2612)
!2615 = !DILocation(line: 308, column: 11, scope: !2612)
!2616 = !DILocation(line: 308, column: 28, scope: !2612)
!2617 = !DILocation(line: 308, column: 25, scope: !2612)
!2618 = !DILocation(line: 309, column: 15, scope: !2612)
!2619 = !DILocation(line: 309, column: 33, scope: !2612)
!2620 = !DILocation(line: 310, column: 19, scope: !2612)
!2621 = !DILocation(line: 311, column: 22, scope: !2612)
!2622 = !DILocation(line: 311, column: 56, scope: !2612)
!2623 = !DILocation(line: 307, column: 11, scope: !2613)
!2624 = !DILocation(line: 316, column: 21, scope: !2613)
!2625 = !DILocation(line: 317, column: 23, scope: !2613)
!2626 = !DILocation(line: 318, column: 5, scope: !2613)
!2627 = !DILocation(line: 327, column: 3, scope: !587)
!2628 = !DILocation(line: 331, column: 7, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !587, file: !580, line: 331, column: 7)
!2630 = !DILocation(line: 331, column: 7, scope: !587)
!2631 = !DILocation(line: 332, column: 5, scope: !2629)
!2632 = !DILocation(line: 338, column: 7, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2629, file: !580, line: 334, column: 5)
!2634 = !DILocation(line: 346, column: 3, scope: !587)
!2635 = !DILocation(line: 350, column: 3, scope: !587)
!2636 = !DILocation(line: 356, column: 1, scope: !587)
!2637 = distinct !DISubprogram(name: "error_at_line", scope: !580, file: !580, line: 359, type: !2638, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{null, !260, !260, !265, !224, !265, null}
!2640 = !{!2641, !2642, !2643, !2644, !2645, !2646}
!2641 = !DILocalVariable(name: "status", arg: 1, scope: !2637, file: !580, line: 359, type: !260)
!2642 = !DILocalVariable(name: "errnum", arg: 2, scope: !2637, file: !580, line: 359, type: !260)
!2643 = !DILocalVariable(name: "file_name", arg: 3, scope: !2637, file: !580, line: 359, type: !265)
!2644 = !DILocalVariable(name: "line_number", arg: 4, scope: !2637, file: !580, line: 360, type: !224)
!2645 = !DILocalVariable(name: "message", arg: 5, scope: !2637, file: !580, line: 360, type: !265)
!2646 = !DILocalVariable(name: "ap", scope: !2637, file: !580, line: 362, type: !590)
!2647 = distinct !DIAssignID()
!2648 = !DILocation(line: 0, scope: !2637)
!2649 = !DILocation(line: 362, column: 3, scope: !2637)
!2650 = !DILocation(line: 363, column: 3, scope: !2637)
!2651 = !DILocation(line: 364, column: 3, scope: !2637)
!2652 = !DILocation(line: 366, column: 3, scope: !2637)
!2653 = !DILocation(line: 367, column: 1, scope: !2637)
!2654 = distinct !DISubprogram(name: "getprogname", scope: !868, file: !868, line: 54, type: !2655, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !867)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!265}
!2657 = !DILocation(line: 58, column: 10, scope: !2654)
!2658 = !DILocation(line: 58, column: 3, scope: !2654)
!2659 = distinct !DISubprogram(name: "umaxtostr", scope: !2660, file: !2660, line: 29, type: !2661, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !2663)
!2660 = !DIFile(filename: "lib/anytostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e5b8bc0749223f86edfe264a04f25de0")
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!318, !872, !318}
!2663 = !{!2664, !2665, !2666}
!2664 = !DILocalVariable(name: "i", arg: 1, scope: !2659, file: !2660, line: 29, type: !872)
!2665 = !DILocalVariable(name: "buf", arg: 2, scope: !2659, file: !2660, line: 29, type: !318)
!2666 = !DILocalVariable(name: "p", scope: !2659, file: !2660, line: 31, type: !318)
!2667 = !DILocation(line: 0, scope: !2659)
!2668 = !DILocation(line: 31, column: 17, scope: !2659)
!2669 = !DILocation(line: 32, column: 6, scope: !2659)
!2670 = !DILocation(line: 46, column: 17, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !2660, line: 43, column: 5)
!2672 = distinct !DILexicalBlock(scope: !2659, file: !2660, line: 34, column: 7)
!2673 = !DILocation(line: 45, column: 16, scope: !2671)
!2674 = !DILocation(line: 45, column: 10, scope: !2671)
!2675 = !DILocation(line: 45, column: 14, scope: !2671)
!2676 = !DILocation(line: 46, column: 24, scope: !2671)
!2677 = !DILocation(line: 45, column: 9, scope: !2671)
!2678 = distinct !{!2678, !2679, !2680, !1104}
!2679 = !DILocation(line: 44, column: 7, scope: !2671)
!2680 = !DILocation(line: 46, column: 28, scope: !2671)
!2681 = !DILocation(line: 49, column: 3, scope: !2659)
!2682 = distinct !DISubprogram(name: "set_program_name", scope: !634, file: !634, line: 37, type: !1011, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2683)
!2683 = !{!2684, !2685, !2686}
!2684 = !DILocalVariable(name: "argv0", arg: 1, scope: !2682, file: !634, line: 37, type: !265)
!2685 = !DILocalVariable(name: "slash", scope: !2682, file: !634, line: 44, type: !265)
!2686 = !DILocalVariable(name: "base", scope: !2682, file: !634, line: 45, type: !265)
!2687 = !DILocation(line: 0, scope: !2682)
!2688 = !DILocation(line: 44, column: 23, scope: !2682)
!2689 = !DILocation(line: 45, column: 22, scope: !2682)
!2690 = !DILocation(line: 46, column: 17, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2682, file: !634, line: 46, column: 7)
!2692 = !DILocation(line: 46, column: 9, scope: !2691)
!2693 = !DILocation(line: 46, column: 25, scope: !2691)
!2694 = !DILocation(line: 46, column: 40, scope: !2691)
!2695 = !DILocalVariable(name: "__s1", arg: 1, scope: !2696, file: !1070, line: 974, type: !1205)
!2696 = distinct !DISubprogram(name: "memeq", scope: !1070, file: !1070, line: 974, type: !2697, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !2699)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!297, !1205, !1205, !262}
!2699 = !{!2695, !2700, !2701}
!2700 = !DILocalVariable(name: "__s2", arg: 2, scope: !2696, file: !1070, line: 974, type: !1205)
!2701 = !DILocalVariable(name: "__n", arg: 3, scope: !2696, file: !1070, line: 974, type: !262)
!2702 = !DILocation(line: 0, scope: !2696, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 46, column: 28, scope: !2691)
!2704 = !DILocation(line: 976, column: 11, scope: !2696, inlinedAt: !2703)
!2705 = !DILocation(line: 976, column: 10, scope: !2696, inlinedAt: !2703)
!2706 = !DILocation(line: 46, column: 7, scope: !2682)
!2707 = !DILocation(line: 49, column: 11, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !634, line: 49, column: 11)
!2709 = distinct !DILexicalBlock(scope: !2691, file: !634, line: 47, column: 5)
!2710 = !DILocation(line: 49, column: 36, scope: !2708)
!2711 = !DILocation(line: 49, column: 11, scope: !2709)
!2712 = !DILocation(line: 65, column: 16, scope: !2682)
!2713 = !DILocation(line: 71, column: 27, scope: !2682)
!2714 = !DILocation(line: 74, column: 33, scope: !2682)
!2715 = !DILocation(line: 76, column: 1, scope: !2682)
!2716 = !DISubprogram(name: "strrchr", scope: !1177, file: !1177, line: 273, type: !1192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2717 = distinct !DISubprogram(name: "clone_quoting_options", scope: !643, file: !643, line: 113, type: !2718, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2721)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!2720, !2720}
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!2721 = !{!2722, !2723, !2724}
!2722 = !DILocalVariable(name: "o", arg: 1, scope: !2717, file: !643, line: 113, type: !2720)
!2723 = !DILocalVariable(name: "saved_errno", scope: !2717, file: !643, line: 115, type: !260)
!2724 = !DILocalVariable(name: "p", scope: !2717, file: !643, line: 116, type: !2720)
!2725 = !DILocation(line: 0, scope: !2717)
!2726 = !DILocation(line: 115, column: 21, scope: !2717)
!2727 = !DILocation(line: 116, column: 40, scope: !2717)
!2728 = !DILocation(line: 116, column: 31, scope: !2717)
!2729 = !DILocation(line: 118, column: 9, scope: !2717)
!2730 = !DILocation(line: 119, column: 3, scope: !2717)
!2731 = distinct !DISubprogram(name: "get_quoting_style", scope: !643, file: !643, line: 124, type: !2732, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2736)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!669, !2734}
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !696)
!2736 = !{!2737}
!2737 = !DILocalVariable(name: "o", arg: 1, scope: !2731, file: !643, line: 124, type: !2734)
!2738 = !DILocation(line: 0, scope: !2731)
!2739 = !DILocation(line: 126, column: 11, scope: !2731)
!2740 = !DILocation(line: 126, column: 46, scope: !2731)
!2741 = !{!2742, !1058, i64 0}
!2742 = !{!"quoting_options", !1058, i64 0, !1058, i64 4, !959, i64 8, !958, i64 40, !958, i64 48}
!2743 = !DILocation(line: 126, column: 3, scope: !2731)
!2744 = distinct !DISubprogram(name: "set_quoting_style", scope: !643, file: !643, line: 132, type: !2745, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2747)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{null, !2720, !669}
!2747 = !{!2748, !2749}
!2748 = !DILocalVariable(name: "o", arg: 1, scope: !2744, file: !643, line: 132, type: !2720)
!2749 = !DILocalVariable(name: "s", arg: 2, scope: !2744, file: !643, line: 132, type: !669)
!2750 = !DILocation(line: 0, scope: !2744)
!2751 = !DILocation(line: 134, column: 4, scope: !2744)
!2752 = !DILocation(line: 134, column: 45, scope: !2744)
!2753 = !DILocation(line: 135, column: 1, scope: !2744)
!2754 = distinct !DISubprogram(name: "set_char_quoting", scope: !643, file: !643, line: 143, type: !2755, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!260, !2720, !4, !260}
!2757 = !{!2758, !2759, !2760, !2761, !2762, !2764, !2765}
!2758 = !DILocalVariable(name: "o", arg: 1, scope: !2754, file: !643, line: 143, type: !2720)
!2759 = !DILocalVariable(name: "c", arg: 2, scope: !2754, file: !643, line: 143, type: !4)
!2760 = !DILocalVariable(name: "i", arg: 3, scope: !2754, file: !643, line: 143, type: !260)
!2761 = !DILocalVariable(name: "uc", scope: !2754, file: !643, line: 145, type: !267)
!2762 = !DILocalVariable(name: "p", scope: !2754, file: !643, line: 146, type: !2763)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!2764 = !DILocalVariable(name: "shift", scope: !2754, file: !643, line: 148, type: !260)
!2765 = !DILocalVariable(name: "r", scope: !2754, file: !643, line: 149, type: !224)
!2766 = !DILocation(line: 0, scope: !2754)
!2767 = !DILocation(line: 147, column: 6, scope: !2754)
!2768 = !DILocation(line: 147, column: 41, scope: !2754)
!2769 = !DILocation(line: 147, column: 62, scope: !2754)
!2770 = !DILocation(line: 147, column: 57, scope: !2754)
!2771 = !DILocation(line: 148, column: 15, scope: !2754)
!2772 = !DILocation(line: 149, column: 21, scope: !2754)
!2773 = !DILocation(line: 149, column: 24, scope: !2754)
!2774 = !DILocation(line: 149, column: 34, scope: !2754)
!2775 = !DILocation(line: 150, column: 19, scope: !2754)
!2776 = !DILocation(line: 150, column: 24, scope: !2754)
!2777 = !DILocation(line: 150, column: 6, scope: !2754)
!2778 = !DILocation(line: 151, column: 3, scope: !2754)
!2779 = distinct !DISubprogram(name: "set_quoting_flags", scope: !643, file: !643, line: 159, type: !2780, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2782)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!260, !2720, !260}
!2782 = !{!2783, !2784, !2785}
!2783 = !DILocalVariable(name: "o", arg: 1, scope: !2779, file: !643, line: 159, type: !2720)
!2784 = !DILocalVariable(name: "i", arg: 2, scope: !2779, file: !643, line: 159, type: !260)
!2785 = !DILocalVariable(name: "r", scope: !2779, file: !643, line: 163, type: !260)
!2786 = !DILocation(line: 0, scope: !2779)
!2787 = !DILocation(line: 161, column: 8, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2779, file: !643, line: 161, column: 7)
!2789 = !DILocation(line: 161, column: 7, scope: !2779)
!2790 = !DILocation(line: 163, column: 14, scope: !2779)
!2791 = !{!2742, !1058, i64 4}
!2792 = !DILocation(line: 164, column: 12, scope: !2779)
!2793 = !DILocation(line: 165, column: 3, scope: !2779)
!2794 = distinct !DISubprogram(name: "set_custom_quoting", scope: !643, file: !643, line: 169, type: !2795, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2797)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{null, !2720, !265, !265}
!2797 = !{!2798, !2799, !2800}
!2798 = !DILocalVariable(name: "o", arg: 1, scope: !2794, file: !643, line: 169, type: !2720)
!2799 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2794, file: !643, line: 170, type: !265)
!2800 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2794, file: !643, line: 170, type: !265)
!2801 = !DILocation(line: 0, scope: !2794)
!2802 = !DILocation(line: 172, column: 8, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2794, file: !643, line: 172, column: 7)
!2804 = !DILocation(line: 172, column: 7, scope: !2794)
!2805 = !DILocation(line: 174, column: 12, scope: !2794)
!2806 = !DILocation(line: 175, column: 8, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2794, file: !643, line: 175, column: 7)
!2808 = !DILocation(line: 175, column: 19, scope: !2807)
!2809 = !DILocation(line: 176, column: 5, scope: !2807)
!2810 = !DILocation(line: 177, column: 6, scope: !2794)
!2811 = !DILocation(line: 177, column: 17, scope: !2794)
!2812 = !{!2742, !958, i64 40}
!2813 = !DILocation(line: 178, column: 6, scope: !2794)
!2814 = !DILocation(line: 178, column: 18, scope: !2794)
!2815 = !{!2742, !958, i64 48}
!2816 = !DILocation(line: 179, column: 1, scope: !2794)
!2817 = !DISubprogram(name: "abort", scope: !1181, file: !1181, line: 598, type: !629, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2818 = distinct !DISubprogram(name: "quotearg_buffer", scope: !643, file: !643, line: 774, type: !2819, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!262, !318, !262, !265, !262, !2734}
!2821 = !{!2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829}
!2822 = !DILocalVariable(name: "buffer", arg: 1, scope: !2818, file: !643, line: 774, type: !318)
!2823 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2818, file: !643, line: 774, type: !262)
!2824 = !DILocalVariable(name: "arg", arg: 3, scope: !2818, file: !643, line: 775, type: !265)
!2825 = !DILocalVariable(name: "argsize", arg: 4, scope: !2818, file: !643, line: 775, type: !262)
!2826 = !DILocalVariable(name: "o", arg: 5, scope: !2818, file: !643, line: 776, type: !2734)
!2827 = !DILocalVariable(name: "p", scope: !2818, file: !643, line: 778, type: !2734)
!2828 = !DILocalVariable(name: "saved_errno", scope: !2818, file: !643, line: 779, type: !260)
!2829 = !DILocalVariable(name: "r", scope: !2818, file: !643, line: 780, type: !262)
!2830 = !DILocation(line: 0, scope: !2818)
!2831 = !DILocation(line: 778, column: 37, scope: !2818)
!2832 = !DILocation(line: 779, column: 21, scope: !2818)
!2833 = !DILocation(line: 781, column: 43, scope: !2818)
!2834 = !DILocation(line: 781, column: 53, scope: !2818)
!2835 = !DILocation(line: 781, column: 63, scope: !2818)
!2836 = !DILocation(line: 782, column: 43, scope: !2818)
!2837 = !DILocation(line: 782, column: 58, scope: !2818)
!2838 = !DILocation(line: 780, column: 14, scope: !2818)
!2839 = !DILocation(line: 783, column: 9, scope: !2818)
!2840 = !DILocation(line: 784, column: 3, scope: !2818)
!2841 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !643, file: !643, line: 251, type: !2842, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2846)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!262, !318, !262, !265, !262, !669, !260, !2844, !265, !265}
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!2846 = !{!2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2872, !2874, !2877, !2878, !2879, !2880, !2883, !2884, !2886, !2887, !2890, !2894, !2895, !2903, !2906, !2907, !2908}
!2847 = !DILocalVariable(name: "buffer", arg: 1, scope: !2841, file: !643, line: 251, type: !318)
!2848 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2841, file: !643, line: 251, type: !262)
!2849 = !DILocalVariable(name: "arg", arg: 3, scope: !2841, file: !643, line: 252, type: !265)
!2850 = !DILocalVariable(name: "argsize", arg: 4, scope: !2841, file: !643, line: 252, type: !262)
!2851 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2841, file: !643, line: 253, type: !669)
!2852 = !DILocalVariable(name: "flags", arg: 6, scope: !2841, file: !643, line: 253, type: !260)
!2853 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2841, file: !643, line: 254, type: !2844)
!2854 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2841, file: !643, line: 255, type: !265)
!2855 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2841, file: !643, line: 256, type: !265)
!2856 = !DILocalVariable(name: "unibyte_locale", scope: !2841, file: !643, line: 258, type: !297)
!2857 = !DILocalVariable(name: "len", scope: !2841, file: !643, line: 260, type: !262)
!2858 = !DILocalVariable(name: "orig_buffersize", scope: !2841, file: !643, line: 261, type: !262)
!2859 = !DILocalVariable(name: "quote_string", scope: !2841, file: !643, line: 262, type: !265)
!2860 = !DILocalVariable(name: "quote_string_len", scope: !2841, file: !643, line: 263, type: !262)
!2861 = !DILocalVariable(name: "backslash_escapes", scope: !2841, file: !643, line: 264, type: !297)
!2862 = !DILocalVariable(name: "elide_outer_quotes", scope: !2841, file: !643, line: 265, type: !297)
!2863 = !DILocalVariable(name: "encountered_single_quote", scope: !2841, file: !643, line: 266, type: !297)
!2864 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2841, file: !643, line: 267, type: !297)
!2865 = !DILabel(scope: !2841, name: "process_input", file: !643, line: 308)
!2866 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2841, file: !643, line: 309, type: !297)
!2867 = !DILocalVariable(name: "lq", scope: !2868, file: !643, line: 361, type: !265)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !643, line: 361, column: 11)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !643, line: 360, column: 13)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !643, line: 333, column: 7)
!2871 = distinct !DILexicalBlock(scope: !2841, file: !643, line: 312, column: 5)
!2872 = !DILocalVariable(name: "i", scope: !2873, file: !643, line: 395, type: !262)
!2873 = distinct !DILexicalBlock(scope: !2841, file: !643, line: 395, column: 3)
!2874 = !DILocalVariable(name: "is_right_quote", scope: !2875, file: !643, line: 397, type: !297)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !643, line: 396, column: 5)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !643, line: 395, column: 3)
!2877 = !DILocalVariable(name: "escaping", scope: !2875, file: !643, line: 398, type: !297)
!2878 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2875, file: !643, line: 399, type: !297)
!2879 = !DILocalVariable(name: "c", scope: !2875, file: !643, line: 417, type: !267)
!2880 = !DILabel(scope: !2881, name: "c_and_shell_escape", file: !643, line: 502)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !643, line: 478, column: 9)
!2882 = distinct !DILexicalBlock(scope: !2875, file: !643, line: 419, column: 9)
!2883 = !DILabel(scope: !2881, name: "c_escape", file: !643, line: 507)
!2884 = !DILocalVariable(name: "m", scope: !2885, file: !643, line: 598, type: !262)
!2885 = distinct !DILexicalBlock(scope: !2882, file: !643, line: 596, column: 11)
!2886 = !DILocalVariable(name: "printable", scope: !2885, file: !643, line: 600, type: !297)
!2887 = !DILocalVariable(name: "mbs", scope: !2888, file: !643, line: 609, type: !734)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !643, line: 608, column: 15)
!2889 = distinct !DILexicalBlock(scope: !2885, file: !643, line: 602, column: 17)
!2890 = !DILocalVariable(name: "w", scope: !2891, file: !643, line: 618, type: !729)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !643, line: 617, column: 19)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !643, line: 616, column: 17)
!2893 = distinct !DILexicalBlock(scope: !2888, file: !643, line: 616, column: 17)
!2894 = !DILocalVariable(name: "bytes", scope: !2891, file: !643, line: 619, type: !262)
!2895 = !DILocalVariable(name: "j", scope: !2896, file: !643, line: 648, type: !262)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !643, line: 648, column: 29)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !643, line: 647, column: 27)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !643, line: 645, column: 29)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !643, line: 636, column: 23)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !643, line: 628, column: 30)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !643, line: 623, column: 30)
!2902 = distinct !DILexicalBlock(scope: !2891, file: !643, line: 621, column: 25)
!2903 = !DILocalVariable(name: "ilim", scope: !2904, file: !643, line: 674, type: !262)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !643, line: 671, column: 15)
!2905 = distinct !DILexicalBlock(scope: !2885, file: !643, line: 670, column: 17)
!2906 = !DILabel(scope: !2875, name: "store_escape", file: !643, line: 709)
!2907 = !DILabel(scope: !2875, name: "store_c", file: !643, line: 712)
!2908 = !DILabel(scope: !2841, name: "force_outer_quoting_style", file: !643, line: 753)
!2909 = distinct !DIAssignID()
!2910 = distinct !DIAssignID()
!2911 = distinct !DIAssignID()
!2912 = distinct !DIAssignID()
!2913 = distinct !DIAssignID()
!2914 = !DILocation(line: 0, scope: !2888)
!2915 = distinct !DIAssignID()
!2916 = !DILocation(line: 0, scope: !2891)
!2917 = !DILocation(line: 0, scope: !2841)
!2918 = !DILocation(line: 258, column: 25, scope: !2841)
!2919 = !DILocation(line: 258, column: 36, scope: !2841)
!2920 = !DILocation(line: 267, column: 3, scope: !2841)
!2921 = !DILocation(line: 261, column: 10, scope: !2841)
!2922 = !DILocation(line: 262, column: 15, scope: !2841)
!2923 = !DILocation(line: 263, column: 10, scope: !2841)
!2924 = !DILocation(line: 308, column: 2, scope: !2841)
!2925 = !DILocation(line: 311, column: 3, scope: !2841)
!2926 = !DILocation(line: 318, column: 11, scope: !2871)
!2927 = !DILocation(line: 319, column: 9, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !643, line: 319, column: 9)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !643, line: 319, column: 9)
!2930 = distinct !DILexicalBlock(scope: !2871, file: !643, line: 318, column: 11)
!2931 = !DILocation(line: 319, column: 9, scope: !2929)
!2932 = !DILocation(line: 0, scope: !721, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 357, column: 26, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !643, line: 335, column: 11)
!2935 = distinct !DILexicalBlock(scope: !2870, file: !643, line: 334, column: 13)
!2936 = !DILocation(line: 199, column: 29, scope: !721, inlinedAt: !2933)
!2937 = !DILocation(line: 201, column: 19, scope: !2938, inlinedAt: !2933)
!2938 = distinct !DILexicalBlock(scope: !721, file: !643, line: 201, column: 7)
!2939 = !DILocation(line: 201, column: 7, scope: !721, inlinedAt: !2933)
!2940 = !DILocation(line: 229, column: 3, scope: !721, inlinedAt: !2933)
!2941 = !DILocation(line: 230, column: 3, scope: !721, inlinedAt: !2933)
!2942 = !DILocalVariable(name: "ps", arg: 1, scope: !2943, file: !2944, line: 1135, type: !2947)
!2943 = distinct !DISubprogram(name: "mbszero", scope: !2944, file: !2944, line: 1135, type: !2945, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2948)
!2944 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2945 = !DISubroutineType(types: !2946)
!2946 = !{null, !2947}
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!2948 = !{!2942}
!2949 = !DILocation(line: 0, scope: !2943, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 230, column: 18, scope: !721, inlinedAt: !2933)
!2951 = !DILocalVariable(name: "__dest", arg: 1, scope: !2952, file: !2953, line: 57, type: !268)
!2952 = distinct !DISubprogram(name: "memset", scope: !2953, file: !2953, line: 57, type: !2954, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2956)
!2953 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!268, !268, !260, !262}
!2956 = !{!2951, !2957, !2958}
!2957 = !DILocalVariable(name: "__ch", arg: 2, scope: !2952, file: !2953, line: 57, type: !260)
!2958 = !DILocalVariable(name: "__len", arg: 3, scope: !2952, file: !2953, line: 57, type: !262)
!2959 = !DILocation(line: 0, scope: !2952, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 1137, column: 3, scope: !2943, inlinedAt: !2950)
!2961 = !DILocation(line: 59, column: 10, scope: !2952, inlinedAt: !2960)
!2962 = !DILocation(line: 231, column: 7, scope: !2963, inlinedAt: !2933)
!2963 = distinct !DILexicalBlock(scope: !721, file: !643, line: 231, column: 7)
!2964 = !DILocation(line: 231, column: 40, scope: !2963, inlinedAt: !2933)
!2965 = !DILocation(line: 231, column: 45, scope: !2963, inlinedAt: !2933)
!2966 = !DILocation(line: 235, column: 1, scope: !721, inlinedAt: !2933)
!2967 = !DILocation(line: 0, scope: !721, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 358, column: 27, scope: !2934)
!2969 = !DILocation(line: 199, column: 29, scope: !721, inlinedAt: !2968)
!2970 = !DILocation(line: 201, column: 19, scope: !2938, inlinedAt: !2968)
!2971 = !DILocation(line: 201, column: 7, scope: !721, inlinedAt: !2968)
!2972 = !DILocation(line: 229, column: 3, scope: !721, inlinedAt: !2968)
!2973 = !DILocation(line: 230, column: 3, scope: !721, inlinedAt: !2968)
!2974 = !DILocation(line: 0, scope: !2943, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 230, column: 18, scope: !721, inlinedAt: !2968)
!2976 = !DILocation(line: 0, scope: !2952, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 1137, column: 3, scope: !2943, inlinedAt: !2975)
!2978 = !DILocation(line: 59, column: 10, scope: !2952, inlinedAt: !2977)
!2979 = !DILocation(line: 231, column: 7, scope: !2963, inlinedAt: !2968)
!2980 = !DILocation(line: 231, column: 40, scope: !2963, inlinedAt: !2968)
!2981 = !DILocation(line: 231, column: 45, scope: !2963, inlinedAt: !2968)
!2982 = !DILocation(line: 235, column: 1, scope: !721, inlinedAt: !2968)
!2983 = !DILocation(line: 360, column: 13, scope: !2870)
!2984 = !DILocation(line: 0, scope: !2868)
!2985 = !DILocation(line: 361, column: 45, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2868, file: !643, line: 361, column: 11)
!2987 = !DILocation(line: 361, column: 11, scope: !2868)
!2988 = !DILocation(line: 362, column: 13, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !643, line: 362, column: 13)
!2990 = distinct !DILexicalBlock(scope: !2986, file: !643, line: 362, column: 13)
!2991 = !DILocation(line: 362, column: 13, scope: !2990)
!2992 = !DILocation(line: 361, column: 52, scope: !2986)
!2993 = distinct !{!2993, !2987, !2994, !1104}
!2994 = !DILocation(line: 362, column: 13, scope: !2868)
!2995 = !DILocation(line: 365, column: 28, scope: !2870)
!2996 = !DILocation(line: 260, column: 10, scope: !2841)
!2997 = !DILocation(line: 367, column: 7, scope: !2871)
!2998 = !DILocation(line: 373, column: 7, scope: !2871)
!2999 = !DILocation(line: 381, column: 11, scope: !2871)
!3000 = !DILocation(line: 376, column: 11, scope: !2871)
!3001 = !DILocation(line: 382, column: 9, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !643, line: 382, column: 9)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !643, line: 382, column: 9)
!3004 = distinct !DILexicalBlock(scope: !2871, file: !643, line: 381, column: 11)
!3005 = !DILocation(line: 382, column: 9, scope: !3003)
!3006 = !DILocation(line: 389, column: 7, scope: !2871)
!3007 = !DILocation(line: 392, column: 7, scope: !2871)
!3008 = !DILocation(line: 0, scope: !2873)
!3009 = !DILocation(line: 395, column: 8, scope: !2873)
!3010 = !DILocation(line: 395, scope: !2873)
!3011 = !DILocation(line: 395, column: 34, scope: !2876)
!3012 = !DILocation(line: 395, column: 26, scope: !2876)
!3013 = !DILocation(line: 395, column: 48, scope: !2876)
!3014 = !DILocation(line: 395, column: 55, scope: !2876)
!3015 = !DILocation(line: 395, column: 3, scope: !2873)
!3016 = !DILocation(line: 395, column: 67, scope: !2876)
!3017 = !DILocation(line: 0, scope: !2875)
!3018 = !DILocation(line: 402, column: 11, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2875, file: !643, line: 401, column: 11)
!3020 = !DILocation(line: 404, column: 17, scope: !3019)
!3021 = !DILocation(line: 405, column: 39, scope: !3019)
!3022 = !DILocation(line: 409, column: 32, scope: !3019)
!3023 = !DILocation(line: 405, column: 19, scope: !3019)
!3024 = !DILocation(line: 405, column: 15, scope: !3019)
!3025 = !DILocation(line: 410, column: 11, scope: !3019)
!3026 = !DILocation(line: 410, column: 25, scope: !3019)
!3027 = !DILocalVariable(name: "__s1", arg: 1, scope: !3028, file: !1070, line: 974, type: !1205)
!3028 = distinct !DISubprogram(name: "memeq", scope: !1070, file: !1070, line: 974, type: !2697, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3029)
!3029 = !{!3027, !3030, !3031}
!3030 = !DILocalVariable(name: "__s2", arg: 2, scope: !3028, file: !1070, line: 974, type: !1205)
!3031 = !DILocalVariable(name: "__n", arg: 3, scope: !3028, file: !1070, line: 974, type: !262)
!3032 = !DILocation(line: 0, scope: !3028, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 410, column: 14, scope: !3019)
!3034 = !DILocation(line: 976, column: 11, scope: !3028, inlinedAt: !3033)
!3035 = !DILocation(line: 976, column: 10, scope: !3028, inlinedAt: !3033)
!3036 = !DILocation(line: 401, column: 11, scope: !2875)
!3037 = !DILocation(line: 417, column: 25, scope: !2875)
!3038 = !DILocation(line: 418, column: 7, scope: !2875)
!3039 = !DILocation(line: 421, column: 15, scope: !2882)
!3040 = !DILocation(line: 423, column: 15, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !643, line: 423, column: 15)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !643, line: 422, column: 13)
!3043 = distinct !DILexicalBlock(scope: !2882, file: !643, line: 421, column: 15)
!3044 = !DILocation(line: 423, column: 15, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3041, file: !643, line: 423, column: 15)
!3046 = !DILocation(line: 423, column: 15, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !643, line: 423, column: 15)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !643, line: 423, column: 15)
!3049 = distinct !DILexicalBlock(scope: !3045, file: !643, line: 423, column: 15)
!3050 = !DILocation(line: 423, column: 15, scope: !3048)
!3051 = !DILocation(line: 423, column: 15, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !643, line: 423, column: 15)
!3053 = distinct !DILexicalBlock(scope: !3049, file: !643, line: 423, column: 15)
!3054 = !DILocation(line: 423, column: 15, scope: !3053)
!3055 = !DILocation(line: 423, column: 15, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !643, line: 423, column: 15)
!3057 = distinct !DILexicalBlock(scope: !3049, file: !643, line: 423, column: 15)
!3058 = !DILocation(line: 423, column: 15, scope: !3057)
!3059 = !DILocation(line: 423, column: 15, scope: !3049)
!3060 = !DILocation(line: 423, column: 15, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !643, line: 423, column: 15)
!3062 = distinct !DILexicalBlock(scope: !3041, file: !643, line: 423, column: 15)
!3063 = !DILocation(line: 423, column: 15, scope: !3062)
!3064 = !DILocation(line: 431, column: 19, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3042, file: !643, line: 430, column: 19)
!3066 = !DILocation(line: 431, column: 24, scope: !3065)
!3067 = !DILocation(line: 431, column: 28, scope: !3065)
!3068 = !DILocation(line: 431, column: 38, scope: !3065)
!3069 = !DILocation(line: 431, column: 48, scope: !3065)
!3070 = !DILocation(line: 431, column: 59, scope: !3065)
!3071 = !DILocation(line: 433, column: 19, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !643, line: 433, column: 19)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !643, line: 433, column: 19)
!3074 = distinct !DILexicalBlock(scope: !3065, file: !643, line: 432, column: 17)
!3075 = !DILocation(line: 433, column: 19, scope: !3073)
!3076 = !DILocation(line: 434, column: 19, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !643, line: 434, column: 19)
!3078 = distinct !DILexicalBlock(scope: !3074, file: !643, line: 434, column: 19)
!3079 = !DILocation(line: 434, column: 19, scope: !3078)
!3080 = !DILocation(line: 435, column: 17, scope: !3074)
!3081 = !DILocation(line: 442, column: 20, scope: !3043)
!3082 = !DILocation(line: 447, column: 11, scope: !2882)
!3083 = !DILocation(line: 450, column: 19, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !2882, file: !643, line: 448, column: 13)
!3085 = !DILocation(line: 456, column: 19, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3084, file: !643, line: 455, column: 19)
!3087 = !DILocation(line: 456, column: 24, scope: !3086)
!3088 = !DILocation(line: 456, column: 28, scope: !3086)
!3089 = !DILocation(line: 456, column: 38, scope: !3086)
!3090 = !DILocation(line: 456, column: 41, scope: !3086)
!3091 = !DILocation(line: 456, column: 52, scope: !3086)
!3092 = !DILocation(line: 455, column: 19, scope: !3084)
!3093 = !DILocation(line: 457, column: 25, scope: !3086)
!3094 = !DILocation(line: 457, column: 17, scope: !3086)
!3095 = !DILocation(line: 464, column: 25, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3086, file: !643, line: 458, column: 19)
!3097 = !DILocation(line: 468, column: 21, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !643, line: 468, column: 21)
!3099 = distinct !DILexicalBlock(scope: !3096, file: !643, line: 468, column: 21)
!3100 = !DILocation(line: 468, column: 21, scope: !3099)
!3101 = !DILocation(line: 469, column: 21, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !643, line: 469, column: 21)
!3103 = distinct !DILexicalBlock(scope: !3096, file: !643, line: 469, column: 21)
!3104 = !DILocation(line: 469, column: 21, scope: !3103)
!3105 = !DILocation(line: 470, column: 21, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !643, line: 470, column: 21)
!3107 = distinct !DILexicalBlock(scope: !3096, file: !643, line: 470, column: 21)
!3108 = !DILocation(line: 470, column: 21, scope: !3107)
!3109 = !DILocation(line: 471, column: 21, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !643, line: 471, column: 21)
!3111 = distinct !DILexicalBlock(scope: !3096, file: !643, line: 471, column: 21)
!3112 = !DILocation(line: 471, column: 21, scope: !3111)
!3113 = !DILocation(line: 472, column: 21, scope: !3096)
!3114 = !DILocation(line: 482, column: 33, scope: !2881)
!3115 = !DILocation(line: 483, column: 33, scope: !2881)
!3116 = !DILocation(line: 485, column: 33, scope: !2881)
!3117 = !DILocation(line: 486, column: 33, scope: !2881)
!3118 = !DILocation(line: 487, column: 33, scope: !2881)
!3119 = !DILocation(line: 490, column: 17, scope: !2881)
!3120 = !DILocation(line: 492, column: 21, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !643, line: 491, column: 15)
!3122 = distinct !DILexicalBlock(scope: !2881, file: !643, line: 490, column: 17)
!3123 = !DILocation(line: 499, column: 35, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !2881, file: !643, line: 499, column: 17)
!3125 = !DILocation(line: 0, scope: !2881)
!3126 = !DILocation(line: 502, column: 11, scope: !2881)
!3127 = !DILocation(line: 504, column: 17, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !2881, file: !643, line: 503, column: 17)
!3129 = !DILocation(line: 507, column: 11, scope: !2881)
!3130 = !DILocation(line: 508, column: 17, scope: !2881)
!3131 = !DILocation(line: 517, column: 15, scope: !2882)
!3132 = !DILocation(line: 517, column: 40, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !2882, file: !643, line: 517, column: 15)
!3134 = !DILocation(line: 517, column: 47, scope: !3133)
!3135 = !DILocation(line: 517, column: 18, scope: !3133)
!3136 = !DILocation(line: 521, column: 17, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !2882, file: !643, line: 521, column: 15)
!3138 = !DILocation(line: 521, column: 15, scope: !2882)
!3139 = !DILocation(line: 525, column: 11, scope: !2882)
!3140 = !DILocation(line: 537, column: 15, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !2882, file: !643, line: 536, column: 15)
!3142 = !DILocation(line: 536, column: 15, scope: !2882)
!3143 = !DILocation(line: 544, column: 15, scope: !2882)
!3144 = !DILocation(line: 546, column: 19, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !643, line: 545, column: 13)
!3146 = distinct !DILexicalBlock(scope: !2882, file: !643, line: 544, column: 15)
!3147 = !DILocation(line: 549, column: 19, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3145, file: !643, line: 549, column: 19)
!3149 = !DILocation(line: 549, column: 30, scope: !3148)
!3150 = !DILocation(line: 558, column: 15, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !643, line: 558, column: 15)
!3152 = distinct !DILexicalBlock(scope: !3145, file: !643, line: 558, column: 15)
!3153 = !DILocation(line: 558, column: 15, scope: !3152)
!3154 = !DILocation(line: 559, column: 15, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !643, line: 559, column: 15)
!3156 = distinct !DILexicalBlock(scope: !3145, file: !643, line: 559, column: 15)
!3157 = !DILocation(line: 559, column: 15, scope: !3156)
!3158 = !DILocation(line: 560, column: 15, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !643, line: 560, column: 15)
!3160 = distinct !DILexicalBlock(scope: !3145, file: !643, line: 560, column: 15)
!3161 = !DILocation(line: 560, column: 15, scope: !3160)
!3162 = !DILocation(line: 562, column: 13, scope: !3145)
!3163 = !DILocation(line: 602, column: 17, scope: !2885)
!3164 = !DILocation(line: 0, scope: !2885)
!3165 = !DILocation(line: 605, column: 29, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !2889, file: !643, line: 603, column: 15)
!3167 = !DILocation(line: 605, column: 41, scope: !3166)
!3168 = !DILocation(line: 606, column: 15, scope: !3166)
!3169 = !DILocation(line: 609, column: 17, scope: !2888)
!3170 = !DILocation(line: 0, scope: !2943, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 609, column: 32, scope: !2888)
!3172 = !DILocation(line: 0, scope: !2952, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 1137, column: 3, scope: !2943, inlinedAt: !3171)
!3174 = !DILocation(line: 59, column: 10, scope: !2952, inlinedAt: !3173)
!3175 = !DILocation(line: 613, column: 29, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !2888, file: !643, line: 613, column: 21)
!3177 = !DILocation(line: 613, column: 21, scope: !2888)
!3178 = !DILocation(line: 614, column: 29, scope: !3176)
!3179 = !DILocation(line: 614, column: 19, scope: !3176)
!3180 = !DILocation(line: 618, column: 21, scope: !2891)
!3181 = !DILocation(line: 620, column: 54, scope: !2891)
!3182 = !DILocation(line: 619, column: 36, scope: !2891)
!3183 = !DILocation(line: 621, column: 25, scope: !2891)
!3184 = !DILocation(line: 631, column: 38, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !2900, file: !643, line: 629, column: 23)
!3186 = !DILocation(line: 631, column: 48, scope: !3185)
!3187 = !DILocation(line: 631, column: 25, scope: !3185)
!3188 = !DILocation(line: 626, column: 25, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !2901, file: !643, line: 624, column: 23)
!3190 = !DILocation(line: 631, column: 51, scope: !3185)
!3191 = !DILocation(line: 632, column: 28, scope: !3185)
!3192 = !DILocation(line: 631, column: 34, scope: !3185)
!3193 = distinct !{!3193, !3187, !3191, !1104}
!3194 = !DILocation(line: 0, scope: !2896)
!3195 = !DILocation(line: 646, column: 29, scope: !2898)
!3196 = !DILocation(line: 648, column: 29, scope: !2896)
!3197 = !DILocation(line: 649, column: 39, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !2896, file: !643, line: 648, column: 29)
!3199 = !DILocation(line: 649, column: 31, scope: !3198)
!3200 = !DILocation(line: 648, column: 60, scope: !3198)
!3201 = !DILocation(line: 648, column: 50, scope: !3198)
!3202 = distinct !{!3202, !3196, !3203, !1104}
!3203 = !DILocation(line: 654, column: 33, scope: !2896)
!3204 = !DILocation(line: 657, column: 43, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !2899, file: !643, line: 657, column: 29)
!3206 = !DILocalVariable(name: "wc", arg: 1, scope: !3207, file: !3208, line: 865, type: !3211)
!3207 = distinct !DISubprogram(name: "c32isprint", scope: !3208, file: !3208, line: 865, type: !3209, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3213)
!3208 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!260, !3211}
!3211 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3212, line: 20, baseType: !224)
!3212 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3213 = !{!3206}
!3214 = !DILocation(line: 0, scope: !3207, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 657, column: 31, scope: !3205)
!3216 = !DILocation(line: 871, column: 10, scope: !3207, inlinedAt: !3215)
!3217 = !DILocation(line: 657, column: 31, scope: !3205)
!3218 = !DILocation(line: 664, column: 23, scope: !2891)
!3219 = !DILocation(line: 665, column: 19, scope: !2892)
!3220 = !DILocation(line: 666, column: 15, scope: !2889)
!3221 = !DILocation(line: 753, column: 2, scope: !2841)
!3222 = !DILocation(line: 756, column: 51, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !2841, file: !643, line: 756, column: 7)
!3224 = !DILocation(line: 0, scope: !2889)
!3225 = !DILocation(line: 670, column: 19, scope: !2905)
!3226 = !DILocation(line: 670, column: 23, scope: !2905)
!3227 = !DILocation(line: 674, column: 33, scope: !2904)
!3228 = !DILocation(line: 0, scope: !2904)
!3229 = !DILocation(line: 676, column: 17, scope: !2904)
!3230 = !DILocation(line: 678, column: 43, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !643, line: 678, column: 25)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !643, line: 677, column: 19)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !643, line: 676, column: 17)
!3234 = distinct !DILexicalBlock(scope: !2904, file: !643, line: 676, column: 17)
!3235 = !DILocation(line: 680, column: 25, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !643, line: 680, column: 25)
!3237 = distinct !DILexicalBlock(scope: !3231, file: !643, line: 679, column: 23)
!3238 = !DILocation(line: 680, column: 25, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3236, file: !643, line: 680, column: 25)
!3240 = !DILocation(line: 680, column: 25, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !643, line: 680, column: 25)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !643, line: 680, column: 25)
!3243 = distinct !DILexicalBlock(scope: !3239, file: !643, line: 680, column: 25)
!3244 = !DILocation(line: 680, column: 25, scope: !3242)
!3245 = !DILocation(line: 680, column: 25, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !643, line: 680, column: 25)
!3247 = distinct !DILexicalBlock(scope: !3243, file: !643, line: 680, column: 25)
!3248 = !DILocation(line: 680, column: 25, scope: !3247)
!3249 = !DILocation(line: 680, column: 25, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !643, line: 680, column: 25)
!3251 = distinct !DILexicalBlock(scope: !3243, file: !643, line: 680, column: 25)
!3252 = !DILocation(line: 680, column: 25, scope: !3251)
!3253 = !DILocation(line: 680, column: 25, scope: !3243)
!3254 = !DILocation(line: 680, column: 25, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !643, line: 680, column: 25)
!3256 = distinct !DILexicalBlock(scope: !3236, file: !643, line: 680, column: 25)
!3257 = !DILocation(line: 680, column: 25, scope: !3256)
!3258 = !DILocation(line: 681, column: 25, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !643, line: 681, column: 25)
!3260 = distinct !DILexicalBlock(scope: !3237, file: !643, line: 681, column: 25)
!3261 = !DILocation(line: 681, column: 25, scope: !3260)
!3262 = !DILocation(line: 682, column: 25, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !643, line: 682, column: 25)
!3264 = distinct !DILexicalBlock(scope: !3237, file: !643, line: 682, column: 25)
!3265 = !DILocation(line: 682, column: 25, scope: !3264)
!3266 = !DILocation(line: 683, column: 38, scope: !3237)
!3267 = !DILocation(line: 683, column: 33, scope: !3237)
!3268 = !DILocation(line: 684, column: 23, scope: !3237)
!3269 = !DILocation(line: 685, column: 30, scope: !3231)
!3270 = !DILocation(line: 687, column: 25, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !643, line: 687, column: 25)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !643, line: 687, column: 25)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !643, line: 686, column: 23)
!3274 = distinct !DILexicalBlock(scope: !3231, file: !643, line: 685, column: 30)
!3275 = !DILocation(line: 687, column: 25, scope: !3272)
!3276 = !DILocation(line: 689, column: 23, scope: !3273)
!3277 = !DILocation(line: 690, column: 35, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3232, file: !643, line: 690, column: 25)
!3279 = !DILocation(line: 690, column: 30, scope: !3278)
!3280 = !DILocation(line: 690, column: 25, scope: !3232)
!3281 = !DILocation(line: 692, column: 21, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !643, line: 692, column: 21)
!3283 = distinct !DILexicalBlock(scope: !3232, file: !643, line: 692, column: 21)
!3284 = !DILocation(line: 692, column: 21, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !643, line: 692, column: 21)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !643, line: 692, column: 21)
!3287 = distinct !DILexicalBlock(scope: !3282, file: !643, line: 692, column: 21)
!3288 = !DILocation(line: 692, column: 21, scope: !3286)
!3289 = !DILocation(line: 692, column: 21, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !643, line: 692, column: 21)
!3291 = distinct !DILexicalBlock(scope: !3287, file: !643, line: 692, column: 21)
!3292 = !DILocation(line: 692, column: 21, scope: !3291)
!3293 = !DILocation(line: 692, column: 21, scope: !3287)
!3294 = !DILocation(line: 0, scope: !3232)
!3295 = !DILocation(line: 693, column: 21, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !643, line: 693, column: 21)
!3297 = distinct !DILexicalBlock(scope: !3232, file: !643, line: 693, column: 21)
!3298 = !DILocation(line: 693, column: 21, scope: !3297)
!3299 = !DILocation(line: 694, column: 25, scope: !3232)
!3300 = !DILocation(line: 676, column: 17, scope: !3233)
!3301 = distinct !{!3301, !3302, !3303}
!3302 = !DILocation(line: 676, column: 17, scope: !3234)
!3303 = !DILocation(line: 695, column: 19, scope: !3234)
!3304 = !DILocation(line: 409, column: 30, scope: !3019)
!3305 = !DILocation(line: 702, column: 34, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !2875, file: !643, line: 702, column: 11)
!3307 = !DILocation(line: 704, column: 14, scope: !3306)
!3308 = !DILocation(line: 705, column: 14, scope: !3306)
!3309 = !DILocation(line: 705, column: 35, scope: !3306)
!3310 = !DILocation(line: 705, column: 17, scope: !3306)
!3311 = !DILocation(line: 705, column: 47, scope: !3306)
!3312 = !DILocation(line: 705, column: 65, scope: !3306)
!3313 = !DILocation(line: 706, column: 11, scope: !3306)
!3314 = !DILocation(line: 702, column: 11, scope: !2875)
!3315 = !DILocation(line: 395, column: 15, scope: !2873)
!3316 = !DILocation(line: 709, column: 5, scope: !2875)
!3317 = !DILocation(line: 710, column: 7, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !2875, file: !643, line: 710, column: 7)
!3319 = !DILocation(line: 710, column: 7, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3318, file: !643, line: 710, column: 7)
!3321 = !DILocation(line: 710, column: 7, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !643, line: 710, column: 7)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !643, line: 710, column: 7)
!3324 = distinct !DILexicalBlock(scope: !3320, file: !643, line: 710, column: 7)
!3325 = !DILocation(line: 710, column: 7, scope: !3323)
!3326 = !DILocation(line: 710, column: 7, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !643, line: 710, column: 7)
!3328 = distinct !DILexicalBlock(scope: !3324, file: !643, line: 710, column: 7)
!3329 = !DILocation(line: 710, column: 7, scope: !3328)
!3330 = !DILocation(line: 710, column: 7, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !643, line: 710, column: 7)
!3332 = distinct !DILexicalBlock(scope: !3324, file: !643, line: 710, column: 7)
!3333 = !DILocation(line: 710, column: 7, scope: !3332)
!3334 = !DILocation(line: 710, column: 7, scope: !3324)
!3335 = !DILocation(line: 710, column: 7, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !643, line: 710, column: 7)
!3337 = distinct !DILexicalBlock(scope: !3318, file: !643, line: 710, column: 7)
!3338 = !DILocation(line: 710, column: 7, scope: !3337)
!3339 = !DILocation(line: 712, column: 5, scope: !2875)
!3340 = !DILocation(line: 713, column: 7, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !643, line: 713, column: 7)
!3342 = distinct !DILexicalBlock(scope: !2875, file: !643, line: 713, column: 7)
!3343 = !DILocation(line: 417, column: 21, scope: !2875)
!3344 = !DILocation(line: 713, column: 7, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !643, line: 713, column: 7)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !643, line: 713, column: 7)
!3347 = distinct !DILexicalBlock(scope: !3341, file: !643, line: 713, column: 7)
!3348 = !DILocation(line: 713, column: 7, scope: !3346)
!3349 = !DILocation(line: 713, column: 7, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !643, line: 713, column: 7)
!3351 = distinct !DILexicalBlock(scope: !3347, file: !643, line: 713, column: 7)
!3352 = !DILocation(line: 713, column: 7, scope: !3351)
!3353 = !DILocation(line: 713, column: 7, scope: !3347)
!3354 = !DILocation(line: 714, column: 7, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !643, line: 714, column: 7)
!3356 = distinct !DILexicalBlock(scope: !2875, file: !643, line: 714, column: 7)
!3357 = !DILocation(line: 714, column: 7, scope: !3356)
!3358 = !DILocation(line: 716, column: 11, scope: !2875)
!3359 = !DILocation(line: 718, column: 5, scope: !2876)
!3360 = !DILocation(line: 395, column: 82, scope: !2876)
!3361 = !DILocation(line: 395, column: 3, scope: !2876)
!3362 = distinct !{!3362, !3015, !3363, !1104}
!3363 = !DILocation(line: 718, column: 5, scope: !2873)
!3364 = !DILocation(line: 720, column: 11, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !2841, file: !643, line: 720, column: 7)
!3366 = !DILocation(line: 720, column: 16, scope: !3365)
!3367 = !DILocation(line: 728, column: 51, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !2841, file: !643, line: 728, column: 7)
!3369 = !DILocation(line: 731, column: 11, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3368, file: !643, line: 730, column: 5)
!3371 = !DILocation(line: 732, column: 16, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3370, file: !643, line: 731, column: 11)
!3373 = !DILocation(line: 732, column: 9, scope: !3372)
!3374 = !DILocation(line: 736, column: 18, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3372, file: !643, line: 736, column: 16)
!3376 = !DILocation(line: 736, column: 29, scope: !3375)
!3377 = !DILocation(line: 745, column: 7, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !2841, file: !643, line: 745, column: 7)
!3379 = !DILocation(line: 745, column: 20, scope: !3378)
!3380 = !DILocation(line: 746, column: 12, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !643, line: 746, column: 5)
!3382 = distinct !DILexicalBlock(scope: !3378, file: !643, line: 746, column: 5)
!3383 = !DILocation(line: 746, column: 5, scope: !3382)
!3384 = !DILocation(line: 747, column: 7, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !643, line: 747, column: 7)
!3386 = distinct !DILexicalBlock(scope: !3381, file: !643, line: 747, column: 7)
!3387 = !DILocation(line: 747, column: 7, scope: !3386)
!3388 = !DILocation(line: 746, column: 39, scope: !3381)
!3389 = distinct !{!3389, !3383, !3390, !1104}
!3390 = !DILocation(line: 747, column: 7, scope: !3382)
!3391 = !DILocation(line: 749, column: 11, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !2841, file: !643, line: 749, column: 7)
!3393 = !DILocation(line: 749, column: 7, scope: !2841)
!3394 = !DILocation(line: 750, column: 5, scope: !3392)
!3395 = !DILocation(line: 750, column: 17, scope: !3392)
!3396 = !DILocation(line: 756, column: 21, scope: !3223)
!3397 = !DILocation(line: 760, column: 42, scope: !2841)
!3398 = !DILocation(line: 758, column: 10, scope: !2841)
!3399 = !DILocation(line: 758, column: 3, scope: !2841)
!3400 = !DILocation(line: 762, column: 1, scope: !2841)
!3401 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1181, file: !1181, line: 98, type: !3402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!262}
!3404 = !DISubprogram(name: "iswprint", scope: !3405, file: !3405, line: 120, type: !3209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3405 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3406 = distinct !DISubprogram(name: "quotearg_alloc", scope: !643, file: !643, line: 788, type: !3407, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!318, !265, !262, !2734}
!3409 = !{!3410, !3411, !3412}
!3410 = !DILocalVariable(name: "arg", arg: 1, scope: !3406, file: !643, line: 788, type: !265)
!3411 = !DILocalVariable(name: "argsize", arg: 2, scope: !3406, file: !643, line: 788, type: !262)
!3412 = !DILocalVariable(name: "o", arg: 3, scope: !3406, file: !643, line: 789, type: !2734)
!3413 = !DILocation(line: 0, scope: !3406)
!3414 = !DILocalVariable(name: "arg", arg: 1, scope: !3415, file: !643, line: 801, type: !265)
!3415 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !643, file: !643, line: 801, type: !3416, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!318, !265, !262, !891, !2734}
!3418 = !{!3414, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426}
!3419 = !DILocalVariable(name: "argsize", arg: 2, scope: !3415, file: !643, line: 801, type: !262)
!3420 = !DILocalVariable(name: "size", arg: 3, scope: !3415, file: !643, line: 801, type: !891)
!3421 = !DILocalVariable(name: "o", arg: 4, scope: !3415, file: !643, line: 802, type: !2734)
!3422 = !DILocalVariable(name: "p", scope: !3415, file: !643, line: 804, type: !2734)
!3423 = !DILocalVariable(name: "saved_errno", scope: !3415, file: !643, line: 805, type: !260)
!3424 = !DILocalVariable(name: "flags", scope: !3415, file: !643, line: 807, type: !260)
!3425 = !DILocalVariable(name: "bufsize", scope: !3415, file: !643, line: 808, type: !262)
!3426 = !DILocalVariable(name: "buf", scope: !3415, file: !643, line: 812, type: !318)
!3427 = !DILocation(line: 0, scope: !3415, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 791, column: 10, scope: !3406)
!3429 = !DILocation(line: 804, column: 37, scope: !3415, inlinedAt: !3428)
!3430 = !DILocation(line: 805, column: 21, scope: !3415, inlinedAt: !3428)
!3431 = !DILocation(line: 807, column: 18, scope: !3415, inlinedAt: !3428)
!3432 = !DILocation(line: 807, column: 24, scope: !3415, inlinedAt: !3428)
!3433 = !DILocation(line: 808, column: 72, scope: !3415, inlinedAt: !3428)
!3434 = !DILocation(line: 809, column: 56, scope: !3415, inlinedAt: !3428)
!3435 = !DILocation(line: 810, column: 49, scope: !3415, inlinedAt: !3428)
!3436 = !DILocation(line: 811, column: 49, scope: !3415, inlinedAt: !3428)
!3437 = !DILocation(line: 808, column: 20, scope: !3415, inlinedAt: !3428)
!3438 = !DILocation(line: 811, column: 62, scope: !3415, inlinedAt: !3428)
!3439 = !DILocation(line: 812, column: 15, scope: !3415, inlinedAt: !3428)
!3440 = !DILocation(line: 813, column: 60, scope: !3415, inlinedAt: !3428)
!3441 = !DILocation(line: 815, column: 32, scope: !3415, inlinedAt: !3428)
!3442 = !DILocation(line: 815, column: 47, scope: !3415, inlinedAt: !3428)
!3443 = !DILocation(line: 813, column: 3, scope: !3415, inlinedAt: !3428)
!3444 = !DILocation(line: 816, column: 9, scope: !3415, inlinedAt: !3428)
!3445 = !DILocation(line: 791, column: 3, scope: !3406)
!3446 = !DILocation(line: 0, scope: !3415)
!3447 = !DILocation(line: 804, column: 37, scope: !3415)
!3448 = !DILocation(line: 805, column: 21, scope: !3415)
!3449 = !DILocation(line: 807, column: 18, scope: !3415)
!3450 = !DILocation(line: 807, column: 27, scope: !3415)
!3451 = !DILocation(line: 807, column: 24, scope: !3415)
!3452 = !DILocation(line: 808, column: 72, scope: !3415)
!3453 = !DILocation(line: 809, column: 56, scope: !3415)
!3454 = !DILocation(line: 810, column: 49, scope: !3415)
!3455 = !DILocation(line: 811, column: 49, scope: !3415)
!3456 = !DILocation(line: 808, column: 20, scope: !3415)
!3457 = !DILocation(line: 811, column: 62, scope: !3415)
!3458 = !DILocation(line: 812, column: 15, scope: !3415)
!3459 = !DILocation(line: 813, column: 60, scope: !3415)
!3460 = !DILocation(line: 815, column: 32, scope: !3415)
!3461 = !DILocation(line: 815, column: 47, scope: !3415)
!3462 = !DILocation(line: 813, column: 3, scope: !3415)
!3463 = !DILocation(line: 816, column: 9, scope: !3415)
!3464 = !DILocation(line: 817, column: 7, scope: !3415)
!3465 = !DILocation(line: 818, column: 11, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3415, file: !643, line: 817, column: 7)
!3467 = !{!1587, !1587, i64 0}
!3468 = !DILocation(line: 818, column: 5, scope: !3466)
!3469 = !DILocation(line: 819, column: 3, scope: !3415)
!3470 = distinct !DISubprogram(name: "quotearg_free", scope: !643, file: !643, line: 837, type: !629, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3471)
!3471 = !{!3472, !3473}
!3472 = !DILocalVariable(name: "sv", scope: !3470, file: !643, line: 839, type: !750)
!3473 = !DILocalVariable(name: "i", scope: !3474, file: !643, line: 840, type: !260)
!3474 = distinct !DILexicalBlock(scope: !3470, file: !643, line: 840, column: 3)
!3475 = !DILocation(line: 839, column: 24, scope: !3470)
!3476 = !DILocation(line: 0, scope: !3470)
!3477 = !DILocation(line: 0, scope: !3474)
!3478 = !DILocation(line: 840, column: 21, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3474, file: !643, line: 840, column: 3)
!3480 = !DILocation(line: 840, column: 3, scope: !3474)
!3481 = !DILocation(line: 842, column: 13, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3470, file: !643, line: 842, column: 7)
!3483 = !{!3484, !958, i64 8}
!3484 = !{!"slotvec", !1587, i64 0, !958, i64 8}
!3485 = !DILocation(line: 842, column: 17, scope: !3482)
!3486 = !DILocation(line: 842, column: 7, scope: !3470)
!3487 = !DILocation(line: 841, column: 17, scope: !3479)
!3488 = !DILocation(line: 841, column: 5, scope: !3479)
!3489 = !DILocation(line: 840, column: 32, scope: !3479)
!3490 = distinct !{!3490, !3480, !3491, !1104}
!3491 = !DILocation(line: 841, column: 20, scope: !3474)
!3492 = !DILocation(line: 844, column: 7, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3482, file: !643, line: 843, column: 5)
!3494 = !DILocation(line: 845, column: 21, scope: !3493)
!3495 = !{!3484, !1587, i64 0}
!3496 = !DILocation(line: 846, column: 20, scope: !3493)
!3497 = !DILocation(line: 847, column: 5, scope: !3493)
!3498 = !DILocation(line: 848, column: 10, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3470, file: !643, line: 848, column: 7)
!3500 = !DILocation(line: 848, column: 7, scope: !3470)
!3501 = !DILocation(line: 850, column: 7, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3499, file: !643, line: 849, column: 5)
!3503 = !DILocation(line: 851, column: 15, scope: !3502)
!3504 = !DILocation(line: 852, column: 5, scope: !3502)
!3505 = !DILocation(line: 853, column: 10, scope: !3470)
!3506 = !DILocation(line: 854, column: 1, scope: !3470)
!3507 = !DISubprogram(name: "free", scope: !2944, file: !2944, line: 786, type: !3508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{null, !268}
!3510 = distinct !DISubprogram(name: "quotearg_n", scope: !643, file: !643, line: 919, type: !1174, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3511)
!3511 = !{!3512, !3513}
!3512 = !DILocalVariable(name: "n", arg: 1, scope: !3510, file: !643, line: 919, type: !260)
!3513 = !DILocalVariable(name: "arg", arg: 2, scope: !3510, file: !643, line: 919, type: !265)
!3514 = !DILocation(line: 0, scope: !3510)
!3515 = !DILocation(line: 921, column: 10, scope: !3510)
!3516 = !DILocation(line: 921, column: 3, scope: !3510)
!3517 = distinct !DISubprogram(name: "quotearg_n_options", scope: !643, file: !643, line: 866, type: !3518, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3520)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!318, !260, !265, !262, !2734}
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3531, !3532, !3534, !3535, !3536}
!3521 = !DILocalVariable(name: "n", arg: 1, scope: !3517, file: !643, line: 866, type: !260)
!3522 = !DILocalVariable(name: "arg", arg: 2, scope: !3517, file: !643, line: 866, type: !265)
!3523 = !DILocalVariable(name: "argsize", arg: 3, scope: !3517, file: !643, line: 866, type: !262)
!3524 = !DILocalVariable(name: "options", arg: 4, scope: !3517, file: !643, line: 867, type: !2734)
!3525 = !DILocalVariable(name: "saved_errno", scope: !3517, file: !643, line: 869, type: !260)
!3526 = !DILocalVariable(name: "sv", scope: !3517, file: !643, line: 871, type: !750)
!3527 = !DILocalVariable(name: "nslots_max", scope: !3517, file: !643, line: 873, type: !260)
!3528 = !DILocalVariable(name: "preallocated", scope: !3529, file: !643, line: 879, type: !297)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !643, line: 878, column: 5)
!3530 = distinct !DILexicalBlock(scope: !3517, file: !643, line: 877, column: 7)
!3531 = !DILocalVariable(name: "new_nslots", scope: !3529, file: !643, line: 880, type: !904)
!3532 = !DILocalVariable(name: "size", scope: !3533, file: !643, line: 891, type: !262)
!3533 = distinct !DILexicalBlock(scope: !3517, file: !643, line: 890, column: 3)
!3534 = !DILocalVariable(name: "val", scope: !3533, file: !643, line: 892, type: !318)
!3535 = !DILocalVariable(name: "flags", scope: !3533, file: !643, line: 894, type: !260)
!3536 = !DILocalVariable(name: "qsize", scope: !3533, file: !643, line: 895, type: !262)
!3537 = distinct !DIAssignID()
!3538 = !DILocation(line: 0, scope: !3529)
!3539 = !DILocation(line: 0, scope: !3517)
!3540 = !DILocation(line: 869, column: 21, scope: !3517)
!3541 = !DILocation(line: 871, column: 24, scope: !3517)
!3542 = !DILocation(line: 874, column: 17, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3517, file: !643, line: 874, column: 7)
!3544 = !DILocation(line: 875, column: 5, scope: !3543)
!3545 = !DILocation(line: 877, column: 7, scope: !3530)
!3546 = !DILocation(line: 877, column: 14, scope: !3530)
!3547 = !DILocation(line: 877, column: 7, scope: !3517)
!3548 = !DILocation(line: 879, column: 31, scope: !3529)
!3549 = !DILocation(line: 880, column: 7, scope: !3529)
!3550 = !DILocation(line: 880, column: 26, scope: !3529)
!3551 = !DILocation(line: 880, column: 13, scope: !3529)
!3552 = distinct !DIAssignID()
!3553 = !DILocation(line: 882, column: 31, scope: !3529)
!3554 = !DILocation(line: 883, column: 33, scope: !3529)
!3555 = !DILocation(line: 883, column: 42, scope: !3529)
!3556 = !DILocation(line: 883, column: 31, scope: !3529)
!3557 = !DILocation(line: 882, column: 22, scope: !3529)
!3558 = !DILocation(line: 882, column: 15, scope: !3529)
!3559 = !DILocation(line: 884, column: 11, scope: !3529)
!3560 = !DILocation(line: 885, column: 15, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3529, file: !643, line: 884, column: 11)
!3562 = !{i64 0, i64 8, !3467, i64 8, i64 8, !957}
!3563 = !DILocation(line: 885, column: 9, scope: !3561)
!3564 = !DILocation(line: 886, column: 20, scope: !3529)
!3565 = !DILocation(line: 886, column: 18, scope: !3529)
!3566 = !DILocation(line: 886, column: 32, scope: !3529)
!3567 = !DILocation(line: 886, column: 43, scope: !3529)
!3568 = !DILocation(line: 886, column: 53, scope: !3529)
!3569 = !DILocation(line: 0, scope: !2952, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 886, column: 7, scope: !3529)
!3571 = !DILocation(line: 59, column: 10, scope: !2952, inlinedAt: !3570)
!3572 = !DILocation(line: 887, column: 16, scope: !3529)
!3573 = !DILocation(line: 887, column: 14, scope: !3529)
!3574 = !DILocation(line: 888, column: 5, scope: !3530)
!3575 = !DILocation(line: 888, column: 5, scope: !3529)
!3576 = !DILocation(line: 891, column: 19, scope: !3533)
!3577 = !DILocation(line: 891, column: 25, scope: !3533)
!3578 = !DILocation(line: 0, scope: !3533)
!3579 = !DILocation(line: 892, column: 23, scope: !3533)
!3580 = !DILocation(line: 894, column: 26, scope: !3533)
!3581 = !DILocation(line: 894, column: 32, scope: !3533)
!3582 = !DILocation(line: 896, column: 55, scope: !3533)
!3583 = !DILocation(line: 897, column: 55, scope: !3533)
!3584 = !DILocation(line: 898, column: 55, scope: !3533)
!3585 = !DILocation(line: 899, column: 55, scope: !3533)
!3586 = !DILocation(line: 895, column: 20, scope: !3533)
!3587 = !DILocation(line: 901, column: 14, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3533, file: !643, line: 901, column: 9)
!3589 = !DILocation(line: 901, column: 9, scope: !3533)
!3590 = !DILocation(line: 903, column: 35, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3588, file: !643, line: 902, column: 7)
!3592 = !DILocation(line: 903, column: 20, scope: !3591)
!3593 = !DILocation(line: 904, column: 17, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3591, file: !643, line: 904, column: 13)
!3595 = !DILocation(line: 904, column: 13, scope: !3591)
!3596 = !DILocation(line: 905, column: 11, scope: !3594)
!3597 = !DILocation(line: 906, column: 27, scope: !3591)
!3598 = !DILocation(line: 906, column: 19, scope: !3591)
!3599 = !DILocation(line: 907, column: 69, scope: !3591)
!3600 = !DILocation(line: 909, column: 44, scope: !3591)
!3601 = !DILocation(line: 910, column: 44, scope: !3591)
!3602 = !DILocation(line: 907, column: 9, scope: !3591)
!3603 = !DILocation(line: 911, column: 7, scope: !3591)
!3604 = !DILocation(line: 913, column: 11, scope: !3533)
!3605 = !DILocation(line: 914, column: 5, scope: !3533)
!3606 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !643, file: !643, line: 925, type: !3607, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3609)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!318, !260, !265, !262}
!3609 = !{!3610, !3611, !3612}
!3610 = !DILocalVariable(name: "n", arg: 1, scope: !3606, file: !643, line: 925, type: !260)
!3611 = !DILocalVariable(name: "arg", arg: 2, scope: !3606, file: !643, line: 925, type: !265)
!3612 = !DILocalVariable(name: "argsize", arg: 3, scope: !3606, file: !643, line: 925, type: !262)
!3613 = !DILocation(line: 0, scope: !3606)
!3614 = !DILocation(line: 927, column: 10, scope: !3606)
!3615 = !DILocation(line: 927, column: 3, scope: !3606)
!3616 = distinct !DISubprogram(name: "quotearg", scope: !643, file: !643, line: 931, type: !1183, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3617)
!3617 = !{!3618}
!3618 = !DILocalVariable(name: "arg", arg: 1, scope: !3616, file: !643, line: 931, type: !265)
!3619 = !DILocation(line: 0, scope: !3616)
!3620 = !DILocation(line: 0, scope: !3510, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 933, column: 10, scope: !3616)
!3622 = !DILocation(line: 921, column: 10, scope: !3510, inlinedAt: !3621)
!3623 = !DILocation(line: 933, column: 3, scope: !3616)
!3624 = distinct !DISubprogram(name: "quotearg_mem", scope: !643, file: !643, line: 937, type: !3625, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!318, !265, !262}
!3627 = !{!3628, !3629}
!3628 = !DILocalVariable(name: "arg", arg: 1, scope: !3624, file: !643, line: 937, type: !265)
!3629 = !DILocalVariable(name: "argsize", arg: 2, scope: !3624, file: !643, line: 937, type: !262)
!3630 = !DILocation(line: 0, scope: !3624)
!3631 = !DILocation(line: 0, scope: !3606, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 939, column: 10, scope: !3624)
!3633 = !DILocation(line: 927, column: 10, scope: !3606, inlinedAt: !3632)
!3634 = !DILocation(line: 939, column: 3, scope: !3624)
!3635 = distinct !DISubprogram(name: "quotearg_n_style", scope: !643, file: !643, line: 943, type: !3636, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3638)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!318, !260, !669, !265}
!3638 = !{!3639, !3640, !3641, !3642}
!3639 = !DILocalVariable(name: "n", arg: 1, scope: !3635, file: !643, line: 943, type: !260)
!3640 = !DILocalVariable(name: "s", arg: 2, scope: !3635, file: !643, line: 943, type: !669)
!3641 = !DILocalVariable(name: "arg", arg: 3, scope: !3635, file: !643, line: 943, type: !265)
!3642 = !DILocalVariable(name: "o", scope: !3635, file: !643, line: 945, type: !2735)
!3643 = distinct !DIAssignID()
!3644 = !DILocation(line: 0, scope: !3635)
!3645 = !DILocation(line: 945, column: 3, scope: !3635)
!3646 = !{!3647}
!3647 = distinct !{!3647, !3648, !"quoting_options_from_style: argument 0"}
!3648 = distinct !{!3648, !"quoting_options_from_style"}
!3649 = !DILocation(line: 945, column: 36, scope: !3635)
!3650 = !DILocalVariable(name: "style", arg: 1, scope: !3651, file: !643, line: 183, type: !669)
!3651 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !643, file: !643, line: 183, type: !3652, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3654)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!696, !669}
!3654 = !{!3650, !3655}
!3655 = !DILocalVariable(name: "o", scope: !3651, file: !643, line: 185, type: !696)
!3656 = !DILocation(line: 0, scope: !3651, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 945, column: 36, scope: !3635)
!3658 = !DILocation(line: 185, column: 26, scope: !3651, inlinedAt: !3657)
!3659 = distinct !DIAssignID()
!3660 = !DILocation(line: 186, column: 13, scope: !3661, inlinedAt: !3657)
!3661 = distinct !DILexicalBlock(scope: !3651, file: !643, line: 186, column: 7)
!3662 = !DILocation(line: 186, column: 7, scope: !3651, inlinedAt: !3657)
!3663 = !DILocation(line: 187, column: 5, scope: !3661, inlinedAt: !3657)
!3664 = !DILocation(line: 188, column: 11, scope: !3651, inlinedAt: !3657)
!3665 = distinct !DIAssignID()
!3666 = !DILocation(line: 946, column: 10, scope: !3635)
!3667 = !DILocation(line: 947, column: 1, scope: !3635)
!3668 = !DILocation(line: 946, column: 3, scope: !3635)
!3669 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !643, file: !643, line: 950, type: !3670, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3672)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!318, !260, !669, !265, !262}
!3672 = !{!3673, !3674, !3675, !3676, !3677}
!3673 = !DILocalVariable(name: "n", arg: 1, scope: !3669, file: !643, line: 950, type: !260)
!3674 = !DILocalVariable(name: "s", arg: 2, scope: !3669, file: !643, line: 950, type: !669)
!3675 = !DILocalVariable(name: "arg", arg: 3, scope: !3669, file: !643, line: 951, type: !265)
!3676 = !DILocalVariable(name: "argsize", arg: 4, scope: !3669, file: !643, line: 951, type: !262)
!3677 = !DILocalVariable(name: "o", scope: !3669, file: !643, line: 953, type: !2735)
!3678 = distinct !DIAssignID()
!3679 = !DILocation(line: 0, scope: !3669)
!3680 = !DILocation(line: 953, column: 3, scope: !3669)
!3681 = !{!3682}
!3682 = distinct !{!3682, !3683, !"quoting_options_from_style: argument 0"}
!3683 = distinct !{!3683, !"quoting_options_from_style"}
!3684 = !DILocation(line: 953, column: 36, scope: !3669)
!3685 = !DILocation(line: 0, scope: !3651, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 953, column: 36, scope: !3669)
!3687 = !DILocation(line: 185, column: 26, scope: !3651, inlinedAt: !3686)
!3688 = distinct !DIAssignID()
!3689 = !DILocation(line: 186, column: 13, scope: !3661, inlinedAt: !3686)
!3690 = !DILocation(line: 186, column: 7, scope: !3651, inlinedAt: !3686)
!3691 = !DILocation(line: 187, column: 5, scope: !3661, inlinedAt: !3686)
!3692 = !DILocation(line: 188, column: 11, scope: !3651, inlinedAt: !3686)
!3693 = distinct !DIAssignID()
!3694 = !DILocation(line: 954, column: 10, scope: !3669)
!3695 = !DILocation(line: 955, column: 1, scope: !3669)
!3696 = !DILocation(line: 954, column: 3, scope: !3669)
!3697 = distinct !DISubprogram(name: "quotearg_style", scope: !643, file: !643, line: 958, type: !3698, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3700)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!318, !669, !265}
!3700 = !{!3701, !3702}
!3701 = !DILocalVariable(name: "s", arg: 1, scope: !3697, file: !643, line: 958, type: !669)
!3702 = !DILocalVariable(name: "arg", arg: 2, scope: !3697, file: !643, line: 958, type: !265)
!3703 = distinct !DIAssignID()
!3704 = !DILocation(line: 0, scope: !3697)
!3705 = !DILocation(line: 0, scope: !3635, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 960, column: 10, scope: !3697)
!3707 = !DILocation(line: 945, column: 3, scope: !3635, inlinedAt: !3706)
!3708 = !{!3709}
!3709 = distinct !{!3709, !3710, !"quoting_options_from_style: argument 0"}
!3710 = distinct !{!3710, !"quoting_options_from_style"}
!3711 = !DILocation(line: 945, column: 36, scope: !3635, inlinedAt: !3706)
!3712 = !DILocation(line: 0, scope: !3651, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 945, column: 36, scope: !3635, inlinedAt: !3706)
!3714 = !DILocation(line: 185, column: 26, scope: !3651, inlinedAt: !3713)
!3715 = distinct !DIAssignID()
!3716 = !DILocation(line: 186, column: 13, scope: !3661, inlinedAt: !3713)
!3717 = !DILocation(line: 186, column: 7, scope: !3651, inlinedAt: !3713)
!3718 = !DILocation(line: 187, column: 5, scope: !3661, inlinedAt: !3713)
!3719 = !DILocation(line: 188, column: 11, scope: !3651, inlinedAt: !3713)
!3720 = distinct !DIAssignID()
!3721 = !DILocation(line: 946, column: 10, scope: !3635, inlinedAt: !3706)
!3722 = !DILocation(line: 947, column: 1, scope: !3635, inlinedAt: !3706)
!3723 = !DILocation(line: 960, column: 3, scope: !3697)
!3724 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !643, file: !643, line: 964, type: !3725, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3727)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!318, !669, !265, !262}
!3727 = !{!3728, !3729, !3730}
!3728 = !DILocalVariable(name: "s", arg: 1, scope: !3724, file: !643, line: 964, type: !669)
!3729 = !DILocalVariable(name: "arg", arg: 2, scope: !3724, file: !643, line: 964, type: !265)
!3730 = !DILocalVariable(name: "argsize", arg: 3, scope: !3724, file: !643, line: 964, type: !262)
!3731 = distinct !DIAssignID()
!3732 = !DILocation(line: 0, scope: !3724)
!3733 = !DILocation(line: 0, scope: !3669, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 966, column: 10, scope: !3724)
!3735 = !DILocation(line: 953, column: 3, scope: !3669, inlinedAt: !3734)
!3736 = !{!3737}
!3737 = distinct !{!3737, !3738, !"quoting_options_from_style: argument 0"}
!3738 = distinct !{!3738, !"quoting_options_from_style"}
!3739 = !DILocation(line: 953, column: 36, scope: !3669, inlinedAt: !3734)
!3740 = !DILocation(line: 0, scope: !3651, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 953, column: 36, scope: !3669, inlinedAt: !3734)
!3742 = !DILocation(line: 185, column: 26, scope: !3651, inlinedAt: !3741)
!3743 = distinct !DIAssignID()
!3744 = !DILocation(line: 186, column: 13, scope: !3661, inlinedAt: !3741)
!3745 = !DILocation(line: 186, column: 7, scope: !3651, inlinedAt: !3741)
!3746 = !DILocation(line: 187, column: 5, scope: !3661, inlinedAt: !3741)
!3747 = !DILocation(line: 188, column: 11, scope: !3651, inlinedAt: !3741)
!3748 = distinct !DIAssignID()
!3749 = !DILocation(line: 954, column: 10, scope: !3669, inlinedAt: !3734)
!3750 = !DILocation(line: 955, column: 1, scope: !3669, inlinedAt: !3734)
!3751 = !DILocation(line: 966, column: 3, scope: !3724)
!3752 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !643, file: !643, line: 970, type: !3753, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3755)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!318, !265, !262, !4}
!3755 = !{!3756, !3757, !3758, !3759}
!3756 = !DILocalVariable(name: "arg", arg: 1, scope: !3752, file: !643, line: 970, type: !265)
!3757 = !DILocalVariable(name: "argsize", arg: 2, scope: !3752, file: !643, line: 970, type: !262)
!3758 = !DILocalVariable(name: "ch", arg: 3, scope: !3752, file: !643, line: 970, type: !4)
!3759 = !DILocalVariable(name: "options", scope: !3752, file: !643, line: 972, type: !696)
!3760 = distinct !DIAssignID()
!3761 = !DILocation(line: 0, scope: !3752)
!3762 = !DILocation(line: 972, column: 3, scope: !3752)
!3763 = !DILocation(line: 973, column: 13, scope: !3752)
!3764 = !{i64 0, i64 4, !1057, i64 4, i64 4, !1057, i64 8, i64 32, !1066, i64 40, i64 8, !957, i64 48, i64 8, !957}
!3765 = distinct !DIAssignID()
!3766 = !DILocation(line: 0, scope: !2754, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 974, column: 3, scope: !3752)
!3768 = !DILocation(line: 147, column: 41, scope: !2754, inlinedAt: !3767)
!3769 = !DILocation(line: 147, column: 62, scope: !2754, inlinedAt: !3767)
!3770 = !DILocation(line: 147, column: 57, scope: !2754, inlinedAt: !3767)
!3771 = !DILocation(line: 148, column: 15, scope: !2754, inlinedAt: !3767)
!3772 = !DILocation(line: 149, column: 21, scope: !2754, inlinedAt: !3767)
!3773 = !DILocation(line: 149, column: 24, scope: !2754, inlinedAt: !3767)
!3774 = !DILocation(line: 150, column: 19, scope: !2754, inlinedAt: !3767)
!3775 = !DILocation(line: 150, column: 24, scope: !2754, inlinedAt: !3767)
!3776 = !DILocation(line: 150, column: 6, scope: !2754, inlinedAt: !3767)
!3777 = !DILocation(line: 975, column: 10, scope: !3752)
!3778 = !DILocation(line: 976, column: 1, scope: !3752)
!3779 = !DILocation(line: 975, column: 3, scope: !3752)
!3780 = distinct !DISubprogram(name: "quotearg_char", scope: !643, file: !643, line: 979, type: !3781, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3783)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!318, !265, !4}
!3783 = !{!3784, !3785}
!3784 = !DILocalVariable(name: "arg", arg: 1, scope: !3780, file: !643, line: 979, type: !265)
!3785 = !DILocalVariable(name: "ch", arg: 2, scope: !3780, file: !643, line: 979, type: !4)
!3786 = distinct !DIAssignID()
!3787 = !DILocation(line: 0, scope: !3780)
!3788 = !DILocation(line: 0, scope: !3752, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 981, column: 10, scope: !3780)
!3790 = !DILocation(line: 972, column: 3, scope: !3752, inlinedAt: !3789)
!3791 = !DILocation(line: 973, column: 13, scope: !3752, inlinedAt: !3789)
!3792 = distinct !DIAssignID()
!3793 = !DILocation(line: 0, scope: !2754, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 974, column: 3, scope: !3752, inlinedAt: !3789)
!3795 = !DILocation(line: 147, column: 41, scope: !2754, inlinedAt: !3794)
!3796 = !DILocation(line: 147, column: 62, scope: !2754, inlinedAt: !3794)
!3797 = !DILocation(line: 147, column: 57, scope: !2754, inlinedAt: !3794)
!3798 = !DILocation(line: 148, column: 15, scope: !2754, inlinedAt: !3794)
!3799 = !DILocation(line: 149, column: 21, scope: !2754, inlinedAt: !3794)
!3800 = !DILocation(line: 149, column: 24, scope: !2754, inlinedAt: !3794)
!3801 = !DILocation(line: 150, column: 19, scope: !2754, inlinedAt: !3794)
!3802 = !DILocation(line: 150, column: 24, scope: !2754, inlinedAt: !3794)
!3803 = !DILocation(line: 150, column: 6, scope: !2754, inlinedAt: !3794)
!3804 = !DILocation(line: 975, column: 10, scope: !3752, inlinedAt: !3789)
!3805 = !DILocation(line: 976, column: 1, scope: !3752, inlinedAt: !3789)
!3806 = !DILocation(line: 981, column: 3, scope: !3780)
!3807 = distinct !DISubprogram(name: "quotearg_colon", scope: !643, file: !643, line: 985, type: !1183, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3808)
!3808 = !{!3809}
!3809 = !DILocalVariable(name: "arg", arg: 1, scope: !3807, file: !643, line: 985, type: !265)
!3810 = distinct !DIAssignID()
!3811 = !DILocation(line: 0, scope: !3807)
!3812 = !DILocation(line: 0, scope: !3780, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 987, column: 10, scope: !3807)
!3814 = !DILocation(line: 0, scope: !3752, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 981, column: 10, scope: !3780, inlinedAt: !3813)
!3816 = !DILocation(line: 972, column: 3, scope: !3752, inlinedAt: !3815)
!3817 = !DILocation(line: 973, column: 13, scope: !3752, inlinedAt: !3815)
!3818 = distinct !DIAssignID()
!3819 = !DILocation(line: 0, scope: !2754, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 974, column: 3, scope: !3752, inlinedAt: !3815)
!3821 = !DILocation(line: 147, column: 57, scope: !2754, inlinedAt: !3820)
!3822 = !DILocation(line: 149, column: 21, scope: !2754, inlinedAt: !3820)
!3823 = !DILocation(line: 150, column: 6, scope: !2754, inlinedAt: !3820)
!3824 = !DILocation(line: 975, column: 10, scope: !3752, inlinedAt: !3815)
!3825 = !DILocation(line: 976, column: 1, scope: !3752, inlinedAt: !3815)
!3826 = !DILocation(line: 987, column: 3, scope: !3807)
!3827 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !643, file: !643, line: 991, type: !3625, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3828)
!3828 = !{!3829, !3830}
!3829 = !DILocalVariable(name: "arg", arg: 1, scope: !3827, file: !643, line: 991, type: !265)
!3830 = !DILocalVariable(name: "argsize", arg: 2, scope: !3827, file: !643, line: 991, type: !262)
!3831 = distinct !DIAssignID()
!3832 = !DILocation(line: 0, scope: !3827)
!3833 = !DILocation(line: 0, scope: !3752, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 993, column: 10, scope: !3827)
!3835 = !DILocation(line: 972, column: 3, scope: !3752, inlinedAt: !3834)
!3836 = !DILocation(line: 973, column: 13, scope: !3752, inlinedAt: !3834)
!3837 = distinct !DIAssignID()
!3838 = !DILocation(line: 0, scope: !2754, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 974, column: 3, scope: !3752, inlinedAt: !3834)
!3840 = !DILocation(line: 147, column: 57, scope: !2754, inlinedAt: !3839)
!3841 = !DILocation(line: 149, column: 21, scope: !2754, inlinedAt: !3839)
!3842 = !DILocation(line: 150, column: 6, scope: !2754, inlinedAt: !3839)
!3843 = !DILocation(line: 975, column: 10, scope: !3752, inlinedAt: !3834)
!3844 = !DILocation(line: 976, column: 1, scope: !3752, inlinedAt: !3834)
!3845 = !DILocation(line: 993, column: 3, scope: !3827)
!3846 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !643, file: !643, line: 997, type: !3636, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3847)
!3847 = !{!3848, !3849, !3850, !3851}
!3848 = !DILocalVariable(name: "n", arg: 1, scope: !3846, file: !643, line: 997, type: !260)
!3849 = !DILocalVariable(name: "s", arg: 2, scope: !3846, file: !643, line: 997, type: !669)
!3850 = !DILocalVariable(name: "arg", arg: 3, scope: !3846, file: !643, line: 997, type: !265)
!3851 = !DILocalVariable(name: "options", scope: !3846, file: !643, line: 999, type: !696)
!3852 = distinct !DIAssignID()
!3853 = !DILocation(line: 0, scope: !3846)
!3854 = !DILocation(line: 185, column: 26, scope: !3651, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 1000, column: 13, scope: !3846)
!3856 = !DILocation(line: 999, column: 3, scope: !3846)
!3857 = !DILocation(line: 0, scope: !3651, inlinedAt: !3855)
!3858 = !DILocation(line: 186, column: 13, scope: !3661, inlinedAt: !3855)
!3859 = !DILocation(line: 186, column: 7, scope: !3651, inlinedAt: !3855)
!3860 = !DILocation(line: 187, column: 5, scope: !3661, inlinedAt: !3855)
!3861 = !{!3862}
!3862 = distinct !{!3862, !3863, !"quoting_options_from_style: argument 0"}
!3863 = distinct !{!3863, !"quoting_options_from_style"}
!3864 = !DILocation(line: 1000, column: 13, scope: !3846)
!3865 = distinct !DIAssignID()
!3866 = distinct !DIAssignID()
!3867 = !DILocation(line: 0, scope: !2754, inlinedAt: !3868)
!3868 = distinct !DILocation(line: 1001, column: 3, scope: !3846)
!3869 = !DILocation(line: 147, column: 57, scope: !2754, inlinedAt: !3868)
!3870 = !DILocation(line: 149, column: 21, scope: !2754, inlinedAt: !3868)
!3871 = !DILocation(line: 150, column: 6, scope: !2754, inlinedAt: !3868)
!3872 = distinct !DIAssignID()
!3873 = !DILocation(line: 1002, column: 10, scope: !3846)
!3874 = !DILocation(line: 1003, column: 1, scope: !3846)
!3875 = !DILocation(line: 1002, column: 3, scope: !3846)
!3876 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !643, file: !643, line: 1006, type: !3877, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3879)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!318, !260, !265, !265, !265}
!3879 = !{!3880, !3881, !3882, !3883}
!3880 = !DILocalVariable(name: "n", arg: 1, scope: !3876, file: !643, line: 1006, type: !260)
!3881 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3876, file: !643, line: 1006, type: !265)
!3882 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3876, file: !643, line: 1007, type: !265)
!3883 = !DILocalVariable(name: "arg", arg: 4, scope: !3876, file: !643, line: 1007, type: !265)
!3884 = distinct !DIAssignID()
!3885 = !DILocation(line: 0, scope: !3876)
!3886 = !DILocalVariable(name: "o", scope: !3887, file: !643, line: 1018, type: !696)
!3887 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !643, file: !643, line: 1014, type: !3888, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3890)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!318, !260, !265, !265, !265, !262}
!3890 = !{!3891, !3892, !3893, !3894, !3895, !3886}
!3891 = !DILocalVariable(name: "n", arg: 1, scope: !3887, file: !643, line: 1014, type: !260)
!3892 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3887, file: !643, line: 1014, type: !265)
!3893 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3887, file: !643, line: 1015, type: !265)
!3894 = !DILocalVariable(name: "arg", arg: 4, scope: !3887, file: !643, line: 1016, type: !265)
!3895 = !DILocalVariable(name: "argsize", arg: 5, scope: !3887, file: !643, line: 1016, type: !262)
!3896 = !DILocation(line: 0, scope: !3887, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 1009, column: 10, scope: !3876)
!3898 = !DILocation(line: 1018, column: 3, scope: !3887, inlinedAt: !3897)
!3899 = !DILocation(line: 1018, column: 30, scope: !3887, inlinedAt: !3897)
!3900 = distinct !DIAssignID()
!3901 = distinct !DIAssignID()
!3902 = !DILocation(line: 0, scope: !2794, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 1019, column: 3, scope: !3887, inlinedAt: !3897)
!3904 = !DILocation(line: 174, column: 12, scope: !2794, inlinedAt: !3903)
!3905 = distinct !DIAssignID()
!3906 = !DILocation(line: 175, column: 8, scope: !2807, inlinedAt: !3903)
!3907 = !DILocation(line: 175, column: 19, scope: !2807, inlinedAt: !3903)
!3908 = !DILocation(line: 176, column: 5, scope: !2807, inlinedAt: !3903)
!3909 = !DILocation(line: 177, column: 6, scope: !2794, inlinedAt: !3903)
!3910 = !DILocation(line: 177, column: 17, scope: !2794, inlinedAt: !3903)
!3911 = distinct !DIAssignID()
!3912 = !DILocation(line: 178, column: 6, scope: !2794, inlinedAt: !3903)
!3913 = !DILocation(line: 178, column: 18, scope: !2794, inlinedAt: !3903)
!3914 = distinct !DIAssignID()
!3915 = !DILocation(line: 1020, column: 10, scope: !3887, inlinedAt: !3897)
!3916 = !DILocation(line: 1021, column: 1, scope: !3887, inlinedAt: !3897)
!3917 = !DILocation(line: 1009, column: 3, scope: !3876)
!3918 = distinct !DIAssignID()
!3919 = !DILocation(line: 0, scope: !3887)
!3920 = !DILocation(line: 1018, column: 3, scope: !3887)
!3921 = !DILocation(line: 1018, column: 30, scope: !3887)
!3922 = distinct !DIAssignID()
!3923 = distinct !DIAssignID()
!3924 = !DILocation(line: 0, scope: !2794, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 1019, column: 3, scope: !3887)
!3926 = !DILocation(line: 174, column: 12, scope: !2794, inlinedAt: !3925)
!3927 = distinct !DIAssignID()
!3928 = !DILocation(line: 175, column: 8, scope: !2807, inlinedAt: !3925)
!3929 = !DILocation(line: 175, column: 19, scope: !2807, inlinedAt: !3925)
!3930 = !DILocation(line: 176, column: 5, scope: !2807, inlinedAt: !3925)
!3931 = !DILocation(line: 177, column: 6, scope: !2794, inlinedAt: !3925)
!3932 = !DILocation(line: 177, column: 17, scope: !2794, inlinedAt: !3925)
!3933 = distinct !DIAssignID()
!3934 = !DILocation(line: 178, column: 6, scope: !2794, inlinedAt: !3925)
!3935 = !DILocation(line: 178, column: 18, scope: !2794, inlinedAt: !3925)
!3936 = distinct !DIAssignID()
!3937 = !DILocation(line: 1020, column: 10, scope: !3887)
!3938 = !DILocation(line: 1021, column: 1, scope: !3887)
!3939 = !DILocation(line: 1020, column: 3, scope: !3887)
!3940 = distinct !DISubprogram(name: "quotearg_custom", scope: !643, file: !643, line: 1024, type: !3941, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3943)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!318, !265, !265, !265}
!3943 = !{!3944, !3945, !3946}
!3944 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3940, file: !643, line: 1024, type: !265)
!3945 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3940, file: !643, line: 1024, type: !265)
!3946 = !DILocalVariable(name: "arg", arg: 3, scope: !3940, file: !643, line: 1025, type: !265)
!3947 = distinct !DIAssignID()
!3948 = !DILocation(line: 0, scope: !3940)
!3949 = !DILocation(line: 0, scope: !3876, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 1027, column: 10, scope: !3940)
!3951 = !DILocation(line: 0, scope: !3887, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 1009, column: 10, scope: !3876, inlinedAt: !3950)
!3953 = !DILocation(line: 1018, column: 3, scope: !3887, inlinedAt: !3952)
!3954 = !DILocation(line: 1018, column: 30, scope: !3887, inlinedAt: !3952)
!3955 = distinct !DIAssignID()
!3956 = distinct !DIAssignID()
!3957 = !DILocation(line: 0, scope: !2794, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 1019, column: 3, scope: !3887, inlinedAt: !3952)
!3959 = !DILocation(line: 174, column: 12, scope: !2794, inlinedAt: !3958)
!3960 = distinct !DIAssignID()
!3961 = !DILocation(line: 175, column: 8, scope: !2807, inlinedAt: !3958)
!3962 = !DILocation(line: 175, column: 19, scope: !2807, inlinedAt: !3958)
!3963 = !DILocation(line: 176, column: 5, scope: !2807, inlinedAt: !3958)
!3964 = !DILocation(line: 177, column: 6, scope: !2794, inlinedAt: !3958)
!3965 = !DILocation(line: 177, column: 17, scope: !2794, inlinedAt: !3958)
!3966 = distinct !DIAssignID()
!3967 = !DILocation(line: 178, column: 6, scope: !2794, inlinedAt: !3958)
!3968 = !DILocation(line: 178, column: 18, scope: !2794, inlinedAt: !3958)
!3969 = distinct !DIAssignID()
!3970 = !DILocation(line: 1020, column: 10, scope: !3887, inlinedAt: !3952)
!3971 = !DILocation(line: 1021, column: 1, scope: !3887, inlinedAt: !3952)
!3972 = !DILocation(line: 1027, column: 3, scope: !3940)
!3973 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !643, file: !643, line: 1031, type: !3974, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !3976)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!318, !265, !265, !265, !262}
!3976 = !{!3977, !3978, !3979, !3980}
!3977 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3973, file: !643, line: 1031, type: !265)
!3978 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3973, file: !643, line: 1031, type: !265)
!3979 = !DILocalVariable(name: "arg", arg: 3, scope: !3973, file: !643, line: 1032, type: !265)
!3980 = !DILocalVariable(name: "argsize", arg: 4, scope: !3973, file: !643, line: 1032, type: !262)
!3981 = distinct !DIAssignID()
!3982 = !DILocation(line: 0, scope: !3973)
!3983 = !DILocation(line: 0, scope: !3887, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 1034, column: 10, scope: !3973)
!3985 = !DILocation(line: 1018, column: 3, scope: !3887, inlinedAt: !3984)
!3986 = !DILocation(line: 1018, column: 30, scope: !3887, inlinedAt: !3984)
!3987 = distinct !DIAssignID()
!3988 = distinct !DIAssignID()
!3989 = !DILocation(line: 0, scope: !2794, inlinedAt: !3990)
!3990 = distinct !DILocation(line: 1019, column: 3, scope: !3887, inlinedAt: !3984)
!3991 = !DILocation(line: 174, column: 12, scope: !2794, inlinedAt: !3990)
!3992 = distinct !DIAssignID()
!3993 = !DILocation(line: 175, column: 8, scope: !2807, inlinedAt: !3990)
!3994 = !DILocation(line: 175, column: 19, scope: !2807, inlinedAt: !3990)
!3995 = !DILocation(line: 176, column: 5, scope: !2807, inlinedAt: !3990)
!3996 = !DILocation(line: 177, column: 6, scope: !2794, inlinedAt: !3990)
!3997 = !DILocation(line: 177, column: 17, scope: !2794, inlinedAt: !3990)
!3998 = distinct !DIAssignID()
!3999 = !DILocation(line: 178, column: 6, scope: !2794, inlinedAt: !3990)
!4000 = !DILocation(line: 178, column: 18, scope: !2794, inlinedAt: !3990)
!4001 = distinct !DIAssignID()
!4002 = !DILocation(line: 1020, column: 10, scope: !3887, inlinedAt: !3984)
!4003 = !DILocation(line: 1021, column: 1, scope: !3887, inlinedAt: !3984)
!4004 = !DILocation(line: 1034, column: 3, scope: !3973)
!4005 = distinct !DISubprogram(name: "quote_n_mem", scope: !643, file: !643, line: 1049, type: !4006, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !4008)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!265, !260, !265, !262}
!4008 = !{!4009, !4010, !4011}
!4009 = !DILocalVariable(name: "n", arg: 1, scope: !4005, file: !643, line: 1049, type: !260)
!4010 = !DILocalVariable(name: "arg", arg: 2, scope: !4005, file: !643, line: 1049, type: !265)
!4011 = !DILocalVariable(name: "argsize", arg: 3, scope: !4005, file: !643, line: 1049, type: !262)
!4012 = !DILocation(line: 0, scope: !4005)
!4013 = !DILocation(line: 1051, column: 10, scope: !4005)
!4014 = !DILocation(line: 1051, column: 3, scope: !4005)
!4015 = distinct !DISubprogram(name: "quote_mem", scope: !643, file: !643, line: 1055, type: !4016, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !4018)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!265, !265, !262}
!4018 = !{!4019, !4020}
!4019 = !DILocalVariable(name: "arg", arg: 1, scope: !4015, file: !643, line: 1055, type: !265)
!4020 = !DILocalVariable(name: "argsize", arg: 2, scope: !4015, file: !643, line: 1055, type: !262)
!4021 = !DILocation(line: 0, scope: !4015)
!4022 = !DILocation(line: 0, scope: !4005, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 1057, column: 10, scope: !4015)
!4024 = !DILocation(line: 1051, column: 10, scope: !4005, inlinedAt: !4023)
!4025 = !DILocation(line: 1057, column: 3, scope: !4015)
!4026 = distinct !DISubprogram(name: "quote_n", scope: !643, file: !643, line: 1061, type: !4027, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !4029)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!265, !260, !265}
!4029 = !{!4030, !4031}
!4030 = !DILocalVariable(name: "n", arg: 1, scope: !4026, file: !643, line: 1061, type: !260)
!4031 = !DILocalVariable(name: "arg", arg: 2, scope: !4026, file: !643, line: 1061, type: !265)
!4032 = !DILocation(line: 0, scope: !4026)
!4033 = !DILocation(line: 0, scope: !4005, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 1063, column: 10, scope: !4026)
!4035 = !DILocation(line: 1051, column: 10, scope: !4005, inlinedAt: !4034)
!4036 = !DILocation(line: 1063, column: 3, scope: !4026)
!4037 = distinct !DISubprogram(name: "quote", scope: !643, file: !643, line: 1067, type: !2313, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !4038)
!4038 = !{!4039}
!4039 = !DILocalVariable(name: "arg", arg: 1, scope: !4037, file: !643, line: 1067, type: !265)
!4040 = !DILocation(line: 0, scope: !4037)
!4041 = !DILocation(line: 0, scope: !4026, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 1069, column: 10, scope: !4037)
!4043 = !DILocation(line: 0, scope: !4005, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 1063, column: 10, scope: !4026, inlinedAt: !4042)
!4045 = !DILocation(line: 1051, column: 10, scope: !4005, inlinedAt: !4044)
!4046 = !DILocation(line: 1069, column: 3, scope: !4037)
!4047 = distinct !DISubprogram(name: "strintcmp", scope: !876, file: !876, line: 31, type: !1186, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4048)
!4048 = !{!4049, !4050}
!4049 = !DILocalVariable(name: "a", arg: 1, scope: !4047, file: !876, line: 31, type: !265)
!4050 = !DILocalVariable(name: "b", arg: 2, scope: !4047, file: !876, line: 31, type: !265)
!4051 = !DILocation(line: 0, scope: !4047)
!4052 = !DILocalVariable(name: "a", arg: 1, scope: !4053, file: !4054, line: 105, type: !265)
!4053 = distinct !DISubprogram(name: "numcompare", scope: !4054, file: !4054, line: 105, type: !4055, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4057)
!4054 = !DIFile(filename: "lib/strnumcmp-in.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f69f23aa922f1f0bf768a1237830bd5f")
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!260, !265, !265, !260, !260}
!4057 = !{!4052, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065}
!4058 = !DILocalVariable(name: "b", arg: 2, scope: !4053, file: !4054, line: 105, type: !265)
!4059 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !4053, file: !4054, line: 106, type: !260)
!4060 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !4053, file: !4054, line: 106, type: !260)
!4061 = !DILocalVariable(name: "tmpa", scope: !4053, file: !4054, line: 108, type: !4)
!4062 = !DILocalVariable(name: "tmpb", scope: !4053, file: !4054, line: 109, type: !4)
!4063 = !DILocalVariable(name: "tmp", scope: !4053, file: !4054, line: 110, type: !260)
!4064 = !DILocalVariable(name: "log_a", scope: !4053, file: !4054, line: 111, type: !262)
!4065 = !DILocalVariable(name: "log_b", scope: !4053, file: !4054, line: 112, type: !262)
!4066 = !DILocation(line: 0, scope: !4053, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 33, column: 10, scope: !4047)
!4068 = !DILocation(line: 108, column: 15, scope: !4053, inlinedAt: !4067)
!4069 = !DILocation(line: 109, column: 15, scope: !4053, inlinedAt: !4067)
!4070 = !DILocation(line: 114, column: 12, scope: !4071, inlinedAt: !4067)
!4071 = distinct !DILexicalBlock(scope: !4053, file: !4054, line: 114, column: 7)
!4072 = !DILocation(line: 114, column: 7, scope: !4053, inlinedAt: !4067)
!4073 = !DILocation(line: 116, column: 7, scope: !4074, inlinedAt: !4067)
!4074 = distinct !DILexicalBlock(scope: !4071, file: !4054, line: 115, column: 5)
!4075 = !DILocation(line: 117, column: 17, scope: !4074, inlinedAt: !4067)
!4076 = !DILocation(line: 117, column: 16, scope: !4074, inlinedAt: !4067)
!4077 = !DILocation(line: 118, column: 19, scope: !4074, inlinedAt: !4067)
!4078 = !DILocation(line: 117, column: 9, scope: !4074, inlinedAt: !4067)
!4079 = distinct !{!4079, !4073, !4080, !1104}
!4080 = !DILocation(line: 118, column: 59, scope: !4074, inlinedAt: !4067)
!4081 = !DILocation(line: 119, column: 16, scope: !4082, inlinedAt: !4067)
!4082 = distinct !DILexicalBlock(scope: !4074, file: !4054, line: 119, column: 11)
!4083 = !DILocation(line: 119, column: 11, scope: !4074, inlinedAt: !4067)
!4084 = !DILocation(line: 135, column: 7, scope: !4074, inlinedAt: !4067)
!4085 = !DILocation(line: 125, column: 26, scope: !4086, inlinedAt: !4067)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !4054, line: 125, column: 15)
!4087 = distinct !DILexicalBlock(scope: !4082, file: !4054, line: 120, column: 9)
!4088 = !DILocalVariable(name: "c", arg: 1, scope: !4089, file: !4090, line: 233, type: !260)
!4089 = distinct !DISubprogram(name: "c_isdigit", scope: !4090, file: !4090, line: 233, type: !1256, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4091)
!4090 = !DIFile(filename: "lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!4091 = !{!4088}
!4092 = !DILocation(line: 0, scope: !4089, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 125, column: 15, scope: !4086, inlinedAt: !4067)
!4094 = !DILocation(line: 235, column: 3, scope: !4089, inlinedAt: !4093)
!4095 = !DILocation(line: 125, column: 15, scope: !4087, inlinedAt: !4067)
!4096 = !DILocation(line: 127, column: 23, scope: !4087, inlinedAt: !4067)
!4097 = !DILocation(line: 127, column: 11, scope: !4087, inlinedAt: !4067)
!4098 = !DILocation(line: 128, column: 21, scope: !4087, inlinedAt: !4067)
!4099 = !DILocation(line: 128, column: 20, scope: !4087, inlinedAt: !4067)
!4100 = distinct !{!4100, !4097, !4101, !1104}
!4101 = !DILocation(line: 128, column: 23, scope: !4087, inlinedAt: !4067)
!4102 = !DILocation(line: 133, column: 31, scope: !4087, inlinedAt: !4067)
!4103 = !DILocation(line: 0, scope: !4089, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 133, column: 20, scope: !4087, inlinedAt: !4067)
!4105 = !DILocation(line: 235, column: 3, scope: !4089, inlinedAt: !4104)
!4106 = !DILocation(line: 133, column: 20, scope: !4087, inlinedAt: !4067)
!4107 = !DILocation(line: 133, column: 11, scope: !4087, inlinedAt: !4067)
!4108 = !DILocation(line: 136, column: 17, scope: !4074, inlinedAt: !4067)
!4109 = !DILocation(line: 136, column: 16, scope: !4074, inlinedAt: !4067)
!4110 = !DILocation(line: 137, column: 19, scope: !4074, inlinedAt: !4067)
!4111 = !DILocation(line: 136, column: 9, scope: !4074, inlinedAt: !4067)
!4112 = distinct !{!4112, !4084, !4113, !1104}
!4113 = !DILocation(line: 137, column: 59, scope: !4074, inlinedAt: !4067)
!4114 = !DILocation(line: 139, column: 14, scope: !4074, inlinedAt: !4067)
!4115 = !DILocation(line: 139, column: 19, scope: !4074, inlinedAt: !4067)
!4116 = !DILocation(line: 0, scope: !4089, inlinedAt: !4117)
!4117 = distinct !DILocation(line: 139, column: 30, scope: !4074, inlinedAt: !4067)
!4118 = !DILocation(line: 139, column: 27, scope: !4074, inlinedAt: !4067)
!4119 = !DILocation(line: 139, column: 7, scope: !4074, inlinedAt: !4067)
!4120 = !DILocation(line: 142, column: 21, scope: !4121, inlinedAt: !4067)
!4121 = distinct !DILexicalBlock(scope: !4074, file: !4054, line: 140, column: 9)
!4122 = !DILocation(line: 142, column: 20, scope: !4121, inlinedAt: !4067)
!4123 = !DILocation(line: 145, column: 21, scope: !4121, inlinedAt: !4067)
!4124 = !DILocation(line: 145, column: 20, scope: !4121, inlinedAt: !4067)
!4125 = distinct !{!4125, !4119, !4126, !1104}
!4126 = !DILocation(line: 147, column: 9, scope: !4074, inlinedAt: !4067)
!4127 = !DILocation(line: 139, column: 22, scope: !4074, inlinedAt: !4067)
!4128 = !DILocation(line: 235, column: 3, scope: !4089, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 155, column: 23, scope: !4130, inlinedAt: !4067)
!4130 = distinct !DILexicalBlock(scope: !4131, file: !4054, line: 155, column: 7)
!4131 = distinct !DILexicalBlock(scope: !4074, file: !4054, line: 155, column: 7)
!4132 = !DILocation(line: 0, scope: !4074, inlinedAt: !4067)
!4133 = !DILocation(line: 153, column: 18, scope: !4074, inlinedAt: !4067)
!4134 = !DILocation(line: 0, scope: !4089, inlinedAt: !4129)
!4135 = !DILocation(line: 155, column: 7, scope: !4131, inlinedAt: !4067)
!4136 = !DILocation(line: 155, column: 41, scope: !4130, inlinedAt: !4067)
!4137 = !DILocation(line: 235, column: 3, scope: !4089, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 160, column: 23, scope: !4139, inlinedAt: !4067)
!4139 = distinct !DILexicalBlock(scope: !4140, file: !4054, line: 160, column: 7)
!4140 = distinct !DILexicalBlock(scope: !4074, file: !4054, line: 160, column: 7)
!4141 = !DILocation(line: 155, scope: !4131, inlinedAt: !4067)
!4142 = !DILocation(line: 0, scope: !4089, inlinedAt: !4138)
!4143 = !DILocation(line: 160, column: 7, scope: !4140, inlinedAt: !4067)
!4144 = !DILocation(line: 157, column: 19, scope: !4130, inlinedAt: !4067)
!4145 = !DILocation(line: 157, column: 18, scope: !4130, inlinedAt: !4067)
!4146 = !DILocation(line: 155, column: 34, scope: !4130, inlinedAt: !4067)
!4147 = distinct !{!4147, !4135, !4148, !1104}
!4148 = !DILocation(line: 158, column: 37, scope: !4131, inlinedAt: !4067)
!4149 = !DILocation(line: 162, column: 19, scope: !4139, inlinedAt: !4067)
!4150 = !DILocation(line: 162, column: 18, scope: !4139, inlinedAt: !4067)
!4151 = !DILocation(line: 160, column: 41, scope: !4139, inlinedAt: !4067)
!4152 = !DILocation(line: 160, column: 34, scope: !4139, inlinedAt: !4067)
!4153 = distinct !{!4153, !4143, !4154, !1104}
!4154 = !DILocation(line: 163, column: 37, scope: !4140, inlinedAt: !4067)
!4155 = !DILocation(line: 165, column: 17, scope: !4156, inlinedAt: !4067)
!4156 = distinct !DILexicalBlock(scope: !4074, file: !4054, line: 165, column: 11)
!4157 = !DILocation(line: 160, scope: !4140, inlinedAt: !4067)
!4158 = !DILocation(line: 165, column: 11, scope: !4074, inlinedAt: !4067)
!4159 = !DILocation(line: 166, column: 22, scope: !4156, inlinedAt: !4067)
!4160 = !DILocation(line: 166, column: 16, scope: !4156, inlinedAt: !4067)
!4161 = !DILocation(line: 166, column: 9, scope: !4156, inlinedAt: !4067)
!4162 = !DILocation(line: 168, column: 12, scope: !4163, inlinedAt: !4067)
!4163 = distinct !DILexicalBlock(scope: !4074, file: !4054, line: 168, column: 11)
!4164 = !DILocation(line: 173, column: 17, scope: !4165, inlinedAt: !4067)
!4165 = distinct !DILexicalBlock(scope: !4071, file: !4054, line: 173, column: 12)
!4166 = !DILocation(line: 173, column: 12, scope: !4071, inlinedAt: !4067)
!4167 = !DILocation(line: 175, column: 7, scope: !4168, inlinedAt: !4067)
!4168 = distinct !DILexicalBlock(scope: !4165, file: !4054, line: 174, column: 5)
!4169 = !DILocation(line: 194, column: 19, scope: !4170, inlinedAt: !4067)
!4170 = distinct !DILexicalBlock(scope: !4165, file: !4054, line: 193, column: 5)
!4171 = !DILocation(line: 194, column: 7, scope: !4170, inlinedAt: !4067)
!4172 = !DILocation(line: 176, column: 17, scope: !4168, inlinedAt: !4067)
!4173 = !DILocation(line: 176, column: 16, scope: !4168, inlinedAt: !4067)
!4174 = !DILocation(line: 177, column: 19, scope: !4168, inlinedAt: !4067)
!4175 = !DILocation(line: 176, column: 9, scope: !4168, inlinedAt: !4067)
!4176 = distinct !{!4176, !4167, !4177, !1104}
!4177 = !DILocation(line: 177, column: 59, scope: !4168, inlinedAt: !4067)
!4178 = !DILocation(line: 182, column: 22, scope: !4179, inlinedAt: !4067)
!4179 = distinct !DILexicalBlock(scope: !4168, file: !4054, line: 182, column: 11)
!4180 = !DILocation(line: 0, scope: !4089, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 182, column: 11, scope: !4179, inlinedAt: !4067)
!4182 = !DILocation(line: 235, column: 3, scope: !4089, inlinedAt: !4181)
!4183 = !DILocation(line: 182, column: 11, scope: !4168, inlinedAt: !4067)
!4184 = !DILocation(line: 184, column: 19, scope: !4168, inlinedAt: !4067)
!4185 = !DILocation(line: 184, column: 7, scope: !4168, inlinedAt: !4067)
!4186 = !DILocation(line: 185, column: 17, scope: !4168, inlinedAt: !4067)
!4187 = !DILocation(line: 185, column: 16, scope: !4168, inlinedAt: !4067)
!4188 = distinct !{!4188, !4185, !4189, !1104}
!4189 = !DILocation(line: 185, column: 19, scope: !4168, inlinedAt: !4067)
!4190 = !DILocation(line: 190, column: 25, scope: !4168, inlinedAt: !4067)
!4191 = !DILocation(line: 0, scope: !4089, inlinedAt: !4192)
!4192 = distinct !DILocation(line: 190, column: 14, scope: !4168, inlinedAt: !4067)
!4193 = !DILocation(line: 235, column: 3, scope: !4089, inlinedAt: !4192)
!4194 = !DILocation(line: 190, column: 14, scope: !4168, inlinedAt: !4067)
!4195 = !DILocation(line: 190, column: 7, scope: !4168, inlinedAt: !4067)
!4196 = !DILocation(line: 195, column: 17, scope: !4170, inlinedAt: !4067)
!4197 = !DILocation(line: 195, column: 16, scope: !4170, inlinedAt: !4067)
!4198 = !DILocation(line: 196, column: 19, scope: !4170, inlinedAt: !4067)
!4199 = !DILocation(line: 196, column: 7, scope: !4170, inlinedAt: !4067)
!4200 = distinct !{!4200, !4171, !4201, !1104}
!4201 = !DILocation(line: 195, column: 19, scope: !4170, inlinedAt: !4067)
!4202 = !DILocation(line: 197, column: 17, scope: !4170, inlinedAt: !4067)
!4203 = !DILocation(line: 197, column: 16, scope: !4170, inlinedAt: !4067)
!4204 = !DILocation(line: 199, column: 14, scope: !4170, inlinedAt: !4067)
!4205 = !DILocation(line: 199, column: 19, scope: !4170, inlinedAt: !4067)
!4206 = !DILocation(line: 0, scope: !4089, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 199, column: 30, scope: !4170, inlinedAt: !4067)
!4208 = !DILocation(line: 199, column: 27, scope: !4170, inlinedAt: !4067)
!4209 = !DILocation(line: 199, column: 7, scope: !4170, inlinedAt: !4067)
!4210 = distinct !{!4210, !4199, !4211, !1104}
!4211 = !DILocation(line: 197, column: 19, scope: !4170, inlinedAt: !4067)
!4212 = !DILocation(line: 202, column: 21, scope: !4213, inlinedAt: !4067)
!4213 = distinct !DILexicalBlock(scope: !4170, file: !4054, line: 200, column: 9)
!4214 = !DILocation(line: 202, column: 20, scope: !4213, inlinedAt: !4067)
!4215 = !DILocation(line: 205, column: 21, scope: !4213, inlinedAt: !4067)
!4216 = !DILocation(line: 205, column: 20, scope: !4213, inlinedAt: !4067)
!4217 = distinct !{!4217, !4209, !4218, !1104}
!4218 = !DILocation(line: 207, column: 9, scope: !4170, inlinedAt: !4067)
!4219 = !DILocation(line: 199, column: 22, scope: !4170, inlinedAt: !4067)
!4220 = !DILocation(line: 235, column: 3, scope: !4089, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 215, column: 23, scope: !4222, inlinedAt: !4067)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !4054, line: 215, column: 7)
!4223 = distinct !DILexicalBlock(scope: !4170, file: !4054, line: 215, column: 7)
!4224 = !DILocation(line: 213, column: 18, scope: !4170, inlinedAt: !4067)
!4225 = !DILocation(line: 0, scope: !4089, inlinedAt: !4221)
!4226 = !DILocation(line: 215, column: 7, scope: !4223, inlinedAt: !4067)
!4227 = !DILocation(line: 215, column: 41, scope: !4222, inlinedAt: !4067)
!4228 = !DILocation(line: 235, column: 3, scope: !4089, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 220, column: 23, scope: !4230, inlinedAt: !4067)
!4230 = distinct !DILexicalBlock(scope: !4231, file: !4054, line: 220, column: 7)
!4231 = distinct !DILexicalBlock(scope: !4170, file: !4054, line: 220, column: 7)
!4232 = !DILocation(line: 215, scope: !4223, inlinedAt: !4067)
!4233 = !DILocation(line: 0, scope: !4089, inlinedAt: !4229)
!4234 = !DILocation(line: 220, column: 7, scope: !4231, inlinedAt: !4067)
!4235 = !DILocation(line: 217, column: 19, scope: !4222, inlinedAt: !4067)
!4236 = !DILocation(line: 217, column: 18, scope: !4222, inlinedAt: !4067)
!4237 = !DILocation(line: 215, column: 34, scope: !4222, inlinedAt: !4067)
!4238 = distinct !{!4238, !4226, !4239, !1104}
!4239 = !DILocation(line: 218, column: 37, scope: !4223, inlinedAt: !4067)
!4240 = !DILocation(line: 222, column: 19, scope: !4230, inlinedAt: !4067)
!4241 = !DILocation(line: 222, column: 18, scope: !4230, inlinedAt: !4067)
!4242 = !DILocation(line: 220, column: 41, scope: !4230, inlinedAt: !4067)
!4243 = !DILocation(line: 220, column: 34, scope: !4230, inlinedAt: !4067)
!4244 = distinct !{!4244, !4234, !4245, !1104}
!4245 = !DILocation(line: 223, column: 37, scope: !4231, inlinedAt: !4067)
!4246 = !DILocation(line: 225, column: 17, scope: !4247, inlinedAt: !4067)
!4247 = distinct !DILexicalBlock(scope: !4170, file: !4054, line: 225, column: 11)
!4248 = !DILocation(line: 220, scope: !4231, inlinedAt: !4067)
!4249 = !DILocation(line: 225, column: 11, scope: !4170, inlinedAt: !4067)
!4250 = !DILocation(line: 226, column: 22, scope: !4247, inlinedAt: !4067)
!4251 = !DILocation(line: 226, column: 16, scope: !4247, inlinedAt: !4067)
!4252 = !DILocation(line: 226, column: 9, scope: !4247, inlinedAt: !4067)
!4253 = !DILocation(line: 228, column: 12, scope: !4254, inlinedAt: !4067)
!4254 = distinct !DILexicalBlock(scope: !4170, file: !4054, line: 228, column: 11)
!4255 = !DILocation(line: 0, scope: !4170, inlinedAt: !4067)
!4256 = !DILocation(line: 0, scope: !4071, inlinedAt: !4067)
!4257 = !DILocation(line: 33, column: 3, scope: !4047)
!4258 = distinct !DISubprogram(name: "version_etc_arn", scope: !763, file: !763, line: 61, type: !4259, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4296)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{null, !4261, !265, !265, !265, !4295, !262}
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !312, line: 7, baseType: !4263)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !314, line: 49, size: 1728, elements: !4264)
!4264 = !{!4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4263, file: !314, line: 51, baseType: !260, size: 32)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4263, file: !314, line: 54, baseType: !318, size: 64, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4263, file: !314, line: 55, baseType: !318, size: 64, offset: 128)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4263, file: !314, line: 56, baseType: !318, size: 64, offset: 192)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4263, file: !314, line: 57, baseType: !318, size: 64, offset: 256)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4263, file: !314, line: 58, baseType: !318, size: 64, offset: 320)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4263, file: !314, line: 59, baseType: !318, size: 64, offset: 384)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4263, file: !314, line: 60, baseType: !318, size: 64, offset: 448)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4263, file: !314, line: 61, baseType: !318, size: 64, offset: 512)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4263, file: !314, line: 64, baseType: !318, size: 64, offset: 576)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4263, file: !314, line: 65, baseType: !318, size: 64, offset: 640)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4263, file: !314, line: 66, baseType: !318, size: 64, offset: 704)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4263, file: !314, line: 68, baseType: !330, size: 64, offset: 768)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4263, file: !314, line: 70, baseType: !4279, size: 64, offset: 832)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4263, file: !314, line: 72, baseType: !260, size: 32, offset: 896)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4263, file: !314, line: 73, baseType: !260, size: 32, offset: 928)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4263, file: !314, line: 74, baseType: !337, size: 64, offset: 960)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4263, file: !314, line: 77, baseType: !261, size: 16, offset: 1024)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4263, file: !314, line: 78, baseType: !340, size: 8, offset: 1040)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4263, file: !314, line: 79, baseType: !206, size: 8, offset: 1048)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4263, file: !314, line: 81, baseType: !343, size: 64, offset: 1088)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4263, file: !314, line: 89, baseType: !346, size: 64, offset: 1152)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4263, file: !314, line: 91, baseType: !348, size: 64, offset: 1216)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4263, file: !314, line: 92, baseType: !351, size: 64, offset: 1280)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4263, file: !314, line: 93, baseType: !4279, size: 64, offset: 1344)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4263, file: !314, line: 94, baseType: !268, size: 64, offset: 1408)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4263, file: !314, line: 95, baseType: !262, size: 64, offset: 1472)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4263, file: !314, line: 96, baseType: !260, size: 32, offset: 1536)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4263, file: !314, line: 98, baseType: !358, size: 160, offset: 1568)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4302}
!4297 = !DILocalVariable(name: "stream", arg: 1, scope: !4258, file: !763, line: 61, type: !4261)
!4298 = !DILocalVariable(name: "command_name", arg: 2, scope: !4258, file: !763, line: 62, type: !265)
!4299 = !DILocalVariable(name: "package", arg: 3, scope: !4258, file: !763, line: 62, type: !265)
!4300 = !DILocalVariable(name: "version", arg: 4, scope: !4258, file: !763, line: 63, type: !265)
!4301 = !DILocalVariable(name: "authors", arg: 5, scope: !4258, file: !763, line: 64, type: !4295)
!4302 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4258, file: !763, line: 64, type: !262)
!4303 = !DILocation(line: 0, scope: !4258)
!4304 = !DILocation(line: 66, column: 7, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4258, file: !763, line: 66, column: 7)
!4306 = !DILocation(line: 66, column: 7, scope: !4258)
!4307 = !DILocation(line: 67, column: 5, scope: !4305)
!4308 = !DILocation(line: 69, column: 5, scope: !4305)
!4309 = !DILocation(line: 83, column: 3, scope: !4258)
!4310 = !DILocation(line: 85, column: 3, scope: !4258)
!4311 = !DILocation(line: 88, column: 3, scope: !4258)
!4312 = !DILocation(line: 95, column: 3, scope: !4258)
!4313 = !DILocation(line: 97, column: 3, scope: !4258)
!4314 = !DILocation(line: 105, column: 7, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4258, file: !763, line: 98, column: 5)
!4316 = !DILocation(line: 106, column: 7, scope: !4315)
!4317 = !DILocation(line: 109, column: 7, scope: !4315)
!4318 = !DILocation(line: 110, column: 7, scope: !4315)
!4319 = !DILocation(line: 113, column: 7, scope: !4315)
!4320 = !DILocation(line: 115, column: 7, scope: !4315)
!4321 = !DILocation(line: 120, column: 7, scope: !4315)
!4322 = !DILocation(line: 122, column: 7, scope: !4315)
!4323 = !DILocation(line: 127, column: 7, scope: !4315)
!4324 = !DILocation(line: 129, column: 7, scope: !4315)
!4325 = !DILocation(line: 134, column: 7, scope: !4315)
!4326 = !DILocation(line: 137, column: 7, scope: !4315)
!4327 = !DILocation(line: 142, column: 7, scope: !4315)
!4328 = !DILocation(line: 145, column: 7, scope: !4315)
!4329 = !DILocation(line: 150, column: 7, scope: !4315)
!4330 = !DILocation(line: 154, column: 7, scope: !4315)
!4331 = !DILocation(line: 159, column: 7, scope: !4315)
!4332 = !DILocation(line: 163, column: 7, scope: !4315)
!4333 = !DILocation(line: 170, column: 7, scope: !4315)
!4334 = !DILocation(line: 174, column: 7, scope: !4315)
!4335 = !DILocation(line: 176, column: 1, scope: !4258)
!4336 = distinct !DISubprogram(name: "version_etc_ar", scope: !763, file: !763, line: 183, type: !4337, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4339)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{null, !4261, !265, !265, !265, !4295}
!4339 = !{!4340, !4341, !4342, !4343, !4344, !4345}
!4340 = !DILocalVariable(name: "stream", arg: 1, scope: !4336, file: !763, line: 183, type: !4261)
!4341 = !DILocalVariable(name: "command_name", arg: 2, scope: !4336, file: !763, line: 184, type: !265)
!4342 = !DILocalVariable(name: "package", arg: 3, scope: !4336, file: !763, line: 184, type: !265)
!4343 = !DILocalVariable(name: "version", arg: 4, scope: !4336, file: !763, line: 185, type: !265)
!4344 = !DILocalVariable(name: "authors", arg: 5, scope: !4336, file: !763, line: 185, type: !4295)
!4345 = !DILocalVariable(name: "n_authors", scope: !4336, file: !763, line: 187, type: !262)
!4346 = !DILocation(line: 0, scope: !4336)
!4347 = !DILocation(line: 189, column: 8, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4336, file: !763, line: 189, column: 3)
!4349 = !DILocation(line: 189, scope: !4348)
!4350 = !DILocation(line: 189, column: 23, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4348, file: !763, line: 189, column: 3)
!4352 = !DILocation(line: 189, column: 3, scope: !4348)
!4353 = !DILocation(line: 189, column: 52, scope: !4351)
!4354 = distinct !{!4354, !4352, !4355, !1104}
!4355 = !DILocation(line: 190, column: 5, scope: !4348)
!4356 = !DILocation(line: 191, column: 3, scope: !4336)
!4357 = !DILocation(line: 192, column: 1, scope: !4336)
!4358 = distinct !DISubprogram(name: "version_etc_va", scope: !763, file: !763, line: 199, type: !4359, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4371)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{null, !4261, !265, !265, !265, !4361}
!4361 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !591, line: 52, baseType: !4362)
!4362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !593, line: 12, baseType: !4363)
!4363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !763, baseType: !4364)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4365)
!4365 = !{!4366, !4367, !4368, !4369, !4370}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4364, file: !763, line: 192, baseType: !268, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4364, file: !763, line: 192, baseType: !268, size: 64, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4364, file: !763, line: 192, baseType: !268, size: 64, offset: 128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4364, file: !763, line: 192, baseType: !260, size: 32, offset: 192)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4364, file: !763, line: 192, baseType: !260, size: 32, offset: 224)
!4371 = !{!4372, !4373, !4374, !4375, !4376, !4377, !4378}
!4372 = !DILocalVariable(name: "stream", arg: 1, scope: !4358, file: !763, line: 199, type: !4261)
!4373 = !DILocalVariable(name: "command_name", arg: 2, scope: !4358, file: !763, line: 200, type: !265)
!4374 = !DILocalVariable(name: "package", arg: 3, scope: !4358, file: !763, line: 200, type: !265)
!4375 = !DILocalVariable(name: "version", arg: 4, scope: !4358, file: !763, line: 201, type: !265)
!4376 = !DILocalVariable(name: "authors", arg: 5, scope: !4358, file: !763, line: 201, type: !4361)
!4377 = !DILocalVariable(name: "n_authors", scope: !4358, file: !763, line: 203, type: !262)
!4378 = !DILocalVariable(name: "authtab", scope: !4358, file: !763, line: 204, type: !4379)
!4379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 640, elements: !212)
!4380 = distinct !DIAssignID()
!4381 = !DILocation(line: 0, scope: !4358)
!4382 = !DILocation(line: 204, column: 3, scope: !4358)
!4383 = !DILocation(line: 208, column: 35, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4385, file: !763, line: 206, column: 3)
!4385 = distinct !DILexicalBlock(scope: !4358, file: !763, line: 206, column: 3)
!4386 = !DILocation(line: 208, column: 33, scope: !4384)
!4387 = !DILocation(line: 208, column: 67, scope: !4384)
!4388 = !DILocation(line: 206, column: 3, scope: !4385)
!4389 = !DILocation(line: 208, column: 14, scope: !4384)
!4390 = !DILocation(line: 0, scope: !4385)
!4391 = !DILocation(line: 211, column: 3, scope: !4358)
!4392 = !DILocation(line: 213, column: 1, scope: !4358)
!4393 = distinct !DISubprogram(name: "version_etc", scope: !763, file: !763, line: 230, type: !4394, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4396)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{null, !4261, !265, !265, !265, null}
!4396 = !{!4397, !4398, !4399, !4400, !4401}
!4397 = !DILocalVariable(name: "stream", arg: 1, scope: !4393, file: !763, line: 230, type: !4261)
!4398 = !DILocalVariable(name: "command_name", arg: 2, scope: !4393, file: !763, line: 231, type: !265)
!4399 = !DILocalVariable(name: "package", arg: 3, scope: !4393, file: !763, line: 231, type: !265)
!4400 = !DILocalVariable(name: "version", arg: 4, scope: !4393, file: !763, line: 232, type: !265)
!4401 = !DILocalVariable(name: "authors", scope: !4393, file: !763, line: 234, type: !4361)
!4402 = distinct !DIAssignID()
!4403 = !DILocation(line: 0, scope: !4393)
!4404 = !DILocation(line: 234, column: 3, scope: !4393)
!4405 = !DILocation(line: 235, column: 3, scope: !4393)
!4406 = !DILocation(line: 236, column: 3, scope: !4393)
!4407 = !DILocation(line: 237, column: 3, scope: !4393)
!4408 = !DILocation(line: 238, column: 1, scope: !4393)
!4409 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !763, file: !763, line: 241, type: !629, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877)
!4410 = !DILocation(line: 243, column: 3, scope: !4409)
!4411 = !DILocation(line: 248, column: 3, scope: !4409)
!4412 = !DILocation(line: 254, column: 3, scope: !4409)
!4413 = !DILocation(line: 259, column: 3, scope: !4409)
!4414 = !DILocation(line: 261, column: 1, scope: !4409)
!4415 = distinct !DISubprogram(name: "xnrealloc", scope: !4416, file: !4416, line: 147, type: !4417, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4419)
!4416 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!268, !268, !262, !262}
!4419 = !{!4420, !4421, !4422}
!4420 = !DILocalVariable(name: "p", arg: 1, scope: !4415, file: !4416, line: 147, type: !268)
!4421 = !DILocalVariable(name: "n", arg: 2, scope: !4415, file: !4416, line: 147, type: !262)
!4422 = !DILocalVariable(name: "s", arg: 3, scope: !4415, file: !4416, line: 147, type: !262)
!4423 = !DILocation(line: 0, scope: !4415)
!4424 = !DILocalVariable(name: "p", arg: 1, scope: !4425, file: !885, line: 83, type: !268)
!4425 = distinct !DISubprogram(name: "xreallocarray", scope: !885, file: !885, line: 83, type: !4417, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4426)
!4426 = !{!4424, !4427, !4428}
!4427 = !DILocalVariable(name: "n", arg: 2, scope: !4425, file: !885, line: 83, type: !262)
!4428 = !DILocalVariable(name: "s", arg: 3, scope: !4425, file: !885, line: 83, type: !262)
!4429 = !DILocation(line: 0, scope: !4425, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 149, column: 10, scope: !4415)
!4431 = !DILocation(line: 85, column: 25, scope: !4425, inlinedAt: !4430)
!4432 = !DILocalVariable(name: "p", arg: 1, scope: !4433, file: !885, line: 37, type: !268)
!4433 = distinct !DISubprogram(name: "check_nonnull", scope: !885, file: !885, line: 37, type: !4434, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4436)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!268, !268}
!4436 = !{!4432}
!4437 = !DILocation(line: 0, scope: !4433, inlinedAt: !4438)
!4438 = distinct !DILocation(line: 85, column: 10, scope: !4425, inlinedAt: !4430)
!4439 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4438)
!4440 = distinct !DILexicalBlock(scope: !4433, file: !885, line: 39, column: 7)
!4441 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4438)
!4442 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4438)
!4443 = !DILocation(line: 149, column: 3, scope: !4415)
!4444 = !DILocation(line: 0, scope: !4425)
!4445 = !DILocation(line: 85, column: 25, scope: !4425)
!4446 = !DILocation(line: 0, scope: !4433, inlinedAt: !4447)
!4447 = distinct !DILocation(line: 85, column: 10, scope: !4425)
!4448 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4447)
!4449 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4447)
!4450 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4447)
!4451 = !DILocation(line: 85, column: 3, scope: !4425)
!4452 = distinct !DISubprogram(name: "xmalloc", scope: !885, file: !885, line: 47, type: !4453, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4455)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!268, !262}
!4455 = !{!4456}
!4456 = !DILocalVariable(name: "s", arg: 1, scope: !4452, file: !885, line: 47, type: !262)
!4457 = !DILocation(line: 0, scope: !4452)
!4458 = !DILocation(line: 49, column: 25, scope: !4452)
!4459 = !DILocation(line: 0, scope: !4433, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 49, column: 10, scope: !4452)
!4461 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4460)
!4462 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4460)
!4463 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4460)
!4464 = !DILocation(line: 49, column: 3, scope: !4452)
!4465 = !DISubprogram(name: "malloc", scope: !1181, file: !1181, line: 540, type: !4453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4466 = distinct !DISubprogram(name: "ximalloc", scope: !885, file: !885, line: 53, type: !4467, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4469)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!268, !904}
!4469 = !{!4470}
!4470 = !DILocalVariable(name: "s", arg: 1, scope: !4466, file: !885, line: 53, type: !904)
!4471 = !DILocation(line: 0, scope: !4466)
!4472 = !DILocalVariable(name: "s", arg: 1, scope: !4473, file: !4474, line: 55, type: !904)
!4473 = distinct !DISubprogram(name: "imalloc", scope: !4474, file: !4474, line: 55, type: !4467, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4475)
!4474 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4475 = !{!4472}
!4476 = !DILocation(line: 0, scope: !4473, inlinedAt: !4477)
!4477 = distinct !DILocation(line: 55, column: 25, scope: !4466)
!4478 = !DILocation(line: 57, column: 26, scope: !4473, inlinedAt: !4477)
!4479 = !DILocation(line: 0, scope: !4433, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 55, column: 10, scope: !4466)
!4481 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4480)
!4482 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4480)
!4483 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4480)
!4484 = !DILocation(line: 55, column: 3, scope: !4466)
!4485 = distinct !DISubprogram(name: "xcharalloc", scope: !885, file: !885, line: 59, type: !4486, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4488)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!318, !262}
!4488 = !{!4489}
!4489 = !DILocalVariable(name: "n", arg: 1, scope: !4485, file: !885, line: 59, type: !262)
!4490 = !DILocation(line: 0, scope: !4485)
!4491 = !DILocation(line: 0, scope: !4452, inlinedAt: !4492)
!4492 = distinct !DILocation(line: 61, column: 10, scope: !4485)
!4493 = !DILocation(line: 49, column: 25, scope: !4452, inlinedAt: !4492)
!4494 = !DILocation(line: 0, scope: !4433, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 49, column: 10, scope: !4452, inlinedAt: !4492)
!4496 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4495)
!4497 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4495)
!4498 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4495)
!4499 = !DILocation(line: 61, column: 3, scope: !4485)
!4500 = distinct !DISubprogram(name: "xrealloc", scope: !885, file: !885, line: 68, type: !4501, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4503)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!268, !268, !262}
!4503 = !{!4504, !4505}
!4504 = !DILocalVariable(name: "p", arg: 1, scope: !4500, file: !885, line: 68, type: !268)
!4505 = !DILocalVariable(name: "s", arg: 2, scope: !4500, file: !885, line: 68, type: !262)
!4506 = !DILocation(line: 0, scope: !4500)
!4507 = !DILocalVariable(name: "ptr", arg: 1, scope: !4508, file: !4509, line: 2057, type: !268)
!4508 = distinct !DISubprogram(name: "rpl_realloc", scope: !4509, file: !4509, line: 2057, type: !4501, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4510)
!4509 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4510 = !{!4507, !4511}
!4511 = !DILocalVariable(name: "size", arg: 2, scope: !4508, file: !4509, line: 2057, type: !262)
!4512 = !DILocation(line: 0, scope: !4508, inlinedAt: !4513)
!4513 = distinct !DILocation(line: 70, column: 25, scope: !4500)
!4514 = !DILocation(line: 2059, column: 24, scope: !4508, inlinedAt: !4513)
!4515 = !DILocation(line: 2059, column: 10, scope: !4508, inlinedAt: !4513)
!4516 = !DILocation(line: 0, scope: !4433, inlinedAt: !4517)
!4517 = distinct !DILocation(line: 70, column: 10, scope: !4500)
!4518 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4517)
!4519 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4517)
!4520 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4517)
!4521 = !DILocation(line: 70, column: 3, scope: !4500)
!4522 = !DISubprogram(name: "realloc", scope: !1181, file: !1181, line: 551, type: !4501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4523 = distinct !DISubprogram(name: "xirealloc", scope: !885, file: !885, line: 74, type: !4524, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4526)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!268, !268, !904}
!4526 = !{!4527, !4528}
!4527 = !DILocalVariable(name: "p", arg: 1, scope: !4523, file: !885, line: 74, type: !268)
!4528 = !DILocalVariable(name: "s", arg: 2, scope: !4523, file: !885, line: 74, type: !904)
!4529 = !DILocation(line: 0, scope: !4523)
!4530 = !DILocalVariable(name: "p", arg: 1, scope: !4531, file: !4474, line: 66, type: !268)
!4531 = distinct !DISubprogram(name: "irealloc", scope: !4474, file: !4474, line: 66, type: !4524, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4532)
!4532 = !{!4530, !4533}
!4533 = !DILocalVariable(name: "s", arg: 2, scope: !4531, file: !4474, line: 66, type: !904)
!4534 = !DILocation(line: 0, scope: !4531, inlinedAt: !4535)
!4535 = distinct !DILocation(line: 76, column: 25, scope: !4523)
!4536 = !DILocation(line: 0, scope: !4508, inlinedAt: !4537)
!4537 = distinct !DILocation(line: 68, column: 26, scope: !4531, inlinedAt: !4535)
!4538 = !DILocation(line: 2059, column: 24, scope: !4508, inlinedAt: !4537)
!4539 = !DILocation(line: 2059, column: 10, scope: !4508, inlinedAt: !4537)
!4540 = !DILocation(line: 0, scope: !4433, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 76, column: 10, scope: !4523)
!4542 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4541)
!4543 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4541)
!4544 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4541)
!4545 = !DILocation(line: 76, column: 3, scope: !4523)
!4546 = distinct !DISubprogram(name: "xireallocarray", scope: !885, file: !885, line: 89, type: !4547, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4549)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!268, !268, !904, !904}
!4549 = !{!4550, !4551, !4552}
!4550 = !DILocalVariable(name: "p", arg: 1, scope: !4546, file: !885, line: 89, type: !268)
!4551 = !DILocalVariable(name: "n", arg: 2, scope: !4546, file: !885, line: 89, type: !904)
!4552 = !DILocalVariable(name: "s", arg: 3, scope: !4546, file: !885, line: 89, type: !904)
!4553 = !DILocation(line: 0, scope: !4546)
!4554 = !DILocalVariable(name: "p", arg: 1, scope: !4555, file: !4474, line: 98, type: !268)
!4555 = distinct !DISubprogram(name: "ireallocarray", scope: !4474, file: !4474, line: 98, type: !4547, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4556)
!4556 = !{!4554, !4557, !4558}
!4557 = !DILocalVariable(name: "n", arg: 2, scope: !4555, file: !4474, line: 98, type: !904)
!4558 = !DILocalVariable(name: "s", arg: 3, scope: !4555, file: !4474, line: 98, type: !904)
!4559 = !DILocation(line: 0, scope: !4555, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 91, column: 25, scope: !4546)
!4561 = !DILocation(line: 101, column: 13, scope: !4555, inlinedAt: !4560)
!4562 = !DILocation(line: 0, scope: !4433, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 91, column: 10, scope: !4546)
!4564 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4563)
!4565 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4563)
!4566 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4563)
!4567 = !DILocation(line: 91, column: 3, scope: !4546)
!4568 = distinct !DISubprogram(name: "xnmalloc", scope: !885, file: !885, line: 98, type: !4569, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4571)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!268, !262, !262}
!4571 = !{!4572, !4573}
!4572 = !DILocalVariable(name: "n", arg: 1, scope: !4568, file: !885, line: 98, type: !262)
!4573 = !DILocalVariable(name: "s", arg: 2, scope: !4568, file: !885, line: 98, type: !262)
!4574 = !DILocation(line: 0, scope: !4568)
!4575 = !DILocation(line: 0, scope: !4425, inlinedAt: !4576)
!4576 = distinct !DILocation(line: 100, column: 10, scope: !4568)
!4577 = !DILocation(line: 85, column: 25, scope: !4425, inlinedAt: !4576)
!4578 = !DILocation(line: 0, scope: !4433, inlinedAt: !4579)
!4579 = distinct !DILocation(line: 85, column: 10, scope: !4425, inlinedAt: !4576)
!4580 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4579)
!4581 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4579)
!4582 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4579)
!4583 = !DILocation(line: 100, column: 3, scope: !4568)
!4584 = distinct !DISubprogram(name: "xinmalloc", scope: !885, file: !885, line: 104, type: !4585, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4587)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!268, !904, !904}
!4587 = !{!4588, !4589}
!4588 = !DILocalVariable(name: "n", arg: 1, scope: !4584, file: !885, line: 104, type: !904)
!4589 = !DILocalVariable(name: "s", arg: 2, scope: !4584, file: !885, line: 104, type: !904)
!4590 = !DILocation(line: 0, scope: !4584)
!4591 = !DILocation(line: 0, scope: !4546, inlinedAt: !4592)
!4592 = distinct !DILocation(line: 106, column: 10, scope: !4584)
!4593 = !DILocation(line: 0, scope: !4555, inlinedAt: !4594)
!4594 = distinct !DILocation(line: 91, column: 25, scope: !4546, inlinedAt: !4592)
!4595 = !DILocation(line: 101, column: 13, scope: !4555, inlinedAt: !4594)
!4596 = !DILocation(line: 0, scope: !4433, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 91, column: 10, scope: !4546, inlinedAt: !4592)
!4598 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4597)
!4599 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4597)
!4600 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4597)
!4601 = !DILocation(line: 106, column: 3, scope: !4584)
!4602 = distinct !DISubprogram(name: "x2realloc", scope: !885, file: !885, line: 116, type: !4603, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4605)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!268, !268, !891}
!4605 = !{!4606, !4607}
!4606 = !DILocalVariable(name: "p", arg: 1, scope: !4602, file: !885, line: 116, type: !268)
!4607 = !DILocalVariable(name: "ps", arg: 2, scope: !4602, file: !885, line: 116, type: !891)
!4608 = !DILocation(line: 0, scope: !4602)
!4609 = !DILocation(line: 0, scope: !888, inlinedAt: !4610)
!4610 = distinct !DILocation(line: 118, column: 10, scope: !4602)
!4611 = !DILocation(line: 178, column: 14, scope: !888, inlinedAt: !4610)
!4612 = !DILocation(line: 180, column: 9, scope: !4613, inlinedAt: !4610)
!4613 = distinct !DILexicalBlock(scope: !888, file: !885, line: 180, column: 7)
!4614 = !DILocation(line: 180, column: 7, scope: !888, inlinedAt: !4610)
!4615 = !DILocation(line: 182, column: 13, scope: !4616, inlinedAt: !4610)
!4616 = distinct !DILexicalBlock(scope: !4617, file: !885, line: 182, column: 11)
!4617 = distinct !DILexicalBlock(scope: !4613, file: !885, line: 181, column: 5)
!4618 = !DILocation(line: 182, column: 11, scope: !4617, inlinedAt: !4610)
!4619 = !DILocation(line: 197, column: 11, scope: !4620, inlinedAt: !4610)
!4620 = distinct !DILexicalBlock(scope: !4621, file: !885, line: 197, column: 11)
!4621 = distinct !DILexicalBlock(scope: !4613, file: !885, line: 195, column: 5)
!4622 = !DILocation(line: 197, column: 11, scope: !4621, inlinedAt: !4610)
!4623 = !DILocation(line: 198, column: 9, scope: !4620, inlinedAt: !4610)
!4624 = !DILocation(line: 0, scope: !4425, inlinedAt: !4625)
!4625 = distinct !DILocation(line: 201, column: 7, scope: !888, inlinedAt: !4610)
!4626 = !DILocation(line: 85, column: 25, scope: !4425, inlinedAt: !4625)
!4627 = !DILocation(line: 0, scope: !4433, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 85, column: 10, scope: !4425, inlinedAt: !4625)
!4629 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4628)
!4630 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4628)
!4631 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4628)
!4632 = !DILocation(line: 202, column: 7, scope: !888, inlinedAt: !4610)
!4633 = !DILocation(line: 118, column: 3, scope: !4602)
!4634 = !DILocation(line: 0, scope: !888)
!4635 = !DILocation(line: 178, column: 14, scope: !888)
!4636 = !DILocation(line: 180, column: 9, scope: !4613)
!4637 = !DILocation(line: 180, column: 7, scope: !888)
!4638 = !DILocation(line: 182, column: 13, scope: !4616)
!4639 = !DILocation(line: 182, column: 11, scope: !4617)
!4640 = !DILocation(line: 190, column: 30, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4616, file: !885, line: 183, column: 9)
!4642 = !DILocation(line: 191, column: 16, scope: !4641)
!4643 = !DILocation(line: 191, column: 13, scope: !4641)
!4644 = !DILocation(line: 192, column: 9, scope: !4641)
!4645 = !DILocation(line: 197, column: 11, scope: !4620)
!4646 = !DILocation(line: 197, column: 11, scope: !4621)
!4647 = !DILocation(line: 198, column: 9, scope: !4620)
!4648 = !DILocation(line: 0, scope: !4425, inlinedAt: !4649)
!4649 = distinct !DILocation(line: 201, column: 7, scope: !888)
!4650 = !DILocation(line: 85, column: 25, scope: !4425, inlinedAt: !4649)
!4651 = !DILocation(line: 0, scope: !4433, inlinedAt: !4652)
!4652 = distinct !DILocation(line: 85, column: 10, scope: !4425, inlinedAt: !4649)
!4653 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4652)
!4654 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4652)
!4655 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4652)
!4656 = !DILocation(line: 202, column: 7, scope: !888)
!4657 = !DILocation(line: 203, column: 3, scope: !888)
!4658 = !DILocation(line: 0, scope: !900)
!4659 = !DILocation(line: 230, column: 14, scope: !900)
!4660 = !DILocation(line: 238, column: 7, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !900, file: !885, line: 238, column: 7)
!4662 = !DILocation(line: 238, column: 7, scope: !900)
!4663 = !DILocation(line: 240, column: 9, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !900, file: !885, line: 240, column: 7)
!4665 = !DILocation(line: 240, column: 18, scope: !4664)
!4666 = !DILocation(line: 253, column: 8, scope: !900)
!4667 = !DILocation(line: 256, column: 7, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !900, file: !885, line: 256, column: 7)
!4669 = !DILocation(line: 256, column: 7, scope: !900)
!4670 = !DILocation(line: 258, column: 27, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4668, file: !885, line: 257, column: 5)
!4672 = !DILocation(line: 259, column: 32, scope: !4671)
!4673 = !DILocation(line: 260, column: 5, scope: !4671)
!4674 = !DILocation(line: 262, column: 9, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !900, file: !885, line: 262, column: 7)
!4676 = !DILocation(line: 262, column: 7, scope: !900)
!4677 = !DILocation(line: 263, column: 9, scope: !4675)
!4678 = !DILocation(line: 263, column: 5, scope: !4675)
!4679 = !DILocation(line: 264, column: 9, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !900, file: !885, line: 264, column: 7)
!4681 = !DILocation(line: 264, column: 14, scope: !4680)
!4682 = !DILocation(line: 265, column: 7, scope: !4680)
!4683 = !DILocation(line: 265, column: 11, scope: !4680)
!4684 = !DILocation(line: 266, column: 11, scope: !4680)
!4685 = !DILocation(line: 267, column: 14, scope: !4680)
!4686 = !DILocation(line: 264, column: 7, scope: !900)
!4687 = !DILocation(line: 268, column: 5, scope: !4680)
!4688 = !DILocation(line: 0, scope: !4500, inlinedAt: !4689)
!4689 = distinct !DILocation(line: 269, column: 8, scope: !900)
!4690 = !DILocation(line: 0, scope: !4508, inlinedAt: !4691)
!4691 = distinct !DILocation(line: 70, column: 25, scope: !4500, inlinedAt: !4689)
!4692 = !DILocation(line: 2059, column: 24, scope: !4508, inlinedAt: !4691)
!4693 = !DILocation(line: 2059, column: 10, scope: !4508, inlinedAt: !4691)
!4694 = !DILocation(line: 0, scope: !4433, inlinedAt: !4695)
!4695 = distinct !DILocation(line: 70, column: 10, scope: !4500, inlinedAt: !4689)
!4696 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4695)
!4697 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4695)
!4698 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4695)
!4699 = !DILocation(line: 270, column: 7, scope: !900)
!4700 = !DILocation(line: 271, column: 3, scope: !900)
!4701 = distinct !DISubprogram(name: "xzalloc", scope: !885, file: !885, line: 279, type: !4453, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4702)
!4702 = !{!4703}
!4703 = !DILocalVariable(name: "s", arg: 1, scope: !4701, file: !885, line: 279, type: !262)
!4704 = !DILocation(line: 0, scope: !4701)
!4705 = !DILocalVariable(name: "n", arg: 1, scope: !4706, file: !885, line: 294, type: !262)
!4706 = distinct !DISubprogram(name: "xcalloc", scope: !885, file: !885, line: 294, type: !4569, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4707)
!4707 = !{!4705, !4708}
!4708 = !DILocalVariable(name: "s", arg: 2, scope: !4706, file: !885, line: 294, type: !262)
!4709 = !DILocation(line: 0, scope: !4706, inlinedAt: !4710)
!4710 = distinct !DILocation(line: 281, column: 10, scope: !4701)
!4711 = !DILocation(line: 296, column: 25, scope: !4706, inlinedAt: !4710)
!4712 = !DILocation(line: 0, scope: !4433, inlinedAt: !4713)
!4713 = distinct !DILocation(line: 296, column: 10, scope: !4706, inlinedAt: !4710)
!4714 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4713)
!4715 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4713)
!4716 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4713)
!4717 = !DILocation(line: 281, column: 3, scope: !4701)
!4718 = !DISubprogram(name: "calloc", scope: !1181, file: !1181, line: 543, type: !4569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4719 = !DILocation(line: 0, scope: !4706)
!4720 = !DILocation(line: 296, column: 25, scope: !4706)
!4721 = !DILocation(line: 0, scope: !4433, inlinedAt: !4722)
!4722 = distinct !DILocation(line: 296, column: 10, scope: !4706)
!4723 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4722)
!4724 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4722)
!4725 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4722)
!4726 = !DILocation(line: 296, column: 3, scope: !4706)
!4727 = distinct !DISubprogram(name: "xizalloc", scope: !885, file: !885, line: 285, type: !4467, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4728)
!4728 = !{!4729}
!4729 = !DILocalVariable(name: "s", arg: 1, scope: !4727, file: !885, line: 285, type: !904)
!4730 = !DILocation(line: 0, scope: !4727)
!4731 = !DILocalVariable(name: "n", arg: 1, scope: !4732, file: !885, line: 300, type: !904)
!4732 = distinct !DISubprogram(name: "xicalloc", scope: !885, file: !885, line: 300, type: !4585, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4733)
!4733 = !{!4731, !4734}
!4734 = !DILocalVariable(name: "s", arg: 2, scope: !4732, file: !885, line: 300, type: !904)
!4735 = !DILocation(line: 0, scope: !4732, inlinedAt: !4736)
!4736 = distinct !DILocation(line: 287, column: 10, scope: !4727)
!4737 = !DILocalVariable(name: "n", arg: 1, scope: !4738, file: !4474, line: 77, type: !904)
!4738 = distinct !DISubprogram(name: "icalloc", scope: !4474, file: !4474, line: 77, type: !4585, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4739)
!4739 = !{!4737, !4740}
!4740 = !DILocalVariable(name: "s", arg: 2, scope: !4738, file: !4474, line: 77, type: !904)
!4741 = !DILocation(line: 0, scope: !4738, inlinedAt: !4742)
!4742 = distinct !DILocation(line: 302, column: 25, scope: !4732, inlinedAt: !4736)
!4743 = !DILocation(line: 91, column: 10, scope: !4738, inlinedAt: !4742)
!4744 = !DILocation(line: 0, scope: !4433, inlinedAt: !4745)
!4745 = distinct !DILocation(line: 302, column: 10, scope: !4732, inlinedAt: !4736)
!4746 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4745)
!4747 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4745)
!4748 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4745)
!4749 = !DILocation(line: 287, column: 3, scope: !4727)
!4750 = !DILocation(line: 0, scope: !4732)
!4751 = !DILocation(line: 0, scope: !4738, inlinedAt: !4752)
!4752 = distinct !DILocation(line: 302, column: 25, scope: !4732)
!4753 = !DILocation(line: 91, column: 10, scope: !4738, inlinedAt: !4752)
!4754 = !DILocation(line: 0, scope: !4433, inlinedAt: !4755)
!4755 = distinct !DILocation(line: 302, column: 10, scope: !4732)
!4756 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4755)
!4757 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4755)
!4758 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4755)
!4759 = !DILocation(line: 302, column: 3, scope: !4732)
!4760 = distinct !DISubprogram(name: "xmemdup", scope: !885, file: !885, line: 310, type: !4761, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4763)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!268, !1205, !262}
!4763 = !{!4764, !4765}
!4764 = !DILocalVariable(name: "p", arg: 1, scope: !4760, file: !885, line: 310, type: !1205)
!4765 = !DILocalVariable(name: "s", arg: 2, scope: !4760, file: !885, line: 310, type: !262)
!4766 = !DILocation(line: 0, scope: !4760)
!4767 = !DILocation(line: 0, scope: !4452, inlinedAt: !4768)
!4768 = distinct !DILocation(line: 312, column: 18, scope: !4760)
!4769 = !DILocation(line: 49, column: 25, scope: !4452, inlinedAt: !4768)
!4770 = !DILocation(line: 0, scope: !4433, inlinedAt: !4771)
!4771 = distinct !DILocation(line: 49, column: 10, scope: !4452, inlinedAt: !4768)
!4772 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4771)
!4773 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4771)
!4774 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4771)
!4775 = !DILocalVariable(name: "__dest", arg: 1, scope: !4776, file: !2953, line: 26, type: !4779)
!4776 = distinct !DISubprogram(name: "memcpy", scope: !2953, file: !2953, line: 26, type: !4777, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4780)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!268, !4779, !1204, !262}
!4779 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !268)
!4780 = !{!4775, !4781, !4782}
!4781 = !DILocalVariable(name: "__src", arg: 2, scope: !4776, file: !2953, line: 26, type: !1204)
!4782 = !DILocalVariable(name: "__len", arg: 3, scope: !4776, file: !2953, line: 26, type: !262)
!4783 = !DILocation(line: 0, scope: !4776, inlinedAt: !4784)
!4784 = distinct !DILocation(line: 312, column: 10, scope: !4760)
!4785 = !DILocation(line: 29, column: 10, scope: !4776, inlinedAt: !4784)
!4786 = !DILocation(line: 312, column: 3, scope: !4760)
!4787 = distinct !DISubprogram(name: "ximemdup", scope: !885, file: !885, line: 316, type: !4788, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4790)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!268, !1205, !904}
!4790 = !{!4791, !4792}
!4791 = !DILocalVariable(name: "p", arg: 1, scope: !4787, file: !885, line: 316, type: !1205)
!4792 = !DILocalVariable(name: "s", arg: 2, scope: !4787, file: !885, line: 316, type: !904)
!4793 = !DILocation(line: 0, scope: !4787)
!4794 = !DILocation(line: 0, scope: !4466, inlinedAt: !4795)
!4795 = distinct !DILocation(line: 318, column: 18, scope: !4787)
!4796 = !DILocation(line: 0, scope: !4473, inlinedAt: !4797)
!4797 = distinct !DILocation(line: 55, column: 25, scope: !4466, inlinedAt: !4795)
!4798 = !DILocation(line: 57, column: 26, scope: !4473, inlinedAt: !4797)
!4799 = !DILocation(line: 0, scope: !4433, inlinedAt: !4800)
!4800 = distinct !DILocation(line: 55, column: 10, scope: !4466, inlinedAt: !4795)
!4801 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4800)
!4802 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4800)
!4803 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4800)
!4804 = !DILocation(line: 0, scope: !4776, inlinedAt: !4805)
!4805 = distinct !DILocation(line: 318, column: 10, scope: !4787)
!4806 = !DILocation(line: 29, column: 10, scope: !4776, inlinedAt: !4805)
!4807 = !DILocation(line: 318, column: 3, scope: !4787)
!4808 = distinct !DISubprogram(name: "ximemdup0", scope: !885, file: !885, line: 325, type: !4809, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4811)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!318, !1205, !904}
!4811 = !{!4812, !4813, !4814}
!4812 = !DILocalVariable(name: "p", arg: 1, scope: !4808, file: !885, line: 325, type: !1205)
!4813 = !DILocalVariable(name: "s", arg: 2, scope: !4808, file: !885, line: 325, type: !904)
!4814 = !DILocalVariable(name: "result", scope: !4808, file: !885, line: 327, type: !318)
!4815 = !DILocation(line: 0, scope: !4808)
!4816 = !DILocation(line: 327, column: 30, scope: !4808)
!4817 = !DILocation(line: 0, scope: !4466, inlinedAt: !4818)
!4818 = distinct !DILocation(line: 327, column: 18, scope: !4808)
!4819 = !DILocation(line: 0, scope: !4473, inlinedAt: !4820)
!4820 = distinct !DILocation(line: 55, column: 25, scope: !4466, inlinedAt: !4818)
!4821 = !DILocation(line: 57, column: 26, scope: !4473, inlinedAt: !4820)
!4822 = !DILocation(line: 0, scope: !4433, inlinedAt: !4823)
!4823 = distinct !DILocation(line: 55, column: 10, scope: !4466, inlinedAt: !4818)
!4824 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4823)
!4825 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4823)
!4826 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4823)
!4827 = !DILocation(line: 328, column: 3, scope: !4808)
!4828 = !DILocation(line: 328, column: 13, scope: !4808)
!4829 = !DILocation(line: 0, scope: !4776, inlinedAt: !4830)
!4830 = distinct !DILocation(line: 329, column: 10, scope: !4808)
!4831 = !DILocation(line: 29, column: 10, scope: !4776, inlinedAt: !4830)
!4832 = !DILocation(line: 329, column: 3, scope: !4808)
!4833 = distinct !DISubprogram(name: "xstrdup", scope: !885, file: !885, line: 335, type: !1183, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4834)
!4834 = !{!4835}
!4835 = !DILocalVariable(name: "string", arg: 1, scope: !4833, file: !885, line: 335, type: !265)
!4836 = !DILocation(line: 0, scope: !4833)
!4837 = !DILocation(line: 337, column: 27, scope: !4833)
!4838 = !DILocation(line: 337, column: 43, scope: !4833)
!4839 = !DILocation(line: 0, scope: !4760, inlinedAt: !4840)
!4840 = distinct !DILocation(line: 337, column: 10, scope: !4833)
!4841 = !DILocation(line: 0, scope: !4452, inlinedAt: !4842)
!4842 = distinct !DILocation(line: 312, column: 18, scope: !4760, inlinedAt: !4840)
!4843 = !DILocation(line: 49, column: 25, scope: !4452, inlinedAt: !4842)
!4844 = !DILocation(line: 0, scope: !4433, inlinedAt: !4845)
!4845 = distinct !DILocation(line: 49, column: 10, scope: !4452, inlinedAt: !4842)
!4846 = !DILocation(line: 39, column: 8, scope: !4440, inlinedAt: !4845)
!4847 = !DILocation(line: 39, column: 7, scope: !4433, inlinedAt: !4845)
!4848 = !DILocation(line: 40, column: 5, scope: !4440, inlinedAt: !4845)
!4849 = !DILocation(line: 0, scope: !4776, inlinedAt: !4850)
!4850 = distinct !DILocation(line: 312, column: 10, scope: !4760, inlinedAt: !4840)
!4851 = !DILocation(line: 29, column: 10, scope: !4776, inlinedAt: !4850)
!4852 = !DILocation(line: 337, column: 3, scope: !4833)
!4853 = distinct !DISubprogram(name: "xalloc_die", scope: !839, file: !839, line: 32, type: !629, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4854)
!4854 = !{!4855}
!4855 = !DILocalVariable(name: "__errstatus", scope: !4856, file: !839, line: 34, type: !4857)
!4856 = distinct !DILexicalBlock(scope: !4853, file: !839, line: 34, column: 3)
!4857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!4858 = !DILocation(line: 34, column: 3, scope: !4856)
!4859 = !DILocation(line: 0, scope: !4856)
!4860 = !DILocation(line: 40, column: 3, scope: !4853)
!4861 = distinct !DISubprogram(name: "close_stream", scope: !922, file: !922, line: 55, type: !4862, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4898)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!260, !4864}
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !312, line: 7, baseType: !4866)
!4866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !314, line: 49, size: 1728, elements: !4867)
!4867 = !{!4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4866, file: !314, line: 51, baseType: !260, size: 32)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4866, file: !314, line: 54, baseType: !318, size: 64, offset: 64)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4866, file: !314, line: 55, baseType: !318, size: 64, offset: 128)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4866, file: !314, line: 56, baseType: !318, size: 64, offset: 192)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4866, file: !314, line: 57, baseType: !318, size: 64, offset: 256)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4866, file: !314, line: 58, baseType: !318, size: 64, offset: 320)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4866, file: !314, line: 59, baseType: !318, size: 64, offset: 384)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4866, file: !314, line: 60, baseType: !318, size: 64, offset: 448)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4866, file: !314, line: 61, baseType: !318, size: 64, offset: 512)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4866, file: !314, line: 64, baseType: !318, size: 64, offset: 576)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4866, file: !314, line: 65, baseType: !318, size: 64, offset: 640)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4866, file: !314, line: 66, baseType: !318, size: 64, offset: 704)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4866, file: !314, line: 68, baseType: !330, size: 64, offset: 768)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4866, file: !314, line: 70, baseType: !4882, size: 64, offset: 832)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4866, file: !314, line: 72, baseType: !260, size: 32, offset: 896)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4866, file: !314, line: 73, baseType: !260, size: 32, offset: 928)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4866, file: !314, line: 74, baseType: !337, size: 64, offset: 960)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4866, file: !314, line: 77, baseType: !261, size: 16, offset: 1024)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4866, file: !314, line: 78, baseType: !340, size: 8, offset: 1040)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4866, file: !314, line: 79, baseType: !206, size: 8, offset: 1048)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4866, file: !314, line: 81, baseType: !343, size: 64, offset: 1088)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4866, file: !314, line: 89, baseType: !346, size: 64, offset: 1152)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4866, file: !314, line: 91, baseType: !348, size: 64, offset: 1216)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4866, file: !314, line: 92, baseType: !351, size: 64, offset: 1280)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4866, file: !314, line: 93, baseType: !4882, size: 64, offset: 1344)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4866, file: !314, line: 94, baseType: !268, size: 64, offset: 1408)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4866, file: !314, line: 95, baseType: !262, size: 64, offset: 1472)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4866, file: !314, line: 96, baseType: !260, size: 32, offset: 1536)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4866, file: !314, line: 98, baseType: !358, size: 160, offset: 1568)
!4898 = !{!4899, !4900, !4902, !4903}
!4899 = !DILocalVariable(name: "stream", arg: 1, scope: !4861, file: !922, line: 55, type: !4864)
!4900 = !DILocalVariable(name: "some_pending", scope: !4861, file: !922, line: 57, type: !4901)
!4901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!4902 = !DILocalVariable(name: "prev_fail", scope: !4861, file: !922, line: 58, type: !4901)
!4903 = !DILocalVariable(name: "fclose_fail", scope: !4861, file: !922, line: 59, type: !4901)
!4904 = !DILocation(line: 0, scope: !4861)
!4905 = !DILocation(line: 57, column: 30, scope: !4861)
!4906 = !DILocalVariable(name: "__stream", arg: 1, scope: !4907, file: !2558, line: 135, type: !4864)
!4907 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2558, file: !2558, line: 135, type: !4862, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4908)
!4908 = !{!4906}
!4909 = !DILocation(line: 0, scope: !4907, inlinedAt: !4910)
!4910 = distinct !DILocation(line: 58, column: 27, scope: !4861)
!4911 = !DILocation(line: 137, column: 10, scope: !4907, inlinedAt: !4910)
!4912 = !{!2567, !1058, i64 0}
!4913 = !DILocation(line: 58, column: 43, scope: !4861)
!4914 = !DILocation(line: 59, column: 29, scope: !4861)
!4915 = !DILocation(line: 59, column: 45, scope: !4861)
!4916 = !DILocation(line: 69, column: 17, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4861, file: !922, line: 69, column: 7)
!4918 = !DILocation(line: 57, column: 50, scope: !4861)
!4919 = !DILocation(line: 69, column: 33, scope: !4917)
!4920 = !DILocation(line: 69, column: 53, scope: !4917)
!4921 = !DILocation(line: 69, column: 59, scope: !4917)
!4922 = !DILocation(line: 69, column: 7, scope: !4861)
!4923 = !DILocation(line: 71, column: 11, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4917, file: !922, line: 70, column: 5)
!4925 = !DILocation(line: 72, column: 9, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4924, file: !922, line: 71, column: 11)
!4927 = !DILocation(line: 72, column: 15, scope: !4926)
!4928 = !DILocation(line: 77, column: 1, scope: !4861)
!4929 = !DISubprogram(name: "__fpending", scope: !4930, file: !4930, line: 75, type: !4931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4930 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!262, !4864}
!4933 = distinct !DISubprogram(name: "rpl_fclose", scope: !924, file: !924, line: 58, type: !4934, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !923, retainedNodes: !4970)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!260, !4936}
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !312, line: 7, baseType: !4938)
!4938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !314, line: 49, size: 1728, elements: !4939)
!4939 = !{!4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4938, file: !314, line: 51, baseType: !260, size: 32)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4938, file: !314, line: 54, baseType: !318, size: 64, offset: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4938, file: !314, line: 55, baseType: !318, size: 64, offset: 128)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4938, file: !314, line: 56, baseType: !318, size: 64, offset: 192)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4938, file: !314, line: 57, baseType: !318, size: 64, offset: 256)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4938, file: !314, line: 58, baseType: !318, size: 64, offset: 320)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4938, file: !314, line: 59, baseType: !318, size: 64, offset: 384)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4938, file: !314, line: 60, baseType: !318, size: 64, offset: 448)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4938, file: !314, line: 61, baseType: !318, size: 64, offset: 512)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4938, file: !314, line: 64, baseType: !318, size: 64, offset: 576)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4938, file: !314, line: 65, baseType: !318, size: 64, offset: 640)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4938, file: !314, line: 66, baseType: !318, size: 64, offset: 704)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4938, file: !314, line: 68, baseType: !330, size: 64, offset: 768)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4938, file: !314, line: 70, baseType: !4954, size: 64, offset: 832)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4938, file: !314, line: 72, baseType: !260, size: 32, offset: 896)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4938, file: !314, line: 73, baseType: !260, size: 32, offset: 928)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4938, file: !314, line: 74, baseType: !337, size: 64, offset: 960)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4938, file: !314, line: 77, baseType: !261, size: 16, offset: 1024)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4938, file: !314, line: 78, baseType: !340, size: 8, offset: 1040)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4938, file: !314, line: 79, baseType: !206, size: 8, offset: 1048)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4938, file: !314, line: 81, baseType: !343, size: 64, offset: 1088)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4938, file: !314, line: 89, baseType: !346, size: 64, offset: 1152)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4938, file: !314, line: 91, baseType: !348, size: 64, offset: 1216)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4938, file: !314, line: 92, baseType: !351, size: 64, offset: 1280)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4938, file: !314, line: 93, baseType: !4954, size: 64, offset: 1344)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4938, file: !314, line: 94, baseType: !268, size: 64, offset: 1408)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4938, file: !314, line: 95, baseType: !262, size: 64, offset: 1472)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4938, file: !314, line: 96, baseType: !260, size: 32, offset: 1536)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4938, file: !314, line: 98, baseType: !358, size: 160, offset: 1568)
!4970 = !{!4971, !4972, !4973, !4974}
!4971 = !DILocalVariable(name: "fp", arg: 1, scope: !4933, file: !924, line: 58, type: !4936)
!4972 = !DILocalVariable(name: "saved_errno", scope: !4933, file: !924, line: 60, type: !260)
!4973 = !DILocalVariable(name: "fd", scope: !4933, file: !924, line: 63, type: !260)
!4974 = !DILocalVariable(name: "result", scope: !4933, file: !924, line: 74, type: !260)
!4975 = !DILocation(line: 0, scope: !4933)
!4976 = !DILocation(line: 63, column: 12, scope: !4933)
!4977 = !DILocation(line: 64, column: 10, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4933, file: !924, line: 64, column: 7)
!4979 = !DILocation(line: 64, column: 7, scope: !4933)
!4980 = !DILocation(line: 65, column: 12, scope: !4978)
!4981 = !DILocation(line: 65, column: 5, scope: !4978)
!4982 = !DILocation(line: 70, column: 9, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4933, file: !924, line: 70, column: 7)
!4984 = !DILocation(line: 70, column: 23, scope: !4983)
!4985 = !DILocation(line: 70, column: 33, scope: !4983)
!4986 = !DILocation(line: 70, column: 26, scope: !4983)
!4987 = !DILocation(line: 70, column: 59, scope: !4983)
!4988 = !DILocation(line: 71, column: 7, scope: !4983)
!4989 = !DILocation(line: 71, column: 10, scope: !4983)
!4990 = !DILocation(line: 70, column: 7, scope: !4933)
!4991 = !DILocation(line: 100, column: 12, scope: !4933)
!4992 = !DILocation(line: 105, column: 7, scope: !4933)
!4993 = !DILocation(line: 72, column: 19, scope: !4983)
!4994 = !DILocation(line: 105, column: 19, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4933, file: !924, line: 105, column: 7)
!4996 = !DILocation(line: 107, column: 13, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4995, file: !924, line: 106, column: 5)
!4998 = !DILocation(line: 109, column: 5, scope: !4997)
!4999 = !DILocation(line: 112, column: 1, scope: !4933)
!5000 = !DISubprogram(name: "fileno", scope: !591, file: !591, line: 809, type: !4934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5001 = !DISubprogram(name: "fclose", scope: !591, file: !591, line: 178, type: !4934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5002 = !DISubprogram(name: "__freading", scope: !4930, file: !4930, line: 51, type: !4934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5003 = !DISubprogram(name: "lseek", scope: !2370, file: !2370, line: 339, type: !5004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!337, !260, !337, !260}
!5006 = distinct !DISubprogram(name: "rpl_fflush", scope: !926, file: !926, line: 130, type: !5007, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !5043)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{!260, !5009}
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !312, line: 7, baseType: !5011)
!5011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !314, line: 49, size: 1728, elements: !5012)
!5012 = !{!5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5011, file: !314, line: 51, baseType: !260, size: 32)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5011, file: !314, line: 54, baseType: !318, size: 64, offset: 64)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5011, file: !314, line: 55, baseType: !318, size: 64, offset: 128)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5011, file: !314, line: 56, baseType: !318, size: 64, offset: 192)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5011, file: !314, line: 57, baseType: !318, size: 64, offset: 256)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5011, file: !314, line: 58, baseType: !318, size: 64, offset: 320)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5011, file: !314, line: 59, baseType: !318, size: 64, offset: 384)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5011, file: !314, line: 60, baseType: !318, size: 64, offset: 448)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5011, file: !314, line: 61, baseType: !318, size: 64, offset: 512)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5011, file: !314, line: 64, baseType: !318, size: 64, offset: 576)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5011, file: !314, line: 65, baseType: !318, size: 64, offset: 640)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5011, file: !314, line: 66, baseType: !318, size: 64, offset: 704)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5011, file: !314, line: 68, baseType: !330, size: 64, offset: 768)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5011, file: !314, line: 70, baseType: !5027, size: 64, offset: 832)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5011, file: !314, line: 72, baseType: !260, size: 32, offset: 896)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5011, file: !314, line: 73, baseType: !260, size: 32, offset: 928)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5011, file: !314, line: 74, baseType: !337, size: 64, offset: 960)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5011, file: !314, line: 77, baseType: !261, size: 16, offset: 1024)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5011, file: !314, line: 78, baseType: !340, size: 8, offset: 1040)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5011, file: !314, line: 79, baseType: !206, size: 8, offset: 1048)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5011, file: !314, line: 81, baseType: !343, size: 64, offset: 1088)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5011, file: !314, line: 89, baseType: !346, size: 64, offset: 1152)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5011, file: !314, line: 91, baseType: !348, size: 64, offset: 1216)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5011, file: !314, line: 92, baseType: !351, size: 64, offset: 1280)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5011, file: !314, line: 93, baseType: !5027, size: 64, offset: 1344)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5011, file: !314, line: 94, baseType: !268, size: 64, offset: 1408)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5011, file: !314, line: 95, baseType: !262, size: 64, offset: 1472)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5011, file: !314, line: 96, baseType: !260, size: 32, offset: 1536)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5011, file: !314, line: 98, baseType: !358, size: 160, offset: 1568)
!5043 = !{!5044}
!5044 = !DILocalVariable(name: "stream", arg: 1, scope: !5006, file: !926, line: 130, type: !5009)
!5045 = !DILocation(line: 0, scope: !5006)
!5046 = !DILocation(line: 151, column: 14, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5006, file: !926, line: 151, column: 7)
!5048 = !DILocation(line: 151, column: 22, scope: !5047)
!5049 = !DILocation(line: 151, column: 27, scope: !5047)
!5050 = !DILocation(line: 151, column: 7, scope: !5006)
!5051 = !DILocation(line: 152, column: 12, scope: !5047)
!5052 = !DILocation(line: 152, column: 5, scope: !5047)
!5053 = !DILocalVariable(name: "fp", arg: 1, scope: !5054, file: !926, line: 42, type: !5009)
!5054 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !926, file: !926, line: 42, type: !5055, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !5057)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{null, !5009}
!5057 = !{!5053}
!5058 = !DILocation(line: 0, scope: !5054, inlinedAt: !5059)
!5059 = distinct !DILocation(line: 157, column: 3, scope: !5006)
!5060 = !DILocation(line: 44, column: 12, scope: !5061, inlinedAt: !5059)
!5061 = distinct !DILexicalBlock(scope: !5054, file: !926, line: 44, column: 7)
!5062 = !DILocation(line: 44, column: 19, scope: !5061, inlinedAt: !5059)
!5063 = !DILocation(line: 44, column: 7, scope: !5054, inlinedAt: !5059)
!5064 = !DILocation(line: 46, column: 5, scope: !5061, inlinedAt: !5059)
!5065 = !DILocation(line: 159, column: 10, scope: !5006)
!5066 = !DILocation(line: 159, column: 3, scope: !5006)
!5067 = !DILocation(line: 236, column: 1, scope: !5006)
!5068 = !DISubprogram(name: "fflush", scope: !591, file: !591, line: 230, type: !5007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5069 = distinct !DISubprogram(name: "rpl_fseeko", scope: !928, file: !928, line: 28, type: !5070, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !5107)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!260, !5072, !5106, !260}
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !312, line: 7, baseType: !5074)
!5074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !314, line: 49, size: 1728, elements: !5075)
!5075 = !{!5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5074, file: !314, line: 51, baseType: !260, size: 32)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5074, file: !314, line: 54, baseType: !318, size: 64, offset: 64)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5074, file: !314, line: 55, baseType: !318, size: 64, offset: 128)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5074, file: !314, line: 56, baseType: !318, size: 64, offset: 192)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5074, file: !314, line: 57, baseType: !318, size: 64, offset: 256)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5074, file: !314, line: 58, baseType: !318, size: 64, offset: 320)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5074, file: !314, line: 59, baseType: !318, size: 64, offset: 384)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5074, file: !314, line: 60, baseType: !318, size: 64, offset: 448)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5074, file: !314, line: 61, baseType: !318, size: 64, offset: 512)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5074, file: !314, line: 64, baseType: !318, size: 64, offset: 576)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5074, file: !314, line: 65, baseType: !318, size: 64, offset: 640)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5074, file: !314, line: 66, baseType: !318, size: 64, offset: 704)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5074, file: !314, line: 68, baseType: !330, size: 64, offset: 768)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5074, file: !314, line: 70, baseType: !5090, size: 64, offset: 832)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5074, file: !314, line: 72, baseType: !260, size: 32, offset: 896)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5074, file: !314, line: 73, baseType: !260, size: 32, offset: 928)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5074, file: !314, line: 74, baseType: !337, size: 64, offset: 960)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5074, file: !314, line: 77, baseType: !261, size: 16, offset: 1024)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5074, file: !314, line: 78, baseType: !340, size: 8, offset: 1040)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5074, file: !314, line: 79, baseType: !206, size: 8, offset: 1048)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5074, file: !314, line: 81, baseType: !343, size: 64, offset: 1088)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5074, file: !314, line: 89, baseType: !346, size: 64, offset: 1152)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5074, file: !314, line: 91, baseType: !348, size: 64, offset: 1216)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5074, file: !314, line: 92, baseType: !351, size: 64, offset: 1280)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5074, file: !314, line: 93, baseType: !5090, size: 64, offset: 1344)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5074, file: !314, line: 94, baseType: !268, size: 64, offset: 1408)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5074, file: !314, line: 95, baseType: !262, size: 64, offset: 1472)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5074, file: !314, line: 96, baseType: !260, size: 32, offset: 1536)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5074, file: !314, line: 98, baseType: !358, size: 160, offset: 1568)
!5106 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !591, line: 63, baseType: !337)
!5107 = !{!5108, !5109, !5110, !5111}
!5108 = !DILocalVariable(name: "fp", arg: 1, scope: !5069, file: !928, line: 28, type: !5072)
!5109 = !DILocalVariable(name: "offset", arg: 2, scope: !5069, file: !928, line: 28, type: !5106)
!5110 = !DILocalVariable(name: "whence", arg: 3, scope: !5069, file: !928, line: 28, type: !260)
!5111 = !DILocalVariable(name: "pos", scope: !5112, file: !928, line: 123, type: !5106)
!5112 = distinct !DILexicalBlock(scope: !5113, file: !928, line: 119, column: 5)
!5113 = distinct !DILexicalBlock(scope: !5069, file: !928, line: 55, column: 7)
!5114 = !DILocation(line: 0, scope: !5069)
!5115 = !DILocation(line: 55, column: 12, scope: !5113)
!5116 = !{!2567, !958, i64 16}
!5117 = !DILocation(line: 55, column: 33, scope: !5113)
!5118 = !{!2567, !958, i64 8}
!5119 = !DILocation(line: 55, column: 25, scope: !5113)
!5120 = !DILocation(line: 56, column: 7, scope: !5113)
!5121 = !DILocation(line: 56, column: 15, scope: !5113)
!5122 = !DILocation(line: 56, column: 37, scope: !5113)
!5123 = !{!2567, !958, i64 32}
!5124 = !DILocation(line: 56, column: 29, scope: !5113)
!5125 = !DILocation(line: 57, column: 7, scope: !5113)
!5126 = !DILocation(line: 57, column: 15, scope: !5113)
!5127 = !{!2567, !958, i64 72}
!5128 = !DILocation(line: 57, column: 29, scope: !5113)
!5129 = !DILocation(line: 55, column: 7, scope: !5069)
!5130 = !DILocation(line: 123, column: 26, scope: !5112)
!5131 = !DILocation(line: 123, column: 19, scope: !5112)
!5132 = !DILocation(line: 0, scope: !5112)
!5133 = !DILocation(line: 124, column: 15, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5112, file: !928, line: 124, column: 11)
!5135 = !DILocation(line: 124, column: 11, scope: !5112)
!5136 = !DILocation(line: 135, column: 19, scope: !5112)
!5137 = !DILocation(line: 136, column: 12, scope: !5112)
!5138 = !DILocation(line: 136, column: 20, scope: !5112)
!5139 = !{!2567, !1587, i64 144}
!5140 = !DILocation(line: 167, column: 7, scope: !5112)
!5141 = !DILocation(line: 169, column: 10, scope: !5069)
!5142 = !DILocation(line: 169, column: 3, scope: !5069)
!5143 = !DILocation(line: 170, column: 1, scope: !5069)
!5144 = !DISubprogram(name: "fseeko", scope: !591, file: !591, line: 736, type: !5145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5145 = !DISubroutineType(types: !5146)
!5146 = !{!260, !5072, !337, !260}
!5147 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !846, file: !846, line: 100, type: !5148, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !5152)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{!262, !5150, !265, !262, !5151}
!5150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!5152 = !{!5153, !5154, !5155, !5156, !5157}
!5153 = !DILocalVariable(name: "pwc", arg: 1, scope: !5147, file: !846, line: 100, type: !5150)
!5154 = !DILocalVariable(name: "s", arg: 2, scope: !5147, file: !846, line: 100, type: !265)
!5155 = !DILocalVariable(name: "n", arg: 3, scope: !5147, file: !846, line: 100, type: !262)
!5156 = !DILocalVariable(name: "ps", arg: 4, scope: !5147, file: !846, line: 100, type: !5151)
!5157 = !DILocalVariable(name: "ret", scope: !5147, file: !846, line: 130, type: !262)
!5158 = !DILocation(line: 0, scope: !5147)
!5159 = !DILocation(line: 105, column: 9, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5147, file: !846, line: 105, column: 7)
!5161 = !DILocation(line: 105, column: 7, scope: !5147)
!5162 = !DILocation(line: 117, column: 10, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5147, file: !846, line: 117, column: 7)
!5164 = !DILocation(line: 117, column: 7, scope: !5147)
!5165 = !DILocation(line: 130, column: 16, scope: !5147)
!5166 = !DILocation(line: 135, column: 11, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5147, file: !846, line: 135, column: 7)
!5168 = !DILocation(line: 135, column: 25, scope: !5167)
!5169 = !DILocation(line: 135, column: 30, scope: !5167)
!5170 = !DILocation(line: 135, column: 7, scope: !5147)
!5171 = !DILocalVariable(name: "ps", arg: 1, scope: !5172, file: !2944, line: 1135, type: !5151)
!5172 = distinct !DISubprogram(name: "mbszero", scope: !2944, file: !2944, line: 1135, type: !5173, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !5175)
!5173 = !DISubroutineType(types: !5174)
!5174 = !{null, !5151}
!5175 = !{!5171}
!5176 = !DILocation(line: 0, scope: !5172, inlinedAt: !5177)
!5177 = distinct !DILocation(line: 137, column: 5, scope: !5167)
!5178 = !DILocalVariable(name: "__dest", arg: 1, scope: !5179, file: !2953, line: 57, type: !268)
!5179 = distinct !DISubprogram(name: "memset", scope: !2953, file: !2953, line: 57, type: !2954, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !5180)
!5180 = !{!5178, !5181, !5182}
!5181 = !DILocalVariable(name: "__ch", arg: 2, scope: !5179, file: !2953, line: 57, type: !260)
!5182 = !DILocalVariable(name: "__len", arg: 3, scope: !5179, file: !2953, line: 57, type: !262)
!5183 = !DILocation(line: 0, scope: !5179, inlinedAt: !5184)
!5184 = distinct !DILocation(line: 1137, column: 3, scope: !5172, inlinedAt: !5177)
!5185 = !DILocation(line: 59, column: 10, scope: !5179, inlinedAt: !5184)
!5186 = !DILocation(line: 137, column: 5, scope: !5167)
!5187 = !DILocation(line: 138, column: 11, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5147, file: !846, line: 138, column: 7)
!5189 = !DILocation(line: 138, column: 7, scope: !5147)
!5190 = !DILocation(line: 139, column: 5, scope: !5188)
!5191 = !DILocation(line: 143, column: 26, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5147, file: !846, line: 143, column: 7)
!5193 = !DILocation(line: 143, column: 41, scope: !5192)
!5194 = !DILocation(line: 143, column: 7, scope: !5147)
!5195 = !DILocation(line: 145, column: 15, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5197, file: !846, line: 145, column: 11)
!5197 = distinct !DILexicalBlock(scope: !5192, file: !846, line: 144, column: 5)
!5198 = !DILocation(line: 145, column: 11, scope: !5197)
!5199 = !DILocation(line: 146, column: 32, scope: !5196)
!5200 = !DILocation(line: 146, column: 16, scope: !5196)
!5201 = !DILocation(line: 146, column: 14, scope: !5196)
!5202 = !DILocation(line: 146, column: 9, scope: !5196)
!5203 = !DILocation(line: 286, column: 1, scope: !5147)
!5204 = !DISubprogram(name: "mbrtoc32", scope: !730, file: !730, line: 57, type: !5205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5205 = !DISubroutineType(types: !5206)
!5206 = !{!262, !5207, !1051, !262, !5208}
!5207 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5150)
!5208 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5151)
!5209 = !DISubprogram(name: "mbsinit", scope: !5210, file: !5210, line: 293, type: !5211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5210 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5211 = !DISubroutineType(types: !5212)
!5212 = !{!260, !5213}
!5213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5214, size: 64)
!5214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !852)
!5215 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !930, file: !930, line: 27, type: !4417, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !5216)
!5216 = !{!5217, !5218, !5219, !5220}
!5217 = !DILocalVariable(name: "ptr", arg: 1, scope: !5215, file: !930, line: 27, type: !268)
!5218 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5215, file: !930, line: 27, type: !262)
!5219 = !DILocalVariable(name: "size", arg: 3, scope: !5215, file: !930, line: 27, type: !262)
!5220 = !DILocalVariable(name: "nbytes", scope: !5215, file: !930, line: 29, type: !262)
!5221 = !DILocation(line: 0, scope: !5215)
!5222 = !DILocation(line: 30, column: 7, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5215, file: !930, line: 30, column: 7)
!5224 = !DILocation(line: 30, column: 7, scope: !5215)
!5225 = !DILocation(line: 32, column: 7, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5223, file: !930, line: 31, column: 5)
!5227 = !DILocation(line: 32, column: 13, scope: !5226)
!5228 = !DILocation(line: 33, column: 7, scope: !5226)
!5229 = !DILocalVariable(name: "ptr", arg: 1, scope: !5230, file: !4509, line: 2057, type: !268)
!5230 = distinct !DISubprogram(name: "rpl_realloc", scope: !4509, file: !4509, line: 2057, type: !4501, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !5231)
!5231 = !{!5229, !5232}
!5232 = !DILocalVariable(name: "size", arg: 2, scope: !5230, file: !4509, line: 2057, type: !262)
!5233 = !DILocation(line: 0, scope: !5230, inlinedAt: !5234)
!5234 = distinct !DILocation(line: 37, column: 10, scope: !5215)
!5235 = !DILocation(line: 2059, column: 24, scope: !5230, inlinedAt: !5234)
!5236 = !DILocation(line: 2059, column: 10, scope: !5230, inlinedAt: !5234)
!5237 = !DILocation(line: 37, column: 3, scope: !5215)
!5238 = !DILocation(line: 38, column: 1, scope: !5215)
!5239 = distinct !DISubprogram(name: "hard_locale", scope: !864, file: !864, line: 28, type: !1256, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !931, retainedNodes: !5240)
!5240 = !{!5241, !5242}
!5241 = !DILocalVariable(name: "category", arg: 1, scope: !5239, file: !864, line: 28, type: !260)
!5242 = !DILocalVariable(name: "locale", scope: !5239, file: !864, line: 30, type: !5243)
!5243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5244)
!5244 = !{!5245}
!5245 = !DISubrange(count: 257)
!5246 = distinct !DIAssignID()
!5247 = !DILocation(line: 0, scope: !5239)
!5248 = !DILocation(line: 30, column: 3, scope: !5239)
!5249 = !DILocation(line: 32, column: 7, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5239, file: !864, line: 32, column: 7)
!5251 = !DILocation(line: 32, column: 7, scope: !5239)
!5252 = !DILocalVariable(name: "__s1", arg: 1, scope: !5253, file: !1070, line: 1359, type: !265)
!5253 = distinct !DISubprogram(name: "streq", scope: !1070, file: !1070, line: 1359, type: !1071, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !931, retainedNodes: !5254)
!5254 = !{!5252, !5255}
!5255 = !DILocalVariable(name: "__s2", arg: 2, scope: !5253, file: !1070, line: 1359, type: !265)
!5256 = !DILocation(line: 0, scope: !5253, inlinedAt: !5257)
!5257 = distinct !DILocation(line: 35, column: 9, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5239, file: !864, line: 35, column: 7)
!5259 = !DILocation(line: 1361, column: 11, scope: !5253, inlinedAt: !5257)
!5260 = !DILocation(line: 1361, column: 10, scope: !5253, inlinedAt: !5257)
!5261 = !DILocation(line: 35, column: 29, scope: !5258)
!5262 = !DILocation(line: 0, scope: !5253, inlinedAt: !5263)
!5263 = distinct !DILocation(line: 35, column: 32, scope: !5258)
!5264 = !DILocation(line: 1361, column: 11, scope: !5253, inlinedAt: !5263)
!5265 = !DILocation(line: 1361, column: 10, scope: !5253, inlinedAt: !5263)
!5266 = !DILocation(line: 35, column: 7, scope: !5239)
!5267 = !DILocation(line: 46, column: 3, scope: !5239)
!5268 = !DILocation(line: 47, column: 1, scope: !5239)
!5269 = distinct !DISubprogram(name: "setlocale_null_r", scope: !934, file: !934, line: 154, type: !5270, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !933, retainedNodes: !5272)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{!260, !260, !318, !262}
!5272 = !{!5273, !5274, !5275}
!5273 = !DILocalVariable(name: "category", arg: 1, scope: !5269, file: !934, line: 154, type: !260)
!5274 = !DILocalVariable(name: "buf", arg: 2, scope: !5269, file: !934, line: 154, type: !318)
!5275 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5269, file: !934, line: 154, type: !262)
!5276 = !DILocation(line: 0, scope: !5269)
!5277 = !DILocation(line: 159, column: 10, scope: !5269)
!5278 = !DILocation(line: 159, column: 3, scope: !5269)
!5279 = distinct !DISubprogram(name: "setlocale_null", scope: !934, file: !934, line: 186, type: !5280, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !933, retainedNodes: !5282)
!5280 = !DISubroutineType(types: !5281)
!5281 = !{!265, !260}
!5282 = !{!5283}
!5283 = !DILocalVariable(name: "category", arg: 1, scope: !5279, file: !934, line: 186, type: !260)
!5284 = !DILocation(line: 0, scope: !5279)
!5285 = !DILocation(line: 189, column: 10, scope: !5279)
!5286 = !DILocation(line: 189, column: 3, scope: !5279)
!5287 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !936, file: !936, line: 35, type: !5280, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !5288)
!5288 = !{!5289, !5290}
!5289 = !DILocalVariable(name: "category", arg: 1, scope: !5287, file: !936, line: 35, type: !260)
!5290 = !DILocalVariable(name: "result", scope: !5287, file: !936, line: 37, type: !265)
!5291 = !DILocation(line: 0, scope: !5287)
!5292 = !DILocation(line: 37, column: 24, scope: !5287)
!5293 = !DILocation(line: 62, column: 3, scope: !5287)
!5294 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !936, file: !936, line: 66, type: !5270, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !5295)
!5295 = !{!5296, !5297, !5298, !5299, !5300}
!5296 = !DILocalVariable(name: "category", arg: 1, scope: !5294, file: !936, line: 66, type: !260)
!5297 = !DILocalVariable(name: "buf", arg: 2, scope: !5294, file: !936, line: 66, type: !318)
!5298 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5294, file: !936, line: 66, type: !262)
!5299 = !DILocalVariable(name: "result", scope: !5294, file: !936, line: 111, type: !265)
!5300 = !DILocalVariable(name: "length", scope: !5301, file: !936, line: 125, type: !262)
!5301 = distinct !DILexicalBlock(scope: !5302, file: !936, line: 124, column: 5)
!5302 = distinct !DILexicalBlock(scope: !5294, file: !936, line: 113, column: 7)
!5303 = !DILocation(line: 0, scope: !5294)
!5304 = !DILocation(line: 0, scope: !5287, inlinedAt: !5305)
!5305 = distinct !DILocation(line: 111, column: 24, scope: !5294)
!5306 = !DILocation(line: 37, column: 24, scope: !5287, inlinedAt: !5305)
!5307 = !DILocation(line: 113, column: 14, scope: !5302)
!5308 = !DILocation(line: 113, column: 7, scope: !5294)
!5309 = !DILocation(line: 116, column: 19, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5311, file: !936, line: 116, column: 11)
!5311 = distinct !DILexicalBlock(scope: !5302, file: !936, line: 114, column: 5)
!5312 = !DILocation(line: 116, column: 11, scope: !5311)
!5313 = !DILocation(line: 120, column: 16, scope: !5310)
!5314 = !DILocation(line: 120, column: 9, scope: !5310)
!5315 = !DILocation(line: 125, column: 23, scope: !5301)
!5316 = !DILocation(line: 0, scope: !5301)
!5317 = !DILocation(line: 126, column: 18, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5301, file: !936, line: 126, column: 11)
!5319 = !DILocation(line: 126, column: 11, scope: !5301)
!5320 = !DILocation(line: 128, column: 39, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5318, file: !936, line: 127, column: 9)
!5322 = !DILocalVariable(name: "__dest", arg: 1, scope: !5323, file: !2953, line: 26, type: !4779)
!5323 = distinct !DISubprogram(name: "memcpy", scope: !2953, file: !2953, line: 26, type: !4777, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !5324)
!5324 = !{!5322, !5325, !5326}
!5325 = !DILocalVariable(name: "__src", arg: 2, scope: !5323, file: !2953, line: 26, type: !1204)
!5326 = !DILocalVariable(name: "__len", arg: 3, scope: !5323, file: !2953, line: 26, type: !262)
!5327 = !DILocation(line: 0, scope: !5323, inlinedAt: !5328)
!5328 = distinct !DILocation(line: 128, column: 11, scope: !5321)
!5329 = !DILocation(line: 29, column: 10, scope: !5323, inlinedAt: !5328)
!5330 = !DILocation(line: 129, column: 11, scope: !5321)
!5331 = !DILocation(line: 133, column: 23, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5333, file: !936, line: 133, column: 15)
!5333 = distinct !DILexicalBlock(scope: !5318, file: !936, line: 132, column: 9)
!5334 = !DILocation(line: 133, column: 15, scope: !5333)
!5335 = !DILocation(line: 138, column: 44, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5332, file: !936, line: 134, column: 13)
!5337 = !DILocation(line: 0, scope: !5323, inlinedAt: !5338)
!5338 = distinct !DILocation(line: 138, column: 15, scope: !5336)
!5339 = !DILocation(line: 29, column: 10, scope: !5323, inlinedAt: !5338)
!5340 = !DILocation(line: 139, column: 15, scope: !5336)
!5341 = !DILocation(line: 139, column: 32, scope: !5336)
!5342 = !DILocation(line: 140, column: 13, scope: !5336)
!5343 = !DILocation(line: 0, scope: !5302)
!5344 = !DILocation(line: 145, column: 1, scope: !5294)
