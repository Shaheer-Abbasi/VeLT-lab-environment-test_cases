; ModuleID = 'src/test.bc'
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
@argc = internal unnamed_addr global i32 0, align 4, !dbg !281
@pos = internal unnamed_addr global i32 0, align 4, !dbg !279
@.str.50 = private unnamed_addr constant [18 x i8] c"extra argument %s\00", align 1, !dbg !274
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !283
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !575
@.str.55 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !567
@.str.1.56 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !569
@.str.2.57 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !571
@.str.3.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !573
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !577
@stderr = external local_unnamed_addr global ptr, align 8
@.str.61 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !583
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !615
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !585
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !605
@.str.1.67 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !607
@.str.2.69 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !609
@.str.3.68 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !611
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !613
@.str.4.62 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !617
@.str.5.63 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !619
@.str.6.64 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !622
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !627
@.str.116 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !633
@.str.1.117 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !635
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@.str.118 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !637
@.str.1.119 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !640
@.str.2.120 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !642
@.str.3.121 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !647
@.str.4.122 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !649
@.str.5.123 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !651
@.str.6.124 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !653
@.str.7.125 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !655
@.str.8.126 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !657
@.str.9.127 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !659
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.118, ptr @.str.1.119, ptr @.str.2.120, ptr @.str.3.121, ptr @.str.4.122, ptr @.str.5.123, ptr @.str.6.124, ptr @.str.7.125, ptr @.str.8.126, ptr @.str.9.127, ptr null], align 16, !dbg !661
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !686
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !700
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !744
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !751
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !702
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !753
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !690
@.str.10.130 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !707
@.str.11.128 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !709
@.str.12.131 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !711
@.str.13.129 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !713
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !715
@.str.140 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !757
@.str.1.141 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !760
@.str.2.142 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !762
@.str.3.143 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !764
@.str.4.144 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !766
@.str.5.145 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !768
@.str.6.146 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !773
@.str.7.147 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !778
@.str.8.148 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !780
@.str.9.149 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !782
@.str.10.150 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !784
@.str.11.151 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !789
@.str.12.152 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !794
@.str.13.153 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !796
@.str.14.154 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !801
@.str.15.155 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !803
@.str.16.156 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !805
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.159 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !807
@.str.18.160 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !809
@.str.19.161 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !811
@.str.20.162 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !813
@.str.21.163 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !815
@.str.22.164 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !817
@.str.23.165 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !819
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !821
@exit_failure = dso_local global i32 1, align 4, !dbg !827
@.str.178 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !833
@.str.1.176 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !836
@.str.2.177 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !838
@.str.189 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !840
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !843
@.str.1.194 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !858

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !940 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !944, metadata !DIExpression()), !dbg !945
  %2 = icmp eq i32 %0, 0, !dbg !946
  br i1 %2, label %8, label %3, !dbg !948

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !949, !tbaa !951
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !949
  %6 = load ptr, ptr @program_name, align 8, !dbg !949, !tbaa !951
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !949
  br label %98, !dbg !949

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !955
  %10 = load ptr, ptr @stdout, align 8, !dbg !955, !tbaa !951
  %11 = tail call i32 @fputs_unlocked(ptr noundef %9, ptr noundef %10), !dbg !955
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !957
  %13 = load ptr, ptr @stdout, align 8, !dbg !957, !tbaa !951
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !957
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !958
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !958
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !959
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !959
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !960
  %18 = load ptr, ptr @stdout, align 8, !dbg !960, !tbaa !951
  %19 = tail call i32 @fputs_unlocked(ptr noundef %17, ptr noundef %18), !dbg !960
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !961
  %21 = load ptr, ptr @stdout, align 8, !dbg !961, !tbaa !951
  %22 = tail call i32 @fputs_unlocked(ptr noundef %20, ptr noundef %21), !dbg !961
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !962
  %24 = load ptr, ptr @stdout, align 8, !dbg !962, !tbaa !951
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !962
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !963
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !963
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #39, !dbg !964
  %28 = load ptr, ptr @stdout, align 8, !dbg !964, !tbaa !951
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !964
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #39, !dbg !965
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !965
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #39, !dbg !966
  %32 = load ptr, ptr @stdout, align 8, !dbg !966, !tbaa !951
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !966
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !967
  %35 = load ptr, ptr @stdout, align 8, !dbg !967, !tbaa !951
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !967
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #39, !dbg !968
  tail call fastcc void @oputs_(ptr noundef %37), !dbg !968
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #39, !dbg !969
  tail call fastcc void @oputs_(ptr noundef %38), !dbg !969
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #39, !dbg !970
  tail call fastcc void @oputs_(ptr noundef %39), !dbg !970
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !971
  tail call fastcc void @oputs_(ptr noundef %40), !dbg !971
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #39, !dbg !972
  tail call fastcc void @oputs_(ptr noundef %41), !dbg !972
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #39, !dbg !973
  tail call fastcc void @oputs_(ptr noundef %42), !dbg !973
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !974
  %44 = load ptr, ptr @stdout, align 8, !dbg !974, !tbaa !951
  %45 = tail call i32 @fputs_unlocked(ptr noundef %43, ptr noundef %44), !dbg !974
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #39, !dbg !975
  tail call fastcc void @oputs_(ptr noundef %46), !dbg !975
  %47 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #39, !dbg !976
  tail call fastcc void @oputs_(ptr noundef %47), !dbg !976
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #39, !dbg !977
  tail call fastcc void @oputs_(ptr noundef %48), !dbg !977
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !978
  %50 = load ptr, ptr @stdout, align 8, !dbg !978, !tbaa !951
  %51 = tail call i32 @fputs_unlocked(ptr noundef %49, ptr noundef %50), !dbg !978
  %52 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !979
  tail call fastcc void @oputs_(ptr noundef %52), !dbg !979
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #39, !dbg !980
  tail call fastcc void @oputs_(ptr noundef %53), !dbg !980
  %54 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #39, !dbg !981
  tail call fastcc void @oputs_(ptr noundef %54), !dbg !981
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #39, !dbg !982
  tail call fastcc void @oputs_(ptr noundef %55), !dbg !982
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #39, !dbg !983
  tail call fastcc void @oputs_(ptr noundef %56), !dbg !983
  %57 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #39, !dbg !984
  tail call fastcc void @oputs_(ptr noundef %57), !dbg !984
  %58 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #39, !dbg !985
  tail call fastcc void @oputs_(ptr noundef %58), !dbg !985
  %59 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #39, !dbg !986
  tail call fastcc void @oputs_(ptr noundef %59), !dbg !986
  %60 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #39, !dbg !987
  tail call fastcc void @oputs_(ptr noundef %60), !dbg !987
  %61 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #39, !dbg !988
  tail call fastcc void @oputs_(ptr noundef %61), !dbg !988
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #39, !dbg !989
  tail call fastcc void @oputs_(ptr noundef %62), !dbg !989
  %63 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #39, !dbg !990
  tail call fastcc void @oputs_(ptr noundef %63), !dbg !990
  %64 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #39, !dbg !991
  tail call fastcc void @oputs_(ptr noundef %64), !dbg !991
  %65 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #39, !dbg !992
  tail call fastcc void @oputs_(ptr noundef %65), !dbg !992
  %66 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #39, !dbg !993
  tail call fastcc void @oputs_(ptr noundef %66), !dbg !993
  %67 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #39, !dbg !994
  tail call fastcc void @oputs_(ptr noundef %67), !dbg !994
  %68 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #39, !dbg !995
  tail call fastcc void @oputs_(ptr noundef %68), !dbg !995
  %69 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #39, !dbg !996
  tail call fastcc void @oputs_(ptr noundef %69), !dbg !996
  %70 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #39, !dbg !997
  tail call fastcc void @oputs_(ptr noundef %70), !dbg !997
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #39, !dbg !998
  tail call fastcc void @oputs_(ptr noundef %71), !dbg !998
  %72 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #39, !dbg !999
  %73 = load ptr, ptr @stdout, align 8, !dbg !999, !tbaa !951
  %74 = tail call i32 @fputs_unlocked(ptr noundef %72, ptr noundef %73), !dbg !999
  %75 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #39, !dbg !1000
  %76 = load ptr, ptr @stdout, align 8, !dbg !1000, !tbaa !951
  %77 = tail call i32 @fputs_unlocked(ptr noundef %75, ptr noundef %76), !dbg !1000
  %78 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #39, !dbg !1001
  %79 = load ptr, ptr @stdout, align 8, !dbg !1001, !tbaa !951
  %80 = tail call i32 @fputs_unlocked(ptr noundef %78, ptr noundef %79), !dbg !1001
  %81 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #39, !dbg !1002
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #39, !dbg !1002
  %83 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %81, ptr noundef %82) #39, !dbg !1002
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1003, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1015, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr poison, metadata !1015, metadata !DIExpression()), !dbg !1020
  tail call void @emit_bug_reporting_address() #39, !dbg !1022
  %84 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !1023
  call void @llvm.dbg.value(metadata ptr %84, metadata !1018, metadata !DIExpression()), !dbg !1020
  %85 = icmp eq ptr %84, null, !dbg !1024
  br i1 %85, label %93, label %86, !dbg !1026

86:                                               ; preds = %8
  %87 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(4) @.str.80, i64 noundef 3) #40, !dbg !1027
  %88 = icmp eq i32 %87, 0, !dbg !1027
  br i1 %88, label %93, label %89, !dbg !1028

89:                                               ; preds = %86
  %90 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.81, i32 noundef 5) #39, !dbg !1029
  %91 = load ptr, ptr @stdout, align 8, !dbg !1029, !tbaa !951
  %92 = tail call i32 @fputs_unlocked(ptr noundef %90, ptr noundef %91), !dbg !1029
  br label %93, !dbg !1031

93:                                               ; preds = %8, %86, %89
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1015, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1019, metadata !DIExpression()), !dbg !1020
  %94 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.82, i32 noundef 5) #39, !dbg !1032
  %95 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %94, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.3) #39, !dbg !1032
  %96 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.83, i32 noundef 5) #39, !dbg !1033
  %97 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %96, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.84) #39, !dbg !1033
  br label %98

98:                                               ; preds = %93, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !1034
  unreachable, !dbg !1034
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1035 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1040 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1046 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !285 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !290, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata ptr %0, metadata !291, metadata !DIExpression()), !dbg !1050
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1051, !tbaa !1052
  %3 = icmp eq i32 %2, -1, !dbg !1054
  br i1 %3, label %4, label %16, !dbg !1055

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.51) #39, !dbg !1056
  call void @llvm.dbg.value(metadata ptr %5, metadata !292, metadata !DIExpression()), !dbg !1057
  %6 = icmp eq ptr %5, null, !dbg !1058
  br i1 %6, label %14, label %7, !dbg !1059

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1060, !tbaa !1061
  %9 = icmp eq i8 %8, 0, !dbg !1060
  br i1 %9, label %14, label %10, !dbg !1062

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1063, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata ptr @.str.52, metadata !1069, metadata !DIExpression()), !dbg !1070
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.52) #40, !dbg !1072
  %12 = icmp eq i32 %11, 0, !dbg !1073
  %13 = zext i1 %12 to i32, !dbg !1062
  br label %14, !dbg !1062

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1074, !tbaa !1052
  br label %16, !dbg !1075

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1076
  %18 = icmp eq i32 %17, 0, !dbg !1076
  br i1 %18, label %22, label %19, !dbg !1078

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1079, !tbaa !951
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1079
  br label %128, !dbg !1081

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !295, metadata !DIExpression()), !dbg !1050
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.53) #40, !dbg !1082
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1083
  call void @llvm.dbg.value(metadata ptr %24, metadata !297, metadata !DIExpression()), !dbg !1050
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !1084
  call void @llvm.dbg.value(metadata ptr %25, metadata !298, metadata !DIExpression()), !dbg !1050
  %26 = icmp eq ptr %25, null, !dbg !1085
  br i1 %26, label %58, label %27, !dbg !1086

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1087
  br i1 %28, label %58, label %29, !dbg !1088

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !299, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 0, metadata !303, metadata !DIExpression()), !dbg !1089
  %30 = icmp ult ptr %24, %25, !dbg !1090
  br i1 %30, label %31, label %52, !dbg !1091

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !1050
  %33 = load ptr, ptr %32, align 8, !tbaa !951
  br label %34, !dbg !1091

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !299, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %36, metadata !303, metadata !DIExpression()), !dbg !1089
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1092
  call void @llvm.dbg.value(metadata ptr %37, metadata !299, metadata !DIExpression()), !dbg !1089
  %38 = load i8, ptr %35, align 1, !dbg !1092, !tbaa !1061
  %39 = sext i8 %38 to i64, !dbg !1092
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1092
  %41 = load i16, ptr %40, align 2, !dbg !1092, !tbaa !1093
  %42 = freeze i16 %41, !dbg !1095
  %43 = lshr i16 %42, 13, !dbg !1095
  %44 = and i16 %43, 1, !dbg !1095
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1096
  call void @llvm.dbg.value(metadata i64 %46, metadata !303, metadata !DIExpression()), !dbg !1089
  %47 = icmp ult ptr %37, %25, !dbg !1090
  %48 = icmp ult i64 %46, 2, !dbg !1097
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1097
  br i1 %49, label %34, label %50, !dbg !1091, !llvm.loop !1098

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1100
  br i1 %51, label %52, label %54, !dbg !1102

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1102

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1102
  call void @llvm.dbg.value(metadata i8 %57, metadata !295, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata ptr %56, metadata !298, metadata !DIExpression()), !dbg !1050
  br label %58, !dbg !1103

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !1050
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !1050
  call void @llvm.dbg.value(metadata i8 %60, metadata !295, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata ptr %59, metadata !298, metadata !DIExpression()), !dbg !1050
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.54) #40, !dbg !1104
  call void @llvm.dbg.value(metadata i64 %61, metadata !304, metadata !DIExpression()), !dbg !1050
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1105
  call void @llvm.dbg.value(metadata ptr %62, metadata !305, metadata !DIExpression()), !dbg !1050
  br label %63, !dbg !1106

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !1050
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !1050
  call void @llvm.dbg.value(metadata i8 %65, metadata !295, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata ptr %64, metadata !305, metadata !DIExpression()), !dbg !1050
  %66 = load i8, ptr %64, align 1, !dbg !1107, !tbaa !1061
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1108

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1109
  %69 = load i8, ptr %68, align 1, !dbg !1112, !tbaa !1061
  %70 = icmp eq i8 %69, 45, !dbg !1113
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1114
  br label %72, !dbg !1114

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !1050
  call void @llvm.dbg.value(metadata i8 %73, metadata !295, metadata !DIExpression()), !dbg !1050
  %74 = tail call ptr @__ctype_b_loc() #42, !dbg !1115
  %75 = load ptr, ptr %74, align 8, !dbg !1115, !tbaa !951
  %76 = sext i8 %66 to i64, !dbg !1115
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1115
  %78 = load i16, ptr %77, align 2, !dbg !1115, !tbaa !1093
  %79 = and i16 %78, 8192, !dbg !1115
  %80 = icmp eq i16 %79, 0, !dbg !1115
  br i1 %80, label %96, label %81, !dbg !1117

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1118
  br i1 %82, label %98, label %83, !dbg !1121

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1122
  %85 = load i8, ptr %84, align 1, !dbg !1122, !tbaa !1061
  %86 = sext i8 %85 to i64, !dbg !1122
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1122
  %88 = load i16, ptr %87, align 2, !dbg !1122, !tbaa !1093
  %89 = and i16 %88, 8192, !dbg !1122
  %90 = icmp eq i16 %89, 0, !dbg !1122
  br i1 %90, label %91, label %98, !dbg !1123

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1124
  %93 = icmp ne i8 %92, 0, !dbg !1124
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1126
  br i1 %95, label %96, label %98, !dbg !1126

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1127
  call void @llvm.dbg.value(metadata ptr %97, metadata !305, metadata !DIExpression()), !dbg !1050
  br label %63, !dbg !1106, !llvm.loop !1128

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1130
  %100 = load ptr, ptr @stdout, align 8, !dbg !1130, !tbaa !951
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1130
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !362, metadata !DIExpression()), !dbg !1050
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.67, i64 noundef 6) #40, !dbg !1151
  %103 = icmp eq i32 %102, 0, !dbg !1151
  br i1 %103, label %107, label %104, !dbg !1153

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.68, i64 noundef 9) #40, !dbg !1154
  %106 = icmp eq i32 %105, 0, !dbg !1154
  br i1 %106, label %107, label %110, !dbg !1155

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1156
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #39, !dbg !1156
  br label %113, !dbg !1158

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1159
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #39, !dbg !1159
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1161, !tbaa !951
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.73, ptr noundef %114), !dbg !1161
  %116 = load ptr, ptr @stdout, align 8, !dbg !1162, !tbaa !951
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.74, ptr noundef %116), !dbg !1162
  %118 = ptrtoint ptr %64 to i64, !dbg !1163
  %119 = sub i64 %118, %99, !dbg !1163
  %120 = load ptr, ptr @stdout, align 8, !dbg !1163, !tbaa !951
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1163
  %122 = load ptr, ptr @stdout, align 8, !dbg !1164, !tbaa !951
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.75, ptr noundef %122), !dbg !1164
  %124 = load ptr, ptr @stdout, align 8, !dbg !1165, !tbaa !951
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.76, ptr noundef %124), !dbg !1165
  %126 = load ptr, ptr @stdout, align 8, !dbg !1166, !tbaa !951
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1166
  br label %128, !dbg !1167

128:                                              ; preds = %113, %19
  ret void, !dbg !1167
}

declare !dbg !1168 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1171 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1175 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1179 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1181 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1184 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1187 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1190 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1193 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1199 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1200 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1206 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1210, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata ptr %1, metadata !1211, metadata !DIExpression()), !dbg !1213
  %3 = load ptr, ptr %1, align 8, !dbg !1214, !tbaa !951
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1215
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.47) #39, !dbg !1216
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #39, !dbg !1217
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.48) #39, !dbg !1218
  call void @llvm.dbg.value(metadata i32 2, metadata !1219, metadata !DIExpression()), !dbg !1222
  store volatile i32 2, ptr @exit_failure, align 4, !dbg !1224, !tbaa !1052
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1226
  store ptr %1, ptr @argv, align 8, !dbg !1227, !tbaa !951
  store i32 %0, ptr @argc, align 4, !dbg !1228, !tbaa !1052
  store i32 1, ptr @pos, align 4, !dbg !1229, !tbaa !1052
  %8 = icmp slt i32 %0, 2, !dbg !1230
  br i1 %8, label %26, label %9, !dbg !1232

9:                                                ; preds = %2
  %10 = add nsw i32 %0, -1, !dbg !1233
  %11 = tail call fastcc zeroext i1 @posixtest(i32 noundef %10), !dbg !1234
  call void @llvm.dbg.value(metadata i1 %11, metadata !1212, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1213
  %12 = load i32, ptr @pos, align 4, !dbg !1235, !tbaa !1052
  %13 = load i32, ptr @argc, align 4, !dbg !1237, !tbaa !1052
  %14 = icmp eq i32 %12, %13, !dbg !1238
  br i1 %14, label %23, label %15, !dbg !1239

15:                                               ; preds = %9
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #39, !dbg !1240
  %17 = load ptr, ptr @argv, align 8, !dbg !1241, !tbaa !951
  %18 = load i32, ptr @pos, align 4, !dbg !1242, !tbaa !1052
  %19 = sext i32 %18 to i64, !dbg !1241
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19, !dbg !1241
  %21 = load ptr, ptr %20, align 8, !dbg !1241, !tbaa !951
  %22 = tail call ptr @quote(ptr noundef %21) #39, !dbg !1243
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %16, ptr noundef %22) #43, !dbg !1244
  unreachable, !dbg !1244

23:                                               ; preds = %9
  %24 = xor i1 %11, true, !dbg !1245
  %25 = zext i1 %24 to i32, !dbg !1245
  br label %26, !dbg !1245

26:                                               ; preds = %2, %23
  %27 = phi i32 [ %25, %23 ], [ 1, %2 ], !dbg !1213
  ret i32 %27, !dbg !1246
}

; Function Attrs: nounwind
declare !dbg !1247 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1250 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1251 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @posixtest(i32 noundef %0) unnamed_addr #10 !dbg !1254 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1258, metadata !DIExpression()), !dbg !1260
  switch i32 %0, label %102 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %41
    i32 4, label %43
  ], !dbg !1261

2:                                                ; preds = %1
  %3 = load ptr, ptr @argv, align 8, !dbg !1262, !tbaa !951
  %4 = load i32, ptr @pos, align 4, !dbg !1268, !tbaa !1052
  %5 = add nsw i32 %4, 1, !dbg !1268
  store i32 %5, ptr @pos, align 4, !dbg !1268, !tbaa !1052
  %6 = sext i32 %4 to i64, !dbg !1262
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6, !dbg !1262
  %8 = load ptr, ptr %7, align 8, !dbg !1262, !tbaa !951
  %9 = load i8, ptr %8, align 1, !dbg !1262, !tbaa !1061
  %10 = icmp ne i8 %9, 0, !dbg !1269
  call void @llvm.dbg.value(metadata i1 %10, metadata !1259, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1260
  br label %114, !dbg !1270

11:                                               ; preds = %1
  %12 = load ptr, ptr @argv, align 8, !dbg !1271, !tbaa !951
  %13 = load i32, ptr @pos, align 4, !dbg !1277, !tbaa !1052
  %14 = sext i32 %13 to i64, !dbg !1271
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14, !dbg !1271
  %16 = load ptr, ptr %15, align 8, !dbg !1271, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %16, metadata !1063, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1069, metadata !DIExpression()), !dbg !1278
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(2) @.str.85) #40, !dbg !1280
  %18 = icmp eq i32 %17, 0, !dbg !1281
  br i1 %18, label %19, label %27, !dbg !1282

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 false, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1288
  %20 = add nsw i32 %13, 1, !dbg !1291
  %21 = add nsw i32 %13, 2, !dbg !1292
  store i32 %21, ptr @pos, align 4, !dbg !1292, !tbaa !1052
  %22 = sext i32 %20 to i64, !dbg !1294
  %23 = getelementptr inbounds ptr, ptr %12, i64 %22, !dbg !1294
  %24 = load ptr, ptr %23, align 8, !dbg !1294, !tbaa !951
  %25 = load i8, ptr %24, align 1, !dbg !1294, !tbaa !1061
  %26 = icmp eq i8 %25, 0, !dbg !1295
  call void @llvm.dbg.value(metadata i1 %26, metadata !1275, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1296
  br label %114, !dbg !1297

27:                                               ; preds = %11
  %28 = load i8, ptr %16, align 1, !dbg !1298, !tbaa !1061
  %29 = icmp eq i8 %28, 45, !dbg !1300
  br i1 %29, label %30, label %40, !dbg !1301

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1302
  %32 = load i8, ptr %31, align 1, !dbg !1302, !tbaa !1061
  %33 = icmp eq i8 %32, 0, !dbg !1303
  br i1 %33, label %40, label %34, !dbg !1304

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %16, i64 2, !dbg !1305
  %36 = load i8, ptr %35, align 1, !dbg !1305, !tbaa !1061
  %37 = icmp eq i8 %36, 0, !dbg !1306
  br i1 %37, label %38, label %40, !dbg !1307

38:                                               ; preds = %34
  %39 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1308
  call void @llvm.dbg.value(metadata i1 %39, metadata !1275, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1296
  br label %114

40:                                               ; preds = %34, %30, %27
  tail call fastcc void @beyond() #43, !dbg !1310
  unreachable, !dbg !1310

41:                                               ; preds = %1
  %42 = tail call fastcc zeroext i1 @three_arguments(), !dbg !1311
  call void @llvm.dbg.value(metadata i1 %42, metadata !1259, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1260
  br label %114, !dbg !1312

43:                                               ; preds = %1
  %44 = load ptr, ptr @argv, align 8, !dbg !1313, !tbaa !951
  %45 = load i32, ptr @pos, align 4, !dbg !1315, !tbaa !1052
  %46 = sext i32 %45 to i64, !dbg !1313
  %47 = getelementptr inbounds ptr, ptr %44, i64 %46, !dbg !1313
  %48 = load ptr, ptr %47, align 8, !dbg !1313, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %48, metadata !1063, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1069, metadata !DIExpression()), !dbg !1316
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(2) @.str.85) #40, !dbg !1318
  %50 = icmp eq i32 %49, 0, !dbg !1319
  br i1 %50, label %51, label %59, !dbg !1320

51:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1321
  %52 = add nsw i32 %45, 1, !dbg !1324
  store i32 %52, ptr @pos, align 4, !dbg !1324, !tbaa !1052
  %53 = load i32, ptr @argc, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %56, label %55, !dbg !1325

55:                                               ; preds = %51
  tail call fastcc void @beyond(), !dbg !1327
  unreachable, !dbg !1327

56:                                               ; preds = %51
  %57 = tail call fastcc zeroext i1 @three_arguments(), !dbg !1328
  %58 = xor i1 %57, true, !dbg !1329
  call void @llvm.dbg.value(metadata i1 %58, metadata !1259, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1260
  br label %114, !dbg !1330

59:                                               ; preds = %43
  call void @llvm.dbg.value(metadata ptr %48, metadata !1063, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata ptr @.str.86, metadata !1069, metadata !DIExpression()), !dbg !1331
  %60 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(2) @.str.86) #40, !dbg !1334
  %61 = icmp eq i32 %60, 0, !dbg !1335
  br i1 %61, label %62, label %107, !dbg !1336

62:                                               ; preds = %59
  %63 = add nsw i32 %45, 3, !dbg !1337
  %64 = sext i32 %63 to i64, !dbg !1338
  %65 = getelementptr inbounds ptr, ptr %44, i64 %64, !dbg !1338
  %66 = load ptr, ptr %65, align 8, !dbg !1338, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %66, metadata !1063, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1069, metadata !DIExpression()), !dbg !1339
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(2) @.str.87) #40, !dbg !1341
  %68 = icmp eq i32 %67, 0, !dbg !1342
  br i1 %68, label %69, label %107, !dbg !1343

69:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i1 false, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1344
  %70 = add nsw i32 %45, 1, !dbg !1347
  store i32 %70, ptr @pos, align 4, !dbg !1347, !tbaa !1052
  %71 = sext i32 %70 to i64, !dbg !1348
  %72 = getelementptr inbounds ptr, ptr %44, i64 %71, !dbg !1348
  %73 = load ptr, ptr %72, align 8, !dbg !1348, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %73, metadata !1063, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1069, metadata !DIExpression()), !dbg !1350
  %74 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(2) @.str.85) #40, !dbg !1352
  %75 = icmp eq i32 %74, 0, !dbg !1353
  br i1 %75, label %76, label %83, !dbg !1354

76:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i1 false, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1355
  %77 = add nsw i32 %45, 2, !dbg !1357
  %78 = sext i32 %77 to i64, !dbg !1358
  %79 = getelementptr inbounds ptr, ptr %44, i64 %78, !dbg !1358
  %80 = load ptr, ptr %79, align 8, !dbg !1358, !tbaa !951
  %81 = load i8, ptr %80, align 1, !dbg !1358, !tbaa !1061
  %82 = icmp eq i8 %81, 0, !dbg !1360
  call void @llvm.dbg.value(metadata i1 %82, metadata !1275, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1361
  br label %98, !dbg !1362

83:                                               ; preds = %69
  %84 = load i8, ptr %73, align 1, !dbg !1363, !tbaa !1061
  %85 = icmp eq i8 %84, 45, !dbg !1364
  br i1 %85, label %86, label %97, !dbg !1365

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, ptr %73, i64 1, !dbg !1366
  %88 = load i8, ptr %87, align 1, !dbg !1366, !tbaa !1061
  %89 = icmp eq i8 %88, 0, !dbg !1367
  br i1 %89, label %97, label %90, !dbg !1368

90:                                               ; preds = %86
  %91 = getelementptr inbounds i8, ptr %73, i64 2, !dbg !1369
  %92 = load i8, ptr %91, align 1, !dbg !1369, !tbaa !1061
  %93 = icmp eq i8 %92, 0, !dbg !1370
  br i1 %93, label %94, label %97, !dbg !1371

94:                                               ; preds = %90
  %95 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1372
  call void @llvm.dbg.value(metadata i1 %95, metadata !1275, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1361
  %96 = load i32, ptr @pos, align 4, !dbg !1373, !tbaa !1052
  br label %98

97:                                               ; preds = %90, %86, %83
  tail call fastcc void @beyond() #43, !dbg !1375
  unreachable, !dbg !1375

98:                                               ; preds = %76, %94
  %99 = phi i32 [ %63, %76 ], [ %96, %94 ], !dbg !1373
  %100 = phi i1 [ %82, %76 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i1 %100, metadata !1275, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1361
  call void @llvm.dbg.value(metadata i1 %100, metadata !1259, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1260
  call void @llvm.dbg.value(metadata i1 false, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1376
  %101 = add nsw i32 %99, 1, !dbg !1373
  store i32 %101, ptr @pos, align 4, !dbg !1373, !tbaa !1052
  br label %114, !dbg !1377

102:                                              ; preds = %1
  %103 = icmp sgt i32 %0, 0, !dbg !1378
  br i1 %103, label %104, label %106, !dbg !1381

104:                                              ; preds = %102
  %105 = load i32, ptr @pos, align 4, !dbg !1382, !tbaa !1052
  br label %107, !dbg !1381

106:                                              ; preds = %102
  tail call void @__assert_fail(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, i32 noundef 651, ptr noundef nonnull @__PRETTY_FUNCTION__.posixtest) #41, !dbg !1378
  unreachable, !dbg !1378

107:                                              ; preds = %104, %59, %62
  %108 = phi i32 [ %105, %104 ], [ %45, %59 ], [ %45, %62 ], !dbg !1382
  %109 = load i32, ptr @argc, align 4, !dbg !1386, !tbaa !1052
  %110 = icmp slt i32 %108, %109, !dbg !1387
  br i1 %110, label %112, label %111, !dbg !1388

111:                                              ; preds = %107
  tail call fastcc void @beyond() #43, !dbg !1389
  unreachable, !dbg !1389

112:                                              ; preds = %107
  %113 = tail call fastcc zeroext i1 @or(), !dbg !1390
  call void @llvm.dbg.value(metadata i1 %113, metadata !1259, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1260
  br label %114, !dbg !1391

114:                                              ; preds = %38, %19, %112, %98, %56, %41, %2
  %115 = phi i1 [ %113, %112 ], [ %58, %56 ], [ %100, %98 ], [ %42, %41 ], [ %10, %2 ], [ %26, %19 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i1 %115, metadata !1259, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1260
  ret i1 %115, !dbg !1392
}

; Function Attrs: noreturn nounwind uwtable
define internal void @test_syntax_error(ptr noundef %0, ...) unnamed_addr #0 !dbg !1393 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1397, metadata !DIExpression()), !dbg !1410
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #39, !dbg !1411
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1398, metadata !DIExpression()), !dbg !1412
  call void @llvm.va_start(ptr nonnull %2), !dbg !1413
  call void @verror(i32 noundef 0, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %2) #44, !dbg !1414
  call void @exit(i32 noundef 2) #41, !dbg !1415
  unreachable, !dbg !1415
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #12

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @unary_operator() unnamed_addr #10 !dbg !1416 {
  %1 = alloca [1 x i8], align 1
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #39, !dbg !1468
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1418, metadata !DIExpression()), !dbg !1469
  %3 = load ptr, ptr @argv, align 8, !dbg !1470, !tbaa !951
  %4 = load i32, ptr @pos, align 4, !dbg !1471, !tbaa !1052
  %5 = sext i32 %4 to i64, !dbg !1470
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5, !dbg !1470
  %7 = load ptr, ptr %6, align 8, !dbg !1470, !tbaa !951
  %8 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !1470
  %9 = load i8, ptr %8, align 1, !dbg !1470, !tbaa !1061
  %10 = sext i8 %9 to i32, !dbg !1470
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
  ], !dbg !1472

11:                                               ; preds = %0
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.90, i32 noundef 5) #39, !dbg !1473
  %13 = load ptr, ptr @argv, align 8, !dbg !1474, !tbaa !951
  %14 = load i32, ptr @pos, align 4, !dbg !1475, !tbaa !1052
  %15 = sext i32 %14 to i64, !dbg !1474
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15, !dbg !1474
  %17 = load ptr, ptr %16, align 8, !dbg !1474, !tbaa !951
  %18 = tail call ptr @quote(ptr noundef %17) #39, !dbg !1476
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %12, ptr noundef %18) #43, !dbg !1477
  unreachable, !dbg !1477

19:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1478
  %20 = add nsw i32 %4, 1, !dbg !1482
  store i32 %20, ptr @pos, align 4, !dbg !1482, !tbaa !1052
  %21 = load i32, ptr @argc, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %24, label %23, !dbg !1483

23:                                               ; preds = %19
  tail call fastcc void @beyond(), !dbg !1484
  unreachable, !dbg !1484

24:                                               ; preds = %19
  %25 = add nsw i32 %4, 2, !dbg !1485
  store i32 %25, ptr @pos, align 4, !dbg !1485, !tbaa !1052
  %26 = sext i32 %20 to i64, !dbg !1486
  %27 = getelementptr inbounds ptr, ptr %3, i64 %26, !dbg !1486
  %28 = load ptr, ptr %27, align 8, !dbg !1486, !tbaa !951
  %29 = call i32 @stat(ptr noundef %28, ptr noundef nonnull %2) #39, !dbg !1487
  %30 = icmp eq i32 %29, 0, !dbg !1488
  br label %375, !dbg !1489

31:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1490
  %32 = add nsw i32 %4, 1, !dbg !1493
  store i32 %32, ptr @pos, align 4, !dbg !1493, !tbaa !1052
  %33 = load i32, ptr @argc, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %36, label %35, !dbg !1494

35:                                               ; preds = %31
  tail call fastcc void @beyond(), !dbg !1495
  unreachable, !dbg !1495

36:                                               ; preds = %31
  %37 = add nsw i32 %4, 2, !dbg !1496
  store i32 %37, ptr @pos, align 4, !dbg !1496, !tbaa !1052
  %38 = sext i32 %32 to i64, !dbg !1497
  %39 = getelementptr inbounds ptr, ptr %3, i64 %38, !dbg !1497
  %40 = load ptr, ptr %39, align 8, !dbg !1497, !tbaa !951
  %41 = tail call i32 @euidaccess(ptr noundef %40, i32 noundef 4) #39, !dbg !1498
  %42 = icmp eq i32 %41, 0, !dbg !1499
  br label %375, !dbg !1500

43:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1501
  %44 = add nsw i32 %4, 1, !dbg !1504
  store i32 %44, ptr @pos, align 4, !dbg !1504, !tbaa !1052
  %45 = load i32, ptr @argc, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %48, label %47, !dbg !1505

47:                                               ; preds = %43
  tail call fastcc void @beyond(), !dbg !1506
  unreachable, !dbg !1506

48:                                               ; preds = %43
  %49 = add nsw i32 %4, 2, !dbg !1507
  store i32 %49, ptr @pos, align 4, !dbg !1507, !tbaa !1052
  %50 = sext i32 %44 to i64, !dbg !1508
  %51 = getelementptr inbounds ptr, ptr %3, i64 %50, !dbg !1508
  %52 = load ptr, ptr %51, align 8, !dbg !1508, !tbaa !951
  %53 = tail call i32 @euidaccess(ptr noundef %52, i32 noundef 2) #39, !dbg !1509
  %54 = icmp eq i32 %53, 0, !dbg !1510
  br label %375, !dbg !1511

55:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1512
  %56 = add nsw i32 %4, 1, !dbg !1515
  store i32 %56, ptr @pos, align 4, !dbg !1515, !tbaa !1052
  %57 = load i32, ptr @argc, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %60, label %59, !dbg !1516

59:                                               ; preds = %55
  tail call fastcc void @beyond(), !dbg !1517
  unreachable, !dbg !1517

60:                                               ; preds = %55
  %61 = add nsw i32 %4, 2, !dbg !1518
  store i32 %61, ptr @pos, align 4, !dbg !1518, !tbaa !1052
  %62 = sext i32 %56 to i64, !dbg !1519
  %63 = getelementptr inbounds ptr, ptr %3, i64 %62, !dbg !1519
  %64 = load ptr, ptr %63, align 8, !dbg !1519, !tbaa !951
  %65 = tail call i32 @euidaccess(ptr noundef %64, i32 noundef 1) #39, !dbg !1520
  %66 = icmp eq i32 %65, 0, !dbg !1521
  br label %375, !dbg !1522

67:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1523
  %68 = add nsw i32 %4, 1, !dbg !1526
  store i32 %68, ptr @pos, align 4, !dbg !1526, !tbaa !1052
  %69 = load i32, ptr @argc, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %72, label %71, !dbg !1527

71:                                               ; preds = %67
  tail call fastcc void @beyond(), !dbg !1528
  unreachable, !dbg !1528

72:                                               ; preds = %67
  %73 = add nsw i32 %4, 2, !dbg !1529
  store i32 %73, ptr @pos, align 4, !dbg !1529, !tbaa !1052
  %74 = sext i32 %68 to i64, !dbg !1530
  %75 = getelementptr inbounds ptr, ptr %3, i64 %74, !dbg !1530
  %76 = load ptr, ptr %75, align 8, !dbg !1530, !tbaa !951
  %77 = call i32 @stat(ptr noundef %76, ptr noundef nonnull %2) #39, !dbg !1532
  %78 = icmp eq i32 %77, 0, !dbg !1533
  br i1 %78, label %79, label %375, !dbg !1534

79:                                               ; preds = %72
  call void @llvm.dbg.value(metadata ptr %2, metadata !1535, metadata !DIExpression()), !dbg !1543
  %80 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 11, !dbg !1545
  %81 = load i64, ptr %80, align 8, !dbg !1545, !tbaa.struct !1546
  %82 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 11, i32 1, !dbg !1545
  %83 = load i64, ptr %82, align 8, !dbg !1545, !tbaa.struct !1549
  call void @llvm.dbg.value(metadata i64 %81, metadata !1452, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %83, metadata !1452, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1550
  call void @llvm.dbg.value(metadata ptr %2, metadata !1551, metadata !DIExpression()), !dbg !1554
  %84 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 12, !dbg !1556
  %85 = load i64, ptr %84, align 8, !dbg !1556, !tbaa.struct !1546
  %86 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 12, i32 1, !dbg !1556
  %87 = load i64, ptr %86, align 8, !dbg !1556, !tbaa.struct !1549
  call void @llvm.dbg.value(metadata i64 %85, metadata !1455, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %87, metadata !1455, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %85, metadata !1557, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %87, metadata !1557, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %81, metadata !1563, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %83, metadata !1563, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1564
  %88 = icmp sgt i64 %85, %81, !dbg !1566
  %89 = zext i1 %88 to i32, !dbg !1566
  %90 = icmp slt i64 %85, %81, !dbg !1566
  %91 = sext i1 %90 to i32, !dbg !1566
  %92 = add nsw i32 %91, %89, !dbg !1566
  %93 = shl nsw i32 %92, 1, !dbg !1567
  %94 = icmp sgt i64 %87, %83, !dbg !1568
  %95 = zext i1 %94 to i32, !dbg !1568
  %96 = icmp slt i64 %87, %83, !dbg !1568
  %97 = sext i1 %96 to i32, !dbg !1568
  %98 = add nsw i32 %97, %95, !dbg !1568
  %99 = add nsw i32 %98, %93, !dbg !1569
  %100 = icmp sgt i32 %99, 0, !dbg !1570
  br label %375

101:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1571
  %102 = add nsw i32 %4, 1, !dbg !1574
  store i32 %102, ptr @pos, align 4, !dbg !1574, !tbaa !1052
  %103 = load i32, ptr @argc, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %106, label %105, !dbg !1575

105:                                              ; preds = %101
  tail call fastcc void @beyond(), !dbg !1576
  unreachable, !dbg !1576

106:                                              ; preds = %101
  %107 = add nsw i32 %4, 2, !dbg !1577
  store i32 %107, ptr @pos, align 4, !dbg !1577, !tbaa !1052
  %108 = sext i32 %102 to i64, !dbg !1578
  %109 = getelementptr inbounds ptr, ptr %3, i64 %108, !dbg !1578
  %110 = load ptr, ptr %109, align 8, !dbg !1578, !tbaa !951
  %111 = call i32 @stat(ptr noundef %110, ptr noundef nonnull %2) #39, !dbg !1580
  %112 = icmp eq i32 %111, 0, !dbg !1581
  br i1 %112, label %113, label %375, !dbg !1582

113:                                              ; preds = %106
  %114 = tail call ptr @__errno_location() #42, !dbg !1583
  store i32 0, ptr %114, align 4, !dbg !1584, !tbaa !1052
  %115 = tail call i32 @geteuid() #39, !dbg !1585
  call void @llvm.dbg.value(metadata i32 %115, metadata !1456, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32 -1, metadata !1460, metadata !DIExpression()), !dbg !1586
  %116 = icmp eq i32 %115, -1, !dbg !1587
  br i1 %116, label %117, label %120, !dbg !1588

117:                                              ; preds = %113
  %118 = load i32, ptr %114, align 4, !dbg !1589, !tbaa !1052
  %119 = icmp eq i32 %118, 0, !dbg !1589
  br i1 %119, label %120, label %375, !dbg !1590

120:                                              ; preds = %117, %113
  %121 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 4, !dbg !1591
  %122 = load i32, ptr %121, align 4, !dbg !1591, !tbaa !1592
  %123 = icmp eq i32 %115, %122, !dbg !1595
  br label %375

124:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1596
  %125 = add nsw i32 %4, 1, !dbg !1599
  store i32 %125, ptr @pos, align 4, !dbg !1599, !tbaa !1052
  %126 = load i32, ptr @argc, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %129, label %128, !dbg !1600

128:                                              ; preds = %124
  tail call fastcc void @beyond(), !dbg !1601
  unreachable, !dbg !1601

129:                                              ; preds = %124
  %130 = add nsw i32 %4, 2, !dbg !1602
  store i32 %130, ptr @pos, align 4, !dbg !1602, !tbaa !1052
  %131 = sext i32 %125 to i64, !dbg !1603
  %132 = getelementptr inbounds ptr, ptr %3, i64 %131, !dbg !1603
  %133 = load ptr, ptr %132, align 8, !dbg !1603, !tbaa !951
  %134 = call i32 @stat(ptr noundef %133, ptr noundef nonnull %2) #39, !dbg !1605
  %135 = icmp eq i32 %134, 0, !dbg !1606
  br i1 %135, label %136, label %375, !dbg !1607

136:                                              ; preds = %129
  %137 = tail call ptr @__errno_location() #42, !dbg !1608
  store i32 0, ptr %137, align 4, !dbg !1609, !tbaa !1052
  %138 = tail call i32 @getegid() #39, !dbg !1610
  call void @llvm.dbg.value(metadata i32 %138, metadata !1461, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i32 -1, metadata !1464, metadata !DIExpression()), !dbg !1611
  %139 = icmp eq i32 %138, -1, !dbg !1612
  br i1 %139, label %140, label %143, !dbg !1613

140:                                              ; preds = %136
  %141 = load i32, ptr %137, align 4, !dbg !1614, !tbaa !1052
  %142 = icmp eq i32 %141, 0, !dbg !1614
  br i1 %142, label %143, label %375, !dbg !1615

143:                                              ; preds = %140, %136
  %144 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 5, !dbg !1616
  %145 = load i32, ptr %144, align 8, !dbg !1616, !tbaa !1617
  %146 = icmp eq i32 %138, %145, !dbg !1618
  br label %375

147:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1619
  %148 = add nsw i32 %4, 1, !dbg !1622
  store i32 %148, ptr @pos, align 4, !dbg !1622, !tbaa !1052
  %149 = load i32, ptr @argc, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %152, label %151, !dbg !1623

151:                                              ; preds = %147
  tail call fastcc void @beyond(), !dbg !1624
  unreachable, !dbg !1624

152:                                              ; preds = %147
  %153 = add nsw i32 %4, 2, !dbg !1625
  store i32 %153, ptr @pos, align 4, !dbg !1625, !tbaa !1052
  %154 = sext i32 %148 to i64, !dbg !1626
  %155 = getelementptr inbounds ptr, ptr %3, i64 %154, !dbg !1626
  %156 = load ptr, ptr %155, align 8, !dbg !1626, !tbaa !951
  %157 = call i32 @stat(ptr noundef %156, ptr noundef nonnull %2) #39, !dbg !1627
  %158 = icmp eq i32 %157, 0, !dbg !1628
  %159 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1629
  %160 = load i32, ptr %159, align 8, !dbg !1629
  %161 = and i32 %160, 61440, !dbg !1629
  %162 = icmp eq i32 %161, 32768, !dbg !1629
  %163 = select i1 %158, i1 %162, i1 false, !dbg !1629
  br label %375, !dbg !1630

164:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1631
  %165 = add nsw i32 %4, 1, !dbg !1634
  store i32 %165, ptr @pos, align 4, !dbg !1634, !tbaa !1052
  %166 = load i32, ptr @argc, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %169, label %168, !dbg !1635

168:                                              ; preds = %164
  tail call fastcc void @beyond(), !dbg !1636
  unreachable, !dbg !1636

169:                                              ; preds = %164
  %170 = add nsw i32 %4, 2, !dbg !1637
  store i32 %170, ptr @pos, align 4, !dbg !1637, !tbaa !1052
  %171 = sext i32 %165 to i64, !dbg !1638
  %172 = getelementptr inbounds ptr, ptr %3, i64 %171, !dbg !1638
  %173 = load ptr, ptr %172, align 8, !dbg !1638, !tbaa !951
  %174 = call i32 @stat(ptr noundef %173, ptr noundef nonnull %2) #39, !dbg !1639
  %175 = icmp eq i32 %174, 0, !dbg !1640
  %176 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1641
  %177 = load i32, ptr %176, align 8, !dbg !1641
  %178 = and i32 %177, 61440, !dbg !1641
  %179 = icmp eq i32 %178, 16384, !dbg !1641
  %180 = select i1 %175, i1 %179, i1 false, !dbg !1641
  br label %375, !dbg !1642

181:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1643
  %182 = add nsw i32 %4, 1, !dbg !1646
  store i32 %182, ptr @pos, align 4, !dbg !1646, !tbaa !1052
  %183 = load i32, ptr @argc, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %186, label %185, !dbg !1647

185:                                              ; preds = %181
  tail call fastcc void @beyond(), !dbg !1648
  unreachable, !dbg !1648

186:                                              ; preds = %181
  %187 = add nsw i32 %4, 2, !dbg !1649
  store i32 %187, ptr @pos, align 4, !dbg !1649, !tbaa !1052
  %188 = sext i32 %182 to i64, !dbg !1650
  %189 = getelementptr inbounds ptr, ptr %3, i64 %188, !dbg !1650
  %190 = load ptr, ptr %189, align 8, !dbg !1650, !tbaa !951
  %191 = call i32 @stat(ptr noundef %190, ptr noundef nonnull %2) #39, !dbg !1651
  %192 = icmp eq i32 %191, 0, !dbg !1652
  %193 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8, !dbg !1653
  %194 = load i64, ptr %193, align 8, !dbg !1653
  %195 = icmp sgt i64 %194, 0, !dbg !1653
  %196 = select i1 %192, i1 %195, i1 false, !dbg !1653
  br label %375, !dbg !1654

197:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1655
  %198 = add nsw i32 %4, 1, !dbg !1658
  store i32 %198, ptr @pos, align 4, !dbg !1658, !tbaa !1052
  %199 = load i32, ptr @argc, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %202, label %201, !dbg !1659

201:                                              ; preds = %197
  tail call fastcc void @beyond(), !dbg !1660
  unreachable, !dbg !1660

202:                                              ; preds = %197
  %203 = add nsw i32 %4, 2, !dbg !1661
  store i32 %203, ptr @pos, align 4, !dbg !1661, !tbaa !1052
  %204 = sext i32 %198 to i64, !dbg !1662
  %205 = getelementptr inbounds ptr, ptr %3, i64 %204, !dbg !1662
  %206 = load ptr, ptr %205, align 8, !dbg !1662, !tbaa !951
  %207 = call i32 @stat(ptr noundef %206, ptr noundef nonnull %2) #39, !dbg !1663
  %208 = icmp eq i32 %207, 0, !dbg !1664
  %209 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1665
  %210 = load i32, ptr %209, align 8, !dbg !1665
  %211 = and i32 %210, 61440, !dbg !1665
  %212 = icmp eq i32 %211, 49152, !dbg !1665
  %213 = select i1 %208, i1 %212, i1 false, !dbg !1665
  br label %375, !dbg !1666

214:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1667
  %215 = add nsw i32 %4, 1, !dbg !1670
  store i32 %215, ptr @pos, align 4, !dbg !1670, !tbaa !1052
  %216 = load i32, ptr @argc, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %219, label %218, !dbg !1671

218:                                              ; preds = %214
  tail call fastcc void @beyond(), !dbg !1672
  unreachable, !dbg !1672

219:                                              ; preds = %214
  %220 = add nsw i32 %4, 2, !dbg !1673
  store i32 %220, ptr @pos, align 4, !dbg !1673, !tbaa !1052
  %221 = sext i32 %215 to i64, !dbg !1674
  %222 = getelementptr inbounds ptr, ptr %3, i64 %221, !dbg !1674
  %223 = load ptr, ptr %222, align 8, !dbg !1674, !tbaa !951
  %224 = call i32 @stat(ptr noundef %223, ptr noundef nonnull %2) #39, !dbg !1675
  %225 = icmp eq i32 %224, 0, !dbg !1676
  %226 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1677
  %227 = load i32, ptr %226, align 8, !dbg !1677
  %228 = and i32 %227, 61440, !dbg !1677
  %229 = icmp eq i32 %228, 8192, !dbg !1677
  %230 = select i1 %225, i1 %229, i1 false, !dbg !1677
  br label %375, !dbg !1678

231:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1679
  %232 = add nsw i32 %4, 1, !dbg !1682
  store i32 %232, ptr @pos, align 4, !dbg !1682, !tbaa !1052
  %233 = load i32, ptr @argc, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %236, label %235, !dbg !1683

235:                                              ; preds = %231
  tail call fastcc void @beyond(), !dbg !1684
  unreachable, !dbg !1684

236:                                              ; preds = %231
  %237 = add nsw i32 %4, 2, !dbg !1685
  store i32 %237, ptr @pos, align 4, !dbg !1685, !tbaa !1052
  %238 = sext i32 %232 to i64, !dbg !1686
  %239 = getelementptr inbounds ptr, ptr %3, i64 %238, !dbg !1686
  %240 = load ptr, ptr %239, align 8, !dbg !1686, !tbaa !951
  %241 = call i32 @stat(ptr noundef %240, ptr noundef nonnull %2) #39, !dbg !1687
  %242 = icmp eq i32 %241, 0, !dbg !1688
  %243 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1689
  %244 = load i32, ptr %243, align 8, !dbg !1689
  %245 = and i32 %244, 61440, !dbg !1689
  %246 = icmp eq i32 %245, 24576, !dbg !1689
  %247 = select i1 %242, i1 %246, i1 false, !dbg !1689
  br label %375, !dbg !1690

248:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1691
  %249 = add nsw i32 %4, 1, !dbg !1694
  store i32 %249, ptr @pos, align 4, !dbg !1694, !tbaa !1052
  %250 = load i32, ptr @argc, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %253, label %252, !dbg !1695

252:                                              ; preds = %248
  tail call fastcc void @beyond(), !dbg !1696
  unreachable, !dbg !1696

253:                                              ; preds = %248
  %254 = add nsw i32 %4, 2, !dbg !1697
  store i32 %254, ptr @pos, align 4, !dbg !1697, !tbaa !1052
  %255 = sext i32 %249 to i64, !dbg !1698
  %256 = getelementptr inbounds ptr, ptr %3, i64 %255, !dbg !1698
  %257 = load ptr, ptr %256, align 8, !dbg !1698, !tbaa !951
  %258 = call i32 @stat(ptr noundef %257, ptr noundef nonnull %2) #39, !dbg !1699
  %259 = icmp eq i32 %258, 0, !dbg !1700
  %260 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1701
  %261 = load i32, ptr %260, align 8, !dbg !1701
  %262 = and i32 %261, 61440, !dbg !1701
  %263 = icmp eq i32 %262, 4096, !dbg !1701
  %264 = select i1 %259, i1 %263, i1 false, !dbg !1701
  br label %375, !dbg !1702

265:                                              ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1703
  %266 = add nsw i32 %4, 1, !dbg !1706
  store i32 %266, ptr @pos, align 4, !dbg !1706, !tbaa !1052
  %267 = load i32, ptr @argc, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %270, label %269, !dbg !1707

269:                                              ; preds = %265
  tail call fastcc void @beyond(), !dbg !1708
  unreachable, !dbg !1708

270:                                              ; preds = %265
  %271 = add nsw i32 %4, 2, !dbg !1709
  store i32 %271, ptr @pos, align 4, !dbg !1709, !tbaa !1052
  %272 = sext i32 %266 to i64, !dbg !1710
  %273 = getelementptr inbounds ptr, ptr %3, i64 %272, !dbg !1710
  %274 = load ptr, ptr %273, align 8, !dbg !1710, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %274, metadata !1711, metadata !DIExpression()), !dbg !1718
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #39, !dbg !1720
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1717, metadata !DIExpression()), !dbg !1721
  %275 = call i64 @readlink(ptr noundef nonnull %274, ptr noundef nonnull %1, i64 noundef 1) #39, !dbg !1722
  %276 = icmp sgt i64 %275, -1, !dbg !1724
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #39, !dbg !1725
  br label %375, !dbg !1726

277:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1727
  %278 = add nsw i32 %4, 1, !dbg !1730
  store i32 %278, ptr @pos, align 4, !dbg !1730, !tbaa !1052
  %279 = load i32, ptr @argc, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %282, label %281, !dbg !1731

281:                                              ; preds = %277
  tail call fastcc void @beyond(), !dbg !1732
  unreachable, !dbg !1732

282:                                              ; preds = %277
  %283 = add nsw i32 %4, 2, !dbg !1733
  store i32 %283, ptr @pos, align 4, !dbg !1733, !tbaa !1052
  %284 = sext i32 %278 to i64, !dbg !1734
  %285 = getelementptr inbounds ptr, ptr %3, i64 %284, !dbg !1734
  %286 = load ptr, ptr %285, align 8, !dbg !1734, !tbaa !951
  %287 = call i32 @stat(ptr noundef %286, ptr noundef nonnull %2) #39, !dbg !1735
  %288 = icmp eq i32 %287, 0, !dbg !1736
  %289 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1737
  %290 = load i32, ptr %289, align 8, !dbg !1737
  %291 = and i32 %290, 2048, !dbg !1737
  %292 = icmp ne i32 %291, 0, !dbg !1737
  %293 = select i1 %288, i1 %292, i1 false, !dbg !1737
  br label %375, !dbg !1738

294:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1739
  %295 = add nsw i32 %4, 1, !dbg !1742
  store i32 %295, ptr @pos, align 4, !dbg !1742, !tbaa !1052
  %296 = load i32, ptr @argc, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %299, label %298, !dbg !1743

298:                                              ; preds = %294
  tail call fastcc void @beyond(), !dbg !1744
  unreachable, !dbg !1744

299:                                              ; preds = %294
  %300 = add nsw i32 %4, 2, !dbg !1745
  store i32 %300, ptr @pos, align 4, !dbg !1745, !tbaa !1052
  %301 = sext i32 %295 to i64, !dbg !1746
  %302 = getelementptr inbounds ptr, ptr %3, i64 %301, !dbg !1746
  %303 = load ptr, ptr %302, align 8, !dbg !1746, !tbaa !951
  %304 = call i32 @stat(ptr noundef %303, ptr noundef nonnull %2) #39, !dbg !1747
  %305 = icmp eq i32 %304, 0, !dbg !1748
  %306 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1749
  %307 = load i32, ptr %306, align 8, !dbg !1749
  %308 = and i32 %307, 1024, !dbg !1749
  %309 = icmp ne i32 %308, 0, !dbg !1749
  %310 = select i1 %305, i1 %309, i1 false, !dbg !1749
  br label %375, !dbg !1750

311:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1751
  %312 = add nsw i32 %4, 1, !dbg !1754
  store i32 %312, ptr @pos, align 4, !dbg !1754, !tbaa !1052
  %313 = load i32, ptr @argc, align 4
  %314 = icmp slt i32 %312, %313
  br i1 %314, label %316, label %315, !dbg !1755

315:                                              ; preds = %311
  tail call fastcc void @beyond(), !dbg !1756
  unreachable, !dbg !1756

316:                                              ; preds = %311
  %317 = add nsw i32 %4, 2, !dbg !1757
  store i32 %317, ptr @pos, align 4, !dbg !1757, !tbaa !1052
  %318 = sext i32 %312 to i64, !dbg !1758
  %319 = getelementptr inbounds ptr, ptr %3, i64 %318, !dbg !1758
  %320 = load ptr, ptr %319, align 8, !dbg !1758, !tbaa !951
  %321 = call i32 @stat(ptr noundef %320, ptr noundef nonnull %2) #39, !dbg !1759
  %322 = icmp eq i32 %321, 0, !dbg !1760
  %323 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1761
  %324 = load i32, ptr %323, align 8, !dbg !1761
  %325 = and i32 %324, 512, !dbg !1761
  %326 = icmp ne i32 %325, 0, !dbg !1761
  %327 = select i1 %322, i1 %326, i1 false, !dbg !1761
  br label %375, !dbg !1762

328:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1763
  %329 = add nsw i32 %4, 1, !dbg !1766
  store i32 %329, ptr @pos, align 4, !dbg !1766, !tbaa !1052
  %330 = load i32, ptr @argc, align 4
  %331 = icmp slt i32 %329, %330
  br i1 %331, label %333, label %332, !dbg !1767

332:                                              ; preds = %328
  tail call fastcc void @beyond(), !dbg !1768
  unreachable, !dbg !1768

333:                                              ; preds = %328
  %334 = add nsw i32 %4, 2, !dbg !1769
  store i32 %334, ptr @pos, align 4, !dbg !1769, !tbaa !1052
  %335 = sext i32 %329 to i64, !dbg !1770
  %336 = getelementptr inbounds ptr, ptr %3, i64 %335, !dbg !1770
  %337 = load ptr, ptr %336, align 8, !dbg !1770, !tbaa !951
  %338 = tail call fastcc ptr @find_int(ptr noundef %337), !dbg !1771
  call void @llvm.dbg.value(metadata ptr %338, metadata !1467, metadata !DIExpression()), !dbg !1772
  %339 = tail call ptr @__errno_location() #42, !dbg !1773
  store i32 0, ptr %339, align 4, !dbg !1774, !tbaa !1052
  %340 = tail call i64 @strtol(ptr nocapture noundef %338, ptr noundef null, i32 noundef 10) #39, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %340, metadata !1465, metadata !DIExpression()), !dbg !1772
  %341 = load i32, ptr %339, align 4, !dbg !1776, !tbaa !1052
  %342 = icmp ne i32 %341, 34, !dbg !1777
  %343 = icmp sgt i64 %340, -1
  %344 = select i1 %342, i1 %343, i1 false, !dbg !1778
  %345 = icmp slt i64 %340, 2147483648
  %346 = select i1 %344, i1 %345, i1 false, !dbg !1778
  br i1 %346, label %347, label %375, !dbg !1778

347:                                              ; preds = %333
  %348 = trunc i64 %340 to i32, !dbg !1779
  %349 = tail call i32 @isatty(i32 noundef %348) #39, !dbg !1780
  %350 = icmp ne i32 %349, 0, !dbg !1781
  br label %375

351:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1782
  %352 = add nsw i32 %4, 1, !dbg !1785
  store i32 %352, ptr @pos, align 4, !dbg !1785, !tbaa !1052
  %353 = load i32, ptr @argc, align 4
  %354 = icmp slt i32 %352, %353
  br i1 %354, label %356, label %355, !dbg !1786

355:                                              ; preds = %351
  tail call fastcc void @beyond(), !dbg !1787
  unreachable, !dbg !1787

356:                                              ; preds = %351
  %357 = add nsw i32 %4, 2, !dbg !1788
  store i32 %357, ptr @pos, align 4, !dbg !1788, !tbaa !1052
  %358 = sext i32 %352 to i64, !dbg !1789
  %359 = getelementptr inbounds ptr, ptr %3, i64 %358, !dbg !1789
  %360 = load ptr, ptr %359, align 8, !dbg !1789, !tbaa !951
  %361 = load i8, ptr %360, align 1, !dbg !1789, !tbaa !1061
  %362 = icmp ne i8 %361, 0, !dbg !1790
  br label %375, !dbg !1791

363:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1792
  %364 = add nsw i32 %4, 1, !dbg !1795
  store i32 %364, ptr @pos, align 4, !dbg !1795, !tbaa !1052
  %365 = load i32, ptr @argc, align 4
  %366 = icmp slt i32 %364, %365
  br i1 %366, label %368, label %367, !dbg !1796

367:                                              ; preds = %363
  tail call fastcc void @beyond(), !dbg !1797
  unreachable, !dbg !1797

368:                                              ; preds = %363
  %369 = add nsw i32 %4, 2, !dbg !1798
  store i32 %369, ptr @pos, align 4, !dbg !1798, !tbaa !1052
  %370 = sext i32 %364 to i64, !dbg !1799
  %371 = getelementptr inbounds ptr, ptr %3, i64 %370, !dbg !1799
  %372 = load ptr, ptr %371, align 8, !dbg !1799, !tbaa !951
  %373 = load i8, ptr %372, align 1, !dbg !1799, !tbaa !1061
  %374 = icmp eq i8 %373, 0, !dbg !1800
  br label %375, !dbg !1801

375:                                              ; preds = %333, %347, %140, %143, %129, %117, %120, %106, %72, %368, %356, %316, %299, %282, %270, %253, %236, %219, %202, %186, %169, %152, %79, %60, %48, %36, %24
  %376 = phi i1 [ %374, %368 ], [ %362, %356 ], [ %327, %316 ], [ %310, %299 ], [ %293, %282 ], [ %276, %270 ], [ %264, %253 ], [ %247, %236 ], [ %230, %219 ], [ %213, %202 ], [ %196, %186 ], [ %180, %169 ], [ %163, %152 ], [ %100, %79 ], [ %66, %60 ], [ %54, %48 ], [ %42, %36 ], [ %30, %24 ], [ false, %72 ], [ false, %106 ], [ false, %117 ], [ %123, %120 ], [ false, %129 ], [ false, %140 ], [ %146, %143 ], [ false, %333 ], [ %350, %347 ], !dbg !1802
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #39, !dbg !1803
  ret i1 %376, !dbg !1803
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !1804 {
  %1 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.92, i32 noundef 5) #39, !dbg !1805
  %2 = load ptr, ptr @argv, align 8, !dbg !1806, !tbaa !951
  %3 = load i32, ptr @argc, align 4, !dbg !1807, !tbaa !1052
  %4 = add nsw i32 %3, -1, !dbg !1808
  %5 = sext i32 %4 to i64, !dbg !1806
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5, !dbg !1806
  %7 = load ptr, ptr %6, align 8, !dbg !1806, !tbaa !951
  %8 = tail call ptr @quote(ptr noundef %7) #39, !dbg !1809
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %1, ptr noundef %8) #43, !dbg !1810
  unreachable, !dbg !1810
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @three_arguments() unnamed_addr #10 !dbg !1811 {
  %1 = load ptr, ptr @argv, align 8, !dbg !1815, !tbaa !951
  %2 = load i32, ptr @pos, align 4, !dbg !1816, !tbaa !1052
  %3 = add nsw i32 %2, 1, !dbg !1817
  %4 = sext i32 %3 to i64, !dbg !1815
  %5 = getelementptr inbounds ptr, ptr %1, i64 %4, !dbg !1815
  %6 = load ptr, ptr %5, align 8, !dbg !1815, !tbaa !951
  %7 = tail call fastcc i32 @binop(ptr noundef %6), !dbg !1818
  call void @llvm.dbg.value(metadata i32 %7, metadata !1814, metadata !DIExpression()), !dbg !1819
  %8 = icmp sgt i32 %7, -1, !dbg !1820
  br i1 %8, label %9, label %11, !dbg !1822

9:                                                ; preds = %0
  %10 = tail call fastcc zeroext i1 @binary_operator(i1 noundef zeroext false, i32 noundef %7), !dbg !1823
  call void @llvm.dbg.value(metadata i1 %10, metadata !1813, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1819
  br label %90, !dbg !1824

11:                                               ; preds = %0
  %12 = sext i32 %2 to i64, !dbg !1825
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12, !dbg !1825
  %14 = load ptr, ptr %13, align 8, !dbg !1825, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %14, metadata !1063, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1069, metadata !DIExpression()), !dbg !1827
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(2) @.str.85) #40, !dbg !1829
  %16 = icmp eq i32 %15, 0, !dbg !1830
  br i1 %16, label %17, label %49, !dbg !1831

17:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1832
  store i32 %3, ptr @pos, align 4, !dbg !1835, !tbaa !1052
  %18 = load i32, ptr @argc, align 4
  %19 = icmp slt i32 %3, %18
  br i1 %19, label %21, label %20, !dbg !1836

20:                                               ; preds = %17
  tail call fastcc void @beyond(), !dbg !1837
  unreachable, !dbg !1837

21:                                               ; preds = %17
  call void @llvm.dbg.value(metadata ptr %6, metadata !1063, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1069, metadata !DIExpression()), !dbg !1838
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.85) #40, !dbg !1841
  %23 = icmp eq i32 %22, 0, !dbg !1842
  br i1 %23, label %24, label %32, !dbg !1843

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i1 false, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1844
  %25 = add nsw i32 %2, 2, !dbg !1846
  %26 = add nsw i32 %2, 3, !dbg !1847
  store i32 %26, ptr @pos, align 4, !dbg !1847, !tbaa !1052
  %27 = sext i32 %25 to i64, !dbg !1849
  %28 = getelementptr inbounds ptr, ptr %1, i64 %27, !dbg !1849
  %29 = load ptr, ptr %28, align 8, !dbg !1849, !tbaa !951
  %30 = load i8, ptr %29, align 1, !dbg !1849, !tbaa !1061
  %31 = icmp eq i8 %30, 0, !dbg !1850
  call void @llvm.dbg.value(metadata i1 %31, metadata !1275, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1851
  br label %46, !dbg !1852

32:                                               ; preds = %21
  %33 = load i8, ptr %6, align 1, !dbg !1853, !tbaa !1061
  %34 = icmp eq i8 %33, 45, !dbg !1854
  br i1 %34, label %35, label %45, !dbg !1855

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !1856
  %37 = load i8, ptr %36, align 1, !dbg !1856, !tbaa !1061
  %38 = icmp eq i8 %37, 0, !dbg !1857
  br i1 %38, label %45, label %39, !dbg !1858

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %6, i64 2, !dbg !1859
  %41 = load i8, ptr %40, align 1, !dbg !1859, !tbaa !1061
  %42 = icmp eq i8 %41, 0, !dbg !1860
  br i1 %42, label %43, label %45, !dbg !1861

43:                                               ; preds = %39
  %44 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1862
  call void @llvm.dbg.value(metadata i1 %44, metadata !1275, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1851
  br label %46

45:                                               ; preds = %39, %35, %32
  tail call fastcc void @beyond() #43, !dbg !1863
  unreachable, !dbg !1863

46:                                               ; preds = %24, %43
  %47 = phi i1 [ %31, %24 ], [ %44, %43 ]
  call void @llvm.dbg.value(metadata i1 %47, metadata !1275, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1851
  %48 = xor i1 %47, true, !dbg !1864
  call void @llvm.dbg.value(metadata i1 %48, metadata !1813, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1819
  br label %90, !dbg !1865

49:                                               ; preds = %11
  call void @llvm.dbg.value(metadata ptr %14, metadata !1063, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata ptr @.str.86, metadata !1069, metadata !DIExpression()), !dbg !1866
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(2) @.str.86) #40, !dbg !1869
  %51 = icmp eq i32 %50, 0, !dbg !1870
  br i1 %51, label %52, label %63, !dbg !1871

52:                                               ; preds = %49
  %53 = add nsw i32 %2, 2, !dbg !1872
  %54 = sext i32 %53 to i64, !dbg !1873
  %55 = getelementptr inbounds ptr, ptr %1, i64 %54, !dbg !1873
  %56 = load ptr, ptr %55, align 8, !dbg !1873, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %56, metadata !1063, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1069, metadata !DIExpression()), !dbg !1874
  %57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(2) @.str.87) #40, !dbg !1876
  %58 = icmp eq i32 %57, 0, !dbg !1877
  br i1 %58, label %59, label %63, !dbg !1878

59:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i1 false, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1879
  %60 = load i8, ptr %6, align 1, !dbg !1882, !tbaa !1061
  %61 = icmp ne i8 %60, 0, !dbg !1884
  call void @llvm.dbg.value(metadata i1 %61, metadata !1813, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1819
  call void @llvm.dbg.value(metadata i1 false, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1885
  %62 = add nsw i32 %2, 3, !dbg !1887
  store i32 %62, ptr @pos, align 4, !dbg !1887, !tbaa !1052
  br label %90, !dbg !1888

63:                                               ; preds = %52, %49
  call void @llvm.dbg.value(metadata ptr %6, metadata !1063, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata ptr @.str.93, metadata !1069, metadata !DIExpression()), !dbg !1889
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(3) @.str.93) #40, !dbg !1892
  %65 = icmp eq i32 %64, 0, !dbg !1893
  br i1 %65, label %75, label %66, !dbg !1894

66:                                               ; preds = %63
  call void @llvm.dbg.value(metadata ptr %6, metadata !1063, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata ptr @.str.94, metadata !1069, metadata !DIExpression()), !dbg !1895
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(3) @.str.94) #40, !dbg !1897
  %68 = icmp eq i32 %67, 0, !dbg !1898
  br i1 %68, label %75, label %69, !dbg !1899

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata ptr %6, metadata !1063, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata ptr @.str.95, metadata !1069, metadata !DIExpression()), !dbg !1900
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.95) #40, !dbg !1902
  %71 = icmp eq i32 %70, 0, !dbg !1903
  br i1 %71, label %75, label %72, !dbg !1904

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata ptr %6, metadata !1063, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata ptr @.str.96, metadata !1069, metadata !DIExpression()), !dbg !1905
  %73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.96) #40, !dbg !1907
  %74 = icmp eq i32 %73, 0, !dbg !1908
  br i1 %74, label %75, label %81, !dbg !1909

75:                                               ; preds = %72, %69, %66, %63
  %76 = load i32, ptr @argc, align 4, !dbg !1910, !tbaa !1052
  %77 = icmp slt i32 %2, %76, !dbg !1912
  br i1 %77, label %79, label %78, !dbg !1913

78:                                               ; preds = %75
  tail call fastcc void @beyond() #43, !dbg !1914
  unreachable, !dbg !1914

79:                                               ; preds = %75
  %80 = tail call fastcc zeroext i1 @or(), !dbg !1915
  call void @llvm.dbg.value(metadata i1 %80, metadata !1813, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1819
  br label %90

81:                                               ; preds = %72
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.97, i32 noundef 5) #39, !dbg !1916
  %83 = load ptr, ptr @argv, align 8, !dbg !1917, !tbaa !951
  %84 = load i32, ptr @pos, align 4, !dbg !1918, !tbaa !1052
  %85 = add nsw i32 %84, 1, !dbg !1919
  %86 = sext i32 %85 to i64, !dbg !1917
  %87 = getelementptr inbounds ptr, ptr %83, i64 %86, !dbg !1917
  %88 = load ptr, ptr %87, align 8, !dbg !1917, !tbaa !951
  %89 = tail call ptr @quote(ptr noundef %88) #39, !dbg !1920
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %82, ptr noundef %89) #43, !dbg !1921
  unreachable, !dbg !1921

90:                                               ; preds = %46, %79, %59, %9
  %91 = phi i1 [ %10, %9 ], [ %48, %46 ], [ %61, %59 ], [ %80, %79 ]
  call void @llvm.dbg.value(metadata i1 %91, metadata !1813, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1819
  ret i1 %91, !dbg !1922
}

; Function Attrs: noreturn nounwind
declare !dbg !1923 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @or() unnamed_addr #10 !dbg !1927 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1929, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 1, metadata !1931, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8 poison, metadata !1931, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8 0, metadata !1937, metadata !DIExpression()), !dbg !1945
  %1 = load i32, ptr @argc, align 4, !tbaa !1052
  %2 = load i32, ptr @pos, align 4, !tbaa !1052
  call void @llvm.dbg.value(metadata i8 poison, metadata !1937, metadata !DIExpression()), !dbg !1945
  %3 = icmp sgt i32 %1, %2, !dbg !1948
  br i1 %3, label %4, label %43, !dbg !1949

4:                                                ; preds = %0
  %5 = load ptr, ptr @argv, align 8, !tbaa !951
  br label %6, !dbg !1950

6:                                                ; preds = %4, %200
  %7 = phi ptr [ %183, %200 ], [ %5, %4 ]
  %8 = phi i32 [ %201, %200 ], [ %2, %4 ]
  %9 = phi i32 [ %180, %200 ], [ %1, %4 ]
  %10 = phi i1 [ %195, %200 ], [ false, %4 ]
  br label %11, !dbg !1949

11:                                               ; preds = %6, %189
  %12 = phi ptr [ %7, %6 ], [ %183, %189 ]
  %13 = phi i32 [ %8, %6 ], [ %190, %189 ]
  %14 = phi i32 [ %9, %6 ], [ %180, %189 ]
  %15 = phi i1 [ true, %6 ], [ %178, %189 ]
  %16 = sext i32 %13 to i64, !dbg !1949
  %17 = sext i32 %14 to i64, !dbg !1949
  %18 = add i32 %13, 2, !dbg !1949
  %19 = getelementptr inbounds ptr, ptr %12, i64 %16, !dbg !1951
  %20 = load ptr, ptr %19, align 8, !dbg !1951, !tbaa !951
  %21 = load i8, ptr %20, align 1, !dbg !1951, !tbaa !1061
  %22 = icmp eq i8 %21, 33, !dbg !1952
  br i1 %22, label %23, label %44, !dbg !1953

23:                                               ; preds = %11, %36
  %24 = phi ptr [ %40, %36 ], [ %20, %11 ]
  %25 = phi i1 [ %37, %36 ], [ false, %11 ]
  %26 = phi i64 [ %32, %36 ], [ %16, %11 ]
  %27 = phi i32 [ %38, %36 ], [ %18, %11 ]
  %28 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1954
  %29 = load i8, ptr %28, align 1, !dbg !1954, !tbaa !1061
  %30 = icmp eq i8 %29, 0, !dbg !1955
  br i1 %30, label %31, label %44, !dbg !1956

31:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1957
  %32 = add nsw i64 %26, 1, !dbg !1960
  %33 = trunc i64 %32 to i32, !dbg !1960
  store i32 %33, ptr @pos, align 4, !dbg !1960, !tbaa !1052
  %34 = icmp slt i64 %32, %17
  br i1 %34, label %36, label %35, !dbg !1961

35:                                               ; preds = %31
  tail call fastcc void @beyond(), !dbg !1962
  unreachable, !dbg !1962

36:                                               ; preds = %31
  %37 = xor i1 %25, true, !dbg !1963
  call void @llvm.dbg.value(metadata i8 poison, metadata !1937, metadata !DIExpression()), !dbg !1945
  %38 = add i32 %27, 1, !dbg !1949
  %39 = getelementptr inbounds ptr, ptr %12, i64 %32, !dbg !1951
  %40 = load ptr, ptr %39, align 8, !dbg !1951, !tbaa !951
  %41 = load i8, ptr %40, align 1, !dbg !1951, !tbaa !1061
  %42 = icmp eq i8 %41, 33, !dbg !1952
  br i1 %42, label %23, label %44, !dbg !1953, !llvm.loop !1964

43:                                               ; preds = %200, %189, %0
  tail call fastcc void @beyond() #43, !dbg !1966
  unreachable, !dbg !1966

44:                                               ; preds = %36, %23, %11
  %45 = phi i32 [ %18, %11 ], [ %38, %36 ], [ %27, %23 ]
  %46 = phi i64 [ %16, %11 ], [ %32, %36 ], [ %26, %23 ]
  %47 = phi i1 [ false, %11 ], [ %37, %36 ], [ %25, %23 ]
  %48 = trunc i64 %46 to i32, !dbg !1953
  %49 = shl i64 %46, 32, !dbg !1968
  %50 = ashr exact i64 %49, 32, !dbg !1968
  %51 = getelementptr inbounds ptr, ptr %12, i64 %50, !dbg !1968
  %52 = load ptr, ptr %51, align 8, !dbg !1968, !tbaa !951
  %53 = load i8, ptr %52, align 1, !dbg !1968, !tbaa !1061
  %54 = icmp eq i8 %53, 40, !dbg !1969
  br i1 %54, label %55, label %132, !dbg !1970

55:                                               ; preds = %44
  %56 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !1971
  %57 = load i8, ptr %56, align 1, !dbg !1971, !tbaa !1061
  %58 = icmp eq i8 %57, 0, !dbg !1972
  br i1 %58, label %59, label %132, !dbg !1973

59:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i1 true, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1974
  %60 = add nsw i32 %48, 1, !dbg !1976
  store i32 %60, ptr @pos, align 4, !dbg !1976, !tbaa !1052
  %61 = icmp sgt i32 %14, %60
  br i1 %61, label %62, label %72, !dbg !1977

62:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 1, metadata !1942, metadata !DIExpression()), !dbg !1978
  %63 = add nsw i32 %48, 2, !dbg !1979
  %64 = icmp slt i32 %63, %14, !dbg !1982
  br i1 %64, label %65, label %102, !dbg !1983

65:                                               ; preds = %62
  %66 = sext i32 %45 to i64, !dbg !1984
  %67 = sext i32 %60 to i64, !dbg !1984
  call void @llvm.dbg.value(metadata i64 1, metadata !1942, metadata !DIExpression()), !dbg !1978
  %68 = getelementptr inbounds ptr, ptr %12, i64 %66, !dbg !1985
  %69 = load ptr, ptr %68, align 8, !dbg !1985, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %69, metadata !1063, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1069, metadata !DIExpression()), !dbg !1986
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(2) @.str.87) #40, !dbg !1988
  %71 = icmp eq i32 %70, 0, !dbg !1989
  br i1 %71, label %102, label %73, !dbg !1984

72:                                               ; preds = %59
  tail call fastcc void @beyond(), !dbg !1990
  unreachable, !dbg !1990

73:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i64 2, metadata !1942, metadata !DIExpression()), !dbg !1978
  %74 = add nsw i64 %67, 2, !dbg !1979
  %75 = icmp slt i64 %74, %17, !dbg !1982
  br i1 %75, label %76, label %102, !dbg !1983, !llvm.loop !1991

76:                                               ; preds = %73
  %77 = add nsw i64 %66, 1, !dbg !1979
  call void @llvm.dbg.value(metadata i64 2, metadata !1942, metadata !DIExpression()), !dbg !1978
  %78 = getelementptr inbounds ptr, ptr %12, i64 %77, !dbg !1985
  %79 = load ptr, ptr %78, align 8, !dbg !1985, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %79, metadata !1063, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1069, metadata !DIExpression()), !dbg !1986
  %80 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(2) @.str.87) #40, !dbg !1988
  %81 = icmp eq i32 %80, 0, !dbg !1989
  br i1 %81, label %102, label %82, !dbg !1984

82:                                               ; preds = %76
  call void @llvm.dbg.value(metadata i64 3, metadata !1942, metadata !DIExpression()), !dbg !1978
  %83 = add nsw i64 %67, 3, !dbg !1979
  %84 = icmp slt i64 %83, %17, !dbg !1982
  br i1 %84, label %85, label %102, !dbg !1983, !llvm.loop !1991

85:                                               ; preds = %82
  %86 = add nsw i64 %66, 2, !dbg !1979
  call void @llvm.dbg.value(metadata i64 3, metadata !1942, metadata !DIExpression()), !dbg !1978
  %87 = getelementptr inbounds ptr, ptr %12, i64 %86, !dbg !1985
  %88 = load ptr, ptr %87, align 8, !dbg !1985, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %88, metadata !1063, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1069, metadata !DIExpression()), !dbg !1986
  %89 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %88, ptr noundef nonnull dereferenceable(2) @.str.87) #40, !dbg !1988
  %90 = icmp eq i32 %89, 0, !dbg !1989
  br i1 %90, label %102, label %91, !dbg !1984

91:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i64 4, metadata !1942, metadata !DIExpression()), !dbg !1978
  %92 = add nsw i64 %67, 4, !dbg !1979
  %93 = icmp slt i64 %92, %17, !dbg !1982
  br i1 %93, label %94, label %102, !dbg !1983, !llvm.loop !1991

94:                                               ; preds = %91
  %95 = add nsw i64 %66, 3, !dbg !1979
  call void @llvm.dbg.value(metadata i64 4, metadata !1942, metadata !DIExpression()), !dbg !1978
  %96 = getelementptr inbounds ptr, ptr %12, i64 %95, !dbg !1985
  %97 = load ptr, ptr %96, align 8, !dbg !1985, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %97, metadata !1063, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1069, metadata !DIExpression()), !dbg !1986
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %97, ptr noundef nonnull dereferenceable(2) @.str.87) #40, !dbg !1988
  %99 = icmp eq i32 %98, 0, !dbg !1989
  %100 = sub nsw i32 %14, %60
  %101 = select i1 %99, i32 4, i32 %100, !dbg !1984
  br label %102, !dbg !1984

102:                                              ; preds = %94, %73, %65, %76, %82, %85, %91, %62
  %103 = phi i32 [ 1, %62 ], [ 1, %65 ], [ 2, %73 ], [ 2, %76 ], [ 3, %82 ], [ 3, %85 ], [ 4, %91 ], [ %101, %94 ], !dbg !1993
  call void @llvm.dbg.value(metadata i32 %103, metadata !1942, metadata !DIExpression()), !dbg !1978
  %104 = tail call fastcc zeroext i1 @posixtest(i32 noundef %103), !dbg !1994
  call void @llvm.dbg.value(metadata i1 %104, metadata !1940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1945
  %105 = load ptr, ptr @argv, align 8, !dbg !1995, !tbaa !951
  %106 = load i32, ptr @pos, align 4, !dbg !1997, !tbaa !1052
  %107 = sext i32 %106 to i64, !dbg !1995
  %108 = getelementptr inbounds ptr, ptr %105, i64 %107, !dbg !1995
  %109 = load ptr, ptr %108, align 8, !dbg !1995, !tbaa !951
  %110 = icmp eq ptr %109, null, !dbg !1995
  br i1 %110, label %111, label %114, !dbg !1998

111:                                              ; preds = %102
  %112 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.114, i32 noundef 5) #39, !dbg !1999
  %113 = tail call ptr @quote(ptr noundef nonnull @.str.87) #39, !dbg !2000
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %112, ptr noundef %113) #43, !dbg !2001
  unreachable, !dbg !2001

114:                                              ; preds = %102
  %115 = load i8, ptr %109, align 1, !dbg !2002, !tbaa !1061
  %116 = icmp eq i8 %115, 41, !dbg !2004
  br i1 %116, label %117, label %121, !dbg !2005

117:                                              ; preds = %114
  %118 = getelementptr inbounds i8, ptr %109, i64 1, !dbg !2006
  %119 = load i8, ptr %118, align 1, !dbg !2006, !tbaa !1061
  %120 = icmp eq i8 %119, 0, !dbg !2006
  br i1 %120, label %130, label %121, !dbg !2007

121:                                              ; preds = %117, %114
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.115, i32 noundef 5) #39, !dbg !2008
  %123 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.87) #39, !dbg !2009
  %124 = load ptr, ptr @argv, align 8, !dbg !2010, !tbaa !951
  %125 = load i32, ptr @pos, align 4, !dbg !2011, !tbaa !1052
  %126 = sext i32 %125 to i64, !dbg !2010
  %127 = getelementptr inbounds ptr, ptr %124, i64 %126, !dbg !2010
  %128 = load ptr, ptr %127, align 8, !dbg !2010, !tbaa !951
  %129 = tail call ptr @quote_n(i32 noundef 1, ptr noundef %128) #39, !dbg !2012
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %122, ptr noundef %123, ptr noundef %129) #43, !dbg !2013
  unreachable, !dbg !2013

130:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i1 false, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2014
  %131 = add nsw i32 %106, 1, !dbg !2016
  store i32 %131, ptr @pos, align 4, !dbg !2016, !tbaa !1052
  br label %175, !dbg !2017

132:                                              ; preds = %55, %44
  %133 = sub nsw i32 %14, %48, !dbg !2018
  %134 = icmp sgt i32 %133, 3, !dbg !2020
  br i1 %134, label %135, label %148, !dbg !2021

135:                                              ; preds = %132
  call void @llvm.dbg.value(metadata ptr %52, metadata !1063, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata ptr @.str.110, metadata !1069, metadata !DIExpression()), !dbg !2022
  %136 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(3) @.str.110) #40, !dbg !2024
  %137 = icmp eq i32 %136, 0, !dbg !2025
  br i1 %137, label %138, label %150, !dbg !2026

138:                                              ; preds = %135
  %139 = shl i64 %46, 32, !dbg !2027
  %140 = add i64 %139, 8589934592, !dbg !2027
  %141 = ashr exact i64 %140, 32, !dbg !2027
  %142 = getelementptr inbounds ptr, ptr %12, i64 %141, !dbg !2027
  %143 = load ptr, ptr %142, align 8, !dbg !2027, !tbaa !951
  %144 = tail call fastcc i32 @binop(ptr noundef %143), !dbg !2028
  call void @llvm.dbg.value(metadata i32 %144, metadata !1941, metadata !DIExpression()), !dbg !1945
  %145 = icmp sgt i32 %144, -1, !dbg !2029
  br i1 %145, label %146, label %150, !dbg !2030

146:                                              ; preds = %138
  %147 = tail call fastcc zeroext i1 @binary_operator(i1 noundef zeroext true, i32 noundef %144), !dbg !2031
  call void @llvm.dbg.value(metadata i1 %147, metadata !1940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1945
  br label %175, !dbg !2032

148:                                              ; preds = %132
  %149 = icmp eq i32 %133, 3, !dbg !2033
  br i1 %149, label %150, label %160, !dbg !2035

150:                                              ; preds = %135, %138, %148
  %151 = shl i64 %46, 32, !dbg !2036
  %152 = add i64 %151, 4294967296, !dbg !2036
  %153 = ashr exact i64 %152, 32, !dbg !2036
  %154 = getelementptr inbounds ptr, ptr %12, i64 %153, !dbg !2036
  %155 = load ptr, ptr %154, align 8, !dbg !2036, !tbaa !951
  %156 = tail call fastcc i32 @binop(ptr noundef %155), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %156, metadata !1941, metadata !DIExpression()), !dbg !1945
  %157 = icmp sgt i32 %156, -1, !dbg !2038
  br i1 %157, label %158, label %160, !dbg !2039

158:                                              ; preds = %150
  %159 = tail call fastcc zeroext i1 @binary_operator(i1 noundef zeroext false, i32 noundef %156), !dbg !2040
  call void @llvm.dbg.value(metadata i1 %159, metadata !1940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1945
  br label %175, !dbg !2041

160:                                              ; preds = %150, %148
  %161 = icmp eq i8 %53, 45, !dbg !2042
  br i1 %161, label %162, label %172, !dbg !2044

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !2045
  %164 = load i8, ptr %163, align 1, !dbg !2045, !tbaa !1061
  %165 = icmp eq i8 %164, 0, !dbg !2045
  br i1 %165, label %172, label %166, !dbg !2046

166:                                              ; preds = %162
  %167 = getelementptr inbounds i8, ptr %52, i64 2, !dbg !2047
  %168 = load i8, ptr %167, align 1, !dbg !2047, !tbaa !1061
  %169 = icmp eq i8 %168, 0, !dbg !2048
  br i1 %169, label %170, label %172, !dbg !2049

170:                                              ; preds = %166
  %171 = tail call fastcc zeroext i1 @unary_operator(), !dbg !2050
  call void @llvm.dbg.value(metadata i1 %171, metadata !1940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1945
  br label %175, !dbg !2051

172:                                              ; preds = %166, %162, %160
  %173 = icmp ne i8 %53, 0, !dbg !2052
  call void @llvm.dbg.value(metadata i1 %173, metadata !1940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1945
  call void @llvm.dbg.value(metadata i1 false, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2054
  %174 = add nsw i32 %48, 1, !dbg !2056
  store i32 %174, ptr @pos, align 4, !dbg !2056, !tbaa !1052
  br label %175

175:                                              ; preds = %130, %146, %158, %170, %172
  %176 = phi i1 [ %104, %130 ], [ %147, %146 ], [ %159, %158 ], [ %171, %170 ], [ %173, %172 ]
  call void @llvm.dbg.value(metadata i1 %176, metadata !1940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1945
  %177 = xor i1 %47, %176, !dbg !2057
  %178 = and i1 %15, %177, !dbg !2058
  call void @llvm.dbg.value(metadata i1 %178, metadata !1931, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1934
  %179 = load i32, ptr @pos, align 4, !dbg !2059, !tbaa !1052
  %180 = load i32, ptr @argc, align 4, !dbg !2061, !tbaa !1052
  %181 = icmp slt i32 %179, %180, !dbg !2062
  br i1 %181, label %182, label %192, !dbg !2063

182:                                              ; preds = %175
  %183 = load ptr, ptr @argv, align 8, !dbg !2064, !tbaa !951
  %184 = sext i32 %179 to i64, !dbg !2064
  %185 = getelementptr inbounds ptr, ptr %183, i64 %184, !dbg !2064
  %186 = load ptr, ptr %185, align 8, !dbg !2064, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %186, metadata !1063, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata ptr @.str.93, metadata !1069, metadata !DIExpression()), !dbg !2065
  %187 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %186, ptr noundef nonnull dereferenceable(3) @.str.93) #40, !dbg !2067
  %188 = icmp eq i32 %187, 0, !dbg !2068
  br i1 %188, label %189, label %194, !dbg !2069

189:                                              ; preds = %182
  call void @llvm.dbg.value(metadata i1 false, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2070
  %190 = add nsw i32 %179, 1, !dbg !2072
  store i32 %190, ptr @pos, align 4, !dbg !2072, !tbaa !1052
  call void @llvm.dbg.value(metadata i8 poison, metadata !1931, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8 poison, metadata !1937, metadata !DIExpression()), !dbg !1945
  %191 = icmp sgt i32 %180, %190, !dbg !1948
  br i1 %191, label %11, label %43, !dbg !1949, !llvm.loop !2073

192:                                              ; preds = %175
  %193 = or i1 %10, %178, !dbg !2076
  call void @llvm.dbg.value(metadata i1 %193, metadata !1929, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1930
  br label %198

194:                                              ; preds = %182
  %195 = or i1 %10, %178, !dbg !2076
  call void @llvm.dbg.value(metadata i1 %195, metadata !1929, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1930
  call void @llvm.dbg.value(metadata ptr %186, metadata !1063, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata ptr @.str.94, metadata !1069, metadata !DIExpression()), !dbg !2077
  %196 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %186, ptr noundef nonnull dereferenceable(3) @.str.94) #40, !dbg !2080
  %197 = icmp eq i32 %196, 0, !dbg !2081
  br i1 %197, label %200, label %198, !dbg !2082

198:                                              ; preds = %194, %192
  %199 = phi i1 [ %193, %192 ], [ %195, %194 ]
  ret i1 %199, !dbg !2083

200:                                              ; preds = %194
  call void @llvm.dbg.value(metadata i1 false, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2084
  %201 = add nsw i32 %179, 1, !dbg !2086
  store i32 %201, ptr @pos, align 4, !dbg !2086, !tbaa !1052
  call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 poison, metadata !1931, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8 poison, metadata !1937, metadata !DIExpression()), !dbg !1945
  %202 = icmp sgt i32 %180, %201, !dbg !1948
  br i1 %202, label %6, label %43, !dbg !1949, !llvm.loop !2087
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i32 @binop(ptr nocapture noundef readonly %0) unnamed_addr #13 !dbg !2089 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2091, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata ptr @.str.98, metadata !1069, metadata !DIExpression()), !dbg !2093
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.98) #40, !dbg !2095
  %3 = icmp eq i32 %2, 0, !dbg !2096
  br i1 %3, label %44, label %4, !dbg !2097

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata ptr @.str.99, metadata !1069, metadata !DIExpression()), !dbg !2098
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.99) #40, !dbg !2100
  %6 = icmp eq i32 %5, 0, !dbg !2101
  br i1 %6, label %44, label %7, !dbg !2102

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata ptr @.str.100, metadata !1069, metadata !DIExpression()), !dbg !2103
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.100) #40, !dbg !2105
  %9 = icmp eq i32 %8, 0, !dbg !2106
  br i1 %9, label %44, label %10, !dbg !2107

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata ptr @.str.95, metadata !1069, metadata !DIExpression()), !dbg !2108
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.95) #40, !dbg !2110
  %12 = icmp eq i32 %11, 0, !dbg !2111
  br i1 %12, label %44, label %13, !dbg !2112

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr @.str.96, metadata !1069, metadata !DIExpression()), !dbg !2113
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.96) #40, !dbg !2115
  %15 = icmp eq i32 %14, 0, !dbg !2116
  br i1 %15, label %44, label %16, !dbg !2117

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata ptr @.str.101, metadata !1069, metadata !DIExpression()), !dbg !2118
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.101) #40, !dbg !2120
  %18 = icmp eq i32 %17, 0, !dbg !2121
  br i1 %18, label %44, label %19, !dbg !2122

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata ptr @.str.102, metadata !1069, metadata !DIExpression()), !dbg !2123
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.102) #40, !dbg !2125
  %21 = icmp eq i32 %20, 0, !dbg !2126
  br i1 %21, label %44, label %22, !dbg !2127

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata ptr @.str.103, metadata !1069, metadata !DIExpression()), !dbg !2128
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.103) #40, !dbg !2130
  %24 = icmp eq i32 %23, 0, !dbg !2131
  br i1 %24, label %44, label %25, !dbg !2132

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata ptr @.str.104, metadata !1069, metadata !DIExpression()), !dbg !2133
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.104) #40, !dbg !2135
  %27 = icmp eq i32 %26, 0, !dbg !2136
  br i1 %27, label %44, label %28, !dbg !2137

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata ptr @.str.105, metadata !1069, metadata !DIExpression()), !dbg !2138
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.105) #40, !dbg !2140
  %30 = icmp eq i32 %29, 0, !dbg !2141
  br i1 %30, label %44, label %31, !dbg !2142

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata ptr @.str.106, metadata !1069, metadata !DIExpression()), !dbg !2143
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.106) #40, !dbg !2145
  %33 = icmp eq i32 %32, 0, !dbg !2146
  br i1 %33, label %44, label %34, !dbg !2147

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata ptr @.str.107, metadata !1069, metadata !DIExpression()), !dbg !2148
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.107) #40, !dbg !2150
  %36 = icmp eq i32 %35, 0, !dbg !2151
  br i1 %36, label %44, label %37, !dbg !2152

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata ptr @.str.108, metadata !1069, metadata !DIExpression()), !dbg !2153
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.108) #40, !dbg !2155
  %39 = icmp eq i32 %38, 0, !dbg !2156
  br i1 %39, label %44, label %40, !dbg !2157

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata ptr @.str.109, metadata !1069, metadata !DIExpression()), !dbg !2158
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.109) #40, !dbg !2160
  %42 = icmp eq i32 %41, 0, !dbg !2161
  %43 = select i1 %42, i32 10, i32 -1, !dbg !2162
  br label %44, !dbg !2157

44:                                               ; preds = %4, %10, %16, %22, %28, %34, %37, %40, %31, %25, %19, %13, %7, %1
  %45 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 3, %7 ], [ 1, %10 ], [ 2, %13 ], [ 4, %16 ], [ 9, %19 ], [ 8, %22 ], [ 7, %25 ], [ 6, %28 ], [ 5, %31 ], [ 12, %34 ], [ %43, %40 ], [ 11, %37 ], !dbg !2097
  ret i32 %45, !dbg !2163
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @binary_operator(i1 noundef zeroext %0, i32 noundef %1) unnamed_addr #10 !dbg !2164 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca [21 x i8], align 16
  %6 = alloca [21 x i8], align 16
  %7 = alloca [2 x %struct.stat], align 16
  call void @llvm.dbg.value(metadata i1 %0, metadata !2168, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2187
  call void @llvm.dbg.value(metadata i32 %1, metadata !2169, metadata !DIExpression()), !dbg !2187
  %8 = load i32, ptr @pos, align 4, !dbg !2187, !tbaa !1052
  %9 = zext i1 %0 to i32, !dbg !2188
  %10 = add nsw i32 %8, %9, !dbg !2188
  %11 = add nsw i32 %10, 1, !dbg !2189
  call void @llvm.dbg.value(metadata i32 %11, metadata !2170, metadata !DIExpression()), !dbg !2187
  %12 = load i32, ptr @argc, align 4, !dbg !2190, !tbaa !1052
  %13 = add nsw i32 %12, -2, !dbg !2191
  %14 = icmp slt i32 %11, %13, !dbg !2192
  br i1 %14, label %15, label %24, !dbg !2193

15:                                               ; preds = %2
  %16 = load ptr, ptr @argv, align 8, !dbg !2194, !tbaa !951
  %17 = add nsw i32 %10, 2, !dbg !2195
  %18 = sext i32 %17 to i64, !dbg !2194
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18, !dbg !2194
  %20 = load ptr, ptr %19, align 8, !dbg !2194, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %20, metadata !1063, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata ptr @.str.110, metadata !1069, metadata !DIExpression()), !dbg !2196
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(3) @.str.110) #40, !dbg !2198
  %22 = icmp eq i32 %21, 0, !dbg !2199
  call void @llvm.dbg.value(metadata i1 %22, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2187
  %23 = select i1 %22, i32 %11, i32 %10, !dbg !2200
  br label %24, !dbg !2200

24:                                               ; preds = %15, %2
  %25 = phi i32 [ %10, %2 ], [ %23, %15 ], !dbg !2201
  %26 = phi i1 [ false, %2 ], [ %22, %15 ]
  %27 = add nsw i32 %25, 3, !dbg !2201
  store i32 %27, ptr @pos, align 4, !dbg !2201, !tbaa !1052
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
  ], !dbg !2202

28:                                               ; preds = %24, %24, %24, %24, %24, %24
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %5) #39, !dbg !2203
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2172, metadata !DIExpression()), !dbg !2204
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %6) #39, !dbg !2205
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2175, metadata !DIExpression()), !dbg !2206
  %29 = load ptr, ptr @argv, align 8, !dbg !2207, !tbaa !951
  %30 = sext i32 %10 to i64, !dbg !2207
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30, !dbg !2207
  %32 = load ptr, ptr %31, align 8, !dbg !2207, !tbaa !951
  br i1 %0, label %33, label %36, !dbg !2208

33:                                               ; preds = %28
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #40, !dbg !2209
  %35 = call ptr @umaxtostr(i64 noundef %34, ptr noundef nonnull %5) #39, !dbg !2210
  br label %38, !dbg !2208

36:                                               ; preds = %28
  %37 = tail call fastcc ptr @find_int(ptr noundef %32), !dbg !2211
  br label %38, !dbg !2208

38:                                               ; preds = %36, %33
  %39 = phi ptr [ %35, %33 ], [ %37, %36 ], !dbg !2208
  call void @llvm.dbg.value(metadata ptr %39, metadata !2176, metadata !DIExpression()), !dbg !2207
  %40 = load ptr, ptr @argv, align 8, !dbg !2207, !tbaa !951
  br i1 %26, label %41, label %48, !dbg !2212

41:                                               ; preds = %38
  %42 = add nsw i32 %10, 3, !dbg !2213
  %43 = sext i32 %42 to i64, !dbg !2214
  %44 = getelementptr inbounds ptr, ptr %40, i64 %43, !dbg !2214
  %45 = load ptr, ptr %44, align 8, !dbg !2214, !tbaa !951
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #40, !dbg !2215
  %47 = call ptr @umaxtostr(i64 noundef %46, ptr noundef nonnull %6) #39, !dbg !2216
  br label %54, !dbg !2212

48:                                               ; preds = %38
  %49 = add nsw i32 %10, 2, !dbg !2217
  %50 = sext i32 %49 to i64, !dbg !2218
  %51 = getelementptr inbounds ptr, ptr %40, i64 %50, !dbg !2218
  %52 = load ptr, ptr %51, align 8, !dbg !2218, !tbaa !951
  %53 = call fastcc ptr @find_int(ptr noundef %52), !dbg !2219
  br label %54, !dbg !2212

54:                                               ; preds = %48, %41
  %55 = phi ptr [ %47, %41 ], [ %53, %48 ], !dbg !2212
  call void @llvm.dbg.value(metadata ptr %55, metadata !2177, metadata !DIExpression()), !dbg !2207
  %56 = call i32 @strintcmp(ptr noundef %39, ptr noundef %55) #40, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %56, metadata !2178, metadata !DIExpression()), !dbg !2207
  switch i32 %1, label %69 [
    i32 4, label %57
    i32 5, label %59
    i32 6, label %61
    i32 7, label %63
    i32 8, label %65
    i32 9, label %67
  ], !dbg !2221

57:                                               ; preds = %54
  %58 = icmp eq i32 %56, 0, !dbg !2222
  br label %70, !dbg !2224

59:                                               ; preds = %54
  %60 = icmp sgt i32 %56, -1, !dbg !2225
  br label %70, !dbg !2226

61:                                               ; preds = %54
  %62 = icmp sgt i32 %56, 0, !dbg !2227
  br label %70, !dbg !2228

63:                                               ; preds = %54
  %64 = icmp slt i32 %56, 1, !dbg !2229
  br label %70, !dbg !2230

65:                                               ; preds = %54
  %66 = icmp slt i32 %56, 0, !dbg !2231
  br label %70, !dbg !2232

67:                                               ; preds = %54
  %68 = icmp ne i32 %56, 0, !dbg !2233
  br label %70, !dbg !2234

69:                                               ; preds = %54
  unreachable, !dbg !2235

70:                                               ; preds = %67, %65, %63, %61, %59, %57
  %71 = phi i1 [ %68, %67 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %60, %59 ], [ %58, %57 ], !dbg !2236
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %6) #39, !dbg !2237
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %5) #39, !dbg !2237
  br label %188

72:                                               ; preds = %24, %24
  %73 = or i1 %26, %0, !dbg !2238
  br i1 %73, label %74, label %80, !dbg !2240

74:                                               ; preds = %72
  %75 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.111, i32 noundef 5) #39, !dbg !2241
  %76 = load ptr, ptr @argv, align 8, !dbg !2242, !tbaa !951
  %77 = sext i32 %11 to i64, !dbg !2242
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77, !dbg !2242
  %79 = load ptr, ptr %78, align 8, !dbg !2242, !tbaa !951
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %75, ptr noundef %79) #43, !dbg !2243
  unreachable, !dbg !2243

80:                                               ; preds = %72
  %81 = load ptr, ptr @argv, align 8, !dbg !2244, !tbaa !951
  %82 = sext i32 %10 to i64, !dbg !2244
  %83 = getelementptr inbounds ptr, ptr %81, i64 %82, !dbg !2244
  %84 = load ptr, ptr %83, align 8, !dbg !2244, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %84, metadata !2245, metadata !DIExpression()), !dbg !2251
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #39, !dbg !2253
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2250, metadata !DIExpression()), !dbg !2254
  %85 = call i32 @stat(ptr noundef %84, ptr noundef nonnull %4) #39, !dbg !2255
  %86 = icmp slt i32 %85, 0, !dbg !2256
  %87 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 12, !dbg !2255
  %88 = load i64, ptr %87, align 8, !dbg !2255
  %89 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 12, i32 1, !dbg !2255
  %90 = load i64, ptr %89, align 8, !dbg !2255
  %91 = insertvalue { i64, i64 } poison, i64 %88, 0, !dbg !2255
  %92 = insertvalue { i64, i64 } %91, i64 %90, 1, !dbg !2255
  %93 = select i1 %86, { i64, i64 } { i64 -9223372036854775808, i64 -1 }, { i64, i64 } %92, !dbg !2255
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #39, !dbg !2257
  %94 = extractvalue { i64, i64 } %93, 0, !dbg !2258
  %95 = extractvalue { i64, i64 } %93, 1, !dbg !2258
  %96 = load ptr, ptr @argv, align 8, !dbg !2259, !tbaa !951
  %97 = add nsw i32 %10, 2, !dbg !2260
  %98 = sext i32 %97 to i64, !dbg !2259
  %99 = getelementptr inbounds ptr, ptr %96, i64 %98, !dbg !2259
  %100 = load ptr, ptr %99, align 8, !dbg !2259, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %100, metadata !2245, metadata !DIExpression()), !dbg !2261
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #39, !dbg !2263
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2250, metadata !DIExpression()), !dbg !2264
  %101 = call i32 @stat(ptr noundef %100, ptr noundef nonnull %3) #39, !dbg !2265
  %102 = icmp slt i32 %101, 0, !dbg !2266
  %103 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 12, !dbg !2265
  %104 = load i64, ptr %103, align 8, !dbg !2265
  %105 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 12, i32 1, !dbg !2265
  %106 = load i64, ptr %105, align 8, !dbg !2265
  %107 = insertvalue { i64, i64 } poison, i64 %104, 0, !dbg !2265
  %108 = insertvalue { i64, i64 } %107, i64 %106, 1, !dbg !2265
  %109 = select i1 %102, { i64, i64 } { i64 -9223372036854775808, i64 -1 }, { i64, i64 } %108, !dbg !2265
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #39, !dbg !2267
  %110 = extractvalue { i64, i64 } %109, 0, !dbg !2268
  %111 = extractvalue { i64, i64 } %109, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %94, metadata !1557, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2269
  call void @llvm.dbg.value(metadata i64 %95, metadata !1557, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2269
  call void @llvm.dbg.value(metadata i64 %110, metadata !1563, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2269
  call void @llvm.dbg.value(metadata i64 %111, metadata !1563, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2269
  %112 = icmp sgt i64 %94, %110, !dbg !2271
  %113 = zext i1 %112 to i32, !dbg !2271
  %114 = icmp slt i64 %94, %110, !dbg !2271
  %115 = sext i1 %114 to i32, !dbg !2271
  %116 = add nsw i32 %115, %113, !dbg !2271
  %117 = shl nsw i32 %116, 1, !dbg !2272
  %118 = icmp sgt i64 %95, %111, !dbg !2273
  %119 = zext i1 %118 to i32, !dbg !2273
  %120 = icmp slt i64 %95, %111, !dbg !2273
  %121 = sext i1 %120 to i32, !dbg !2273
  %122 = add nsw i32 %121, %119, !dbg !2273
  %123 = add nsw i32 %122, %117, !dbg !2274
  call void @llvm.dbg.value(metadata i32 %123, metadata !2179, metadata !DIExpression()), !dbg !2275
  %124 = icmp eq i32 %1, 12, !dbg !2276
  %125 = icmp slt i32 %123, 0, !dbg !2277
  %126 = icmp sgt i32 %123, 0, !dbg !2277
  %127 = select i1 %124, i1 %125, i1 %126, !dbg !2277
  br label %188

128:                                              ; preds = %24
  %129 = or i1 %26, %0, !dbg !2278
  br i1 %129, label %130, label %132, !dbg !2279

130:                                              ; preds = %128
  %131 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.112, i32 noundef 5) #39, !dbg !2280
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %131) #43, !dbg !2281
  unreachable, !dbg !2281

132:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %7) #39, !dbg !2282
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2181, metadata !DIExpression()), !dbg !2283
  %133 = load ptr, ptr @argv, align 8, !dbg !2284, !tbaa !951
  %134 = sext i32 %10 to i64, !dbg !2284
  %135 = getelementptr inbounds ptr, ptr %133, i64 %134, !dbg !2284
  %136 = load ptr, ptr %135, align 8, !dbg !2284, !tbaa !951
  %137 = call i32 @stat(ptr noundef %136, ptr noundef nonnull %7) #39, !dbg !2285
  %138 = icmp eq i32 %137, 0, !dbg !2286
  br i1 %138, label %139, label %158, !dbg !2287

139:                                              ; preds = %132
  %140 = load ptr, ptr @argv, align 8, !dbg !2288, !tbaa !951
  %141 = add nsw i32 %10, 2, !dbg !2289
  %142 = sext i32 %141 to i64, !dbg !2288
  %143 = getelementptr inbounds ptr, ptr %140, i64 %142, !dbg !2288
  %144 = load ptr, ptr %143, align 8, !dbg !2288, !tbaa !951
  %145 = getelementptr inbounds [2 x %struct.stat], ptr %7, i64 0, i64 1, !dbg !2290
  %146 = call i32 @stat(ptr noundef %144, ptr noundef nonnull %145) #39, !dbg !2291
  %147 = icmp eq i32 %146, 0, !dbg !2292
  br i1 %147, label %148, label %158, !dbg !2293

148:                                              ; preds = %139
  call void @llvm.dbg.value(metadata ptr %7, metadata !2294, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata ptr %145, metadata !2300, metadata !DIExpression()), !dbg !2301
  %149 = load i64, ptr %7, align 16, !dbg !2303, !tbaa !2304
  %150 = load i64, ptr %145, align 16, !dbg !2303, !tbaa !2304
  %151 = icmp eq i64 %149, %150, !dbg !2303
  %152 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 1, !dbg !2303
  %153 = load i64, ptr %152, align 8, !dbg !2303, !tbaa !2305
  %154 = getelementptr inbounds [2 x %struct.stat], ptr %7, i64 0, i64 1, i32 1, !dbg !2303
  %155 = load i64, ptr %154, align 8, !dbg !2303, !tbaa !2305
  %156 = icmp eq i64 %153, %155, !dbg !2303
  %157 = and i1 %151, %156, !dbg !2303
  br label %158

158:                                              ; preds = %148, %139, %132
  %159 = phi i1 [ false, %139 ], [ false, %132 ], [ %157, %148 ], !dbg !2306
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %7) #39, !dbg !2307
  br label %188

160:                                              ; preds = %24, %24
  %161 = load ptr, ptr @argv, align 8, !dbg !2308, !tbaa !951
  %162 = sext i32 %10 to i64, !dbg !2308
  %163 = getelementptr inbounds ptr, ptr %161, i64 %162, !dbg !2308
  %164 = load ptr, ptr %163, align 8, !dbg !2308, !tbaa !951
  %165 = add nsw i32 %10, 2, !dbg !2309
  %166 = sext i32 %165 to i64, !dbg !2310
  %167 = getelementptr inbounds ptr, ptr %161, i64 %166, !dbg !2310
  %168 = load ptr, ptr %167, align 8, !dbg !2310, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %164, metadata !1063, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata ptr %168, metadata !1069, metadata !DIExpression()), !dbg !2311
  %169 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %164, ptr noundef nonnull dereferenceable(1) %168) #40, !dbg !2313
  %170 = icmp eq i32 %169, 0, !dbg !2314
  %171 = icmp ne i32 %1, 0, !dbg !2315
  %172 = xor i1 %171, %170, !dbg !2316
  br label %188, !dbg !2317

173:                                              ; preds = %24, %24
  %174 = load ptr, ptr @argv, align 8, !dbg !2318, !tbaa !951
  %175 = sext i32 %10 to i64, !dbg !2318
  %176 = getelementptr inbounds ptr, ptr %174, i64 %175, !dbg !2318
  %177 = load ptr, ptr %176, align 8, !dbg !2318, !tbaa !951
  %178 = add nsw i32 %10, 2, !dbg !2319
  %179 = sext i32 %178 to i64, !dbg !2320
  %180 = getelementptr inbounds ptr, ptr %174, i64 %179, !dbg !2320
  %181 = load ptr, ptr %180, align 8, !dbg !2320, !tbaa !951
  %182 = tail call i32 @strcoll(ptr noundef %177, ptr noundef %181) #40, !dbg !2321
  call void @llvm.dbg.value(metadata i32 %182, metadata !2185, metadata !DIExpression()), !dbg !2322
  %183 = icmp eq i32 %1, 2, !dbg !2323
  %184 = icmp slt i32 %182, 0, !dbg !2324
  %185 = icmp sgt i32 %182, 0, !dbg !2324
  %186 = select i1 %183, i1 %184, i1 %185, !dbg !2324
  br label %188

187:                                              ; preds = %24
  tail call void @__assert_fail(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.89, i32 noundef 362, ptr noundef nonnull @__PRETTY_FUNCTION__.binary_operator) #41, !dbg !2325
  unreachable, !dbg !2325

188:                                              ; preds = %173, %160, %158, %80, %70
  %189 = phi i1 [ %186, %173 ], [ %172, %160 ], [ %159, %158 ], [ %127, %80 ], [ %71, %70 ], !dbg !2328
  ret i1 %189, !dbg !2329
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2330 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_int(ptr noundef %0) unnamed_addr #10 !dbg !2333 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2337, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata ptr %0, metadata !2338, metadata !DIExpression()), !dbg !2340
  %2 = tail call ptr @__ctype_b_loc() #42, !dbg !2340
  %3 = load ptr, ptr %2, align 8, !tbaa !951
  br label %4, !dbg !2341

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %0, %1 ], [ %12, %4 ], !dbg !2343
  call void @llvm.dbg.value(metadata ptr %5, metadata !2338, metadata !DIExpression()), !dbg !2340
  %6 = load i8, ptr %5, align 1, !dbg !2344, !tbaa !1061
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i16, ptr %3, i64 %7, !dbg !2344
  %9 = load i16, ptr %8, align 2, !dbg !2344, !tbaa !1093
  %10 = and i16 %9, 8192, !dbg !2344
  %11 = icmp eq i16 %10, 0, !dbg !2346
  %12 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !2347
  call void @llvm.dbg.value(metadata ptr %12, metadata !2338, metadata !DIExpression()), !dbg !2340
  br i1 %11, label %13, label %4, !dbg !2346, !llvm.loop !2348

13:                                               ; preds = %4
  %14 = icmp eq i8 %6, 43, !dbg !2350
  %15 = icmp eq i8 %6, 45, !dbg !2352
  %16 = zext i1 %15 to i64, !dbg !2352
  %17 = getelementptr inbounds i8, ptr %5, i64 %16, !dbg !2352
  %18 = select i1 %14, ptr %12, ptr %17, !dbg !2352
  call void @llvm.dbg.value(metadata ptr poison, metadata !2339, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata ptr %18, metadata !2338, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata ptr %18, metadata !2338, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2340
  %19 = load i8, ptr %18, align 1, !dbg !2353, !tbaa !1061
  %20 = sext i8 %19 to i32, !dbg !2353
  call void @llvm.dbg.value(metadata i32 %20, metadata !2355, metadata !DIExpression()), !dbg !2359
  %21 = add nsw i32 %20, -48, !dbg !2361
  %22 = icmp ult i32 %21, 10, !dbg !2361
  br i1 %22, label %23, label %50, !dbg !2362

23:                                               ; preds = %13, %23
  %24 = phi ptr [ %25, %23 ], [ %18, %13 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2363
  call void @llvm.dbg.value(metadata ptr %25, metadata !2338, metadata !DIExpression()), !dbg !2340
  %26 = load i8, ptr %25, align 1, !dbg !2364, !tbaa !1061
  %27 = sext i8 %26 to i32, !dbg !2364
  call void @llvm.dbg.value(metadata i32 %27, metadata !2355, metadata !DIExpression()), !dbg !2366
  %28 = add nsw i32 %27, -48, !dbg !2368
  %29 = icmp ult i32 %28, 10, !dbg !2368
  br i1 %29, label %23, label %30, !dbg !2369, !llvm.loop !2370

30:                                               ; preds = %23
  call void @llvm.dbg.value(metadata ptr %25, metadata !2338, metadata !DIExpression()), !dbg !2340
  %31 = zext i8 %26 to i64
  %32 = getelementptr inbounds i16, ptr %3, i64 %31, !dbg !2372
  %33 = load i16, ptr %32, align 2, !dbg !2372, !tbaa !1093
  %34 = and i16 %33, 8192, !dbg !2372
  %35 = icmp eq i16 %34, 0, !dbg !2373
  br i1 %35, label %45, label %36, !dbg !2373

36:                                               ; preds = %30, %36
  %37 = phi ptr [ %38, %36 ], [ %25, %30 ]
  call void @llvm.dbg.value(metadata ptr %37, metadata !2338, metadata !DIExpression()), !dbg !2340
  %38 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !2374
  call void @llvm.dbg.value(metadata ptr %38, metadata !2338, metadata !DIExpression()), !dbg !2340
  %39 = load i8, ptr %38, align 1, !dbg !2372, !tbaa !1061
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, ptr %3, i64 %40, !dbg !2372
  %42 = load i16, ptr %41, align 2, !dbg !2372, !tbaa !1093
  %43 = and i16 %42, 8192, !dbg !2372
  %44 = icmp eq i16 %43, 0, !dbg !2373
  br i1 %44, label %45, label %36, !dbg !2373, !llvm.loop !2375

45:                                               ; preds = %36, %30
  %46 = phi i8 [ %26, %30 ], [ %39, %36 ], !dbg !2372
  %47 = icmp eq i8 %46, 0, !dbg !2376
  br i1 %47, label %48, label %50, !dbg !2378

48:                                               ; preds = %45
  %49 = select i1 %14, ptr %12, ptr %5, !dbg !2352
  call void @llvm.dbg.value(metadata ptr %49, metadata !2339, metadata !DIExpression()), !dbg !2340
  ret ptr %49, !dbg !2379

50:                                               ; preds = %45, %13
  %51 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.91, i32 noundef 5) #39, !dbg !2380
  %52 = tail call ptr @quote(ptr noundef %0) #39, !dbg !2381
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %51, ptr noundef %52) #43, !dbg !2382
  unreachable, !dbg !2382
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !2383 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !2389 i32 @strcoll(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !2390 i32 @euidaccess(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !2394 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2399 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2402 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr nocapture noundef readonly, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2405 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare !dbg !2409 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !2412 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2414, metadata !DIExpression()), !dbg !2415
  store ptr %0, ptr @file_name, align 8, !dbg !2416, !tbaa !951
  ret void, !dbg !2417
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #16 !dbg !2418 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2420, metadata !DIExpression()), !dbg !2421
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2422, !tbaa !2423
  ret void, !dbg !2425
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2426 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2431, !tbaa !951
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !2432
  %3 = icmp eq i32 %2, 0, !dbg !2433
  br i1 %3, label %22, label %4, !dbg !2434

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2435, !tbaa !2423, !range !2436, !noundef !1039
  %6 = icmp eq i8 %5, 0, !dbg !2435
  br i1 %6, label %11, label %7, !dbg !2437

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !2438
  %9 = load i32, ptr %8, align 4, !dbg !2438, !tbaa !1052
  %10 = icmp eq i32 %9, 32, !dbg !2439
  br i1 %10, label %22, label %11, !dbg !2440

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1.56, i32 noundef 5) #39, !dbg !2441
  call void @llvm.dbg.value(metadata ptr %12, metadata !2428, metadata !DIExpression()), !dbg !2442
  %13 = load ptr, ptr @file_name, align 8, !dbg !2443, !tbaa !951
  %14 = icmp eq ptr %13, null, !dbg !2443
  %15 = tail call ptr @__errno_location() #42, !dbg !2445
  %16 = load i32, ptr %15, align 4, !dbg !2445, !tbaa !1052
  br i1 %14, label %19, label %17, !dbg !2446

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !2447
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.57, ptr noundef %18, ptr noundef %12) #39, !dbg !2447
  br label %20, !dbg !2447

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.58, ptr noundef %12) #39, !dbg !2448
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2449, !tbaa !1052
  tail call void @_exit(i32 noundef %21) #41, !dbg !2450
  unreachable, !dbg !2450

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2451, !tbaa !951
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !2453
  %25 = icmp eq i32 %24, 0, !dbg !2454
  br i1 %25, label %28, label %26, !dbg !2455

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2456, !tbaa !1052
  tail call void @_exit(i32 noundef %27) #41, !dbg !2457
  unreachable, !dbg !2457

28:                                               ; preds = %22
  ret void, !dbg !2458
}

; Function Attrs: noreturn
declare !dbg !2459 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #18 !dbg !2460 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2464, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i32 %1, metadata !2465, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata ptr %2, metadata !2466, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata ptr %3, metadata !2467, metadata !DIExpression()), !dbg !2468
  tail call fastcc void @flush_stdout(), !dbg !2469
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2470, !tbaa !951
  %6 = icmp eq ptr %5, null, !dbg !2470
  br i1 %6, label %8, label %7, !dbg !2472

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !2473
  br label %12, !dbg !2473

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2474, !tbaa !951
  %10 = tail call ptr @getprogname() #40, !dbg !2474
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.61, ptr noundef %10) #39, !dbg !2474
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2476
  ret void, !dbg !2477
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2478 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2480, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 1, metadata !2482, metadata !DIExpression()), !dbg !2485
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !2488
  %2 = icmp slt i32 %1, 0, !dbg !2489
  br i1 %2, label %6, label %3, !dbg !2490

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2491, !tbaa !951
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !2491
  br label %6, !dbg !2491

6:                                                ; preds = %3, %0
  ret void, !dbg !2492
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2493 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2495, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i32 %1, metadata !2496, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata ptr %2, metadata !2497, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata ptr %3, metadata !2498, metadata !DIExpression()), !dbg !2499
  %6 = load ptr, ptr @stderr, align 8, !dbg !2500, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %6, metadata !2501, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata ptr %2, metadata !2541, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata ptr %3, metadata !2542, metadata !DIExpression()), !dbg !2543
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !2545
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2546, !tbaa !1052
  %9 = add i32 %8, 1, !dbg !2546
  store i32 %9, ptr @error_message_count, align 4, !dbg !2546, !tbaa !1052
  %10 = icmp eq i32 %1, 0, !dbg !2547
  br i1 %10, label %20, label %11, !dbg !2549

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2550, metadata !DIExpression()), !dbg !2558
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !2560
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2554, metadata !DIExpression()), !dbg !2561
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !2562
  call void @llvm.dbg.value(metadata ptr %12, metadata !2553, metadata !DIExpression()), !dbg !2558
  %13 = icmp eq ptr %12, null, !dbg !2563
  br i1 %13, label %14, label %16, !dbg !2565

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.62, ptr noundef nonnull @.str.5.63, i32 noundef 5) #39, !dbg !2566
  call void @llvm.dbg.value(metadata ptr %15, metadata !2553, metadata !DIExpression()), !dbg !2558
  br label %16, !dbg !2567

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2558
  call void @llvm.dbg.value(metadata ptr %17, metadata !2553, metadata !DIExpression()), !dbg !2558
  %18 = load ptr, ptr @stderr, align 8, !dbg !2568, !tbaa !951
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.64, ptr noundef %17) #39, !dbg !2568
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !2569
  br label %20, !dbg !2570

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2571, !tbaa !951
  call void @llvm.dbg.value(metadata i32 10, metadata !2572, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata ptr %21, metadata !2578, metadata !DIExpression()), !dbg !2579
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2581
  %23 = load ptr, ptr %22, align 8, !dbg !2581, !tbaa !2582
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2581
  %25 = load ptr, ptr %24, align 8, !dbg !2581, !tbaa !2584
  %26 = icmp ult ptr %23, %25, !dbg !2581
  br i1 %26, label %29, label %27, !dbg !2581, !prof !2585

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !2581
  br label %31, !dbg !2581

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2581
  store ptr %30, ptr %22, align 8, !dbg !2581, !tbaa !2582
  store i8 10, ptr %23, align 1, !dbg !2581, !tbaa !1061
  br label %31, !dbg !2581

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2586, !tbaa !951
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !2586
  %34 = icmp eq i32 %0, 0, !dbg !2587
  br i1 %34, label %36, label %35, !dbg !2589

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !2590
  unreachable, !dbg !2590

36:                                               ; preds = %31
  ret void, !dbg !2591
}

declare !dbg !2592 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2595 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2598 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2601 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2604 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2608 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2612, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %1, metadata !2613, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %2, metadata !2614, metadata !DIExpression()), !dbg !2620
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !2621
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2615, metadata !DIExpression()), !dbg !2622
  call void @llvm.va_start(ptr nonnull %4), !dbg !2623
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #45, !dbg !2624
  call void @llvm.va_end(ptr nonnull %4), !dbg !2625
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !2626
  ret void, !dbg !2626
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #18 !dbg !587 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !599, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 %1, metadata !600, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata ptr %2, metadata !601, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 %3, metadata !602, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata ptr %4, metadata !603, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata ptr %5, metadata !604, metadata !DIExpression()), !dbg !2627
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2628, !tbaa !1052
  %8 = icmp eq i32 %7, 0, !dbg !2628
  br i1 %8, label %23, label %9, !dbg !2630

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2631, !tbaa !1052
  %11 = icmp eq i32 %10, %3, !dbg !2634
  br i1 %11, label %12, label %22, !dbg !2635

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2636, !tbaa !951
  %14 = icmp eq ptr %13, %2, !dbg !2637
  br i1 %14, label %36, label %15, !dbg !2638

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2639
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2640
  br i1 %18, label %19, label %22, !dbg !2640

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2641
  %21 = icmp eq i32 %20, 0, !dbg !2642
  br i1 %21, label %36, label %22, !dbg !2643

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2644, !tbaa !951
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2645, !tbaa !1052
  br label %23, !dbg !2646

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2647
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2648, !tbaa !951
  %25 = icmp eq ptr %24, null, !dbg !2648
  br i1 %25, label %27, label %26, !dbg !2650

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !2651
  br label %31, !dbg !2651

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2652, !tbaa !951
  %29 = tail call ptr @getprogname() #40, !dbg !2652
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.67, ptr noundef %29) #39, !dbg !2652
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2654, !tbaa !951
  %33 = icmp eq ptr %2, null, !dbg !2654
  %34 = select i1 %33, ptr @.str.3.68, ptr @.str.2.69, !dbg !2654
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !2654
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2655
  br label %36, !dbg !2656

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2656
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2657 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2661, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 %1, metadata !2662, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata ptr %2, metadata !2663, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 %3, metadata !2664, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata ptr %4, metadata !2665, metadata !DIExpression()), !dbg !2667
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !2668
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2666, metadata !DIExpression()), !dbg !2669
  call void @llvm.va_start(ptr nonnull %6), !dbg !2670
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #45, !dbg !2671
  call void @llvm.va_end(ptr nonnull %6), !dbg !2672
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !2673
  ret void, !dbg !2673
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !2674 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2677, !tbaa !951
  ret ptr %1, !dbg !2678
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @umaxtostr(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #20 !dbg !2679 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2684, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata ptr %1, metadata !2685, metadata !DIExpression()), !dbg !2687
  %3 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !2688
  call void @llvm.dbg.value(metadata ptr %3, metadata !2686, metadata !DIExpression()), !dbg !2687
  store i8 0, ptr %3, align 1, !dbg !2689, !tbaa !1061
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi ptr [ %3, %2 ], [ %10, %4 ], !dbg !2687
  call void @llvm.dbg.value(metadata ptr %6, metadata !2686, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i64 %5, metadata !2684, metadata !DIExpression()), !dbg !2687
  %7 = urem i64 %5, 10, !dbg !2690
  %8 = trunc i64 %7 to i8, !dbg !2693
  %9 = or i8 %8, 48, !dbg !2693
  %10 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !2694
  call void @llvm.dbg.value(metadata ptr %10, metadata !2686, metadata !DIExpression()), !dbg !2687
  store i8 %9, ptr %10, align 1, !dbg !2695, !tbaa !1061
  %11 = udiv i64 %5, 10, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %11, metadata !2684, metadata !DIExpression()), !dbg !2687
  %12 = icmp ult i64 %5, 10, !dbg !2697
  br i1 %12, label %13, label %4, !dbg !2698, !llvm.loop !2699

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr %10, metadata !2686, metadata !DIExpression()), !dbg !2687
  ret ptr %10, !dbg !2702
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !2703 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2705, metadata !DIExpression()), !dbg !2708
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !2709
  call void @llvm.dbg.value(metadata ptr %2, metadata !2706, metadata !DIExpression()), !dbg !2708
  %3 = icmp eq ptr %2, null, !dbg !2710
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2710
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2710
  call void @llvm.dbg.value(metadata ptr %5, metadata !2707, metadata !DIExpression()), !dbg !2708
  %6 = ptrtoint ptr %5 to i64, !dbg !2711
  %7 = ptrtoint ptr %0 to i64, !dbg !2711
  %8 = sub i64 %6, %7, !dbg !2711
  %9 = icmp sgt i64 %8, 6, !dbg !2713
  br i1 %9, label %10, label %19, !dbg !2714

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2715
  call void @llvm.dbg.value(metadata ptr %11, metadata !2716, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata ptr @.str.116, metadata !2721, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i64 7, metadata !2722, metadata !DIExpression()), !dbg !2723
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.116, i64 7), !dbg !2725
  %13 = icmp eq i32 %12, 0, !dbg !2726
  br i1 %13, label %14, label %19, !dbg !2727

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2705, metadata !DIExpression()), !dbg !2708
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.117, i64 noundef 3) #40, !dbg !2728
  %16 = icmp eq i32 %15, 0, !dbg !2731
  %17 = select i1 %16, i64 3, i64 0, !dbg !2732
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2732
  br label %19, !dbg !2732

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2708
  call void @llvm.dbg.value(metadata ptr %21, metadata !2707, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata ptr %20, metadata !2705, metadata !DIExpression()), !dbg !2708
  store ptr %20, ptr @program_name, align 8, !dbg !2733, !tbaa !951
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2734, !tbaa !951
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2735, !tbaa !951
  ret void, !dbg !2736
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2737 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2738 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2743, metadata !DIExpression()), !dbg !2746
  %2 = tail call ptr @__errno_location() #42, !dbg !2747
  %3 = load i32, ptr %2, align 4, !dbg !2747, !tbaa !1052
  call void @llvm.dbg.value(metadata i32 %3, metadata !2744, metadata !DIExpression()), !dbg !2746
  %4 = icmp eq ptr %0, null, !dbg !2748
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2748
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #46, !dbg !2749
  call void @llvm.dbg.value(metadata ptr %6, metadata !2745, metadata !DIExpression()), !dbg !2746
  store i32 %3, ptr %2, align 4, !dbg !2750, !tbaa !1052
  ret ptr %6, !dbg !2751
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !2752 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2758, metadata !DIExpression()), !dbg !2759
  %2 = icmp eq ptr %0, null, !dbg !2760
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2760
  %4 = load i32, ptr %3, align 8, !dbg !2761, !tbaa !2762
  ret i32 %4, !dbg !2764
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2765 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2769, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %1, metadata !2770, metadata !DIExpression()), !dbg !2771
  %3 = icmp eq ptr %0, null, !dbg !2772
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2772
  store i32 %1, ptr %4, align 8, !dbg !2773, !tbaa !2762
  ret void, !dbg !2774
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #25 !dbg !2775 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2779, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 %1, metadata !2780, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i32 %2, metadata !2781, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8 %1, metadata !2782, metadata !DIExpression()), !dbg !2787
  %4 = icmp eq ptr %0, null, !dbg !2788
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2788
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2789
  %7 = lshr i8 %1, 5, !dbg !2790
  %8 = zext i8 %7 to i64, !dbg !2790
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2791
  call void @llvm.dbg.value(metadata ptr %9, metadata !2783, metadata !DIExpression()), !dbg !2787
  %10 = and i8 %1, 31, !dbg !2792
  %11 = zext i8 %10 to i32, !dbg !2792
  call void @llvm.dbg.value(metadata i32 %11, metadata !2785, metadata !DIExpression()), !dbg !2787
  %12 = load i32, ptr %9, align 4, !dbg !2793, !tbaa !1052
  %13 = lshr i32 %12, %11, !dbg !2794
  %14 = and i32 %13, 1, !dbg !2795
  call void @llvm.dbg.value(metadata i32 %14, metadata !2786, metadata !DIExpression()), !dbg !2787
  %15 = xor i32 %13, %2, !dbg !2796
  %16 = and i32 %15, 1, !dbg !2796
  %17 = shl nuw i32 %16, %11, !dbg !2797
  %18 = xor i32 %17, %12, !dbg !2798
  store i32 %18, ptr %9, align 4, !dbg !2798, !tbaa !1052
  ret i32 %14, !dbg !2799
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2800 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2804, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 %1, metadata !2805, metadata !DIExpression()), !dbg !2807
  %3 = icmp eq ptr %0, null, !dbg !2808
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2810
  call void @llvm.dbg.value(metadata ptr %4, metadata !2804, metadata !DIExpression()), !dbg !2807
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2811
  %6 = load i32, ptr %5, align 4, !dbg !2811, !tbaa !2812
  call void @llvm.dbg.value(metadata i32 %6, metadata !2806, metadata !DIExpression()), !dbg !2807
  store i32 %1, ptr %5, align 4, !dbg !2813, !tbaa !2812
  ret i32 %6, !dbg !2814
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2815 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2819, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata ptr %1, metadata !2820, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata ptr %2, metadata !2821, metadata !DIExpression()), !dbg !2822
  %4 = icmp eq ptr %0, null, !dbg !2823
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2825
  call void @llvm.dbg.value(metadata ptr %5, metadata !2819, metadata !DIExpression()), !dbg !2822
  store i32 10, ptr %5, align 8, !dbg !2826, !tbaa !2762
  %6 = icmp ne ptr %1, null, !dbg !2827
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2829
  br i1 %8, label %10, label %9, !dbg !2829

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2830
  unreachable, !dbg !2830

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2831
  store ptr %1, ptr %11, align 8, !dbg !2832, !tbaa !2833
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2834
  store ptr %2, ptr %12, align 8, !dbg !2835, !tbaa !2836
  ret void, !dbg !2837
}

; Function Attrs: noreturn nounwind
declare !dbg !2838 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2839 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2843, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i64 %1, metadata !2844, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata ptr %2, metadata !2845, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i64 %3, metadata !2846, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata ptr %4, metadata !2847, metadata !DIExpression()), !dbg !2851
  %6 = icmp eq ptr %4, null, !dbg !2852
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2852
  call void @llvm.dbg.value(metadata ptr %7, metadata !2848, metadata !DIExpression()), !dbg !2851
  %8 = tail call ptr @__errno_location() #42, !dbg !2853
  %9 = load i32, ptr %8, align 4, !dbg !2853, !tbaa !1052
  call void @llvm.dbg.value(metadata i32 %9, metadata !2849, metadata !DIExpression()), !dbg !2851
  %10 = load i32, ptr %7, align 8, !dbg !2854, !tbaa !2762
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2855
  %12 = load i32, ptr %11, align 4, !dbg !2855, !tbaa !2812
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2856
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2857
  %15 = load ptr, ptr %14, align 8, !dbg !2857, !tbaa !2833
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2858
  %17 = load ptr, ptr %16, align 8, !dbg !2858, !tbaa !2836
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2859
  call void @llvm.dbg.value(metadata i64 %18, metadata !2850, metadata !DIExpression()), !dbg !2851
  store i32 %9, ptr %8, align 4, !dbg !2860, !tbaa !1052
  ret i64 %18, !dbg !2861
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2862 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2868, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %1, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %2, metadata !2870, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %3, metadata !2871, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 %4, metadata !2872, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 %5, metadata !2873, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %6, metadata !2874, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %7, metadata !2875, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %8, metadata !2876, metadata !DIExpression()), !dbg !2930
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2931
  %17 = icmp eq i64 %16, 1, !dbg !2932
  call void @llvm.dbg.value(metadata i1 %17, metadata !2877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2930
  call void @llvm.dbg.value(metadata i64 0, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 0, metadata !2879, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr null, metadata !2880, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 0, metadata !2881, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 0, metadata !2882, metadata !DIExpression()), !dbg !2930
  %18 = trunc i32 %5 to i8, !dbg !2933
  %19 = lshr i8 %18, 1, !dbg !2933
  %20 = and i8 %19, 1, !dbg !2933
  call void @llvm.dbg.value(metadata i8 %20, metadata !2883, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 0, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 1, metadata !2885, metadata !DIExpression()), !dbg !2930
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2934

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2935
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2936
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2937
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2938
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2930
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2939
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2940
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %39, metadata !2885, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %38, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %37, metadata !2883, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %36, metadata !2882, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %35, metadata !2881, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %34, metadata !2880, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %33, metadata !2879, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 0, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %32, metadata !2871, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %31, metadata !2876, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %30, metadata !2875, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 %29, metadata !2872, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.label(metadata !2923), !dbg !2941
  call void @llvm.dbg.value(metadata i8 0, metadata !2886, metadata !DIExpression()), !dbg !2930
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
  ], !dbg !2942

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2883, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 5, metadata !2872, metadata !DIExpression()), !dbg !2930
  br label %115, !dbg !2943

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2883, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 5, metadata !2872, metadata !DIExpression()), !dbg !2930
  %43 = and i8 %37, 1, !dbg !2944
  %44 = icmp eq i8 %43, 0, !dbg !2944
  br i1 %44, label %45, label %115, !dbg !2943

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2946
  br i1 %46, label %115, label %47, !dbg !2949

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2946, !tbaa !1061
  br label %115, !dbg !2946

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.128, metadata !721, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i32 %29, metadata !722, metadata !DIExpression()), !dbg !2950
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.129, ptr noundef nonnull @.str.11.128, i32 noundef 5) #39, !dbg !2954
  call void @llvm.dbg.value(metadata ptr %49, metadata !723, metadata !DIExpression()), !dbg !2950
  %50 = icmp eq ptr %49, @.str.11.128, !dbg !2955
  br i1 %50, label %51, label %60, !dbg !2957

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2958
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2959
  call void @llvm.dbg.declare(metadata ptr %13, metadata !729, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata ptr %13, metadata !2961, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata ptr %13, metadata !2970, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i32 0, metadata !2976, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i64 8, metadata !2977, metadata !DIExpression()), !dbg !2978
  store i64 0, ptr %13, align 8, !dbg !2980
  call void @llvm.dbg.value(metadata ptr %12, metadata !724, metadata !DIExpression(DW_OP_deref)), !dbg !2950
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2981
  %53 = icmp eq i64 %52, 3, !dbg !2983
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !724, metadata !DIExpression()), !dbg !2950
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2984
  %57 = icmp eq i32 %29, 9, !dbg !2984
  %58 = select i1 %57, ptr @.str.10.130, ptr @.str.12.131, !dbg !2984
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2984
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2985
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2985
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2950
  call void @llvm.dbg.value(metadata ptr %61, metadata !2875, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr @.str.12.131, metadata !721, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i32 %29, metadata !722, metadata !DIExpression()), !dbg !2986
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.129, ptr noundef nonnull @.str.12.131, i32 noundef 5) #39, !dbg !2988
  call void @llvm.dbg.value(metadata ptr %62, metadata !723, metadata !DIExpression()), !dbg !2986
  %63 = icmp eq ptr %62, @.str.12.131, !dbg !2989
  br i1 %63, label %64, label %73, !dbg !2990

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2991
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2992
  call void @llvm.dbg.declare(metadata ptr %11, metadata !729, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata ptr %11, metadata !2961, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata ptr %11, metadata !2970, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i32 0, metadata !2976, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i64 8, metadata !2977, metadata !DIExpression()), !dbg !2996
  store i64 0, ptr %11, align 8, !dbg !2998
  call void @llvm.dbg.value(metadata ptr %10, metadata !724, metadata !DIExpression(DW_OP_deref)), !dbg !2986
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2999
  %66 = icmp eq i64 %65, 3, !dbg !3000
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !724, metadata !DIExpression()), !dbg !2986
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3001
  %70 = icmp eq i32 %29, 9, !dbg !3001
  %71 = select i1 %70, ptr @.str.10.130, ptr @.str.12.131, !dbg !3001
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3001
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !3002
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !3002
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2876, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %74, metadata !2875, metadata !DIExpression()), !dbg !2930
  %76 = and i8 %37, 1, !dbg !3003
  %77 = icmp eq i8 %76, 0, !dbg !3003
  br i1 %77, label %78, label %93, !dbg !3004

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2887, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 0, metadata !2878, metadata !DIExpression()), !dbg !2930
  %79 = load i8, ptr %74, align 1, !dbg !3006, !tbaa !1061
  %80 = icmp eq i8 %79, 0, !dbg !3008
  br i1 %80, label %93, label %81, !dbg !3008

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2887, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 %84, metadata !2878, metadata !DIExpression()), !dbg !2930
  %85 = icmp ult i64 %84, %40, !dbg !3009
  br i1 %85, label %86, label %88, !dbg !3012

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3009
  store i8 %82, ptr %87, align 1, !dbg !3009, !tbaa !1061
  br label %88, !dbg !3009

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3012
  call void @llvm.dbg.value(metadata i64 %89, metadata !2878, metadata !DIExpression()), !dbg !2930
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3013
  call void @llvm.dbg.value(metadata ptr %90, metadata !2887, metadata !DIExpression()), !dbg !3005
  %91 = load i8, ptr %90, align 1, !dbg !3006, !tbaa !1061
  %92 = icmp eq i8 %91, 0, !dbg !3008
  br i1 %92, label %93, label %81, !dbg !3008, !llvm.loop !3014

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3016
  call void @llvm.dbg.value(metadata i64 %94, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 1, metadata !2882, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %75, metadata !2880, metadata !DIExpression()), !dbg !2930
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %95, metadata !2881, metadata !DIExpression()), !dbg !2930
  br label %115, !dbg !3018

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2882, metadata !DIExpression()), !dbg !2930
  br label %97, !dbg !3019

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2930
  call void @llvm.dbg.value(metadata i8 %98, metadata !2882, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 1, metadata !2883, metadata !DIExpression()), !dbg !2930
  br label %99, !dbg !3020

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2938
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2930
  call void @llvm.dbg.value(metadata i8 %101, metadata !2883, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %100, metadata !2882, metadata !DIExpression()), !dbg !2930
  %102 = and i8 %101, 1, !dbg !3021
  %103 = icmp eq i8 %102, 0, !dbg !3021
  %104 = select i1 %103, i8 1, i8 %100, !dbg !3023
  br label %105, !dbg !3023

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2930
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2933
  call void @llvm.dbg.value(metadata i8 %107, metadata !2883, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %106, metadata !2882, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 2, metadata !2872, metadata !DIExpression()), !dbg !2930
  %108 = and i8 %107, 1, !dbg !3024
  %109 = icmp eq i8 %108, 0, !dbg !3024
  br i1 %109, label %110, label %115, !dbg !3026

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !3027
  br i1 %111, label %115, label %112, !dbg !3030

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !3027, !tbaa !1061
  br label %115, !dbg !3027

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2883, metadata !DIExpression()), !dbg !2930
  br label %115, !dbg !3031

114:                                              ; preds = %28
  call void @abort() #41, !dbg !3032
  unreachable, !dbg !3032

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !3016
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.130, %45 ], [ @.str.10.130, %47 ], [ @.str.10.130, %42 ], [ %34, %28 ], [ @.str.12.131, %110 ], [ @.str.12.131, %112 ], [ @.str.12.131, %105 ], [ @.str.10.130, %41 ], !dbg !2930
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2930
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2930
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2930
  call void @llvm.dbg.value(metadata i8 %123, metadata !2883, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %122, metadata !2882, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %121, metadata !2881, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %120, metadata !2880, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %119, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %118, metadata !2876, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %117, metadata !2875, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 %116, metadata !2872, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 0, metadata !2892, metadata !DIExpression()), !dbg !3033
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
  br label %138, !dbg !3034

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !3016
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2935
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2939
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2940
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !3035
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !3036
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %145, metadata !2892, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %144, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %143, metadata !2885, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %142, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %141, metadata !2879, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %140, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %139, metadata !2871, metadata !DIExpression()), !dbg !2930
  %147 = icmp eq i64 %139, -1, !dbg !3037
  br i1 %147, label %148, label %152, !dbg !3038

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3039
  %150 = load i8, ptr %149, align 1, !dbg !3039, !tbaa !1061
  %151 = icmp eq i8 %150, 0, !dbg !3040
  br i1 %151, label %627, label %154, !dbg !3041

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3042
  br i1 %153, label %627, label %154, !dbg !3041

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2894, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 0, metadata !2897, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 0, metadata !2898, metadata !DIExpression()), !dbg !3043
  br i1 %129, label %155, label %170, !dbg !3044

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !3046
  %157 = select i1 %147, i1 %130, i1 false, !dbg !3047
  br i1 %157, label %158, label %160, !dbg !3047

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %159, metadata !2871, metadata !DIExpression()), !dbg !2930
  br label %160, !dbg !3049

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3049
  call void @llvm.dbg.value(metadata i64 %161, metadata !2871, metadata !DIExpression()), !dbg !2930
  %162 = icmp ugt i64 %156, %161, !dbg !3050
  br i1 %162, label %170, label %163, !dbg !3051

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3052
  call void @llvm.dbg.value(metadata ptr %164, metadata !3053, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata ptr %120, metadata !3056, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i64 %121, metadata !3057, metadata !DIExpression()), !dbg !3058
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !3060
  %166 = icmp ne i32 %165, 0, !dbg !3061
  %167 = select i1 %166, i1 true, i1 %132, !dbg !3062
  %168 = xor i1 %166, true, !dbg !3062
  %169 = zext i1 %168 to i8, !dbg !3062
  br i1 %167, label %170, label %688, !dbg !3062

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3043
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3043
  call void @llvm.dbg.value(metadata i8 %173, metadata !2894, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %171, metadata !2871, metadata !DIExpression()), !dbg !2930
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3063
  %175 = load i8, ptr %174, align 1, !dbg !3063, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %175, metadata !2899, metadata !DIExpression()), !dbg !3043
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
  ], !dbg !3064

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !3065

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !3066

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2897, metadata !DIExpression()), !dbg !3043
  %179 = and i8 %144, 1, !dbg !3070
  %180 = icmp eq i8 %179, 0, !dbg !3070
  %181 = select i1 %133, i1 %180, i1 false, !dbg !3070
  br i1 %181, label %182, label %198, !dbg !3070

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3072
  br i1 %183, label %184, label %186, !dbg !3076

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3072
  store i8 39, ptr %185, align 1, !dbg !3072, !tbaa !1061
  br label %186, !dbg !3072

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3076
  call void @llvm.dbg.value(metadata i64 %187, metadata !2878, metadata !DIExpression()), !dbg !2930
  %188 = icmp ult i64 %187, %146, !dbg !3077
  br i1 %188, label %189, label %191, !dbg !3080

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3077
  store i8 36, ptr %190, align 1, !dbg !3077, !tbaa !1061
  br label %191, !dbg !3077

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3080
  call void @llvm.dbg.value(metadata i64 %192, metadata !2878, metadata !DIExpression()), !dbg !2930
  %193 = icmp ult i64 %192, %146, !dbg !3081
  br i1 %193, label %194, label %196, !dbg !3084

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3081
  store i8 39, ptr %195, align 1, !dbg !3081, !tbaa !1061
  br label %196, !dbg !3081

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3084
  call void @llvm.dbg.value(metadata i64 %197, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 1, metadata !2886, metadata !DIExpression()), !dbg !2930
  br label %198, !dbg !3085

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2930
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2930
  call void @llvm.dbg.value(metadata i8 %200, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %199, metadata !2878, metadata !DIExpression()), !dbg !2930
  %201 = icmp ult i64 %199, %146, !dbg !3086
  br i1 %201, label %202, label %204, !dbg !3089

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3086
  store i8 92, ptr %203, align 1, !dbg !3086, !tbaa !1061
  br label %204, !dbg !3086

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3089
  call void @llvm.dbg.value(metadata i64 %205, metadata !2878, metadata !DIExpression()), !dbg !2930
  br i1 %126, label %206, label %491, !dbg !3090

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3092
  %208 = icmp ult i64 %207, %171, !dbg !3093
  br i1 %208, label %209, label %480, !dbg !3094

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3095
  %211 = load i8, ptr %210, align 1, !dbg !3095, !tbaa !1061
  %212 = add i8 %211, -48, !dbg !3096
  %213 = icmp ult i8 %212, 10, !dbg !3096
  br i1 %213, label %214, label %480, !dbg !3096

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3097
  br i1 %215, label %216, label %218, !dbg !3101

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3097
  store i8 48, ptr %217, align 1, !dbg !3097, !tbaa !1061
  br label %218, !dbg !3097

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %219, metadata !2878, metadata !DIExpression()), !dbg !2930
  %220 = icmp ult i64 %219, %146, !dbg !3102
  br i1 %220, label %221, label %223, !dbg !3105

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3102
  store i8 48, ptr %222, align 1, !dbg !3102, !tbaa !1061
  br label %223, !dbg !3102

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3105
  call void @llvm.dbg.value(metadata i64 %224, metadata !2878, metadata !DIExpression()), !dbg !2930
  br label %480, !dbg !3106

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !3107

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3108

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !3109

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !3111

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3113
  %231 = icmp ult i64 %230, %171, !dbg !3114
  br i1 %231, label %232, label %480, !dbg !3115

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !3116
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !3117
  %235 = load i8, ptr %234, align 1, !dbg !3117, !tbaa !1061
  %236 = icmp eq i8 %235, 63, !dbg !3118
  br i1 %236, label %237, label %480, !dbg !3119

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3120
  %239 = load i8, ptr %238, align 1, !dbg !3120, !tbaa !1061
  %240 = sext i8 %239 to i32, !dbg !3120
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
  ], !dbg !3121

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !3122

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2899, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %230, metadata !2892, metadata !DIExpression()), !dbg !3033
  %243 = icmp ult i64 %140, %146, !dbg !3124
  br i1 %243, label %244, label %246, !dbg !3127

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3124
  store i8 63, ptr %245, align 1, !dbg !3124, !tbaa !1061
  br label %246, !dbg !3124

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !3127
  call void @llvm.dbg.value(metadata i64 %247, metadata !2878, metadata !DIExpression()), !dbg !2930
  %248 = icmp ult i64 %247, %146, !dbg !3128
  br i1 %248, label %249, label %251, !dbg !3131

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !3128
  store i8 34, ptr %250, align 1, !dbg !3128, !tbaa !1061
  br label %251, !dbg !3128

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %252, metadata !2878, metadata !DIExpression()), !dbg !2930
  %253 = icmp ult i64 %252, %146, !dbg !3132
  br i1 %253, label %254, label %256, !dbg !3135

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !3132
  store i8 34, ptr %255, align 1, !dbg !3132, !tbaa !1061
  br label %256, !dbg !3132

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !3135
  call void @llvm.dbg.value(metadata i64 %257, metadata !2878, metadata !DIExpression()), !dbg !2930
  %258 = icmp ult i64 %257, %146, !dbg !3136
  br i1 %258, label %259, label %261, !dbg !3139

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !3136
  store i8 63, ptr %260, align 1, !dbg !3136, !tbaa !1061
  br label %261, !dbg !3136

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !3139
  call void @llvm.dbg.value(metadata i64 %262, metadata !2878, metadata !DIExpression()), !dbg !2930
  br label %480, !dbg !3140

263:                                              ; preds = %170
  br label %274, !dbg !3141

264:                                              ; preds = %170
  br label %274, !dbg !3142

265:                                              ; preds = %170
  br label %272, !dbg !3143

266:                                              ; preds = %170
  br label %272, !dbg !3144

267:                                              ; preds = %170
  br label %274, !dbg !3145

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !3146

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !3147

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !3150

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !3152

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !3153
  call void @llvm.dbg.label(metadata !2924), !dbg !3154
  br i1 %134, label %274, label %670, !dbg !3155

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !3153
  call void @llvm.dbg.label(metadata !2926), !dbg !3157
  br i1 %125, label %535, label %491, !dbg !3158

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !3159

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !3160, !tbaa !1061
  %279 = icmp eq i8 %278, 0, !dbg !3162
  br i1 %279, label %280, label %480, !dbg !3163

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !3164
  br i1 %281, label %282, label %480, !dbg !3166

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2898, metadata !DIExpression()), !dbg !3043
  br label %283, !dbg !3167

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !3043
  call void @llvm.dbg.value(metadata i8 %284, metadata !2898, metadata !DIExpression()), !dbg !3043
  br i1 %134, label %480, label %670, !dbg !3168

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 1, metadata !2898, metadata !DIExpression()), !dbg !3043
  br i1 %133, label %286, label %480, !dbg !3170

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !3171

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !3174
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !3176
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !3176
  %292 = select i1 %290, i64 %146, i64 0, !dbg !3176
  call void @llvm.dbg.value(metadata i64 %292, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %291, metadata !2879, metadata !DIExpression()), !dbg !2930
  %293 = icmp ult i64 %140, %292, !dbg !3177
  br i1 %293, label %294, label %296, !dbg !3180

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3177
  store i8 39, ptr %295, align 1, !dbg !3177, !tbaa !1061
  br label %296, !dbg !3177

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %297, metadata !2878, metadata !DIExpression()), !dbg !2930
  %298 = icmp ult i64 %297, %292, !dbg !3181
  br i1 %298, label %299, label %301, !dbg !3184

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !3181
  store i8 92, ptr %300, align 1, !dbg !3181, !tbaa !1061
  br label %301, !dbg !3181

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %302, metadata !2878, metadata !DIExpression()), !dbg !2930
  %303 = icmp ult i64 %302, %292, !dbg !3185
  br i1 %303, label %304, label %306, !dbg !3188

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !3185
  store i8 39, ptr %305, align 1, !dbg !3185, !tbaa !1061
  br label %306, !dbg !3185

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %307, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 0, metadata !2886, metadata !DIExpression()), !dbg !2930
  br label %480, !dbg !3189

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !3190

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2900, metadata !DIExpression()), !dbg !3191
  %310 = tail call ptr @__ctype_b_loc() #42, !dbg !3192
  %311 = load ptr, ptr %310, align 8, !dbg !3192, !tbaa !951
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !3192
  %314 = load i16, ptr %313, align 2, !dbg !3192, !tbaa !1093
  %315 = lshr i16 %314, 14, !dbg !3194
  %316 = trunc i16 %315 to i8, !dbg !3194
  %317 = and i8 %316, 1, !dbg !3194
  call void @llvm.dbg.value(metadata i8 %317, metadata !2903, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i64 %171, metadata !2871, metadata !DIExpression()), !dbg !2930
  %318 = icmp eq i8 %317, 0, !dbg !3195
  call void @llvm.dbg.value(metadata i1 %318, metadata !2898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3043
  br label %368, !dbg !3196

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !3197
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2904, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata ptr %14, metadata !2961, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata ptr %14, metadata !2970, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 0, metadata !2976, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 8, metadata !2977, metadata !DIExpression()), !dbg !3201
  store i64 0, ptr %14, align 8, !dbg !3203
  call void @llvm.dbg.value(metadata i64 0, metadata !2900, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i8 1, metadata !2903, metadata !DIExpression()), !dbg !3191
  %320 = icmp eq i64 %171, -1, !dbg !3204
  br i1 %320, label %321, label %323, !dbg !3206

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !3207
  call void @llvm.dbg.value(metadata i64 %322, metadata !2871, metadata !DIExpression()), !dbg !2930
  br label %323, !dbg !3208

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !3043
  call void @llvm.dbg.value(metadata i64 %324, metadata !2871, metadata !DIExpression()), !dbg !2930
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !3209
  %325 = sub i64 %324, %145, !dbg !3210
  call void @llvm.dbg.value(metadata ptr %15, metadata !2907, metadata !DIExpression(DW_OP_deref)), !dbg !3211
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #39, !dbg !3212
  call void @llvm.dbg.value(metadata i64 %326, metadata !2911, metadata !DIExpression()), !dbg !3211
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !3213

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2900, metadata !DIExpression()), !dbg !3191
  %328 = icmp ugt i64 %324, %145, !dbg !3214
  br i1 %328, label %331, label %329, !dbg !3216

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2903, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i64 0, metadata !2900, metadata !DIExpression()), !dbg !3191
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !3217
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !3218
  call void @llvm.dbg.value(metadata i64 %324, metadata !2871, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i1 true, metadata !2898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3043
  br label %368, !dbg !3196

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2903, metadata !DIExpression()), !dbg !3191
  br label %360, !dbg !3219

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2900, metadata !DIExpression()), !dbg !3191
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !3221
  %335 = load i8, ptr %334, align 1, !dbg !3221, !tbaa !1061
  %336 = icmp eq i8 %335, 0, !dbg !3216
  br i1 %336, label %363, label %337, !dbg !3222

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !3223
  call void @llvm.dbg.value(metadata i64 %338, metadata !2900, metadata !DIExpression()), !dbg !3191
  %339 = add i64 %338, %145, !dbg !3224
  %340 = icmp eq i64 %338, %325, !dbg !3214
  br i1 %340, label %363, label %331, !dbg !3216, !llvm.loop !3225

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !3226
  %344 = and i1 %343, %133, !dbg !3226
  call void @llvm.dbg.value(metadata i64 1, metadata !2912, metadata !DIExpression()), !dbg !3227
  br i1 %344, label %345, label %354, !dbg !3226

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2912, metadata !DIExpression()), !dbg !3227
  %347 = add i64 %346, %145, !dbg !3228
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !3230
  %349 = load i8, ptr %348, align 1, !dbg !3230, !tbaa !1061
  %350 = sext i8 %349 to i32, !dbg !3230
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !3231

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !3232
  call void @llvm.dbg.value(metadata i64 %352, metadata !2912, metadata !DIExpression()), !dbg !3227
  %353 = icmp eq i64 %352, %326, !dbg !3233
  br i1 %353, label %354, label %345, !dbg !3234, !llvm.loop !3235

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !3237, !tbaa !1052
  call void @llvm.dbg.value(metadata i32 %355, metadata !2907, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 %355, metadata !3239, metadata !DIExpression()), !dbg !3247
  %356 = call i32 @iswprint(i32 noundef %355) #39, !dbg !3249
  %357 = icmp ne i32 %356, 0, !dbg !3250
  %358 = zext i1 %357 to i8, !dbg !3251
  call void @llvm.dbg.value(metadata i8 %358, metadata !2903, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i64 %326, metadata !2900, metadata !DIExpression()), !dbg !3191
  br label %363, !dbg !3252

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2903, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i64 0, metadata !2900, metadata !DIExpression()), !dbg !3191
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !3217
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !3218
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2903, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i64 0, metadata !2900, metadata !DIExpression()), !dbg !3191
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !3217
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !3218
  call void @llvm.dbg.value(metadata i64 %324, metadata !2871, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i1 %361, metadata !2898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3043
  br label %368, !dbg !3196

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2903, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i64 %364, metadata !2900, metadata !DIExpression()), !dbg !3191
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !3217
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !3218
  call void @llvm.dbg.value(metadata i64 %324, metadata !2871, metadata !DIExpression()), !dbg !2930
  %366 = icmp eq i8 %365, 0, !dbg !3195
  call void @llvm.dbg.value(metadata i1 %366, metadata !2898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3043
  %367 = icmp ugt i64 %364, 1, !dbg !3253
  br i1 %367, label %374, label %368, !dbg !3196

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !3254
  br i1 %373, label %374, label %480, !dbg !3254

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !3255
  call void @llvm.dbg.value(metadata i64 %379, metadata !2920, metadata !DIExpression()), !dbg !3256
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !3257

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2930
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !3035
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !3033
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !3043
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !3258
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !3043
  call void @llvm.dbg.value(metadata i8 %387, metadata !2899, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %386, metadata !2897, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %385, metadata !2894, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %384, metadata !2892, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %383, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %382, metadata !2878, metadata !DIExpression()), !dbg !2930
  br i1 %380, label %388, label %434, !dbg !3259

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !3264

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2897, metadata !DIExpression()), !dbg !3043
  %390 = and i8 %383, 1, !dbg !3267
  %391 = icmp eq i8 %390, 0, !dbg !3267
  %392 = select i1 %133, i1 %391, i1 false, !dbg !3267
  br i1 %392, label %393, label %409, !dbg !3267

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !3269
  br i1 %394, label %395, label %397, !dbg !3273

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3269
  store i8 39, ptr %396, align 1, !dbg !3269, !tbaa !1061
  br label %397, !dbg !3269

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !3273
  call void @llvm.dbg.value(metadata i64 %398, metadata !2878, metadata !DIExpression()), !dbg !2930
  %399 = icmp ult i64 %398, %146, !dbg !3274
  br i1 %399, label %400, label %402, !dbg !3277

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !3274
  store i8 36, ptr %401, align 1, !dbg !3274, !tbaa !1061
  br label %402, !dbg !3274

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !3277
  call void @llvm.dbg.value(metadata i64 %403, metadata !2878, metadata !DIExpression()), !dbg !2930
  %404 = icmp ult i64 %403, %146, !dbg !3278
  br i1 %404, label %405, label %407, !dbg !3281

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !3278
  store i8 39, ptr %406, align 1, !dbg !3278, !tbaa !1061
  br label %407, !dbg !3278

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %408, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 1, metadata !2886, metadata !DIExpression()), !dbg !2930
  br label %409, !dbg !3282

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2930
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2930
  call void @llvm.dbg.value(metadata i8 %411, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %410, metadata !2878, metadata !DIExpression()), !dbg !2930
  %412 = icmp ult i64 %410, %146, !dbg !3283
  br i1 %412, label %413, label %415, !dbg !3286

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !3283
  store i8 92, ptr %414, align 1, !dbg !3283, !tbaa !1061
  br label %415, !dbg !3283

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !3286
  call void @llvm.dbg.value(metadata i64 %416, metadata !2878, metadata !DIExpression()), !dbg !2930
  %417 = icmp ult i64 %416, %146, !dbg !3287
  br i1 %417, label %418, label %422, !dbg !3290

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !3287
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !3287
  store i8 %420, ptr %421, align 1, !dbg !3287, !tbaa !1061
  br label %422, !dbg !3287

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !3290
  call void @llvm.dbg.value(metadata i64 %423, metadata !2878, metadata !DIExpression()), !dbg !2930
  %424 = icmp ult i64 %423, %146, !dbg !3291
  br i1 %424, label %425, label %430, !dbg !3294

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !3291
  %428 = or i8 %427, 48, !dbg !3291
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !3291
  store i8 %428, ptr %429, align 1, !dbg !3291, !tbaa !1061
  br label %430, !dbg !3291

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %431, metadata !2878, metadata !DIExpression()), !dbg !2930
  %432 = and i8 %387, 7, !dbg !3295
  %433 = or i8 %432, 48, !dbg !3296
  call void @llvm.dbg.value(metadata i8 %433, metadata !2899, metadata !DIExpression()), !dbg !3043
  br label %443, !dbg !3297

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !3298
  %436 = icmp eq i8 %435, 0, !dbg !3298
  br i1 %436, label %443, label %437, !dbg !3300

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !3301
  br i1 %438, label %439, label %441, !dbg !3305

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3301
  store i8 92, ptr %440, align 1, !dbg !3301, !tbaa !1061
  br label %441, !dbg !3301

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %442, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 0, metadata !2894, metadata !DIExpression()), !dbg !3043
  br label %443, !dbg !3306

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2930
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !3035
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !3043
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !3043
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !3043
  call void @llvm.dbg.value(metadata i8 %448, metadata !2899, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %447, metadata !2897, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %446, metadata !2894, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %445, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %444, metadata !2878, metadata !DIExpression()), !dbg !2930
  %449 = add i64 %384, 1, !dbg !3307
  %450 = icmp ugt i64 %379, %449, !dbg !3309
  br i1 %450, label %451, label %478, !dbg !3310

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !3311
  %453 = icmp ne i8 %452, 0, !dbg !3311
  %454 = and i8 %447, 1, !dbg !3311
  %455 = icmp eq i8 %454, 0, !dbg !3311
  %456 = select i1 %453, i1 %455, i1 false, !dbg !3311
  br i1 %456, label %457, label %468, !dbg !3311

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !3314
  br i1 %458, label %459, label %461, !dbg !3318

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !3314
  store i8 39, ptr %460, align 1, !dbg !3314, !tbaa !1061
  br label %461, !dbg !3314

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !3318
  call void @llvm.dbg.value(metadata i64 %462, metadata !2878, metadata !DIExpression()), !dbg !2930
  %463 = icmp ult i64 %462, %146, !dbg !3319
  br i1 %463, label %464, label %466, !dbg !3322

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !3319
  store i8 39, ptr %465, align 1, !dbg !3319, !tbaa !1061
  br label %466, !dbg !3319

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !3322
  call void @llvm.dbg.value(metadata i64 %467, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 0, metadata !2886, metadata !DIExpression()), !dbg !2930
  br label %468, !dbg !3323

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !3324
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2930
  call void @llvm.dbg.value(metadata i8 %470, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %469, metadata !2878, metadata !DIExpression()), !dbg !2930
  %471 = icmp ult i64 %469, %146, !dbg !3325
  br i1 %471, label %472, label %474, !dbg !3328

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !3325
  store i8 %448, ptr %473, align 1, !dbg !3325, !tbaa !1061
  br label %474, !dbg !3325

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3328
  call void @llvm.dbg.value(metadata i64 %475, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %449, metadata !2892, metadata !DIExpression()), !dbg !3033
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3329
  %477 = load i8, ptr %476, align 1, !dbg !3329, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %477, metadata !2899, metadata !DIExpression()), !dbg !3043
  br label %381, !dbg !3330, !llvm.loop !3331

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !3043
  call void @llvm.dbg.value(metadata i8 %448, metadata !2899, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %479, metadata !2898, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %447, metadata !2897, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %446, metadata !2894, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %384, metadata !2892, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %445, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %444, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %378, metadata !2871, metadata !DIExpression()), !dbg !2930
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3334
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2930
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2935
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2930
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2930
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !3033
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !3043
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !3043
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !3043
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %489, metadata !2899, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %488, metadata !2898, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %487, metadata !2897, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %173, metadata !2894, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %486, metadata !2892, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %485, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %484, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %483, metadata !2879, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %482, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %481, metadata !2871, metadata !DIExpression()), !dbg !2930
  br i1 %127, label %502, label %491, !dbg !3335

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
  br i1 %137, label %503, label %524, !dbg !3337

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3338

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
  %514 = lshr i8 %505, 5, !dbg !3339
  %515 = zext i8 %514 to i64, !dbg !3339
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3340
  %517 = load i32, ptr %516, align 4, !dbg !3340, !tbaa !1052
  %518 = and i8 %505, 31, !dbg !3341
  %519 = zext i8 %518 to i32, !dbg !3341
  %520 = shl nuw i32 1, %519, !dbg !3342
  %521 = and i32 %517, %520, !dbg !3342
  %522 = icmp eq i32 %521, 0, !dbg !3342
  %523 = and i1 %172, %522, !dbg !3343
  br i1 %523, label %573, label %535, !dbg !3343

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
  br i1 %172, label %573, label %535, !dbg !3344

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3334
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2930
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2935
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2939
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !3035
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3345
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !3043
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !3043
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %543, metadata !2899, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %542, metadata !2898, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %541, metadata !2892, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %540, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %539, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %538, metadata !2879, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %537, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %536, metadata !2871, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.label(metadata !2927), !dbg !3346
  br i1 %132, label %545, label %674, !dbg !3347

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2897, metadata !DIExpression()), !dbg !3043
  %546 = and i8 %540, 1, !dbg !3349
  %547 = icmp eq i8 %546, 0, !dbg !3349
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3349
  br i1 %548, label %549, label %565, !dbg !3349

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3351
  br i1 %550, label %551, label %553, !dbg !3355

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3351
  store i8 39, ptr %552, align 1, !dbg !3351, !tbaa !1061
  br label %553, !dbg !3351

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3355
  call void @llvm.dbg.value(metadata i64 %554, metadata !2878, metadata !DIExpression()), !dbg !2930
  %555 = icmp ult i64 %554, %544, !dbg !3356
  br i1 %555, label %556, label %558, !dbg !3359

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3356
  store i8 36, ptr %557, align 1, !dbg !3356, !tbaa !1061
  br label %558, !dbg !3356

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3359
  call void @llvm.dbg.value(metadata i64 %559, metadata !2878, metadata !DIExpression()), !dbg !2930
  %560 = icmp ult i64 %559, %544, !dbg !3360
  br i1 %560, label %561, label %563, !dbg !3363

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3360
  store i8 39, ptr %562, align 1, !dbg !3360, !tbaa !1061
  br label %563, !dbg !3360

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3363
  call void @llvm.dbg.value(metadata i64 %564, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 1, metadata !2886, metadata !DIExpression()), !dbg !2930
  br label %565, !dbg !3364

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !3043
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2930
  call void @llvm.dbg.value(metadata i8 %567, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %566, metadata !2878, metadata !DIExpression()), !dbg !2930
  %568 = icmp ult i64 %566, %544, !dbg !3365
  br i1 %568, label %569, label %571, !dbg !3368

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3365
  store i8 92, ptr %570, align 1, !dbg !3365, !tbaa !1061
  br label %571, !dbg !3365

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3368
  call void @llvm.dbg.value(metadata i64 %544, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %543, metadata !2899, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %542, metadata !2898, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 1, metadata !2897, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %541, metadata !2892, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %567, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %539, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %538, metadata !2879, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %572, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %536, metadata !2871, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.label(metadata !2928), !dbg !3369
  br label %600, !dbg !3370

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3334
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2930
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2935
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2939
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !3035
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3345
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !3043
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !3043
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3373
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %582, metadata !2899, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %581, metadata !2898, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %580, metadata !2897, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %579, metadata !2892, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %578, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %577, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %576, metadata !2879, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %575, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %574, metadata !2871, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.label(metadata !2928), !dbg !3369
  %584 = and i8 %578, 1, !dbg !3370
  %585 = icmp ne i8 %584, 0, !dbg !3370
  %586 = and i8 %580, 1, !dbg !3370
  %587 = icmp eq i8 %586, 0, !dbg !3370
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3370
  br i1 %588, label %589, label %600, !dbg !3370

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3374
  br i1 %590, label %591, label %593, !dbg !3378

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3374
  store i8 39, ptr %592, align 1, !dbg !3374, !tbaa !1061
  br label %593, !dbg !3374

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3378
  call void @llvm.dbg.value(metadata i64 %594, metadata !2878, metadata !DIExpression()), !dbg !2930
  %595 = icmp ult i64 %594, %583, !dbg !3379
  br i1 %595, label %596, label %598, !dbg !3382

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3379
  store i8 39, ptr %597, align 1, !dbg !3379, !tbaa !1061
  br label %598, !dbg !3379

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3382
  call void @llvm.dbg.value(metadata i64 %599, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 0, metadata !2886, metadata !DIExpression()), !dbg !2930
  br label %600, !dbg !3383

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !3043
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2930
  call void @llvm.dbg.value(metadata i8 %609, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %608, metadata !2878, metadata !DIExpression()), !dbg !2930
  %610 = icmp ult i64 %608, %601, !dbg !3384
  br i1 %610, label %611, label %613, !dbg !3387

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3384
  store i8 %602, ptr %612, align 1, !dbg !3384, !tbaa !1061
  br label %613, !dbg !3384

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3387
  call void @llvm.dbg.value(metadata i64 %614, metadata !2878, metadata !DIExpression()), !dbg !2930
  %615 = icmp eq i8 %603, 0, !dbg !3388
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3390
  call void @llvm.dbg.value(metadata i8 %616, metadata !2885, metadata !DIExpression()), !dbg !2930
  br label %617, !dbg !3391

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3334
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2930
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2935
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2939
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2940
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !3035
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3345
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %624, metadata !2892, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %623, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %622, metadata !2885, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %621, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %620, metadata !2879, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %619, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %618, metadata !2871, metadata !DIExpression()), !dbg !2930
  %626 = add i64 %624, 1, !dbg !3392
  call void @llvm.dbg.value(metadata i64 %626, metadata !2892, metadata !DIExpression()), !dbg !3033
  br label %138, !dbg !3393, !llvm.loop !3394

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %143, metadata !2885, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %142, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %141, metadata !2879, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %140, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %139, metadata !2871, metadata !DIExpression()), !dbg !2930
  %628 = icmp eq i64 %140, 0, !dbg !3396
  %629 = and i1 %133, %628, !dbg !3398
  %630 = xor i1 %629, true, !dbg !3398
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3398
  br i1 %631, label %632, label %670, !dbg !3398

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3399
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3399
  br i1 %636, label %637, label %646, !dbg !3399

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3401
  %639 = icmp eq i8 %638, 0, !dbg !3401
  br i1 %639, label %642, label %640, !dbg !3404

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3405
  br label %694, !dbg !3406

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3407
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3409
  br i1 %645, label %28, label %646, !dbg !3409

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3410
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3412
  br i1 %649, label %650, label %665, !dbg !3412

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2880, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %140, metadata !2878, metadata !DIExpression()), !dbg !2930
  %651 = load i8, ptr %120, align 1, !dbg !3413, !tbaa !1061
  %652 = icmp eq i8 %651, 0, !dbg !3416
  br i1 %652, label %665, label %653, !dbg !3416

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2880, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %656, metadata !2878, metadata !DIExpression()), !dbg !2930
  %657 = icmp ult i64 %656, %146, !dbg !3417
  br i1 %657, label %658, label %660, !dbg !3420

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3417
  store i8 %654, ptr %659, align 1, !dbg !3417, !tbaa !1061
  br label %660, !dbg !3417

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3420
  call void @llvm.dbg.value(metadata i64 %661, metadata !2878, metadata !DIExpression()), !dbg !2930
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3421
  call void @llvm.dbg.value(metadata ptr %662, metadata !2880, metadata !DIExpression()), !dbg !2930
  %663 = load i8, ptr %662, align 1, !dbg !3413, !tbaa !1061
  %664 = icmp eq i8 %663, 0, !dbg !3416
  br i1 %664, label %665, label %653, !dbg !3416, !llvm.loop !3422

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !3016
  call void @llvm.dbg.value(metadata i64 %666, metadata !2878, metadata !DIExpression()), !dbg !2930
  %667 = icmp ult i64 %666, %146, !dbg !3424
  br i1 %667, label %668, label %694, !dbg !3426

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3427
  store i8 0, ptr %669, align 1, !dbg !3428, !tbaa !1061
  br label %694, !dbg !3427

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2929), !dbg !3429
  %672 = icmp eq i8 %124, 0, !dbg !3430
  %673 = select i1 %672, i32 2, i32 4, !dbg !3430
  br label %684, !dbg !3430

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3430
  %678 = select i1 %677, i32 2, i32 4, !dbg !3430
  br label %679, !dbg !3432

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2929), !dbg !3429
  %683 = icmp eq i32 %116, 2, !dbg !3432
  br i1 %683, label %684, label %688, !dbg !3430

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3430

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2872, metadata !DIExpression()), !dbg !2930
  %692 = and i32 %5, -3, !dbg !3433
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3434
  br label %694, !dbg !3435

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3436
}

; Function Attrs: nounwind
declare !dbg !3437 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3440 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3442 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3446, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 %1, metadata !3447, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata ptr %2, metadata !3448, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata ptr %0, metadata !3450, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 %1, metadata !3455, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata ptr null, metadata !3456, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata ptr %2, metadata !3457, metadata !DIExpression()), !dbg !3463
  %4 = icmp eq ptr %2, null, !dbg !3465
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3465
  call void @llvm.dbg.value(metadata ptr %5, metadata !3458, metadata !DIExpression()), !dbg !3463
  %6 = tail call ptr @__errno_location() #42, !dbg !3466
  %7 = load i32, ptr %6, align 4, !dbg !3466, !tbaa !1052
  call void @llvm.dbg.value(metadata i32 %7, metadata !3459, metadata !DIExpression()), !dbg !3463
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3467
  %9 = load i32, ptr %8, align 4, !dbg !3467, !tbaa !2812
  %10 = or i32 %9, 1, !dbg !3468
  call void @llvm.dbg.value(metadata i32 %10, metadata !3460, metadata !DIExpression()), !dbg !3463
  %11 = load i32, ptr %5, align 8, !dbg !3469, !tbaa !2762
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3470
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3471
  %14 = load ptr, ptr %13, align 8, !dbg !3471, !tbaa !2833
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3472
  %16 = load ptr, ptr %15, align 8, !dbg !3472, !tbaa !2836
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3473
  %18 = add i64 %17, 1, !dbg !3474
  call void @llvm.dbg.value(metadata i64 %18, metadata !3461, metadata !DIExpression()), !dbg !3463
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !3475
  call void @llvm.dbg.value(metadata ptr %19, metadata !3462, metadata !DIExpression()), !dbg !3463
  %20 = load i32, ptr %5, align 8, !dbg !3476, !tbaa !2762
  %21 = load ptr, ptr %13, align 8, !dbg !3477, !tbaa !2833
  %22 = load ptr, ptr %15, align 8, !dbg !3478, !tbaa !2836
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3479
  store i32 %7, ptr %6, align 4, !dbg !3480, !tbaa !1052
  ret ptr %19, !dbg !3481
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3451 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3450, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i64 %1, metadata !3455, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata ptr %2, metadata !3456, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata ptr %3, metadata !3457, metadata !DIExpression()), !dbg !3482
  %5 = icmp eq ptr %3, null, !dbg !3483
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3483
  call void @llvm.dbg.value(metadata ptr %6, metadata !3458, metadata !DIExpression()), !dbg !3482
  %7 = tail call ptr @__errno_location() #42, !dbg !3484
  %8 = load i32, ptr %7, align 4, !dbg !3484, !tbaa !1052
  call void @llvm.dbg.value(metadata i32 %8, metadata !3459, metadata !DIExpression()), !dbg !3482
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3485
  %10 = load i32, ptr %9, align 4, !dbg !3485, !tbaa !2812
  %11 = icmp eq ptr %2, null, !dbg !3486
  %12 = zext i1 %11 to i32, !dbg !3486
  %13 = or i32 %10, %12, !dbg !3487
  call void @llvm.dbg.value(metadata i32 %13, metadata !3460, metadata !DIExpression()), !dbg !3482
  %14 = load i32, ptr %6, align 8, !dbg !3488, !tbaa !2762
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3489
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3490
  %17 = load ptr, ptr %16, align 8, !dbg !3490, !tbaa !2833
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3491
  %19 = load ptr, ptr %18, align 8, !dbg !3491, !tbaa !2836
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3492
  %21 = add i64 %20, 1, !dbg !3493
  call void @llvm.dbg.value(metadata i64 %21, metadata !3461, metadata !DIExpression()), !dbg !3482
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !3494
  call void @llvm.dbg.value(metadata ptr %22, metadata !3462, metadata !DIExpression()), !dbg !3482
  %23 = load i32, ptr %6, align 8, !dbg !3495, !tbaa !2762
  %24 = load ptr, ptr %16, align 8, !dbg !3496, !tbaa !2833
  %25 = load ptr, ptr %18, align 8, !dbg !3497, !tbaa !2836
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3498
  store i32 %8, ptr %7, align 4, !dbg !3499, !tbaa !1052
  br i1 %11, label %28, label %27, !dbg !3500

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3501, !tbaa !1547
  br label %28, !dbg !3503

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3504
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3505 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3510, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %1, metadata !3507, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i32 1, metadata !3508, metadata !DIExpression()), !dbg !3512
  %2 = load i32, ptr @nslots, align 4, !tbaa !1052
  call void @llvm.dbg.value(metadata i32 1, metadata !3508, metadata !DIExpression()), !dbg !3512
  %3 = icmp sgt i32 %2, 1, !dbg !3513
  br i1 %3, label %4, label %6, !dbg !3515

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3513
  br label %10, !dbg !3515

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3516
  %8 = load ptr, ptr %7, align 8, !dbg !3516, !tbaa !3518
  %9 = icmp eq ptr %8, @slot0, !dbg !3520
  br i1 %9, label %17, label %16, !dbg !3521

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3508, metadata !DIExpression()), !dbg !3512
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3522
  %13 = load ptr, ptr %12, align 8, !dbg !3522, !tbaa !3518
  tail call void @free(ptr noundef %13) #39, !dbg !3523
  %14 = add nuw nsw i64 %11, 1, !dbg !3524
  call void @llvm.dbg.value(metadata i64 %14, metadata !3508, metadata !DIExpression()), !dbg !3512
  %15 = icmp eq i64 %14, %5, !dbg !3513
  br i1 %15, label %6, label %10, !dbg !3515, !llvm.loop !3525

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !3527
  store i64 256, ptr @slotvec0, align 8, !dbg !3529, !tbaa !3530
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3531, !tbaa !3518
  br label %17, !dbg !3532

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3533
  br i1 %18, label %20, label %19, !dbg !3535

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !3536
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3538, !tbaa !951
  br label %20, !dbg !3539

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3540, !tbaa !1052
  ret void, !dbg !3541
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3542 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3545 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3547, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata ptr %1, metadata !3548, metadata !DIExpression()), !dbg !3549
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3550
  ret ptr %3, !dbg !3551
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3552 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3556, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata ptr %1, metadata !3557, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i64 %2, metadata !3558, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata ptr %3, metadata !3559, metadata !DIExpression()), !dbg !3572
  %6 = tail call ptr @__errno_location() #42, !dbg !3573
  %7 = load i32, ptr %6, align 4, !dbg !3573, !tbaa !1052
  call void @llvm.dbg.value(metadata i32 %7, metadata !3560, metadata !DIExpression()), !dbg !3572
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3574, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %8, metadata !3561, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3562, metadata !DIExpression()), !dbg !3572
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3575
  br i1 %9, label %10, label %11, !dbg !3575

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !3577
  unreachable, !dbg !3577

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3578, !tbaa !1052
  %13 = icmp sgt i32 %12, %0, !dbg !3579
  br i1 %13, label %32, label %14, !dbg !3580

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3581
  call void @llvm.dbg.value(metadata i1 %15, metadata !3563, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3582
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !3583
  %16 = sext i32 %12 to i64, !dbg !3584
  call void @llvm.dbg.value(metadata i64 %16, metadata !3566, metadata !DIExpression()), !dbg !3582
  store i64 %16, ptr %5, align 8, !dbg !3585, !tbaa !1547
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3586
  %18 = add nuw nsw i32 %0, 1, !dbg !3587
  %19 = sub i32 %18, %12, !dbg !3588
  %20 = sext i32 %19 to i64, !dbg !3589
  call void @llvm.dbg.value(metadata ptr %5, metadata !3566, metadata !DIExpression(DW_OP_deref)), !dbg !3582
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3590
  call void @llvm.dbg.value(metadata ptr %21, metadata !3561, metadata !DIExpression()), !dbg !3572
  store ptr %21, ptr @slotvec, align 8, !dbg !3591, !tbaa !951
  br i1 %15, label %22, label %23, !dbg !3592

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3593, !tbaa.struct !3595
  br label %23, !dbg !3596

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3597, !tbaa !1052
  %25 = sext i32 %24 to i64, !dbg !3598
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3598
  %27 = load i64, ptr %5, align 8, !dbg !3599, !tbaa !1547
  call void @llvm.dbg.value(metadata i64 %27, metadata !3566, metadata !DIExpression()), !dbg !3582
  %28 = sub nsw i64 %27, %25, !dbg !3600
  %29 = shl i64 %28, 4, !dbg !3601
  call void @llvm.dbg.value(metadata ptr %26, metadata !2970, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 0, metadata !2976, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i64 %29, metadata !2977, metadata !DIExpression()), !dbg !3602
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3604
  %30 = load i64, ptr %5, align 8, !dbg !3605, !tbaa !1547
  call void @llvm.dbg.value(metadata i64 %30, metadata !3566, metadata !DIExpression()), !dbg !3582
  %31 = trunc i64 %30 to i32, !dbg !3605
  store i32 %31, ptr @nslots, align 4, !dbg !3606, !tbaa !1052
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3607
  br label %32, !dbg !3608

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3572
  call void @llvm.dbg.value(metadata ptr %33, metadata !3561, metadata !DIExpression()), !dbg !3572
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3609
  %36 = load i64, ptr %35, align 8, !dbg !3610, !tbaa !3530
  call void @llvm.dbg.value(metadata i64 %36, metadata !3567, metadata !DIExpression()), !dbg !3611
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3612
  %38 = load ptr, ptr %37, align 8, !dbg !3612, !tbaa !3518
  call void @llvm.dbg.value(metadata ptr %38, metadata !3569, metadata !DIExpression()), !dbg !3611
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3613
  %40 = load i32, ptr %39, align 4, !dbg !3613, !tbaa !2812
  %41 = or i32 %40, 1, !dbg !3614
  call void @llvm.dbg.value(metadata i32 %41, metadata !3570, metadata !DIExpression()), !dbg !3611
  %42 = load i32, ptr %3, align 8, !dbg !3615, !tbaa !2762
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3616
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3617
  %45 = load ptr, ptr %44, align 8, !dbg !3617, !tbaa !2833
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3618
  %47 = load ptr, ptr %46, align 8, !dbg !3618, !tbaa !2836
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %48, metadata !3571, metadata !DIExpression()), !dbg !3611
  %49 = icmp ugt i64 %36, %48, !dbg !3620
  br i1 %49, label %60, label %50, !dbg !3622

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3623
  call void @llvm.dbg.value(metadata i64 %51, metadata !3567, metadata !DIExpression()), !dbg !3611
  store i64 %51, ptr %35, align 8, !dbg !3625, !tbaa !3530
  %52 = icmp eq ptr %38, @slot0, !dbg !3626
  br i1 %52, label %54, label %53, !dbg !3628

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3629
  br label %54, !dbg !3629

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !3630
  call void @llvm.dbg.value(metadata ptr %55, metadata !3569, metadata !DIExpression()), !dbg !3611
  store ptr %55, ptr %37, align 8, !dbg !3631, !tbaa !3518
  %56 = load i32, ptr %3, align 8, !dbg !3632, !tbaa !2762
  %57 = load ptr, ptr %44, align 8, !dbg !3633, !tbaa !2833
  %58 = load ptr, ptr %46, align 8, !dbg !3634, !tbaa !2836
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3635
  br label %60, !dbg !3636

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3611
  call void @llvm.dbg.value(metadata ptr %61, metadata !3569, metadata !DIExpression()), !dbg !3611
  store i32 %7, ptr %6, align 4, !dbg !3637, !tbaa !1052
  ret ptr %61, !dbg !3638
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #27

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3639 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3643, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata ptr %1, metadata !3644, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %2, metadata !3645, metadata !DIExpression()), !dbg !3646
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3647
  ret ptr %4, !dbg !3648
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3649 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3651, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i32 0, metadata !3547, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata ptr %0, metadata !3548, metadata !DIExpression()), !dbg !3653
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3655
  ret ptr %2, !dbg !3656
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3657 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3661, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 %1, metadata !3662, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32 0, metadata !3643, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata ptr %0, metadata !3644, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i64 %1, metadata !3645, metadata !DIExpression()), !dbg !3664
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3666
  ret ptr %3, !dbg !3667
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3668 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3672, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i32 %1, metadata !3673, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata ptr %2, metadata !3674, metadata !DIExpression()), !dbg !3676
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3677
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3675, metadata !DIExpression()), !dbg !3678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3679), !dbg !3682
  call void @llvm.dbg.value(metadata i32 %1, metadata !3683, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3688, metadata !DIExpression()), !dbg !3691
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3691, !alias.scope !3679
  %5 = icmp eq i32 %1, 10, !dbg !3692
  br i1 %5, label %6, label %7, !dbg !3694

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3695, !noalias !3679
  unreachable, !dbg !3695

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3696, !tbaa !2762, !alias.scope !3679
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3697
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3698
  ret ptr %8, !dbg !3699
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3700 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3704, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i32 %1, metadata !3705, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata ptr %2, metadata !3706, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i64 %3, metadata !3707, metadata !DIExpression()), !dbg !3709
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3710
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3708, metadata !DIExpression()), !dbg !3711
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3712), !dbg !3715
  call void @llvm.dbg.value(metadata i32 %1, metadata !3683, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3688, metadata !DIExpression()), !dbg !3718
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3718, !alias.scope !3712
  %6 = icmp eq i32 %1, 10, !dbg !3719
  br i1 %6, label %7, label %8, !dbg !3720

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3721, !noalias !3712
  unreachable, !dbg !3721

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3722, !tbaa !2762, !alias.scope !3712
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3723
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3724
  ret ptr %9, !dbg !3725
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3726 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3730, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata ptr %1, metadata !3731, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i32 0, metadata !3672, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i32 %0, metadata !3673, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata ptr %1, metadata !3674, metadata !DIExpression()), !dbg !3733
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3735
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3675, metadata !DIExpression()), !dbg !3736
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3737), !dbg !3740
  call void @llvm.dbg.value(metadata i32 %0, metadata !3683, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3688, metadata !DIExpression()), !dbg !3743
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3743, !alias.scope !3737
  %4 = icmp eq i32 %0, 10, !dbg !3744
  br i1 %4, label %5, label %6, !dbg !3745

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3746, !noalias !3737
  unreachable, !dbg !3746

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3747, !tbaa !2762, !alias.scope !3737
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3748
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3749
  ret ptr %7, !dbg !3750
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3751 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3755, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata ptr %1, metadata !3756, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i64 %2, metadata !3757, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i32 0, metadata !3704, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i32 %0, metadata !3705, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata ptr %1, metadata !3706, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i64 %2, metadata !3707, metadata !DIExpression()), !dbg !3759
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3761
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3708, metadata !DIExpression()), !dbg !3762
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3763), !dbg !3766
  call void @llvm.dbg.value(metadata i32 %0, metadata !3683, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3688, metadata !DIExpression()), !dbg !3769
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3769, !alias.scope !3763
  %5 = icmp eq i32 %0, 10, !dbg !3770
  br i1 %5, label %6, label %7, !dbg !3771

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3772, !noalias !3763
  unreachable, !dbg !3772

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3773, !tbaa !2762, !alias.scope !3763
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3774
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3775
  ret ptr %8, !dbg !3776
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3777 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3781, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i64 %1, metadata !3782, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i8 %2, metadata !3783, metadata !DIExpression()), !dbg !3785
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3786
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3784, metadata !DIExpression()), !dbg !3787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3788, !tbaa.struct !3789
  call void @llvm.dbg.value(metadata ptr %4, metadata !2779, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i8 %2, metadata !2780, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i32 1, metadata !2781, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i8 %2, metadata !2782, metadata !DIExpression()), !dbg !3790
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3792
  %6 = lshr i8 %2, 5, !dbg !3793
  %7 = zext i8 %6 to i64, !dbg !3793
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3794
  call void @llvm.dbg.value(metadata ptr %8, metadata !2783, metadata !DIExpression()), !dbg !3790
  %9 = and i8 %2, 31, !dbg !3795
  %10 = zext i8 %9 to i32, !dbg !3795
  call void @llvm.dbg.value(metadata i32 %10, metadata !2785, metadata !DIExpression()), !dbg !3790
  %11 = load i32, ptr %8, align 4, !dbg !3796, !tbaa !1052
  %12 = lshr i32 %11, %10, !dbg !3797
  call void @llvm.dbg.value(metadata i32 %12, metadata !2786, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3790
  %13 = and i32 %12, 1, !dbg !3798
  %14 = xor i32 %13, 1, !dbg !3798
  %15 = shl nuw i32 %14, %10, !dbg !3799
  %16 = xor i32 %15, %11, !dbg !3800
  store i32 %16, ptr %8, align 4, !dbg !3800, !tbaa !1052
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3801
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3802
  ret ptr %17, !dbg !3803
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3804 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3808, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8 %1, metadata !3809, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata ptr %0, metadata !3781, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i64 -1, metadata !3782, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i8 %1, metadata !3783, metadata !DIExpression()), !dbg !3811
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3813
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3784, metadata !DIExpression()), !dbg !3814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3815, !tbaa.struct !3789
  call void @llvm.dbg.value(metadata ptr %3, metadata !2779, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i8 %1, metadata !2780, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 1, metadata !2781, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i8 %1, metadata !2782, metadata !DIExpression()), !dbg !3816
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3818
  %5 = lshr i8 %1, 5, !dbg !3819
  %6 = zext i8 %5 to i64, !dbg !3819
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3820
  call void @llvm.dbg.value(metadata ptr %7, metadata !2783, metadata !DIExpression()), !dbg !3816
  %8 = and i8 %1, 31, !dbg !3821
  %9 = zext i8 %8 to i32, !dbg !3821
  call void @llvm.dbg.value(metadata i32 %9, metadata !2785, metadata !DIExpression()), !dbg !3816
  %10 = load i32, ptr %7, align 4, !dbg !3822, !tbaa !1052
  %11 = lshr i32 %10, %9, !dbg !3823
  call void @llvm.dbg.value(metadata i32 %11, metadata !2786, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3816
  %12 = and i32 %11, 1, !dbg !3824
  %13 = xor i32 %12, 1, !dbg !3824
  %14 = shl nuw i32 %13, %9, !dbg !3825
  %15 = xor i32 %14, %10, !dbg !3826
  store i32 %15, ptr %7, align 4, !dbg !3826, !tbaa !1052
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3827
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3828
  ret ptr %16, !dbg !3829
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3830 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3832, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata ptr %0, metadata !3808, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i8 58, metadata !3809, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata ptr %0, metadata !3781, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i64 -1, metadata !3782, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i8 58, metadata !3783, metadata !DIExpression()), !dbg !3836
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3838
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3784, metadata !DIExpression()), !dbg !3839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3840, !tbaa.struct !3789
  call void @llvm.dbg.value(metadata ptr %2, metadata !2779, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i8 58, metadata !2780, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i32 1, metadata !2781, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i8 58, metadata !2782, metadata !DIExpression()), !dbg !3841
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3843
  call void @llvm.dbg.value(metadata ptr %3, metadata !2783, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i32 26, metadata !2785, metadata !DIExpression()), !dbg !3841
  %4 = load i32, ptr %3, align 4, !dbg !3844, !tbaa !1052
  call void @llvm.dbg.value(metadata i32 %4, metadata !2786, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3841
  %5 = or i32 %4, 67108864, !dbg !3845
  store i32 %5, ptr %3, align 4, !dbg !3845, !tbaa !1052
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3846
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3847
  ret ptr %6, !dbg !3848
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3849 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3851, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i64 %1, metadata !3852, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata ptr %0, metadata !3781, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i64 %1, metadata !3782, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i8 58, metadata !3783, metadata !DIExpression()), !dbg !3854
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3856
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3784, metadata !DIExpression()), !dbg !3857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3858, !tbaa.struct !3789
  call void @llvm.dbg.value(metadata ptr %3, metadata !2779, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i8 58, metadata !2780, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 1, metadata !2781, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i8 58, metadata !2782, metadata !DIExpression()), !dbg !3859
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3861
  call void @llvm.dbg.value(metadata ptr %4, metadata !2783, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 26, metadata !2785, metadata !DIExpression()), !dbg !3859
  %5 = load i32, ptr %4, align 4, !dbg !3862, !tbaa !1052
  call void @llvm.dbg.value(metadata i32 %5, metadata !2786, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3859
  %6 = or i32 %5, 67108864, !dbg !3863
  store i32 %6, ptr %4, align 4, !dbg !3863, !tbaa !1052
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3864
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3865
  ret ptr %7, !dbg !3866
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3867 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3688, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3873
  call void @llvm.dbg.value(metadata i32 %0, metadata !3869, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata i32 %1, metadata !3870, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata ptr %2, metadata !3871, metadata !DIExpression()), !dbg !3875
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3876
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3872, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i32 %1, metadata !3683, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i32 0, metadata !3688, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3878
  %5 = icmp eq i32 %1, 10, !dbg !3879
  br i1 %5, label %6, label %7, !dbg !3880

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3881, !noalias !3882
  unreachable, !dbg !3881

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3688, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3878
  store i32 %1, ptr %4, align 8, !dbg !3885, !tbaa.struct !3789
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3885
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3885
  call void @llvm.dbg.value(metadata ptr %4, metadata !2779, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i8 58, metadata !2780, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i32 1, metadata !2781, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i8 58, metadata !2782, metadata !DIExpression()), !dbg !3886
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3888
  call void @llvm.dbg.value(metadata ptr %9, metadata !2783, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i32 26, metadata !2785, metadata !DIExpression()), !dbg !3886
  %10 = load i32, ptr %9, align 4, !dbg !3889, !tbaa !1052
  call void @llvm.dbg.value(metadata i32 %10, metadata !2786, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3886
  %11 = or i32 %10, 67108864, !dbg !3890
  store i32 %11, ptr %9, align 4, !dbg !3890, !tbaa !1052
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3891
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3892
  ret ptr %12, !dbg !3893
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3894 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3898, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata ptr %1, metadata !3899, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata ptr %2, metadata !3900, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata ptr %3, metadata !3901, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i32 %0, metadata !3903, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata ptr %1, metadata !3908, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata ptr %2, metadata !3909, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata ptr %3, metadata !3910, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i64 -1, metadata !3911, metadata !DIExpression()), !dbg !3913
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3915
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3912, metadata !DIExpression()), !dbg !3916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3917, !tbaa.struct !3789
  call void @llvm.dbg.value(metadata ptr %5, metadata !2819, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata ptr %1, metadata !2820, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata ptr %2, metadata !2821, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata ptr %5, metadata !2819, metadata !DIExpression()), !dbg !3918
  store i32 10, ptr %5, align 8, !dbg !3920, !tbaa !2762
  %6 = icmp ne ptr %1, null, !dbg !3921
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3922
  br i1 %8, label %10, label %9, !dbg !3922

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3923
  unreachable, !dbg !3923

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3924
  store ptr %1, ptr %11, align 8, !dbg !3925, !tbaa !2833
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3926
  store ptr %2, ptr %12, align 8, !dbg !3927, !tbaa !2836
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3928
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3929
  ret ptr %13, !dbg !3930
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3904 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3903, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata ptr %1, metadata !3908, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata ptr %2, metadata !3909, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata ptr %3, metadata !3910, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i64 %4, metadata !3911, metadata !DIExpression()), !dbg !3931
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3932
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3912, metadata !DIExpression()), !dbg !3933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3934, !tbaa.struct !3789
  call void @llvm.dbg.value(metadata ptr %6, metadata !2819, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata ptr %1, metadata !2820, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata ptr %2, metadata !2821, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata ptr %6, metadata !2819, metadata !DIExpression()), !dbg !3935
  store i32 10, ptr %6, align 8, !dbg !3937, !tbaa !2762
  %7 = icmp ne ptr %1, null, !dbg !3938
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3939
  br i1 %9, label %11, label %10, !dbg !3939

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3940
  unreachable, !dbg !3940

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3941
  store ptr %1, ptr %12, align 8, !dbg !3942, !tbaa !2833
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3943
  store ptr %2, ptr %13, align 8, !dbg !3944, !tbaa !2836
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3945
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3946
  ret ptr %14, !dbg !3947
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3948 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3952, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata ptr %1, metadata !3953, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata ptr %2, metadata !3954, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 0, metadata !3898, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata ptr %0, metadata !3899, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata ptr %1, metadata !3900, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata ptr %2, metadata !3901, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata ptr %0, metadata !3908, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata ptr %1, metadata !3909, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata ptr %2, metadata !3910, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i64 -1, metadata !3911, metadata !DIExpression()), !dbg !3958
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3960
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3912, metadata !DIExpression()), !dbg !3961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3962, !tbaa.struct !3789
  call void @llvm.dbg.value(metadata ptr %4, metadata !2819, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr %0, metadata !2820, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr %1, metadata !2821, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr %4, metadata !2819, metadata !DIExpression()), !dbg !3963
  store i32 10, ptr %4, align 8, !dbg !3965, !tbaa !2762
  %5 = icmp ne ptr %0, null, !dbg !3966
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3967
  br i1 %7, label %9, label %8, !dbg !3967

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3968
  unreachable, !dbg !3968

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3969
  store ptr %0, ptr %10, align 8, !dbg !3970, !tbaa !2833
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3971
  store ptr %1, ptr %11, align 8, !dbg !3972, !tbaa !2836
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3973
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3974
  ret ptr %12, !dbg !3975
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3976 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3980, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata ptr %1, metadata !3981, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata ptr %2, metadata !3982, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i64 %3, metadata !3983, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i32 0, metadata !3903, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata ptr %0, metadata !3908, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata ptr %1, metadata !3909, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata ptr %2, metadata !3910, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i64 %3, metadata !3911, metadata !DIExpression()), !dbg !3985
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3987
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3912, metadata !DIExpression()), !dbg !3988
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3989, !tbaa.struct !3789
  call void @llvm.dbg.value(metadata ptr %5, metadata !2819, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata ptr %0, metadata !2820, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata ptr %1, metadata !2821, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata ptr %5, metadata !2819, metadata !DIExpression()), !dbg !3990
  store i32 10, ptr %5, align 8, !dbg !3992, !tbaa !2762
  %6 = icmp ne ptr %0, null, !dbg !3993
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3994
  br i1 %8, label %10, label %9, !dbg !3994

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3995
  unreachable, !dbg !3995

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3996
  store ptr %0, ptr %11, align 8, !dbg !3997, !tbaa !2833
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3998
  store ptr %1, ptr %12, align 8, !dbg !3999, !tbaa !2836
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4000
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !4001
  ret ptr %13, !dbg !4002
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4003 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4007, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata ptr %1, metadata !4008, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64 %2, metadata !4009, metadata !DIExpression()), !dbg !4010
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4011
  ret ptr %4, !dbg !4012
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4013 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4017, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i64 %1, metadata !4018, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i32 0, metadata !4007, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata ptr %0, metadata !4008, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i64 %1, metadata !4009, metadata !DIExpression()), !dbg !4020
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4022
  ret ptr %3, !dbg !4023
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4024 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4028, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata ptr %1, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i32 %0, metadata !4007, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata ptr %1, metadata !4008, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i64 -1, metadata !4009, metadata !DIExpression()), !dbg !4031
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4033
  ret ptr %3, !dbg !4034
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4035 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4037, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i32 0, metadata !4028, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata ptr %0, metadata !4029, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i32 0, metadata !4007, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata ptr %0, metadata !4008, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i64 -1, metadata !4009, metadata !DIExpression()), !dbg !4041
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4043
  ret ptr %2, !dbg !4044
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @strintcmp(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #23 !dbg !4045 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4047, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %1, metadata !4048, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %0, metadata !4050, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %1, metadata !4056, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 128, metadata !4057, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 128, metadata !4058, metadata !DIExpression()), !dbg !4064
  %3 = load i8, ptr %0, align 1, !dbg !4066, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %3, metadata !4059, metadata !DIExpression()), !dbg !4064
  %4 = load i8, ptr %1, align 1, !dbg !4067, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %4, metadata !4060, metadata !DIExpression()), !dbg !4064
  %5 = icmp eq i8 %3, 45, !dbg !4068
  br i1 %5, label %6, label %95, !dbg !4070

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata ptr %7, metadata !4050, metadata !DIExpression()), !dbg !4064
  %8 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !4071
  call void @llvm.dbg.value(metadata ptr %8, metadata !4050, metadata !DIExpression()), !dbg !4064
  %9 = load i8, ptr %8, align 1, !dbg !4073, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %9, metadata !4059, metadata !DIExpression()), !dbg !4064
  %10 = icmp eq i8 %9, 48, !dbg !4074
  br i1 %10, label %6, label %11, !dbg !4075, !llvm.loop !4076

11:                                               ; preds = %6
  %12 = icmp eq i8 %4, 45, !dbg !4079
  br i1 %12, label %30, label %13, !dbg !4081

13:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 %9, metadata !4059, metadata !DIExpression()), !dbg !4064
  %14 = sext i8 %9 to i32, !dbg !4082
  call void @llvm.dbg.value(metadata i32 %14, metadata !4085, metadata !DIExpression()), !dbg !4088
  %15 = add nsw i32 %14, -48, !dbg !4090
  %16 = icmp ult i32 %15, 10, !dbg !4090
  br i1 %16, label %197, label %17, !dbg !4091

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 %4, metadata !4060, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %1, metadata !4056, metadata !DIExpression()), !dbg !4064
  %18 = icmp eq i8 %4, 48, !dbg !4092
  br i1 %18, label %19, label %24, !dbg !4093

19:                                               ; preds = %17, %19
  %20 = phi ptr [ %21, %19 ], [ %1, %17 ]
  call void @llvm.dbg.value(metadata ptr %20, metadata !4056, metadata !DIExpression()), !dbg !4064
  %21 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !4094
  call void @llvm.dbg.value(metadata ptr %21, metadata !4056, metadata !DIExpression()), !dbg !4064
  %22 = load i8, ptr %21, align 1, !dbg !4095, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %22, metadata !4060, metadata !DIExpression()), !dbg !4064
  %23 = icmp eq i8 %22, 48, !dbg !4092
  br i1 %23, label %19, label %24, !dbg !4093, !llvm.loop !4096

24:                                               ; preds = %19, %17
  %25 = phi i8 [ %4, %17 ], [ %22, %19 ], !dbg !4064
  call void @llvm.dbg.value(metadata i8 %25, metadata !4060, metadata !DIExpression()), !dbg !4064
  %26 = sext i8 %25 to i32, !dbg !4098
  call void @llvm.dbg.value(metadata i32 %26, metadata !4085, metadata !DIExpression()), !dbg !4099
  %27 = add nsw i32 %26, -48, !dbg !4101
  %28 = icmp ult i32 %27, 10, !dbg !4101
  %29 = sext i1 %28 to i32, !dbg !4102
  br label %197, !dbg !4103

30:                                               ; preds = %11, %30
  %31 = phi ptr [ %32, %30 ], [ %1, %11 ]
  call void @llvm.dbg.value(metadata ptr %31, metadata !4056, metadata !DIExpression()), !dbg !4064
  %32 = getelementptr inbounds i8, ptr %31, i64 1, !dbg !4104
  call void @llvm.dbg.value(metadata ptr %32, metadata !4056, metadata !DIExpression()), !dbg !4064
  %33 = load i8, ptr %32, align 1, !dbg !4105, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %33, metadata !4060, metadata !DIExpression()), !dbg !4064
  %34 = icmp eq i8 %33, 48, !dbg !4106
  br i1 %34, label %30, label %35, !dbg !4107, !llvm.loop !4108

35:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8 %33, metadata !4060, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 %9, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %8, metadata !4050, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %32, metadata !4056, metadata !DIExpression()), !dbg !4064
  %36 = sext i8 %9 to i32, !dbg !4111
  %37 = icmp eq i8 %33, %9, !dbg !4112
  %38 = add nsw i32 %36, -48
  %39 = icmp ult i32 %38, 10
  %40 = select i1 %37, i1 %39, i1 false, !dbg !4113
  call void @llvm.dbg.value(metadata i32 %36, metadata !4085, metadata !DIExpression()), !dbg !4114
  br i1 %40, label %41, label %55, !dbg !4113

41:                                               ; preds = %35, %41
  %42 = phi ptr [ %44, %41 ], [ %8, %35 ]
  %43 = phi ptr [ %46, %41 ], [ %32, %35 ]
  call void @llvm.dbg.value(metadata ptr %43, metadata !4056, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %42, metadata !4050, metadata !DIExpression()), !dbg !4064
  %44 = getelementptr inbounds i8, ptr %42, i64 1, !dbg !4116
  call void @llvm.dbg.value(metadata ptr %44, metadata !4050, metadata !DIExpression()), !dbg !4064
  %45 = load i8, ptr %44, align 1, !dbg !4118, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %45, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %43, metadata !4056, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i8 poison, metadata !4060, metadata !DIExpression()), !dbg !4064
  %46 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !4119
  call void @llvm.dbg.value(metadata ptr %46, metadata !4056, metadata !DIExpression()), !dbg !4064
  %47 = load i8, ptr %46, align 1, !dbg !4120, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %47, metadata !4060, metadata !DIExpression()), !dbg !4064
  %48 = sext i8 %45 to i32, !dbg !4111
  %49 = icmp eq i8 %47, %45, !dbg !4112
  %50 = add nsw i32 %48, -48
  %51 = icmp ult i32 %50, 10
  %52 = select i1 %49, i1 %51, i1 false, !dbg !4113
  call void @llvm.dbg.value(metadata i32 %48, metadata !4085, metadata !DIExpression()), !dbg !4114
  br i1 %52, label %41, label %53, !dbg !4113, !llvm.loop !4121

53:                                               ; preds = %41
  %54 = sext i8 %45 to i32, !dbg !4111
  br label %55, !dbg !4124

55:                                               ; preds = %53, %35
  %56 = phi i32 [ %38, %35 ], [ %50, %53 ], !dbg !4125
  %57 = phi ptr [ %32, %35 ], [ %46, %53 ], !dbg !4129
  %58 = phi ptr [ %8, %35 ], [ %44, %53 ], !dbg !4129
  %59 = phi i8 [ %33, %35 ], [ %47, %53 ], !dbg !4129
  %60 = phi i32 [ %36, %35 ], [ %54, %53 ], !dbg !4111
  %61 = sext i8 %59 to i32, !dbg !4124
  %62 = sub nsw i32 %61, %60, !dbg !4130
  call void @llvm.dbg.value(metadata i32 %62, metadata !4061, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i64 0, metadata !4062, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 poison, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %58, metadata !4050, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 poison, metadata !4085, metadata !DIExpression()), !dbg !4131
  %63 = icmp ult i32 %56, 10, !dbg !4125
  br i1 %63, label %68, label %64, !dbg !4132

64:                                               ; preds = %68, %55
  %65 = phi i64 [ 0, %55 ], [ %73, %68 ], !dbg !4133
  call void @llvm.dbg.value(metadata i64 0, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 %59, metadata !4060, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %57, metadata !4056, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 %61, metadata !4085, metadata !DIExpression()), !dbg !4134
  %66 = add nsw i32 %61, -48, !dbg !4138
  %67 = icmp ult i32 %66, 10, !dbg !4138
  br i1 %67, label %77, label %86, !dbg !4139

68:                                               ; preds = %55, %68
  %69 = phi i64 [ %73, %68 ], [ 0, %55 ]
  %70 = phi ptr [ %71, %68 ], [ %58, %55 ]
  call void @llvm.dbg.value(metadata i64 %69, metadata !4062, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %70, metadata !4050, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i8 poison, metadata !4059, metadata !DIExpression()), !dbg !4064
  %71 = getelementptr inbounds i8, ptr %70, i64 1, !dbg !4140
  call void @llvm.dbg.value(metadata ptr %71, metadata !4050, metadata !DIExpression()), !dbg !4064
  %72 = load i8, ptr %71, align 1, !dbg !4141, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %72, metadata !4059, metadata !DIExpression()), !dbg !4064
  %73 = add i64 %69, 1, !dbg !4142
  call void @llvm.dbg.value(metadata i64 %73, metadata !4062, metadata !DIExpression()), !dbg !4064
  %74 = sext i8 %72 to i32, !dbg !4143
  call void @llvm.dbg.value(metadata i32 %74, metadata !4085, metadata !DIExpression()), !dbg !4131
  %75 = add nsw i32 %74, -48, !dbg !4125
  %76 = icmp ult i32 %75, 10, !dbg !4125
  br i1 %76, label %68, label %64, !dbg !4132, !llvm.loop !4144

77:                                               ; preds = %64, %77
  %78 = phi i64 [ %82, %77 ], [ 0, %64 ]
  %79 = phi ptr [ %80, %77 ], [ %57, %64 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %79, metadata !4056, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i8 poison, metadata !4060, metadata !DIExpression()), !dbg !4064
  %80 = getelementptr inbounds i8, ptr %79, i64 1, !dbg !4146
  call void @llvm.dbg.value(metadata ptr %80, metadata !4056, metadata !DIExpression()), !dbg !4064
  %81 = load i8, ptr %80, align 1, !dbg !4147, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %81, metadata !4060, metadata !DIExpression()), !dbg !4064
  %82 = add i64 %78, 1, !dbg !4148
  call void @llvm.dbg.value(metadata i64 %82, metadata !4063, metadata !DIExpression()), !dbg !4064
  %83 = sext i8 %81 to i32, !dbg !4149
  call void @llvm.dbg.value(metadata i32 %83, metadata !4085, metadata !DIExpression()), !dbg !4134
  %84 = add nsw i32 %83, -48, !dbg !4138
  %85 = icmp ult i32 %84, 10, !dbg !4138
  br i1 %85, label %77, label %86, !dbg !4139, !llvm.loop !4150

86:                                               ; preds = %77, %64
  %87 = phi i64 [ 0, %64 ], [ %82, %77 ], !dbg !4152
  %88 = icmp eq i64 %65, %87, !dbg !4153
  br i1 %88, label %92, label %89, !dbg !4155

89:                                               ; preds = %86
  %90 = icmp ult i64 %65, %87, !dbg !4156
  %91 = select i1 %90, i32 1, i32 -1, !dbg !4157
  br label %197, !dbg !4158

92:                                               ; preds = %86
  %93 = icmp eq i64 %65, 0, !dbg !4159
  %94 = select i1 %93, i32 0, i32 %62, !dbg !4129
  br label %197, !dbg !4129

95:                                               ; preds = %2
  %96 = icmp eq i8 %4, 45, !dbg !4161
  br i1 %96, label %99, label %97, !dbg !4163

97:                                               ; preds = %95
  call void @llvm.dbg.value(metadata i8 %3, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %0, metadata !4050, metadata !DIExpression()), !dbg !4064
  %98 = icmp eq i8 %3, 48, !dbg !4164
  br i1 %98, label %125, label %121, !dbg !4166

99:                                               ; preds = %95, %99
  %100 = phi ptr [ %101, %99 ], [ %1, %95 ]
  call void @llvm.dbg.value(metadata ptr %100, metadata !4056, metadata !DIExpression()), !dbg !4064
  %101 = getelementptr inbounds i8, ptr %100, i64 1, !dbg !4167
  call void @llvm.dbg.value(metadata ptr %101, metadata !4056, metadata !DIExpression()), !dbg !4064
  %102 = load i8, ptr %101, align 1, !dbg !4169, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %102, metadata !4060, metadata !DIExpression()), !dbg !4064
  %103 = icmp eq i8 %102, 48, !dbg !4170
  br i1 %103, label %99, label %104, !dbg !4171, !llvm.loop !4172

104:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i8 %102, metadata !4060, metadata !DIExpression()), !dbg !4064
  %105 = sext i8 %102 to i32, !dbg !4175
  call void @llvm.dbg.value(metadata i32 %105, metadata !4085, metadata !DIExpression()), !dbg !4177
  %106 = add nsw i32 %105, -48, !dbg !4179
  %107 = icmp ult i32 %106, 10, !dbg !4179
  br i1 %107, label %197, label %108, !dbg !4180

108:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i8 %3, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %0, metadata !4050, metadata !DIExpression()), !dbg !4064
  %109 = icmp eq i8 %3, 48, !dbg !4181
  br i1 %109, label %110, label %115, !dbg !4182

110:                                              ; preds = %108, %110
  %111 = phi ptr [ %112, %110 ], [ %0, %108 ]
  call void @llvm.dbg.value(metadata ptr %111, metadata !4050, metadata !DIExpression()), !dbg !4064
  %112 = getelementptr inbounds i8, ptr %111, i64 1, !dbg !4183
  call void @llvm.dbg.value(metadata ptr %112, metadata !4050, metadata !DIExpression()), !dbg !4064
  %113 = load i8, ptr %112, align 1, !dbg !4184, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %113, metadata !4059, metadata !DIExpression()), !dbg !4064
  %114 = icmp eq i8 %113, 48, !dbg !4181
  br i1 %114, label %110, label %115, !dbg !4182, !llvm.loop !4185

115:                                              ; preds = %110, %108
  %116 = phi i8 [ %3, %108 ], [ %113, %110 ], !dbg !4064
  call void @llvm.dbg.value(metadata i8 %116, metadata !4059, metadata !DIExpression()), !dbg !4064
  %117 = sext i8 %116 to i32, !dbg !4187
  call void @llvm.dbg.value(metadata i32 %117, metadata !4085, metadata !DIExpression()), !dbg !4188
  %118 = add nsw i32 %117, -48, !dbg !4190
  %119 = icmp ult i32 %118, 10, !dbg !4190
  %120 = zext i1 %119 to i32, !dbg !4191
  br label %197, !dbg !4192

121:                                              ; preds = %125, %97
  %122 = phi ptr [ %0, %97 ], [ %127, %125 ]
  %123 = phi i8 [ %3, %97 ], [ %128, %125 ], !dbg !4064
  call void @llvm.dbg.value(metadata i8 %4, metadata !4060, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %1, metadata !4056, metadata !DIExpression()), !dbg !4064
  %124 = icmp eq i8 %4, 48, !dbg !4193
  br i1 %124, label %138, label %130, !dbg !4194

125:                                              ; preds = %97, %125
  %126 = phi ptr [ %127, %125 ], [ %0, %97 ]
  call void @llvm.dbg.value(metadata ptr %126, metadata !4050, metadata !DIExpression()), !dbg !4064
  %127 = getelementptr inbounds i8, ptr %126, i64 1, !dbg !4195
  call void @llvm.dbg.value(metadata ptr %127, metadata !4050, metadata !DIExpression()), !dbg !4064
  %128 = load i8, ptr %127, align 1, !dbg !4196, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %128, metadata !4059, metadata !DIExpression()), !dbg !4064
  %129 = icmp eq i8 %128, 48, !dbg !4164
  br i1 %129, label %125, label %121, !dbg !4166, !llvm.loop !4197

130:                                              ; preds = %138, %121
  %131 = phi ptr [ %1, %121 ], [ %140, %138 ]
  %132 = phi i8 [ %4, %121 ], [ %141, %138 ], !dbg !4064
  call void @llvm.dbg.value(metadata i8 %132, metadata !4060, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 %123, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %122, metadata !4050, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %131, metadata !4056, metadata !DIExpression()), !dbg !4064
  %133 = sext i8 %123 to i32, !dbg !4199
  %134 = icmp eq i8 %123, %132, !dbg !4200
  %135 = add nsw i32 %133, -48
  %136 = icmp ult i32 %135, 10
  %137 = select i1 %134, i1 %136, i1 false, !dbg !4201
  call void @llvm.dbg.value(metadata i32 %133, metadata !4085, metadata !DIExpression()), !dbg !4202
  br i1 %137, label %143, label %157, !dbg !4201

138:                                              ; preds = %121, %138
  %139 = phi ptr [ %140, %138 ], [ %1, %121 ]
  call void @llvm.dbg.value(metadata ptr %139, metadata !4056, metadata !DIExpression()), !dbg !4064
  %140 = getelementptr inbounds i8, ptr %139, i64 1, !dbg !4204
  call void @llvm.dbg.value(metadata ptr %140, metadata !4056, metadata !DIExpression()), !dbg !4064
  %141 = load i8, ptr %140, align 1, !dbg !4205, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %141, metadata !4060, metadata !DIExpression()), !dbg !4064
  %142 = icmp eq i8 %141, 48, !dbg !4193
  br i1 %142, label %138, label %130, !dbg !4194, !llvm.loop !4206

143:                                              ; preds = %130, %143
  %144 = phi ptr [ %146, %143 ], [ %122, %130 ]
  %145 = phi ptr [ %148, %143 ], [ %131, %130 ]
  call void @llvm.dbg.value(metadata ptr %145, metadata !4056, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %144, metadata !4050, metadata !DIExpression()), !dbg !4064
  %146 = getelementptr inbounds i8, ptr %144, i64 1, !dbg !4208
  call void @llvm.dbg.value(metadata ptr %146, metadata !4050, metadata !DIExpression()), !dbg !4064
  %147 = load i8, ptr %146, align 1, !dbg !4210, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %147, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %145, metadata !4056, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i8 poison, metadata !4060, metadata !DIExpression()), !dbg !4064
  %148 = getelementptr inbounds i8, ptr %145, i64 1, !dbg !4211
  call void @llvm.dbg.value(metadata ptr %148, metadata !4056, metadata !DIExpression()), !dbg !4064
  %149 = load i8, ptr %148, align 1, !dbg !4212, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %149, metadata !4060, metadata !DIExpression()), !dbg !4064
  %150 = sext i8 %147 to i32, !dbg !4199
  %151 = icmp eq i8 %147, %149, !dbg !4200
  %152 = add nsw i32 %150, -48
  %153 = icmp ult i32 %152, 10
  %154 = select i1 %151, i1 %153, i1 false, !dbg !4201
  call void @llvm.dbg.value(metadata i32 %150, metadata !4085, metadata !DIExpression()), !dbg !4202
  br i1 %154, label %143, label %155, !dbg !4201, !llvm.loop !4213

155:                                              ; preds = %143
  %156 = sext i8 %147 to i32, !dbg !4199
  br label %157, !dbg !4216

157:                                              ; preds = %155, %130
  %158 = phi i32 [ %135, %130 ], [ %152, %155 ], !dbg !4217
  %159 = phi ptr [ %131, %130 ], [ %148, %155 ]
  %160 = phi ptr [ %122, %130 ], [ %146, %155 ]
  %161 = phi i8 [ %132, %130 ], [ %149, %155 ], !dbg !4064
  %162 = phi i32 [ %133, %130 ], [ %156, %155 ], !dbg !4199
  %163 = sext i8 %161 to i32, !dbg !4216
  %164 = sub nsw i32 %162, %163, !dbg !4221
  call void @llvm.dbg.value(metadata i32 %164, metadata !4061, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i64 0, metadata !4062, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 poison, metadata !4059, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %160, metadata !4050, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 poison, metadata !4085, metadata !DIExpression()), !dbg !4222
  %165 = icmp ult i32 %158, 10, !dbg !4217
  br i1 %165, label %170, label %166, !dbg !4223

166:                                              ; preds = %170, %157
  %167 = phi i64 [ 0, %157 ], [ %175, %170 ], !dbg !4224
  call void @llvm.dbg.value(metadata i64 0, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i8 %161, metadata !4060, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %159, metadata !4056, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 %163, metadata !4085, metadata !DIExpression()), !dbg !4225
  %168 = add nsw i32 %163, -48, !dbg !4229
  %169 = icmp ult i32 %168, 10, !dbg !4229
  br i1 %169, label %179, label %188, !dbg !4230

170:                                              ; preds = %157, %170
  %171 = phi i64 [ %175, %170 ], [ 0, %157 ]
  %172 = phi ptr [ %173, %170 ], [ %160, %157 ]
  call void @llvm.dbg.value(metadata i64 %171, metadata !4062, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %172, metadata !4050, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i8 poison, metadata !4059, metadata !DIExpression()), !dbg !4064
  %173 = getelementptr inbounds i8, ptr %172, i64 1, !dbg !4231
  call void @llvm.dbg.value(metadata ptr %173, metadata !4050, metadata !DIExpression()), !dbg !4064
  %174 = load i8, ptr %173, align 1, !dbg !4232, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %174, metadata !4059, metadata !DIExpression()), !dbg !4064
  %175 = add i64 %171, 1, !dbg !4233
  call void @llvm.dbg.value(metadata i64 %175, metadata !4062, metadata !DIExpression()), !dbg !4064
  %176 = sext i8 %174 to i32, !dbg !4234
  call void @llvm.dbg.value(metadata i32 %176, metadata !4085, metadata !DIExpression()), !dbg !4222
  %177 = add nsw i32 %176, -48, !dbg !4217
  %178 = icmp ult i32 %177, 10, !dbg !4217
  br i1 %178, label %170, label %166, !dbg !4223, !llvm.loop !4235

179:                                              ; preds = %166, %179
  %180 = phi i64 [ %184, %179 ], [ 0, %166 ]
  %181 = phi ptr [ %182, %179 ], [ %159, %166 ]
  call void @llvm.dbg.value(metadata i64 %180, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %181, metadata !4056, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4064
  call void @llvm.dbg.value(metadata i8 poison, metadata !4060, metadata !DIExpression()), !dbg !4064
  %182 = getelementptr inbounds i8, ptr %181, i64 1, !dbg !4237
  call void @llvm.dbg.value(metadata ptr %182, metadata !4056, metadata !DIExpression()), !dbg !4064
  %183 = load i8, ptr %182, align 1, !dbg !4238, !tbaa !1061
  call void @llvm.dbg.value(metadata i8 %183, metadata !4060, metadata !DIExpression()), !dbg !4064
  %184 = add i64 %180, 1, !dbg !4239
  call void @llvm.dbg.value(metadata i64 %184, metadata !4063, metadata !DIExpression()), !dbg !4064
  %185 = sext i8 %183 to i32, !dbg !4240
  call void @llvm.dbg.value(metadata i32 %185, metadata !4085, metadata !DIExpression()), !dbg !4225
  %186 = add nsw i32 %185, -48, !dbg !4229
  %187 = icmp ult i32 %186, 10, !dbg !4229
  br i1 %187, label %179, label %188, !dbg !4230, !llvm.loop !4241

188:                                              ; preds = %179, %166
  %189 = phi i64 [ 0, %166 ], [ %184, %179 ], !dbg !4243
  %190 = icmp eq i64 %167, %189, !dbg !4244
  br i1 %190, label %194, label %191, !dbg !4246

191:                                              ; preds = %188
  %192 = icmp ult i64 %167, %189, !dbg !4247
  %193 = select i1 %192, i32 -1, i32 1, !dbg !4248
  br label %197, !dbg !4249

194:                                              ; preds = %188
  %195 = icmp eq i64 %167, 0, !dbg !4250
  %196 = select i1 %195, i32 0, i32 %164, !dbg !4252
  br label %197, !dbg !4252

197:                                              ; preds = %13, %24, %89, %92, %104, %115, %191, %194
  %198 = phi i32 [ %29, %24 ], [ %91, %89 ], [ %120, %115 ], [ %193, %191 ], [ -1, %13 ], [ %94, %92 ], [ 1, %104 ], [ %196, %194 ], !dbg !4253
  ret i32 %198, !dbg !4254
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4255 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4294, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata ptr %1, metadata !4295, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata ptr %2, metadata !4296, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata ptr %3, metadata !4297, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata ptr %4, metadata !4298, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %5, metadata !4299, metadata !DIExpression()), !dbg !4300
  %7 = icmp eq ptr %1, null, !dbg !4301
  br i1 %7, label %10, label %8, !dbg !4303

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.140, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !4304
  br label %12, !dbg !4304

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.141, ptr noundef %2, ptr noundef %3) #39, !dbg !4305
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.3.143, i32 noundef 5) #39, !dbg !4306
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !4306
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.144, ptr noundef %0), !dbg !4307
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.5.145, i32 noundef 5) #39, !dbg !4308
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.146) #39, !dbg !4308
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.144, ptr noundef %0), !dbg !4309
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
  ], !dbg !4310

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.7.147, i32 noundef 5) #39, !dbg !4311
  %21 = load ptr, ptr %4, align 8, !dbg !4311, !tbaa !951
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !4311
  br label %147, !dbg !4313

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.8.148, i32 noundef 5) #39, !dbg !4314
  %25 = load ptr, ptr %4, align 8, !dbg !4314, !tbaa !951
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4314
  %27 = load ptr, ptr %26, align 8, !dbg !4314, !tbaa !951
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !4314
  br label %147, !dbg !4315

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.9.149, i32 noundef 5) #39, !dbg !4316
  %31 = load ptr, ptr %4, align 8, !dbg !4316, !tbaa !951
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4316
  %33 = load ptr, ptr %32, align 8, !dbg !4316, !tbaa !951
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4316
  %35 = load ptr, ptr %34, align 8, !dbg !4316, !tbaa !951
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !4316
  br label %147, !dbg !4317

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.10.150, i32 noundef 5) #39, !dbg !4318
  %39 = load ptr, ptr %4, align 8, !dbg !4318, !tbaa !951
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4318
  %41 = load ptr, ptr %40, align 8, !dbg !4318, !tbaa !951
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4318
  %43 = load ptr, ptr %42, align 8, !dbg !4318, !tbaa !951
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4318
  %45 = load ptr, ptr %44, align 8, !dbg !4318, !tbaa !951
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !4318
  br label %147, !dbg !4319

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.11.151, i32 noundef 5) #39, !dbg !4320
  %49 = load ptr, ptr %4, align 8, !dbg !4320, !tbaa !951
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4320
  %51 = load ptr, ptr %50, align 8, !dbg !4320, !tbaa !951
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4320
  %53 = load ptr, ptr %52, align 8, !dbg !4320, !tbaa !951
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4320
  %55 = load ptr, ptr %54, align 8, !dbg !4320, !tbaa !951
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4320
  %57 = load ptr, ptr %56, align 8, !dbg !4320, !tbaa !951
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !4320
  br label %147, !dbg !4321

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.12.152, i32 noundef 5) #39, !dbg !4322
  %61 = load ptr, ptr %4, align 8, !dbg !4322, !tbaa !951
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4322
  %63 = load ptr, ptr %62, align 8, !dbg !4322, !tbaa !951
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4322
  %65 = load ptr, ptr %64, align 8, !dbg !4322, !tbaa !951
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4322
  %67 = load ptr, ptr %66, align 8, !dbg !4322, !tbaa !951
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4322
  %69 = load ptr, ptr %68, align 8, !dbg !4322, !tbaa !951
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4322
  %71 = load ptr, ptr %70, align 8, !dbg !4322, !tbaa !951
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !4322
  br label %147, !dbg !4323

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.13.153, i32 noundef 5) #39, !dbg !4324
  %75 = load ptr, ptr %4, align 8, !dbg !4324, !tbaa !951
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4324
  %77 = load ptr, ptr %76, align 8, !dbg !4324, !tbaa !951
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4324
  %79 = load ptr, ptr %78, align 8, !dbg !4324, !tbaa !951
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4324
  %81 = load ptr, ptr %80, align 8, !dbg !4324, !tbaa !951
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4324
  %83 = load ptr, ptr %82, align 8, !dbg !4324, !tbaa !951
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4324
  %85 = load ptr, ptr %84, align 8, !dbg !4324, !tbaa !951
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4324
  %87 = load ptr, ptr %86, align 8, !dbg !4324, !tbaa !951
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !4324
  br label %147, !dbg !4325

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.14.154, i32 noundef 5) #39, !dbg !4326
  %91 = load ptr, ptr %4, align 8, !dbg !4326, !tbaa !951
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4326
  %93 = load ptr, ptr %92, align 8, !dbg !4326, !tbaa !951
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4326
  %95 = load ptr, ptr %94, align 8, !dbg !4326, !tbaa !951
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4326
  %97 = load ptr, ptr %96, align 8, !dbg !4326, !tbaa !951
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4326
  %99 = load ptr, ptr %98, align 8, !dbg !4326, !tbaa !951
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4326
  %101 = load ptr, ptr %100, align 8, !dbg !4326, !tbaa !951
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4326
  %103 = load ptr, ptr %102, align 8, !dbg !4326, !tbaa !951
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4326
  %105 = load ptr, ptr %104, align 8, !dbg !4326, !tbaa !951
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !4326
  br label %147, !dbg !4327

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.15.155, i32 noundef 5) #39, !dbg !4328
  %109 = load ptr, ptr %4, align 8, !dbg !4328, !tbaa !951
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4328
  %111 = load ptr, ptr %110, align 8, !dbg !4328, !tbaa !951
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4328
  %113 = load ptr, ptr %112, align 8, !dbg !4328, !tbaa !951
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4328
  %115 = load ptr, ptr %114, align 8, !dbg !4328, !tbaa !951
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4328
  %117 = load ptr, ptr %116, align 8, !dbg !4328, !tbaa !951
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4328
  %119 = load ptr, ptr %118, align 8, !dbg !4328, !tbaa !951
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4328
  %121 = load ptr, ptr %120, align 8, !dbg !4328, !tbaa !951
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4328
  %123 = load ptr, ptr %122, align 8, !dbg !4328, !tbaa !951
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4328
  %125 = load ptr, ptr %124, align 8, !dbg !4328, !tbaa !951
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !4328
  br label %147, !dbg !4329

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.16.156, i32 noundef 5) #39, !dbg !4330
  %129 = load ptr, ptr %4, align 8, !dbg !4330, !tbaa !951
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4330
  %131 = load ptr, ptr %130, align 8, !dbg !4330, !tbaa !951
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4330
  %133 = load ptr, ptr %132, align 8, !dbg !4330, !tbaa !951
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4330
  %135 = load ptr, ptr %134, align 8, !dbg !4330, !tbaa !951
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4330
  %137 = load ptr, ptr %136, align 8, !dbg !4330, !tbaa !951
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4330
  %139 = load ptr, ptr %138, align 8, !dbg !4330, !tbaa !951
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4330
  %141 = load ptr, ptr %140, align 8, !dbg !4330, !tbaa !951
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4330
  %143 = load ptr, ptr %142, align 8, !dbg !4330, !tbaa !951
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4330
  %145 = load ptr, ptr %144, align 8, !dbg !4330, !tbaa !951
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !4330
  br label %147, !dbg !4331

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4332
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4333 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4337, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata ptr %1, metadata !4338, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata ptr %2, metadata !4339, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata ptr %3, metadata !4340, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata ptr %4, metadata !4341, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i64 0, metadata !4342, metadata !DIExpression()), !dbg !4343
  br label %6, !dbg !4344

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4346
  call void @llvm.dbg.value(metadata i64 %7, metadata !4342, metadata !DIExpression()), !dbg !4343
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4347
  %9 = load ptr, ptr %8, align 8, !dbg !4347, !tbaa !951
  %10 = icmp eq ptr %9, null, !dbg !4349
  %11 = add i64 %7, 1, !dbg !4350
  call void @llvm.dbg.value(metadata i64 %11, metadata !4342, metadata !DIExpression()), !dbg !4343
  br i1 %10, label %12, label %6, !dbg !4349, !llvm.loop !4351

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4353
  ret void, !dbg !4354
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4355 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4367, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata ptr %1, metadata !4368, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata ptr %2, metadata !4369, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata ptr %3, metadata !4370, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata ptr %4, metadata !4371, metadata !DIExpression()), !dbg !4375
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !4376
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4373, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i64 0, metadata !4372, metadata !DIExpression()), !dbg !4375
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4372, metadata !DIExpression()), !dbg !4375
  %10 = icmp ult i32 %9, 41, !dbg !4378
  br i1 %10, label %11, label %16, !dbg !4378

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4378
  %13 = zext i32 %9 to i64, !dbg !4378
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4378
  %15 = add nuw nsw i32 %9, 8, !dbg !4378
  store i32 %15, ptr %4, align 8, !dbg !4378
  br label %19, !dbg !4378

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4378
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4378
  store ptr %18, ptr %7, align 8, !dbg !4378
  br label %19, !dbg !4378

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4378
  %22 = load ptr, ptr %21, align 8, !dbg !4378
  store ptr %22, ptr %6, align 16, !dbg !4381, !tbaa !951
  %23 = icmp eq ptr %22, null, !dbg !4382
  br i1 %23, label %128, label %24, !dbg !4383

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !4372, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata i64 1, metadata !4372, metadata !DIExpression()), !dbg !4375
  %25 = icmp ult i32 %20, 41, !dbg !4378
  br i1 %25, label %29, label %26, !dbg !4378

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4378
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4378
  store ptr %28, ptr %7, align 8, !dbg !4378
  br label %34, !dbg !4378

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4378
  %31 = zext i32 %20 to i64, !dbg !4378
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4378
  %33 = add nuw nsw i32 %20, 8, !dbg !4378
  store i32 %33, ptr %4, align 8, !dbg !4378
  br label %34, !dbg !4378

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4378
  %37 = load ptr, ptr %36, align 8, !dbg !4378
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4384
  store ptr %37, ptr %38, align 8, !dbg !4381, !tbaa !951
  %39 = icmp eq ptr %37, null, !dbg !4382
  br i1 %39, label %128, label %40, !dbg !4383

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !4372, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata i64 2, metadata !4372, metadata !DIExpression()), !dbg !4375
  %41 = icmp ult i32 %35, 41, !dbg !4378
  br i1 %41, label %45, label %42, !dbg !4378

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4378
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4378
  store ptr %44, ptr %7, align 8, !dbg !4378
  br label %50, !dbg !4378

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4378
  %47 = zext i32 %35 to i64, !dbg !4378
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4378
  %49 = add nuw nsw i32 %35, 8, !dbg !4378
  store i32 %49, ptr %4, align 8, !dbg !4378
  br label %50, !dbg !4378

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4378
  %53 = load ptr, ptr %52, align 8, !dbg !4378
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4384
  store ptr %53, ptr %54, align 16, !dbg !4381, !tbaa !951
  %55 = icmp eq ptr %53, null, !dbg !4382
  br i1 %55, label %128, label %56, !dbg !4383

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !4372, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata i64 3, metadata !4372, metadata !DIExpression()), !dbg !4375
  %57 = icmp ult i32 %51, 41, !dbg !4378
  br i1 %57, label %61, label %58, !dbg !4378

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4378
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4378
  store ptr %60, ptr %7, align 8, !dbg !4378
  br label %66, !dbg !4378

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4378
  %63 = zext i32 %51 to i64, !dbg !4378
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4378
  %65 = add nuw nsw i32 %51, 8, !dbg !4378
  store i32 %65, ptr %4, align 8, !dbg !4378
  br label %66, !dbg !4378

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4378
  %69 = load ptr, ptr %68, align 8, !dbg !4378
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4384
  store ptr %69, ptr %70, align 8, !dbg !4381, !tbaa !951
  %71 = icmp eq ptr %69, null, !dbg !4382
  br i1 %71, label %128, label %72, !dbg !4383

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !4372, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata i64 4, metadata !4372, metadata !DIExpression()), !dbg !4375
  %73 = icmp ult i32 %67, 41, !dbg !4378
  br i1 %73, label %77, label %74, !dbg !4378

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4378
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4378
  store ptr %76, ptr %7, align 8, !dbg !4378
  br label %82, !dbg !4378

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4378
  %79 = zext i32 %67 to i64, !dbg !4378
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4378
  %81 = add nuw nsw i32 %67, 8, !dbg !4378
  store i32 %81, ptr %4, align 8, !dbg !4378
  br label %82, !dbg !4378

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4378
  %85 = load ptr, ptr %84, align 8, !dbg !4378
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4384
  store ptr %85, ptr %86, align 16, !dbg !4381, !tbaa !951
  %87 = icmp eq ptr %85, null, !dbg !4382
  br i1 %87, label %128, label %88, !dbg !4383

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !4372, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata i64 5, metadata !4372, metadata !DIExpression()), !dbg !4375
  %89 = icmp ult i32 %83, 41, !dbg !4378
  br i1 %89, label %93, label %90, !dbg !4378

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4378
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4378
  store ptr %92, ptr %7, align 8, !dbg !4378
  br label %98, !dbg !4378

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4378
  %95 = zext i32 %83 to i64, !dbg !4378
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4378
  %97 = add nuw nsw i32 %83, 8, !dbg !4378
  store i32 %97, ptr %4, align 8, !dbg !4378
  br label %98, !dbg !4378

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4378
  %100 = load ptr, ptr %99, align 8, !dbg !4378
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4384
  store ptr %100, ptr %101, align 8, !dbg !4381, !tbaa !951
  %102 = icmp eq ptr %100, null, !dbg !4382
  br i1 %102, label %128, label %103, !dbg !4383

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !4372, metadata !DIExpression()), !dbg !4375
  %104 = load ptr, ptr %7, align 8, !dbg !4378
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4378
  store ptr %105, ptr %7, align 8, !dbg !4378
  %106 = load ptr, ptr %104, align 8, !dbg !4378
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4384
  store ptr %106, ptr %107, align 16, !dbg !4381, !tbaa !951
  %108 = icmp eq ptr %106, null, !dbg !4382
  br i1 %108, label %128, label %109, !dbg !4383

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !4372, metadata !DIExpression()), !dbg !4375
  %110 = load ptr, ptr %7, align 8, !dbg !4378
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4378
  store ptr %111, ptr %7, align 8, !dbg !4378
  %112 = load ptr, ptr %110, align 8, !dbg !4378
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4384
  store ptr %112, ptr %113, align 8, !dbg !4381, !tbaa !951
  %114 = icmp eq ptr %112, null, !dbg !4382
  br i1 %114, label %128, label %115, !dbg !4383

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !4372, metadata !DIExpression()), !dbg !4375
  %116 = load ptr, ptr %7, align 8, !dbg !4378
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4378
  store ptr %117, ptr %7, align 8, !dbg !4378
  %118 = load ptr, ptr %116, align 8, !dbg !4378
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4384
  store ptr %118, ptr %119, align 16, !dbg !4381, !tbaa !951
  %120 = icmp eq ptr %118, null, !dbg !4382
  br i1 %120, label %128, label %121, !dbg !4383

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !4372, metadata !DIExpression()), !dbg !4375
  %122 = load ptr, ptr %7, align 8, !dbg !4378
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4378
  store ptr %123, ptr %7, align 8, !dbg !4378
  %124 = load ptr, ptr %122, align 8, !dbg !4378
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4384
  store ptr %124, ptr %125, align 8, !dbg !4381, !tbaa !951
  %126 = icmp eq ptr %124, null, !dbg !4382
  %127 = select i1 %126, i64 9, i64 10, !dbg !4383
  br label %128, !dbg !4383

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4385
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4386
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !4387
  ret void, !dbg !4387
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4388 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4392, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata ptr %1, metadata !4393, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata ptr %2, metadata !4394, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata ptr %3, metadata !4395, metadata !DIExpression()), !dbg !4401
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !4402
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4396, metadata !DIExpression()), !dbg !4403
  call void @llvm.va_start(ptr nonnull %5), !dbg !4404
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4405
  call void @llvm.va_end(ptr nonnull %5), !dbg !4406
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !4407
  ret void, !dbg !4407
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4408 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4409, !tbaa !951
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.144, ptr noundef %1), !dbg !4409
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.17.159, i32 noundef 5) #39, !dbg !4410
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.160) #39, !dbg !4410
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.19.161, i32 noundef 5) #39, !dbg !4411
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.162, ptr noundef nonnull @.str.21.163) #39, !dbg !4411
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.22.164, i32 noundef 5) #39, !dbg !4412
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.165) #39, !dbg !4412
  ret void, !dbg !4413
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4414 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4419, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64 %1, metadata !4420, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64 %2, metadata !4421, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata ptr %0, metadata !4423, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i64 %1, metadata !4426, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i64 %2, metadata !4427, metadata !DIExpression()), !dbg !4428
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4430
  call void @llvm.dbg.value(metadata ptr %4, metadata !4431, metadata !DIExpression()), !dbg !4436
  %5 = icmp eq ptr %4, null, !dbg !4438
  br i1 %5, label %6, label %7, !dbg !4440

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4441
  unreachable, !dbg !4441

7:                                                ; preds = %3
  ret ptr %4, !dbg !4442
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4424 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4423, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata i64 %1, metadata !4426, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata i64 %2, metadata !4427, metadata !DIExpression()), !dbg !4443
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4444
  call void @llvm.dbg.value(metadata ptr %4, metadata !4431, metadata !DIExpression()), !dbg !4445
  %5 = icmp eq ptr %4, null, !dbg !4447
  br i1 %5, label %6, label %7, !dbg !4448

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4449
  unreachable, !dbg !4449

7:                                                ; preds = %3
  ret ptr %4, !dbg !4450
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4451 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4455, metadata !DIExpression()), !dbg !4456
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4457
  call void @llvm.dbg.value(metadata ptr %2, metadata !4431, metadata !DIExpression()), !dbg !4458
  %3 = icmp eq ptr %2, null, !dbg !4460
  br i1 %3, label %4, label %5, !dbg !4461

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4462
  unreachable, !dbg !4462

5:                                                ; preds = %1
  ret ptr %2, !dbg !4463
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4464 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4465 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4469, metadata !DIExpression()), !dbg !4470
  call void @llvm.dbg.value(metadata i64 %0, metadata !4471, metadata !DIExpression()), !dbg !4475
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4477
  call void @llvm.dbg.value(metadata ptr %2, metadata !4431, metadata !DIExpression()), !dbg !4478
  %3 = icmp eq ptr %2, null, !dbg !4480
  br i1 %3, label %4, label %5, !dbg !4481

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4482
  unreachable, !dbg !4482

5:                                                ; preds = %1
  ret ptr %2, !dbg !4483
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4484 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4488, metadata !DIExpression()), !dbg !4489
  call void @llvm.dbg.value(metadata i64 %0, metadata !4455, metadata !DIExpression()), !dbg !4490
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4492
  call void @llvm.dbg.value(metadata ptr %2, metadata !4431, metadata !DIExpression()), !dbg !4493
  %3 = icmp eq ptr %2, null, !dbg !4495
  br i1 %3, label %4, label %5, !dbg !4496

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4497
  unreachable, !dbg !4497

5:                                                ; preds = %1
  ret ptr %2, !dbg !4498
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4499 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4503, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata i64 %1, metadata !4504, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.value(metadata ptr %0, metadata !4506, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i64 %1, metadata !4510, metadata !DIExpression()), !dbg !4511
  %3 = icmp eq i64 %1, 0, !dbg !4513
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4513
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4514
  call void @llvm.dbg.value(metadata ptr %5, metadata !4431, metadata !DIExpression()), !dbg !4515
  %6 = icmp eq ptr %5, null, !dbg !4517
  br i1 %6, label %7, label %8, !dbg !4518

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4519
  unreachable, !dbg !4519

8:                                                ; preds = %2
  ret ptr %5, !dbg !4520
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4521 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4522 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4526, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i64 %1, metadata !4527, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata ptr %0, metadata !4529, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i64 %1, metadata !4532, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata ptr %0, metadata !4506, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata i64 %1, metadata !4510, metadata !DIExpression()), !dbg !4535
  %3 = icmp eq i64 %1, 0, !dbg !4537
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4537
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4538
  call void @llvm.dbg.value(metadata ptr %5, metadata !4431, metadata !DIExpression()), !dbg !4539
  %6 = icmp eq ptr %5, null, !dbg !4541
  br i1 %6, label %7, label %8, !dbg !4542

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4543
  unreachable, !dbg !4543

8:                                                ; preds = %2
  ret ptr %5, !dbg !4544
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4545 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4549, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i64 %1, metadata !4550, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i64 %2, metadata !4551, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata ptr %0, metadata !4553, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %1, metadata !4556, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %2, metadata !4557, metadata !DIExpression()), !dbg !4558
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4560
  call void @llvm.dbg.value(metadata ptr %4, metadata !4431, metadata !DIExpression()), !dbg !4561
  %5 = icmp eq ptr %4, null, !dbg !4563
  br i1 %5, label %6, label %7, !dbg !4564

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4565
  unreachable, !dbg !4565

7:                                                ; preds = %3
  ret ptr %4, !dbg !4566
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4567 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4571, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i64 %1, metadata !4572, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata ptr null, metadata !4423, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i64 %0, metadata !4426, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i64 %1, metadata !4427, metadata !DIExpression()), !dbg !4574
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4576
  call void @llvm.dbg.value(metadata ptr %3, metadata !4431, metadata !DIExpression()), !dbg !4577
  %4 = icmp eq ptr %3, null, !dbg !4579
  br i1 %4, label %5, label %6, !dbg !4580

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4581
  unreachable, !dbg !4581

6:                                                ; preds = %2
  ret ptr %3, !dbg !4582
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4583 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4587, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i64 %1, metadata !4588, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata ptr null, metadata !4549, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.value(metadata i64 %0, metadata !4550, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.value(metadata i64 %1, metadata !4551, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.value(metadata ptr null, metadata !4553, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i64 %0, metadata !4556, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i64 %1, metadata !4557, metadata !DIExpression()), !dbg !4592
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4594
  call void @llvm.dbg.value(metadata ptr %3, metadata !4431, metadata !DIExpression()), !dbg !4595
  %4 = icmp eq ptr %3, null, !dbg !4597
  br i1 %4, label %5, label %6, !dbg !4598

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4599
  unreachable, !dbg !4599

6:                                                ; preds = %2
  ret ptr %3, !dbg !4600
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4601 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4605, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata ptr %1, metadata !4606, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata ptr %0, metadata !887, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata ptr %1, metadata !888, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i64 1, metadata !889, metadata !DIExpression()), !dbg !4608
  %3 = load i64, ptr %1, align 8, !dbg !4610, !tbaa !1547
  call void @llvm.dbg.value(metadata i64 %3, metadata !890, metadata !DIExpression()), !dbg !4608
  %4 = icmp eq ptr %0, null, !dbg !4611
  br i1 %4, label %5, label %8, !dbg !4613

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4614
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4617
  br label %15, !dbg !4617

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4618
  %10 = add nuw i64 %9, 1, !dbg !4618
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4618
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4618
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4618
  call void @llvm.dbg.value(metadata i64 %13, metadata !890, metadata !DIExpression()), !dbg !4608
  br i1 %12, label %14, label %15, !dbg !4621

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4622
  unreachable, !dbg !4622

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4608
  call void @llvm.dbg.value(metadata i64 %16, metadata !890, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata ptr %0, metadata !4423, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i64 %16, metadata !4426, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i64 1, metadata !4427, metadata !DIExpression()), !dbg !4623
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4625
  call void @llvm.dbg.value(metadata ptr %17, metadata !4431, metadata !DIExpression()), !dbg !4626
  %18 = icmp eq ptr %17, null, !dbg !4628
  br i1 %18, label %19, label %20, !dbg !4629

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4630
  unreachable, !dbg !4630

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !887, metadata !DIExpression()), !dbg !4608
  store i64 %16, ptr %1, align 8, !dbg !4631, !tbaa !1547
  ret ptr %17, !dbg !4632
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !882 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !887, metadata !DIExpression()), !dbg !4633
  call void @llvm.dbg.value(metadata ptr %1, metadata !888, metadata !DIExpression()), !dbg !4633
  call void @llvm.dbg.value(metadata i64 %2, metadata !889, metadata !DIExpression()), !dbg !4633
  %4 = load i64, ptr %1, align 8, !dbg !4634, !tbaa !1547
  call void @llvm.dbg.value(metadata i64 %4, metadata !890, metadata !DIExpression()), !dbg !4633
  %5 = icmp eq ptr %0, null, !dbg !4635
  br i1 %5, label %6, label %13, !dbg !4636

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4637
  br i1 %7, label %8, label %20, !dbg !4638

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4639
  call void @llvm.dbg.value(metadata i64 %9, metadata !890, metadata !DIExpression()), !dbg !4633
  %10 = icmp ugt i64 %2, 128, !dbg !4641
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4642
  call void @llvm.dbg.value(metadata i64 %12, metadata !890, metadata !DIExpression()), !dbg !4633
  br label %20, !dbg !4643

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4644
  %15 = add nuw i64 %14, 1, !dbg !4644
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4644
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4644
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4644
  call void @llvm.dbg.value(metadata i64 %18, metadata !890, metadata !DIExpression()), !dbg !4633
  br i1 %17, label %19, label %20, !dbg !4645

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4646
  unreachable, !dbg !4646

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4633
  call void @llvm.dbg.value(metadata i64 %21, metadata !890, metadata !DIExpression()), !dbg !4633
  call void @llvm.dbg.value(metadata ptr %0, metadata !4423, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i64 %21, metadata !4426, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i64 %2, metadata !4427, metadata !DIExpression()), !dbg !4647
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4649
  call void @llvm.dbg.value(metadata ptr %22, metadata !4431, metadata !DIExpression()), !dbg !4650
  %23 = icmp eq ptr %22, null, !dbg !4652
  br i1 %23, label %24, label %25, !dbg !4653

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4654
  unreachable, !dbg !4654

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !887, metadata !DIExpression()), !dbg !4633
  store i64 %21, ptr %1, align 8, !dbg !4655, !tbaa !1547
  ret ptr %22, !dbg !4656
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !894 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !902, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata ptr %1, metadata !903, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i64 %2, metadata !904, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i64 %3, metadata !905, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i64 %4, metadata !906, metadata !DIExpression()), !dbg !4657
  %6 = load i64, ptr %1, align 8, !dbg !4658, !tbaa !1547
  call void @llvm.dbg.value(metadata i64 %6, metadata !907, metadata !DIExpression()), !dbg !4657
  %7 = ashr i64 %6, 1, !dbg !4659
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4659
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4659
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4659
  call void @llvm.dbg.value(metadata i64 %10, metadata !908, metadata !DIExpression()), !dbg !4657
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4661
  call void @llvm.dbg.value(metadata i64 %11, metadata !908, metadata !DIExpression()), !dbg !4657
  %12 = icmp sgt i64 %3, -1, !dbg !4662
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4664
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4664
  call void @llvm.dbg.value(metadata i64 %15, metadata !908, metadata !DIExpression()), !dbg !4657
  %16 = icmp slt i64 %4, 0, !dbg !4665
  br i1 %16, label %17, label %30, !dbg !4665

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4665
  br i1 %18, label %19, label %24, !dbg !4665

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4665
  %21 = udiv i64 9223372036854775807, %20, !dbg !4665
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4665
  br i1 %23, label %46, label %43, !dbg !4665

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4665
  br i1 %25, label %43, label %26, !dbg !4665

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4665
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4665
  %29 = icmp ult i64 %28, %15, !dbg !4665
  br i1 %29, label %46, label %43, !dbg !4665

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4665
  br i1 %31, label %43, label %32, !dbg !4665

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4665
  br i1 %33, label %34, label %40, !dbg !4665

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4665
  br i1 %35, label %43, label %36, !dbg !4665

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4665
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4665
  %39 = icmp ult i64 %38, %4, !dbg !4665
  br i1 %39, label %46, label %43, !dbg !4665

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4665
  br i1 %42, label %46, label %43, !dbg !4665

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !909, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4657
  %44 = mul i64 %15, %4, !dbg !4665
  call void @llvm.dbg.value(metadata i64 %44, metadata !909, metadata !DIExpression()), !dbg !4657
  %45 = icmp slt i64 %44, 128, !dbg !4665
  br i1 %45, label %46, label %51, !dbg !4665

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !910, metadata !DIExpression()), !dbg !4657
  %48 = sdiv i64 %47, %4, !dbg !4666
  call void @llvm.dbg.value(metadata i64 %48, metadata !908, metadata !DIExpression()), !dbg !4657
  %49 = srem i64 %47, %4, !dbg !4669
  %50 = sub nsw i64 %47, %49, !dbg !4670
  call void @llvm.dbg.value(metadata i64 %50, metadata !909, metadata !DIExpression()), !dbg !4657
  br label %51, !dbg !4671

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4657
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4657
  call void @llvm.dbg.value(metadata i64 %53, metadata !909, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i64 %52, metadata !908, metadata !DIExpression()), !dbg !4657
  %54 = icmp eq ptr %0, null, !dbg !4672
  br i1 %54, label %55, label %56, !dbg !4674

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4675, !tbaa !1547
  br label %56, !dbg !4676

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4677
  %58 = icmp slt i64 %57, %2, !dbg !4679
  br i1 %58, label %59, label %96, !dbg !4680

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4681
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4681
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4681
  call void @llvm.dbg.value(metadata i64 %62, metadata !908, metadata !DIExpression()), !dbg !4657
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4682
  br i1 %65, label %95, label %66, !dbg !4682

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4683

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4683
  br i1 %68, label %69, label %74, !dbg !4683

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4683
  %71 = udiv i64 9223372036854775807, %70, !dbg !4683
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4683
  br i1 %73, label %95, label %93, !dbg !4683

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4683
  br i1 %75, label %93, label %76, !dbg !4683

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4683
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4683
  %79 = icmp ult i64 %78, %62, !dbg !4683
  br i1 %79, label %95, label %93, !dbg !4683

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4683
  br i1 %81, label %93, label %82, !dbg !4683

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4683
  br i1 %83, label %84, label %90, !dbg !4683

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4683
  br i1 %85, label %93, label %86, !dbg !4683

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4683
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4683
  %89 = icmp ult i64 %88, %4, !dbg !4683
  br i1 %89, label %95, label %93, !dbg !4683

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4683
  br i1 %92, label %95, label %93, !dbg !4683

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !909, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4657
  %94 = mul i64 %62, %4, !dbg !4683
  call void @llvm.dbg.value(metadata i64 %94, metadata !909, metadata !DIExpression()), !dbg !4657
  br label %96, !dbg !4684

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #41, !dbg !4685
  unreachable, !dbg !4685

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4657
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4657
  call void @llvm.dbg.value(metadata i64 %98, metadata !909, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i64 %97, metadata !908, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata ptr %0, metadata !4503, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata i64 %98, metadata !4504, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata ptr %0, metadata !4506, metadata !DIExpression()), !dbg !4688
  call void @llvm.dbg.value(metadata i64 %98, metadata !4510, metadata !DIExpression()), !dbg !4688
  %99 = icmp eq i64 %98, 0, !dbg !4690
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4690
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #46, !dbg !4691
  call void @llvm.dbg.value(metadata ptr %101, metadata !4431, metadata !DIExpression()), !dbg !4692
  %102 = icmp eq ptr %101, null, !dbg !4694
  br i1 %102, label %103, label %104, !dbg !4695

103:                                              ; preds = %96
  tail call void @xalloc_die() #41, !dbg !4696
  unreachable, !dbg !4696

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !902, metadata !DIExpression()), !dbg !4657
  store i64 %97, ptr %1, align 8, !dbg !4697, !tbaa !1547
  ret ptr %101, !dbg !4698
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4699 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4701, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.value(metadata i64 %0, metadata !4703, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata i64 1, metadata !4706, metadata !DIExpression()), !dbg !4707
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4709
  call void @llvm.dbg.value(metadata ptr %2, metadata !4431, metadata !DIExpression()), !dbg !4710
  %3 = icmp eq ptr %2, null, !dbg !4712
  br i1 %3, label %4, label %5, !dbg !4713

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4714
  unreachable, !dbg !4714

5:                                                ; preds = %1
  ret ptr %2, !dbg !4715
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4716 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4704 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4703, metadata !DIExpression()), !dbg !4717
  call void @llvm.dbg.value(metadata i64 %1, metadata !4706, metadata !DIExpression()), !dbg !4717
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4718
  call void @llvm.dbg.value(metadata ptr %3, metadata !4431, metadata !DIExpression()), !dbg !4719
  %4 = icmp eq ptr %3, null, !dbg !4721
  br i1 %4, label %5, label %6, !dbg !4722

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4723
  unreachable, !dbg !4723

6:                                                ; preds = %2
  ret ptr %3, !dbg !4724
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4725 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4727, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.value(metadata i64 %0, metadata !4729, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i64 1, metadata !4732, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i64 %0, metadata !4735, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i64 1, metadata !4738, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i64 %0, metadata !4735, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i64 1, metadata !4738, metadata !DIExpression()), !dbg !4739
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4741
  call void @llvm.dbg.value(metadata ptr %2, metadata !4431, metadata !DIExpression()), !dbg !4742
  %3 = icmp eq ptr %2, null, !dbg !4744
  br i1 %3, label %4, label %5, !dbg !4745

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4746
  unreachable, !dbg !4746

5:                                                ; preds = %1
  ret ptr %2, !dbg !4747
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4730 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4729, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i64 %1, metadata !4732, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i64 %0, metadata !4735, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i64 %1, metadata !4738, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i64 %0, metadata !4735, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i64 %1, metadata !4738, metadata !DIExpression()), !dbg !4749
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4751
  call void @llvm.dbg.value(metadata ptr %3, metadata !4431, metadata !DIExpression()), !dbg !4752
  %4 = icmp eq ptr %3, null, !dbg !4754
  br i1 %4, label %5, label %6, !dbg !4755

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4756
  unreachable, !dbg !4756

6:                                                ; preds = %2
  ret ptr %3, !dbg !4757
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4758 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4762, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i64 %1, metadata !4763, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i64 %1, metadata !4455, metadata !DIExpression()), !dbg !4765
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4767
  call void @llvm.dbg.value(metadata ptr %3, metadata !4431, metadata !DIExpression()), !dbg !4768
  %4 = icmp eq ptr %3, null, !dbg !4770
  br i1 %4, label %5, label %6, !dbg !4771

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4772
  unreachable, !dbg !4772

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4773, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata ptr %0, metadata !4779, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i64 %1, metadata !4780, metadata !DIExpression()), !dbg !4781
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4783
  ret ptr %3, !dbg !4784
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4785 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4789, metadata !DIExpression()), !dbg !4791
  call void @llvm.dbg.value(metadata i64 %1, metadata !4790, metadata !DIExpression()), !dbg !4791
  call void @llvm.dbg.value(metadata i64 %1, metadata !4469, metadata !DIExpression()), !dbg !4792
  call void @llvm.dbg.value(metadata i64 %1, metadata !4471, metadata !DIExpression()), !dbg !4794
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4796
  call void @llvm.dbg.value(metadata ptr %3, metadata !4431, metadata !DIExpression()), !dbg !4797
  %4 = icmp eq ptr %3, null, !dbg !4799
  br i1 %4, label %5, label %6, !dbg !4800

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4801
  unreachable, !dbg !4801

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4773, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata ptr %0, metadata !4779, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i64 %1, metadata !4780, metadata !DIExpression()), !dbg !4802
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4804
  ret ptr %3, !dbg !4805
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4806 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4810, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata i64 %1, metadata !4811, metadata !DIExpression()), !dbg !4813
  %3 = add nsw i64 %1, 1, !dbg !4814
  call void @llvm.dbg.value(metadata i64 %3, metadata !4469, metadata !DIExpression()), !dbg !4815
  call void @llvm.dbg.value(metadata i64 %3, metadata !4471, metadata !DIExpression()), !dbg !4817
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4819
  call void @llvm.dbg.value(metadata ptr %4, metadata !4431, metadata !DIExpression()), !dbg !4820
  %5 = icmp eq ptr %4, null, !dbg !4822
  br i1 %5, label %6, label %7, !dbg !4823

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4824
  unreachable, !dbg !4824

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4812, metadata !DIExpression()), !dbg !4813
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4825
  store i8 0, ptr %8, align 1, !dbg !4826, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %4, metadata !4773, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata ptr %0, metadata !4779, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i64 %1, metadata !4780, metadata !DIExpression()), !dbg !4827
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4829
  ret ptr %4, !dbg !4830
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4831 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4833, metadata !DIExpression()), !dbg !4834
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4835
  %3 = add i64 %2, 1, !dbg !4836
  call void @llvm.dbg.value(metadata ptr %0, metadata !4762, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.value(metadata i64 %3, metadata !4763, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.value(metadata i64 %3, metadata !4455, metadata !DIExpression()), !dbg !4839
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4841
  call void @llvm.dbg.value(metadata ptr %4, metadata !4431, metadata !DIExpression()), !dbg !4842
  %5 = icmp eq ptr %4, null, !dbg !4844
  br i1 %5, label %6, label %7, !dbg !4845

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4846
  unreachable, !dbg !4846

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4773, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata ptr %0, metadata !4779, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i64 %3, metadata !4780, metadata !DIExpression()), !dbg !4847
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4849
  ret ptr %4, !dbg !4850
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4851 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4856, !tbaa !1052
  call void @llvm.dbg.value(metadata i32 %1, metadata !4853, metadata !DIExpression()), !dbg !4857
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.176, ptr noundef nonnull @.str.2.177, i32 noundef 5) #39, !dbg !4856
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.178, ptr noundef %2) #39, !dbg !4856
  %3 = icmp eq i32 %1, 0, !dbg !4856
  tail call void @llvm.assume(i1 %3), !dbg !4856
  tail call void @abort() #41, !dbg !4858
  unreachable, !dbg !4858
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4859 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4897, metadata !DIExpression()), !dbg !4902
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4903
  call void @llvm.dbg.value(metadata i1 poison, metadata !4898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4902
  call void @llvm.dbg.value(metadata ptr %0, metadata !4904, metadata !DIExpression()), !dbg !4907
  %3 = load i32, ptr %0, align 8, !dbg !4909, !tbaa !4910
  %4 = and i32 %3, 32, !dbg !4911
  %5 = icmp eq i32 %4, 0, !dbg !4911
  call void @llvm.dbg.value(metadata i1 %5, metadata !4900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4902
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4912
  %7 = icmp eq i32 %6, 0, !dbg !4913
  call void @llvm.dbg.value(metadata i1 %7, metadata !4901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4902
  br i1 %5, label %8, label %18, !dbg !4914

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4916
  call void @llvm.dbg.value(metadata i1 %9, metadata !4898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4902
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4917
  %11 = xor i1 %7, true, !dbg !4917
  %12 = sext i1 %11 to i32, !dbg !4917
  br i1 %10, label %21, label %13, !dbg !4917

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4918
  %15 = load i32, ptr %14, align 4, !dbg !4918, !tbaa !1052
  %16 = icmp ne i32 %15, 9, !dbg !4919
  %17 = sext i1 %16 to i32, !dbg !4920
  br label %21, !dbg !4920

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4921

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4923
  store i32 0, ptr %20, align 4, !dbg !4925, !tbaa !1052
  br label %21, !dbg !4923

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4902
  ret i32 %22, !dbg !4926
}

; Function Attrs: nounwind
declare !dbg !4927 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4931 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4969, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i32 0, metadata !4970, metadata !DIExpression()), !dbg !4973
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4974
  call void @llvm.dbg.value(metadata i32 %2, metadata !4971, metadata !DIExpression()), !dbg !4973
  %3 = icmp slt i32 %2, 0, !dbg !4975
  br i1 %3, label %4, label %6, !dbg !4977

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4978
  br label %24, !dbg !4979

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4980
  %8 = icmp eq i32 %7, 0, !dbg !4980
  br i1 %8, label %13, label %9, !dbg !4982

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4983
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !4984
  %12 = icmp eq i64 %11, -1, !dbg !4985
  br i1 %12, label %16, label %13, !dbg !4986

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !4987
  %15 = icmp eq i32 %14, 0, !dbg !4987
  br i1 %15, label %16, label %18, !dbg !4988

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4970, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i32 0, metadata !4972, metadata !DIExpression()), !dbg !4973
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4989
  call void @llvm.dbg.value(metadata i32 %17, metadata !4972, metadata !DIExpression()), !dbg !4973
  br label %24, !dbg !4990

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !4991
  %20 = load i32, ptr %19, align 4, !dbg !4991, !tbaa !1052
  call void @llvm.dbg.value(metadata i32 %20, metadata !4970, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i32 0, metadata !4972, metadata !DIExpression()), !dbg !4973
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4989
  call void @llvm.dbg.value(metadata i32 %21, metadata !4972, metadata !DIExpression()), !dbg !4973
  %22 = icmp eq i32 %20, 0, !dbg !4992
  br i1 %22, label %24, label %23, !dbg !4990

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4994, !tbaa !1052
  call void @llvm.dbg.value(metadata i32 -1, metadata !4972, metadata !DIExpression()), !dbg !4973
  br label %24, !dbg !4996

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4973
  ret i32 %25, !dbg !4997
}

; Function Attrs: nofree nounwind
declare !dbg !4998 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4999 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5000 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !5001 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !5004 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5042, metadata !DIExpression()), !dbg !5043
  %2 = icmp eq ptr %0, null, !dbg !5044
  br i1 %2, label %6, label %3, !dbg !5046

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !5047
  %5 = icmp eq i32 %4, 0, !dbg !5047
  br i1 %5, label %6, label %8, !dbg !5048

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !5049
  br label %16, !dbg !5050

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !5051, metadata !DIExpression()), !dbg !5056
  %9 = load i32, ptr %0, align 8, !dbg !5058, !tbaa !4910
  %10 = and i32 %9, 256, !dbg !5060
  %11 = icmp eq i32 %10, 0, !dbg !5060
  br i1 %11, label %14, label %12, !dbg !5061

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !5062
  br label %14, !dbg !5062

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !5063
  br label %16, !dbg !5064

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !5043
  ret i32 %17, !dbg !5065
}

; Function Attrs: nofree nounwind
declare !dbg !5066 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5067 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5106, metadata !DIExpression()), !dbg !5112
  call void @llvm.dbg.value(metadata i64 %1, metadata !5107, metadata !DIExpression()), !dbg !5112
  call void @llvm.dbg.value(metadata i32 %2, metadata !5108, metadata !DIExpression()), !dbg !5112
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5113
  %5 = load ptr, ptr %4, align 8, !dbg !5113, !tbaa !5114
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5115
  %7 = load ptr, ptr %6, align 8, !dbg !5115, !tbaa !5116
  %8 = icmp eq ptr %5, %7, !dbg !5117
  br i1 %8, label %9, label %27, !dbg !5118

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5119
  %11 = load ptr, ptr %10, align 8, !dbg !5119, !tbaa !2582
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5120
  %13 = load ptr, ptr %12, align 8, !dbg !5120, !tbaa !5121
  %14 = icmp eq ptr %11, %13, !dbg !5122
  br i1 %14, label %15, label %27, !dbg !5123

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !5124
  %17 = load ptr, ptr %16, align 8, !dbg !5124, !tbaa !5125
  %18 = icmp eq ptr %17, null, !dbg !5126
  br i1 %18, label %19, label %27, !dbg !5127

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !5128
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !5129
  call void @llvm.dbg.value(metadata i64 %21, metadata !5109, metadata !DIExpression()), !dbg !5130
  %22 = icmp eq i64 %21, -1, !dbg !5131
  br i1 %22, label %29, label %23, !dbg !5133

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !5134, !tbaa !4910
  %25 = and i32 %24, -17, !dbg !5134
  store i32 %25, ptr %0, align 8, !dbg !5134, !tbaa !4910
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !5135
  store i64 %21, ptr %26, align 8, !dbg !5136, !tbaa !5137
  br label %29, !dbg !5138

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !5139
  br label %29, !dbg !5140

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !5112
  ret i32 %30, !dbg !5141
}

; Function Attrs: nofree nounwind
declare !dbg !5142 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5145 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5151, metadata !DIExpression()), !dbg !5156
  call void @llvm.dbg.value(metadata ptr %1, metadata !5152, metadata !DIExpression()), !dbg !5156
  call void @llvm.dbg.value(metadata i64 %2, metadata !5153, metadata !DIExpression()), !dbg !5156
  call void @llvm.dbg.value(metadata ptr %3, metadata !5154, metadata !DIExpression()), !dbg !5156
  %5 = icmp eq ptr %1, null, !dbg !5157
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5159
  %7 = select i1 %5, ptr @.str.189, ptr %1, !dbg !5159
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5159
  call void @llvm.dbg.value(metadata i64 %8, metadata !5153, metadata !DIExpression()), !dbg !5156
  call void @llvm.dbg.value(metadata ptr %7, metadata !5152, metadata !DIExpression()), !dbg !5156
  call void @llvm.dbg.value(metadata ptr %6, metadata !5151, metadata !DIExpression()), !dbg !5156
  %9 = icmp eq ptr %3, null, !dbg !5160
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5162
  call void @llvm.dbg.value(metadata ptr %10, metadata !5154, metadata !DIExpression()), !dbg !5156
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !5163
  call void @llvm.dbg.value(metadata i64 %11, metadata !5155, metadata !DIExpression()), !dbg !5156
  %12 = icmp ult i64 %11, -3, !dbg !5164
  br i1 %12, label %13, label %17, !dbg !5166

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !5167
  %15 = icmp eq i32 %14, 0, !dbg !5167
  br i1 %15, label %16, label %29, !dbg !5168

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5169, metadata !DIExpression()), !dbg !5174
  call void @llvm.dbg.value(metadata ptr %10, metadata !5176, metadata !DIExpression()), !dbg !5181
  call void @llvm.dbg.value(metadata i32 0, metadata !5179, metadata !DIExpression()), !dbg !5181
  call void @llvm.dbg.value(metadata i64 8, metadata !5180, metadata !DIExpression()), !dbg !5181
  store i64 0, ptr %10, align 1, !dbg !5183
  br label %29, !dbg !5184

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5185
  br i1 %18, label %19, label %20, !dbg !5187

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !5188
  unreachable, !dbg !5188

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5189

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !5191
  br i1 %23, label %29, label %24, !dbg !5192

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5193
  br i1 %25, label %29, label %26, !dbg !5196

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5197, !tbaa !1061
  %28 = zext i8 %27 to i32, !dbg !5198
  store i32 %28, ptr %6, align 4, !dbg !5199, !tbaa !1052
  br label %29, !dbg !5200

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5156
  ret i64 %30, !dbg !5201
}

; Function Attrs: nounwind
declare !dbg !5202 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5207 i32 @mbsinit(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !5213 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5215, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.value(metadata i64 %1, metadata !5216, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.value(metadata i64 %2, metadata !5217, metadata !DIExpression()), !dbg !5219
  %4 = icmp eq i64 %2, 0, !dbg !5220
  br i1 %4, label %8, label %5, !dbg !5220

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5220
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5220
  br i1 %7, label %13, label %8, !dbg !5220

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5218, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5219
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5218, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5219
  %9 = mul i64 %2, %1, !dbg !5220
  call void @llvm.dbg.value(metadata i64 %9, metadata !5218, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.value(metadata ptr %0, metadata !5222, metadata !DIExpression()), !dbg !5226
  call void @llvm.dbg.value(metadata i64 %9, metadata !5225, metadata !DIExpression()), !dbg !5226
  %10 = icmp eq i64 %9, 0, !dbg !5228
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5228
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #46, !dbg !5229
  br label %15, !dbg !5230

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5218, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5219
  %14 = tail call ptr @__errno_location() #42, !dbg !5231
  store i32 12, ptr %14, align 4, !dbg !5233, !tbaa !1052
  br label %15, !dbg !5234

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5219
  ret ptr %16, !dbg !5235
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5236 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5238, metadata !DIExpression()), !dbg !5243
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !5244
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5239, metadata !DIExpression()), !dbg !5245
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !5246
  %4 = icmp eq i32 %3, 0, !dbg !5246
  br i1 %4, label %5, label %12, !dbg !5248

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5249, metadata !DIExpression()), !dbg !5253
  %6 = load i16, ptr %2, align 16, !dbg !5256
  %7 = icmp eq i16 %6, 67, !dbg !5256
  br i1 %7, label %11, label %8, !dbg !5257

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5249, metadata !DIExpression()), !dbg !5258
  call void @llvm.dbg.value(metadata ptr @.str.1.194, metadata !5252, metadata !DIExpression()), !dbg !5258
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.194, i64 6), !dbg !5260
  %10 = icmp eq i32 %9, 0, !dbg !5261
  br i1 %10, label %11, label %12, !dbg !5262

11:                                               ; preds = %8, %5
  br label %12, !dbg !5263

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5243
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !5264
  ret i1 %13, !dbg !5264
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5265 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5269, metadata !DIExpression()), !dbg !5272
  call void @llvm.dbg.value(metadata ptr %1, metadata !5270, metadata !DIExpression()), !dbg !5272
  call void @llvm.dbg.value(metadata i64 %2, metadata !5271, metadata !DIExpression()), !dbg !5272
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !5273
  ret i32 %4, !dbg !5274
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5275 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5279, metadata !DIExpression()), !dbg !5280
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !5281
  ret ptr %2, !dbg !5282
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5283 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5285, metadata !DIExpression()), !dbg !5287
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5288
  call void @llvm.dbg.value(metadata ptr %2, metadata !5286, metadata !DIExpression()), !dbg !5287
  ret ptr %2, !dbg !5289
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5290 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5292, metadata !DIExpression()), !dbg !5299
  call void @llvm.dbg.value(metadata ptr %1, metadata !5293, metadata !DIExpression()), !dbg !5299
  call void @llvm.dbg.value(metadata i64 %2, metadata !5294, metadata !DIExpression()), !dbg !5299
  call void @llvm.dbg.value(metadata i32 %0, metadata !5285, metadata !DIExpression()), !dbg !5300
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5302
  call void @llvm.dbg.value(metadata ptr %4, metadata !5286, metadata !DIExpression()), !dbg !5300
  call void @llvm.dbg.value(metadata ptr %4, metadata !5295, metadata !DIExpression()), !dbg !5299
  %5 = icmp eq ptr %4, null, !dbg !5303
  br i1 %5, label %6, label %9, !dbg !5304

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5305
  br i1 %7, label %19, label %8, !dbg !5308

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5309, !tbaa !1061
  br label %19, !dbg !5310

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !5311
  call void @llvm.dbg.value(metadata i64 %10, metadata !5296, metadata !DIExpression()), !dbg !5312
  %11 = icmp ult i64 %10, %2, !dbg !5313
  br i1 %11, label %12, label %14, !dbg !5315

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5316
  call void @llvm.dbg.value(metadata ptr %1, metadata !5318, metadata !DIExpression()), !dbg !5323
  call void @llvm.dbg.value(metadata ptr %4, metadata !5321, metadata !DIExpression()), !dbg !5323
  call void @llvm.dbg.value(metadata i64 %13, metadata !5322, metadata !DIExpression()), !dbg !5323
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !5325
  br label %19, !dbg !5326

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5327
  br i1 %15, label %19, label %16, !dbg !5330

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5331
  call void @llvm.dbg.value(metadata ptr %1, metadata !5318, metadata !DIExpression()), !dbg !5333
  call void @llvm.dbg.value(metadata ptr %4, metadata !5321, metadata !DIExpression()), !dbg !5333
  call void @llvm.dbg.value(metadata i64 %17, metadata !5322, metadata !DIExpression()), !dbg !5333
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !5335
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5336
  store i8 0, ptr %18, align 1, !dbg !5337, !tbaa !1061
  br label %19, !dbg !5338

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5339
  ret i32 %20, !dbg !5340
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.dbg.cu = !{!221, !564, !579, !829, !861, !863, !629, !663, !869, !871, !823, !878, !912, !914, !916, !918, !920, !845, !922, !925, !929, !931}
!llvm.ident = !{!933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933, !933}
!llvm.module.flags = !{!934, !935, !936, !937, !938, !939}

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
!221 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, retainedTypes: !259, globals: !273, splitDebugInlining: false, nameTableKind: None)
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
!259 = !{!260, !261, !262, !265, !267, !268}
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
!273 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !77, !82, !87, !92, !94, !99, !104, !109, !111, !116, !121, !126, !128, !130, !135, !140, !145, !147, !152, !157, !159, !161, !166, !171, !173, !175, !177, !182, !187, !192, !194, !199, !204, !209, !214, !274, !279, !281, !219, !283, !367, !369, !371, !376, !381, !383, !385, !390, !392, !394, !396, !401, !406, !408, !410, !412, !414, !416, !418, !423, !428, !433, !435, !437, !439, !441, !443, !448, !453, !455, !457, !459, !461, !466, !471, !473, !475, !477, !479, !484, !489, !494, !499, !504, !506, !508, !510, !512, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !550, !552, !557, !559}
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !2, line: 902, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 18)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "pos", scope: !221, file: !2, line: 78, type: !260, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(name: "argc", scope: !221, file: !2, line: 79, type: !260, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !285, file: !286, line: 575, type: !260, isLocal: true, isDefinition: true)
!285 = distinct !DISubprogram(name: "oputs_", scope: !286, file: !286, line: 573, type: !287, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !289)
!286 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!287 = !DISubroutineType(cc: DW_CC_nocall, types: !288)
!288 = !{null, !265, !265}
!289 = !{!290, !291, !292, !295, !297, !298, !299, !303, !304, !305, !306, !308, !361, !362, !363, !365, !366}
!290 = !DILocalVariable(name: "program", arg: 1, scope: !285, file: !286, line: 573, type: !265)
!291 = !DILocalVariable(name: "option", arg: 2, scope: !285, file: !286, line: 573, type: !265)
!292 = !DILocalVariable(name: "term", scope: !293, file: !286, line: 585, type: !265)
!293 = distinct !DILexicalBlock(scope: !294, file: !286, line: 582, column: 5)
!294 = distinct !DILexicalBlock(scope: !285, file: !286, line: 581, column: 7)
!295 = !DILocalVariable(name: "double_space", scope: !285, file: !286, line: 594, type: !296)
!296 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!297 = !DILocalVariable(name: "first_word", scope: !285, file: !286, line: 595, type: !265)
!298 = !DILocalVariable(name: "option_text", scope: !285, file: !286, line: 596, type: !265)
!299 = !DILocalVariable(name: "s", scope: !300, file: !286, line: 608, type: !265)
!300 = distinct !DILexicalBlock(scope: !301, file: !286, line: 605, column: 5)
!301 = distinct !DILexicalBlock(scope: !302, file: !286, line: 604, column: 12)
!302 = distinct !DILexicalBlock(scope: !285, file: !286, line: 597, column: 7)
!303 = !DILocalVariable(name: "spaces", scope: !300, file: !286, line: 609, type: !262)
!304 = !DILocalVariable(name: "anchor_len", scope: !285, file: !286, line: 620, type: !262)
!305 = !DILocalVariable(name: "desc_text", scope: !285, file: !286, line: 625, type: !265)
!306 = !DILocalVariable(name: "__ptr", scope: !307, file: !286, line: 644, type: !265)
!307 = distinct !DILexicalBlock(scope: !285, file: !286, line: 644, column: 3)
!308 = !DILocalVariable(name: "__stream", scope: !307, file: !286, line: 644, type: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !311, line: 7, baseType: !312)
!311 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !313, line: 49, size: 1728, elements: !314)
!313 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!314 = !{!315, !316, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !331, !333, !334, !335, !337, !338, !340, !341, !344, !346, !349, !352, !353, !355, !356, !357}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !312, file: !313, line: 51, baseType: !260, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !312, file: !313, line: 54, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !312, file: !313, line: 55, baseType: !317, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !312, file: !313, line: 56, baseType: !317, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !312, file: !313, line: 57, baseType: !317, size: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !312, file: !313, line: 58, baseType: !317, size: 64, offset: 320)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !312, file: !313, line: 59, baseType: !317, size: 64, offset: 384)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !312, file: !313, line: 60, baseType: !317, size: 64, offset: 448)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !312, file: !313, line: 61, baseType: !317, size: 64, offset: 512)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !312, file: !313, line: 64, baseType: !317, size: 64, offset: 576)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !312, file: !313, line: 65, baseType: !317, size: 64, offset: 640)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !312, file: !313, line: 66, baseType: !317, size: 64, offset: 704)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !312, file: !313, line: 68, baseType: !329, size: 64, offset: 768)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !313, line: 36, flags: DIFlagFwdDecl)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !312, file: !313, line: 70, baseType: !332, size: 64, offset: 832)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !312, file: !313, line: 72, baseType: !260, size: 32, offset: 896)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !312, file: !313, line: 73, baseType: !260, size: 32, offset: 928)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !312, file: !313, line: 74, baseType: !336, size: 64, offset: 960)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !271, line: 152, baseType: !272)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !312, file: !313, line: 77, baseType: !261, size: 16, offset: 1024)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !312, file: !313, line: 78, baseType: !339, size: 8, offset: 1040)
!339 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !312, file: !313, line: 79, baseType: !206, size: 8, offset: 1048)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !312, file: !313, line: 81, baseType: !342, size: 64, offset: 1088)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !313, line: 43, baseType: null)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !312, file: !313, line: 89, baseType: !345, size: 64, offset: 1152)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !271, line: 153, baseType: !272)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !312, file: !313, line: 91, baseType: !347, size: 64, offset: 1216)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !313, line: 37, flags: DIFlagFwdDecl)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !312, file: !313, line: 92, baseType: !350, size: 64, offset: 1280)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !313, line: 38, flags: DIFlagFwdDecl)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !312, file: !313, line: 93, baseType: !332, size: 64, offset: 1344)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !312, file: !313, line: 94, baseType: !354, size: 64, offset: 1408)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !312, file: !313, line: 95, baseType: !262, size: 64, offset: 1472)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !312, file: !313, line: 96, baseType: !260, size: 32, offset: 1536)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !312, file: !313, line: 98, baseType: !358, size: 160, offset: 1568)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 20)
!361 = !DILocalVariable(name: "__cnt", scope: !307, file: !286, line: 644, type: !262)
!362 = !DILocalVariable(name: "url_program", scope: !285, file: !286, line: 648, type: !265)
!363 = !DILocalVariable(name: "__ptr", scope: !364, file: !286, line: 686, type: !265)
!364 = distinct !DILexicalBlock(scope: !285, file: !286, line: 686, column: 3)
!365 = !DILocalVariable(name: "__stream", scope: !364, file: !286, line: 686, type: !309)
!366 = !DILocalVariable(name: "__cnt", scope: !364, file: !286, line: 686, type: !262)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !286, line: 585, type: !19, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !286, line: 586, type: !19, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !286, line: 595, type: !373, isLocal: true, isDefinition: true)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 4)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !286, line: 620, type: !378, isLocal: true, isDefinition: true)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 6)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !286, line: 648, type: !44, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !286, line: 649, type: !373, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !286, line: 649, type: !387, isLocal: true, isDefinition: true)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 3)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !286, line: 650, type: !19, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !286, line: 651, type: !378, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !286, line: 651, type: !378, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !286, line: 652, type: !398, isLocal: true, isDefinition: true)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 7)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !286, line: 653, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 8)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !286, line: 654, type: !211, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !286, line: 655, type: !211, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !286, line: 656, type: !211, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !286, line: 657, type: !211, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !286, line: 663, type: !398, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !286, line: 664, type: !211, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !286, line: 669, type: !420, isLocal: true, isDefinition: true)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 17)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !286, line: 669, type: !425, isLocal: true, isDefinition: true)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 40)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !286, line: 676, type: !430, isLocal: true, isDefinition: true)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 15)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !286, line: 676, type: !79, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !286, line: 679, type: !387, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !286, line: 683, type: !19, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !286, line: 688, type: !19, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !286, line: 691, type: !403, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !286, line: 839, type: !445, isLocal: true, isDefinition: true)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 16)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !286, line: 840, type: !450, isLocal: true, isDefinition: true)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 22)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !286, line: 841, type: !430, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !286, line: 862, type: !373, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !286, line: 868, type: !179, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !286, line: 875, type: !123, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !286, line: 877, type: !463, isLocal: true, isDefinition: true)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 51)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !286, line: 877, type: !468, isLocal: true, isDefinition: true)
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
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(name: "file_name", scope: !564, file: !565, line: 45, type: !265, isLocal: true, isDefinition: true)
!564 = distinct !DICompileUnit(language: DW_LANG_C11, file: !565, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !566, splitDebugInlining: false, nameTableKind: None)
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
!576 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !564, file: !565, line: 55, type: !296, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !579, file: !580, line: 66, type: !624, isLocal: false, isDefinition: true)
!579 = distinct !DICompileUnit(language: DW_LANG_C11, file: !580, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !581, globals: !582, splitDebugInlining: false, nameTableKind: None)
!580 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!581 = !{!354, !267}
!582 = !{!583, !585, !605, !607, !609, !611, !577, !613, !615, !617, !619, !622}
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !580, line: 272, type: !19, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(name: "old_file_name", scope: !587, file: !580, line: 304, type: !265, isLocal: true, isDefinition: true)
!587 = distinct !DISubprogram(name: "verror_at_line", scope: !580, file: !580, line: 298, type: !588, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !598)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !260, !260, !265, !224, !265, !590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !592)
!592 = !{!593, !595, !596, !597}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !591, file: !594, baseType: !224, size: 32)
!594 = !DIFile(filename: "lib/error.c", directory: "/src")
!595 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !591, file: !594, baseType: !224, size: 32, offset: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !591, file: !594, baseType: !354, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !591, file: !594, baseType: !354, size: 64, offset: 128)
!598 = !{!599, !600, !601, !602, !603, !604}
!599 = !DILocalVariable(name: "status", arg: 1, scope: !587, file: !580, line: 298, type: !260)
!600 = !DILocalVariable(name: "errnum", arg: 2, scope: !587, file: !580, line: 298, type: !260)
!601 = !DILocalVariable(name: "file_name", arg: 3, scope: !587, file: !580, line: 298, type: !265)
!602 = !DILocalVariable(name: "line_number", arg: 4, scope: !587, file: !580, line: 298, type: !224)
!603 = !DILocalVariable(name: "message", arg: 5, scope: !587, file: !580, line: 298, type: !265)
!604 = !DILocalVariable(name: "args", arg: 6, scope: !587, file: !580, line: 298, type: !590)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(name: "old_line_number", scope: !587, file: !580, line: 305, type: !224, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !580, line: 338, type: !373, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !580, line: 346, type: !403, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !580, line: 346, type: !44, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(name: "error_message_count", scope: !579, file: !580, line: 69, type: !224, isLocal: false, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !579, file: !580, line: 295, type: !260, isLocal: false, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !580, line: 208, type: !398, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !580, line: 208, type: !621, isLocal: true, isDefinition: true)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !487)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !580, line: 214, type: !19, isLocal: true, isDefinition: true)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{null}
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(name: "program_name", scope: !629, file: !630, line: 31, type: !265, isLocal: false, isDefinition: true)
!629 = distinct !DICompileUnit(language: DW_LANG_C11, file: !630, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !631, globals: !632, splitDebugInlining: false, nameTableKind: None)
!630 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!631 = !{!317}
!632 = !{!627, !633, !635}
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !630, line: 46, type: !403, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !630, line: 49, type: !373, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !639, line: 78, type: !403, isLocal: true, isDefinition: true)
!639 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !639, line: 79, type: !378, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !639, line: 80, type: !644, isLocal: true, isDefinition: true)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 13)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !639, line: 81, type: !644, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !639, line: 82, type: !358, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !639, line: 83, type: !44, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !639, line: 84, type: !403, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !639, line: 85, type: !398, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !639, line: 86, type: !398, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !639, line: 87, type: !403, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !663, file: !639, line: 76, type: !755, isLocal: false, isDefinition: true)
!663 = distinct !DICompileUnit(language: DW_LANG_C11, file: !639, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !664, retainedTypes: !684, globals: !685, splitDebugInlining: false, nameTableKind: None)
!664 = !{!665, !679, !229}
!665 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !666, line: 42, baseType: !224, size: 32, elements: !667)
!666 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!667 = !{!668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!668 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!669 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!670 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!671 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!672 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!673 = !DIEnumerator(name: "c_quoting_style", value: 5)
!674 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!675 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!676 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!677 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!678 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!679 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !666, line: 254, baseType: !224, size: 32, elements: !680)
!680 = !{!681, !682, !683}
!681 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!682 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!683 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!684 = !{!260, !261, !262}
!685 = !{!637, !640, !642, !647, !649, !651, !653, !655, !657, !659, !661, !686, !690, !700, !702, !707, !709, !711, !713, !715, !744, !751, !753}
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !663, file: !639, line: 92, type: !688, isLocal: false, isDefinition: true)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 320, elements: !212)
!689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !663, file: !639, line: 1040, type: !692, isLocal: false, isDefinition: true)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !639, line: 56, size: 448, elements: !693)
!693 = !{!694, !695, !696, !698, !699}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !692, file: !639, line: 59, baseType: !665, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !692, file: !639, line: 62, baseType: !260, size: 32, offset: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !692, file: !639, line: 66, baseType: !697, size: 256, offset: 64)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 256, elements: !404)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !692, file: !639, line: 69, baseType: !265, size: 64, offset: 320)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !692, file: !639, line: 72, baseType: !265, size: 64, offset: 384)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !663, file: !639, line: 107, type: !692, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(name: "slot0", scope: !663, file: !639, line: 831, type: !704, isLocal: true, isDefinition: true)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 256)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !639, line: 321, type: !44, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !639, line: 357, type: !44, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !639, line: 358, type: !44, isLocal: true, isDefinition: true)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !639, line: 199, type: !398, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(name: "quote", scope: !717, file: !639, line: 228, type: !742, isLocal: true, isDefinition: true)
!717 = distinct !DISubprogram(name: "gettext_quote", scope: !639, file: !639, line: 197, type: !718, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !720)
!718 = !DISubroutineType(types: !719)
!719 = !{!265, !265, !665}
!720 = !{!721, !722, !723, !724, !729}
!721 = !DILocalVariable(name: "msgid", arg: 1, scope: !717, file: !639, line: 197, type: !265)
!722 = !DILocalVariable(name: "s", arg: 2, scope: !717, file: !639, line: 197, type: !665)
!723 = !DILocalVariable(name: "translation", scope: !717, file: !639, line: 199, type: !265)
!724 = !DILocalVariable(name: "w", scope: !717, file: !639, line: 229, type: !725)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !726, line: 37, baseType: !727)
!726 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !271, line: 57, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !271, line: 42, baseType: !224)
!729 = !DILocalVariable(name: "mbs", scope: !717, file: !639, line: 230, type: !730)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !731, line: 6, baseType: !732)
!731 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !733, line: 21, baseType: !734)
!733 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !733, line: 13, size: 64, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !734, file: !733, line: 15, baseType: !260, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !734, file: !733, line: 20, baseType: !738, size: 32, offset: 32)
!738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !734, file: !733, line: 16, size: 32, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !738, file: !733, line: 18, baseType: !224, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !738, file: !733, line: 19, baseType: !373, size: 32)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 64, elements: !743)
!743 = !{!46, !375}
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(name: "slotvec", scope: !663, file: !639, line: 834, type: !746, isLocal: true, isDefinition: true)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !639, line: 823, size: 128, elements: !748)
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !747, file: !639, line: 825, baseType: !262, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !747, file: !639, line: 826, baseType: !317, size: 64, offset: 64)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(name: "nslots", scope: !663, file: !639, line: 832, type: !260, isLocal: true, isDefinition: true)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(name: "slotvec0", scope: !663, file: !639, line: 833, type: !747, isLocal: true, isDefinition: true)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 704, elements: !482)
!756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !759, line: 67, type: !468, isLocal: true, isDefinition: true)
!759 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !759, line: 69, type: !398, isLocal: true, isDefinition: true)
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(scope: null, file: !759, line: 83, type: !398, isLocal: true, isDefinition: true)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !759, line: 83, type: !373, isLocal: true, isDefinition: true)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !759, line: 85, type: !44, isLocal: true, isDefinition: true)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !759, line: 88, type: !770, isLocal: true, isDefinition: true)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !771)
!771 = !{!772}
!772 = !DISubrange(count: 171)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !759, line: 88, type: !775, isLocal: true, isDefinition: true)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 34)
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !759, line: 105, type: !445, isLocal: true, isDefinition: true)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !759, line: 109, type: !547, isLocal: true, isDefinition: true)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !759, line: 113, type: !491, isLocal: true, isDefinition: true)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !759, line: 120, type: !786, isLocal: true, isDefinition: true)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !787)
!787 = !{!788}
!788 = !DISubrange(count: 32)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(scope: null, file: !759, line: 127, type: !791, isLocal: true, isDefinition: true)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 36)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !759, line: 134, type: !425, isLocal: true, isDefinition: true)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(scope: null, file: !759, line: 142, type: !798, isLocal: true, isDefinition: true)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 44)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(scope: null, file: !759, line: 150, type: !54, isLocal: true, isDefinition: true)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !759, line: 159, type: !113, isLocal: true, isDefinition: true)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !759, line: 170, type: !163, isLocal: true, isDefinition: true)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(scope: null, file: !759, line: 248, type: !358, isLocal: true, isDefinition: true)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !759, line: 248, type: !450, isLocal: true, isDefinition: true)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !759, line: 254, type: !358, isLocal: true, isDefinition: true)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !759, line: 254, type: !201, isLocal: true, isDefinition: true)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !759, line: 254, type: !425, isLocal: true, isDefinition: true)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(scope: null, file: !759, line: 259, type: !3, isLocal: true, isDefinition: true)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(scope: null, file: !759, line: 259, type: !514, isLocal: true, isDefinition: true)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !823, file: !824, line: 26, type: !826, isLocal: false, isDefinition: true)
!823 = distinct !DICompileUnit(language: DW_LANG_C11, file: !824, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !825, splitDebugInlining: false, nameTableKind: None)
!824 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!825 = !{!821}
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 376, elements: !107)
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression())
!828 = distinct !DIGlobalVariable(name: "exit_failure", scope: !829, file: !830, line: 24, type: !832, isLocal: false, isDefinition: true)
!829 = distinct !DICompileUnit(language: DW_LANG_C11, file: !830, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !831, splitDebugInlining: false, nameTableKind: None)
!830 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!831 = !{!827}
!832 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !260)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(scope: null, file: !835, line: 34, type: !387, isLocal: true, isDefinition: true)
!835 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(scope: null, file: !835, line: 34, type: !398, isLocal: true, isDefinition: true)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(scope: null, file: !835, line: 34, type: !420, isLocal: true, isDefinition: true)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(scope: null, file: !842, line: 108, type: !206, isLocal: true, isDefinition: true)
!842 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(name: "internal_state", scope: !845, file: !842, line: 97, type: !848, isLocal: true, isDefinition: true)
!845 = distinct !DICompileUnit(language: DW_LANG_C11, file: !842, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !846, globals: !847, splitDebugInlining: false, nameTableKind: None)
!846 = !{!354, !262, !267}
!847 = !{!840, !843}
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !731, line: 6, baseType: !849)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !733, line: 21, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !733, line: 13, size: 64, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !850, file: !733, line: 15, baseType: !260, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !850, file: !733, line: 20, baseType: !854, size: 32, offset: 32)
!854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !850, file: !733, line: 16, size: 32, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !854, file: !733, line: 18, baseType: !224, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !854, file: !733, line: 19, baseType: !373, size: 32)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(scope: null, file: !860, line: 35, type: !378, isLocal: true, isDefinition: true)
!860 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!861 = distinct !DICompileUnit(language: DW_LANG_C11, file: !862, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!862 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!863 = distinct !DICompileUnit(language: DW_LANG_C11, file: !864, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !865, splitDebugInlining: false, nameTableKind: None)
!864 = !DIFile(filename: "lib/umaxtostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa759af6e92fed26f32f683da6c23a8")
!865 = !{!866}
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !867, line: 102, baseType: !868)
!867 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !271, line: 73, baseType: !264)
!869 = distinct !DICompileUnit(language: DW_LANG_C11, file: !870, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!870 = !DIFile(filename: "lib/strintcmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cbb3801b0b03f23f2fd643484b645368")
!871 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !872, retainedTypes: !876, globals: !877, splitDebugInlining: false, nameTableKind: None)
!872 = !{!873}
!873 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !759, line: 40, baseType: !224, size: 32, elements: !874)
!874 = !{!875}
!875 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!876 = !{!354}
!877 = !{!757, !760, !762, !764, !766, !768, !773, !778, !780, !782, !784, !789, !794, !796, !801, !803, !805, !807, !809, !811, !813, !815, !817, !819}
!878 = distinct !DICompileUnit(language: DW_LANG_C11, file: !879, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !880, retainedTypes: !911, splitDebugInlining: false, nameTableKind: None)
!879 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!880 = !{!881, !893}
!881 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !882, file: !879, line: 188, baseType: !224, size: 32, elements: !891)
!882 = distinct !DISubprogram(name: "x2nrealloc", scope: !879, file: !879, line: 176, type: !883, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !886)
!883 = !DISubroutineType(types: !884)
!884 = !{!354, !354, !885, !262}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!886 = !{!887, !888, !889, !890}
!887 = !DILocalVariable(name: "p", arg: 1, scope: !882, file: !879, line: 176, type: !354)
!888 = !DILocalVariable(name: "pn", arg: 2, scope: !882, file: !879, line: 176, type: !885)
!889 = !DILocalVariable(name: "s", arg: 3, scope: !882, file: !879, line: 176, type: !262)
!890 = !DILocalVariable(name: "n", scope: !882, file: !879, line: 178, type: !262)
!891 = !{!892}
!892 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!893 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !894, file: !879, line: 228, baseType: !224, size: 32, elements: !891)
!894 = distinct !DISubprogram(name: "xpalloc", scope: !879, file: !879, line: 223, type: !895, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !901)
!895 = !DISubroutineType(types: !896)
!896 = !{!354, !354, !897, !898, !900, !898}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !899, line: 130, baseType: !900)
!899 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !263, line: 35, baseType: !272)
!901 = !{!902, !903, !904, !905, !906, !907, !908, !909, !910}
!902 = !DILocalVariable(name: "pa", arg: 1, scope: !894, file: !879, line: 223, type: !354)
!903 = !DILocalVariable(name: "pn", arg: 2, scope: !894, file: !879, line: 223, type: !897)
!904 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !894, file: !879, line: 223, type: !898)
!905 = !DILocalVariable(name: "n_max", arg: 4, scope: !894, file: !879, line: 223, type: !900)
!906 = !DILocalVariable(name: "s", arg: 5, scope: !894, file: !879, line: 223, type: !898)
!907 = !DILocalVariable(name: "n0", scope: !894, file: !879, line: 230, type: !898)
!908 = !DILocalVariable(name: "n", scope: !894, file: !879, line: 237, type: !898)
!909 = !DILocalVariable(name: "nbytes", scope: !894, file: !879, line: 248, type: !898)
!910 = !DILocalVariable(name: "adjusted_nbytes", scope: !894, file: !879, line: 252, type: !898)
!911 = !{!317, !354, !296, !272, !264}
!912 = distinct !DICompileUnit(language: DW_LANG_C11, file: !835, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !913, splitDebugInlining: false, nameTableKind: None)
!913 = !{!833, !836, !838}
!914 = distinct !DICompileUnit(language: DW_LANG_C11, file: !915, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!915 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!916 = distinct !DICompileUnit(language: DW_LANG_C11, file: !917, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!917 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!918 = distinct !DICompileUnit(language: DW_LANG_C11, file: !919, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !876, splitDebugInlining: false, nameTableKind: None)
!919 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!920 = distinct !DICompileUnit(language: DW_LANG_C11, file: !921, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !876, splitDebugInlining: false, nameTableKind: None)
!921 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!922 = distinct !DICompileUnit(language: DW_LANG_C11, file: !923, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !924, splitDebugInlining: false, nameTableKind: None)
!923 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!924 = !{!296, !264, !354}
!925 = distinct !DICompileUnit(language: DW_LANG_C11, file: !860, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !926, splitDebugInlining: false, nameTableKind: None)
!926 = !{!927, !858}
!927 = !DIGlobalVariableExpression(var: !928, expr: !DIExpression())
!928 = distinct !DIGlobalVariable(scope: null, file: !860, line: 35, type: !44, isLocal: true, isDefinition: true)
!929 = distinct !DICompileUnit(language: DW_LANG_C11, file: !930, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!930 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!931 = distinct !DICompileUnit(language: DW_LANG_C11, file: !932, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !876, splitDebugInlining: false, nameTableKind: None)
!932 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!933 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!934 = !{i32 7, !"Dwarf Version", i32 5}
!935 = !{i32 2, !"Debug Info Version", i32 3}
!936 = !{i32 1, !"wchar_size", i32 4}
!937 = !{i32 8, !"PIC Level", i32 2}
!938 = !{i32 7, !"PIE Level", i32 2}
!939 = !{i32 7, !"uwtable", i32 2}
!940 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 661, type: !941, scopeLine: 662, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !943)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !260}
!943 = !{!944}
!944 = !DILocalVariable(name: "status", arg: 1, scope: !940, file: !2, line: 661, type: !260)
!945 = !DILocation(line: 0, scope: !940)
!946 = !DILocation(line: 663, column: 14, scope: !947)
!947 = distinct !DILexicalBlock(scope: !940, file: !2, line: 663, column: 7)
!948 = !DILocation(line: 663, column: 7, scope: !940)
!949 = !DILocation(line: 664, column: 5, scope: !950)
!950 = distinct !DILexicalBlock(scope: !947, file: !2, line: 664, column: 5)
!951 = !{!952, !952, i64 0}
!952 = !{!"any pointer", !953, i64 0}
!953 = !{!"omnipotent char", !954, i64 0}
!954 = !{!"Simple C/C++ TBAA"}
!955 = !DILocation(line: 667, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !947, file: !2, line: 666, column: 5)
!957 = !DILocation(line: 674, column: 7, scope: !956)
!958 = !DILocation(line: 678, column: 7, scope: !956)
!959 = !DILocation(line: 679, column: 7, scope: !956)
!960 = !DILocation(line: 680, column: 7, scope: !956)
!961 = !DILocation(line: 685, column: 7, scope: !956)
!962 = !DILocation(line: 692, column: 7, scope: !956)
!963 = !DILocation(line: 695, column: 7, scope: !956)
!964 = !DILocation(line: 698, column: 7, scope: !956)
!965 = !DILocation(line: 701, column: 7, scope: !956)
!966 = !DILocation(line: 704, column: 7, scope: !956)
!967 = !DILocation(line: 710, column: 7, scope: !956)
!968 = !DILocation(line: 713, column: 7, scope: !956)
!969 = !DILocation(line: 716, column: 7, scope: !956)
!970 = !DILocation(line: 719, column: 7, scope: !956)
!971 = !DILocation(line: 722, column: 7, scope: !956)
!972 = !DILocation(line: 725, column: 7, scope: !956)
!973 = !DILocation(line: 728, column: 7, scope: !956)
!974 = !DILocation(line: 731, column: 7, scope: !956)
!975 = !DILocation(line: 734, column: 7, scope: !956)
!976 = !DILocation(line: 737, column: 7, scope: !956)
!977 = !DILocation(line: 740, column: 7, scope: !956)
!978 = !DILocation(line: 743, column: 7, scope: !956)
!979 = !DILocation(line: 746, column: 7, scope: !956)
!980 = !DILocation(line: 749, column: 7, scope: !956)
!981 = !DILocation(line: 752, column: 7, scope: !956)
!982 = !DILocation(line: 755, column: 7, scope: !956)
!983 = !DILocation(line: 758, column: 7, scope: !956)
!984 = !DILocation(line: 761, column: 7, scope: !956)
!985 = !DILocation(line: 764, column: 7, scope: !956)
!986 = !DILocation(line: 767, column: 7, scope: !956)
!987 = !DILocation(line: 770, column: 7, scope: !956)
!988 = !DILocation(line: 773, column: 7, scope: !956)
!989 = !DILocation(line: 776, column: 7, scope: !956)
!990 = !DILocation(line: 779, column: 7, scope: !956)
!991 = !DILocation(line: 782, column: 7, scope: !956)
!992 = !DILocation(line: 785, column: 7, scope: !956)
!993 = !DILocation(line: 788, column: 7, scope: !956)
!994 = !DILocation(line: 791, column: 7, scope: !956)
!995 = !DILocation(line: 794, column: 7, scope: !956)
!996 = !DILocation(line: 797, column: 7, scope: !956)
!997 = !DILocation(line: 800, column: 7, scope: !956)
!998 = !DILocation(line: 803, column: 7, scope: !956)
!999 = !DILocation(line: 806, column: 7, scope: !956)
!1000 = !DILocation(line: 812, column: 7, scope: !956)
!1001 = !DILocation(line: 817, column: 7, scope: !956)
!1002 = !DILocation(line: 821, column: 7, scope: !956)
!1003 = !DILocalVariable(name: "program", arg: 1, scope: !1004, file: !286, line: 836, type: !265)
!1004 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !286, file: !286, line: 836, type: !1005, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1007)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !265}
!1007 = !{!1003, !1008, !1015, !1016, !1018, !1019}
!1008 = !DILocalVariable(name: "infomap", scope: !1004, file: !286, line: 838, type: !1009)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1010, size: 896, elements: !399)
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1004, file: !286, line: 838, size: 128, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1011, file: !286, line: 838, baseType: !265, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1011, file: !286, line: 838, baseType: !265, size: 64, offset: 64)
!1015 = !DILocalVariable(name: "node", scope: !1004, file: !286, line: 848, type: !265)
!1016 = !DILocalVariable(name: "map_prog", scope: !1004, file: !286, line: 849, type: !1017)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1018 = !DILocalVariable(name: "lc_messages", scope: !1004, file: !286, line: 861, type: !265)
!1019 = !DILocalVariable(name: "url_program", scope: !1004, file: !286, line: 874, type: !265)
!1020 = !DILocation(line: 0, scope: !1004, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 822, column: 7, scope: !956)
!1022 = !DILocation(line: 857, column: 3, scope: !1004, inlinedAt: !1021)
!1023 = !DILocation(line: 861, column: 29, scope: !1004, inlinedAt: !1021)
!1024 = !DILocation(line: 862, column: 7, scope: !1025, inlinedAt: !1021)
!1025 = distinct !DILexicalBlock(scope: !1004, file: !286, line: 862, column: 7)
!1026 = !DILocation(line: 862, column: 19, scope: !1025, inlinedAt: !1021)
!1027 = !DILocation(line: 862, column: 22, scope: !1025, inlinedAt: !1021)
!1028 = !DILocation(line: 862, column: 7, scope: !1004, inlinedAt: !1021)
!1029 = !DILocation(line: 868, column: 7, scope: !1030, inlinedAt: !1021)
!1030 = distinct !DILexicalBlock(scope: !1025, file: !286, line: 863, column: 5)
!1031 = !DILocation(line: 870, column: 5, scope: !1030, inlinedAt: !1021)
!1032 = !DILocation(line: 875, column: 3, scope: !1004, inlinedAt: !1021)
!1033 = !DILocation(line: 877, column: 3, scope: !1004, inlinedAt: !1021)
!1034 = !DILocation(line: 824, column: 3, scope: !940)
!1035 = !DISubprogram(name: "dcgettext", scope: !1036, file: !1036, line: 51, type: !1037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1036 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!317, !265, !265, !260}
!1039 = !{}
!1040 = !DISubprogram(name: "__fprintf_chk", scope: !1041, file: !1041, line: 93, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1041 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!260, !1044, !260, !1045, null}
!1044 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !309)
!1045 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !265)
!1046 = !DISubprogram(name: "fputs_unlocked", scope: !1047, file: !1047, line: 691, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1047 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!260, !1045, !1044}
!1050 = !DILocation(line: 0, scope: !285)
!1051 = !DILocation(line: 581, column: 7, scope: !294)
!1052 = !{!1053, !1053, i64 0}
!1053 = !{!"int", !953, i64 0}
!1054 = !DILocation(line: 581, column: 19, scope: !294)
!1055 = !DILocation(line: 581, column: 7, scope: !285)
!1056 = !DILocation(line: 585, column: 26, scope: !293)
!1057 = !DILocation(line: 0, scope: !293)
!1058 = !DILocation(line: 586, column: 23, scope: !293)
!1059 = !DILocation(line: 586, column: 28, scope: !293)
!1060 = !DILocation(line: 586, column: 32, scope: !293)
!1061 = !{!953, !953, i64 0}
!1062 = !DILocation(line: 586, column: 38, scope: !293)
!1063 = !DILocalVariable(name: "__s1", arg: 1, scope: !1064, file: !1065, line: 1359, type: !265)
!1064 = distinct !DISubprogram(name: "streq", scope: !1065, file: !1065, line: 1359, type: !1066, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1068)
!1065 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!296, !265, !265}
!1068 = !{!1063, !1069}
!1069 = !DILocalVariable(name: "__s2", arg: 2, scope: !1064, file: !1065, line: 1359, type: !265)
!1070 = !DILocation(line: 0, scope: !1064, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 586, column: 41, scope: !293)
!1072 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1071)
!1073 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1071)
!1074 = !DILocation(line: 586, column: 19, scope: !293)
!1075 = !DILocation(line: 587, column: 5, scope: !293)
!1076 = !DILocation(line: 588, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !285, file: !286, line: 588, column: 7)
!1078 = !DILocation(line: 588, column: 7, scope: !285)
!1079 = !DILocation(line: 590, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !286, line: 589, column: 5)
!1081 = !DILocation(line: 591, column: 7, scope: !1080)
!1082 = !DILocation(line: 595, column: 37, scope: !285)
!1083 = !DILocation(line: 595, column: 35, scope: !285)
!1084 = !DILocation(line: 596, column: 29, scope: !285)
!1085 = !DILocation(line: 597, column: 8, scope: !302)
!1086 = !DILocation(line: 597, column: 7, scope: !285)
!1087 = !DILocation(line: 604, column: 24, scope: !301)
!1088 = !DILocation(line: 604, column: 12, scope: !302)
!1089 = !DILocation(line: 0, scope: !300)
!1090 = !DILocation(line: 610, column: 16, scope: !300)
!1091 = !DILocation(line: 610, column: 7, scope: !300)
!1092 = !DILocation(line: 611, column: 21, scope: !300)
!1093 = !{!1094, !1094, i64 0}
!1094 = !{!"short", !953, i64 0}
!1095 = !DILocation(line: 611, column: 19, scope: !300)
!1096 = !DILocation(line: 611, column: 16, scope: !300)
!1097 = !DILocation(line: 610, column: 30, scope: !300)
!1098 = distinct !{!1098, !1091, !1092, !1099}
!1099 = !{!"llvm.loop.mustprogress"}
!1100 = !DILocation(line: 612, column: 18, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !300, file: !286, line: 612, column: 11)
!1102 = !DILocation(line: 612, column: 11, scope: !300)
!1103 = !DILocation(line: 618, column: 5, scope: !300)
!1104 = !DILocation(line: 620, column: 23, scope: !285)
!1105 = !DILocation(line: 625, column: 39, scope: !285)
!1106 = !DILocation(line: 626, column: 3, scope: !285)
!1107 = !DILocation(line: 626, column: 10, scope: !285)
!1108 = !DILocation(line: 626, column: 21, scope: !285)
!1109 = !DILocation(line: 628, column: 44, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !286, line: 628, column: 11)
!1111 = distinct !DILexicalBlock(scope: !285, file: !286, line: 627, column: 5)
!1112 = !DILocation(line: 628, column: 32, scope: !1110)
!1113 = !DILocation(line: 628, column: 49, scope: !1110)
!1114 = !DILocation(line: 628, column: 11, scope: !1111)
!1115 = !DILocation(line: 630, column: 11, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !286, line: 630, column: 11)
!1117 = !DILocation(line: 630, column: 11, scope: !1111)
!1118 = !DILocation(line: 632, column: 26, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !286, line: 632, column: 15)
!1120 = distinct !DILexicalBlock(scope: !1116, file: !286, line: 631, column: 9)
!1121 = !DILocation(line: 632, column: 34, scope: !1119)
!1122 = !DILocation(line: 632, column: 37, scope: !1119)
!1123 = !DILocation(line: 632, column: 15, scope: !1120)
!1124 = !DILocation(line: 636, column: 16, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1120, file: !286, line: 636, column: 15)
!1126 = !DILocation(line: 636, column: 29, scope: !1125)
!1127 = !DILocation(line: 640, column: 16, scope: !1111)
!1128 = distinct !{!1128, !1106, !1129, !1099}
!1129 = !DILocation(line: 641, column: 5, scope: !285)
!1130 = !DILocation(line: 644, column: 3, scope: !285)
!1131 = !DILocation(line: 0, scope: !1064, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 648, column: 31, scope: !285)
!1133 = !DILocation(line: 0, scope: !1064, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 649, column: 31, scope: !285)
!1135 = !DILocation(line: 0, scope: !1064, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 650, column: 31, scope: !285)
!1137 = !DILocation(line: 0, scope: !1064, inlinedAt: !1138)
!1138 = distinct !DILocation(line: 651, column: 31, scope: !285)
!1139 = !DILocation(line: 0, scope: !1064, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 652, column: 31, scope: !285)
!1141 = !DILocation(line: 0, scope: !1064, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 653, column: 31, scope: !285)
!1143 = !DILocation(line: 0, scope: !1064, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 654, column: 31, scope: !285)
!1145 = !DILocation(line: 0, scope: !1064, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 655, column: 31, scope: !285)
!1147 = !DILocation(line: 0, scope: !1064, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 656, column: 31, scope: !285)
!1149 = !DILocation(line: 0, scope: !1064, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 657, column: 31, scope: !285)
!1151 = !DILocation(line: 663, column: 7, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !285, file: !286, line: 663, column: 7)
!1153 = !DILocation(line: 664, column: 7, scope: !1152)
!1154 = !DILocation(line: 664, column: 10, scope: !1152)
!1155 = !DILocation(line: 663, column: 7, scope: !285)
!1156 = !DILocation(line: 669, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !286, line: 665, column: 5)
!1158 = !DILocation(line: 671, column: 5, scope: !1157)
!1159 = !DILocation(line: 676, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1152, file: !286, line: 673, column: 5)
!1161 = !DILocation(line: 679, column: 3, scope: !285)
!1162 = !DILocation(line: 683, column: 3, scope: !285)
!1163 = !DILocation(line: 686, column: 3, scope: !285)
!1164 = !DILocation(line: 688, column: 3, scope: !285)
!1165 = !DILocation(line: 691, column: 3, scope: !285)
!1166 = !DILocation(line: 695, column: 3, scope: !285)
!1167 = !DILocation(line: 696, column: 1, scope: !285)
!1168 = !DISubprogram(name: "__printf_chk", scope: !1041, file: !1041, line: 95, type: !1169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!260, !260, !1045, null}
!1171 = !DISubprogram(name: "setlocale", scope: !1172, file: !1172, line: 122, type: !1173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1172 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!317, !260, !265}
!1175 = !DISubprogram(name: "strncmp", scope: !1176, file: !1176, line: 159, type: !1177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1176 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!260, !265, !265, !262}
!1179 = !DISubprogram(name: "exit", scope: !1180, file: !1180, line: 624, type: !941, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1180 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1181 = !DISubprogram(name: "getenv", scope: !1180, file: !1180, line: 641, type: !1182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!317, !265}
!1184 = !DISubprogram(name: "strcmp", scope: !1176, file: !1176, line: 156, type: !1185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!260, !265, !265}
!1187 = !DISubprogram(name: "strspn", scope: !1176, file: !1176, line: 297, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!264, !265, !265}
!1190 = !DISubprogram(name: "strchr", scope: !1176, file: !1176, line: 246, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!317, !265, !260}
!1193 = !DISubprogram(name: "__ctype_b_loc", scope: !230, file: !230, line: 79, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!1196}
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!1199 = !DISubprogram(name: "strcspn", scope: !1176, file: !1176, line: 293, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1200 = !DISubprogram(name: "fwrite_unlocked", scope: !1047, file: !1047, line: 704, type: !1201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!262, !1203, !262, !262, !1044}
!1203 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1204)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1206 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 843, type: !1207, scopeLine: 844, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1209)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!260, !260, !561}
!1209 = !{!1210, !1211, !1212}
!1210 = !DILocalVariable(name: "margc", arg: 1, scope: !1206, file: !2, line: 843, type: !260)
!1211 = !DILocalVariable(name: "margv", arg: 2, scope: !1206, file: !2, line: 843, type: !561)
!1212 = !DILocalVariable(name: "value", scope: !1206, file: !2, line: 845, type: !296)
!1213 = !DILocation(line: 0, scope: !1206)
!1214 = !DILocation(line: 856, column: 21, scope: !1206)
!1215 = !DILocation(line: 856, column: 3, scope: !1206)
!1216 = !DILocation(line: 857, column: 3, scope: !1206)
!1217 = !DILocation(line: 858, column: 3, scope: !1206)
!1218 = !DILocation(line: 859, column: 3, scope: !1206)
!1219 = !DILocalVariable(name: "status", arg: 1, scope: !1220, file: !286, line: 102, type: !260)
!1220 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !286, file: !286, line: 102, type: !941, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1221)
!1221 = !{!1219}
!1222 = !DILocation(line: 0, scope: !1220, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 861, column: 3, scope: !1206)
!1224 = !DILocation(line: 105, column: 18, scope: !1225, inlinedAt: !1223)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !286, line: 104, column: 7)
!1226 = !DILocation(line: 862, column: 3, scope: !1206)
!1227 = !DILocation(line: 865, column: 8, scope: !1206)
!1228 = !DILocation(line: 893, column: 8, scope: !1206)
!1229 = !DILocation(line: 894, column: 7, scope: !1206)
!1230 = !DILocation(line: 896, column: 11, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 896, column: 7)
!1232 = !DILocation(line: 896, column: 7, scope: !1206)
!1233 = !DILocation(line: 899, column: 27, scope: !1206)
!1234 = !DILocation(line: 899, column: 11, scope: !1206)
!1235 = !DILocation(line: 901, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 901, column: 7)
!1237 = !DILocation(line: 901, column: 14, scope: !1236)
!1238 = !DILocation(line: 901, column: 11, scope: !1236)
!1239 = !DILocation(line: 901, column: 7, scope: !1206)
!1240 = !DILocation(line: 902, column: 24, scope: !1236)
!1241 = !DILocation(line: 902, column: 55, scope: !1236)
!1242 = !DILocation(line: 902, column: 60, scope: !1236)
!1243 = !DILocation(line: 902, column: 48, scope: !1236)
!1244 = !DILocation(line: 902, column: 5, scope: !1236)
!1245 = !DILocation(line: 904, column: 3, scope: !1206)
!1246 = !DILocation(line: 905, column: 1, scope: !1206)
!1247 = !DISubprogram(name: "bindtextdomain", scope: !1036, file: !1036, line: 86, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!317, !265, !265}
!1250 = !DISubprogram(name: "textdomain", scope: !1036, file: !1036, line: 82, type: !1182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1251 = !DISubprogram(name: "atexit", scope: !1180, file: !1180, line: 602, type: !1252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!260, !624}
!1254 = distinct !DISubprogram(name: "posixtest", scope: !2, file: !2, line: 616, type: !1255, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1257)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!296, !260}
!1257 = !{!1258, !1259}
!1258 = !DILocalVariable(name: "nargs", arg: 1, scope: !1254, file: !2, line: 616, type: !260)
!1259 = !DILocalVariable(name: "value", scope: !1254, file: !2, line: 618, type: !296)
!1260 = !DILocation(line: 0, scope: !1254)
!1261 = !DILocation(line: 620, column: 3, scope: !1254)
!1262 = !DILocation(line: 562, column: 10, scope: !1263, inlinedAt: !1266)
!1263 = distinct !DISubprogram(name: "one_argument", scope: !2, file: !2, line: 560, type: !1264, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1039)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!296}
!1266 = distinct !DILocation(line: 623, column: 17, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 621, column: 5)
!1268 = !DILocation(line: 562, column: 18, scope: !1263, inlinedAt: !1266)
!1269 = !DILocation(line: 562, column: 25, scope: !1263, inlinedAt: !1266)
!1270 = !DILocation(line: 624, column: 9, scope: !1267)
!1271 = !DILocation(line: 570, column: 14, scope: !1272, inlinedAt: !1276)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 570, column: 7)
!1273 = distinct !DISubprogram(name: "two_arguments", scope: !2, file: !2, line: 566, type: !1264, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1274)
!1274 = !{!1275}
!1275 = !DILocalVariable(name: "value", scope: !1273, file: !2, line: 568, type: !296)
!1276 = distinct !DILocation(line: 627, column: 17, scope: !1267)
!1277 = !DILocation(line: 570, column: 19, scope: !1272, inlinedAt: !1276)
!1278 = !DILocation(line: 0, scope: !1064, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 570, column: 7, scope: !1272, inlinedAt: !1276)
!1280 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1279)
!1281 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1279)
!1282 = !DILocation(line: 570, column: 7, scope: !1273, inlinedAt: !1276)
!1283 = !DILocalVariable(name: "f", arg: 1, scope: !1284, file: !2, line: 110, type: !296)
!1284 = distinct !DISubprogram(name: "advance", scope: !2, file: !2, line: 110, type: !1285, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1287)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !296}
!1287 = !{!1283}
!1288 = !DILocation(line: 0, scope: !1284, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 572, column: 7, scope: !1290, inlinedAt: !1276)
!1290 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 571, column: 5)
!1291 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1289)
!1292 = !DILocation(line: 562, column: 18, scope: !1263, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 573, column: 17, scope: !1290, inlinedAt: !1276)
!1294 = !DILocation(line: 562, column: 10, scope: !1263, inlinedAt: !1293)
!1295 = !DILocation(line: 562, column: 25, scope: !1263, inlinedAt: !1293)
!1296 = !DILocation(line: 0, scope: !1273, inlinedAt: !1276)
!1297 = !DILocation(line: 574, column: 5, scope: !1290, inlinedAt: !1276)
!1298 = !DILocation(line: 575, column: 12, scope: !1299, inlinedAt: !1276)
!1299 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 575, column: 12)
!1300 = !DILocation(line: 575, column: 25, scope: !1299, inlinedAt: !1276)
!1301 = !DILocation(line: 576, column: 12, scope: !1299, inlinedAt: !1276)
!1302 = !DILocation(line: 576, column: 15, scope: !1299, inlinedAt: !1276)
!1303 = !DILocation(line: 576, column: 28, scope: !1299, inlinedAt: !1276)
!1304 = !DILocation(line: 577, column: 12, scope: !1299, inlinedAt: !1276)
!1305 = !DILocation(line: 577, column: 15, scope: !1299, inlinedAt: !1276)
!1306 = !DILocation(line: 577, column: 28, scope: !1299, inlinedAt: !1276)
!1307 = !DILocation(line: 575, column: 12, scope: !1272, inlinedAt: !1276)
!1308 = !DILocation(line: 579, column: 15, scope: !1309, inlinedAt: !1276)
!1309 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 578, column: 5)
!1310 = !DILocation(line: 582, column: 5, scope: !1299, inlinedAt: !1276)
!1311 = !DILocation(line: 631, column: 17, scope: !1267)
!1312 = !DILocation(line: 632, column: 9, scope: !1267)
!1313 = !DILocation(line: 635, column: 20, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 635, column: 13)
!1315 = !DILocation(line: 635, column: 25, scope: !1314)
!1316 = !DILocation(line: 0, scope: !1064, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 635, column: 13, scope: !1314)
!1318 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1317)
!1319 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1317)
!1320 = !DILocation(line: 635, column: 13, scope: !1267)
!1321 = !DILocation(line: 0, scope: !1284, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 637, column: 13, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 636, column: 11)
!1324 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1322)
!1325 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1322)
!1326 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 114, column: 7)
!1327 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1322)
!1328 = !DILocation(line: 638, column: 22, scope: !1323)
!1329 = !DILocation(line: 638, column: 21, scope: !1323)
!1330 = !DILocation(line: 639, column: 13, scope: !1323)
!1331 = !DILocation(line: 0, scope: !1064, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 641, column: 13, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 641, column: 13)
!1334 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1332)
!1335 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1332)
!1336 = !DILocation(line: 641, column: 36, scope: !1333)
!1337 = !DILocation(line: 641, column: 55, scope: !1333)
!1338 = !DILocation(line: 641, column: 46, scope: !1333)
!1339 = !DILocation(line: 0, scope: !1064, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 641, column: 39, scope: !1333)
!1341 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1340)
!1342 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1340)
!1343 = !DILocation(line: 641, column: 13, scope: !1267)
!1344 = !DILocation(line: 0, scope: !1284, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 643, column: 13, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 642, column: 11)
!1347 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1345)
!1348 = !DILocation(line: 570, column: 14, scope: !1272, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 644, column: 21, scope: !1346)
!1350 = !DILocation(line: 0, scope: !1064, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 570, column: 7, scope: !1272, inlinedAt: !1349)
!1352 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1351)
!1353 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1351)
!1354 = !DILocation(line: 570, column: 7, scope: !1273, inlinedAt: !1349)
!1355 = !DILocation(line: 0, scope: !1284, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 572, column: 7, scope: !1290, inlinedAt: !1349)
!1357 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1356)
!1358 = !DILocation(line: 562, column: 10, scope: !1263, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 573, column: 17, scope: !1290, inlinedAt: !1349)
!1360 = !DILocation(line: 562, column: 25, scope: !1263, inlinedAt: !1359)
!1361 = !DILocation(line: 0, scope: !1273, inlinedAt: !1349)
!1362 = !DILocation(line: 574, column: 5, scope: !1290, inlinedAt: !1349)
!1363 = !DILocation(line: 575, column: 12, scope: !1299, inlinedAt: !1349)
!1364 = !DILocation(line: 575, column: 25, scope: !1299, inlinedAt: !1349)
!1365 = !DILocation(line: 576, column: 12, scope: !1299, inlinedAt: !1349)
!1366 = !DILocation(line: 576, column: 15, scope: !1299, inlinedAt: !1349)
!1367 = !DILocation(line: 576, column: 28, scope: !1299, inlinedAt: !1349)
!1368 = !DILocation(line: 577, column: 12, scope: !1299, inlinedAt: !1349)
!1369 = !DILocation(line: 577, column: 15, scope: !1299, inlinedAt: !1349)
!1370 = !DILocation(line: 577, column: 28, scope: !1299, inlinedAt: !1349)
!1371 = !DILocation(line: 575, column: 12, scope: !1272, inlinedAt: !1349)
!1372 = !DILocation(line: 579, column: 15, scope: !1309, inlinedAt: !1349)
!1373 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 645, column: 13, scope: !1346)
!1375 = !DILocation(line: 582, column: 5, scope: !1299, inlinedAt: !1349)
!1376 = !DILocation(line: 0, scope: !1284, inlinedAt: !1374)
!1377 = !DILocation(line: 646, column: 13, scope: !1346)
!1378 = !DILocation(line: 651, column: 9, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 651, column: 9)
!1380 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 651, column: 9)
!1381 = !DILocation(line: 651, column: 9, scope: !1380)
!1382 = !DILocation(line: 553, column: 7, scope: !1383, inlinedAt: !1385)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 553, column: 7)
!1384 = distinct !DISubprogram(name: "expr", scope: !2, file: !2, line: 551, type: !1264, scopeLine: 552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1039)
!1385 = distinct !DILocation(line: 652, column: 17, scope: !1267)
!1386 = !DILocation(line: 553, column: 14, scope: !1383, inlinedAt: !1385)
!1387 = !DILocation(line: 553, column: 11, scope: !1383, inlinedAt: !1385)
!1388 = !DILocation(line: 553, column: 7, scope: !1384, inlinedAt: !1385)
!1389 = !DILocation(line: 554, column: 5, scope: !1383, inlinedAt: !1385)
!1390 = !DILocation(line: 556, column: 10, scope: !1384, inlinedAt: !1385)
!1391 = !DILocation(line: 653, column: 5, scope: !1267)
!1392 = !DILocation(line: 655, column: 3, scope: !1254)
!1393 = distinct !DISubprogram(name: "test_syntax_error", scope: !2, file: !2, line: 97, type: !1394, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1396)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{null, !265, null}
!1396 = !{!1397, !1398}
!1397 = !DILocalVariable(name: "format", arg: 1, scope: !1393, file: !2, line: 97, type: !265)
!1398 = !DILocalVariable(name: "ap", scope: !1393, file: !2, line: 99, type: !1399)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1400, line: 22, baseType: !1401)
!1400 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1402, baseType: !1403)
!1402 = !DIFile(filename: "src/test.c", directory: "/src")
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1404, size: 192, elements: !207)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1405)
!1405 = !{!1406, !1407, !1408, !1409}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1404, file: !1402, line: 99, baseType: !224, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1404, file: !1402, line: 99, baseType: !224, size: 32, offset: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1404, file: !1402, line: 99, baseType: !354, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1404, file: !1402, line: 99, baseType: !354, size: 64, offset: 128)
!1410 = !DILocation(line: 0, scope: !1393)
!1411 = !DILocation(line: 99, column: 3, scope: !1393)
!1412 = !DILocation(line: 99, column: 11, scope: !1393)
!1413 = !DILocation(line: 100, column: 3, scope: !1393)
!1414 = !DILocation(line: 101, column: 3, scope: !1393)
!1415 = !DILocation(line: 102, column: 3, scope: !1393)
!1416 = distinct !DISubprogram(name: "unary_operator", scope: !2, file: !2, line: 366, type: !1264, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1417)
!1417 = !{!1418, !1452, !1455, !1456, !1460, !1461, !1464, !1465, !1467}
!1418 = !DILocalVariable(name: "stat_buf", scope: !1416, file: !2, line: 368, type: !1419)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1420, line: 26, size: 1152, elements: !1421)
!1420 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1421 = !{!1422, !1424, !1426, !1428, !1430, !1432, !1434, !1435, !1436, !1437, !1439, !1441, !1448, !1449, !1450}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1419, file: !1420, line: 31, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !271, line: 145, baseType: !264)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1419, file: !1420, line: 36, baseType: !1425, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !271, line: 148, baseType: !264)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1419, file: !1420, line: 44, baseType: !1427, size: 64, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !271, line: 151, baseType: !264)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1419, file: !1420, line: 45, baseType: !1429, size: 32, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !271, line: 150, baseType: !224)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1419, file: !1420, line: 47, baseType: !1431, size: 32, offset: 224)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !271, line: 146, baseType: !224)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1419, file: !1420, line: 48, baseType: !1433, size: 32, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !271, line: 147, baseType: !224)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1419, file: !1420, line: 50, baseType: !260, size: 32, offset: 288)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1419, file: !1420, line: 52, baseType: !1423, size: 64, offset: 320)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1419, file: !1420, line: 57, baseType: !336, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1419, file: !1420, line: 61, baseType: !1438, size: 64, offset: 448)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !271, line: 175, baseType: !272)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1419, file: !1420, line: 63, baseType: !1440, size: 64, offset: 512)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !271, line: 180, baseType: !272)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1419, file: !1420, line: 74, baseType: !1442, size: 128, offset: 576)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1443, line: 11, size: 128, elements: !1444)
!1443 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1442, file: !1443, line: 16, baseType: !270, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1442, file: !1443, line: 21, baseType: !1447, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !271, line: 197, baseType: !272)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1419, file: !1420, line: 75, baseType: !1442, size: 128, offset: 704)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1419, file: !1420, line: 76, baseType: !1442, size: 128, offset: 832)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1419, file: !1420, line: 89, baseType: !1451, size: 192, offset: 960)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1447, size: 192, elements: !388)
!1452 = !DILocalVariable(name: "atime", scope: !1453, file: !2, line: 401, type: !1442)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 397, column: 7)
!1454 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 371, column: 5)
!1455 = !DILocalVariable(name: "mtime", scope: !1453, file: !2, line: 402, type: !1442)
!1456 = !DILocalVariable(name: "euid", scope: !1457, file: !2, line: 412, type: !1458)
!1457 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 407, column: 7)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1459, line: 79, baseType: !1431)
!1459 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1460 = !DILocalVariable(name: "NO_UID", scope: !1457, file: !2, line: 413, type: !1458)
!1461 = !DILocalVariable(name: "egid", scope: !1462, file: !2, line: 423, type: !1463)
!1462 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 418, column: 7)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1459, line: 64, baseType: !1433)
!1464 = !DILocalVariable(name: "NO_GID", scope: !1462, file: !2, line: 424, type: !1463)
!1465 = !DILocalVariable(name: "fd", scope: !1466, file: !2, line: 489, type: !272)
!1466 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 488, column: 7)
!1467 = !DILocalVariable(name: "arg", scope: !1466, file: !2, line: 490, type: !265)
!1468 = !DILocation(line: 368, column: 3, scope: !1416)
!1469 = !DILocation(line: 368, column: 15, scope: !1416)
!1470 = !DILocation(line: 370, column: 11, scope: !1416)
!1471 = !DILocation(line: 370, column: 16, scope: !1416)
!1472 = !DILocation(line: 370, column: 3, scope: !1416)
!1473 = !DILocation(line: 373, column: 26, scope: !1454)
!1474 = !DILocation(line: 373, column: 67, scope: !1454)
!1475 = !DILocation(line: 373, column: 72, scope: !1454)
!1476 = !DILocation(line: 373, column: 60, scope: !1454)
!1477 = !DILocation(line: 373, column: 7, scope: !1454)
!1478 = !DILocation(line: 0, scope: !1284, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1481)
!1480 = distinct !DISubprogram(name: "unary_advance", scope: !2, file: !2, line: 119, type: !625, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1039)
!1481 = distinct !DILocation(line: 381, column: 7, scope: !1454)
!1482 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1479)
!1483 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1479)
!1484 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1479)
!1485 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1481)
!1486 = !DILocation(line: 382, column: 20, scope: !1454)
!1487 = !DILocation(line: 382, column: 14, scope: !1454)
!1488 = !DILocation(line: 382, column: 46, scope: !1454)
!1489 = !DILocation(line: 382, column: 7, scope: !1454)
!1490 = !DILocation(line: 0, scope: !1284, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 385, column: 7, scope: !1454)
!1493 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1491)
!1494 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1491)
!1495 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1491)
!1496 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1492)
!1497 = !DILocation(line: 386, column: 26, scope: !1454)
!1498 = !DILocation(line: 386, column: 14, scope: !1454)
!1499 = !DILocation(line: 386, column: 47, scope: !1454)
!1500 = !DILocation(line: 386, column: 7, scope: !1454)
!1501 = !DILocation(line: 0, scope: !1284, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 389, column: 7, scope: !1454)
!1504 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1502)
!1505 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1502)
!1506 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1502)
!1507 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1503)
!1508 = !DILocation(line: 390, column: 26, scope: !1454)
!1509 = !DILocation(line: 390, column: 14, scope: !1454)
!1510 = !DILocation(line: 390, column: 47, scope: !1454)
!1511 = !DILocation(line: 390, column: 7, scope: !1454)
!1512 = !DILocation(line: 0, scope: !1284, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 393, column: 7, scope: !1454)
!1515 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1513)
!1516 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1513)
!1517 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1513)
!1518 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1514)
!1519 = !DILocation(line: 394, column: 26, scope: !1454)
!1520 = !DILocation(line: 394, column: 14, scope: !1454)
!1521 = !DILocation(line: 394, column: 47, scope: !1454)
!1522 = !DILocation(line: 394, column: 7, scope: !1454)
!1523 = !DILocation(line: 0, scope: !1284, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 398, column: 9, scope: !1453)
!1526 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1524)
!1527 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1524)
!1528 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1524)
!1529 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1525)
!1530 = !DILocation(line: 399, column: 19, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1453, file: !2, line: 399, column: 13)
!1532 = !DILocation(line: 399, column: 13, scope: !1531)
!1533 = !DILocation(line: 399, column: 45, scope: !1531)
!1534 = !DILocation(line: 399, column: 13, scope: !1453)
!1535 = !DILocalVariable(name: "st", arg: 1, scope: !1536, file: !1537, line: 147, type: !1540)
!1536 = distinct !DISubprogram(name: "get_stat_atime", scope: !1537, file: !1537, line: 147, type: !1538, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1542)
!1537 = !DIFile(filename: "./lib/stat-time.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f4edb1fd4cb81bf2ea0eec563958d759")
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!1442, !1540}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1419)
!1542 = !{!1535}
!1543 = !DILocation(line: 0, scope: !1536, inlinedAt: !1544)
!1544 = distinct !DILocation(line: 401, column: 33, scope: !1453)
!1545 = !DILocation(line: 150, column: 10, scope: !1536, inlinedAt: !1544)
!1546 = !{i64 0, i64 8, !1547, i64 8, i64 8, !1547}
!1547 = !{!1548, !1548, i64 0}
!1548 = !{!"long", !953, i64 0}
!1549 = !{i64 0, i64 8, !1547}
!1550 = !DILocation(line: 0, scope: !1453)
!1551 = !DILocalVariable(name: "st", arg: 1, scope: !1552, file: !1537, line: 169, type: !1540)
!1552 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1537, file: !1537, line: 169, type: !1538, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1553)
!1553 = !{!1551}
!1554 = !DILocation(line: 0, scope: !1552, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 402, column: 33, scope: !1453)
!1556 = !DILocation(line: 172, column: 10, scope: !1552, inlinedAt: !1555)
!1557 = !DILocalVariable(name: "a", arg: 1, scope: !1558, file: !1559, line: 64, type: !1442)
!1558 = distinct !DISubprogram(name: "timespec_cmp", scope: !1559, file: !1559, line: 64, type: !1560, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1562)
!1559 = !DIFile(filename: "./lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!260, !1442, !1442}
!1562 = !{!1557, !1563}
!1563 = !DILocalVariable(name: "b", arg: 2, scope: !1558, file: !1559, line: 64, type: !1442)
!1564 = !DILocation(line: 0, scope: !1558, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 403, column: 17, scope: !1453)
!1566 = !DILocation(line: 66, column: 14, scope: !1558, inlinedAt: !1565)
!1567 = !DILocation(line: 66, column: 12, scope: !1558, inlinedAt: !1565)
!1568 = !DILocation(line: 66, column: 45, scope: !1558, inlinedAt: !1565)
!1569 = !DILocation(line: 66, column: 43, scope: !1558, inlinedAt: !1565)
!1570 = !DILocation(line: 403, column: 45, scope: !1453)
!1571 = !DILocation(line: 0, scope: !1284, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 408, column: 9, scope: !1457)
!1574 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1572)
!1575 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1572)
!1576 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1572)
!1577 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1573)
!1578 = !DILocation(line: 409, column: 19, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 409, column: 13)
!1580 = !DILocation(line: 409, column: 13, scope: !1579)
!1581 = !DILocation(line: 409, column: 45, scope: !1579)
!1582 = !DILocation(line: 409, column: 13, scope: !1457)
!1583 = !DILocation(line: 411, column: 9, scope: !1457)
!1584 = !DILocation(line: 411, column: 15, scope: !1457)
!1585 = !DILocation(line: 412, column: 22, scope: !1457)
!1586 = !DILocation(line: 0, scope: !1457)
!1587 = !DILocation(line: 414, column: 24, scope: !1457)
!1588 = !DILocation(line: 414, column: 34, scope: !1457)
!1589 = !DILocation(line: 414, column: 37, scope: !1457)
!1590 = !DILocation(line: 414, column: 44, scope: !1457)
!1591 = !DILocation(line: 414, column: 64, scope: !1457)
!1592 = !{!1593, !1053, i64 28}
!1593 = !{!"stat", !1548, i64 0, !1548, i64 8, !1548, i64 16, !1053, i64 24, !1053, i64 28, !1053, i64 32, !1053, i64 36, !1548, i64 40, !1548, i64 48, !1548, i64 56, !1548, i64 64, !1594, i64 72, !1594, i64 88, !1594, i64 104, !953, i64 120}
!1594 = !{!"timespec", !1548, i64 0, !1548, i64 8}
!1595 = !DILocation(line: 414, column: 52, scope: !1457)
!1596 = !DILocation(line: 0, scope: !1284, inlinedAt: !1597)
!1597 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 419, column: 9, scope: !1462)
!1599 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1597)
!1600 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1597)
!1601 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1597)
!1602 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1598)
!1603 = !DILocation(line: 420, column: 19, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1462, file: !2, line: 420, column: 13)
!1605 = !DILocation(line: 420, column: 13, scope: !1604)
!1606 = !DILocation(line: 420, column: 45, scope: !1604)
!1607 = !DILocation(line: 420, column: 13, scope: !1462)
!1608 = !DILocation(line: 422, column: 9, scope: !1462)
!1609 = !DILocation(line: 422, column: 15, scope: !1462)
!1610 = !DILocation(line: 423, column: 22, scope: !1462)
!1611 = !DILocation(line: 0, scope: !1462)
!1612 = !DILocation(line: 425, column: 24, scope: !1462)
!1613 = !DILocation(line: 425, column: 34, scope: !1462)
!1614 = !DILocation(line: 425, column: 37, scope: !1462)
!1615 = !DILocation(line: 425, column: 44, scope: !1462)
!1616 = !DILocation(line: 425, column: 64, scope: !1462)
!1617 = !{!1593, !1053, i64 32}
!1618 = !DILocation(line: 425, column: 52, scope: !1462)
!1619 = !DILocation(line: 0, scope: !1284, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 429, column: 7, scope: !1454)
!1622 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1620)
!1623 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1620)
!1624 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1620)
!1625 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1621)
!1626 = !DILocation(line: 432, column: 21, scope: !1454)
!1627 = !DILocation(line: 432, column: 15, scope: !1454)
!1628 = !DILocation(line: 432, column: 47, scope: !1454)
!1629 = !DILocation(line: 433, column: 15, scope: !1454)
!1630 = !DILocation(line: 432, column: 7, scope: !1454)
!1631 = !DILocation(line: 0, scope: !1284, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 436, column: 7, scope: !1454)
!1634 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1632)
!1635 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1632)
!1636 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1632)
!1637 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1633)
!1638 = !DILocation(line: 437, column: 21, scope: !1454)
!1639 = !DILocation(line: 437, column: 15, scope: !1454)
!1640 = !DILocation(line: 437, column: 47, scope: !1454)
!1641 = !DILocation(line: 438, column: 15, scope: !1454)
!1642 = !DILocation(line: 437, column: 7, scope: !1454)
!1643 = !DILocation(line: 0, scope: !1284, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 441, column: 7, scope: !1454)
!1646 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1644)
!1647 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1644)
!1648 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1644)
!1649 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1645)
!1650 = !DILocation(line: 442, column: 21, scope: !1454)
!1651 = !DILocation(line: 442, column: 15, scope: !1454)
!1652 = !DILocation(line: 442, column: 47, scope: !1454)
!1653 = !DILocation(line: 443, column: 15, scope: !1454)
!1654 = !DILocation(line: 442, column: 7, scope: !1454)
!1655 = !DILocation(line: 0, scope: !1284, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 446, column: 7, scope: !1454)
!1658 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1656)
!1659 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1656)
!1660 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1656)
!1661 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1657)
!1662 = !DILocation(line: 447, column: 21, scope: !1454)
!1663 = !DILocation(line: 447, column: 15, scope: !1454)
!1664 = !DILocation(line: 447, column: 47, scope: !1454)
!1665 = !DILocation(line: 448, column: 15, scope: !1454)
!1666 = !DILocation(line: 447, column: 7, scope: !1454)
!1667 = !DILocation(line: 0, scope: !1284, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 451, column: 7, scope: !1454)
!1670 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1668)
!1671 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1668)
!1672 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1668)
!1673 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1669)
!1674 = !DILocation(line: 452, column: 21, scope: !1454)
!1675 = !DILocation(line: 452, column: 15, scope: !1454)
!1676 = !DILocation(line: 452, column: 47, scope: !1454)
!1677 = !DILocation(line: 453, column: 15, scope: !1454)
!1678 = !DILocation(line: 452, column: 7, scope: !1454)
!1679 = !DILocation(line: 0, scope: !1284, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 456, column: 7, scope: !1454)
!1682 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1680)
!1683 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1680)
!1684 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1680)
!1685 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1681)
!1686 = !DILocation(line: 457, column: 21, scope: !1454)
!1687 = !DILocation(line: 457, column: 15, scope: !1454)
!1688 = !DILocation(line: 457, column: 47, scope: !1454)
!1689 = !DILocation(line: 458, column: 15, scope: !1454)
!1690 = !DILocation(line: 457, column: 7, scope: !1454)
!1691 = !DILocation(line: 0, scope: !1284, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 461, column: 7, scope: !1454)
!1694 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1692)
!1695 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1692)
!1696 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1692)
!1697 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1693)
!1698 = !DILocation(line: 462, column: 21, scope: !1454)
!1699 = !DILocation(line: 462, column: 15, scope: !1454)
!1700 = !DILocation(line: 462, column: 47, scope: !1454)
!1701 = !DILocation(line: 463, column: 15, scope: !1454)
!1702 = !DILocation(line: 462, column: 7, scope: !1454)
!1703 = !DILocation(line: 0, scope: !1284, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 469, column: 7, scope: !1454)
!1706 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1704)
!1707 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1704)
!1708 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1704)
!1709 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1705)
!1710 = !DILocation(line: 470, column: 25, scope: !1454)
!1711 = !DILocalVariable(name: "filename", arg: 1, scope: !1712, file: !1713, line: 49, type: !265)
!1712 = distinct !DISubprogram(name: "issymlink", scope: !1713, file: !1713, line: 49, type: !1714, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1716)
!1713 = !DIFile(filename: "./lib/issymlink.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3ed5fe5c76158b7c9a68dd013fb9e151")
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!260, !265}
!1716 = !{!1711, !1717}
!1717 = !DILocalVariable(name: "linkbuf", scope: !1712, file: !1713, line: 51, type: !206)
!1718 = !DILocation(line: 0, scope: !1712, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 470, column: 14, scope: !1454)
!1720 = !DILocation(line: 51, column: 3, scope: !1712, inlinedAt: !1719)
!1721 = !DILocation(line: 51, column: 8, scope: !1712, inlinedAt: !1719)
!1722 = !DILocation(line: 52, column: 7, scope: !1723, inlinedAt: !1719)
!1723 = distinct !DILexicalBlock(scope: !1712, file: !1713, line: 52, column: 7)
!1724 = !DILocation(line: 52, column: 54, scope: !1723, inlinedAt: !1719)
!1725 = !DILocation(line: 58, column: 1, scope: !1712, inlinedAt: !1719)
!1726 = !DILocation(line: 470, column: 7, scope: !1454)
!1727 = !DILocation(line: 0, scope: !1284, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 473, column: 7, scope: !1454)
!1730 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1728)
!1731 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1728)
!1732 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1728)
!1733 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1729)
!1734 = !DILocation(line: 474, column: 21, scope: !1454)
!1735 = !DILocation(line: 474, column: 15, scope: !1454)
!1736 = !DILocation(line: 474, column: 47, scope: !1454)
!1737 = !DILocation(line: 475, column: 15, scope: !1454)
!1738 = !DILocation(line: 474, column: 7, scope: !1454)
!1739 = !DILocation(line: 0, scope: !1284, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 478, column: 7, scope: !1454)
!1742 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1740)
!1743 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1740)
!1744 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1740)
!1745 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1741)
!1746 = !DILocation(line: 479, column: 21, scope: !1454)
!1747 = !DILocation(line: 479, column: 15, scope: !1454)
!1748 = !DILocation(line: 479, column: 47, scope: !1454)
!1749 = !DILocation(line: 480, column: 15, scope: !1454)
!1750 = !DILocation(line: 479, column: 7, scope: !1454)
!1751 = !DILocation(line: 0, scope: !1284, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 483, column: 7, scope: !1454)
!1754 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1752)
!1755 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1752)
!1756 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1752)
!1757 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1753)
!1758 = !DILocation(line: 484, column: 21, scope: !1454)
!1759 = !DILocation(line: 484, column: 15, scope: !1454)
!1760 = !DILocation(line: 484, column: 47, scope: !1454)
!1761 = !DILocation(line: 485, column: 15, scope: !1454)
!1762 = !DILocation(line: 484, column: 7, scope: !1454)
!1763 = !DILocation(line: 0, scope: !1284, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 491, column: 9, scope: !1466)
!1766 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1764)
!1767 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1764)
!1768 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1764)
!1769 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1765)
!1770 = !DILocation(line: 492, column: 25, scope: !1466)
!1771 = !DILocation(line: 492, column: 15, scope: !1466)
!1772 = !DILocation(line: 0, scope: !1466)
!1773 = !DILocation(line: 493, column: 9, scope: !1466)
!1774 = !DILocation(line: 493, column: 15, scope: !1466)
!1775 = !DILocation(line: 494, column: 14, scope: !1466)
!1776 = !DILocation(line: 495, column: 17, scope: !1466)
!1777 = !DILocation(line: 495, column: 23, scope: !1466)
!1778 = !DILocation(line: 495, column: 33, scope: !1466)
!1779 = !DILocation(line: 495, column: 72, scope: !1466)
!1780 = !DILocation(line: 495, column: 64, scope: !1466)
!1781 = !DILocation(line: 495, column: 61, scope: !1466)
!1782 = !DILocation(line: 0, scope: !1284, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 499, column: 7, scope: !1454)
!1785 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1783)
!1786 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1783)
!1787 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1783)
!1788 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1784)
!1789 = !DILocation(line: 500, column: 14, scope: !1454)
!1790 = !DILocation(line: 500, column: 31, scope: !1454)
!1791 = !DILocation(line: 500, column: 7, scope: !1454)
!1792 = !DILocation(line: 0, scope: !1284, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 121, column: 3, scope: !1480, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 503, column: 7, scope: !1454)
!1795 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1793)
!1796 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1793)
!1797 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1793)
!1798 = !DILocation(line: 122, column: 3, scope: !1480, inlinedAt: !1794)
!1799 = !DILocation(line: 504, column: 14, scope: !1454)
!1800 = !DILocation(line: 504, column: 31, scope: !1454)
!1801 = !DILocation(line: 504, column: 7, scope: !1454)
!1802 = !DILocation(line: 0, scope: !1454)
!1803 = !DILocation(line: 506, column: 1, scope: !1416)
!1804 = distinct !DISubprogram(name: "beyond", scope: !2, file: !2, line: 130, type: !625, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1039)
!1805 = !DILocation(line: 132, column: 22, scope: !1804)
!1806 = !DILocation(line: 132, column: 61, scope: !1804)
!1807 = !DILocation(line: 132, column: 66, scope: !1804)
!1808 = !DILocation(line: 132, column: 71, scope: !1804)
!1809 = !DILocation(line: 132, column: 54, scope: !1804)
!1810 = !DILocation(line: 132, column: 3, scope: !1804)
!1811 = distinct !DISubprogram(name: "three_arguments", scope: !2, file: !2, line: 587, type: !1264, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1812)
!1812 = !{!1813, !1814}
!1813 = !DILocalVariable(name: "value", scope: !1811, file: !2, line: 589, type: !296)
!1814 = !DILocalVariable(name: "bop", scope: !1811, file: !2, line: 590, type: !260)
!1815 = !DILocation(line: 590, column: 20, scope: !1811)
!1816 = !DILocation(line: 590, column: 25, scope: !1811)
!1817 = !DILocation(line: 590, column: 29, scope: !1811)
!1818 = !DILocation(line: 590, column: 13, scope: !1811)
!1819 = !DILocation(line: 0, scope: !1811)
!1820 = !DILocation(line: 592, column: 9, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 592, column: 7)
!1822 = !DILocation(line: 592, column: 7, scope: !1811)
!1823 = !DILocation(line: 593, column: 13, scope: !1821)
!1824 = !DILocation(line: 593, column: 5, scope: !1821)
!1825 = !DILocation(line: 594, column: 19, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1821, file: !2, line: 594, column: 12)
!1827 = !DILocation(line: 0, scope: !1064, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 594, column: 12, scope: !1826)
!1829 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1828)
!1830 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1828)
!1831 = !DILocation(line: 594, column: 12, scope: !1821)
!1832 = !DILocation(line: 0, scope: !1284, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 596, column: 7, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1826, file: !2, line: 595, column: 5)
!1835 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1833)
!1836 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1833)
!1837 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1833)
!1838 = !DILocation(line: 0, scope: !1064, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 570, column: 7, scope: !1272, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 597, column: 16, scope: !1834)
!1841 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1839)
!1842 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1839)
!1843 = !DILocation(line: 570, column: 7, scope: !1273, inlinedAt: !1840)
!1844 = !DILocation(line: 0, scope: !1284, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 572, column: 7, scope: !1290, inlinedAt: !1840)
!1846 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1845)
!1847 = !DILocation(line: 562, column: 18, scope: !1263, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 573, column: 17, scope: !1290, inlinedAt: !1840)
!1849 = !DILocation(line: 562, column: 10, scope: !1263, inlinedAt: !1848)
!1850 = !DILocation(line: 562, column: 25, scope: !1263, inlinedAt: !1848)
!1851 = !DILocation(line: 0, scope: !1273, inlinedAt: !1840)
!1852 = !DILocation(line: 574, column: 5, scope: !1290, inlinedAt: !1840)
!1853 = !DILocation(line: 575, column: 12, scope: !1299, inlinedAt: !1840)
!1854 = !DILocation(line: 575, column: 25, scope: !1299, inlinedAt: !1840)
!1855 = !DILocation(line: 576, column: 12, scope: !1299, inlinedAt: !1840)
!1856 = !DILocation(line: 576, column: 15, scope: !1299, inlinedAt: !1840)
!1857 = !DILocation(line: 576, column: 28, scope: !1299, inlinedAt: !1840)
!1858 = !DILocation(line: 577, column: 12, scope: !1299, inlinedAt: !1840)
!1859 = !DILocation(line: 577, column: 15, scope: !1299, inlinedAt: !1840)
!1860 = !DILocation(line: 577, column: 28, scope: !1299, inlinedAt: !1840)
!1861 = !DILocation(line: 575, column: 12, scope: !1272, inlinedAt: !1840)
!1862 = !DILocation(line: 579, column: 15, scope: !1309, inlinedAt: !1840)
!1863 = !DILocation(line: 582, column: 5, scope: !1299, inlinedAt: !1840)
!1864 = !DILocation(line: 597, column: 15, scope: !1834)
!1865 = !DILocation(line: 598, column: 5, scope: !1834)
!1866 = !DILocation(line: 0, scope: !1064, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 599, column: 12, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1826, file: !2, line: 599, column: 12)
!1869 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1867)
!1870 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1867)
!1871 = !DILocation(line: 599, column: 35, scope: !1868)
!1872 = !DILocation(line: 599, column: 54, scope: !1868)
!1873 = !DILocation(line: 599, column: 45, scope: !1868)
!1874 = !DILocation(line: 0, scope: !1064, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 599, column: 38, scope: !1868)
!1876 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1875)
!1877 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1875)
!1878 = !DILocation(line: 599, column: 12, scope: !1826)
!1879 = !DILocation(line: 0, scope: !1284, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 601, column: 7, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1868, file: !2, line: 600, column: 5)
!1882 = !DILocation(line: 562, column: 10, scope: !1263, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 602, column: 15, scope: !1881)
!1884 = !DILocation(line: 562, column: 25, scope: !1263, inlinedAt: !1883)
!1885 = !DILocation(line: 0, scope: !1284, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 603, column: 7, scope: !1881)
!1887 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1886)
!1888 = !DILocation(line: 604, column: 5, scope: !1881)
!1889 = !DILocation(line: 0, scope: !1064, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 605, column: 12, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1868, file: !2, line: 605, column: 12)
!1892 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1890)
!1893 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1890)
!1894 = !DILocation(line: 605, column: 40, scope: !1891)
!1895 = !DILocation(line: 0, scope: !1064, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 605, column: 43, scope: !1891)
!1897 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1896)
!1898 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1896)
!1899 = !DILocation(line: 606, column: 12, scope: !1891)
!1900 = !DILocation(line: 0, scope: !1064, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 606, column: 15, scope: !1891)
!1902 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1901)
!1903 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1901)
!1904 = !DILocation(line: 606, column: 42, scope: !1891)
!1905 = !DILocation(line: 0, scope: !1064, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 606, column: 45, scope: !1891)
!1907 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1906)
!1908 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1906)
!1909 = !DILocation(line: 605, column: 12, scope: !1868)
!1910 = !DILocation(line: 553, column: 14, scope: !1383, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 607, column: 13, scope: !1891)
!1912 = !DILocation(line: 553, column: 11, scope: !1383, inlinedAt: !1911)
!1913 = !DILocation(line: 553, column: 7, scope: !1384, inlinedAt: !1911)
!1914 = !DILocation(line: 554, column: 5, scope: !1383, inlinedAt: !1911)
!1915 = !DILocation(line: 556, column: 10, scope: !1384, inlinedAt: !1911)
!1916 = !DILocation(line: 609, column: 24, scope: !1891)
!1917 = !DILocation(line: 610, column: 31, scope: !1891)
!1918 = !DILocation(line: 610, column: 36, scope: !1891)
!1919 = !DILocation(line: 610, column: 40, scope: !1891)
!1920 = !DILocation(line: 610, column: 24, scope: !1891)
!1921 = !DILocation(line: 609, column: 5, scope: !1891)
!1922 = !DILocation(line: 611, column: 3, scope: !1811)
!1923 = !DISubprogram(name: "__assert_fail", scope: !1924, file: !1924, line: 69, type: !1925, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!1924 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1925 = !DISubroutineType(types: !1926)
!1926 = !{null, !265, !265, !224, !265}
!1927 = distinct !DISubprogram(name: "or", scope: !2, file: !2, line: 533, type: !1264, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1928)
!1928 = !{!1929}
!1929 = !DILocalVariable(name: "value", scope: !1927, file: !2, line: 535, type: !296)
!1930 = !DILocation(line: 0, scope: !1927)
!1931 = !DILocalVariable(name: "value", scope: !1932, file: !2, line: 516, type: !296)
!1932 = distinct !DISubprogram(name: "and", scope: !2, file: !2, line: 514, type: !1264, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1933)
!1933 = !{!1931}
!1934 = !DILocation(line: 0, scope: !1932, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 539, column: 16, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1927, file: !2, line: 538, column: 5)
!1937 = !DILocalVariable(name: "negated", scope: !1938, file: !2, line: 227, type: !296)
!1938 = distinct !DISubprogram(name: "term", scope: !2, file: !2, line: 224, type: !1264, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1939)
!1939 = !{!1940, !1937, !1941, !1942}
!1940 = !DILocalVariable(name: "value", scope: !1938, file: !2, line: 226, type: !296)
!1941 = !DILocalVariable(name: "bop", scope: !1938, file: !2, line: 228, type: !260)
!1942 = !DILocalVariable(name: "nargs", scope: !1943, file: !2, line: 243, type: !260)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !2, line: 242, column: 5)
!1944 = distinct !DILexicalBlock(scope: !1938, file: !2, line: 241, column: 7)
!1945 = !DILocation(line: 0, scope: !1938, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 520, column: 16, scope: !1947, inlinedAt: !1935)
!1947 = distinct !DILexicalBlock(scope: !1932, file: !2, line: 519, column: 5)
!1948 = !DILocation(line: 231, column: 14, scope: !1938, inlinedAt: !1946)
!1949 = !DILocation(line: 231, column: 21, scope: !1938, inlinedAt: !1946)
!1950 = !DILocation(line: 537, column: 3, scope: !1927)
!1951 = !DILocation(line: 231, column: 24, scope: !1938, inlinedAt: !1946)
!1952 = !DILocation(line: 231, column: 37, scope: !1938, inlinedAt: !1946)
!1953 = !DILocation(line: 231, column: 44, scope: !1938, inlinedAt: !1946)
!1954 = !DILocation(line: 231, column: 47, scope: !1938, inlinedAt: !1946)
!1955 = !DILocation(line: 231, column: 60, scope: !1938, inlinedAt: !1946)
!1956 = !DILocation(line: 231, column: 3, scope: !1938, inlinedAt: !1946)
!1957 = !DILocation(line: 0, scope: !1284, inlinedAt: !1958)
!1958 = distinct !DILocation(line: 233, column: 7, scope: !1959, inlinedAt: !1946)
!1959 = distinct !DILexicalBlock(scope: !1938, file: !2, line: 232, column: 5)
!1960 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1958)
!1961 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1958)
!1962 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1958)
!1963 = !DILocation(line: 234, column: 17, scope: !1959, inlinedAt: !1946)
!1964 = distinct !{!1964, !1956, !1965, !1099}
!1965 = !DILocation(line: 235, column: 5, scope: !1938, inlinedAt: !1946)
!1966 = !DILocation(line: 238, column: 5, scope: !1967, inlinedAt: !1946)
!1967 = distinct !DILexicalBlock(scope: !1938, file: !2, line: 237, column: 7)
!1968 = !DILocation(line: 241, column: 7, scope: !1944, inlinedAt: !1946)
!1969 = !DILocation(line: 241, column: 20, scope: !1944, inlinedAt: !1946)
!1970 = !DILocation(line: 241, column: 27, scope: !1944, inlinedAt: !1946)
!1971 = !DILocation(line: 241, column: 30, scope: !1944, inlinedAt: !1946)
!1972 = !DILocation(line: 241, column: 43, scope: !1944, inlinedAt: !1946)
!1973 = !DILocation(line: 241, column: 7, scope: !1938, inlinedAt: !1946)
!1974 = !DILocation(line: 0, scope: !1284, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 245, column: 7, scope: !1943, inlinedAt: !1946)
!1976 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !1975)
!1977 = !DILocation(line: 114, column: 9, scope: !1326, inlinedAt: !1975)
!1978 = !DILocation(line: 0, scope: !1943, inlinedAt: !1946)
!1979 = !DILocation(line: 248, column: 16, scope: !1980, inlinedAt: !1946)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !2, line: 247, column: 7)
!1981 = distinct !DILexicalBlock(scope: !1943, file: !2, line: 247, column: 7)
!1982 = !DILocation(line: 248, column: 24, scope: !1980, inlinedAt: !1946)
!1983 = !DILocation(line: 248, column: 31, scope: !1980, inlinedAt: !1946)
!1984 = !DILocation(line: 247, column: 7, scope: !1981, inlinedAt: !1946)
!1985 = !DILocation(line: 248, column: 43, scope: !1980, inlinedAt: !1946)
!1986 = !DILocation(line: 0, scope: !1064, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 248, column: 36, scope: !1980, inlinedAt: !1946)
!1988 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1987)
!1989 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1987)
!1990 = !DILocation(line: 115, column: 5, scope: !1326, inlinedAt: !1975)
!1991 = distinct !{!1991, !1984, !1992, !1099}
!1992 = !DILocation(line: 254, column: 11, scope: !1981, inlinedAt: !1946)
!1993 = !DILocation(line: 0, scope: !1981, inlinedAt: !1946)
!1994 = !DILocation(line: 256, column: 15, scope: !1943, inlinedAt: !1946)
!1995 = !DILocation(line: 257, column: 12, scope: !1996, inlinedAt: !1946)
!1996 = distinct !DILexicalBlock(scope: !1943, file: !2, line: 257, column: 11)
!1997 = !DILocation(line: 257, column: 17, scope: !1996, inlinedAt: !1946)
!1998 = !DILocation(line: 257, column: 11, scope: !1943, inlinedAt: !1946)
!1999 = !DILocation(line: 258, column: 28, scope: !1996, inlinedAt: !1946)
!2000 = !DILocation(line: 258, column: 46, scope: !1996, inlinedAt: !1946)
!2001 = !DILocation(line: 258, column: 9, scope: !1996, inlinedAt: !1946)
!2002 = !DILocation(line: 260, column: 13, scope: !2003, inlinedAt: !1946)
!2003 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 260, column: 13)
!2004 = !DILocation(line: 260, column: 26, scope: !2003, inlinedAt: !1946)
!2005 = !DILocation(line: 260, column: 33, scope: !2003, inlinedAt: !1946)
!2006 = !DILocation(line: 260, column: 36, scope: !2003, inlinedAt: !1946)
!2007 = !DILocation(line: 260, column: 13, scope: !1996, inlinedAt: !1946)
!2008 = !DILocation(line: 261, column: 30, scope: !2003, inlinedAt: !1946)
!2009 = !DILocation(line: 262, column: 30, scope: !2003, inlinedAt: !1946)
!2010 = !DILocation(line: 262, column: 60, scope: !2003, inlinedAt: !1946)
!2011 = !DILocation(line: 262, column: 65, scope: !2003, inlinedAt: !1946)
!2012 = !DILocation(line: 262, column: 48, scope: !2003, inlinedAt: !1946)
!2013 = !DILocation(line: 261, column: 11, scope: !2003, inlinedAt: !1946)
!2014 = !DILocation(line: 0, scope: !1284, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 263, column: 7, scope: !1943, inlinedAt: !1946)
!2016 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !2015)
!2017 = !DILocation(line: 264, column: 5, scope: !1943, inlinedAt: !1946)
!2018 = !DILocation(line: 267, column: 22, scope: !2019, inlinedAt: !1946)
!2019 = distinct !DILexicalBlock(scope: !1944, file: !2, line: 267, column: 12)
!2020 = !DILocation(line: 267, column: 14, scope: !2019, inlinedAt: !1946)
!2021 = !DILocation(line: 267, column: 28, scope: !2019, inlinedAt: !1946)
!2022 = !DILocation(line: 0, scope: !1064, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 267, column: 31, scope: !2019, inlinedAt: !1946)
!2024 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2023)
!2025 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2023)
!2026 = !DILocation(line: 268, column: 12, scope: !2019, inlinedAt: !1946)
!2027 = !DILocation(line: 268, column: 34, scope: !2019, inlinedAt: !1946)
!2028 = !DILocation(line: 268, column: 27, scope: !2019, inlinedAt: !1946)
!2029 = !DILocation(line: 268, column: 17, scope: !2019, inlinedAt: !1946)
!2030 = !DILocation(line: 267, column: 12, scope: !1944, inlinedAt: !1946)
!2031 = !DILocation(line: 269, column: 13, scope: !2019, inlinedAt: !1946)
!2032 = !DILocation(line: 269, column: 5, scope: !2019, inlinedAt: !1946)
!2033 = !DILocation(line: 270, column: 14, scope: !2034, inlinedAt: !1946)
!2034 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 270, column: 12)
!2035 = !DILocation(line: 271, column: 12, scope: !2034, inlinedAt: !1946)
!2036 = !DILocation(line: 271, column: 34, scope: !2034, inlinedAt: !1946)
!2037 = !DILocation(line: 271, column: 27, scope: !2034, inlinedAt: !1946)
!2038 = !DILocation(line: 271, column: 17, scope: !2034, inlinedAt: !1946)
!2039 = !DILocation(line: 270, column: 12, scope: !2019, inlinedAt: !1946)
!2040 = !DILocation(line: 272, column: 13, scope: !2034, inlinedAt: !1946)
!2041 = !DILocation(line: 272, column: 5, scope: !2034, inlinedAt: !1946)
!2042 = !DILocation(line: 275, column: 25, scope: !2043, inlinedAt: !1946)
!2043 = distinct !DILexicalBlock(scope: !2034, file: !2, line: 275, column: 12)
!2044 = !DILocation(line: 275, column: 32, scope: !2043, inlinedAt: !1946)
!2045 = !DILocation(line: 275, column: 35, scope: !2043, inlinedAt: !1946)
!2046 = !DILocation(line: 275, column: 48, scope: !2043, inlinedAt: !1946)
!2047 = !DILocation(line: 275, column: 51, scope: !2043, inlinedAt: !1946)
!2048 = !DILocation(line: 275, column: 64, scope: !2043, inlinedAt: !1946)
!2049 = !DILocation(line: 275, column: 12, scope: !2034, inlinedAt: !1946)
!2050 = !DILocation(line: 276, column: 13, scope: !2043, inlinedAt: !1946)
!2051 = !DILocation(line: 276, column: 5, scope: !2043, inlinedAt: !1946)
!2052 = !DILocation(line: 279, column: 29, scope: !2053, inlinedAt: !1946)
!2053 = distinct !DILexicalBlock(scope: !2043, file: !2, line: 278, column: 5)
!2054 = !DILocation(line: 0, scope: !1284, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 280, column: 7, scope: !2053, inlinedAt: !1946)
!2056 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !2055)
!2057 = !DILocation(line: 283, column: 18, scope: !1938, inlinedAt: !1946)
!2058 = !DILocation(line: 520, column: 13, scope: !1947, inlinedAt: !1935)
!2059 = !DILocation(line: 521, column: 14, scope: !2060, inlinedAt: !1935)
!2060 = distinct !DILexicalBlock(scope: !1947, file: !2, line: 521, column: 11)
!2061 = !DILocation(line: 521, column: 20, scope: !2060, inlinedAt: !1935)
!2062 = !DILocation(line: 521, column: 18, scope: !2060, inlinedAt: !1935)
!2063 = !DILocation(line: 521, column: 25, scope: !2060, inlinedAt: !1935)
!2064 = !DILocation(line: 521, column: 35, scope: !2060, inlinedAt: !1935)
!2065 = !DILocation(line: 0, scope: !1064, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 521, column: 28, scope: !2060, inlinedAt: !1935)
!2067 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2066)
!2068 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2066)
!2069 = !DILocation(line: 521, column: 11, scope: !1947, inlinedAt: !1935)
!2070 = !DILocation(line: 0, scope: !1284, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 523, column: 7, scope: !1947, inlinedAt: !1935)
!2072 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !2071)
!2073 = distinct !{!2073, !2074, !2075}
!2074 = !DILocation(line: 518, column: 3, scope: !1932, inlinedAt: !1935)
!2075 = !DILocation(line: 524, column: 5, scope: !1932, inlinedAt: !1935)
!2076 = !DILocation(line: 539, column: 13, scope: !1936)
!2077 = !DILocation(line: 0, scope: !1064, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 540, column: 28, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1936, file: !2, line: 540, column: 11)
!2080 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2078)
!2081 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2078)
!2082 = !DILocation(line: 540, column: 11, scope: !1936)
!2083 = !DILocation(line: 541, column: 9, scope: !2079)
!2084 = !DILocation(line: 0, scope: !1284, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 542, column: 7, scope: !1936)
!2086 = !DILocation(line: 112, column: 3, scope: !1284, inlinedAt: !2085)
!2087 = distinct !{!2087, !1950, !2088}
!2088 = !DILocation(line: 543, column: 5, scope: !1927)
!2089 = distinct !DISubprogram(name: "binop", scope: !2, file: !2, line: 186, type: !1714, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2090)
!2090 = !{!2091}
!2091 = !DILocalVariable(name: "s", arg: 1, scope: !2089, file: !2, line: 186, type: !265)
!2092 = !DILocation(line: 0, scope: !2089)
!2093 = !DILocation(line: 0, scope: !1064, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 188, column: 13, scope: !2089)
!2095 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2094)
!2096 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2094)
!2097 = !DILocation(line: 188, column: 13, scope: !2089)
!2098 = !DILocation(line: 0, scope: !1064, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 189, column: 13, scope: !2089)
!2100 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2099)
!2101 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2099)
!2102 = !DILocation(line: 189, column: 13, scope: !2089)
!2103 = !DILocation(line: 0, scope: !1064, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 190, column: 13, scope: !2089)
!2105 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2104)
!2106 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2104)
!2107 = !DILocation(line: 190, column: 13, scope: !2089)
!2108 = !DILocation(line: 0, scope: !1064, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 191, column: 13, scope: !2089)
!2110 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2109)
!2111 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2109)
!2112 = !DILocation(line: 191, column: 13, scope: !2089)
!2113 = !DILocation(line: 0, scope: !1064, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 192, column: 13, scope: !2089)
!2115 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2114)
!2116 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2114)
!2117 = !DILocation(line: 192, column: 13, scope: !2089)
!2118 = !DILocation(line: 0, scope: !1064, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 193, column: 13, scope: !2089)
!2120 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2119)
!2121 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2119)
!2122 = !DILocation(line: 193, column: 13, scope: !2089)
!2123 = !DILocation(line: 0, scope: !1064, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 194, column: 13, scope: !2089)
!2125 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2124)
!2126 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2124)
!2127 = !DILocation(line: 194, column: 13, scope: !2089)
!2128 = !DILocation(line: 0, scope: !1064, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 195, column: 13, scope: !2089)
!2130 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2129)
!2131 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2129)
!2132 = !DILocation(line: 195, column: 13, scope: !2089)
!2133 = !DILocation(line: 0, scope: !1064, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 196, column: 13, scope: !2089)
!2135 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2134)
!2136 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2134)
!2137 = !DILocation(line: 196, column: 13, scope: !2089)
!2138 = !DILocation(line: 0, scope: !1064, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 197, column: 13, scope: !2089)
!2140 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2139)
!2141 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2139)
!2142 = !DILocation(line: 197, column: 13, scope: !2089)
!2143 = !DILocation(line: 0, scope: !1064, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 198, column: 13, scope: !2089)
!2145 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2144)
!2146 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2144)
!2147 = !DILocation(line: 198, column: 13, scope: !2089)
!2148 = !DILocation(line: 0, scope: !1064, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 199, column: 13, scope: !2089)
!2150 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2149)
!2151 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2149)
!2152 = !DILocation(line: 199, column: 13, scope: !2089)
!2153 = !DILocation(line: 0, scope: !1064, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 200, column: 13, scope: !2089)
!2155 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2154)
!2156 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2154)
!2157 = !DILocation(line: 200, column: 13, scope: !2089)
!2158 = !DILocation(line: 0, scope: !1064, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 201, column: 13, scope: !2089)
!2160 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2159)
!2161 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2159)
!2162 = !DILocation(line: 201, column: 13, scope: !2089)
!2163 = !DILocation(line: 188, column: 3, scope: !2089)
!2164 = distinct !DISubprogram(name: "binary_operator", scope: !2, file: !2, line: 287, type: !2165, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2167)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!296, !296, !244}
!2167 = !{!2168, !2169, !2170, !2171, !2172, !2175, !2176, !2177, !2178, !2179, !2181, !2185}
!2168 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !2164, file: !2, line: 287, type: !296)
!2169 = !DILocalVariable(name: "bop", arg: 2, scope: !2164, file: !2, line: 287, type: !244)
!2170 = !DILocalVariable(name: "op", scope: !2164, file: !2, line: 289, type: !260)
!2171 = !DILocalVariable(name: "r_is_l", scope: !2164, file: !2, line: 296, type: !296)
!2172 = !DILocalVariable(name: "lbuf", scope: !2173, file: !2, line: 307, type: !621)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 306, column: 7)
!2174 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 303, column: 5)
!2175 = !DILocalVariable(name: "rbuf", scope: !2173, file: !2, line: 308, type: !621)
!2176 = !DILocalVariable(name: "l", scope: !2173, file: !2, line: 309, type: !265)
!2177 = !DILocalVariable(name: "r", scope: !2173, file: !2, line: 312, type: !265)
!2178 = !DILocalVariable(name: "cmp", scope: !2173, file: !2, line: 315, type: !260)
!2179 = !DILocalVariable(name: "cmp", scope: !2180, file: !2, line: 333, type: !260)
!2180 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 329, column: 7)
!2181 = !DILocalVariable(name: "st", scope: !2182, file: !2, line: 343, type: !2184)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !2, line: 342, column: 9)
!2183 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 339, column: 11)
!2184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1419, size: 2304, elements: !45)
!2185 = !DILocalVariable(name: "cmp", scope: !2186, file: !2, line: 356, type: !260)
!2186 = distinct !DILexicalBlock(scope: !2174, file: !2, line: 355, column: 7)
!2187 = !DILocation(line: 0, scope: !2164)
!2188 = !DILocation(line: 291, column: 7, scope: !2164)
!2189 = !DILocation(line: 293, column: 12, scope: !2164)
!2190 = !DILocation(line: 296, column: 22, scope: !2164)
!2191 = !DILocation(line: 296, column: 27, scope: !2164)
!2192 = !DILocation(line: 296, column: 20, scope: !2164)
!2193 = !DILocation(line: 296, column: 31, scope: !2164)
!2194 = !DILocation(line: 296, column: 41, scope: !2164)
!2195 = !DILocation(line: 296, column: 49, scope: !2164)
!2196 = !DILocation(line: 0, scope: !1064, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 296, column: 34, scope: !2164)
!2198 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2197)
!2199 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2197)
!2200 = !DILocation(line: 297, column: 7, scope: !2164)
!2201 = !DILocation(line: 300, column: 7, scope: !2164)
!2202 = !DILocation(line: 302, column: 3, scope: !2164)
!2203 = !DILocation(line: 307, column: 9, scope: !2173)
!2204 = !DILocation(line: 307, column: 14, scope: !2173)
!2205 = !DILocation(line: 308, column: 9, scope: !2173)
!2206 = !DILocation(line: 308, column: 14, scope: !2173)
!2207 = !DILocation(line: 0, scope: !2173)
!2208 = !DILocation(line: 309, column: 26, scope: !2173)
!2209 = !DILocation(line: 310, column: 39, scope: !2173)
!2210 = !DILocation(line: 310, column: 28, scope: !2173)
!2211 = !DILocation(line: 311, column: 28, scope: !2173)
!2212 = !DILocation(line: 312, column: 26, scope: !2173)
!2213 = !DILocation(line: 313, column: 55, scope: !2173)
!2214 = !DILocation(line: 313, column: 47, scope: !2173)
!2215 = !DILocation(line: 313, column: 39, scope: !2173)
!2216 = !DILocation(line: 313, column: 28, scope: !2173)
!2217 = !DILocation(line: 314, column: 46, scope: !2173)
!2218 = !DILocation(line: 314, column: 38, scope: !2173)
!2219 = !DILocation(line: 314, column: 28, scope: !2173)
!2220 = !DILocation(line: 315, column: 19, scope: !2173)
!2221 = !DILocation(line: 316, column: 9, scope: !2173)
!2222 = !DILocation(line: 318, column: 37, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2173, file: !2, line: 317, column: 11)
!2224 = !DILocation(line: 318, column: 26, scope: !2223)
!2225 = !DILocation(line: 319, column: 37, scope: !2223)
!2226 = !DILocation(line: 319, column: 26, scope: !2223)
!2227 = !DILocation(line: 320, column: 37, scope: !2223)
!2228 = !DILocation(line: 320, column: 26, scope: !2223)
!2229 = !DILocation(line: 321, column: 37, scope: !2223)
!2230 = !DILocation(line: 321, column: 26, scope: !2223)
!2231 = !DILocation(line: 322, column: 37, scope: !2223)
!2232 = !DILocation(line: 322, column: 26, scope: !2223)
!2233 = !DILocation(line: 323, column: 37, scope: !2223)
!2234 = !DILocation(line: 323, column: 26, scope: !2223)
!2235 = !DILocation(line: 325, column: 9, scope: !2173)
!2236 = !DILocation(line: 0, scope: !2223)
!2237 = !DILocation(line: 326, column: 7, scope: !2174)
!2238 = !DILocation(line: 330, column: 20, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2180, file: !2, line: 330, column: 13)
!2240 = !DILocation(line: 330, column: 13, scope: !2180)
!2241 = !DILocation(line: 331, column: 30, scope: !2239)
!2242 = !DILocation(line: 332, column: 30, scope: !2239)
!2243 = !DILocation(line: 331, column: 11, scope: !2239)
!2244 = !DILocation(line: 333, column: 44, scope: !2180)
!2245 = !DILocalVariable(name: "filename", arg: 1, scope: !2246, file: !2, line: 175, type: !265)
!2246 = distinct !DISubprogram(name: "get_mtime", scope: !2, file: !2, line: 175, type: !2247, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2249)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!1442, !265}
!2249 = !{!2245, !2250}
!2250 = !DILocalVariable(name: "finfo", scope: !2246, file: !2, line: 177, type: !1419)
!2251 = !DILocation(line: 0, scope: !2246, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 333, column: 33, scope: !2180)
!2253 = !DILocation(line: 177, column: 3, scope: !2246, inlinedAt: !2252)
!2254 = !DILocation(line: 177, column: 15, scope: !2246, inlinedAt: !2252)
!2255 = !DILocation(line: 178, column: 11, scope: !2246, inlinedAt: !2252)
!2256 = !DILocation(line: 178, column: 35, scope: !2246, inlinedAt: !2252)
!2257 = !DILocation(line: 181, column: 1, scope: !2246, inlinedAt: !2252)
!2258 = !DILocation(line: 333, column: 33, scope: !2180)
!2259 = !DILocation(line: 334, column: 44, scope: !2180)
!2260 = !DILocation(line: 334, column: 52, scope: !2180)
!2261 = !DILocation(line: 0, scope: !2246, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 334, column: 33, scope: !2180)
!2263 = !DILocation(line: 177, column: 3, scope: !2246, inlinedAt: !2262)
!2264 = !DILocation(line: 177, column: 15, scope: !2246, inlinedAt: !2262)
!2265 = !DILocation(line: 178, column: 11, scope: !2246, inlinedAt: !2262)
!2266 = !DILocation(line: 178, column: 35, scope: !2246, inlinedAt: !2262)
!2267 = !DILocation(line: 181, column: 1, scope: !2246, inlinedAt: !2262)
!2268 = !DILocation(line: 334, column: 33, scope: !2180)
!2269 = !DILocation(line: 0, scope: !1558, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 333, column: 19, scope: !2180)
!2271 = !DILocation(line: 66, column: 14, scope: !1558, inlinedAt: !2270)
!2272 = !DILocation(line: 66, column: 12, scope: !1558, inlinedAt: !2270)
!2273 = !DILocation(line: 66, column: 45, scope: !1558, inlinedAt: !2270)
!2274 = !DILocation(line: 66, column: 43, scope: !1558, inlinedAt: !2270)
!2275 = !DILocation(line: 0, scope: !2180)
!2276 = !DILocation(line: 335, column: 20, scope: !2180)
!2277 = !DILocation(line: 335, column: 16, scope: !2180)
!2278 = !DILocation(line: 339, column: 18, scope: !2183)
!2279 = !DILocation(line: 339, column: 11, scope: !2174)
!2280 = !DILocation(line: 340, column: 28, scope: !2183)
!2281 = !DILocation(line: 340, column: 9, scope: !2183)
!2282 = !DILocation(line: 343, column: 11, scope: !2182)
!2283 = !DILocation(line: 343, column: 23, scope: !2182)
!2284 = !DILocation(line: 344, column: 25, scope: !2182)
!2285 = !DILocation(line: 344, column: 19, scope: !2182)
!2286 = !DILocation(line: 344, column: 47, scope: !2182)
!2287 = !DILocation(line: 345, column: 19, scope: !2182)
!2288 = !DILocation(line: 345, column: 28, scope: !2182)
!2289 = !DILocation(line: 345, column: 36, scope: !2182)
!2290 = !DILocation(line: 345, column: 43, scope: !2182)
!2291 = !DILocation(line: 345, column: 22, scope: !2182)
!2292 = !DILocation(line: 345, column: 50, scope: !2182)
!2293 = !DILocation(line: 346, column: 19, scope: !2182)
!2294 = !DILocalVariable(name: "a", arg: 1, scope: !2295, file: !2296, line: 86, type: !1540)
!2295 = distinct !DISubprogram(name: "psame_inode", scope: !2296, file: !2296, line: 86, type: !2297, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2299)
!2296 = !DIFile(filename: "./lib/same-inode.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6a49db1c884e7bc93549038e7fb28788")
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!296, !1540, !1540}
!2299 = !{!2294, !2300}
!2300 = !DILocalVariable(name: "b", arg: 2, scope: !2295, file: !2296, line: 86, type: !1540)
!2301 = !DILocation(line: 0, scope: !2295, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 346, column: 22, scope: !2182)
!2303 = !DILocation(line: 90, column: 14, scope: !2295, inlinedAt: !2302)
!2304 = !{!1593, !1548, i64 0}
!2305 = !{!1593, !1548, i64 8}
!2306 = !DILocation(line: 0, scope: !2182)
!2307 = !DILocation(line: 347, column: 9, scope: !2183)
!2308 = !DILocation(line: 351, column: 21, scope: !2174)
!2309 = !DILocation(line: 351, column: 43, scope: !2174)
!2310 = !DILocation(line: 351, column: 35, scope: !2174)
!2311 = !DILocation(line: 0, scope: !1064, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 351, column: 14, scope: !2174)
!2313 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2312)
!2314 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2312)
!2315 = !DILocation(line: 351, column: 57, scope: !2174)
!2316 = !DILocation(line: 351, column: 49, scope: !2174)
!2317 = !DILocation(line: 351, column: 7, scope: !2174)
!2318 = !DILocation(line: 356, column: 28, scope: !2186)
!2319 = !DILocation(line: 356, column: 50, scope: !2186)
!2320 = !DILocation(line: 356, column: 42, scope: !2186)
!2321 = !DILocation(line: 356, column: 19, scope: !2186)
!2322 = !DILocation(line: 0, scope: !2186)
!2323 = !DILocation(line: 357, column: 20, scope: !2186)
!2324 = !DILocation(line: 357, column: 16, scope: !2186)
!2325 = !DILocation(line: 362, column: 3, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !2, line: 362, column: 3)
!2327 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 362, column: 3)
!2328 = !DILocation(line: 0, scope: !2174)
!2329 = !DILocation(line: 363, column: 1, scope: !2164)
!2330 = !DISubprogram(name: "strlen", scope: !1176, file: !1176, line: 407, type: !2331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!264, !265}
!2333 = distinct !DISubprogram(name: "find_int", scope: !2, file: !2, line: 139, type: !2334, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2336)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!265, !265}
!2336 = !{!2337, !2338, !2339}
!2337 = !DILocalVariable(name: "string", arg: 1, scope: !2333, file: !2, line: 139, type: !265)
!2338 = !DILocalVariable(name: "p", scope: !2333, file: !2, line: 141, type: !265)
!2339 = !DILocalVariable(name: "number_start", scope: !2333, file: !2, line: 142, type: !265)
!2340 = !DILocation(line: 0, scope: !2333)
!2341 = !DILocation(line: 144, column: 8, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2333, file: !2, line: 144, column: 3)
!2343 = !DILocation(line: 144, scope: !2342)
!2344 = !DILocation(line: 144, column: 20, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2342, file: !2, line: 144, column: 3)
!2346 = !DILocation(line: 144, column: 3, scope: !2342)
!2347 = !DILocation(line: 144, column: 46, scope: !2345)
!2348 = distinct !{!2348, !2346, !2349, !1099}
!2349 = !DILocation(line: 145, column: 5, scope: !2342)
!2350 = !DILocation(line: 147, column: 10, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2333, file: !2, line: 147, column: 7)
!2352 = !DILocation(line: 147, column: 7, scope: !2333)
!2353 = !DILocation(line: 158, column: 18, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2333, file: !2, line: 158, column: 7)
!2355 = !DILocalVariable(name: "c", arg: 1, scope: !2356, file: !2357, line: 233, type: !260)
!2356 = distinct !DISubprogram(name: "c_isdigit", scope: !2357, file: !2357, line: 233, type: !1255, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2358)
!2357 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!2358 = !{!2355}
!2359 = !DILocation(line: 0, scope: !2356, inlinedAt: !2360)
!2360 = distinct !DILocation(line: 158, column: 7, scope: !2354)
!2361 = !DILocation(line: 235, column: 3, scope: !2356, inlinedAt: !2360)
!2362 = !DILocation(line: 158, column: 7, scope: !2333)
!2363 = !DILocation(line: 0, scope: !2354)
!2364 = !DILocation(line: 160, column: 25, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2354, file: !2, line: 159, column: 5)
!2366 = !DILocation(line: 0, scope: !2356, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 160, column: 14, scope: !2365)
!2368 = !DILocation(line: 235, column: 3, scope: !2356, inlinedAt: !2367)
!2369 = !DILocation(line: 160, column: 7, scope: !2365)
!2370 = distinct !{!2370, !2369, !2371, !1099}
!2371 = !DILocation(line: 161, column: 10, scope: !2365)
!2372 = !DILocation(line: 162, column: 14, scope: !2365)
!2373 = !DILocation(line: 162, column: 7, scope: !2365)
!2374 = !DILocation(line: 163, column: 10, scope: !2365)
!2375 = distinct !{!2375, !2373, !2374, !1099}
!2376 = !DILocation(line: 164, column: 12, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 164, column: 11)
!2378 = !DILocation(line: 164, column: 11, scope: !2365)
!2379 = !DILocation(line: 165, column: 9, scope: !2377)
!2380 = !DILocation(line: 168, column: 22, scope: !2333)
!2381 = !DILocation(line: 168, column: 47, scope: !2333)
!2382 = !DILocation(line: 168, column: 3, scope: !2333)
!2383 = !DISubprogram(name: "stat", scope: !2384, file: !2384, line: 205, type: !2385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!2384 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!260, !1045, !2387}
!2387 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2388)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!2389 = !DISubprogram(name: "strcoll", scope: !1176, file: !1176, line: 163, type: !1185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!2390 = !DISubprogram(name: "euidaccess", scope: !2391, file: !2391, line: 292, type: !2392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!2391 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!260, !265, !260}
!2394 = !DISubprogram(name: "__errno_location", scope: !2395, file: !2395, line: 37, type: !2396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!2395 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!2398}
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!2399 = !DISubprogram(name: "geteuid", scope: !2391, file: !2391, line: 700, type: !2400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!1431}
!2402 = !DISubprogram(name: "getegid", scope: !2391, file: !2391, line: 706, type: !2403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!1433}
!2405 = !DISubprogram(name: "strtol", scope: !1180, file: !1180, line: 177, type: !2406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!272, !1045, !2408, !260}
!2408 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !561)
!2409 = !DISubprogram(name: "isatty", scope: !2391, file: !2391, line: 809, type: !2410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!260, !260}
!2412 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !565, file: !565, line: 50, type: !1005, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2413)
!2413 = !{!2414}
!2414 = !DILocalVariable(name: "file", arg: 1, scope: !2412, file: !565, line: 50, type: !265)
!2415 = !DILocation(line: 0, scope: !2412)
!2416 = !DILocation(line: 52, column: 13, scope: !2412)
!2417 = !DILocation(line: 53, column: 1, scope: !2412)
!2418 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !565, file: !565, line: 87, type: !1285, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2419)
!2419 = !{!2420}
!2420 = !DILocalVariable(name: "ignore", arg: 1, scope: !2418, file: !565, line: 87, type: !296)
!2421 = !DILocation(line: 0, scope: !2418)
!2422 = !DILocation(line: 89, column: 16, scope: !2418)
!2423 = !{!2424, !2424, i64 0}
!2424 = !{!"_Bool", !953, i64 0}
!2425 = !DILocation(line: 90, column: 1, scope: !2418)
!2426 = distinct !DISubprogram(name: "close_stdout", scope: !565, file: !565, line: 116, type: !625, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2427)
!2427 = !{!2428}
!2428 = !DILocalVariable(name: "write_error", scope: !2429, file: !565, line: 121, type: !265)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !565, line: 120, column: 5)
!2430 = distinct !DILexicalBlock(scope: !2426, file: !565, line: 118, column: 7)
!2431 = !DILocation(line: 118, column: 21, scope: !2430)
!2432 = !DILocation(line: 118, column: 7, scope: !2430)
!2433 = !DILocation(line: 118, column: 29, scope: !2430)
!2434 = !DILocation(line: 119, column: 7, scope: !2430)
!2435 = !DILocation(line: 119, column: 12, scope: !2430)
!2436 = !{i8 0, i8 2}
!2437 = !DILocation(line: 119, column: 25, scope: !2430)
!2438 = !DILocation(line: 119, column: 28, scope: !2430)
!2439 = !DILocation(line: 119, column: 34, scope: !2430)
!2440 = !DILocation(line: 118, column: 7, scope: !2426)
!2441 = !DILocation(line: 121, column: 33, scope: !2429)
!2442 = !DILocation(line: 0, scope: !2429)
!2443 = !DILocation(line: 122, column: 11, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2429, file: !565, line: 122, column: 11)
!2445 = !DILocation(line: 0, scope: !2444)
!2446 = !DILocation(line: 122, column: 11, scope: !2429)
!2447 = !DILocation(line: 123, column: 9, scope: !2444)
!2448 = !DILocation(line: 126, column: 9, scope: !2444)
!2449 = !DILocation(line: 128, column: 14, scope: !2429)
!2450 = !DILocation(line: 128, column: 7, scope: !2429)
!2451 = !DILocation(line: 133, column: 42, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2426, file: !565, line: 133, column: 7)
!2453 = !DILocation(line: 133, column: 28, scope: !2452)
!2454 = !DILocation(line: 133, column: 50, scope: !2452)
!2455 = !DILocation(line: 133, column: 7, scope: !2426)
!2456 = !DILocation(line: 134, column: 12, scope: !2452)
!2457 = !DILocation(line: 134, column: 5, scope: !2452)
!2458 = !DILocation(line: 135, column: 1, scope: !2426)
!2459 = !DISubprogram(name: "_exit", scope: !2391, file: !2391, line: 624, type: !941, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!2460 = distinct !DISubprogram(name: "verror", scope: !580, file: !580, line: 251, type: !2461, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2463)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{null, !260, !260, !265, !590}
!2463 = !{!2464, !2465, !2466, !2467}
!2464 = !DILocalVariable(name: "status", arg: 1, scope: !2460, file: !580, line: 251, type: !260)
!2465 = !DILocalVariable(name: "errnum", arg: 2, scope: !2460, file: !580, line: 251, type: !260)
!2466 = !DILocalVariable(name: "message", arg: 3, scope: !2460, file: !580, line: 251, type: !265)
!2467 = !DILocalVariable(name: "args", arg: 4, scope: !2460, file: !580, line: 251, type: !590)
!2468 = !DILocation(line: 0, scope: !2460)
!2469 = !DILocation(line: 261, column: 3, scope: !2460)
!2470 = !DILocation(line: 265, column: 7, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2460, file: !580, line: 265, column: 7)
!2472 = !DILocation(line: 265, column: 7, scope: !2460)
!2473 = !DILocation(line: 266, column: 5, scope: !2471)
!2474 = !DILocation(line: 272, column: 7, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2471, file: !580, line: 268, column: 5)
!2476 = !DILocation(line: 276, column: 3, scope: !2460)
!2477 = !DILocation(line: 282, column: 1, scope: !2460)
!2478 = distinct !DISubprogram(name: "flush_stdout", scope: !580, file: !580, line: 163, type: !625, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2479)
!2479 = !{!2480}
!2480 = !DILocalVariable(name: "stdout_fd", scope: !2478, file: !580, line: 166, type: !260)
!2481 = !DILocation(line: 0, scope: !2478)
!2482 = !DILocalVariable(name: "fd", arg: 1, scope: !2483, file: !580, line: 145, type: !260)
!2483 = distinct !DISubprogram(name: "is_open", scope: !580, file: !580, line: 145, type: !2410, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2484)
!2484 = !{!2482}
!2485 = !DILocation(line: 0, scope: !2483, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 182, column: 25, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2478, file: !580, line: 182, column: 7)
!2488 = !DILocation(line: 157, column: 15, scope: !2483, inlinedAt: !2486)
!2489 = !DILocation(line: 157, column: 12, scope: !2483, inlinedAt: !2486)
!2490 = !DILocation(line: 182, column: 7, scope: !2478)
!2491 = !DILocation(line: 184, column: 5, scope: !2487)
!2492 = !DILocation(line: 185, column: 1, scope: !2478)
!2493 = distinct !DISubprogram(name: "error_tail", scope: !580, file: !580, line: 219, type: !2461, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2494)
!2494 = !{!2495, !2496, !2497, !2498}
!2495 = !DILocalVariable(name: "status", arg: 1, scope: !2493, file: !580, line: 219, type: !260)
!2496 = !DILocalVariable(name: "errnum", arg: 2, scope: !2493, file: !580, line: 219, type: !260)
!2497 = !DILocalVariable(name: "message", arg: 3, scope: !2493, file: !580, line: 219, type: !265)
!2498 = !DILocalVariable(name: "args", arg: 4, scope: !2493, file: !580, line: 219, type: !590)
!2499 = !DILocation(line: 0, scope: !2493)
!2500 = !DILocation(line: 229, column: 13, scope: !2493)
!2501 = !DILocalVariable(name: "__stream", arg: 1, scope: !2502, file: !1041, line: 132, type: !2505)
!2502 = distinct !DISubprogram(name: "vfprintf", scope: !1041, file: !1041, line: 132, type: !2503, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2540)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!260, !2505, !1045, !590}
!2505 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2506)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !311, line: 7, baseType: !2508)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !313, line: 49, size: 1728, elements: !2509)
!2509 = !{!2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2508, file: !313, line: 51, baseType: !260, size: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2508, file: !313, line: 54, baseType: !317, size: 64, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2508, file: !313, line: 55, baseType: !317, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2508, file: !313, line: 56, baseType: !317, size: 64, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2508, file: !313, line: 57, baseType: !317, size: 64, offset: 256)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2508, file: !313, line: 58, baseType: !317, size: 64, offset: 320)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2508, file: !313, line: 59, baseType: !317, size: 64, offset: 384)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2508, file: !313, line: 60, baseType: !317, size: 64, offset: 448)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2508, file: !313, line: 61, baseType: !317, size: 64, offset: 512)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2508, file: !313, line: 64, baseType: !317, size: 64, offset: 576)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2508, file: !313, line: 65, baseType: !317, size: 64, offset: 640)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2508, file: !313, line: 66, baseType: !317, size: 64, offset: 704)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2508, file: !313, line: 68, baseType: !329, size: 64, offset: 768)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2508, file: !313, line: 70, baseType: !2524, size: 64, offset: 832)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2508, file: !313, line: 72, baseType: !260, size: 32, offset: 896)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2508, file: !313, line: 73, baseType: !260, size: 32, offset: 928)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2508, file: !313, line: 74, baseType: !336, size: 64, offset: 960)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2508, file: !313, line: 77, baseType: !261, size: 16, offset: 1024)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2508, file: !313, line: 78, baseType: !339, size: 8, offset: 1040)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2508, file: !313, line: 79, baseType: !206, size: 8, offset: 1048)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2508, file: !313, line: 81, baseType: !342, size: 64, offset: 1088)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2508, file: !313, line: 89, baseType: !345, size: 64, offset: 1152)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2508, file: !313, line: 91, baseType: !347, size: 64, offset: 1216)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2508, file: !313, line: 92, baseType: !350, size: 64, offset: 1280)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2508, file: !313, line: 93, baseType: !2524, size: 64, offset: 1344)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2508, file: !313, line: 94, baseType: !354, size: 64, offset: 1408)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2508, file: !313, line: 95, baseType: !262, size: 64, offset: 1472)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2508, file: !313, line: 96, baseType: !260, size: 32, offset: 1536)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2508, file: !313, line: 98, baseType: !358, size: 160, offset: 1568)
!2540 = !{!2501, !2541, !2542}
!2541 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2502, file: !1041, line: 133, type: !1045)
!2542 = !DILocalVariable(name: "__ap", arg: 3, scope: !2502, file: !1041, line: 133, type: !590)
!2543 = !DILocation(line: 0, scope: !2502, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 229, column: 3, scope: !2493)
!2545 = !DILocation(line: 135, column: 10, scope: !2502, inlinedAt: !2544)
!2546 = !DILocation(line: 232, column: 3, scope: !2493)
!2547 = !DILocation(line: 233, column: 7, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2493, file: !580, line: 233, column: 7)
!2549 = !DILocation(line: 233, column: 7, scope: !2493)
!2550 = !DILocalVariable(name: "errnum", arg: 1, scope: !2551, file: !580, line: 188, type: !260)
!2551 = distinct !DISubprogram(name: "print_errno_message", scope: !580, file: !580, line: 188, type: !941, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2552)
!2552 = !{!2550, !2553, !2554}
!2553 = !DILocalVariable(name: "s", scope: !2551, file: !580, line: 190, type: !265)
!2554 = !DILocalVariable(name: "errbuf", scope: !2551, file: !580, line: 193, type: !2555)
!2555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2556)
!2556 = !{!2557}
!2557 = !DISubrange(count: 1024)
!2558 = !DILocation(line: 0, scope: !2551, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 234, column: 5, scope: !2548)
!2560 = !DILocation(line: 193, column: 3, scope: !2551, inlinedAt: !2559)
!2561 = !DILocation(line: 193, column: 8, scope: !2551, inlinedAt: !2559)
!2562 = !DILocation(line: 195, column: 7, scope: !2551, inlinedAt: !2559)
!2563 = !DILocation(line: 207, column: 9, scope: !2564, inlinedAt: !2559)
!2564 = distinct !DILexicalBlock(scope: !2551, file: !580, line: 207, column: 7)
!2565 = !DILocation(line: 207, column: 7, scope: !2551, inlinedAt: !2559)
!2566 = !DILocation(line: 208, column: 9, scope: !2564, inlinedAt: !2559)
!2567 = !DILocation(line: 208, column: 5, scope: !2564, inlinedAt: !2559)
!2568 = !DILocation(line: 214, column: 3, scope: !2551, inlinedAt: !2559)
!2569 = !DILocation(line: 216, column: 1, scope: !2551, inlinedAt: !2559)
!2570 = !DILocation(line: 234, column: 5, scope: !2548)
!2571 = !DILocation(line: 238, column: 3, scope: !2493)
!2572 = !DILocalVariable(name: "__c", arg: 1, scope: !2573, file: !2574, line: 101, type: !260)
!2573 = distinct !DISubprogram(name: "putc_unlocked", scope: !2574, file: !2574, line: 101, type: !2575, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2577)
!2574 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!260, !260, !2506}
!2577 = !{!2572, !2578}
!2578 = !DILocalVariable(name: "__stream", arg: 2, scope: !2573, file: !2574, line: 101, type: !2506)
!2579 = !DILocation(line: 0, scope: !2573, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 238, column: 3, scope: !2493)
!2581 = !DILocation(line: 103, column: 10, scope: !2573, inlinedAt: !2580)
!2582 = !{!2583, !952, i64 40}
!2583 = !{!"_IO_FILE", !1053, i64 0, !952, i64 8, !952, i64 16, !952, i64 24, !952, i64 32, !952, i64 40, !952, i64 48, !952, i64 56, !952, i64 64, !952, i64 72, !952, i64 80, !952, i64 88, !952, i64 96, !952, i64 104, !1053, i64 112, !1053, i64 116, !1548, i64 120, !1094, i64 128, !953, i64 130, !953, i64 131, !952, i64 136, !1548, i64 144, !952, i64 152, !952, i64 160, !952, i64 168, !952, i64 176, !1548, i64 184, !1053, i64 192, !953, i64 196}
!2584 = !{!2583, !952, i64 48}
!2585 = !{!"branch_weights", i32 2000, i32 1}
!2586 = !DILocation(line: 240, column: 3, scope: !2493)
!2587 = !DILocation(line: 241, column: 7, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2493, file: !580, line: 241, column: 7)
!2589 = !DILocation(line: 241, column: 7, scope: !2493)
!2590 = !DILocation(line: 242, column: 5, scope: !2588)
!2591 = !DILocation(line: 243, column: 1, scope: !2493)
!2592 = !DISubprogram(name: "__vfprintf_chk", scope: !1041, file: !1041, line: 96, type: !2593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!260, !2505, !260, !1045, !590}
!2595 = !DISubprogram(name: "strerror_r", scope: !1176, file: !1176, line: 444, type: !2596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!317, !260, !317, !262}
!2598 = !DISubprogram(name: "__overflow", scope: !1047, file: !1047, line: 886, type: !2599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!260, !2506, !260}
!2601 = !DISubprogram(name: "fflush_unlocked", scope: !1047, file: !1047, line: 239, type: !2602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!260, !2506}
!2604 = !DISubprogram(name: "fcntl", scope: !2605, file: !2605, line: 149, type: !2606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!2605 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!260, !260, !260, null}
!2608 = distinct !DISubprogram(name: "error", scope: !580, file: !580, line: 285, type: !2609, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2611)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{null, !260, !260, !265, null}
!2611 = !{!2612, !2613, !2614, !2615}
!2612 = !DILocalVariable(name: "status", arg: 1, scope: !2608, file: !580, line: 285, type: !260)
!2613 = !DILocalVariable(name: "errnum", arg: 2, scope: !2608, file: !580, line: 285, type: !260)
!2614 = !DILocalVariable(name: "message", arg: 3, scope: !2608, file: !580, line: 285, type: !265)
!2615 = !DILocalVariable(name: "ap", scope: !2608, file: !580, line: 287, type: !2616)
!2616 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1047, line: 52, baseType: !2617)
!2617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1400, line: 14, baseType: !2618)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !594, baseType: !2619)
!2619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 192, elements: !207)
!2620 = !DILocation(line: 0, scope: !2608)
!2621 = !DILocation(line: 287, column: 3, scope: !2608)
!2622 = !DILocation(line: 287, column: 11, scope: !2608)
!2623 = !DILocation(line: 288, column: 3, scope: !2608)
!2624 = !DILocation(line: 289, column: 3, scope: !2608)
!2625 = !DILocation(line: 290, column: 3, scope: !2608)
!2626 = !DILocation(line: 291, column: 1, scope: !2608)
!2627 = !DILocation(line: 0, scope: !587)
!2628 = !DILocation(line: 302, column: 7, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !587, file: !580, line: 302, column: 7)
!2630 = !DILocation(line: 302, column: 7, scope: !587)
!2631 = !DILocation(line: 307, column: 11, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !580, line: 307, column: 11)
!2633 = distinct !DILexicalBlock(scope: !2629, file: !580, line: 303, column: 5)
!2634 = !DILocation(line: 307, column: 27, scope: !2632)
!2635 = !DILocation(line: 308, column: 11, scope: !2632)
!2636 = !DILocation(line: 308, column: 28, scope: !2632)
!2637 = !DILocation(line: 308, column: 25, scope: !2632)
!2638 = !DILocation(line: 309, column: 15, scope: !2632)
!2639 = !DILocation(line: 309, column: 33, scope: !2632)
!2640 = !DILocation(line: 310, column: 19, scope: !2632)
!2641 = !DILocation(line: 311, column: 22, scope: !2632)
!2642 = !DILocation(line: 311, column: 56, scope: !2632)
!2643 = !DILocation(line: 307, column: 11, scope: !2633)
!2644 = !DILocation(line: 316, column: 21, scope: !2633)
!2645 = !DILocation(line: 317, column: 23, scope: !2633)
!2646 = !DILocation(line: 318, column: 5, scope: !2633)
!2647 = !DILocation(line: 327, column: 3, scope: !587)
!2648 = !DILocation(line: 331, column: 7, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !587, file: !580, line: 331, column: 7)
!2650 = !DILocation(line: 331, column: 7, scope: !587)
!2651 = !DILocation(line: 332, column: 5, scope: !2649)
!2652 = !DILocation(line: 338, column: 7, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2649, file: !580, line: 334, column: 5)
!2654 = !DILocation(line: 346, column: 3, scope: !587)
!2655 = !DILocation(line: 350, column: 3, scope: !587)
!2656 = !DILocation(line: 356, column: 1, scope: !587)
!2657 = distinct !DISubprogram(name: "error_at_line", scope: !580, file: !580, line: 359, type: !2658, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{null, !260, !260, !265, !224, !265, null}
!2660 = !{!2661, !2662, !2663, !2664, !2665, !2666}
!2661 = !DILocalVariable(name: "status", arg: 1, scope: !2657, file: !580, line: 359, type: !260)
!2662 = !DILocalVariable(name: "errnum", arg: 2, scope: !2657, file: !580, line: 359, type: !260)
!2663 = !DILocalVariable(name: "file_name", arg: 3, scope: !2657, file: !580, line: 359, type: !265)
!2664 = !DILocalVariable(name: "line_number", arg: 4, scope: !2657, file: !580, line: 360, type: !224)
!2665 = !DILocalVariable(name: "message", arg: 5, scope: !2657, file: !580, line: 360, type: !265)
!2666 = !DILocalVariable(name: "ap", scope: !2657, file: !580, line: 362, type: !2616)
!2667 = !DILocation(line: 0, scope: !2657)
!2668 = !DILocation(line: 362, column: 3, scope: !2657)
!2669 = !DILocation(line: 362, column: 11, scope: !2657)
!2670 = !DILocation(line: 363, column: 3, scope: !2657)
!2671 = !DILocation(line: 364, column: 3, scope: !2657)
!2672 = !DILocation(line: 366, column: 3, scope: !2657)
!2673 = !DILocation(line: 367, column: 1, scope: !2657)
!2674 = distinct !DISubprogram(name: "getprogname", scope: !862, file: !862, line: 54, type: !2675, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !1039)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!265}
!2677 = !DILocation(line: 58, column: 10, scope: !2674)
!2678 = !DILocation(line: 58, column: 3, scope: !2674)
!2679 = distinct !DISubprogram(name: "umaxtostr", scope: !2680, file: !2680, line: 29, type: !2681, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !863, retainedNodes: !2683)
!2680 = !DIFile(filename: "./lib/anytostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e5b8bc0749223f86edfe264a04f25de0")
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!317, !866, !317}
!2683 = !{!2684, !2685, !2686}
!2684 = !DILocalVariable(name: "i", arg: 1, scope: !2679, file: !2680, line: 29, type: !866)
!2685 = !DILocalVariable(name: "buf", arg: 2, scope: !2679, file: !2680, line: 29, type: !317)
!2686 = !DILocalVariable(name: "p", scope: !2679, file: !2680, line: 31, type: !317)
!2687 = !DILocation(line: 0, scope: !2679)
!2688 = !DILocation(line: 31, column: 17, scope: !2679)
!2689 = !DILocation(line: 32, column: 6, scope: !2679)
!2690 = !DILocation(line: 45, column: 24, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !2680, line: 43, column: 5)
!2692 = distinct !DILexicalBlock(scope: !2679, file: !2680, line: 34, column: 7)
!2693 = !DILocation(line: 45, column: 16, scope: !2691)
!2694 = !DILocation(line: 45, column: 10, scope: !2691)
!2695 = !DILocation(line: 45, column: 14, scope: !2691)
!2696 = !DILocation(line: 46, column: 17, scope: !2691)
!2697 = !DILocation(line: 46, column: 24, scope: !2691)
!2698 = !DILocation(line: 45, column: 9, scope: !2691)
!2699 = distinct !{!2699, !2700, !2701, !1099}
!2700 = !DILocation(line: 44, column: 7, scope: !2691)
!2701 = !DILocation(line: 46, column: 28, scope: !2691)
!2702 = !DILocation(line: 49, column: 3, scope: !2679)
!2703 = distinct !DISubprogram(name: "set_program_name", scope: !630, file: !630, line: 37, type: !1005, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !629, retainedNodes: !2704)
!2704 = !{!2705, !2706, !2707}
!2705 = !DILocalVariable(name: "argv0", arg: 1, scope: !2703, file: !630, line: 37, type: !265)
!2706 = !DILocalVariable(name: "slash", scope: !2703, file: !630, line: 44, type: !265)
!2707 = !DILocalVariable(name: "base", scope: !2703, file: !630, line: 45, type: !265)
!2708 = !DILocation(line: 0, scope: !2703)
!2709 = !DILocation(line: 44, column: 23, scope: !2703)
!2710 = !DILocation(line: 45, column: 22, scope: !2703)
!2711 = !DILocation(line: 46, column: 17, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2703, file: !630, line: 46, column: 7)
!2713 = !DILocation(line: 46, column: 9, scope: !2712)
!2714 = !DILocation(line: 46, column: 25, scope: !2712)
!2715 = !DILocation(line: 46, column: 40, scope: !2712)
!2716 = !DILocalVariable(name: "__s1", arg: 1, scope: !2717, file: !1065, line: 974, type: !1204)
!2717 = distinct !DISubprogram(name: "memeq", scope: !1065, file: !1065, line: 974, type: !2718, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !629, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!296, !1204, !1204, !262}
!2720 = !{!2716, !2721, !2722}
!2721 = !DILocalVariable(name: "__s2", arg: 2, scope: !2717, file: !1065, line: 974, type: !1204)
!2722 = !DILocalVariable(name: "__n", arg: 3, scope: !2717, file: !1065, line: 974, type: !262)
!2723 = !DILocation(line: 0, scope: !2717, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 46, column: 28, scope: !2712)
!2725 = !DILocation(line: 976, column: 11, scope: !2717, inlinedAt: !2724)
!2726 = !DILocation(line: 976, column: 10, scope: !2717, inlinedAt: !2724)
!2727 = !DILocation(line: 46, column: 7, scope: !2703)
!2728 = !DILocation(line: 49, column: 11, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !630, line: 49, column: 11)
!2730 = distinct !DILexicalBlock(scope: !2712, file: !630, line: 47, column: 5)
!2731 = !DILocation(line: 49, column: 36, scope: !2729)
!2732 = !DILocation(line: 49, column: 11, scope: !2730)
!2733 = !DILocation(line: 65, column: 16, scope: !2703)
!2734 = !DILocation(line: 71, column: 27, scope: !2703)
!2735 = !DILocation(line: 74, column: 33, scope: !2703)
!2736 = !DILocation(line: 76, column: 1, scope: !2703)
!2737 = !DISubprogram(name: "strrchr", scope: !1176, file: !1176, line: 273, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!2738 = distinct !DISubprogram(name: "clone_quoting_options", scope: !639, file: !639, line: 113, type: !2739, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !2742)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!2741, !2741}
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!2742 = !{!2743, !2744, !2745}
!2743 = !DILocalVariable(name: "o", arg: 1, scope: !2738, file: !639, line: 113, type: !2741)
!2744 = !DILocalVariable(name: "saved_errno", scope: !2738, file: !639, line: 115, type: !260)
!2745 = !DILocalVariable(name: "p", scope: !2738, file: !639, line: 116, type: !2741)
!2746 = !DILocation(line: 0, scope: !2738)
!2747 = !DILocation(line: 115, column: 21, scope: !2738)
!2748 = !DILocation(line: 116, column: 40, scope: !2738)
!2749 = !DILocation(line: 116, column: 31, scope: !2738)
!2750 = !DILocation(line: 118, column: 9, scope: !2738)
!2751 = !DILocation(line: 119, column: 3, scope: !2738)
!2752 = distinct !DISubprogram(name: "get_quoting_style", scope: !639, file: !639, line: 124, type: !2753, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !2757)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!665, !2755}
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!2757 = !{!2758}
!2758 = !DILocalVariable(name: "o", arg: 1, scope: !2752, file: !639, line: 124, type: !2755)
!2759 = !DILocation(line: 0, scope: !2752)
!2760 = !DILocation(line: 126, column: 11, scope: !2752)
!2761 = !DILocation(line: 126, column: 46, scope: !2752)
!2762 = !{!2763, !953, i64 0}
!2763 = !{!"quoting_options", !953, i64 0, !1053, i64 4, !953, i64 8, !952, i64 40, !952, i64 48}
!2764 = !DILocation(line: 126, column: 3, scope: !2752)
!2765 = distinct !DISubprogram(name: "set_quoting_style", scope: !639, file: !639, line: 132, type: !2766, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{null, !2741, !665}
!2768 = !{!2769, !2770}
!2769 = !DILocalVariable(name: "o", arg: 1, scope: !2765, file: !639, line: 132, type: !2741)
!2770 = !DILocalVariable(name: "s", arg: 2, scope: !2765, file: !639, line: 132, type: !665)
!2771 = !DILocation(line: 0, scope: !2765)
!2772 = !DILocation(line: 134, column: 4, scope: !2765)
!2773 = !DILocation(line: 134, column: 45, scope: !2765)
!2774 = !DILocation(line: 135, column: 1, scope: !2765)
!2775 = distinct !DISubprogram(name: "set_char_quoting", scope: !639, file: !639, line: 143, type: !2776, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!260, !2741, !4, !260}
!2778 = !{!2779, !2780, !2781, !2782, !2783, !2785, !2786}
!2779 = !DILocalVariable(name: "o", arg: 1, scope: !2775, file: !639, line: 143, type: !2741)
!2780 = !DILocalVariable(name: "c", arg: 2, scope: !2775, file: !639, line: 143, type: !4)
!2781 = !DILocalVariable(name: "i", arg: 3, scope: !2775, file: !639, line: 143, type: !260)
!2782 = !DILocalVariable(name: "uc", scope: !2775, file: !639, line: 145, type: !267)
!2783 = !DILocalVariable(name: "p", scope: !2775, file: !639, line: 146, type: !2784)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!2785 = !DILocalVariable(name: "shift", scope: !2775, file: !639, line: 148, type: !260)
!2786 = !DILocalVariable(name: "r", scope: !2775, file: !639, line: 149, type: !224)
!2787 = !DILocation(line: 0, scope: !2775)
!2788 = !DILocation(line: 147, column: 6, scope: !2775)
!2789 = !DILocation(line: 147, column: 41, scope: !2775)
!2790 = !DILocation(line: 147, column: 62, scope: !2775)
!2791 = !DILocation(line: 147, column: 57, scope: !2775)
!2792 = !DILocation(line: 148, column: 15, scope: !2775)
!2793 = !DILocation(line: 149, column: 21, scope: !2775)
!2794 = !DILocation(line: 149, column: 24, scope: !2775)
!2795 = !DILocation(line: 149, column: 34, scope: !2775)
!2796 = !DILocation(line: 150, column: 19, scope: !2775)
!2797 = !DILocation(line: 150, column: 24, scope: !2775)
!2798 = !DILocation(line: 150, column: 6, scope: !2775)
!2799 = !DILocation(line: 151, column: 3, scope: !2775)
!2800 = distinct !DISubprogram(name: "set_quoting_flags", scope: !639, file: !639, line: 159, type: !2801, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!260, !2741, !260}
!2803 = !{!2804, !2805, !2806}
!2804 = !DILocalVariable(name: "o", arg: 1, scope: !2800, file: !639, line: 159, type: !2741)
!2805 = !DILocalVariable(name: "i", arg: 2, scope: !2800, file: !639, line: 159, type: !260)
!2806 = !DILocalVariable(name: "r", scope: !2800, file: !639, line: 163, type: !260)
!2807 = !DILocation(line: 0, scope: !2800)
!2808 = !DILocation(line: 161, column: 8, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2800, file: !639, line: 161, column: 7)
!2810 = !DILocation(line: 161, column: 7, scope: !2800)
!2811 = !DILocation(line: 163, column: 14, scope: !2800)
!2812 = !{!2763, !1053, i64 4}
!2813 = !DILocation(line: 164, column: 12, scope: !2800)
!2814 = !DILocation(line: 165, column: 3, scope: !2800)
!2815 = distinct !DISubprogram(name: "set_custom_quoting", scope: !639, file: !639, line: 169, type: !2816, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !2818)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{null, !2741, !265, !265}
!2818 = !{!2819, !2820, !2821}
!2819 = !DILocalVariable(name: "o", arg: 1, scope: !2815, file: !639, line: 169, type: !2741)
!2820 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2815, file: !639, line: 170, type: !265)
!2821 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2815, file: !639, line: 170, type: !265)
!2822 = !DILocation(line: 0, scope: !2815)
!2823 = !DILocation(line: 172, column: 8, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2815, file: !639, line: 172, column: 7)
!2825 = !DILocation(line: 172, column: 7, scope: !2815)
!2826 = !DILocation(line: 174, column: 12, scope: !2815)
!2827 = !DILocation(line: 175, column: 8, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2815, file: !639, line: 175, column: 7)
!2829 = !DILocation(line: 175, column: 19, scope: !2828)
!2830 = !DILocation(line: 176, column: 5, scope: !2828)
!2831 = !DILocation(line: 177, column: 6, scope: !2815)
!2832 = !DILocation(line: 177, column: 17, scope: !2815)
!2833 = !{!2763, !952, i64 40}
!2834 = !DILocation(line: 178, column: 6, scope: !2815)
!2835 = !DILocation(line: 178, column: 18, scope: !2815)
!2836 = !{!2763, !952, i64 48}
!2837 = !DILocation(line: 179, column: 1, scope: !2815)
!2838 = !DISubprogram(name: "abort", scope: !1180, file: !1180, line: 598, type: !625, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!2839 = distinct !DISubprogram(name: "quotearg_buffer", scope: !639, file: !639, line: 774, type: !2840, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!262, !317, !262, !265, !262, !2755}
!2842 = !{!2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850}
!2843 = !DILocalVariable(name: "buffer", arg: 1, scope: !2839, file: !639, line: 774, type: !317)
!2844 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2839, file: !639, line: 774, type: !262)
!2845 = !DILocalVariable(name: "arg", arg: 3, scope: !2839, file: !639, line: 775, type: !265)
!2846 = !DILocalVariable(name: "argsize", arg: 4, scope: !2839, file: !639, line: 775, type: !262)
!2847 = !DILocalVariable(name: "o", arg: 5, scope: !2839, file: !639, line: 776, type: !2755)
!2848 = !DILocalVariable(name: "p", scope: !2839, file: !639, line: 778, type: !2755)
!2849 = !DILocalVariable(name: "saved_errno", scope: !2839, file: !639, line: 779, type: !260)
!2850 = !DILocalVariable(name: "r", scope: !2839, file: !639, line: 780, type: !262)
!2851 = !DILocation(line: 0, scope: !2839)
!2852 = !DILocation(line: 778, column: 37, scope: !2839)
!2853 = !DILocation(line: 779, column: 21, scope: !2839)
!2854 = !DILocation(line: 781, column: 43, scope: !2839)
!2855 = !DILocation(line: 781, column: 53, scope: !2839)
!2856 = !DILocation(line: 781, column: 63, scope: !2839)
!2857 = !DILocation(line: 782, column: 43, scope: !2839)
!2858 = !DILocation(line: 782, column: 58, scope: !2839)
!2859 = !DILocation(line: 780, column: 14, scope: !2839)
!2860 = !DILocation(line: 783, column: 9, scope: !2839)
!2861 = !DILocation(line: 784, column: 3, scope: !2839)
!2862 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !639, file: !639, line: 251, type: !2863, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !2867)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!262, !317, !262, !265, !262, !665, !260, !2865, !265, !265}
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2892, !2894, !2897, !2898, !2899, !2900, !2903, !2904, !2907, !2911, !2912, !2920, !2923, !2924, !2926, !2927, !2928, !2929}
!2868 = !DILocalVariable(name: "buffer", arg: 1, scope: !2862, file: !639, line: 251, type: !317)
!2869 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2862, file: !639, line: 251, type: !262)
!2870 = !DILocalVariable(name: "arg", arg: 3, scope: !2862, file: !639, line: 252, type: !265)
!2871 = !DILocalVariable(name: "argsize", arg: 4, scope: !2862, file: !639, line: 252, type: !262)
!2872 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2862, file: !639, line: 253, type: !665)
!2873 = !DILocalVariable(name: "flags", arg: 6, scope: !2862, file: !639, line: 253, type: !260)
!2874 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2862, file: !639, line: 254, type: !2865)
!2875 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2862, file: !639, line: 255, type: !265)
!2876 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2862, file: !639, line: 256, type: !265)
!2877 = !DILocalVariable(name: "unibyte_locale", scope: !2862, file: !639, line: 258, type: !296)
!2878 = !DILocalVariable(name: "len", scope: !2862, file: !639, line: 260, type: !262)
!2879 = !DILocalVariable(name: "orig_buffersize", scope: !2862, file: !639, line: 261, type: !262)
!2880 = !DILocalVariable(name: "quote_string", scope: !2862, file: !639, line: 262, type: !265)
!2881 = !DILocalVariable(name: "quote_string_len", scope: !2862, file: !639, line: 263, type: !262)
!2882 = !DILocalVariable(name: "backslash_escapes", scope: !2862, file: !639, line: 264, type: !296)
!2883 = !DILocalVariable(name: "elide_outer_quotes", scope: !2862, file: !639, line: 265, type: !296)
!2884 = !DILocalVariable(name: "encountered_single_quote", scope: !2862, file: !639, line: 266, type: !296)
!2885 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2862, file: !639, line: 267, type: !296)
!2886 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2862, file: !639, line: 309, type: !296)
!2887 = !DILocalVariable(name: "lq", scope: !2888, file: !639, line: 361, type: !265)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !639, line: 361, column: 11)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !639, line: 360, column: 13)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !639, line: 333, column: 7)
!2891 = distinct !DILexicalBlock(scope: !2862, file: !639, line: 312, column: 5)
!2892 = !DILocalVariable(name: "i", scope: !2893, file: !639, line: 395, type: !262)
!2893 = distinct !DILexicalBlock(scope: !2862, file: !639, line: 395, column: 3)
!2894 = !DILocalVariable(name: "is_right_quote", scope: !2895, file: !639, line: 397, type: !296)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !639, line: 396, column: 5)
!2896 = distinct !DILexicalBlock(scope: !2893, file: !639, line: 395, column: 3)
!2897 = !DILocalVariable(name: "escaping", scope: !2895, file: !639, line: 398, type: !296)
!2898 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2895, file: !639, line: 399, type: !296)
!2899 = !DILocalVariable(name: "c", scope: !2895, file: !639, line: 417, type: !267)
!2900 = !DILocalVariable(name: "m", scope: !2901, file: !639, line: 598, type: !262)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !639, line: 596, column: 11)
!2902 = distinct !DILexicalBlock(scope: !2895, file: !639, line: 419, column: 9)
!2903 = !DILocalVariable(name: "printable", scope: !2901, file: !639, line: 600, type: !296)
!2904 = !DILocalVariable(name: "mbs", scope: !2905, file: !639, line: 609, type: !730)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !639, line: 608, column: 15)
!2906 = distinct !DILexicalBlock(scope: !2901, file: !639, line: 602, column: 17)
!2907 = !DILocalVariable(name: "w", scope: !2908, file: !639, line: 618, type: !725)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !639, line: 617, column: 19)
!2909 = distinct !DILexicalBlock(scope: !2910, file: !639, line: 616, column: 17)
!2910 = distinct !DILexicalBlock(scope: !2905, file: !639, line: 616, column: 17)
!2911 = !DILocalVariable(name: "bytes", scope: !2908, file: !639, line: 619, type: !262)
!2912 = !DILocalVariable(name: "j", scope: !2913, file: !639, line: 648, type: !262)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !639, line: 648, column: 29)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !639, line: 647, column: 27)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !639, line: 645, column: 29)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !639, line: 636, column: 23)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !639, line: 628, column: 30)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !639, line: 623, column: 30)
!2919 = distinct !DILexicalBlock(scope: !2908, file: !639, line: 621, column: 25)
!2920 = !DILocalVariable(name: "ilim", scope: !2921, file: !639, line: 674, type: !262)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !639, line: 671, column: 15)
!2922 = distinct !DILexicalBlock(scope: !2901, file: !639, line: 670, column: 17)
!2923 = !DILabel(scope: !2862, name: "process_input", file: !639, line: 308)
!2924 = !DILabel(scope: !2925, name: "c_and_shell_escape", file: !639, line: 502)
!2925 = distinct !DILexicalBlock(scope: !2902, file: !639, line: 478, column: 9)
!2926 = !DILabel(scope: !2925, name: "c_escape", file: !639, line: 507)
!2927 = !DILabel(scope: !2895, name: "store_escape", file: !639, line: 709)
!2928 = !DILabel(scope: !2895, name: "store_c", file: !639, line: 712)
!2929 = !DILabel(scope: !2862, name: "force_outer_quoting_style", file: !639, line: 753)
!2930 = !DILocation(line: 0, scope: !2862)
!2931 = !DILocation(line: 258, column: 25, scope: !2862)
!2932 = !DILocation(line: 258, column: 36, scope: !2862)
!2933 = !DILocation(line: 265, column: 8, scope: !2862)
!2934 = !DILocation(line: 267, column: 3, scope: !2862)
!2935 = !DILocation(line: 261, column: 10, scope: !2862)
!2936 = !DILocation(line: 262, column: 15, scope: !2862)
!2937 = !DILocation(line: 263, column: 10, scope: !2862)
!2938 = !DILocation(line: 264, column: 8, scope: !2862)
!2939 = !DILocation(line: 266, column: 8, scope: !2862)
!2940 = !DILocation(line: 267, column: 8, scope: !2862)
!2941 = !DILocation(line: 308, column: 2, scope: !2862)
!2942 = !DILocation(line: 311, column: 3, scope: !2862)
!2943 = !DILocation(line: 318, column: 11, scope: !2891)
!2944 = !DILocation(line: 318, column: 12, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2891, file: !639, line: 318, column: 11)
!2946 = !DILocation(line: 319, column: 9, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !639, line: 319, column: 9)
!2948 = distinct !DILexicalBlock(scope: !2945, file: !639, line: 319, column: 9)
!2949 = !DILocation(line: 319, column: 9, scope: !2948)
!2950 = !DILocation(line: 0, scope: !717, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 357, column: 26, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !639, line: 335, column: 11)
!2953 = distinct !DILexicalBlock(scope: !2890, file: !639, line: 334, column: 13)
!2954 = !DILocation(line: 199, column: 29, scope: !717, inlinedAt: !2951)
!2955 = !DILocation(line: 201, column: 19, scope: !2956, inlinedAt: !2951)
!2956 = distinct !DILexicalBlock(scope: !717, file: !639, line: 201, column: 7)
!2957 = !DILocation(line: 201, column: 7, scope: !717, inlinedAt: !2951)
!2958 = !DILocation(line: 229, column: 3, scope: !717, inlinedAt: !2951)
!2959 = !DILocation(line: 230, column: 3, scope: !717, inlinedAt: !2951)
!2960 = !DILocation(line: 230, column: 13, scope: !717, inlinedAt: !2951)
!2961 = !DILocalVariable(name: "ps", arg: 1, scope: !2962, file: !2963, line: 1135, type: !2966)
!2962 = distinct !DISubprogram(name: "mbszero", scope: !2963, file: !2963, line: 1135, type: !2964, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !2967)
!2963 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2964 = !DISubroutineType(types: !2965)
!2965 = !{null, !2966}
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!2967 = !{!2961}
!2968 = !DILocation(line: 0, scope: !2962, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 230, column: 18, scope: !717, inlinedAt: !2951)
!2970 = !DILocalVariable(name: "__dest", arg: 1, scope: !2971, file: !2972, line: 57, type: !354)
!2971 = distinct !DISubprogram(name: "memset", scope: !2972, file: !2972, line: 57, type: !2973, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !2975)
!2972 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!354, !354, !260, !262}
!2975 = !{!2970, !2976, !2977}
!2976 = !DILocalVariable(name: "__ch", arg: 2, scope: !2971, file: !2972, line: 57, type: !260)
!2977 = !DILocalVariable(name: "__len", arg: 3, scope: !2971, file: !2972, line: 57, type: !262)
!2978 = !DILocation(line: 0, scope: !2971, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 1137, column: 3, scope: !2962, inlinedAt: !2969)
!2980 = !DILocation(line: 59, column: 10, scope: !2971, inlinedAt: !2979)
!2981 = !DILocation(line: 231, column: 7, scope: !2982, inlinedAt: !2951)
!2982 = distinct !DILexicalBlock(scope: !717, file: !639, line: 231, column: 7)
!2983 = !DILocation(line: 231, column: 40, scope: !2982, inlinedAt: !2951)
!2984 = !DILocation(line: 231, column: 45, scope: !2982, inlinedAt: !2951)
!2985 = !DILocation(line: 235, column: 1, scope: !717, inlinedAt: !2951)
!2986 = !DILocation(line: 0, scope: !717, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 358, column: 27, scope: !2952)
!2988 = !DILocation(line: 199, column: 29, scope: !717, inlinedAt: !2987)
!2989 = !DILocation(line: 201, column: 19, scope: !2956, inlinedAt: !2987)
!2990 = !DILocation(line: 201, column: 7, scope: !717, inlinedAt: !2987)
!2991 = !DILocation(line: 229, column: 3, scope: !717, inlinedAt: !2987)
!2992 = !DILocation(line: 230, column: 3, scope: !717, inlinedAt: !2987)
!2993 = !DILocation(line: 230, column: 13, scope: !717, inlinedAt: !2987)
!2994 = !DILocation(line: 0, scope: !2962, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 230, column: 18, scope: !717, inlinedAt: !2987)
!2996 = !DILocation(line: 0, scope: !2971, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 1137, column: 3, scope: !2962, inlinedAt: !2995)
!2998 = !DILocation(line: 59, column: 10, scope: !2971, inlinedAt: !2997)
!2999 = !DILocation(line: 231, column: 7, scope: !2982, inlinedAt: !2987)
!3000 = !DILocation(line: 231, column: 40, scope: !2982, inlinedAt: !2987)
!3001 = !DILocation(line: 231, column: 45, scope: !2982, inlinedAt: !2987)
!3002 = !DILocation(line: 235, column: 1, scope: !717, inlinedAt: !2987)
!3003 = !DILocation(line: 360, column: 14, scope: !2889)
!3004 = !DILocation(line: 360, column: 13, scope: !2890)
!3005 = !DILocation(line: 0, scope: !2888)
!3006 = !DILocation(line: 361, column: 45, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2888, file: !639, line: 361, column: 11)
!3008 = !DILocation(line: 361, column: 11, scope: !2888)
!3009 = !DILocation(line: 362, column: 13, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !639, line: 362, column: 13)
!3011 = distinct !DILexicalBlock(scope: !3007, file: !639, line: 362, column: 13)
!3012 = !DILocation(line: 362, column: 13, scope: !3011)
!3013 = !DILocation(line: 361, column: 52, scope: !3007)
!3014 = distinct !{!3014, !3008, !3015, !1099}
!3015 = !DILocation(line: 362, column: 13, scope: !2888)
!3016 = !DILocation(line: 260, column: 10, scope: !2862)
!3017 = !DILocation(line: 365, column: 28, scope: !2890)
!3018 = !DILocation(line: 367, column: 7, scope: !2891)
!3019 = !DILocation(line: 370, column: 7, scope: !2891)
!3020 = !DILocation(line: 373, column: 7, scope: !2891)
!3021 = !DILocation(line: 376, column: 12, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2891, file: !639, line: 376, column: 11)
!3023 = !DILocation(line: 376, column: 11, scope: !2891)
!3024 = !DILocation(line: 381, column: 12, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2891, file: !639, line: 381, column: 11)
!3026 = !DILocation(line: 381, column: 11, scope: !2891)
!3027 = !DILocation(line: 382, column: 9, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !639, line: 382, column: 9)
!3029 = distinct !DILexicalBlock(scope: !3025, file: !639, line: 382, column: 9)
!3030 = !DILocation(line: 382, column: 9, scope: !3029)
!3031 = !DILocation(line: 389, column: 7, scope: !2891)
!3032 = !DILocation(line: 392, column: 7, scope: !2891)
!3033 = !DILocation(line: 0, scope: !2893)
!3034 = !DILocation(line: 395, column: 8, scope: !2893)
!3035 = !DILocation(line: 309, column: 8, scope: !2862)
!3036 = !DILocation(line: 395, scope: !2893)
!3037 = !DILocation(line: 395, column: 34, scope: !2896)
!3038 = !DILocation(line: 395, column: 26, scope: !2896)
!3039 = !DILocation(line: 395, column: 48, scope: !2896)
!3040 = !DILocation(line: 395, column: 55, scope: !2896)
!3041 = !DILocation(line: 395, column: 3, scope: !2893)
!3042 = !DILocation(line: 395, column: 67, scope: !2896)
!3043 = !DILocation(line: 0, scope: !2895)
!3044 = !DILocation(line: 402, column: 11, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !2895, file: !639, line: 401, column: 11)
!3046 = !DILocation(line: 404, column: 17, scope: !3045)
!3047 = !DILocation(line: 405, column: 39, scope: !3045)
!3048 = !DILocation(line: 409, column: 32, scope: !3045)
!3049 = !DILocation(line: 405, column: 19, scope: !3045)
!3050 = !DILocation(line: 405, column: 15, scope: !3045)
!3051 = !DILocation(line: 410, column: 11, scope: !3045)
!3052 = !DILocation(line: 410, column: 25, scope: !3045)
!3053 = !DILocalVariable(name: "__s1", arg: 1, scope: !3054, file: !1065, line: 974, type: !1204)
!3054 = distinct !DISubprogram(name: "memeq", scope: !1065, file: !1065, line: 974, type: !2718, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3055)
!3055 = !{!3053, !3056, !3057}
!3056 = !DILocalVariable(name: "__s2", arg: 2, scope: !3054, file: !1065, line: 974, type: !1204)
!3057 = !DILocalVariable(name: "__n", arg: 3, scope: !3054, file: !1065, line: 974, type: !262)
!3058 = !DILocation(line: 0, scope: !3054, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 410, column: 14, scope: !3045)
!3060 = !DILocation(line: 976, column: 11, scope: !3054, inlinedAt: !3059)
!3061 = !DILocation(line: 976, column: 10, scope: !3054, inlinedAt: !3059)
!3062 = !DILocation(line: 401, column: 11, scope: !2895)
!3063 = !DILocation(line: 417, column: 25, scope: !2895)
!3064 = !DILocation(line: 418, column: 7, scope: !2895)
!3065 = !DILocation(line: 421, column: 15, scope: !2902)
!3066 = !DILocation(line: 423, column: 15, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !639, line: 423, column: 15)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !639, line: 422, column: 13)
!3069 = distinct !DILexicalBlock(scope: !2902, file: !639, line: 421, column: 15)
!3070 = !DILocation(line: 423, column: 15, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3067, file: !639, line: 423, column: 15)
!3072 = !DILocation(line: 423, column: 15, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !639, line: 423, column: 15)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !639, line: 423, column: 15)
!3075 = distinct !DILexicalBlock(scope: !3071, file: !639, line: 423, column: 15)
!3076 = !DILocation(line: 423, column: 15, scope: !3074)
!3077 = !DILocation(line: 423, column: 15, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !639, line: 423, column: 15)
!3079 = distinct !DILexicalBlock(scope: !3075, file: !639, line: 423, column: 15)
!3080 = !DILocation(line: 423, column: 15, scope: !3079)
!3081 = !DILocation(line: 423, column: 15, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !639, line: 423, column: 15)
!3083 = distinct !DILexicalBlock(scope: !3075, file: !639, line: 423, column: 15)
!3084 = !DILocation(line: 423, column: 15, scope: !3083)
!3085 = !DILocation(line: 423, column: 15, scope: !3075)
!3086 = !DILocation(line: 423, column: 15, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !639, line: 423, column: 15)
!3088 = distinct !DILexicalBlock(scope: !3067, file: !639, line: 423, column: 15)
!3089 = !DILocation(line: 423, column: 15, scope: !3088)
!3090 = !DILocation(line: 431, column: 19, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3068, file: !639, line: 430, column: 19)
!3092 = !DILocation(line: 431, column: 24, scope: !3091)
!3093 = !DILocation(line: 431, column: 28, scope: !3091)
!3094 = !DILocation(line: 431, column: 38, scope: !3091)
!3095 = !DILocation(line: 431, column: 48, scope: !3091)
!3096 = !DILocation(line: 431, column: 59, scope: !3091)
!3097 = !DILocation(line: 433, column: 19, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !639, line: 433, column: 19)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !639, line: 433, column: 19)
!3100 = distinct !DILexicalBlock(scope: !3091, file: !639, line: 432, column: 17)
!3101 = !DILocation(line: 433, column: 19, scope: !3099)
!3102 = !DILocation(line: 434, column: 19, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !639, line: 434, column: 19)
!3104 = distinct !DILexicalBlock(scope: !3100, file: !639, line: 434, column: 19)
!3105 = !DILocation(line: 434, column: 19, scope: !3104)
!3106 = !DILocation(line: 435, column: 17, scope: !3100)
!3107 = !DILocation(line: 442, column: 20, scope: !3069)
!3108 = !DILocation(line: 447, column: 11, scope: !2902)
!3109 = !DILocation(line: 450, column: 19, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !2902, file: !639, line: 448, column: 13)
!3111 = !DILocation(line: 456, column: 19, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3110, file: !639, line: 455, column: 19)
!3113 = !DILocation(line: 456, column: 24, scope: !3112)
!3114 = !DILocation(line: 456, column: 28, scope: !3112)
!3115 = !DILocation(line: 456, column: 38, scope: !3112)
!3116 = !DILocation(line: 456, column: 47, scope: !3112)
!3117 = !DILocation(line: 456, column: 41, scope: !3112)
!3118 = !DILocation(line: 456, column: 52, scope: !3112)
!3119 = !DILocation(line: 455, column: 19, scope: !3110)
!3120 = !DILocation(line: 457, column: 25, scope: !3112)
!3121 = !DILocation(line: 457, column: 17, scope: !3112)
!3122 = !DILocation(line: 464, column: 25, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3112, file: !639, line: 458, column: 19)
!3124 = !DILocation(line: 468, column: 21, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !639, line: 468, column: 21)
!3126 = distinct !DILexicalBlock(scope: !3123, file: !639, line: 468, column: 21)
!3127 = !DILocation(line: 468, column: 21, scope: !3126)
!3128 = !DILocation(line: 469, column: 21, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !639, line: 469, column: 21)
!3130 = distinct !DILexicalBlock(scope: !3123, file: !639, line: 469, column: 21)
!3131 = !DILocation(line: 469, column: 21, scope: !3130)
!3132 = !DILocation(line: 470, column: 21, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !639, line: 470, column: 21)
!3134 = distinct !DILexicalBlock(scope: !3123, file: !639, line: 470, column: 21)
!3135 = !DILocation(line: 470, column: 21, scope: !3134)
!3136 = !DILocation(line: 471, column: 21, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !639, line: 471, column: 21)
!3138 = distinct !DILexicalBlock(scope: !3123, file: !639, line: 471, column: 21)
!3139 = !DILocation(line: 471, column: 21, scope: !3138)
!3140 = !DILocation(line: 472, column: 21, scope: !3123)
!3141 = !DILocation(line: 482, column: 33, scope: !2925)
!3142 = !DILocation(line: 483, column: 33, scope: !2925)
!3143 = !DILocation(line: 485, column: 33, scope: !2925)
!3144 = !DILocation(line: 486, column: 33, scope: !2925)
!3145 = !DILocation(line: 487, column: 33, scope: !2925)
!3146 = !DILocation(line: 490, column: 17, scope: !2925)
!3147 = !DILocation(line: 492, column: 21, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !639, line: 491, column: 15)
!3149 = distinct !DILexicalBlock(scope: !2925, file: !639, line: 490, column: 17)
!3150 = !DILocation(line: 499, column: 35, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !2925, file: !639, line: 499, column: 17)
!3152 = !DILocation(line: 499, column: 57, scope: !3151)
!3153 = !DILocation(line: 0, scope: !2925)
!3154 = !DILocation(line: 502, column: 11, scope: !2925)
!3155 = !DILocation(line: 504, column: 17, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !2925, file: !639, line: 503, column: 17)
!3157 = !DILocation(line: 507, column: 11, scope: !2925)
!3158 = !DILocation(line: 508, column: 17, scope: !2925)
!3159 = !DILocation(line: 517, column: 15, scope: !2902)
!3160 = !DILocation(line: 517, column: 40, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !2902, file: !639, line: 517, column: 15)
!3162 = !DILocation(line: 517, column: 47, scope: !3161)
!3163 = !DILocation(line: 517, column: 18, scope: !3161)
!3164 = !DILocation(line: 521, column: 17, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !2902, file: !639, line: 521, column: 15)
!3166 = !DILocation(line: 521, column: 15, scope: !2902)
!3167 = !DILocation(line: 525, column: 11, scope: !2902)
!3168 = !DILocation(line: 537, column: 15, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !2902, file: !639, line: 536, column: 15)
!3170 = !DILocation(line: 544, column: 15, scope: !2902)
!3171 = !DILocation(line: 546, column: 19, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !639, line: 545, column: 13)
!3173 = distinct !DILexicalBlock(scope: !2902, file: !639, line: 544, column: 15)
!3174 = !DILocation(line: 549, column: 19, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3172, file: !639, line: 549, column: 19)
!3176 = !DILocation(line: 549, column: 30, scope: !3175)
!3177 = !DILocation(line: 558, column: 15, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !639, line: 558, column: 15)
!3179 = distinct !DILexicalBlock(scope: !3172, file: !639, line: 558, column: 15)
!3180 = !DILocation(line: 558, column: 15, scope: !3179)
!3181 = !DILocation(line: 559, column: 15, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !639, line: 559, column: 15)
!3183 = distinct !DILexicalBlock(scope: !3172, file: !639, line: 559, column: 15)
!3184 = !DILocation(line: 559, column: 15, scope: !3183)
!3185 = !DILocation(line: 560, column: 15, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !639, line: 560, column: 15)
!3187 = distinct !DILexicalBlock(scope: !3172, file: !639, line: 560, column: 15)
!3188 = !DILocation(line: 560, column: 15, scope: !3187)
!3189 = !DILocation(line: 562, column: 13, scope: !3172)
!3190 = !DILocation(line: 602, column: 17, scope: !2901)
!3191 = !DILocation(line: 0, scope: !2901)
!3192 = !DILocation(line: 605, column: 29, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !2906, file: !639, line: 603, column: 15)
!3194 = !DILocation(line: 605, column: 27, scope: !3193)
!3195 = !DILocation(line: 668, column: 40, scope: !2901)
!3196 = !DILocation(line: 670, column: 23, scope: !2922)
!3197 = !DILocation(line: 609, column: 17, scope: !2905)
!3198 = !DILocation(line: 609, column: 27, scope: !2905)
!3199 = !DILocation(line: 0, scope: !2962, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 609, column: 32, scope: !2905)
!3201 = !DILocation(line: 0, scope: !2971, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 1137, column: 3, scope: !2962, inlinedAt: !3200)
!3203 = !DILocation(line: 59, column: 10, scope: !2971, inlinedAt: !3202)
!3204 = !DILocation(line: 613, column: 29, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !2905, file: !639, line: 613, column: 21)
!3206 = !DILocation(line: 613, column: 21, scope: !2905)
!3207 = !DILocation(line: 614, column: 29, scope: !3205)
!3208 = !DILocation(line: 614, column: 19, scope: !3205)
!3209 = !DILocation(line: 618, column: 21, scope: !2908)
!3210 = !DILocation(line: 620, column: 54, scope: !2908)
!3211 = !DILocation(line: 0, scope: !2908)
!3212 = !DILocation(line: 619, column: 36, scope: !2908)
!3213 = !DILocation(line: 621, column: 25, scope: !2908)
!3214 = !DILocation(line: 631, column: 38, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !2917, file: !639, line: 629, column: 23)
!3216 = !DILocation(line: 631, column: 48, scope: !3215)
!3217 = !DILocation(line: 665, column: 19, scope: !2909)
!3218 = !DILocation(line: 666, column: 15, scope: !2906)
!3219 = !DILocation(line: 626, column: 25, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !2918, file: !639, line: 624, column: 23)
!3221 = !DILocation(line: 631, column: 51, scope: !3215)
!3222 = !DILocation(line: 631, column: 25, scope: !3215)
!3223 = !DILocation(line: 632, column: 28, scope: !3215)
!3224 = !DILocation(line: 631, column: 34, scope: !3215)
!3225 = distinct !{!3225, !3222, !3223, !1099}
!3226 = !DILocation(line: 646, column: 29, scope: !2915)
!3227 = !DILocation(line: 0, scope: !2913)
!3228 = !DILocation(line: 649, column: 49, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !2913, file: !639, line: 648, column: 29)
!3230 = !DILocation(line: 649, column: 39, scope: !3229)
!3231 = !DILocation(line: 649, column: 31, scope: !3229)
!3232 = !DILocation(line: 648, column: 60, scope: !3229)
!3233 = !DILocation(line: 648, column: 50, scope: !3229)
!3234 = !DILocation(line: 648, column: 29, scope: !2913)
!3235 = distinct !{!3235, !3234, !3236, !1099}
!3236 = !DILocation(line: 654, column: 33, scope: !2913)
!3237 = !DILocation(line: 657, column: 43, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !2916, file: !639, line: 657, column: 29)
!3239 = !DILocalVariable(name: "wc", arg: 1, scope: !3240, file: !3241, line: 865, type: !3244)
!3240 = distinct !DISubprogram(name: "c32isprint", scope: !3241, file: !3241, line: 865, type: !3242, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3246)
!3241 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!260, !3244}
!3244 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3245, line: 20, baseType: !224)
!3245 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3246 = !{!3239}
!3247 = !DILocation(line: 0, scope: !3240, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 657, column: 31, scope: !3238)
!3249 = !DILocation(line: 871, column: 10, scope: !3240, inlinedAt: !3248)
!3250 = !DILocation(line: 657, column: 31, scope: !3238)
!3251 = !DILocation(line: 657, column: 29, scope: !2916)
!3252 = !DILocation(line: 664, column: 23, scope: !2908)
!3253 = !DILocation(line: 670, column: 19, scope: !2922)
!3254 = !DILocation(line: 670, column: 45, scope: !2922)
!3255 = !DILocation(line: 674, column: 33, scope: !2921)
!3256 = !DILocation(line: 0, scope: !2921)
!3257 = !DILocation(line: 676, column: 17, scope: !2921)
!3258 = !DILocation(line: 398, column: 12, scope: !2895)
!3259 = !DILocation(line: 678, column: 43, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !639, line: 678, column: 25)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !639, line: 677, column: 19)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !639, line: 676, column: 17)
!3263 = distinct !DILexicalBlock(scope: !2921, file: !639, line: 676, column: 17)
!3264 = !DILocation(line: 680, column: 25, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !639, line: 680, column: 25)
!3266 = distinct !DILexicalBlock(scope: !3260, file: !639, line: 679, column: 23)
!3267 = !DILocation(line: 680, column: 25, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3265, file: !639, line: 680, column: 25)
!3269 = !DILocation(line: 680, column: 25, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !639, line: 680, column: 25)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !639, line: 680, column: 25)
!3272 = distinct !DILexicalBlock(scope: !3268, file: !639, line: 680, column: 25)
!3273 = !DILocation(line: 680, column: 25, scope: !3271)
!3274 = !DILocation(line: 680, column: 25, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3276, file: !639, line: 680, column: 25)
!3276 = distinct !DILexicalBlock(scope: !3272, file: !639, line: 680, column: 25)
!3277 = !DILocation(line: 680, column: 25, scope: !3276)
!3278 = !DILocation(line: 680, column: 25, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !639, line: 680, column: 25)
!3280 = distinct !DILexicalBlock(scope: !3272, file: !639, line: 680, column: 25)
!3281 = !DILocation(line: 680, column: 25, scope: !3280)
!3282 = !DILocation(line: 680, column: 25, scope: !3272)
!3283 = !DILocation(line: 680, column: 25, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !639, line: 680, column: 25)
!3285 = distinct !DILexicalBlock(scope: !3265, file: !639, line: 680, column: 25)
!3286 = !DILocation(line: 680, column: 25, scope: !3285)
!3287 = !DILocation(line: 681, column: 25, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !639, line: 681, column: 25)
!3289 = distinct !DILexicalBlock(scope: !3266, file: !639, line: 681, column: 25)
!3290 = !DILocation(line: 681, column: 25, scope: !3289)
!3291 = !DILocation(line: 682, column: 25, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !639, line: 682, column: 25)
!3293 = distinct !DILexicalBlock(scope: !3266, file: !639, line: 682, column: 25)
!3294 = !DILocation(line: 682, column: 25, scope: !3293)
!3295 = !DILocation(line: 683, column: 38, scope: !3266)
!3296 = !DILocation(line: 683, column: 33, scope: !3266)
!3297 = !DILocation(line: 684, column: 23, scope: !3266)
!3298 = !DILocation(line: 685, column: 30, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3260, file: !639, line: 685, column: 30)
!3300 = !DILocation(line: 685, column: 30, scope: !3260)
!3301 = !DILocation(line: 687, column: 25, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !639, line: 687, column: 25)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !639, line: 687, column: 25)
!3304 = distinct !DILexicalBlock(scope: !3299, file: !639, line: 686, column: 23)
!3305 = !DILocation(line: 687, column: 25, scope: !3303)
!3306 = !DILocation(line: 689, column: 23, scope: !3304)
!3307 = !DILocation(line: 690, column: 35, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3261, file: !639, line: 690, column: 25)
!3309 = !DILocation(line: 690, column: 30, scope: !3308)
!3310 = !DILocation(line: 690, column: 25, scope: !3261)
!3311 = !DILocation(line: 692, column: 21, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !639, line: 692, column: 21)
!3313 = distinct !DILexicalBlock(scope: !3261, file: !639, line: 692, column: 21)
!3314 = !DILocation(line: 692, column: 21, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3316, file: !639, line: 692, column: 21)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !639, line: 692, column: 21)
!3317 = distinct !DILexicalBlock(scope: !3312, file: !639, line: 692, column: 21)
!3318 = !DILocation(line: 692, column: 21, scope: !3316)
!3319 = !DILocation(line: 692, column: 21, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !639, line: 692, column: 21)
!3321 = distinct !DILexicalBlock(scope: !3317, file: !639, line: 692, column: 21)
!3322 = !DILocation(line: 692, column: 21, scope: !3321)
!3323 = !DILocation(line: 692, column: 21, scope: !3317)
!3324 = !DILocation(line: 0, scope: !3261)
!3325 = !DILocation(line: 693, column: 21, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !639, line: 693, column: 21)
!3327 = distinct !DILexicalBlock(scope: !3261, file: !639, line: 693, column: 21)
!3328 = !DILocation(line: 693, column: 21, scope: !3327)
!3329 = !DILocation(line: 694, column: 25, scope: !3261)
!3330 = !DILocation(line: 676, column: 17, scope: !3262)
!3331 = distinct !{!3331, !3332, !3333}
!3332 = !DILocation(line: 676, column: 17, scope: !3263)
!3333 = !DILocation(line: 695, column: 19, scope: !3263)
!3334 = !DILocation(line: 409, column: 30, scope: !3045)
!3335 = !DILocation(line: 702, column: 34, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !2895, file: !639, line: 702, column: 11)
!3337 = !DILocation(line: 704, column: 14, scope: !3336)
!3338 = !DILocation(line: 705, column: 14, scope: !3336)
!3339 = !DILocation(line: 705, column: 35, scope: !3336)
!3340 = !DILocation(line: 705, column: 17, scope: !3336)
!3341 = !DILocation(line: 705, column: 47, scope: !3336)
!3342 = !DILocation(line: 705, column: 65, scope: !3336)
!3343 = !DILocation(line: 706, column: 11, scope: !3336)
!3344 = !DILocation(line: 702, column: 11, scope: !2895)
!3345 = !DILocation(line: 395, column: 15, scope: !2893)
!3346 = !DILocation(line: 709, column: 5, scope: !2895)
!3347 = !DILocation(line: 710, column: 7, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !2895, file: !639, line: 710, column: 7)
!3349 = !DILocation(line: 710, column: 7, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3348, file: !639, line: 710, column: 7)
!3351 = !DILocation(line: 710, column: 7, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !639, line: 710, column: 7)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !639, line: 710, column: 7)
!3354 = distinct !DILexicalBlock(scope: !3350, file: !639, line: 710, column: 7)
!3355 = !DILocation(line: 710, column: 7, scope: !3353)
!3356 = !DILocation(line: 710, column: 7, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3358, file: !639, line: 710, column: 7)
!3358 = distinct !DILexicalBlock(scope: !3354, file: !639, line: 710, column: 7)
!3359 = !DILocation(line: 710, column: 7, scope: !3358)
!3360 = !DILocation(line: 710, column: 7, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !639, line: 710, column: 7)
!3362 = distinct !DILexicalBlock(scope: !3354, file: !639, line: 710, column: 7)
!3363 = !DILocation(line: 710, column: 7, scope: !3362)
!3364 = !DILocation(line: 710, column: 7, scope: !3354)
!3365 = !DILocation(line: 710, column: 7, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !639, line: 710, column: 7)
!3367 = distinct !DILexicalBlock(scope: !3348, file: !639, line: 710, column: 7)
!3368 = !DILocation(line: 710, column: 7, scope: !3367)
!3369 = !DILocation(line: 712, column: 5, scope: !2895)
!3370 = !DILocation(line: 713, column: 7, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !639, line: 713, column: 7)
!3372 = distinct !DILexicalBlock(scope: !2895, file: !639, line: 713, column: 7)
!3373 = !DILocation(line: 417, column: 21, scope: !2895)
!3374 = !DILocation(line: 713, column: 7, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !639, line: 713, column: 7)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !639, line: 713, column: 7)
!3377 = distinct !DILexicalBlock(scope: !3371, file: !639, line: 713, column: 7)
!3378 = !DILocation(line: 713, column: 7, scope: !3376)
!3379 = !DILocation(line: 713, column: 7, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !639, line: 713, column: 7)
!3381 = distinct !DILexicalBlock(scope: !3377, file: !639, line: 713, column: 7)
!3382 = !DILocation(line: 713, column: 7, scope: !3381)
!3383 = !DILocation(line: 713, column: 7, scope: !3377)
!3384 = !DILocation(line: 714, column: 7, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !639, line: 714, column: 7)
!3386 = distinct !DILexicalBlock(scope: !2895, file: !639, line: 714, column: 7)
!3387 = !DILocation(line: 714, column: 7, scope: !3386)
!3388 = !DILocation(line: 716, column: 13, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !2895, file: !639, line: 716, column: 11)
!3390 = !DILocation(line: 716, column: 11, scope: !2895)
!3391 = !DILocation(line: 718, column: 5, scope: !2896)
!3392 = !DILocation(line: 395, column: 82, scope: !2896)
!3393 = !DILocation(line: 395, column: 3, scope: !2896)
!3394 = distinct !{!3394, !3041, !3395, !1099}
!3395 = !DILocation(line: 718, column: 5, scope: !2893)
!3396 = !DILocation(line: 720, column: 11, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !2862, file: !639, line: 720, column: 7)
!3398 = !DILocation(line: 720, column: 16, scope: !3397)
!3399 = !DILocation(line: 728, column: 51, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !2862, file: !639, line: 728, column: 7)
!3401 = !DILocation(line: 731, column: 11, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !639, line: 731, column: 11)
!3403 = distinct !DILexicalBlock(scope: !3400, file: !639, line: 730, column: 5)
!3404 = !DILocation(line: 731, column: 11, scope: !3403)
!3405 = !DILocation(line: 732, column: 16, scope: !3402)
!3406 = !DILocation(line: 732, column: 9, scope: !3402)
!3407 = !DILocation(line: 736, column: 18, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3402, file: !639, line: 736, column: 16)
!3409 = !DILocation(line: 736, column: 29, scope: !3408)
!3410 = !DILocation(line: 745, column: 7, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !2862, file: !639, line: 745, column: 7)
!3412 = !DILocation(line: 745, column: 20, scope: !3411)
!3413 = !DILocation(line: 746, column: 12, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !639, line: 746, column: 5)
!3415 = distinct !DILexicalBlock(scope: !3411, file: !639, line: 746, column: 5)
!3416 = !DILocation(line: 746, column: 5, scope: !3415)
!3417 = !DILocation(line: 747, column: 7, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !639, line: 747, column: 7)
!3419 = distinct !DILexicalBlock(scope: !3414, file: !639, line: 747, column: 7)
!3420 = !DILocation(line: 747, column: 7, scope: !3419)
!3421 = !DILocation(line: 746, column: 39, scope: !3414)
!3422 = distinct !{!3422, !3416, !3423, !1099}
!3423 = !DILocation(line: 747, column: 7, scope: !3415)
!3424 = !DILocation(line: 749, column: 11, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !2862, file: !639, line: 749, column: 7)
!3426 = !DILocation(line: 749, column: 7, scope: !2862)
!3427 = !DILocation(line: 750, column: 5, scope: !3425)
!3428 = !DILocation(line: 750, column: 17, scope: !3425)
!3429 = !DILocation(line: 753, column: 2, scope: !2862)
!3430 = !DILocation(line: 756, column: 51, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !2862, file: !639, line: 756, column: 7)
!3432 = !DILocation(line: 756, column: 21, scope: !3431)
!3433 = !DILocation(line: 760, column: 42, scope: !2862)
!3434 = !DILocation(line: 758, column: 10, scope: !2862)
!3435 = !DILocation(line: 758, column: 3, scope: !2862)
!3436 = !DILocation(line: 762, column: 1, scope: !2862)
!3437 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1180, file: !1180, line: 98, type: !3438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!262}
!3440 = !DISubprogram(name: "iswprint", scope: !3441, file: !3441, line: 120, type: !3242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!3441 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3442 = distinct !DISubprogram(name: "quotearg_alloc", scope: !639, file: !639, line: 788, type: !3443, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3445)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!317, !265, !262, !2755}
!3445 = !{!3446, !3447, !3448}
!3446 = !DILocalVariable(name: "arg", arg: 1, scope: !3442, file: !639, line: 788, type: !265)
!3447 = !DILocalVariable(name: "argsize", arg: 2, scope: !3442, file: !639, line: 788, type: !262)
!3448 = !DILocalVariable(name: "o", arg: 3, scope: !3442, file: !639, line: 789, type: !2755)
!3449 = !DILocation(line: 0, scope: !3442)
!3450 = !DILocalVariable(name: "arg", arg: 1, scope: !3451, file: !639, line: 801, type: !265)
!3451 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !639, file: !639, line: 801, type: !3452, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3454)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!317, !265, !262, !885, !2755}
!3454 = !{!3450, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462}
!3455 = !DILocalVariable(name: "argsize", arg: 2, scope: !3451, file: !639, line: 801, type: !262)
!3456 = !DILocalVariable(name: "size", arg: 3, scope: !3451, file: !639, line: 801, type: !885)
!3457 = !DILocalVariable(name: "o", arg: 4, scope: !3451, file: !639, line: 802, type: !2755)
!3458 = !DILocalVariable(name: "p", scope: !3451, file: !639, line: 804, type: !2755)
!3459 = !DILocalVariable(name: "saved_errno", scope: !3451, file: !639, line: 805, type: !260)
!3460 = !DILocalVariable(name: "flags", scope: !3451, file: !639, line: 807, type: !260)
!3461 = !DILocalVariable(name: "bufsize", scope: !3451, file: !639, line: 808, type: !262)
!3462 = !DILocalVariable(name: "buf", scope: !3451, file: !639, line: 812, type: !317)
!3463 = !DILocation(line: 0, scope: !3451, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 791, column: 10, scope: !3442)
!3465 = !DILocation(line: 804, column: 37, scope: !3451, inlinedAt: !3464)
!3466 = !DILocation(line: 805, column: 21, scope: !3451, inlinedAt: !3464)
!3467 = !DILocation(line: 807, column: 18, scope: !3451, inlinedAt: !3464)
!3468 = !DILocation(line: 807, column: 24, scope: !3451, inlinedAt: !3464)
!3469 = !DILocation(line: 808, column: 72, scope: !3451, inlinedAt: !3464)
!3470 = !DILocation(line: 809, column: 56, scope: !3451, inlinedAt: !3464)
!3471 = !DILocation(line: 810, column: 49, scope: !3451, inlinedAt: !3464)
!3472 = !DILocation(line: 811, column: 49, scope: !3451, inlinedAt: !3464)
!3473 = !DILocation(line: 808, column: 20, scope: !3451, inlinedAt: !3464)
!3474 = !DILocation(line: 811, column: 62, scope: !3451, inlinedAt: !3464)
!3475 = !DILocation(line: 812, column: 15, scope: !3451, inlinedAt: !3464)
!3476 = !DILocation(line: 813, column: 60, scope: !3451, inlinedAt: !3464)
!3477 = !DILocation(line: 815, column: 32, scope: !3451, inlinedAt: !3464)
!3478 = !DILocation(line: 815, column: 47, scope: !3451, inlinedAt: !3464)
!3479 = !DILocation(line: 813, column: 3, scope: !3451, inlinedAt: !3464)
!3480 = !DILocation(line: 816, column: 9, scope: !3451, inlinedAt: !3464)
!3481 = !DILocation(line: 791, column: 3, scope: !3442)
!3482 = !DILocation(line: 0, scope: !3451)
!3483 = !DILocation(line: 804, column: 37, scope: !3451)
!3484 = !DILocation(line: 805, column: 21, scope: !3451)
!3485 = !DILocation(line: 807, column: 18, scope: !3451)
!3486 = !DILocation(line: 807, column: 27, scope: !3451)
!3487 = !DILocation(line: 807, column: 24, scope: !3451)
!3488 = !DILocation(line: 808, column: 72, scope: !3451)
!3489 = !DILocation(line: 809, column: 56, scope: !3451)
!3490 = !DILocation(line: 810, column: 49, scope: !3451)
!3491 = !DILocation(line: 811, column: 49, scope: !3451)
!3492 = !DILocation(line: 808, column: 20, scope: !3451)
!3493 = !DILocation(line: 811, column: 62, scope: !3451)
!3494 = !DILocation(line: 812, column: 15, scope: !3451)
!3495 = !DILocation(line: 813, column: 60, scope: !3451)
!3496 = !DILocation(line: 815, column: 32, scope: !3451)
!3497 = !DILocation(line: 815, column: 47, scope: !3451)
!3498 = !DILocation(line: 813, column: 3, scope: !3451)
!3499 = !DILocation(line: 816, column: 9, scope: !3451)
!3500 = !DILocation(line: 817, column: 7, scope: !3451)
!3501 = !DILocation(line: 818, column: 11, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3451, file: !639, line: 817, column: 7)
!3503 = !DILocation(line: 818, column: 5, scope: !3502)
!3504 = !DILocation(line: 819, column: 3, scope: !3451)
!3505 = distinct !DISubprogram(name: "quotearg_free", scope: !639, file: !639, line: 837, type: !625, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3506)
!3506 = !{!3507, !3508}
!3507 = !DILocalVariable(name: "sv", scope: !3505, file: !639, line: 839, type: !746)
!3508 = !DILocalVariable(name: "i", scope: !3509, file: !639, line: 840, type: !260)
!3509 = distinct !DILexicalBlock(scope: !3505, file: !639, line: 840, column: 3)
!3510 = !DILocation(line: 839, column: 24, scope: !3505)
!3511 = !DILocation(line: 0, scope: !3505)
!3512 = !DILocation(line: 0, scope: !3509)
!3513 = !DILocation(line: 840, column: 21, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3509, file: !639, line: 840, column: 3)
!3515 = !DILocation(line: 840, column: 3, scope: !3509)
!3516 = !DILocation(line: 842, column: 13, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3505, file: !639, line: 842, column: 7)
!3518 = !{!3519, !952, i64 8}
!3519 = !{!"slotvec", !1548, i64 0, !952, i64 8}
!3520 = !DILocation(line: 842, column: 17, scope: !3517)
!3521 = !DILocation(line: 842, column: 7, scope: !3505)
!3522 = !DILocation(line: 841, column: 17, scope: !3514)
!3523 = !DILocation(line: 841, column: 5, scope: !3514)
!3524 = !DILocation(line: 840, column: 32, scope: !3514)
!3525 = distinct !{!3525, !3515, !3526, !1099}
!3526 = !DILocation(line: 841, column: 20, scope: !3509)
!3527 = !DILocation(line: 844, column: 7, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3517, file: !639, line: 843, column: 5)
!3529 = !DILocation(line: 845, column: 21, scope: !3528)
!3530 = !{!3519, !1548, i64 0}
!3531 = !DILocation(line: 846, column: 20, scope: !3528)
!3532 = !DILocation(line: 847, column: 5, scope: !3528)
!3533 = !DILocation(line: 848, column: 10, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3505, file: !639, line: 848, column: 7)
!3535 = !DILocation(line: 848, column: 7, scope: !3505)
!3536 = !DILocation(line: 850, column: 7, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3534, file: !639, line: 849, column: 5)
!3538 = !DILocation(line: 851, column: 15, scope: !3537)
!3539 = !DILocation(line: 852, column: 5, scope: !3537)
!3540 = !DILocation(line: 853, column: 10, scope: !3505)
!3541 = !DILocation(line: 854, column: 1, scope: !3505)
!3542 = !DISubprogram(name: "free", scope: !2963, file: !2963, line: 786, type: !3543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{null, !354}
!3545 = distinct !DISubprogram(name: "quotearg_n", scope: !639, file: !639, line: 919, type: !1173, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3546)
!3546 = !{!3547, !3548}
!3547 = !DILocalVariable(name: "n", arg: 1, scope: !3545, file: !639, line: 919, type: !260)
!3548 = !DILocalVariable(name: "arg", arg: 2, scope: !3545, file: !639, line: 919, type: !265)
!3549 = !DILocation(line: 0, scope: !3545)
!3550 = !DILocation(line: 921, column: 10, scope: !3545)
!3551 = !DILocation(line: 921, column: 3, scope: !3545)
!3552 = distinct !DISubprogram(name: "quotearg_n_options", scope: !639, file: !639, line: 866, type: !3553, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3555)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!317, !260, !265, !262, !2755}
!3555 = !{!3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3566, !3567, !3569, !3570, !3571}
!3556 = !DILocalVariable(name: "n", arg: 1, scope: !3552, file: !639, line: 866, type: !260)
!3557 = !DILocalVariable(name: "arg", arg: 2, scope: !3552, file: !639, line: 866, type: !265)
!3558 = !DILocalVariable(name: "argsize", arg: 3, scope: !3552, file: !639, line: 866, type: !262)
!3559 = !DILocalVariable(name: "options", arg: 4, scope: !3552, file: !639, line: 867, type: !2755)
!3560 = !DILocalVariable(name: "saved_errno", scope: !3552, file: !639, line: 869, type: !260)
!3561 = !DILocalVariable(name: "sv", scope: !3552, file: !639, line: 871, type: !746)
!3562 = !DILocalVariable(name: "nslots_max", scope: !3552, file: !639, line: 873, type: !260)
!3563 = !DILocalVariable(name: "preallocated", scope: !3564, file: !639, line: 879, type: !296)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !639, line: 878, column: 5)
!3565 = distinct !DILexicalBlock(scope: !3552, file: !639, line: 877, column: 7)
!3566 = !DILocalVariable(name: "new_nslots", scope: !3564, file: !639, line: 880, type: !898)
!3567 = !DILocalVariable(name: "size", scope: !3568, file: !639, line: 891, type: !262)
!3568 = distinct !DILexicalBlock(scope: !3552, file: !639, line: 890, column: 3)
!3569 = !DILocalVariable(name: "val", scope: !3568, file: !639, line: 892, type: !317)
!3570 = !DILocalVariable(name: "flags", scope: !3568, file: !639, line: 894, type: !260)
!3571 = !DILocalVariable(name: "qsize", scope: !3568, file: !639, line: 895, type: !262)
!3572 = !DILocation(line: 0, scope: !3552)
!3573 = !DILocation(line: 869, column: 21, scope: !3552)
!3574 = !DILocation(line: 871, column: 24, scope: !3552)
!3575 = !DILocation(line: 874, column: 17, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3552, file: !639, line: 874, column: 7)
!3577 = !DILocation(line: 875, column: 5, scope: !3576)
!3578 = !DILocation(line: 877, column: 7, scope: !3565)
!3579 = !DILocation(line: 877, column: 14, scope: !3565)
!3580 = !DILocation(line: 877, column: 7, scope: !3552)
!3581 = !DILocation(line: 879, column: 31, scope: !3564)
!3582 = !DILocation(line: 0, scope: !3564)
!3583 = !DILocation(line: 880, column: 7, scope: !3564)
!3584 = !DILocation(line: 880, column: 26, scope: !3564)
!3585 = !DILocation(line: 880, column: 13, scope: !3564)
!3586 = !DILocation(line: 882, column: 31, scope: !3564)
!3587 = !DILocation(line: 883, column: 33, scope: !3564)
!3588 = !DILocation(line: 883, column: 42, scope: !3564)
!3589 = !DILocation(line: 883, column: 31, scope: !3564)
!3590 = !DILocation(line: 882, column: 22, scope: !3564)
!3591 = !DILocation(line: 882, column: 15, scope: !3564)
!3592 = !DILocation(line: 884, column: 11, scope: !3564)
!3593 = !DILocation(line: 885, column: 15, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3564, file: !639, line: 884, column: 11)
!3595 = !{i64 0, i64 8, !1547, i64 8, i64 8, !951}
!3596 = !DILocation(line: 885, column: 9, scope: !3594)
!3597 = !DILocation(line: 886, column: 20, scope: !3564)
!3598 = !DILocation(line: 886, column: 18, scope: !3564)
!3599 = !DILocation(line: 886, column: 32, scope: !3564)
!3600 = !DILocation(line: 886, column: 43, scope: !3564)
!3601 = !DILocation(line: 886, column: 53, scope: !3564)
!3602 = !DILocation(line: 0, scope: !2971, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 886, column: 7, scope: !3564)
!3604 = !DILocation(line: 59, column: 10, scope: !2971, inlinedAt: !3603)
!3605 = !DILocation(line: 887, column: 16, scope: !3564)
!3606 = !DILocation(line: 887, column: 14, scope: !3564)
!3607 = !DILocation(line: 888, column: 5, scope: !3565)
!3608 = !DILocation(line: 888, column: 5, scope: !3564)
!3609 = !DILocation(line: 891, column: 19, scope: !3568)
!3610 = !DILocation(line: 891, column: 25, scope: !3568)
!3611 = !DILocation(line: 0, scope: !3568)
!3612 = !DILocation(line: 892, column: 23, scope: !3568)
!3613 = !DILocation(line: 894, column: 26, scope: !3568)
!3614 = !DILocation(line: 894, column: 32, scope: !3568)
!3615 = !DILocation(line: 896, column: 55, scope: !3568)
!3616 = !DILocation(line: 897, column: 55, scope: !3568)
!3617 = !DILocation(line: 898, column: 55, scope: !3568)
!3618 = !DILocation(line: 899, column: 55, scope: !3568)
!3619 = !DILocation(line: 895, column: 20, scope: !3568)
!3620 = !DILocation(line: 901, column: 14, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3568, file: !639, line: 901, column: 9)
!3622 = !DILocation(line: 901, column: 9, scope: !3568)
!3623 = !DILocation(line: 903, column: 35, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3621, file: !639, line: 902, column: 7)
!3625 = !DILocation(line: 903, column: 20, scope: !3624)
!3626 = !DILocation(line: 904, column: 17, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3624, file: !639, line: 904, column: 13)
!3628 = !DILocation(line: 904, column: 13, scope: !3624)
!3629 = !DILocation(line: 905, column: 11, scope: !3627)
!3630 = !DILocation(line: 906, column: 27, scope: !3624)
!3631 = !DILocation(line: 906, column: 19, scope: !3624)
!3632 = !DILocation(line: 907, column: 69, scope: !3624)
!3633 = !DILocation(line: 909, column: 44, scope: !3624)
!3634 = !DILocation(line: 910, column: 44, scope: !3624)
!3635 = !DILocation(line: 907, column: 9, scope: !3624)
!3636 = !DILocation(line: 911, column: 7, scope: !3624)
!3637 = !DILocation(line: 913, column: 11, scope: !3568)
!3638 = !DILocation(line: 914, column: 5, scope: !3568)
!3639 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !639, file: !639, line: 925, type: !3640, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!317, !260, !265, !262}
!3642 = !{!3643, !3644, !3645}
!3643 = !DILocalVariable(name: "n", arg: 1, scope: !3639, file: !639, line: 925, type: !260)
!3644 = !DILocalVariable(name: "arg", arg: 2, scope: !3639, file: !639, line: 925, type: !265)
!3645 = !DILocalVariable(name: "argsize", arg: 3, scope: !3639, file: !639, line: 925, type: !262)
!3646 = !DILocation(line: 0, scope: !3639)
!3647 = !DILocation(line: 927, column: 10, scope: !3639)
!3648 = !DILocation(line: 927, column: 3, scope: !3639)
!3649 = distinct !DISubprogram(name: "quotearg", scope: !639, file: !639, line: 931, type: !1182, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3650)
!3650 = !{!3651}
!3651 = !DILocalVariable(name: "arg", arg: 1, scope: !3649, file: !639, line: 931, type: !265)
!3652 = !DILocation(line: 0, scope: !3649)
!3653 = !DILocation(line: 0, scope: !3545, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 933, column: 10, scope: !3649)
!3655 = !DILocation(line: 921, column: 10, scope: !3545, inlinedAt: !3654)
!3656 = !DILocation(line: 933, column: 3, scope: !3649)
!3657 = distinct !DISubprogram(name: "quotearg_mem", scope: !639, file: !639, line: 937, type: !3658, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3660)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!317, !265, !262}
!3660 = !{!3661, !3662}
!3661 = !DILocalVariable(name: "arg", arg: 1, scope: !3657, file: !639, line: 937, type: !265)
!3662 = !DILocalVariable(name: "argsize", arg: 2, scope: !3657, file: !639, line: 937, type: !262)
!3663 = !DILocation(line: 0, scope: !3657)
!3664 = !DILocation(line: 0, scope: !3639, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 939, column: 10, scope: !3657)
!3666 = !DILocation(line: 927, column: 10, scope: !3639, inlinedAt: !3665)
!3667 = !DILocation(line: 939, column: 3, scope: !3657)
!3668 = distinct !DISubprogram(name: "quotearg_n_style", scope: !639, file: !639, line: 943, type: !3669, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3671)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!317, !260, !665, !265}
!3671 = !{!3672, !3673, !3674, !3675}
!3672 = !DILocalVariable(name: "n", arg: 1, scope: !3668, file: !639, line: 943, type: !260)
!3673 = !DILocalVariable(name: "s", arg: 2, scope: !3668, file: !639, line: 943, type: !665)
!3674 = !DILocalVariable(name: "arg", arg: 3, scope: !3668, file: !639, line: 943, type: !265)
!3675 = !DILocalVariable(name: "o", scope: !3668, file: !639, line: 945, type: !2756)
!3676 = !DILocation(line: 0, scope: !3668)
!3677 = !DILocation(line: 945, column: 3, scope: !3668)
!3678 = !DILocation(line: 945, column: 32, scope: !3668)
!3679 = !{!3680}
!3680 = distinct !{!3680, !3681, !"quoting_options_from_style: argument 0"}
!3681 = distinct !{!3681, !"quoting_options_from_style"}
!3682 = !DILocation(line: 945, column: 36, scope: !3668)
!3683 = !DILocalVariable(name: "style", arg: 1, scope: !3684, file: !639, line: 183, type: !665)
!3684 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !639, file: !639, line: 183, type: !3685, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3687)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!692, !665}
!3687 = !{!3683, !3688}
!3688 = !DILocalVariable(name: "o", scope: !3684, file: !639, line: 185, type: !692)
!3689 = !DILocation(line: 0, scope: !3684, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 945, column: 36, scope: !3668)
!3691 = !DILocation(line: 185, column: 26, scope: !3684, inlinedAt: !3690)
!3692 = !DILocation(line: 186, column: 13, scope: !3693, inlinedAt: !3690)
!3693 = distinct !DILexicalBlock(scope: !3684, file: !639, line: 186, column: 7)
!3694 = !DILocation(line: 186, column: 7, scope: !3684, inlinedAt: !3690)
!3695 = !DILocation(line: 187, column: 5, scope: !3693, inlinedAt: !3690)
!3696 = !DILocation(line: 188, column: 11, scope: !3684, inlinedAt: !3690)
!3697 = !DILocation(line: 946, column: 10, scope: !3668)
!3698 = !DILocation(line: 947, column: 1, scope: !3668)
!3699 = !DILocation(line: 946, column: 3, scope: !3668)
!3700 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !639, file: !639, line: 950, type: !3701, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3703)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!317, !260, !665, !265, !262}
!3703 = !{!3704, !3705, !3706, !3707, !3708}
!3704 = !DILocalVariable(name: "n", arg: 1, scope: !3700, file: !639, line: 950, type: !260)
!3705 = !DILocalVariable(name: "s", arg: 2, scope: !3700, file: !639, line: 950, type: !665)
!3706 = !DILocalVariable(name: "arg", arg: 3, scope: !3700, file: !639, line: 951, type: !265)
!3707 = !DILocalVariable(name: "argsize", arg: 4, scope: !3700, file: !639, line: 951, type: !262)
!3708 = !DILocalVariable(name: "o", scope: !3700, file: !639, line: 953, type: !2756)
!3709 = !DILocation(line: 0, scope: !3700)
!3710 = !DILocation(line: 953, column: 3, scope: !3700)
!3711 = !DILocation(line: 953, column: 32, scope: !3700)
!3712 = !{!3713}
!3713 = distinct !{!3713, !3714, !"quoting_options_from_style: argument 0"}
!3714 = distinct !{!3714, !"quoting_options_from_style"}
!3715 = !DILocation(line: 953, column: 36, scope: !3700)
!3716 = !DILocation(line: 0, scope: !3684, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 953, column: 36, scope: !3700)
!3718 = !DILocation(line: 185, column: 26, scope: !3684, inlinedAt: !3717)
!3719 = !DILocation(line: 186, column: 13, scope: !3693, inlinedAt: !3717)
!3720 = !DILocation(line: 186, column: 7, scope: !3684, inlinedAt: !3717)
!3721 = !DILocation(line: 187, column: 5, scope: !3693, inlinedAt: !3717)
!3722 = !DILocation(line: 188, column: 11, scope: !3684, inlinedAt: !3717)
!3723 = !DILocation(line: 954, column: 10, scope: !3700)
!3724 = !DILocation(line: 955, column: 1, scope: !3700)
!3725 = !DILocation(line: 954, column: 3, scope: !3700)
!3726 = distinct !DISubprogram(name: "quotearg_style", scope: !639, file: !639, line: 958, type: !3727, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3729)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!317, !665, !265}
!3729 = !{!3730, !3731}
!3730 = !DILocalVariable(name: "s", arg: 1, scope: !3726, file: !639, line: 958, type: !665)
!3731 = !DILocalVariable(name: "arg", arg: 2, scope: !3726, file: !639, line: 958, type: !265)
!3732 = !DILocation(line: 0, scope: !3726)
!3733 = !DILocation(line: 0, scope: !3668, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 960, column: 10, scope: !3726)
!3735 = !DILocation(line: 945, column: 3, scope: !3668, inlinedAt: !3734)
!3736 = !DILocation(line: 945, column: 32, scope: !3668, inlinedAt: !3734)
!3737 = !{!3738}
!3738 = distinct !{!3738, !3739, !"quoting_options_from_style: argument 0"}
!3739 = distinct !{!3739, !"quoting_options_from_style"}
!3740 = !DILocation(line: 945, column: 36, scope: !3668, inlinedAt: !3734)
!3741 = !DILocation(line: 0, scope: !3684, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 945, column: 36, scope: !3668, inlinedAt: !3734)
!3743 = !DILocation(line: 185, column: 26, scope: !3684, inlinedAt: !3742)
!3744 = !DILocation(line: 186, column: 13, scope: !3693, inlinedAt: !3742)
!3745 = !DILocation(line: 186, column: 7, scope: !3684, inlinedAt: !3742)
!3746 = !DILocation(line: 187, column: 5, scope: !3693, inlinedAt: !3742)
!3747 = !DILocation(line: 188, column: 11, scope: !3684, inlinedAt: !3742)
!3748 = !DILocation(line: 946, column: 10, scope: !3668, inlinedAt: !3734)
!3749 = !DILocation(line: 947, column: 1, scope: !3668, inlinedAt: !3734)
!3750 = !DILocation(line: 960, column: 3, scope: !3726)
!3751 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !639, file: !639, line: 964, type: !3752, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3754)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!317, !665, !265, !262}
!3754 = !{!3755, !3756, !3757}
!3755 = !DILocalVariable(name: "s", arg: 1, scope: !3751, file: !639, line: 964, type: !665)
!3756 = !DILocalVariable(name: "arg", arg: 2, scope: !3751, file: !639, line: 964, type: !265)
!3757 = !DILocalVariable(name: "argsize", arg: 3, scope: !3751, file: !639, line: 964, type: !262)
!3758 = !DILocation(line: 0, scope: !3751)
!3759 = !DILocation(line: 0, scope: !3700, inlinedAt: !3760)
!3760 = distinct !DILocation(line: 966, column: 10, scope: !3751)
!3761 = !DILocation(line: 953, column: 3, scope: !3700, inlinedAt: !3760)
!3762 = !DILocation(line: 953, column: 32, scope: !3700, inlinedAt: !3760)
!3763 = !{!3764}
!3764 = distinct !{!3764, !3765, !"quoting_options_from_style: argument 0"}
!3765 = distinct !{!3765, !"quoting_options_from_style"}
!3766 = !DILocation(line: 953, column: 36, scope: !3700, inlinedAt: !3760)
!3767 = !DILocation(line: 0, scope: !3684, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 953, column: 36, scope: !3700, inlinedAt: !3760)
!3769 = !DILocation(line: 185, column: 26, scope: !3684, inlinedAt: !3768)
!3770 = !DILocation(line: 186, column: 13, scope: !3693, inlinedAt: !3768)
!3771 = !DILocation(line: 186, column: 7, scope: !3684, inlinedAt: !3768)
!3772 = !DILocation(line: 187, column: 5, scope: !3693, inlinedAt: !3768)
!3773 = !DILocation(line: 188, column: 11, scope: !3684, inlinedAt: !3768)
!3774 = !DILocation(line: 954, column: 10, scope: !3700, inlinedAt: !3760)
!3775 = !DILocation(line: 955, column: 1, scope: !3700, inlinedAt: !3760)
!3776 = !DILocation(line: 966, column: 3, scope: !3751)
!3777 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !639, file: !639, line: 970, type: !3778, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3780)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!317, !265, !262, !4}
!3780 = !{!3781, !3782, !3783, !3784}
!3781 = !DILocalVariable(name: "arg", arg: 1, scope: !3777, file: !639, line: 970, type: !265)
!3782 = !DILocalVariable(name: "argsize", arg: 2, scope: !3777, file: !639, line: 970, type: !262)
!3783 = !DILocalVariable(name: "ch", arg: 3, scope: !3777, file: !639, line: 970, type: !4)
!3784 = !DILocalVariable(name: "options", scope: !3777, file: !639, line: 972, type: !692)
!3785 = !DILocation(line: 0, scope: !3777)
!3786 = !DILocation(line: 972, column: 3, scope: !3777)
!3787 = !DILocation(line: 972, column: 26, scope: !3777)
!3788 = !DILocation(line: 973, column: 13, scope: !3777)
!3789 = !{i64 0, i64 4, !1061, i64 4, i64 4, !1052, i64 8, i64 32, !1061, i64 40, i64 8, !951, i64 48, i64 8, !951}
!3790 = !DILocation(line: 0, scope: !2775, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 974, column: 3, scope: !3777)
!3792 = !DILocation(line: 147, column: 41, scope: !2775, inlinedAt: !3791)
!3793 = !DILocation(line: 147, column: 62, scope: !2775, inlinedAt: !3791)
!3794 = !DILocation(line: 147, column: 57, scope: !2775, inlinedAt: !3791)
!3795 = !DILocation(line: 148, column: 15, scope: !2775, inlinedAt: !3791)
!3796 = !DILocation(line: 149, column: 21, scope: !2775, inlinedAt: !3791)
!3797 = !DILocation(line: 149, column: 24, scope: !2775, inlinedAt: !3791)
!3798 = !DILocation(line: 150, column: 19, scope: !2775, inlinedAt: !3791)
!3799 = !DILocation(line: 150, column: 24, scope: !2775, inlinedAt: !3791)
!3800 = !DILocation(line: 150, column: 6, scope: !2775, inlinedAt: !3791)
!3801 = !DILocation(line: 975, column: 10, scope: !3777)
!3802 = !DILocation(line: 976, column: 1, scope: !3777)
!3803 = !DILocation(line: 975, column: 3, scope: !3777)
!3804 = distinct !DISubprogram(name: "quotearg_char", scope: !639, file: !639, line: 979, type: !3805, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3807)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!317, !265, !4}
!3807 = !{!3808, !3809}
!3808 = !DILocalVariable(name: "arg", arg: 1, scope: !3804, file: !639, line: 979, type: !265)
!3809 = !DILocalVariable(name: "ch", arg: 2, scope: !3804, file: !639, line: 979, type: !4)
!3810 = !DILocation(line: 0, scope: !3804)
!3811 = !DILocation(line: 0, scope: !3777, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 981, column: 10, scope: !3804)
!3813 = !DILocation(line: 972, column: 3, scope: !3777, inlinedAt: !3812)
!3814 = !DILocation(line: 972, column: 26, scope: !3777, inlinedAt: !3812)
!3815 = !DILocation(line: 973, column: 13, scope: !3777, inlinedAt: !3812)
!3816 = !DILocation(line: 0, scope: !2775, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 974, column: 3, scope: !3777, inlinedAt: !3812)
!3818 = !DILocation(line: 147, column: 41, scope: !2775, inlinedAt: !3817)
!3819 = !DILocation(line: 147, column: 62, scope: !2775, inlinedAt: !3817)
!3820 = !DILocation(line: 147, column: 57, scope: !2775, inlinedAt: !3817)
!3821 = !DILocation(line: 148, column: 15, scope: !2775, inlinedAt: !3817)
!3822 = !DILocation(line: 149, column: 21, scope: !2775, inlinedAt: !3817)
!3823 = !DILocation(line: 149, column: 24, scope: !2775, inlinedAt: !3817)
!3824 = !DILocation(line: 150, column: 19, scope: !2775, inlinedAt: !3817)
!3825 = !DILocation(line: 150, column: 24, scope: !2775, inlinedAt: !3817)
!3826 = !DILocation(line: 150, column: 6, scope: !2775, inlinedAt: !3817)
!3827 = !DILocation(line: 975, column: 10, scope: !3777, inlinedAt: !3812)
!3828 = !DILocation(line: 976, column: 1, scope: !3777, inlinedAt: !3812)
!3829 = !DILocation(line: 981, column: 3, scope: !3804)
!3830 = distinct !DISubprogram(name: "quotearg_colon", scope: !639, file: !639, line: 985, type: !1182, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3831)
!3831 = !{!3832}
!3832 = !DILocalVariable(name: "arg", arg: 1, scope: !3830, file: !639, line: 985, type: !265)
!3833 = !DILocation(line: 0, scope: !3830)
!3834 = !DILocation(line: 0, scope: !3804, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 987, column: 10, scope: !3830)
!3836 = !DILocation(line: 0, scope: !3777, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 981, column: 10, scope: !3804, inlinedAt: !3835)
!3838 = !DILocation(line: 972, column: 3, scope: !3777, inlinedAt: !3837)
!3839 = !DILocation(line: 972, column: 26, scope: !3777, inlinedAt: !3837)
!3840 = !DILocation(line: 973, column: 13, scope: !3777, inlinedAt: !3837)
!3841 = !DILocation(line: 0, scope: !2775, inlinedAt: !3842)
!3842 = distinct !DILocation(line: 974, column: 3, scope: !3777, inlinedAt: !3837)
!3843 = !DILocation(line: 147, column: 57, scope: !2775, inlinedAt: !3842)
!3844 = !DILocation(line: 149, column: 21, scope: !2775, inlinedAt: !3842)
!3845 = !DILocation(line: 150, column: 6, scope: !2775, inlinedAt: !3842)
!3846 = !DILocation(line: 975, column: 10, scope: !3777, inlinedAt: !3837)
!3847 = !DILocation(line: 976, column: 1, scope: !3777, inlinedAt: !3837)
!3848 = !DILocation(line: 987, column: 3, scope: !3830)
!3849 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !639, file: !639, line: 991, type: !3658, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3850)
!3850 = !{!3851, !3852}
!3851 = !DILocalVariable(name: "arg", arg: 1, scope: !3849, file: !639, line: 991, type: !265)
!3852 = !DILocalVariable(name: "argsize", arg: 2, scope: !3849, file: !639, line: 991, type: !262)
!3853 = !DILocation(line: 0, scope: !3849)
!3854 = !DILocation(line: 0, scope: !3777, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 993, column: 10, scope: !3849)
!3856 = !DILocation(line: 972, column: 3, scope: !3777, inlinedAt: !3855)
!3857 = !DILocation(line: 972, column: 26, scope: !3777, inlinedAt: !3855)
!3858 = !DILocation(line: 973, column: 13, scope: !3777, inlinedAt: !3855)
!3859 = !DILocation(line: 0, scope: !2775, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 974, column: 3, scope: !3777, inlinedAt: !3855)
!3861 = !DILocation(line: 147, column: 57, scope: !2775, inlinedAt: !3860)
!3862 = !DILocation(line: 149, column: 21, scope: !2775, inlinedAt: !3860)
!3863 = !DILocation(line: 150, column: 6, scope: !2775, inlinedAt: !3860)
!3864 = !DILocation(line: 975, column: 10, scope: !3777, inlinedAt: !3855)
!3865 = !DILocation(line: 976, column: 1, scope: !3777, inlinedAt: !3855)
!3866 = !DILocation(line: 993, column: 3, scope: !3849)
!3867 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !639, file: !639, line: 997, type: !3669, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3868)
!3868 = !{!3869, !3870, !3871, !3872}
!3869 = !DILocalVariable(name: "n", arg: 1, scope: !3867, file: !639, line: 997, type: !260)
!3870 = !DILocalVariable(name: "s", arg: 2, scope: !3867, file: !639, line: 997, type: !665)
!3871 = !DILocalVariable(name: "arg", arg: 3, scope: !3867, file: !639, line: 997, type: !265)
!3872 = !DILocalVariable(name: "options", scope: !3867, file: !639, line: 999, type: !692)
!3873 = !DILocation(line: 185, column: 26, scope: !3684, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 1000, column: 13, scope: !3867)
!3875 = !DILocation(line: 0, scope: !3867)
!3876 = !DILocation(line: 999, column: 3, scope: !3867)
!3877 = !DILocation(line: 999, column: 26, scope: !3867)
!3878 = !DILocation(line: 0, scope: !3684, inlinedAt: !3874)
!3879 = !DILocation(line: 186, column: 13, scope: !3693, inlinedAt: !3874)
!3880 = !DILocation(line: 186, column: 7, scope: !3684, inlinedAt: !3874)
!3881 = !DILocation(line: 187, column: 5, scope: !3693, inlinedAt: !3874)
!3882 = !{!3883}
!3883 = distinct !{!3883, !3884, !"quoting_options_from_style: argument 0"}
!3884 = distinct !{!3884, !"quoting_options_from_style"}
!3885 = !DILocation(line: 1000, column: 13, scope: !3867)
!3886 = !DILocation(line: 0, scope: !2775, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 1001, column: 3, scope: !3867)
!3888 = !DILocation(line: 147, column: 57, scope: !2775, inlinedAt: !3887)
!3889 = !DILocation(line: 149, column: 21, scope: !2775, inlinedAt: !3887)
!3890 = !DILocation(line: 150, column: 6, scope: !2775, inlinedAt: !3887)
!3891 = !DILocation(line: 1002, column: 10, scope: !3867)
!3892 = !DILocation(line: 1003, column: 1, scope: !3867)
!3893 = !DILocation(line: 1002, column: 3, scope: !3867)
!3894 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !639, file: !639, line: 1006, type: !3895, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3897)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!317, !260, !265, !265, !265}
!3897 = !{!3898, !3899, !3900, !3901}
!3898 = !DILocalVariable(name: "n", arg: 1, scope: !3894, file: !639, line: 1006, type: !260)
!3899 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3894, file: !639, line: 1006, type: !265)
!3900 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3894, file: !639, line: 1007, type: !265)
!3901 = !DILocalVariable(name: "arg", arg: 4, scope: !3894, file: !639, line: 1007, type: !265)
!3902 = !DILocation(line: 0, scope: !3894)
!3903 = !DILocalVariable(name: "n", arg: 1, scope: !3904, file: !639, line: 1014, type: !260)
!3904 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !639, file: !639, line: 1014, type: !3905, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3907)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!317, !260, !265, !265, !265, !262}
!3907 = !{!3903, !3908, !3909, !3910, !3911, !3912}
!3908 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3904, file: !639, line: 1014, type: !265)
!3909 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3904, file: !639, line: 1015, type: !265)
!3910 = !DILocalVariable(name: "arg", arg: 4, scope: !3904, file: !639, line: 1016, type: !265)
!3911 = !DILocalVariable(name: "argsize", arg: 5, scope: !3904, file: !639, line: 1016, type: !262)
!3912 = !DILocalVariable(name: "o", scope: !3904, file: !639, line: 1018, type: !692)
!3913 = !DILocation(line: 0, scope: !3904, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 1009, column: 10, scope: !3894)
!3915 = !DILocation(line: 1018, column: 3, scope: !3904, inlinedAt: !3914)
!3916 = !DILocation(line: 1018, column: 26, scope: !3904, inlinedAt: !3914)
!3917 = !DILocation(line: 1018, column: 30, scope: !3904, inlinedAt: !3914)
!3918 = !DILocation(line: 0, scope: !2815, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 1019, column: 3, scope: !3904, inlinedAt: !3914)
!3920 = !DILocation(line: 174, column: 12, scope: !2815, inlinedAt: !3919)
!3921 = !DILocation(line: 175, column: 8, scope: !2828, inlinedAt: !3919)
!3922 = !DILocation(line: 175, column: 19, scope: !2828, inlinedAt: !3919)
!3923 = !DILocation(line: 176, column: 5, scope: !2828, inlinedAt: !3919)
!3924 = !DILocation(line: 177, column: 6, scope: !2815, inlinedAt: !3919)
!3925 = !DILocation(line: 177, column: 17, scope: !2815, inlinedAt: !3919)
!3926 = !DILocation(line: 178, column: 6, scope: !2815, inlinedAt: !3919)
!3927 = !DILocation(line: 178, column: 18, scope: !2815, inlinedAt: !3919)
!3928 = !DILocation(line: 1020, column: 10, scope: !3904, inlinedAt: !3914)
!3929 = !DILocation(line: 1021, column: 1, scope: !3904, inlinedAt: !3914)
!3930 = !DILocation(line: 1009, column: 3, scope: !3894)
!3931 = !DILocation(line: 0, scope: !3904)
!3932 = !DILocation(line: 1018, column: 3, scope: !3904)
!3933 = !DILocation(line: 1018, column: 26, scope: !3904)
!3934 = !DILocation(line: 1018, column: 30, scope: !3904)
!3935 = !DILocation(line: 0, scope: !2815, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 1019, column: 3, scope: !3904)
!3937 = !DILocation(line: 174, column: 12, scope: !2815, inlinedAt: !3936)
!3938 = !DILocation(line: 175, column: 8, scope: !2828, inlinedAt: !3936)
!3939 = !DILocation(line: 175, column: 19, scope: !2828, inlinedAt: !3936)
!3940 = !DILocation(line: 176, column: 5, scope: !2828, inlinedAt: !3936)
!3941 = !DILocation(line: 177, column: 6, scope: !2815, inlinedAt: !3936)
!3942 = !DILocation(line: 177, column: 17, scope: !2815, inlinedAt: !3936)
!3943 = !DILocation(line: 178, column: 6, scope: !2815, inlinedAt: !3936)
!3944 = !DILocation(line: 178, column: 18, scope: !2815, inlinedAt: !3936)
!3945 = !DILocation(line: 1020, column: 10, scope: !3904)
!3946 = !DILocation(line: 1021, column: 1, scope: !3904)
!3947 = !DILocation(line: 1020, column: 3, scope: !3904)
!3948 = distinct !DISubprogram(name: "quotearg_custom", scope: !639, file: !639, line: 1024, type: !3949, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3951)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!317, !265, !265, !265}
!3951 = !{!3952, !3953, !3954}
!3952 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3948, file: !639, line: 1024, type: !265)
!3953 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3948, file: !639, line: 1024, type: !265)
!3954 = !DILocalVariable(name: "arg", arg: 3, scope: !3948, file: !639, line: 1025, type: !265)
!3955 = !DILocation(line: 0, scope: !3948)
!3956 = !DILocation(line: 0, scope: !3894, inlinedAt: !3957)
!3957 = distinct !DILocation(line: 1027, column: 10, scope: !3948)
!3958 = !DILocation(line: 0, scope: !3904, inlinedAt: !3959)
!3959 = distinct !DILocation(line: 1009, column: 10, scope: !3894, inlinedAt: !3957)
!3960 = !DILocation(line: 1018, column: 3, scope: !3904, inlinedAt: !3959)
!3961 = !DILocation(line: 1018, column: 26, scope: !3904, inlinedAt: !3959)
!3962 = !DILocation(line: 1018, column: 30, scope: !3904, inlinedAt: !3959)
!3963 = !DILocation(line: 0, scope: !2815, inlinedAt: !3964)
!3964 = distinct !DILocation(line: 1019, column: 3, scope: !3904, inlinedAt: !3959)
!3965 = !DILocation(line: 174, column: 12, scope: !2815, inlinedAt: !3964)
!3966 = !DILocation(line: 175, column: 8, scope: !2828, inlinedAt: !3964)
!3967 = !DILocation(line: 175, column: 19, scope: !2828, inlinedAt: !3964)
!3968 = !DILocation(line: 176, column: 5, scope: !2828, inlinedAt: !3964)
!3969 = !DILocation(line: 177, column: 6, scope: !2815, inlinedAt: !3964)
!3970 = !DILocation(line: 177, column: 17, scope: !2815, inlinedAt: !3964)
!3971 = !DILocation(line: 178, column: 6, scope: !2815, inlinedAt: !3964)
!3972 = !DILocation(line: 178, column: 18, scope: !2815, inlinedAt: !3964)
!3973 = !DILocation(line: 1020, column: 10, scope: !3904, inlinedAt: !3959)
!3974 = !DILocation(line: 1021, column: 1, scope: !3904, inlinedAt: !3959)
!3975 = !DILocation(line: 1027, column: 3, scope: !3948)
!3976 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !639, file: !639, line: 1031, type: !3977, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3979)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!317, !265, !265, !265, !262}
!3979 = !{!3980, !3981, !3982, !3983}
!3980 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3976, file: !639, line: 1031, type: !265)
!3981 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3976, file: !639, line: 1031, type: !265)
!3982 = !DILocalVariable(name: "arg", arg: 3, scope: !3976, file: !639, line: 1032, type: !265)
!3983 = !DILocalVariable(name: "argsize", arg: 4, scope: !3976, file: !639, line: 1032, type: !262)
!3984 = !DILocation(line: 0, scope: !3976)
!3985 = !DILocation(line: 0, scope: !3904, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 1034, column: 10, scope: !3976)
!3987 = !DILocation(line: 1018, column: 3, scope: !3904, inlinedAt: !3986)
!3988 = !DILocation(line: 1018, column: 26, scope: !3904, inlinedAt: !3986)
!3989 = !DILocation(line: 1018, column: 30, scope: !3904, inlinedAt: !3986)
!3990 = !DILocation(line: 0, scope: !2815, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 1019, column: 3, scope: !3904, inlinedAt: !3986)
!3992 = !DILocation(line: 174, column: 12, scope: !2815, inlinedAt: !3991)
!3993 = !DILocation(line: 175, column: 8, scope: !2828, inlinedAt: !3991)
!3994 = !DILocation(line: 175, column: 19, scope: !2828, inlinedAt: !3991)
!3995 = !DILocation(line: 176, column: 5, scope: !2828, inlinedAt: !3991)
!3996 = !DILocation(line: 177, column: 6, scope: !2815, inlinedAt: !3991)
!3997 = !DILocation(line: 177, column: 17, scope: !2815, inlinedAt: !3991)
!3998 = !DILocation(line: 178, column: 6, scope: !2815, inlinedAt: !3991)
!3999 = !DILocation(line: 178, column: 18, scope: !2815, inlinedAt: !3991)
!4000 = !DILocation(line: 1020, column: 10, scope: !3904, inlinedAt: !3986)
!4001 = !DILocation(line: 1021, column: 1, scope: !3904, inlinedAt: !3986)
!4002 = !DILocation(line: 1034, column: 3, scope: !3976)
!4003 = distinct !DISubprogram(name: "quote_n_mem", scope: !639, file: !639, line: 1049, type: !4004, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !4006)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!265, !260, !265, !262}
!4006 = !{!4007, !4008, !4009}
!4007 = !DILocalVariable(name: "n", arg: 1, scope: !4003, file: !639, line: 1049, type: !260)
!4008 = !DILocalVariable(name: "arg", arg: 2, scope: !4003, file: !639, line: 1049, type: !265)
!4009 = !DILocalVariable(name: "argsize", arg: 3, scope: !4003, file: !639, line: 1049, type: !262)
!4010 = !DILocation(line: 0, scope: !4003)
!4011 = !DILocation(line: 1051, column: 10, scope: !4003)
!4012 = !DILocation(line: 1051, column: 3, scope: !4003)
!4013 = distinct !DISubprogram(name: "quote_mem", scope: !639, file: !639, line: 1055, type: !4014, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!265, !265, !262}
!4016 = !{!4017, !4018}
!4017 = !DILocalVariable(name: "arg", arg: 1, scope: !4013, file: !639, line: 1055, type: !265)
!4018 = !DILocalVariable(name: "argsize", arg: 2, scope: !4013, file: !639, line: 1055, type: !262)
!4019 = !DILocation(line: 0, scope: !4013)
!4020 = !DILocation(line: 0, scope: !4003, inlinedAt: !4021)
!4021 = distinct !DILocation(line: 1057, column: 10, scope: !4013)
!4022 = !DILocation(line: 1051, column: 10, scope: !4003, inlinedAt: !4021)
!4023 = !DILocation(line: 1057, column: 3, scope: !4013)
!4024 = distinct !DISubprogram(name: "quote_n", scope: !639, file: !639, line: 1061, type: !4025, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !4027)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!265, !260, !265}
!4027 = !{!4028, !4029}
!4028 = !DILocalVariable(name: "n", arg: 1, scope: !4024, file: !639, line: 1061, type: !260)
!4029 = !DILocalVariable(name: "arg", arg: 2, scope: !4024, file: !639, line: 1061, type: !265)
!4030 = !DILocation(line: 0, scope: !4024)
!4031 = !DILocation(line: 0, scope: !4003, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 1063, column: 10, scope: !4024)
!4033 = !DILocation(line: 1051, column: 10, scope: !4003, inlinedAt: !4032)
!4034 = !DILocation(line: 1063, column: 3, scope: !4024)
!4035 = distinct !DISubprogram(name: "quote", scope: !639, file: !639, line: 1067, type: !2334, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !4036)
!4036 = !{!4037}
!4037 = !DILocalVariable(name: "arg", arg: 1, scope: !4035, file: !639, line: 1067, type: !265)
!4038 = !DILocation(line: 0, scope: !4035)
!4039 = !DILocation(line: 0, scope: !4024, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 1069, column: 10, scope: !4035)
!4041 = !DILocation(line: 0, scope: !4003, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 1063, column: 10, scope: !4024, inlinedAt: !4040)
!4043 = !DILocation(line: 1051, column: 10, scope: !4003, inlinedAt: !4042)
!4044 = !DILocation(line: 1069, column: 3, scope: !4035)
!4045 = distinct !DISubprogram(name: "strintcmp", scope: !870, file: !870, line: 31, type: !1185, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4046)
!4046 = !{!4047, !4048}
!4047 = !DILocalVariable(name: "a", arg: 1, scope: !4045, file: !870, line: 31, type: !265)
!4048 = !DILocalVariable(name: "b", arg: 2, scope: !4045, file: !870, line: 31, type: !265)
!4049 = !DILocation(line: 0, scope: !4045)
!4050 = !DILocalVariable(name: "a", arg: 1, scope: !4051, file: !4052, line: 105, type: !265)
!4051 = distinct !DISubprogram(name: "numcompare", scope: !4052, file: !4052, line: 105, type: !4053, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4055)
!4052 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f69f23aa922f1f0bf768a1237830bd5f")
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!260, !265, !265, !260, !260}
!4055 = !{!4050, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063}
!4056 = !DILocalVariable(name: "b", arg: 2, scope: !4051, file: !4052, line: 105, type: !265)
!4057 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !4051, file: !4052, line: 106, type: !260)
!4058 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !4051, file: !4052, line: 106, type: !260)
!4059 = !DILocalVariable(name: "tmpa", scope: !4051, file: !4052, line: 108, type: !4)
!4060 = !DILocalVariable(name: "tmpb", scope: !4051, file: !4052, line: 109, type: !4)
!4061 = !DILocalVariable(name: "tmp", scope: !4051, file: !4052, line: 110, type: !260)
!4062 = !DILocalVariable(name: "log_a", scope: !4051, file: !4052, line: 111, type: !262)
!4063 = !DILocalVariable(name: "log_b", scope: !4051, file: !4052, line: 112, type: !262)
!4064 = !DILocation(line: 0, scope: !4051, inlinedAt: !4065)
!4065 = distinct !DILocation(line: 33, column: 10, scope: !4045)
!4066 = !DILocation(line: 108, column: 15, scope: !4051, inlinedAt: !4065)
!4067 = !DILocation(line: 109, column: 15, scope: !4051, inlinedAt: !4065)
!4068 = !DILocation(line: 114, column: 12, scope: !4069, inlinedAt: !4065)
!4069 = distinct !DILexicalBlock(scope: !4051, file: !4052, line: 114, column: 7)
!4070 = !DILocation(line: 114, column: 7, scope: !4051, inlinedAt: !4065)
!4071 = !DILocation(line: 117, column: 17, scope: !4072, inlinedAt: !4065)
!4072 = distinct !DILexicalBlock(scope: !4069, file: !4052, line: 115, column: 5)
!4073 = !DILocation(line: 117, column: 16, scope: !4072, inlinedAt: !4065)
!4074 = !DILocation(line: 118, column: 19, scope: !4072, inlinedAt: !4065)
!4075 = !DILocation(line: 117, column: 9, scope: !4072, inlinedAt: !4065)
!4076 = distinct !{!4076, !4077, !4078, !1099}
!4077 = !DILocation(line: 116, column: 7, scope: !4072, inlinedAt: !4065)
!4078 = !DILocation(line: 118, column: 59, scope: !4072, inlinedAt: !4065)
!4079 = !DILocation(line: 119, column: 16, scope: !4080, inlinedAt: !4065)
!4080 = distinct !DILexicalBlock(scope: !4072, file: !4052, line: 119, column: 11)
!4081 = !DILocation(line: 119, column: 11, scope: !4072, inlinedAt: !4065)
!4082 = !DILocation(line: 125, column: 26, scope: !4083, inlinedAt: !4065)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !4052, line: 125, column: 15)
!4084 = distinct !DILexicalBlock(scope: !4080, file: !4052, line: 120, column: 9)
!4085 = !DILocalVariable(name: "c", arg: 1, scope: !4086, file: !2357, line: 233, type: !260)
!4086 = distinct !DISubprogram(name: "c_isdigit", scope: !2357, file: !2357, line: 233, type: !1255, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4087)
!4087 = !{!4085}
!4088 = !DILocation(line: 0, scope: !4086, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 125, column: 15, scope: !4083, inlinedAt: !4065)
!4090 = !DILocation(line: 235, column: 3, scope: !4086, inlinedAt: !4089)
!4091 = !DILocation(line: 125, column: 15, scope: !4084, inlinedAt: !4065)
!4092 = !DILocation(line: 127, column: 23, scope: !4084, inlinedAt: !4065)
!4093 = !DILocation(line: 127, column: 11, scope: !4084, inlinedAt: !4065)
!4094 = !DILocation(line: 128, column: 21, scope: !4084, inlinedAt: !4065)
!4095 = !DILocation(line: 128, column: 20, scope: !4084, inlinedAt: !4065)
!4096 = distinct !{!4096, !4093, !4097, !1099}
!4097 = !DILocation(line: 128, column: 23, scope: !4084, inlinedAt: !4065)
!4098 = !DILocation(line: 133, column: 31, scope: !4084, inlinedAt: !4065)
!4099 = !DILocation(line: 0, scope: !4086, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 133, column: 20, scope: !4084, inlinedAt: !4065)
!4101 = !DILocation(line: 235, column: 3, scope: !4086, inlinedAt: !4100)
!4102 = !DILocation(line: 133, column: 20, scope: !4084, inlinedAt: !4065)
!4103 = !DILocation(line: 133, column: 11, scope: !4084, inlinedAt: !4065)
!4104 = !DILocation(line: 136, column: 17, scope: !4072, inlinedAt: !4065)
!4105 = !DILocation(line: 136, column: 16, scope: !4072, inlinedAt: !4065)
!4106 = !DILocation(line: 137, column: 19, scope: !4072, inlinedAt: !4065)
!4107 = !DILocation(line: 136, column: 9, scope: !4072, inlinedAt: !4065)
!4108 = distinct !{!4108, !4109, !4110, !1099}
!4109 = !DILocation(line: 135, column: 7, scope: !4072, inlinedAt: !4065)
!4110 = !DILocation(line: 137, column: 59, scope: !4072, inlinedAt: !4065)
!4111 = !DILocation(line: 139, column: 14, scope: !4072, inlinedAt: !4065)
!4112 = !DILocation(line: 139, column: 19, scope: !4072, inlinedAt: !4065)
!4113 = !DILocation(line: 139, column: 27, scope: !4072, inlinedAt: !4065)
!4114 = !DILocation(line: 0, scope: !4086, inlinedAt: !4115)
!4115 = distinct !DILocation(line: 139, column: 30, scope: !4072, inlinedAt: !4065)
!4116 = !DILocation(line: 142, column: 21, scope: !4117, inlinedAt: !4065)
!4117 = distinct !DILexicalBlock(scope: !4072, file: !4052, line: 140, column: 9)
!4118 = !DILocation(line: 142, column: 20, scope: !4117, inlinedAt: !4065)
!4119 = !DILocation(line: 145, column: 21, scope: !4117, inlinedAt: !4065)
!4120 = !DILocation(line: 145, column: 20, scope: !4117, inlinedAt: !4065)
!4121 = distinct !{!4121, !4122, !4123, !1099}
!4122 = !DILocation(line: 139, column: 7, scope: !4072, inlinedAt: !4065)
!4123 = !DILocation(line: 147, column: 9, scope: !4072, inlinedAt: !4065)
!4124 = !DILocation(line: 139, column: 22, scope: !4072, inlinedAt: !4065)
!4125 = !DILocation(line: 235, column: 3, scope: !4086, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 155, column: 23, scope: !4127, inlinedAt: !4065)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !4052, line: 155, column: 7)
!4128 = distinct !DILexicalBlock(scope: !4072, file: !4052, line: 155, column: 7)
!4129 = !DILocation(line: 0, scope: !4072, inlinedAt: !4065)
!4130 = !DILocation(line: 153, column: 18, scope: !4072, inlinedAt: !4065)
!4131 = !DILocation(line: 0, scope: !4086, inlinedAt: !4126)
!4132 = !DILocation(line: 155, column: 7, scope: !4128, inlinedAt: !4065)
!4133 = !DILocation(line: 155, scope: !4128, inlinedAt: !4065)
!4134 = !DILocation(line: 0, scope: !4086, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 160, column: 23, scope: !4136, inlinedAt: !4065)
!4136 = distinct !DILexicalBlock(scope: !4137, file: !4052, line: 160, column: 7)
!4137 = distinct !DILexicalBlock(scope: !4072, file: !4052, line: 160, column: 7)
!4138 = !DILocation(line: 235, column: 3, scope: !4086, inlinedAt: !4135)
!4139 = !DILocation(line: 160, column: 7, scope: !4137, inlinedAt: !4065)
!4140 = !DILocation(line: 157, column: 19, scope: !4127, inlinedAt: !4065)
!4141 = !DILocation(line: 157, column: 18, scope: !4127, inlinedAt: !4065)
!4142 = !DILocation(line: 155, column: 41, scope: !4127, inlinedAt: !4065)
!4143 = !DILocation(line: 155, column: 34, scope: !4127, inlinedAt: !4065)
!4144 = distinct !{!4144, !4132, !4145, !1099}
!4145 = !DILocation(line: 158, column: 37, scope: !4128, inlinedAt: !4065)
!4146 = !DILocation(line: 162, column: 19, scope: !4136, inlinedAt: !4065)
!4147 = !DILocation(line: 162, column: 18, scope: !4136, inlinedAt: !4065)
!4148 = !DILocation(line: 160, column: 41, scope: !4136, inlinedAt: !4065)
!4149 = !DILocation(line: 160, column: 34, scope: !4136, inlinedAt: !4065)
!4150 = distinct !{!4150, !4139, !4151, !1099}
!4151 = !DILocation(line: 163, column: 37, scope: !4137, inlinedAt: !4065)
!4152 = !DILocation(line: 160, scope: !4137, inlinedAt: !4065)
!4153 = !DILocation(line: 165, column: 17, scope: !4154, inlinedAt: !4065)
!4154 = distinct !DILexicalBlock(scope: !4072, file: !4052, line: 165, column: 11)
!4155 = !DILocation(line: 165, column: 11, scope: !4072, inlinedAt: !4065)
!4156 = !DILocation(line: 166, column: 22, scope: !4154, inlinedAt: !4065)
!4157 = !DILocation(line: 166, column: 16, scope: !4154, inlinedAt: !4065)
!4158 = !DILocation(line: 166, column: 9, scope: !4154, inlinedAt: !4065)
!4159 = !DILocation(line: 168, column: 12, scope: !4160, inlinedAt: !4065)
!4160 = distinct !DILexicalBlock(scope: !4072, file: !4052, line: 168, column: 11)
!4161 = !DILocation(line: 173, column: 17, scope: !4162, inlinedAt: !4065)
!4162 = distinct !DILexicalBlock(scope: !4069, file: !4052, line: 173, column: 12)
!4163 = !DILocation(line: 173, column: 12, scope: !4069, inlinedAt: !4065)
!4164 = !DILocation(line: 194, column: 19, scope: !4165, inlinedAt: !4065)
!4165 = distinct !DILexicalBlock(scope: !4162, file: !4052, line: 193, column: 5)
!4166 = !DILocation(line: 194, column: 7, scope: !4165, inlinedAt: !4065)
!4167 = !DILocation(line: 176, column: 17, scope: !4168, inlinedAt: !4065)
!4168 = distinct !DILexicalBlock(scope: !4162, file: !4052, line: 174, column: 5)
!4169 = !DILocation(line: 176, column: 16, scope: !4168, inlinedAt: !4065)
!4170 = !DILocation(line: 177, column: 19, scope: !4168, inlinedAt: !4065)
!4171 = !DILocation(line: 176, column: 9, scope: !4168, inlinedAt: !4065)
!4172 = distinct !{!4172, !4173, !4174, !1099}
!4173 = !DILocation(line: 175, column: 7, scope: !4168, inlinedAt: !4065)
!4174 = !DILocation(line: 177, column: 59, scope: !4168, inlinedAt: !4065)
!4175 = !DILocation(line: 182, column: 22, scope: !4176, inlinedAt: !4065)
!4176 = distinct !DILexicalBlock(scope: !4168, file: !4052, line: 182, column: 11)
!4177 = !DILocation(line: 0, scope: !4086, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 182, column: 11, scope: !4176, inlinedAt: !4065)
!4179 = !DILocation(line: 235, column: 3, scope: !4086, inlinedAt: !4178)
!4180 = !DILocation(line: 182, column: 11, scope: !4168, inlinedAt: !4065)
!4181 = !DILocation(line: 184, column: 19, scope: !4168, inlinedAt: !4065)
!4182 = !DILocation(line: 184, column: 7, scope: !4168, inlinedAt: !4065)
!4183 = !DILocation(line: 185, column: 17, scope: !4168, inlinedAt: !4065)
!4184 = !DILocation(line: 185, column: 16, scope: !4168, inlinedAt: !4065)
!4185 = distinct !{!4185, !4182, !4186, !1099}
!4186 = !DILocation(line: 185, column: 19, scope: !4168, inlinedAt: !4065)
!4187 = !DILocation(line: 190, column: 25, scope: !4168, inlinedAt: !4065)
!4188 = !DILocation(line: 0, scope: !4086, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 190, column: 14, scope: !4168, inlinedAt: !4065)
!4190 = !DILocation(line: 235, column: 3, scope: !4086, inlinedAt: !4189)
!4191 = !DILocation(line: 190, column: 14, scope: !4168, inlinedAt: !4065)
!4192 = !DILocation(line: 190, column: 7, scope: !4168, inlinedAt: !4065)
!4193 = !DILocation(line: 196, column: 19, scope: !4165, inlinedAt: !4065)
!4194 = !DILocation(line: 196, column: 7, scope: !4165, inlinedAt: !4065)
!4195 = !DILocation(line: 195, column: 17, scope: !4165, inlinedAt: !4065)
!4196 = !DILocation(line: 195, column: 16, scope: !4165, inlinedAt: !4065)
!4197 = distinct !{!4197, !4166, !4198, !1099}
!4198 = !DILocation(line: 195, column: 19, scope: !4165, inlinedAt: !4065)
!4199 = !DILocation(line: 199, column: 14, scope: !4165, inlinedAt: !4065)
!4200 = !DILocation(line: 199, column: 19, scope: !4165, inlinedAt: !4065)
!4201 = !DILocation(line: 199, column: 27, scope: !4165, inlinedAt: !4065)
!4202 = !DILocation(line: 0, scope: !4086, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 199, column: 30, scope: !4165, inlinedAt: !4065)
!4204 = !DILocation(line: 197, column: 17, scope: !4165, inlinedAt: !4065)
!4205 = !DILocation(line: 197, column: 16, scope: !4165, inlinedAt: !4065)
!4206 = distinct !{!4206, !4194, !4207, !1099}
!4207 = !DILocation(line: 197, column: 19, scope: !4165, inlinedAt: !4065)
!4208 = !DILocation(line: 202, column: 21, scope: !4209, inlinedAt: !4065)
!4209 = distinct !DILexicalBlock(scope: !4165, file: !4052, line: 200, column: 9)
!4210 = !DILocation(line: 202, column: 20, scope: !4209, inlinedAt: !4065)
!4211 = !DILocation(line: 205, column: 21, scope: !4209, inlinedAt: !4065)
!4212 = !DILocation(line: 205, column: 20, scope: !4209, inlinedAt: !4065)
!4213 = distinct !{!4213, !4214, !4215, !1099}
!4214 = !DILocation(line: 199, column: 7, scope: !4165, inlinedAt: !4065)
!4215 = !DILocation(line: 207, column: 9, scope: !4165, inlinedAt: !4065)
!4216 = !DILocation(line: 199, column: 22, scope: !4165, inlinedAt: !4065)
!4217 = !DILocation(line: 235, column: 3, scope: !4086, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 215, column: 23, scope: !4219, inlinedAt: !4065)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !4052, line: 215, column: 7)
!4220 = distinct !DILexicalBlock(scope: !4165, file: !4052, line: 215, column: 7)
!4221 = !DILocation(line: 213, column: 18, scope: !4165, inlinedAt: !4065)
!4222 = !DILocation(line: 0, scope: !4086, inlinedAt: !4218)
!4223 = !DILocation(line: 215, column: 7, scope: !4220, inlinedAt: !4065)
!4224 = !DILocation(line: 215, scope: !4220, inlinedAt: !4065)
!4225 = !DILocation(line: 0, scope: !4086, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 220, column: 23, scope: !4227, inlinedAt: !4065)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !4052, line: 220, column: 7)
!4228 = distinct !DILexicalBlock(scope: !4165, file: !4052, line: 220, column: 7)
!4229 = !DILocation(line: 235, column: 3, scope: !4086, inlinedAt: !4226)
!4230 = !DILocation(line: 220, column: 7, scope: !4228, inlinedAt: !4065)
!4231 = !DILocation(line: 217, column: 19, scope: !4219, inlinedAt: !4065)
!4232 = !DILocation(line: 217, column: 18, scope: !4219, inlinedAt: !4065)
!4233 = !DILocation(line: 215, column: 41, scope: !4219, inlinedAt: !4065)
!4234 = !DILocation(line: 215, column: 34, scope: !4219, inlinedAt: !4065)
!4235 = distinct !{!4235, !4223, !4236, !1099}
!4236 = !DILocation(line: 218, column: 37, scope: !4220, inlinedAt: !4065)
!4237 = !DILocation(line: 222, column: 19, scope: !4227, inlinedAt: !4065)
!4238 = !DILocation(line: 222, column: 18, scope: !4227, inlinedAt: !4065)
!4239 = !DILocation(line: 220, column: 41, scope: !4227, inlinedAt: !4065)
!4240 = !DILocation(line: 220, column: 34, scope: !4227, inlinedAt: !4065)
!4241 = distinct !{!4241, !4230, !4242, !1099}
!4242 = !DILocation(line: 223, column: 37, scope: !4228, inlinedAt: !4065)
!4243 = !DILocation(line: 220, scope: !4228, inlinedAt: !4065)
!4244 = !DILocation(line: 225, column: 17, scope: !4245, inlinedAt: !4065)
!4245 = distinct !DILexicalBlock(scope: !4165, file: !4052, line: 225, column: 11)
!4246 = !DILocation(line: 225, column: 11, scope: !4165, inlinedAt: !4065)
!4247 = !DILocation(line: 226, column: 22, scope: !4245, inlinedAt: !4065)
!4248 = !DILocation(line: 226, column: 16, scope: !4245, inlinedAt: !4065)
!4249 = !DILocation(line: 226, column: 9, scope: !4245, inlinedAt: !4065)
!4250 = !DILocation(line: 228, column: 12, scope: !4251, inlinedAt: !4065)
!4251 = distinct !DILexicalBlock(scope: !4165, file: !4052, line: 228, column: 11)
!4252 = !DILocation(line: 0, scope: !4165, inlinedAt: !4065)
!4253 = !DILocation(line: 0, scope: !4069, inlinedAt: !4065)
!4254 = !DILocation(line: 33, column: 3, scope: !4045)
!4255 = distinct !DISubprogram(name: "version_etc_arn", scope: !759, file: !759, line: 61, type: !4256, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4293)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{null, !4258, !265, !265, !265, !4292, !262}
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !311, line: 7, baseType: !4260)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !313, line: 49, size: 1728, elements: !4261)
!4261 = !{!4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4260, file: !313, line: 51, baseType: !260, size: 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4260, file: !313, line: 54, baseType: !317, size: 64, offset: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4260, file: !313, line: 55, baseType: !317, size: 64, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4260, file: !313, line: 56, baseType: !317, size: 64, offset: 192)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4260, file: !313, line: 57, baseType: !317, size: 64, offset: 256)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4260, file: !313, line: 58, baseType: !317, size: 64, offset: 320)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4260, file: !313, line: 59, baseType: !317, size: 64, offset: 384)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4260, file: !313, line: 60, baseType: !317, size: 64, offset: 448)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4260, file: !313, line: 61, baseType: !317, size: 64, offset: 512)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4260, file: !313, line: 64, baseType: !317, size: 64, offset: 576)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4260, file: !313, line: 65, baseType: !317, size: 64, offset: 640)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4260, file: !313, line: 66, baseType: !317, size: 64, offset: 704)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4260, file: !313, line: 68, baseType: !329, size: 64, offset: 768)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4260, file: !313, line: 70, baseType: !4276, size: 64, offset: 832)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4260, file: !313, line: 72, baseType: !260, size: 32, offset: 896)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4260, file: !313, line: 73, baseType: !260, size: 32, offset: 928)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4260, file: !313, line: 74, baseType: !336, size: 64, offset: 960)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4260, file: !313, line: 77, baseType: !261, size: 16, offset: 1024)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4260, file: !313, line: 78, baseType: !339, size: 8, offset: 1040)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4260, file: !313, line: 79, baseType: !206, size: 8, offset: 1048)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4260, file: !313, line: 81, baseType: !342, size: 64, offset: 1088)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4260, file: !313, line: 89, baseType: !345, size: 64, offset: 1152)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4260, file: !313, line: 91, baseType: !347, size: 64, offset: 1216)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4260, file: !313, line: 92, baseType: !350, size: 64, offset: 1280)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4260, file: !313, line: 93, baseType: !4276, size: 64, offset: 1344)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4260, file: !313, line: 94, baseType: !354, size: 64, offset: 1408)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4260, file: !313, line: 95, baseType: !262, size: 64, offset: 1472)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4260, file: !313, line: 96, baseType: !260, size: 32, offset: 1536)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4260, file: !313, line: 98, baseType: !358, size: 160, offset: 1568)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!4293 = !{!4294, !4295, !4296, !4297, !4298, !4299}
!4294 = !DILocalVariable(name: "stream", arg: 1, scope: !4255, file: !759, line: 61, type: !4258)
!4295 = !DILocalVariable(name: "command_name", arg: 2, scope: !4255, file: !759, line: 62, type: !265)
!4296 = !DILocalVariable(name: "package", arg: 3, scope: !4255, file: !759, line: 62, type: !265)
!4297 = !DILocalVariable(name: "version", arg: 4, scope: !4255, file: !759, line: 63, type: !265)
!4298 = !DILocalVariable(name: "authors", arg: 5, scope: !4255, file: !759, line: 64, type: !4292)
!4299 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4255, file: !759, line: 64, type: !262)
!4300 = !DILocation(line: 0, scope: !4255)
!4301 = !DILocation(line: 66, column: 7, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4255, file: !759, line: 66, column: 7)
!4303 = !DILocation(line: 66, column: 7, scope: !4255)
!4304 = !DILocation(line: 67, column: 5, scope: !4302)
!4305 = !DILocation(line: 69, column: 5, scope: !4302)
!4306 = !DILocation(line: 83, column: 3, scope: !4255)
!4307 = !DILocation(line: 85, column: 3, scope: !4255)
!4308 = !DILocation(line: 88, column: 3, scope: !4255)
!4309 = !DILocation(line: 95, column: 3, scope: !4255)
!4310 = !DILocation(line: 97, column: 3, scope: !4255)
!4311 = !DILocation(line: 105, column: 7, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4255, file: !759, line: 98, column: 5)
!4313 = !DILocation(line: 106, column: 7, scope: !4312)
!4314 = !DILocation(line: 109, column: 7, scope: !4312)
!4315 = !DILocation(line: 110, column: 7, scope: !4312)
!4316 = !DILocation(line: 113, column: 7, scope: !4312)
!4317 = !DILocation(line: 115, column: 7, scope: !4312)
!4318 = !DILocation(line: 120, column: 7, scope: !4312)
!4319 = !DILocation(line: 122, column: 7, scope: !4312)
!4320 = !DILocation(line: 127, column: 7, scope: !4312)
!4321 = !DILocation(line: 129, column: 7, scope: !4312)
!4322 = !DILocation(line: 134, column: 7, scope: !4312)
!4323 = !DILocation(line: 137, column: 7, scope: !4312)
!4324 = !DILocation(line: 142, column: 7, scope: !4312)
!4325 = !DILocation(line: 145, column: 7, scope: !4312)
!4326 = !DILocation(line: 150, column: 7, scope: !4312)
!4327 = !DILocation(line: 154, column: 7, scope: !4312)
!4328 = !DILocation(line: 159, column: 7, scope: !4312)
!4329 = !DILocation(line: 163, column: 7, scope: !4312)
!4330 = !DILocation(line: 170, column: 7, scope: !4312)
!4331 = !DILocation(line: 174, column: 7, scope: !4312)
!4332 = !DILocation(line: 176, column: 1, scope: !4255)
!4333 = distinct !DISubprogram(name: "version_etc_ar", scope: !759, file: !759, line: 183, type: !4334, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4336)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{null, !4258, !265, !265, !265, !4292}
!4336 = !{!4337, !4338, !4339, !4340, !4341, !4342}
!4337 = !DILocalVariable(name: "stream", arg: 1, scope: !4333, file: !759, line: 183, type: !4258)
!4338 = !DILocalVariable(name: "command_name", arg: 2, scope: !4333, file: !759, line: 184, type: !265)
!4339 = !DILocalVariable(name: "package", arg: 3, scope: !4333, file: !759, line: 184, type: !265)
!4340 = !DILocalVariable(name: "version", arg: 4, scope: !4333, file: !759, line: 185, type: !265)
!4341 = !DILocalVariable(name: "authors", arg: 5, scope: !4333, file: !759, line: 185, type: !4292)
!4342 = !DILocalVariable(name: "n_authors", scope: !4333, file: !759, line: 187, type: !262)
!4343 = !DILocation(line: 0, scope: !4333)
!4344 = !DILocation(line: 189, column: 8, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4333, file: !759, line: 189, column: 3)
!4346 = !DILocation(line: 189, scope: !4345)
!4347 = !DILocation(line: 189, column: 23, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4345, file: !759, line: 189, column: 3)
!4349 = !DILocation(line: 189, column: 3, scope: !4345)
!4350 = !DILocation(line: 189, column: 52, scope: !4348)
!4351 = distinct !{!4351, !4349, !4352, !1099}
!4352 = !DILocation(line: 190, column: 5, scope: !4345)
!4353 = !DILocation(line: 191, column: 3, scope: !4333)
!4354 = !DILocation(line: 192, column: 1, scope: !4333)
!4355 = distinct !DISubprogram(name: "version_etc_va", scope: !759, file: !759, line: 199, type: !4356, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4366)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{null, !4258, !265, !265, !265, !4358}
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4360)
!4360 = !{!4361, !4363, !4364, !4365}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4359, file: !4362, line: 192, baseType: !224, size: 32)
!4362 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4359, file: !4362, line: 192, baseType: !224, size: 32, offset: 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4359, file: !4362, line: 192, baseType: !354, size: 64, offset: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4359, file: !4362, line: 192, baseType: !354, size: 64, offset: 128)
!4366 = !{!4367, !4368, !4369, !4370, !4371, !4372, !4373}
!4367 = !DILocalVariable(name: "stream", arg: 1, scope: !4355, file: !759, line: 199, type: !4258)
!4368 = !DILocalVariable(name: "command_name", arg: 2, scope: !4355, file: !759, line: 200, type: !265)
!4369 = !DILocalVariable(name: "package", arg: 3, scope: !4355, file: !759, line: 200, type: !265)
!4370 = !DILocalVariable(name: "version", arg: 4, scope: !4355, file: !759, line: 201, type: !265)
!4371 = !DILocalVariable(name: "authors", arg: 5, scope: !4355, file: !759, line: 201, type: !4358)
!4372 = !DILocalVariable(name: "n_authors", scope: !4355, file: !759, line: 203, type: !262)
!4373 = !DILocalVariable(name: "authtab", scope: !4355, file: !759, line: 204, type: !4374)
!4374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 640, elements: !212)
!4375 = !DILocation(line: 0, scope: !4355)
!4376 = !DILocation(line: 204, column: 3, scope: !4355)
!4377 = !DILocation(line: 204, column: 15, scope: !4355)
!4378 = !DILocation(line: 208, column: 35, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4380, file: !759, line: 206, column: 3)
!4380 = distinct !DILexicalBlock(scope: !4355, file: !759, line: 206, column: 3)
!4381 = !DILocation(line: 208, column: 33, scope: !4379)
!4382 = !DILocation(line: 208, column: 67, scope: !4379)
!4383 = !DILocation(line: 206, column: 3, scope: !4380)
!4384 = !DILocation(line: 208, column: 14, scope: !4379)
!4385 = !DILocation(line: 0, scope: !4380)
!4386 = !DILocation(line: 211, column: 3, scope: !4355)
!4387 = !DILocation(line: 213, column: 1, scope: !4355)
!4388 = distinct !DISubprogram(name: "version_etc", scope: !759, file: !759, line: 230, type: !4389, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4391)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{null, !4258, !265, !265, !265, null}
!4391 = !{!4392, !4393, !4394, !4395, !4396}
!4392 = !DILocalVariable(name: "stream", arg: 1, scope: !4388, file: !759, line: 230, type: !4258)
!4393 = !DILocalVariable(name: "command_name", arg: 2, scope: !4388, file: !759, line: 231, type: !265)
!4394 = !DILocalVariable(name: "package", arg: 3, scope: !4388, file: !759, line: 231, type: !265)
!4395 = !DILocalVariable(name: "version", arg: 4, scope: !4388, file: !759, line: 232, type: !265)
!4396 = !DILocalVariable(name: "authors", scope: !4388, file: !759, line: 234, type: !4397)
!4397 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1047, line: 52, baseType: !4398)
!4398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1400, line: 14, baseType: !4399)
!4399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4362, baseType: !4400)
!4400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4359, size: 192, elements: !207)
!4401 = !DILocation(line: 0, scope: !4388)
!4402 = !DILocation(line: 234, column: 3, scope: !4388)
!4403 = !DILocation(line: 234, column: 11, scope: !4388)
!4404 = !DILocation(line: 235, column: 3, scope: !4388)
!4405 = !DILocation(line: 236, column: 3, scope: !4388)
!4406 = !DILocation(line: 237, column: 3, scope: !4388)
!4407 = !DILocation(line: 238, column: 1, scope: !4388)
!4408 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !759, file: !759, line: 241, type: !625, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !1039)
!4409 = !DILocation(line: 243, column: 3, scope: !4408)
!4410 = !DILocation(line: 248, column: 3, scope: !4408)
!4411 = !DILocation(line: 254, column: 3, scope: !4408)
!4412 = !DILocation(line: 259, column: 3, scope: !4408)
!4413 = !DILocation(line: 261, column: 1, scope: !4408)
!4414 = distinct !DISubprogram(name: "xnrealloc", scope: !4415, file: !4415, line: 147, type: !4416, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4418)
!4415 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!354, !354, !262, !262}
!4418 = !{!4419, !4420, !4421}
!4419 = !DILocalVariable(name: "p", arg: 1, scope: !4414, file: !4415, line: 147, type: !354)
!4420 = !DILocalVariable(name: "n", arg: 2, scope: !4414, file: !4415, line: 147, type: !262)
!4421 = !DILocalVariable(name: "s", arg: 3, scope: !4414, file: !4415, line: 147, type: !262)
!4422 = !DILocation(line: 0, scope: !4414)
!4423 = !DILocalVariable(name: "p", arg: 1, scope: !4424, file: !879, line: 83, type: !354)
!4424 = distinct !DISubprogram(name: "xreallocarray", scope: !879, file: !879, line: 83, type: !4416, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4425)
!4425 = !{!4423, !4426, !4427}
!4426 = !DILocalVariable(name: "n", arg: 2, scope: !4424, file: !879, line: 83, type: !262)
!4427 = !DILocalVariable(name: "s", arg: 3, scope: !4424, file: !879, line: 83, type: !262)
!4428 = !DILocation(line: 0, scope: !4424, inlinedAt: !4429)
!4429 = distinct !DILocation(line: 149, column: 10, scope: !4414)
!4430 = !DILocation(line: 85, column: 25, scope: !4424, inlinedAt: !4429)
!4431 = !DILocalVariable(name: "p", arg: 1, scope: !4432, file: !879, line: 37, type: !354)
!4432 = distinct !DISubprogram(name: "check_nonnull", scope: !879, file: !879, line: 37, type: !4433, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4435)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!354, !354}
!4435 = !{!4431}
!4436 = !DILocation(line: 0, scope: !4432, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 85, column: 10, scope: !4424, inlinedAt: !4429)
!4438 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4437)
!4439 = distinct !DILexicalBlock(scope: !4432, file: !879, line: 39, column: 7)
!4440 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4437)
!4441 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4437)
!4442 = !DILocation(line: 149, column: 3, scope: !4414)
!4443 = !DILocation(line: 0, scope: !4424)
!4444 = !DILocation(line: 85, column: 25, scope: !4424)
!4445 = !DILocation(line: 0, scope: !4432, inlinedAt: !4446)
!4446 = distinct !DILocation(line: 85, column: 10, scope: !4424)
!4447 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4446)
!4448 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4446)
!4449 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4446)
!4450 = !DILocation(line: 85, column: 3, scope: !4424)
!4451 = distinct !DISubprogram(name: "xmalloc", scope: !879, file: !879, line: 47, type: !4452, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4454)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!354, !262}
!4454 = !{!4455}
!4455 = !DILocalVariable(name: "s", arg: 1, scope: !4451, file: !879, line: 47, type: !262)
!4456 = !DILocation(line: 0, scope: !4451)
!4457 = !DILocation(line: 49, column: 25, scope: !4451)
!4458 = !DILocation(line: 0, scope: !4432, inlinedAt: !4459)
!4459 = distinct !DILocation(line: 49, column: 10, scope: !4451)
!4460 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4459)
!4461 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4459)
!4462 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4459)
!4463 = !DILocation(line: 49, column: 3, scope: !4451)
!4464 = !DISubprogram(name: "malloc", scope: !1180, file: !1180, line: 540, type: !4452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!4465 = distinct !DISubprogram(name: "ximalloc", scope: !879, file: !879, line: 53, type: !4466, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4468)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!354, !898}
!4468 = !{!4469}
!4469 = !DILocalVariable(name: "s", arg: 1, scope: !4465, file: !879, line: 53, type: !898)
!4470 = !DILocation(line: 0, scope: !4465)
!4471 = !DILocalVariable(name: "s", arg: 1, scope: !4472, file: !4473, line: 55, type: !898)
!4472 = distinct !DISubprogram(name: "imalloc", scope: !4473, file: !4473, line: 55, type: !4466, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4474)
!4473 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4474 = !{!4471}
!4475 = !DILocation(line: 0, scope: !4472, inlinedAt: !4476)
!4476 = distinct !DILocation(line: 55, column: 25, scope: !4465)
!4477 = !DILocation(line: 57, column: 26, scope: !4472, inlinedAt: !4476)
!4478 = !DILocation(line: 0, scope: !4432, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 55, column: 10, scope: !4465)
!4480 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4479)
!4481 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4479)
!4482 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4479)
!4483 = !DILocation(line: 55, column: 3, scope: !4465)
!4484 = distinct !DISubprogram(name: "xcharalloc", scope: !879, file: !879, line: 59, type: !4485, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4487)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!317, !262}
!4487 = !{!4488}
!4488 = !DILocalVariable(name: "n", arg: 1, scope: !4484, file: !879, line: 59, type: !262)
!4489 = !DILocation(line: 0, scope: !4484)
!4490 = !DILocation(line: 0, scope: !4451, inlinedAt: !4491)
!4491 = distinct !DILocation(line: 61, column: 10, scope: !4484)
!4492 = !DILocation(line: 49, column: 25, scope: !4451, inlinedAt: !4491)
!4493 = !DILocation(line: 0, scope: !4432, inlinedAt: !4494)
!4494 = distinct !DILocation(line: 49, column: 10, scope: !4451, inlinedAt: !4491)
!4495 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4494)
!4496 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4494)
!4497 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4494)
!4498 = !DILocation(line: 61, column: 3, scope: !4484)
!4499 = distinct !DISubprogram(name: "xrealloc", scope: !879, file: !879, line: 68, type: !4500, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4502)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!354, !354, !262}
!4502 = !{!4503, !4504}
!4503 = !DILocalVariable(name: "p", arg: 1, scope: !4499, file: !879, line: 68, type: !354)
!4504 = !DILocalVariable(name: "s", arg: 2, scope: !4499, file: !879, line: 68, type: !262)
!4505 = !DILocation(line: 0, scope: !4499)
!4506 = !DILocalVariable(name: "ptr", arg: 1, scope: !4507, file: !4508, line: 2057, type: !354)
!4507 = distinct !DISubprogram(name: "rpl_realloc", scope: !4508, file: !4508, line: 2057, type: !4500, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4509)
!4508 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4509 = !{!4506, !4510}
!4510 = !DILocalVariable(name: "size", arg: 2, scope: !4507, file: !4508, line: 2057, type: !262)
!4511 = !DILocation(line: 0, scope: !4507, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 70, column: 25, scope: !4499)
!4513 = !DILocation(line: 2059, column: 24, scope: !4507, inlinedAt: !4512)
!4514 = !DILocation(line: 2059, column: 10, scope: !4507, inlinedAt: !4512)
!4515 = !DILocation(line: 0, scope: !4432, inlinedAt: !4516)
!4516 = distinct !DILocation(line: 70, column: 10, scope: !4499)
!4517 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4516)
!4518 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4516)
!4519 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4516)
!4520 = !DILocation(line: 70, column: 3, scope: !4499)
!4521 = !DISubprogram(name: "realloc", scope: !1180, file: !1180, line: 551, type: !4500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!4522 = distinct !DISubprogram(name: "xirealloc", scope: !879, file: !879, line: 74, type: !4523, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4525)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!354, !354, !898}
!4525 = !{!4526, !4527}
!4526 = !DILocalVariable(name: "p", arg: 1, scope: !4522, file: !879, line: 74, type: !354)
!4527 = !DILocalVariable(name: "s", arg: 2, scope: !4522, file: !879, line: 74, type: !898)
!4528 = !DILocation(line: 0, scope: !4522)
!4529 = !DILocalVariable(name: "p", arg: 1, scope: !4530, file: !4473, line: 66, type: !354)
!4530 = distinct !DISubprogram(name: "irealloc", scope: !4473, file: !4473, line: 66, type: !4523, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4531)
!4531 = !{!4529, !4532}
!4532 = !DILocalVariable(name: "s", arg: 2, scope: !4530, file: !4473, line: 66, type: !898)
!4533 = !DILocation(line: 0, scope: !4530, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 76, column: 25, scope: !4522)
!4535 = !DILocation(line: 0, scope: !4507, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 68, column: 26, scope: !4530, inlinedAt: !4534)
!4537 = !DILocation(line: 2059, column: 24, scope: !4507, inlinedAt: !4536)
!4538 = !DILocation(line: 2059, column: 10, scope: !4507, inlinedAt: !4536)
!4539 = !DILocation(line: 0, scope: !4432, inlinedAt: !4540)
!4540 = distinct !DILocation(line: 76, column: 10, scope: !4522)
!4541 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4540)
!4542 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4540)
!4543 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4540)
!4544 = !DILocation(line: 76, column: 3, scope: !4522)
!4545 = distinct !DISubprogram(name: "xireallocarray", scope: !879, file: !879, line: 89, type: !4546, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4548)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!354, !354, !898, !898}
!4548 = !{!4549, !4550, !4551}
!4549 = !DILocalVariable(name: "p", arg: 1, scope: !4545, file: !879, line: 89, type: !354)
!4550 = !DILocalVariable(name: "n", arg: 2, scope: !4545, file: !879, line: 89, type: !898)
!4551 = !DILocalVariable(name: "s", arg: 3, scope: !4545, file: !879, line: 89, type: !898)
!4552 = !DILocation(line: 0, scope: !4545)
!4553 = !DILocalVariable(name: "p", arg: 1, scope: !4554, file: !4473, line: 98, type: !354)
!4554 = distinct !DISubprogram(name: "ireallocarray", scope: !4473, file: !4473, line: 98, type: !4546, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4555)
!4555 = !{!4553, !4556, !4557}
!4556 = !DILocalVariable(name: "n", arg: 2, scope: !4554, file: !4473, line: 98, type: !898)
!4557 = !DILocalVariable(name: "s", arg: 3, scope: !4554, file: !4473, line: 98, type: !898)
!4558 = !DILocation(line: 0, scope: !4554, inlinedAt: !4559)
!4559 = distinct !DILocation(line: 91, column: 25, scope: !4545)
!4560 = !DILocation(line: 101, column: 13, scope: !4554, inlinedAt: !4559)
!4561 = !DILocation(line: 0, scope: !4432, inlinedAt: !4562)
!4562 = distinct !DILocation(line: 91, column: 10, scope: !4545)
!4563 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4562)
!4564 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4562)
!4565 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4562)
!4566 = !DILocation(line: 91, column: 3, scope: !4545)
!4567 = distinct !DISubprogram(name: "xnmalloc", scope: !879, file: !879, line: 98, type: !4568, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4570)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!354, !262, !262}
!4570 = !{!4571, !4572}
!4571 = !DILocalVariable(name: "n", arg: 1, scope: !4567, file: !879, line: 98, type: !262)
!4572 = !DILocalVariable(name: "s", arg: 2, scope: !4567, file: !879, line: 98, type: !262)
!4573 = !DILocation(line: 0, scope: !4567)
!4574 = !DILocation(line: 0, scope: !4424, inlinedAt: !4575)
!4575 = distinct !DILocation(line: 100, column: 10, scope: !4567)
!4576 = !DILocation(line: 85, column: 25, scope: !4424, inlinedAt: !4575)
!4577 = !DILocation(line: 0, scope: !4432, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 85, column: 10, scope: !4424, inlinedAt: !4575)
!4579 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4578)
!4580 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4578)
!4581 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4578)
!4582 = !DILocation(line: 100, column: 3, scope: !4567)
!4583 = distinct !DISubprogram(name: "xinmalloc", scope: !879, file: !879, line: 104, type: !4584, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4586)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!354, !898, !898}
!4586 = !{!4587, !4588}
!4587 = !DILocalVariable(name: "n", arg: 1, scope: !4583, file: !879, line: 104, type: !898)
!4588 = !DILocalVariable(name: "s", arg: 2, scope: !4583, file: !879, line: 104, type: !898)
!4589 = !DILocation(line: 0, scope: !4583)
!4590 = !DILocation(line: 0, scope: !4545, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 106, column: 10, scope: !4583)
!4592 = !DILocation(line: 0, scope: !4554, inlinedAt: !4593)
!4593 = distinct !DILocation(line: 91, column: 25, scope: !4545, inlinedAt: !4591)
!4594 = !DILocation(line: 101, column: 13, scope: !4554, inlinedAt: !4593)
!4595 = !DILocation(line: 0, scope: !4432, inlinedAt: !4596)
!4596 = distinct !DILocation(line: 91, column: 10, scope: !4545, inlinedAt: !4591)
!4597 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4596)
!4598 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4596)
!4599 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4596)
!4600 = !DILocation(line: 106, column: 3, scope: !4583)
!4601 = distinct !DISubprogram(name: "x2realloc", scope: !879, file: !879, line: 116, type: !4602, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4604)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!354, !354, !885}
!4604 = !{!4605, !4606}
!4605 = !DILocalVariable(name: "p", arg: 1, scope: !4601, file: !879, line: 116, type: !354)
!4606 = !DILocalVariable(name: "ps", arg: 2, scope: !4601, file: !879, line: 116, type: !885)
!4607 = !DILocation(line: 0, scope: !4601)
!4608 = !DILocation(line: 0, scope: !882, inlinedAt: !4609)
!4609 = distinct !DILocation(line: 118, column: 10, scope: !4601)
!4610 = !DILocation(line: 178, column: 14, scope: !882, inlinedAt: !4609)
!4611 = !DILocation(line: 180, column: 9, scope: !4612, inlinedAt: !4609)
!4612 = distinct !DILexicalBlock(scope: !882, file: !879, line: 180, column: 7)
!4613 = !DILocation(line: 180, column: 7, scope: !882, inlinedAt: !4609)
!4614 = !DILocation(line: 182, column: 13, scope: !4615, inlinedAt: !4609)
!4615 = distinct !DILexicalBlock(scope: !4616, file: !879, line: 182, column: 11)
!4616 = distinct !DILexicalBlock(scope: !4612, file: !879, line: 181, column: 5)
!4617 = !DILocation(line: 182, column: 11, scope: !4616, inlinedAt: !4609)
!4618 = !DILocation(line: 197, column: 11, scope: !4619, inlinedAt: !4609)
!4619 = distinct !DILexicalBlock(scope: !4620, file: !879, line: 197, column: 11)
!4620 = distinct !DILexicalBlock(scope: !4612, file: !879, line: 195, column: 5)
!4621 = !DILocation(line: 197, column: 11, scope: !4620, inlinedAt: !4609)
!4622 = !DILocation(line: 198, column: 9, scope: !4619, inlinedAt: !4609)
!4623 = !DILocation(line: 0, scope: !4424, inlinedAt: !4624)
!4624 = distinct !DILocation(line: 201, column: 7, scope: !882, inlinedAt: !4609)
!4625 = !DILocation(line: 85, column: 25, scope: !4424, inlinedAt: !4624)
!4626 = !DILocation(line: 0, scope: !4432, inlinedAt: !4627)
!4627 = distinct !DILocation(line: 85, column: 10, scope: !4424, inlinedAt: !4624)
!4628 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4627)
!4629 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4627)
!4630 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4627)
!4631 = !DILocation(line: 202, column: 7, scope: !882, inlinedAt: !4609)
!4632 = !DILocation(line: 118, column: 3, scope: !4601)
!4633 = !DILocation(line: 0, scope: !882)
!4634 = !DILocation(line: 178, column: 14, scope: !882)
!4635 = !DILocation(line: 180, column: 9, scope: !4612)
!4636 = !DILocation(line: 180, column: 7, scope: !882)
!4637 = !DILocation(line: 182, column: 13, scope: !4615)
!4638 = !DILocation(line: 182, column: 11, scope: !4616)
!4639 = !DILocation(line: 190, column: 30, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4615, file: !879, line: 183, column: 9)
!4641 = !DILocation(line: 191, column: 16, scope: !4640)
!4642 = !DILocation(line: 191, column: 13, scope: !4640)
!4643 = !DILocation(line: 192, column: 9, scope: !4640)
!4644 = !DILocation(line: 197, column: 11, scope: !4619)
!4645 = !DILocation(line: 197, column: 11, scope: !4620)
!4646 = !DILocation(line: 198, column: 9, scope: !4619)
!4647 = !DILocation(line: 0, scope: !4424, inlinedAt: !4648)
!4648 = distinct !DILocation(line: 201, column: 7, scope: !882)
!4649 = !DILocation(line: 85, column: 25, scope: !4424, inlinedAt: !4648)
!4650 = !DILocation(line: 0, scope: !4432, inlinedAt: !4651)
!4651 = distinct !DILocation(line: 85, column: 10, scope: !4424, inlinedAt: !4648)
!4652 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4651)
!4653 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4651)
!4654 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4651)
!4655 = !DILocation(line: 202, column: 7, scope: !882)
!4656 = !DILocation(line: 203, column: 3, scope: !882)
!4657 = !DILocation(line: 0, scope: !894)
!4658 = !DILocation(line: 230, column: 14, scope: !894)
!4659 = !DILocation(line: 238, column: 7, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !894, file: !879, line: 238, column: 7)
!4661 = !DILocation(line: 238, column: 7, scope: !894)
!4662 = !DILocation(line: 240, column: 9, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !894, file: !879, line: 240, column: 7)
!4664 = !DILocation(line: 240, column: 18, scope: !4663)
!4665 = !DILocation(line: 253, column: 8, scope: !894)
!4666 = !DILocation(line: 258, column: 27, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4668, file: !879, line: 257, column: 5)
!4668 = distinct !DILexicalBlock(scope: !894, file: !879, line: 256, column: 7)
!4669 = !DILocation(line: 259, column: 50, scope: !4667)
!4670 = !DILocation(line: 259, column: 32, scope: !4667)
!4671 = !DILocation(line: 260, column: 5, scope: !4667)
!4672 = !DILocation(line: 262, column: 9, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !894, file: !879, line: 262, column: 7)
!4674 = !DILocation(line: 262, column: 7, scope: !894)
!4675 = !DILocation(line: 263, column: 9, scope: !4673)
!4676 = !DILocation(line: 263, column: 5, scope: !4673)
!4677 = !DILocation(line: 264, column: 9, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !894, file: !879, line: 264, column: 7)
!4679 = !DILocation(line: 264, column: 14, scope: !4678)
!4680 = !DILocation(line: 265, column: 7, scope: !4678)
!4681 = !DILocation(line: 265, column: 11, scope: !4678)
!4682 = !DILocation(line: 266, column: 11, scope: !4678)
!4683 = !DILocation(line: 267, column: 14, scope: !4678)
!4684 = !DILocation(line: 264, column: 7, scope: !894)
!4685 = !DILocation(line: 268, column: 5, scope: !4678)
!4686 = !DILocation(line: 0, scope: !4499, inlinedAt: !4687)
!4687 = distinct !DILocation(line: 269, column: 8, scope: !894)
!4688 = !DILocation(line: 0, scope: !4507, inlinedAt: !4689)
!4689 = distinct !DILocation(line: 70, column: 25, scope: !4499, inlinedAt: !4687)
!4690 = !DILocation(line: 2059, column: 24, scope: !4507, inlinedAt: !4689)
!4691 = !DILocation(line: 2059, column: 10, scope: !4507, inlinedAt: !4689)
!4692 = !DILocation(line: 0, scope: !4432, inlinedAt: !4693)
!4693 = distinct !DILocation(line: 70, column: 10, scope: !4499, inlinedAt: !4687)
!4694 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4693)
!4695 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4693)
!4696 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4693)
!4697 = !DILocation(line: 270, column: 7, scope: !894)
!4698 = !DILocation(line: 271, column: 3, scope: !894)
!4699 = distinct !DISubprogram(name: "xzalloc", scope: !879, file: !879, line: 279, type: !4452, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4700)
!4700 = !{!4701}
!4701 = !DILocalVariable(name: "s", arg: 1, scope: !4699, file: !879, line: 279, type: !262)
!4702 = !DILocation(line: 0, scope: !4699)
!4703 = !DILocalVariable(name: "n", arg: 1, scope: !4704, file: !879, line: 294, type: !262)
!4704 = distinct !DISubprogram(name: "xcalloc", scope: !879, file: !879, line: 294, type: !4568, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4705)
!4705 = !{!4703, !4706}
!4706 = !DILocalVariable(name: "s", arg: 2, scope: !4704, file: !879, line: 294, type: !262)
!4707 = !DILocation(line: 0, scope: !4704, inlinedAt: !4708)
!4708 = distinct !DILocation(line: 281, column: 10, scope: !4699)
!4709 = !DILocation(line: 296, column: 25, scope: !4704, inlinedAt: !4708)
!4710 = !DILocation(line: 0, scope: !4432, inlinedAt: !4711)
!4711 = distinct !DILocation(line: 296, column: 10, scope: !4704, inlinedAt: !4708)
!4712 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4711)
!4713 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4711)
!4714 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4711)
!4715 = !DILocation(line: 281, column: 3, scope: !4699)
!4716 = !DISubprogram(name: "calloc", scope: !1180, file: !1180, line: 543, type: !4568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!4717 = !DILocation(line: 0, scope: !4704)
!4718 = !DILocation(line: 296, column: 25, scope: !4704)
!4719 = !DILocation(line: 0, scope: !4432, inlinedAt: !4720)
!4720 = distinct !DILocation(line: 296, column: 10, scope: !4704)
!4721 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4720)
!4722 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4720)
!4723 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4720)
!4724 = !DILocation(line: 296, column: 3, scope: !4704)
!4725 = distinct !DISubprogram(name: "xizalloc", scope: !879, file: !879, line: 285, type: !4466, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4726)
!4726 = !{!4727}
!4727 = !DILocalVariable(name: "s", arg: 1, scope: !4725, file: !879, line: 285, type: !898)
!4728 = !DILocation(line: 0, scope: !4725)
!4729 = !DILocalVariable(name: "n", arg: 1, scope: !4730, file: !879, line: 300, type: !898)
!4730 = distinct !DISubprogram(name: "xicalloc", scope: !879, file: !879, line: 300, type: !4584, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4731)
!4731 = !{!4729, !4732}
!4732 = !DILocalVariable(name: "s", arg: 2, scope: !4730, file: !879, line: 300, type: !898)
!4733 = !DILocation(line: 0, scope: !4730, inlinedAt: !4734)
!4734 = distinct !DILocation(line: 287, column: 10, scope: !4725)
!4735 = !DILocalVariable(name: "n", arg: 1, scope: !4736, file: !4473, line: 77, type: !898)
!4736 = distinct !DISubprogram(name: "icalloc", scope: !4473, file: !4473, line: 77, type: !4584, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4737)
!4737 = !{!4735, !4738}
!4738 = !DILocalVariable(name: "s", arg: 2, scope: !4736, file: !4473, line: 77, type: !898)
!4739 = !DILocation(line: 0, scope: !4736, inlinedAt: !4740)
!4740 = distinct !DILocation(line: 302, column: 25, scope: !4730, inlinedAt: !4734)
!4741 = !DILocation(line: 91, column: 10, scope: !4736, inlinedAt: !4740)
!4742 = !DILocation(line: 0, scope: !4432, inlinedAt: !4743)
!4743 = distinct !DILocation(line: 302, column: 10, scope: !4730, inlinedAt: !4734)
!4744 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4743)
!4745 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4743)
!4746 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4743)
!4747 = !DILocation(line: 287, column: 3, scope: !4725)
!4748 = !DILocation(line: 0, scope: !4730)
!4749 = !DILocation(line: 0, scope: !4736, inlinedAt: !4750)
!4750 = distinct !DILocation(line: 302, column: 25, scope: !4730)
!4751 = !DILocation(line: 91, column: 10, scope: !4736, inlinedAt: !4750)
!4752 = !DILocation(line: 0, scope: !4432, inlinedAt: !4753)
!4753 = distinct !DILocation(line: 302, column: 10, scope: !4730)
!4754 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4753)
!4755 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4753)
!4756 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4753)
!4757 = !DILocation(line: 302, column: 3, scope: !4730)
!4758 = distinct !DISubprogram(name: "xmemdup", scope: !879, file: !879, line: 310, type: !4759, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4761)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!354, !1204, !262}
!4761 = !{!4762, !4763}
!4762 = !DILocalVariable(name: "p", arg: 1, scope: !4758, file: !879, line: 310, type: !1204)
!4763 = !DILocalVariable(name: "s", arg: 2, scope: !4758, file: !879, line: 310, type: !262)
!4764 = !DILocation(line: 0, scope: !4758)
!4765 = !DILocation(line: 0, scope: !4451, inlinedAt: !4766)
!4766 = distinct !DILocation(line: 312, column: 18, scope: !4758)
!4767 = !DILocation(line: 49, column: 25, scope: !4451, inlinedAt: !4766)
!4768 = !DILocation(line: 0, scope: !4432, inlinedAt: !4769)
!4769 = distinct !DILocation(line: 49, column: 10, scope: !4451, inlinedAt: !4766)
!4770 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4769)
!4771 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4769)
!4772 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4769)
!4773 = !DILocalVariable(name: "__dest", arg: 1, scope: !4774, file: !2972, line: 26, type: !4777)
!4774 = distinct !DISubprogram(name: "memcpy", scope: !2972, file: !2972, line: 26, type: !4775, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4778)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{!354, !4777, !1203, !262}
!4777 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !354)
!4778 = !{!4773, !4779, !4780}
!4779 = !DILocalVariable(name: "__src", arg: 2, scope: !4774, file: !2972, line: 26, type: !1203)
!4780 = !DILocalVariable(name: "__len", arg: 3, scope: !4774, file: !2972, line: 26, type: !262)
!4781 = !DILocation(line: 0, scope: !4774, inlinedAt: !4782)
!4782 = distinct !DILocation(line: 312, column: 10, scope: !4758)
!4783 = !DILocation(line: 29, column: 10, scope: !4774, inlinedAt: !4782)
!4784 = !DILocation(line: 312, column: 3, scope: !4758)
!4785 = distinct !DISubprogram(name: "ximemdup", scope: !879, file: !879, line: 316, type: !4786, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4788)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!354, !1204, !898}
!4788 = !{!4789, !4790}
!4789 = !DILocalVariable(name: "p", arg: 1, scope: !4785, file: !879, line: 316, type: !1204)
!4790 = !DILocalVariable(name: "s", arg: 2, scope: !4785, file: !879, line: 316, type: !898)
!4791 = !DILocation(line: 0, scope: !4785)
!4792 = !DILocation(line: 0, scope: !4465, inlinedAt: !4793)
!4793 = distinct !DILocation(line: 318, column: 18, scope: !4785)
!4794 = !DILocation(line: 0, scope: !4472, inlinedAt: !4795)
!4795 = distinct !DILocation(line: 55, column: 25, scope: !4465, inlinedAt: !4793)
!4796 = !DILocation(line: 57, column: 26, scope: !4472, inlinedAt: !4795)
!4797 = !DILocation(line: 0, scope: !4432, inlinedAt: !4798)
!4798 = distinct !DILocation(line: 55, column: 10, scope: !4465, inlinedAt: !4793)
!4799 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4798)
!4800 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4798)
!4801 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4798)
!4802 = !DILocation(line: 0, scope: !4774, inlinedAt: !4803)
!4803 = distinct !DILocation(line: 318, column: 10, scope: !4785)
!4804 = !DILocation(line: 29, column: 10, scope: !4774, inlinedAt: !4803)
!4805 = !DILocation(line: 318, column: 3, scope: !4785)
!4806 = distinct !DISubprogram(name: "ximemdup0", scope: !879, file: !879, line: 325, type: !4807, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4809)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!317, !1204, !898}
!4809 = !{!4810, !4811, !4812}
!4810 = !DILocalVariable(name: "p", arg: 1, scope: !4806, file: !879, line: 325, type: !1204)
!4811 = !DILocalVariable(name: "s", arg: 2, scope: !4806, file: !879, line: 325, type: !898)
!4812 = !DILocalVariable(name: "result", scope: !4806, file: !879, line: 327, type: !317)
!4813 = !DILocation(line: 0, scope: !4806)
!4814 = !DILocation(line: 327, column: 30, scope: !4806)
!4815 = !DILocation(line: 0, scope: !4465, inlinedAt: !4816)
!4816 = distinct !DILocation(line: 327, column: 18, scope: !4806)
!4817 = !DILocation(line: 0, scope: !4472, inlinedAt: !4818)
!4818 = distinct !DILocation(line: 55, column: 25, scope: !4465, inlinedAt: !4816)
!4819 = !DILocation(line: 57, column: 26, scope: !4472, inlinedAt: !4818)
!4820 = !DILocation(line: 0, scope: !4432, inlinedAt: !4821)
!4821 = distinct !DILocation(line: 55, column: 10, scope: !4465, inlinedAt: !4816)
!4822 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4821)
!4823 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4821)
!4824 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4821)
!4825 = !DILocation(line: 328, column: 3, scope: !4806)
!4826 = !DILocation(line: 328, column: 13, scope: !4806)
!4827 = !DILocation(line: 0, scope: !4774, inlinedAt: !4828)
!4828 = distinct !DILocation(line: 329, column: 10, scope: !4806)
!4829 = !DILocation(line: 29, column: 10, scope: !4774, inlinedAt: !4828)
!4830 = !DILocation(line: 329, column: 3, scope: !4806)
!4831 = distinct !DISubprogram(name: "xstrdup", scope: !879, file: !879, line: 335, type: !1182, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4832)
!4832 = !{!4833}
!4833 = !DILocalVariable(name: "string", arg: 1, scope: !4831, file: !879, line: 335, type: !265)
!4834 = !DILocation(line: 0, scope: !4831)
!4835 = !DILocation(line: 337, column: 27, scope: !4831)
!4836 = !DILocation(line: 337, column: 43, scope: !4831)
!4837 = !DILocation(line: 0, scope: !4758, inlinedAt: !4838)
!4838 = distinct !DILocation(line: 337, column: 10, scope: !4831)
!4839 = !DILocation(line: 0, scope: !4451, inlinedAt: !4840)
!4840 = distinct !DILocation(line: 312, column: 18, scope: !4758, inlinedAt: !4838)
!4841 = !DILocation(line: 49, column: 25, scope: !4451, inlinedAt: !4840)
!4842 = !DILocation(line: 0, scope: !4432, inlinedAt: !4843)
!4843 = distinct !DILocation(line: 49, column: 10, scope: !4451, inlinedAt: !4840)
!4844 = !DILocation(line: 39, column: 8, scope: !4439, inlinedAt: !4843)
!4845 = !DILocation(line: 39, column: 7, scope: !4432, inlinedAt: !4843)
!4846 = !DILocation(line: 40, column: 5, scope: !4439, inlinedAt: !4843)
!4847 = !DILocation(line: 0, scope: !4774, inlinedAt: !4848)
!4848 = distinct !DILocation(line: 312, column: 10, scope: !4758, inlinedAt: !4838)
!4849 = !DILocation(line: 29, column: 10, scope: !4774, inlinedAt: !4848)
!4850 = !DILocation(line: 337, column: 3, scope: !4831)
!4851 = distinct !DISubprogram(name: "xalloc_die", scope: !835, file: !835, line: 32, type: !625, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !912, retainedNodes: !4852)
!4852 = !{!4853}
!4853 = !DILocalVariable(name: "__errstatus", scope: !4854, file: !835, line: 34, type: !4855)
!4854 = distinct !DILexicalBlock(scope: !4851, file: !835, line: 34, column: 3)
!4855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!4856 = !DILocation(line: 34, column: 3, scope: !4854)
!4857 = !DILocation(line: 0, scope: !4854)
!4858 = !DILocation(line: 40, column: 3, scope: !4851)
!4859 = distinct !DISubprogram(name: "close_stream", scope: !915, file: !915, line: 55, type: !4860, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !914, retainedNodes: !4896)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!260, !4862}
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !311, line: 7, baseType: !4864)
!4864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !313, line: 49, size: 1728, elements: !4865)
!4865 = !{!4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4864, file: !313, line: 51, baseType: !260, size: 32)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4864, file: !313, line: 54, baseType: !317, size: 64, offset: 64)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4864, file: !313, line: 55, baseType: !317, size: 64, offset: 128)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4864, file: !313, line: 56, baseType: !317, size: 64, offset: 192)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4864, file: !313, line: 57, baseType: !317, size: 64, offset: 256)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4864, file: !313, line: 58, baseType: !317, size: 64, offset: 320)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4864, file: !313, line: 59, baseType: !317, size: 64, offset: 384)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4864, file: !313, line: 60, baseType: !317, size: 64, offset: 448)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4864, file: !313, line: 61, baseType: !317, size: 64, offset: 512)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4864, file: !313, line: 64, baseType: !317, size: 64, offset: 576)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4864, file: !313, line: 65, baseType: !317, size: 64, offset: 640)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4864, file: !313, line: 66, baseType: !317, size: 64, offset: 704)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4864, file: !313, line: 68, baseType: !329, size: 64, offset: 768)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4864, file: !313, line: 70, baseType: !4880, size: 64, offset: 832)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4864, file: !313, line: 72, baseType: !260, size: 32, offset: 896)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4864, file: !313, line: 73, baseType: !260, size: 32, offset: 928)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4864, file: !313, line: 74, baseType: !336, size: 64, offset: 960)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4864, file: !313, line: 77, baseType: !261, size: 16, offset: 1024)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4864, file: !313, line: 78, baseType: !339, size: 8, offset: 1040)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4864, file: !313, line: 79, baseType: !206, size: 8, offset: 1048)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4864, file: !313, line: 81, baseType: !342, size: 64, offset: 1088)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4864, file: !313, line: 89, baseType: !345, size: 64, offset: 1152)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4864, file: !313, line: 91, baseType: !347, size: 64, offset: 1216)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4864, file: !313, line: 92, baseType: !350, size: 64, offset: 1280)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4864, file: !313, line: 93, baseType: !4880, size: 64, offset: 1344)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4864, file: !313, line: 94, baseType: !354, size: 64, offset: 1408)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4864, file: !313, line: 95, baseType: !262, size: 64, offset: 1472)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4864, file: !313, line: 96, baseType: !260, size: 32, offset: 1536)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4864, file: !313, line: 98, baseType: !358, size: 160, offset: 1568)
!4896 = !{!4897, !4898, !4900, !4901}
!4897 = !DILocalVariable(name: "stream", arg: 1, scope: !4859, file: !915, line: 55, type: !4862)
!4898 = !DILocalVariable(name: "some_pending", scope: !4859, file: !915, line: 57, type: !4899)
!4899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!4900 = !DILocalVariable(name: "prev_fail", scope: !4859, file: !915, line: 58, type: !4899)
!4901 = !DILocalVariable(name: "fclose_fail", scope: !4859, file: !915, line: 59, type: !4899)
!4902 = !DILocation(line: 0, scope: !4859)
!4903 = !DILocation(line: 57, column: 30, scope: !4859)
!4904 = !DILocalVariable(name: "__stream", arg: 1, scope: !4905, file: !2574, line: 135, type: !4862)
!4905 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2574, file: !2574, line: 135, type: !4860, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !914, retainedNodes: !4906)
!4906 = !{!4904}
!4907 = !DILocation(line: 0, scope: !4905, inlinedAt: !4908)
!4908 = distinct !DILocation(line: 58, column: 27, scope: !4859)
!4909 = !DILocation(line: 137, column: 10, scope: !4905, inlinedAt: !4908)
!4910 = !{!2583, !1053, i64 0}
!4911 = !DILocation(line: 58, column: 43, scope: !4859)
!4912 = !DILocation(line: 59, column: 29, scope: !4859)
!4913 = !DILocation(line: 59, column: 45, scope: !4859)
!4914 = !DILocation(line: 69, column: 17, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4859, file: !915, line: 69, column: 7)
!4916 = !DILocation(line: 57, column: 50, scope: !4859)
!4917 = !DILocation(line: 69, column: 33, scope: !4915)
!4918 = !DILocation(line: 69, column: 53, scope: !4915)
!4919 = !DILocation(line: 69, column: 59, scope: !4915)
!4920 = !DILocation(line: 69, column: 7, scope: !4859)
!4921 = !DILocation(line: 71, column: 11, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4915, file: !915, line: 70, column: 5)
!4923 = !DILocation(line: 72, column: 9, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4922, file: !915, line: 71, column: 11)
!4925 = !DILocation(line: 72, column: 15, scope: !4924)
!4926 = !DILocation(line: 77, column: 1, scope: !4859)
!4927 = !DISubprogram(name: "__fpending", scope: !4928, file: !4928, line: 75, type: !4929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!4928 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!262, !4862}
!4931 = distinct !DISubprogram(name: "rpl_fclose", scope: !917, file: !917, line: 58, type: !4932, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !4968)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!260, !4934}
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !311, line: 7, baseType: !4936)
!4936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !313, line: 49, size: 1728, elements: !4937)
!4937 = !{!4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4936, file: !313, line: 51, baseType: !260, size: 32)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4936, file: !313, line: 54, baseType: !317, size: 64, offset: 64)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4936, file: !313, line: 55, baseType: !317, size: 64, offset: 128)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4936, file: !313, line: 56, baseType: !317, size: 64, offset: 192)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4936, file: !313, line: 57, baseType: !317, size: 64, offset: 256)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4936, file: !313, line: 58, baseType: !317, size: 64, offset: 320)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4936, file: !313, line: 59, baseType: !317, size: 64, offset: 384)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4936, file: !313, line: 60, baseType: !317, size: 64, offset: 448)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4936, file: !313, line: 61, baseType: !317, size: 64, offset: 512)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4936, file: !313, line: 64, baseType: !317, size: 64, offset: 576)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4936, file: !313, line: 65, baseType: !317, size: 64, offset: 640)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4936, file: !313, line: 66, baseType: !317, size: 64, offset: 704)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4936, file: !313, line: 68, baseType: !329, size: 64, offset: 768)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4936, file: !313, line: 70, baseType: !4952, size: 64, offset: 832)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4936, file: !313, line: 72, baseType: !260, size: 32, offset: 896)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4936, file: !313, line: 73, baseType: !260, size: 32, offset: 928)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4936, file: !313, line: 74, baseType: !336, size: 64, offset: 960)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4936, file: !313, line: 77, baseType: !261, size: 16, offset: 1024)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4936, file: !313, line: 78, baseType: !339, size: 8, offset: 1040)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4936, file: !313, line: 79, baseType: !206, size: 8, offset: 1048)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4936, file: !313, line: 81, baseType: !342, size: 64, offset: 1088)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4936, file: !313, line: 89, baseType: !345, size: 64, offset: 1152)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4936, file: !313, line: 91, baseType: !347, size: 64, offset: 1216)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4936, file: !313, line: 92, baseType: !350, size: 64, offset: 1280)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4936, file: !313, line: 93, baseType: !4952, size: 64, offset: 1344)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4936, file: !313, line: 94, baseType: !354, size: 64, offset: 1408)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4936, file: !313, line: 95, baseType: !262, size: 64, offset: 1472)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4936, file: !313, line: 96, baseType: !260, size: 32, offset: 1536)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4936, file: !313, line: 98, baseType: !358, size: 160, offset: 1568)
!4968 = !{!4969, !4970, !4971, !4972}
!4969 = !DILocalVariable(name: "fp", arg: 1, scope: !4931, file: !917, line: 58, type: !4934)
!4970 = !DILocalVariable(name: "saved_errno", scope: !4931, file: !917, line: 60, type: !260)
!4971 = !DILocalVariable(name: "fd", scope: !4931, file: !917, line: 63, type: !260)
!4972 = !DILocalVariable(name: "result", scope: !4931, file: !917, line: 74, type: !260)
!4973 = !DILocation(line: 0, scope: !4931)
!4974 = !DILocation(line: 63, column: 12, scope: !4931)
!4975 = !DILocation(line: 64, column: 10, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4931, file: !917, line: 64, column: 7)
!4977 = !DILocation(line: 64, column: 7, scope: !4931)
!4978 = !DILocation(line: 65, column: 12, scope: !4976)
!4979 = !DILocation(line: 65, column: 5, scope: !4976)
!4980 = !DILocation(line: 70, column: 9, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4931, file: !917, line: 70, column: 7)
!4982 = !DILocation(line: 70, column: 23, scope: !4981)
!4983 = !DILocation(line: 70, column: 33, scope: !4981)
!4984 = !DILocation(line: 70, column: 26, scope: !4981)
!4985 = !DILocation(line: 70, column: 59, scope: !4981)
!4986 = !DILocation(line: 71, column: 7, scope: !4981)
!4987 = !DILocation(line: 71, column: 10, scope: !4981)
!4988 = !DILocation(line: 70, column: 7, scope: !4931)
!4989 = !DILocation(line: 100, column: 12, scope: !4931)
!4990 = !DILocation(line: 105, column: 7, scope: !4931)
!4991 = !DILocation(line: 72, column: 19, scope: !4981)
!4992 = !DILocation(line: 105, column: 19, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4931, file: !917, line: 105, column: 7)
!4994 = !DILocation(line: 107, column: 13, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4993, file: !917, line: 106, column: 5)
!4996 = !DILocation(line: 109, column: 5, scope: !4995)
!4997 = !DILocation(line: 112, column: 1, scope: !4931)
!4998 = !DISubprogram(name: "fileno", scope: !1047, file: !1047, line: 809, type: !4932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!4999 = !DISubprogram(name: "fclose", scope: !1047, file: !1047, line: 178, type: !4932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!5000 = !DISubprogram(name: "__freading", scope: !4928, file: !4928, line: 51, type: !4932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!5001 = !DISubprogram(name: "lseek", scope: !2391, file: !2391, line: 339, type: !5002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!336, !260, !336, !260}
!5004 = distinct !DISubprogram(name: "rpl_fflush", scope: !919, file: !919, line: 130, type: !5005, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !5041)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!260, !5007}
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !311, line: 7, baseType: !5009)
!5009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !313, line: 49, size: 1728, elements: !5010)
!5010 = !{!5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5009, file: !313, line: 51, baseType: !260, size: 32)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5009, file: !313, line: 54, baseType: !317, size: 64, offset: 64)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5009, file: !313, line: 55, baseType: !317, size: 64, offset: 128)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5009, file: !313, line: 56, baseType: !317, size: 64, offset: 192)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5009, file: !313, line: 57, baseType: !317, size: 64, offset: 256)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5009, file: !313, line: 58, baseType: !317, size: 64, offset: 320)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5009, file: !313, line: 59, baseType: !317, size: 64, offset: 384)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5009, file: !313, line: 60, baseType: !317, size: 64, offset: 448)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5009, file: !313, line: 61, baseType: !317, size: 64, offset: 512)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5009, file: !313, line: 64, baseType: !317, size: 64, offset: 576)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5009, file: !313, line: 65, baseType: !317, size: 64, offset: 640)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5009, file: !313, line: 66, baseType: !317, size: 64, offset: 704)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5009, file: !313, line: 68, baseType: !329, size: 64, offset: 768)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5009, file: !313, line: 70, baseType: !5025, size: 64, offset: 832)
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5009, file: !313, line: 72, baseType: !260, size: 32, offset: 896)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5009, file: !313, line: 73, baseType: !260, size: 32, offset: 928)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5009, file: !313, line: 74, baseType: !336, size: 64, offset: 960)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5009, file: !313, line: 77, baseType: !261, size: 16, offset: 1024)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5009, file: !313, line: 78, baseType: !339, size: 8, offset: 1040)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5009, file: !313, line: 79, baseType: !206, size: 8, offset: 1048)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5009, file: !313, line: 81, baseType: !342, size: 64, offset: 1088)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5009, file: !313, line: 89, baseType: !345, size: 64, offset: 1152)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5009, file: !313, line: 91, baseType: !347, size: 64, offset: 1216)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5009, file: !313, line: 92, baseType: !350, size: 64, offset: 1280)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5009, file: !313, line: 93, baseType: !5025, size: 64, offset: 1344)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5009, file: !313, line: 94, baseType: !354, size: 64, offset: 1408)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5009, file: !313, line: 95, baseType: !262, size: 64, offset: 1472)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5009, file: !313, line: 96, baseType: !260, size: 32, offset: 1536)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5009, file: !313, line: 98, baseType: !358, size: 160, offset: 1568)
!5041 = !{!5042}
!5042 = !DILocalVariable(name: "stream", arg: 1, scope: !5004, file: !919, line: 130, type: !5007)
!5043 = !DILocation(line: 0, scope: !5004)
!5044 = !DILocation(line: 151, column: 14, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5004, file: !919, line: 151, column: 7)
!5046 = !DILocation(line: 151, column: 22, scope: !5045)
!5047 = !DILocation(line: 151, column: 27, scope: !5045)
!5048 = !DILocation(line: 151, column: 7, scope: !5004)
!5049 = !DILocation(line: 152, column: 12, scope: !5045)
!5050 = !DILocation(line: 152, column: 5, scope: !5045)
!5051 = !DILocalVariable(name: "fp", arg: 1, scope: !5052, file: !919, line: 42, type: !5007)
!5052 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !919, file: !919, line: 42, type: !5053, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !5055)
!5053 = !DISubroutineType(types: !5054)
!5054 = !{null, !5007}
!5055 = !{!5051}
!5056 = !DILocation(line: 0, scope: !5052, inlinedAt: !5057)
!5057 = distinct !DILocation(line: 157, column: 3, scope: !5004)
!5058 = !DILocation(line: 44, column: 12, scope: !5059, inlinedAt: !5057)
!5059 = distinct !DILexicalBlock(scope: !5052, file: !919, line: 44, column: 7)
!5060 = !DILocation(line: 44, column: 19, scope: !5059, inlinedAt: !5057)
!5061 = !DILocation(line: 44, column: 7, scope: !5052, inlinedAt: !5057)
!5062 = !DILocation(line: 46, column: 5, scope: !5059, inlinedAt: !5057)
!5063 = !DILocation(line: 159, column: 10, scope: !5004)
!5064 = !DILocation(line: 159, column: 3, scope: !5004)
!5065 = !DILocation(line: 236, column: 1, scope: !5004)
!5066 = !DISubprogram(name: "fflush", scope: !1047, file: !1047, line: 230, type: !5005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!5067 = distinct !DISubprogram(name: "rpl_fseeko", scope: !921, file: !921, line: 28, type: !5068, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !5105)
!5068 = !DISubroutineType(types: !5069)
!5069 = !{!260, !5070, !5104, !260}
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !311, line: 7, baseType: !5072)
!5072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !313, line: 49, size: 1728, elements: !5073)
!5073 = !{!5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5072, file: !313, line: 51, baseType: !260, size: 32)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5072, file: !313, line: 54, baseType: !317, size: 64, offset: 64)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5072, file: !313, line: 55, baseType: !317, size: 64, offset: 128)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5072, file: !313, line: 56, baseType: !317, size: 64, offset: 192)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5072, file: !313, line: 57, baseType: !317, size: 64, offset: 256)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5072, file: !313, line: 58, baseType: !317, size: 64, offset: 320)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5072, file: !313, line: 59, baseType: !317, size: 64, offset: 384)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5072, file: !313, line: 60, baseType: !317, size: 64, offset: 448)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5072, file: !313, line: 61, baseType: !317, size: 64, offset: 512)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5072, file: !313, line: 64, baseType: !317, size: 64, offset: 576)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5072, file: !313, line: 65, baseType: !317, size: 64, offset: 640)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5072, file: !313, line: 66, baseType: !317, size: 64, offset: 704)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5072, file: !313, line: 68, baseType: !329, size: 64, offset: 768)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5072, file: !313, line: 70, baseType: !5088, size: 64, offset: 832)
!5088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5072, file: !313, line: 72, baseType: !260, size: 32, offset: 896)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5072, file: !313, line: 73, baseType: !260, size: 32, offset: 928)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5072, file: !313, line: 74, baseType: !336, size: 64, offset: 960)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5072, file: !313, line: 77, baseType: !261, size: 16, offset: 1024)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5072, file: !313, line: 78, baseType: !339, size: 8, offset: 1040)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5072, file: !313, line: 79, baseType: !206, size: 8, offset: 1048)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5072, file: !313, line: 81, baseType: !342, size: 64, offset: 1088)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5072, file: !313, line: 89, baseType: !345, size: 64, offset: 1152)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5072, file: !313, line: 91, baseType: !347, size: 64, offset: 1216)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5072, file: !313, line: 92, baseType: !350, size: 64, offset: 1280)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5072, file: !313, line: 93, baseType: !5088, size: 64, offset: 1344)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5072, file: !313, line: 94, baseType: !354, size: 64, offset: 1408)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5072, file: !313, line: 95, baseType: !262, size: 64, offset: 1472)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5072, file: !313, line: 96, baseType: !260, size: 32, offset: 1536)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5072, file: !313, line: 98, baseType: !358, size: 160, offset: 1568)
!5104 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1047, line: 63, baseType: !336)
!5105 = !{!5106, !5107, !5108, !5109}
!5106 = !DILocalVariable(name: "fp", arg: 1, scope: !5067, file: !921, line: 28, type: !5070)
!5107 = !DILocalVariable(name: "offset", arg: 2, scope: !5067, file: !921, line: 28, type: !5104)
!5108 = !DILocalVariable(name: "whence", arg: 3, scope: !5067, file: !921, line: 28, type: !260)
!5109 = !DILocalVariable(name: "pos", scope: !5110, file: !921, line: 123, type: !5104)
!5110 = distinct !DILexicalBlock(scope: !5111, file: !921, line: 119, column: 5)
!5111 = distinct !DILexicalBlock(scope: !5067, file: !921, line: 55, column: 7)
!5112 = !DILocation(line: 0, scope: !5067)
!5113 = !DILocation(line: 55, column: 12, scope: !5111)
!5114 = !{!2583, !952, i64 16}
!5115 = !DILocation(line: 55, column: 33, scope: !5111)
!5116 = !{!2583, !952, i64 8}
!5117 = !DILocation(line: 55, column: 25, scope: !5111)
!5118 = !DILocation(line: 56, column: 7, scope: !5111)
!5119 = !DILocation(line: 56, column: 15, scope: !5111)
!5120 = !DILocation(line: 56, column: 37, scope: !5111)
!5121 = !{!2583, !952, i64 32}
!5122 = !DILocation(line: 56, column: 29, scope: !5111)
!5123 = !DILocation(line: 57, column: 7, scope: !5111)
!5124 = !DILocation(line: 57, column: 15, scope: !5111)
!5125 = !{!2583, !952, i64 72}
!5126 = !DILocation(line: 57, column: 29, scope: !5111)
!5127 = !DILocation(line: 55, column: 7, scope: !5067)
!5128 = !DILocation(line: 123, column: 26, scope: !5110)
!5129 = !DILocation(line: 123, column: 19, scope: !5110)
!5130 = !DILocation(line: 0, scope: !5110)
!5131 = !DILocation(line: 124, column: 15, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5110, file: !921, line: 124, column: 11)
!5133 = !DILocation(line: 124, column: 11, scope: !5110)
!5134 = !DILocation(line: 135, column: 19, scope: !5110)
!5135 = !DILocation(line: 136, column: 12, scope: !5110)
!5136 = !DILocation(line: 136, column: 20, scope: !5110)
!5137 = !{!2583, !1548, i64 144}
!5138 = !DILocation(line: 167, column: 7, scope: !5110)
!5139 = !DILocation(line: 169, column: 10, scope: !5067)
!5140 = !DILocation(line: 169, column: 3, scope: !5067)
!5141 = !DILocation(line: 170, column: 1, scope: !5067)
!5142 = !DISubprogram(name: "fseeko", scope: !1047, file: !1047, line: 736, type: !5143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!5143 = !DISubroutineType(types: !5144)
!5144 = !{!260, !5070, !336, !260}
!5145 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !842, file: !842, line: 100, type: !5146, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !845, retainedNodes: !5150)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!262, !5148, !265, !262, !5149}
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!5150 = !{!5151, !5152, !5153, !5154, !5155}
!5151 = !DILocalVariable(name: "pwc", arg: 1, scope: !5145, file: !842, line: 100, type: !5148)
!5152 = !DILocalVariable(name: "s", arg: 2, scope: !5145, file: !842, line: 100, type: !265)
!5153 = !DILocalVariable(name: "n", arg: 3, scope: !5145, file: !842, line: 100, type: !262)
!5154 = !DILocalVariable(name: "ps", arg: 4, scope: !5145, file: !842, line: 100, type: !5149)
!5155 = !DILocalVariable(name: "ret", scope: !5145, file: !842, line: 130, type: !262)
!5156 = !DILocation(line: 0, scope: !5145)
!5157 = !DILocation(line: 105, column: 9, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5145, file: !842, line: 105, column: 7)
!5159 = !DILocation(line: 105, column: 7, scope: !5145)
!5160 = !DILocation(line: 117, column: 10, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5145, file: !842, line: 117, column: 7)
!5162 = !DILocation(line: 117, column: 7, scope: !5145)
!5163 = !DILocation(line: 130, column: 16, scope: !5145)
!5164 = !DILocation(line: 135, column: 11, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5145, file: !842, line: 135, column: 7)
!5166 = !DILocation(line: 135, column: 25, scope: !5165)
!5167 = !DILocation(line: 135, column: 30, scope: !5165)
!5168 = !DILocation(line: 135, column: 7, scope: !5145)
!5169 = !DILocalVariable(name: "ps", arg: 1, scope: !5170, file: !2963, line: 1135, type: !5149)
!5170 = distinct !DISubprogram(name: "mbszero", scope: !2963, file: !2963, line: 1135, type: !5171, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !845, retainedNodes: !5173)
!5171 = !DISubroutineType(types: !5172)
!5172 = !{null, !5149}
!5173 = !{!5169}
!5174 = !DILocation(line: 0, scope: !5170, inlinedAt: !5175)
!5175 = distinct !DILocation(line: 137, column: 5, scope: !5165)
!5176 = !DILocalVariable(name: "__dest", arg: 1, scope: !5177, file: !2972, line: 57, type: !354)
!5177 = distinct !DISubprogram(name: "memset", scope: !2972, file: !2972, line: 57, type: !2973, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !845, retainedNodes: !5178)
!5178 = !{!5176, !5179, !5180}
!5179 = !DILocalVariable(name: "__ch", arg: 2, scope: !5177, file: !2972, line: 57, type: !260)
!5180 = !DILocalVariable(name: "__len", arg: 3, scope: !5177, file: !2972, line: 57, type: !262)
!5181 = !DILocation(line: 0, scope: !5177, inlinedAt: !5182)
!5182 = distinct !DILocation(line: 1137, column: 3, scope: !5170, inlinedAt: !5175)
!5183 = !DILocation(line: 59, column: 10, scope: !5177, inlinedAt: !5182)
!5184 = !DILocation(line: 137, column: 5, scope: !5165)
!5185 = !DILocation(line: 138, column: 11, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5145, file: !842, line: 138, column: 7)
!5187 = !DILocation(line: 138, column: 7, scope: !5145)
!5188 = !DILocation(line: 139, column: 5, scope: !5186)
!5189 = !DILocation(line: 143, column: 26, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5145, file: !842, line: 143, column: 7)
!5191 = !DILocation(line: 143, column: 41, scope: !5190)
!5192 = !DILocation(line: 143, column: 7, scope: !5145)
!5193 = !DILocation(line: 145, column: 15, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5195, file: !842, line: 145, column: 11)
!5195 = distinct !DILexicalBlock(scope: !5190, file: !842, line: 144, column: 5)
!5196 = !DILocation(line: 145, column: 11, scope: !5195)
!5197 = !DILocation(line: 146, column: 32, scope: !5194)
!5198 = !DILocation(line: 146, column: 16, scope: !5194)
!5199 = !DILocation(line: 146, column: 14, scope: !5194)
!5200 = !DILocation(line: 146, column: 9, scope: !5194)
!5201 = !DILocation(line: 286, column: 1, scope: !5145)
!5202 = !DISubprogram(name: "mbrtoc32", scope: !726, file: !726, line: 57, type: !5203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!5203 = !DISubroutineType(types: !5204)
!5204 = !{!262, !5205, !1045, !262, !5206}
!5205 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5148)
!5206 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5149)
!5207 = !DISubprogram(name: "mbsinit", scope: !5208, file: !5208, line: 293, type: !5209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1039)
!5208 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5209 = !DISubroutineType(types: !5210)
!5210 = !{!260, !5211}
!5211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5212, size: 64)
!5212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !848)
!5213 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !923, file: !923, line: 27, type: !4416, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !5214)
!5214 = !{!5215, !5216, !5217, !5218}
!5215 = !DILocalVariable(name: "ptr", arg: 1, scope: !5213, file: !923, line: 27, type: !354)
!5216 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5213, file: !923, line: 27, type: !262)
!5217 = !DILocalVariable(name: "size", arg: 3, scope: !5213, file: !923, line: 27, type: !262)
!5218 = !DILocalVariable(name: "nbytes", scope: !5213, file: !923, line: 29, type: !262)
!5219 = !DILocation(line: 0, scope: !5213)
!5220 = !DILocation(line: 30, column: 7, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5213, file: !923, line: 30, column: 7)
!5222 = !DILocalVariable(name: "ptr", arg: 1, scope: !5223, file: !4508, line: 2057, type: !354)
!5223 = distinct !DISubprogram(name: "rpl_realloc", scope: !4508, file: !4508, line: 2057, type: !4500, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !5224)
!5224 = !{!5222, !5225}
!5225 = !DILocalVariable(name: "size", arg: 2, scope: !5223, file: !4508, line: 2057, type: !262)
!5226 = !DILocation(line: 0, scope: !5223, inlinedAt: !5227)
!5227 = distinct !DILocation(line: 37, column: 10, scope: !5213)
!5228 = !DILocation(line: 2059, column: 24, scope: !5223, inlinedAt: !5227)
!5229 = !DILocation(line: 2059, column: 10, scope: !5223, inlinedAt: !5227)
!5230 = !DILocation(line: 37, column: 3, scope: !5213)
!5231 = !DILocation(line: 32, column: 7, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5221, file: !923, line: 31, column: 5)
!5233 = !DILocation(line: 32, column: 13, scope: !5232)
!5234 = !DILocation(line: 33, column: 7, scope: !5232)
!5235 = !DILocation(line: 38, column: 1, scope: !5213)
!5236 = distinct !DISubprogram(name: "hard_locale", scope: !860, file: !860, line: 28, type: !1255, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !5237)
!5237 = !{!5238, !5239}
!5238 = !DILocalVariable(name: "category", arg: 1, scope: !5236, file: !860, line: 28, type: !260)
!5239 = !DILocalVariable(name: "locale", scope: !5236, file: !860, line: 30, type: !5240)
!5240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5241)
!5241 = !{!5242}
!5242 = !DISubrange(count: 257)
!5243 = !DILocation(line: 0, scope: !5236)
!5244 = !DILocation(line: 30, column: 3, scope: !5236)
!5245 = !DILocation(line: 30, column: 8, scope: !5236)
!5246 = !DILocation(line: 32, column: 7, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5236, file: !860, line: 32, column: 7)
!5248 = !DILocation(line: 32, column: 7, scope: !5236)
!5249 = !DILocalVariable(name: "__s1", arg: 1, scope: !5250, file: !1065, line: 1359, type: !265)
!5250 = distinct !DISubprogram(name: "streq", scope: !1065, file: !1065, line: 1359, type: !1066, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !5251)
!5251 = !{!5249, !5252}
!5252 = !DILocalVariable(name: "__s2", arg: 2, scope: !5250, file: !1065, line: 1359, type: !265)
!5253 = !DILocation(line: 0, scope: !5250, inlinedAt: !5254)
!5254 = distinct !DILocation(line: 35, column: 9, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5236, file: !860, line: 35, column: 7)
!5256 = !DILocation(line: 1361, column: 11, scope: !5250, inlinedAt: !5254)
!5257 = !DILocation(line: 35, column: 29, scope: !5255)
!5258 = !DILocation(line: 0, scope: !5250, inlinedAt: !5259)
!5259 = distinct !DILocation(line: 35, column: 32, scope: !5255)
!5260 = !DILocation(line: 1361, column: 11, scope: !5250, inlinedAt: !5259)
!5261 = !DILocation(line: 1361, column: 10, scope: !5250, inlinedAt: !5259)
!5262 = !DILocation(line: 35, column: 7, scope: !5236)
!5263 = !DILocation(line: 46, column: 3, scope: !5236)
!5264 = !DILocation(line: 47, column: 1, scope: !5236)
!5265 = distinct !DISubprogram(name: "setlocale_null_r", scope: !930, file: !930, line: 154, type: !5266, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !5268)
!5266 = !DISubroutineType(types: !5267)
!5267 = !{!260, !260, !317, !262}
!5268 = !{!5269, !5270, !5271}
!5269 = !DILocalVariable(name: "category", arg: 1, scope: !5265, file: !930, line: 154, type: !260)
!5270 = !DILocalVariable(name: "buf", arg: 2, scope: !5265, file: !930, line: 154, type: !317)
!5271 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5265, file: !930, line: 154, type: !262)
!5272 = !DILocation(line: 0, scope: !5265)
!5273 = !DILocation(line: 159, column: 10, scope: !5265)
!5274 = !DILocation(line: 159, column: 3, scope: !5265)
!5275 = distinct !DISubprogram(name: "setlocale_null", scope: !930, file: !930, line: 186, type: !5276, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !5278)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{!265, !260}
!5278 = !{!5279}
!5279 = !DILocalVariable(name: "category", arg: 1, scope: !5275, file: !930, line: 186, type: !260)
!5280 = !DILocation(line: 0, scope: !5275)
!5281 = !DILocation(line: 189, column: 10, scope: !5275)
!5282 = !DILocation(line: 189, column: 3, scope: !5275)
!5283 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !932, file: !932, line: 35, type: !5276, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !931, retainedNodes: !5284)
!5284 = !{!5285, !5286}
!5285 = !DILocalVariable(name: "category", arg: 1, scope: !5283, file: !932, line: 35, type: !260)
!5286 = !DILocalVariable(name: "result", scope: !5283, file: !932, line: 37, type: !265)
!5287 = !DILocation(line: 0, scope: !5283)
!5288 = !DILocation(line: 37, column: 24, scope: !5283)
!5289 = !DILocation(line: 62, column: 3, scope: !5283)
!5290 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !932, file: !932, line: 66, type: !5266, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !931, retainedNodes: !5291)
!5291 = !{!5292, !5293, !5294, !5295, !5296}
!5292 = !DILocalVariable(name: "category", arg: 1, scope: !5290, file: !932, line: 66, type: !260)
!5293 = !DILocalVariable(name: "buf", arg: 2, scope: !5290, file: !932, line: 66, type: !317)
!5294 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5290, file: !932, line: 66, type: !262)
!5295 = !DILocalVariable(name: "result", scope: !5290, file: !932, line: 111, type: !265)
!5296 = !DILocalVariable(name: "length", scope: !5297, file: !932, line: 125, type: !262)
!5297 = distinct !DILexicalBlock(scope: !5298, file: !932, line: 124, column: 5)
!5298 = distinct !DILexicalBlock(scope: !5290, file: !932, line: 113, column: 7)
!5299 = !DILocation(line: 0, scope: !5290)
!5300 = !DILocation(line: 0, scope: !5283, inlinedAt: !5301)
!5301 = distinct !DILocation(line: 111, column: 24, scope: !5290)
!5302 = !DILocation(line: 37, column: 24, scope: !5283, inlinedAt: !5301)
!5303 = !DILocation(line: 113, column: 14, scope: !5298)
!5304 = !DILocation(line: 113, column: 7, scope: !5290)
!5305 = !DILocation(line: 116, column: 19, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5307, file: !932, line: 116, column: 11)
!5307 = distinct !DILexicalBlock(scope: !5298, file: !932, line: 114, column: 5)
!5308 = !DILocation(line: 116, column: 11, scope: !5307)
!5309 = !DILocation(line: 120, column: 16, scope: !5306)
!5310 = !DILocation(line: 120, column: 9, scope: !5306)
!5311 = !DILocation(line: 125, column: 23, scope: !5297)
!5312 = !DILocation(line: 0, scope: !5297)
!5313 = !DILocation(line: 126, column: 18, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5297, file: !932, line: 126, column: 11)
!5315 = !DILocation(line: 126, column: 11, scope: !5297)
!5316 = !DILocation(line: 128, column: 39, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5314, file: !932, line: 127, column: 9)
!5318 = !DILocalVariable(name: "__dest", arg: 1, scope: !5319, file: !2972, line: 26, type: !4777)
!5319 = distinct !DISubprogram(name: "memcpy", scope: !2972, file: !2972, line: 26, type: !4775, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !931, retainedNodes: !5320)
!5320 = !{!5318, !5321, !5322}
!5321 = !DILocalVariable(name: "__src", arg: 2, scope: !5319, file: !2972, line: 26, type: !1203)
!5322 = !DILocalVariable(name: "__len", arg: 3, scope: !5319, file: !2972, line: 26, type: !262)
!5323 = !DILocation(line: 0, scope: !5319, inlinedAt: !5324)
!5324 = distinct !DILocation(line: 128, column: 11, scope: !5317)
!5325 = !DILocation(line: 29, column: 10, scope: !5319, inlinedAt: !5324)
!5326 = !DILocation(line: 129, column: 11, scope: !5317)
!5327 = !DILocation(line: 133, column: 23, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5329, file: !932, line: 133, column: 15)
!5329 = distinct !DILexicalBlock(scope: !5314, file: !932, line: 132, column: 9)
!5330 = !DILocation(line: 133, column: 15, scope: !5329)
!5331 = !DILocation(line: 138, column: 44, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5328, file: !932, line: 134, column: 13)
!5333 = !DILocation(line: 0, scope: !5319, inlinedAt: !5334)
!5334 = distinct !DILocation(line: 138, column: 15, scope: !5332)
!5335 = !DILocation(line: 29, column: 10, scope: !5319, inlinedAt: !5334)
!5336 = !DILocation(line: 139, column: 15, scope: !5332)
!5337 = !DILocation(line: 139, column: 32, scope: !5332)
!5338 = !DILocation(line: 140, column: 13, scope: !5332)
!5339 = !DILocation(line: 0, scope: !5298)
!5340 = !DILocation(line: 145, column: 1, scope: !5290)
